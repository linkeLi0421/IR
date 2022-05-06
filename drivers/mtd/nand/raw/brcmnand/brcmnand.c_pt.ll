; ModuleID = '/llk/IR/drivers/mtd/nand/raw/brcmnand/brcmnand.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/brcmnand/brcmnand.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_brcmnand_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22brcmnand_pm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_brcmnand_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_brcmnand_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22brcmnand_probe\22\09\09\09\09\09"
module asm "__kstrtabns_brcmnand_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_brcmnand_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22brcmnand_remove\22\09\09\09\09\09"
module asm "__kstrtabns_brcmnand_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.63 }
%union.anon.63 = type { ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.mtd_ooblayout_ops = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.brcmnand_controller = type { ptr, %struct.nand_controller, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.completion, %struct.completion, %struct.completion, %struct.list_head, ptr, ptr, i32, i32, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, ptr, [512 x i8], ptr, i32, ptr, ptr, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.brcmnand_soc = type { ptr, ptr, ptr }
%struct.brcmnand_host = type { %struct.list_head, %struct.nand_chip, ptr, i32, i32, i32, i64, %struct.brcmnand_cfg, ptr }
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.74, i32, %struct.mutex, i8, i32, i32, ptr, i8, ptr, %struct.nand_ecc_ctrl, ptr }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.68 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.68 = type { %struct.mtd_part, [16 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.nand_memory_organization = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc = type { %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_context, ptr, ptr }
%struct.nand_ecc_props = type { i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc_context = type { %struct.nand_ecc_props, i32, i32, ptr }
%struct.nand_row_converter = type { i32, i32 }
%struct.nand_bbt = type { ptr }
%struct.nand_id = type { [8 x i8], i32 }
%struct.nand_parameters = type { ptr, i8, [8 x i32], [8 x i32], ptr }
%struct.nand_manufacturer = type { ptr, ptr }
%struct.nand_chip_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nand_legacy = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.nand_controller }
%struct.anon.74 = type { i32, i32 }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.brcmnand_cfg = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.page = type { i32, %union.anon.1, %union.anon.61, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.61 = type { %struct.atomic_t }
%struct.brcm_nand_dma_desc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32], i32 }
%struct.mtd_oob_region = type { i32, i32 }

@__param_str_wp_on = internal constant [15 x i8] c"brcmnand.wp_on\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@wp_on = internal global i32 1, align 4
@__param_wp_on = internal constant %struct.kernel_param { ptr @__param_str_wp_on, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.63 { ptr @wp_on } }, section "__param", align 4
@__UNIQUE_ID_wp_ontype236 = internal constant [28 x i8] c"brcmnand.parmtype=wp_on:int\00", section ".modinfo", align 1
@brcmnand_pm_ops = dso_local constant %struct.dev_pm_ops { ptr null, ptr null, ptr @brcmnand_suspend, ptr @brcmnand_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_brcmnand_pm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_brcmnand_pm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_brcmnand_pm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @brcmnand_pm_ops to i32), ptr @__kstrtab_brcmnand_pm_ops, ptr @__kstrtabns_brcmnand_pm_ops }, section "___ksymtab_gpl+brcmnand_pm_ops", align 4
@brcmnand_of_match = internal constant [12 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmnand-v2.1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmnand-v2.2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmnand-v4.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmnand-v5.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmnand-v6.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmnand-v6.1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmnand-v6.2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmnand-v7.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmnand-v7.1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmnand-v7.2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmnand-v7.3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@brcmnand_controller_ops = internal constant %struct.nand_controller_ops { ptr @brcmnand_attach_chip, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [5 x i8] c"nand\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"nand-cache\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"flash-dma\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"missing FLASH_DMA IRQ\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"brcmnand\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"can't allocate IRQ %d: error %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"enabling FLASH_DMA\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"no IRQ defined\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"brcm,nandcs\00", align 1
@__kstrtab_brcmnand_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_brcmnand_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_brcmnand_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @brcmnand_probe to i32), ptr @__kstrtab_brcmnand_probe, ptr @__kstrtabns_brcmnand_probe }, section "___ksymtab_gpl+brcmnand_probe", align 4
@.str.9 = private unnamed_addr constant [41 x i8] c"drivers/mtd/nand/raw/brcmnand/brcmnand.c\00", align 1
@__kstrtab_brcmnand_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_brcmnand_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_brcmnand_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @brcmnand_remove to i32), ptr @__kstrtab_brcmnand_remove, ptr @__kstrtabns_brcmnand_remove }, section "___ksymtab_gpl+brcmnand_remove", align 4
@__UNIQUE_ID_file249 = internal constant [53 x i8] c"brcmnand.file=drivers/mtd/nand/raw/brcmnand/brcmnand\00", section ".modinfo", align 1
@__UNIQUE_ID_license250 = internal constant [24 x i8] c"brcmnand.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author251 = internal constant [31 x i8] c"brcmnand.author=Kevin Cernekee\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [29 x i8] c"brcmnand.author=Brian Norris\00", section ".modinfo", align 1
@__UNIQUE_ID_description253 = internal constant [52 x i8] c"brcmnand.description=NAND driver for Broadcom chips\00", section ".modinfo", align 1
@__UNIQUE_ID_alias254 = internal constant [33 x i8] c"brcmnand.alias=platform:brcmnand\00", section ".modinfo", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@nand_controller_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"&nfc->lock\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"brcm,nand-oob-sector-size\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"only HW ECC supported; selected: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"invalid Hamming params: %d bits per %d bytes\0A\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"Using ECC step-size %d, strength %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"1KB sectors not supported\0A\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"odd ECC not supported with 1KB sectors\0A\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"unsupported ECC size: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"detected %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"invalid block size %u\0A\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"invalid page size %u\0A\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"invalid device size 0x%llx\0A\00", align 1
@.str.23 = private unnamed_addr constant [57 x i8] c"%lluMiB total, %uKiB blocks, %u%s pages, %uB OOB, %u-bit\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"KiB\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c", Hamming ECC\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c", BCH-%u (1KiB sector)\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c", BCH-%u\00", align 1
@brcmnand_hamming_ooblayout_ops = internal constant %struct.mtd_ooblayout_ops { ptr @brcmnand_hamming_ooblayout_ecc, ptr @brcmnand_hamming_ooblayout_free }, align 4
@brcmnand_bch_sp_ooblayout_ops = internal constant %struct.mtd_ooblayout_ops { ptr @brcmnand_bch_ooblayout_ecc, ptr @brcmnand_bch_ooblayout_free_sp }, align 4
@brcmnand_bch_lp_ooblayout_ops = internal constant %struct.mtd_ooblayout_ops { ptr @brcmnand_bch_ooblayout_ecc, ptr @brcmnand_bch_ooblayout_free_lp }, align 4
@.str.29 = private unnamed_addr constant [62 x i8] c"error: ECC too large for OOB (ECC bytes %d, spare sector %d)\0A\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"unaligned buffer: %p\0A\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"program failed at %llx\0A\00", align 1
@brcmnand_wp.old_wp = internal unnamed_addr global i32 -1, align 4
@brcmnand_wp._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.brcmnand_wp = private unnamed_addr constant [12 x i8] c"brcmnand_wp\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"nand #WP expected %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.35 = private unnamed_addr constant [45 x i8] c"timeout on status poll (expected %x got %x)\0A\00", align 1
@brcmnand_waitfunc._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.brcmnand_waitfunc = private unnamed_addr constant [18 x i8] c"brcmnand_waitfunc\00", align 1
@.str.36 = private unnamed_addr constant [35 x i8] c"timeout waiting for command %#02x\0A\00", align 1
@brcmnand_waitfunc._rs.37 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.38 = private unnamed_addr constant [19 x i8] c"intfc status %08x\0A\00", align 1
@brcmnand_revision_init.block_sizes_v6 = internal constant [8 x i32] [i32 8, i32 16, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 0], align 4
@brcmnand_revision_init.block_sizes_v4 = internal constant [8 x i32] [i32 16, i32 128, i32 8, i32 512, i32 256, i32 1024, i32 2048, i32 0], align 4
@brcmnand_revision_init.block_sizes_v2_2 = internal constant [6 x i32] [i32 16, i32 128, i32 8, i32 512, i32 256, i32 0], align 4
@brcmnand_revision_init.block_sizes_v2_1 = internal constant [5 x i32] [i32 16, i32 128, i32 8, i32 512, i32 0], align 4
@brcmnand_revision_init.page_sizes_v3_4 = internal constant [5 x i32] [i32 512, i32 2048, i32 4096, i32 8192, i32 0], align 4
@brcmnand_revision_init.page_sizes_v2_2 = internal constant [4 x i32] [i32 512, i32 2048, i32 4096, i32 0], align 4
@brcmnand_revision_init.page_sizes_v2_1 = internal constant [3 x i32] [i32 512, i32 2048, i32 0], align 4
@.str.39 = private unnamed_addr constant [27 x i8] c"version %#x not supported\0A\00", align 1
@brcmnand_regs_v72 = internal constant [26 x i16] [i16 4, i16 8, i16 12, i16 20, i16 24, i16 28, i16 32, i16 80, i16 0, i16 220, i16 224, i16 252, i16 256, i16 268, i16 272, i16 276, i16 280, i16 336, i16 404, i16 408, i16 412, i16 512, i16 0, i16 1024, i16 0, i16 1536], align 2
@brcmnand_regs_v71 = internal constant [26 x i16] [i16 4, i16 8, i16 12, i16 20, i16 24, i16 28, i16 32, i16 80, i16 0, i16 220, i16 224, i16 252, i16 256, i16 268, i16 272, i16 276, i16 280, i16 336, i16 404, i16 408, i16 412, i16 512, i16 0, i16 640, i16 0, i16 1024], align 2
@brcmnand_regs_v60 = internal constant [26 x i16] [i16 4, i16 8, i16 12, i16 20, i16 24, i16 28, i16 32, i16 80, i16 0, i16 192, i16 196, i16 252, i16 256, i16 268, i16 272, i16 276, i16 280, i16 336, i16 404, i16 408, i16 412, i16 512, i16 0, i16 640, i16 0, i16 1024], align 2
@brcmnand_regs_v50 = internal constant [26 x i16] [i16 4, i16 8, i16 12, i16 108, i16 20, i16 24, i16 376, i16 64, i16 208, i16 132, i16 0, i16 0, i16 0, i16 112, i16 116, i16 120, i16 124, i16 88, i16 96, i16 100, i16 380, i16 32, i16 304, i16 48, i16 320, i16 512], align 2
@brcmnand_regs_v33 = internal constant [26 x i16] [i16 4, i16 8, i16 12, i16 108, i16 20, i16 24, i16 376, i16 64, i16 208, i16 132, i16 0, i16 0, i16 0, i16 112, i16 116, i16 120, i16 124, i16 88, i16 96, i16 100, i16 380, i16 32, i16 304, i16 48, i16 0, i16 512], align 2
@brcmnand_regs_v21 = internal constant [26 x i16] [i16 4, i16 8, i16 12, i16 92, i16 20, i16 24, i16 0, i16 64, i16 0, i16 0, i16 0, i16 0, i16 0, i16 96, i16 100, i16 104, i16 108, i16 80, i16 84, i16 0, i16 0, i16 32, i16 0, i16 48, i16 0, i16 512], align 2
@brcmnand_cs_offsets_v71 = internal constant [5 x i8] c"\04\08\00\0C\10", align 1
@brcmnand_cs_offsets = internal constant [5 x i8] c"\04\04\00\08\0C", align 1
@brcmnand_cs_offsets_cs0 = internal constant [5 x i8] c"\08\08\00\10\14", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"brcm,nand-has-wp\00", align 1
@flash_dma_regs_v4 = internal constant [11 x i16] [i16 0, i16 8, i16 12, i16 16, i16 20, i16 24, i16 32, i16 36, i16 40, i16 48, i16 52], align 2
@flash_dma_regs_v0 = internal constant [10 x i16] [i16 0, i16 4, i16 0, i16 8, i16 12, i16 16, i16 20, i16 0, i16 24, i16 28], align 2
@flash_dma_regs_v1 = internal constant [11 x i16] [i16 0, i16 4, i16 8, i16 12, i16 16, i16 20, i16 24, i16 28, i16 32, i16 36, i16 40], align 2
@.str.41 = private unnamed_addr constant [30 x i8] c"unable to map buffer for DMA\0A\00", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.42 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.43 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.44 = private unnamed_addr constant [55 x i8] c"timeout waiting for DMA; status %#x, error status %#x\0A\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"flash-edu\00", align 1
@edu_regs = internal constant [9 x i16] [i16 0, i16 4, i16 8, i16 12, i16 16, i16 20, i16 24, i16 28, i16 32], align 2
@.str.46 = private unnamed_addr constant [37 x i8] c"FLASH EDU enabled, using ctlrdy irq\0A\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"brcmnand-edu\00", align 1
@.str.48 = private unnamed_addr constant [32 x i8] c"FLASH EDU enabled using irq %u\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.49 = private unnamed_addr constant [34 x i8] c"unable to map buffer for EDU DMA\0A\00", align 1
@.str.50 = private unnamed_addr constant [55 x i8] c"timeout waiting for EDU; status %#x, error status %#x\0A\00", align 1
@.str.51 = private unnamed_addr constant [23 x i8] c"EDU still active: %#x\0A\00", align 1
@.str.52 = private unnamed_addr constant [29 x i8] c"EDU RBUS error at addr %llx\0A\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.54 = private unnamed_addr constant [23 x i8] c"can't get chip-select\0A\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"brcmnand.%d\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_alias254, ptr @__UNIQUE_ID_author251, ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_file249, ptr @__UNIQUE_ID_license250, ptr @__UNIQUE_ID_wp_ontype236, ptr @__ksymtab_brcmnand_pm_ops, ptr @__ksymtab_brcmnand_probe, ptr @__ksymtab_brcmnand_remove, ptr @__param_wp_on], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmnand_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %11, label %7

7:                                                ; preds = %7, %1
  %8 = phi ptr [ %9, %7 ], [ %5, %1 ]
  tail call fastcc void @brcmnand_save_restore_cs_config(ptr noundef %8, i32 noundef 0)
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %4
  br i1 %10, label %11, label %7

11:                                               ; preds = %7, %1
  %12 = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 33
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr i16, ptr %13, i32 4
  %15 = load i16, ptr %14, align 2
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %11
  %18 = zext i16 %15 to i32
  %19 = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 %18
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #11, !srcloc !8
  %23 = load ptr, ptr %12, align 8
  br label %24

24:                                               ; preds = %17, %11
  %25 = phi ptr [ %23, %17 ], [ %13, %11 ]
  %26 = phi i32 [ %22, %17 ], [ 0, %11 ]
  %27 = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 44
  store i32 %26, ptr %27, align 4
  %28 = getelementptr i16, ptr %25, i32 5
  %29 = load i16, ptr %28, align 2
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %24
  %32 = zext i16 %29 to i32
  %33 = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %34, i32 %32
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #11, !srcloc !8
  %37 = load ptr, ptr %12, align 8
  br label %38

38:                                               ; preds = %31, %24
  %39 = phi ptr [ %37, %31 ], [ %25, %24 ]
  %40 = phi i32 [ %36, %31 ], [ 0, %24 ]
  %41 = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 45
  store i32 %40, ptr %41, align 8
  %42 = getelementptr i16, ptr %39, i32 9
  %43 = load i16, ptr %42, align 2
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %38
  %46 = zext i16 %43 to i32
  %47 = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 2
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr i8, ptr %48, i32 %46
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #11, !srcloc !8
  br label %51

51:                                               ; preds = %45, %38
  %52 = phi i32 [ %50, %45 ], [ 0, %38 ]
  %53 = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 46
  store i32 %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 4
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %66, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 28
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr i16, ptr %59, i32 4
  %61 = load i16, ptr %60, align 2
  %62 = zext i16 %61 to i32
  %63 = getelementptr i8, ptr %55, i32 %62
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #11, !srcloc !8
  %65 = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 47
  store i32 %64, ptr %65, align 8
  br label %78

66:                                               ; preds = %51
  %67 = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 18
  %68 = load ptr, ptr %67, align 8
  %69 = icmp eq ptr %68, null
  br i1 %69, label %78, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 17
  %72 = load ptr, ptr %71, align 4
  %73 = load i16, ptr %72, align 2
  %74 = zext i16 %73 to i32
  %75 = getelementptr i8, ptr %68, i32 %74
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #11, !srcloc !8
  %77 = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 24
  store i32 %76, ptr %77, align 8
  br label %78

78:                                               ; preds = %70, %66, %57
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmnand_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 47
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 28
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr i16, ptr %11, i32 4
  %13 = load i16, ptr %12, align 2
  %14 = zext i16 %13 to i32
  %15 = getelementptr i8, ptr %5, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %9) #11, !srcloc !9
  %16 = load ptr, ptr %10, align 8
  %17 = getelementptr i16, ptr %16, i32 8
  %18 = load i16, ptr %17, align 2
  %19 = load ptr, ptr %4, align 4
  %20 = zext i16 %18 to i32
  %21 = getelementptr i8, ptr %19, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 0) #11, !srcloc !9
  br label %22

22:                                               ; preds = %7, %1
  %23 = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 18
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %89, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 17
  %28 = load ptr, ptr %27, align 4
  %29 = load i16, ptr %28, align 2
  %30 = zext i16 %29 to i32
  %31 = getelementptr i8, ptr %24, i32 %30
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #11, !srcloc !8
  %33 = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 24
  store i32 %32, ptr %33, align 8
  %34 = load ptr, ptr %27, align 4
  %35 = load i16, ptr %34, align 2
  %36 = load ptr, ptr %23, align 8
  %37 = zext i16 %35 to i32
  %38 = getelementptr i8, ptr %36, i32 %37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %32) #11, !srcloc !9
  %39 = load ptr, ptr %27, align 4
  %40 = load i16, ptr %39, align 2
  %41 = load ptr, ptr %23, align 8
  %42 = zext i16 %40 to i32
  %43 = getelementptr i8, ptr %41, i32 %42
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #11, !srcloc !8
  %45 = load ptr, ptr %27, align 4
  %46 = getelementptr i16, ptr %45, i32 8
  %47 = load i16, ptr %46, align 2
  %48 = load ptr, ptr %23, align 8
  %49 = zext i16 %47 to i32
  %50 = getelementptr i8, ptr %48, i32 %49
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 0) #11, !srcloc !9
  %51 = load ptr, ptr %27, align 4
  %52 = getelementptr i16, ptr %51, i32 8
  %53 = load i16, ptr %52, align 2
  %54 = load ptr, ptr %23, align 8
  %55 = zext i16 %53 to i32
  %56 = getelementptr i8, ptr %54, i32 %55
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #11, !srcloc !8
  %58 = load ptr, ptr %27, align 4
  %59 = getelementptr i16, ptr %58, i32 7
  %60 = load i16, ptr %59, align 2
  %61 = load ptr, ptr %23, align 8
  %62 = zext i16 %60 to i32
  %63 = getelementptr i8, ptr %61, i32 %62
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 0) #11, !srcloc !9
  %64 = load ptr, ptr %27, align 4
  %65 = getelementptr i16, ptr %64, i32 7
  %66 = load i16, ptr %65, align 2
  %67 = load ptr, ptr %23, align 8
  %68 = zext i16 %66 to i32
  %69 = getelementptr i8, ptr %67, i32 %68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 0) #11, !srcloc !9
  %70 = load ptr, ptr %27, align 4
  %71 = getelementptr i16, ptr %70, i32 7
  %72 = load i16, ptr %71, align 2
  %73 = load ptr, ptr %23, align 8
  %74 = zext i16 %72 to i32
  %75 = getelementptr i8, ptr %73, i32 %74
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 0) #11, !srcloc !9
  %76 = load ptr, ptr %27, align 4
  %77 = getelementptr i16, ptr %76, i32 7
  %78 = load i16, ptr %77, align 2
  %79 = load ptr, ptr %23, align 8
  %80 = zext i16 %78 to i32
  %81 = getelementptr i8, ptr %79, i32 %80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 0) #11, !srcloc !9
  %82 = load ptr, ptr %27, align 4
  %83 = getelementptr i16, ptr %82, i32 7
  %84 = load i16, ptr %83, align 2
  %85 = load ptr, ptr %23, align 8
  %86 = zext i16 %84 to i32
  %87 = getelementptr i8, ptr %85, i32 %86
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #11, !srcloc !8
  br label %89

89:                                               ; preds = %26, %22
  %90 = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 33
  %91 = load ptr, ptr %90, align 8
  %92 = getelementptr i16, ptr %91, i32 4
  %93 = load i16, ptr %92, align 2
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 44
  %97 = load i32, ptr %96, align 4
  %98 = zext i16 %93 to i32
  %99 = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 2
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr i8, ptr %100, i32 %98
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %97) #11, !srcloc !9
  %102 = load ptr, ptr %90, align 8
  br label %103

103:                                              ; preds = %95, %89
  %104 = phi ptr [ %91, %89 ], [ %102, %95 ]
  %105 = getelementptr i16, ptr %104, i32 5
  %106 = load i16, ptr %105, align 2
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %116, label %108

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 45
  %110 = load i32, ptr %109, align 8
  %111 = zext i16 %106 to i32
  %112 = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 2
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr i8, ptr %113, i32 %111
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 %110) #11, !srcloc !9
  %115 = load ptr, ptr %90, align 8
  br label %116

116:                                              ; preds = %108, %103
  %117 = phi ptr [ %104, %103 ], [ %115, %108 ]
  %118 = getelementptr i16, ptr %117, i32 9
  %119 = load i16, ptr %118, align 2
  %120 = icmp eq i16 %119, 0
  br i1 %120, label %128, label %121

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 46
  %123 = load i32, ptr %122, align 4
  %124 = zext i16 %119 to i32
  %125 = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 2
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr i8, ptr %126, i32 %124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %127, i32 %123) #11, !srcloc !9
  br label %128

128:                                              ; preds = %121, %116
  %129 = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 8
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %138, label %132

132:                                              ; preds = %128
  %133 = load ptr, ptr %130, align 4
  %134 = tail call zeroext i1 %133(ptr noundef nonnull %130) #11
  %135 = load ptr, ptr %129, align 4
  %136 = getelementptr inbounds %struct.brcmnand_soc, ptr %135, i32 0, i32 1
  %137 = load ptr, ptr %136, align 4
  tail call void %137(ptr noundef %135, i1 noundef zeroext true) #11
  br label %138

138:                                              ; preds = %132, %128
  %139 = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 16
  %140 = load ptr, ptr %139, align 4
  %141 = icmp eq ptr %140, %139
  br i1 %141, label %148, label %142

142:                                              ; preds = %142, %138
  %143 = phi ptr [ %146, %142 ], [ %140, %138 ]
  %144 = getelementptr inbounds %struct.brcmnand_host, ptr %143, i32 0, i32 1
  tail call fastcc void @brcmnand_save_restore_cs_config(ptr noundef %143, i32 noundef 1)
  %145 = tail call i32 @nand_reset_op(ptr noundef %144) #11
  %146 = load ptr, ptr %143, align 4
  %147 = icmp eq ptr %146, %139
  br i1 %147, label %148, label %142

148:                                              ; preds = %142, %138
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmnand_probe(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %444, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @of_match_node(ptr noundef nonnull @brcmnand_of_match, ptr noundef nonnull %5) #11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %444, label %10

10:                                               ; preds = %7
  %11 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 776, i32 noundef 3520) #11
  %12 = icmp eq ptr %11, null
  br i1 %12, label %444, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %11, ptr %14, align 8
  store ptr %3, ptr %11, align 8
  %15 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 13
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 13, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %16, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_completion.__key) #11
  %17 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 14
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 14, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %18, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_completion.__key) #11
  %19 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 15
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 15, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %20, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_completion.__key) #11
  %21 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %21, ptr noundef nonnull @.str.11, ptr noundef nonnull @nand_controller_init.__key) #11
  %22 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 1, i32 1
  store ptr @brcmnand_controller_ops, ptr %22, align 4
  %23 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 16
  store volatile ptr %23, ptr %23, align 4
  %24 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 16, i32 1
  store ptr %23, ptr %24, align 4
  %25 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #11
  %26 = tail call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef %25) #11
  %27 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 2
  store ptr %26, ptr %27, align 4
  %28 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %31

29:                                               ; preds = %13
  %30 = ptrtoint ptr %26 to i32
  br label %444

31:                                               ; preds = %13
  %32 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str) #11
  %33 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 9
  store ptr %32, ptr %33, align 8
  %34 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %42, label %35

35:                                               ; preds = %31
  %36 = tail call i32 @clk_prepare(ptr noundef %32) #11
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %444

38:                                               ; preds = %35
  %39 = tail call i32 @clk_enable(ptr noundef %32) #11
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  tail call void @clk_unprepare(ptr noundef %32) #11
  br label %444

42:                                               ; preds = %31
  %43 = icmp eq ptr %32, inttoptr (i32 -517 to ptr)
  br i1 %43, label %444, label %44

44:                                               ; preds = %42
  store ptr null, ptr %33, align 8
  br label %45

45:                                               ; preds = %44, %38
  %46 = load ptr, ptr %27, align 4
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #11, !srcloc !8
  %48 = and i32 %47, 65535
  %49 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 7
  store i32 %48, ptr %49, align 8
  %50 = icmp ult i32 %48, 513
  br i1 %50, label %158, label %51

51:                                               ; preds = %45
  %52 = icmp ugt i32 %48, 1793
  br i1 %52, label %102, label %53

53:                                               ; preds = %51
  %54 = icmp eq i32 %48, 1793
  br i1 %54, label %55, label %61

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 33
  store ptr @brcmnand_regs_v71, ptr %56, align 8
  %57 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 34
  store i32 20, ptr %57, align 4
  %58 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 35
  store ptr @brcmnand_cs_offsets_v71, ptr %58, align 8
  %59 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 39
  store i32 16384, ptr %59, align 8
  %60 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 37
  store i32 2097152, ptr %60, align 8
  br label %111

61:                                               ; preds = %53
  %62 = icmp ugt i32 %48, 1535
  br i1 %62, label %112, label %63

63:                                               ; preds = %61
  %64 = icmp ugt i32 %48, 1279
  br i1 %64, label %68, label %65

65:                                               ; preds = %63
  %66 = icmp ugt i32 %48, 770
  %67 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 33
  br i1 %66, label %75, label %80

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 33
  store ptr @brcmnand_regs_v50, ptr %69, align 8
  %70 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 34
  store i32 16, ptr %70, align 4
  %71 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 35
  store ptr @brcmnand_cs_offsets, ptr %71, align 8
  %72 = icmp eq i32 %48, 1280
  br i1 %72, label %73, label %134

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 36
  store ptr @brcmnand_cs_offsets_cs0, ptr %74, align 4
  br label %134

75:                                               ; preds = %65
  store ptr @brcmnand_regs_v33, ptr %67, align 8
  %76 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 34
  store i32 16, ptr %76, align 4
  %77 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 35
  store ptr @brcmnand_cs_offsets, ptr %77, align 8
  %78 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 36
  store ptr @brcmnand_cs_offsets_cs0, ptr %78, align 4
  %79 = icmp eq i32 %48, 771
  br i1 %79, label %89, label %84

80:                                               ; preds = %65
  store ptr @brcmnand_regs_v21, ptr %67, align 8
  %81 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 34
  store i32 16, ptr %81, align 4
  %82 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 35
  store ptr @brcmnand_cs_offsets, ptr %82, align 8
  %83 = icmp ugt i32 %48, 513
  br i1 %83, label %89, label %88

84:                                               ; preds = %75
  %85 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 40
  store ptr @brcmnand_revision_init.page_sizes_v3_4, ptr %85, align 4
  %86 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 41
  store i32 20, ptr %86, align 8
  %87 = icmp ugt i32 %48, 1023
  br i1 %87, label %109, label %96

88:                                               ; preds = %80
  br label %89

89:                                               ; preds = %88, %80, %75
  %90 = phi ptr [ @brcmnand_revision_init.page_sizes_v2_1, %88 ], [ @brcmnand_revision_init.page_sizes_v2_2, %75 ], [ @brcmnand_revision_init.page_sizes_v2_2, %80 ]
  %91 = phi i32 [ 30, %88 ], [ 20, %75 ], [ 20, %80 ]
  %92 = phi ptr [ @brcmnand_revision_init.block_sizes_v2_1, %88 ], [ @brcmnand_revision_init.block_sizes_v2_2, %75 ], [ @brcmnand_revision_init.block_sizes_v2_2, %80 ]
  %93 = phi i32 [ 2048, %88 ], [ 4096, %75 ], [ 4096, %80 ]
  %94 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 40
  store ptr %90, ptr %94, align 4
  %95 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 41
  store i32 %91, ptr %95, align 8
  br label %96

96:                                               ; preds = %89, %84
  %97 = phi ptr [ @brcmnand_revision_init.block_sizes_v2_2, %84 ], [ %92, %89 ]
  %98 = phi i32 [ 4096, %84 ], [ %93, %89 ]
  %99 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 38
  store ptr %97, ptr %99, align 4
  %100 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 39
  store i32 %98, ptr %100, align 8
  %101 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 37
  store i32 524288, ptr %101, align 8
  br label %142

102:                                              ; preds = %51
  %103 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 33
  store ptr @brcmnand_regs_v72, ptr %103, align 8
  %104 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 34
  store i32 20, ptr %104, align 4
  %105 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 35
  store ptr @brcmnand_cs_offsets_v71, ptr %105, align 8
  %106 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 39
  store i32 16384, ptr %106, align 8
  %107 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 37
  store i32 2097152, ptr %107, align 8
  %108 = icmp eq i32 %48, 1794
  br i1 %108, label %125, label %111

109:                                              ; preds = %84
  %110 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 38
  store ptr @brcmnand_revision_init.block_sizes_v4, ptr %110, align 4
  br label %142

111:                                              ; preds = %102, %55
  br label %125

112:                                              ; preds = %61
  %113 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 33
  store ptr @brcmnand_regs_v60, ptr %113, align 8
  %114 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 34
  store i32 16, ptr %114, align 4
  %115 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 35
  store ptr @brcmnand_cs_offsets, ptr %115, align 8
  %116 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 40
  store ptr @brcmnand_revision_init.page_sizes_v3_4, ptr %116, align 4
  %117 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 41
  store i32 20, ptr %117, align 8
  %118 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 38
  store ptr @brcmnand_revision_init.block_sizes_v6, ptr %118, align 4
  %119 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 42
  store i32 64, ptr %119, align 4
  %120 = icmp eq i32 %48, 1537
  %121 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 43
  %122 = load i32, ptr %121, align 8
  br i1 %120, label %123, label %130

123:                                              ; preds = %112
  %124 = or i32 %122, 1
  store i32 %124, ptr %121, align 8
  br label %148

125:                                              ; preds = %111, %102
  %126 = phi i32 [ 64, %111 ], [ 128, %102 ]
  %127 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 42
  store i32 %126, ptr %127, align 4
  %128 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 43
  %129 = load i32, ptr %128, align 8
  br label %144

130:                                              ; preds = %112
  %131 = icmp ugt i32 %48, 1791
  br i1 %131, label %144, label %132

132:                                              ; preds = %130
  %133 = or i32 %122, 3
  store i32 %133, ptr %121, align 8
  br label %148

134:                                              ; preds = %73, %68
  %135 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 40
  store ptr @brcmnand_revision_init.page_sizes_v3_4, ptr %135, align 4
  %136 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 41
  store i32 20, ptr %136, align 8
  %137 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 38
  store ptr @brcmnand_revision_init.block_sizes_v4, ptr %137, align 4
  %138 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 42
  store i32 32, ptr %138, align 4
  %139 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 43
  %140 = load i32, ptr %139, align 8
  %141 = or i32 %140, 1
  store i32 %141, ptr %139, align 8
  br label %148

142:                                              ; preds = %109, %96
  %143 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 42
  store i32 16, ptr %143, align 4
  br label %148

144:                                              ; preds = %130, %125
  %145 = phi i32 [ %129, %125 ], [ %122, %130 ]
  %146 = phi ptr [ %128, %125 ], [ %121, %130 ]
  %147 = or i32 %145, 15
  store i32 %147, ptr %146, align 8
  br label %160

148:                                              ; preds = %142, %134, %132, %123
  %149 = load ptr, ptr %11, align 8
  %150 = getelementptr inbounds %struct.device, ptr %149, i32 0, i32 25
  %151 = load ptr, ptr %150, align 8
  %152 = tail call ptr @of_find_property(ptr noundef %151, ptr noundef nonnull @.str.40, ptr noundef null) #11
  %153 = icmp eq ptr %152, null
  br i1 %153, label %160, label %154

154:                                              ; preds = %148
  %155 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 43
  %156 = load i32, ptr %155, align 8
  %157 = or i32 %156, 8
  store i32 %157, ptr %155, align 8
  br label %160

158:                                              ; preds = %45
  %159 = load ptr, ptr %11, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %159, ptr noundef nonnull @.str.39, i32 noundef %48) #12
  br label %441

160:                                              ; preds = %154, %148, %144
  %161 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.1) #11
  %162 = icmp eq ptr %161, null
  br i1 %162, label %169, label %163

163:                                              ; preds = %160
  %164 = tail call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef nonnull %161) #11
  %165 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 3
  store ptr %164, ptr %165, align 8
  %166 = icmp ugt ptr %164, inttoptr (i32 -4096 to ptr)
  br i1 %166, label %167, label %178

167:                                              ; preds = %163
  %168 = ptrtoint ptr %164 to i32
  br label %441

169:                                              ; preds = %160
  %170 = load ptr, ptr %27, align 4
  %171 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 33
  %172 = load ptr, ptr %171, align 8
  %173 = getelementptr i16, ptr %172, i32 25
  %174 = load i16, ptr %173, align 2
  %175 = zext i16 %174 to i32
  %176 = getelementptr i8, ptr %170, i32 %175
  %177 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 3
  store ptr %176, ptr %177, align 8
  br label %178

178:                                              ; preds = %169, %163
  %179 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.2) #11
  %180 = icmp eq ptr %179, null
  br i1 %180, label %232, label %181

181:                                              ; preds = %178
  %182 = tail call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef nonnull %179) #11
  %183 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 4
  store ptr %182, ptr %183, align 4
  %184 = icmp ugt ptr %182, inttoptr (i32 -4096 to ptr)
  br i1 %184, label %185, label %187

185:                                              ; preds = %181
  %186 = ptrtoint ptr %182 to i32
  br label %441

187:                                              ; preds = %181
  %188 = load i32, ptr %49, align 8
  %189 = icmp sgt i32 %188, 1794
  br i1 %189, label %190, label %192

190:                                              ; preds = %187
  %191 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 28
  store ptr @flash_dma_regs_v4, ptr %191, align 8
  br label %197

192:                                              ; preds = %187
  %193 = icmp eq i32 %188, 1538
  %194 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 28
  %195 = select i1 %193, ptr @flash_dma_regs_v0, ptr @flash_dma_regs_v1
  store ptr %195, ptr %194, align 8
  %196 = icmp sgt i32 %188, 1791
  br i1 %196, label %197, label %200

