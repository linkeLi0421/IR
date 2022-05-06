; ModuleID = '/llk/IR/drivers/soc/mediatek/mtk-scpsys.c_pt.bc'
source_filename = "../drivers/soc/mediatek/mtk-scpsys.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.scp_soc_data = type { ptr, i32, ptr, i32, %struct.scp_ctrl_reg, i8 }
%struct.scp_ctrl_reg = type { i32, i32 }
%struct.scp_domain_data = type { ptr, i32, i32, i32, i32, i32, [3 x i32], i8 }
%struct.scp_subdomain = type { i32, i32 }
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
%struct.scp = type { ptr, %struct.genpd_onecell_data, ptr, ptr, ptr, %struct.scp_ctrl_reg, i8 }
%struct.genpd_onecell_data = type { ptr, i32, ptr }
%struct.scp_domain = type { %struct.generic_pm_domain, ptr, [3 x ptr], ptr, ptr }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, [1 x %struct.cpumask], ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.71 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.71 = type { %struct.mutex }

@__initcall__kmod_mtk_scpsys__247_1147_scpsys_drv_init6 = internal global ptr @scpsys_drv_init, section ".initcall6.init", align 4
@scpsys_drv = internal global %struct.platform_driver { ptr @scpsys_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @of_scpsys_match_tbl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [11 x i8] c"mtk-scpsys\00", align 1
@of_scpsys_match_tbl = internal constant [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2701-scpsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt2701_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2712-scpsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt2712_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6797-scpsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt6797_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7622-scpsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt7622_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7623a-scpsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt7623a_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-scpsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8173_data }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to add subdomain: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"infracfg\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Cannot find infracfg controller: %ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"%s: clk unavailable\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"mm\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"mfg\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"venc\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"venc_lt\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"ethif\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"vdec\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"hif_sel\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"jpgdec\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"audio\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"Failed to power off domain %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"Failed to power on domain %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"drivers/soc/mediatek/mtk-scpsys.c\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"Failed to add OF provider: %d\0A\00", align 1
@mt2701_data = internal constant %struct.scp_soc_data { ptr @scp_domain_data_mt2701, i32 9, ptr null, i32 0, %struct.scp_ctrl_reg { i32 1548, i32 1552 }, i8 1 }, align 4
@mt2712_data = internal constant %struct.scp_soc_data { ptr @scp_domain_data_mt2712, i32 11, ptr @scp_subdomain_mt2712, i32 6, %struct.scp_ctrl_reg { i32 1548, i32 1552 }, i8 0 }, align 4
@mt6797_data = internal constant %struct.scp_soc_data { ptr @scp_domain_data_mt6797, i32 12, ptr @scp_subdomain_mt6797, i32 4, %struct.scp_ctrl_reg { i32 384, i32 388 }, i8 1 }, align 4
@mt7622_data = internal constant %struct.scp_soc_data { ptr @scp_domain_data_mt7622, i32 4, ptr null, i32 0, %struct.scp_ctrl_reg { i32 1548, i32 1552 }, i8 1 }, align 4
@mt7623a_data = internal constant %struct.scp_soc_data { ptr @scp_domain_data_mt7623a, i32 4, ptr null, i32 0, %struct.scp_ctrl_reg { i32 1548, i32 1552 }, i8 1 }, align 4
@mt8173_data = internal constant %struct.scp_soc_data { ptr @scp_domain_data_mt8173, i32 10, ptr @scp_subdomain_mt8173, i32 2, %struct.scp_ctrl_reg { i32 1548, i32 1552 }, i8 1 }, align 4
@scp_domain_data_mt2701 = internal constant [9 x %struct.scp_domain_data] [%struct.scp_domain_data { ptr @.str.18, i32 2, i32 640, i32 0, i32 0, i32 260, [3 x i32] zeroinitializer, i8 1 }, %struct.scp_domain_data { ptr @.str.19, i32 8, i32 572, i32 3840, i32 0, i32 2, [3 x i32] [i32 1, i32 0, i32 0], i8 1 }, %struct.scp_domain_data { ptr @.str.6, i32 16, i32 532, i32 3840, i32 4096, i32 0, [3 x i32] [i32 2, i32 0, i32 0], i8 1 }, %struct.scp_domain_data { ptr @.str.10, i32 128, i32 528, i32 3840, i32 4096, i32 0, [3 x i32] [i32 1, i32 0, i32 0], i8 1 }, %struct.scp_domain_data { ptr @.str.20, i32 32, i32 568, i32 3840, i32 12288, i32 0, [3 x i32] [i32 1, i32 0, i32 0], i8 1 }, %struct.scp_domain_data { ptr @.str.21, i32 16384, i32 668, i32 3840, i32 0, i32 0, [3 x i32] zeroinitializer, i8 1 }, %struct.scp_domain_data { ptr @.str.22, i32 32768, i32 672, i32 3840, i32 61440, i32 0, [3 x i32] [i32 5, i32 0, i32 0], i8 1 }, %struct.scp_domain_data { ptr @.str.23, i32 65536, i32 676, i32 3840, i32 61440, i32 0, [3 x i32] [i32 5, i32 0, i32 0], i8 1 }, %struct.scp_domain_data { ptr @.str.24, i32 131072, i32 680, i32 0, i32 0, i32 0, [3 x i32] zeroinitializer, i8 1 }], align 4
@.str.18 = private unnamed_addr constant [5 x i8] c"conn\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"disp\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"isp\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"bdp\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"eth\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"hif\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"ifr_msc\00", align 1
@scp_domain_data_mt2712 = internal constant [11 x %struct.scp_domain_data] [%struct.scp_domain_data { ptr @.str.5, i32 8, i32 572, i32 256, i32 4096, i32 0, [3 x i32] [i32 1, i32 0, i32 0], i8 1 }, %struct.scp_domain_data { ptr @.str.10, i32 128, i32 528, i32 256, i32 4096, i32 0, [3 x i32] [i32 1, i32 6, i32 0], i8 1 }, %struct.scp_domain_data { ptr @.str.7, i32 2097152, i32 560, i32 3840, i32 61440, i32 0, [3 x i32] [i32 1, i32 3, i32 8], i8 1 }, %struct.scp_domain_data { ptr @.str.20, i32 32, i32 568, i32 3840, i32 12288, i32 0, [3 x i32] [i32 1, i32 0, i32 0], i8 1 }, %struct.scp_domain_data { ptr @.str.13, i32 16777216, i32 668, i32 3840, i32 61440, i32 0, [3 x i32] [i32 9, i32 0, i32 0], i8 1 }, %struct.scp_domain_data { ptr @.str.25, i32 33554432, i32 716, i32 1792, i32 28672, i32 0, [3 x i32] zeroinitializer, i8 1 }, %struct.scp_domain_data { ptr @.str.26, i32 524288, i32 724, i32 1792, i32 28672, i32 0, [3 x i32] zeroinitializer, i8 1 }, %struct.scp_domain_data { ptr @.str.6, i32 16, i32 532, i32 256, i32 65536, i32 10502144, [3 x i32] [i32 2, i32 0, i32 0], i8 1 }, %struct.scp_domain_data { ptr @.str.27, i32 4194304, i32 704, i32 256, i32 65536, i32 0, [3 x i32] zeroinitializer, i8 1 }, %struct.scp_domain_data { ptr @.str.28, i32 8388608, i32 708, i32 256, i32 65536, i32 0, [3 x i32] zeroinitializer, i8 1 }, %struct.scp_domain_data { ptr @.str.29, i32 1073741824, i32 504, i32 256, i32 65536, i32 0, [3 x i32] zeroinitializer, i8 1 }], align 4
@scp_subdomain_mt2712 = internal constant [6 x %struct.scp_subdomain] [%struct.scp_subdomain { i32 0, i32 1 }, %struct.scp_subdomain { i32 0, i32 2 }, %struct.scp_subdomain { i32 0, i32 3 }, %struct.scp_subdomain { i32 7, i32 8 }, %struct.scp_subdomain { i32 8, i32 9 }, %struct.scp_subdomain { i32 9, i32 10 }], align 4
@.str.25 = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"usb2\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"mfg_sc1\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"mfg_sc2\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"mfg_sc3\00", align 1
@scp_domain_data_mt6797 = internal constant [12 x %struct.scp_domain_data] [%struct.scp_domain_data { ptr @.str.10, i32 128, i32 768, i32 256, i32 4096, i32 0, [3 x i32] [i32 6, i32 0, i32 0], i8 0 }, %struct.scp_domain_data { ptr @.str.7, i32 2097152, i32 772, i32 3840, i32 61440, i32 0, [3 x i32] zeroinitializer, i8 0 }, %struct.scp_domain_data { ptr @.str.20, i32 32, i32 776, i32 768, i32 12288, i32 0, [3 x i32] zeroinitializer, i8 0 }, %struct.scp_domain_data { ptr @.str.5, i32 8, i32 780, i32 256, i32 4096, i32 6, [3 x i32] [i32 1, i32 0, i32 0], i8 0 }, %struct.scp_domain_data { ptr @.str.13, i32 16777216, i32 788, i32 3840, i32 61440, i32 0, [3 x i32] zeroinitializer, i8 0 }, %struct.scp_domain_data { ptr @.str.30, i32 8192, i32 820, i32 0, i32 0, i32 0, [3 x i32] [i32 2, i32 0, i32 0], i8 0 }, %struct.scp_domain_data zeroinitializer, %struct.scp_domain_data zeroinitializer, %struct.scp_domain_data zeroinitializer, %struct.scp_domain_data zeroinitializer, %struct.scp_domain_data zeroinitializer, %struct.scp_domain_data { ptr @.str.31, i32 1048576, i32 784, i32 256, i32 4096, i32 0, [3 x i32] zeroinitializer, i8 0 }], align 4
@scp_subdomain_mt6797 = internal constant [4 x %struct.scp_subdomain] [%struct.scp_subdomain { i32 3, i32 0 }, %struct.scp_subdomain { i32 3, i32 2 }, %struct.scp_subdomain { i32 3, i32 1 }, %struct.scp_subdomain { i32 3, i32 11 }], align 4
@.str.30 = private unnamed_addr constant [10 x i8] c"mfg_async\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"mjc\00", align 1
@scp_domain_data_mt7622 = internal constant [4 x %struct.scp_domain_data] [%struct.scp_domain_data { ptr @.str.32, i32 16777216, i32 736, i32 3840, i32 61440, i32 131080, [3 x i32] zeroinitializer, i8 1 }, %struct.scp_domain_data { ptr @.str.33, i32 33554432, i32 740, i32 3840, i32 61440, i32 50331648, [3 x i32] [i32 7, i32 0, i32 0], i8 1 }, %struct.scp_domain_data { ptr @.str.34, i32 67108864, i32 744, i32 3840, i32 61440, i32 469762048, [3 x i32] [i32 7, i32 0, i32 0], i8 1 }, %struct.scp_domain_data { ptr @.str.35, i32 134217728, i32 748, i32 0, i32 0, i32 452, [3 x i32] zeroinitializer, i8 3 }], align 4
@.str.32 = private unnamed_addr constant [7 x i8] c"ethsys\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"hif0\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"hif1\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@scp_domain_data_mt7623a = internal constant [4 x %struct.scp_domain_data] [%struct.scp_domain_data { ptr @.str.18, i32 2, i32 640, i32 0, i32 0, i32 260, [3 x i32] zeroinitializer, i8 1 }, %struct.scp_domain_data { ptr @.str.22, i32 32768, i32 672, i32 3840, i32 61440, i32 0, [3 x i32] [i32 5, i32 0, i32 0], i8 1 }, %struct.scp_domain_data { ptr @.str.23, i32 65536, i32 676, i32 3840, i32 61440, i32 0, [3 x i32] [i32 5, i32 0, i32 0], i8 1 }, %struct.scp_domain_data { ptr @.str.24, i32 131072, i32 680, i32 0, i32 0, i32 0, [3 x i32] zeroinitializer, i8 1 }], align 4
@scp_domain_data_mt8173 = internal constant [10 x %struct.scp_domain_data] [%struct.scp_domain_data { ptr @.str.10, i32 128, i32 528, i32 3840, i32 4096, i32 0, [3 x i32] [i32 1, i32 0, i32 0], i8 0 }, %struct.scp_domain_data { ptr @.str.7, i32 2097152, i32 560, i32 3840, i32 61440, i32 0, [3 x i32] [i32 1, i32 3, i32 0], i8 0 }, %struct.scp_domain_data { ptr @.str.20, i32 32, i32 568, i32 3840, i32 12288, i32 0, [3 x i32] [i32 1, i32 0, i32 0], i8 0 }, %struct.scp_domain_data { ptr @.str.5, i32 8, i32 572, i32 3840, i32 4096, i32 6, [3 x i32] [i32 1, i32 0, i32 0], i8 0 }, %struct.scp_domain_data { ptr @.str.8, i32 1048576, i32 664, i32 3840, i32 61440, i32 0, [3 x i32] [i32 1, i32 4, i32 0], i8 0 }, %struct.scp_domain_data { ptr @.str.13, i32 16777216, i32 668, i32 3840, i32 61440, i32 0, [3 x i32] zeroinitializer, i8 0 }, %struct.scp_domain_data { ptr @.str.25, i32 33554432, i32 716, i32 3840, i32 61440, i32 0, [3 x i32] zeroinitializer, i8 1 }, %struct.scp_domain_data { ptr @.str.30, i32 8388608, i32 708, i32 3840, i32 0, i32 0, [3 x i32] [i32 2, i32 0, i32 0], i8 0 }, %struct.scp_domain_data { ptr @.str.36, i32 4194304, i32 704, i32 3840, i32 12288, i32 0, [3 x i32] zeroinitializer, i8 0 }, %struct.scp_domain_data { ptr @.str.6, i32 16, i32 532, i32 16128, i32 4128768, i32 14696448, [3 x i32] zeroinitializer, i8 0 }], align 4
@scp_subdomain_mt8173 = internal constant [2 x %struct.scp_subdomain] [%struct.scp_subdomain { i32 7, i32 8 }, %struct.scp_subdomain { i32 8, i32 9 }], align 4
@.str.36 = private unnamed_addr constant [7 x i8] c"mfg_2d\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_mtk_scpsys__247_1147_scpsys_drv_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @scpsys_drv_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @scpsys_drv, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scpsys_probe(ptr noundef %0) #2 {
  %2 = alloca [10 x ptr], align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call ptr @of_device_get_match_data(ptr noundef %3) #7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.scp_soc_data, ptr %4, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.scp_soc_data, ptr %4, i32 0, i32 5
  %9 = load i8, ptr %8, align 4, !range !8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %2, i8 0, i32 40, i1 false) #7, !annotation !9
  %10 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 40, i32 noundef 3520) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %139, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.scp_soc_data, ptr %4, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.scp, ptr %10, i32 0, i32 5
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.scp_soc_data, ptr %4, i32 0, i32 4, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.scp, ptr %10, i32 0, i32 5, i32 1
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.scp, ptr %10, i32 0, i32 6
  store i8 %9, ptr %19, align 4
  %20 = getelementptr inbounds %struct.scp, ptr %10, i32 0, i32 2
  store ptr %3, ptr %20, align 4
  %21 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #7
  %22 = tail call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef %21) #7
  %23 = getelementptr inbounds %struct.scp, ptr %10, i32 0, i32 3
  store ptr %22, ptr %23, align 4
  %24 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %140, label %25

