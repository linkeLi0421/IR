; ModuleID = '/llk/IR/drivers/soc/mediatek/mtk-mutex.c_pt.bc'
source_filename = "../drivers/soc/mediatek/mtk-mutex.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_mutex_get:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_mutex_get\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_mutex_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_mutex_put:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_mutex_put\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_mutex_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_mutex_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_mutex_prepare\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_mutex_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_mutex_unprepare:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_mutex_unprepare\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_mutex_unprepare:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_mutex_add_comp:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_mutex_add_comp\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_mutex_add_comp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_mutex_remove_comp:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_mutex_remove_comp\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_mutex_remove_comp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_mutex_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_mutex_enable\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_mutex_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_mutex_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_mutex_disable\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_mutex_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_mutex_acquire:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_mutex_acquire\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_mutex_acquire:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_mutex_release:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_mutex_release\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_mutex_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mtk_mutex_data = type { ptr, ptr, i32, i32, i8 }
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
%struct.mtk_mutex_ctx = type { ptr, ptr, ptr, [10 x %struct.mtk_mutex], ptr }
%struct.mtk_mutex = type { i32, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__kstrtab_mtk_mutex_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_mutex_get = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_mutex_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_mutex_get to i32), ptr @__kstrtab_mtk_mutex_get, ptr @__kstrtabns_mtk_mutex_get }, section "___ksymtab_gpl+mtk_mutex_get", align 4
@.str = private unnamed_addr constant [33 x i8] c"drivers/soc/mediatek/mtk-mutex.c\00", align 1
@__kstrtab_mtk_mutex_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_mutex_put = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_mutex_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_mutex_put to i32), ptr @__kstrtab_mtk_mutex_put, ptr @__kstrtabns_mtk_mutex_put }, section "___ksymtab_gpl+mtk_mutex_put", align 4
@__kstrtab_mtk_mutex_prepare = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_mutex_prepare = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_mutex_prepare = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_mutex_prepare to i32), ptr @__kstrtab_mtk_mutex_prepare, ptr @__kstrtabns_mtk_mutex_prepare }, section "___ksymtab_gpl+mtk_mutex_prepare", align 4
@__kstrtab_mtk_mutex_unprepare = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_mutex_unprepare = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_mutex_unprepare = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_mutex_unprepare to i32), ptr @__kstrtab_mtk_mutex_unprepare, ptr @__kstrtabns_mtk_mutex_unprepare }, section "___ksymtab_gpl+mtk_mutex_unprepare", align 4
@__kstrtab_mtk_mutex_add_comp = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_mutex_add_comp = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_mutex_add_comp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_mutex_add_comp to i32), ptr @__kstrtab_mtk_mutex_add_comp, ptr @__kstrtabns_mtk_mutex_add_comp }, section "___ksymtab_gpl+mtk_mutex_add_comp", align 4
@__kstrtab_mtk_mutex_remove_comp = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_mutex_remove_comp = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_mutex_remove_comp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_mutex_remove_comp to i32), ptr @__kstrtab_mtk_mutex_remove_comp, ptr @__kstrtabns_mtk_mutex_remove_comp }, section "___ksymtab_gpl+mtk_mutex_remove_comp", align 4
@__kstrtab_mtk_mutex_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_mutex_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_mutex_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_mutex_enable to i32), ptr @__kstrtab_mtk_mutex_enable, ptr @__kstrtabns_mtk_mutex_enable }, section "___ksymtab_gpl+mtk_mutex_enable", align 4
@__kstrtab_mtk_mutex_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_mutex_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_mutex_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_mutex_disable to i32), ptr @__kstrtab_mtk_mutex_disable, ptr @__kstrtabns_mtk_mutex_disable }, section "___ksymtab_gpl+mtk_mutex_disable", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"\013could not acquire mutex %d\0A\00", align 1
@__kstrtab_mtk_mutex_acquire = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_mutex_acquire = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_mutex_acquire = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_mutex_acquire to i32), ptr @__kstrtab_mtk_mutex_acquire, ptr @__kstrtabns_mtk_mutex_acquire }, section "___ksymtab_gpl+mtk_mutex_acquire", align 4
@__kstrtab_mtk_mutex_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_mutex_release = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_mutex_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_mutex_release to i32), ptr @__kstrtab_mtk_mutex_release, ptr @__kstrtabns_mtk_mutex_release }, section "___ksymtab_gpl+mtk_mutex_release", align 4
@__initcall__kmod_mtk_mutex__162_559_mtk_mutex_driver_init6 = internal global ptr @mtk_mutex_driver_init, section ".initcall6.init", align 4
@mtk_mutex_driver = internal global %struct.platform_driver { ptr @mtk_mutex_probe, ptr @mtk_mutex_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mutex_driver_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"mediatek-mutex\00", align 1
@mutex_driver_dt_match = internal constant [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2701-disp-mutex\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt2701_mutex_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2712-disp-mutex\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt2712_mutex_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8167-disp-mutex\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8167_mutex_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-disp-mutex\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8173_mutex_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183-disp-mutex\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8183_mutex_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8192-disp-mutex\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8192_mutex_driver_data }, %struct.of_device_id zeroinitializer], align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Failed to get clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Failed to map mutex registers\0A\00", align 1
@mt2701_mutex_driver_data = internal constant %struct.mtk_mutex_data { ptr @mt2701_mutex_mod, ptr @mt2712_mutex_sof, i32 44, i32 48, i8 0 }, align 4
@mt2712_mutex_driver_data = internal constant %struct.mtk_mutex_data { ptr @mt2712_mutex_mod, ptr @mt2712_mutex_sof, i32 44, i32 48, i8 0 }, align 4
@mt8167_mutex_driver_data = internal constant %struct.mtk_mutex_data { ptr @mt8167_mutex_mod, ptr @mt8167_mutex_sof, i32 44, i32 48, i8 1 }, align 4
@mt8173_mutex_driver_data = internal constant %struct.mtk_mutex_data { ptr @mt8173_mutex_mod, ptr @mt2712_mutex_sof, i32 44, i32 48, i8 0 }, align 4
@mt8183_mutex_driver_data = internal constant %struct.mtk_mutex_data { ptr @mt8183_mutex_mod, ptr @mt8183_mutex_sof, i32 48, i32 44, i8 1 }, align 4
@mt8192_mutex_driver_data = internal constant %struct.mtk_mutex_data { ptr @mt8192_mutex_mod, ptr @mt8183_mutex_sof, i32 48, i32 44, i8 0 }, align 4
@mt2701_mutex_mod = internal constant [32 x i32] [i32 0, i32 0, i32 9, i32 0, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 10, i32 12, i32 0, i32 0, i32 0, i32 6, i32 0], align 4
@mt2712_mutex_sof = internal constant [7 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6], align 4
@mt2712_mutex_mod = internal constant [32 x i32] [i32 20, i32 33, i32 0, i32 0, i32 18, i32 19, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 25, i32 34, i32 11, i32 0, i32 0, i32 0, i32 12, i32 0, i32 23, i32 24, i32 10, i32 13, i32 14, i32 15, i32 0, i32 22, i32 16, i32 17], align 4
@mt8167_mutex_mod = internal constant [32 x i32] [i32 13, i32 0, i32 0, i32 11, i32 12, i32 0, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 14, i32 0, i32 0, i32 6, i32 0, i32 0, i32 0, i32 7, i32 0, i32 1, i32 0, i32 0, i32 8, i32 9, i32 0, i32 0, i32 16, i32 10, i32 0], align 4
@mt8167_mutex_sof = internal constant [7 x i32] [i32 0, i32 1, i32 0, i32 2, i32 3, i32 0, i32 0], align 4
@mt8173_mutex_mod = internal constant [32 x i32] [i32 20, i32 0, i32 0, i32 0, i32 18, i32 19, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 21, i32 25, i32 0, i32 11, i32 0, i32 0, i32 0, i32 12, i32 0, i32 23, i32 24, i32 0, i32 13, i32 14, i32 15, i32 0, i32 22, i32 16, i32 17], align 4
@mt8183_mutex_mod = internal constant [32 x i32] [i32 15, i32 0, i32 0, i32 14, i32 13, i32 0, i32 17, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 0, i32 0, i32 9, i32 10, i32 11, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 12, i32 0], align 4
@mt8183_mutex_sof = internal constant [7 x i32] [i32 0, i32 65, i32 0, i32 130, i32 0, i32 0, i32 0], align 4
@mt8192_mutex_mod = internal constant [32 x i32] [i32 6, i32 0, i32 0, i32 5, i32 4, i32 0, i32 9, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0, i32 1, i32 0, i32 16, i32 0, i32 8, i32 0, i32 0, i32 0, i32 2, i32 0, i32 0, i32 17, i32 0, i32 0, i32 0], align 4
@llvm.compiler.used = appending global [11 x ptr] [ptr @__initcall__kmod_mtk_mutex__162_559_mtk_mutex_driver_init6, ptr @__ksymtab_mtk_mutex_acquire, ptr @__ksymtab_mtk_mutex_add_comp, ptr @__ksymtab_mtk_mutex_disable, ptr @__ksymtab_mtk_mutex_enable, ptr @__ksymtab_mtk_mutex_get, ptr @__ksymtab_mtk_mutex_prepare, ptr @__ksymtab_mtk_mutex_put, ptr @__ksymtab_mtk_mutex_release, ptr @__ksymtab_mtk_mutex_remove_comp, ptr @__ksymtab_mtk_mutex_unprepare], section "llvm.metadata"
@switch.table.mtk_mutex_add_comp = private unnamed_addr constant [6 x i32] [i32 3, i32 4, i32 1, i32 1, i32 5, i32 6], align 4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mtk_mutex_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr %struct.mtk_mutex_ctx, ptr %3, i32 0, i32 3, i32 0, i32 1
  %5 = load i8, ptr %4, align 4, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %43, %39, %35, %31, %27, %23, %19, %15, %11, %1
  %8 = phi i32 [ 0, %1 ], [ 1, %11 ], [ 2, %15 ], [ 3, %19 ], [ 4, %23 ], [ 5, %27 ], [ 6, %31 ], [ 7, %35 ], [ 8, %39 ], [ 9, %43 ]
  %9 = phi ptr [ %4, %1 ], [ %12, %11 ], [ %16, %15 ], [ %20, %19 ], [ %24, %23 ], [ %28, %27 ], [ %32, %31 ], [ %36, %35 ], [ %40, %39 ], [ %44, %43 ]
  %10 = getelementptr %struct.mtk_mutex_ctx, ptr %3, i32 0, i32 3, i32 %8
  store i8 1, ptr %9, align 4
  br label %47

