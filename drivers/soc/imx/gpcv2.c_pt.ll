; ModuleID = '/llk/IR/drivers/soc/imx/gpcv2.c_pt.bc'
source_filename = "../drivers/soc/imx/gpcv2.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.imx_pgc_domain_data = type { ptr, i32, ptr }
%struct.imx_pgc_domain = type { %struct.generic_pm_domain, ptr, ptr, ptr, ptr, i32, i32, %struct.anon.73, i32, i8, ptr }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, [1 x %struct.cpumask], ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.71 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.71 = type { %struct.mutex }
%struct.anon.73 = type { i32, i32, i32, i32 }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }

@__initcall__kmod_gpcv2__248_1023_imx_pgc_domain_driver_init6 = internal global ptr @imx_pgc_domain_driver_init, section ".initcall6.init", align 4
@__initcall__kmod_gpcv2__249_1134_imx_gpc_driver_init6 = internal global ptr @imx_gpc_driver_init, section ".initcall6.init", align 4
@imx_pgc_domain_driver = internal global %struct.platform_driver { ptr @imx_pgc_domain_probe, ptr @imx_pgc_domain_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx_pgc_domain_pm_ops, ptr null, ptr null }, ptr @imx_pgc_domain_id, i8 0 }, align 4
@.str = private unnamed_addr constant [8 x i8] c"imx-pgc\00", align 1
@imx_pgc_domain_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @imx_pgc_domain_suspend, ptr @imx_pgc_domain_resume, ptr @imx_pgc_domain_suspend, ptr @imx_pgc_domain_resume, ptr @imx_pgc_domain_suspend, ptr @imx_pgc_domain_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@imx_pgc_domain_id = internal constant [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"imx-pgc-domain\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"power\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to get domain's regulator\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed to get domain's clocks\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Failed to get domain's resets\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Failed to init power domain\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Failed to add genpd provider\0A\00", align 1
@imx_gpc_driver = internal global %struct.platform_driver { ptr @imx_gpcv2_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.7, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx_gpcv2_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"imx-gpcv2\00", align 1
@imx_gpcv2_dt_ids = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7d-gpc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx7_pgc_domain_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mm-gpc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx8mm_pgc_domain_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mn-gpc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx8mn_pgc_domain_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mq-gpc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx8m_pgc_domain_data }, %struct.of_device_id zeroinitializer], align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"pgc\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"No power domains specified in DT\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"failed to init regmap (%d)\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Failed to read 'reg' property\0A\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"Domain index %d is out of bounds\0A\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"imx-pgc-domain\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"Failed to allocate platform device\0A\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"failed to enable regulator\0A\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"failed to enable reset clocks\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"failed to command PGC\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.19 = private unnamed_addr constant [29 x i8] c"failed to power down ADB400\0A\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"failed to disable regulator\0A\00", align 1
@imx7_pgc_domain_data = internal constant %struct.imx_pgc_domain_data { ptr @imx7_pgc_domains, i32 3, ptr @imx7_access_table }, align 4
@imx8mm_pgc_domain_data = internal constant %struct.imx_pgc_domain_data { ptr @imx8mm_pgc_domains, i32 12, ptr @imx8mm_access_table }, align 4
@imx8mn_pgc_domain_data = internal constant %struct.imx_pgc_domain_data { ptr @imx8mn_pgc_domains, i32 5, ptr @imx8mn_access_table }, align 4
@imx8m_pgc_domain_data = internal constant %struct.imx_pgc_domain_data { ptr @imx8m_pgc_domains, i32 11, ptr @imx8m_access_table }, align 4
@imx7_pgc_domains = internal constant [3 x %struct.imx_pgc_domain] [%struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.21, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, [1 x %struct.cpumask] zeroinitializer, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.71 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 65536, %struct.anon.73 { i32 1, i32 4, i32 0, i32 0 }, i32 1000000, i8 0, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.22, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, [1 x %struct.cpumask] zeroinitializer, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.71 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 131072, %struct.anon.73 { i32 2, i32 8, i32 0, i32 0 }, i32 1000000, i8 0, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.23, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, [1 x %struct.cpumask] zeroinitializer, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.71 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1048576, %struct.anon.73 { i32 16, i32 64, i32 0, i32 0 }, i32 1200000, i8 0, ptr null }], align 8
@imx7_access_table = internal constant %struct.regmap_access_table { ptr @imx7_yes_ranges, i32 4, ptr null, i32 0 }, align 4
@.str.21 = private unnamed_addr constant [9 x i8] c"mipi-phy\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"pcie-phy\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"usb-hsic-phy\00", align 1
@imx7_yes_ranges = internal constant [4 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 444 }, %struct.regmap_range { i32 3072, i32 3084 }, %struct.regmap_range { i32 3136, i32 3148 }, %struct.regmap_range { i32 3328, i32 3340 }], align 4
@imx8mm_pgc_domains = internal constant [12 x %struct.imx_pgc_domain] [%struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.24, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, [1 x %struct.cpumask] zeroinitializer, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.71 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, %struct.anon.73 { i32 0, i32 0, i32 96, i32 25165824 }, i32 0, i8 1, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.25, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, [1 x %struct.cpumask] zeroinitializer, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.71 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 131072, %struct.anon.73 { i32 2, i32 8, i32 0, i32 0 }, i32 0, i8 0, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.26, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, [1 x %struct.cpumask] zeroinitializer, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.71 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 262144, %struct.anon.73 { i32 4, i32 16, i32 0, i32 0 }, i32 0, i8 0, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.27, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, [1 x %struct.cpumask] zeroinitializer, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.71 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 524288, %struct.anon.73 { i32 8, i32 32, i32 0, i32 0 }, i32 0, i8 0, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.28, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, [1 x %struct.cpumask] zeroinitializer, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.71 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 8388608, %struct.anon.73 { i32 128, i32 512, i32 2048, i32 536870912 }, i32 0, i8 1, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.29, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, [1 x %struct.cpumask] zeroinitializer, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.71 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 37748736, %struct.anon.73 { i32 576, i32 2304, i32 1536, i32 402653184 }, i32 0, i8 0, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.30, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, [1 x %struct.cpumask] zeroinitializer, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.71 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 16777216, %struct.anon.73 { i32 256, i32 1024, i32 256, i32 67108864 }, i32 0, i8 1, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.31, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, [1 x %struct.cpumask] zeroinitializer, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.71 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 134217728, %struct.anon.73 { i32 2048, i32 8192, i32 0, i32 0 }, i32 0, i8 0, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.32, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, [1 x %struct.cpumask] zeroinitializer, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.71 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 268435456, %struct.anon.73 { i32 4096, i32 16384, i32 0, i32 0 }, i32 0, i8 0, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.33, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, [1 x %struct.cpumask] zeroinitializer, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.71 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 536870912, %struct.anon.73 { i32 8192, i32 32768, i32 0, i32 0 }, i32 0, i8 1, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.34, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, [1 x %struct.cpumask] zeroinitializer, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.71 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 67108864, %struct.anon.73 { i32 1024, i32 4096, i32 128, i32 33554432 }, i32 0, i8 1, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.35, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, [1 x %struct.cpumask] zeroinitializer, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.71 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 65536, %struct.anon.73 { i32 1, i32 4, i32 0, i32 0 }, i32 0, i8 0, ptr null }], align 8
@imx8mm_access_table = internal constant %struct.regmap_access_table { ptr @imx8mm_yes_ranges, i32 14, ptr null, i32 0 }, align 4
@.str.24 = private unnamed_addr constant [8 x i8] c"hsiomix\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"pcie\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"usb-otg1\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"usb-otg2\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"gpumix\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"gpu\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"vpumix\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"vpu-g1\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"vpu-g2\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"vpu-h1\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"dispmix\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"mipi\00", align 1
@imx8mm_yes_ranges = internal constant [14 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 508 }, %struct.regmap_range { i32 3072, i32 3084 }, %struct.regmap_range { i32 3136, i32 3148 }, %struct.regmap_range { i32 3200, i32 3212 }, %struct.regmap_range { i32 3264, i32 3276 }, %struct.regmap_range { i32 3392, i32 3404 }, %struct.regmap_range { i32 3456, i32 3468 }, %struct.regmap_range { i32 3520, i32 3532 }, %struct.regmap_range { i32 3584, i32 3596 }, %struct.regmap_range { i32 3648, i32 3660 }, %struct.regmap_range { i32 3712, i32 3724 }, %struct.regmap_range { i32 3776, i32 3788 }, %struct.regmap_range { i32 3840, i32 3852 }, %struct.regmap_range { i32 3904, i32 3916 }], align 4
@imx8mn_pgc_domains = internal constant [5 x %struct.imx_pgc_domain] [%struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.24, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, [1 x %struct.cpumask] zeroinitializer, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.71 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, %struct.anon.73 { i32 0, i32 0, i32 32, i32 8388608 }, i32 0, i8 1, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.26, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, [1 x %struct.cpumask] zeroinitializer, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.71 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 262144, %struct.anon.73 { i32 4, i32 16, i32 0, i32 0 }, i32 0, i8 0, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.28, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, [1 x %struct.cpumask] zeroinitializer, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.71 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 8388608, %struct.anon.73 { i32 128, i32 512, i32 2560, i32 671088640 }, i32 0, i8 1, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.34, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, [1 x %struct.cpumask] zeroinitializer, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.71 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 67108864, %struct.anon.73 { i32 1024, i32 4096, i32 128, i32 33554432 }, i32 0, i8 1, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.35, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, [1 x %struct.cpumask] zeroinitializer, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.71 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 65536, %struct.anon.73 { i32 1, i32 4, i32 0, i32 0 }, i32 0, i8 0, ptr null }], align 8
@imx8mn_access_table = internal constant %struct.regmap_access_table { ptr @imx8mn_yes_ranges, i32 6, ptr null, i32 0 }, align 4
@imx8mn_yes_ranges = internal constant [6 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 508 }, %struct.regmap_range { i32 3072, i32 3084 }, %struct.regmap_range { i32 3200, i32 3212 }, %struct.regmap_range { i32 3392, i32 3404 }, %struct.regmap_range { i32 3520, i32 3532 }, %struct.regmap_range { i32 3712, i32 3724 }], align 4
@imx8m_pgc_domains = internal constant [11 x %struct.imx_pgc_domain] [%struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.35, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, [1 x %struct.cpumask] zeroinitializer, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.71 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 65536, %struct.anon.73 { i32 1, i32 4, i32 0, i32 0 }, i32 0, i8 0, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.36, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, [1 x %struct.cpumask] zeroinitializer, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.71 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 131072, %struct.anon.73 { i32 2, i32 8, i32 0, i32 0 }, i32 0, i8 0, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.26, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, [1 x %struct.cpumask] zeroinitializer, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.71 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 262144, %struct.anon.73 { i32 4, i32 16, i32 0, i32 0 }, i32 0, i8 0, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.27, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, [1 x %struct.cpumask] zeroinitializer, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.71 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 524288, %struct.anon.73 { i32 8, i32 32, i32 0, i32 0 }, i32 0, i8 0, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.37, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, [1 x %struct.cpumask] zeroinitializer, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.71 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 2097152, %struct.anon.73 { i32 32, i32 256, i32 0, i32 0 }, i32 0, i8 0, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.29, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, [1 x %struct.cpumask] zeroinitializer, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.71 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 8388608, %struct.anon.73 { i32 128, i32 512, i32 64, i32 67108864 }, i32 0, i8 0, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.38, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, [1 x %struct.cpumask] zeroinitializer, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.71 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 16777216, %struct.anon.73 { i32 256, i32 1024, i32 32, i32 33554432 }, i32 0, i8 1, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.39, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, [1 x %struct.cpumask] zeroinitializer, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.71 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 67108864, %struct.anon.73 { i32 1024, i32 4096, i32 16, i32 16777216 }, i32 0, i8 0, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.40, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, [1 x %struct.cpumask] zeroinitializer, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.71 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 134217728, %struct.anon.73 { i32 2048, i32 8192, i32 0, i32 0 }, i32 0, i8 0, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.41, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, [1 x %struct.cpumask] zeroinitializer, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.71 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 268435456, %struct.anon.73 { i32 4096, i32 16384, i32 0, i32 0 }, i32 0, i8 0, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.42, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, [1 x %struct.cpumask] zeroinitializer, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.71 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 536870912, %struct.anon.73 { i32 8192, i32 32768, i32 0, i32 0 }, i32 0, i8 0, ptr null }], align 8
@imx8m_access_table = internal constant %struct.regmap_access_table { ptr @imx8m_yes_ranges, i32 12, ptr null, i32 0 }, align 4
@.str.36 = private unnamed_addr constant [6 x i8] c"pcie1\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"ddr1\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"vpu\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"disp\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"mipi-csi1\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"mipi-csi2\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"pcie2\00", align 1
@imx8m_yes_ranges = internal constant [12 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 508 }, %struct.regmap_range { i32 3072, i32 3084 }, %struct.regmap_range { i32 3136, i32 3148 }, %struct.regmap_range { i32 3200, i32 3212 }, %struct.regmap_range { i32 3264, i32 3276 }, %struct.regmap_range { i32 3392, i32 3404 }, %struct.regmap_range { i32 3520, i32 3532 }, %struct.regmap_range { i32 3584, i32 3596 }, %struct.regmap_range { i32 3712, i32 3724 }, %struct.regmap_range { i32 3776, i32 3788 }, %struct.regmap_range { i32 3840, i32 3852 }, %struct.regmap_range { i32 3904, i32 3916 }], align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__initcall__kmod_gpcv2__248_1023_imx_pgc_domain_driver_init6, ptr @__initcall__kmod_gpcv2__249_1134_imx_gpc_driver_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @imx_pgc_domain_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx_pgc_domain_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @imx_gpc_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx_gpc_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_pgc_domain_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.imx_pgc_domain, ptr %4, i32 0, i32 10
  store ptr %2, ptr %5, align 8
  %6 = tail call ptr @devm_regulator_get_optional(ptr noundef %2, ptr noundef nonnull @.str.1) #6
  %7 = getelementptr inbounds %struct.imx_pgc_domain, ptr %4, i32 0, i32 2
  store ptr %6, ptr %7, align 4
  %8 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = icmp eq ptr %6, inttoptr (i32 -19 to ptr)
  br i1 %10, label %21, label %11