197:                                              ; preds = %192, %190
  %198 = tail call fastcc i32 @dma_set_mask_and_coherent(ptr noundef %3, i64 noundef 1099511627775)
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %203, label %200

200:                                              ; preds = %197, %192
  %201 = tail call fastcc i32 @dma_set_mask_and_coherent(ptr noundef %3, i64 noundef 4294967295)
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %441

203:                                              ; preds = %200, %197
  %204 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 28
  %205 = load ptr, ptr %204, align 8
  %206 = getelementptr i16, ptr %205, i32 4
  %207 = load i16, ptr %206, align 2
  %208 = load ptr, ptr %183, align 4
  %209 = zext i16 %207 to i32
  %210 = getelementptr i8, ptr %208, i32 %209
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %210, i32 3) #11, !srcloc !9
  %211 = load ptr, ptr %204, align 8
  %212 = getelementptr i16, ptr %211, i32 8
  %213 = load i16, ptr %212, align 2
  %214 = load ptr, ptr %183, align 4
  %215 = zext i16 %213 to i32
  %216 = getelementptr i8, ptr %214, i32 %215
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %216, i32 0) #11, !srcloc !9
  %217 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 30
  %218 = tail call ptr @dmam_alloc_attrs(ptr noundef %3, i32 noundef 64, ptr noundef %217, i32 noundef 3264, i32 noundef 0) #11
  %219 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 29
  store ptr %218, ptr %219, align 4
  %220 = icmp eq ptr %218, null
  br i1 %220, label %441, label %221

221:                                              ; preds = %203
  %222 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 1) #11
  %223 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 6
  store i32 %222, ptr %223, align 4
  %224 = icmp slt i32 %222, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %221
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #12
  br label %441

226:                                              ; preds = %221
  %227 = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %222, ptr noundef nonnull @brcmnand_dma_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull %11) #11
  %228 = icmp slt i32 %227, 0
  br i1 %228, label %229, label %231

229:                                              ; preds = %226
  %230 = load i32, ptr %223, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %230, i32 noundef %227) #12
  br label %441

231:                                              ; preds = %226
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.6) #12
  br label %239

232:                                              ; preds = %178
  %233 = tail call fastcc i32 @brcmnand_edu_setup(ptr noundef %0)
  %234 = icmp slt i32 %233, 0
  br i1 %234, label %441, label %235

235:                                              ; preds = %232
  %236 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 18
  %237 = load ptr, ptr %236, align 8
  %238 = icmp eq ptr %237, null
  br i1 %238, label %242, label %239

239:                                              ; preds = %235, %231
  %240 = phi ptr [ @brcmnand_dma_trans, %231 ], [ @brcmnand_edu_trans, %235 ]
  %241 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 31
  store ptr %240, ptr %241, align 4
  br label %242

242:                                              ; preds = %239, %235
  %243 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 33
  %244 = load ptr, ptr %243, align 8
  %245 = getelementptr i16, ptr %244, i32 4
  %246 = load i16, ptr %245, align 2
  %247 = icmp eq i16 %246, 0
  br i1 %247, label %263, label %248

248:                                              ; preds = %242
  %249 = zext i16 %246 to i32
  %250 = load ptr, ptr %27, align 4
  %251 = getelementptr i8, ptr %250, i32 %249
  %252 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %251) #11, !srcloc !8
  %253 = load ptr, ptr %243, align 8
  %254 = getelementptr i16, ptr %253, i32 4
  %255 = load i16, ptr %254, align 2
  %256 = icmp eq i16 %255, 0
  br i1 %256, label %263, label %257

257:                                              ; preds = %248
  %258 = and i32 %252, -1073742080
  %259 = zext i16 %255 to i32
  %260 = load ptr, ptr %27, align 4
  %261 = getelementptr i8, ptr %260, i32 %259
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %261, i32 %258) #11, !srcloc !9
  %262 = load ptr, ptr %243, align 8
  br label %263

263:                                              ; preds = %257, %248, %242
  %264 = phi ptr [ %244, %242 ], [ %253, %248 ], [ %262, %257 ]
  %265 = getelementptr i16, ptr %264, i32 5
  %266 = load i16, ptr %265, align 2
  %267 = icmp eq i16 %266, 0
  br i1 %267, label %282, label %268

268:                                              ; preds = %263
  %269 = zext i16 %266 to i32
  %270 = load ptr, ptr %27, align 4
  %271 = getelementptr i8, ptr %270, i32 %269
  %272 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %271) #11, !srcloc !8
  %273 = load ptr, ptr %243, align 8
  %274 = getelementptr i16, ptr %273, i32 5
  %275 = load i16, ptr %274, align 2
  %276 = icmp eq i16 %275, 0
  br i1 %276, label %282, label %277

277:                                              ; preds = %268
  %278 = and i32 %272, -256
  %279 = zext i16 %275 to i32
  %280 = load ptr, ptr %27, align 4
  %281 = getelementptr i8, ptr %280, i32 %279
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %281, i32 %278) #11, !srcloc !9
  br label %282

282:                                              ; preds = %277, %268, %263
  %283 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 43
  %284 = load i32, ptr %283, align 8
  %285 = and i32 %284, 8
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %309, label %287

287:                                              ; preds = %282
  %288 = load i32, ptr @wp_on, align 4
  %289 = icmp eq i32 %288, 2
  br i1 %289, label %290, label %310

290:                                              ; preds = %287
  %291 = load ptr, ptr %243, align 8
  %292 = getelementptr i16, ptr %291, i32 4
  %293 = load i16, ptr %292, align 2
  %294 = icmp eq i16 %293, 0
  br i1 %294, label %310, label %295

295:                                              ; preds = %290
  %296 = zext i16 %293 to i32
  %297 = load ptr, ptr %27, align 4
  %298 = getelementptr i8, ptr %297, i32 %296
  %299 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %298) #11, !srcloc !8
  %300 = load ptr, ptr %243, align 8
  %301 = getelementptr i16, ptr %300, i32 4
  %302 = load i16, ptr %301, align 2
  %303 = icmp eq i16 %302, 0
  br i1 %303, label %310, label %304

304:                                              ; preds = %295
  %305 = and i32 %299, -536870913
  %306 = zext i16 %302 to i32
  %307 = load ptr, ptr %27, align 4
  %308 = getelementptr i8, ptr %307, i32 %306
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %308, i32 %305) #11, !srcloc !9
  br label %310

309:                                              ; preds = %282
  store i32 0, ptr @wp_on, align 4
  br label %310

310:                                              ; preds = %309, %304, %295, %290, %287
  %311 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #11
  %312 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 5
  store i32 %311, ptr %312, align 8
  %313 = icmp slt i32 %311, 0
  br i1 %313, label %314, label %315

314:                                              ; preds = %310
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7) #12
  br label %441

315:                                              ; preds = %310
  %316 = icmp eq ptr %1, null
  br i1 %316, label %326, label %317

317:                                              ; preds = %315
  %318 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 8
  store ptr %1, ptr %318, align 4
  %319 = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %311, ptr noundef nonnull @brcmnand_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull %11) #11
  %320 = load ptr, ptr %318, align 4
  %321 = load ptr, ptr %320, align 4
  %322 = tail call zeroext i1 %321(ptr noundef %320) #11
  %323 = load ptr, ptr %318, align 4
  %324 = getelementptr inbounds %struct.brcmnand_soc, ptr %323, i32 0, i32 1
  %325 = load ptr, ptr %324, align 4
  tail call void %325(ptr noundef %323, i1 noundef zeroext true) #11
  br label %328

326:                                              ; preds = %315
  %327 = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %311, ptr noundef nonnull @brcmnand_ctlrdy_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull %11) #11
  br label %328

328:                                              ; preds = %326, %317
  %329 = phi i32 [ %319, %317 ], [ %327, %326 ]
  %330 = icmp slt i32 %329, 0
  br i1 %330, label %331, label %333

331:                                              ; preds = %328
  %332 = load i32, ptr %312, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %332, i32 noundef %329) #12
  br label %441

333:                                              ; preds = %328
  %334 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %5, ptr noundef null) #11
  %335 = icmp eq ptr %334, null
  br i1 %335, label %438, label %336

336:                                              ; preds = %333
  %337 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 35
  %338 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 36
  %339 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 34
  br label %340

340:                                              ; preds = %435, %336
  %341 = phi ptr [ %334, %336 ], [ %436, %435 ]
  %342 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %341, ptr noundef nonnull @.str.8) #11
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %435, label %344

344:                                              ; preds = %340
  %345 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 1528, i32 noundef 3520) #11
  %346 = icmp eq ptr %345, null
  br i1 %346, label %434, label %347

347:                                              ; preds = %344
  %348 = getelementptr inbounds %struct.brcmnand_host, ptr %345, i32 0, i32 2
  store ptr %0, ptr %348, align 8
  %349 = getelementptr inbounds %struct.brcmnand_host, ptr %345, i32 0, i32 8
  store ptr %11, ptr %349, align 8
  %350 = getelementptr inbounds %struct.brcmnand_host, ptr %345, i32 0, i32 3
  %351 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %341, ptr noundef nonnull @.str.53, ptr noundef %350, i32 noundef 1, i32 noundef 0) #11
  %352 = icmp sgt i32 %351, -1
  br i1 %352, label %354, label %353

353:                                              ; preds = %347
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.54) #12
  br label %430

354:                                              ; preds = %347
  %355 = getelementptr inbounds %struct.brcmnand_host, ptr %345, i32 0, i32 1
  %356 = getelementptr inbounds %struct.brcmnand_host, ptr %345, i32 0, i32 1, i32 0, i32 0, i32 56, i32 25
  store ptr %341, ptr %356, align 8
  %357 = getelementptr inbounds %struct.brcmnand_host, ptr %345, i32 0, i32 1, i32 0, i32 0, i32 13
  %358 = load ptr, ptr %357, align 8
  %359 = icmp eq ptr %358, null
  br i1 %359, label %360, label %362

360:                                              ; preds = %354
  %361 = tail call i32 @of_property_read_string(ptr noundef nonnull %341, ptr noundef nonnull @.str.56, ptr noundef %357) #11
  br label %362

362:                                              ; preds = %360, %354
  %363 = getelementptr inbounds %struct.brcmnand_host, ptr %345, i32 0, i32 1, i32 34
  store ptr %345, ptr %363, align 8
  %364 = load i32, ptr %350, align 4
  %365 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %3, i32 noundef 3264, ptr noundef nonnull @.str.55, i32 noundef %364) #11
  store ptr %365, ptr %357, align 8
  %366 = icmp eq ptr %365, null
  br i1 %366, label %430, label %367

367:                                              ; preds = %362
  %368 = getelementptr inbounds %struct.brcmnand_host, ptr %345, i32 0, i32 1, i32 0, i32 0, i32 55
  store ptr null, ptr %368, align 4
  %369 = getelementptr inbounds %struct.brcmnand_host, ptr %345, i32 0, i32 1, i32 0, i32 0, i32 56, i32 1
  store ptr %3, ptr %369, align 4
  %370 = getelementptr inbounds %struct.brcmnand_host, ptr %345, i32 0, i32 1, i32 5, i32 7
  store ptr @brcmnand_cmd_ctrl, ptr %370, align 4
  %371 = getelementptr inbounds %struct.brcmnand_host, ptr %345, i32 0, i32 1, i32 5, i32 8
  store ptr @brcmnand_cmdfunc, ptr %371, align 8
  %372 = getelementptr inbounds %struct.brcmnand_host, ptr %345, i32 0, i32 1, i32 5, i32 10
  store ptr @brcmnand_waitfunc, ptr %372, align 8
  %373 = getelementptr inbounds %struct.brcmnand_host, ptr %345, i32 0, i32 1, i32 5, i32 3
  store ptr @brcmnand_read_byte, ptr %373, align 4
  %374 = getelementptr inbounds %struct.brcmnand_host, ptr %345, i32 0, i32 1, i32 5, i32 6
  store ptr @brcmnand_read_buf, ptr %374, align 8
  %375 = getelementptr inbounds %struct.brcmnand_host, ptr %345, i32 0, i32 1, i32 5, i32 5
  store ptr @brcmnand_write_buf, ptr %375, align 4
  %376 = getelementptr inbounds %struct.brcmnand_host, ptr %345, i32 0, i32 1, i32 33
  store i32 3, ptr %376, align 8
  %377 = getelementptr inbounds %struct.brcmnand_host, ptr %345, i32 0, i32 1, i32 33, i32 18
  store ptr @brcmnand_read_page, ptr %377, align 8
  %378 = getelementptr inbounds %struct.brcmnand_host, ptr %345, i32 0, i32 1, i32 33, i32 21
  store ptr @brcmnand_write_page, ptr %378, align 4
  %379 = getelementptr inbounds %struct.brcmnand_host, ptr %345, i32 0, i32 1, i32 33, i32 16
  store ptr @brcmnand_read_page_raw, ptr %379, align 8
  %380 = getelementptr inbounds %struct.brcmnand_host, ptr %345, i32 0, i32 1, i32 33, i32 17
  store ptr @brcmnand_write_page_raw, ptr %380, align 4
  %381 = getelementptr inbounds %struct.brcmnand_host, ptr %345, i32 0, i32 1, i32 33, i32 22
  store ptr @brcmnand_write_oob_raw, ptr %381, align 8
  %382 = getelementptr inbounds %struct.brcmnand_host, ptr %345, i32 0, i32 1, i32 33, i32 23
  store ptr @brcmnand_read_oob_raw, ptr %382, align 4
  %383 = getelementptr inbounds %struct.brcmnand_host, ptr %345, i32 0, i32 1, i32 33, i32 24
  store ptr @brcmnand_read_oob, ptr %383, align 8
  %384 = getelementptr inbounds %struct.brcmnand_host, ptr %345, i32 0, i32 1, i32 33, i32 25
  store ptr @brcmnand_write_oob, ptr %384, align 4
  %385 = getelementptr inbounds %struct.brcmnand_host, ptr %345, i32 0, i32 1, i32 32
  store ptr %21, ptr %385, align 4
  %386 = load i32, ptr %350, align 4
  %387 = load ptr, ptr %243, align 8
  %388 = getelementptr i16, ptr %387, i32 7
  %389 = load i16, ptr %388, align 2
  %390 = icmp eq i32 %386, 0
  br i1 %390, label %391, label %396

391:                                              ; preds = %367
  %392 = load ptr, ptr %338, align 4
  %393 = icmp eq ptr %392, null
  br i1 %393, label %394, label %405

394:                                              ; preds = %391
  %395 = load ptr, ptr %337, align 8
  br label %405

396:                                              ; preds = %367
  %397 = getelementptr i16, ptr %387, i32 8
  %398 = load i16, ptr %397, align 2
  %399 = load ptr, ptr %337, align 8
  %400 = icmp eq i16 %398, 0
  %401 = xor i1 %400, true
  %402 = sext i1 %401 to i32
  %403 = add i32 %386, %402
  %404 = select i1 %400, i16 %389, i16 %398
  br label %405

405:                                              ; preds = %396, %394, %391
  %406 = phi i32 [ %403, %396 ], [ 0, %394 ], [ 0, %391 ]
  %407 = phi ptr [ %399, %396 ], [ %395, %394 ], [ %392, %391 ]
  %408 = phi i16 [ %404, %396 ], [ %389, %394 ], [ %389, %391 ]
  %409 = getelementptr i8, ptr %407, i32 1
  %410 = load i8, ptr %409, align 1
  %411 = zext i16 %408 to i32
  %412 = load i32, ptr %339, align 4
  %413 = mul i32 %412, %406
  %414 = zext i8 %410 to i32
  %415 = add nuw nsw i32 %414, %411
  %416 = add i32 %415, %413
  %417 = and i32 %416, 65535
  %418 = load ptr, ptr %27, align 4
  %419 = getelementptr i8, ptr %418, i32 %417
  %420 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %419) #11, !srcloc !8
  %421 = and i32 %420, -8388609
  %422 = load ptr, ptr %27, align 4
  %423 = getelementptr i8, ptr %422, i32 %417
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %423, i32 %421) #11, !srcloc !9
  %424 = tail call i32 @nand_scan_with_ids(ptr noundef %355, i32 noundef 1, ptr noundef null) #11
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %426, label %430

426:                                              ; preds = %405
  %427 = tail call i32 @mtd_device_parse_register(ptr noundef %355, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #11
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %431, label %429

429:                                              ; preds = %426
  tail call void @nand_cleanup(ptr noundef %355) #11
  br label %430

430:                                              ; preds = %429, %405, %362, %353
  tail call void @devm_kfree(ptr noundef %3, ptr noundef nonnull %345) #11
  br label %435

431:                                              ; preds = %426
  %432 = load ptr, ptr %24, align 4
  store ptr %345, ptr %24, align 4
  store ptr %23, ptr %345, align 4
  %433 = getelementptr inbounds %struct.list_head, ptr %345, i32 0, i32 1
  store ptr %432, ptr %433, align 4
  store volatile ptr %345, ptr %432, align 4
  br label %435

434:                                              ; preds = %344
  tail call void @of_node_put(ptr noundef nonnull %341) #11
  br label %441

435:                                              ; preds = %431, %430, %340
  %436 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %5, ptr noundef nonnull %341) #11
  %437 = icmp eq ptr %436, null
  br i1 %437, label %438, label %340

438:                                              ; preds = %435, %333
  %439 = load volatile ptr, ptr %23, align 4
  %440 = icmp eq ptr %439, %23
  br i1 %440, label %441, label %444

441:                                              ; preds = %438, %434, %331, %314, %232, %229, %225, %203, %200, %185, %167, %158
  %442 = phi i32 [ -19, %158 ], [ %168, %167 ], [ %186, %185 ], [ %201, %200 ], [ -19, %225 ], [ %227, %229 ], [ -19, %314 ], [ %329, %331 ], [ -12, %434 ], [ %233, %232 ], [ -12, %203 ], [ -19, %438 ]
  %443 = load ptr, ptr %33, align 8
  tail call void @clk_disable(ptr noundef %443) #11
  tail call void @clk_unprepare(ptr noundef %443) #11
  br label %444

444:                                              ; preds = %441, %438, %42, %41, %35, %29, %10, %7, %2
  %445 = phi i32 [ %30, %29 ], [ %442, %441 ], [ -19, %2 ], [ -19, %7 ], [ -12, %10 ], [ -517, %42 ], [ 0, %438 ], [ %39, %41 ], [ %36, %35 ]
  ret i32 %445
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dma_set_mask_and_coherent(ptr noundef %0, i64 noundef %1) unnamed_addr #3 {
  %3 = tail call i32 @dma_set_mask(ptr noundef %0, i64 noundef %1) #11
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 @dma_set_coherent_mask(ptr noundef %0, i64 noundef %1) #11
  br label %7

7:                                                ; preds = %5, %2
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmnand_dma_irq(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 14
  tail call void @complete(ptr noundef %3) #11
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmnand_dma_trans(ptr nocapture noundef readonly %0, i64 noundef %1, ptr noundef %2, ptr nocapture noundef readnone %3, i32 noundef %4, i8 noundef zeroext %5) #0 {
  %7 = getelementptr inbounds %struct.brcmnand_host, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq i8 %5, 1
  %10 = select i1 %9, i32 2, i32 1
  %11 = load ptr, ptr %8, align 8
  %12 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %2) #11
  %13 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %14 = xor i1 %13, true
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %25, !prof !10

16:                                               ; preds = %6
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %17 = tail call ptr @dev_driver_string(ptr noundef %11) #11
  %18 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load ptr, ptr %11, align 4
  br label %23

23:                                               ; preds = %21, %16
  %24 = phi ptr [ %22, %21 ], [ %19, %16 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.42, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.43, ptr noundef %17, ptr noundef %24) #11
  br label %25

25:                                               ; preds = %23, %6
  br i1 %12, label %35, label %26

26:                                               ; preds = %25
  %27 = load ptr, ptr @mem_map, align 4
  %28 = ptrtoint ptr %2 to i32
  %29 = add i32 %28, 1073741824
  %30 = lshr i32 %29, 12
  %31 = getelementptr %struct.page, ptr %27, i32 %30
  %32 = and i32 %28, 4095
  %33 = tail call i32 @dma_map_page_attrs(ptr noundef %11, ptr noundef %31, i32 noundef %32, i32 noundef %4, i32 noundef %10, i32 noundef 0) #11
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %37

35:                                               ; preds = %26, %25
  %36 = load ptr, ptr %8, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.41) #12
  br label %135

37:                                               ; preds = %26
  %38 = getelementptr inbounds %struct.brcmnand_controller, ptr %8, i32 0, i32 29
  %39 = load ptr, ptr %38, align 4
  %40 = zext i8 %5 to i32
  %41 = shl nuw i32 %40, 24
  %42 = or i32 %41, 771
  %43 = getelementptr inbounds %struct.brcm_nand_dma_desc, ptr %39, i32 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(64) %39, i8 0, i64 64, i1 false) #11
  store i32 %42, ptr %43, align 1
  %44 = getelementptr inbounds %struct.brcm_nand_dma_desc, ptr %39, i32 0, i32 3
  store i32 %33, ptr %44, align 1
  %45 = getelementptr inbounds %struct.brcm_nand_dma_desc, ptr %39, i32 0, i32 5
  store i32 %4, ptr %45, align 1
  %46 = getelementptr inbounds %struct.brcm_nand_dma_desc, ptr %39, i32 0, i32 6
  store i32 %4, ptr %46, align 1
  %47 = trunc i64 %1 to i32
  %48 = getelementptr inbounds %struct.brcm_nand_dma_desc, ptr %39, i32 0, i32 7
  store i32 %47, ptr %48, align 1
  %49 = lshr i64 %1, 32
  %50 = trunc i64 %49 to i32
  %51 = getelementptr inbounds %struct.brcm_nand_dma_desc, ptr %39, i32 0, i32 8
  store i32 %50, ptr %51, align 1
  %52 = getelementptr inbounds %struct.brcmnand_host, ptr %0, i32 0, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.brcm_nand_dma_desc, ptr %39, i32 0, i32 9
  store i32 %53, ptr %54, align 1
  %55 = getelementptr inbounds %struct.brcm_nand_dma_desc, ptr %39, i32 0, i32 11
  store i32 1, ptr %55, align 1
  %56 = getelementptr inbounds %struct.brcmnand_controller, ptr %8, i32 0, i32 30
  %57 = load i32, ptr %56, align 8
  %58 = load ptr, ptr %7, align 8
  %59 = getelementptr inbounds %struct.brcmnand_controller, ptr %58, i32 0, i32 28
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr i16, ptr %60, i32 1
  %62 = load i16, ptr %61, align 2
  %63 = getelementptr inbounds %struct.brcmnand_controller, ptr %58, i32 0, i32 4
  %64 = load ptr, ptr %63, align 4
  %65 = zext i16 %62 to i32
  %66 = getelementptr i8, ptr %64, i32 %65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %57) #11, !srcloc !9
  %67 = load ptr, ptr %59, align 8
  %68 = getelementptr i16, ptr %67, i32 1
  %69 = load i16, ptr %68, align 2
  %70 = load ptr, ptr %63, align 4
  %71 = zext i16 %69 to i32
  %72 = getelementptr i8, ptr %70, i32 %71
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #11, !srcloc !8
  %74 = getelementptr inbounds %struct.brcmnand_controller, ptr %58, i32 0, i32 7
  %75 = load i32, ptr %74, align 8
  %76 = icmp sgt i32 %75, 1538
  br i1 %76, label %77, label %91

77:                                               ; preds = %37
  %78 = load ptr, ptr %59, align 8
  %79 = getelementptr i16, ptr %78, i32 2
  %80 = load i16, ptr %79, align 2
  %81 = load ptr, ptr %63, align 4
  %82 = zext i16 %80 to i32
  %83 = getelementptr i8, ptr %81, i32 %82
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 0) #11, !srcloc !9
  %84 = load ptr, ptr %59, align 8
  %85 = getelementptr i16, ptr %84, i32 2
  %86 = load i16, ptr %85, align 2
  %87 = load ptr, ptr %63, align 4
  %88 = zext i16 %86 to i32
  %89 = getelementptr i8, ptr %87, i32 %88
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #11, !srcloc !8
  br label %91

91:                                               ; preds = %77, %37
  %92 = getelementptr inbounds %struct.brcmnand_controller, ptr %58, i32 0, i32 11
  store i8 1, ptr %92, align 8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  %93 = load ptr, ptr %59, align 8
  %94 = getelementptr i16, ptr %93, i32 3
  %95 = load i16, ptr %94, align 2
  %96 = load ptr, ptr %63, align 4
  %97 = zext i16 %95 to i32
  %98 = getelementptr i8, ptr %96, i32 %97
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 3) #11, !srcloc !9
  %99 = getelementptr inbounds %struct.brcmnand_controller, ptr %58, i32 0, i32 14
  %100 = tail call i32 @wait_for_completion_timeout(ptr noundef %99, i32 noundef 10) #11
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %118

102:                                              ; preds = %91
  %103 = load ptr, ptr %58, align 8
  %104 = load ptr, ptr %59, align 8
  %105 = getelementptr i16, ptr %104, i32 5
  %106 = load i16, ptr %105, align 2
  %107 = load ptr, ptr %63, align 4
  %108 = zext i16 %106 to i32
  %109 = getelementptr i8, ptr %107, i32 %108
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %109) #11, !srcloc !8
  %111 = load ptr, ptr %59, align 8
  %112 = getelementptr i16, ptr %111, i32 8
  %113 = load i16, ptr %112, align 2
  %114 = load ptr, ptr %63, align 4
  %115 = zext i16 %113 to i32
  %116 = getelementptr i8, ptr %114, i32 %115
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %116) #11, !srcloc !8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.44, i32 noundef %110, i32 noundef %117) #12
  br label %118

118:                                              ; preds = %102, %91
  store i8 0, ptr %92, align 8
  %119 = load ptr, ptr %59, align 8
  %120 = getelementptr i16, ptr %119, i32 3
  %121 = load i16, ptr %120, align 2
  %122 = load ptr, ptr %63, align 4
  %123 = zext i16 %121 to i32
  %124 = getelementptr i8, ptr %122, i32 %123
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 0) #11, !srcloc !9
  %125 = load ptr, ptr %8, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %125, i32 noundef %33, i32 noundef %4, i32 noundef %10, i32 noundef 0) #11
  %126 = load ptr, ptr %38, align 4
  %127 = getelementptr inbounds %struct.brcm_nand_dma_desc, ptr %126, i32 0, i32 11
  %128 = load i32, ptr %127, align 1
  %129 = and i32 %128, 256
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %118
  %132 = and i32 %128, 512
  %133 = icmp eq i32 %132, 0
  %134 = select i1 %133, i32 0, i32 -117
  br label %135

135:                                              ; preds = %131, %118, %35
  %136 = phi i32 [ -12, %35 ], [ -74, %118 ], [ %134, %131 ]
  ret i32 %136
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @brcmnand_edu_setup(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.45) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %77, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef nonnull %5) #11
  %9 = getelementptr inbounds %struct.brcmnand_controller, ptr %4, i32 0, i32 18
  store ptr %8, ptr %9, align 8
  %10 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = ptrtoint ptr %8 to i32
  br label %77

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.brcmnand_controller, ptr %4, i32 0, i32 17
  store ptr @edu_regs, ptr %14, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 1) #11, !srcloc !9
  %15 = load ptr, ptr %14, align 4
  %16 = load i16, ptr %15, align 2
  %17 = load ptr, ptr %9, align 8
  %18 = zext i16 %16 to i32
  %19 = getelementptr i8, ptr %17, i32 %18
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #11, !srcloc !8
  %21 = load ptr, ptr %14, align 4
  %22 = getelementptr i16, ptr %21, i32 8
  %23 = load i16, ptr %22, align 2
  %24 = load ptr, ptr %9, align 8
  %25 = zext i16 %23 to i32
  %26 = getelementptr i8, ptr %24, i32 %25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 0) #11, !srcloc !9
  %27 = load ptr, ptr %14, align 4
  %28 = getelementptr i16, ptr %27, i32 8
  %29 = load i16, ptr %28, align 2
  %30 = load ptr, ptr %9, align 8
  %31 = zext i16 %29 to i32
  %32 = getelementptr i8, ptr %30, i32 %31
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #11, !srcloc !8
  %34 = load ptr, ptr %14, align 4
  %35 = getelementptr i16, ptr %34, i32 7
  %36 = load i16, ptr %35, align 2
  %37 = load ptr, ptr %9, align 8
  %38 = zext i16 %36 to i32
  %39 = getelementptr i8, ptr %37, i32 %38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 0) #11, !srcloc !9
  %40 = load ptr, ptr %14, align 4
  %41 = getelementptr i16, ptr %40, i32 7
  %42 = load i16, ptr %41, align 2
  %43 = load ptr, ptr %9, align 8
  %44 = zext i16 %42 to i32
  %45 = getelementptr i8, ptr %43, i32 %44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 0) #11, !srcloc !9
  %46 = load ptr, ptr %14, align 4
  %47 = getelementptr i16, ptr %46, i32 7
  %48 = load i16, ptr %47, align 2
  %49 = load ptr, ptr %9, align 8
  %50 = zext i16 %48 to i32
  %51 = getelementptr i8, ptr %49, i32 %50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 0) #11, !srcloc !9
  %52 = load ptr, ptr %14, align 4
  %53 = getelementptr i16, ptr %52, i32 7
  %54 = load i16, ptr %53, align 2
  %55 = load ptr, ptr %9, align 8
  %56 = zext i16 %54 to i32
  %57 = getelementptr i8, ptr %55, i32 %56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 0) #11, !srcloc !9
  %58 = load ptr, ptr %14, align 4
  %59 = getelementptr i16, ptr %58, i32 7
  %60 = load i16, ptr %59, align 2
  %61 = load ptr, ptr %9, align 8
  %62 = zext i16 %60 to i32
  %63 = getelementptr i8, ptr %61, i32 %62
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #11, !srcloc !8
  %65 = tail call i32 @platform_get_irq_optional(ptr noundef %0, i32 noundef 1) #11
  %66 = getelementptr inbounds %struct.brcmnand_controller, ptr %4, i32 0, i32 19
  store i32 %65, ptr %66, align 4
  %67 = icmp slt i32 %65, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.46) #12
  br label %77

69:                                               ; preds = %13
  %70 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %65, ptr noundef nonnull @brcmnand_edu_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.47, ptr noundef %4) #11
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load ptr, ptr %4, align 8
  %74 = load i32, ptr %66, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.5, i32 noundef %74, i32 noundef %70) #12
  br label %77

75:                                               ; preds = %69
  %76 = load i32, ptr %66, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.48, i32 noundef %76) #12
  br label %77

77:                                               ; preds = %75, %72, %68, %11, %1
  %78 = phi i32 [ %12, %11 ], [ %70, %72 ], [ 0, %68 ], [ 0, %75 ], [ 0, %1 ]
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmnand_edu_trans(ptr nocapture noundef readonly %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i8 noundef zeroext %5) #0 {
  %7 = getelementptr inbounds %struct.brcmnand_host, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq i8 %5, 1
  %10 = select i1 %9, i32 2, i32 1
  %11 = load ptr, ptr %8, align 8
  %12 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %2) #11
  %13 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %14 = xor i1 %13, true
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %25, !prof !10

16:                                               ; preds = %6
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %17 = tail call ptr @dev_driver_string(ptr noundef %11) #11
  %18 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load ptr, ptr %11, align 4
  br label %23

23:                                               ; preds = %21, %16
  %24 = phi ptr [ %22, %21 ], [ %19, %16 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.42, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.43, ptr noundef %17, ptr noundef %24) #11
  br label %25

25:                                               ; preds = %23, %6
  br i1 %12, label %35, label %26

26:                                               ; preds = %25
  %27 = load ptr, ptr @mem_map, align 4
  %28 = ptrtoint ptr %2 to i32
  %29 = add i32 %28, 1073741824
  %30 = lshr i32 %29, 12
  %31 = getelementptr %struct.page, ptr %27, i32 %30
  %32 = and i32 %28, 4095
  %33 = tail call i32 @dma_map_page_attrs(ptr noundef %11, ptr noundef %31, i32 noundef %32, i32 noundef %4, i32 noundef %10, i32 noundef 0) #11
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %37

35:                                               ; preds = %26, %25
  %36 = load ptr, ptr %8, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.49) #12
  br label %460

37:                                               ; preds = %26
  %38 = lshr i32 %4, 9
  %39 = getelementptr inbounds %struct.brcmnand_controller, ptr %8, i32 0, i32 12
  store i8 1, ptr %39, align 1
  %40 = zext i32 %33 to i64
  %41 = getelementptr inbounds %struct.brcmnand_controller, ptr %8, i32 0, i32 21
  store i64 %40, ptr %41, align 8
  %42 = trunc i64 %1 to i32
  %43 = getelementptr inbounds %struct.brcmnand_controller, ptr %8, i32 0, i32 22
  store i32 %42, ptr %43, align 8
  %44 = zext i1 %9 to i32
  %45 = getelementptr inbounds %struct.brcmnand_controller, ptr %8, i32 0, i32 23
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.brcmnand_controller, ptr %8, i32 0, i32 20
  store i32 %38, ptr %46, align 8
  %47 = getelementptr inbounds %struct.brcmnand_host, ptr %0, i32 0, i32 7, i32 3
  %48 = load i32, ptr %47, align 8
  %49 = getelementptr inbounds %struct.brcmnand_controller, ptr %8, i32 0, i32 25
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.brcmnand_controller, ptr %8, i32 0, i32 27
  store ptr %3, ptr %50, align 4
  %51 = getelementptr inbounds %struct.brcmnand_controller, ptr %8, i32 0, i32 17
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr i16, ptr %52, i32 1
  %54 = load i16, ptr %53, align 2
  %55 = getelementptr inbounds %struct.brcmnand_controller, ptr %8, i32 0, i32 18
  %56 = load ptr, ptr %55, align 8
  %57 = zext i16 %54 to i32
  %58 = getelementptr i8, ptr %56, i32 %57
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %33) #11, !srcloc !9
  %59 = load ptr, ptr %51, align 4
  %60 = getelementptr i16, ptr %59, i32 1
  %61 = load i16, ptr %60, align 2
  %62 = load ptr, ptr %55, align 8
  %63 = zext i16 %61 to i32
  %64 = getelementptr i8, ptr %62, i32 %63
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #11, !srcloc !8
  %66 = load i32, ptr %43, align 8
  %67 = load ptr, ptr %51, align 4
  %68 = getelementptr i16, ptr %67, i32 2
  %69 = load i16, ptr %68, align 2
  %70 = load ptr, ptr %55, align 8
  %71 = zext i16 %69 to i32
  %72 = getelementptr i8, ptr %70, i32 %71
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %66) #11, !srcloc !9
  %73 = load ptr, ptr %51, align 4
  %74 = getelementptr i16, ptr %73, i32 2
  %75 = load i16, ptr %74, align 2
  %76 = load ptr, ptr %55, align 8
  %77 = zext i16 %75 to i32
  %78 = getelementptr i8, ptr %76, i32 %77
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #11, !srcloc !8
  %80 = load ptr, ptr %51, align 4
  %81 = getelementptr i16, ptr %80, i32 3
  %82 = load i16, ptr %81, align 2
  %83 = load ptr, ptr %55, align 8
  %84 = zext i16 %82 to i32
  %85 = getelementptr i8, ptr %83, i32 %84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 512) #11, !srcloc !9
  %86 = load ptr, ptr %51, align 4
  %87 = getelementptr i16, ptr %86, i32 3
  %88 = load i16, ptr %87, align 2
  %89 = load ptr, ptr %55, align 8
  %90 = zext i16 %88 to i32
  %91 = getelementptr i8, ptr %89, i32 %90
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #11, !srcloc !8
  %93 = load ptr, ptr %50, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %188, label %95

