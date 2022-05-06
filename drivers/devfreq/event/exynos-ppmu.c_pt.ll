; ModuleID = '/llk/IR/drivers/devfreq/event/exynos-ppmu.c_pt.bc'
source_filename = "../drivers/devfreq/event/exynos-ppmu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.__exynos_ppmu_events = type { ptr, i32 }
%struct.devfreq_event_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.exynos_ppmu = type { ptr, ptr, i32, ptr, ptr, %struct.exynos_ppmu_data, i32 }
%struct.exynos_ppmu_data = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.devfreq_event_desc = type { ptr, i32, ptr, ptr }
%struct.devfreq_event_dev = type { %struct.list_head, %struct.device, %struct.mutex, i32, ptr }
%struct.devfreq_event_data = type { i32, i32 }

@exynos_ppmu_id_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos-ppmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos-ppmu-v2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description247 = internal constant [69 x i8] c"description=Exynos PPMU(Platform Performance Monitoring Unit) driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author248 = internal constant [44 x i8] c"author=Chanwoo Choi <cw00.choi@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@exynos_ppmu_driver = internal global %struct.platform_driver { ptr @exynos_ppmu_probe, ptr @exynos_ppmu_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @exynos_ppmu_id_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [12 x i8] c"exynos-ppmu\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"failed to parse devicetree for resource\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"failed to add devfreq-event device\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"\016exynos-ppmu: new PPMU device registered %s (%s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"failed to prepare ppmu clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"failed to find devicetree node\0A\00", align 1
@exynos_ppmu_regmap_config = internal global %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"failed to initialize regmap\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"ppmu\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"cannot get PPMU clock\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"failed to parse exynos ppmu dt node\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"events\00", align 1
@.str.11 = private unnamed_addr constant [51 x i8] c"failed to get child node of devfreq-event devices\0A\00", align 1
@ppmu_events = internal unnamed_addr constant [152 x %struct.__exynos_ppmu_events] [%struct.__exynos_ppmu_events { ptr @.str.15, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.16, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.17, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.18, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.19, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.20, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.21, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.22, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.23, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.24, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.25, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.26, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.27, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.28, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.29, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.30, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.31, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.32, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.33, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.34, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.35, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.36, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.37, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.38, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.39, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.40, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.41, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.42, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.43, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.44, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.45, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.46, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.47, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.48, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.49, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.50, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.51, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.52, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.53, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.54, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.55, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.56, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.57, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.58, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.59, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.60, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.61, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.62, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.63, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.64, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.65, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.66, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.67, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.68, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.69, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.70, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.71, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.72, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.73, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.74, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.75, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.76, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.77, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.78, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.79, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.80, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.81, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.82, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.83, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.84, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.85, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.86, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.87, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.88, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.89, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.90, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.91, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.92, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.93, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.94, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.95, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.96, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.97, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.98, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.99, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.100, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.101, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.102, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.103, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.104, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.105, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.106, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.107, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.108, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.109, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.110, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.111, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.112, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.113, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.114, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.115, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.116, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.117, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.118, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.119, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.120, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.121, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.122, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.123, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.124, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.125, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.126, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.127, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.128, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.129, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.130, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.131, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.132, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.133, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.134, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.135, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.136, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.137, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.138, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.139, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.140, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.141, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.142, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.143, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.144, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.145, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.146, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.147, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.148, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.149, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.150, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.151, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.152, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.153, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.154, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.155, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.156, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.157, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.158, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.159, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.160, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.161, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.162, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.163, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.164, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.165, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.166, i32 3 }], align 4
@.str.12 = private unnamed_addr constant [44 x i8] c"don't know how to configure events : %pOFn\0A\00", align 1
@exynos_ppmu_ops = internal constant %struct.devfreq_event_ops { ptr null, ptr @exynos_ppmu_disable, ptr null, ptr @exynos_ppmu_set_event, ptr @exynos_ppmu_get_event }, align 4
@exynos_ppmu_v2_ops = internal constant %struct.devfreq_event_ops { ptr null, ptr @exynos_ppmu_v2_disable, ptr null, ptr @exynos_ppmu_v2_set_event, ptr @exynos_ppmu_v2_get_event }, align 4
@.str.13 = private unnamed_addr constant [11 x i8] c"event-name\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"event-data-type\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"ppmu-event0-g3d\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"ppmu-event1-g3d\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"ppmu-event2-g3d\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"ppmu-event3-g3d\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"ppmu-event0-fsys\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"ppmu-event1-fsys\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"ppmu-event2-fsys\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"ppmu-event3-fsys\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"ppmu-event0-dmc0\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"ppmu-event1-dmc0\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"ppmu-event2-dmc0\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"ppmu-event3-dmc0\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"ppmu-event0-dmc1\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"ppmu-event1-dmc1\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"ppmu-event2-dmc1\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"ppmu-event3-dmc1\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"ppmu-event0-cpu\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"ppmu-event1-cpu\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"ppmu-event2-cpu\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"ppmu-event3-cpu\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"ppmu-event0-rightbus\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"ppmu-event1-rightbus\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"ppmu-event2-rightbus\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"ppmu-event3-rightbus\00", align 1
@.str.39 = private unnamed_addr constant [20 x i8] c"ppmu-event0-leftbus\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"ppmu-event1-leftbus\00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"ppmu-event2-leftbus\00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"ppmu-event3-leftbus\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"ppmu-event0-lcd0\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"ppmu-event1-lcd0\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"ppmu-event2-lcd0\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"ppmu-event3-lcd0\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"ppmu-event0-camif\00", align 1
@.str.48 = private unnamed_addr constant [18 x i8] c"ppmu-event1-camif\00", align 1
@.str.49 = private unnamed_addr constant [18 x i8] c"ppmu-event2-camif\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"ppmu-event3-camif\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"ppmu-event0-mfc\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"ppmu-event1-mfc\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"ppmu-event2-mfc\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c"ppmu-event3-mfc\00", align 1
@.str.55 = private unnamed_addr constant [21 x i8] c"ppmu-event0-mfc-left\00", align 1
@.str.56 = private unnamed_addr constant [21 x i8] c"ppmu-event1-mfc-left\00", align 1
@.str.57 = private unnamed_addr constant [21 x i8] c"ppmu-event2-mfc-left\00", align 1
@.str.58 = private unnamed_addr constant [21 x i8] c"ppmu-event3-mfc-left\00", align 1
@.str.59 = private unnamed_addr constant [22 x i8] c"ppmu-event0-mfc-right\00", align 1
@.str.60 = private unnamed_addr constant [22 x i8] c"ppmu-event1-mfc-right\00", align 1
@.str.61 = private unnamed_addr constant [22 x i8] c"ppmu-event2-mfc-right\00", align 1
@.str.62 = private unnamed_addr constant [22 x i8] c"ppmu-event3-mfc-right\00", align 1
@.str.63 = private unnamed_addr constant [21 x i8] c"ppmu-event0-drex0-s0\00", align 1
@.str.64 = private unnamed_addr constant [21 x i8] c"ppmu-event1-drex0-s0\00", align 1
@.str.65 = private unnamed_addr constant [21 x i8] c"ppmu-event2-drex0-s0\00", align 1
@.str.66 = private unnamed_addr constant [21 x i8] c"ppmu-event3-drex0-s0\00", align 1
@.str.67 = private unnamed_addr constant [21 x i8] c"ppmu-event0-drex0-s1\00", align 1
@.str.68 = private unnamed_addr constant [21 x i8] c"ppmu-event1-drex0-s1\00", align 1
@.str.69 = private unnamed_addr constant [21 x i8] c"ppmu-event2-drex0-s1\00", align 1
@.str.70 = private unnamed_addr constant [21 x i8] c"ppmu-event3-drex0-s1\00", align 1
@.str.71 = private unnamed_addr constant [21 x i8] c"ppmu-event0-drex1-s0\00", align 1
@.str.72 = private unnamed_addr constant [21 x i8] c"ppmu-event1-drex1-s0\00", align 1
@.str.73 = private unnamed_addr constant [21 x i8] c"ppmu-event2-drex1-s0\00", align 1
@.str.74 = private unnamed_addr constant [21 x i8] c"ppmu-event3-drex1-s0\00", align 1
@.str.75 = private unnamed_addr constant [21 x i8] c"ppmu-event0-drex1-s1\00", align 1
@.str.76 = private unnamed_addr constant [21 x i8] c"ppmu-event1-drex1-s1\00", align 1
@.str.77 = private unnamed_addr constant [21 x i8] c"ppmu-event2-drex1-s1\00", align 1
@.str.78 = private unnamed_addr constant [21 x i8] c"ppmu-event3-drex1-s1\00", align 1
@.str.79 = private unnamed_addr constant [18 x i8] c"ppmu-event0-eagle\00", align 1
@.str.80 = private unnamed_addr constant [18 x i8] c"ppmu-event1-eagle\00", align 1
@.str.81 = private unnamed_addr constant [18 x i8] c"ppmu-event2-eagle\00", align 1
@.str.82 = private unnamed_addr constant [18 x i8] c"ppmu-event3-eagle\00", align 1
@.str.83 = private unnamed_addr constant [16 x i8] c"ppmu-event0-kfc\00", align 1
@.str.84 = private unnamed_addr constant [16 x i8] c"ppmu-event1-kfc\00", align 1
@.str.85 = private unnamed_addr constant [16 x i8] c"ppmu-event2-kfc\00", align 1
@.str.86 = private unnamed_addr constant [16 x i8] c"ppmu-event3-kfc\00", align 1
@.str.87 = private unnamed_addr constant [16 x i8] c"ppmu-event0-isp\00", align 1
@.str.88 = private unnamed_addr constant [16 x i8] c"ppmu-event1-isp\00", align 1
@.str.89 = private unnamed_addr constant [16 x i8] c"ppmu-event2-isp\00", align 1
@.str.90 = private unnamed_addr constant [16 x i8] c"ppmu-event3-isp\00", align 1
@.str.91 = private unnamed_addr constant [17 x i8] c"ppmu-event0-fimc\00", align 1
@.str.92 = private unnamed_addr constant [17 x i8] c"ppmu-event1-fimc\00", align 1
@.str.93 = private unnamed_addr constant [17 x i8] c"ppmu-event2-fimc\00", align 1
@.str.94 = private unnamed_addr constant [17 x i8] c"ppmu-event3-fimc\00", align 1
@.str.95 = private unnamed_addr constant [17 x i8] c"ppmu-event0-gscl\00", align 1
@.str.96 = private unnamed_addr constant [17 x i8] c"ppmu-event1-gscl\00", align 1
@.str.97 = private unnamed_addr constant [17 x i8] c"ppmu-event2-gscl\00", align 1
@.str.98 = private unnamed_addr constant [17 x i8] c"ppmu-event3-gscl\00", align 1
@.str.99 = private unnamed_addr constant [17 x i8] c"ppmu-event0-mscl\00", align 1
@.str.100 = private unnamed_addr constant [17 x i8] c"ppmu-event1-mscl\00", align 1
@.str.101 = private unnamed_addr constant [17 x i8] c"ppmu-event2-mscl\00", align 1
@.str.102 = private unnamed_addr constant [17 x i8] c"ppmu-event3-mscl\00", align 1
@.str.103 = private unnamed_addr constant [19 x i8] c"ppmu-event0-fimd0x\00", align 1
@.str.104 = private unnamed_addr constant [19 x i8] c"ppmu-event1-fimd0x\00", align 1
@.str.105 = private unnamed_addr constant [19 x i8] c"ppmu-event2-fimd0x\00", align 1
@.str.106 = private unnamed_addr constant [19 x i8] c"ppmu-event3-fimd0x\00", align 1
@.str.107 = private unnamed_addr constant [19 x i8] c"ppmu-event0-fimd1x\00", align 1
@.str.108 = private unnamed_addr constant [19 x i8] c"ppmu-event1-fimd1x\00", align 1
@.str.109 = private unnamed_addr constant [19 x i8] c"ppmu-event2-fimd1x\00", align 1
@.str.110 = private unnamed_addr constant [19 x i8] c"ppmu-event3-fimd1x\00", align 1
@.str.111 = private unnamed_addr constant [19 x i8] c"ppmu-event0-d0-cpu\00", align 1
@.str.112 = private unnamed_addr constant [19 x i8] c"ppmu-event1-d0-cpu\00", align 1
@.str.113 = private unnamed_addr constant [19 x i8] c"ppmu-event2-d0-cpu\00", align 1
@.str.114 = private unnamed_addr constant [19 x i8] c"ppmu-event3-d0-cpu\00", align 1
@.str.115 = private unnamed_addr constant [23 x i8] c"ppmu-event0-d0-general\00", align 1
@.str.116 = private unnamed_addr constant [23 x i8] c"ppmu-event1-d0-general\00", align 1
@.str.117 = private unnamed_addr constant [23 x i8] c"ppmu-event2-d0-general\00", align 1
@.str.118 = private unnamed_addr constant [23 x i8] c"ppmu-event3-d0-general\00", align 1
@.str.119 = private unnamed_addr constant [18 x i8] c"ppmu-event0-d0-rt\00", align 1
@.str.120 = private unnamed_addr constant [18 x i8] c"ppmu-event1-d0-rt\00", align 1
@.str.121 = private unnamed_addr constant [18 x i8] c"ppmu-event2-d0-rt\00", align 1
@.str.122 = private unnamed_addr constant [18 x i8] c"ppmu-event3-d0-rt\00", align 1
@.str.123 = private unnamed_addr constant [19 x i8] c"ppmu-event0-d1-cpu\00", align 1
@.str.124 = private unnamed_addr constant [19 x i8] c"ppmu-event1-d1-cpu\00", align 1
@.str.125 = private unnamed_addr constant [19 x i8] c"ppmu-event2-d1-cpu\00", align 1
@.str.126 = private unnamed_addr constant [19 x i8] c"ppmu-event3-d1-cpu\00", align 1
@.str.127 = private unnamed_addr constant [23 x i8] c"ppmu-event0-d1-general\00", align 1
@.str.128 = private unnamed_addr constant [23 x i8] c"ppmu-event1-d1-general\00", align 1
@.str.129 = private unnamed_addr constant [23 x i8] c"ppmu-event2-d1-general\00", align 1
@.str.130 = private unnamed_addr constant [23 x i8] c"ppmu-event3-d1-general\00", align 1
@.str.131 = private unnamed_addr constant [18 x i8] c"ppmu-event0-d1-rt\00", align 1
@.str.132 = private unnamed_addr constant [18 x i8] c"ppmu-event1-d1-rt\00", align 1
@.str.133 = private unnamed_addr constant [18 x i8] c"ppmu-event2-d1-rt\00", align 1
@.str.134 = private unnamed_addr constant [18 x i8] c"ppmu-event3-d1-rt\00", align 1
@.str.135 = private unnamed_addr constant [19 x i8] c"ppmu-event0-dmc0_0\00", align 1
@.str.136 = private unnamed_addr constant [19 x i8] c"ppmu-event1-dmc0_0\00", align 1
@.str.137 = private unnamed_addr constant [19 x i8] c"ppmu-event2-dmc0_0\00", align 1
@.str.138 = private unnamed_addr constant [19 x i8] c"ppmu-event3-dmc0_0\00", align 1
@.str.139 = private unnamed_addr constant [19 x i8] c"ppmu-event0-dmc0_1\00", align 1
@.str.140 = private unnamed_addr constant [19 x i8] c"ppmu-event1-dmc0_1\00", align 1
@.str.141 = private unnamed_addr constant [19 x i8] c"ppmu-event2-dmc0_1\00", align 1
@.str.142 = private unnamed_addr constant [19 x i8] c"ppmu-event3-dmc0_1\00", align 1
@.str.143 = private unnamed_addr constant [19 x i8] c"ppmu-event0-dmc1_0\00", align 1
@.str.144 = private unnamed_addr constant [19 x i8] c"ppmu-event1-dmc1_0\00", align 1
@.str.145 = private unnamed_addr constant [19 x i8] c"ppmu-event2-dmc1_0\00", align 1
@.str.146 = private unnamed_addr constant [19 x i8] c"ppmu-event3-dmc1_0\00", align 1
@.str.147 = private unnamed_addr constant [19 x i8] c"ppmu-event0-dmc1_1\00", align 1
@.str.148 = private unnamed_addr constant [19 x i8] c"ppmu-event1-dmc1_1\00", align 1
@.str.149 = private unnamed_addr constant [19 x i8] c"ppmu-event2-dmc1_1\00", align 1
@.str.150 = private unnamed_addr constant [19 x i8] c"ppmu-event3-dmc1_1\00", align 1
@.str.151 = private unnamed_addr constant [19 x i8] c"ppmu-event0-dmc0-0\00", align 1
@.str.152 = private unnamed_addr constant [19 x i8] c"ppmu-event1-dmc0-0\00", align 1
@.str.153 = private unnamed_addr constant [19 x i8] c"ppmu-event2-dmc0-0\00", align 1
@.str.154 = private unnamed_addr constant [19 x i8] c"ppmu-event3-dmc0-0\00", align 1
@.str.155 = private unnamed_addr constant [19 x i8] c"ppmu-event0-dmc0-1\00", align 1
@.str.156 = private unnamed_addr constant [19 x i8] c"ppmu-event1-dmc0-1\00", align 1
@.str.157 = private unnamed_addr constant [19 x i8] c"ppmu-event2-dmc0-1\00", align 1
@.str.158 = private unnamed_addr constant [19 x i8] c"ppmu-event3-dmc0-1\00", align 1
@.str.159 = private unnamed_addr constant [19 x i8] c"ppmu-event0-dmc1-0\00", align 1
@.str.160 = private unnamed_addr constant [19 x i8] c"ppmu-event1-dmc1-0\00", align 1
@.str.161 = private unnamed_addr constant [19 x i8] c"ppmu-event2-dmc1-0\00", align 1
@.str.162 = private unnamed_addr constant [19 x i8] c"ppmu-event3-dmc1-0\00", align 1
@.str.163 = private unnamed_addr constant [19 x i8] c"ppmu-event0-dmc1-1\00", align 1
@.str.164 = private unnamed_addr constant [19 x i8] c"ppmu-event1-dmc1-1\00", align 1
@.str.165 = private unnamed_addr constant [19 x i8] c"ppmu-event2-dmc1-1\00", align 1
@.str.166 = private unnamed_addr constant [19 x i8] c"ppmu-event3-dmc1-1\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description247, ptr @__UNIQUE_ID_license249], section "llvm.metadata"
@switch.table.exynos_ppmu_probe = private unnamed_addr constant [4 x i32] [i32 5, i32 5, i32 5, i32 34], align 4

@__mod_of__exynos_ppmu_id_match_device_table = dso_local alias [3 x %struct.of_device_id], ptr @exynos_ppmu_id_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @exynos_ppmu_driver, ptr noundef nonnull @__this_module) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @exynos_ppmu_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_ppmu_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 28, i32 noundef 3520) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %162, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.exynos_ppmu, ptr %3, i32 0, i32 3
  store ptr %2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %110, label %10