11:                                               ; preds = %9
  %12 = ptrtoint ptr %6 to i32
  %13 = load ptr, ptr %5, align 8
  %14 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %13, i32 noundef %12, ptr noundef nonnull @.str.2) #6
  br label %69

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.imx_pgc_domain, ptr %4, i32 0, i32 8
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = tail call i32 @regulator_set_voltage(ptr noundef %6, i32 noundef %17, i32 noundef %17) #6
  br label %21

21:                                               ; preds = %19, %15, %9
  %22 = load ptr, ptr %5, align 8
  %23 = getelementptr inbounds %struct.imx_pgc_domain, ptr %4, i32 0, i32 4
  %24 = tail call i32 @devm_clk_bulk_get_all(ptr noundef %22, ptr noundef %23) #6
  %25 = getelementptr inbounds %struct.imx_pgc_domain, ptr %4, i32 0, i32 5
  store i32 %24, ptr %25, align 8
  %26 = icmp slt i32 %24, 0
  %27 = load ptr, ptr %5, align 8
  br i1 %26, label %28, label %30

28:                                               ; preds = %21
  %29 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %27, i32 noundef %24, ptr noundef nonnull @.str.3) #6
  br label %69

30:                                               ; preds = %21
  %31 = tail call ptr @devm_reset_control_array_get(ptr noundef %27, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %32 = getelementptr inbounds %struct.imx_pgc_domain, ptr %4, i32 0, i32 3
  store ptr %31, ptr %32, align 8
  %33 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  %34 = load ptr, ptr %5, align 8
  br i1 %33, label %35, label %38

35:                                               ; preds = %30
  %36 = ptrtoint ptr %31 to i32
  %37 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %34, i32 noundef %36, ptr noundef nonnull @.str.4) #6
  br label %69