11:                                               ; preds = %1
  %12 = getelementptr %struct.mtk_mutex_ctx, ptr %3, i32 0, i32 3, i32 1, i32 1
  %13 = load i8, ptr %12, align 4, !range !8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %7, label %15

15:                                               ; preds = %11
  %16 = getelementptr %struct.mtk_mutex_ctx, ptr %3, i32 0, i32 3, i32 2, i32 1
  %17 = load i8, ptr %16, align 4, !range !8
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %7, label %19

19:                                               ; preds = %15
  %20 = getelementptr %struct.mtk_mutex_ctx, ptr %3, i32 0, i32 3, i32 3, i32 1
  %21 = load i8, ptr %20, align 4, !range !8
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %7, label %23

23:                                               ; preds = %19
  %24 = getelementptr %struct.mtk_mutex_ctx, ptr %3, i32 0, i32 3, i32 4, i32 1
  %25 = load i8, ptr %24, align 4, !range !8
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %7, label %27

27:                                               ; preds = %23
  %28 = getelementptr %struct.mtk_mutex_ctx, ptr %3, i32 0, i32 3, i32 5, i32 1
  %29 = load i8, ptr %28, align 4, !range !8
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %7, label %31

31:                                               ; preds = %27
  %32 = getelementptr %struct.mtk_mutex_ctx, ptr %3, i32 0, i32 3, i32 6, i32 1
  %33 = load i8, ptr %32, align 4, !range !8
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %7, label %35