95:                                               ; preds = %37
  %96 = load i32, ptr %45, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %188

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.brcmnand_controller, ptr %8, i32 0, i32 33
  %100 = load ptr, ptr %99, align 8
  %101 = getelementptr i16, ptr %100, i32 2
  %102 = load i16, ptr %101, align 2
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %120, label %104

104:                                              ; preds = %98
  %105 = load i32, ptr %43, align 8
  %106 = zext i16 %102 to i32
  %107 = getelementptr inbounds %struct.brcmnand_controller, ptr %8, i32 0, i32 2
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr i8, ptr %108, i32 %106
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 %105) #11, !srcloc !9
  %110 = load ptr, ptr %99, align 8
  %111 = getelementptr i16, ptr %110, i32 2
  %112 = load i16, ptr %111, align 2
  %113 = icmp eq i16 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %104
  %115 = zext i16 %112 to i32
  %116 = getelementptr inbounds %struct.brcmnand_controller, ptr %8, i32 0, i32 2
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr i8, ptr %117, i32 %115
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %118) #11, !srcloc !8
  br label %120

120:                                              ; preds = %114, %104, %98
  %121 = load ptr, ptr %50, align 4
  %122 = load i32, ptr %49, align 4
  %123 = getelementptr inbounds %struct.brcmnand_controller, ptr %8, i32 0, i32 26
  %124 = load i32, ptr %123, align 8
  %125 = shl i32 %122, %124
  %126 = icmp eq i32 %124, 0
  %127 = getelementptr inbounds %struct.brcmnand_controller, ptr %8, i32 0, i32 42
  %128 = load i32, ptr %127, align 4
  %129 = sub i32 %125, %128
  %130 = tail call i32 @llvm.smax.i32(i32 %129, i32 0) #11
  %131 = select i1 %126, i32 %122, i32 %130
  %132 = tail call i32 @llvm.smin.i32(i32 %131, i32 %128) #11
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %185

134:                                              ; preds = %120
  %135 = getelementptr inbounds %struct.brcmnand_controller, ptr %8, i32 0, i32 2
  br label %136

136:                                              ; preds = %181, %134
  %137 = phi i32 [ %128, %134 ], [ %182, %181 ]
  %138 = phi i32 [ 0, %134 ], [ %179, %181 ]
  %139 = icmp ugt i32 %137, %138
  br i1 %139, label %140, label %178

140:                                              ; preds = %136
  %141 = getelementptr i8, ptr %121, i32 %138
  %142 = load i8, ptr %141, align 1
  %143 = zext i8 %142 to i32
  %144 = shl nuw i32 %143, 24
  %145 = or i32 %138, 1
  %146 = getelementptr i8, ptr %121, i32 %145
  %147 = load i8, ptr %146, align 1
  %148 = zext i8 %147 to i32
  %149 = shl nuw nsw i32 %148, 16
  %150 = or i32 %149, %144
  %151 = or i32 %138, 2
  %152 = getelementptr i8, ptr %121, i32 %151
  %153 = load i8, ptr %152, align 1
  %154 = zext i8 %153 to i32
  %155 = shl nuw nsw i32 %154, 8
  %156 = or i32 %150, %155
  %157 = or i32 %138, 3
  %158 = getelementptr i8, ptr %121, i32 %157
  %159 = load i8, ptr %158, align 1
  %160 = zext i8 %159 to i32
  %161 = or i32 %156, %160
  %162 = load ptr, ptr %99, align 8
  %163 = getelementptr i16, ptr %162, i32 23
  %164 = load i16, ptr %163, align 2
  %165 = getelementptr i16, ptr %162, i32 24
  %166 = load i16, ptr %165, align 2
  %167 = icmp ugt i32 %138, 15
  %168 = icmp ne i16 %166, 0
  %169 = select i1 %167, i1 %168, i1 false
  %170 = trunc i32 %138 to i16
  %171 = add i16 %170, -16
  %172 = select i1 %169, i16 %171, i16 %170
  %173 = select i1 %169, i16 %166, i16 %164
  %174 = add i16 %173, %172
  %175 = zext i16 %174 to i32
  %176 = load ptr, ptr %135, align 4
  %177 = getelementptr i8, ptr %176, i32 %175
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %177, i32 %161) #11, !srcloc !9
  br label %178

178:                                              ; preds = %140, %136
  %179 = add i32 %138, 4
  %180 = icmp slt i32 %179, %132
  br i1 %180, label %181, label %183

181:                                              ; preds = %178
  %182 = load i32, ptr %127, align 4
  br label %136

183:                                              ; preds = %178
  %184 = load ptr, ptr %50, align 4
  br label %185

185:                                              ; preds = %183, %120
  %186 = phi ptr [ %184, %183 ], [ %121, %120 ]
  %187 = getelementptr i8, ptr %186, i32 %132
  store ptr %187, ptr %50, align 4
  br label %188

188:                                              ; preds = %185, %95, %37
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  tail call void @arm_heavy_mb() #11
  %189 = load i32, ptr %45, align 4
  %190 = load ptr, ptr %51, align 4
  %191 = getelementptr i16, ptr %190, i32 4
  %192 = load i16, ptr %191, align 2
  %193 = load ptr, ptr %55, align 8
  %194 = zext i16 %192 to i32
  %195 = getelementptr i8, ptr %193, i32 %194
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %195, i32 %189) #11, !srcloc !9
  %196 = load ptr, ptr %51, align 4
  %197 = getelementptr i16, ptr %196, i32 4
  %198 = load i16, ptr %197, align 2
  %199 = load ptr, ptr %55, align 8
  %200 = zext i16 %198 to i32
  %201 = getelementptr i8, ptr %199, i32 %200
  %202 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %201) #11, !srcloc !8
  %203 = getelementptr inbounds %struct.brcmnand_controller, ptr %8, i32 0, i32 15
  %204 = tail call i32 @wait_for_completion_timeout(ptr noundef %203, i32 noundef 20) #11
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %222

206:                                              ; preds = %188
  %207 = load ptr, ptr %8, align 8
  %208 = load ptr, ptr %51, align 4
  %209 = getelementptr i16, ptr %208, i32 6
  %210 = load i16, ptr %209, align 2
  %211 = load ptr, ptr %55, align 8
  %212 = zext i16 %210 to i32
  %213 = getelementptr i8, ptr %211, i32 %212
  %214 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %213) #11, !srcloc !8
  %215 = load ptr, ptr %51, align 4
  %216 = getelementptr i16, ptr %215, i32 8
  %217 = load i16, ptr %216, align 2
  %218 = load ptr, ptr %55, align 8
  %219 = zext i16 %217 to i32
  %220 = getelementptr i8, ptr %218, i32 %219
  %221 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %220) #11, !srcloc !8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %207, ptr noundef nonnull @.str.50, i32 noundef %214, i32 noundef %221) #12
  br label %222

222:                                              ; preds = %206, %188
  %223 = load ptr, ptr %8, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %223, i32 noundef %33, i32 noundef %4, i32 noundef %10, i32 noundef 0) #11
  %224 = load ptr, ptr %50, align 4
  %225 = icmp eq ptr %224, null
  br i1 %225, label %285, label %226

226:                                              ; preds = %222
  %227 = load i32, ptr %45, align 4
  %228 = icmp eq i32 %227, 1
  br i1 %228, label %229, label %285

229:                                              ; preds = %226
  %230 = load i32, ptr %49, align 4
  %231 = getelementptr inbounds %struct.brcmnand_controller, ptr %8, i32 0, i32 26
  %232 = load i32, ptr %231, align 8
  %233 = shl i32 %230, %232
  %234 = icmp eq i32 %232, 0
  %235 = getelementptr inbounds %struct.brcmnand_controller, ptr %8, i32 0, i32 42
  %236 = load i32, ptr %235, align 4
  %237 = sub i32 %233, %236
  %238 = tail call i32 @llvm.smax.i32(i32 %237, i32 0) #11
  %239 = select i1 %234, i32 %230, i32 %238
  %240 = tail call i32 @llvm.smin.i32(i32 %239, i32 %236) #11
  %241 = icmp sgt i32 %240, 0
  br i1 %241, label %242, label %282

242:                                              ; preds = %229
  %243 = getelementptr inbounds %struct.brcmnand_controller, ptr %8, i32 0, i32 33
  %244 = getelementptr inbounds %struct.brcmnand_controller, ptr %8, i32 0, i32 2
  br label %245

245:                                              ; preds = %278, %242
  %246 = phi i32 [ %236, %242 ], [ %279, %278 ]
  %247 = phi i32 [ 0, %242 ], [ %276, %278 ]
  %248 = icmp ugt i32 %246, %247
  br i1 %248, label %249, label %273

249:                                              ; preds = %245
  %250 = load ptr, ptr %243, align 8
  %251 = getelementptr i16, ptr %250, i32 21
  %252 = load i16, ptr %251, align 2
  %253 = getelementptr i16, ptr %250, i32 22
  %254 = load i16, ptr %253, align 2
  %255 = icmp ugt i32 %247, 15
  %256 = icmp ne i16 %254, 0
  %257 = select i1 %255, i1 %256, i1 false
  %258 = trunc i32 %247 to i16
  %259 = add i16 %258, -16
  %260 = select i1 %257, i16 %259, i16 %258
  %261 = select i1 %257, i16 %254, i16 %252
  %262 = and i16 %260, -4
  %263 = add i16 %262, %261
  %264 = zext i16 %263 to i32
  %265 = load ptr, ptr %244, align 4
  %266 = getelementptr i8, ptr %265, i32 %264
  %267 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %266) #11, !srcloc !8
  %268 = shl i32 %247, 3
  %269 = and i32 %268, 24
  %270 = xor i32 %269, 24
  %271 = lshr i32 %267, %270
  %272 = trunc i32 %271 to i8
  br label %273

273:                                              ; preds = %249, %245
  %274 = phi i8 [ %272, %249 ], [ 119, %245 ]
  %275 = getelementptr i8, ptr %224, i32 %247
  store i8 %274, ptr %275, align 1
  %276 = add nuw nsw i32 %247, 1
  %277 = icmp eq i32 %276, %240
  br i1 %277, label %280, label %278

278:                                              ; preds = %273
  %279 = load i32, ptr %235, align 4
  br label %245

280:                                              ; preds = %273
  %281 = load ptr, ptr %50, align 4
  br label %282

282:                                              ; preds = %280, %229
  %283 = phi ptr [ %281, %280 ], [ %224, %229 ]
  %284 = getelementptr i8, ptr %283, i32 %240
  store ptr %284, ptr %50, align 4
  br label %285

285:                                              ; preds = %282, %226, %222
  %286 = getelementptr inbounds %struct.brcmnand_controller, ptr %8, i32 0, i32 33
  %287 = load ptr, ptr %286, align 8
  %288 = getelementptr i16, ptr %287, i32 3
  %289 = load i16, ptr %288, align 2
  %290 = icmp eq i16 %289, 0
  br i1 %290, label %302, label %291

291:                                              ; preds = %285
  %292 = zext i16 %289 to i32
  %293 = getelementptr inbounds %struct.brcmnand_controller, ptr %8, i32 0, i32 2
  %294 = load ptr, ptr %293, align 4
  %295 = getelementptr i8, ptr %294, i32 %292
  %296 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %295) #11, !srcloc !8
  %297 = and i32 %296, 1
  %298 = icmp eq i32 %297, 0
  %299 = or i1 %9, %298
  br i1 %299, label %302, label %300

300:                                              ; preds = %291
  %301 = load ptr, ptr %8, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %301, ptr noundef nonnull @.str.31, i64 noundef %1) #12
  br label %302

302:                                              ; preds = %300, %291, %285
  %303 = phi i32 [ -5, %300 ], [ 0, %291 ], [ 0, %285 ]
  %304 = load ptr, ptr %51, align 4
  %305 = getelementptr i16, ptr %304, i32 6
  %306 = load i16, ptr %305, align 2
  %307 = load ptr, ptr %55, align 8
  %308 = zext i16 %306 to i32
  %309 = getelementptr i8, ptr %307, i32 %308
  %310 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %309) #11, !srcloc !8
  %311 = and i32 %310, 1
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %322, label %313

313:                                              ; preds = %302
  %314 = load ptr, ptr %8, align 8
  %315 = load ptr, ptr %51, align 4
  %316 = getelementptr i16, ptr %315, i32 6
  %317 = load i16, ptr %316, align 2
  %318 = load ptr, ptr %55, align 8
  %319 = zext i16 %317 to i32
  %320 = getelementptr i8, ptr %318, i32 %319
  %321 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %320) #11, !srcloc !8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %314, ptr noundef nonnull @.str.51, i32 noundef %321) #12
  br label %322

322:                                              ; preds = %313, %302
  %323 = load ptr, ptr %51, align 4
  %324 = getelementptr i16, ptr %323, i32 8
  %325 = load i16, ptr %324, align 2
  %326 = load ptr, ptr %55, align 8
  %327 = zext i16 %325 to i32
  %328 = getelementptr i8, ptr %326, i32 %327
  %329 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %328) #11, !srcloc !8
  %330 = and i32 %329, 1
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %334, label %332, !prof !13

332:                                              ; preds = %322
  %333 = load ptr, ptr %8, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %333, ptr noundef nonnull @.str.52, i64 noundef %1) #12
  br label %334

334:                                              ; preds = %332, %322
  %335 = phi i32 [ -5, %332 ], [ %303, %322 ]
  store i8 0, ptr %39, align 1
  %336 = load ptr, ptr %51, align 4
  %337 = getelementptr i16, ptr %336, i32 8
  %338 = load i16, ptr %337, align 2
  %339 = load ptr, ptr %55, align 8
  %340 = zext i16 %338 to i32
  %341 = getelementptr i8, ptr %339, i32 %340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %341, i32 0) #11, !srcloc !9
  %342 = load ptr, ptr %51, align 4
  %343 = getelementptr i16, ptr %342, i32 8
  %344 = load i16, ptr %343, align 2
  %345 = load ptr, ptr %55, align 8
  %346 = zext i16 %344 to i32
  %347 = getelementptr i8, ptr %345, i32 %346
  %348 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %347) #11, !srcloc !8
  %349 = load ptr, ptr %51, align 4
  %350 = getelementptr i16, ptr %349, i32 7
  %351 = load i16, ptr %350, align 2
  %352 = load ptr, ptr %55, align 8
  %353 = zext i16 %351 to i32
  %354 = getelementptr i8, ptr %352, i32 %353
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %354, i32 0) #11, !srcloc !9
  %355 = load ptr, ptr %51, align 4
  %356 = getelementptr i16, ptr %355, i32 7
  %357 = load i16, ptr %356, align 2
  %358 = load ptr, ptr %55, align 8
  %359 = zext i16 %357 to i32
  %360 = getelementptr i8, ptr %358, i32 %359
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %360, i32 0) #11, !srcloc !9
  %361 = load ptr, ptr %51, align 4
  %362 = getelementptr i16, ptr %361, i32 7
  %363 = load i16, ptr %362, align 2
  %364 = load ptr, ptr %55, align 8
  %365 = zext i16 %363 to i32
  %366 = getelementptr i8, ptr %364, i32 %365
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %366, i32 0) #11, !srcloc !9
  %367 = load ptr, ptr %51, align 4
  %368 = getelementptr i16, ptr %367, i32 7
  %369 = load i16, ptr %368, align 2
  %370 = load ptr, ptr %55, align 8
  %371 = zext i16 %369 to i32
  %372 = getelementptr i8, ptr %370, i32 %371
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %372, i32 0) #11, !srcloc !9
  %373 = load ptr, ptr %51, align 4
  %374 = getelementptr i16, ptr %373, i32 7
  %375 = load i16, ptr %374, align 2
  %376 = load ptr, ptr %55, align 8
  %377 = zext i16 %375 to i32
  %378 = getelementptr i8, ptr %376, i32 %377
  %379 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %378) #11, !srcloc !8
  %380 = load ptr, ptr %51, align 4
  %381 = getelementptr i16, ptr %380, i32 5
  %382 = load i16, ptr %381, align 2
  %383 = load ptr, ptr %55, align 8
  %384 = zext i16 %382 to i32
  %385 = getelementptr i8, ptr %383, i32 %384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %385, i32 0) #11, !srcloc !9
  %386 = load ptr, ptr %51, align 4
  %387 = getelementptr i16, ptr %386, i32 5
  %388 = load i16, ptr %387, align 2
  %389 = load ptr, ptr %55, align 8
  %390 = zext i16 %388 to i32
  %391 = getelementptr i8, ptr %389, i32 %390
  %392 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %391) #11, !srcloc !8
  %393 = icmp eq i32 %335, 0
  %394 = and i1 %9, %393
  br i1 %394, label %395, label %460

395:                                              ; preds = %334
  %396 = load ptr, ptr %286, align 8
  %397 = getelementptr i16, ptr %396, i32 16
  %398 = load i16, ptr %397, align 2
  %399 = icmp eq i16 %398, 0
  br i1 %399, label %407, label %400

400:                                              ; preds = %395
  %401 = zext i16 %398 to i32
  %402 = getelementptr inbounds %struct.brcmnand_controller, ptr %8, i32 0, i32 2
  %403 = load ptr, ptr %402, align 4
  %404 = getelementptr i8, ptr %403, i32 %401
  %405 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %404) #11, !srcloc !8
  %406 = load ptr, ptr %286, align 8
  br label %407

407:                                              ; preds = %400, %395
  %408 = phi ptr [ %406, %400 ], [ %396, %395 ]
  %409 = phi i32 [ %405, %400 ], [ 0, %395 ]
  %410 = getelementptr i16, ptr %408, i32 15
  %411 = load i16, ptr %410, align 2
  %412 = icmp eq i16 %411, 0
  br i1 %412, label %420, label %413

413:                                              ; preds = %407
  %414 = zext i16 %411 to i32
  %415 = getelementptr inbounds %struct.brcmnand_controller, ptr %8, i32 0, i32 2
  %416 = load ptr, ptr %415, align 4
  %417 = getelementptr i8, ptr %416, i32 %414
  %418 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %417) #11, !srcloc !8
  %419 = and i32 %418, 65535
  br label %420

420:                                              ; preds = %413, %407
  %421 = phi i32 [ %419, %413 ], [ 0, %407 ]
  %422 = zext i32 %409 to i64
  %423 = zext i32 %421 to i64
  %424 = shl nuw nsw i64 %423, 32
  %425 = or i64 %424, %422
  %426 = icmp eq i64 %425, 0
  br i1 %426, label %427, label %460

427:                                              ; preds = %420
  %428 = load ptr, ptr %286, align 8
  %429 = getelementptr i16, ptr %428, i32 14
  %430 = load i16, ptr %429, align 2
  %431 = icmp eq i16 %430, 0
  br i1 %431, label %439, label %432

432:                                              ; preds = %427
  %433 = zext i16 %430 to i32
  %434 = getelementptr inbounds %struct.brcmnand_controller, ptr %8, i32 0, i32 2
  %435 = load ptr, ptr %434, align 4
  %436 = getelementptr i8, ptr %435, i32 %433
  %437 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %436) #11, !srcloc !8
  %438 = load ptr, ptr %286, align 8
  br label %439

439:                                              ; preds = %432, %427
  %440 = phi ptr [ %438, %432 ], [ %428, %427 ]
  %441 = phi i32 [ %437, %432 ], [ 0, %427 ]
  %442 = getelementptr i16, ptr %440, i32 13
  %443 = load i16, ptr %442, align 2
  %444 = icmp eq i16 %443, 0
  br i1 %444, label %452, label %445

445:                                              ; preds = %439
  %446 = zext i16 %443 to i32
  %447 = getelementptr inbounds %struct.brcmnand_controller, ptr %8, i32 0, i32 2
  %448 = load ptr, ptr %447, align 4
  %449 = getelementptr i8, ptr %448, i32 %446
  %450 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %449) #11, !srcloc !8
  %451 = and i32 %450, 65535
  br label %452

452:                                              ; preds = %445, %439
  %453 = phi i32 [ %451, %445 ], [ 0, %439 ]
  %454 = zext i32 %441 to i64
  %455 = zext i32 %453 to i64
  %456 = shl nuw nsw i64 %455, 32
  %457 = or i64 %456, %454
  %458 = icmp eq i64 %457, 0
  %459 = select i1 %458, i32 0, i32 -117
  br label %460

460:                                              ; preds = %452, %420, %334, %35
  %461 = phi i32 [ -12, %35 ], [ %335, %334 ], [ %459, %452 ], [ -74, %420 ]
  ret i32 %461
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmnand_irq(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call zeroext i1 %5(ptr noundef %4) #11
  br i1 %6, label %7, label %27

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 11
  %9 = load i8, ptr %8, align 8, !range !14
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 12
  %13 = load i8, ptr %12, align 1, !range !14
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 5
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, %0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 19
  %21 = load i32, ptr %20, align 4
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %27, label %23

23:                                               ; preds = %19, %15
  %24 = tail call i32 @brcmnand_edu_irq(i32 noundef %0, ptr noundef %1) #11
  br label %27

25:                                               ; preds = %11
  %26 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 13
  tail call void @complete(ptr noundef %26) #11
  br label %27

27:                                               ; preds = %25, %23, %19, %7, %2
  %28 = phi i32 [ 0, %2 ], [ 1, %7 ], [ 1, %19 ], [ 1, %23 ], [ 1, %25 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmnand_ctlrdy_irq(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 11
  %4 = load i8, ptr %3, align 8, !range !14
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 12
  %8 = load i8, ptr %7, align 1, !range !14
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 5
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, %0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 19
  %16 = load i32, ptr %15, align 4
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %22, label %18

18:                                               ; preds = %14, %10
  %19 = tail call i32 @brcmnand_edu_irq(i32 noundef %0, ptr noundef %1)
  br label %22

20:                                               ; preds = %6
  %21 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 13
  tail call void @complete(ptr noundef %21) #11
  br label %22

22:                                               ; preds = %20, %18, %14, %2
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmnand_remove(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %16, label %7

7:                                                ; preds = %13, %1
  %8 = phi ptr [ %14, %13 ], [ %5, %1 ]
  %9 = getelementptr inbounds %struct.brcmnand_host, ptr %8, i32 0, i32 1
  %10 = tail call i32 @mtd_device_unregister(ptr noundef %9) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12, !prof !13

12:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 3208, i32 noundef 9, ptr noundef null) #11
  br label %13

13:                                               ; preds = %12, %7
  tail call void @nand_cleanup(ptr noundef %9) #11
  %14 = load ptr, ptr %8, align 4
  %15 = icmp eq ptr %14, %4
  br i1 %15, label %16, label %7

16:                                               ; preds = %13, %1
  %17 = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 9
  %18 = load ptr, ptr %17, align 8
  tail call void @clk_disable(ptr noundef %18) #11
  tail call void @clk_unprepare(ptr noundef %18) #11
  store ptr null, ptr %2, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @brcmnand_save_restore_cs_config(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.brcmnand_host, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.brcmnand_host, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.brcmnand_controller, ptr %4, i32 0, i32 33
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i16, ptr %8, i32 7
  %10 = load i16, ptr %9, align 2
  %11 = icmp eq i32 %6, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.brcmnand_controller, ptr %4, i32 0, i32 36
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %58, label %43

16:                                               ; preds = %2
  %17 = getelementptr i16, ptr %8, i32 8
  %18 = load i16, ptr %17, align 2
  %19 = getelementptr inbounds %struct.brcmnand_controller, ptr %4, i32 0, i32 35
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr i8, ptr %20, i32 1
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i16 %18, 0
  %24 = xor i1 %23, true
  %25 = sext i1 %24 to i32
  %26 = add i32 %6, %25
  %27 = select i1 %23, i16 %10, i16 %18
  %28 = zext i16 %27 to i32
  %29 = getelementptr inbounds %struct.brcmnand_controller, ptr %4, i32 0, i32 34
  %30 = load i32, ptr %29, align 4
  %31 = mul i32 %30, %26
  %32 = zext i8 %22 to i32
  %33 = add nuw nsw i32 %32, %28
  %34 = add i32 %33, %31
  %35 = load i8, ptr %20, align 1
  %36 = zext i8 %35 to i32
  %37 = add i32 %31, %28
  %38 = add i32 %37, %36
  %39 = getelementptr i8, ptr %20, i32 2
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = add i32 %37, %41
  br label %79

43:                                               ; preds = %12
  %44 = getelementptr i8, ptr %14, i32 1
  %45 = load i8, ptr %44, align 1
  %46 = zext i16 %10 to i32
  %47 = getelementptr inbounds %struct.brcmnand_controller, ptr %4, i32 0, i32 34
  %48 = load i32, ptr %47, align 4
  %49 = zext i8 %45 to i32
  %50 = add nuw nsw i32 %49, %46
  %51 = load i8, ptr %14, align 1
  %52 = zext i8 %51 to i32
  %53 = add nuw nsw i32 %46, %52
  %54 = getelementptr i8, ptr %14, i32 2
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = add nuw nsw i32 %46, %56
  br label %79

58:                                               ; preds = %12
  %59 = getelementptr inbounds %struct.brcmnand_controller, ptr %4, i32 0, i32 35
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr i8, ptr %60, i32 1
  %62 = load i8, ptr %61, align 1
  %63 = zext i16 %10 to i32
  %64 = getelementptr inbounds %struct.brcmnand_controller, ptr %4, i32 0, i32 34
  %65 = load i32, ptr %64, align 4
  %66 = zext i8 %62 to i32
  %67 = add nuw nsw i32 %66, %63
  %68 = getelementptr inbounds %struct.brcmnand_controller, ptr %4, i32 0, i32 35
  %69 = load ptr, ptr %68, align 8
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i32
  %72 = add nuw nsw i32 %63, %71
  %73 = getelementptr i8, ptr %69, i32 2
  %74 = load i8, ptr %73, align 1
  %75 = zext i8 %74 to i32
  %76 = add nuw nsw i32 %63, %75
  %77 = getelementptr inbounds %struct.brcmnand_controller, ptr %4, i32 0, i32 35
  %78 = load ptr, ptr %77, align 8
  br label %79

79:                                               ; preds = %58, %43, %16
  %80 = phi ptr [ %14, %43 ], [ %78, %58 ], [ %20, %16 ]
  %81 = phi i32 [ %46, %43 ], [ %63, %58 ], [ %37, %16 ]
  %82 = phi i32 [ %46, %43 ], [ %63, %58 ], [ %28, %16 ]
  %83 = phi i32 [ %53, %43 ], [ %72, %58 ], [ %38, %16 ]
  %84 = phi i32 [ %48, %43 ], [ %65, %58 ], [ %30, %16 ]
  %85 = phi i32 [ %50, %43 ], [ %67, %58 ], [ %34, %16 ]
  %86 = phi i32 [ %57, %43 ], [ %76, %58 ], [ %42, %16 ]
  %87 = phi i32 [ 0, %43 ], [ 0, %58 ], [ %26, %16 ]
  %88 = getelementptr i8, ptr %80, i32 3
  %89 = load i8, ptr %88, align 1
  %90 = zext i8 %89 to i32
  %91 = add i32 %81, %90
  %92 = getelementptr i8, ptr %80, i32 4
  %93 = load i8, ptr %92, align 1
  %94 = trunc i32 %85 to i16
  %95 = trunc i32 %83 to i16
  %96 = mul i32 %87, %84
  %97 = zext i8 %93 to i32
  %98 = add i32 %96, %82
  %99 = add i32 %98, %97
  %100 = icmp eq i32 %1, 0
  %101 = and i32 %85, 65535
  br i1 %100, label %131, label %102

102:                                              ; preds = %79
  %103 = getelementptr inbounds %struct.brcmnand_host, ptr %0, i32 0, i32 7, i32 11
  %104 = load i32, ptr %103, align 8
  %105 = getelementptr inbounds %struct.brcmnand_controller, ptr %4, i32 0, i32 2
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr i8, ptr %106, i32 %101
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %104) #11, !srcloc !9
  %108 = icmp eq i16 %94, %95
  br i1 %108, label %115, label %109

109:                                              ; preds = %102
  %110 = and i32 %83, 65535
  %111 = getelementptr inbounds %struct.brcmnand_host, ptr %0, i32 0, i32 7, i32 12
  %112 = load i32, ptr %111, align 4
  %113 = load ptr, ptr %105, align 4
  %114 = getelementptr i8, ptr %113, i32 %110
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 %112) #11, !srcloc !9
  br label %115

115:                                              ; preds = %109, %102
  %116 = and i32 %86, 65535
  %117 = getelementptr inbounds %struct.brcmnand_host, ptr %0, i32 0, i32 7, i32 10
  %118 = load i32, ptr %117, align 4
  %119 = load ptr, ptr %105, align 4
  %120 = getelementptr i8, ptr %119, i32 %116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 %118) #11, !srcloc !9
  %121 = and i32 %91, 65535
  %122 = getelementptr inbounds %struct.brcmnand_host, ptr %0, i32 0, i32 7, i32 13
  %123 = load i32, ptr %122, align 8
  %124 = load ptr, ptr %105, align 4
  %125 = getelementptr i8, ptr %124, i32 %121
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 %123) #11, !srcloc !9
  %126 = and i32 %99, 65535
  %127 = getelementptr inbounds %struct.brcmnand_host, ptr %0, i32 0, i32 7, i32 14
  %128 = load i32, ptr %127, align 4
  %129 = load ptr, ptr %105, align 4
  %130 = getelementptr i8, ptr %129, i32 %126
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %128) #11, !srcloc !9
  br label %160

131:                                              ; preds = %79
  %132 = getelementptr inbounds %struct.brcmnand_controller, ptr %4, i32 0, i32 2
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr i8, ptr %133, i32 %101
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %134) #11, !srcloc !8
  %136 = getelementptr inbounds %struct.brcmnand_host, ptr %0, i32 0, i32 7, i32 11
  store i32 %135, ptr %136, align 8
  %137 = icmp eq i16 %94, %95
  br i1 %137, label %144, label %138

138:                                              ; preds = %131
  %139 = and i32 %83, 65535
  %140 = load ptr, ptr %132, align 4
  %141 = getelementptr i8, ptr %140, i32 %139
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %141) #11, !srcloc !8
  %143 = getelementptr inbounds %struct.brcmnand_host, ptr %0, i32 0, i32 7, i32 12
  store i32 %142, ptr %143, align 4
  br label %144

144:                                              ; preds = %138, %131
  %145 = and i32 %86, 65535
  %146 = load ptr, ptr %132, align 4
  %147 = getelementptr i8, ptr %146, i32 %145
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %147) #11, !srcloc !8
  %149 = getelementptr inbounds %struct.brcmnand_host, ptr %0, i32 0, i32 7, i32 10
  store i32 %148, ptr %149, align 4
  %150 = and i32 %91, 65535
  %151 = load ptr, ptr %132, align 4
  %152 = getelementptr i8, ptr %151, i32 %150
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %152) #11, !srcloc !8
  %154 = getelementptr inbounds %struct.brcmnand_host, ptr %0, i32 0, i32 7, i32 13
  store i32 %153, ptr %154, align 8
  %155 = and i32 %99, 65535
  %156 = load ptr, ptr %132, align 4
  %157 = getelementptr i8, ptr %156, i32 %155
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %157) #11, !srcloc !8
  %159 = getelementptr inbounds %struct.brcmnand_host, ptr %0, i32 0, i32 7, i32 14
  store i32 %158, ptr %159, align 4
  br label %160

160:                                              ; preds = %144, %115
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_reset_op(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmnand_attach_chip(ptr nocapture noundef %0) #0 {
  %2 = alloca [128 x i8], align 1
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 34
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 8
  %8 = or i32 %7, 1049088
  store i32 %8, ptr %6, align 8
  %9 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 10
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 131072
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = or i32 %10, 262144
  store i32 %14, ptr %9, align 8
  br label %15

15:                                               ; preds = %13, %1
  %16 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 8
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %2, i8 0, i32 128, i1 false) #11, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !15
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(64) %18, i8 0, i32 64, i1 false) #11
  %19 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 1, i32 0, i32 0, i32 56, i32 25
  %20 = load ptr, ptr %19, align 8
  %21 = call i32 @of_property_read_variable_u32_array(ptr noundef %20, ptr noundef nonnull @.str.12, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #11
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %30, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 1, i32 0, i32 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 1, i32 0, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = lshr i32 %27, 9
  %29 = udiv i32 %25, %28
  br label %35

30:                                               ; preds = %15
  %31 = load i32, ptr %3, align 4
  %32 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 1, i32 0, i32 0, i32 4
  %33 = load i32, ptr %32, align 4
  %34 = lshr i32 %33, 9
  br label %35

35:                                               ; preds = %30, %23
  %36 = phi i32 [ %34, %30 ], [ %28, %23 ]
  %37 = phi i32 [ %33, %30 ], [ %27, %23 ]
  %38 = phi i32 [ %31, %30 ], [ %29, %23 ]
  %39 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 7, i32 3
  store i32 %38, ptr %39, align 8
  %40 = getelementptr inbounds %struct.brcmnand_controller, ptr %17, i32 0, i32 42
  %41 = load i32, ptr %40, align 4
  %42 = call i32 @llvm.umin.i32(i32 %38, i32 %41) #11
  store i32 %42, ptr %39, align 8
  %43 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 1, i32 0, i32 0, i32 4
  %44 = mul i32 %36, %42
  %45 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 1, i32 0, i32 0, i32 6
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 1, i32 0, i32 0, i32 2
  %47 = load i64, ptr %46, align 8
  store i64 %47, ptr %18, align 8
  %48 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 1, i32 0, i32 0, i32 3
  %49 = load i32, ptr %48, align 8
  %50 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 7, i32 1
  store i32 %49, ptr %50, align 8
  %51 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 7, i32 2
  store i32 %37, ptr %51, align 4
  %52 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 1, i32 6
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 2
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %55, i32 8, i32 16
  %57 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 7, i32 4
  store i32 %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 7, i32 5
  store i32 2, ptr %58, align 8
  %59 = lshr i64 %47, 32
  %60 = trunc i64 %59 to i32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %35
  %63 = call i32 @llvm.ctlz.i32(i32 %60, i1 true) #11, !range !16
  %64 = sub nuw nsw i32 64, %63
  br label %71

65:                                               ; preds = %35
  %66 = trunc i64 %47 to i32
  %67 = icmp eq i32 %66, 0
  %68 = call i32 @llvm.ctlz.i32(i32 %66, i1 false) #11, !range !16
  %69 = sub nuw nsw i32 32, %68
  %70 = select i1 %67, i32 0, i32 %69
  br label %71

71:                                               ; preds = %65, %62
  %72 = phi i32 [ %64, %62 ], [ %70, %65 ]
  %73 = icmp eq i32 %37, 0
  %74 = call i32 @llvm.ctlz.i32(i32 %37, i1 false) #11, !range !16
  %75 = add nsw i32 %74, -31
  %76 = select i1 %73, i32 1, i32 %75
  %77 = add nsw i32 %72, 6
  %78 = add nsw i32 %77, %76
  %79 = ashr i32 %78, 3
  %80 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 7, i32 6
  store i32 %79, ptr %80, align 4
  %81 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 1, i32 33
  %82 = load i32, ptr %81, align 8
  %83 = icmp eq i32 %82, 3
  br i1 %83, label %86, label %84

84:                                               ; preds = %71
  %85 = load ptr, ptr %17, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.13, i32 noundef %82) #12
  br label %675