10:                                               ; preds = %5
  %11 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #7
  %12 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %11) #7
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %106, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.resource, ptr %11, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = load i32, ptr %11, align 4
  %18 = add i32 %16, -3
  %19 = sub i32 %18, %17
  store i32 %19, ptr getelementptr inbounds (%struct.regmap_config, ptr @exynos_ppmu_regmap_config, i32 0, i32 19), align 4
  %20 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %2, ptr noundef null, ptr noundef %12, ptr noundef nonnull @exynos_ppmu_regmap_config, ptr noundef null, ptr noundef null) #7
  %21 = getelementptr inbounds %struct.exynos_ppmu, ptr %3, i32 0, i32 4
  store ptr %20, ptr %21, align 4
  %22 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6) #8
  br label %106

24:                                               ; preds = %14
  %25 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.7) #7
  %26 = getelementptr inbounds %struct.exynos_ppmu, ptr %3, i32 0, i32 5
  store ptr %25, ptr %26, align 4
  %27 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store ptr null, ptr %26, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.8) #8
  br label %29

29:                                               ; preds = %28, %24
  %30 = tail call ptr @of_get_child_by_name(ptr noundef nonnull %8, ptr noundef nonnull @.str.10) #7
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.11) #8
  br label %110

33:                                               ; preds = %29
  %34 = tail call ptr @of_get_next_child(ptr noundef nonnull %30, ptr noundef null) #7
  %35 = icmp eq ptr %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %36, %33
  %37 = phi i32 [ %39, %36 ], [ 0, %33 ]
  %38 = phi ptr [ %40, %36 ], [ %34, %33 ]
  %39 = add i32 %37, 1
  %40 = tail call ptr @of_get_next_child(ptr noundef nonnull %30, ptr noundef nonnull %38) #7
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %36