25:                                               ; preds = %12
  %26 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %7, i32 824) #7
  %27 = extractvalue { i32, i1 } %26, 1
  br i1 %27, label %28, label %29, !prof !10

28:                                               ; preds = %25
  store ptr null, ptr %10, align 4
  br label %139

29:                                               ; preds = %25
  %30 = extractvalue { i32, i1 } %26, 0
  %31 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %30, i32 noundef 3520) #7
  store ptr %31, ptr %10, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %139, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.scp, ptr %10, i32 0, i32 1
  %35 = shl nuw nsw i32 %7, 2
  %36 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %35, i32 noundef 3520) #7
  store ptr %36, ptr %34, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %139, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %40 = load ptr, ptr %39, align 8
  %41 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %40, ptr noundef nonnull @.str.2) #7
  %42 = getelementptr inbounds %struct.scp, ptr %10, i32 0, i32 4
  store ptr %41, ptr %42, align 4
  %43 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %46, label %44

44:                                               ; preds = %38
  %45 = icmp eq i32 %7, 0
  br i1 %45, label %64, label %48

46:                                               ; preds = %38
  %47 = ptrtoint ptr %41 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef %47) #8
  br label %140

48:                                               ; preds = %62, %44
  %49 = phi ptr [ %63, %62 ], [ %31, %44 ]
  %50 = phi i32 [ %60, %62 ], [ 0, %44 ]
  %51 = getelementptr %struct.scp_domain_data, ptr %5, i32 %50
  %52 = load ptr, ptr %51, align 4
  %53 = tail call ptr @devm_regulator_get_optional(ptr noundef %3, ptr noundef %52) #7
  %54 = getelementptr %struct.scp_domain, ptr %49, i32 %50, i32 4
  store ptr %53, ptr %54, align 4
  %55 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = icmp eq ptr %53, inttoptr (i32 -19 to ptr)
  br i1 %57, label %58, label %140