86:                                               ; preds = %71
  %87 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 1, i32 33, i32 2
  %88 = load i32, ptr %87, align 8
  switch i32 %88, label %110 [
    i32 0, label %89
    i32 1, label %98
  ]

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 1, i32 33, i32 7
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 1, i32 33, i32 4
  %95 = load i32, ptr %94, align 8
  %96 = icmp eq i32 %95, 512
  br i1 %96, label %108, label %97

97:                                               ; preds = %93, %89
  br label %108

98:                                               ; preds = %86
  %99 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 1, i32 33, i32 7
  %100 = load i32, ptr %99, align 4
  %101 = icmp eq i32 %100, 1
  %102 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 1, i32 33, i32 4
  %103 = load i32, ptr %102, align 8
  %104 = icmp eq i32 %103, 512
  %105 = select i1 %101, i1 %104, i1 false
  br i1 %105, label %110, label %106

106:                                              ; preds = %98
  %107 = load ptr, ptr %17, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %107, ptr noundef nonnull @.str.14, i32 noundef %100, i32 noundef %103) #12
  br label %675

108:                                              ; preds = %97, %93
  %109 = phi i32 [ 2, %97 ], [ 1, %93 ]
  store i32 %109, ptr %87, align 8
  br label %110

110:                                              ; preds = %108, %98, %86
  %111 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 1, i32 33, i32 4
  %112 = load i32, ptr %111, align 8
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 1, i32 33, i32 7
  %116 = load i32, ptr %115, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %130

118:                                              ; preds = %114, %110
  %119 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 1, i32 0, i32 2, i32 1, i32 4
  %120 = load i32, ptr %119, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %130, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 1, i32 0, i32 2, i32 1, i32 3
  %124 = load i32, ptr %123, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %122
  store i32 %120, ptr %111, align 8
  %127 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 1, i32 33, i32 7
  store i32 %124, ptr %127, align 4
  %128 = load ptr, ptr %17, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %128, ptr noundef nonnull @.str.15, i32 noundef %120, i32 noundef %124) #12
  %129 = load i32, ptr %111, align 8
  br label %130

130:                                              ; preds = %126, %122, %118, %114
  %131 = phi i32 [ %112, %118 ], [ %112, %122 ], [ %129, %126 ], [ %112, %114 ]
  switch i32 %131, label %154 [
    i32 512, label %132
    i32 1024, label %138
  ]

132:                                              ; preds = %130
  %133 = load i32, ptr %87, align 8
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %156, label %135

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 1, i32 33, i32 7
  %137 = load i32, ptr %136, align 4
  br label %156

138:                                              ; preds = %130
  %139 = getelementptr inbounds %struct.brcmnand_controller, ptr %17, i32 0, i32 43
  %140 = load i32, ptr %139, align 8
  %141 = and i32 %140, 1
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %138
  %144 = load ptr, ptr %17, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %144, ptr noundef nonnull @.str.16) #12
  br label %675

145:                                              ; preds = %138
  %146 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 1, i32 33, i32 7
  %147 = load i32, ptr %146, align 4
  %148 = and i32 %147, 1
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %145
  %151 = load ptr, ptr %17, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %151, ptr noundef nonnull @.str.17) #12
  br label %675

152:                                              ; preds = %145
  %153 = ashr i32 %147, 1
  br label %156

154:                                              ; preds = %130
  %155 = load ptr, ptr %17, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %155, ptr noundef nonnull @.str.18, i32 noundef %131) #12
  br label %675

156:                                              ; preds = %152, %135, %132
  %157 = phi i32 [ %153, %152 ], [ %137, %135 ], [ 15, %132 ]
  %158 = phi i32 [ 1, %152 ], [ 0, %135 ], [ 0, %132 ]
  %159 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 7, i32 9
  store i32 %157, ptr %159, align 8
  %160 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 7, i32 8
  store i32 %158, ptr %160, align 4
  %161 = load i32, ptr %80, align 4
  %162 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 7, i32 7
  %163 = load i32, ptr %43, align 4
  %164 = icmp ugt i32 %163, 512
  br i1 %164, label %165, label %168

165:                                              ; preds = %156
  %166 = load i32, ptr %58, align 8
  %167 = add i32 %166, %161
  br label %170

168:                                              ; preds = %156
  %169 = add i32 %161, 1
  br label %170

170:                                              ; preds = %168, %165
  %171 = phi i32 [ %169, %168 ], [ %167, %165 ]
  store i32 %171, ptr %162, align 8
  %172 = load ptr, ptr %16, align 8
  %173 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 3
  %174 = load i32, ptr %173, align 4
  %175 = getelementptr inbounds %struct.brcmnand_controller, ptr %172, i32 0, i32 33
  %176 = load ptr, ptr %175, align 8
  %177 = getelementptr i16, ptr %176, i32 7
  %178 = load i16, ptr %177, align 2
  %179 = icmp eq i32 %174, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %170
  %181 = getelementptr inbounds %struct.brcmnand_controller, ptr %172, i32 0, i32 36
  %182 = load ptr, ptr %181, align 4
  %183 = icmp eq ptr %182, null
  br i1 %183, label %215, label %205

184:                                              ; preds = %170
  %185 = getelementptr i16, ptr %176, i32 8
  %186 = load i16, ptr %185, align 2
  %187 = getelementptr inbounds %struct.brcmnand_controller, ptr %172, i32 0, i32 35
  %188 = load ptr, ptr %187, align 8
  %189 = getelementptr i8, ptr %188, i32 1
  %190 = load i8, ptr %189, align 1
  %191 = icmp eq i16 %186, 0
  %192 = xor i1 %191, true
  %193 = sext i1 %192 to i32
  %194 = add i32 %174, %193
  %195 = select i1 %191, i16 %178, i16 %186
  %196 = zext i16 %195 to i32
  %197 = getelementptr inbounds %struct.brcmnand_controller, ptr %172, i32 0, i32 34
  %198 = load i32, ptr %197, align 4
  %199 = mul i32 %198, %194
  %200 = zext i8 %190 to i32
  %201 = add i32 %199, %196
  %202 = add i32 %201, %200
  %203 = load i8, ptr %188, align 1
  %204 = zext i8 %203 to i32
  br label %227

205:                                              ; preds = %180
  %206 = getelementptr i8, ptr %182, i32 1
  %207 = load i8, ptr %206, align 1
  %208 = zext i16 %178 to i32
  %209 = getelementptr inbounds %struct.brcmnand_controller, ptr %172, i32 0, i32 34
  %210 = load i32, ptr %209, align 4
  %211 = zext i8 %207 to i32
  %212 = add nuw nsw i32 %211, %208
  %213 = load i8, ptr %182, align 1
  %214 = zext i8 %213 to i32
  br label %227

215:                                              ; preds = %180
  %216 = getelementptr inbounds %struct.brcmnand_controller, ptr %172, i32 0, i32 35
  %217 = load ptr, ptr %216, align 8
  %218 = getelementptr i8, ptr %217, i32 1
  %219 = load i8, ptr %218, align 1
  %220 = zext i16 %178 to i32
  %221 = getelementptr inbounds %struct.brcmnand_controller, ptr %172, i32 0, i32 34
  %222 = load i32, ptr %221, align 4
  %223 = zext i8 %219 to i32
  %224 = add nuw nsw i32 %223, %220
  %225 = load i8, ptr %217, align 1
  %226 = zext i8 %225 to i32
  br label %227

227:                                              ; preds = %215, %205, %184
  %228 = phi i32 [ %220, %215 ], [ %208, %205 ], [ %204, %184 ]
  %229 = phi i32 [ %226, %215 ], [ %214, %205 ], [ %201, %184 ]
  %230 = phi i32 [ %220, %215 ], [ %208, %205 ], [ %196, %184 ]
  %231 = phi i32 [ %222, %215 ], [ %210, %205 ], [ %198, %184 ]
  %232 = phi i32 [ %224, %215 ], [ %212, %205 ], [ %202, %184 ]
  %233 = phi i32 [ 0, %215 ], [ 0, %205 ], [ %194, %184 ]
  %234 = phi ptr [ %217, %215 ], [ %182, %205 ], [ %188, %184 ]
  %235 = add i32 %229, %228
  %236 = getelementptr i8, ptr %234, i32 2
  %237 = load i8, ptr %236, align 1
  %238 = trunc i32 %232 to i16
  %239 = trunc i32 %235 to i16
  %240 = mul i32 %233, %231
  %241 = zext i8 %237 to i32
  %242 = add i32 %240, %230
  %243 = add i32 %242, %241
  %244 = getelementptr inbounds %struct.brcmnand_controller, ptr %172, i32 0, i32 38
  %245 = load ptr, ptr %244, align 4
  %246 = icmp eq ptr %245, null
  br i1 %246, label %269, label %247

247:                                              ; preds = %227
  %248 = load i32, ptr %245, align 4
  %249 = icmp eq i32 %248, 0
  %250 = load i32, ptr %50, align 8
  br i1 %249, label %267, label %251

251:                                              ; preds = %251, %247
  %252 = phi i32 [ %263, %251 ], [ %248, %247 ]
  %253 = phi i32 [ %260, %251 ], [ 0, %247 ]
  %254 = phi i32 [ %261, %251 ], [ 0, %247 ]
  %255 = phi i8 [ %259, %251 ], [ 0, %247 ]
  %256 = shl i32 %252, 10
  %257 = icmp eq i32 %256, %250
  %258 = trunc i32 %254 to i8
  %259 = select i1 %257, i8 %258, i8 %255
  %260 = select i1 %257, i32 1, i32 %253
  %261 = add i32 %254, 1
  %262 = getelementptr i32, ptr %245, i32 %261
  %263 = load i32, ptr %262, align 4
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %251

265:                                              ; preds = %251
  %266 = icmp eq i32 %260, 0
  br i1 %266, label %267, label %276

267:                                              ; preds = %265, %247
  %268 = load ptr, ptr %172, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %268, ptr noundef nonnull @.str.20, i32 noundef %250) #12
  br label %675

269:                                              ; preds = %227
  %270 = load i32, ptr %50, align 8
  %271 = call i32 @llvm.cttz.i32(i32 %270, i1 true) #11, !range !16
  %272 = icmp eq i32 %270, 0
  %273 = trunc i32 %271 to i8
  %274 = add nsw i8 %273, -13
  %275 = select i1 %272, i8 -14, i8 %274
  br label %276

276:                                              ; preds = %269, %265
  %277 = phi i32 [ %270, %269 ], [ %250, %265 ]
  %278 = phi i8 [ %275, %269 ], [ %259, %265 ]
  %279 = icmp ult i32 %277, 8192
  br i1 %279, label %286, label %280

280:                                              ; preds = %276
  %281 = getelementptr inbounds %struct.brcmnand_controller, ptr %172, i32 0, i32 37
  %282 = load i32, ptr %281, align 8
  %283 = icmp ne i32 %282, 0
  %284 = icmp ugt i32 %277, %282
  %285 = select i1 %283, i1 %284, i1 false
  br i1 %285, label %286, label %288

286:                                              ; preds = %280, %276
  %287 = load ptr, ptr %172, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %287, ptr noundef nonnull @.str.20, i32 noundef %277) #12
  br label %288

288:                                              ; preds = %286, %280
  %289 = phi i8 [ 0, %286 ], [ %278, %280 ]
  %290 = getelementptr inbounds %struct.brcmnand_controller, ptr %172, i32 0, i32 40
  %291 = load ptr, ptr %290, align 4
  %292 = icmp eq ptr %291, null
  br i1 %292, label %314, label %293

293:                                              ; preds = %288
  %294 = load i32, ptr %291, align 4
  %295 = icmp eq i32 %294, 0
  %296 = load i32, ptr %51, align 4
  br i1 %295, label %312, label %297

297:                                              ; preds = %297, %293
  %298 = phi i32 [ %308, %297 ], [ %294, %293 ]
  %299 = phi i32 [ %305, %297 ], [ 0, %293 ]
  %300 = phi i32 [ %306, %297 ], [ 0, %293 ]
  %301 = phi i8 [ %304, %297 ], [ 0, %293 ]
  %302 = icmp eq i32 %298, %296
  %303 = trunc i32 %300 to i8
  %304 = select i1 %302, i8 %303, i8 %301
  %305 = select i1 %302, i32 1, i32 %299
  %306 = add i32 %300, 1
  %307 = getelementptr i32, ptr %291, i32 %306
  %308 = load i32, ptr %307, align 4
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %297

310:                                              ; preds = %297
  %311 = icmp eq i32 %305, 0
  br i1 %311, label %312, label %321

312:                                              ; preds = %310, %293
  %313 = load ptr, ptr %172, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %313, ptr noundef nonnull @.str.21, i32 noundef %296) #12
  br label %675

314:                                              ; preds = %288
  %315 = load i32, ptr %51, align 4
  %316 = call i32 @llvm.cttz.i32(i32 %315, i1 true) #11, !range !16
  %317 = icmp eq i32 %315, 0
  %318 = trunc i32 %316 to i8
  %319 = add nsw i8 %318, -9
  %320 = select i1 %317, i8 -10, i8 %319
  br label %321

321:                                              ; preds = %314, %310
  %322 = phi i32 [ %315, %314 ], [ %296, %310 ]
  %323 = phi i8 [ %320, %314 ], [ %304, %310 ]
  %324 = icmp ult i32 %322, 512
  br i1 %324, label %331, label %325

325:                                              ; preds = %321
  %326 = getelementptr inbounds %struct.brcmnand_controller, ptr %172, i32 0, i32 39
  %327 = load i32, ptr %326, align 8
  %328 = icmp ne i32 %327, 0
  %329 = icmp ugt i32 %322, %327
  %330 = select i1 %328, i1 %329, i1 false
  br i1 %330, label %331, label %333

331:                                              ; preds = %325, %321
  %332 = load ptr, ptr %172, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %332, ptr noundef nonnull @.str.21, i32 noundef %322) #12
  br label %675

333:                                              ; preds = %325
  %334 = load i64, ptr %18, align 8
  %335 = lshr i64 %334, 32
  %336 = trunc i64 %335 to i32
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %343

338:                                              ; preds = %333
  %339 = and i64 %334, 4290772992
  %340 = icmp eq i64 %339, 0
  br i1 %340, label %341, label %346

341:                                              ; preds = %338
  %342 = load ptr, ptr %172, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %342, ptr noundef nonnull @.str.22, i64 noundef %334) #12
  br label %675

343:                                              ; preds = %333
  %344 = call i32 @llvm.ctlz.i32(i32 %336, i1 true) #11, !range !16
  %345 = sub nuw nsw i32 64, %344
  br label %352

346:                                              ; preds = %338
  %347 = trunc i64 %334 to i32
  %348 = icmp eq i32 %347, 0
  %349 = call i32 @llvm.ctlz.i32(i32 %347, i1 false) #11, !range !16
  %350 = sub nuw nsw i32 32, %349
  %351 = select i1 %348, i32 0, i32 %350
  br label %352

352:                                              ; preds = %346, %343
  %353 = phi i32 [ %345, %343 ], [ %351, %346 ]
  %354 = load i32, ptr %80, align 4
  %355 = shl i32 %354, 8
  %356 = load i32, ptr %58, align 8
  %357 = shl i32 %356, 12
  %358 = load i32, ptr %162, align 8
  %359 = shl i32 %358, 16
  %360 = load i32, ptr %57, align 4
  %361 = icmp eq i32 %360, 16
  %362 = select i1 %361, i32 8388608, i32 0
  %363 = shl nuw nsw i32 %353, 24
  %364 = add nsw i32 %363, -385875968
  %365 = or i32 %364, %355
  %366 = or i32 %365, %357
  %367 = or i32 %366, %359
  %368 = or i32 %367, %362
  %369 = and i32 %232, 65535
  %370 = icmp eq i16 %238, %239
  br i1 %370, label %371, label %383

371:                                              ; preds = %352
  %372 = zext i8 %323 to i32
  %373 = getelementptr inbounds %struct.brcmnand_controller, ptr %172, i32 0, i32 41
  %374 = load i32, ptr %373, align 8
  %375 = shl i32 %372, %374
  %376 = zext i8 %289 to i32
  %377 = shl i32 %376, 28
  %378 = or i32 %368, %377
  %379 = or i32 %378, %375
  %380 = getelementptr inbounds %struct.brcmnand_controller, ptr %172, i32 0, i32 2
  %381 = load ptr, ptr %380, align 4
  %382 = getelementptr i8, ptr %381, i32 %369
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %382, i32 %379) #11, !srcloc !9
  br label %394

383:                                              ; preds = %352
  %384 = and i32 %235, 65535
  %385 = getelementptr inbounds %struct.brcmnand_controller, ptr %172, i32 0, i32 2
  %386 = load ptr, ptr %385, align 4
  %387 = getelementptr i8, ptr %386, i32 %369
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %387, i32 %368) #11, !srcloc !9
  %388 = zext i8 %323 to i32
  %389 = zext i8 %289 to i32
  %390 = shl nuw nsw i32 %389, 4
  %391 = or i32 %390, %388
  %392 = load ptr, ptr %385, align 4
  %393 = getelementptr i8, ptr %392, i32 %384
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %393, i32 %391) #11, !srcloc !9
  br label %394

394:                                              ; preds = %383, %371
  %395 = and i32 %243, 65535
  %396 = getelementptr inbounds %struct.brcmnand_controller, ptr %172, i32 0, i32 2
  %397 = load ptr, ptr %396, align 4
  %398 = getelementptr i8, ptr %397, i32 %395
  %399 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %398) #11, !srcloc !8
  %400 = getelementptr inbounds %struct.brcmnand_controller, ptr %172, i32 0, i32 7
  %401 = load i32, ptr %400, align 8
  %402 = icmp sgt i32 %401, 1535
  %403 = select i1 %402, i32 2031616, i32 983040
  %404 = icmp sgt i32 %401, 1793
  %405 = or i32 %403, 57344
  %406 = select i1 %404, i32 %405, i32 %403
  br i1 %402, label %407, label %413

407:                                              ; preds = %394
  %408 = icmp eq i32 %401, 1794
  %409 = select i1 %408, i32 255, i32 127
  %410 = or i32 %406, %409
  %411 = xor i32 %410, -1
  %412 = and i32 %399, %411
  br label %420

413:                                              ; preds = %394
  %414 = icmp sgt i32 %401, 770
  %415 = select i1 %414, i32 63, i32 31
  %416 = or i32 %406, %415
  %417 = xor i32 %416, -1
  %418 = and i32 %399, %417
  %419 = icmp sgt i32 %401, 769
  br i1 %419, label %420, label %427

420:                                              ; preds = %413, %407
  %421 = phi i32 [ %412, %407 ], [ %418, %413 ]
  %422 = load i32, ptr %159, align 8
  %423 = shl i32 %422, 16
  %424 = or i32 %423, %421
  %425 = load i32, ptr %39, align 8
  %426 = or i32 %424, %425
  br label %427

427:                                              ; preds = %420, %413
  %428 = phi i32 [ %426, %420 ], [ %418, %413 ]
  %429 = load ptr, ptr %396, align 4
  %430 = getelementptr i8, ptr %429, i32 %395
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %430, i32 %428) #11, !srcloc !9
  %431 = load i32, ptr %160, align 4
  %432 = load ptr, ptr %16, align 8
  %433 = getelementptr inbounds %struct.brcmnand_controller, ptr %432, i32 0, i32 7
  %434 = load i32, ptr %433, align 8
  %435 = icmp sgt i32 %434, 1793
  br i1 %435, label %441, label %436

436:                                              ; preds = %427
  %437 = icmp sgt i32 %434, 1535
  br i1 %437, label %441, label %438

438:                                              ; preds = %436
  %439 = icmp sgt i32 %434, 1279
  %440 = select i1 %439, i32 6, i32 -1
  br label %441

441:                                              ; preds = %438, %436, %427
  %442 = phi i32 [ 9, %427 ], [ 7, %436 ], [ %440, %438 ]
  %443 = load i32, ptr %173, align 4
  %444 = getelementptr inbounds %struct.brcmnand_controller, ptr %432, i32 0, i32 33
  %445 = load ptr, ptr %444, align 8
  %446 = getelementptr i16, ptr %445, i32 7
  %447 = load i16, ptr %446, align 2
  %448 = icmp eq i32 %443, 0
  br i1 %448, label %449, label %456

449:                                              ; preds = %441
  %450 = getelementptr inbounds %struct.brcmnand_controller, ptr %432, i32 0, i32 36
  %451 = load ptr, ptr %450, align 4
  %452 = icmp eq ptr %451, null
  br i1 %452, label %453, label %466

453:                                              ; preds = %449
  %454 = getelementptr inbounds %struct.brcmnand_controller, ptr %432, i32 0, i32 35
  %455 = load ptr, ptr %454, align 8
  br label %466

456:                                              ; preds = %441
  %457 = getelementptr i16, ptr %445, i32 8
  %458 = load i16, ptr %457, align 2
  %459 = getelementptr inbounds %struct.brcmnand_controller, ptr %432, i32 0, i32 35
  %460 = load ptr, ptr %459, align 8
  %461 = icmp eq i16 %458, 0
  %462 = xor i1 %461, true
  %463 = sext i1 %462 to i32
  %464 = add i32 %443, %463
  %465 = select i1 %461, i16 %447, i16 %458
  br label %466

466:                                              ; preds = %456, %453, %449
  %467 = phi i32 [ %464, %456 ], [ 0, %453 ], [ 0, %449 ]
  %468 = phi ptr [ %460, %456 ], [ %455, %453 ], [ %451, %449 ]
  %469 = phi i16 [ %465, %456 ], [ %447, %453 ], [ %447, %449 ]
  %470 = icmp slt i32 %442, 0
  br i1 %470, label %499, label %471

471:                                              ; preds = %466
  %472 = getelementptr i8, ptr %468, i32 2
  %473 = load i8, ptr %472, align 1
  %474 = zext i8 %473 to i32
  %475 = zext i16 %469 to i32
  %476 = add nuw nsw i32 %474, %475
  %477 = getelementptr inbounds %struct.brcmnand_controller, ptr %432, i32 0, i32 34
  %478 = load i32, ptr %477, align 4
  %479 = mul i32 %478, %467
  %480 = add i32 %476, %479
  %481 = and i32 %480, 65535
  %482 = getelementptr inbounds %struct.brcmnand_controller, ptr %432, i32 0, i32 2
  %483 = load ptr, ptr %482, align 4
  %484 = getelementptr i8, ptr %483, i32 %481
  %485 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %484) #11, !srcloc !8
  %486 = shl nuw nsw i32 1, %442
  %487 = xor i32 %486, -1
  %488 = and i32 %485, %487
  %489 = icmp ne i32 %431, 0
  %490 = zext i1 %489 to i32
  %491 = shl nuw nsw i32 %490, %442
  %492 = or i32 %488, %491
  %493 = load ptr, ptr %482, align 4
  %494 = getelementptr i8, ptr %493, i32 %481
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %494, i32 %492) #11, !srcloc !9
  %495 = load ptr, ptr %16, align 8
  %496 = load i32, ptr %173, align 4
  %497 = getelementptr inbounds %struct.brcmnand_controller, ptr %495, i32 0, i32 33
  %498 = load ptr, ptr %497, align 8
  br label %499

499:                                              ; preds = %471, %466
  %500 = phi ptr [ %445, %466 ], [ %498, %471 ]
  %501 = phi i32 [ %443, %466 ], [ %496, %471 ]
  %502 = phi ptr [ %432, %466 ], [ %495, %471 ]
  %503 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 1, i32 33, i32 7
  %504 = load i32, ptr %503, align 4
  %505 = mul i32 %504, 3
  %506 = add i32 %505, 3
  %507 = sdiv i32 %506, 4
  %508 = getelementptr inbounds %struct.brcmnand_controller, ptr %502, i32 0, i32 33
  %509 = getelementptr i16, ptr %500, i32 9
  %510 = load i16, ptr %509, align 2
  %511 = icmp eq i16 %510, 0
  br i1 %511, label %562, label %512

512:                                              ; preds = %499
  %513 = getelementptr inbounds %struct.brcmnand_controller, ptr %502, i32 0, i32 7
  %514 = load i32, ptr %513, align 8
  %515 = icmp eq i32 %514, 1794
  br i1 %515, label %520, label %516

516:                                              ; preds = %512
  %517 = icmp sgt i32 %514, 1535
  br i1 %517, label %518, label %526

518:                                              ; preds = %516
  %519 = icmp ugt i32 %514, 1793
  br i1 %519, label %520, label %529

520:                                              ; preds = %518, %512
  %521 = phi i32 [ 6, %518 ], [ 7, %512 ]
  %522 = icmp sgt i32 %501, 3
  %523 = select i1 %522, i32 10, i32 9
  %524 = srem i32 %501, 4
  %525 = mul nsw i32 %521, %524
  br label %534

526:                                              ; preds = %516
  %527 = icmp sgt i32 %514, 1279
  %528 = select i1 %527, i32 5, i32 4
  br label %534

529:                                              ; preds = %518
  %530 = icmp sgt i32 %501, 4
  %531 = select i1 %530, i32 10, i32 9
  %532 = srem i32 %501, 5
  %533 = mul nsw i32 %532, 6
  br label %534

534:                                              ; preds = %529, %526, %520
  %535 = phi i32 [ %521, %520 ], [ 6, %529 ], [ %528, %526 ]
  %536 = phi i32 [ %525, %520 ], [ %533, %529 ], [ 0, %526 ]
  %537 = phi i32 [ %523, %520 ], [ %531, %529 ], [ 9, %526 ]
  %538 = add nsw i32 %535, -1
  %539 = shl nuw nsw i32 %538, %536
  %540 = and i32 %507, 255
  %541 = getelementptr i16, ptr %500, i32 %537
  %542 = load i16, ptr %541, align 2
  %543 = icmp eq i16 %542, 0
  br i1 %543, label %562, label %544

544:                                              ; preds = %534
  %545 = zext i16 %542 to i32
  %546 = getelementptr inbounds %struct.brcmnand_controller, ptr %502, i32 0, i32 2
  %547 = load ptr, ptr %546, align 4
  %548 = getelementptr i8, ptr %547, i32 %545
  %549 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %548) #11, !srcloc !8
  %550 = load ptr, ptr %508, align 8
  %551 = getelementptr i16, ptr %550, i32 %537
  %552 = load i16, ptr %551, align 2
  %553 = icmp eq i16 %552, 0
  br i1 %553, label %562, label %554

554:                                              ; preds = %544
  %555 = xor i32 %539, -1
  %556 = and i32 %549, %555
  %557 = shl nuw i32 %540, %536
  %558 = or i32 %556, %557
  %559 = zext i16 %552 to i32
  %560 = load ptr, ptr %546, align 4
  %561 = getelementptr i8, ptr %560, i32 %559
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %561, i32 %558) #11, !srcloc !9
  br label %562

562:                                              ; preds = %554, %544, %534, %499
  %563 = load ptr, ptr %16, align 8
  %564 = load i32, ptr %173, align 4
  %565 = getelementptr inbounds %struct.brcmnand_controller, ptr %563, i32 0, i32 33
  %566 = load ptr, ptr %565, align 8
  %567 = getelementptr i16, ptr %566, i32 7
  %568 = load i16, ptr %567, align 2
  %569 = icmp eq i32 %564, 0
  br i1 %569, label %570, label %577

570:                                              ; preds = %562
  %571 = getelementptr inbounds %struct.brcmnand_controller, ptr %563, i32 0, i32 36
  %572 = load ptr, ptr %571, align 4
  %573 = icmp eq ptr %572, null
  br i1 %573, label %574, label %587

574:                                              ; preds = %570
  %575 = getelementptr inbounds %struct.brcmnand_controller, ptr %563, i32 0, i32 35
  %576 = load ptr, ptr %575, align 8
  br label %587

577:                                              ; preds = %562
  %578 = getelementptr i16, ptr %566, i32 8
  %579 = load i16, ptr %578, align 2
  %580 = getelementptr inbounds %struct.brcmnand_controller, ptr %563, i32 0, i32 35
  %581 = load ptr, ptr %580, align 8
  %582 = icmp eq i16 %579, 0
  %583 = xor i1 %582, true
  %584 = sext i1 %583 to i32
  %585 = add i32 %564, %584
  %586 = select i1 %582, i16 %568, i16 %579
  br label %587

587:                                              ; preds = %577, %574, %570
  %588 = phi i32 [ %585, %577 ], [ 0, %574 ], [ 0, %570 ]
  %589 = phi ptr [ %581, %577 ], [ %576, %574 ], [ %572, %570 ]
  %590 = phi i16 [ %586, %577 ], [ %568, %574 ], [ %568, %570 ]
  %591 = getelementptr i8, ptr %589, i32 2
  %592 = load i8, ptr %591, align 1
  %593 = zext i16 %590 to i32
  %594 = getelementptr inbounds %struct.brcmnand_controller, ptr %563, i32 0, i32 34
  %595 = load i32, ptr %594, align 4
  %596 = mul i32 %595, %588
  %597 = zext i8 %592 to i32
  %598 = add nuw nsw i32 %597, %593
  %599 = add i32 %598, %596
  %600 = and i32 %599, 65535
  %601 = getelementptr inbounds %struct.brcmnand_controller, ptr %563, i32 0, i32 2
  %602 = load ptr, ptr %601, align 4
  %603 = getelementptr i8, ptr %602, i32 %600
  %604 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %603) #11, !srcloc !8
  %605 = load i32, ptr %159, align 8
  %606 = shl i32 %605, 16
  %607 = or i32 %604, %606
  %608 = or i32 %607, -1073741824
  %609 = load ptr, ptr %601, align 4
  %610 = getelementptr i8, ptr %609, i32 %600
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %610, i32 %608) #11, !srcloc !9
  %611 = load i64, ptr %18, align 8
  %612 = lshr i64 %611, 20
  %613 = load i32, ptr %50, align 8
  %614 = lshr i32 %613, 10
  %615 = load i32, ptr %51, align 4
  %616 = icmp ugt i32 %615, 1023
  %617 = lshr i32 %615, 10
  %618 = select i1 %616, i32 %617, i32 %615
  %619 = select i1 %616, ptr @.str.24, ptr @.str.25
  %620 = load i32, ptr %39, align 8
  %621 = load i32, ptr %57, align 4
  %622 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.23, i64 noundef %612, i32 noundef %614, i32 noundef %618, ptr noundef nonnull %619, i32 noundef %620, i32 noundef %621) #11
  %623 = getelementptr i8, ptr %2, i32 %622
  %624 = load ptr, ptr %16, align 8
  %625 = getelementptr inbounds %struct.brcmnand_controller, ptr %624, i32 0, i32 7
  %626 = load i32, ptr %625, align 8
  %627 = icmp slt i32 %626, 1794
  %628 = load i32, ptr %160, align 4
  %629 = icmp eq i32 %628, 0
  br i1 %627, label %630, label %634

630:                                              ; preds = %587
  br i1 %629, label %631, label %643

631:                                              ; preds = %630
  %632 = load i32, ptr %39, align 8
  %633 = icmp eq i32 %632, 16
  br i1 %633, label %638, label %647

634:                                              ; preds = %587
  br i1 %629, label %635, label %643

635:                                              ; preds = %634
  %636 = load i32, ptr %39, align 8
  switch i32 %636, label %647 [
    i32 16, label %638
    i32 28, label %637
  ]

637:                                              ; preds = %635
  br label %638

638:                                              ; preds = %637, %635, %631
  %639 = phi i32 [ 16, %637 ], [ 15, %631 ], [ 15, %635 ]
  %640 = load i32, ptr %159, align 8
  %641 = icmp eq i32 %640, %639
  br i1 %641, label %642, label %647

642:                                              ; preds = %638
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(14) %623, ptr noundef nonnull align 1 dereferenceable(14) @.str.26, i32 14, i1 false) #11
  br label %650

643:                                              ; preds = %634, %630
  %644 = load i32, ptr %159, align 8
  %645 = shl i32 %644, 1
  %646 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %623, ptr noundef nonnull @.str.27, i32 noundef %645) #11
  br label %650

647:                                              ; preds = %638, %635, %631
  %648 = load i32, ptr %159, align 8
  %649 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %623, ptr noundef nonnull @.str.28, i32 noundef %648) #11
  br label %650

650:                                              ; preds = %647, %643, %642
  %651 = load ptr, ptr %17, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %651, ptr noundef nonnull @.str.19, ptr noundef nonnull %2) #12
  %652 = load i32, ptr %173, align 4
  %653 = getelementptr inbounds %struct.brcmnand_controller, ptr %17, i32 0, i32 33
  %654 = load ptr, ptr %653, align 8
  %655 = getelementptr i16, ptr %654, i32 7
  %656 = load i16, ptr %655, align 2
  %657 = icmp eq i32 %652, 0
  br i1 %657, label %658, label %665

658:                                              ; preds = %650
  %659 = getelementptr inbounds %struct.brcmnand_controller, ptr %17, i32 0, i32 36
  %660 = load ptr, ptr %659, align 4
  %661 = icmp eq ptr %660, null
  br i1 %661, label %662, label %676

662:                                              ; preds = %658
  %663 = getelementptr inbounds %struct.brcmnand_controller, ptr %17, i32 0, i32 35
  %664 = load ptr, ptr %663, align 8
  br label %676

665:                                              ; preds = %650
  %666 = getelementptr i16, ptr %654, i32 8
  %667 = load i16, ptr %666, align 2
  %668 = getelementptr inbounds %struct.brcmnand_controller, ptr %17, i32 0, i32 35
  %669 = load ptr, ptr %668, align 8
  %670 = icmp eq i16 %667, 0
  %671 = xor i1 %670, true
  %672 = sext i1 %671 to i32
  %673 = add i32 %652, %672
  %674 = select i1 %670, i16 %656, i16 %667
  br label %676

675:                                              ; preds = %341, %331, %312, %267, %154, %150, %143, %106, %84
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #11
  br label %779