42:                                               ; preds = %36, %33
  %43 = phi i32 [ 0, %33 ], [ %39, %36 ]
  %44 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %43, i32 16) #7
  %45 = extractvalue { i32, i1 } %44, 1
  br i1 %45, label %110, label %46, !prof !8

46:                                               ; preds = %42
  %47 = extractvalue { i32, i1 } %44, 0
  %48 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef %47, i32 noundef 3520) #7
  %49 = icmp eq ptr %48, null
  br i1 %49, label %110, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.exynos_ppmu, ptr %3, i32 0, i32 2
  store i32 %43, ptr %51, align 4
  %52 = tail call ptr @of_match_device(ptr noundef nonnull @exynos_ppmu_id_match, ptr noundef %2) #7
  %53 = icmp eq ptr %52, null
  br i1 %53, label %110, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.of_device_id, ptr %52, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = ptrtoint ptr %56 to i32
  %58 = getelementptr inbounds %struct.exynos_ppmu, ptr %3, i32 0, i32 6
  store i32 %57, ptr %58, align 4
  %59 = tail call ptr @of_get_next_child(ptr noundef nonnull %30, ptr noundef null) #7
  %60 = icmp eq ptr %59, null
  br i1 %60, label %104, label %61

61:                                               ; preds = %100, %54
  %62 = phi i32 [ %101, %100 ], [ 0, %54 ]
  %63 = phi ptr [ %102, %100 ], [ %59, %54 ]
  br label %64

