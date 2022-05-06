; ModuleID = '/llk/IR/drivers/soc/mediatek/mtk-pm-domains.c_pt.bc'
source_filename = "../drivers/soc/mediatek/mtk-pm-domains.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.scpsys_soc_data = type { ptr, i32, i32, i32 }
%struct.scpsys_domain_data = type { ptr, i32, i32, i32, i32, i8, [5 x %struct.scpsys_bus_prot_data], [5 x %struct.scpsys_bus_prot_data] }
%struct.scpsys_bus_prot_data = type { i32, i32, i32, i32, i8, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.scpsys = type { ptr, ptr, ptr, %struct.genpd_onecell_data, [0 x ptr] }
%struct.genpd_onecell_data = type { ptr, i32, ptr }
%struct.scpsys_domain = type { %struct.generic_pm_domain, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, [1 x %struct.cpumask], ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.71 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.71 = type { %struct.mutex }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.clk_bulk_data = type { ptr, ptr }

@__initcall__kmod_mtk_pm_domains__247_654_scpsys_pm_domain_driver_init6 = internal global ptr @scpsys_pm_domain_driver_init, section ".initcall6.init", align 4
@scpsys_pm_domain_driver = internal global %struct.platform_driver { ptr @scpsys_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @scpsys_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [21 x i8] c"mtk-power-controller\00", align 1
@scpsys_of_match = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8167-power-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8167_scpsys_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-power-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8173_scpsys_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183-power-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8183_scpsys_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8192-power-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8192_scpsys_data }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"no power controller data\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"no parent for syscon devices\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"no regmap available\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"failed to add provider: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"%pOF: failed to retrieve domain id from reg: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"%pOF: invalid domain id %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"%pOF: undefined domain id %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"domain\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"%pOF: failed to get power supply.\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"mediatek,infracfg\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"mediatek,smi\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"clock-names\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"%pOF: failed to get clk at index %d: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"%pOF: A default off power domain has been ON\0A\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"%pOF: failed to power on domain: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [64 x i8] c"power domain with id %d already exists, check your device-tree\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.18 = private unnamed_addr constant [38 x i8] c"%pOF: failed to get parent domain id\0A\00", align 1
@.str.19 = private unnamed_addr constant [40 x i8] c"power domain with id %d does not exist\0A\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"%pOF: failed to get child domain id\0A\00", align 1
@.str.21 = private unnamed_addr constant [41 x i8] c"failed to add %s subdomain to parent %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [63 x i8] c"failed to remove domain '%s' : %d - state may be inconsistent\0A\00", align 1
@mt8167_scpsys_data = internal constant %struct.scpsys_soc_data { ptr @scpsys_domain_data_mt8167, i32 7, i32 1548, i32 1552 }, align 4
@mt8173_scpsys_data = internal constant %struct.scpsys_soc_data { ptr @scpsys_domain_data_mt8173, i32 10, i32 1548, i32 1552 }, align 4
@mt8183_scpsys_data = internal constant %struct.scpsys_soc_data { ptr @scpsys_domain_data_mt8183, i32 15, i32 384, i32 388 }, align 4
@mt8192_scpsys_data = internal constant %struct.scpsys_soc_data { ptr @scpsys_domain_data_mt8192, i32 21, i32 364, i32 368 }, align 4
@scpsys_domain_data_mt8167 = internal constant [7 x %struct.scpsys_domain_data] [%struct.scpsys_domain_data { ptr @.str.23, i32 8, i32 572, i32 3840, i32 4096, i8 1, [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 2050, i32 544, i32 544, i32 552, i8 1, i8 0 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer], [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.24, i32 128, i32 528, i32 256, i32 4096, i8 1, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.25, i32 32, i32 568, i32 3840, i32 12288, i8 1, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.26, i32 2, i32 640, i32 256, i32 0, i8 1, [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 784, i32 544, i32 544, i32 552, i8 1, i8 0 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer], [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.27, i32 33554432, i32 708, i32 0, i32 0, i8 0, [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 36, i32 544, i32 544, i32 552, i8 1, i8 0 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer], [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.28, i32 16777216, i32 704, i32 3840, i32 61440, i8 0, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.29, i32 16, i32 532, i32 3840, i32 61440, i8 0, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }], align 4
@.str.23 = private unnamed_addr constant [3 x i8] c"mm\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"vdec\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"isp\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"conn\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"mfg_async\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"mfg_2d\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"mfg\00", align 1
@scpsys_domain_data_mt8173 = internal constant [10 x %struct.scpsys_domain_data] [%struct.scpsys_domain_data { ptr @.str.24, i32 128, i32 528, i32 3840, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.30, i32 2097152, i32 560, i32 3840, i32 61440, i8 0, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.25, i32 32, i32 568, i32 3840, i32 12288, i8 0, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.23, i32 8, i32 572, i32 3840, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 6, i32 544, i32 544, i32 552, i8 1, i8 0 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer], [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.31, i32 1048576, i32 664, i32 3840, i32 61440, i8 0, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.32, i32 16777216, i32 668, i32 3840, i32 61440, i8 0, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.33, i32 33554432, i32 716, i32 3840, i32 61440, i8 1, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.27, i32 8388608, i32 708, i32 3840, i32 0, i8 16, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.28, i32 4194304, i32 704, i32 3840, i32 12288, i8 0, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.29, i32 16, i32 532, i32 16128, i32 4128768, i8 0, [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 14696448, i32 544, i32 544, i32 552, i8 1, i8 0 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer], [5 x %struct.scpsys_bus_prot_data] zeroinitializer }], align 4
@.str.30 = private unnamed_addr constant [5 x i8] c"venc\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"venc_lt\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"audio\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@scpsys_domain_data_mt8183 = internal constant [15 x %struct.scpsys_domain_data] [%struct.scpsys_domain_data { ptr @.str.32, i32 16777216, i32 788, i32 3840, i32 61440, i8 0, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.26, i32 2, i32 812, i32 0, i32 0, i8 0, [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 24576, i32 672, i32 676, i32 552, i8 0, i8 0 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer], [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.27, i32 8388608, i32 820, i32 0, i32 0, i8 0, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.29, i32 16, i32 824, i32 256, i32 4096, i8 16, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.34, i32 128, i32 844, i32 256, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.35, i32 1048576, i32 784, i32 256, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.28, i32 4194304, i32 840, i32 256, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 3670016, i32 680, i32 684, i32 600, i8 0, i8 0 }, %struct.scpsys_bus_prot_data { i32 6291456, i32 672, i32 676, i32 552, i8 0, i8 0 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer], [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.36, i32 8, i32 780, i32 256, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 196608, i32 680, i32 684, i32 600, i8 0, i8 0 }, %struct.scpsys_bus_prot_data { i32 3072, i32 672, i32 676, i32 552, i8 0, i8 0 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer], [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 255, i32 964, i32 968, i32 960, i8 0, i8 0 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer] }, %struct.scpsys_domain_data { ptr @.str.37, i32 33554432, i32 836, i32 768, i32 12288, i8 0, [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 8752, i32 724, i32 728, i32 748, i8 0, i8 0 }, %struct.scpsys_bus_prot_data { i32 268435456, i32 672, i32 676, i32 552, i8 0, i8 0 }, %struct.scpsys_bus_prot_data { i32 2048, i32 724, i32 728, i32 748, i8 0, i8 1 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer], [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 24, i32 964, i32 968, i32 960, i8 0, i8 0 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer] }, %struct.scpsys_domain_data { ptr @.str.25, i32 32, i32 776, i32 768, i32 12288, i8 0, [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 264, i32 724, i32 728, i32 748, i8 0, i8 0 }, %struct.scpsys_bus_prot_data { i32 1024, i32 724, i32 728, i32 748, i8 0, i8 1 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer], [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 4, i32 964, i32 968, i32 960, i8 0, i8 0 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer] }, %struct.scpsys_domain_data { ptr @.str.24, i32 -2147483648, i32 768, i32 256, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 128, i32 964, i32 968, i32 960, i8 0, i8 0 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer] }, %struct.scpsys_domain_data { ptr @.str.30, i32 2097152, i32 772, i32 3840, i32 61440, i8 0, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 2, i32 964, i32 968, i32 960, i8 0, i8 0 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer] }, %struct.scpsys_domain_data { ptr @.str.38, i32 67108864, i32 804, i32 256, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 5056, i32 724, i32 728, i32 748, i8 0, i8 0 }, %struct.scpsys_bus_prot_data { i32 134217728, i32 672, i32 676, i32 552, i8 0, i8 0 }, %struct.scpsys_bus_prot_data { i32 3072, i32 724, i32 728, i32 748, i8 0, i8 0 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer], [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 96, i32 964, i32 968, i32 960, i8 0, i8 0 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer] }, %struct.scpsys_domain_data { ptr @.str.39, i32 134217728, i32 828, i32 3840, i32 12288, i8 4, [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 64, i32 708, i32 712, i32 740, i8 0, i8 0 }, %struct.scpsys_bus_prot_data { i32 21, i32 708, i32 712, i32 740, i8 0, i8 0 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer], [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.40, i32 268435456, i32 832, i32 3840, i32 12288, i8 4, [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 128, i32 708, i32 712, i32 740, i8 0, i8 0 }, %struct.scpsys_bus_prot_data { i32 42, i32 708, i32 712, i32 740, i8 0, i8 0 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer], [5 x %struct.scpsys_bus_prot_data] zeroinitializer }], align 4
@.str.34 = private unnamed_addr constant [10 x i8] c"mfg_core0\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"mfg_core1\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"disp\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"cam\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"vpu_top\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"vpu_core0\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"vpu_core1\00", align 1
@scpsys_domain_data_mt8192 = internal constant [21 x %struct.scpsys_domain_data] [%struct.scpsys_domain_data { ptr @.str.32, i32 2097152, i32 852, i32 256, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 16, i32 1812, i32 1816, i32 1828, i8 0, i8 0 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer], [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.26, i32 2, i32 772, i32 0, i32 0, i8 8, [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 270336, i32 672, i32 676, i32 552, i8 0, i8 0 }, %struct.scpsys_bus_prot_data { i32 16384, i32 672, i32 676, i32 552, i8 0, i8 0 }, %struct.scpsys_bus_prot_data { i32 1024, i32 680, i32 684, i32 600, i8 0, i8 0 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer], [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.41, i32 4, i32 776, i32 256, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.42, i32 8, i32 780, i32 256, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 2097152, i32 680, i32 684, i32 600, i8 0, i8 0 }, %struct.scpsys_bus_prot_data { i32 96, i32 1812, i32 1816, i32 1828, i8 0, i8 0 }, %struct.scpsys_bus_prot_data { i32 6291456, i32 672, i32 676, i32 552, i8 0, i8 0 }, %struct.scpsys_bus_prot_data { i32 128, i32 1812, i32 1816, i32 1828, i8 0, i8 0 }, %struct.scpsys_bus_prot_data zeroinitializer], [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.43, i32 16, i32 784, i32 256, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.44, i32 32, i32 788, i32 256, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.45, i32 64, i32 792, i32 256, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.46, i32 128, i32 796, i32 256, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.47, i32 256, i32 800, i32 256, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.36, i32 1048576, i32 848, i32 256, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 83973125, i32 724, i32 728, i32 748, i8 0, i8 1 }, %struct.scpsys_bus_prot_data { i32 4352, i32 3532, i32 3536, i32 3544, i8 0, i8 1 }, %struct.scpsys_bus_prot_data { i32 8388672, i32 672, i32 676, i32 552, i8 0, i8 0 }, %struct.scpsys_bus_prot_data { i32 167936010, i32 724, i32 728, i32 748, i8 0, i8 0 }, %struct.scpsys_bus_prot_data { i32 8704, i32 3532, i32 3536, i32 3544, i8 0, i8 0 }], [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.48, i32 16384, i32 824, i32 256, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 65536, i32 724, i32 728, i32 748, i8 0, i8 0 }, %struct.scpsys_bus_prot_data { i32 131072, i32 724, i32 728, i32 748, i8 0, i8 0 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer], [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.25, i32 4096, i32 816, i32 256, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 256, i32 3532, i32 3536, i32 3544, i8 0, i8 0 }, %struct.scpsys_bus_prot_data { i32 512, i32 3532, i32 3536, i32 3544, i8 0, i8 0 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer], [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.49, i32 8192, i32 820, i32 256, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 16384, i32 724, i32 728, i32 748, i8 0, i8 0 }, %struct.scpsys_bus_prot_data { i32 32768, i32 724, i32 728, i32 748, i8 0, i8 0 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer], [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.50, i32 524288, i32 844, i32 256, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 4096, i32 3532, i32 3536, i32 3544, i8 0, i8 0 }, %struct.scpsys_bus_prot_data { i32 8192, i32 3532, i32 3536, i32 3544, i8 0, i8 0 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer], [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.30, i32 131072, i32 836, i32 256, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 67108864, i32 724, i32 728, i32 748, i8 0, i8 0 }, %struct.scpsys_bus_prot_data { i32 134217728, i32 724, i32 728, i32 748, i8 0, i8 0 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer], [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.24, i32 32768, i32 828, i32 256, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 16777216, i32 724, i32 728, i32 748, i8 0, i8 0 }, %struct.scpsys_bus_prot_data { i32 33554432, i32 724, i32 728, i32 748, i8 0, i8 0 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer], [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.51, i32 65536, i32 832, i32 256, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.37, i32 8388608, i32 860, i32 256, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 1, i32 1812, i32 1816, i32 1828, i8 0, i8 0 }, %struct.scpsys_bus_prot_data { i32 5, i32 724, i32 728, i32 748, i8 0, i8 0 }, %struct.scpsys_bus_prot_data { i32 4194304, i32 680, i32 684, i32 600, i8 0, i8 0 }, %struct.scpsys_bus_prot_data { i32 10, i32 724, i32 728, i32 748, i8 0, i8 0 }, %struct.scpsys_bus_prot_data { i32 2097152, i32 2948, i32 2952, i32 2960, i8 0, i8 0 }], [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.52, i32 16777216, i32 864, i32 256, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.53, i32 33554432, i32 868, i32 256, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.54, i32 67108864, i32 872, i32 256, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }], align 4
@.str.41 = private unnamed_addr constant [5 x i8] c"mfg0\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"mfg1\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"mfg2\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"mfg3\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"mfg4\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"mfg5\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"mfg6\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"ipe\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"isp2\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"mdp\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"vdec2\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"cam_rawa\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"cam_rawb\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"cam_rawc\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_mtk_pm_domains__247_654_scpsys_pm_domain_driver_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @scpsys_pm_domain_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @scpsys_pm_domain_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scpsys_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @of_device_get_match_data(ptr noundef %4) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1) #9
  br label %123

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.scpsys_soc_data, ptr %7, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %12, i32 4) #8
  %14 = extractvalue { i32, i1 } %13, 1
  %15 = extractvalue { i32, i1 } %13, 0
  %16 = tail call i32 @llvm.uadd.sat.i32(i32 %15, i32 24) #8
  %17 = select i1 %14, i32 -1, i32 %16
  %18 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef %17, i32 noundef 3520) #8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %123, label %20