676:                                              ; preds = %665, %662, %658
  %677 = phi i32 [ %673, %665 ], [ 0, %662 ], [ 0, %658 ]
  %678 = phi ptr [ %669, %665 ], [ %664, %662 ], [ %660, %658 ]
  %679 = phi i16 [ %674, %665 ], [ %656, %662 ], [ %656, %658 ]
  %680 = getelementptr i8, ptr %678, i32 2
  %681 = load i8, ptr %680, align 1
  %682 = zext i16 %679 to i32
  %683 = getelementptr inbounds %struct.brcmnand_controller, ptr %17, i32 0, i32 34
  %684 = load i32, ptr %683, align 4
  %685 = mul i32 %684, %677
  %686 = zext i8 %681 to i32
  %687 = add nuw nsw i32 %686, %682
  %688 = add i32 %687, %685
  %689 = and i32 %688, 65535
  %690 = getelementptr inbounds %struct.brcmnand_controller, ptr %17, i32 0, i32 2
  %691 = load ptr, ptr %690, align 4
  %692 = getelementptr i8, ptr %691, i32 %689
  %693 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %692) #11, !srcloc !8
  %694 = and i32 %693, -469762049
  %695 = getelementptr inbounds %struct.brcmnand_controller, ptr %17, i32 0, i32 7
  %696 = load i32, ptr %695, align 8
  %697 = icmp sgt i32 %696, 1793
  %698 = or i32 %693, 134217728
  %699 = select i1 %697, i32 %698, i32 %694
  %700 = getelementptr inbounds %struct.brcmnand_controller, ptr %17, i32 0, i32 43
  %701 = load i32, ptr %700, align 8
  %702 = and i32 %701, 2
  %703 = icmp eq i32 %702, 0
  %704 = select i1 %703, i32 -335544321, i32 -343932929
  %705 = and i32 %704, %699
  %706 = load ptr, ptr %690, align 4
  %707 = getelementptr i8, ptr %706, i32 %689
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %707, i32 %705) #11, !srcloc !9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #11
  %708 = load i32, ptr %160, align 4
  %709 = icmp eq i32 %708, 0
  %710 = select i1 %709, i32 512, i32 1024
  %711 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  store i32 %710, ptr %711, align 8
  %712 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 12
  store i32 1, ptr %712, align 4
  %713 = load i32, ptr %159, align 8
  %714 = load i32, ptr %39, align 8
  %715 = load i32, ptr %160, align 4
  %716 = shl i32 %714, %715
  %717 = load i32, ptr %51, align 4
  %718 = add i32 %715, 9
  %719 = lshr i32 %717, %718
  %720 = icmp ne i32 %715, 0
  %721 = zext i1 %720 to i32
  %722 = shl i32 %713, %721
  %723 = load ptr, ptr %16, align 8
  %724 = getelementptr inbounds %struct.brcmnand_controller, ptr %723, i32 0, i32 7
  %725 = load i32, ptr %724, align 8
  %726 = icmp slt i32 %725, 1794
  %727 = icmp eq i32 %715, 0
  br i1 %726, label %728, label %731

728:                                              ; preds = %676
  %729 = icmp eq i32 %714, 16
  %730 = select i1 %727, i1 %729, i1 false
  br i1 %730, label %734, label %741

731:                                              ; preds = %676
  br i1 %727, label %732, label %741

732:                                              ; preds = %731
  switch i32 %714, label %741 [
    i32 16, label %734
    i32 28, label %733
  ]

733:                                              ; preds = %732
  br label %734

734:                                              ; preds = %733, %732, %728
  %735 = phi i32 [ 16, %733 ], [ 15, %732 ], [ 15, %728 ]
  %736 = icmp eq i32 %713, %735
  br i1 %736, label %737, label %741

737:                                              ; preds = %734
  %738 = mul i32 %719, 3
  %739 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 1, i32 33, i32 5
  store i32 %738, ptr %739, align 4
  %740 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 1, i32 0, i32 0, i32 15
  store ptr @brcmnand_hamming_ooblayout_ops, ptr %740, align 8
  br label %756

741:                                              ; preds = %734, %732, %731, %728
  %742 = mul i32 %722, 14
  %743 = add i32 %742, 7
  %744 = lshr i32 %743, 3
  %745 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 1, i32 33, i32 5
  store i32 %744, ptr %745, align 4
  %746 = icmp eq i32 %717, 512
  %747 = select i1 %746, ptr @brcmnand_bch_sp_ooblayout_ops, ptr @brcmnand_bch_lp_ooblayout_ops
  %748 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 1, i32 0, i32 0, i32 15
  store ptr %747, ptr %748, align 8
  %749 = icmp slt i32 %744, %716
  br i1 %749, label %756, label %750

750:                                              ; preds = %741
  %751 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 2
  %752 = load ptr, ptr %751, align 8
  %753 = getelementptr inbounds %struct.platform_device, ptr %752, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %753, ptr noundef nonnull @.str.29, i32 noundef %744, i32 noundef %716) #12
  %754 = load ptr, ptr %16, align 8
  %755 = load i32, ptr %160, align 4
  br label %756

756:                                              ; preds = %750, %741, %737
  %757 = phi i32 [ 0, %737 ], [ %755, %750 ], [ %715, %741 ]
  %758 = phi ptr [ %723, %737 ], [ %754, %750 ], [ %723, %741 ]
  %759 = phi i32 [ 0, %737 ], [ -22, %750 ], [ 0, %741 ]
  %760 = getelementptr inbounds %struct.brcmnand_controller, ptr %758, i32 0, i32 7
  %761 = load i32, ptr %760, align 8
  %762 = icmp slt i32 %761, 1794
  %763 = icmp eq i32 %757, 0
  br i1 %762, label %764, label %768

764:                                              ; preds = %756
  br i1 %763, label %765, label %779

765:                                              ; preds = %764
  %766 = load i32, ptr %39, align 8
  %767 = icmp eq i32 %766, 16
  br i1 %767, label %772, label %779

768:                                              ; preds = %756
  br i1 %763, label %769, label %779

769:                                              ; preds = %768
  %770 = load i32, ptr %39, align 8
  switch i32 %770, label %779 [
    i32 16, label %772
    i32 28, label %771
  ]

771:                                              ; preds = %769
  br label %772

772:                                              ; preds = %771, %769, %765
  %773 = phi i32 [ 16, %771 ], [ 15, %765 ], [ 15, %769 ]
  %774 = load i32, ptr %159, align 8
  %775 = icmp eq i32 %774, %773
  br i1 %775, label %776, label %779

776:                                              ; preds = %772
  %777 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 25
  store ptr @brcmnand_write_oob_raw, ptr %777, align 4
  %778 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 24
  store ptr @brcmnand_read_oob_raw, ptr %778, align 8
  br label %779

779:                                              ; preds = %776, %772, %769, %768, %765, %764, %675
  %780 = phi i32 [ %759, %776 ], [ %759, %772 ], [ -6, %675 ], [ %759, %765 ], [ %759, %764 ], [ %759, %768 ], [ %759, %769 ]
  ret i32 %780
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmnand_write_oob_raw(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 34
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.brcmnand_host, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.brcmnand_host, ptr %4, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.brcmnand_controller, ptr %6, i32 0, i32 33
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr i16, ptr %10, i32 7
  %12 = load i16, ptr %11, align 2
  %13 = icmp eq i32 %8, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.brcmnand_controller, ptr %6, i32 0, i32 36
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.brcmnand_controller, ptr %6, i32 0, i32 35
  %20 = load ptr, ptr %19, align 8
  br label %31

21:                                               ; preds = %2
  %22 = getelementptr i16, ptr %10, i32 8
  %23 = load i16, ptr %22, align 2
  %24 = getelementptr inbounds %struct.brcmnand_controller, ptr %6, i32 0, i32 35
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq i16 %23, 0
  %27 = xor i1 %26, true
  %28 = sext i1 %27 to i32
  %29 = add i32 %8, %28
  %30 = select i1 %26, i16 %12, i16 %23
  br label %31

31:                                               ; preds = %21, %18, %14
  %32 = phi i32 [ %29, %21 ], [ 0, %18 ], [ 0, %14 ]
  %33 = phi ptr [ %25, %21 ], [ %20, %18 ], [ %16, %14 ]
  %34 = phi i16 [ %30, %21 ], [ %12, %18 ], [ %12, %14 ]
  %35 = getelementptr i8, ptr %33, i32 2
  %36 = load i8, ptr %35, align 1
  %37 = zext i16 %34 to i32
  %38 = getelementptr inbounds %struct.brcmnand_controller, ptr %6, i32 0, i32 34
  %39 = load i32, ptr %38, align 4
  %40 = mul i32 %39, %32
  %41 = zext i8 %36 to i32
  %42 = add nuw nsw i32 %41, %37
  %43 = add i32 %42, %40
  %44 = and i32 %43, 65535
  %45 = getelementptr inbounds %struct.brcmnand_controller, ptr %6, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr i8, ptr %46, i32 %44
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #11, !srcloc !8
  %49 = and i32 %48, 1072758783
  %50 = getelementptr inbounds %struct.brcmnand_controller, ptr %6, i32 0, i32 7
  %51 = load i32, ptr %50, align 8
  %52 = icmp sgt i32 %51, 1535
  %53 = select i1 %52, i32 2031616, i32 983040
  %54 = icmp sgt i32 %51, 1793
  %55 = or i32 %53, 57344
  %56 = select i1 %54, i32 %55, i32 %53
  %57 = xor i32 %56, -1
  %58 = and i32 %49, %57
  %59 = load ptr, ptr %45, align 4
  %60 = getelementptr i8, ptr %59, i32 %44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #11, !srcloc !9
  %61 = sext i32 %1 to i64
  %62 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 17
  %63 = load i32, ptr %62, align 4
  %64 = zext i32 %63 to i64
  %65 = shl i64 %61, %64
  %66 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %67 = load ptr, ptr %66, align 4
  %68 = tail call fastcc i32 @brcmnand_write(ptr noundef %0, ptr noundef %0, i64 noundef %65, ptr noundef null, ptr noundef %67)
  %69 = load ptr, ptr %5, align 8
  %70 = load i32, ptr %7, align 4
  %71 = getelementptr inbounds %struct.brcmnand_controller, ptr %69, i32 0, i32 33
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr i16, ptr %72, i32 7
  %74 = load i16, ptr %73, align 2
  %75 = icmp eq i32 %70, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %31
  %77 = getelementptr inbounds %struct.brcmnand_controller, ptr %69, i32 0, i32 36
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %93

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.brcmnand_controller, ptr %69, i32 0, i32 35
  %82 = load ptr, ptr %81, align 8
  br label %93

83:                                               ; preds = %31
  %84 = getelementptr i16, ptr %72, i32 8
  %85 = load i16, ptr %84, align 2
  %86 = getelementptr inbounds %struct.brcmnand_controller, ptr %69, i32 0, i32 35
  %87 = load ptr, ptr %86, align 8
  %88 = icmp eq i16 %85, 0
  %89 = xor i1 %88, true
  %90 = sext i1 %89 to i32
  %91 = add i32 %70, %90
  %92 = select i1 %88, i16 %74, i16 %85
  br label %93

93:                                               ; preds = %83, %80, %76
  %94 = phi i32 [ %91, %83 ], [ 0, %80 ], [ 0, %76 ]
  %95 = phi ptr [ %87, %83 ], [ %82, %80 ], [ %78, %76 ]
  %96 = phi i16 [ %92, %83 ], [ %74, %80 ], [ %74, %76 ]
  %97 = getelementptr i8, ptr %95, i32 2
  %98 = load i8, ptr %97, align 1
  %99 = zext i16 %96 to i32
  %100 = getelementptr inbounds %struct.brcmnand_controller, ptr %69, i32 0, i32 34
  %101 = load i32, ptr %100, align 4
  %102 = mul i32 %101, %94
  %103 = zext i8 %98 to i32
  %104 = add nuw nsw i32 %103, %99
  %105 = add i32 %104, %102
  %106 = and i32 %105, 65535
  %107 = getelementptr inbounds %struct.brcmnand_controller, ptr %69, i32 0, i32 2
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr i8, ptr %108, i32 %106
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %109) #11, !srcloc !8
  %111 = getelementptr inbounds %struct.brcmnand_host, ptr %4, i32 0, i32 7, i32 9
  %112 = load i32, ptr %111, align 8
  %113 = shl i32 %112, 16
  %114 = or i32 %110, %113
  %115 = or i32 %114, -1073741824
  %116 = load ptr, ptr %107, align 4
  %117 = getelementptr i8, ptr %116, i32 %106
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 %115) #11, !srcloc !9
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmnand_read_oob_raw(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 34
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.brcmnand_host, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.brcmnand_host, ptr %4, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.brcmnand_controller, ptr %6, i32 0, i32 33
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr i16, ptr %10, i32 7
  %12 = load i16, ptr %11, align 2
  %13 = icmp eq i32 %8, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.brcmnand_controller, ptr %6, i32 0, i32 36
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.brcmnand_controller, ptr %6, i32 0, i32 35
  %20 = load ptr, ptr %19, align 8
  br label %31

21:                                               ; preds = %2
  %22 = getelementptr i16, ptr %10, i32 8
  %23 = load i16, ptr %22, align 2
  %24 = getelementptr inbounds %struct.brcmnand_controller, ptr %6, i32 0, i32 35
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq i16 %23, 0
  %27 = xor i1 %26, true
  %28 = sext i1 %27 to i32
  %29 = add i32 %8, %28
  %30 = select i1 %26, i16 %12, i16 %23
  br label %31

31:                                               ; preds = %21, %18, %14
  %32 = phi i32 [ %29, %21 ], [ 0, %18 ], [ 0, %14 ]
  %33 = phi ptr [ %25, %21 ], [ %20, %18 ], [ %16, %14 ]
  %34 = phi i16 [ %30, %21 ], [ %12, %18 ], [ %12, %14 ]
  %35 = getelementptr i8, ptr %33, i32 2
  %36 = load i8, ptr %35, align 1
  %37 = zext i16 %34 to i32
  %38 = getelementptr inbounds %struct.brcmnand_controller, ptr %6, i32 0, i32 34
  %39 = load i32, ptr %38, align 4
  %40 = mul i32 %39, %32
  %41 = zext i8 %36 to i32
  %42 = add nuw nsw i32 %41, %37
  %43 = add i32 %42, %40
  %44 = and i32 %43, 65535
  %45 = getelementptr inbounds %struct.brcmnand_controller, ptr %6, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr i8, ptr %46, i32 %44
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #11, !srcloc !8
  %49 = and i32 %48, 1072758783
  %50 = getelementptr inbounds %struct.brcmnand_controller, ptr %6, i32 0, i32 7
  %51 = load i32, ptr %50, align 8
  %52 = icmp sgt i32 %51, 1535
  %53 = select i1 %52, i32 2031616, i32 983040
  %54 = icmp sgt i32 %51, 1793
  %55 = or i32 %53, 57344
  %56 = select i1 %54, i32 %55, i32 %53
  %57 = xor i32 %56, -1
  %58 = and i32 %49, %57
  %59 = load ptr, ptr %45, align 4
  %60 = getelementptr i8, ptr %59, i32 %44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #11, !srcloc !9
  %61 = sext i32 %1 to i64
  %62 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 17
  %63 = load i32, ptr %62, align 4
  %64 = zext i32 %63 to i64
  %65 = shl i64 %61, %64
  %66 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %67 = load i32, ptr %66, align 4
  %68 = lshr i32 %67, 9
  %69 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %70 = load ptr, ptr %69, align 4
  %71 = tail call fastcc i32 @brcmnand_read(ptr noundef %0, ptr noundef %0, i64 noundef %65, i32 noundef %68, ptr noundef null, ptr noundef %70)
  %72 = load ptr, ptr %5, align 8
  %73 = load i32, ptr %7, align 4
  %74 = getelementptr inbounds %struct.brcmnand_controller, ptr %72, i32 0, i32 33
  %75 = load ptr, ptr %74, align 8
  %76 = getelementptr i16, ptr %75, i32 7
  %77 = load i16, ptr %76, align 2
  %78 = icmp eq i32 %73, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %31
  %80 = getelementptr inbounds %struct.brcmnand_controller, ptr %72, i32 0, i32 36
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %96

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.brcmnand_controller, ptr %72, i32 0, i32 35
  %85 = load ptr, ptr %84, align 8
  br label %96

86:                                               ; preds = %31
  %87 = getelementptr i16, ptr %75, i32 8
  %88 = load i16, ptr %87, align 2
  %89 = getelementptr inbounds %struct.brcmnand_controller, ptr %72, i32 0, i32 35
  %90 = load ptr, ptr %89, align 8
  %91 = icmp eq i16 %88, 0
  %92 = xor i1 %91, true
  %93 = sext i1 %92 to i32
  %94 = add i32 %73, %93
  %95 = select i1 %91, i16 %77, i16 %88
  br label %96

96:                                               ; preds = %86, %83, %79
  %97 = phi i32 [ %94, %86 ], [ 0, %83 ], [ 0, %79 ]
  %98 = phi ptr [ %90, %86 ], [ %85, %83 ], [ %81, %79 ]
  %99 = phi i16 [ %95, %86 ], [ %77, %83 ], [ %77, %79 ]
  %100 = getelementptr i8, ptr %98, i32 2
  %101 = load i8, ptr %100, align 1
  %102 = zext i16 %99 to i32
  %103 = getelementptr inbounds %struct.brcmnand_controller, ptr %72, i32 0, i32 34
  %104 = load i32, ptr %103, align 4
  %105 = mul i32 %104, %97
  %106 = zext i8 %101 to i32
  %107 = add nuw nsw i32 %106, %102
  %108 = add i32 %107, %105
  %109 = and i32 %108, 65535
  %110 = getelementptr inbounds %struct.brcmnand_controller, ptr %72, i32 0, i32 2
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr i8, ptr %111, i32 %109
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %112) #11, !srcloc !8
  %114 = getelementptr inbounds %struct.brcmnand_host, ptr %4, i32 0, i32 7, i32 9
  %115 = load i32, ptr %114, align 8
  %116 = shl i32 %115, 16
  %117 = or i32 %113, %116
  %118 = or i32 %117, -1073741824
  %119 = load ptr, ptr %110, align 4
  %120 = getelementptr i8, ptr %119, i32 %109
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 %118) #11, !srcloc !9
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @brcmnand_hamming_ooblayout_ecc(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 34
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 7, i32 8
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 7, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %7, 9
  %11 = lshr i32 %9, %10
  %12 = icmp sgt i32 %11, %1
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 7, i32 3
  %15 = load i32, ptr %14, align 8
  %16 = shl i32 %15, %7
  %17 = mul i32 %16, %1
  %18 = add i32 %17, 6
  store i32 %18, ptr %2, align 4
  %19 = getelementptr inbounds %struct.mtd_oob_region, ptr %2, i32 0, i32 1
  store i32 3, ptr %19, align 4
  br label %20

20:                                               ; preds = %13, %3
  %21 = phi i32 [ 0, %13 ], [ -34, %3 ]
  ret i32 %21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @brcmnand_hamming_ooblayout_free(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2) #8 {
  %4 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 34
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 7, i32 3
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 7, i32 8
  %9 = load i32, ptr %8, align 4
  %10 = shl i32 %7, %9
  %11 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 7, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %9, 9
  %14 = lshr i32 %12, %13
  %15 = icmp slt i32 %14, %1
  br i1 %15, label %36, label %16

16:                                               ; preds = %3
  %17 = mul i32 %10, %1
  %18 = icmp sgt i32 %14, %1
  %19 = add i32 %17, 6
  %20 = select i1 %18, i32 %19, i32 %17
  %21 = icmp eq i32 %1, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = add i32 %1, -1
  %24 = mul i32 %10, %23
  %25 = add i32 %24, 9
  store i32 %25, ptr %2, align 4
  br label %31

26:                                               ; preds = %16
  %27 = icmp ugt i32 %12, 512
  br i1 %27, label %28, label %29

28:                                               ; preds = %26
  store i32 2, ptr %2, align 4
  br label %31

29:                                               ; preds = %26
  store i32 0, ptr %2, align 4
  %30 = add i32 %20, -1
  br label %31

31:                                               ; preds = %29, %28, %22
  %32 = phi i32 [ %25, %22 ], [ 2, %28 ], [ 0, %29 ]
  %33 = phi i32 [ %20, %22 ], [ %20, %28 ], [ %30, %29 ]
  %34 = sub i32 %33, %32
  %35 = getelementptr inbounds %struct.mtd_oob_region, ptr %2, i32 0, i32 1
  store i32 %34, ptr %35, align 4
  br label %36

36:                                               ; preds = %31, %3
  %37 = phi i32 [ 0, %31 ], [ -34, %3 ]
  ret i32 %37
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @brcmnand_bch_ooblayout_ecc(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 34
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 7, i32 8
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 7, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %7, 9
  %11 = lshr i32 %9, %10
  %12 = icmp sgt i32 %11, %1
  br i1 %12, label %13, label %24

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 7, i32 3
  %15 = load i32, ptr %14, align 8
  %16 = shl i32 %15, %7
  %17 = add nsw i32 %1, 1
  %18 = mul i32 %16, %17
  %19 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = sub i32 %18, %20
  store i32 %21, ptr %2, align 4
  %22 = load i32, ptr %19, align 4
  %23 = getelementptr inbounds %struct.mtd_oob_region, ptr %2, i32 0, i32 1
  store i32 %22, ptr %23, align 4
  br label %24

24:                                               ; preds = %13, %3
  %25 = phi i32 [ 0, %13 ], [ -34, %3 ]
  ret i32 %25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @brcmnand_bch_ooblayout_free_sp(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 34
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 7, i32 3
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 7, i32 8
  %9 = load i32, ptr %8, align 4
  %10 = shl i32 %7, %9
  %11 = icmp sgt i32 %1, 1
  br i1 %11, label %31, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = sub i32 %10, %14
  %16 = icmp slt i32 %15, 6
  br i1 %16, label %31, label %17

17:                                               ; preds = %12
  %18 = icmp eq i32 %1, 0
  %19 = xor i1 %18, true
  %20 = icmp eq i32 %15, 6
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %31, label %22

22:                                               ; preds = %17
  br i1 %18, label %23, label %24

23:                                               ; preds = %22
  store i32 0, ptr %2, align 4
  br label %28

24:                                               ; preds = %22
  store i32 6, ptr %2, align 4
  %25 = load i32, ptr %13, align 4
  %26 = add i32 %10, -6
  %27 = sub i32 %26, %25
  br label %28

28:                                               ; preds = %24, %23
  %29 = phi i32 [ 5, %23 ], [ %27, %24 ]
  %30 = getelementptr inbounds %struct.mtd_oob_region, ptr %2, i32 0, i32 1
  store i32 %29, ptr %30, align 4
  br label %31

31:                                               ; preds = %28, %17, %12, %3
  %32 = phi i32 [ -34, %17 ], [ -34, %12 ], [ -34, %3 ], [ 0, %28 ]
  ret i32 %32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @brcmnand_bch_ooblayout_free_lp(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2) #8 {
  %4 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 34
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 7, i32 3
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 7, i32 8
  %9 = load i32, ptr %8, align 4
  %10 = shl i32 %7, %9
  %11 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 7, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %9, 9
  %14 = lshr i32 %12, %13
  %15 = icmp sgt i32 %14, %1
  br i1 %15, label %16, label %29

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = icmp sgt i32 %10, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = mul i32 %10, %1
  store i32 %21, ptr %2, align 4
  %22 = load i32, ptr %17, align 4
  %23 = sub i32 %10, %22
  %24 = getelementptr inbounds %struct.mtd_oob_region, ptr %2, i32 0, i32 1
  store i32 %23, ptr %24, align 4
  %25 = icmp eq i32 %1, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = add nuw nsw i32 %21, 1
  store i32 %27, ptr %2, align 4
  %28 = add i32 %23, -1
  store i32 %28, ptr %24, align 4
  br label %29

29:                                               ; preds = %26, %20, %16, %3
  %30 = phi i32 [ -34, %3 ], [ 0, %16 ], [ 0, %26 ], [ 0, %20 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @brcmnand_write(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.nand_chip, ptr %1, i32 0, i32 34
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.brcmnand_host, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = lshr i32 %11, 9
  %13 = ptrtoint ptr %3 to i32
  %14 = and i32 %13, 3
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16, !prof !13

16:                                               ; preds = %5
  %17 = load ptr, ptr %9, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.30, ptr noundef %3) #12
  %18 = and i32 %13, -4
  %19 = inttoptr i32 %18 to ptr
  br label %20

20:                                               ; preds = %16, %5
  %21 = phi ptr [ %19, %16 ], [ %3, %5 ]
  tail call fastcc void @brcmnand_wp(ptr noundef %0, i32 noundef 0)
  %22 = getelementptr inbounds %struct.brcmnand_controller, ptr %9, i32 0, i32 42
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %49, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.brcmnand_controller, ptr %9, i32 0, i32 33
  %27 = getelementptr inbounds %struct.brcmnand_controller, ptr %9, i32 0, i32 2
  br label %28

28:                                               ; preds = %28, %25
  %29 = phi i32 [ 0, %25 ], [ %46, %28 ]
  %30 = load ptr, ptr %26, align 8
  %31 = getelementptr i16, ptr %30, i32 23
  %32 = load i16, ptr %31, align 2
  %33 = getelementptr i16, ptr %30, i32 24
  %34 = load i16, ptr %33, align 2
  %35 = icmp ugt i32 %29, 15
  %36 = icmp ne i16 %34, 0
  %37 = select i1 %35, i1 %36, i1 false
  %38 = trunc i32 %29 to i16
  %39 = add i16 %38, -16
  %40 = select i1 %37, i16 %39, i16 %38
  %41 = select i1 %37, i16 %34, i16 %32
  %42 = add i16 %41, %40
  %43 = zext i16 %42 to i32
  %44 = load ptr, ptr %27, align 4
  %45 = getelementptr i8, ptr %44, i32 %43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 -1) #11, !srcloc !9
  %46 = add i32 %29, 4
  %47 = load i32, ptr %22, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %28, label %49

49:                                               ; preds = %28, %20
  %50 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 50
  %51 = load i8, ptr %50, align 4, !range !14
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %67, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.brcmnand_controller, ptr %9, i32 0, i32 49
  %55 = load i8, ptr %54, align 8, !range !14
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.brcmnand_controller, ptr %9, i32 0, i32 4
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %57
  store ptr null, ptr %58, align 4
  %62 = getelementptr inbounds %struct.brcmnand_controller, ptr %9, i32 0, i32 6
  %63 = load i32, ptr %62, align 4
  tail call void @disable_irq(i32 noundef %63) #11
  br label %64

64:                                               ; preds = %61, %57
  %65 = getelementptr inbounds %struct.brcmnand_controller, ptr %9, i32 0, i32 5
  %66 = load i32, ptr %65, align 8
  tail call void @disable_irq(i32 noundef %66) #11
  store i8 1, ptr %54, align 8
  br label %67

67:                                               ; preds = %64, %53, %49
  %68 = getelementptr inbounds %struct.brcmnand_controller, ptr %9, i32 0, i32 4
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  %71 = getelementptr inbounds %struct.brcmnand_controller, ptr %9, i32 0, i32 18
  %72 = load ptr, ptr %71, align 8
  %73 = icmp eq ptr %72, null
  %74 = select i1 %70, i1 %73, i1 false
  br i1 %74, label %94, label %75

75:                                               ; preds = %67
  %76 = icmp eq ptr %72, null
  %77 = icmp ne ptr %4, null
  %78 = and i1 %77, %76
  %79 = icmp eq ptr %21, null
  %80 = or i1 %79, %78
  br i1 %80, label %94, label %81

81:                                               ; preds = %75
  %82 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %21) #11
  %83 = ptrtoint ptr %21 to i32
  %84 = and i32 %83, 3
  %85 = icmp ne i32 %84, 0
  %86 = or i1 %85, %82
  br i1 %86, label %94, label %87

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.brcmnand_controller, ptr %9, i32 0, i32 31
  %89 = load ptr, ptr %88, align 4
  %90 = load i32, ptr %10, align 4
  %91 = tail call i32 %89(ptr noundef %7, i64 noundef %2, ptr noundef nonnull %21, ptr noundef %4, i32 noundef %90, i8 noundef zeroext 4) #11
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %92, i32 0, i32 -5
  br label %277

94:                                               ; preds = %81, %75, %67
  %95 = icmp ult i32 %11, 512
  br i1 %95, label %277, label %96

96:                                               ; preds = %94
  %97 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 34
  %98 = getelementptr inbounds %struct.brcmnand_controller, ptr %9, i32 0, i32 8
  %99 = getelementptr inbounds %struct.brcmnand_controller, ptr %9, i32 0, i32 3
  %100 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %101 = getelementptr inbounds %struct.brcmnand_host, ptr %7, i32 0, i32 7, i32 8
  %102 = getelementptr inbounds %struct.brcmnand_controller, ptr %9, i32 0, i32 33
  %103 = getelementptr inbounds %struct.brcmnand_controller, ptr %9, i32 0, i32 2
  %104 = call i32 @llvm.umax.i32(i32 %12, i32 1)
  br label %105

105:                                              ; preds = %273, %96
  %106 = phi i32 [ 0, %96 ], [ %274, %273 ]
  %107 = phi ptr [ %4, %96 ], [ %267, %273 ]
  %108 = phi ptr [ %21, %96 ], [ %266, %273 ]
  %109 = phi i64 [ %2, %96 ], [ %275, %273 ]
  %110 = load ptr, ptr %97, align 8
  %111 = getelementptr inbounds %struct.brcmnand_host, ptr %110, i32 0, i32 8
  %112 = load ptr, ptr %111, align 8
  %113 = getelementptr inbounds %struct.brcmnand_controller, ptr %112, i32 0, i32 33
  %114 = load ptr, ptr %113, align 8
  %115 = getelementptr i16, ptr %114, i32 1
  %116 = load i16, ptr %115, align 2
  %117 = icmp eq i16 %116, 0
  br i1 %117, label %140, label %118

118:                                              ; preds = %105
  %119 = lshr i64 %109, 32
  %120 = trunc i64 %119 to i32
  %121 = and i32 %120, 65535
  %122 = getelementptr inbounds %struct.brcmnand_host, ptr %110, i32 0, i32 3
  %123 = load i32, ptr %122, align 4
  %124 = shl i32 %123, 16
  %125 = or i32 %124, %121
  %126 = zext i16 %116 to i32
  %127 = getelementptr inbounds %struct.brcmnand_controller, ptr %112, i32 0, i32 2
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr i8, ptr %128, i32 %126
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %129, i32 %125) #11, !srcloc !9
  %130 = load ptr, ptr %113, align 8
  %131 = getelementptr i16, ptr %130, i32 1
  %132 = load i16, ptr %131, align 2
  %133 = icmp eq i16 %132, 0
  br i1 %133, label %140, label %134

134:                                              ; preds = %118
  %135 = zext i16 %132 to i32
  %136 = load ptr, ptr %127, align 4
  %137 = getelementptr i8, ptr %136, i32 %135
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %137) #11, !srcloc !8
  %139 = load ptr, ptr %113, align 8
  br label %140

140:                                              ; preds = %134, %118, %105
  %141 = phi ptr [ %130, %118 ], [ %139, %134 ], [ %114, %105 ]
  %142 = getelementptr i16, ptr %141, i32 2
  %143 = load i16, ptr %142, align 2
  %144 = icmp eq i16 %143, 0
  br i1 %144, label %160, label %145

145:                                              ; preds = %140
  %146 = trunc i64 %109 to i32
  %147 = zext i16 %143 to i32
  %148 = getelementptr inbounds %struct.brcmnand_controller, ptr %112, i32 0, i32 2
  %149 = load ptr, ptr %148, align 4
  %150 = getelementptr i8, ptr %149, i32 %147
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %150, i32 %146) #11, !srcloc !9
  %151 = load ptr, ptr %113, align 8
  %152 = getelementptr i16, ptr %151, i32 2
  %153 = load i16, ptr %152, align 2
  %154 = icmp eq i16 %153, 0
  br i1 %154, label %160, label %155

155:                                              ; preds = %145
  %156 = zext i16 %153 to i32
  %157 = load ptr, ptr %148, align 4
  %158 = getelementptr i8, ptr %157, i32 %156
  %159 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %158) #11, !srcloc !8
  br label %160

160:                                              ; preds = %155, %145, %140
  %161 = icmp eq ptr %108, null
  br i1 %161, label %189, label %162

162:                                              ; preds = %160
  %163 = load ptr, ptr %98, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %170, label %165

165:                                              ; preds = %162
  %166 = getelementptr inbounds %struct.brcmnand_soc, ptr %163, i32 0, i32 2
  %167 = load ptr, ptr %166, align 4
  %168 = icmp eq ptr %167, null
  br i1 %168, label %170, label %169

169:                                              ; preds = %165
  tail call void %167(ptr noundef nonnull %163, i1 noundef zeroext true, i1 noundef zeroext false) #11
  br label %170

170:                                              ; preds = %169, %165, %162
  br label %171

171:                                              ; preds = %171, %170
  %172 = phi i32 [ %178, %171 ], [ 0, %170 ]
  %173 = phi ptr [ %179, %171 ], [ %108, %170 ]
  %174 = load i32, ptr %173, align 4
  %175 = load ptr, ptr %99, align 8
  %176 = shl nuw nsw i32 %172, 2
  %177 = getelementptr i8, ptr %175, i32 %176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %177, i32 %174) #11, !srcloc !9
  %178 = add nuw nsw i32 %172, 1
  %179 = getelementptr i32, ptr %173, i32 1
  %180 = icmp eq i32 %178, 128
  br i1 %180, label %181, label %171

181:                                              ; preds = %171
  %182 = load ptr, ptr %98, align 4
  %183 = icmp eq ptr %182, null
  br i1 %183, label %198, label %184

184:                                              ; preds = %181
  %185 = getelementptr inbounds %struct.brcmnand_soc, ptr %182, i32 0, i32 2
  %186 = load ptr, ptr %185, align 4
  %187 = icmp eq ptr %186, null
  br i1 %187, label %198, label %188

188:                                              ; preds = %184
  tail call void %186(ptr noundef nonnull %182, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %198

189:                                              ; preds = %160
  %190 = icmp eq ptr %107, null
  br i1 %190, label %265, label %191

191:                                              ; preds = %191, %189
  %192 = phi i32 [ %196, %191 ], [ 0, %189 ]
  %193 = load ptr, ptr %99, align 8
  %194 = shl nuw nsw i32 %192, 2
  %195 = getelementptr i8, ptr %193, i32 %194
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %195, i32 -1) #11, !srcloc !9
  %196 = add nuw nsw i32 %192, 1
  %197 = icmp eq i32 %196, 128
  br i1 %197, label %198, label %191

198:                                              ; preds = %191, %188, %184, %181
  %199 = phi ptr [ %179, %181 ], [ %179, %184 ], [ %179, %188 ], [ null, %191 ]
  %200 = icmp eq ptr %107, null
  br i1 %200, label %265, label %201