58:                                               ; preds = %56
  store ptr null, ptr %54, align 4
  br label %59

59:                                               ; preds = %58, %48
  %60 = add nuw nsw i32 %50, 1
  %61 = icmp eq i32 %60, %7
  br i1 %61, label %64, label %62

62:                                               ; preds = %59
  %63 = load ptr, ptr %10, align 4
  br label %48

64:                                               ; preds = %59, %44
  %65 = getelementptr inbounds %struct.scp, ptr %10, i32 0, i32 1, i32 1
  store i32 %7, ptr %65, align 4
  %66 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.5) #7
  %67 = getelementptr inbounds ptr, ptr %2, i32 1
  store ptr %66, ptr %67, align 4
  %68 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.6) #7
  %69 = getelementptr inbounds ptr, ptr %2, i32 2
  store ptr %68, ptr %69, align 4
  %70 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.7) #7
  %71 = getelementptr inbounds ptr, ptr %2, i32 3
  store ptr %70, ptr %71, align 4
  %72 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.8) #7
  %73 = getelementptr inbounds ptr, ptr %2, i32 4
  store ptr %72, ptr %73, align 4
  %74 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.9) #7
  %75 = getelementptr inbounds ptr, ptr %2, i32 5
  store ptr %74, ptr %75, align 4
  %76 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.10) #7
  %77 = getelementptr inbounds ptr, ptr %2, i32 6
  store ptr %76, ptr %77, align 4
  %78 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.11) #7
  %79 = getelementptr inbounds ptr, ptr %2, i32 7
  store ptr %78, ptr %79, align 4
  %80 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.12) #7
  %81 = getelementptr inbounds ptr, ptr %2, i32 8
  store ptr %80, ptr %81, align 4
  %82 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.13) #7
  %83 = getelementptr inbounds ptr, ptr %2, i32 9
  store ptr %82, ptr %83, align 4
  br i1 %45, label %140, label %84