20:                                               ; preds = %10
  store ptr %4, ptr %18, align 4
  %21 = getelementptr inbounds %struct.scpsys, ptr %18, i32 0, i32 2
  store ptr %7, ptr %21, align 4
  %22 = getelementptr inbounds %struct.scpsys, ptr %18, i32 0, i32 4
  %23 = getelementptr inbounds %struct.scpsys, ptr %18, i32 0, i32 3
  store ptr %22, ptr %23, align 4
  %24 = load i32, ptr %11, align 4
  %25 = getelementptr inbounds %struct.scpsys, ptr %18, i32 0, i32 3, i32 1
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2) #9
  br label %123

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 25
  %32 = load ptr, ptr %31, align 8
  %33 = tail call ptr @syscon_node_to_regmap(ptr noundef %32) #8
  %34 = getelementptr inbounds %struct.scpsys, ptr %18, i32 0, i32 1
  store ptr %33, ptr %34, align 4
  %35 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3) #9
  %37 = load ptr, ptr %34, align 4
  %38 = ptrtoint ptr %37 to i32
  br label %123

39:                                               ; preds = %30
  %40 = tail call ptr @of_get_next_available_child(ptr noundef %6, ptr noundef null) #8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %123, label %42

42:                                               ; preds = %52, %39
  %43 = phi ptr [ %53, %52 ], [ %40, %39 ]
  %44 = tail call fastcc ptr @scpsys_add_one_domain(ptr noundef nonnull %18, ptr noundef nonnull %43)
  %45 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = ptrtoint ptr %44 to i32
  tail call void @of_node_put(ptr noundef nonnull %43) #8
  br label %60

48:                                               ; preds = %42
  %49 = tail call fastcc i32 @scpsys_add_subdomain(ptr noundef nonnull %18, ptr noundef nonnull %43)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  tail call void @of_node_put(ptr noundef nonnull %43) #8
  br label %60