35:                                               ; preds = %31
  %36 = getelementptr %struct.mtk_mutex_ctx, ptr %3, i32 0, i32 3, i32 7, i32 1
  %37 = load i8, ptr %36, align 4, !range !8
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %7, label %39

39:                                               ; preds = %35
  %40 = getelementptr %struct.mtk_mutex_ctx, ptr %3, i32 0, i32 3, i32 8, i32 1
  %41 = load i8, ptr %40, align 4, !range !8
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %7, label %43

43:                                               ; preds = %39
  %44 = getelementptr %struct.mtk_mutex_ctx, ptr %3, i32 0, i32 3, i32 9, i32 1
  %45 = load i8, ptr %44, align 4, !range !8
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %7, label %47

47:                                               ; preds = %43, %7
  %48 = phi ptr [ %10, %7 ], [ inttoptr (i32 -16 to ptr), %43 ]
  ret ptr %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mtk_mutex_put(ptr noundef %0) #1 {
  %2 = load i32, ptr %0, align 4
  %3 = mul i32 %2, -8
  %4 = add i32 %3, -12
  %5 = getelementptr i8, ptr %0, i32 %4
  %6 = getelementptr inbounds %struct.mtk_mutex_ctx, ptr %5, i32 0, i32 3
  %7 = getelementptr [10 x %struct.mtk_mutex], ptr %6, i32 0, i32 %2
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %10, label %9, !prof !9

9:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 331, i32 noundef 9, ptr noundef null) #6
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr inbounds %struct.mtk_mutex, ptr %0, i32 0, i32 1
  store i8 0, ptr %11, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtk_mutex_prepare(ptr nocapture noundef readonly %0) #1 {
  %2 = load i32, ptr %0, align 4
  %3 = mul i32 %2, -8
  %4 = add i32 %3, -12
  %5 = getelementptr i8, ptr %0, i32 %4
  %6 = getelementptr inbounds %struct.mtk_mutex_ctx, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @clk_prepare(ptr noundef %7) #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = tail call i32 @clk_enable(ptr noundef %7) #6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @clk_unprepare(ptr noundef %7) #6
  br label %14

14:                                               ; preds = %13, %10, %1
  %15 = phi i32 [ %8, %1 ], [ %11, %13 ], [ 0, %10 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mtk_mutex_unprepare(ptr nocapture noundef readonly %0) #1 {
  %2 = load i32, ptr %0, align 4
  %3 = mul i32 %2, -8
  %4 = add i32 %3, -12
  %5 = getelementptr i8, ptr %0, i32 %4
  %6 = getelementptr inbounds %struct.mtk_mutex_ctx, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mtk_mutex_add_comp(ptr noundef readonly %0, i32 noundef %1) #1 {
  %3 = load i32, ptr %0, align 4
  %4 = mul i32 %3, -8
  %5 = add i32 %4, -12
  %6 = getelementptr i8, ptr %0, i32 %5
  %7 = getelementptr inbounds %struct.mtk_mutex_ctx, ptr %6, i32 0, i32 3
  %8 = getelementptr [10 x %struct.mtk_mutex], ptr %7, i32 0, i32 %3
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %11, label %10, !prof !9

10:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 362, i32 noundef 9, ptr noundef null) #6
  br label %11

11:                                               ; preds = %10, %2
  %12 = add i32 %1, -7
  %13 = icmp ult i32 %12, 6
  br i1 %13, label %56, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.mtk_mutex_ctx, ptr %6, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i32, ptr %17, i32 %1
  %19 = load i32, ptr %18, align 4
  %20 = icmp ult i32 %19, 32
  br i1 %20, label %21, label %39

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.mtk_mutex_data, ptr %16, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = load i32, ptr %0, align 4
  %25 = shl i32 %24, 5
  %26 = add i32 %25, %23
  %27 = getelementptr inbounds %struct.mtk_mutex_ctx, ptr %6, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 %26
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #6, !srcloc !10
  %31 = load ptr, ptr %15, align 4
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i32, ptr %32, i32 %1
  %34 = load i32, ptr %33, align 4
  %35 = shl nuw i32 1, %34
  %36 = or i32 %35, %30
  %37 = load ptr, ptr %27, align 4
  %38 = getelementptr i8, ptr %37, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #6, !srcloc !11
  br label %73