84:                                               ; preds = %136, %64
  %85 = phi i32 [ %137, %136 ], [ 0, %64 ]
  %86 = load ptr, ptr %10, align 4
  %87 = getelementptr %struct.scp_domain, ptr %86, i32 %85
  %88 = getelementptr %struct.scp_domain_data, ptr %5, i32 %85
  %89 = load ptr, ptr %34, align 4
  %90 = getelementptr ptr, ptr %89, i32 %85
  store ptr %87, ptr %90, align 4
  %91 = getelementptr %struct.scp_domain, ptr %86, i32 %85, i32 1
  store ptr %10, ptr %91, align 8
  %92 = getelementptr %struct.scp_domain, ptr %86, i32 %85, i32 3
  store ptr %88, ptr %92, align 8
  %93 = getelementptr %struct.scp_domain_data, ptr %5, i32 %85, i32 6, i32 0
  %94 = load i32, ptr %93, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %120, label %96

96:                                               ; preds = %84
  %97 = getelementptr [10 x ptr], ptr %2, i32 0, i32 %94
  %98 = load ptr, ptr %97, align 4
  %99 = icmp ugt ptr %98, inttoptr (i32 -4096 to ptr)
  br i1 %99, label %133, label %100

100:                                              ; preds = %96
  %101 = getelementptr %struct.scp_domain, ptr %86, i32 %85, i32 2, i32 0
  store ptr %98, ptr %101, align 4
  %102 = getelementptr %struct.scp_domain_data, ptr %5, i32 %85, i32 6, i32 1
  %103 = load i32, ptr %102, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %120, label %105

105:                                              ; preds = %100
  %106 = getelementptr [10 x ptr], ptr %2, i32 0, i32 %103
  %107 = load ptr, ptr %106, align 4
  %108 = icmp ugt ptr %107, inttoptr (i32 -4096 to ptr)
  br i1 %108, label %133, label %109

109:                                              ; preds = %105
  %110 = getelementptr %struct.scp_domain, ptr %86, i32 %85, i32 2, i32 1
  store ptr %107, ptr %110, align 4
  %111 = getelementptr %struct.scp_domain_data, ptr %5, i32 %85, i32 6, i32 2
  %112 = load i32, ptr %111, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %109
  %115 = getelementptr [10 x ptr], ptr %2, i32 0, i32 %112
  %116 = load ptr, ptr %115, align 4
  %117 = icmp ugt ptr %116, inttoptr (i32 -4096 to ptr)
  br i1 %117, label %133, label %118

118:                                              ; preds = %114
  %119 = getelementptr %struct.scp_domain, ptr %86, i32 %85, i32 2, i32 2
  store ptr %116, ptr %119, align 4
  br label %120

120:                                              ; preds = %118, %109, %100, %84
  %121 = load ptr, ptr %88, align 4
  %122 = getelementptr inbounds %struct.generic_pm_domain, ptr %87, i32 0, i32 10
  store ptr %121, ptr %122, align 4
  %123 = getelementptr inbounds %struct.generic_pm_domain, ptr %87, i32 0, i32 18
  store ptr @scpsys_power_off, ptr %123, align 4
  %124 = getelementptr inbounds %struct.generic_pm_domain, ptr %87, i32 0, i32 19
  store ptr @scpsys_power_on, ptr %124, align 8
  %125 = getelementptr %struct.scp_domain_data, ptr %5, i32 %85, i32 7
  %126 = load i8, ptr %125, align 4
  %127 = and i8 %126, 1
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %136, label %129