38:                                               ; preds = %30
  tail call void @pm_runtime_enable(ptr noundef %34) #6
  %39 = getelementptr inbounds %struct.imx_pgc_domain, ptr %4, i32 0, i32 7, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.imx_pgc_domain, ptr %4, i32 0, i32 1
  %44 = load ptr, ptr %43, align 8
  %45 = tail call i32 @regmap_update_bits_base(ptr noundef %44, i32 noundef 236, i32 noundef %40, i32 noundef %40, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %46

46:                                               ; preds = %42, %38
  %47 = tail call i32 @pm_genpd_init(ptr noundef %4, ptr noundef null, i1 noundef zeroext true) #6
  %48 = icmp eq i32 %47, 0
  %49 = load ptr, ptr %5, align 8
  br i1 %48, label %51, label %50

50:                                               ; preds = %46
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.5) #7
  br label %59

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.device, ptr %49, i32 0, i32 25
  %53 = load ptr, ptr %52, align 8
  %54 = tail call i32 @of_genpd_add_provider_simple(ptr noundef %53, ptr noundef %4) #6
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %69, label %56

56:                                               ; preds = %51
  %57 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.6) #7
  %58 = tail call i32 @pm_genpd_remove(ptr noundef %4) #6
  br label %59

59:                                               ; preds = %56, %50
  %60 = phi i32 [ %47, %50 ], [ %54, %56 ]
  %61 = load i32, ptr %39, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.imx_pgc_domain, ptr %4, i32 0, i32 1
  %65 = load ptr, ptr %64, align 8
  %66 = tail call i32 @regmap_update_bits_base(ptr noundef %65, i32 noundef 236, i32 noundef %61, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %67

67:                                               ; preds = %63, %59
  %68 = load ptr, ptr %5, align 8
  tail call void @__pm_runtime_disable(ptr noundef %68, i1 noundef zeroext true) #6
  br label %69

69:                                               ; preds = %67, %51, %35, %28, %11
  %70 = phi i32 [ %14, %11 ], [ %29, %28 ], [ %37, %35 ], [ %60, %67 ], [ 0, %51 ]
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_pgc_domain_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.imx_pgc_domain, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 25
  %7 = load ptr, ptr %6, align 8
  tail call void @of_genpd_del_provider(ptr noundef %7) #6
  %8 = tail call i32 @pm_genpd_remove(ptr noundef %3) #6
  %9 = getelementptr inbounds %struct.imx_pgc_domain, ptr %3, i32 0, i32 7, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.imx_pgc_domain, ptr %3, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 236, i32 noundef %10, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %16

16:                                               ; preds = %12, %1
  %17 = load ptr, ptr %4, align 8
  tail call void @__pm_runtime_disable(ptr noundef %17, i1 noundef zeroext true) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get_all(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_provider_simple(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_reset_control_array_get(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_genpd_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_pgc_domain_suspend(ptr noundef %0) #2 {
  %2 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #6
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #6, !srcloc !9
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 0, i32 -1, ptr elementtype(i32) %5) #6, !srcloc !10
  %7 = extractvalue { i32, i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !11
  br label %10

10:                                               ; preds = %9, %4, %1
  %11 = phi i32 [ 0, %1 ], [ %2, %4 ], [ %2, %9 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_pgc_domain_resume(ptr noundef %0) #2 {
  %2 = tail call i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef 5) #6
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_gpcv2_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.regmap_config, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call ptr @of_device_get_match_data(ptr noundef %4) #6
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %2) #6
  %6 = getelementptr inbounds %struct.regmap_config, ptr %2, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(172) %2, i8 0, i64 172, i1 false)
  store i32 32, ptr %6, align 4
  %7 = getelementptr inbounds %struct.regmap_config, ptr %2, i32 0, i32 2
  store i32 4, ptr %7, align 4
  %8 = getelementptr inbounds %struct.regmap_config, ptr %2, i32 0, i32 4
  store i32 32, ptr %8, align 4
  %9 = getelementptr inbounds %struct.regmap_config, ptr %2, i32 0, i32 19
  store i32 4096, ptr %9, align 4
  %10 = getelementptr inbounds %struct.regmap_config, ptr %2, i32 0, i32 20
  %11 = getelementptr inbounds %struct.imx_pgc_domain_data, ptr %5, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  store ptr %12, ptr %10, align 4
  %13 = getelementptr inbounds %struct.regmap_config, ptr %2, i32 0, i32 21
  %14 = load ptr, ptr %11, align 4
  store ptr %14, ptr %13, align 4
  %15 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %16 = load ptr, ptr %15, align 8
  %17 = tail call ptr @of_get_child_by_name(ptr noundef %16, ptr noundef nonnull @.str.8) #6
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.9) #7
  br label %74

20:                                               ; preds = %1
  %21 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #6
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = ptrtoint ptr %21 to i32
  br label %74

25:                                               ; preds = %20
  %26 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %4, ptr noundef null, ptr noundef %21, ptr noundef nonnull %2, ptr noundef null, ptr noundef null) #6
  %27 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = ptrtoint ptr %26 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.10, i32 noundef %29) #7
  br label %74

