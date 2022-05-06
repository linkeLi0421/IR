; ModuleID = '/llk/IR/drivers/soc/mediatek/mtk-mmsys.c_pt.bc'
source_filename = "../drivers/soc/mediatek/mtk-mmsys.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_mmsys_ddp_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_mmsys_ddp_connect\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_mmsys_ddp_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_mmsys_ddp_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_mmsys_ddp_disconnect\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_mmsys_ddp_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.mtk_mmsys_driver_data = type { ptr, ptr, i32 }
%struct.mtk_mmsys_routes = type { i32, i32, i32, i32, i32 }
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
%struct.mtk_mmsys = type { ptr, ptr, %struct.spinlock, %struct.reset_controller_dev }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__kstrtab_mtk_mmsys_ddp_connect = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_mmsys_ddp_connect = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_mmsys_ddp_connect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_mmsys_ddp_connect to i32), ptr @__kstrtab_mtk_mmsys_ddp_connect, ptr @__kstrtabns_mtk_mmsys_ddp_connect }, section "___ksymtab_gpl+mtk_mmsys_ddp_connect", align 4
@__kstrtab_mtk_mmsys_ddp_disconnect = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_mmsys_ddp_disconnect = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_mmsys_ddp_disconnect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_mmsys_ddp_disconnect to i32), ptr @__kstrtab_mtk_mmsys_ddp_disconnect, ptr @__kstrtabns_mtk_mmsys_ddp_disconnect }, section "___ksymtab_gpl+mtk_mmsys_ddp_disconnect", align 4
@__initcall__kmod_mtk_mmsys__162_264_mtk_mmsys_drv_init6 = internal global ptr @mtk_mmsys_drv_init, section ".initcall6.init", align 4
@mtk_mmsys_drv = internal global %struct.platform_driver { ptr @mtk_mmsys_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_match_mtk_mmsys, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [10 x i8] c"mtk-mmsys\00", align 1
@of_match_mtk_mmsys = internal constant [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2701-mmsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt2701_mmsys_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2712-mmsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt2712_mmsys_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6779-mmsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt6779_mmsys_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6797-mmsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt6797_mmsys_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8167-mmsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8167_mmsys_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-mmsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8173_mmsys_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183-mmsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8183_mmsys_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8192-mmsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8192_mmsys_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8365-mmsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8365_mmsys_driver_data }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to ioremap mmsys registers: %d\0A\00", align 1
@mtk_mmsys_reset_ops = internal constant %struct.reset_control_ops { ptr @mtk_mmsys_reset, ptr @mtk_mmsys_reset_assert, ptr @mtk_mmsys_reset_deassert, ptr null }, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Couldn't register mmsys reset controller: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"mediatek-drm\00", align 1
@mt2701_mmsys_driver_data = internal constant %struct.mtk_mmsys_driver_data { ptr @.str.4, ptr @mmsys_default_routing_table, i32 41 }, align 4
@mt2712_mmsys_driver_data = internal constant %struct.mtk_mmsys_driver_data { ptr @.str.5, ptr @mmsys_default_routing_table, i32 41 }, align 4
@mt6779_mmsys_driver_data = internal constant %struct.mtk_mmsys_driver_data { ptr @.str.6, ptr null, i32 0 }, align 4
@mt6797_mmsys_driver_data = internal constant %struct.mtk_mmsys_driver_data { ptr @.str.7, ptr null, i32 0 }, align 4
@mt8167_mmsys_driver_data = internal constant %struct.mtk_mmsys_driver_data { ptr @.str.8, ptr @mt8167_mmsys_routing_table, i32 5 }, align 4
@mt8173_mmsys_driver_data = internal constant %struct.mtk_mmsys_driver_data { ptr @.str.9, ptr @mmsys_default_routing_table, i32 41 }, align 4
@mt8183_mmsys_driver_data = internal constant %struct.mtk_mmsys_driver_data { ptr @.str.10, ptr @mmsys_mt8183_routing_table, i32 7 }, align 4
@mt8192_mmsys_driver_data = internal constant %struct.mtk_mmsys_driver_data { ptr @.str.11, ptr @mmsys_mt8192_routing_table, i32 10 }, align 4
@mt8365_mmsys_driver_data = internal constant %struct.mtk_mmsys_driver_data { ptr @.str.12, ptr @mt8365_mmsys_routing_table, i32 7 }, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"clk-mt2701-mm\00", align 1
@mmsys_default_routing_table = internal constant [41 x %struct.mtk_mmsys_routes] [%struct.mtk_mmsys_routes { i32 2, i32 9, i32 76, i32 15, i32 8 }, %struct.mtk_mmsys_routes { i32 2, i32 9, i32 80, i32 1, i32 0 }, %struct.mtk_mmsys_routes { i32 2, i32 7, i32 76, i32 15, i32 2 }, %struct.mtk_mmsys_routes { i32 2, i32 7, i32 80, i32 1, i32 1 }, %struct.mtk_mmsys_routes { i32 2, i32 7, i32 100, i32 1, i32 0 }, %struct.mtk_mmsys_routes { i32 13, i32 26, i32 76, i32 1, i32 1 }, %struct.mtk_mmsys_routes { i32 14, i32 25, i32 72, i32 1, i32 1 }, %struct.mtk_mmsys_routes { i32 15, i32 26, i32 72, i32 65536, i32 65536 }, %struct.mtk_mmsys_routes { i32 16, i32 4, i32 64, i32 1, i32 1 }, %struct.mtk_mmsys_routes { i32 16, i32 4, i32 132, i32 1, i32 1 }, %struct.mtk_mmsys_routes { i32 16, i32 25, i32 48, i32 1, i32 1 }, %struct.mtk_mmsys_routes { i32 20, i32 5, i32 68, i32 1, i32 1 }, %struct.mtk_mmsys_routes { i32 20, i32 5, i32 136, i32 1, i32 1 }, %struct.mtk_mmsys_routes { i32 25, i32 7, i32 196, i32 7, i32 2 }, %struct.mtk_mmsys_routes { i32 25, i32 8, i32 196, i32 7, i32 3 }, %struct.mtk_mmsys_routes { i32 25, i32 10, i32 196, i32 7, i32 1 }, %struct.mtk_mmsys_routes { i32 25, i32 11, i32 196, i32 7, i32 4 }, %struct.mtk_mmsys_routes { i32 25, i32 12, i32 196, i32 7, i32 5 }, %struct.mtk_mmsys_routes { i32 26, i32 7, i32 200, i32 7, i32 2 }, %struct.mtk_mmsys_routes { i32 26, i32 7, i32 172, i32 3, i32 1 }, %struct.mtk_mmsys_routes { i32 26, i32 8, i32 200, i32 7, i32 3 }, %struct.mtk_mmsys_routes { i32 26, i32 8, i32 172, i32 768, i32 256 }, %struct.mtk_mmsys_routes { i32 26, i32 9, i32 164, i32 7, i32 1 }, %struct.mtk_mmsys_routes { i32 26, i32 10, i32 200, i32 7, i32 1 }, %struct.mtk_mmsys_routes { i32 26, i32 10, i32 168, i32 7, i32 1 }, %struct.mtk_mmsys_routes { i32 26, i32 11, i32 200, i32 7, i32 4 }, %struct.mtk_mmsys_routes { i32 26, i32 11, i32 164, i32 458752, i32 65536 }, %struct.mtk_mmsys_routes { i32 26, i32 12, i32 200, i32 7, i32 5 }, %struct.mtk_mmsys_routes { i32 26, i32 12, i32 168, i32 458752, i32 65536 }, %struct.mtk_mmsys_routes { i32 27, i32 7, i32 184, i32 7, i32 2 }, %struct.mtk_mmsys_routes { i32 27, i32 7, i32 172, i32 3, i32 3 }, %struct.mtk_mmsys_routes { i32 27, i32 8, i32 184, i32 7, i32 3 }, %struct.mtk_mmsys_routes { i32 27, i32 8, i32 172, i32 768, i32 768 }, %struct.mtk_mmsys_routes { i32 27, i32 9, i32 164, i32 7, i32 4 }, %struct.mtk_mmsys_routes { i32 27, i32 10, i32 184, i32 7, i32 1 }, %struct.mtk_mmsys_routes { i32 27, i32 10, i32 168, i32 7, i32 4 }, %struct.mtk_mmsys_routes { i32 27, i32 11, i32 184, i32 7, i32 4 }, %struct.mtk_mmsys_routes { i32 27, i32 11, i32 164, i32 458752, i32 262144 }, %struct.mtk_mmsys_routes { i32 27, i32 12, i32 184, i32 7, i32 5 }, %struct.mtk_mmsys_routes { i32 27, i32 12, i32 168, i32 458752, i32 262144 }, %struct.mtk_mmsys_routes { i32 29, i32 9, i32 80, i32 1, i32 1 }], align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"clk-mt2712-mm\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"clk-mt6779-mm\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"clk-mt6797-mm\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"clk-mt8167-mm\00", align 1
@mt8167_mmsys_routing_table = internal constant [5 x %struct.mtk_mmsys_routes] [%struct.mtk_mmsys_routes { i32 16, i32 4, i32 48, i32 1, i32 0 }, %struct.mtk_mmsys_routes { i32 6, i32 25, i32 56, i32 1, i32 0 }, %struct.mtk_mmsys_routes { i32 16, i32 4, i32 88, i32 1, i32 0 }, %struct.mtk_mmsys_routes { i32 25, i32 9, i32 100, i32 1, i32 0 }, %struct.mtk_mmsys_routes { i32 25, i32 9, i32 108, i32 2, i32 0 }], align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"clk-mt8173-mm\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"clk-mt8183-mm\00", align 1
@mmsys_mt8183_routing_table = internal constant [7 x %struct.mtk_mmsys_routes] [%struct.mtk_mmsys_routes { i32 16, i32 17, i32 3840, i32 16, i32 16 }, %struct.mtk_mmsys_routes { i32 17, i32 25, i32 3844, i32 1, i32 1 }, %struct.mtk_mmsys_routes { i32 18, i32 26, i32 3848, i32 16, i32 16 }, %struct.mtk_mmsys_routes { i32 6, i32 9, i32 3852, i32 1, i32 1 }, %struct.mtk_mmsys_routes { i32 17, i32 25, i32 3876, i32 1, i32 1 }, %struct.mtk_mmsys_routes { i32 26, i32 7, i32 3888, i32 2, i32 2 }, %struct.mtk_mmsys_routes { i32 25, i32 4, i32 3920, i32 1, i32 1 }], align 4
@.str.11 = private unnamed_addr constant [14 x i8] c"clk-mt8192-mm\00", align 1
@mmsys_mt8192_routing_table = internal constant [10 x %struct.mtk_mmsys_routes] [%struct.mtk_mmsys_routes { i32 17, i32 25, i32 3864, i32 1, i32 1 }, %struct.mtk_mmsys_routes { i32 19, i32 28, i32 3916, i32 1, i32 1 }, %struct.mtk_mmsys_routes { i32 6, i32 9, i32 3900, i32 1, i32 1 }, %struct.mtk_mmsys_routes { i32 17, i32 25, i32 3884, i32 3, i32 3 }, %struct.mtk_mmsys_routes { i32 3, i32 0, i32 3896, i32 1, i32 1 }, %struct.mtk_mmsys_routes { i32 6, i32 9, i32 3904, i32 1, i32 1 }, %struct.mtk_mmsys_routes { i32 25, i32 4, i32 3888, i32 1, i32 1 }, %struct.mtk_mmsys_routes { i32 3, i32 0, i32 3892, i32 1, i32 1 }, %struct.mtk_mmsys_routes { i32 16, i32 17, i32 3844, i32 2, i32 2 }, %struct.mtk_mmsys_routes { i32 17, i32 25, i32 3844, i32 4, i32 4 }], align 4
@.str.12 = private unnamed_addr constant [14 x i8] c"clk-mt8365-mm\00", align 1
@mt8365_mmsys_routing_table = internal constant [7 x %struct.mtk_mmsys_routes] [%struct.mtk_mmsys_routes { i32 16, i32 25, i32 3900, i32 1, i32 1 }, %struct.mtk_mmsys_routes { i32 16, i32 25, i32 3924, i32 0, i32 0 }, %struct.mtk_mmsys_routes { i32 25, i32 4, i32 3916, i32 1, i32 1 }, %struct.mtk_mmsys_routes { i32 4, i32 3, i32 3940, i32 0, i32 0 }, %struct.mtk_mmsys_routes { i32 6, i32 9, i32 3920, i32 1, i32 1 }, %struct.mtk_mmsys_routes { i32 6, i32 9, i32 3944, i32 1, i32 1 }, %struct.mtk_mmsys_routes { i32 25, i32 4, i32 3936, i32 0, i32 0 }], align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__initcall__kmod_mtk_mmsys__162_264_mtk_mmsys_drv_init6, ptr @__ksymtab_mtk_mmsys_ddp_connect, ptr @__ksymtab_mtk_mmsys_ddp_disconnect], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mtk_mmsys_ddp_connect(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mtk_mmsys, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mtk_mmsys_driver_data, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.mtk_mmsys_driver_data, ptr %7, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %46, label %13

13:                                               ; preds = %40, %3
  %14 = phi ptr [ %41, %40 ], [ %7, %3 ]
  %15 = phi i32 [ %42, %40 ], [ 0, %3 ]
  %16 = getelementptr %struct.mtk_mmsys_routes, ptr %9, i32 %15
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, %1
  br i1 %18, label %19, label %40

19:                                               ; preds = %13
  %20 = getelementptr %struct.mtk_mmsys_routes, ptr %9, i32 %15, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, %2
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = load ptr, ptr %5, align 4
  %25 = getelementptr %struct.mtk_mmsys_routes, ptr %9, i32 %15, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr i8, ptr %24, i32 %26
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #6, !srcloc !8
  %29 = getelementptr %struct.mtk_mmsys_routes, ptr %9, i32 %15, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %28, %31
  %33 = getelementptr %struct.mtk_mmsys_routes, ptr %9, i32 %15, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = or i32 %32, %34
  %36 = load ptr, ptr %5, align 4
  %37 = load i32, ptr %25, align 4
  %38 = getelementptr i8, ptr %36, i32 %37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %35) #6, !srcloc !9
  %39 = load ptr, ptr %6, align 4
  br label %40