129:                                              ; preds = %120
  %130 = getelementptr inbounds %struct.generic_pm_domain, ptr %87, i32 0, i32 32
  %131 = load i32, ptr %130, align 4
  %132 = or i32 %131, 8
  store i32 %132, ptr %130, align 4
  br label %136

133:                                              ; preds = %114, %105, %96
  %134 = phi ptr [ %98, %96 ], [ %107, %105 ], [ %116, %114 ]
  %135 = load ptr, ptr %88, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4, ptr noundef %135) #8
  br label %140

136:                                              ; preds = %129, %120
  %137 = add nuw nsw i32 %85, 1
  %138 = icmp eq i32 %137, %7
  br i1 %138, label %140, label %84

139:                                              ; preds = %33, %29, %28, %1
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #7
  br label %143

140:                                              ; preds = %136, %133, %64, %56, %46, %12
  %141 = phi ptr [ %41, %46 ], [ %134, %133 ], [ %22, %12 ], [ %10, %64 ], [ %10, %136 ], [ %53, %56 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #7
  %142 = icmp ugt ptr %141, inttoptr (i32 -4096 to ptr)
  br i1 %142, label %143, label %146

143:                                              ; preds = %140, %139
  %144 = phi ptr [ inttoptr (i32 -12 to ptr), %139 ], [ %141, %140 ]
  %145 = ptrtoint ptr %144 to i32
  br label %195

146:                                              ; preds = %140
  %147 = load i32, ptr %6, align 4
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %149, label %162

149:                                              ; preds = %158, %146
  %150 = phi i32 [ %160, %158 ], [ 0, %146 ]
  %151 = load ptr, ptr %141, align 4
  %152 = getelementptr %struct.scp_domain, ptr %151, i32 %150
  %153 = getelementptr inbounds %struct.generic_pm_domain, ptr %152, i32 0, i32 19
  %154 = load ptr, ptr %153, align 8
  %155 = tail call i32 %154(ptr noundef %152) #7
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %158, !prof !10

157:                                              ; preds = %149
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 535, i32 noundef 9, ptr noundef null) #7
  br label %158

158:                                              ; preds = %157, %149
  %159 = tail call i32 @pm_genpd_init(ptr noundef %152, ptr noundef null, i1 noundef zeroext %156) #7
  %160 = add nuw nsw i32 %150, 1
  %161 = icmp eq i32 %160, %147
  br i1 %161, label %162, label %149

162:                                              ; preds = %158, %146
  %163 = getelementptr inbounds %struct.scp, ptr %141, i32 0, i32 1
  %164 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %165 = load ptr, ptr %164, align 8
  %166 = tail call i32 @of_genpd_add_provider_onecell(ptr noundef %165, ptr noundef %163) #7
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %162
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.17, i32 noundef %166) #8
  br label %169

169:                                              ; preds = %168, %162
  %170 = getelementptr inbounds %struct.scp_soc_data, ptr %4, i32 0, i32 3
  %171 = load i32, ptr %170, align 4
  %172 = icmp sgt i32 %171, 0
  br i1 %172, label %173, label %195

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.scp_soc_data, ptr %4, i32 0, i32 2
  %175 = load ptr, ptr %174, align 4
  br label %176

176:                                              ; preds = %190, %173
  %177 = phi i32 [ %191, %190 ], [ 0, %173 ]
  %178 = phi ptr [ %192, %190 ], [ %175, %173 ]
  %179 = load ptr, ptr %163, align 4
  %180 = load i32, ptr %178, align 4
  %181 = getelementptr ptr, ptr %179, i32 %180
  %182 = load ptr, ptr %181, align 4
  %183 = getelementptr inbounds %struct.scp_subdomain, ptr %178, i32 0, i32 1
  %184 = load i32, ptr %183, align 4
  %185 = getelementptr ptr, ptr %179, i32 %184
  %186 = load ptr, ptr %185, align 4
  %187 = tail call i32 @pm_genpd_add_subdomain(ptr noundef %182, ptr noundef %186) #7
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %176
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef %187) #8
  br label %190

190:                                              ; preds = %189, %176
  %191 = add nuw nsw i32 %177, 1
  %192 = getelementptr %struct.scp_subdomain, ptr %178, i32 1
  %193 = load i32, ptr %170, align 4
  %194 = icmp slt i32 %191, %193
  br i1 %194, label %176, label %195