52:                                               ; preds = %48
  %53 = tail call ptr @of_get_next_available_child(ptr noundef %6, ptr noundef nonnull %43) #8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %42

55:                                               ; preds = %52
  br i1 %41, label %123, label %56

56:                                               ; preds = %55
  %57 = tail call i32 @of_genpd_add_provider_onecell(ptr noundef %6, ptr noundef %23) #8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %123, label %59

59:                                               ; preds = %56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.4, i32 noundef %57) #9
  br label %60

60:                                               ; preds = %59, %51, %46
  %61 = phi i32 [ %57, %59 ], [ %49, %51 ], [ %47, %46 ]
  %62 = load i32, ptr %25, align 4
  %63 = add i32 %62, -1
  %64 = icmp sgt i32 %63, -1
  br i1 %64, label %65, label %123

65:                                               ; preds = %120, %60
  %66 = phi i32 [ %121, %120 ], [ %63, %60 ]
  %67 = load ptr, ptr %23, align 4
  %68 = getelementptr ptr, ptr %67, i32 %66
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %120, label %71

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.scpsys_domain, ptr %69, i32 0, i32 2
  %73 = load ptr, ptr %72, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %74 = getelementptr inbounds %struct.scpsys, ptr %73, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.scpsys, ptr %73, i32 0, i32 2
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.scpsys_soc_data, ptr %77, i32 0, i32 2
  %79 = load i32, ptr %78, align 4
  %80 = call i32 @regmap_read(ptr noundef %75, i32 noundef %79, ptr noundef nonnull %2) #8
  %81 = getelementptr inbounds %struct.scpsys_domain, ptr %69, i32 0, i32 1
  %82 = load ptr, ptr %81, align 8
  %83 = getelementptr inbounds %struct.scpsys_domain_data, ptr %82, i32 0, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = load i32, ptr %2, align 4
  %86 = and i32 %85, %84
  store i32 %86, ptr %2, align 4
  %87 = load ptr, ptr %74, align 4
  %88 = load ptr, ptr %76, align 4
  %89 = getelementptr inbounds %struct.scpsys_soc_data, ptr %88, i32 0, i32 3
  %90 = load i32, ptr %89, align 4
  %91 = call i32 @regmap_read(ptr noundef %87, i32 noundef %90, ptr noundef nonnull %3) #8
  %92 = load ptr, ptr %81, align 8
  %93 = getelementptr inbounds %struct.scpsys_domain_data, ptr %92, i32 0, i32 1
  %94 = load i32, ptr %93, align 4
  %95 = load i32, ptr %3, align 4
  %96 = and i32 %95, %94
  %97 = load i32, ptr %2, align 4
  %98 = icmp ne i32 %97, 0
  %99 = icmp ne i32 %96, 0
  %100 = select i1 %98, i1 %99, i1 false
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br i1 %100, label %101, label %103

101:                                              ; preds = %71
  %102 = call i32 @scpsys_power_off(ptr noundef nonnull %69) #8
  br label %103

103:                                              ; preds = %101, %71
  %104 = call i32 @pm_genpd_remove(ptr noundef nonnull %69) #8
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load ptr, ptr %72, align 4
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.generic_pm_domain, ptr %69, i32 0, i32 10
  %110 = load ptr, ptr %109, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %108, ptr noundef nonnull @.str.22, ptr noundef %110, i32 noundef %104) #9
  br label %111

111:                                              ; preds = %106, %103
  %112 = getelementptr inbounds %struct.scpsys_domain, ptr %69, i32 0, i32 3
  %113 = load i32, ptr %112, align 8
  %114 = getelementptr inbounds %struct.scpsys_domain, ptr %69, i32 0, i32 4
  %115 = load ptr, ptr %114, align 4
  call void @clk_bulk_put(i32 noundef %113, ptr noundef %115) #8
  %116 = getelementptr inbounds %struct.scpsys_domain, ptr %69, i32 0, i32 5
  %117 = load i32, ptr %116, align 8
  %118 = getelementptr inbounds %struct.scpsys_domain, ptr %69, i32 0, i32 6
  %119 = load ptr, ptr %118, align 4
  call void @clk_bulk_put(i32 noundef %117, ptr noundef %119) #8
  br label %120

120:                                              ; preds = %111, %65
  %121 = add i32 %66, -1
  %122 = icmp sgt i32 %121, -1
  br i1 %122, label %65, label %123

123:                                              ; preds = %120, %60, %56, %55, %39, %36, %29, %10, %9
  %124 = phi i32 [ %38, %36 ], [ -19, %29 ], [ -22, %9 ], [ -12, %10 ], [ 0, %55 ], [ 0, %56 ], [ %61, %60 ], [ -19, %39 ], [ %61, %120 ]
  ret i32 %124
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @scpsys_add_one_domain(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = alloca i32, align 4
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 25
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  %8 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #8
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.6, ptr noundef %1, i32 noundef %8) #9
  br label %211

12:                                               ; preds = %2
  %13 = load i32, ptr %4, align 4
  %14 = getelementptr inbounds %struct.scpsys, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.scpsys_soc_data, ptr %15, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp ult i32 %13, %17
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  %20 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.7, ptr noundef %1, i32 noundef %13) #9
  br label %211

21:                                               ; preds = %12
  %22 = load ptr, ptr %15, align 4
  %23 = getelementptr %struct.scpsys_domain_data, ptr %22, i32 %13
  %24 = getelementptr %struct.scpsys_domain_data, ptr %22, i32 %13, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  %27 = load ptr, ptr %0, align 4
  br i1 %26, label %28, label %29

28:                                               ; preds = %21
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.8, ptr noundef %1, i32 noundef %13) #9
  br label %211

29:                                               ; preds = %21
  %30 = call noalias ptr @devm_kmalloc(ptr noundef %27, i32 noundef 840, i32 noundef 3520) #8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %211, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.scpsys_domain, ptr %30, i32 0, i32 1
  store ptr %23, ptr %33, align 8
  %34 = getelementptr inbounds %struct.scpsys_domain, ptr %30, i32 0, i32 2
  store ptr %0, ptr %34, align 4
  %35 = getelementptr %struct.scpsys_domain_data, ptr %22, i32 %13, i32 5
  %36 = load i8, ptr %35, align 4
  %37 = and i8 %36, 16
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %32
  %40 = load ptr, ptr %0, align 4
  %41 = getelementptr inbounds %struct.device, ptr %40, i32 0, i32 25
  store ptr %1, ptr %41, align 8
  %42 = load ptr, ptr %0, align 4
  %43 = call ptr @devm_regulator_get(ptr noundef %42, ptr noundef nonnull @.str.9) #8
  %44 = getelementptr inbounds %struct.scpsys_domain, ptr %30, i32 0, i32 9
  store ptr %43, ptr %44, align 8
  %45 = load ptr, ptr %0, align 4
  %46 = getelementptr inbounds %struct.device, ptr %45, i32 0, i32 25
  store ptr %7, ptr %46, align 8
  %47 = load ptr, ptr %44, align 8
  %48 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %49, label %54

49:                                               ; preds = %39
  %50 = load ptr, ptr %0, align 4
  %51 = ptrtoint ptr %47 to i32
  %52 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %50, i32 noundef %51, ptr noundef nonnull @.str.10, ptr noundef %1) #8
  %53 = load ptr, ptr %44, align 8
  br label %211

54:                                               ; preds = %39, %32
  %55 = call ptr @syscon_regmap_lookup_by_phandle_optional(ptr noundef %1, ptr noundef nonnull @.str.11) #8
  %56 = getelementptr inbounds %struct.scpsys_domain, ptr %30, i32 0, i32 7
  store ptr %55, ptr %56, align 8
  %57 = icmp ugt ptr %55, inttoptr (i32 -4096 to ptr)
  br i1 %57, label %211, label %58

58:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #8, !annotation !8
  %59 = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.12, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #8
  %60 = icmp ne i32 %59, 0
  %61 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #8
  %62 = icmp eq ptr %61, null
  %63 = select i1 %60, i1 true, i1 %62
  br i1 %63, label %69, label %64

64:                                               ; preds = %58
  %65 = call ptr @device_node_to_regmap(ptr noundef nonnull %61) #8
  %66 = getelementptr inbounds %struct.scpsys_domain, ptr %30, i32 0, i32 8
  store ptr %65, ptr %66, align 4
  call void @of_node_put(ptr noundef nonnull %61) #8
  %67 = load ptr, ptr %66, align 4
  %68 = icmp ugt ptr %67, inttoptr (i32 -4096 to ptr)
  br i1 %68, label %211, label %69