201:                                              ; preds = %198
  %202 = load i32, ptr %100, align 4
  %203 = udiv i32 %202, %12
  %204 = load i32, ptr %101, align 4
  %205 = shl i32 %203, %204
  %206 = icmp eq i32 %204, 0
  %207 = and i32 %106, 1
  %208 = icmp eq i32 %207, 0
  %209 = or i1 %208, %206
  %210 = load i32, ptr %22, align 4
  %211 = sub i32 %205, %210
  %212 = tail call i32 @llvm.smax.i32(i32 %211, i32 0) #11
  %213 = select i1 %209, i32 %205, i32 %212
  %214 = tail call i32 @llvm.smin.i32(i32 %213, i32 %210) #11
  %215 = icmp sgt i32 %214, 0
  br i1 %215, label %216, label %263

216:                                              ; preds = %261, %201
  %217 = phi i32 [ %262, %261 ], [ %210, %201 ]
  %218 = phi i32 [ %259, %261 ], [ 0, %201 ]
  %219 = icmp ugt i32 %217, %218
  br i1 %219, label %220, label %258

220:                                              ; preds = %216
  %221 = getelementptr i8, ptr %107, i32 %218
  %222 = load i8, ptr %221, align 1
  %223 = zext i8 %222 to i32
  %224 = shl nuw i32 %223, 24
  %225 = or i32 %218, 1
  %226 = getelementptr i8, ptr %107, i32 %225
  %227 = load i8, ptr %226, align 1
  %228 = zext i8 %227 to i32
  %229 = shl nuw nsw i32 %228, 16
  %230 = or i32 %229, %224
  %231 = or i32 %218, 2
  %232 = getelementptr i8, ptr %107, i32 %231
  %233 = load i8, ptr %232, align 1
  %234 = zext i8 %233 to i32
  %235 = shl nuw nsw i32 %234, 8
  %236 = or i32 %230, %235
  %237 = or i32 %218, 3
  %238 = getelementptr i8, ptr %107, i32 %237
  %239 = load i8, ptr %238, align 1
  %240 = zext i8 %239 to i32
  %241 = or i32 %236, %240
  %242 = load ptr, ptr %102, align 8
  %243 = getelementptr i16, ptr %242, i32 23
  %244 = load i16, ptr %243, align 2
  %245 = getelementptr i16, ptr %242, i32 24
  %246 = load i16, ptr %245, align 2
  %247 = icmp ugt i32 %218, 15
  %248 = icmp ne i16 %246, 0
  %249 = select i1 %247, i1 %248, i1 false
  %250 = trunc i32 %218 to i16
  %251 = add i16 %250, -16
  %252 = select i1 %249, i16 %251, i16 %250
  %253 = select i1 %249, i16 %246, i16 %244
  %254 = add i16 %253, %252
  %255 = zext i16 %254 to i32
  %256 = load ptr, ptr %103, align 4
  %257 = getelementptr i8, ptr %256, i32 %255
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %257, i32 %241) #11, !srcloc !9
  br label %258

258:                                              ; preds = %220, %216
  %259 = add i32 %218, 4
  %260 = icmp slt i32 %259, %214
  br i1 %260, label %261, label %263

261:                                              ; preds = %258
  %262 = load i32, ptr %22, align 4
  br label %216

263:                                              ; preds = %258, %201
  %264 = getelementptr i8, ptr %107, i32 %214
  br label %265

265:                                              ; preds = %263, %198, %189
  %266 = phi ptr [ %199, %263 ], [ %199, %198 ], [ null, %189 ]
  %267 = phi ptr [ %264, %263 ], [ null, %198 ], [ null, %189 ]
  tail call fastcc void @brcmnand_send_cmd(ptr noundef %7, i32 noundef 4)
  %268 = tail call i32 @brcmnand_waitfunc(ptr noundef %1)
  %269 = and i32 %268, 1
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %273, label %271

271:                                              ; preds = %265
  %272 = load ptr, ptr %9, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %272, ptr noundef nonnull @.str.31, i64 noundef %109) #12
  br label %277

273:                                              ; preds = %265
  %274 = add nuw nsw i32 %106, 1
  %275 = add i64 %109, 512
  %276 = icmp eq i32 %274, %104
  br i1 %276, label %277, label %105

277:                                              ; preds = %273, %271, %94, %87
  %278 = phi i32 [ -5, %271 ], [ %93, %87 ], [ 0, %94 ], [ 0, %273 ]
  tail call fastcc void @brcmnand_wp(ptr noundef %0, i32 noundef 1)
  ret i32 %278
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @brcmnand_wp(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 34
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.brcmnand_host, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.brcmnand_controller, ptr %6, i32 0, i32 43
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 8
  %10 = icmp ne i32 %9, 0
  %11 = load i32, ptr @wp_on, align 4
  %12 = icmp eq i32 %11, 1
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %96

14:                                               ; preds = %2
  %15 = load i32, ptr @brcmnand_wp.old_wp, align 4
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  store i32 %1, ptr @brcmnand_wp.old_wp, align 4
  br label %18

18:                                               ; preds = %17, %14
  %19 = load volatile i32, ptr @jiffies, align 64
  %20 = getelementptr inbounds %struct.brcmnand_controller, ptr %6, i32 0, i32 33
  %21 = getelementptr inbounds %struct.brcmnand_controller, ptr %6, i32 0, i32 2
  %22 = sub i32 -10, %19
  br label %23

23:                                               ; preds = %35, %18
  %24 = load ptr, ptr %20, align 8
  %25 = getelementptr i16, ptr %24, i32 3
  %26 = load i16, ptr %25, align 2
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %23
  %29 = zext i16 %26 to i32
  %30 = load ptr, ptr %21, align 4
  %31 = getelementptr i8, ptr %30, i32 %29
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #11, !srcloc !8
  %33 = and i32 %32, -1073741760
  %34 = icmp eq i32 %33, -1073741760
  br i1 %34, label %42, label %35

35:                                               ; preds = %28, %23
  %36 = phi i32 [ %33, %28 ], [ 0, %23 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !17
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !18
  %37 = load volatile i32, ptr @jiffies, align 64
  %38 = add i32 %22, %37
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %23, label %40

40:                                               ; preds = %35
  %41 = load ptr, ptr %6, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %41, ptr noundef nonnull @.str.35, i32 noundef -1073741760, i32 noundef %36) #12
  br label %96

42:                                               ; preds = %28
  %43 = icmp eq i32 %1, 0
  %44 = select i1 %43, i32 0, i32 536870912
  %45 = load ptr, ptr %20, align 8
  %46 = getelementptr i16, ptr %45, i32 4
  %47 = load i16, ptr %46, align 2
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %64, label %49

49:                                               ; preds = %42
  %50 = zext i16 %47 to i32
  %51 = load ptr, ptr %21, align 4
  %52 = getelementptr i8, ptr %51, i32 %50
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #11, !srcloc !8
  %54 = load ptr, ptr %20, align 8
  %55 = getelementptr i16, ptr %54, i32 4
  %56 = load i16, ptr %55, align 2
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %49
  %59 = and i32 %53, -536870913
  %60 = or i32 %59, %44
  %61 = zext i16 %56 to i32
  %62 = load ptr, ptr %21, align 4
  %63 = getelementptr i8, ptr %62, i32 %61
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %60) #11, !srcloc !9
  br label %64

64:                                               ; preds = %58, %49, %42
  %65 = tail call i32 @nand_status_op(ptr noundef %0, ptr noundef null) #11
  %66 = select i1 %43, i32 -1073741632, i32 -1073741760
  %67 = load volatile i32, ptr @jiffies, align 64
  %68 = sub i32 -10, %67
  br label %69

69:                                               ; preds = %83, %64
  %70 = load ptr, ptr %20, align 8
  %71 = getelementptr i16, ptr %70, i32 3
  %72 = load i16, ptr %71, align 2
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = zext i16 %72 to i32
  %76 = load ptr, ptr %21, align 4
  %77 = getelementptr i8, ptr %76, i32 %75
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #11, !srcloc !8
  br label %79

79:                                               ; preds = %74, %69
  %80 = phi i32 [ %78, %74 ], [ 0, %69 ]
  %81 = and i32 %80, -1073741632
  %82 = icmp eq i32 %81, %66
  br i1 %82, label %96, label %83

83:                                               ; preds = %79
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !17
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !18
  %84 = load volatile i32, ptr @jiffies, align 64
  %85 = add i32 %68, %84
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %69, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %6, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %88, ptr noundef nonnull @.str.35, i32 noundef %66, i32 noundef %81) #12
  %89 = tail call i32 @___ratelimit(ptr noundef nonnull @brcmnand_wp._rs, ptr noundef nonnull @__func__.brcmnand_wp) #11
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.brcmnand_host, ptr %4, i32 0, i32 2
  %93 = load ptr, ptr %92, align 8
  %94 = getelementptr inbounds %struct.platform_device, ptr %93, i32 0, i32 3
  %95 = select i1 %43, ptr @.str.34, ptr @.str.33
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.32, ptr noundef nonnull %95) #12
  br label %96

96:                                               ; preds = %91, %87, %79, %40, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @brcmnand_send_cmd(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.brcmnand_host, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.brcmnand_controller, ptr %4, i32 0, i32 33
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i16, ptr %6, i32 2
  %8 = load i16, ptr %7, align 2
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = zext i16 %8 to i32
  %12 = getelementptr inbounds %struct.brcmnand_controller, ptr %4, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 %11
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #11, !srcloc !8
  br label %16

16:                                               ; preds = %10, %2
  %17 = getelementptr inbounds %struct.brcmnand_controller, ptr %4, i32 0, i32 10
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20, !prof !13

20:                                               ; preds = %16
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/nand/raw/brcmnand/brcmnand.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1566, 0\0A.popsection", ""() #11, !srcloc !19
  unreachable

21:                                               ; preds = %16
  store i32 %1, ptr %17, align 4
  %22 = load volatile i32, ptr @jiffies, align 64
  %23 = getelementptr inbounds %struct.brcmnand_controller, ptr %4, i32 0, i32 2
  %24 = sub i32 -10, %22
  br label %25

25:                                               ; preds = %37, %21
  %26 = load ptr, ptr %5, align 8
  %27 = getelementptr i16, ptr %26, i32 3
  %28 = load i16, ptr %27, align 2
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %25
  %31 = zext i16 %28 to i32
  %32 = load ptr, ptr %23, align 4
  %33 = getelementptr i8, ptr %32, i32 %31
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #11, !srcloc !8
  %35 = and i32 %34, -1073741824
  %36 = icmp ugt i32 %34, -1073741825
  br i1 %36, label %44, label %37

37:                                               ; preds = %30, %25
  %38 = phi i32 [ %35, %30 ], [ 0, %25 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !17
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !18
  %39 = load volatile i32, ptr @jiffies, align 64
  %40 = add i32 %24, %39
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %25, label %42

42:                                               ; preds = %37
  %43 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %43, ptr noundef nonnull @.str.35, i32 noundef -1073741824, i32 noundef %38) #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1570, i32 noundef 9, ptr noundef null) #11
  br label %44

44:                                               ; preds = %42, %30
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !20
  tail call void @arm_heavy_mb() #11
  %45 = load ptr, ptr %5, align 8
  %46 = load i16, ptr %45, align 2
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.brcmnand_controller, ptr %4, i32 0, i32 7
  %50 = load i32, ptr %49, align 8
  %51 = icmp slt i32 %50, 1538
  %52 = select i1 %51, i32 24, i32 0
  %53 = shl i32 %1, %52
  %54 = zext i16 %46 to i32
  %55 = load ptr, ptr %23, align 4
  %56 = getelementptr i8, ptr %55, i32 %54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %53) #11, !srcloc !9
  br label %57

57:                                               ; preds = %48, %44
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmnand_waitfunc(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 34
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.brcmnand_host, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.brcmnand_controller, ptr %5, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %94, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 50
  %11 = load i8, ptr %10, align 4, !range !14
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %51, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.brcmnand_controller, ptr %5, i32 0, i32 49
  %15 = load i8, ptr %14, align 8, !range !14
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.brcmnand_controller, ptr %5, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  store ptr null, ptr %18, align 4
  %22 = getelementptr inbounds %struct.brcmnand_controller, ptr %5, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  tail call void @disable_irq(i32 noundef %23) #11
  br label %24

24:                                               ; preds = %21, %17
  %25 = getelementptr inbounds %struct.brcmnand_controller, ptr %5, i32 0, i32 5
  %26 = load i32, ptr %25, align 8
  tail call void @disable_irq(i32 noundef %26) #11
  store i8 1, ptr %14, align 8
  br label %27

27:                                               ; preds = %24, %13
  %28 = load volatile i32, ptr @jiffies, align 64
  %29 = getelementptr inbounds %struct.brcmnand_controller, ptr %5, i32 0, i32 33
  %30 = getelementptr inbounds %struct.brcmnand_controller, ptr %5, i32 0, i32 2
  %31 = sub i32 -10, %28
  br label %32

32:                                               ; preds = %44, %27
  %33 = load ptr, ptr %29, align 8
  %34 = getelementptr i16, ptr %33, i32 3
  %35 = load i16, ptr %34, align 2
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %32
  %38 = zext i16 %35 to i32
  %39 = load ptr, ptr %30, align 4
  %40 = getelementptr i8, ptr %39, i32 %38
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #11, !srcloc !8
  %42 = and i32 %41, -1073741824
  %43 = icmp ugt i32 %41, -1073741825
  br i1 %43, label %94, label %44

44:                                               ; preds = %37, %32
  %45 = phi i32 [ %42, %37 ], [ 0, %32 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !17
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !18
  %46 = load volatile i32, ptr @jiffies, align 64
  %47 = add i32 %31, %46
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %32, label %49

49:                                               ; preds = %44
  %50 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.35, i32 noundef -1073741824, i32 noundef %45) #12
  br label %55

51:                                               ; preds = %9
  %52 = getelementptr inbounds %struct.brcmnand_controller, ptr %5, i32 0, i32 13
  %53 = tail call i32 @wait_for_completion_timeout(ptr noundef %52, i32 noundef 10) #11
  %54 = icmp slt i32 %53, 1
  br i1 %54, label %55, label %94

55:                                               ; preds = %51, %49
  %56 = getelementptr inbounds %struct.brcmnand_controller, ptr %5, i32 0, i32 33
  %57 = load ptr, ptr %56, align 8
  %58 = load i16, ptr %57, align 2
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %55
  %61 = zext i16 %58 to i32
  %62 = getelementptr inbounds %struct.brcmnand_controller, ptr %5, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr i8, ptr %63, i32 %61
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #11, !srcloc !8
  br label %66

66:                                               ; preds = %60, %55
  %67 = phi i32 [ %65, %60 ], [ 0, %55 ]
  %68 = getelementptr inbounds %struct.brcmnand_controller, ptr %5, i32 0, i32 7
  %69 = load i32, ptr %68, align 8
  %70 = tail call i32 @___ratelimit(ptr noundef nonnull @brcmnand_waitfunc._rs, ptr noundef nonnull @__func__.brcmnand_waitfunc) #11
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %66
  %73 = icmp slt i32 %69, 1538
  %74 = select i1 %73, i32 24, i32 0
  %75 = lshr i32 %67, %74
  %76 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.36, i32 noundef %75) #12
  br label %77

77:                                               ; preds = %72, %66
  %78 = tail call i32 @___ratelimit(ptr noundef nonnull @brcmnand_waitfunc._rs.37, ptr noundef nonnull @__func__.brcmnand_waitfunc) #11
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %94, label %80

80:                                               ; preds = %77
  %81 = load ptr, ptr %5, align 8
  %82 = load ptr, ptr %56, align 8
  %83 = getelementptr i16, ptr %82, i32 3
  %84 = load i16, ptr %83, align 2
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %80
  %87 = zext i16 %84 to i32
  %88 = getelementptr inbounds %struct.brcmnand_controller, ptr %5, i32 0, i32 2
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr i8, ptr %89, i32 %87
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #11, !srcloc !8
  br label %92

92:                                               ; preds = %86, %80
  %93 = phi i32 [ %91, %86 ], [ 0, %80 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.38, i32 noundef %93) #12
  br label %94

94:                                               ; preds = %92, %77, %51, %37, %1
  store i32 0, ptr %6, align 4
  %95 = getelementptr inbounds %struct.brcmnand_controller, ptr %5, i32 0, i32 33
  %96 = load ptr, ptr %95, align 8
  %97 = getelementptr i16, ptr %96, i32 3
  %98 = load i16, ptr %97, align 2
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %94
  %101 = zext i16 %98 to i32
  %102 = getelementptr inbounds %struct.brcmnand_controller, ptr %5, i32 0, i32 2
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr i8, ptr %103, i32 %101
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %104) #11, !srcloc !8
  %106 = and i32 %105, 255
  br label %107

107:                                              ; preds = %100, %94
  %108 = phi i32 [ %106, %100 ], [ 0, %94 ]
  ret i32 %108
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_status_op(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @brcmnand_read(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca %struct.mtd_oob_region, align 8
  %8 = alloca i64, align 8
  %9 = getelementptr inbounds %struct.nand_chip, ptr %1, i32 0, i32 34
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.brcmnand_host, ptr %10, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  store i64 0, ptr %8, align 8
  %13 = getelementptr inbounds %struct.brcmnand_controller, ptr %12, i32 0, i32 33
  %14 = getelementptr inbounds %struct.brcmnand_controller, ptr %12, i32 0, i32 2
  %15 = getelementptr inbounds %struct.brcmnand_controller, ptr %12, i32 0, i32 31
  %16 = getelementptr inbounds %struct.brcmnand_controller, ptr %12, i32 0, i32 18
  %17 = icmp eq ptr %5, null
  %18 = icmp eq ptr %4, null
  %19 = ptrtoint ptr %4 to i32
  %20 = and i32 %19, 3
  %21 = icmp ne i32 %20, 0
  %22 = shl i32 %3, 9
  %23 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.brcmnand_controller, ptr %12, i32 0, i32 7
  br label %25

25:                                               ; preds = %98, %6
  %26 = phi i1 [ false, %6 ], [ true, %98 ]
  %27 = phi i1 [ false, %6 ], [ %97, %98 ]
  %28 = load ptr, ptr %13, align 8
  %29 = getelementptr i16, ptr %28, i32 16
  %30 = load i16, ptr %29, align 2
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %25
  %33 = zext i16 %30 to i32
  %34 = load ptr, ptr %14, align 4
  %35 = getelementptr i8, ptr %34, i32 %33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 0) #11, !srcloc !9
  %36 = load ptr, ptr %13, align 8
  br label %37

37:                                               ; preds = %32, %25
  %38 = phi ptr [ %28, %25 ], [ %36, %32 ]
  %39 = getelementptr i16, ptr %38, i32 14
  %40 = load i16, ptr %39, align 2
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = zext i16 %40 to i32
  %44 = load ptr, ptr %14, align 4
  %45 = getelementptr i8, ptr %44, i32 %43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 0) #11, !srcloc !9
  %46 = load ptr, ptr %13, align 8
  br label %47

47:                                               ; preds = %42, %37
  %48 = phi ptr [ %38, %37 ], [ %46, %42 ]
  %49 = getelementptr i16, ptr %48, i32 15
  %50 = load i16, ptr %49, align 2
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = zext i16 %50 to i32
  %54 = load ptr, ptr %14, align 4
  %55 = getelementptr i8, ptr %54, i32 %53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 0) #11, !srcloc !9
  %56 = load ptr, ptr %13, align 8
  br label %57

57:                                               ; preds = %52, %47
  %58 = phi ptr [ %48, %47 ], [ %56, %52 ]
  %59 = getelementptr i16, ptr %58, i32 13
  %60 = load i16, ptr %59, align 2
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %57
  %63 = zext i16 %60 to i32
  %64 = load ptr, ptr %14, align 4
  %65 = getelementptr i8, ptr %64, i32 %63
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 0) #11, !srcloc !9
  br label %66

66:                                               ; preds = %62, %57
  %67 = load ptr, ptr %15, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %90, label %69

69:                                               ; preds = %66
  %70 = load ptr, ptr %16, align 8
  %71 = icmp ne ptr %70, null
  %72 = or i1 %17, %71
  br i1 %72, label %73, label %91

73:                                               ; preds = %69
  br i1 %18, label %90, label %74

74:                                               ; preds = %73
  %75 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %4) #11
  %76 = or i1 %21, %75
  br i1 %76, label %90, label %77

77:                                               ; preds = %74
  %78 = load ptr, ptr %15, align 4
  %79 = tail call i32 %78(ptr noundef %10, i64 noundef %2, ptr noundef nonnull %4, ptr noundef %5, i32 noundef %22, i8 noundef zeroext 1) #11
  switch i32 %79, label %183 [
    i32 0, label %80
    i32 -74, label %82
    i32 -117, label %82
  ]

80:                                               ; preds = %77
  %81 = load i64, ptr %8, align 8
  br label %83

82:                                               ; preds = %77, %77
  store i64 %2, ptr %8, align 8
  br label %83

83:                                               ; preds = %82, %80
  %84 = phi i64 [ %81, %80 ], [ %2, %82 ]
  %85 = load ptr, ptr %16, align 8
  %86 = icmp ne ptr %85, null
  %87 = icmp ne i64 %84, 0
  %88 = select i1 %86, i1 %87, i1 false
  %89 = select i1 %88, i1 true, i1 %27
  br label %95

90:                                               ; preds = %74, %73, %66
  br i1 %17, label %93, label %91

91:                                               ; preds = %90, %69
  %92 = load i32, ptr %23, align 4
  tail call void @llvm.memset.p0.i32(ptr nonnull align 1 %5, i8 -103, i32 %92, i1 false)
  br label %93

93:                                               ; preds = %91, %90
  %94 = call fastcc i32 @brcmnand_read_by_pio(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %8)
  br label %95

95:                                               ; preds = %93, %83
  %96 = phi i32 [ %94, %93 ], [ %79, %83 ]
  %97 = phi i1 [ %27, %93 ], [ %89, %83 ]
  switch i32 %96, label %183 [
    i32 -74, label %98
    i32 -117, label %159
  ]

98:                                               ; preds = %95
  %99 = load i32, ptr %24, align 8
  %100 = and i32 %99, -2
  %101 = icmp ne i32 %100, 1792
  %102 = or i1 %26, %101
  br i1 %102, label %103, label %25

103:                                              ; preds = %98
  %104 = icmp slt i32 %99, 1794
  br i1 %104, label %105, label %155

105:                                              ; preds = %103
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  store i64 0, ptr %7, align 8, !annotation !15
  %106 = getelementptr inbounds %struct.nand_chip, ptr %1, i32 0, i32 17
  %107 = load i32, ptr %106, align 4
  %108 = zext i32 %107 to i64
  %109 = lshr i64 %2, %108
  %110 = trunc i64 %109 to i32
  br i1 %18, label %111, label %115

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.nand_chip, ptr %1, i32 0, i32 24, i32 1
  store i32 -1, ptr %112, align 4
  %113 = getelementptr inbounds %struct.nand_chip, ptr %1, i32 0, i32 22
  %114 = load ptr, ptr %113, align 8
  br label %115

115:                                              ; preds = %111, %105
  %116 = phi ptr [ %4, %105 ], [ %114, %111 ]
  %117 = getelementptr inbounds %struct.nand_chip, ptr %1, i32 0, i32 33, i32 16
  %118 = load ptr, ptr %117, align 8
  %119 = tail call i32 %118(ptr noundef %1, ptr noundef %116, i32 noundef 1, i32 noundef %110) #11
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %153

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.nand_chip, ptr %1, i32 0, i32 33, i32 4
  %123 = getelementptr inbounds %struct.nand_chip, ptr %1, i32 0, i32 33, i32 3
  %124 = load i32, ptr %123, align 4
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %151

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.nand_chip, ptr %1, i32 0, i32 23
  %128 = getelementptr inbounds %struct.mtd_oob_region, ptr %7, i32 0, i32 1
  %129 = getelementptr inbounds %struct.nand_chip, ptr %1, i32 0, i32 33, i32 7
  br label %130

130:                                              ; preds = %146, %126
  %131 = phi i32 [ 0, %126 ], [ %148, %146 ]
  %132 = phi i32 [ 0, %126 ], [ %147, %146 ]
  %133 = load i32, ptr %122, align 8
  %134 = mul i32 %133, %131
  %135 = getelementptr i8, ptr %116, i32 %134
  %136 = call i32 @mtd_ooblayout_ecc(ptr noundef %0, i32 noundef %131, ptr noundef nonnull %7) #11
  %137 = load ptr, ptr %127, align 4
  %138 = load i32, ptr %7, align 8
  %139 = getelementptr i8, ptr %137, i32 %138
  %140 = load i32, ptr %122, align 8
  %141 = load i32, ptr %128, align 4
  %142 = load i32, ptr %129, align 4
  %143 = call i32 @nand_check_erased_ecc_chunk(ptr noundef %135, i32 noundef %140, ptr noundef %139, i32 noundef %141, ptr noundef null, i32 noundef 0, i32 noundef %142) #11
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %130
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  br label %155

146:                                              ; preds = %130
  %147 = call i32 @llvm.smax.i32(i32 %132, i32 %143) #11
  %148 = add nuw nsw i32 %131, 1
  %149 = load i32, ptr %123, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %130, label %151

151:                                              ; preds = %146, %121
  %152 = phi i32 [ 0, %121 ], [ %147, %146 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  br label %183

153:                                              ; preds = %115
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  %154 = icmp sgt i32 %119, -1
  br i1 %154, label %183, label %155

155:                                              ; preds = %153, %145, %103
  %156 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52, i32 1
  %157 = load i32, ptr %156, align 4
  %158 = add i32 %157, 1
  store i32 %158, ptr %156, align 4
  br label %183

159:                                              ; preds = %95
  %160 = load i32, ptr %24, align 8
  %161 = icmp slt i32 %160, 1536
  br i1 %161, label %172, label %162

162:                                              ; preds = %159
  %163 = load ptr, ptr %13, align 8
  %164 = getelementptr i16, ptr %163, i32 12
  %165 = load i16, ptr %164, align 2
  %166 = icmp eq i16 %165, 0
  br i1 %166, label %172, label %167

167:                                              ; preds = %162
  %168 = zext i16 %165 to i32
  %169 = load ptr, ptr %14, align 4
  %170 = getelementptr i8, ptr %169, i32 %168
  %171 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %170) #11, !srcloc !8
  br label %172

172:                                              ; preds = %167, %162, %159
  %173 = phi i32 [ 1, %159 ], [ %171, %167 ], [ 0, %162 ]
  br i1 %97, label %174, label %176

174:                                              ; preds = %172
  %175 = call fastcc i32 @brcmnand_read_by_pio(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %8)
  br label %176

176:                                              ; preds = %174, %172
  %177 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52
  %178 = load i32, ptr %177, align 4
  %179 = add i32 %178, %173
  store i32 %179, ptr %177, align 4
  %180 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 12
  %181 = load i32, ptr %180, align 4
  %182 = tail call i32 @llvm.umax.i32(i32 %181, i32 %173)
  br label %183

183:                                              ; preds = %176, %155, %153, %151, %95, %77
  %184 = phi i32 [ 0, %155 ], [ %182, %176 ], [ %119, %153 ], [ %152, %151 ], [ -5, %77 ], [ 0, %95 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  ret i32 %184
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @brcmnand_read_by_pio(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i64 noundef %2, i32 noundef %3, ptr noundef writeonly %4, ptr noundef writeonly %5, ptr nocapture noundef writeonly %6) unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.nand_chip, ptr %1, i32 0, i32 34
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.brcmnand_host, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 33
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr i16, ptr %13, i32 16
  %15 = load i16, ptr %14, align 2
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %7
  %18 = zext i16 %15 to i32
  %19 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 0) #11, !srcloc !9
  %22 = load ptr, ptr %12, align 8
  br label %23

23:                                               ; preds = %17, %7
  %24 = phi ptr [ %13, %7 ], [ %22, %17 ]
  %25 = getelementptr i16, ptr %24, i32 14
  %26 = load i16, ptr %25, align 2
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = zext i16 %26 to i32
  %30 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 %29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 0) #11, !srcloc !9
  %33 = load ptr, ptr %12, align 8
  br label %34

34:                                               ; preds = %28, %23
  %35 = phi ptr [ %24, %23 ], [ %33, %28 ]
  %36 = getelementptr i16, ptr %35, i32 15
  %37 = load i16, ptr %36, align 2
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %34
  %40 = zext i16 %37 to i32
  %41 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr i8, ptr %42, i32 %40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 0) #11, !srcloc !9
  %44 = load ptr, ptr %12, align 8
  br label %45

45:                                               ; preds = %39, %34
  %46 = phi ptr [ %35, %34 ], [ %44, %39 ]
  %47 = getelementptr i16, ptr %46, i32 13
  %48 = load i16, ptr %47, align 2
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = zext i16 %48 to i32
  %52 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr i8, ptr %53, i32 %51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 0) #11, !srcloc !9
  br label %55

55:                                               ; preds = %50, %45
  %56 = icmp eq i32 %3, 0
  br i1 %56, label %277, label %57

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 34
  %59 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 8
  %60 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 3
  %61 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %62 = getelementptr inbounds %struct.brcmnand_host, ptr %9, i32 0, i32 7, i32 8
  %63 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 42
  %64 = getelementptr inbounds %struct.brcmnand_controller, ptr %11, i32 0, i32 2
  br label %65

65:                                               ; preds = %272, %57
  %66 = phi i32 [ 0, %57 ], [ %273, %272 ]
  %67 = phi i32 [ 0, %57 ], [ %274, %272 ]
  %68 = phi i64 [ %2, %57 ], [ %275, %272 ]
  %69 = phi ptr [ %5, %57 ], [ %207, %272 ]
  %70 = phi ptr [ %4, %57 ], [ %152, %272 ]
  %71 = load ptr, ptr %58, align 8
  %72 = getelementptr inbounds %struct.brcmnand_host, ptr %71, i32 0, i32 8
  %73 = load ptr, ptr %72, align 8
  %74 = getelementptr inbounds %struct.brcmnand_controller, ptr %73, i32 0, i32 33
  %75 = load ptr, ptr %74, align 8
  %76 = getelementptr i16, ptr %75, i32 1
  %77 = load i16, ptr %76, align 2
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %101, label %79

79:                                               ; preds = %65
  %80 = lshr i64 %68, 32
  %81 = trunc i64 %80 to i32
  %82 = and i32 %81, 65535
  %83 = getelementptr inbounds %struct.brcmnand_host, ptr %71, i32 0, i32 3
  %84 = load i32, ptr %83, align 4
  %85 = shl i32 %84, 16
  %86 = or i32 %85, %82
  %87 = zext i16 %77 to i32
  %88 = getelementptr inbounds %struct.brcmnand_controller, ptr %73, i32 0, i32 2
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr i8, ptr %89, i32 %87
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %86) #11, !srcloc !9
  %91 = load ptr, ptr %74, align 8
  %92 = getelementptr i16, ptr %91, i32 1
  %93 = load i16, ptr %92, align 2
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %79
  %96 = zext i16 %93 to i32
  %97 = load ptr, ptr %88, align 4
  %98 = getelementptr i8, ptr %97, i32 %96
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %98) #11, !srcloc !8
  %100 = load ptr, ptr %74, align 8
  br label %101

101:                                              ; preds = %95, %79, %65
  %102 = phi ptr [ %91, %79 ], [ %100, %95 ], [ %75, %65 ]
  %103 = getelementptr i16, ptr %102, i32 2
  %104 = load i16, ptr %103, align 2
  %105 = icmp eq i16 %104, 0
  br i1 %105, label %121, label %106

106:                                              ; preds = %101
  %107 = trunc i64 %68 to i32
  %108 = zext i16 %104 to i32
  %109 = getelementptr inbounds %struct.brcmnand_controller, ptr %73, i32 0, i32 2
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr i8, ptr %110, i32 %108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 %107) #11, !srcloc !9
  %112 = load ptr, ptr %74, align 8
  %113 = getelementptr i16, ptr %112, i32 2
  %114 = load i16, ptr %113, align 2
  %115 = icmp eq i16 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %106
  %117 = zext i16 %114 to i32
  %118 = load ptr, ptr %109, align 4
  %119 = getelementptr i8, ptr %118, i32 %117
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %119) #11, !srcloc !8
  br label %121

121:                                              ; preds = %116, %106, %101
  tail call fastcc void @brcmnand_send_cmd(ptr noundef %9, i32 noundef 1)
  %122 = tail call i32 @brcmnand_waitfunc(ptr noundef %1)
  %123 = icmp eq ptr %70, null
  br i1 %123, label %151, label %124, !prof !10

124:                                              ; preds = %121
  %125 = load ptr, ptr %59, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %132, label %127

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.brcmnand_soc, ptr %125, i32 0, i32 2
  %129 = load ptr, ptr %128, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %132, label %131

131:                                              ; preds = %127
  tail call void %129(ptr noundef nonnull %125, i1 noundef zeroext true, i1 noundef zeroext false) #11
  br label %132

132:                                              ; preds = %131, %127, %124
  br label %133

133:                                              ; preds = %133, %132
  %134 = phi i32 [ %140, %133 ], [ 0, %132 ]
  %135 = phi ptr [ %141, %133 ], [ %70, %132 ]
  %136 = load ptr, ptr %60, align 8
  %137 = shl nuw nsw i32 %134, 2
  %138 = getelementptr i8, ptr %136, i32 %137
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %138) #11, !srcloc !8
  store i32 %139, ptr %135, align 4
  %140 = add nuw nsw i32 %134, 1
  %141 = getelementptr i32, ptr %135, i32 1
  %142 = icmp eq i32 %140, 128
  br i1 %142, label %143, label %133

143:                                              ; preds = %133
  %144 = load ptr, ptr %59, align 4
  %145 = icmp eq ptr %144, null
  br i1 %145, label %151, label %146

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct.brcmnand_soc, ptr %144, i32 0, i32 2
  %148 = load ptr, ptr %147, align 4
  %149 = icmp eq ptr %148, null
  br i1 %149, label %151, label %150