195:                                              ; preds = %190, %169, %143
  %196 = phi i32 [ %145, %143 ], [ 0, %169 ], [ 0, %190 ]
  ret i32 %196
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_add_subdomain(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scpsys_power_off(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.scp_domain, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.scp, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.scp_domain, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.scp_domain_data, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %5, i32 %9
  %11 = getelementptr inbounds %struct.scp_domain_data, ptr %7, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.scp, ptr %3, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.scp, ptr %3, i32 0, i32 6
  %18 = load i8, ptr %17, align 4, !range !8
  %19 = icmp ne i8 %18, 0
  %20 = tail call i32 @mtk_infracfg_set_bus_protection(ptr noundef %16, i32 noundef %12, i1 noundef zeroext %19) #7
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %123, label %22

22:                                               ; preds = %14
  %23 = load ptr, ptr %6, align 8
  br label %24

24:                                               ; preds = %22, %1
  %25 = phi ptr [ %23, %22 ], [ %7, %1 ]
  %26 = getelementptr inbounds %struct.scp_domain_data, ptr %25, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %29 = load ptr, ptr %6, align 8
  %30 = getelementptr inbounds %struct.scp_domain_data, ptr %29, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = or i32 %31, %28
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %32) #7, !srcloc !14
  %33 = tail call i64 @ktime_get() #7
  %34 = add i64 %33, 1000000000
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  %36 = and i32 %35, %27
  %37 = icmp eq i32 %36, %27
  br i1 %37, label %49, label %38

38:                                               ; preds = %41, %24
  %39 = tail call i64 @ktime_get() #7
  %40 = icmp sgt i64 %39, %34
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #7
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  %43 = and i32 %42, %27
  %44 = icmp eq i32 %43, %27
  br i1 %44, label %49, label %38

45:                                               ; preds = %38
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !16
  %47 = and i32 %46, %27
  %48 = icmp eq i32 %47, %27
  br i1 %48, label %49, label %123

49:                                               ; preds = %45, %41, %24
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !17
  %51 = or i32 %50, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !18
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %51) #7, !srcloc !14
  %52 = and i32 %51, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %52) #7, !srcloc !14
  %53 = or i32 %52, 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %53) #7, !srcloc !14
  %54 = and i32 %53, -6
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %54) #7, !srcloc !14
  %55 = and i32 %53, -14
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !22
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %55) #7, !srcloc !14
  %56 = tail call i64 @ktime_get() #7
  %57 = add i64 %56, 1000000000
  br label %58

58:                                               ; preds = %109, %49
  %59 = load ptr, ptr %2, align 8
  %60 = getelementptr inbounds %struct.scp, ptr %59, i32 0, i32 3
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.scp, ptr %59, i32 0, i32 5
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr i8, ptr %61, i32 %63
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !23
  %66 = load ptr, ptr %6, align 8
  %67 = getelementptr inbounds %struct.scp_domain_data, ptr %66, i32 0, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = and i32 %68, %65
  %70 = load ptr, ptr %60, align 4
  %71 = getelementptr inbounds %struct.scp, ptr %59, i32 0, i32 5, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr i8, ptr %70, i32 %72
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !24
  %75 = load ptr, ptr %6, align 8
  %76 = getelementptr inbounds %struct.scp_domain_data, ptr %75, i32 0, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = and i32 %77, %74
  %79 = icmp eq i32 %69, 0
  %80 = icmp eq i32 %78, 0
  %81 = select i1 %79, i1 %80, i1 false
  br i1 %81, label %110, label %82

82:                                               ; preds = %58
  %83 = tail call i64 @ktime_get() #7
  %84 = icmp sgt i64 %83, %57
  br i1 %84, label %85, label %109

85:                                               ; preds = %82
  %86 = load ptr, ptr %2, align 8
  %87 = getelementptr inbounds %struct.scp, ptr %86, i32 0, i32 3
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.scp, ptr %86, i32 0, i32 5
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr i8, ptr %88, i32 %90
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !23
  %93 = load ptr, ptr %6, align 8
  %94 = getelementptr inbounds %struct.scp_domain_data, ptr %93, i32 0, i32 1
  %95 = load i32, ptr %94, align 4
  %96 = and i32 %95, %92
  %97 = load ptr, ptr %87, align 4
  %98 = getelementptr inbounds %struct.scp, ptr %86, i32 0, i32 5, i32 1
  %99 = load i32, ptr %98, align 4
  %100 = getelementptr i8, ptr %97, i32 %99
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %100) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !24
  %102 = load ptr, ptr %6, align 8
  %103 = getelementptr inbounds %struct.scp_domain_data, ptr %102, i32 0, i32 1
  %104 = load i32, ptr %103, align 4
  %105 = and i32 %104, %101
  %106 = icmp eq i32 %96, 0
  %107 = icmp eq i32 %105, 0
  %108 = select i1 %106, i1 %107, i1 false
  br i1 %108, label %110, label %123

109:                                              ; preds = %82
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #7
  br label %58

110:                                              ; preds = %85, %58
  %111 = getelementptr inbounds %struct.scp_domain, ptr %0, i32 0, i32 2
  %112 = getelementptr %struct.scp_domain, ptr %0, i32 0, i32 2, i32 2
  %113 = load ptr, ptr %112, align 4
  tail call void @clk_disable(ptr noundef %113) #7
  tail call void @clk_unprepare(ptr noundef %113) #7
  %114 = getelementptr %struct.scp_domain, ptr %0, i32 0, i32 2, i32 1
  %115 = load ptr, ptr %114, align 4
  tail call void @clk_disable(ptr noundef %115) #7
  tail call void @clk_unprepare(ptr noundef %115) #7
  %116 = load ptr, ptr %111, align 4
  tail call void @clk_disable(ptr noundef %116) #7
  tail call void @clk_unprepare(ptr noundef %116) #7
  %117 = getelementptr inbounds %struct.scp_domain, ptr %0, i32 0, i32 4
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %129, label %120

120:                                              ; preds = %110
  %121 = tail call i32 @regulator_disable(ptr noundef nonnull %118) #7
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %120, %85, %45, %14
  %124 = phi i32 [ %20, %14 ], [ -110, %45 ], [ %121, %120 ], [ -110, %85 ]
  %125 = getelementptr inbounds %struct.scp, ptr %3, i32 0, i32 2
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 10
  %128 = load ptr, ptr %127, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %126, ptr noundef nonnull @.str.14, ptr noundef %128) #8
  br label %129