30:                                               ; preds = %25
  %31 = call ptr @of_get_next_child(ptr noundef nonnull %17, ptr noundef null) #6
  %32 = icmp eq ptr %31, null
  br i1 %32, label %74, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.imx_pgc_domain_data, ptr %5, i32 0, i32 1
  br label %35

35:                                               ; preds = %71, %33
  %36 = phi ptr [ %31, %33 ], [ %72, %71 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !12
  %37 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %36) #6
  br i1 %37, label %38, label %71

38:                                               ; preds = %35
  %39 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %36, ptr noundef nonnull @.str.11, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #6
  %40 = icmp sgt i32 %39, -1
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.12) #7
  br label %69

42:                                               ; preds = %38
  %43 = load i32, ptr %3, align 4
  %44 = load i32, ptr %34, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.13, i32 noundef %43) #7
  br label %71

47:                                               ; preds = %42
  %48 = call ptr @platform_device_alloc(ptr noundef nonnull @.str.14, i32 noundef %43) #6
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.15) #7
  br label %69

51:                                               ; preds = %47
  %52 = load ptr, ptr %5, align 4
  %53 = load i32, ptr %3, align 4
  %54 = getelementptr %struct.imx_pgc_domain, ptr %52, i32 %53
  %55 = call i32 @platform_device_add_data(ptr noundef nonnull %48, ptr noundef %54, i32 noundef 856) #6
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %51
  call void @platform_device_put(ptr noundef nonnull %48) #6
  br label %69

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.platform_device, ptr %48, i32 0, i32 3, i32 7
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.imx_pgc_domain, ptr %60, i32 0, i32 1
  store ptr %26, ptr %61, align 8
  %62 = getelementptr inbounds %struct.generic_pm_domain, ptr %60, i32 0, i32 19
  store ptr @imx_pgc_power_up, ptr %62, align 8
  %63 = getelementptr inbounds %struct.generic_pm_domain, ptr %60, i32 0, i32 18
  store ptr @imx_pgc_power_down, ptr %63, align 4
  %64 = getelementptr inbounds %struct.platform_device, ptr %48, i32 0, i32 3, i32 1
  store ptr %4, ptr %64, align 4
  %65 = getelementptr inbounds %struct.platform_device, ptr %48, i32 0, i32 3, i32 25
  store ptr %36, ptr %65, align 8
  %66 = call i32 @platform_device_add(ptr noundef nonnull %48) #6
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %58
  call void @platform_device_put(ptr noundef nonnull %48) #6
  br label %69