40:                                               ; preds = %23, %19, %13
  %41 = phi ptr [ %14, %13 ], [ %14, %19 ], [ %39, %23 ]
  %42 = add nuw i32 %15, 1
  %43 = getelementptr inbounds %struct.mtk_mmsys_driver_data, ptr %41, i32 0, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = icmp ult i32 %42, %44
  br i1 %45, label %13, label %46

46:                                               ; preds = %40, %3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mtk_mmsys_ddp_disconnect(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mtk_mmsys, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mtk_mmsys_driver_data, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.mtk_mmsys_driver_data, ptr %7, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %43, label %13

13:                                               ; preds = %37, %3
  %14 = phi ptr [ %38, %37 ], [ %7, %3 ]
  %15 = phi i32 [ %39, %37 ], [ 0, %3 ]
  %16 = getelementptr %struct.mtk_mmsys_routes, ptr %9, i32 %15
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, %1
  br i1 %18, label %19, label %37

19:                                               ; preds = %13
  %20 = getelementptr %struct.mtk_mmsys_routes, ptr %9, i32 %15, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, %2
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = load ptr, ptr %5, align 4
  %25 = getelementptr %struct.mtk_mmsys_routes, ptr %9, i32 %15, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr i8, ptr %24, i32 %26
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #6, !srcloc !8
  %29 = getelementptr %struct.mtk_mmsys_routes, ptr %9, i32 %15, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %28, %31
  %33 = load ptr, ptr %5, align 4
  %34 = load i32, ptr %25, align 4
  %35 = getelementptr i8, ptr %33, i32 %34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %32) #6, !srcloc !9
  %36 = load ptr, ptr %6, align 4
  br label %37