64:                                               ; preds = %71, %61
  %65 = phi i32 [ 0, %61 ], [ %72, %71 ]
  %66 = getelementptr [152 x %struct.__exynos_ppmu_events], ptr @ppmu_events, i32 0, i32 %65
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %64
  %70 = tail call zeroext i1 @of_node_name_eq(ptr noundef nonnull %63, ptr noundef nonnull %67) #7
  br i1 %70, label %75, label %71

71:                                               ; preds = %69, %64
  %72 = add nuw nsw i32 %65, 1
  %73 = icmp eq i32 %72, 152
  br i1 %73, label %74, label %64

74:                                               ; preds = %71
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.12, ptr noundef nonnull %63) #8
  br label %100

75:                                               ; preds = %69
  %76 = load i32, ptr %58, align 4
  switch i32 %76, label %81 [
    i32 0, label %78
    i32 1, label %77
  ]

77:                                               ; preds = %75
  br label %78

78:                                               ; preds = %77, %75
  %79 = phi ptr [ @exynos_ppmu_v2_ops, %77 ], [ @exynos_ppmu_ops, %75 ]
  %80 = getelementptr %struct.devfreq_event_desc, ptr %48, i32 %62, i32 3
  store ptr %79, ptr %80, align 4
  br label %81

81:                                               ; preds = %78, %75
  %82 = getelementptr %struct.devfreq_event_desc, ptr %48, i32 %62
  %83 = getelementptr %struct.devfreq_event_desc, ptr %48, i32 %62, i32 2
  store ptr %3, ptr %83, align 4
  %84 = tail call i32 @of_property_read_string(ptr noundef nonnull %63, ptr noundef nonnull @.str.13, ptr noundef %82) #7
  %85 = getelementptr %struct.devfreq_event_desc, ptr %48, i32 %62, i32 1
  %86 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %63, ptr noundef nonnull @.str.14, ptr noundef %85, i32 noundef 1, i32 noundef 0) #7
  %87 = icmp sgt i32 %86, -1
  br i1 %87, label %98, label %88