150:                                              ; preds = %146
  tail call void %148(ptr noundef nonnull %144, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %151

151:                                              ; preds = %150, %146, %143, %121
  %152 = phi ptr [ null, %121 ], [ %141, %143 ], [ %141, %146 ], [ %141, %150 ]
  %153 = icmp eq ptr %69, null
  br i1 %153, label %206, label %154

154:                                              ; preds = %151
  %155 = load i32, ptr %61, align 4
  %156 = udiv i32 %155, %3
  %157 = load i32, ptr %62, align 4
  %158 = shl i32 %156, %157
  %159 = icmp eq i32 %157, 0
  %160 = and i32 %67, 1
  %161 = icmp eq i32 %160, 0
  %162 = or i1 %161, %159
  %163 = load i32, ptr %63, align 4
  %164 = sub i32 %158, %163
  %165 = tail call i32 @llvm.smax.i32(i32 %164, i32 0) #11
  %166 = select i1 %162, i32 %158, i32 %165
  %167 = tail call i32 @llvm.smin.i32(i32 %166, i32 %163) #11
  %168 = icmp sgt i32 %167, 0
  br i1 %168, label %169, label %204

169:                                              ; preds = %202, %154
  %170 = phi i32 [ %203, %202 ], [ %163, %154 ]
  %171 = phi i32 [ %200, %202 ], [ 0, %154 ]
  %172 = icmp ugt i32 %170, %171
  br i1 %172, label %173, label %197

173:                                              ; preds = %169
  %174 = load ptr, ptr %12, align 8
  %175 = getelementptr i16, ptr %174, i32 21
  %176 = load i16, ptr %175, align 2
  %177 = getelementptr i16, ptr %174, i32 22
  %178 = load i16, ptr %177, align 2
  %179 = icmp ugt i32 %171, 15
  %180 = icmp ne i16 %178, 0
  %181 = select i1 %179, i1 %180, i1 false
  %182 = trunc i32 %171 to i16
  %183 = add i16 %182, -16
  %184 = select i1 %181, i16 %183, i16 %182
  %185 = select i1 %181, i16 %178, i16 %176
  %186 = and i16 %184, -4
  %187 = add i16 %186, %185
  %188 = zext i16 %187 to i32
  %189 = load ptr, ptr %64, align 4
  %190 = getelementptr i8, ptr %189, i32 %188
  %191 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %190) #11, !srcloc !8
  %192 = shl i32 %171, 3
  %193 = and i32 %192, 24
  %194 = xor i32 %193, 24
  %195 = lshr i32 %191, %194
  %196 = trunc i32 %195 to i8
  br label %197

197:                                              ; preds = %173, %169
  %198 = phi i8 [ %196, %173 ], [ 119, %169 ]
  %199 = getelementptr i8, ptr %69, i32 %171
  store i8 %198, ptr %199, align 1
  %200 = add nuw nsw i32 %171, 1
  %201 = icmp eq i32 %200, %167
  br i1 %201, label %204, label %202

202:                                              ; preds = %197
  %203 = load i32, ptr %63, align 4
  br label %169

204:                                              ; preds = %197, %154
  %205 = getelementptr i8, ptr %69, i32 %167
  br label %206

206:                                              ; preds = %204, %151
  %207 = phi ptr [ %205, %204 ], [ null, %151 ]
  %208 = icmp eq i32 %66, -74
  br i1 %208, label %272, label %209

209:                                              ; preds = %206
  %210 = load ptr, ptr %12, align 8
  %211 = getelementptr i16, ptr %210, i32 16
  %212 = load i16, ptr %211, align 2
  %213 = icmp eq i16 %212, 0
  br i1 %213, label %220, label %214

214:                                              ; preds = %209
  %215 = zext i16 %212 to i32
  %216 = load ptr, ptr %64, align 4
  %217 = getelementptr i8, ptr %216, i32 %215
  %218 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %217) #11, !srcloc !8
  %219 = load ptr, ptr %12, align 8
  br label %220

220:                                              ; preds = %214, %209
  %221 = phi ptr [ %219, %214 ], [ %210, %209 ]
  %222 = phi i32 [ %218, %214 ], [ 0, %209 ]
  %223 = getelementptr i16, ptr %221, i32 15
  %224 = load i16, ptr %223, align 2
  %225 = icmp eq i16 %224, 0
  br i1 %225, label %232, label %226

226:                                              ; preds = %220
  %227 = zext i16 %224 to i32
  %228 = load ptr, ptr %64, align 4
  %229 = getelementptr i8, ptr %228, i32 %227
  %230 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %229) #11, !srcloc !8
  %231 = and i32 %230, 65535
  br label %232

232:                                              ; preds = %226, %220
  %233 = phi i32 [ %231, %226 ], [ 0, %220 ]
  %234 = zext i32 %222 to i64
  %235 = zext i32 %233 to i64
  %236 = shl nuw nsw i64 %235, 32
  %237 = or i64 %236, %234
  store i64 %237, ptr %6, align 8
  %238 = icmp eq i64 %237, 0
  br i1 %238, label %239, label %272

239:                                              ; preds = %232
  %240 = icmp eq i32 %66, 0
  br i1 %240, label %241, label %272

241:                                              ; preds = %239
  %242 = load ptr, ptr %12, align 8
  %243 = getelementptr i16, ptr %242, i32 14
  %244 = load i16, ptr %243, align 2
  %245 = icmp eq i16 %244, 0
  br i1 %245, label %252, label %246

246:                                              ; preds = %241
  %247 = zext i16 %244 to i32
  %248 = load ptr, ptr %64, align 4
  %249 = getelementptr i8, ptr %248, i32 %247
  %250 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %249) #11, !srcloc !8
  %251 = load ptr, ptr %12, align 8
  br label %252

252:                                              ; preds = %246, %241
  %253 = phi ptr [ %251, %246 ], [ %242, %241 ]
  %254 = phi i32 [ %250, %246 ], [ 0, %241 ]
  %255 = getelementptr i16, ptr %253, i32 13
  %256 = load i16, ptr %255, align 2
  %257 = icmp eq i16 %256, 0
  br i1 %257, label %264, label %258

258:                                              ; preds = %252
  %259 = zext i16 %256 to i32
  %260 = load ptr, ptr %64, align 4
  %261 = getelementptr i8, ptr %260, i32 %259
  %262 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %261) #11, !srcloc !8
  %263 = and i32 %262, 65535
  br label %264

264:                                              ; preds = %258, %252
  %265 = phi i32 [ %263, %258 ], [ 0, %252 ]
  %266 = zext i32 %254 to i64
  %267 = zext i32 %265 to i64
  %268 = shl nuw nsw i64 %267, 32
  %269 = or i64 %268, %266
  store i64 %269, ptr %6, align 8
  %270 = icmp eq i64 %269, 0
  %271 = select i1 %270, i32 0, i32 -117
  br label %272

272:                                              ; preds = %264, %239, %232, %206
  %273 = phi i32 [ %66, %239 ], [ %271, %264 ], [ -74, %206 ], [ -74, %232 ]
  %274 = add nuw i32 %67, 1
  %275 = add i64 %68, 512
  %276 = icmp eq i32 %274, %3
  br i1 %276, label %277, label %65

277:                                              ; preds = %272, %55
  %278 = phi i32 [ 0, %55 ], [ %273, %272 ]
  ret i32 %278
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_ooblayout_ecc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_check_erased_ecc_chunk(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmnand_edu_irq(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 20
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %262, label %6

6:                                                ; preds = %2
  %7 = add i32 %4, -1
  store i32 %7, ptr %3, align 8
  %8 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 17
  %9 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 18
  %10 = load ptr, ptr %8, align 4
  %11 = getelementptr i16, ptr %10, i32 7
  %12 = load i16, ptr %11, align 2
  %13 = load ptr, ptr %9, align 8
  %14 = zext i16 %12 to i32
  %15 = getelementptr i8, ptr %13, i32 %14
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #11, !srcloc !8
  %17 = and i32 %16, 3
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %19, %6
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748) #11
  %21 = load ptr, ptr %8, align 4
  %22 = getelementptr i16, ptr %21, i32 7
  %23 = load i16, ptr %22, align 2
  %24 = load ptr, ptr %9, align 8
  %25 = zext i16 %23 to i32
  %26 = getelementptr i8, ptr %24, i32 %25
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #11, !srcloc !8
  %28 = and i32 %27, 3
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %19, label %30

30:                                               ; preds = %19, %6
  %31 = load ptr, ptr %8, align 4
  %32 = getelementptr i16, ptr %31, i32 7
  %33 = load i16, ptr %32, align 2
  %34 = load ptr, ptr %9, align 8
  %35 = zext i16 %33 to i32
  %36 = getelementptr i8, ptr %34, i32 %35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 0) #11, !srcloc !9
  %37 = load ptr, ptr %8, align 4
  %38 = getelementptr i16, ptr %37, i32 7
  %39 = load i16, ptr %38, align 2
  %40 = load ptr, ptr %9, align 8
  %41 = zext i16 %39 to i32
  %42 = getelementptr i8, ptr %40, i32 %41
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #11, !srcloc !8
  %44 = load i32, ptr %3, align 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %262, label %46

46:                                               ; preds = %30
  %47 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 21
  %48 = load i64, ptr %47, align 8
  %49 = add i64 %48, 512
  store i64 %49, ptr %47, align 8
  %50 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 22
  %51 = load i32, ptr %50, align 8
  %52 = add i32 %51, 512
  store i32 %52, ptr %50, align 8
  %53 = trunc i64 %49 to i32
  %54 = load ptr, ptr %8, align 4
  %55 = getelementptr i16, ptr %54, i32 1
  %56 = load i16, ptr %55, align 2
  %57 = load ptr, ptr %9, align 8
  %58 = zext i16 %56 to i32
  %59 = getelementptr i8, ptr %57, i32 %58
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %53) #11, !srcloc !9
  %60 = load ptr, ptr %8, align 4
  %61 = getelementptr i16, ptr %60, i32 1
  %62 = load i16, ptr %61, align 2
  %63 = load ptr, ptr %9, align 8
  %64 = zext i16 %62 to i32
  %65 = getelementptr i8, ptr %63, i32 %64
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #11, !srcloc !8
  %67 = load i32, ptr %50, align 8
  %68 = load ptr, ptr %8, align 4
  %69 = getelementptr i16, ptr %68, i32 2
  %70 = load i16, ptr %69, align 2
  %71 = load ptr, ptr %9, align 8
  %72 = zext i16 %70 to i32
  %73 = getelementptr i8, ptr %71, i32 %72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %67) #11, !srcloc !9
  %74 = load ptr, ptr %8, align 4
  %75 = getelementptr i16, ptr %74, i32 2
  %76 = load i16, ptr %75, align 2
  %77 = load ptr, ptr %9, align 8
  %78 = zext i16 %76 to i32
  %79 = getelementptr i8, ptr %77, i32 %78
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #11, !srcloc !8
  %81 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 27
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %246, label %84

84:                                               ; preds = %46
  %85 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 23
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %149

88:                                               ; preds = %84
  %89 = load i32, ptr %3, align 8
  %90 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 25
  %91 = load i32, ptr %90, align 4
  %92 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 26
  %93 = load i32, ptr %92, align 8
  %94 = shl i32 %91, %93
  %95 = icmp eq i32 %93, 0
  %96 = and i32 %89, 1
  %97 = icmp ne i32 %96, 0
  %98 = or i1 %97, %95
  %99 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 42
  %100 = load i32, ptr %99, align 4
  %101 = sub i32 %94, %100
  %102 = tail call i32 @llvm.smax.i32(i32 %101, i32 0) #11
  %103 = select i1 %98, i32 %94, i32 %102
  %104 = tail call i32 @llvm.smin.i32(i32 %103, i32 %100) #11
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %146

106:                                              ; preds = %88
  %107 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 33
  %108 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 2
  br label %109

109:                                              ; preds = %142, %106
  %110 = phi i32 [ %100, %106 ], [ %143, %142 ]
  %111 = phi i32 [ 0, %106 ], [ %140, %142 ]
  %112 = icmp ugt i32 %110, %111
  br i1 %112, label %113, label %137

113:                                              ; preds = %109
  %114 = load ptr, ptr %107, align 8
  %115 = getelementptr i16, ptr %114, i32 21
  %116 = load i16, ptr %115, align 2
  %117 = getelementptr i16, ptr %114, i32 22
  %118 = load i16, ptr %117, align 2
  %119 = icmp ugt i32 %111, 15
  %120 = icmp ne i16 %118, 0
  %121 = select i1 %119, i1 %120, i1 false
  %122 = trunc i32 %111 to i16
  %123 = add i16 %122, -16
  %124 = select i1 %121, i16 %123, i16 %122
  %125 = select i1 %121, i16 %118, i16 %116
  %126 = and i16 %124, -4
  %127 = add i16 %126, %125
  %128 = zext i16 %127 to i32
  %129 = load ptr, ptr %108, align 4
  %130 = getelementptr i8, ptr %129, i32 %128
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %130) #11, !srcloc !8
  %132 = shl i32 %111, 3
  %133 = and i32 %132, 24
  %134 = xor i32 %133, 24
  %135 = lshr i32 %131, %134
  %136 = trunc i32 %135 to i8
  br label %137

137:                                              ; preds = %113, %109
  %138 = phi i8 [ %136, %113 ], [ 119, %109 ]
  %139 = getelementptr i8, ptr %82, i32 %111
  store i8 %138, ptr %139, align 1
  %140 = add nuw nsw i32 %111, 1
  %141 = icmp eq i32 %140, %104
  br i1 %141, label %144, label %142

142:                                              ; preds = %137
  %143 = load i32, ptr %99, align 4
  br label %109

144:                                              ; preds = %137
  %145 = load ptr, ptr %81, align 4
  br label %146

146:                                              ; preds = %144, %88
  %147 = phi ptr [ %145, %144 ], [ %82, %88 ]
  %148 = getelementptr i8, ptr %147, i32 %104
  br label %244

149:                                              ; preds = %84
  %150 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 33
  %151 = load ptr, ptr %150, align 8
  %152 = getelementptr i16, ptr %151, i32 2
  %153 = load i16, ptr %152, align 2
  %154 = icmp eq i16 %153, 0
  br i1 %154, label %171, label %155

155:                                              ; preds = %149
  %156 = load i32, ptr %50, align 8
  %157 = zext i16 %153 to i32
  %158 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 2
  %159 = load ptr, ptr %158, align 4
  %160 = getelementptr i8, ptr %159, i32 %157
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %160, i32 %156) #11, !srcloc !9
  %161 = load ptr, ptr %150, align 8
  %162 = getelementptr i16, ptr %161, i32 2
  %163 = load i16, ptr %162, align 2
  %164 = icmp eq i16 %163, 0
  br i1 %164, label %171, label %165

165:                                              ; preds = %155
  %166 = zext i16 %163 to i32
  %167 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 2
  %168 = load ptr, ptr %167, align 4
  %169 = getelementptr i8, ptr %168, i32 %166
  %170 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %169) #11, !srcloc !8
  br label %171

171:                                              ; preds = %165, %155, %149
  %172 = load i32, ptr %3, align 8
  %173 = load ptr, ptr %81, align 4
  %174 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 25
  %175 = load i32, ptr %174, align 4
  %176 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 26
  %177 = load i32, ptr %176, align 8
  %178 = shl i32 %175, %177
  %179 = icmp eq i32 %177, 0
  %180 = and i32 %172, 1
  %181 = icmp eq i32 %180, 0
  %182 = or i1 %181, %179
  %183 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 42
  %184 = load i32, ptr %183, align 4
  %185 = sub i32 %178, %184
  %186 = tail call i32 @llvm.smax.i32(i32 %185, i32 0) #11
  %187 = select i1 %182, i32 %178, i32 %186
  %188 = tail call i32 @llvm.smin.i32(i32 %187, i32 %184) #11
  %189 = icmp sgt i32 %188, 0
  br i1 %189, label %190, label %241

190:                                              ; preds = %171
  %191 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 2
  br label %192

192:                                              ; preds = %237, %190
  %193 = phi i32 [ %184, %190 ], [ %238, %237 ]
  %194 = phi i32 [ 0, %190 ], [ %235, %237 ]
  %195 = icmp ugt i32 %193, %194
  br i1 %195, label %196, label %234

196:                                              ; preds = %192
  %197 = getelementptr i8, ptr %173, i32 %194
  %198 = load i8, ptr %197, align 1
  %199 = zext i8 %198 to i32
  %200 = shl nuw i32 %199, 24
  %201 = or i32 %194, 1
  %202 = getelementptr i8, ptr %173, i32 %201
  %203 = load i8, ptr %202, align 1
  %204 = zext i8 %203 to i32
  %205 = shl nuw nsw i32 %204, 16
  %206 = or i32 %205, %200
  %207 = or i32 %194, 2
  %208 = getelementptr i8, ptr %173, i32 %207
  %209 = load i8, ptr %208, align 1
  %210 = zext i8 %209 to i32
  %211 = shl nuw nsw i32 %210, 8
  %212 = or i32 %206, %211
  %213 = or i32 %194, 3
  %214 = getelementptr i8, ptr %173, i32 %213
  %215 = load i8, ptr %214, align 1
  %216 = zext i8 %215 to i32
  %217 = or i32 %212, %216
  %218 = load ptr, ptr %150, align 8
  %219 = getelementptr i16, ptr %218, i32 23
  %220 = load i16, ptr %219, align 2
  %221 = getelementptr i16, ptr %218, i32 24
  %222 = load i16, ptr %221, align 2
  %223 = icmp ugt i32 %194, 15
  %224 = icmp ne i16 %222, 0
  %225 = select i1 %223, i1 %224, i1 false
  %226 = trunc i32 %194 to i16
  %227 = add i16 %226, -16
  %228 = select i1 %225, i16 %227, i16 %226
  %229 = select i1 %225, i16 %222, i16 %220
  %230 = add i16 %229, %228
  %231 = zext i16 %230 to i32
  %232 = load ptr, ptr %191, align 4
  %233 = getelementptr i8, ptr %232, i32 %231
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %233, i32 %217) #11, !srcloc !9
  br label %234

234:                                              ; preds = %196, %192
  %235 = add i32 %194, 4
  %236 = icmp slt i32 %235, %188
  br i1 %236, label %237, label %239

237:                                              ; preds = %234
  %238 = load i32, ptr %183, align 4
  br label %192

239:                                              ; preds = %234
  %240 = load ptr, ptr %81, align 4
  br label %241

241:                                              ; preds = %239, %171
  %242 = phi ptr [ %240, %239 ], [ %173, %171 ]
  %243 = getelementptr i8, ptr %242, i32 %188
  br label %244

244:                                              ; preds = %241, %146
  %245 = phi ptr [ %243, %241 ], [ %148, %146 ]
  store ptr %245, ptr %81, align 4
  br label %246

246:                                              ; preds = %244, %46
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !21
  tail call void @arm_heavy_mb() #11
  %247 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 23
  %248 = load i32, ptr %247, align 4
  %249 = load ptr, ptr %8, align 4
  %250 = getelementptr i16, ptr %249, i32 4
  %251 = load i16, ptr %250, align 2
  %252 = load ptr, ptr %9, align 8
  %253 = zext i16 %251 to i32
  %254 = getelementptr i8, ptr %252, i32 %253
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %254, i32 %248) #11, !srcloc !9
  %255 = load ptr, ptr %8, align 4
  %256 = getelementptr i16, ptr %255, i32 4
  %257 = load i16, ptr %256, align 2
  %258 = load ptr, ptr %9, align 8
  %259 = zext i16 %257 to i32
  %260 = getelementptr i8, ptr %258, i32 %259
  %261 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %260) #11, !srcloc !8
  br label %264

262:                                              ; preds = %30, %2
  %263 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 15
  tail call void @complete(ptr noundef %263) #11
  br label %264

264:                                              ; preds = %262, %246
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @brcmnand_cmd_ctrl(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #9 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmnand_cmdfunc(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 34
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.brcmnand_host, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  switch i32 %1, label %11 [
    i32 236, label %9
    i32 144, label %9
    i32 5, label %9
  ]

9:                                                ; preds = %4, %4, %4
  %10 = sext i32 %2 to i64
  br label %19

11:                                               ; preds = %4
  %12 = sext i32 %3 to i64
  %13 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 17
  %14 = load i32, ptr %13, align 4
  %15 = zext i32 %14 to i64
  %16 = shl i64 %12, %15
  %17 = icmp slt i32 %3, 0
  %18 = select i1 %17, i64 0, i64 %16
  br label %19

19:                                               ; preds = %11, %9
  %20 = phi i64 [ %10, %9 ], [ %18, %11 ]
  %21 = getelementptr inbounds %struct.brcmnand_host, ptr %6, i32 0, i32 4
  store i32 %1, ptr %21, align 8
  %22 = getelementptr inbounds %struct.brcmnand_host, ptr %6, i32 0, i32 5
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.brcmnand_host, ptr %6, i32 0, i32 6
  store i64 %20, ptr %23, align 8
  %24 = trunc i64 %20 to i32
  %25 = lshr i64 %20, 32
  %26 = trunc i64 %25 to i32
  switch i32 %1, label %412 [
    i32 255, label %260
    i32 112, label %27
    i32 144, label %28
    i32 80, label %29
    i32 96, label %30
    i32 236, label %31
    i32 239, label %32
    i32 238, label %32
    i32 5, label %80
  ]

27:                                               ; preds = %19
  br label %260

28:                                               ; preds = %19
  br label %260

29:                                               ; preds = %19
  br label %260

30:                                               ; preds = %19
  tail call fastcc void @brcmnand_wp(ptr noundef %0, i32 noundef 0)
  br label %260

31:                                               ; preds = %19
  br label %260

32:                                               ; preds = %19, %19
  %33 = getelementptr inbounds %struct.brcmnand_controller, ptr %8, i32 0, i32 33
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr i16, ptr %34, i32 6
  %36 = load i16, ptr %35, align 2
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %53, label %38

38:                                               ; preds = %32
  %39 = or i32 %1, 655360
  %40 = zext i16 %36 to i32
  %41 = getelementptr inbounds %struct.brcmnand_controller, ptr %8, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr i8, ptr %42, i32 %40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %39) #11, !srcloc !9
  %44 = load ptr, ptr %33, align 8
  %45 = getelementptr i16, ptr %44, i32 6
  %46 = load i16, ptr %45, align 2
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %38
  %49 = zext i16 %46 to i32
  %50 = load ptr, ptr %41, align 4
  %51 = getelementptr i8, ptr %50, i32 %49
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #11, !srcloc !8
  br label %53

53:                                               ; preds = %48, %38, %32
  %54 = getelementptr inbounds %struct.brcmnand_host, ptr %6, i32 0, i32 1
  tail call fastcc void @brcmnand_send_cmd(ptr noundef %6, i32 noundef 16) #11
  %55 = tail call i32 @brcmnand_waitfunc(ptr noundef %54) #11
  %56 = load ptr, ptr %7, align 8
  %57 = getelementptr inbounds %struct.brcmnand_controller, ptr %56, i32 0, i32 33
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr i16, ptr %58, i32 6
  %60 = load i16, ptr %59, align 2
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %78, label %62

62:                                               ; preds = %53
  %63 = and i32 %2, 65535
  %64 = or i32 %63, 393216
  %65 = zext i16 %60 to i32
  %66 = getelementptr inbounds %struct.brcmnand_controller, ptr %56, i32 0, i32 2
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr i8, ptr %67, i32 %65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %64) #11, !srcloc !9
  %69 = load ptr, ptr %57, align 8
  %70 = getelementptr i16, ptr %69, i32 6
  %71 = load i16, ptr %70, align 2
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %62
  %74 = zext i16 %71 to i32
  %75 = load ptr, ptr %66, align 4
  %76 = getelementptr i8, ptr %75, i32 %74
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #11, !srcloc !8
  br label %78

78:                                               ; preds = %73, %62, %53
  tail call fastcc void @brcmnand_send_cmd(ptr noundef %6, i32 noundef 16) #11
  %79 = tail call i32 @brcmnand_waitfunc(ptr noundef %54) #11
  br label %412

80:                                               ; preds = %19
  %81 = getelementptr inbounds %struct.brcmnand_controller, ptr %8, i32 0, i32 7
  %82 = load i32, ptr %81, align 8
  %83 = icmp sgt i32 %82, 1793
  br i1 %83, label %89, label %84

84:                                               ; preds = %80
  %85 = icmp sgt i32 %82, 1535
  br i1 %85, label %89, label %86

86:                                               ; preds = %84
  %87 = icmp sgt i32 %82, 1279
  %88 = select i1 %87, i32 6, i32 -1
  br label %89

89:                                               ; preds = %86, %84, %80
  %90 = phi i32 [ 9, %80 ], [ 7, %84 ], [ %88, %86 ]
  %91 = getelementptr inbounds %struct.brcmnand_host, ptr %6, i32 0, i32 3
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr inbounds %struct.brcmnand_controller, ptr %8, i32 0, i32 33
  %94 = load ptr, ptr %93, align 8
  %95 = getelementptr i16, ptr %94, i32 7
  %96 = load i16, ptr %95, align 2
  %97 = icmp eq i32 %92, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %89
  %99 = getelementptr inbounds %struct.brcmnand_controller, ptr %8, i32 0, i32 36
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %115

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.brcmnand_controller, ptr %8, i32 0, i32 35
  %104 = load ptr, ptr %103, align 8
  br label %115

105:                                              ; preds = %89
  %106 = getelementptr i16, ptr %94, i32 8
  %107 = load i16, ptr %106, align 2
  %108 = getelementptr inbounds %struct.brcmnand_controller, ptr %8, i32 0, i32 35
  %109 = load ptr, ptr %108, align 8
  %110 = icmp eq i16 %107, 0
  %111 = xor i1 %110, true
  %112 = sext i1 %111 to i32
  %113 = add i32 %92, %112
  %114 = select i1 %110, i16 %96, i16 %107
  br label %115

115:                                              ; preds = %105, %102, %98
  %116 = phi i32 [ %113, %105 ], [ 0, %102 ], [ 0, %98 ]
  %117 = phi ptr [ %109, %105 ], [ %104, %102 ], [ %100, %98 ]
  %118 = phi i16 [ %114, %105 ], [ %96, %102 ], [ %96, %98 ]
  %119 = icmp slt i32 %90, 0
  %120 = trunc i64 %20 to i32
  %121 = and i32 %120, -512
  br i1 %119, label %260, label %122

122:                                              ; preds = %115
  %123 = getelementptr i8, ptr %117, i32 2
  %124 = load i8, ptr %123, align 1
  %125 = zext i8 %124 to i32
  %126 = zext i16 %118 to i32
  %127 = add nuw nsw i32 %125, %126
  %128 = getelementptr inbounds %struct.brcmnand_controller, ptr %8, i32 0, i32 34
  %129 = load i32, ptr %128, align 4
  %130 = mul i32 %129, %116
  %131 = add i32 %127, %130
  %132 = and i32 %131, 65535
  %133 = getelementptr inbounds %struct.brcmnand_controller, ptr %8, i32 0, i32 2
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr i8, ptr %134, i32 %132
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %135) #11, !srcloc !8
  %137 = shl nuw nsw i32 1, %90
  %138 = and i32 %136, %137
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %260, label %140

140:                                              ; preds = %122
  %141 = load ptr, ptr %7, align 8
  %142 = getelementptr inbounds %struct.brcmnand_controller, ptr %141, i32 0, i32 7
  %143 = load i32, ptr %142, align 8
  %144 = icmp sgt i32 %143, 1793
  br i1 %144, label %150, label %145

145:                                              ; preds = %140
  %146 = icmp sgt i32 %143, 1535
  br i1 %146, label %150, label %147

147:                                              ; preds = %145
  %148 = icmp sgt i32 %143, 1279
  %149 = select i1 %148, i32 6, i32 -1
  br label %150

150:                                              ; preds = %147, %145, %140
  %151 = phi i32 [ 9, %140 ], [ 7, %145 ], [ %149, %147 ]
  %152 = load i32, ptr %91, align 4
  %153 = getelementptr inbounds %struct.brcmnand_controller, ptr %141, i32 0, i32 33
  %154 = load ptr, ptr %153, align 8
  %155 = getelementptr i16, ptr %154, i32 7
  %156 = load i16, ptr %155, align 2
  %157 = icmp eq i32 %152, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %150
  %159 = getelementptr inbounds %struct.brcmnand_controller, ptr %141, i32 0, i32 36
  %160 = load ptr, ptr %159, align 4
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %175

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.brcmnand_controller, ptr %141, i32 0, i32 35
  %164 = load ptr, ptr %163, align 8
  br label %175

165:                                              ; preds = %150
  %166 = getelementptr i16, ptr %154, i32 8
  %167 = load i16, ptr %166, align 2
  %168 = getelementptr inbounds %struct.brcmnand_controller, ptr %141, i32 0, i32 35
  %169 = load ptr, ptr %168, align 8
  %170 = icmp eq i16 %167, 0
  %171 = xor i1 %170, true
  %172 = sext i1 %171 to i32
  %173 = add i32 %152, %172
  %174 = select i1 %170, i16 %156, i16 %167
  br label %175

175:                                              ; preds = %165, %162, %158
  %176 = phi i32 [ %173, %165 ], [ 0, %162 ], [ 0, %158 ]
  %177 = phi ptr [ %169, %165 ], [ %164, %162 ], [ %160, %158 ]
  %178 = phi i16 [ %174, %165 ], [ %156, %162 ], [ %156, %158 ]
  %179 = icmp slt i32 %151, 0
  br i1 %179, label %198, label %180

180:                                              ; preds = %175
  %181 = getelementptr i8, ptr %177, i32 2
  %182 = load i8, ptr %181, align 1
  %183 = zext i8 %182 to i32
  %184 = zext i16 %178 to i32
  %185 = add nuw nsw i32 %183, %184
  %186 = getelementptr inbounds %struct.brcmnand_controller, ptr %141, i32 0, i32 34
  %187 = load i32, ptr %186, align 4
  %188 = mul i32 %187, %176
  %189 = add i32 %185, %188
  %190 = and i32 %189, 65535
  %191 = getelementptr inbounds %struct.brcmnand_controller, ptr %141, i32 0, i32 2
  %192 = load ptr, ptr %191, align 4
  %193 = getelementptr i8, ptr %192, i32 %190
  %194 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %193) #11, !srcloc !8
  %195 = lshr i32 %194, %151
  %196 = and i32 %195, 1
  %197 = load ptr, ptr %7, align 8
  br label %198

198:                                              ; preds = %180, %175
  %199 = phi ptr [ %197, %180 ], [ %141, %175 ]
  %200 = phi i32 [ %196, %180 ], [ 0, %175 ]
  %201 = getelementptr inbounds %struct.brcmnand_host, ptr %6, i32 0, i32 7, i32 8
  store i32 %200, ptr %201, align 4
  %202 = getelementptr inbounds %struct.brcmnand_controller, ptr %199, i32 0, i32 7
  %203 = load i32, ptr %202, align 8
  %204 = icmp sgt i32 %203, 1793
  br i1 %204, label %210, label %205

205:                                              ; preds = %198
  %206 = icmp sgt i32 %203, 1535
  br i1 %206, label %210, label %207

207:                                              ; preds = %205
  %208 = icmp sgt i32 %203, 1279
  %209 = select i1 %208, i32 6, i32 -1
  br label %210

210:                                              ; preds = %207, %205, %198
  %211 = phi i32 [ 9, %198 ], [ 7, %205 ], [ %209, %207 ]
  %212 = load i32, ptr %91, align 4
  %213 = getelementptr inbounds %struct.brcmnand_controller, ptr %199, i32 0, i32 33
  %214 = load ptr, ptr %213, align 8
  %215 = getelementptr i16, ptr %214, i32 7
  %216 = load i16, ptr %215, align 2
  %217 = icmp eq i32 %212, 0
  br i1 %217, label %218, label %225

218:                                              ; preds = %210
  %219 = getelementptr inbounds %struct.brcmnand_controller, ptr %199, i32 0, i32 36
  %220 = load ptr, ptr %219, align 4
  %221 = icmp eq ptr %220, null
  br i1 %221, label %222, label %235

222:                                              ; preds = %218
  %223 = getelementptr inbounds %struct.brcmnand_controller, ptr %199, i32 0, i32 35
  %224 = load ptr, ptr %223, align 8
  br label %235

225:                                              ; preds = %210
  %226 = getelementptr i16, ptr %214, i32 8
  %227 = load i16, ptr %226, align 2
  %228 = getelementptr inbounds %struct.brcmnand_controller, ptr %199, i32 0, i32 35
  %229 = load ptr, ptr %228, align 8
  %230 = icmp eq i16 %227, 0
  %231 = xor i1 %230, true
  %232 = sext i1 %231 to i32
  %233 = add i32 %212, %232
  %234 = select i1 %230, i16 %216, i16 %227
  br label %235

235:                                              ; preds = %225, %222, %218
  %236 = phi i32 [ %233, %225 ], [ 0, %222 ], [ 0, %218 ]
  %237 = phi ptr [ %229, %225 ], [ %224, %222 ], [ %220, %218 ]
  %238 = phi i16 [ %234, %225 ], [ %216, %222 ], [ %216, %218 ]
  %239 = icmp slt i32 %211, 0
  br i1 %239, label %260, label %240

240:                                              ; preds = %235
  %241 = getelementptr i8, ptr %237, i32 2
  %242 = load i8, ptr %241, align 1
  %243 = zext i8 %242 to i32
  %244 = zext i16 %238 to i32
  %245 = add nuw nsw i32 %243, %244
  %246 = getelementptr inbounds %struct.brcmnand_controller, ptr %199, i32 0, i32 34
  %247 = load i32, ptr %246, align 4
  %248 = mul i32 %247, %236
  %249 = add i32 %245, %248
  %250 = and i32 %249, 65535
  %251 = getelementptr inbounds %struct.brcmnand_controller, ptr %199, i32 0, i32 2
  %252 = load ptr, ptr %251, align 4
  %253 = getelementptr i8, ptr %252, i32 %250
  %254 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %253) #11, !srcloc !8
  %255 = shl nuw nsw i32 1, %211
  %256 = xor i32 %255, -1
  %257 = and i32 %254, %256
  %258 = load ptr, ptr %251, align 4
  %259 = getelementptr i8, ptr %258, i32 %250
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %259, i32 %257) #11, !srcloc !9
  br label %260

260:                                              ; preds = %240, %235, %122, %115, %31, %30, %29, %28, %27, %19
  %261 = phi i32 [ %121, %240 ], [ %121, %235 ], [ %24, %27 ], [ %24, %28 ], [ %24, %29 ], [ %24, %30 ], [ %24, %31 ], [ %121, %122 ], [ %24, %19 ], [ %121, %115 ]
  %262 = phi i1 [ false, %240 ], [ false, %235 ], [ false, %27 ], [ false, %28 ], [ false, %29 ], [ false, %30 ], [ true, %31 ], [ false, %122 ], [ false, %19 ], [ false, %115 ]
  %263 = phi i1 [ true, %240 ], [ true, %235 ], [ false, %27 ], [ false, %28 ], [ false, %29 ], [ false, %30 ], [ false, %31 ], [ true, %122 ], [ false, %19 ], [ true, %115 ]
  %264 = phi i32 [ 15, %240 ], [ 15, %235 ], [ 3, %27 ], [ 7, %28 ], [ 2, %29 ], [ 8, %30 ], [ 14, %31 ], [ 15, %122 ], [ 9, %19 ], [ 15, %115 ]
  %265 = load ptr, ptr %5, align 8
  %266 = getelementptr inbounds %struct.brcmnand_host, ptr %265, i32 0, i32 8
  %267 = load ptr, ptr %266, align 8
  %268 = getelementptr inbounds %struct.brcmnand_controller, ptr %267, i32 0, i32 33
  %269 = load ptr, ptr %268, align 8
  %270 = getelementptr i16, ptr %269, i32 1
  %271 = load i16, ptr %270, align 2
  %272 = icmp eq i16 %271, 0
  br i1 %272, label %293, label %273