69:                                               ; preds = %68, %57, %50, %41
  %70 = phi i32 [ %39, %41 ], [ %55, %57 ], [ %66, %68 ], [ -12, %50 ]
  call void @of_node_put(ptr noundef nonnull %36) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  br label %74

71:                                               ; preds = %58, %46, %35
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %72 = call ptr @of_get_next_child(ptr noundef nonnull %17, ptr noundef nonnull %36) #6
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %35

74:                                               ; preds = %71, %69, %30, %28, %23, %19
  %75 = phi i32 [ %24, %23 ], [ %29, %28 ], [ -22, %19 ], [ %70, %69 ], [ 0, %30 ], [ 0, %71 ]
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %2) #6
  ret i32 %75
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_pgc_power_up(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !12
  %3 = getelementptr inbounds %struct.imx_pgc_domain, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #6
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #6, !srcloc !9
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 0, i32 -1, ptr elementtype(i32) %9) #6, !srcloc !10
  %11 = extractvalue { i32, i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %120, label %13

13:                                               ; preds = %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !11
  br label %120

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.imx_pgc_domain, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @regulator_enable(ptr noundef %16) #6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.16) #7
  br label %116

23:                                               ; preds = %18, %14
  %24 = getelementptr inbounds %struct.imx_pgc_domain, ptr %0, i32 0, i32 5
  %25 = load i32, ptr %24, align 8
  %26 = getelementptr inbounds %struct.imx_pgc_domain, ptr %0, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @clk_bulk_prepare(i32 noundef %25, ptr noundef %27) #6
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = tail call i32 @clk_bulk_enable(i32 noundef %25, ptr noundef %27) #6
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  tail call void @clk_bulk_unprepare(i32 noundef %25, ptr noundef %27) #6
  br label %34

34:                                               ; preds = %33, %23
  %35 = phi i32 [ %31, %33 ], [ %28, %23 ]
  %36 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.17) #7
  br label %110

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.imx_pgc_domain, ptr %0, i32 0, i32 3
  %39 = load ptr, ptr %38, align 8
  %40 = tail call i32 @reset_control_assert(ptr noundef %39) #6
  %41 = getelementptr inbounds %struct.imx_pgc_domain, ptr %0, i32 0, i32 7
  %42 = load i32, ptr %41, align 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %92, label %44

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.imx_pgc_domain, ptr %0, i32 0, i32 1
  %46 = load ptr, ptr %45, align 8
  %47 = tail call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 248, i32 noundef %42, i32 noundef %42, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %48 = tail call i64 @ktime_get() #6
  %49 = add i64 %48, 1000000
  br label %50