88:                                               ; preds = %81
  %89 = load i32, ptr %58, align 4
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = getelementptr [152 x %struct.__exynos_ppmu_events], ptr @ppmu_events, i32 0, i32 %65, i32 1
  %93 = load i32, ptr %92, align 4
  %94 = getelementptr inbounds [4 x i32], ptr @switch.table.exynos_ppmu_probe, i32 0, i32 %93
  %95 = load i32, ptr %94, align 4
  br label %96

96:                                               ; preds = %91, %88
  %97 = phi i32 [ 7, %88 ], [ %95, %91 ]
  store i32 %97, ptr %85, align 4
  br label %98

98:                                               ; preds = %96, %81
  %99 = add i32 %62, 1
  br label %100

100:                                              ; preds = %98, %74
  %101 = phi i32 [ %62, %74 ], [ %99, %98 ]
  %102 = tail call ptr @of_get_next_child(ptr noundef nonnull %30, ptr noundef nonnull %63) #7
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %61

104:                                              ; preds = %100, %54
  %105 = getelementptr inbounds %struct.exynos_ppmu, ptr %3, i32 0, i32 1
  store ptr %48, ptr %105, align 4
  tail call void @of_node_put(ptr noundef nonnull %30) #7
  br label %115

106:                                              ; preds = %23, %10
  %107 = phi ptr [ %20, %23 ], [ %12, %10 ]
  %108 = ptrtoint ptr %107 to i32
  %109 = icmp slt ptr %107, null
  br i1 %109, label %113, label %115

110:                                              ; preds = %50, %46, %42, %32, %5
  %111 = phi ptr [ @.str.5, %5 ], [ @.str.9, %50 ], [ @.str.9, %46 ], [ @.str.9, %42 ], [ @.str.9, %32 ]
  %112 = phi i32 [ -22, %5 ], [ -22, %50 ], [ -12, %46 ], [ -12, %42 ], [ -22, %32 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull %111) #8
  br label %113

113:                                              ; preds = %110, %106
  %114 = phi i32 [ %108, %106 ], [ %112, %110 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #8
  br label %162

115:                                              ; preds = %106, %104
  %116 = getelementptr inbounds %struct.exynos_ppmu, ptr %3, i32 0, i32 1
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.exynos_ppmu, ptr %3, i32 0, i32 2
  %119 = load i32, ptr %118, align 4
  %120 = shl i32 %119, 2
  %121 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef %120, i32 noundef 3520) #7
  store ptr %121, ptr %3, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %162, label %123

123:                                              ; preds = %115
  %124 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %124, align 8
  %125 = load i32, ptr %118, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %151, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  br label %129

129:                                              ; preds = %144, %127
  %130 = phi i32 [ 0, %127 ], [ %148, %144 ]
  %131 = getelementptr %struct.devfreq_event_desc, ptr %117, i32 %130
  %132 = tail call ptr @devm_devfreq_event_add_edev(ptr noundef %2, ptr noundef %131) #7
  %133 = getelementptr ptr, ptr %121, i32 %130
  store ptr %132, ptr %133, align 4
  %134 = icmp ugt ptr %132, inttoptr (i32 -4096 to ptr)
  br i1 %134, label %135, label %139

135:                                              ; preds = %129
  %136 = getelementptr ptr, ptr %121, i32 %130
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #8
  %137 = load ptr, ptr %136, align 4
  %138 = ptrtoint ptr %137 to i32
  br label %162

139:                                              ; preds = %129
  %140 = load ptr, ptr %128, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %144

142:                                              ; preds = %139
  %143 = load ptr, ptr %2, align 4
  br label %144

144:                                              ; preds = %142, %139
  %145 = phi ptr [ %143, %142 ], [ %140, %139 ]
  %146 = load ptr, ptr %131, align 4
  %147 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %145, ptr noundef %146) #8
  %148 = add nuw i32 %130, 1
  %149 = load i32, ptr %118, align 4
  %150 = icmp ult i32 %148, %149
  br i1 %150, label %129, label %151

151:                                              ; preds = %144, %123
  %152 = getelementptr inbounds %struct.exynos_ppmu, ptr %3, i32 0, i32 5
  %153 = load ptr, ptr %152, align 4
  %154 = tail call i32 @clk_prepare(ptr noundef %153) #7
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %151
  %157 = tail call i32 @clk_enable(ptr noundef %153) #7
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %156
  tail call void @clk_unprepare(ptr noundef %153) #7
  br label %160