39:                                               ; preds = %14
  %40 = load i32, ptr %0, align 4
  %41 = shl i32 %40, 5
  %42 = add i32 %41, 52
  %43 = getelementptr inbounds %struct.mtk_mutex_ctx, ptr %6, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr i8, ptr %44, i32 %42
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #6, !srcloc !10
  %47 = load ptr, ptr %15, align 4
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr i32, ptr %48, i32 %1
  %50 = load i32, ptr %49, align 4
  %51 = add i32 %50, -32
  %52 = shl nuw i32 1, %51
  %53 = or i32 %52, %46
  %54 = load ptr, ptr %43, align 4
  %55 = getelementptr i8, ptr %54, i32 %42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #6, !srcloc !11
  br label %73

56:                                               ; preds = %11
  %57 = getelementptr inbounds [6 x i32], ptr @switch.table.mtk_mutex_add_comp, i32 0, i32 %12
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.mtk_mutex_ctx, ptr %6, i32 0, i32 4
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.mtk_mutex_data, ptr %60, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr i32, ptr %62, i32 %58
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr inbounds %struct.mtk_mutex_ctx, ptr %6, i32 0, i32 2
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.mtk_mutex_data, ptr %60, i32 0, i32 3
  %68 = load i32, ptr %67, align 4
  %69 = load i32, ptr %0, align 4
  %70 = shl i32 %69, 5
  %71 = add i32 %70, %68
  %72 = getelementptr i8, ptr %66, i32 %71
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %64) #6, !srcloc !11
  br label %73

73:                                               ; preds = %56, %39, %21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mtk_mutex_remove_comp(ptr noundef readonly %0, i32 noundef %1) #1 {
  %3 = load i32, ptr %0, align 4
  %4 = mul i32 %3, -8
  %5 = add i32 %4, -12
  %6 = getelementptr i8, ptr %0, i32 %5
  %7 = getelementptr inbounds %struct.mtk_mutex_ctx, ptr %6, i32 0, i32 3
  %8 = getelementptr [10 x %struct.mtk_mutex], ptr %7, i32 0, i32 %3
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %11, label %10, !prof !9

10:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 413, i32 noundef 9, ptr noundef null) #6
  br label %11

11:                                               ; preds = %10, %2
  %12 = add i32 %1, -7
  %13 = icmp ult i32 %12, 6
  br i1 %13, label %14, label %25

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.mtk_mutex_ctx, ptr %6, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.mtk_mutex_ctx, ptr %6, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.mtk_mutex_data, ptr %18, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = load i32, ptr %0, align 4
  %22 = shl i32 %21, 5
  %23 = add i32 %22, %20
  %24 = getelementptr i8, ptr %16, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 0) #6, !srcloc !11
  br label %69

25:                                               ; preds = %11
  %26 = getelementptr inbounds %struct.mtk_mutex_ctx, ptr %6, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i32, ptr %28, i32 %1
  %30 = load i32, ptr %29, align 4
  %31 = icmp ult i32 %30, 32
  br i1 %31, label %32, label %51

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.mtk_mutex_data, ptr %27, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = load i32, ptr %0, align 4
  %36 = shl i32 %35, 5
  %37 = add i32 %36, %34
  %38 = getelementptr inbounds %struct.mtk_mutex_ctx, ptr %6, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr i8, ptr %39, i32 %37
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #6, !srcloc !10
  %42 = load ptr, ptr %26, align 4
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i32, ptr %43, i32 %1
  %45 = load i32, ptr %44, align 4
  %46 = shl nuw i32 1, %45
  %47 = xor i32 %46, -1
  %48 = and i32 %41, %47
  %49 = load ptr, ptr %38, align 4
  %50 = getelementptr i8, ptr %49, i32 %37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %48) #6, !srcloc !11
  br label %69

51:                                               ; preds = %25
  %52 = load i32, ptr %0, align 4
  %53 = shl i32 %52, 5
  %54 = add i32 %53, 52
  %55 = getelementptr inbounds %struct.mtk_mutex_ctx, ptr %6, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr i8, ptr %56, i32 %54
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #6, !srcloc !10
  %59 = load ptr, ptr %26, align 4
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr i32, ptr %60, i32 %1
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, -32
  %64 = shl nuw i32 1, %63
  %65 = xor i32 %64, -1
  %66 = and i32 %58, %65
  %67 = load ptr, ptr %55, align 4
  %68 = getelementptr i8, ptr %67, i32 %54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %66) #6, !srcloc !11
  br label %69