50:                                               ; preds = %59, %44
  %51 = load ptr, ptr %45, align 8
  %52 = call i32 @regmap_read(ptr noundef %51, i32 noundef 248, ptr noundef nonnull %2) #6
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %74

54:                                               ; preds = %50
  %55 = load i32, ptr %2, align 4
  %56 = load i32, ptr %41, align 8
  %57 = and i32 %56, %55
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %54
  %60 = call i64 @ktime_get() #6
  %61 = icmp sgt i64 %60, %49
  br i1 %61, label %62, label %50

62:                                               ; preds = %59
  %63 = load ptr, ptr %45, align 8
  %64 = call i32 @regmap_read(ptr noundef %63, i32 noundef 248, ptr noundef nonnull %2) #6
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %62
  %67 = load i32, ptr %2, align 4
  %68 = load i32, ptr %41, align 8
  br label %69

69:                                               ; preds = %66, %54
  %70 = phi i32 [ %68, %66 ], [ %56, %54 ]
  %71 = phi i32 [ %67, %66 ], [ %55, %54 ]
  %72 = and i32 %70, %71
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %69, %62, %50
  %75 = phi i32 [ %64, %62 ], [ -110, %69 ], [ %52, %50 ]
  %76 = load ptr, ptr %3, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.18) #7
  %77 = load i32, ptr %24, align 8
  %78 = load ptr, ptr %26, align 4
  call void @clk_bulk_disable(i32 noundef %77, ptr noundef %78) #6
  call void @clk_bulk_unprepare(i32 noundef %77, ptr noundef %78) #6
  br label %110

79:                                               ; preds = %69
  %80 = getelementptr inbounds %struct.imx_pgc_domain, ptr %0, i32 0, i32 6
  %81 = call i32 @_find_next_bit_le(ptr noundef %80, i32 noundef 32, i32 noundef 0) #6
  %82 = icmp ult i32 %81, 32
  br i1 %82, label %83, label %92