69:                                               ; preds = %64, %58
  %70 = call i32 @of_clk_get_parent_count(ptr noundef %1) #8
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %114

72:                                               ; preds = %69
  %73 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.13, ptr noundef null) #8
  %74 = call ptr @of_prop_next_string(ptr noundef %73, ptr noundef null) #8
  %75 = icmp eq ptr %74, null
  br i1 %75, label %88, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.scpsys_domain, ptr %30, i32 0, i32 5
  %78 = getelementptr inbounds %struct.scpsys_domain, ptr %30, i32 0, i32 3
  br label %79

79:                                               ; preds = %79, %76
  %80 = phi ptr [ %74, %76 ], [ %86, %79 ]
  %81 = call ptr @strchr(ptr noundef nonnull %80, i32 noundef 45)
  %82 = icmp eq ptr %81, null
  %83 = select i1 %82, ptr %78, ptr %77
  %84 = load i32, ptr %83, align 8
  %85 = add i32 %84, 1
  store i32 %85, ptr %83, align 8
  %86 = call ptr @of_prop_next_string(ptr noundef %73, ptr noundef nonnull %80) #8
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %79

88:                                               ; preds = %79, %72
  %89 = getelementptr inbounds %struct.scpsys_domain, ptr %30, i32 0, i32 3
  %90 = load i32, ptr %89, align 8
  %91 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %90, i32 8) #8
  %92 = extractvalue { i32, i1 } %91, 1
  br i1 %92, label %93, label %95, !prof !9

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.scpsys_domain, ptr %30, i32 0, i32 4
  store ptr null, ptr %94, align 4
  br label %211

95:                                               ; preds = %88
  %96 = load ptr, ptr %0, align 4
  %97 = extractvalue { i32, i1 } %91, 0
  %98 = call noalias ptr @devm_kmalloc(ptr noundef %96, i32 noundef %97, i32 noundef 3520) #8
  %99 = getelementptr inbounds %struct.scpsys_domain, ptr %30, i32 0, i32 4
  store ptr %98, ptr %99, align 4
  %100 = icmp eq ptr %98, null
  br i1 %100, label %211, label %101

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.scpsys_domain, ptr %30, i32 0, i32 5
  %103 = load i32, ptr %102, align 8
  %104 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %103, i32 8) #8
  %105 = extractvalue { i32, i1 } %104, 1
  br i1 %105, label %106, label %108, !prof !9

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.scpsys_domain, ptr %30, i32 0, i32 6
  store ptr null, ptr %107, align 4
  br label %211

108:                                              ; preds = %101
  %109 = load ptr, ptr %0, align 4
  %110 = extractvalue { i32, i1 } %104, 0
  %111 = call noalias ptr @devm_kmalloc(ptr noundef %109, i32 noundef %110, i32 noundef 3520) #8
  %112 = getelementptr inbounds %struct.scpsys_domain, ptr %30, i32 0, i32 6
  store ptr %111, ptr %112, align 4
  %113 = icmp eq ptr %111, null
  br i1 %113, label %211, label %114

114:                                              ; preds = %108, %69
  %115 = getelementptr inbounds %struct.scpsys_domain, ptr %30, i32 0, i32 3
  %116 = load i32, ptr %115, align 8
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.scpsys_domain, ptr %30, i32 0, i32 4
  br label %127

120:                                              ; preds = %135, %114
  %121 = phi i32 [ 0, %114 ], [ %137, %135 ]
  %122 = getelementptr inbounds %struct.scpsys_domain, ptr %30, i32 0, i32 5
  %123 = load i32, ptr %122, align 8
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %156

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.scpsys_domain, ptr %30, i32 0, i32 6
  br label %141

127:                                              ; preds = %135, %118
  %128 = phi i32 [ 0, %118 ], [ %137, %135 ]
  %129 = call ptr @of_clk_get(ptr noundef %1, i32 noundef %128) #8
  %130 = icmp ugt ptr %129, inttoptr (i32 -4096 to ptr)
  br i1 %130, label %131, label %135

131:                                              ; preds = %127
  %132 = ptrtoint ptr %129 to i32
  %133 = load ptr, ptr %0, align 4
  %134 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %133, i32 noundef %132, ptr noundef nonnull @.str.14, ptr noundef %1, i32 noundef %128, i32 noundef %132) #8
  br label %205

135:                                              ; preds = %127
  %136 = load ptr, ptr %119, align 4
  %137 = add nuw nsw i32 %128, 1
  %138 = getelementptr %struct.clk_bulk_data, ptr %136, i32 %128, i32 1
  store ptr %129, ptr %138, align 4
  %139 = load i32, ptr %115, align 8
  %140 = icmp slt i32 %137, %139
  br i1 %140, label %127, label %120

141:                                              ; preds = %150, %125
  %142 = phi i32 [ 0, %125 ], [ %153, %150 ]
  %143 = add nuw i32 %142, %121
  %144 = call ptr @of_clk_get(ptr noundef %1, i32 noundef %143) #8
  %145 = icmp ugt ptr %144, inttoptr (i32 -4096 to ptr)
  br i1 %145, label %146, label %150

146:                                              ; preds = %141
  %147 = ptrtoint ptr %144 to i32
  %148 = load ptr, ptr %0, align 4
  %149 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %148, i32 noundef %147, ptr noundef nonnull @.str.14, ptr noundef %1, i32 noundef %143, i32 noundef %147) #8
  br label %200

150:                                              ; preds = %141
  %151 = load ptr, ptr %126, align 4
  %152 = getelementptr %struct.clk_bulk_data, ptr %151, i32 %142, i32 1
  store ptr %144, ptr %152, align 4
  %153 = add nuw nsw i32 %142, 1
  %154 = load i32, ptr %122, align 8
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %141, label %156

156:                                              ; preds = %150, %120
  %157 = load ptr, ptr %33, align 8
  %158 = getelementptr inbounds %struct.scpsys_domain_data, ptr %157, i32 0, i32 5
  %159 = load i8, ptr %158, align 4
  %160 = and i8 %159, 8
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %156
  %163 = call fastcc zeroext i1 @scpsys_domain_is_on(ptr noundef nonnull %30)
  br i1 %163, label %164, label %171

164:                                              ; preds = %162
  %165 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %165, ptr noundef nonnull @.str.15, ptr noundef %1) #9
  br label %171

166:                                              ; preds = %156
  %167 = call i32 @scpsys_power_on(ptr noundef nonnull %30)
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %166
  %170 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %170, ptr noundef nonnull @.str.16, ptr noundef %1, i32 noundef %167) #9
  br label %200

171:                                              ; preds = %166, %164, %162
  %172 = load i32, ptr %4, align 4
  %173 = getelementptr %struct.scpsys, ptr %0, i32 0, i32 4, i32 %172
  %174 = load ptr, ptr %173, align 4
  %175 = icmp eq ptr %174, null
  br i1 %175, label %178, label %176

176:                                              ; preds = %171
  %177 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %177, ptr noundef nonnull @.str.17, i32 noundef %172) #9
  br label %200

178:                                              ; preds = %171
  %179 = load ptr, ptr %33, align 8
  %180 = load ptr, ptr %179, align 4
  %181 = icmp eq ptr %180, null
  br i1 %181, label %182, label %184

182:                                              ; preds = %178
  %183 = load ptr, ptr %1, align 4
  br label %184

184:                                              ; preds = %182, %178
  %185 = phi ptr [ %183, %182 ], [ %180, %178 ]
  %186 = getelementptr inbounds %struct.generic_pm_domain, ptr %30, i32 0, i32 10
  store ptr %185, ptr %186, align 4
  %187 = getelementptr inbounds %struct.generic_pm_domain, ptr %30, i32 0, i32 18
  store ptr @scpsys_power_off, ptr %187, align 4
  %188 = getelementptr inbounds %struct.generic_pm_domain, ptr %30, i32 0, i32 19
  store ptr @scpsys_power_on, ptr %188, align 8
  %189 = getelementptr inbounds %struct.scpsys_domain_data, ptr %179, i32 0, i32 5
  %190 = load i8, ptr %189, align 4
  %191 = and i8 %190, 8
  %192 = icmp ne i8 %191, 0
  %193 = call i32 @pm_genpd_init(ptr noundef nonnull %30, ptr noundef null, i1 noundef zeroext %192) #8
  %194 = load i32, ptr %4, align 4
  %195 = getelementptr %struct.scpsys, ptr %0, i32 0, i32 4, i32 %194
  store ptr %30, ptr %195, align 4
  %196 = getelementptr inbounds %struct.scpsys, ptr %0, i32 0, i32 3
  %197 = load ptr, ptr %196, align 4
  %198 = getelementptr ptr, ptr %197, i32 %194
  %199 = load ptr, ptr %198, align 4
  br label %211