37:                                               ; preds = %23, %19, %13
  %38 = phi ptr [ %14, %13 ], [ %14, %19 ], [ %36, %23 ]
  %39 = add nuw i32 %15, 1
  %40 = getelementptr inbounds %struct.mtk_mmsys_driver_data, ptr %38, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = icmp ult i32 %39, %41
  br i1 %42, label %13, label %43

43:                                               ; preds = %37, %3
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mtk_mmsys_drv_init() #2 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @mtk_mmsys_drv, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_mmsys_probe(ptr noundef %0) #0 {
  %2 = alloca %struct.platform_device_info, align 8
  %3 = alloca %struct.platform_device_info, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 56, i32 noundef 3520) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %47, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #6
  store ptr %8, ptr %5, align 4
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = ptrtoint ptr %8 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1, i32 noundef %11) #7
  br label %47

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.mtk_mmsys, ptr %5, i32 0, i32 2
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.mtk_mmsys, ptr %5, i32 0, i32 3
  %15 = getelementptr inbounds %struct.mtk_mmsys, ptr %5, i32 0, i32 3, i32 1
  store ptr null, ptr %15, align 4
  %16 = getelementptr inbounds %struct.mtk_mmsys, ptr %5, i32 0, i32 3, i32 8
  store i32 32, ptr %16, align 4
  store ptr @mtk_mmsys_reset_ops, ptr %14, align 4
  %17 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.mtk_mmsys, ptr %5, i32 0, i32 3, i32 5
  store ptr %18, ptr %19, align 4
  %20 = tail call i32 @devm_reset_controller_register(ptr noundef %4, ptr noundef %14) #6
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2, i32 noundef %20) #7
  br label %47