129:                                              ; preds = %123, %120, %110
  %130 = phi i32 [ %124, %123 ], [ 0, %120 ], [ 0, %110 ]
  ret i32 %130
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scpsys_power_on(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.scp_domain, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.scp, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.scp_domain, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.scp_domain_data, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %5, i32 %9
  %11 = getelementptr inbounds %struct.scp_domain, ptr %0, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = tail call i32 @regulator_enable(ptr noundef nonnull %12) #7
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %191, label %17

17:                                               ; preds = %14, %1
  %18 = getelementptr inbounds %struct.scp_domain, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %65, label %21

21:                                               ; preds = %17
  %22 = tail call i32 @clk_prepare(ptr noundef nonnull %19) #7
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %180

24:                                               ; preds = %21
  %25 = tail call i32 @clk_enable(ptr noundef nonnull %19) #7
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %43, label %31

27:                                               ; preds = %60, %50
  %28 = phi i32 [ 2, %60 ], [ 1, %50 ]
  %29 = phi ptr [ %55, %60 ], [ %45, %50 ]
  %30 = phi i32 [ %61, %60 ], [ %51, %50 ]
  tail call void @clk_unprepare(ptr noundef nonnull %29) #7
  br label %32

31:                                               ; preds = %24
  tail call void @clk_unprepare(ptr noundef nonnull %19) #7
  br label %180

32:                                               ; preds = %57, %47, %27
  %33 = phi i32 [ %30, %27 ], [ %58, %57 ], [ %48, %47 ]
  %34 = phi i32 [ %28, %27 ], [ 2, %57 ], [ 1, %47 ]
  %35 = add nsw i32 %34, -1
  %36 = getelementptr ptr, ptr %18, i32 %35
  %37 = load ptr, ptr %36, align 4
  tail call void @clk_disable(ptr noundef %37) #7
  tail call void @clk_unprepare(ptr noundef %37) #7
  %38 = icmp eq i32 %35, 0
  br i1 %38, label %63, label %39

39:                                               ; preds = %32
  %40 = add nsw i32 %34, -2
  %41 = getelementptr ptr, ptr %18, i32 %40
  %42 = load ptr, ptr %41, align 4
  tail call void @clk_disable(ptr noundef %42) #7
  tail call void @clk_unprepare(ptr noundef %42) #7
  br label %63

43:                                               ; preds = %24
  %44 = getelementptr %struct.scp_domain, ptr %0, i32 0, i32 2, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %65, label %47

47:                                               ; preds = %43
  %48 = tail call i32 @clk_prepare(ptr noundef nonnull %45) #7
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %32

50:                                               ; preds = %47
  %51 = tail call i32 @clk_enable(ptr noundef nonnull %45) #7
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %27

53:                                               ; preds = %50
  %54 = getelementptr %struct.scp_domain, ptr %0, i32 0, i32 2, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %65, label %57

57:                                               ; preds = %53
  %58 = tail call i32 @clk_prepare(ptr noundef nonnull %55) #7
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %32

60:                                               ; preds = %57
  %61 = tail call i32 @clk_enable(ptr noundef nonnull %55) #7
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %27

63:                                               ; preds = %39, %32
  %64 = icmp eq i32 %33, 0
  br i1 %64, label %65, label %180

65:                                               ; preds = %63, %60, %53, %43, %17
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !25
  %67 = or i32 %66, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !26
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %67) #7, !srcloc !14
  %68 = or i32 %66, 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %68) #7, !srcloc !14
  %69 = tail call i64 @ktime_get() #7
  %70 = add i64 %69, 1000000000
  br label %71

71:                                               ; preds = %122, %65
  %72 = load ptr, ptr %2, align 8
  %73 = getelementptr inbounds %struct.scp, ptr %72, i32 0, i32 3
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.scp, ptr %72, i32 0, i32 5
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr i8, ptr %74, i32 %76
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !23
  %79 = load ptr, ptr %6, align 8
  %80 = getelementptr inbounds %struct.scp_domain_data, ptr %79, i32 0, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = and i32 %81, %78
  %83 = load ptr, ptr %73, align 4
  %84 = getelementptr inbounds %struct.scp, ptr %72, i32 0, i32 5, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = getelementptr i8, ptr %83, i32 %85
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !24
  %88 = load ptr, ptr %6, align 8
  %89 = getelementptr inbounds %struct.scp_domain_data, ptr %88, i32 0, i32 1
  %90 = load i32, ptr %89, align 4
  %91 = and i32 %90, %87
  %92 = icmp ne i32 %82, 0
  %93 = icmp ne i32 %91, 0
  %94 = select i1 %92, i1 %93, i1 false
  br i1 %94, label %123, label %95

95:                                               ; preds = %71
  %96 = tail call i64 @ktime_get() #7
  %97 = icmp sgt i64 %96, %70
  br i1 %97, label %98, label %122

98:                                               ; preds = %95
  %99 = load ptr, ptr %2, align 8
  %100 = getelementptr inbounds %struct.scp, ptr %99, i32 0, i32 3
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.scp, ptr %99, i32 0, i32 5
  %103 = load i32, ptr %102, align 4
  %104 = getelementptr i8, ptr %101, i32 %103
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %104) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !23
  %106 = load ptr, ptr %6, align 8
  %107 = getelementptr inbounds %struct.scp_domain_data, ptr %106, i32 0, i32 1
  %108 = load i32, ptr %107, align 4
  %109 = and i32 %108, %105
  %110 = load ptr, ptr %100, align 4
  %111 = getelementptr inbounds %struct.scp, ptr %99, i32 0, i32 5, i32 1
  %112 = load i32, ptr %111, align 4
  %113 = getelementptr i8, ptr %110, i32 %112
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %113) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !24
  %115 = load ptr, ptr %6, align 8
  %116 = getelementptr inbounds %struct.scp_domain_data, ptr %115, i32 0, i32 1
  %117 = load i32, ptr %116, align 4
  %118 = and i32 %117, %114
  %119 = icmp ne i32 %109, 0
  %120 = icmp ne i32 %118, 0
  %121 = select i1 %119, i1 %120, i1 false
  br i1 %121, label %123, label %173