273:                                              ; preds = %260
  %274 = and i32 %26, 65535
  %275 = getelementptr inbounds %struct.brcmnand_host, ptr %265, i32 0, i32 3
  %276 = load i32, ptr %275, align 4
  %277 = shl i32 %276, 16
  %278 = or i32 %277, %274
  %279 = zext i16 %271 to i32
  %280 = getelementptr inbounds %struct.brcmnand_controller, ptr %267, i32 0, i32 2
  %281 = load ptr, ptr %280, align 4
  %282 = getelementptr i8, ptr %281, i32 %279
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %282, i32 %278) #11, !srcloc !9
  %283 = load ptr, ptr %268, align 8
  %284 = getelementptr i16, ptr %283, i32 1
  %285 = load i16, ptr %284, align 2
  %286 = icmp eq i16 %285, 0
  br i1 %286, label %293, label %287

287:                                              ; preds = %273
  %288 = zext i16 %285 to i32
  %289 = load ptr, ptr %280, align 4
  %290 = getelementptr i8, ptr %289, i32 %288
  %291 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %290) #11, !srcloc !8
  %292 = load ptr, ptr %268, align 8
  br label %293

293:                                              ; preds = %287, %273, %260
  %294 = phi ptr [ %283, %273 ], [ %292, %287 ], [ %269, %260 ]
  %295 = getelementptr i16, ptr %294, i32 2
  %296 = load i16, ptr %295, align 2
  %297 = icmp eq i16 %296, 0
  br i1 %297, label %312, label %298

298:                                              ; preds = %293
  %299 = zext i16 %296 to i32
  %300 = getelementptr inbounds %struct.brcmnand_controller, ptr %267, i32 0, i32 2
  %301 = load ptr, ptr %300, align 4
  %302 = getelementptr i8, ptr %301, i32 %299
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %302, i32 %261) #11, !srcloc !9
  %303 = load ptr, ptr %268, align 8
  %304 = getelementptr i16, ptr %303, i32 2
  %305 = load i16, ptr %304, align 2
  %306 = icmp eq i16 %305, 0
  br i1 %306, label %312, label %307

307:                                              ; preds = %298
  %308 = zext i16 %305 to i32
  %309 = load ptr, ptr %300, align 4
  %310 = getelementptr i8, ptr %309, i32 %308
  %311 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %310) #11, !srcloc !8
  br label %312

312:                                              ; preds = %307, %298, %293
  tail call fastcc void @brcmnand_send_cmd(ptr noundef %6, i32 noundef %264)
  %313 = tail call i32 @brcmnand_waitfunc(ptr noundef %0)
  %314 = or i1 %262, %263
  br i1 %314, label %315, label %409

315:                                              ; preds = %312
  %316 = getelementptr inbounds %struct.brcmnand_controller, ptr %8, i32 0, i32 32
  %317 = getelementptr inbounds %struct.brcmnand_controller, ptr %8, i32 0, i32 8
  %318 = load ptr, ptr %317, align 4
  %319 = icmp eq ptr %318, null
  br i1 %319, label %325, label %320

320:                                              ; preds = %315
  %321 = getelementptr inbounds %struct.brcmnand_soc, ptr %318, i32 0, i32 2
  %322 = load ptr, ptr %321, align 4
  %323 = icmp eq ptr %322, null
  br i1 %323, label %325, label %324

324:                                              ; preds = %320
  tail call void %322(ptr noundef nonnull %318, i1 noundef zeroext true, i1 noundef zeroext true) #11
  br label %325

325:                                              ; preds = %324, %320, %315
  %326 = getelementptr inbounds %struct.brcmnand_controller, ptr %8, i32 0, i32 3
  br label %327

327:                                              ; preds = %327, %325
  %328 = phi i32 [ 0, %325 ], [ %335, %327 ]
  %329 = load ptr, ptr %326, align 8
  %330 = shl nuw nsw i32 %328, 2
  %331 = getelementptr i8, ptr %329, i32 %330
  %332 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %331) #11, !srcloc !8
  %333 = tail call i32 @llvm.bswap.i32(i32 %332)
  %334 = getelementptr i32, ptr %316, i32 %328
  store i32 %333, ptr %334, align 4
  %335 = add nuw nsw i32 %328, 1
  %336 = icmp eq i32 %335, 128
  br i1 %336, label %337, label %327

337:                                              ; preds = %327
  %338 = load ptr, ptr %317, align 4
  %339 = icmp eq ptr %338, null
  br i1 %339, label %345, label %340

340:                                              ; preds = %337
  %341 = getelementptr inbounds %struct.brcmnand_soc, ptr %338, i32 0, i32 2
  %342 = load ptr, ptr %341, align 4
  %343 = icmp eq ptr %342, null
  br i1 %343, label %345, label %344

344:                                              ; preds = %340
  tail call void %342(ptr noundef nonnull %338, i1 noundef zeroext false, i1 noundef zeroext true) #11
  br label %345

345:                                              ; preds = %344, %340, %337
  %346 = getelementptr inbounds %struct.brcmnand_host, ptr %6, i32 0, i32 7, i32 8
  %347 = load i32, ptr %346, align 4
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %409, label %349

349:                                              ; preds = %345
  %350 = load ptr, ptr %7, align 8
  %351 = getelementptr inbounds %struct.brcmnand_controller, ptr %350, i32 0, i32 7
  %352 = load i32, ptr %351, align 8
  %353 = icmp sgt i32 %352, 1793
  br i1 %353, label %359, label %354

354:                                              ; preds = %349
  %355 = icmp sgt i32 %352, 1535
  br i1 %355, label %359, label %356

356:                                              ; preds = %354
  %357 = icmp sgt i32 %352, 1279
  %358 = select i1 %357, i32 6, i32 -1
  br label %359

359:                                              ; preds = %356, %354, %349
  %360 = phi i32 [ 9, %349 ], [ 7, %354 ], [ %358, %356 ]
  %361 = getelementptr inbounds %struct.brcmnand_host, ptr %6, i32 0, i32 3
  %362 = load i32, ptr %361, align 4
  %363 = getelementptr inbounds %struct.brcmnand_controller, ptr %350, i32 0, i32 33
  %364 = load ptr, ptr %363, align 8
  %365 = getelementptr i16, ptr %364, i32 7
  %366 = load i16, ptr %365, align 2
  %367 = icmp eq i32 %362, 0
  br i1 %367, label %368, label %375

368:                                              ; preds = %359
  %369 = getelementptr inbounds %struct.brcmnand_controller, ptr %350, i32 0, i32 36
  %370 = load ptr, ptr %369, align 4
  %371 = icmp eq ptr %370, null
  br i1 %371, label %372, label %385

372:                                              ; preds = %368
  %373 = getelementptr inbounds %struct.brcmnand_controller, ptr %350, i32 0, i32 35
  %374 = load ptr, ptr %373, align 8
  br label %385

375:                                              ; preds = %359
  %376 = getelementptr i16, ptr %364, i32 8
  %377 = load i16, ptr %376, align 2
  %378 = getelementptr inbounds %struct.brcmnand_controller, ptr %350, i32 0, i32 35
  %379 = load ptr, ptr %378, align 8
  %380 = icmp eq i16 %377, 0
  %381 = xor i1 %380, true
  %382 = sext i1 %381 to i32
  %383 = add i32 %362, %382
  %384 = select i1 %380, i16 %366, i16 %377
  br label %385

385:                                              ; preds = %375, %372, %368
  %386 = phi i32 [ %383, %375 ], [ 0, %372 ], [ 0, %368 ]
  %387 = phi ptr [ %379, %375 ], [ %374, %372 ], [ %370, %368 ]
  %388 = phi i16 [ %384, %375 ], [ %366, %372 ], [ %366, %368 ]
  %389 = icmp slt i32 %360, 0
  br i1 %389, label %409, label %390

390:                                              ; preds = %385
  %391 = getelementptr i8, ptr %387, i32 2
  %392 = load i8, ptr %391, align 1
  %393 = zext i8 %392 to i32
  %394 = zext i16 %388 to i32
  %395 = add nuw nsw i32 %393, %394
  %396 = getelementptr inbounds %struct.brcmnand_controller, ptr %350, i32 0, i32 34
  %397 = load i32, ptr %396, align 4
  %398 = mul i32 %397, %386
  %399 = add i32 %395, %398
  %400 = and i32 %399, 65535
  %401 = getelementptr inbounds %struct.brcmnand_controller, ptr %350, i32 0, i32 2
  %402 = load ptr, ptr %401, align 4
  %403 = getelementptr i8, ptr %402, i32 %400
  %404 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %403) #11, !srcloc !8
  %405 = shl nuw nsw i32 1, %360
  %406 = or i32 %404, %405
  %407 = load ptr, ptr %401, align 4
  %408 = getelementptr i8, ptr %407, i32 %400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %408, i32 %406) #11, !srcloc !9
  br label %409

409:                                              ; preds = %390, %385, %345, %312
  %410 = icmp eq i32 %1, 96
  br i1 %410, label %411, label %412

411:                                              ; preds = %409
  tail call fastcc void @brcmnand_wp(ptr noundef %0, i32 noundef 1)
  br label %412

412:                                              ; preds = %411, %409, %78, %19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @brcmnand_read_byte(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 34
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.brcmnand_host, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.brcmnand_host, ptr %3, i32 0, i32 4
  %7 = load i32, ptr %6, align 8
  switch i32 %7, label %161 [
    i32 144, label %8
    i32 80, label %54
    i32 112, label %86
    i32 236, label %105
    i32 5, label %105
    i32 238, label %121
  ]

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.brcmnand_host, ptr %3, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = icmp ult i32 %10, 4
  br i1 %11, label %12, label %32

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.brcmnand_controller, ptr %5, i32 0, i32 33
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr i16, ptr %14, i32 18
  %16 = load i16, ptr %15, align 2
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %12
  %19 = zext i16 %16 to i32
  %20 = getelementptr inbounds %struct.brcmnand_controller, ptr %5, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 %19
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #11, !srcloc !8
  %24 = load i32, ptr %9, align 4
  br label %25

25:                                               ; preds = %18, %12
  %26 = phi i32 [ %24, %18 ], [ %10, %12 ]
  %27 = phi i32 [ %23, %18 ], [ 0, %12 ]
  %28 = mul i32 %26, -8
  %29 = add i32 %28, 24
  %30 = lshr i32 %27, %29
  %31 = trunc i32 %30 to i8
  br label %161

32:                                               ; preds = %8
  %33 = icmp ult i32 %10, 8
  br i1 %33, label %34, label %161

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.brcmnand_controller, ptr %5, i32 0, i32 33
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr i16, ptr %36, i32 19
  %38 = load i16, ptr %37, align 2
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %34
  %41 = zext i16 %38 to i32
  %42 = getelementptr inbounds %struct.brcmnand_controller, ptr %5, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i8, ptr %43, i32 %41
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #11, !srcloc !8
  %46 = load i32, ptr %9, align 4
  br label %47

47:                                               ; preds = %40, %34
  %48 = phi i32 [ %46, %40 ], [ %10, %34 ]
  %49 = phi i32 [ %45, %40 ], [ 0, %34 ]
  %50 = mul i32 %48, -8
  %51 = add i32 %50, 56
  %52 = lshr i32 %49, %51
  %53 = trunc i32 %52 to i8
  br label %161

54:                                               ; preds = %1
  %55 = getelementptr inbounds %struct.brcmnand_host, ptr %3, i32 0, i32 5
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.brcmnand_controller, ptr %5, i32 0, i32 42
  %58 = load i32, ptr %57, align 4
  %59 = icmp ugt i32 %58, %56
  br i1 %59, label %60, label %161

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.brcmnand_controller, ptr %5, i32 0, i32 33
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr i16, ptr %62, i32 21
  %64 = load i16, ptr %63, align 2
  %65 = getelementptr i16, ptr %62, i32 22
  %66 = load i16, ptr %65, align 2
  %67 = icmp ugt i32 %56, 15
  %68 = icmp ne i16 %66, 0
  %69 = select i1 %67, i1 %68, i1 false
  %70 = trunc i32 %56 to i16
  %71 = add i16 %70, -16
  %72 = select i1 %69, i16 %71, i16 %70
  %73 = select i1 %69, i16 %66, i16 %64
  %74 = and i16 %72, -4
  %75 = add i16 %74, %73
  %76 = zext i16 %75 to i32
  %77 = getelementptr inbounds %struct.brcmnand_controller, ptr %5, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr i8, ptr %78, i32 %76
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #11, !srcloc !8
  %81 = shl i32 %56, 3
  %82 = and i32 %81, 24
  %83 = xor i32 %82, 24
  %84 = lshr i32 %80, %83
  %85 = trunc i32 %84 to i8
  br label %161

86:                                               ; preds = %1
  %87 = getelementptr inbounds %struct.brcmnand_controller, ptr %5, i32 0, i32 33
  %88 = load ptr, ptr %87, align 8
  %89 = getelementptr i16, ptr %88, i32 3
  %90 = load i16, ptr %89, align 2
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %86
  %93 = zext i16 %90 to i32
  %94 = getelementptr inbounds %struct.brcmnand_controller, ptr %5, i32 0, i32 2
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr i8, ptr %95, i32 %93
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %96) #11, !srcloc !8
  %98 = trunc i32 %97 to i8
  br label %99

99:                                               ; preds = %92, %86
  %100 = phi i8 [ %98, %92 ], [ 0, %86 ]
  %101 = load i32, ptr @wp_on, align 4
  %102 = icmp eq i32 %101, 0
  %103 = or i8 %100, -128
  %104 = select i1 %102, i8 %100, i8 %103
  br label %161

105:                                              ; preds = %1, %1
  %106 = getelementptr inbounds %struct.brcmnand_host, ptr %3, i32 0, i32 6
  %107 = load i64, ptr %106, align 8
  %108 = getelementptr inbounds %struct.brcmnand_host, ptr %3, i32 0, i32 5
  %109 = load i32, ptr %108, align 4
  %110 = trunc i64 %107 to i32
  %111 = add i32 %109, %110
  %112 = and i32 %111, 511
  %113 = icmp ne i32 %109, 0
  %114 = icmp eq i32 %112, 0
  %115 = select i1 %113, i1 %114, i1 false
  br i1 %115, label %116, label %118

116:                                              ; preds = %105
  %117 = tail call i32 @nand_change_read_column_op(ptr noundef %0, i32 noundef %111, ptr noundef null, i32 noundef 0, i1 noundef zeroext false) #11
  br label %118

118:                                              ; preds = %116, %105
  %119 = getelementptr %struct.brcmnand_controller, ptr %5, i32 0, i32 32, i32 %112
  %120 = load i8, ptr %119, align 1
  br label %161

121:                                              ; preds = %1
  %122 = getelementptr inbounds %struct.brcmnand_host, ptr %3, i32 0, i32 5
  %123 = load i32, ptr %122, align 4
  %124 = icmp ugt i32 %123, 3
  br i1 %124, label %161, label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.brcmnand_controller, ptr %5, i32 0, i32 33
  %127 = load ptr, ptr %126, align 8
  %128 = getelementptr i16, ptr %127, i32 6
  %129 = load i16, ptr %128, align 2
  %130 = icmp eq i16 %129, 0
  br i1 %130, label %147, label %131

131:                                              ; preds = %125
  %132 = icmp eq i32 %123, 3
  %133 = select i1 %132, i32 -2147418112, i32 65536
  %134 = zext i16 %129 to i32
  %135 = getelementptr inbounds %struct.brcmnand_controller, ptr %5, i32 0, i32 2
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr i8, ptr %136, i32 %134
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %137, i32 %133) #11, !srcloc !9
  %138 = load ptr, ptr %126, align 8
  %139 = getelementptr i16, ptr %138, i32 6
  %140 = load i16, ptr %139, align 2
  %141 = icmp eq i16 %140, 0
  br i1 %141, label %147, label %142

142:                                              ; preds = %131
  %143 = zext i16 %140 to i32
  %144 = load ptr, ptr %135, align 4
  %145 = getelementptr i8, ptr %144, i32 %143
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %145) #11, !srcloc !8
  br label %147

147:                                              ; preds = %142, %131, %125
  %148 = getelementptr inbounds %struct.brcmnand_host, ptr %3, i32 0, i32 1
  tail call fastcc void @brcmnand_send_cmd(ptr noundef %3, i32 noundef 16) #11
  %149 = tail call i32 @brcmnand_waitfunc(ptr noundef %148) #11
  %150 = load ptr, ptr %126, align 8
  %151 = getelementptr i16, ptr %150, i32 20
  %152 = load i16, ptr %151, align 2
  %153 = icmp eq i16 %152, 0
  br i1 %153, label %161, label %154

154:                                              ; preds = %147
  %155 = zext i16 %152 to i32
  %156 = getelementptr inbounds %struct.brcmnand_controller, ptr %5, i32 0, i32 2
  %157 = load ptr, ptr %156, align 4
  %158 = getelementptr i8, ptr %157, i32 %155
  %159 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %158) #11, !srcloc !8
  %160 = trunc i32 %159 to i8
  br label %161

161:                                              ; preds = %154, %147, %121, %118, %99, %60, %54, %47, %32, %25, %1
  %162 = phi i8 [ 0, %1 ], [ %120, %118 ], [ %31, %25 ], [ %53, %47 ], [ 0, %32 ], [ 0, %121 ], [ %85, %60 ], [ 119, %54 ], [ %104, %99 ], [ %160, %154 ], [ 0, %147 ]
  %163 = getelementptr inbounds %struct.brcmnand_host, ptr %3, i32 0, i32 5
  %164 = load i32, ptr %163, align 4
  %165 = add i32 %164, 1
  store i32 %165, ptr %163, align 4
  ret i8 %162
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmnand_read_buf(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #0 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %5, %3
  %6 = phi i32 [ %9, %5 ], [ 0, %3 ]
  %7 = phi ptr [ %10, %5 ], [ %1, %3 ]
  %8 = tail call zeroext i8 @brcmnand_read_byte(ptr noundef %0)
  store i8 %8, ptr %7, align 1
  %9 = add nuw nsw i32 %6, 1
  %10 = getelementptr i8, ptr %7, i32 1
  %11 = icmp eq i32 %9, %2
  br i1 %11, label %12, label %5

12:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmnand_write_buf(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 34
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 4
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 239
  br i1 %8, label %9, label %46

9:                                                ; preds = %3
  %10 = icmp sgt i32 %2, 0
  br i1 %10, label %11, label %47

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 8
  %13 = getelementptr inbounds %struct.brcmnand_host, ptr %5, i32 0, i32 1
  br label %14

14:                                               ; preds = %43, %11
  %15 = phi i32 [ 0, %11 ], [ %16, %43 ]
  %16 = add nuw nsw i32 %15, 1
  %17 = load ptr, ptr %12, align 8
  %18 = getelementptr inbounds %struct.brcmnand_controller, ptr %17, i32 0, i32 33
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr i16, ptr %19, i32 6
  %21 = load i16, ptr %20, align 2
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %43, label %23

23:                                               ; preds = %14
  %24 = getelementptr i8, ptr %1, i32 %15
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %16, %2
  %28 = select i1 %27, i32 -2147352576, i32 131072
  %29 = or i32 %28, %26
  %30 = zext i16 %21 to i32
  %31 = getelementptr inbounds %struct.brcmnand_controller, ptr %17, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %29) #11, !srcloc !9
  %34 = load ptr, ptr %18, align 8
  %35 = getelementptr i16, ptr %34, i32 6
  %36 = load i16, ptr %35, align 2
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %23
  %39 = zext i16 %36 to i32
  %40 = load ptr, ptr %31, align 4
  %41 = getelementptr i8, ptr %40, i32 %39
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #11, !srcloc !8
  br label %43

43:                                               ; preds = %38, %23, %14
  tail call fastcc void @brcmnand_send_cmd(ptr noundef %5, i32 noundef 16) #11
  %44 = tail call i32 @brcmnand_waitfunc(ptr noundef %13) #11
  %45 = icmp eq i32 %16, %2
  br i1 %45, label %47, label %14

46:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/nand/raw/brcmnand/brcmnand.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1864, 0\0A.popsection", ""() #11, !srcloc !22
  unreachable

47:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmnand_read_page(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 34
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %4
  %12 = phi ptr [ %10, %8 ], [ null, %4 ]
  %13 = tail call i32 @nand_read_page_op(ptr noundef %0, i32 noundef %3, i32 noundef 0, ptr noundef null, i32 noundef 0) #11
  %14 = getelementptr inbounds %struct.brcmnand_host, ptr %6, i32 0, i32 6
  %15 = load i64, ptr %14, align 8
  %16 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = lshr i32 %17, 9
  %19 = tail call fastcc i32 @brcmnand_read(ptr noundef %0, ptr noundef %0, i64 noundef %15, i32 noundef %18, ptr noundef %1, ptr noundef %12)
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmnand_write_page(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 34
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %4
  %12 = phi ptr [ %10, %8 ], [ null, %4 ]
  %13 = tail call i32 @nand_prog_page_begin_op(ptr noundef %0, i32 noundef %3, i32 noundef 0, ptr noundef null, i32 noundef 0) #11
  %14 = getelementptr inbounds %struct.brcmnand_host, ptr %6, i32 0, i32 6
  %15 = load i64, ptr %14, align 8
  %16 = tail call fastcc i32 @brcmnand_write(ptr noundef %0, ptr noundef %0, i64 noundef %15, ptr noundef %1, ptr noundef %12)
  %17 = tail call i32 @nand_prog_page_end_op(ptr noundef %0) #11
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmnand_read_page_raw(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 34
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %4
  %12 = phi ptr [ %10, %8 ], [ null, %4 ]
  %13 = tail call i32 @nand_read_page_op(ptr noundef %0, i32 noundef %3, i32 noundef 0, ptr noundef null, i32 noundef 0) #11
  %14 = getelementptr inbounds %struct.brcmnand_host, ptr %6, i32 0, i32 8
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.brcmnand_host, ptr %6, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.brcmnand_controller, ptr %15, i32 0, i32 33
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr i16, ptr %19, i32 7
  %21 = load i16, ptr %20, align 2
  %22 = icmp eq i32 %17, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct.brcmnand_controller, ptr %15, i32 0, i32 36
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.brcmnand_controller, ptr %15, i32 0, i32 35
  %29 = load ptr, ptr %28, align 8
  br label %40

30:                                               ; preds = %11
  %31 = getelementptr i16, ptr %19, i32 8
  %32 = load i16, ptr %31, align 2
  %33 = getelementptr inbounds %struct.brcmnand_controller, ptr %15, i32 0, i32 35
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq i16 %32, 0
  %36 = xor i1 %35, true
  %37 = sext i1 %36 to i32
  %38 = add i32 %17, %37
  %39 = select i1 %35, i16 %21, i16 %32
  br label %40

40:                                               ; preds = %30, %27, %23
  %41 = phi i32 [ %38, %30 ], [ 0, %27 ], [ 0, %23 ]
  %42 = phi ptr [ %34, %30 ], [ %29, %27 ], [ %25, %23 ]
  %43 = phi i16 [ %39, %30 ], [ %21, %27 ], [ %21, %23 ]
  %44 = getelementptr i8, ptr %42, i32 2
  %45 = load i8, ptr %44, align 1
  %46 = zext i16 %43 to i32
  %47 = getelementptr inbounds %struct.brcmnand_controller, ptr %15, i32 0, i32 34
  %48 = load i32, ptr %47, align 4
  %49 = mul i32 %48, %41
  %50 = zext i8 %45 to i32
  %51 = add nuw nsw i32 %50, %46
  %52 = add i32 %51, %49
  %53 = and i32 %52, 65535
  %54 = getelementptr inbounds %struct.brcmnand_controller, ptr %15, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr i8, ptr %55, i32 %53
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #11, !srcloc !8
  %58 = and i32 %57, 1072758783
  %59 = getelementptr inbounds %struct.brcmnand_controller, ptr %15, i32 0, i32 7
  %60 = load i32, ptr %59, align 8
  %61 = icmp sgt i32 %60, 1535
  %62 = select i1 %61, i32 2031616, i32 983040
  %63 = icmp sgt i32 %60, 1793
  %64 = or i32 %62, 57344
  %65 = select i1 %63, i32 %64, i32 %62
  %66 = xor i32 %65, -1
  %67 = and i32 %58, %66
  %68 = load ptr, ptr %54, align 4
  %69 = getelementptr i8, ptr %68, i32 %53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %67) #11, !srcloc !9
  %70 = getelementptr inbounds %struct.brcmnand_host, ptr %6, i32 0, i32 6
  %71 = load i64, ptr %70, align 8
  %72 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %73 = load i32, ptr %72, align 4
  %74 = lshr i32 %73, 9
  %75 = tail call fastcc i32 @brcmnand_read(ptr noundef %0, ptr noundef %0, i64 noundef %71, i32 noundef %74, ptr noundef %1, ptr noundef %12)
  %76 = load ptr, ptr %14, align 8
  %77 = load i32, ptr %16, align 4
  %78 = getelementptr inbounds %struct.brcmnand_controller, ptr %76, i32 0, i32 33
  %79 = load ptr, ptr %78, align 8
  %80 = getelementptr i16, ptr %79, i32 7
  %81 = load i16, ptr %80, align 2
  %82 = icmp eq i32 %77, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %40
  %84 = getelementptr inbounds %struct.brcmnand_controller, ptr %76, i32 0, i32 36
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %100

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.brcmnand_controller, ptr %76, i32 0, i32 35
  %89 = load ptr, ptr %88, align 8
  br label %100

90:                                               ; preds = %40
  %91 = getelementptr i16, ptr %79, i32 8
  %92 = load i16, ptr %91, align 2
  %93 = getelementptr inbounds %struct.brcmnand_controller, ptr %76, i32 0, i32 35
  %94 = load ptr, ptr %93, align 8
  %95 = icmp eq i16 %92, 0
  %96 = xor i1 %95, true
  %97 = sext i1 %96 to i32
  %98 = add i32 %77, %97
  %99 = select i1 %95, i16 %81, i16 %92
  br label %100

100:                                              ; preds = %90, %87, %83
  %101 = phi i32 [ %98, %90 ], [ 0, %87 ], [ 0, %83 ]
  %102 = phi ptr [ %94, %90 ], [ %89, %87 ], [ %85, %83 ]
  %103 = phi i16 [ %99, %90 ], [ %81, %87 ], [ %81, %83 ]
  %104 = getelementptr i8, ptr %102, i32 2
  %105 = load i8, ptr %104, align 1
  %106 = zext i16 %103 to i32
  %107 = getelementptr inbounds %struct.brcmnand_controller, ptr %76, i32 0, i32 34
  %108 = load i32, ptr %107, align 4
  %109 = mul i32 %108, %101
  %110 = zext i8 %105 to i32
  %111 = add nuw nsw i32 %110, %106
  %112 = add i32 %111, %109
  %113 = and i32 %112, 65535
  %114 = getelementptr inbounds %struct.brcmnand_controller, ptr %76, i32 0, i32 2
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr i8, ptr %115, i32 %113
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %116) #11, !srcloc !8
  %118 = getelementptr inbounds %struct.brcmnand_host, ptr %6, i32 0, i32 7, i32 9
  %119 = load i32, ptr %118, align 8
  %120 = shl i32 %119, 16
  %121 = or i32 %117, %120
  %122 = or i32 %121, -1073741824
  %123 = load ptr, ptr %114, align 4
  %124 = getelementptr i8, ptr %123, i32 %113
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 %122) #11, !srcloc !9
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmnand_write_page_raw(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 34
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %4
  %12 = phi ptr [ %10, %8 ], [ null, %4 ]
  %13 = tail call i32 @nand_prog_page_begin_op(ptr noundef %0, i32 noundef %3, i32 noundef 0, ptr noundef null, i32 noundef 0) #11
  %14 = getelementptr inbounds %struct.brcmnand_host, ptr %6, i32 0, i32 8
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.brcmnand_host, ptr %6, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.brcmnand_controller, ptr %15, i32 0, i32 33
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr i16, ptr %19, i32 7
  %21 = load i16, ptr %20, align 2
  %22 = icmp eq i32 %17, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct.brcmnand_controller, ptr %15, i32 0, i32 36
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.brcmnand_controller, ptr %15, i32 0, i32 35
  %29 = load ptr, ptr %28, align 8
  br label %40

30:                                               ; preds = %11
  %31 = getelementptr i16, ptr %19, i32 8
  %32 = load i16, ptr %31, align 2
  %33 = getelementptr inbounds %struct.brcmnand_controller, ptr %15, i32 0, i32 35
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq i16 %32, 0
  %36 = xor i1 %35, true
  %37 = sext i1 %36 to i32
  %38 = add i32 %17, %37
  %39 = select i1 %35, i16 %21, i16 %32
  br label %40

40:                                               ; preds = %30, %27, %23
  %41 = phi i32 [ %38, %30 ], [ 0, %27 ], [ 0, %23 ]
  %42 = phi ptr [ %34, %30 ], [ %29, %27 ], [ %25, %23 ]
  %43 = phi i16 [ %39, %30 ], [ %21, %27 ], [ %21, %23 ]
  %44 = getelementptr i8, ptr %42, i32 2
  %45 = load i8, ptr %44, align 1
  %46 = zext i16 %43 to i32
  %47 = getelementptr inbounds %struct.brcmnand_controller, ptr %15, i32 0, i32 34
  %48 = load i32, ptr %47, align 4
  %49 = mul i32 %48, %41
  %50 = zext i8 %45 to i32
  %51 = add nuw nsw i32 %50, %46
  %52 = add i32 %51, %49
  %53 = and i32 %52, 65535
  %54 = getelementptr inbounds %struct.brcmnand_controller, ptr %15, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr i8, ptr %55, i32 %53
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #11, !srcloc !8
  %58 = and i32 %57, 1072758783
  %59 = getelementptr inbounds %struct.brcmnand_controller, ptr %15, i32 0, i32 7
  %60 = load i32, ptr %59, align 8
  %61 = icmp sgt i32 %60, 1535
  %62 = select i1 %61, i32 2031616, i32 983040
  %63 = icmp sgt i32 %60, 1793
  %64 = or i32 %62, 57344
  %65 = select i1 %63, i32 %64, i32 %62
  %66 = xor i32 %65, -1
  %67 = and i32 %58, %66
  %68 = load ptr, ptr %54, align 4
  %69 = getelementptr i8, ptr %68, i32 %53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %67) #11, !srcloc !9
  %70 = getelementptr inbounds %struct.brcmnand_host, ptr %6, i32 0, i32 6
  %71 = load i64, ptr %70, align 8
  %72 = tail call fastcc i32 @brcmnand_write(ptr noundef %0, ptr noundef %0, i64 noundef %71, ptr noundef %1, ptr noundef %12)
  %73 = load ptr, ptr %14, align 8
  %74 = load i32, ptr %16, align 4
  %75 = getelementptr inbounds %struct.brcmnand_controller, ptr %73, i32 0, i32 33
  %76 = load ptr, ptr %75, align 8
  %77 = getelementptr i16, ptr %76, i32 7
  %78 = load i16, ptr %77, align 2
  %79 = icmp eq i32 %74, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %40
  %81 = getelementptr inbounds %struct.brcmnand_controller, ptr %73, i32 0, i32 36
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %97

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.brcmnand_controller, ptr %73, i32 0, i32 35
  %86 = load ptr, ptr %85, align 8
  br label %97

87:                                               ; preds = %40
  %88 = getelementptr i16, ptr %76, i32 8
  %89 = load i16, ptr %88, align 2
  %90 = getelementptr inbounds %struct.brcmnand_controller, ptr %73, i32 0, i32 35
  %91 = load ptr, ptr %90, align 8
  %92 = icmp eq i16 %89, 0
  %93 = xor i1 %92, true
  %94 = sext i1 %93 to i32
  %95 = add i32 %74, %94
  %96 = select i1 %92, i16 %78, i16 %89
  br label %97

97:                                               ; preds = %87, %84, %80
  %98 = phi i32 [ %95, %87 ], [ 0, %84 ], [ 0, %80 ]
  %99 = phi ptr [ %91, %87 ], [ %86, %84 ], [ %82, %80 ]
  %100 = phi i16 [ %96, %87 ], [ %78, %84 ], [ %78, %80 ]
  %101 = getelementptr i8, ptr %99, i32 2
  %102 = load i8, ptr %101, align 1
  %103 = zext i16 %100 to i32
  %104 = getelementptr inbounds %struct.brcmnand_controller, ptr %73, i32 0, i32 34
  %105 = load i32, ptr %104, align 4
  %106 = mul i32 %105, %98
  %107 = zext i8 %102 to i32
  %108 = add nuw nsw i32 %107, %103
  %109 = add i32 %108, %106
  %110 = and i32 %109, 65535
  %111 = getelementptr inbounds %struct.brcmnand_controller, ptr %73, i32 0, i32 2
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr i8, ptr %112, i32 %110
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %113) #11, !srcloc !8
  %115 = getelementptr inbounds %struct.brcmnand_host, ptr %6, i32 0, i32 7, i32 9
  %116 = load i32, ptr %115, align 8
  %117 = shl i32 %116, 16
  %118 = or i32 %114, %117
  %119 = or i32 %118, -1073741824
  %120 = load ptr, ptr %111, align 4
  %121 = getelementptr i8, ptr %120, i32 %110
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 %119) #11, !srcloc !9
  %122 = tail call i32 @nand_prog_page_end_op(ptr noundef %0) #11
  ret i32 %122
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmnand_read_oob(ptr noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 17
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = shl i64 %3, %6
  %8 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = lshr i32 %9, 9
  %11 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %12 = load ptr, ptr %11, align 4
  %13 = tail call fastcc i32 @brcmnand_read(ptr noundef %0, ptr noundef %0, i64 noundef %7, i32 noundef %10, ptr noundef null, ptr noundef %12)
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmnand_write_oob(ptr noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 17
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = shl i64 %3, %6
  %8 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %9 = load ptr, ptr %8, align 4
  %10 = tail call fastcc i32 @brcmnand_write(ptr noundef %0, ptr noundef %0, i64 noundef %7, ptr noundef null, ptr noundef %9)
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_change_read_column_op(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_page_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_prog_page_begin_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_prog_page_end_op(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_scan_with_ids(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }

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
!8 = !{i64 3832926}
!9 = !{i64 3832508}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2153413798}
!12 = !{i64 2153410388}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i8 0, i8 2}
!15 = !{!"auto-init"}
!16 = !{i32 0, i32 33}
!17 = !{i64 2153384447}
!18 = !{i64 2153384289}
!19 = !{i64 2153399553, i64 2153400059, i64 2153399590, i64 2153399646, i64 2153399680, i64 2153399704, i64 2153399745, i64 2153399766, i64 2153399794, i64 2153399828}
!20 = !{i64 2153400984}
!21 = !{i64 2153398527}
!22 = !{i64 2153408183, i64 2153408689, i64 2153408220, i64 2153408276, i64 2153408310, i64 2153408334, i64 2153408375, i64 2153408396, i64 2153408424, i64 2153408458}