23:                                               ; preds = %12
  %24 = tail call ptr @of_device_get_match_data(ptr noundef %4) #6
  %25 = getelementptr inbounds %struct.mtk_mmsys, ptr %5, i32 0, i32 1
  store ptr %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %26, align 8
  %27 = load ptr, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #6
  %28 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %28, i8 0, i32 48, i1 false) #6, !annotation !10
  store ptr %4, ptr %3, align 8
  %29 = getelementptr inbounds %struct.platform_device_info, ptr %3, i32 0, i32 1
  store ptr null, ptr %29, align 4
  %30 = getelementptr inbounds %struct.platform_device_info, ptr %3, i32 0, i32 3
  store ptr %27, ptr %30, align 4
  %31 = getelementptr inbounds %struct.platform_device_info, ptr %3, i32 0, i32 4
  store i32 -2, ptr %31, align 8
  %32 = getelementptr inbounds %struct.platform_device_info, ptr %3, i32 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %32, i8 0, i64 16, i1 false) #6
  %33 = call ptr @platform_device_register_full(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #6
  %34 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %37

35:                                               ; preds = %23
  %36 = ptrtoint ptr %33 to i32
  br label %47

37:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #6
  %38 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %38, i8 0, i32 48, i1 false) #6, !annotation !10
  store ptr %4, ptr %2, align 8
  %39 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 1
  store ptr null, ptr %39, align 4
  %40 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 3
  store ptr @.str.3, ptr %40, align 4
  %41 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 4
  store i32 -2, ptr %41, align 8
  %42 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %42, i8 0, i64 16, i1 false) #6
  %43 = call ptr @platform_device_register_full(ptr noundef nonnull %2) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #6
  %44 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  call void @platform_device_unregister(ptr noundef %33) #6
  %46 = ptrtoint ptr %43 to i32
  br label %47

47:                                               ; preds = %45, %37, %35, %22, %10, %1
  %48 = phi i32 [ %11, %10 ], [ %20, %22 ], [ %36, %35 ], [ %46, %45 ], [ -12, %1 ], [ 0, %37 ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_reset_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_mmsys_reset(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -12
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #6
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr i8, ptr %6, i32 320
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !8
  %9 = shl nuw i32 1, %1
  %10 = xor i32 %9, -1
  %11 = and i32 %8, %10
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr i8, ptr %12, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #6, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #6
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #6
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #6
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr i8, ptr %15, i32 320
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #6, !srcloc !8
  %18 = or i32 %17, %9
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr i8, ptr %19, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #6, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %14) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_mmsys_reset_assert(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -12
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #6
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr i8, ptr %6, i32 320
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !8
  %9 = shl nuw i32 1, %1
  %10 = xor i32 %9, -1
  %11 = and i32 %8, %10
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr i8, ptr %12, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #6, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_mmsys_reset_deassert(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -12
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #6
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr i8, ptr %6, i32 320
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !8
  %9 = shl nuw i32 1, %1
  %10 = or i32 %8, %9
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr i8, ptr %11, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #6, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i64 3619317}
!9 = !{i64 3618899}
!10 = !{!"auto-init"}