200:                                              ; preds = %176, %169, %146
  %201 = phi i32 [ %147, %146 ], [ -22, %176 ], [ %167, %169 ]
  %202 = load i32, ptr %122, align 8
  %203 = getelementptr inbounds %struct.scpsys_domain, ptr %30, i32 0, i32 6
  %204 = load ptr, ptr %203, align 4
  call void @clk_bulk_put(i32 noundef %202, ptr noundef %204) #8
  br label %205

205:                                              ; preds = %200, %131
  %206 = phi i32 [ %132, %131 ], [ %201, %200 ]
  %207 = load i32, ptr %115, align 8
  %208 = getelementptr inbounds %struct.scpsys_domain, ptr %30, i32 0, i32 4
  %209 = load ptr, ptr %208, align 4
  call void @clk_bulk_put(i32 noundef %207, ptr noundef %209) #8
  %210 = inttoptr i32 %206 to ptr
  br label %211

211:                                              ; preds = %205, %184, %108, %106, %95, %93, %64, %54, %49, %29, %28, %19, %10
  %212 = phi ptr [ inttoptr (i32 -22 to ptr), %10 ], [ inttoptr (i32 -22 to ptr), %19 ], [ inttoptr (i32 -22 to ptr), %28 ], [ %53, %49 ], [ %210, %205 ], [ %199, %184 ], [ inttoptr (i32 -12 to ptr), %29 ], [ %55, %54 ], [ %67, %64 ], [ inttoptr (i32 -12 to ptr), %93 ], [ inttoptr (i32 -12 to ptr), %95 ], [ inttoptr (i32 -12 to ptr), %106 ], [ inttoptr (i32 -12 to ptr), %108 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret ptr %212
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @scpsys_add_subdomain(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %46, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.scpsys, ptr %0, i32 0, i32 3
  br label %8

8:                                                ; preds = %41, %6
  %9 = phi ptr [ %4, %6 ], [ %42, %41 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %10 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #8
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.18, ptr noundef nonnull %9) #9
  br label %44

14:                                               ; preds = %8
  %15 = load ptr, ptr %7, align 4
  %16 = load i32, ptr %3, align 4
  %17 = getelementptr ptr, ptr %15, i32 %16
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.19, i32 noundef %16) #9
  br label %44

22:                                               ; preds = %14
  %23 = call fastcc ptr @scpsys_add_one_domain(ptr noundef %0, ptr noundef nonnull %9)
  %24 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = ptrtoint ptr %23 to i32
  %27 = load ptr, ptr %0, align 4
  %28 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %27, i32 noundef %26, ptr noundef nonnull @.str.20, ptr noundef nonnull %9) #8
  br label %44

29:                                               ; preds = %22
  %30 = call i32 @pm_genpd_add_subdomain(ptr noundef nonnull %18, ptr noundef %23) #8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %0, align 4
  %34 = getelementptr inbounds %struct.generic_pm_domain, ptr %23, i32 0, i32 10
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.generic_pm_domain, ptr %18, i32 0, i32 10
  %37 = load ptr, ptr %36, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.21, ptr noundef %35, ptr noundef %37) #9
  br label %44

38:                                               ; preds = %29
  %39 = call fastcc i32 @scpsys_add_subdomain(ptr noundef %0, ptr noundef nonnull %9)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  %42 = call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %9) #8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %8