69:                                               ; preds = %51, %32, %14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mtk_mutex_enable(ptr noundef readonly %0) #1 {
  %2 = load i32, ptr %0, align 4
  %3 = mul i32 %2, -8
  %4 = add i32 %3, -12
  %5 = getelementptr i8, ptr %0, i32 %4
  %6 = getelementptr inbounds %struct.mtk_mutex_ctx, ptr %5, i32 0, i32 3
  %7 = getelementptr [10 x %struct.mtk_mutex], ptr %6, i32 0, i32 %2
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %10, label %9, !prof !9

9:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 450, i32 noundef 9, ptr noundef null) #6
  br label %10

10:                                               ; preds = %9, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  %11 = getelementptr inbounds %struct.mtk_mutex_ctx, ptr %5, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %0, align 4
  %14 = shl i32 %13, 5
  %15 = add i32 %14, 32
  %16 = getelementptr i8, ptr %12, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 1) #6, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mtk_mutex_disable(ptr noundef readonly %0) #1 {
  %2 = load i32, ptr %0, align 4
  %3 = mul i32 %2, -8
  %4 = add i32 %3, -12
  %5 = getelementptr i8, ptr %0, i32 %4
  %6 = getelementptr inbounds %struct.mtk_mutex_ctx, ptr %5, i32 0, i32 3
  %7 = getelementptr [10 x %struct.mtk_mutex], ptr %6, i32 0, i32 %2
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %10, label %9, !prof !9

9:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 461, i32 noundef 9, ptr noundef null) #6
  br label %10

10:                                               ; preds = %9, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  %11 = getelementptr inbounds %struct.mtk_mutex_ctx, ptr %5, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %0, align 4
  %14 = shl i32 %13, 5
  %15 = add i32 %14, 32
  %16 = getelementptr i8, ptr %12, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 0) #6, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mtk_mutex_acquire(ptr nocapture noundef readonly %0) #1 {
  %2 = load i32, ptr %0, align 4
  %3 = mul i32 %2, -8
  %4 = add i32 %3, -12
  %5 = getelementptr i8, ptr %0, i32 %4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !14
  tail call void @arm_heavy_mb() #6
  %6 = getelementptr inbounds %struct.mtk_mutex_ctx, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %0, align 4
  %9 = shl i32 %8, 5
  %10 = add i32 %9, 32
  %11 = getelementptr i8, ptr %7, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 1) #6, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !15
  tail call void @arm_heavy_mb() #6
  %12 = load ptr, ptr %6, align 4
  %13 = load i32, ptr %0, align 4
  %14 = shl i32 %13, 5
  %15 = add i32 %14, 36
  %16 = getelementptr i8, ptr %12, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 1) #6, !srcloc !11
  %17 = tail call i64 @ktime_get() #6
  %18 = add i64 %17, 10000000
  %19 = load ptr, ptr %6, align 4
  %20 = load i32, ptr %0, align 4
  %21 = shl i32 %20, 5
  %22 = add i32 %21, 36
  %23 = getelementptr i8, ptr %19, i32 %22
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !16
  %25 = and i32 %24, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %37, %1
  %28 = tail call i64 @ktime_get() #6
  %29 = icmp sgt i64 %28, %18
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load ptr, ptr %6, align 4
  %32 = load i32, ptr %0, align 4
  %33 = shl i32 %32, 5
  %34 = add i32 %33, 36
  %35 = getelementptr i8, ptr %31, i32 %34
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !17
  br label %47

37:                                               ; preds = %27
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748) #6
  %39 = load ptr, ptr %6, align 4
  %40 = load i32, ptr %0, align 4
  %41 = shl i32 %40, 5
  %42 = add i32 %41, 36
  %43 = getelementptr i8, ptr %39, i32 %42
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !16
  %45 = and i32 %44, 2
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %27, label %47

47:                                               ; preds = %37, %30, %1
  %48 = phi i32 [ %36, %30 ], [ %24, %1 ], [ %44, %37 ]
  %49 = and i32 %48, 2
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, ptr %0, align 4
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %52) #7
  br label %54