160:                                              ; preds = %159, %151
  %161 = phi i32 [ %157, %159 ], [ %154, %151 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #8
  br label %162

162:                                              ; preds = %160, %156, %135, %115, %113, %1
  %163 = phi i32 [ %114, %113 ], [ %138, %135 ], [ %161, %160 ], [ -12, %1 ], [ -12, %115 ], [ 0, %156 ]
  ret i32 %163
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_ppmu_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.exynos_ppmu, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_devfreq_event_add_edev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_ppmu_disable(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.devfreq_event_dev, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.devfreq_event_desc, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.exynos_ppmu, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 32, i32 noundef -2147483633) #7
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %7, align 4
  %13 = call i32 @regmap_read(ptr noundef %12, i32 noundef 0, ptr noundef nonnull %2) #7
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = load i32, ptr %2, align 4
  %17 = and i32 %16, -2
  store i32 %17, ptr %2, align 4
  %18 = load ptr, ptr %7, align 4
  %19 = call i32 @regmap_write(ptr noundef %18, i32 noundef 0, i32 noundef %17) #7
  %20 = call i32 @llvm.smin.i32(i32 %19, i32 0)
  br label %21

21:                                               ; preds = %15, %11, %1
  %22 = phi i32 [ %9, %1 ], [ %13, %11 ], [ %20, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_ppmu_set_event(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.devfreq_event_dev, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.devfreq_event_desc, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %5, align 4
  br label %9

9:                                                ; preds = %15, %1
  %10 = phi i32 [ 0, %1 ], [ %16, %15 ]
  %11 = getelementptr [152 x %struct.__exynos_ppmu_events], ptr @ppmu_events, i32 0, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @strcmp(ptr noundef %8, ptr noundef %12) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %9
  %16 = add nuw nsw i32 %10, 1
  %17 = icmp eq i32 %16, 152
  br i1 %17, label %18, label %9

18:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  br label %53

19:                                               ; preds = %9
  %20 = getelementptr [152 x %struct.__exynos_ppmu_events], ptr @ppmu_events, i32 0, i32 %10, i32 1
  %21 = load i32, ptr %20, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !9
  %22 = getelementptr inbounds %struct.exynos_ppmu, ptr %7, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = call i32 @regmap_read(ptr noundef %23, i32 noundef 16, ptr noundef nonnull %3) #7
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %53, label %26

26:                                               ; preds = %19
  %27 = shl nuw i32 1, %21
  %28 = load i32, ptr %3, align 4
  %29 = or i32 %27, %28
  %30 = or i32 %29, -2147483648
  store i32 %30, ptr %3, align 4
  %31 = load ptr, ptr %22, align 4
  %32 = call i32 @regmap_write(ptr noundef %31, i32 noundef 16, i32 noundef %30) #7
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %53, label %34

34:                                               ; preds = %26
  %35 = load ptr, ptr %22, align 4
  %36 = shl i32 %21, 8
  %37 = add i32 %36, 4096
  %38 = load ptr, ptr %4, align 8
  %39 = getelementptr inbounds %struct.devfreq_event_desc, ptr %38, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = call i32 @regmap_write(ptr noundef %35, i32 noundef %37, i32 noundef %40) #7
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %34
  %44 = load ptr, ptr %22, align 4
  %45 = call i32 @regmap_read(ptr noundef %44, i32 noundef 0, ptr noundef nonnull %2) #7
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %43
  %48 = load i32, ptr %2, align 4
  %49 = or i32 %48, 7
  store i32 %49, ptr %2, align 4
  %50 = load ptr, ptr %22, align 4
  %51 = call i32 @regmap_write(ptr noundef %50, i32 noundef 0, i32 noundef %49) #7
  %52 = call i32 @llvm.smin.i32(i32 %51, i32 0)
  br label %53

53:                                               ; preds = %47, %43, %34, %26, %19, %18
  %54 = phi i32 [ %24, %19 ], [ %32, %26 ], [ %41, %34 ], [ %45, %43 ], [ %52, %47 ], [ -22, %18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_ppmu_get_event(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.devfreq_event_dev, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.devfreq_event_desc, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %10, align 4
  br label %14

14:                                               ; preds = %23, %2
  %15 = phi i32 [ 0, %2 ], [ %24, %23 ]
  %16 = getelementptr [152 x %struct.__exynos_ppmu_events], ptr @ppmu_events, i32 0, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @strcmp(ptr noundef %13, ptr noundef %17) #7
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = getelementptr [152 x %struct.__exynos_ppmu_events], ptr @ppmu_events, i32 0, i32 %15, i32 1
  %22 = load i32, ptr %21, align 4
  br label %26

23:                                               ; preds = %14
  %24 = add nuw nsw i32 %15, 1
  %25 = icmp eq i32 %24, 152
  br i1 %25, label %26, label %14

26:                                               ; preds = %23, %20
  %27 = phi i32 [ %22, %20 ], [ -22, %23 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store i32 0, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  store i32 0, ptr %8, align 4, !annotation !9
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %81, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.exynos_ppmu, ptr %12, i32 0, i32 4
  %31 = load ptr, ptr %30, align 4
  %32 = call i32 @regmap_read(ptr noundef %31, i32 noundef 0, ptr noundef nonnull %7) #7
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %81, label %34

34:                                               ; preds = %29
  %35 = load i32, ptr %7, align 4
  %36 = and i32 %35, -2
  store i32 %36, ptr %7, align 4
  %37 = load ptr, ptr %30, align 4
  %38 = call i32 @regmap_write(ptr noundef %37, i32 noundef 0, i32 noundef %36) #7
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %81, label %40

40:                                               ; preds = %34
  %41 = load ptr, ptr %30, align 4
  %42 = call i32 @regmap_read(ptr noundef %41, i32 noundef 256, ptr noundef nonnull %3) #7
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %81, label %44

44:                                               ; preds = %40
  %45 = load i32, ptr %3, align 4
  %46 = getelementptr inbounds %struct.devfreq_event_data, ptr %1, i32 0, i32 1
  store i32 %45, ptr %46, align 4
  switch i32 %27, label %81 [
    i32 0, label %47
    i32 1, label %47
    i32 2, label %47
    i32 3, label %55
  ]

47:                                               ; preds = %44, %44, %44
  %48 = load ptr, ptr %30, align 4
  %49 = shl nuw nsw i32 %27, 4
  %50 = add nuw nsw i32 %49, 272
  %51 = call i32 @regmap_read(ptr noundef %48, i32 noundef %50, ptr noundef nonnull %4) #7
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %81, label %53

53:                                               ; preds = %47
  %54 = load i32, ptr %4, align 4
  br label %68

55:                                               ; preds = %44
  %56 = load ptr, ptr %30, align 4
  %57 = call i32 @regmap_read(ptr noundef %56, i32 noundef 320, ptr noundef nonnull %5) #7
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %81, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr %30, align 4
  %61 = call i32 @regmap_read(ptr noundef %60, i32 noundef 336, ptr noundef nonnull %6) #7
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %81, label %63

63:                                               ; preds = %59
  %64 = load i32, ptr %5, align 4
  %65 = shl i32 %64, 8
  %66 = load i32, ptr %6, align 4
  %67 = or i32 %65, %66
  br label %68

68:                                               ; preds = %63, %53
  %69 = phi i32 [ %67, %63 ], [ %54, %53 ]
  store i32 %69, ptr %1, align 4
  %70 = load ptr, ptr %30, align 4
  %71 = call i32 @regmap_read(ptr noundef %70, i32 noundef 32, ptr noundef nonnull %8) #7
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %68
  %74 = shl nuw nsw i32 1, %27
  %75 = load i32, ptr %8, align 4
  %76 = or i32 %74, %75
  %77 = or i32 %76, -2147483648
  store i32 %77, ptr %8, align 4
  %78 = load ptr, ptr %30, align 4
  %79 = call i32 @regmap_write(ptr noundef %78, i32 noundef 32, i32 noundef %77) #7
  %80 = call i32 @llvm.smin.i32(i32 %79, i32 0)
  br label %81

81:                                               ; preds = %73, %68, %59, %55, %47, %44, %40, %34, %29, %26
  %82 = phi i32 [ -22, %26 ], [ %32, %29 ], [ %38, %34 ], [ %42, %40 ], [ %51, %47 ], [ %57, %55 ], [ %61, %59 ], [ -22, %44 ], [ %71, %68 ], [ %80, %73 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %82
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_ppmu_v2_disable(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.devfreq_event_dev, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.devfreq_event_desc, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.exynos_ppmu, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 24, i32 noundef -2147483633) #7
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %89, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %7, align 4
  %13 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 20, i32 noundef -2147483633) #7
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %89, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 4
  %17 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 12, i32 noundef -2147483633) #7
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %89, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %7, align 4
  %21 = tail call i32 @regmap_write(ptr noundef %20, i32 noundef 44, i32 noundef -2147483633) #7
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %89, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %7, align 4
  %25 = tail call i32 @regmap_write(ptr noundef %24, i32 noundef 28, i32 noundef 0) #7
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %89, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %7, align 4
  %29 = tail call i32 @regmap_write(ptr noundef %28, i32 noundef 32, i32 noundef 0) #7
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %89, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %7, align 4
  %33 = tail call i32 @regmap_write(ptr noundef %32, i32 noundef 36, i32 noundef 0) #7
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %89, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %7, align 4
  %37 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 40, i32 noundef 0) #7
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %89, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %7, align 4
  %41 = tail call i32 @regmap_write(ptr noundef %40, i32 noundef 48, i32 noundef 0) #7
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %89, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr %7, align 4
  %45 = tail call i32 @regmap_write(ptr noundef %44, i32 noundef 512, i32 noundef 0) #7
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %89, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %7, align 4
  %49 = tail call i32 @regmap_write(ptr noundef %48, i32 noundef 516, i32 noundef 0) #7
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %89, label %51

51:                                               ; preds = %47
  %52 = load ptr, ptr %7, align 4
  %53 = tail call i32 @regmap_write(ptr noundef %52, i32 noundef 520, i32 noundef 0) #7
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %89, label %55

55:                                               ; preds = %51
  %56 = load ptr, ptr %7, align 4
  %57 = tail call i32 @regmap_write(ptr noundef %56, i32 noundef 524, i32 noundef 0) #7
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %89, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr %7, align 4
  %61 = tail call i32 @regmap_write(ptr noundef %60, i32 noundef 544, i32 noundef 0) #7
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %89, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %7, align 4
  %65 = tail call i32 @regmap_write(ptr noundef %64, i32 noundef 548, i32 noundef 0) #7
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %89, label %67

67:                                               ; preds = %63
  %68 = load ptr, ptr %7, align 4
  %69 = tail call i32 @regmap_write(ptr noundef %68, i32 noundef 552, i32 noundef 0) #7
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %89, label %71

71:                                               ; preds = %67
  %72 = load ptr, ptr %7, align 4
  %73 = tail call i32 @regmap_write(ptr noundef %72, i32 noundef 556, i32 noundef 0) #7
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %89, label %75

75:                                               ; preds = %71
  %76 = load ptr, ptr %7, align 4
  %77 = tail call i32 @regmap_write(ptr noundef %76, i32 noundef 608, i32 noundef 0) #7
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %75
  %80 = load ptr, ptr %7, align 4
  %81 = call i32 @regmap_read(ptr noundef %80, i32 noundef 4, ptr noundef nonnull %2) #7
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %79
  %84 = load i32, ptr %2, align 4
  %85 = and i32 %84, -2
  store i32 %85, ptr %2, align 4
  %86 = load ptr, ptr %7, align 4
  %87 = call i32 @regmap_write(ptr noundef %86, i32 noundef 4, i32 noundef %85) #7
  %88 = call i32 @llvm.smin.i32(i32 %87, i32 0)
  br label %89

89:                                               ; preds = %83, %79, %75, %71, %67, %63, %59, %55, %51, %47, %43, %39, %35, %31, %27, %23, %19, %15, %11, %1
  %90 = phi i32 [ %9, %1 ], [ %13, %11 ], [ %17, %15 ], [ %21, %19 ], [ %25, %23 ], [ %29, %27 ], [ %33, %31 ], [ %37, %35 ], [ %41, %39 ], [ %45, %43 ], [ %49, %47 ], [ %53, %51 ], [ %57, %55 ], [ %61, %59 ], [ %65, %63 ], [ %69, %67 ], [ %73, %71 ], [ %77, %75 ], [ %81, %79 ], [ %88, %83 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %90
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_ppmu_v2_set_event(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.devfreq_event_dev, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.devfreq_event_desc, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !9
  %8 = load ptr, ptr %5, align 4
  br label %9

9:                                                ; preds = %18, %1
  %10 = phi i32 [ 0, %1 ], [ %19, %18 ]
  %11 = getelementptr [152 x %struct.__exynos_ppmu_events], ptr @ppmu_events, i32 0, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @strcmp(ptr noundef %8, ptr noundef %12) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = getelementptr [152 x %struct.__exynos_ppmu_events], ptr @ppmu_events, i32 0, i32 %10, i32 1
  %17 = load i32, ptr %16, align 4
  br label %21

18:                                               ; preds = %9
  %19 = add nuw nsw i32 %10, 1
  %20 = icmp eq i32 %19, 152
  br i1 %20, label %21, label %9

21:                                               ; preds = %18, %15
  %22 = phi i32 [ %17, %15 ], [ -22, %18 ]
  %23 = getelementptr inbounds %struct.exynos_ppmu, ptr %7, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  %25 = call i32 @regmap_read(ptr noundef %24, i32 noundef 8, ptr noundef nonnull %3) #7
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %55, label %27

27:                                               ; preds = %21
  %28 = shl nuw i32 1, %22
  %29 = load i32, ptr %3, align 4
  %30 = or i32 %28, %29
  %31 = or i32 %30, -2147483648
  store i32 %31, ptr %3, align 4
  %32 = load ptr, ptr %23, align 4
  %33 = call i32 @regmap_write(ptr noundef %32, i32 noundef 8, i32 noundef %31) #7
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %55, label %35

35:                                               ; preds = %27
  %36 = load ptr, ptr %23, align 4
  %37 = shl i32 %22, 2
  %38 = add i32 %37, 512
  %39 = load ptr, ptr %4, align 8
  %40 = getelementptr inbounds %struct.devfreq_event_desc, ptr %39, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = call i32 @regmap_write(ptr noundef %36, i32 noundef %38, i32 noundef %41) #7
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %35
  %45 = load ptr, ptr %23, align 4
  %46 = call i32 @regmap_read(ptr noundef %45, i32 noundef 4, ptr noundef nonnull %2) #7
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %44
  %49 = load i32, ptr %2, align 4
  %50 = and i32 %49, -3145744
  %51 = or i32 %50, 7
  store i32 %51, ptr %2, align 4
  %52 = load ptr, ptr %23, align 4
  %53 = call i32 @regmap_write(ptr noundef %52, i32 noundef 4, i32 noundef %51) #7
  %54 = call i32 @llvm.smin.i32(i32 %53, i32 0)
  br label %55

55:                                               ; preds = %48, %44, %35, %27, %21
  %56 = phi i32 [ %25, %21 ], [ %33, %27 ], [ %42, %35 ], [ %46, %44 ], [ %54, %48 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_ppmu_v2_get_event(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.devfreq_event_dev, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.devfreq_event_desc, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %10, align 4
  br label %14

14:                                               ; preds = %23, %2
  %15 = phi i32 [ 0, %2 ], [ %24, %23 ]
  %16 = getelementptr [152 x %struct.__exynos_ppmu_events], ptr @ppmu_events, i32 0, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @strcmp(ptr noundef %13, ptr noundef %17) #7
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = getelementptr [152 x %struct.__exynos_ppmu_events], ptr @ppmu_events, i32 0, i32 %15, i32 1
  %22 = load i32, ptr %21, align 4
  br label %26

23:                                               ; preds = %14
  %24 = add nuw nsw i32 %15, 1
  %25 = icmp eq i32 %24, 152
  br i1 %25, label %26, label %14

26:                                               ; preds = %23, %20
  %27 = phi i32 [ %22, %20 ], [ -22, %23 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store i32 0, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  store i32 0, ptr %8, align 4, !annotation !9
  %28 = getelementptr inbounds %struct.exynos_ppmu, ptr %12, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = call i32 @regmap_read(ptr noundef %29, i32 noundef 4, ptr noundef nonnull %3) #7
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %76, label %32

32:                                               ; preds = %26
  %33 = load i32, ptr %3, align 4
  %34 = and i32 %33, -2
  store i32 %34, ptr %3, align 4
  %35 = load ptr, ptr %28, align 4
  %36 = call i32 @regmap_write(ptr noundef %35, i32 noundef 4, i32 noundef %34) #7
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %76, label %38

38:                                               ; preds = %32
  %39 = load ptr, ptr %28, align 4
  %40 = call i32 @regmap_read(ptr noundef %39, i32 noundef 72, ptr noundef nonnull %7) #7
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %76, label %42

42:                                               ; preds = %38
  %43 = load i32, ptr %7, align 4
  %44 = getelementptr inbounds %struct.devfreq_event_data, ptr %1, i32 0, i32 1
  store i32 %43, ptr %44, align 4
  switch i32 %27, label %63 [
    i32 0, label %45
    i32 1, label %45
    i32 2, label %45
    i32 3, label %53
  ]

45:                                               ; preds = %42, %42, %42
  %46 = load ptr, ptr %28, align 4
  %47 = shl nuw nsw i32 %27, 2
  %48 = add nuw nsw i32 %47, 52
  %49 = call i32 @regmap_read(ptr noundef %46, i32 noundef %48, ptr noundef nonnull %8) #7
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %76, label %51

51:                                               ; preds = %45
  %52 = load i32, ptr %8, align 4
  br label %63

53:                                               ; preds = %42
  %54 = load ptr, ptr %28, align 4
  %55 = call i32 @regmap_read(ptr noundef %54, i32 noundef 68, ptr noundef nonnull %5) #7
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %76, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr %28, align 4
  %59 = call i32 @regmap_read(ptr noundef %58, i32 noundef 64, ptr noundef nonnull %6) #7
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %76, label %61

61:                                               ; preds = %57
  %62 = load i32, ptr %6, align 4
  br label %63

63:                                               ; preds = %61, %51, %42
  %64 = phi i32 [ 0, %42 ], [ %62, %61 ], [ %52, %51 ]
  store i32 %64, ptr %1, align 4
  %65 = load ptr, ptr %28, align 4
  %66 = call i32 @regmap_read(ptr noundef %65, i32 noundef 12, ptr noundef nonnull %4) #7
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %63
  %69 = shl nuw i32 1, %27
  %70 = load i32, ptr %4, align 4
  %71 = or i32 %69, %70
  %72 = or i32 %71, -2147483648
  store i32 %72, ptr %4, align 4
  %73 = load ptr, ptr %28, align 4
  %74 = call i32 @regmap_write(ptr noundef %73, i32 noundef 12, i32 noundef %72) #7
  %75 = call i32 @llvm.smin.i32(i32 %74, i32 0)
  br label %76

76:                                               ; preds = %68, %63, %57, %53, %45, %38, %32, %26
  %77 = phi i32 [ %30, %26 ], [ %36, %32 ], [ %40, %38 ], [ %49, %45 ], [ %55, %53 ], [ %59, %57 ], [ 0, %63 ], [ %75, %68 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %77
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