44:                                               ; preds = %38, %32, %25, %20, %12
  %45 = phi i32 [ -22, %20 ], [ %30, %32 ], [ %26, %25 ], [ %10, %12 ], [ %39, %38 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @of_node_put(ptr noundef nonnull %9) #8
  br label %46

46:                                               ; preds = %44, %41, %2
  %47 = phi i32 [ %45, %44 ], [ 0, %2 ], [ 0, %41 ]
  ret i32 %47
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_provider_onecell(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_get_parent_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_string(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @scpsys_domain_is_on(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.scpsys_domain, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.scpsys, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.scpsys, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.scpsys_soc_data, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = call i32 @regmap_read(ptr noundef %7, i32 noundef %11, ptr noundef nonnull %2) #8
  %13 = getelementptr inbounds %struct.scpsys_domain, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.scpsys_domain_data, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = load i32, ptr %2, align 4
  %18 = and i32 %17, %16
  store i32 %18, ptr %2, align 4
  %19 = load ptr, ptr %6, align 4
  %20 = load ptr, ptr %8, align 4
  %21 = getelementptr inbounds %struct.scpsys_soc_data, ptr %20, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = call i32 @regmap_read(ptr noundef %19, i32 noundef %22, ptr noundef nonnull %3) #8
  %24 = load ptr, ptr %13, align 8
  %25 = getelementptr inbounds %struct.scpsys_domain_data, ptr %24, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = load i32, ptr %3, align 4
  %28 = and i32 %27, %26
  %29 = load i32, ptr %2, align 4
  %30 = icmp ne i32 %29, 0
  %31 = icmp ne i32 %28, 0
  %32 = select i1 %30, i1 %31, i1 false
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i1 %32
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scpsys_power_on(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.scpsys_domain, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.scpsys_domain, ptr %0, i32 0, i32 9
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = tail call i32 @regulator_enable(ptr noundef nonnull %10) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %214

15:                                               ; preds = %12, %1
  %16 = getelementptr inbounds %struct.scpsys_domain, ptr %0, i32 0, i32 3
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr inbounds %struct.scpsys_domain, ptr %0, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @clk_bulk_prepare(i32 noundef %17, ptr noundef %19) #8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %208

22:                                               ; preds = %15
  %23 = tail call i32 @clk_bulk_enable(i32 noundef %17, ptr noundef %19) #8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void @clk_bulk_unprepare(i32 noundef %17, ptr noundef %19) #8
  br label %208

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.scpsys, ptr %8, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.scpsys_domain, ptr %0, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.scpsys_domain_data, ptr %30, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef %32, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %34 = load ptr, ptr %27, align 4
  %35 = load ptr, ptr %29, align 8
  %36 = getelementptr inbounds %struct.scpsys_domain_data, ptr %35, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = tail call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef %37, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %39 = tail call i64 @ktime_get() #8
  %40 = add i64 %39, 1000000000
  br label %41

41:                                               ; preds = %72, %26
  %42 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !annotation !8
  %43 = getelementptr inbounds %struct.scpsys, ptr %42, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.scpsys, ptr %42, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.scpsys_soc_data, ptr %46, i32 0, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = call i32 @regmap_read(ptr noundef %44, i32 noundef %48, ptr noundef nonnull %5) #8
  %50 = load ptr, ptr %29, align 8
  %51 = getelementptr inbounds %struct.scpsys_domain_data, ptr %50, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = load i32, ptr %5, align 4
  %54 = and i32 %53, %52
  store i32 %54, ptr %5, align 4
  %55 = load ptr, ptr %43, align 4
  %56 = load ptr, ptr %45, align 4
  %57 = getelementptr inbounds %struct.scpsys_soc_data, ptr %56, i32 0, i32 3
  %58 = load i32, ptr %57, align 4
  %59 = call i32 @regmap_read(ptr noundef %55, i32 noundef %58, ptr noundef nonnull %6) #8
  %60 = load ptr, ptr %29, align 8
  %61 = getelementptr inbounds %struct.scpsys_domain_data, ptr %60, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = load i32, ptr %6, align 4
  %64 = and i32 %63, %62
  %65 = load i32, ptr %5, align 4
  %66 = icmp ne i32 %65, 0
  %67 = icmp ne i32 %64, 0
  %68 = select i1 %66, i1 %67, i1 false
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  br i1 %68, label %101, label %69

69:                                               ; preds = %41
  %70 = call i64 @ktime_get() #8
  %71 = icmp sgt i64 %70, %40
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #8
  br label %41

73:                                               ; preds = %69
  %74 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  %75 = getelementptr inbounds %struct.scpsys, ptr %74, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.scpsys, ptr %74, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.scpsys_soc_data, ptr %78, i32 0, i32 2
  %80 = load i32, ptr %79, align 4
  %81 = call i32 @regmap_read(ptr noundef %76, i32 noundef %80, ptr noundef nonnull %3) #8
  %82 = load ptr, ptr %29, align 8
  %83 = getelementptr inbounds %struct.scpsys_domain_data, ptr %82, i32 0, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = load i32, ptr %3, align 4
  %86 = and i32 %85, %84
  store i32 %86, ptr %3, align 4
  %87 = load ptr, ptr %75, align 4
  %88 = load ptr, ptr %77, align 4
  %89 = getelementptr inbounds %struct.scpsys_soc_data, ptr %88, i32 0, i32 3
  %90 = load i32, ptr %89, align 4
  %91 = call i32 @regmap_read(ptr noundef %87, i32 noundef %90, ptr noundef nonnull %4) #8
  %92 = load ptr, ptr %29, align 8
  %93 = getelementptr inbounds %struct.scpsys_domain_data, ptr %92, i32 0, i32 1
  %94 = load i32, ptr %93, align 4
  %95 = load i32, ptr %4, align 4
  %96 = and i32 %95, %94
  %97 = load i32, ptr %3, align 4
  %98 = icmp ne i32 %97, 0
  %99 = icmp ne i32 %96, 0
  %100 = select i1 %98, i1 %99, i1 false
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br i1 %100, label %101, label %204

101:                                              ; preds = %73, %41
  %102 = phi ptr [ %92, %73 ], [ %60, %41 ]
  %103 = load ptr, ptr %27, align 4
  %104 = getelementptr inbounds %struct.scpsys_domain_data, ptr %102, i32 0, i32 2
  %105 = load i32, ptr %104, align 4
  %106 = call i32 @regmap_update_bits_base(ptr noundef %103, i32 noundef %105, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %107 = load ptr, ptr %27, align 4
  %108 = load ptr, ptr %29, align 8
  %109 = getelementptr inbounds %struct.scpsys_domain_data, ptr %108, i32 0, i32 2
  %110 = load i32, ptr %109, align 4
  %111 = call i32 @regmap_update_bits_base(ptr noundef %107, i32 noundef %110, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %112 = load ptr, ptr %27, align 4
  %113 = load ptr, ptr %29, align 8
  %114 = getelementptr inbounds %struct.scpsys_domain_data, ptr %113, i32 0, i32 2
  %115 = load i32, ptr %114, align 4
  %116 = call i32 @regmap_update_bits_base(ptr noundef %112, i32 noundef %115, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %117 = getelementptr inbounds %struct.scpsys_domain, ptr %0, i32 0, i32 5
  %118 = load i32, ptr %117, align 8
  %119 = getelementptr inbounds %struct.scpsys_domain, ptr %0, i32 0, i32 6
  %120 = load ptr, ptr %119, align 4
  %121 = call i32 @clk_bulk_prepare(i32 noundef %118, ptr noundef %120) #8
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %204

123:                                              ; preds = %101
  %124 = call i32 @clk_bulk_enable(i32 noundef %118, ptr noundef %120) #8
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %123
  call void @clk_bulk_unprepare(i32 noundef %118, ptr noundef %120) #8
  br label %204

127:                                              ; preds = %123
  %128 = load ptr, ptr %29, align 8
  %129 = getelementptr inbounds %struct.scpsys_domain_data, ptr %128, i32 0, i32 4
  %130 = load i32, ptr %129, align 4
  %131 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %132 = getelementptr inbounds %struct.scpsys, ptr %131, i32 0, i32 1
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr inbounds %struct.scpsys_domain_data, ptr %128, i32 0, i32 2
  %135 = load i32, ptr %134, align 4
  %136 = getelementptr inbounds %struct.scpsys_domain_data, ptr %128, i32 0, i32 3
  %137 = load i32, ptr %136, align 4
  %138 = call i32 @regmap_update_bits_base(ptr noundef %133, i32 noundef %135, i32 noundef %137, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %139 = call i64 @ktime_get() #8
  %140 = add i64 %139, 1000000000
  %141 = load ptr, ptr %132, align 4
  %142 = load ptr, ptr %29, align 8
  %143 = getelementptr inbounds %struct.scpsys_domain_data, ptr %142, i32 0, i32 2
  %144 = load i32, ptr %143, align 4
  %145 = call i32 @regmap_read(ptr noundef %141, i32 noundef %144, ptr noundef nonnull %2) #8
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %167

147:                                              ; preds = %160, %127
  %148 = load i32, ptr %2, align 4
  %149 = and i32 %148, %130
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %167, label %151

151:                                              ; preds = %147
  %152 = call i64 @ktime_get() #8
  %153 = icmp sgt i64 %152, %140
  br i1 %153, label %154, label %160

154:                                              ; preds = %151
  %155 = load ptr, ptr %132, align 4
  %156 = load ptr, ptr %29, align 8
  %157 = getelementptr inbounds %struct.scpsys_domain_data, ptr %156, i32 0, i32 2
  %158 = load i32, ptr %157, align 4
  %159 = call i32 @regmap_read(ptr noundef %155, i32 noundef %158, ptr noundef nonnull %2) #8
  br label %167

160:                                              ; preds = %151
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #8
  %161 = load ptr, ptr %132, align 4
  %162 = load ptr, ptr %29, align 8
  %163 = getelementptr inbounds %struct.scpsys_domain_data, ptr %162, i32 0, i32 2
  %164 = load i32, ptr %163, align 4
  %165 = call i32 @regmap_read(ptr noundef %161, i32 noundef %164, ptr noundef nonnull %2) #8
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %147, label %167

167:                                              ; preds = %160, %154, %147, %127
  %168 = phi i32 [ %159, %154 ], [ %145, %127 ], [ %165, %160 ], [ 0, %147 ]
  %169 = icmp ne i32 %168, 0
  %170 = load i32, ptr %2, align 4
  %171 = and i32 %170, %130
  %172 = icmp eq i32 %171, 0
  %173 = select i1 %169, i1 true, i1 %172
  %174 = select i1 %173, i32 0, i32 -110
  %175 = select i1 %169, i32 %168, i32 %174
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %194, label %177

177:                                              ; preds = %167
  %178 = load ptr, ptr %29, align 8
  %179 = getelementptr inbounds %struct.scpsys_domain_data, ptr %178, i32 0, i32 5
  %180 = load i8, ptr %179, align 4
  %181 = and i8 %180, 4
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %195, label %183

183:                                              ; preds = %177
  %184 = load ptr, ptr %132, align 4
  %185 = getelementptr inbounds %struct.scpsys_domain_data, ptr %178, i32 0, i32 2
  %186 = load i32, ptr %185, align 4
  %187 = call i32 @regmap_update_bits_base(ptr noundef %184, i32 noundef %186, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %188 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %188(i32 noundef 214748) #8
  %189 = load ptr, ptr %132, align 4
  %190 = load ptr, ptr %29, align 8
  %191 = getelementptr inbounds %struct.scpsys_domain_data, ptr %190, i32 0, i32 2
  %192 = load i32, ptr %191, align 4
  %193 = call i32 @regmap_update_bits_base(ptr noundef %189, i32 noundef %192, i32 noundef 32, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %195

194:                                              ; preds = %167
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %200

195:                                              ; preds = %183, %177
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %196 = call fastcc i32 @scpsys_bus_protect_disable(ptr noundef %0)
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %214

198:                                              ; preds = %195
  %199 = call fastcc i32 @scpsys_sram_disable(ptr noundef %0)
  br label %200

200:                                              ; preds = %198, %194
  %201 = phi i32 [ %175, %194 ], [ %196, %198 ]
  %202 = load i32, ptr %117, align 8
  %203 = load ptr, ptr %119, align 4
  call void @clk_bulk_disable(i32 noundef %202, ptr noundef %203) #8
  call void @clk_bulk_unprepare(i32 noundef %202, ptr noundef %203) #8
  br label %204

204:                                              ; preds = %200, %126, %101, %73
  %205 = phi i32 [ -110, %73 ], [ %201, %200 ], [ %124, %126 ], [ %121, %101 ]
  %206 = load i32, ptr %16, align 8
  %207 = load ptr, ptr %18, align 4
  call void @clk_bulk_disable(i32 noundef %206, ptr noundef %207) #8
  call void @clk_bulk_unprepare(i32 noundef %206, ptr noundef %207) #8
  br label %208

208:                                              ; preds = %204, %25, %15
  %209 = phi i32 [ %205, %204 ], [ %23, %25 ], [ %20, %15 ]
  %210 = load ptr, ptr %9, align 8
  %211 = icmp eq ptr %210, null
  br i1 %211, label %214, label %212

212:                                              ; preds = %208
  %213 = call i32 @regulator_disable(ptr noundef nonnull %210) #8
  br label %214

214:                                              ; preds = %212, %208, %195, %12
  %215 = phi i32 [ %13, %12 ], [ 0, %195 ], [ %209, %208 ], [ %209, %212 ]
  ret i32 %215
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scpsys_power_off(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.scpsys_domain, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.scpsys_domain, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.scpsys_domain_data, ptr %9, i32 0, i32 6
  %11 = getelementptr inbounds %struct.scpsys_domain, ptr %0, i32 0, i32 7
  %12 = load ptr, ptr %11, align 8
  %13 = tail call fastcc i32 @_scpsys_bus_protect_enable(ptr noundef %10, ptr noundef %12) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load ptr, ptr %8, align 8
  %17 = getelementptr inbounds %struct.scpsys_domain_data, ptr %16, i32 0, i32 7
  %18 = getelementptr inbounds %struct.scpsys_domain, ptr %0, i32 0, i32 8
  %19 = load ptr, ptr %18, align 4
  %20 = tail call fastcc i32 @_scpsys_bus_protect_enable(ptr noundef %17, ptr noundef %19) #8
  br label %21

21:                                               ; preds = %15, %1
  %22 = phi i32 [ %20, %15 ], [ %13, %1 ]
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %130, label %24

24:                                               ; preds = %21
  %25 = tail call fastcc i32 @scpsys_sram_disable(ptr noundef %0)
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %130, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.scpsys_domain, ptr %0, i32 0, i32 5
  %29 = load i32, ptr %28, align 8
  %30 = getelementptr inbounds %struct.scpsys_domain, ptr %0, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  tail call void @clk_bulk_disable(i32 noundef %29, ptr noundef %31) #8
  tail call void @clk_bulk_unprepare(i32 noundef %29, ptr noundef %31) #8
  %32 = getelementptr inbounds %struct.scpsys, ptr %7, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = load ptr, ptr %8, align 8
  %35 = getelementptr inbounds %struct.scpsys_domain_data, ptr %34, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = tail call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef %36, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %38 = load ptr, ptr %32, align 4
  %39 = load ptr, ptr %8, align 8
  %40 = getelementptr inbounds %struct.scpsys_domain_data, ptr %39, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = tail call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef %41, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %43 = load ptr, ptr %32, align 4
  %44 = load ptr, ptr %8, align 8
  %45 = getelementptr inbounds %struct.scpsys_domain_data, ptr %44, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = tail call i32 @regmap_update_bits_base(ptr noundef %43, i32 noundef %46, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %48 = load ptr, ptr %32, align 4
  %49 = load ptr, ptr %8, align 8
  %50 = getelementptr inbounds %struct.scpsys_domain_data, ptr %49, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = tail call i32 @regmap_update_bits_base(ptr noundef %48, i32 noundef %51, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %53 = load ptr, ptr %32, align 4
  %54 = load ptr, ptr %8, align 8
  %55 = getelementptr inbounds %struct.scpsys_domain_data, ptr %54, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = tail call i32 @regmap_update_bits_base(ptr noundef %53, i32 noundef %56, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %58 = tail call i64 @ktime_get() #8
  %59 = add i64 %58, 1000000000
  br label %60

60:                                               ; preds = %91, %27
  %61 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !8
  %62 = getelementptr inbounds %struct.scpsys, ptr %61, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.scpsys, ptr %61, i32 0, i32 2
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.scpsys_soc_data, ptr %65, i32 0, i32 2
  %67 = load i32, ptr %66, align 4
  %68 = call i32 @regmap_read(ptr noundef %63, i32 noundef %67, ptr noundef nonnull %4) #8
  %69 = load ptr, ptr %8, align 8
  %70 = getelementptr inbounds %struct.scpsys_domain_data, ptr %69, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = load i32, ptr %4, align 4
  %73 = and i32 %72, %71
  store i32 %73, ptr %4, align 4
  %74 = load ptr, ptr %62, align 4
  %75 = load ptr, ptr %64, align 4
  %76 = getelementptr inbounds %struct.scpsys_soc_data, ptr %75, i32 0, i32 3
  %77 = load i32, ptr %76, align 4
  %78 = call i32 @regmap_read(ptr noundef %74, i32 noundef %77, ptr noundef nonnull %5) #8
  %79 = load ptr, ptr %8, align 8
  %80 = getelementptr inbounds %struct.scpsys_domain_data, ptr %79, i32 0, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = load i32, ptr %5, align 4
  %83 = and i32 %82, %81
  %84 = load i32, ptr %4, align 4
  %85 = icmp ne i32 %84, 0
  %86 = icmp ne i32 %83, 0
  %87 = select i1 %85, i1 %86, i1 false
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  br i1 %87, label %88, label %120

88:                                               ; preds = %60
  %89 = call i64 @ktime_get() #8
  %90 = icmp sgt i64 %89, %59
  br i1 %90, label %92, label %91

91:                                               ; preds = %88
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #8
  br label %60

92:                                               ; preds = %88
  %93 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %94 = getelementptr inbounds %struct.scpsys, ptr %93, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.scpsys, ptr %93, i32 0, i32 2
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.scpsys_soc_data, ptr %97, i32 0, i32 2
  %99 = load i32, ptr %98, align 4
  %100 = call i32 @regmap_read(ptr noundef %95, i32 noundef %99, ptr noundef nonnull %2) #8
  %101 = load ptr, ptr %8, align 8
  %102 = getelementptr inbounds %struct.scpsys_domain_data, ptr %101, i32 0, i32 1
  %103 = load i32, ptr %102, align 4
  %104 = load i32, ptr %2, align 4
  %105 = and i32 %104, %103
  store i32 %105, ptr %2, align 4
  %106 = load ptr, ptr %94, align 4
  %107 = load ptr, ptr %96, align 4
  %108 = getelementptr inbounds %struct.scpsys_soc_data, ptr %107, i32 0, i32 3
  %109 = load i32, ptr %108, align 4
  %110 = call i32 @regmap_read(ptr noundef %106, i32 noundef %109, ptr noundef nonnull %3) #8
  %111 = load ptr, ptr %8, align 8
  %112 = getelementptr inbounds %struct.scpsys_domain_data, ptr %111, i32 0, i32 1
  %113 = load i32, ptr %112, align 4
  %114 = load i32, ptr %3, align 4
  %115 = and i32 %114, %113
  %116 = load i32, ptr %2, align 4
  %117 = icmp ne i32 %116, 0
  %118 = icmp ne i32 %115, 0
  %119 = select i1 %117, i1 %118, i1 false
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br i1 %119, label %130, label %120

120:                                              ; preds = %92, %60
  %121 = getelementptr inbounds %struct.scpsys_domain, ptr %0, i32 0, i32 3
  %122 = load i32, ptr %121, align 8
  %123 = getelementptr inbounds %struct.scpsys_domain, ptr %0, i32 0, i32 4
  %124 = load ptr, ptr %123, align 4
  call void @clk_bulk_disable(i32 noundef %122, ptr noundef %124) #8
  call void @clk_bulk_unprepare(i32 noundef %122, ptr noundef %124) #8
  %125 = getelementptr inbounds %struct.scpsys_domain, ptr %0, i32 0, i32 9
  %126 = load ptr, ptr %125, align 8
  %127 = icmp eq ptr %126, null
  br i1 %127, label %130, label %128

128:                                              ; preds = %120
  %129 = call i32 @regulator_disable(ptr noundef nonnull %126) #8
  br label %130

130:                                              ; preds = %128, %120, %92, %24, %21
  %131 = phi i32 [ %22, %21 ], [ %25, %24 ], [ -110, %92 ], [ 0, %120 ], [ 0, %128 ]
  ret i32 %131
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_put(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @scpsys_bus_protect_disable(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.scpsys_domain, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.scpsys_domain_data, ptr %3, i32 0, i32 7
  %5 = getelementptr inbounds %struct.scpsys_domain, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = tail call fastcc i32 @_scpsys_bus_protect_disable(ptr noundef %4, ptr noundef %6)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds %struct.scpsys_domain_data, ptr %10, i32 0, i32 6
  %12 = getelementptr inbounds %struct.scpsys_domain, ptr %0, i32 0, i32 7
  %13 = load ptr, ptr %12, align 8
  %14 = tail call fastcc i32 @_scpsys_bus_protect_disable(ptr noundef %11, ptr noundef %13)
  br label %15

15:                                               ; preds = %9, %1
  %16 = phi i32 [ %14, %9 ], [ %7, %1 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @scpsys_sram_disable(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.scpsys_domain, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.scpsys_domain_data, ptr %4, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.scpsys_domain, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %9 = getelementptr inbounds %struct.scpsys_domain_data, ptr %4, i32 0, i32 5
  %10 = load i8, ptr %9, align 4
  %11 = and i8 %10, 4
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.scpsys, ptr %8, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.scpsys_domain_data, ptr %4, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %17, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #8
  %20 = load ptr, ptr %14, align 4
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds %struct.scpsys_domain_data, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef %23, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %25 = load ptr, ptr %3, align 8
  br label %26

26:                                               ; preds = %13, %1
  %27 = phi ptr [ %25, %13 ], [ %4, %1 ]
  %28 = getelementptr inbounds %struct.scpsys, ptr %8, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.scpsys_domain_data, ptr %27, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.scpsys_domain_data, ptr %27, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %33, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %35 = tail call i64 @ktime_get() #8
  %36 = add i64 %35, 1000000000
  %37 = load ptr, ptr %28, align 4
  %38 = load ptr, ptr %3, align 8
  %39 = getelementptr inbounds %struct.scpsys_domain_data, ptr %38, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = call i32 @regmap_read(ptr noundef %37, i32 noundef %40, ptr noundef nonnull %2) #8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %70

43:                                               ; preds = %50, %26
  %44 = load i32, ptr %2, align 4
  %45 = and i32 %44, %6
  %46 = icmp eq i32 %45, %6
  br i1 %46, label %68, label %47

47:                                               ; preds = %43
  %48 = call i64 @ktime_get() #8
  %49 = icmp sgt i64 %48, %36
  br i1 %49, label %57, label %50

50:                                               ; preds = %47
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #8
  %51 = load ptr, ptr %28, align 4
  %52 = load ptr, ptr %3, align 8
  %53 = getelementptr inbounds %struct.scpsys_domain_data, ptr %52, i32 0, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = call i32 @regmap_read(ptr noundef %51, i32 noundef %54, ptr noundef nonnull %2) #8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %43, label %70

57:                                               ; preds = %47
  %58 = load ptr, ptr %28, align 4
  %59 = load ptr, ptr %3, align 8
  %60 = getelementptr inbounds %struct.scpsys_domain_data, ptr %59, i32 0, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = call i32 @regmap_read(ptr noundef %58, i32 noundef %61, ptr noundef nonnull %2) #8
  %63 = icmp eq i32 %62, 0
  %64 = load i32, ptr %2, align 4
  %65 = and i32 %64, %6
  %66 = icmp eq i32 %65, %6
  %67 = select i1 %66, i32 0, i32 -110
  br i1 %63, label %68, label %70

68:                                               ; preds = %57, %43
  %69 = phi i32 [ %67, %57 ], [ 0, %43 ]
  br label %70

70:                                               ; preds = %68, %57, %50, %26
  %71 = phi i32 [ %69, %68 ], [ %62, %57 ], [ %41, %26 ], [ %55, %50 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %71
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_scpsys_bus_protect_disable(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  br label %4

4:                                                ; preds = %56, %2
  %5 = phi i32 [ 4, %2 ], [ %57, %56 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = getelementptr %struct.scpsys_bus_prot_data, ptr %0, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %56, label %9

9:                                                ; preds = %4
  %10 = getelementptr %struct.scpsys_bus_prot_data, ptr %0, i32 %5, i32 4
  %11 = load i8, ptr %10, align 4, !range !10
  %12 = icmp eq i8 %11, 0
  %13 = getelementptr %struct.scpsys_bus_prot_data, ptr %0, i32 %5, i32 2
  %14 = load i32, ptr %13, align 4
  br i1 %12, label %17, label %15

15:                                               ; preds = %9
  %16 = call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %14, i32 noundef %7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %19

17:                                               ; preds = %9
  %18 = call i32 @regmap_write(ptr noundef %1, i32 noundef %14, i32 noundef %7) #8
  br label %19

19:                                               ; preds = %17, %15
  %20 = getelementptr %struct.scpsys_bus_prot_data, ptr %0, i32 %5, i32 5
  %21 = load i8, ptr %20, align 1, !range !10
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %56

23:                                               ; preds = %19
  %24 = call i64 @ktime_get() #8
  %25 = add i64 %24, 1000000000
  %26 = getelementptr %struct.scpsys_bus_prot_data, ptr %0, i32 %5, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = call i32 @regmap_read(ptr noundef %1, i32 noundef %27, ptr noundef nonnull %3) #8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %40, %23
  %31 = load i32, ptr %3, align 4
  %32 = and i32 %31, %7
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %30
  %35 = call i64 @ktime_get() #8
  %36 = icmp sgt i64 %35, %25
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, ptr %26, align 4
  %39 = call i32 @regmap_read(ptr noundef %1, i32 noundef %38, ptr noundef nonnull %3) #8
  br label %44

40:                                               ; preds = %34
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #8
  %41 = load i32, ptr %26, align 4
  %42 = call i32 @regmap_read(ptr noundef %1, i32 noundef %41, ptr noundef nonnull %3) #8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %30, label %44

44:                                               ; preds = %40, %37, %30, %23
  %45 = phi i32 [ %39, %37 ], [ %28, %23 ], [ 0, %30 ], [ %42, %40 ]
  %46 = icmp eq i32 %45, 0
  %47 = load i32, ptr %3, align 4
  %48 = and i32 %47, %7
  %49 = icmp eq i32 %48, 0
  %50 = xor i1 %46, true
  %51 = select i1 %50, i1 true, i1 %49
  %52 = select i1 %51, i32 0, i32 -110
  %53 = select i1 %46, i32 %52, i32 %45
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %44
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %59

56:                                               ; preds = %44, %19, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  %57 = add nsw i32 %5, -1
  %58 = icmp sgt i32 %5, 0
  br i1 %58, label %4, label %59

59:                                               ; preds = %56, %55
  %60 = phi i32 [ %53, %55 ], [ 0, %56 ]
  ret i32 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_scpsys_bus_protect_enable(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  br label %4

4:                                                ; preds = %52, %2
  %5 = phi i32 [ 0, %2 ], [ %53, %52 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = getelementptr %struct.scpsys_bus_prot_data, ptr %0, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %51, label %9

9:                                                ; preds = %4
  %10 = getelementptr %struct.scpsys_bus_prot_data, ptr %0, i32 %5, i32 4
  %11 = load i8, ptr %10, align 4, !range !10
  %12 = icmp eq i8 %11, 0
  %13 = getelementptr %struct.scpsys_bus_prot_data, ptr %0, i32 %5, i32 1
  %14 = load i32, ptr %13, align 4
  br i1 %12, label %17, label %15

15:                                               ; preds = %9
  %16 = call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %14, i32 noundef %7, i32 noundef %7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %19

17:                                               ; preds = %9
  %18 = call i32 @regmap_write(ptr noundef %1, i32 noundef %14, i32 noundef %7) #8
  br label %19

19:                                               ; preds = %17, %15
  %20 = call i64 @ktime_get() #8
  %21 = add i64 %20, 1000000000
  %22 = getelementptr %struct.scpsys_bus_prot_data, ptr %0, i32 %5, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = call i32 @regmap_read(ptr noundef %1, i32 noundef %23, ptr noundef nonnull %3) #8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %36, %19
  %27 = load i32, ptr %3, align 4
  %28 = and i32 %27, %7
  %29 = icmp eq i32 %28, %7
  br i1 %29, label %40, label %30

30:                                               ; preds = %26
  %31 = call i64 @ktime_get() #8
  %32 = icmp sgt i64 %31, %21
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, ptr %22, align 4
  %35 = call i32 @regmap_read(ptr noundef %1, i32 noundef %34, ptr noundef nonnull %3) #8
  br label %40

36:                                               ; preds = %30
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #8
  %37 = load i32, ptr %22, align 4
  %38 = call i32 @regmap_read(ptr noundef %1, i32 noundef %37, ptr noundef nonnull %3) #8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %26, label %40

40:                                               ; preds = %36, %33, %26, %19
  %41 = phi i32 [ %35, %33 ], [ %24, %19 ], [ 0, %26 ], [ %38, %36 ]
  %42 = icmp eq i32 %41, 0
  %43 = load i32, ptr %3, align 4
  %44 = and i32 %43, %7
  %45 = icmp eq i32 %44, %7
  %46 = xor i1 %42, true
  %47 = select i1 %46, i1 true, i1 %45
  %48 = select i1 %47, i32 0, i32 -110
  %49 = select i1 %42, i32 %48, i32 %41
  %50 = icmp eq i32 %49, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br i1 %50, label %52, label %55

51:                                               ; preds = %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %55

52:                                               ; preds = %40
  %53 = add nuw nsw i32 %5, 1
  %54 = icmp eq i32 %53, 5
  br i1 %54, label %55, label %4

55:                                               ; preds = %52, %51, %40
  %56 = phi i32 [ 0, %51 ], [ 0, %52 ], [ %49, %40 ]
  ret i32 %56
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_add_subdomain(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i8 0, i8 2}