122:                                              ; preds = %95
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #7
  br label %71

123:                                              ; preds = %98, %71
  %124 = and i32 %68, -17
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !28
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %124) #7, !srcloc !14
  %125 = and i32 %68, -19
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !29
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %125) #7, !srcloc !14
  %126 = or i32 %125, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %126) #7, !srcloc !14
  %127 = load ptr, ptr %6, align 8
  %128 = getelementptr inbounds %struct.scp_domain_data, ptr %127, i32 0, i32 4
  %129 = load i32, ptr %128, align 4
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !31
  %131 = load ptr, ptr %6, align 8
  %132 = getelementptr inbounds %struct.scp_domain_data, ptr %131, i32 0, i32 3
  %133 = load i32, ptr %132, align 4
  %134 = xor i32 %133, -1
  %135 = and i32 %130, %134
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !32
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %135) #7, !srcloc !14
  %136 = load ptr, ptr %6, align 8
  %137 = getelementptr inbounds %struct.scp_domain_data, ptr %136, i32 0, i32 7
  %138 = load i8, ptr %137, align 4
  %139 = and i8 %138, 2
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %123
  tail call void @usleep_range_state(i32 noundef 12000, i32 noundef 12100, i32 noundef 2) #7
  br label %159

142:                                              ; preds = %123
  %143 = tail call i64 @ktime_get() #7
  %144 = add i64 %143, 1000000000
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !33
  %146 = and i32 %145, %129
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %159, label %148

148:                                              ; preds = %151, %142
  %149 = tail call i64 @ktime_get() #7
  %150 = icmp sgt i64 %149, %144
  br i1 %150, label %155, label %151

151:                                              ; preds = %148
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #7
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !33
  %153 = and i32 %152, %129
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %159, label %148

155:                                              ; preds = %148
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !34
  %157 = and i32 %156, %129
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %173

159:                                              ; preds = %155, %151, %142, %141
  %160 = load ptr, ptr %6, align 8
  %161 = getelementptr inbounds %struct.scp_domain_data, ptr %160, i32 0, i32 5
  %162 = load i32, ptr %161, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %191, label %164

164:                                              ; preds = %159
  %165 = load ptr, ptr %2, align 8
  %166 = getelementptr inbounds %struct.scp, ptr %165, i32 0, i32 4
  %167 = load ptr, ptr %166, align 4
  %168 = getelementptr inbounds %struct.scp, ptr %165, i32 0, i32 6
  %169 = load i8, ptr %168, align 4, !range !8
  %170 = icmp ne i8 %169, 0
  %171 = tail call i32 @mtk_infracfg_clear_bus_protection(ptr noundef %167, i32 noundef %162, i1 noundef zeroext %170) #7
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %191

173:                                              ; preds = %164, %155, %98
  %174 = phi i32 [ %171, %164 ], [ -110, %98 ], [ -110, %155 ]
  %175 = getelementptr %struct.scp_domain, ptr %0, i32 0, i32 2, i32 2
  %176 = load ptr, ptr %175, align 4
  tail call void @clk_disable(ptr noundef %176) #7
  tail call void @clk_unprepare(ptr noundef %176) #7
  %177 = getelementptr %struct.scp_domain, ptr %0, i32 0, i32 2, i32 1
  %178 = load ptr, ptr %177, align 4
  tail call void @clk_disable(ptr noundef %178) #7
  tail call void @clk_unprepare(ptr noundef %178) #7
  %179 = load ptr, ptr %18, align 4
  tail call void @clk_disable(ptr noundef %179) #7
  tail call void @clk_unprepare(ptr noundef %179) #7
  br label %180

180:                                              ; preds = %173, %63, %31, %21
  %181 = phi i32 [ %33, %63 ], [ %22, %21 ], [ %25, %31 ], [ %174, %173 ]
  %182 = load ptr, ptr %11, align 4
  %183 = icmp eq ptr %182, null
  br i1 %183, label %186, label %184

184:                                              ; preds = %180
  %185 = tail call i32 @regulator_disable(ptr noundef nonnull %182) #7
  br label %186

186:                                              ; preds = %184, %180
  %187 = getelementptr inbounds %struct.scp, ptr %3, i32 0, i32 2
  %188 = load ptr, ptr %187, align 4
  %189 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 10
  %190 = load ptr, ptr %189, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %188, ptr noundef nonnull @.str.15, ptr noundef %190) #8
  br label %191

191:                                              ; preds = %186, %164, %159, %14
  %192 = phi i32 [ %181, %186 ], [ %15, %14 ], [ 0, %164 ], [ 0, %159 ]
  ret i32 %192
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_infracfg_set_bus_protection(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_infracfg_clear_bus_protection(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_provider_onecell(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 1746453}
!12 = !{i64 2153628331}
!13 = !{i64 2153628507}
!14 = !{i64 1746035}
!15 = !{i64 2153629993}
!16 = !{i64 2153630300}
!17 = !{i64 2153636687}
!18 = !{i64 2153636945}
!19 = !{i64 2153637323}
!20 = !{i64 2153637701}
!21 = !{i64 2153638079}
!22 = !{i64 2153638457}
!23 = !{i64 2153625215}
!24 = !{i64 2153625621}
!25 = !{i64 2153631789}
!26 = !{i64 2153632047}
!27 = !{i64 2153632425}
!28 = !{i64 2153633722}
!29 = !{i64 2153634100}
!30 = !{i64 2153634478}
!31 = !{i64 2153625931}
!32 = !{i64 2153626107}
!33 = !{i64 2153627713}
!34 = !{i64 2153628020}