54:                                               ; preds = %51, %47
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mtk_mutex_release(ptr nocapture noundef readonly %0) #1 {
  %2 = load i32, ptr %0, align 4
  %3 = mul i32 %2, -8
  %4 = add i32 %3, -12
  %5 = getelementptr i8, ptr %0, i32 %4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !18
  tail call void @arm_heavy_mb() #6
  %6 = getelementptr inbounds %struct.mtk_mutex_ctx, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %0, align 4
  %9 = shl i32 %8, 5
  %10 = add i32 %9, 36
  %11 = getelementptr i8, ptr %7, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #6, !srcloc !11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mtk_mutex_driver_init() #4 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @mtk_mutex_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_mutex_probe(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 96, i32 noundef 3520) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %39, label %5

5:                                                ; preds = %1
  %6 = getelementptr %struct.mtk_mutex_ctx, ptr %3, i32 0, i32 3, i32 0
  store i32 0, ptr %6, align 4
  %7 = getelementptr %struct.mtk_mutex_ctx, ptr %3, i32 0, i32 3, i32 1
  store i32 1, ptr %7, align 4
  %8 = getelementptr %struct.mtk_mutex_ctx, ptr %3, i32 0, i32 3, i32 2
  store i32 2, ptr %8, align 4
  %9 = getelementptr %struct.mtk_mutex_ctx, ptr %3, i32 0, i32 3, i32 3
  store i32 3, ptr %9, align 4
  %10 = getelementptr %struct.mtk_mutex_ctx, ptr %3, i32 0, i32 3, i32 4
  store i32 4, ptr %10, align 4
  %11 = getelementptr %struct.mtk_mutex_ctx, ptr %3, i32 0, i32 3, i32 5
  store i32 5, ptr %11, align 4
  %12 = getelementptr %struct.mtk_mutex_ctx, ptr %3, i32 0, i32 3, i32 6
  store i32 6, ptr %12, align 4
  %13 = getelementptr %struct.mtk_mutex_ctx, ptr %3, i32 0, i32 3, i32 7
  store i32 7, ptr %13, align 4
  %14 = getelementptr %struct.mtk_mutex_ctx, ptr %3, i32 0, i32 3, i32 8
  store i32 8, ptr %14, align 4
  %15 = getelementptr %struct.mtk_mutex_ctx, ptr %3, i32 0, i32 3, i32 9
  store i32 9, ptr %15, align 4
  %16 = tail call ptr @of_device_get_match_data(ptr noundef %2) #6
  %17 = getelementptr inbounds %struct.mtk_mutex_ctx, ptr %3, i32 0, i32 4
  store ptr %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.mtk_mutex_data, ptr %16, i32 0, i32 4
  %19 = load i8, ptr %18, align 4, !range !8
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %5
  %22 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #6
  %23 = getelementptr inbounds %struct.mtk_mutex_ctx, ptr %3, i32 0, i32 1
  store ptr %22, ptr %23, align 4
  %24 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = icmp eq ptr %22, inttoptr (i32 -517 to ptr)
  br i1 %26, label %28, label %27

27:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #7
  br label %28

28:                                               ; preds = %27, %25
  %29 = ptrtoint ptr %22 to i32
  br label %39

30:                                               ; preds = %21, %5
  %31 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #6
  %32 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %31) #6
  %33 = getelementptr inbounds %struct.mtk_mutex_ctx, ptr %3, i32 0, i32 2
  store ptr %32, ptr %33, align 4
  %34 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #7
  %36 = ptrtoint ptr %32 to i32
  br label %39

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %38, align 8
  br label %39

39:                                               ; preds = %37, %35, %28, %1
  %40 = phi i32 [ %36, %35 ], [ 0, %37 ], [ %29, %28 ], [ -12, %1 ]
  ret i32 %40
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @mtk_mutex_remove(ptr nocapture noundef readnone %0) #5 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2500514}
!11 = !{i64 2500096}
!12 = !{i64 2151482225}
!13 = !{i64 2151489737}
!14 = !{i64 2151492683}
!15 = !{i64 2151493069}
!16 = !{i64 2151495315}
!17 = !{i64 2151495721}
!18 = !{i64 2151499567}