83:                                               ; preds = %83, %79
  %84 = phi i32 [ %90, %83 ], [ %81, %79 ]
  %85 = load ptr, ptr %45, align 8
  %86 = shl nuw nsw i32 %84, 6
  %87 = add nuw nsw i32 %86, 2048
  %88 = call i32 @regmap_update_bits_base(ptr noundef %85, i32 noundef %87, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %89 = add nuw nsw i32 %84, 1
  %90 = call i32 @_find_next_bit_le(ptr noundef %80, i32 noundef 32, i32 noundef %89) #6
  %91 = icmp ult i32 %90, 32
  br i1 %91, label %83, label %92

92:                                               ; preds = %83, %79, %37
  %93 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %93(i32 noundef 1073740) #6
  %94 = load ptr, ptr %38, align 8
  %95 = call i32 @reset_control_deassert(ptr noundef %94) #6
  %96 = getelementptr inbounds %struct.imx_pgc_domain, ptr %0, i32 0, i32 7, i32 2
  %97 = load i32, ptr %96, align 8
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %92
  %100 = getelementptr inbounds %struct.imx_pgc_domain, ptr %0, i32 0, i32 1
  %101 = load ptr, ptr %100, align 8
  %102 = call i32 @regmap_update_bits_base(ptr noundef %101, i32 noundef 508, i32 noundef %97, i32 noundef %97, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %103

103:                                              ; preds = %99, %92
  %104 = getelementptr inbounds %struct.imx_pgc_domain, ptr %0, i32 0, i32 9
  %105 = load i8, ptr %104, align 4, !range !13
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %103
  %108 = load i32, ptr %24, align 8
  %109 = load ptr, ptr %26, align 4
  call void @clk_bulk_disable(i32 noundef %108, ptr noundef %109) #6
  call void @clk_bulk_unprepare(i32 noundef %108, ptr noundef %109) #6
  br label %120

110:                                              ; preds = %74, %34
  %111 = phi i32 [ %35, %34 ], [ %75, %74 ]
  %112 = load ptr, ptr %15, align 4
  %113 = icmp ugt ptr %112, inttoptr (i32 -4096 to ptr)
  br i1 %113, label %116, label %114

114:                                              ; preds = %110
  %115 = call i32 @regulator_disable(ptr noundef %112) #6
  br label %116

116:                                              ; preds = %114, %110, %21
  %117 = phi i32 [ %111, %110 ], [ %111, %114 ], [ %19, %21 ]
  %118 = load ptr, ptr %3, align 8
  %119 = call i32 @__pm_runtime_idle(ptr noundef %118, i32 noundef 5) #6
  br label %120

120:                                              ; preds = %116, %107, %103, %13, %7
  %121 = phi i32 [ %117, %116 ], [ 0, %107 ], [ 0, %103 ], [ %5, %7 ], [ %5, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %121
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_pgc_power_down(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !12
  %3 = getelementptr inbounds %struct.imx_pgc_domain, ptr %0, i32 0, i32 9
  %4 = load i8, ptr %3, align 4, !range !13
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %21

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.imx_pgc_domain, ptr %0, i32 0, i32 5
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.imx_pgc_domain, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @clk_bulk_prepare(i32 noundef %8, ptr noundef %10) #6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %6
  %14 = tail call i32 @clk_bulk_enable(i32 noundef %8, ptr noundef %10) #6
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  tail call void @clk_bulk_unprepare(i32 noundef %8, ptr noundef %10) #6
  br label %17

17:                                               ; preds = %16, %6
  %18 = phi i32 [ %14, %16 ], [ %11, %6 ]
  %19 = getelementptr inbounds %struct.imx_pgc_domain, ptr %0, i32 0, i32 10
  %20 = load ptr, ptr %19, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.17) #7
  br label %130

21:                                               ; preds = %13, %1
  %22 = getelementptr inbounds %struct.imx_pgc_domain, ptr %0, i32 0, i32 7
  %23 = getelementptr inbounds %struct.imx_pgc_domain, ptr %0, i32 0, i32 7, i32 2
  %24 = load i32, ptr %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %54, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.imx_pgc_domain, ptr %0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8
  %29 = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 508, i32 noundef %24, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %30 = tail call i64 @ktime_get() #6
  %31 = add i64 %30, 1000000
  %32 = getelementptr inbounds %struct.imx_pgc_domain, ptr %0, i32 0, i32 7, i32 3
  br label %33

33:                                               ; preds = %42, %26
  %34 = load ptr, ptr %27, align 8
  %35 = call i32 @regmap_read(ptr noundef %34, i32 noundef 508, ptr noundef nonnull %2) #6
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %118

37:                                               ; preds = %33
  %38 = load i32, ptr %2, align 4
  %39 = load i32, ptr %32, align 4
  %40 = and i32 %39, %38
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %54, label %42

42:                                               ; preds = %37
  %43 = call i64 @ktime_get() #6
  %44 = icmp sgt i64 %43, %31
  br i1 %44, label %45, label %33

45:                                               ; preds = %42
  %46 = load ptr, ptr %27, align 8
  %47 = call i32 @regmap_read(ptr noundef %46, i32 noundef 508, ptr noundef nonnull %2) #6
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %118

49:                                               ; preds = %45
  %50 = load i32, ptr %2, align 4
  %51 = load i32, ptr %32, align 4
  %52 = and i32 %51, %50
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %118

54:                                               ; preds = %49, %37, %21
  %55 = load i32, ptr %22, align 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %100, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.imx_pgc_domain, ptr %0, i32 0, i32 6
  %59 = call i32 @_find_next_bit_le(ptr noundef %58, i32 noundef 32, i32 noundef 0) #6
  %60 = icmp ult i32 %59, 32
  br i1 %60, label %61, label %72

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.imx_pgc_domain, ptr %0, i32 0, i32 1
  br label %63

63:                                               ; preds = %63, %61
  %64 = phi i32 [ %59, %61 ], [ %70, %63 ]
  %65 = load ptr, ptr %62, align 8
  %66 = shl nuw nsw i32 %64, 6
  %67 = add nuw nsw i32 %66, 2048
  %68 = call i32 @regmap_update_bits_base(ptr noundef %65, i32 noundef %67, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %69 = add nuw nsw i32 %64, 1
  %70 = call i32 @_find_next_bit_le(ptr noundef %58, i32 noundef 32, i32 noundef %69) #6
  %71 = icmp ult i32 %70, 32
  br i1 %71, label %63, label %72

72:                                               ; preds = %63, %57
  %73 = getelementptr inbounds %struct.imx_pgc_domain, ptr %0, i32 0, i32 1
  %74 = load ptr, ptr %73, align 8
  %75 = load i32, ptr %22, align 8
  %76 = call i32 @regmap_update_bits_base(ptr noundef %74, i32 noundef 260, i32 noundef %75, i32 noundef %75, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %77 = call i64 @ktime_get() #6
  %78 = add i64 %77, 1000000
  br label %79

79:                                               ; preds = %88, %72
  %80 = load ptr, ptr %73, align 8
  %81 = call i32 @regmap_read(ptr noundef %80, i32 noundef 260, ptr noundef nonnull %2) #6
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %118

83:                                               ; preds = %79
  %84 = load i32, ptr %2, align 4
  %85 = load i32, ptr %22, align 8
  %86 = and i32 %85, %84
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %100, label %88

88:                                               ; preds = %83
  %89 = call i64 @ktime_get() #6
  %90 = icmp sgt i64 %89, %78
  br i1 %90, label %91, label %79

91:                                               ; preds = %88
  %92 = load ptr, ptr %73, align 8
  %93 = call i32 @regmap_read(ptr noundef %92, i32 noundef 260, ptr noundef nonnull %2) #6
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %118

95:                                               ; preds = %91
  %96 = load i32, ptr %2, align 4
  %97 = load i32, ptr %22, align 8
  %98 = and i32 %97, %96
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %118

100:                                              ; preds = %95, %83, %54
  %101 = getelementptr inbounds %struct.imx_pgc_domain, ptr %0, i32 0, i32 5
  %102 = load i32, ptr %101, align 8
  %103 = getelementptr inbounds %struct.imx_pgc_domain, ptr %0, i32 0, i32 4
  %104 = load ptr, ptr %103, align 4
  call void @clk_bulk_disable(i32 noundef %102, ptr noundef %104) #6
  call void @clk_bulk_unprepare(i32 noundef %102, ptr noundef %104) #6
  %105 = getelementptr inbounds %struct.imx_pgc_domain, ptr %0, i32 0, i32 2
  %106 = load ptr, ptr %105, align 4
  %107 = icmp ugt ptr %106, inttoptr (i32 -4096 to ptr)
  br i1 %107, label %114, label %108

108:                                              ; preds = %100
  %109 = call i32 @regulator_disable(ptr noundef %106) #6
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.imx_pgc_domain, ptr %0, i32 0, i32 10
  %113 = load ptr, ptr %112, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.20) #7
  br label %130

114:                                              ; preds = %108, %100
  %115 = getelementptr inbounds %struct.imx_pgc_domain, ptr %0, i32 0, i32 10
  %116 = load ptr, ptr %115, align 8
  %117 = call i32 @__pm_runtime_suspend(ptr noundef %116, i32 noundef 4) #6
  br label %130

118:                                              ; preds = %95, %91, %79, %49, %45, %33
  %119 = phi ptr [ @.str.19, %49 ], [ @.str.19, %45 ], [ @.str.18, %95 ], [ @.str.18, %91 ], [ @.str.18, %79 ], [ @.str.19, %33 ]
  %120 = phi i32 [ -110, %49 ], [ %47, %45 ], [ -110, %95 ], [ %93, %91 ], [ %81, %79 ], [ %35, %33 ]
  %121 = getelementptr inbounds %struct.imx_pgc_domain, ptr %0, i32 0, i32 10
  %122 = load ptr, ptr %121, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %122, ptr noundef nonnull %119) #7
  %123 = load i8, ptr %3, align 4, !range !13
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %118
  %126 = getelementptr inbounds %struct.imx_pgc_domain, ptr %0, i32 0, i32 5
  %127 = load i32, ptr %126, align 8
  %128 = getelementptr inbounds %struct.imx_pgc_domain, ptr %0, i32 0, i32 4
  %129 = load ptr, ptr %128, align 4
  call void @clk_bulk_disable(i32 noundef %127, ptr noundef %129) #6
  call void @clk_bulk_unprepare(i32 noundef %127, ptr noundef %129) #6
  br label %130

130:                                              ; preds = %125, %118, %114, %111, %17
  %131 = phi i32 [ 0, %114 ], [ %109, %111 ], [ %18, %17 ], [ %120, %125 ], [ %120, %118 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %131
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{i64 2147969886}
!9 = !{i64 468196, i64 2147958167, i64 2147958193, i64 2147958240, i64 2147958262, i64 2147958290, i64 2147958310}
!10 = !{i64 454765, i64 454790, i64 454812, i64 454828, i64 454840, i64 454860, i64 454884, i64 454900, i64 454912}
!11 = !{i64 2147970012}
!12 = !{!"auto-init"}
!13 = !{i8 0, i8 2}
