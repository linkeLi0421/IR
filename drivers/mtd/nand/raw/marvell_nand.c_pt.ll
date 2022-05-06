; ModuleID = '/llk/IR/drivers/mtd/nand/raw/marvell_nand.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/marvell_nand.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.nand_bbt_descr = type { i32, [8 x i32], i32, i32, [8 x i8], i32, i32, i32, ptr }
%struct.marvell_hw_ecc_layout = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mtd_ooblayout_ops = type { ptr, ptr }
%struct.nand_op_parser = type { ptr, i32 }
%struct.nand_op_parser_pattern_elem = type { i32, i8, %union.anon.75 }
%union.anon.75 = type { %struct.nand_op_parser_addr_constraints }
%struct.nand_op_parser_addr_constraints = type { i32 }
%struct.nand_op_parser_data_constraints = type { i32 }
%struct.nand_op_parser_pattern = type { ptr, i32, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.marvell_nfc_caps = type { i32, i32, i8, i8, i8, i8 }
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
%struct.marvell_nfc = type { %struct.nand_controller, ptr, ptr, ptr, ptr, %struct.completion, i32, %struct.list_head, ptr, ptr, i8, ptr, ptr }
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
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
%struct.pxa3xx_nand_platform_data = type { i8, i8, i32, i32, ptr, i32 }
%struct.marvell_nand_chip = type { %struct.nand_chip, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, [0 x %struct.marvell_nand_chip_sel] }
%struct.marvell_nand_chip_sel = type { i32, i32, i32 }
%struct.nand_interface_config = type { i32, %struct.nand_timings }
%struct.nand_timings = type { i32, %union.anon.71 }
%union.anon.71 = type { %struct.nand_sdr_timings }
%struct.nand_sdr_timings = type { i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.marvell_nfc_op = type { [4 x i32], i32, i32, i32, i32, i32, ptr }
%struct.mtd_oob_region = type { i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.nand_subop = type { i32, ptr, i32, i32, i32 }
%struct.nand_op_instr = type { i32, %union.anon.69, i32 }
%union.anon.69 = type { %struct.nand_op_data_instr }
%struct.nand_op_data_instr = type { i32, %union.anon.70, i8 }
%union.anon.70 = type { ptr }

@__initcall__kmod_marvell_nand__276_3144_marvell_nfc_driver_init6 = internal global ptr @marvell_nfc_driver_init, section ".initcall6.init", align 4
@marvell_nfc_driver = internal global %struct.platform_driver { ptr @marvell_nfc_probe, ptr @marvell_nfc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @marvell_nfc_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_nfc_pm_ops, ptr null, ptr null }, ptr @marvell_nfc_platform_ids, i8 0 }, align 4
@__exitcall_marvell_nfc_driver_exit = internal global ptr @marvell_nfc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file277 = internal constant [52 x i8] c"marvell_nand.file=drivers/mtd/nand/raw/marvell_nand\00", section ".modinfo", align 1
@__UNIQUE_ID_license278 = internal constant [25 x i8] c"marvell_nand.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description279 = internal constant [56 x i8] c"marvell_nand.description=Marvell NAND controller driver\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"marvell-nfc\00", align 1
@marvell_nfc_of_ids = internal constant [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-8k-nand-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @marvell_armada_8k_nfc_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada370-nand-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @marvell_armada370_nfc_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,pxa3xx-nand-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @marvell_pxa3xx_nfc_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-8k-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @marvell_armada_8k_nfc_legacy_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada370-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @marvell_armada370_nfc_legacy_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,pxa3xx-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @marvell_pxa3xx_nfc_legacy_caps }, %struct.of_device_id zeroinitializer], align 4
@marvell_nfc_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @marvell_nfc_suspend, ptr @marvell_nfc_resume, ptr @marvell_nfc_suspend, ptr @marvell_nfc_resume, ptr @marvell_nfc_suspend, ptr @marvell_nfc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@marvell_nfc_platform_ids = internal constant [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"pxa3xx-nand\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @marvell_pxa3xx_nfc_legacy_caps to i32) }, %struct.platform_device_id zeroinitializer], align 4
@marvell_nand_controller_ops = internal constant %struct.nand_controller_ops { ptr @marvell_nand_attach_chip, ptr null, ptr @marvell_nfc_exec_op, ptr @marvell_nfc_setup_interface }, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Could not retrieve NFC caps\0A\00", align 1
@nand_controller_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"&nfc->lock\00", align 1
@bbt_main_descr = internal global %struct.nand_bbt_descr { i32 8978, [8 x i32] zeroinitializer, i32 8, i32 14, [8 x i8] zeroinitializer, i32 6, i32 8, i32 0, ptr @bbt_pattern }, align 4
@bbt_mirror_descr = internal global %struct.nand_bbt_descr { i32 8978, [8 x i32] zeroinitializer, i32 8, i32 14, [8 x i8] zeroinitializer, i32 6, i32 8, i32 0, ptr @bbt_mirror_pattern }, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"ECC init failed: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"pxa3xx_nand-0\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"%s:nand.%d\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Failed to allocate mtd->name\0A\00", align 1
@bbt_pattern = internal global [6 x i8] c"MVBbt0", align 1
@bbt_mirror_pattern = internal global [6 x i8] c"1tbBVM", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"No minimum ECC strength, using 1b/512B\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"NFCv1 cannot write %d bytes pages\0A\00", align 1
@.str.11 = private unnamed_addr constant [58 x i8] c"NFCv1: writesize (%d) cannot be bigger than a chunk (%d)\0A\00", align 1
@marvell_nfc_layouts = internal constant [8 x %struct.marvell_hw_ecc_layout] [%struct.marvell_hw_ecc_layout { i32 512, i32 512, i32 1, i32 1, i32 1, i32 512, i32 8, i32 8, i32 0, i32 0, i32 0 }, %struct.marvell_hw_ecc_layout { i32 2048, i32 512, i32 1, i32 1, i32 1, i32 2048, i32 40, i32 24, i32 0, i32 0, i32 0 }, %struct.marvell_hw_ecc_layout { i32 2048, i32 512, i32 4, i32 1, i32 1, i32 2048, i32 32, i32 30, i32 0, i32 0, i32 0 }, %struct.marvell_hw_ecc_layout { i32 2048, i32 512, i32 8, i32 2, i32 1, i32 1024, i32 0, i32 30, i32 1024, i32 32, i32 30 }, %struct.marvell_hw_ecc_layout { i32 4096, i32 512, i32 4, i32 2, i32 2, i32 2048, i32 32, i32 30, i32 0, i32 0, i32 0 }, %struct.marvell_hw_ecc_layout { i32 4096, i32 512, i32 8, i32 5, i32 4, i32 1024, i32 0, i32 30, i32 0, i32 64, i32 30 }, %struct.marvell_hw_ecc_layout { i32 8192, i32 512, i32 4, i32 4, i32 4, i32 2048, i32 0, i32 30, i32 0, i32 0, i32 0 }, %struct.marvell_hw_ecc_layout { i32 8192, i32 512, i32 8, i32 9, i32 8, i32 1024, i32 0, i32 30, i32 0, i32 160, i32 30 }], align 4
@.str.12 = private unnamed_addr constant [50 x i8] c"ECC strength %d at page size %d is not supported\0A\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"Requested layout needs at least 128 OOB bytes\0A\00", align 1
@marvell_nand_ooblayout_ops = internal constant %struct.mtd_ooblayout_ops { ptr @marvell_nand_ooblayout_ecc, ptr @marvell_nand_ooblayout_free }, align 4
@.str.14 = private unnamed_addr constant [38 x i8] c"RDDREQ while draining FIFO (data/oob)\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"Last operation did not succeed\0A\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"Timeout on WRCMDRE\0A\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"Timeout on NAND controller run mode\0A\00", align 1
@marvell_nfc_send_cmd.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"drivers/mtd/nand/raw/marvell_nand.c\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"Timeout on %s (NDSR: 0x%08x)\0A\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"Could not prepare DMA S/G list\0A\00", align 1
@.str.21 = private unnamed_addr constant [38 x i8] c"Timeout waiting for DMA (status: %d)\0A\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"CMDD\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"WRDREQ while loading FIFO (data)\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"Timeout waiting for RB signal\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"RDDREQ while draining FIFO (data)\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"RDDREQ while draining FIFO (OOB)\00", align 1
@marvell_nfcv2_op_parser = internal constant %struct.nand_op_parser { ptr @.compoundliteral.34, i32 7 }, align 4
@marvell_nfcv1_op_parser = internal constant %struct.nand_op_parser { ptr @.compoundliteral.41, i32 5 }, align 4
@.compoundliteral = internal constant <{ %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, { i32, i8, { %struct.nand_op_parser_data_constraints } } }> <{ %struct.nand_op_parser_pattern_elem zeroinitializer, %struct.nand_op_parser_pattern_elem { i32 1, i8 1, %union.anon.75 { %struct.nand_op_parser_addr_constraints { i32 7 } } }, %struct.nand_op_parser_pattern_elem { i32 0, i8 1, %union.anon.75 zeroinitializer }, %struct.nand_op_parser_pattern_elem { i32 4, i8 1, %union.anon.75 zeroinitializer }, { i32, i8, { %struct.nand_op_parser_data_constraints } } { i32 2, i8 0, { %struct.nand_op_parser_data_constraints } { %struct.nand_op_parser_data_constraints { i32 2112 } } } }>, align 4
@.compoundliteral.28 = internal constant <{ %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, { i32, i8, { %struct.nand_op_parser_data_constraints } }, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem }> <{ %struct.nand_op_parser_pattern_elem zeroinitializer, %struct.nand_op_parser_pattern_elem { i32 1, i8 0, %union.anon.75 { %struct.nand_op_parser_addr_constraints { i32 7 } } }, { i32, i8, { %struct.nand_op_parser_data_constraints } } { i32 3, i8 0, { %struct.nand_op_parser_data_constraints } { %struct.nand_op_parser_data_constraints { i32 2112 } } }, %struct.nand_op_parser_pattern_elem { i32 0, i8 1, %union.anon.75 zeroinitializer }, %struct.nand_op_parser_pattern_elem { i32 4, i8 1, %union.anon.75 zeroinitializer } }>, align 4
@.compoundliteral.29 = internal constant [1 x %struct.nand_op_parser_pattern_elem] zeroinitializer, align 4
@.compoundliteral.30 = internal constant [1 x %struct.nand_op_parser_pattern_elem] [%struct.nand_op_parser_pattern_elem { i32 1, i8 0, %union.anon.75 { %struct.nand_op_parser_addr_constraints { i32 7 } } }], align 4
@.compoundliteral.31 = internal constant [1 x { i32, i8, { %struct.nand_op_parser_data_constraints } }] [{ i32, i8, { %struct.nand_op_parser_data_constraints } } { i32 2, i8 0, { %struct.nand_op_parser_data_constraints } { %struct.nand_op_parser_data_constraints { i32 2112 } } }], align 4
@.compoundliteral.32 = internal constant [1 x { i32, i8, { %struct.nand_op_parser_data_constraints } }] [{ i32, i8, { %struct.nand_op_parser_data_constraints } } { i32 3, i8 0, { %struct.nand_op_parser_data_constraints } { %struct.nand_op_parser_data_constraints { i32 2112 } } }], align 4
@.compoundliteral.33 = internal constant [1 x %struct.nand_op_parser_pattern_elem] [%struct.nand_op_parser_pattern_elem { i32 4, i8 0, %union.anon.75 zeroinitializer }], align 4
@.compoundliteral.34 = internal constant [7 x %struct.nand_op_parser_pattern] [%struct.nand_op_parser_pattern { ptr @.compoundliteral, i32 5, ptr @marvell_nfc_monolithic_access_exec }, %struct.nand_op_parser_pattern { ptr @.compoundliteral.28, i32 5, ptr @marvell_nfc_monolithic_access_exec }, %struct.nand_op_parser_pattern { ptr @.compoundliteral.29, i32 1, ptr @marvell_nfc_naked_access_exec }, %struct.nand_op_parser_pattern { ptr @.compoundliteral.30, i32 1, ptr @marvell_nfc_naked_access_exec }, %struct.nand_op_parser_pattern { ptr @.compoundliteral.31, i32 1, ptr @marvell_nfc_naked_access_exec }, %struct.nand_op_parser_pattern { ptr @.compoundliteral.32, i32 1, ptr @marvell_nfc_naked_access_exec }, %struct.nand_op_parser_pattern { ptr @.compoundliteral.33, i32 1, ptr @marvell_nfc_naked_waitrdy_exec }], align 4
@.str.35 = private unnamed_addr constant [38 x i8] c"RDDREQ/WRDREQ while draining raw data\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.compoundliteral.36 = internal constant <{ %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, { i32, i8, { %struct.nand_op_parser_data_constraints } } }> <{ %struct.nand_op_parser_pattern_elem zeroinitializer, %struct.nand_op_parser_pattern_elem { i32 1, i8 0, %union.anon.75 { %struct.nand_op_parser_addr_constraints { i32 5 } } }, { i32, i8, { %struct.nand_op_parser_data_constraints } } { i32 2, i8 0, { %struct.nand_op_parser_data_constraints } { %struct.nand_op_parser_data_constraints { i32 8 } } } }>, align 4
@.compoundliteral.37 = internal constant [4 x %struct.nand_op_parser_pattern_elem] [%struct.nand_op_parser_pattern_elem zeroinitializer, %struct.nand_op_parser_pattern_elem { i32 1, i8 0, %union.anon.75 { %struct.nand_op_parser_addr_constraints { i32 5 } } }, %struct.nand_op_parser_pattern_elem zeroinitializer, %struct.nand_op_parser_pattern_elem { i32 4, i8 0, %union.anon.75 zeroinitializer }], align 4
@.compoundliteral.38 = internal constant <{ %struct.nand_op_parser_pattern_elem, { i32, i8, { %struct.nand_op_parser_data_constraints } } }> <{ %struct.nand_op_parser_pattern_elem zeroinitializer, { i32, i8, { %struct.nand_op_parser_data_constraints } } { i32 2, i8 0, { %struct.nand_op_parser_data_constraints } { %struct.nand_op_parser_data_constraints { i32 1 } } } }>, align 4
@.compoundliteral.39 = internal constant [2 x %struct.nand_op_parser_pattern_elem] [%struct.nand_op_parser_pattern_elem zeroinitializer, %struct.nand_op_parser_pattern_elem { i32 4, i8 0, %union.anon.75 zeroinitializer }], align 4
@.compoundliteral.40 = internal constant [1 x %struct.nand_op_parser_pattern_elem] [%struct.nand_op_parser_pattern_elem { i32 4, i8 0, %union.anon.75 zeroinitializer }], align 4
@.compoundliteral.41 = internal constant [5 x %struct.nand_op_parser_pattern] [%struct.nand_op_parser_pattern { ptr @.compoundliteral.36, i32 3, ptr @marvell_nfc_read_id_type_exec }, %struct.nand_op_parser_pattern { ptr @.compoundliteral.37, i32 4, ptr @marvell_nfc_erase_cmd_type_exec }, %struct.nand_op_parser_pattern { ptr @.compoundliteral.38, i32 2, ptr @marvell_nfc_read_status_exec }, %struct.nand_op_parser_pattern { ptr @.compoundliteral.39, i32 2, ptr @marvell_nfc_reset_cmd_type_exec }, %struct.nand_op_parser_pattern { ptr @.compoundliteral.40, i32 1, ptr @marvell_nfc_naked_waitrdy_exec }], align 4
@.str.42 = private unnamed_addr constant [24 x i8] c"RDDREQ while reading ID\00", align 1
@.str.43 = private unnamed_addr constant [28 x i8] c"RDDREQ while reading status\00", align 1
@.str.44 = private unnamed_addr constant [26 x i8] c"marvell,system-controller\00", align 1
@.str.45 = private unnamed_addr constant [34 x i8] c"DMA not enabled in configuration\0A\00", align 1
@.str.46 = private unnamed_addr constant [39 x i8] c"too many NAND chips: %d (max = %d CS)\0A\00", align 1
@.str.47 = private unnamed_addr constant [30 x i8] c"missing/invalid reg property\0A\00", align 1
@.str.48 = private unnamed_addr constant [35 x i8] c"could not allocate chip structure\0A\00", align 1
@.str.49 = private unnamed_addr constant [37 x i8] c"could not retrieve reg property: %d\0A\00", align 1
@.str.50 = private unnamed_addr constant [37 x i8] c"invalid reg value: %u (max CS = %d)\0A\00", align 1
@.str.51 = private unnamed_addr constant [24 x i8] c"CS %d already assigned\0A\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"nand-rb\00", align 1
@.str.53 = private unnamed_addr constant [36 x i8] c"could not retrieve RB property: %d\0A\00", align 1
@.str.54 = private unnamed_addr constant [37 x i8] c"invalid reg value: %u (max RB = %d)\0A\00", align 1
@.str.55 = private unnamed_addr constant [25 x i8] c"marvell,nand-keep-config\00", align 1
@.str.56 = private unnamed_addr constant [30 x i8] c"could not scan the nand chip\0A\00", align 1
@.str.57 = private unnamed_addr constant [35 x i8] c"failed to register mtd device: %d\0A\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@marvell_armada_8k_nfc_caps = internal constant %struct.marvell_nfc_caps { i32 4, i32 2, i8 1, i8 0, i8 1, i8 0 }, align 4
@marvell_armada370_nfc_caps = internal constant %struct.marvell_nfc_caps { i32 4, i32 2, i8 0, i8 0, i8 1, i8 0 }, align 4
@marvell_pxa3xx_nfc_caps = internal constant %struct.marvell_nfc_caps { i32 2, i32 1, i8 0, i8 0, i8 0, i8 1 }, align 4
@marvell_armada_8k_nfc_legacy_caps = internal constant %struct.marvell_nfc_caps { i32 4, i32 2, i8 1, i8 1, i8 1, i8 0 }, align 4
@marvell_armada370_nfc_legacy_caps = internal constant %struct.marvell_nfc_caps { i32 4, i32 2, i8 0, i8 1, i8 1, i8 0 }, align 4
@marvell_pxa3xx_nfc_legacy_caps = internal constant %struct.marvell_nfc_caps { i32 2, i32 1, i8 0, i8 1, i8 0, i8 1 }, align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_description279, ptr @__UNIQUE_ID_file277, ptr @__UNIQUE_ID_license278, ptr @__exitcall_marvell_nfc_driver_exit, ptr @__initcall__kmod_marvell_nand__276_3144_marvell_nfc_driver_init6, ptr @marvell_nfc_driver_exit], section "llvm.metadata"
@switch.table.marvell_nand_chip_init = private unnamed_addr constant [4 x i32] [i32 0, i32 16777216, i32 0, i32 16777216], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @marvell_nfc_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @marvell_nfc_driver, ptr noundef null) #10
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @marvell_nfc_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @marvell_nfc_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @marvell_nfc_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 88, i32 noundef 3520) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %101, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.marvell_nfc, ptr %3, i32 0, i32 1
  store ptr %2, ptr %6, align 4
  tail call void @__mutex_init(ptr noundef nonnull %3, ptr noundef nonnull @.str.4, ptr noundef nonnull @nand_controller_init.__key) #10
  %7 = getelementptr inbounds %struct.nand_controller, ptr %3, i32 0, i32 1
  store ptr @marvell_nand_controller_ops, ptr %7, align 4
  %8 = getelementptr inbounds %struct.marvell_nfc, ptr %3, i32 0, i32 7
  store volatile ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.marvell_nfc, ptr %3, i32 0, i32 7, i32 1
  store ptr %8, ptr %9, align 4
  %10 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #10
  %11 = getelementptr inbounds %struct.marvell_nfc, ptr %3, i32 0, i32 2
  store ptr %10, ptr %11, align 4
  %12 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %5
  %14 = ptrtoint ptr %10 to i32
  br label %101

15:                                               ; preds = %5
  %16 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #10
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %101, label %18

18:                                               ; preds = %15
  %19 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.1) #10
  %20 = getelementptr inbounds %struct.marvell_nfc, ptr %3, i32 0, i32 3
  store ptr %19, ptr %20, align 4
  %21 = icmp eq ptr %19, inttoptr (i32 -2 to ptr)
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #10
  store ptr %23, ptr %20, align 4
  br label %24

24:                                               ; preds = %22, %18
  %25 = phi ptr [ %23, %22 ], [ %19, %18 ]
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = ptrtoint ptr %25 to i32
  br label %101

29:                                               ; preds = %24
  %30 = tail call i32 @clk_prepare(ptr noundef %25) #10
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %101

32:                                               ; preds = %29
  %33 = tail call i32 @clk_enable(ptr noundef %25) #10
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  tail call void @clk_unprepare(ptr noundef %25) #10
  br label %101

36:                                               ; preds = %32
  %37 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.2) #10
  %38 = getelementptr inbounds %struct.marvell_nfc, ptr %3, i32 0, i32 4
  store ptr %37, ptr %38, align 4
  %39 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = ptrtoint ptr %37 to i32
  %42 = icmp eq ptr %37, inttoptr (i32 -2 to ptr)
  br i1 %42, label %43, label %98

43:                                               ; preds = %40
  store ptr null, ptr %38, align 4
  br label %44

44:                                               ; preds = %43, %36
  %45 = phi ptr [ null, %43 ], [ %37, %36 ]
  %46 = tail call i32 @clk_prepare(ptr noundef %45) #10
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %98

48:                                               ; preds = %44
  %49 = tail call i32 @clk_enable(ptr noundef %45) #10
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %95

51:                                               ; preds = %48
  %52 = load ptr, ptr %11, align 4
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #10, !srcloc !8
  %54 = or i32 %53, 4095
  %55 = load ptr, ptr %11, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %54) #10, !srcloc !9
  %56 = load ptr, ptr %11, align 4
  %57 = getelementptr i8, ptr %56, i32 20
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #10, !srcloc !8
  %59 = load ptr, ptr %11, align 4
  %60 = getelementptr i8, ptr %59, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 4095) #10, !srcloc !9
  %61 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %16, ptr noundef nonnull @marvell_nfc_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %3) #10
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %92

63:                                               ; preds = %51
  %64 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 8
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.platform_device_id, ptr %65, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = inttoptr i32 %69 to ptr
  br label %73

71:                                               ; preds = %63
  %72 = tail call ptr @of_device_get_match_data(ptr noundef %2) #10
  br label %73

73:                                               ; preds = %71, %67
  %74 = phi ptr [ %72, %71 ], [ %70, %67 ]
  %75 = getelementptr inbounds %struct.marvell_nfc, ptr %3, i32 0, i32 9
  store ptr %74, ptr %75, align 4
  %76 = icmp eq ptr %74, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #11
  br label %92

78:                                               ; preds = %73
  %79 = tail call fastcc i32 @marvell_nfc_init(ptr noundef nonnull %3)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %82, align 8
  %83 = tail call fastcc i32 @marvell_nand_chips_init(ptr noundef %2, ptr noundef nonnull %3)
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %101, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.marvell_nfc, ptr %3, i32 0, i32 10
  %87 = load i8, ptr %86, align 4, !range !10
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.marvell_nfc, ptr %3, i32 0, i32 11
  %91 = load ptr, ptr %90, align 4
  tail call void @dma_release_channel(ptr noundef %91) #10
  br label %92

92:                                               ; preds = %89, %85, %78, %77, %51
  %93 = phi i32 [ %61, %51 ], [ %79, %78 ], [ %83, %89 ], [ %83, %85 ], [ -22, %77 ]
  %94 = load ptr, ptr %38, align 4
  tail call void @clk_disable(ptr noundef %94) #10
  br label %95

95:                                               ; preds = %92, %48
  %96 = phi ptr [ %94, %92 ], [ %45, %48 ]
  %97 = phi i32 [ %93, %92 ], [ %49, %48 ]
  tail call void @clk_unprepare(ptr noundef %96) #10
  br label %98

98:                                               ; preds = %95, %44, %40
  %99 = phi i32 [ %41, %40 ], [ %46, %44 ], [ %97, %95 ]
  %100 = load ptr, ptr %20, align 4
  tail call void @clk_disable(ptr noundef %100) #10
  tail call void @clk_unprepare(ptr noundef %100) #10
  br label %101

101:                                              ; preds = %98, %81, %35, %29, %27, %15, %13, %1
  %102 = phi i32 [ %14, %13 ], [ %28, %27 ], [ %99, %98 ], [ -12, %1 ], [ %16, %15 ], [ 0, %81 ], [ %33, %35 ], [ %30, %29 ]
  ret i32 %102
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @marvell_nfc_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.marvell_nfc, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %20, label %7

7:                                                ; preds = %14, %1
  %8 = phi ptr [ %10, %14 ], [ %5, %1 ]
  %9 = getelementptr i8, ptr %8, i32 -1424
  %10 = load ptr, ptr %8, align 8
  %11 = tail call i32 @mtd_device_unregister(ptr noundef %9) #10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13, !prof !11

13:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 2721, i32 noundef 9, ptr noundef null) #10
  br label %14

14:                                               ; preds = %13, %7
  tail call void @nand_cleanup(ptr noundef %9) #10
  %15 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %8, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  store ptr %16, ptr %18, align 4
  store volatile ptr %17, ptr %16, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %15, align 4
  %19 = icmp eq ptr %10, %4
  br i1 %19, label %20, label %7

20:                                               ; preds = %14, %1
  %21 = getelementptr inbounds %struct.marvell_nfc, ptr %3, i32 0, i32 10
  %22 = load i8, ptr %21, align 4, !range !10
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.marvell_nfc, ptr %3, i32 0, i32 11
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.dma_device, ptr %27, i32 0, i32 47
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = tail call i32 %29(ptr noundef %26) #10
  %33 = load ptr, ptr %25, align 4
  br label %34

34:                                               ; preds = %31, %24
  %35 = phi ptr [ %26, %24 ], [ %33, %31 ]
  tail call void @dma_release_channel(ptr noundef %35) #10
  br label %36

36:                                               ; preds = %34, %20
  %37 = getelementptr inbounds %struct.marvell_nfc, ptr %3, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  tail call void @clk_disable(ptr noundef %38) #10
  tail call void @clk_unprepare(ptr noundef %38) #10
  %39 = getelementptr inbounds %struct.marvell_nfc, ptr %3, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  tail call void @clk_disable(ptr noundef %40) #10
  tail call void @clk_unprepare(ptr noundef %40) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @marvell_nfc_isr(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 20
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #10, !srcloc !8
  %7 = load ptr, ptr %3, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #10, !srcloc !8
  %9 = and i32 %8, 4095
  %10 = xor i32 %9, 4095
  %11 = lshr i32 %6, 1
  %12 = and i32 %11, 2048
  %13 = or i32 %12, %6
  %14 = and i32 %10, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %2
  %17 = and i32 %13, 4095
  %18 = load ptr, ptr %3, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #10, !srcloc !8
  %20 = or i32 %19, %17
  %21 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %20) #10, !srcloc !9
  %22 = and i32 %13, 6144
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 5
  tail call void @complete(ptr noundef %25) #10
  br label %26

26:                                               ; preds = %24, %16, %2
  %27 = phi i32 [ 0, %2 ], [ 1, %24 ], [ 1, %16 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @marvell_nfc_init(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.marvell_nfc, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.marvell_nfc_caps, ptr %3, i32 0, i32 2
  %5 = load i8, ptr %4, align 4, !range !10
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.marvell_nfc, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 25
  %11 = load ptr, ptr %10, align 8
  %12 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %11, ptr noundef nonnull @.str.44) #10
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  %15 = ptrtoint ptr %12 to i32
  br label %36

16:                                               ; preds = %7
  %17 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 520, i32 noundef 36700161) #10
  %18 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 544, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %19 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 1792, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %20 = load ptr, ptr %2, align 4
  br label %21

21:                                               ; preds = %16, %1
  %22 = phi ptr [ %20, %16 ], [ %3, %1 ]
  %23 = getelementptr inbounds %struct.marvell_nfc_caps, ptr %22, i32 0, i32 4
  %24 = load i8, ptr %23, align 2, !range !10
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.marvell_nfc, ptr %0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str.45) #11
  br label %29

29:                                               ; preds = %26, %21
  %30 = getelementptr inbounds %struct.marvell_nfc, ptr %0, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 -2147016705) #10, !srcloc !9
  %32 = load ptr, ptr %30, align 4
  %33 = getelementptr i8, ptr %32, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 -1) #10, !srcloc !9
  %34 = load ptr, ptr %30, align 4
  %35 = getelementptr i8, ptr %34, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 0) #10, !srcloc !9
  br label %36

36:                                               ; preds = %29, %14
  %37 = phi i32 [ 0, %29 ], [ %15, %14 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @marvell_nand_chips_init(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq ptr %4, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %2
  %10 = tail call ptr @of_get_next_child(ptr noundef nonnull %4, ptr noundef null) #10
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %12, %9
  %13 = phi i32 [ %15, %12 ], [ 0, %9 ]
  %14 = phi ptr [ %16, %12 ], [ %10, %9 ]
  %15 = add i32 %13, 1
  %16 = tail call ptr @of_get_next_child(ptr noundef nonnull %4, ptr noundef nonnull %14) #10
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %12

18:                                               ; preds = %12, %9, %2
  %19 = phi i32 [ 1, %2 ], [ 0, %9 ], [ %15, %12 ]
  %20 = icmp sgt i32 %19, %7
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.46, i32 noundef %19, i32 noundef %7) #11
  br label %56

22:                                               ; preds = %18
  %23 = load ptr, ptr %5, align 4
  %24 = getelementptr inbounds %struct.marvell_nfc_caps, ptr %23, i32 0, i32 3
  %25 = load i8, ptr %24, align 1, !range !10
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = tail call fastcc i32 @marvell_nand_chip_init(ptr noundef %0, ptr noundef %1, ptr noundef %4)
  br label %56

29:                                               ; preds = %22
  %30 = tail call ptr @of_get_next_child(ptr noundef %4, ptr noundef null) #10
  %31 = icmp eq ptr %30, null
  br i1 %31, label %56, label %32

32:                                               ; preds = %53, %29
  %33 = phi ptr [ %54, %53 ], [ %30, %29 ]
  %34 = tail call fastcc i32 @marvell_nand_chip_init(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %33)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %53, label %36

36:                                               ; preds = %32
  tail call void @of_node_put(ptr noundef nonnull %33) #10
  %37 = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 7
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, %37
  br i1 %39, label %56, label %40

40:                                               ; preds = %47, %36
  %41 = phi ptr [ %43, %47 ], [ %38, %36 ]
  %42 = getelementptr i8, ptr %41, i32 -1424
  %43 = load ptr, ptr %41, align 8
  %44 = tail call i32 @mtd_device_unregister(ptr noundef %42) #10
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46, !prof !11

46:                                               ; preds = %40
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 2721, i32 noundef 9, ptr noundef null) #10
  br label %47

47:                                               ; preds = %46, %40
  tail call void @nand_cleanup(ptr noundef %42) #10
  %48 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = load ptr, ptr %41, align 4
  %51 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  store ptr %49, ptr %51, align 4
  store volatile ptr %50, ptr %49, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %41, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %48, align 4
  %52 = icmp eq ptr %43, %37
  br i1 %52, label %56, label %40

53:                                               ; preds = %32
  %54 = tail call ptr @of_get_next_child(ptr noundef %4, ptr noundef nonnull %33) #10
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %32

56:                                               ; preds = %53, %47, %36, %29, %27, %21
  %57 = phi i32 [ -22, %21 ], [ %28, %27 ], [ %34, %36 ], [ 0, %29 ], [ %34, %47 ], [ 0, %53 ]
  ret i32 %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @marvell_nand_attach_chip(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.marvell_nfc, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.pxa3xx_nand_platform_data, ptr %7, i32 0, i32 1
  %11 = load i8, ptr %10, align 1, !range !10
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 10
  %15 = load i32, ptr %14, align 8
  %16 = or i32 %15, 131072
  store i32 %16, ptr %14, align 8
  br label %17

17:                                               ; preds = %13, %9, %1
  %18 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 10
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 131072
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = or i32 %19, 524288
  store i32 %23, ptr %18, align 8
  %24 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 13
  store ptr @bbt_main_descr, ptr %24, align 4
  %25 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 14
  store ptr @bbt_mirror_descr, ptr %25, align 8
  br label %26

26:                                               ; preds = %22, %17
  %27 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = icmp ugt i32 %28, 2047
  %30 = select i1 %29, i32 16777216, i32 0
  %31 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 3
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 2
  %35 = icmp eq i32 %34, 0
  %36 = icmp ult i32 %28, 513
  %37 = select i1 %36, i32 1, i32 2
  %38 = and i1 %35, %36
  br i1 %38, label %44, label %39

39:                                               ; preds = %26
  %40 = or i32 %30, 201326592
  %41 = select i1 %35, i32 %30, i32 %40
  %42 = or i32 %41, 32768
  %43 = select i1 %36, i32 %41, i32 %42
  store i32 %43, ptr %31, align 4
  br label %44

44:                                               ; preds = %39, %26
  %45 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 6
  %46 = and i32 %33, 16384
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %47, i32 2, i32 3
  %49 = add nuw nsw i32 %37, %48
  store i32 %49, ptr %45, align 8
  br i1 %8, label %57, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.pxa3xx_nand_platform_data, ptr %7, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  store i32 %52, ptr %53, align 8
  %54 = getelementptr inbounds %struct.pxa3xx_nand_platform_data, ptr %7, i32 0, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 7
  store i32 %55, ptr %56, align 4
  br label %57

57:                                               ; preds = %50, %44
  %58 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %164, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 7
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %65, %61
  %70 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 1, i32 4
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 1, i32 3
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  store i32 %71, ptr %62, align 4
  %78 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 7
  store i32 %75, ptr %78, align 4
  br label %83

79:                                               ; preds = %73, %69
  %80 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %80, ptr noundef nonnull @.str.9) #11
  store i32 512, ptr %62, align 4
  %81 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 7
  store i32 1, ptr %81, align 4
  %82 = load i32, ptr %58, align 4
  br label %83

83:                                               ; preds = %79, %77, %65
  %84 = phi i32 [ %75, %77 ], [ 1, %79 ], [ %67, %65 ]
  %85 = phi i32 [ %71, %77 ], [ 512, %79 ], [ %63, %65 ]
  %86 = phi i32 [ %59, %77 ], [ %82, %79 ], [ %59, %65 ]
  switch i32 %86, label %175 [
    i32 3, label %87
    i32 1, label %164
    i32 2, label %164
    i32 4, label %164
  ]

87:                                               ; preds = %83
  %88 = load ptr, ptr %2, align 4
  %89 = getelementptr inbounds %struct.marvell_nfc, ptr %88, i32 0, i32 9
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.marvell_nfc_caps, ptr %90, i32 0, i32 4
  %92 = load i8, ptr %91, align 2, !range !10
  %93 = icmp eq i8 %92, 0
  %94 = load i32, ptr %27, align 4
  br i1 %93, label %95, label %104

95:                                               ; preds = %87
  %96 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %97 = load i32, ptr %96, align 4
  %98 = add i32 %97, %94
  %99 = icmp ugt i32 %98, 2112
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.marvell_nfc, ptr %88, i32 0, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = sub i32 2112, %97
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull @.str.11, i32 noundef %94, i32 noundef %103) #11
  br label %175

104:                                              ; preds = %95, %87
  %105 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 2
  store ptr null, ptr %105, align 8
  %106 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 7
  switch i32 %94, label %133 [
    i32 512, label %107
    i32 2048, label %111
    i32 4096, label %114
    i32 8192, label %117
  ]

107:                                              ; preds = %104
  %108 = icmp eq i32 %85, 512
  %109 = icmp eq i32 %84, 1
  %110 = select i1 %108, i1 %109, i1 false
  br i1 %110, label %124, label %133

111:                                              ; preds = %104
  %112 = icmp eq i32 %85, 512
  br i1 %112, label %113, label %133

113:                                              ; preds = %111
  switch i32 %84, label %133 [
    i32 1, label %124
    i32 4, label %120
    i32 8, label %121
  ]

114:                                              ; preds = %104
  %115 = icmp eq i32 %85, 512
  br i1 %115, label %116, label %133

116:                                              ; preds = %114
  switch i32 %84, label %133 [
    i32 4, label %124
    i32 8, label %122
  ]

117:                                              ; preds = %104
  %118 = icmp eq i32 %85, 512
  br i1 %118, label %119, label %133

119:                                              ; preds = %117
  switch i32 %84, label %133 [
    i32 4, label %124
    i32 8, label %123
  ]

120:                                              ; preds = %113
  br label %124

121:                                              ; preds = %113
  br label %124

122:                                              ; preds = %116
  br label %124

123:                                              ; preds = %119
  br label %124

124:                                              ; preds = %123, %122, %121, %120, %119, %116, %113, %107
  %125 = phi i32 [ %84, %113 ], [ %84, %116 ], [ 6, %119 ], [ 2, %120 ], [ 3, %121 ], [ 5, %122 ], [ 7, %123 ], [ 0, %107 ]
  %126 = phi ptr [ getelementptr inbounds ([8 x %struct.marvell_hw_ecc_layout], ptr @marvell_nfc_layouts, i32 0, i32 1), %113 ], [ getelementptr inbounds ([8 x %struct.marvell_hw_ecc_layout], ptr @marvell_nfc_layouts, i32 0, i32 4), %116 ], [ getelementptr inbounds ([8 x %struct.marvell_hw_ecc_layout], ptr @marvell_nfc_layouts, i32 0, i32 6), %119 ], [ getelementptr inbounds ([8 x %struct.marvell_hw_ecc_layout], ptr @marvell_nfc_layouts, i32 0, i32 2), %120 ], [ getelementptr inbounds ([8 x %struct.marvell_hw_ecc_layout], ptr @marvell_nfc_layouts, i32 0, i32 3), %121 ], [ getelementptr inbounds ([8 x %struct.marvell_hw_ecc_layout], ptr @marvell_nfc_layouts, i32 0, i32 5), %122 ], [ getelementptr inbounds ([8 x %struct.marvell_hw_ecc_layout], ptr @marvell_nfc_layouts, i32 0, i32 7), %123 ], [ @marvell_nfc_layouts, %107 ]
  store ptr %126, ptr %105, align 8
  %127 = load ptr, ptr %89, align 4
  %128 = getelementptr inbounds %struct.marvell_nfc_caps, ptr %127, i32 0, i32 4
  %129 = load i8, ptr %128, align 2, !range !10
  %130 = icmp eq i8 %129, 0
  %131 = icmp ugt i32 %84, 1
  %132 = select i1 %130, i1 %131, i1 false
  br i1 %132, label %133, label %136

133:                                              ; preds = %124, %119, %117, %116, %114, %113, %111, %107, %104
  %134 = getelementptr inbounds %struct.marvell_nfc, ptr %88, i32 0, i32 1
  %135 = load ptr, ptr %134, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %135, ptr noundef nonnull @.str.12, i32 noundef %84, i32 noundef %94) #11
  br label %175

136:                                              ; preds = %124
  %137 = load i32, ptr %126, align 4
  %138 = icmp eq i32 %137, 2048
  br i1 %138, label %139, label %153

139:                                              ; preds = %136
  %140 = lshr i32 168, %125
  %141 = and i32 %140, 1
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %153, label %143

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %145 = load i32, ptr %144, align 4
  %146 = icmp ult i32 %145, 128
  br i1 %146, label %147, label %150

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.marvell_nfc, ptr %88, i32 0, i32 1
  %149 = load ptr, ptr %148, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %149, ptr noundef nonnull @.str.13) #11
  br label %175

150:                                              ; preds = %143
  %151 = load i32, ptr %18, align 8
  %152 = or i32 %151, 524288
  store i32 %152, ptr %18, align 8
  br label %153

153:                                              ; preds = %150, %139, %136
  %154 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 15
  store ptr @marvell_nand_ooblayout_ops, ptr %154, align 8
  %155 = getelementptr [8 x %struct.marvell_hw_ecc_layout], ptr @marvell_nfc_layouts, i32 0, i32 %125, i32 3
  %156 = load i32, ptr %155, align 4
  %157 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 3
  store i32 %156, ptr %157, align 4
  %158 = getelementptr [8 x %struct.marvell_hw_ecc_layout], ptr @marvell_nfc_layouts, i32 0, i32 %125, i32 5
  %159 = load i32, ptr %158, align 4
  store i32 %159, ptr %62, align 4
  %160 = icmp eq i32 %84, 1
  %161 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 2
  br i1 %160, label %162, label %163

162:                                              ; preds = %153
  store i32 1, ptr %161, align 8
  br label %180

163:                                              ; preds = %153
  store i32 2, ptr %161, align 8
  store i32 16, ptr %106, align 4
  br label %180

164:                                              ; preds = %83, %83, %83, %57
  %165 = phi i32 [ %86, %83 ], [ %86, %83 ], [ %86, %83 ], [ 1, %57 ]
  %166 = getelementptr inbounds %struct.marvell_nfc, ptr %3, i32 0, i32 9
  %167 = load ptr, ptr %166, align 4
  %168 = getelementptr inbounds %struct.marvell_nfc_caps, ptr %167, i32 0, i32 4
  %169 = load i8, ptr %168, align 2, !range !10
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %164
  %172 = load i32, ptr %27, align 4
  switch i32 %172, label %173 [
    i32 512, label %178
    i32 2048, label %178
  ]

173:                                              ; preds = %171
  %174 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %174, ptr noundef nonnull @.str.10, i32 noundef %172) #11
  br label %175

175:                                              ; preds = %173, %147, %133, %100, %83
  %176 = phi i32 [ -524, %100 ], [ -524, %133 ], [ -524, %147 ], [ -22, %83 ], [ -22, %173 ]
  %177 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %177, ptr noundef nonnull @.str.5, i32 noundef %176) #11
  br label %228

178:                                              ; preds = %171, %171, %164
  %179 = icmp eq i32 %165, 3
  br i1 %179, label %197, label %200

180:                                              ; preds = %163, %162
  %181 = phi ptr [ @marvell_nfc_hw_ecc_hmg_read_page_raw, %162 ], [ @marvell_nfc_hw_ecc_bch_read_page_raw, %163 ]
  %182 = phi ptr [ @marvell_nfc_hw_ecc_hmg_read_page, %162 ], [ @marvell_nfc_hw_ecc_bch_read_page, %163 ]
  %183 = phi ptr [ @marvell_nfc_hw_ecc_hmg_read_oob_raw, %162 ], [ @marvell_nfc_hw_ecc_bch_read_oob_raw, %163 ]
  %184 = phi ptr [ @marvell_nfc_hw_ecc_hmg_read_oob_raw, %162 ], [ @marvell_nfc_hw_ecc_bch_read_oob, %163 ]
  %185 = phi ptr [ @marvell_nfc_hw_ecc_hmg_write_page_raw, %162 ], [ @marvell_nfc_hw_ecc_bch_write_page_raw, %163 ]
  %186 = phi ptr [ @marvell_nfc_hw_ecc_hmg_write_page, %162 ], [ @marvell_nfc_hw_ecc_bch_write_page, %163 ]
  %187 = phi ptr [ @marvell_nfc_hw_ecc_hmg_write_oob_raw, %162 ], [ @marvell_nfc_hw_ecc_bch_write_oob_raw, %163 ]
  %188 = phi ptr [ @marvell_nfc_hw_ecc_hmg_write_oob_raw, %162 ], [ @marvell_nfc_hw_ecc_bch_write_oob, %163 ]
  %189 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 16
  store ptr %181, ptr %189, align 4
  %190 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 18
  store ptr %182, ptr %190, align 4
  %191 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 23
  store ptr %183, ptr %191, align 4
  %192 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 24
  store ptr %184, ptr %192, align 4
  %193 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 17
  store ptr %185, ptr %193, align 4
  %194 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 21
  store ptr %186, ptr %194, align 4
  %195 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 22
  store ptr %187, ptr %195, align 4
  %196 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 25
  store ptr %188, ptr %196, align 4
  br label %197

197:                                              ; preds = %180, %178
  %198 = load i32, ptr %32, align 8
  %199 = or i32 %198, 512
  store i32 %199, ptr %32, align 8
  br label %200

200:                                              ; preds = %197, %178
  br i1 %8, label %201, label %207

201:                                              ; preds = %200
  %202 = getelementptr inbounds %struct.marvell_nfc, ptr %3, i32 0, i32 9
  %203 = load ptr, ptr %202, align 4
  %204 = getelementptr inbounds %struct.marvell_nfc_caps, ptr %203, i32 0, i32 3
  %205 = load i8, ptr %204, align 1, !range !10
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %209, label %207

207:                                              ; preds = %201, %200
  %208 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 13
  store ptr @.str.6, ptr %208, align 8
  br label %228

209:                                              ; preds = %201
  %210 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 13
  %211 = load ptr, ptr %210, align 8
  %212 = icmp eq ptr %211, null
  br i1 %212, label %213, label %228

213:                                              ; preds = %209
  %214 = load ptr, ptr %4, align 4
  %215 = getelementptr inbounds %struct.device, ptr %214, i32 0, i32 3
  %216 = load ptr, ptr %215, align 4
  %217 = icmp eq ptr %216, null
  br i1 %217, label %218, label %220

218:                                              ; preds = %213
  %219 = load ptr, ptr %214, align 4
  br label %220

220:                                              ; preds = %218, %213
  %221 = phi ptr [ %219, %218 ], [ %216, %213 ]
  %222 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 9
  %223 = load i32, ptr %222, align 4
  %224 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %214, i32 noundef 3264, ptr noundef nonnull @.str.7, ptr noundef %221, i32 noundef %223) #10
  store ptr %224, ptr %210, align 8
  %225 = icmp eq ptr %224, null
  br i1 %225, label %226, label %228

226:                                              ; preds = %220
  %227 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %227, ptr noundef nonnull @.str.8) #11
  br label %228

228:                                              ; preds = %226, %220, %209, %207, %175
  %229 = phi i32 [ %176, %175 ], [ -12, %226 ], [ 0, %209 ], [ 0, %220 ], [ 0, %207 ]
  ret i32 %229
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @marvell_nfc_exec_op(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #2 {
  %4 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %5 = load ptr, ptr %4, align 4
  br i1 %2, label %38, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr %1, align 4
  %8 = getelementptr inbounds %struct.marvell_nfc, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #10, !srcloc !8
  %11 = and i32 %10, -486572033
  %12 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = or i32 %11, %13
  %15 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %14) #10, !srcloc !9
  %16 = load ptr, ptr %8, align 4
  %17 = getelementptr i8, ptr %16, i32 20
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #10, !srcloc !8
  %19 = load ptr, ptr %8, align 4
  %20 = getelementptr i8, ptr %19, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 4095) #10, !srcloc !9
  %21 = getelementptr inbounds %struct.marvell_nfc, ptr %5, i32 0, i32 8
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %0
  br i1 %23, label %24, label %28

24:                                               ; preds = %6
  %25 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 7
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, %7
  br i1 %27, label %38, label %28

28:                                               ; preds = %24, %6
  %29 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 4
  %30 = load i32, ptr %29, align 8
  %31 = load ptr, ptr %8, align 4
  %32 = getelementptr i8, ptr %31, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #10, !srcloc !9
  %33 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = load ptr, ptr %8, align 4
  %36 = getelementptr i8, ptr %35, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #10, !srcloc !9
  store ptr %0, ptr %21, align 4
  %37 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 7
  store i32 %7, ptr %37, align 4
  br label %38

38:                                               ; preds = %28, %24, %3
  %39 = getelementptr inbounds %struct.marvell_nfc, ptr %5, i32 0, i32 9
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.marvell_nfc_caps, ptr %40, i32 0, i32 4
  %42 = load i8, ptr %41, align 2, !range !10
  %43 = icmp eq i8 %42, 0
  %44 = select i1 %43, ptr @marvell_nfcv1_op_parser, ptr @marvell_nfcv2_op_parser
  %45 = tail call i32 @nand_op_parser_exec_op(ptr noundef %0, ptr noundef nonnull %44, ptr noundef %1, i1 noundef zeroext %2) #10
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @marvell_nfc_setup_interface(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.marvell_nfc, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @clk_get_rate(ptr noundef %7) #10
  %9 = udiv i32 1000000000, %8
  %10 = shl nuw nsw i32 %9, 1
  %11 = load i32, ptr %2, align 8
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct.nand_interface_config, ptr %2, i32 0, i32 1, i32 1
  %14 = select i1 %12, ptr %13, ptr inttoptr (i32 -22 to ptr)
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = ptrtoint ptr %14 to i32
  br label %161

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.nand_sdr_timings, ptr %14, i32 0, i32 22
  %20 = load i32, ptr %19, align 8
  %21 = add i32 %20, 1
  %22 = udiv i32 %21, 2000
  %23 = add nsw i32 %10, -1
  %24 = add nsw i32 %23, %22
  %25 = udiv i32 %24, %10
  %26 = add i32 %25, -1
  %27 = getelementptr inbounds %struct.nand_sdr_timings, ptr %14, i32 0, i32 33
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 1
  %30 = udiv i32 %29, 2000
  %31 = add nsw i32 %23, %30
  %32 = udiv i32 %31, %10
  %33 = add i32 %32, -1
  %34 = getelementptr inbounds %struct.nand_sdr_timings, ptr %14, i32 0, i32 16
  %35 = load i32, ptr %34, align 8
  %36 = udiv i32 %35, 1000
  %37 = add nsw i32 %23, %36
  %38 = udiv i32 %37, %10
  %39 = getelementptr inbounds %struct.nand_sdr_timings, ptr %14, i32 0, i32 10
  %40 = load i32, ptr %39, align 8
  %41 = udiv i32 %40, 1000
  %42 = add nsw i32 %23, %41
  %43 = udiv i32 %42, %10
  %44 = add i32 %43, -1
  %45 = getelementptr inbounds %struct.nand_sdr_timings, ptr %14, i32 0, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = udiv i32 %46, 1000
  %48 = add nsw i32 %23, %47
  %49 = udiv i32 %48, %10
  %50 = icmp ugt i32 %20, 29999
  %51 = add i32 %25, 2
  %52 = getelementptr inbounds %struct.nand_sdr_timings, ptr %14, i32 0, i32 7
  %53 = load i32, ptr %52, align 4
  %54 = udiv i32 %53, 1000
  %55 = add nsw i32 %23, %54
  %56 = udiv i32 %55, %10
  %57 = getelementptr inbounds %struct.nand_sdr_timings, ptr %14, i32 0, i32 35
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.nand_sdr_timings, ptr %14, i32 0, i32 1
  %60 = load i32, ptr %59, align 8
  %61 = tail call i32 @llvm.smax.i32(i32 %58, i32 %60)
  %62 = sdiv i32 %61, 1000
  %63 = add nsw i32 %23, %62
  %64 = udiv i32 %63, %10
  %65 = add i32 %64, -2
  %66 = getelementptr inbounds %struct.nand_sdr_timings, ptr %14, i32 0, i32 26
  %67 = load i32, ptr %66, align 8
  %68 = tail call i32 @llvm.smax.i32(i32 %67, i32 %60)
  %69 = sdiv i32 %68, 1000
  %70 = add nsw i32 %23, %69
  %71 = udiv i32 %70, %10
  %72 = getelementptr inbounds %struct.marvell_nfc, ptr %5, i32 0, i32 9
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.marvell_nfc_caps, ptr %73, i32 0, i32 4
  %75 = load i8, ptr %74, align 2, !range !10
  %76 = icmp eq i8 %75, 0
  %77 = getelementptr inbounds %struct.nand_sdr_timings, ptr %14, i32 0, i32 32
  %78 = load i32, ptr %77, align 8
  br i1 %76, label %83, label %79

79:                                               ; preds = %18
  %80 = udiv i32 %78, 1000
  %81 = add nsw i32 %23, %80
  %82 = udiv i32 %81, %10
  br label %111

83:                                               ; preds = %18
  %84 = zext i32 %78 to i64
  %85 = getelementptr inbounds %struct.nand_sdr_timings, ptr %14, i32 0, i32 3
  %86 = load i64, ptr %85, align 8
  %87 = add i64 %86, %84
  %88 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %87, i32 0) #12, !srcloc !12
  %89 = extractvalue { i64, i32 } %88, 0
  %90 = extractvalue { i64, i32 } %88, 1
  %91 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %87, i64 %89, i32 %90) #12, !srcloc !13
  %92 = extractvalue { i64, i32 } %91, 0
  %93 = lshr i64 %92, 9
  %94 = zext i32 %10 to i64
  %95 = add nsw i64 %94, -1
  %96 = add nsw i64 %95, %93
  %97 = icmp ult i64 %96, 4294967296
  br i1 %97, label %98, label %101, !prof !11

98:                                               ; preds = %83
  %99 = trunc i64 %96 to i32
  %100 = udiv i32 %99, %10
  br label %105

101:                                              ; preds = %83
  %102 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %10, i64 %96) #12, !srcloc !14
  %103 = extractvalue { i64, i64 } %102, 1
  %104 = trunc i64 %103 to i32
  br label %105

105:                                              ; preds = %101, %98
  %106 = phi i32 [ %100, %98 ], [ %104, %101 ]
  %107 = add i32 %106, 3
  %108 = icmp ugt i32 %107, %44
  %109 = add i32 %43, -4
  %110 = select i1 %108, i32 %109, i32 0
  br label %111

111:                                              ; preds = %105, %79
  %112 = phi i32 [ %82, %79 ], [ %110, %105 ]
  %113 = icmp slt i32 %1, 0
  br i1 %113, label %161, label %114

114:                                              ; preds = %111
  %115 = tail call i32 @llvm.umin.i32(i32 %26, i32 15)
  %116 = and i32 %115, 7
  %117 = tail call i32 @llvm.umin.i32(i32 %26, i32 7)
  %118 = shl nuw nsw i32 %117, 3
  %119 = or i32 %116, %118
  %120 = shl nuw nsw i32 %115, 3
  %121 = and i32 %120, 64
  %122 = or i32 %119, %121
  %123 = tail call i32 @llvm.umin.i32(i32 %33, i32 7)
  %124 = shl nuw nsw i32 %123, 8
  %125 = or i32 %122, %124
  %126 = shl nuw nsw i32 %123, 11
  %127 = or i32 %125, %126
  %128 = tail call i32 @llvm.umin.i32(i32 %38, i32 7)
  %129 = shl nuw nsw i32 %128, 16
  %130 = or i32 %127, %129
  %131 = tail call i32 @llvm.umin.i32(i32 %44, i32 7)
  %132 = shl nuw nsw i32 %131, 19
  %133 = or i32 %132, %130
  %134 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 4
  store i32 %133, ptr %134, align 8
  %135 = tail call i32 @llvm.umin.i32(i32 %56, i32 15)
  %136 = tail call i32 @llvm.umin.i32(i32 %65, i32 15)
  %137 = shl nuw nsw i32 %136, 4
  %138 = or i32 %137, %135
  %139 = tail call i32 @llvm.umin.i32(i32 %112, i32 65535)
  %140 = shl nuw i32 %139, 16
  %141 = or i32 %140, %138
  %142 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 5
  store i32 %141, ptr %142, align 4
  %143 = load ptr, ptr %72, align 4
  %144 = getelementptr inbounds %struct.marvell_nfc_caps, ptr %143, i32 0, i32 4
  %145 = load i8, ptr %144, align 2, !range !10
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %161, label %147

147:                                              ; preds = %114
  %148 = tail call i32 @llvm.umin.i32(i32 %51, i32 15)
  %149 = shl nuw nsw i32 %148, 22
  %150 = or i32 %149, 67108864
  %151 = select i1 %50, i32 79691776, i32 %150
  %152 = tail call i32 @llvm.umin.i32(i32 %49, i32 31)
  %153 = shl nuw i32 %152, 27
  %154 = or i32 %153, %151
  %155 = or i32 %154, %133
  store i32 %155, ptr %134, align 8
  %156 = lshr i32 %71, 4
  %157 = tail call i32 @llvm.umin.i32(i32 %156, i32 3)
  %158 = shl nuw nsw i32 %157, 8
  %159 = or i32 %158, 32768
  %160 = or i32 %141, %159
  store i32 %160, ptr %142, align 4
  br label %161

161:                                              ; preds = %147, %114, %111, %16
  %162 = phi i32 [ %17, %16 ], [ 0, %111 ], [ 0, %147 ], [ 0, %114 ]
  ret i32 %162
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @marvell_nfc_hw_ecc_hmg_read_page_raw(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.marvell_nfc, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #10, !srcloc !8
  %12 = and i32 %11, -486572033
  %13 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = or i32 %12, %14
  %16 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %15) #10, !srcloc !9
  %17 = load ptr, ptr %9, align 4
  %18 = getelementptr i8, ptr %17, i32 20
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #10, !srcloc !8
  %20 = load ptr, ptr %9, align 4
  %21 = getelementptr i8, ptr %20, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 4095) #10, !srcloc !9
  %22 = getelementptr inbounds %struct.marvell_nfc, ptr %8, i32 0, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %0
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 7
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, %6
  br i1 %28, label %39, label %29

29:                                               ; preds = %25, %4
  %30 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 4
  %31 = load i32, ptr %30, align 8
  %32 = load ptr, ptr %9, align 4
  %33 = getelementptr i8, ptr %32, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #10, !srcloc !9
  %34 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = load ptr, ptr %9, align 4
  %37 = getelementptr i8, ptr %36, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #10, !srcloc !9
  store ptr %0, ptr %22, align 4
  %38 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 7
  store i32 %6, ptr %38, align 4
  br label %39

39:                                               ; preds = %29, %25
  %40 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %41 = load ptr, ptr %40, align 4
  %42 = tail call fastcc i32 @marvell_nfc_hw_ecc_hmg_do_read_page(ptr noundef %0, ptr noundef %1, ptr noundef %41, i1 noundef zeroext true, i32 noundef %3)
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @marvell_nfc_hw_ecc_hmg_read_page(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %6, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %6, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, %8
  %12 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %6, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %11, %13
  %15 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.marvell_nfc, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #10, !srcloc !8
  %22 = and i32 %21, -486572033
  %23 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = or i32 %22, %24
  %26 = load ptr, ptr %19, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %25) #10, !srcloc !9
  %27 = load ptr, ptr %19, align 4
  %28 = getelementptr i8, ptr %27, i32 20
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #10, !srcloc !8
  %30 = load ptr, ptr %19, align 4
  %31 = getelementptr i8, ptr %30, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 4095) #10, !srcloc !9
  %32 = getelementptr inbounds %struct.marvell_nfc, ptr %18, i32 0, i32 8
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %0
  br i1 %34, label %35, label %39

35:                                               ; preds = %4
  %36 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 7
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, %16
  br i1 %38, label %49, label %39

39:                                               ; preds = %35, %4
  %40 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 4
  %41 = load i32, ptr %40, align 8
  %42 = load ptr, ptr %19, align 4
  %43 = getelementptr i8, ptr %42, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #10, !srcloc !9
  %44 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 5
  %45 = load i32, ptr %44, align 4
  %46 = load ptr, ptr %19, align 4
  %47 = getelementptr i8, ptr %46, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %45) #10, !srcloc !9
  store ptr %0, ptr %32, align 4
  %48 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 7
  store i32 %16, ptr %48, align 4
  br label %49

49:                                               ; preds = %39, %35
  %50 = load ptr, ptr %17, align 4
  %51 = getelementptr inbounds %struct.marvell_nfc, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #10, !srcloc !8
  %54 = and i32 %53, 1073741824
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %49
  %57 = or i32 %53, 1073741824
  %58 = load ptr, ptr %51, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %57) #10, !srcloc !9
  %59 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 2
  %60 = load i32, ptr %59, align 8
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load ptr, ptr %51, align 4
  %64 = getelementptr i8, ptr %63, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 1) #10, !srcloc !9
  br label %65

65:                                               ; preds = %62, %56, %49
  %66 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %67 = load ptr, ptr %66, align 4
  %68 = tail call fastcc i32 @marvell_nfc_hw_ecc_hmg_do_read_page(ptr noundef %0, ptr noundef %1, ptr noundef %67, i1 noundef zeroext false, i32 noundef %3)
  %69 = load ptr, ptr %17, align 4
  %70 = getelementptr inbounds %struct.marvell_nfc, ptr %69, i32 0, i32 2
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr i8, ptr %71, i32 20
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #10, !srcloc !8
  %74 = and i32 %73, 16
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %65
  %77 = load ptr, ptr %70, align 4
  %78 = getelementptr i8, ptr %77, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %73) #10, !srcloc !9
  br label %96

79:                                               ; preds = %65
  %80 = and i32 %73, 8
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %91, label %82

82:                                               ; preds = %79
  %83 = load ptr, ptr %70, align 4
  %84 = getelementptr i8, ptr %83, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %73) #10, !srcloc !9
  %85 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 2
  %86 = load i32, ptr %85, align 8
  %87 = icmp eq i32 %86, 2
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = lshr i32 %73, 16
  %90 = and i32 %89, 31
  br label %91

91:                                               ; preds = %88, %82, %79
  %92 = phi i32 [ %90, %88 ], [ 0, %79 ], [ 1, %82 ]
  %93 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52
  %94 = load i32, ptr %93, align 4
  %95 = add i32 %94, %92
  store i32 %95, ptr %93, align 4
  br label %96

96:                                               ; preds = %91, %76
  %97 = phi i32 [ %92, %91 ], [ 0, %76 ]
  %98 = load ptr, ptr %17, align 4
  %99 = getelementptr inbounds %struct.marvell_nfc, ptr %98, i32 0, i32 2
  %100 = load ptr, ptr %99, align 4
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %100) #10, !srcloc !8
  %102 = and i32 %101, 1073741824
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %113, label %104

104:                                              ; preds = %96
  %105 = and i32 %101, -1073741825
  %106 = load ptr, ptr %99, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 %105) #10, !srcloc !9
  %107 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 2
  %108 = load i32, ptr %107, align 8
  %109 = icmp eq i32 %108, 2
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = load ptr, ptr %99, align 4
  %112 = getelementptr i8, ptr %111, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 0) #10, !srcloc !9
  br label %113

113:                                              ; preds = %110, %104, %96
  br i1 %75, label %136, label %114

114:                                              ; preds = %113
  %115 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %14, i32 noundef 3264) #13
  %116 = icmp eq ptr %115, null
  br i1 %116, label %136, label %117

117:                                              ; preds = %114
  %118 = load i32, ptr %7, align 4
  %119 = getelementptr i8, ptr %115, i32 %118
  %120 = tail call fastcc i32 @marvell_nfc_hw_ecc_hmg_do_read_page(ptr noundef %0, ptr noundef nonnull %115, ptr noundef %119, i1 noundef zeroext true, i32 noundef %3)
  %121 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 7
  %122 = load i32, ptr %121, align 4
  %123 = tail call i32 @nand_check_erased_ecc_chunk(ptr noundef nonnull %115, i32 noundef %14, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef %122) #10
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %117
  %126 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52, i32 1
  %127 = load i32, ptr %126, align 4
  %128 = add i32 %127, 1
  store i32 %128, ptr %126, align 4
  br label %134

129:                                              ; preds = %117
  %130 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52
  %131 = load i32, ptr %130, align 4
  %132 = add i32 %131, %123
  store i32 %132, ptr %130, align 4
  %133 = tail call i32 @llvm.umax.i32(i32 %97, i32 %123) #10
  br label %134

134:                                              ; preds = %129, %125
  %135 = phi i32 [ %97, %125 ], [ %133, %129 ]
  tail call void @kfree(ptr noundef nonnull %115) #10
  br label %136

136:                                              ; preds = %134, %114, %113
  %137 = phi i32 [ %135, %134 ], [ -12, %114 ], [ %97, %113 ]
  ret i32 %137
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @marvell_nfc_hw_ecc_hmg_read_oob_raw(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 24, i32 1
  store i32 -1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 22
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.marvell_nfc, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #10, !srcloc !8
  %13 = and i32 %12, -486572033
  %14 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = or i32 %13, %15
  %17 = load ptr, ptr %10, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %16) #10, !srcloc !9
  %18 = load ptr, ptr %10, align 4
  %19 = getelementptr i8, ptr %18, i32 20
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #10, !srcloc !8
  %21 = load ptr, ptr %10, align 4
  %22 = getelementptr i8, ptr %21, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 4095) #10, !srcloc !9
  %23 = getelementptr inbounds %struct.marvell_nfc, ptr %9, i32 0, i32 8
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %0
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 7
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, %7
  br i1 %29, label %40, label %30

30:                                               ; preds = %26, %2
  %31 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 4
  %32 = load i32, ptr %31, align 8
  %33 = load ptr, ptr %10, align 4
  %34 = getelementptr i8, ptr %33, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #10, !srcloc !9
  %35 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 5
  %36 = load i32, ptr %35, align 4
  %37 = load ptr, ptr %10, align 4
  %38 = getelementptr i8, ptr %37, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #10, !srcloc !9
  store ptr %0, ptr %23, align 4
  %39 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 7
  store i32 %7, ptr %39, align 4
  br label %40

40:                                               ; preds = %30, %26
  %41 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %42 = load ptr, ptr %41, align 4
  %43 = tail call fastcc i32 @marvell_nfc_hw_ecc_hmg_do_read_page(ptr noundef %0, ptr noundef %5, ptr noundef %42, i1 noundef zeroext true, i32 noundef %1)
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @marvell_nfc_hw_ecc_hmg_write_page_raw(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.marvell_nfc, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #10, !srcloc !8
  %12 = and i32 %11, -486572033
  %13 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = or i32 %12, %14
  %16 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %15) #10, !srcloc !9
  %17 = load ptr, ptr %9, align 4
  %18 = getelementptr i8, ptr %17, i32 20
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #10, !srcloc !8
  %20 = load ptr, ptr %9, align 4
  %21 = getelementptr i8, ptr %20, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 4095) #10, !srcloc !9
  %22 = getelementptr inbounds %struct.marvell_nfc, ptr %8, i32 0, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %0
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 7
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, %6
  br i1 %28, label %39, label %29

29:                                               ; preds = %25, %4
  %30 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 4
  %31 = load i32, ptr %30, align 8
  %32 = load ptr, ptr %9, align 4
  %33 = getelementptr i8, ptr %32, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #10, !srcloc !9
  %34 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = load ptr, ptr %9, align 4
  %37 = getelementptr i8, ptr %36, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #10, !srcloc !9
  store ptr %0, ptr %22, align 4
  %38 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 7
  store i32 %6, ptr %38, align 4
  br label %39

39:                                               ; preds = %29, %25
  %40 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %41 = load ptr, ptr %40, align 4
  %42 = tail call fastcc i32 @marvell_nfc_hw_ecc_hmg_do_write_page(ptr noundef %0, ptr noundef %1, ptr noundef %41, i1 noundef zeroext true, i32 noundef %3)
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @marvell_nfc_hw_ecc_hmg_write_page(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.marvell_nfc, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #10, !srcloc !8
  %12 = and i32 %11, -486572033
  %13 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = or i32 %12, %14
  %16 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %15) #10, !srcloc !9
  %17 = load ptr, ptr %9, align 4
  %18 = getelementptr i8, ptr %17, i32 20
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #10, !srcloc !8
  %20 = load ptr, ptr %9, align 4
  %21 = getelementptr i8, ptr %20, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 4095) #10, !srcloc !9
  %22 = getelementptr inbounds %struct.marvell_nfc, ptr %8, i32 0, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %0
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 7
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, %6
  br i1 %28, label %39, label %29

29:                                               ; preds = %25, %4
  %30 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 4
  %31 = load i32, ptr %30, align 8
  %32 = load ptr, ptr %9, align 4
  %33 = getelementptr i8, ptr %32, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #10, !srcloc !9
  %34 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = load ptr, ptr %9, align 4
  %37 = getelementptr i8, ptr %36, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #10, !srcloc !9
  store ptr %0, ptr %22, align 4
  %38 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 7
  store i32 %6, ptr %38, align 4
  br label %39

39:                                               ; preds = %29, %25
  %40 = load ptr, ptr %7, align 4
  %41 = getelementptr inbounds %struct.marvell_nfc, ptr %40, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #10, !srcloc !8
  %44 = and i32 %43, 1073741824
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %39
  %47 = or i32 %43, 1073741824
  %48 = load ptr, ptr %41, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %47) #10, !srcloc !9
  %49 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 2
  %50 = load i32, ptr %49, align 8
  %51 = icmp eq i32 %50, 2
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load ptr, ptr %41, align 4
  %54 = getelementptr i8, ptr %53, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 1) #10, !srcloc !9
  br label %55

55:                                               ; preds = %52, %46, %39
  %56 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %57 = load ptr, ptr %56, align 4
  %58 = tail call fastcc i32 @marvell_nfc_hw_ecc_hmg_do_write_page(ptr noundef %0, ptr noundef %1, ptr noundef %57, i1 noundef zeroext false, i32 noundef %3)
  %59 = load ptr, ptr %7, align 4
  %60 = getelementptr inbounds %struct.marvell_nfc, ptr %59, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #10, !srcloc !8
  %63 = and i32 %62, 1073741824
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %55
  %66 = and i32 %62, -1073741825
  %67 = load ptr, ptr %60, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %66) #10, !srcloc !9
  %68 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 2
  %69 = load i32, ptr %68, align 8
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load ptr, ptr %60, align 4
  %73 = getelementptr i8, ptr %72, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 0) #10, !srcloc !9
  br label %74

74:                                               ; preds = %71, %65, %55
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @marvell_nfc_hw_ecc_hmg_write_oob_raw(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 24, i32 1
  store i32 -1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 22
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  tail call void @llvm.memset.p0.i32(ptr align 1 %5, i8 -1, i32 %7, i1 false)
  %8 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.marvell_nfc, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #10, !srcloc !8
  %15 = and i32 %14, -486572033
  %16 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = or i32 %15, %17
  %19 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %18) #10, !srcloc !9
  %20 = load ptr, ptr %12, align 4
  %21 = getelementptr i8, ptr %20, i32 20
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #10, !srcloc !8
  %23 = load ptr, ptr %12, align 4
  %24 = getelementptr i8, ptr %23, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 4095) #10, !srcloc !9
  %25 = getelementptr inbounds %struct.marvell_nfc, ptr %11, i32 0, i32 8
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %0
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 7
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, %9
  br i1 %31, label %42, label %32

32:                                               ; preds = %28, %2
  %33 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 4
  %34 = load i32, ptr %33, align 8
  %35 = load ptr, ptr %12, align 4
  %36 = getelementptr i8, ptr %35, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #10, !srcloc !9
  %37 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 5
  %38 = load i32, ptr %37, align 4
  %39 = load ptr, ptr %12, align 4
  %40 = getelementptr i8, ptr %39, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #10, !srcloc !9
  store ptr %0, ptr %25, align 4
  %41 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 7
  store i32 %9, ptr %41, align 4
  br label %42

42:                                               ; preds = %32, %28
  %43 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %44 = load ptr, ptr %43, align 4
  %45 = tail call fastcc i32 @marvell_nfc_hw_ecc_hmg_do_write_page(ptr noundef %0, ptr noundef %5, ptr noundef %44, i1 noundef zeroext true, i32 noundef %1)
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @marvell_nfc_hw_ecc_bch_read_page_raw(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %6, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %6, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, %10
  %14 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %6, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %13, %15
  %17 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %6, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = mul i32 %18, %12
  %20 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %6, i32 0, i32 9
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %19, %21
  %23 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.marvell_nfc, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #10, !srcloc !8
  %30 = and i32 %29, -486572033
  %31 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = or i32 %30, %32
  %34 = load ptr, ptr %27, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %33) #10, !srcloc !9
  %35 = load ptr, ptr %27, align 4
  %36 = getelementptr i8, ptr %35, i32 20
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #10, !srcloc !8
  %38 = load ptr, ptr %27, align 4
  %39 = getelementptr i8, ptr %38, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 4095) #10, !srcloc !9
  %40 = getelementptr inbounds %struct.marvell_nfc, ptr %26, i32 0, i32 8
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, %0
  br i1 %42, label %43, label %47

43:                                               ; preds = %4
  %44 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 7
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, %24
  br i1 %46, label %57, label %47

47:                                               ; preds = %43, %4
  %48 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 4
  %49 = load i32, ptr %48, align 8
  %50 = load ptr, ptr %27, align 4
  %51 = getelementptr i8, ptr %50, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #10, !srcloc !9
  %52 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 5
  %53 = load i32, ptr %52, align 4
  %54 = load ptr, ptr %27, align 4
  %55 = getelementptr i8, ptr %54, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #10, !srcloc !9
  store ptr %0, ptr %40, align 4
  %56 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 7
  store i32 %24, ptr %56, align 4
  br label %57

57:                                               ; preds = %47, %43
  %58 = icmp eq i32 %2, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %57
  %60 = load ptr, ptr %7, align 4
  %61 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %62 = load i32, ptr %61, align 4
  tail call void @llvm.memset.p0.i32(ptr align 1 %60, i8 -1, i32 %62, i1 false)
  br label %63

63:                                               ; preds = %59, %57
  %64 = tail call i32 @nand_read_page_op(ptr noundef %0, i32 noundef %3, i32 noundef 0, ptr noundef null, i32 noundef 0) #10
  %65 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %6, i32 0, i32 3
  %66 = load i32, ptr %65, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %105

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %6, i32 0, i32 8
  %70 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %6, i32 0, i32 10
  %71 = getelementptr i8, ptr %8, i32 %22
  br label %72

72:                                               ; preds = %83, %68
  %73 = phi i32 [ 0, %68 ], [ %102, %83 ]
  %74 = phi i32 [ %15, %68 ], [ %86, %83 ]
  %75 = phi i32 [ %12, %68 ], [ %85, %83 ]
  %76 = phi i32 [ %10, %68 ], [ %84, %83 ]
  %77 = load i32, ptr %17, align 4
  %78 = icmp slt i32 %73, %77
  br i1 %78, label %83, label %79

79:                                               ; preds = %72
  %80 = load i32, ptr %69, align 4
  %81 = load i32, ptr %20, align 4
  %82 = load i32, ptr %70, align 4
  br label %83

83:                                               ; preds = %79, %72
  %84 = phi i32 [ %80, %79 ], [ %76, %72 ]
  %85 = phi i32 [ %81, %79 ], [ %75, %72 ]
  %86 = phi i32 [ %82, %79 ], [ %74, %72 ]
  %87 = mul i32 %73, %16
  %88 = load i32, ptr %9, align 4
  %89 = mul i32 %88, %73
  %90 = getelementptr i8, ptr %1, i32 %89
  %91 = tail call i32 @nand_change_read_column_op(ptr noundef %0, i32 noundef %87, ptr noundef %90, i32 noundef %84, i1 noundef zeroext false) #10
  %92 = load i32, ptr %11, align 4
  %93 = mul i32 %92, %73
  %94 = getelementptr i8, ptr %8, i32 %93
  %95 = tail call i32 @nand_read_data_op(ptr noundef %0, ptr noundef %94, i32 noundef %85, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %96 = load i32, ptr %14, align 4
  %97 = add i32 %96, 31
  %98 = and i32 %97, -32
  %99 = mul i32 %98, %73
  %100 = getelementptr i8, ptr %71, i32 %99
  %101 = tail call i32 @nand_read_data_op(ptr noundef %0, ptr noundef %100, i32 noundef %86, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %102 = add nuw nsw i32 %73, 1
  %103 = load i32, ptr %65, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %72, label %105

105:                                              ; preds = %83, %63
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @marvell_nfc_hw_ecc_bch_read_page(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = alloca %struct.marvell_nfc_op, align 4
  %6 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %7, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %7, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.marvell_nfc, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #10, !srcloc !8
  %21 = and i32 %20, -486572033
  %22 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = or i32 %21, %23
  %25 = load ptr, ptr %18, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %24) #10, !srcloc !9
  %26 = load ptr, ptr %18, align 4
  %27 = getelementptr i8, ptr %26, i32 20
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #10, !srcloc !8
  %29 = load ptr, ptr %18, align 4
  %30 = getelementptr i8, ptr %29, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 4095) #10, !srcloc !9
  %31 = getelementptr inbounds %struct.marvell_nfc, ptr %17, i32 0, i32 8
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, %0
  br i1 %33, label %34, label %38

34:                                               ; preds = %4
  %35 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 7
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, %15
  br i1 %37, label %48, label %38

38:                                               ; preds = %34, %4
  %39 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 4
  %40 = load i32, ptr %39, align 8
  %41 = load ptr, ptr %18, align 4
  %42 = getelementptr i8, ptr %41, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #10, !srcloc !9
  %43 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 5
  %44 = load i32, ptr %43, align 4
  %45 = load ptr, ptr %18, align 4
  %46 = getelementptr i8, ptr %45, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #10, !srcloc !9
  store ptr %0, ptr %31, align 4
  %47 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 7
  store i32 %15, ptr %47, align 4
  br label %48

48:                                               ; preds = %38, %34
  %49 = icmp eq i32 %2, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %48
  %51 = load ptr, ptr %12, align 4
  %52 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %53 = load i32, ptr %52, align 4
  tail call void @llvm.memset.p0.i32(ptr align 1 %51, i8 -1, i32 %53, i1 false)
  br label %54

54:                                               ; preds = %50, %48
  %55 = load ptr, ptr %16, align 4
  %56 = getelementptr inbounds %struct.marvell_nfc, ptr %55, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #10, !srcloc !8
  %59 = and i32 %58, 1073741824
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %54
  %62 = or i32 %58, 1073741824
  %63 = load ptr, ptr %56, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %62) #10, !srcloc !9
  %64 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 2
  %65 = load i32, ptr %64, align 8
  %66 = icmp eq i32 %65, 2
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load ptr, ptr %56, align 4
  %69 = getelementptr i8, ptr %68, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 1) #10, !srcloc !9
  br label %70

70:                                               ; preds = %67, %61, %54
  %71 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %7, i32 0, i32 3
  %72 = load i32, ptr %71, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %206

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %7, i32 0, i32 4
  %76 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %7, i32 0, i32 8
  %77 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %7, i32 0, i32 9
  %78 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 6
  %79 = getelementptr inbounds i32, ptr %5, i32 1
  %80 = shl i32 %3, 16
  %81 = getelementptr inbounds i32, ptr %5, i32 2
  %82 = lshr i32 %3, 16
  %83 = and i32 %82, 255
  %84 = getelementptr inbounds i32, ptr %5, i32 3
  %85 = getelementptr inbounds %struct.marvell_nfc_op, ptr %5, i32 0, i32 1
  %86 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 2
  %87 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52
  br label %88

88:                                               ; preds = %198, %74
  %89 = phi i32 [ 0, %74 ], [ %203, %198 ]
  %90 = phi i32 [ 0, %74 ], [ %200, %198 ]
  %91 = phi ptr [ %13, %74 ], [ %202, %198 ]
  %92 = phi ptr [ %1, %74 ], [ %201, %198 ]
  %93 = phi i32 [ %11, %74 ], [ %103, %198 ]
  %94 = phi i32 [ %9, %74 ], [ %102, %198 ]
  %95 = phi i32 [ 0, %74 ], [ %199, %198 ]
  %96 = load i32, ptr %75, align 4
  %97 = icmp slt i32 %89, %96
  br i1 %97, label %101, label %98

98:                                               ; preds = %88
  %99 = load i32, ptr %76, align 4
  %100 = load i32, ptr %77, align 4
  br label %101

101:                                              ; preds = %98, %88
  %102 = phi i32 [ %99, %98 ], [ %94, %88 ]
  %103 = phi i32 [ %100, %98 ], [ %93, %88 ]
  %104 = load ptr, ptr %16, align 4
  %105 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #10
  %106 = load i32, ptr %78, align 8
  %107 = shl i32 %106, 16
  %108 = and i32 %107, 458752
  store i32 %80, ptr %79, align 4
  store i32 %83, ptr %81, align 4
  %109 = add i32 %103, %102
  store i32 %109, ptr %84, align 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %85, i8 0, i64 24, i1 false) #10
  %110 = tail call fastcc i32 @marvell_nfc_prepare_cmd(ptr noundef %0) #10
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %169

112:                                              ; preds = %101
  %113 = icmp eq i32 %89, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %112
  %115 = or i32 %108, 268972032
  store i32 %115, ptr %5, align 4
  br label %125

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %105, i32 0, i32 3
  %118 = load i32, ptr %117, align 4
  %119 = add i32 %118, -1
  %120 = icmp sgt i32 %119, %89
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = or i32 %108, -1342177280
  store i32 %122, ptr %5, align 4
  br label %125

123:                                              ; preds = %116
  %124 = or i32 %108, 805306368
  store i32 %124, ptr %5, align 4
  br label %125

125:                                              ; preds = %123, %121, %114
  call fastcc void @marvell_nfc_send_cmd(ptr noundef %0, ptr noundef nonnull %5) #10
  %126 = icmp eq i32 %102, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %125
  %128 = getelementptr inbounds %struct.marvell_nfc, ptr %104, i32 0, i32 2
  br label %133

129:                                              ; preds = %133, %125
  %130 = icmp eq i32 %103, 0
  br i1 %130, label %169, label %131

131:                                              ; preds = %129
  %132 = getelementptr inbounds %struct.marvell_nfc, ptr %104, i32 0, i32 2
  br label %151

133:                                              ; preds = %133, %127
  %134 = phi ptr [ %92, %127 ], [ %148, %133 ]
  %135 = phi i32 [ 0, %127 ], [ %149, %133 ]
  %136 = tail call fastcc i32 @marvell_nfc_end_cmd(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.26) #10
  %137 = load ptr, ptr %128, align 4
  %138 = getelementptr i8, ptr %137, i32 64
  tail call void @__raw_readsl(ptr noundef %138, ptr noundef %134, i32 noundef 2) #10
  %139 = load ptr, ptr %128, align 4
  %140 = getelementptr i8, ptr %139, i32 64
  %141 = getelementptr i8, ptr %134, i32 8
  tail call void @__raw_readsl(ptr noundef %140, ptr noundef %141, i32 noundef 2) #10
  %142 = load ptr, ptr %128, align 4
  %143 = getelementptr i8, ptr %142, i32 64
  %144 = getelementptr i8, ptr %134, i32 16
  tail call void @__raw_readsl(ptr noundef %143, ptr noundef %144, i32 noundef 2) #10
  %145 = load ptr, ptr %128, align 4
  %146 = getelementptr i8, ptr %145, i32 64
  %147 = getelementptr i8, ptr %134, i32 24
  tail call void @__raw_readsl(ptr noundef %146, ptr noundef %147, i32 noundef 2) #10
  %148 = getelementptr i8, ptr %134, i32 32
  %149 = add i32 %135, 32
  %150 = icmp ult i32 %149, %102
  br i1 %150, label %133, label %129

151:                                              ; preds = %151, %131
  %152 = phi i32 [ 0, %131 ], [ %167, %151 ]
  %153 = phi ptr [ %91, %131 ], [ %166, %151 ]
  %154 = tail call fastcc i32 @marvell_nfc_end_cmd(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.27) #10
  %155 = load ptr, ptr %132, align 4
  %156 = getelementptr i8, ptr %155, i32 64
  tail call void @__raw_readsl(ptr noundef %156, ptr noundef %153, i32 noundef 2) #10
  %157 = load ptr, ptr %132, align 4
  %158 = getelementptr i8, ptr %157, i32 64
  %159 = getelementptr i8, ptr %153, i32 8
  tail call void @__raw_readsl(ptr noundef %158, ptr noundef %159, i32 noundef 2) #10
  %160 = load ptr, ptr %132, align 4
  %161 = getelementptr i8, ptr %160, i32 64
  %162 = getelementptr i8, ptr %153, i32 16
  tail call void @__raw_readsl(ptr noundef %161, ptr noundef %162, i32 noundef 2) #10
  %163 = load ptr, ptr %132, align 4
  %164 = getelementptr i8, ptr %163, i32 64
  %165 = getelementptr i8, ptr %153, i32 24
  tail call void @__raw_readsl(ptr noundef %164, ptr noundef %165, i32 noundef 2) #10
  %166 = getelementptr i8, ptr %153, i32 32
  %167 = add i32 %152, 32
  %168 = icmp ult i32 %167, %103
  br i1 %168, label %151, label %169

169:                                              ; preds = %151, %129, %101
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #10
  %170 = load ptr, ptr %16, align 4
  %171 = getelementptr inbounds %struct.marvell_nfc, ptr %170, i32 0, i32 2
  %172 = load ptr, ptr %171, align 4
  %173 = getelementptr i8, ptr %172, i32 20
  %174 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %173) #10, !srcloc !8
  %175 = and i32 %174, 16
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %188

177:                                              ; preds = %169
  %178 = and i32 %174, 8
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %193, label %180

180:                                              ; preds = %177
  %181 = load ptr, ptr %171, align 4
  %182 = getelementptr i8, ptr %181, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %182, i32 %174) #10, !srcloc !9
  %183 = load i32, ptr %86, align 8
  %184 = icmp eq i32 %183, 2
  br i1 %184, label %185, label %193

185:                                              ; preds = %180
  %186 = lshr i32 %174, 16
  %187 = and i32 %186, 31
  br label %193

188:                                              ; preds = %169
  %189 = load ptr, ptr %171, align 4
  %190 = getelementptr i8, ptr %189, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %190, i32 %174) #10, !srcloc !9
  %191 = shl nuw i32 1, %89
  %192 = or i32 %191, %90
  br label %198

193:                                              ; preds = %185, %180, %177
  %194 = phi i32 [ %187, %185 ], [ 0, %177 ], [ 1, %180 ]
  %195 = load i32, ptr %87, align 4
  %196 = add i32 %195, %194
  store i32 %196, ptr %87, align 4
  %197 = tail call i32 @llvm.umax.i32(i32 %95, i32 %194) #10
  br label %198

198:                                              ; preds = %193, %188
  %199 = phi i32 [ %197, %193 ], [ %95, %188 ]
  %200 = phi i32 [ %90, %193 ], [ %192, %188 ]
  %201 = getelementptr i8, ptr %92, i32 %102
  %202 = getelementptr i8, ptr %91, i32 %103
  %203 = add nuw nsw i32 %89, 1
  %204 = load i32, ptr %71, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %88, label %206

206:                                              ; preds = %198, %70
  %207 = phi i32 [ 0, %70 ], [ %199, %198 ]
  %208 = phi i32 [ 0, %70 ], [ %200, %198 ]
  %209 = load ptr, ptr %16, align 4
  %210 = getelementptr inbounds %struct.marvell_nfc, ptr %209, i32 0, i32 2
  %211 = load ptr, ptr %210, align 4
  %212 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %211) #10, !srcloc !8
  %213 = and i32 %212, 1073741824
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %224, label %215

215:                                              ; preds = %206
  %216 = and i32 %212, -1073741825
  %217 = load ptr, ptr %210, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %217, i32 %216) #10, !srcloc !9
  %218 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 2
  %219 = load i32, ptr %218, align 8
  %220 = icmp eq i32 %219, 2
  br i1 %220, label %221, label %224

221:                                              ; preds = %215
  %222 = load ptr, ptr %210, align 4
  %223 = getelementptr i8, ptr %222, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %223, i32 0) #10, !srcloc !9
  br label %224

224:                                              ; preds = %221, %215, %206
  %225 = icmp eq i32 %208, 0
  br i1 %225, label %318, label %226

226:                                              ; preds = %224
  %227 = load i32, ptr %71, align 4
  %228 = icmp sgt i32 %227, 0
  br i1 %228, label %229, label %318

229:                                              ; preds = %226
  %230 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %7, i32 0, i32 7
  %231 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %7, i32 0, i32 4
  %232 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %7, i32 0, i32 8
  %233 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %7, i32 0, i32 9
  %234 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %7, i32 0, i32 10
  %235 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %7, i32 0, i32 2
  %236 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 7
  %237 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52
  %238 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52, i32 1
  br label %239

239:                                              ; preds = %313, %229
  %240 = phi i32 [ 0, %229 ], [ %315, %313 ]
  %241 = phi i32 [ %207, %229 ], [ %314, %313 ]
  %242 = shl nuw i32 1, %240
  %243 = and i32 %242, %208
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %313, label %245

245:                                              ; preds = %239
  %246 = load i32, ptr %8, align 4
  %247 = load i32, ptr %10, align 4
  %248 = add i32 %247, %246
  %249 = load i32, ptr %230, align 4
  %250 = add i32 %248, %249
  %251 = mul i32 %250, %240
  %252 = load i32, ptr %231, align 4
  %253 = icmp slt i32 %240, %252
  br i1 %253, label %254, label %256

254:                                              ; preds = %245
  %255 = load i32, ptr %233, align 4
  br label %259

256:                                              ; preds = %245
  %257 = load i32, ptr %232, align 4
  %258 = load i32, ptr %233, align 4
  br label %259

259:                                              ; preds = %256, %254
  %260 = phi i32 [ %255, %254 ], [ %258, %256 ]
  %261 = phi i32 [ %247, %254 ], [ %258, %256 ]
  %262 = phi i32 [ %246, %254 ], [ %257, %256 ]
  %263 = add i32 %262, %251
  %264 = add i32 %263, %261
  %265 = mul i32 %246, %240
  %266 = mul i32 %247, %240
  %267 = mul i32 %252, %247
  %268 = add i32 %249, 2
  %269 = mul i32 %268, %240
  %270 = add i32 %269, %267
  %271 = add i32 %270, %260
  br i1 %253, label %275, label %272

272:                                              ; preds = %259
  %273 = load i32, ptr %232, align 4
  %274 = load i32, ptr %234, align 4
  br label %275

275:                                              ; preds = %272, %259
  %276 = phi i32 [ %249, %259 ], [ %274, %272 ]
  %277 = phi i32 [ %246, %259 ], [ %273, %272 ]
  %278 = load i32, ptr %7, align 4
  %279 = icmp eq i32 %278, 2048
  br i1 %279, label %280, label %289

280:                                              ; preds = %275
  %281 = load i32, ptr %235, align 4
  %282 = icmp eq i32 %281, 8
  br i1 %282, label %283, label %289

283:                                              ; preds = %280
  %284 = getelementptr i8, ptr %1, i32 %265
  %285 = tail call i32 @nand_change_read_column_op(ptr noundef %0, i32 noundef %251, ptr noundef %284, i32 noundef %277, i1 noundef zeroext false) #10
  %286 = load ptr, ptr %12, align 4
  %287 = getelementptr i8, ptr %286, i32 %266
  %288 = tail call i32 @nand_change_read_column_op(ptr noundef %0, i32 noundef %263, ptr noundef %287, i32 noundef %261, i1 noundef zeroext false) #10
  br label %289

289:                                              ; preds = %283, %280, %275
  %290 = load ptr, ptr %12, align 4
  %291 = getelementptr i8, ptr %290, i32 %271
  %292 = tail call i32 @nand_change_read_column_op(ptr noundef %0, i32 noundef %264, ptr noundef %291, i32 noundef %276, i1 noundef zeroext false) #10
  %293 = getelementptr i8, ptr %1, i32 %265
  %294 = load ptr, ptr %12, align 4
  %295 = getelementptr i8, ptr %294, i32 %266
  %296 = getelementptr i8, ptr %294, i32 %271
  %297 = icmp eq ptr %293, null
  %298 = select i1 %297, i32 0, i32 %277
  %299 = icmp eq ptr %295, null
  %300 = select i1 %299, i32 0, i32 %261
  %301 = icmp eq ptr %296, null
  %302 = select i1 %301, i32 0, i32 %276
  %303 = load i32, ptr %236, align 4
  %304 = tail call i32 @nand_check_erased_ecc_chunk(ptr noundef %293, i32 noundef %298, ptr noundef %296, i32 noundef %302, ptr noundef %295, i32 noundef %300, i32 noundef %303) #10
  %305 = icmp slt i32 %304, 0
  br i1 %305, label %306, label %309

306:                                              ; preds = %289
  %307 = load i32, ptr %238, align 4
  %308 = add i32 %307, 1
  store i32 %308, ptr %238, align 4
  br label %313

309:                                              ; preds = %289
  %310 = load i32, ptr %237, align 4
  %311 = add i32 %310, %304
  store i32 %311, ptr %237, align 4
  %312 = tail call i32 @llvm.umax.i32(i32 %241, i32 %304) #10
  br label %313

313:                                              ; preds = %309, %306, %239
  %314 = phi i32 [ %241, %239 ], [ %241, %306 ], [ %312, %309 ]
  %315 = add nuw nsw i32 %240, 1
  %316 = load i32, ptr %71, align 4
  %317 = icmp slt i32 %315, %316
  br i1 %317, label %239, label %318

318:                                              ; preds = %313, %226, %224
  %319 = phi i32 [ %207, %224 ], [ %207, %226 ], [ %314, %313 ]
  ret i32 %319
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @marvell_nfc_hw_ecc_bch_read_oob_raw(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 24, i32 1
  store i32 -1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 22
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 16
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 %7(ptr noundef %0, ptr noundef %5, i32 noundef 1, i32 noundef %1) #10
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @marvell_nfc_hw_ecc_bch_read_oob(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 24, i32 1
  store i32 -1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 22
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 18
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 %7(ptr noundef %0, ptr noundef %5, i32 noundef 1, i32 noundef %1) #10
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @marvell_nfc_hw_ecc_bch_write_page_raw(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %6, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %6, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, %8
  %12 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %6, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %11, %13
  %15 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %6, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = mul i32 %16, %10
  %18 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %6, i32 0, i32 9
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %17, %19
  %21 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.marvell_nfc, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #10, !srcloc !8
  %28 = and i32 %27, -486572033
  %29 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = or i32 %28, %30
  %32 = load ptr, ptr %25, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %31) #10, !srcloc !9
  %33 = load ptr, ptr %25, align 4
  %34 = getelementptr i8, ptr %33, i32 20
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #10, !srcloc !8
  %36 = load ptr, ptr %25, align 4
  %37 = getelementptr i8, ptr %36, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 4095) #10, !srcloc !9
  %38 = getelementptr inbounds %struct.marvell_nfc, ptr %24, i32 0, i32 8
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, %0
  br i1 %40, label %41, label %45

41:                                               ; preds = %4
  %42 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 7
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, %22
  br i1 %44, label %55, label %45

45:                                               ; preds = %41, %4
  %46 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 4
  %47 = load i32, ptr %46, align 8
  %48 = load ptr, ptr %25, align 4
  %49 = getelementptr i8, ptr %48, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #10, !srcloc !9
  %50 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 5
  %51 = load i32, ptr %50, align 4
  %52 = load ptr, ptr %25, align 4
  %53 = getelementptr i8, ptr %52, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #10, !srcloc !9
  store ptr %0, ptr %38, align 4
  %54 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 7
  store i32 %22, ptr %54, align 4
  br label %55

55:                                               ; preds = %45, %41
  %56 = tail call i32 @nand_prog_page_begin_op(ptr noundef %0, i32 noundef %3, i32 noundef 0, ptr noundef null, i32 noundef 0) #10
  %57 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %6, i32 0, i32 3
  %58 = load i32, ptr %57, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %111

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %6, i32 0, i32 8
  %62 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %6, i32 0, i32 10
  %63 = icmp eq i32 %2, 0
  %64 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  br label %65

65:                                               ; preds = %105, %60
  %66 = phi i32 [ 0, %60 ], [ %108, %105 ]
  %67 = phi i32 [ %20, %60 ], [ %107, %105 ]
  %68 = phi i32 [ 0, %60 ], [ %106, %105 ]
  %69 = phi i32 [ %13, %60 ], [ %81, %105 ]
  %70 = phi i32 [ %10, %60 ], [ %80, %105 ]
  %71 = phi i32 [ %8, %60 ], [ %79, %105 ]
  %72 = load i32, ptr %15, align 4
  %73 = icmp slt i32 %66, %72
  br i1 %73, label %78, label %74

74:                                               ; preds = %65
  %75 = load i32, ptr %61, align 4
  %76 = load i32, ptr %18, align 4
  %77 = load i32, ptr %62, align 4
  br label %78

78:                                               ; preds = %74, %65
  %79 = phi i32 [ %75, %74 ], [ %71, %65 ]
  %80 = phi i32 [ %76, %74 ], [ %70, %65 ]
  %81 = phi i32 [ %77, %74 ], [ %69, %65 ]
  %82 = mul i32 %66, %14
  %83 = tail call i32 @nand_change_write_column_op(ptr noundef %0, i32 noundef %82, ptr noundef null, i32 noundef 0, i1 noundef zeroext false) #10
  %84 = load i32, ptr %7, align 4
  %85 = mul i32 %84, %66
  %86 = getelementptr i8, ptr %1, i32 %85
  %87 = tail call i32 @nand_write_data_op(ptr noundef %0, ptr noundef %86, i32 noundef %79, i1 noundef zeroext false) #10
  br i1 %63, label %105, label %88

88:                                               ; preds = %78
  %89 = icmp eq i32 %80, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %88
  %91 = load ptr, ptr %64, align 4
  %92 = getelementptr i8, ptr %91, i32 %68
  %93 = tail call i32 @nand_write_data_op(ptr noundef %0, ptr noundef %92, i32 noundef %80, i1 noundef zeroext false) #10
  br label %94

94:                                               ; preds = %90, %88
  %95 = icmp eq i32 %81, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %94
  %97 = load ptr, ptr %64, align 4
  %98 = getelementptr i8, ptr %97, i32 %67
  %99 = tail call i32 @nand_write_data_op(ptr noundef %0, ptr noundef %98, i32 noundef %81, i1 noundef zeroext false) #10
  br label %100

100:                                              ; preds = %96, %94
  %101 = add i32 %80, %68
  %102 = add i32 %81, 31
  %103 = and i32 %102, -32
  %104 = add i32 %103, %67
  br label %105

105:                                              ; preds = %100, %78
  %106 = phi i32 [ %101, %100 ], [ %68, %78 ]
  %107 = phi i32 [ %104, %100 ], [ %67, %78 ]
  %108 = add nuw nsw i32 %66, 1
  %109 = load i32, ptr %57, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %65, label %111

111:                                              ; preds = %105, %55
  %112 = tail call i32 @nand_prog_page_end_op(ptr noundef %0) #10
  ret i32 %112
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @marvell_nfc_hw_ecc_bch_write_page(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = alloca %struct.marvell_nfc_op, align 4
  %6 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.nand_interface_config, ptr %7, i32 0, i32 1, i32 1
  %11 = select i1 %9, ptr %10, ptr inttoptr (i32 -22 to ptr)
  %12 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %13, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %13, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.marvell_nfc, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #10, !srcloc !8
  %27 = and i32 %26, -486572033
  %28 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = or i32 %27, %29
  %31 = load ptr, ptr %24, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %30) #10, !srcloc !9
  %32 = load ptr, ptr %24, align 4
  %33 = getelementptr i8, ptr %32, i32 20
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #10, !srcloc !8
  %35 = load ptr, ptr %24, align 4
  %36 = getelementptr i8, ptr %35, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 4095) #10, !srcloc !9
  %37 = getelementptr inbounds %struct.marvell_nfc, ptr %23, i32 0, i32 8
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, %0
  br i1 %39, label %40, label %44

40:                                               ; preds = %4
  %41 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 7
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, %21
  br i1 %43, label %54, label %44

44:                                               ; preds = %40, %4
  %45 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 4
  %46 = load i32, ptr %45, align 8
  %47 = load ptr, ptr %24, align 4
  %48 = getelementptr i8, ptr %47, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #10, !srcloc !9
  %49 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 5
  %50 = load i32, ptr %49, align 4
  %51 = load ptr, ptr %24, align 4
  %52 = getelementptr i8, ptr %51, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #10, !srcloc !9
  store ptr %0, ptr %37, align 4
  %53 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 7
  store i32 %21, ptr %53, align 4
  br label %54

54:                                               ; preds = %44, %40
  %55 = icmp eq i32 %2, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %54
  %57 = load ptr, ptr %14, align 4
  %58 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %59 = load i32, ptr %58, align 4
  tail call void @llvm.memset.p0.i32(ptr align 1 %57, i8 -1, i32 %59, i1 false)
  br label %60

60:                                               ; preds = %56, %54
  %61 = load ptr, ptr %22, align 4
  %62 = getelementptr inbounds %struct.marvell_nfc, ptr %61, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #10, !srcloc !8
  %65 = and i32 %64, 1073741824
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %60
  %68 = or i32 %64, 1073741824
  %69 = load ptr, ptr %62, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %68) #10, !srcloc !9
  %70 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 2
  %71 = load i32, ptr %70, align 8
  %72 = icmp eq i32 %71, 2
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load ptr, ptr %62, align 4
  %75 = getelementptr i8, ptr %74, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 1) #10, !srcloc !9
  br label %76

76:                                               ; preds = %73, %67, %60
  %77 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %13, i32 0, i32 3
  %78 = load i32, ptr %77, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %175

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %13, i32 0, i32 4
  %82 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %13, i32 0, i32 8
  %83 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %13, i32 0, i32 9
  %84 = getelementptr inbounds i32, ptr %5, i32 3
  %85 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 6
  %86 = shl i32 %3, 16
  %87 = getelementptr inbounds [4 x i32], ptr %5, i32 0, i32 1
  %88 = lshr i32 %3, 16
  %89 = and i32 %88, 255
  %90 = getelementptr inbounds [4 x i32], ptr %5, i32 0, i32 2
  br label %91

91:                                               ; preds = %171, %80
  %92 = phi i32 [ 0, %80 ], [ %172, %171 ]
  %93 = phi i32 [ %19, %80 ], [ %104, %171 ]
  %94 = phi i32 [ %17, %80 ], [ %103, %171 ]
  %95 = phi ptr [ %15, %80 ], [ %146, %171 ]
  %96 = phi ptr [ %1, %80 ], [ %145, %171 ]
  %97 = load i32, ptr %81, align 4
  %98 = icmp slt i32 %92, %97
  br i1 %98, label %102, label %99

99:                                               ; preds = %91
  %100 = load i32, ptr %82, align 4
  %101 = load i32, ptr %83, align 4
  br label %102

102:                                              ; preds = %99, %91
  %103 = phi i32 [ %100, %99 ], [ %94, %91 ]
  %104 = phi i32 [ %101, %99 ], [ %93, %91 ]
  %105 = load ptr, ptr %22, align 4
  %106 = load ptr, ptr %12, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %5, i8 0, i64 40, i1 false) #10
  %107 = add i32 %104, %103
  store i32 %107, ptr %84, align 4
  %108 = icmp eq i32 %92, 0
  %109 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %106, i32 0, i32 3
  %110 = load i32, ptr %109, align 4
  br i1 %108, label %111, label %120

111:                                              ; preds = %102
  %112 = icmp eq i32 %110, 1
  %113 = load i32, ptr %85, align 8
  %114 = shl i32 %113, 16
  %115 = and i32 %114, 458752
  %116 = select i1 %112, i32 270532736, i32 -1876950912
  %117 = or i32 %115, %116
  store i32 %117, ptr %5, align 4
  store i32 %86, ptr %87, align 4
  store i32 %89, ptr %90, align 4
  %118 = or i32 %117, 528384
  %119 = add i32 %110, -1
  br label %125

120:                                              ; preds = %102
  %121 = add i32 %110, -1
  %122 = icmp sgt i32 %121, %92
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  store i32 -1340080128, ptr %5, align 4
  br label %125

124:                                              ; preds = %120
  store i32 807403520, ptr %5, align 4
  br label %125

125:                                              ; preds = %124, %123, %111
  %126 = phi i32 [ %121, %124 ], [ %121, %123 ], [ %119, %111 ]
  %127 = phi i32 [ 807931904, %124 ], [ -1339551744, %123 ], [ %118, %111 ]
  %128 = icmp eq i32 %126, %92
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  store i32 %127, ptr %5, align 4
  br label %130

130:                                              ; preds = %129, %125
  %131 = tail call fastcc i32 @marvell_nfc_prepare_cmd(ptr noundef %0) #10
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %144

133:                                              ; preds = %130
  call fastcc void @marvell_nfc_send_cmd(ptr noundef %0, ptr noundef nonnull %5) #10
  %134 = tail call fastcc i32 @marvell_nfc_end_cmd(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.23) #10
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.marvell_nfc, ptr %105, i32 0, i32 2
  %138 = load ptr, ptr %137, align 4
  %139 = getelementptr i8, ptr %138, i32 64
  %140 = lshr i32 %103, 2
  tail call void @__raw_writesl(ptr noundef %139, ptr noundef %96, i32 noundef %140) #10
  %141 = load ptr, ptr %137, align 4
  %142 = getelementptr i8, ptr %141, i32 64
  %143 = lshr i32 %104, 2
  tail call void @__raw_writesl(ptr noundef %142, ptr noundef %95, i32 noundef %143) #10
  br label %144

144:                                              ; preds = %136, %133, %130
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #10
  %145 = getelementptr i8, ptr %96, i32 %103
  %146 = getelementptr i8, ptr %95, i32 %104
  %147 = load ptr, ptr %22, align 4
  %148 = tail call i64 @ktime_get() #10
  %149 = add i64 %148, 100000000
  %150 = getelementptr inbounds %struct.marvell_nfc, ptr %147, i32 0, i32 2
  br label %151

151:                                              ; preds = %156, %144
  %152 = load ptr, ptr %150, align 4
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %152) #10, !srcloc !8
  %154 = and i32 %153, 268435456
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %171, label %156

156:                                              ; preds = %151
  %157 = tail call i64 @ktime_get() #10
  %158 = icmp sgt i64 %157, %149
  br i1 %158, label %159, label %151

159:                                              ; preds = %156
  %160 = load ptr, ptr %150, align 4
  %161 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %160) #10, !srcloc !8
  %162 = and i32 %161, 268435456
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %171, label %164

164:                                              ; preds = %159
  %165 = getelementptr inbounds %struct.marvell_nfc, ptr %147, i32 0, i32 1
  %166 = load ptr, ptr %165, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %166, ptr noundef nonnull @.str.17) #11
  %167 = load ptr, ptr %150, align 4
  %168 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %167) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !15
  %169 = and i32 %168, -268435457
  %170 = load ptr, ptr %150, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %170, i32 %169) #10, !srcloc !9
  br label %171

171:                                              ; preds = %164, %159, %151
  %172 = add nuw nsw i32 %92, 1
  %173 = load i32, ptr %77, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %91, label %175

175:                                              ; preds = %171, %76
  %176 = getelementptr inbounds %struct.nand_sdr_timings, ptr %11, i32 0, i32 2
  %177 = load i64, ptr %176, align 8
  %178 = add i64 %177, 999999999
  %179 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %178, i32 0) #12, !srcloc !12
  %180 = extractvalue { i64, i32 } %179, 0
  %181 = extractvalue { i64, i32 } %179, 1
  %182 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %178, i64 %180, i32 %181) #12, !srcloc !13
  %183 = extractvalue { i64, i32 } %182, 0
  %184 = lshr i64 %183, 29
  %185 = trunc i64 %184 to i32
  %186 = tail call fastcc i32 @marvell_nfc_wait_op(ptr noundef %0, i32 noundef %185)
  %187 = load ptr, ptr %22, align 4
  %188 = getelementptr inbounds %struct.marvell_nfc, ptr %187, i32 0, i32 2
  %189 = load ptr, ptr %188, align 4
  %190 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %189) #10, !srcloc !8
  %191 = and i32 %190, 1073741824
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %202, label %193

193:                                              ; preds = %175
  %194 = and i32 %190, -1073741825
  %195 = load ptr, ptr %188, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %195, i32 %194) #10, !srcloc !9
  %196 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 2
  %197 = load i32, ptr %196, align 8
  %198 = icmp eq i32 %197, 2
  br i1 %198, label %199, label %202

199:                                              ; preds = %193
  %200 = load ptr, ptr %188, align 4
  %201 = getelementptr i8, ptr %200, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %201, i32 0) #10, !srcloc !9
  br label %202

202:                                              ; preds = %199, %193, %175
  ret i32 %186
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @marvell_nfc_hw_ecc_bch_write_oob_raw(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 24, i32 1
  store i32 -1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 22
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  tail call void @llvm.memset.p0.i32(ptr align 1 %5, i8 -1, i32 %7, i1 false)
  %8 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 17
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(ptr noundef %0, ptr noundef %5, i32 noundef 1, i32 noundef %1) #10
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @marvell_nfc_hw_ecc_bch_write_oob(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 24, i32 1
  store i32 -1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 22
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  tail call void @llvm.memset.p0.i32(ptr align 1 %5, i8 -1, i32 %7, i1 false)
  %8 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 21
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(ptr noundef %0, ptr noundef %5, i32 noundef 1, i32 noundef %1) #10
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @marvell_nand_ooblayout_ecc(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %20

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %7, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %7, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = mul i32 %11, %9
  %13 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %7, i32 0, i32 10
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %12, %14
  %16 = getelementptr inbounds %struct.mtd_oob_region, ptr %2, i32 0, i32 1
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = sub i32 %18, %15
  store i32 %19, ptr %2, align 4
  br label %20

20:                                               ; preds = %5, %3
  %21 = phi i32 [ 0, %5 ], [ -34, %3 ]
  ret i32 %21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @marvell_nand_ooblayout_free(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2) #5 {
  %4 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %7, label %28

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 4096
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %5, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 2048
  br i1 %14, label %16, label %15

15:                                               ; preds = %11, %7
  br label %16

16:                                               ; preds = %15, %11
  %17 = phi i32 [ 2, %15 ], [ 6, %11 ]
  store i32 %17, ptr %2, align 4
  %18 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %5, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %5, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = mul i32 %21, %19
  %23 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %5, i32 0, i32 9
  %24 = load i32, ptr %23, align 4
  %25 = sub i32 %24, %17
  %26 = add i32 %25, %22
  %27 = getelementptr inbounds %struct.mtd_oob_region, ptr %2, i32 0, i32 1
  store i32 %26, ptr %27, align 4
  br label %28

28:                                               ; preds = %16, %3
  %29 = phi i32 [ 0, %16 ], [ -34, %3 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @marvell_nfc_hw_ecc_hmg_do_read_page(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, i32 noundef %4) unnamed_addr #2 {
  %6 = alloca [8 x i8], align 8
  %7 = alloca [8 x i8], align 8
  %8 = alloca %struct.marvell_nfc_op, align 4
  %9 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #10
  %13 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 6
  %14 = load i32, ptr %13, align 8
  %15 = shl i32 %14, 16
  %16 = and i32 %15, 458752
  %17 = or i32 %16, 536576
  store i32 %17, ptr %8, align 4
  %18 = getelementptr inbounds i32, ptr %8, i32 1
  %19 = shl i32 %4, 16
  store i32 %19, ptr %18, align 4
  %20 = getelementptr inbounds i32, ptr %8, i32 2
  %21 = lshr i32 %4, 16
  %22 = and i32 %21, 255
  store i32 %22, ptr %20, align 4
  %23 = getelementptr inbounds i32, ptr %8, i32 3
  %24 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %12, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(28) %23, i8 0, i64 28, i1 false)
  %25 = load i32, ptr %24, align 4
  br i1 %3, label %26, label %29

26:                                               ; preds = %5
  %27 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %12, i32 0, i32 7
  %28 = load i32, ptr %27, align 4
  br label %29

29:                                               ; preds = %26, %5
  %30 = phi i32 [ %28, %26 ], [ 0, %5 ]
  %31 = add i32 %30, %25
  %32 = tail call fastcc i32 @marvell_nfc_prepare_cmd(ptr noundef %0)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %99

34:                                               ; preds = %29
  call fastcc void @marvell_nfc_send_cmd(ptr noundef %0, ptr noundef nonnull %8)
  %35 = tail call fastcc i32 @marvell_nfc_end_cmd(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.14)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %99

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.marvell_nfc, ptr %10, i32 0, i32 10
  %39 = load i8, ptr %38, align 4, !range !10
  %40 = icmp eq i8 %39, 0
  %41 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %12, i32 0, i32 5
  %42 = load i32, ptr %41, align 4
  br i1 %40, label %51, label %43

43:                                               ; preds = %37
  %44 = add i32 %42, %31
  tail call fastcc void @marvell_nfc_xfer_data_dma(ptr noundef %10, i32 noundef 2, i32 noundef %44)
  %45 = getelementptr inbounds %struct.marvell_nfc, ptr %10, i32 0, i32 12
  %46 = load ptr, ptr %45, align 4
  %47 = load i32, ptr %41, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1, ptr align 1 %46, i32 %47, i1 false)
  %48 = load ptr, ptr %45, align 4
  %49 = load i32, ptr %41, align 4
  %50 = getelementptr i8, ptr %48, i32 %49
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %2, ptr align 1 %50, i32 %31, i1 false)
  br label %91

51:                                               ; preds = %37
  %52 = and i32 %42, 7
  %53 = and i32 %42, -8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.marvell_nfc, ptr %10, i32 0, i32 2
  br label %57

57:                                               ; preds = %57, %55
  %58 = phi i32 [ 0, %55 ], [ %62, %57 ]
  %59 = load ptr, ptr %56, align 4
  %60 = getelementptr i8, ptr %59, i32 64
  %61 = getelementptr i8, ptr %1, i32 %58
  tail call void @__raw_readsl(ptr noundef %60, ptr noundef %61, i32 noundef 2) #10
  %62 = add nuw i32 %58, 8
  %63 = icmp ult i32 %62, %53
  br i1 %63, label %57, label %64

64:                                               ; preds = %57, %51
  %65 = icmp eq i32 %52, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  store i64 0, ptr %7, align 8, !annotation !16
  %67 = getelementptr inbounds %struct.marvell_nfc, ptr %10, i32 0, i32 2
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr i8, ptr %68, i32 64
  call void @__raw_readsl(ptr noundef %69, ptr noundef nonnull %7, i32 noundef 2) #10
  %70 = getelementptr i8, ptr %1, i32 %53
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %70, ptr nonnull align 8 %7, i32 %52, i1 false) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  br label %71

71:                                               ; preds = %66, %64
  %72 = and i32 %31, 7
  %73 = and i32 %31, -8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.marvell_nfc, ptr %10, i32 0, i32 2
  br label %77

77:                                               ; preds = %77, %75
  %78 = phi i32 [ 0, %75 ], [ %82, %77 ]
  %79 = load ptr, ptr %76, align 4
  %80 = getelementptr i8, ptr %79, i32 64
  %81 = getelementptr i8, ptr %2, i32 %78
  call void @__raw_readsl(ptr noundef %80, ptr noundef %81, i32 noundef 2) #10
  %82 = add nuw i32 %78, 8
  %83 = icmp ult i32 %82, %73
  br i1 %83, label %77, label %84

84:                                               ; preds = %77, %71
  %85 = icmp eq i32 %72, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %84
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  store i64 0, ptr %6, align 8, !annotation !16
  %87 = getelementptr inbounds %struct.marvell_nfc, ptr %10, i32 0, i32 2
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr i8, ptr %88, i32 64
  call void @__raw_readsl(ptr noundef %89, ptr noundef nonnull %6, i32 noundef 2) #10
  %90 = getelementptr i8, ptr %2, i32 %73
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %90, ptr nonnull align 8 %6, i32 %72, i1 false) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  br label %91

91:                                               ; preds = %86, %84, %43
  %92 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 7
  %93 = load i32, ptr %92, align 4
  %94 = getelementptr %struct.marvell_nand_chip, ptr %0, i32 0, i32 9, i32 %93, i32 1
  %95 = load i32, ptr %94, align 4
  %96 = sub i32 8, %95
  %97 = shl nuw i32 1, %96
  %98 = call fastcc i32 @marvell_nfc_end_cmd(ptr noundef %0, i32 noundef %97, ptr noundef nonnull @.str.22) #10
  br label %99

99:                                               ; preds = %91, %34, %29
  %100 = phi i32 [ %98, %91 ], [ %32, %29 ], [ %35, %34 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #10
  ret i32 %100
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @marvell_nfc_prepare_cmd(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i64 @ktime_get() #10
  %5 = add i64 %4, 100000000
  %6 = getelementptr inbounds %struct.marvell_nfc, ptr %3, i32 0, i32 2
  br label %7

7:                                                ; preds = %12, %1
  %8 = load ptr, ptr %6, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #10, !srcloc !8
  %10 = and i32 %9, 268435456
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %7
  %13 = tail call i64 @ktime_get() #10
  %14 = icmp sgt i64 %13, %5
  br i1 %14, label %15, label %7

15:                                               ; preds = %12
  %16 = load ptr, ptr %6, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #10, !srcloc !8
  %18 = and i32 %17, 268435456
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.marvell_nfc, ptr %3, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.17) #11
  %23 = load ptr, ptr %6, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !15
  %25 = and i32 %24, -268435457
  %26 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %25) #10, !srcloc !9
  %27 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.15) #11
  br label %63

28:                                               ; preds = %15, %7
  %29 = load ptr, ptr %6, align 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #10, !srcloc !8
  %31 = load ptr, ptr %6, align 4
  %32 = getelementptr i8, ptr %31, i32 20
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !17
  %34 = load ptr, ptr %6, align 4
  %35 = getelementptr i8, ptr %34, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #10, !srcloc !9
  %36 = or i32 %30, 268435456
  %37 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %36) #10, !srcloc !9
  %38 = tail call i64 @ktime_get() #10
  %39 = add i64 %38, 100000000
  br label %40

40:                                               ; preds = %46, %28
  %41 = load ptr, ptr %6, align 4
  %42 = getelementptr i8, ptr %41, i32 20
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #10, !srcloc !8
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = tail call i64 @ktime_get() #10
  %48 = icmp sgt i64 %47, %39
  br i1 %48, label %49, label %40

49:                                               ; preds = %46
  %50 = load ptr, ptr %6, align 4
  %51 = getelementptr i8, ptr %50, i32 20
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #10, !srcloc !8
  br label %53

53:                                               ; preds = %49, %40
  %54 = phi i32 [ %52, %49 ], [ %43, %40 ]
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.marvell_nfc, ptr %3, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.16) #11
  br label %63

60:                                               ; preds = %53
  %61 = load ptr, ptr %6, align 4
  %62 = getelementptr i8, ptr %61, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 1) #10, !srcloc !9
  br label %63

63:                                               ; preds = %60, %57, %20
  %64 = phi i32 [ -110, %20 ], [ -110, %57 ], [ 0, %60 ]
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @marvell_nfc_send_cmd(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.marvell_nand_chip, ptr %0, i32 0, i32 9, i32 %6, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = load i32, ptr %1, align 4
  %10 = or i32 %9, %8
  %11 = getelementptr inbounds %struct.marvell_nfc, ptr %4, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %10) #10, !srcloc !9
  %14 = getelementptr [4 x i32], ptr %1, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr %11, align 4
  %17 = getelementptr i8, ptr %16, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #10, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !18
  tail call void @arm_heavy_mb() #10
  %18 = getelementptr [4 x i32], ptr %1, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = load ptr, ptr %11, align 4
  %21 = getelementptr i8, ptr %20, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #10, !srcloc !9
  %22 = load i32, ptr %1, align 4
  %23 = and i32 %22, 268435456
  %24 = icmp ne i32 %23, 0
  %25 = and i32 %22, 393216
  %26 = icmp eq i32 %25, 393216
  %27 = or i1 %24, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.marvell_nfc, ptr %4, i32 0, i32 9
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.marvell_nfc_caps, ptr %30, i32 0, i32 4
  %32 = load i8, ptr %31, align 2, !range !10
  %33 = icmp eq i8 %32, 0
  %34 = load i1, ptr @marvell_nfc_send_cmd.__already_done, align 1
  %35 = xor i1 %34, true
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %37, label %38, !prof !19

37:                                               ; preds = %28
  store i1 true, ptr @marvell_nfc_send_cmd.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 653, i32 noundef 9, ptr noundef null) #10
  br label %38

38:                                               ; preds = %37, %28
  br i1 %33, label %44, label %39

39:                                               ; preds = %38
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !20
  tail call void @arm_heavy_mb() #10
  %40 = getelementptr [4 x i32], ptr %1, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = load ptr, ptr %11, align 4
  %43 = getelementptr i8, ptr %42, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #10, !srcloc !9
  br label %44

44:                                               ; preds = %39, %38, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @marvell_nfc_end_cmd(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i64 @ktime_get() #10
  %7 = add i64 %6, 100000000
  %8 = getelementptr inbounds %struct.marvell_nfc, ptr %5, i32 0, i32 2
  br label %9

9:                                                ; preds = %15, %3
  %10 = load ptr, ptr %8, align 4
  %11 = getelementptr i8, ptr %10, i32 20
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #10, !srcloc !8
  %13 = and i32 %12, %1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %9
  %16 = tail call i64 @ktime_get() #10
  %17 = icmp sgt i64 %16, %7
  br i1 %17, label %18, label %9

18:                                               ; preds = %15
  %19 = load ptr, ptr %8, align 4
  %20 = getelementptr i8, ptr %19, i32 20
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #10, !srcloc !8
  br label %22

22:                                               ; preds = %18, %9
  %23 = phi i32 [ %21, %18 ], [ %12, %9 ]
  %24 = and i32 %23, %1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.marvell_nfc, ptr %5, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.19, ptr noundef %2, i32 noundef %23) #11
  %29 = getelementptr inbounds %struct.marvell_nfc, ptr %5, i32 0, i32 11
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %51, label %32

32:                                               ; preds = %26
  %33 = load ptr, ptr %30, align 4
  %34 = getelementptr inbounds %struct.dma_device, ptr %33, i32 0, i32 47
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %51, label %37

37:                                               ; preds = %32
  %38 = tail call i32 %35(ptr noundef nonnull %30) #10
  br label %51

39:                                               ; preds = %22
  %40 = getelementptr inbounds %struct.marvell_nfc, ptr %5, i32 0, i32 10
  %41 = load i8, ptr %40, align 4, !range !10
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr %8, align 4
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #10, !srcloc !8
  %46 = and i32 %45, 536870912
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43, %39
  %49 = load ptr, ptr %8, align 4
  %50 = getelementptr i8, ptr %49, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %1) #10, !srcloc !9
  br label %51

51:                                               ; preds = %48, %43, %37, %32, %26
  %52 = phi i32 [ 0, %48 ], [ -110, %26 ], [ 0, %43 ], [ -110, %32 ], [ -110, %37 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @marvell_nfc_xfer_data_dma(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = alloca %struct.scatterlist, align 4
  %5 = add i32 %2, 31
  %6 = and i32 %5, -32
  %7 = tail call i32 @llvm.smin.i32(i32 %6, i32 2112)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !16
  %8 = getelementptr inbounds %struct.marvell_nfc, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #10, !srcloc !8
  %11 = or i32 %10, 536870912
  %12 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %11) #10, !srcloc !9
  %13 = getelementptr inbounds %struct.marvell_nfc, ptr %0, i32 0, i32 12
  %14 = load ptr, ptr %13, align 4
  call void @sg_init_one(ptr noundef nonnull %4, ptr noundef %14, i32 noundef %7) #10
  %15 = getelementptr inbounds %struct.marvell_nfc, ptr %0, i32 0, i32 11
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.dma_device, ptr %17, i32 0, i32 15
  %19 = load ptr, ptr %18, align 4
  %20 = call i32 @dma_map_sg_attrs(ptr noundef %19, ptr noundef nonnull %4, i32 noundef 1, i32 noundef %1, i32 noundef 0) #10
  %21 = load ptr, ptr %15, align 4
  %22 = icmp eq i32 %1, 2
  %23 = select i1 %22, i32 2, i32 1
  %24 = icmp eq ptr %21, null
  br i1 %24, label %35, label %25

25:                                               ; preds = %3
  %26 = load ptr, ptr %21, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.dma_device, ptr %26, i32 0, i32 39
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = call ptr %30(ptr noundef nonnull %21, ptr noundef nonnull %4, i32 noundef 1, i32 noundef %23, i32 noundef 1, ptr noundef null) #10
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32, %28, %25, %3
  %36 = getelementptr inbounds %struct.marvell_nfc, ptr %0, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.20) #11
  br label %81

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %33, i32 0, i32 4
  %40 = load ptr, ptr %39, align 4
  %41 = call i32 %40(ptr noundef nonnull %33) #10
  %42 = icmp sgt i32 %41, -1
  br i1 %42, label %43, label %81

43:                                               ; preds = %38
  %44 = load ptr, ptr %15, align 4
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.dma_device, ptr %45, i32 0, i32 50
  %47 = load ptr, ptr %46, align 4
  call void %47(ptr noundef %44) #10
  %48 = getelementptr inbounds %struct.marvell_nfc, ptr %0, i32 0, i32 8
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.marvell_nand_chip, ptr %49, i32 0, i32 7
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr %struct.marvell_nand_chip, ptr %49, i32 0, i32 9, i32 %51, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = sub i32 8, %53
  %55 = shl nuw i32 1, %54
  %56 = call fastcc i32 @marvell_nfc_end_cmd(ptr noundef %49, i32 noundef %55, ptr noundef nonnull @.str.22) #10
  %57 = load ptr, ptr %15, align 4
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.dma_device, ptr %58, i32 0, i32 15
  %60 = load ptr, ptr %59, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %60, ptr noundef nonnull %4, i32 noundef 1, i32 noundef %1, i32 noundef 0) #10
  %61 = load ptr, ptr %8, align 4
  %62 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #10, !srcloc !8
  %63 = and i32 %62, -536870913
  %64 = load ptr, ptr %8, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %63) #10, !srcloc !9
  %65 = icmp eq i32 %56, 0
  br i1 %65, label %81, label %66

66:                                               ; preds = %43
  %67 = getelementptr inbounds %struct.marvell_nfc, ptr %0, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = load ptr, ptr %15, align 4
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.dma_device, ptr %70, i32 0, i32 49
  %72 = load ptr, ptr %71, align 4
  %73 = call i32 %72(ptr noundef %69, i32 noundef %41, ptr noundef null) #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.21, i32 noundef %73) #11
  %74 = load ptr, ptr %15, align 4
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.dma_device, ptr %75, i32 0, i32 47
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %66
  %80 = call i32 %77(ptr noundef %74) #10
  br label %81

81:                                               ; preds = %79, %66, %43, %38, %35
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #10
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_check_erased_ecc_chunk(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @marvell_nfc_hw_ecc_hmg_do_write_page(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, i32 noundef %4) unnamed_addr #2 {
  %6 = alloca [8 x i8], align 8
  %7 = alloca [8 x i8], align 8
  %8 = alloca %struct.marvell_nfc_op, align 4
  %9 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.nand_interface_config, ptr %10, i32 0, i32 1, i32 1
  %13 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #10
  %17 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 6
  %18 = load i32, ptr %17, align 8
  %19 = shl i32 %18, 16
  %20 = and i32 %19, 458752
  %21 = or i32 %20, 2625664
  store i32 %21, ptr %8, align 4
  %22 = getelementptr inbounds i32, ptr %8, i32 1
  %23 = shl i32 %4, 16
  store i32 %23, ptr %22, align 4
  %24 = getelementptr inbounds i32, ptr %8, i32 2
  %25 = lshr i32 %4, 16
  %26 = and i32 %25, 255
  store i32 %26, ptr %24, align 4
  %27 = getelementptr inbounds i32, ptr %8, i32 3
  %28 = icmp eq i32 %11, 0
  %29 = select i1 %28, ptr %12, ptr inttoptr (i32 -22 to ptr)
  %30 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %16, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(28) %27, i8 0, i64 28, i1 false)
  %31 = load i32, ptr %30, align 4
  br i1 %3, label %32, label %35

32:                                               ; preds = %5
  %33 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %16, i32 0, i32 7
  %34 = load i32, ptr %33, align 4
  br label %35

35:                                               ; preds = %32, %5
  %36 = phi i32 [ %34, %32 ], [ 0, %5 ]
  %37 = add i32 %36, %31
  %38 = tail call fastcc i32 @marvell_nfc_prepare_cmd(ptr noundef %0)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %124

40:                                               ; preds = %35
  call fastcc void @marvell_nfc_send_cmd(ptr noundef %0, ptr noundef nonnull %8)
  %41 = tail call fastcc i32 @marvell_nfc_end_cmd(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.23)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %124

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.marvell_nfc, ptr %14, i32 0, i32 10
  %45 = load i8, ptr %44, align 4, !range !10
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %61, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.marvell_nfc, ptr %14, i32 0, i32 12
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %16, i32 0, i32 5
  %51 = load i32, ptr %50, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %49, ptr align 1 %1, i32 %51, i1 false)
  %52 = load ptr, ptr %48, align 4
  %53 = load i32, ptr %50, align 4
  %54 = getelementptr i8, ptr %52, i32 %53
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %54, ptr align 1 %2, i32 %37, i1 false)
  %55 = load i32, ptr %50, align 4
  %56 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %16, i32 0, i32 7
  %57 = load i32, ptr %56, align 4
  %58 = add i32 %57, %55
  %59 = load i32, ptr %30, align 4
  %60 = add i32 %58, %59
  tail call fastcc void @marvell_nfc_xfer_data_dma(ptr noundef %14, i32 noundef 1, i32 noundef %60)
  br label %103

61:                                               ; preds = %43
  %62 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %16, i32 0, i32 5
  %63 = load i32, ptr %62, align 4
  %64 = and i32 %63, 7
  %65 = and i32 %63, -8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.marvell_nfc, ptr %14, i32 0, i32 2
  br label %69

69:                                               ; preds = %69, %67
  %70 = phi i32 [ 0, %67 ], [ %74, %69 ]
  %71 = load ptr, ptr %68, align 4
  %72 = getelementptr i8, ptr %71, i32 64
  %73 = getelementptr i8, ptr %1, i32 %70
  tail call void @__raw_writesl(ptr noundef %72, ptr noundef %73, i32 noundef 2) #10
  %74 = add nuw i32 %70, 8
  %75 = icmp ult i32 %74, %65
  br i1 %75, label %69, label %76

76:                                               ; preds = %69, %61
  %77 = icmp eq i32 %64, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  store i64 0, ptr %7, align 8, !annotation !16
  %79 = getelementptr i8, ptr %1, i32 %65
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 8 %7, ptr align 1 %79, i32 %64, i1 false) #10
  %80 = getelementptr inbounds %struct.marvell_nfc, ptr %14, i32 0, i32 2
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr i8, ptr %81, i32 64
  call void @__raw_writesl(ptr noundef %82, ptr noundef nonnull %7, i32 noundef 2) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  br label %83

83:                                               ; preds = %78, %76
  %84 = and i32 %37, 7
  %85 = and i32 %37, -8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.marvell_nfc, ptr %14, i32 0, i32 2
  br label %89

89:                                               ; preds = %89, %87
  %90 = phi i32 [ 0, %87 ], [ %94, %89 ]
  %91 = load ptr, ptr %88, align 4
  %92 = getelementptr i8, ptr %91, i32 64
  %93 = getelementptr i8, ptr %2, i32 %90
  call void @__raw_writesl(ptr noundef %92, ptr noundef %93, i32 noundef 2) #10
  %94 = add nuw i32 %90, 8
  %95 = icmp ult i32 %94, %85
  br i1 %95, label %89, label %96

96:                                               ; preds = %89, %83
  %97 = icmp eq i32 %84, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %96
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  store i64 0, ptr %6, align 8, !annotation !16
  %99 = getelementptr i8, ptr %2, i32 %85
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 8 %6, ptr align 1 %99, i32 %84, i1 false) #10
  %100 = getelementptr inbounds %struct.marvell_nfc, ptr %14, i32 0, i32 2
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr i8, ptr %101, i32 64
  call void @__raw_writesl(ptr noundef %102, ptr noundef nonnull %6, i32 noundef 2) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  br label %103

103:                                              ; preds = %98, %96, %47
  %104 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 7
  %105 = load i32, ptr %104, align 4
  %106 = getelementptr %struct.marvell_nand_chip, ptr %0, i32 0, i32 9, i32 %105, i32 1
  %107 = load i32, ptr %106, align 4
  %108 = sub i32 8, %107
  %109 = shl nuw i32 1, %108
  %110 = call fastcc i32 @marvell_nfc_end_cmd(ptr noundef %0, i32 noundef %109, ptr noundef nonnull @.str.22) #10
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %124

112:                                              ; preds = %103
  %113 = getelementptr inbounds %struct.nand_sdr_timings, ptr %29, i32 0, i32 2
  %114 = load i64, ptr %113, align 8
  %115 = add i64 %114, 999999999
  %116 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %115, i32 0) #12, !srcloc !12
  %117 = extractvalue { i64, i32 } %116, 0
  %118 = extractvalue { i64, i32 } %116, 1
  %119 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %115, i64 %117, i32 %118) #12, !srcloc !13
  %120 = extractvalue { i64, i32 } %119, 0
  %121 = lshr i64 %120, 29
  %122 = trunc i64 %121 to i32
  %123 = call fastcc i32 @marvell_nfc_wait_op(ptr noundef %0, i32 noundef %122)
  br label %124

124:                                              ; preds = %112, %103, %40, %35
  %125 = phi i32 [ %123, %112 ], [ %38, %35 ], [ %41, %40 ], [ %110, %103 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #10
  ret i32 %125
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @marvell_nfc_wait_op(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq i32 %1, 0
  %6 = select i1 %5, i32 1000, i32 %1
  %7 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 50
  %8 = load i8, ptr %7, align 4, !range !10
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %2
  %11 = load volatile i32, ptr @jiffies, align 64
  %12 = tail call i32 @__msecs_to_jiffies(i32 noundef %6) #10
  %13 = getelementptr inbounds %struct.marvell_nfc, ptr %4, i32 0, i32 2
  %14 = add i32 %12, %11
  br label %15

15:                                               ; preds = %23, %10
  %16 = load ptr, ptr %13, align 4
  %17 = getelementptr i8, ptr %16, i32 20
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #10, !srcloc !8
  %19 = lshr i32 %18, 1
  %20 = or i32 %19, %18
  %21 = and i32 %20, 2048
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !22
  %24 = load volatile i32, ptr @jiffies, align 64
  %25 = sub i32 %24, %14
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %15, label %42

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.marvell_nfc, ptr %4, i32 0, i32 5
  store i32 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.marvell_nfc, ptr %4, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %29, ptr noundef nonnull @.str.25, ptr noundef nonnull @init_completion.__key) #10
  %30 = getelementptr inbounds %struct.marvell_nfc, ptr %4, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #10, !srcloc !8
  %33 = and i32 %32, -2049
  %34 = load ptr, ptr %30, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %33) #10, !srcloc !9
  %35 = tail call i32 @__msecs_to_jiffies(i32 noundef %6) #10
  %36 = tail call i32 @wait_for_completion_timeout(ptr noundef %28, i32 noundef %35) #10
  %37 = load ptr, ptr %30, align 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #10, !srcloc !8
  %39 = or i32 %38, 2048
  %40 = load ptr, ptr %30, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %39) #10, !srcloc !9
  %41 = icmp ne i32 %36, 0
  br label %42

42:                                               ; preds = %27, %23, %15
  %43 = phi i1 [ %41, %27 ], [ %22, %15 ], [ %22, %23 ]
  %44 = getelementptr inbounds %struct.marvell_nfc, ptr %4, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr i8, ptr %45, i32 20
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #10, !srcloc !8
  %48 = load ptr, ptr %44, align 4
  %49 = getelementptr i8, ptr %48, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 6144) #10, !srcloc !9
  %50 = and i32 %47, 6144
  %51 = icmp ne i32 %50, 0
  %52 = select i1 %43, i1 true, i1 %51
  br i1 %52, label %56, label %53

53:                                               ; preds = %42
  %54 = getelementptr inbounds %struct.marvell_nfc, ptr %4, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.24) #11
  br label %56

56:                                               ; preds = %53, %42
  %57 = phi i32 [ -110, %53 ], [ 0, %42 ]
  ret i32 %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_page_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_change_read_column_op(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_data_op(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_prog_page_begin_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_change_write_column_op(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_write_data_op(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_prog_page_end_op(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_op_parser_exec_op(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @marvell_nfc_monolithic_access_exec(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = alloca %struct.marvell_nfc_op, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !16
  call fastcc void @marvell_nfc_parse_instructions(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  %4 = getelementptr inbounds %struct.marvell_nfc_op, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 2
  %8 = call fastcc i32 @marvell_nfc_prepare_cmd(ptr noundef %0)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %114

10:                                               ; preds = %2
  call fastcc void @marvell_nfc_send_cmd(ptr noundef %0, ptr noundef nonnull %3)
  %11 = call fastcc i32 @marvell_nfc_end_cmd(ptr noundef %0, i32 noundef 6, ptr noundef nonnull @.str.35)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %114

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.marvell_nfc_op, ptr %3, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %13
  %18 = icmp ult i32 %15, 10000
  br i1 %18, label %19, label %24

19:                                               ; preds = %17
  %20 = trunc i32 %15 to i16
  %21 = add nuw nsw i16 %20, 999
  %22 = udiv i16 %21, 1000
  %23 = zext i16 %22 to i32
  br label %27

24:                                               ; preds = %17
  %25 = add i32 %15, 999
  %26 = udiv i32 %25, 1000
  br label %27

27:                                               ; preds = %24, %19
  %28 = phi i32 [ %23, %19 ], [ %26, %24 ]
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %29(i32 noundef %28) #10
  br label %30

30:                                               ; preds = %27, %13
  br i1 %7, label %31, label %55

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct.marvell_nfc_op, ptr %3, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = call fastcc i32 @marvell_nfc_wait_op(ptr noundef %0, i32 noundef %33)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %114

38:                                               ; preds = %35, %31
  %39 = getelementptr inbounds %struct.marvell_nfc_op, ptr %3, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %55, label %42

42:                                               ; preds = %38
  %43 = icmp ult i32 %40, 10000
  br i1 %43, label %44, label %49

44:                                               ; preds = %42
  %45 = trunc i32 %40 to i16
  %46 = add nuw nsw i16 %45, 999
  %47 = udiv i16 %46, 1000
  %48 = zext i16 %47 to i32
  br label %52

49:                                               ; preds = %42
  %50 = add i32 %40, 999
  %51 = udiv i32 %50, 1000
  br label %52

52:                                               ; preds = %49, %44
  %53 = phi i32 [ %51, %49 ], [ %48, %44 ]
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %54(i32 noundef %53) #10
  br label %55

55:                                               ; preds = %52, %38, %30
  call fastcc void @marvell_nfc_xfer_data_pio(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  %56 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 7
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr %struct.marvell_nand_chip, ptr %0, i32 0, i32 9, i32 %57, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = sub i32 8, %59
  %61 = shl nuw i32 1, %60
  %62 = call fastcc i32 @marvell_nfc_end_cmd(ptr noundef %0, i32 noundef %61, ptr noundef nonnull @.str.22) #10
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %114

64:                                               ; preds = %55
  %65 = getelementptr inbounds %struct.marvell_nfc_op, ptr %3, i32 0, i32 4
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %81, label %68

68:                                               ; preds = %64
  %69 = icmp ult i32 %66, 10000
  br i1 %69, label %70, label %75

70:                                               ; preds = %68
  %71 = trunc i32 %66 to i16
  %72 = add nuw nsw i16 %71, 999
  %73 = udiv i16 %72, 1000
  %74 = zext i16 %73 to i32
  br label %78

75:                                               ; preds = %68
  %76 = add i32 %66, 999
  %77 = udiv i32 %76, 1000
  br label %78

78:                                               ; preds = %75, %70
  %79 = phi i32 [ %74, %70 ], [ %77, %75 ]
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %80(i32 noundef %79) #10
  br label %81

81:                                               ; preds = %78, %64
  br i1 %7, label %114, label %82

82:                                               ; preds = %81
  %83 = getelementptr inbounds %struct.marvell_nfc_op, ptr %3, i32 0, i32 2
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %82
  %87 = call fastcc i32 @marvell_nfc_wait_op(ptr noundef %0, i32 noundef %84)
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %114

89:                                               ; preds = %86, %82
  %90 = getelementptr inbounds %struct.marvell_nfc_op, ptr %3, i32 0, i32 3
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %106, label %93

93:                                               ; preds = %89
  %94 = icmp ult i32 %91, 10000
  br i1 %94, label %95, label %100

95:                                               ; preds = %93
  %96 = trunc i32 %91 to i16
  %97 = add nuw nsw i16 %96, 999
  %98 = udiv i16 %97, 1000
  %99 = zext i16 %98 to i32
  br label %103

100:                                              ; preds = %93
  %101 = add i32 %91, 999
  %102 = udiv i32 %101, 1000
  br label %103

103:                                              ; preds = %100, %95
  %104 = phi i32 [ %99, %95 ], [ %102, %100 ]
  %105 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %105(i32 noundef %104) #10
  br label %106

106:                                              ; preds = %103, %89
  %107 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.marvell_nfc, ptr %108, i32 0, i32 2
  %110 = load ptr, ptr %109, align 4
  %111 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %110) #10, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !23
  %112 = and i32 %111, -268435457
  %113 = load ptr, ptr %109, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 %112) #10, !srcloc !9
  br label %114

114:                                              ; preds = %106, %86, %81, %55, %35, %10, %2
  %115 = phi i32 [ %8, %2 ], [ %11, %10 ], [ %36, %35 ], [ %62, %55 ], [ %87, %86 ], [ 0, %81 ], [ 0, %106 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #10
  ret i32 %115
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @marvell_nfc_naked_access_exec(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = alloca %struct.marvell_nfc_op, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !16
  call fastcc void @marvell_nfc_parse_instructions(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 522190847
  store i32 %5, ptr %3, align 4
  %6 = getelementptr inbounds %struct.nand_subop, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %7, align 4
  switch i32 %8, label %17 [
    i32 0, label %9
    i32 1, label %11
    i32 2, label %13
    i32 3, label %15
  ]

9:                                                ; preds = %2
  %10 = or i32 %5, 12582912
  store i32 %10, ptr %3, align 4
  br label %17

11:                                               ; preds = %2
  %12 = or i32 %5, 14680064
  store i32 %12, ptr %3, align 4
  br label %17

13:                                               ; preds = %2
  %14 = or i32 %5, 536870912
  store i32 %14, ptr %3, align 4
  br label %17

15:                                               ; preds = %2
  %16 = or i32 %5, 538968064
  store i32 %16, ptr %3, align 4
  br label %17

17:                                               ; preds = %15, %13, %11, %9, %2
  %18 = call fastcc i32 @marvell_nfc_prepare_cmd(ptr noundef %0)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %71

20:                                               ; preds = %17
  call fastcc void @marvell_nfc_send_cmd(ptr noundef %0, ptr noundef nonnull %3)
  %21 = getelementptr inbounds %struct.marvell_nfc_op, ptr %3, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %47

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 7
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr %struct.marvell_nand_chip, ptr %0, i32 0, i32 9, i32 %26, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = sub i32 8, %28
  %30 = shl nuw i32 1, %29
  %31 = call fastcc i32 @marvell_nfc_end_cmd(ptr noundef %0, i32 noundef %30, ptr noundef nonnull @.str.22) #10
  %32 = getelementptr inbounds %struct.marvell_nfc_op, ptr %3, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %71, label %35

35:                                               ; preds = %24
  %36 = icmp ult i32 %33, 10000
  br i1 %36, label %37, label %43

37:                                               ; preds = %35
  %38 = trunc i32 %33 to i16
  %39 = add nuw nsw i16 %38, 999
  %40 = udiv i16 %39, 1000
  %41 = zext i16 %40 to i32
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %42(i32 noundef %41) #10
  br label %71

43:                                               ; preds = %35
  %44 = add i32 %33, 999
  %45 = udiv i32 %44, 1000
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %46(i32 noundef %45) #10
  br label %71

47:                                               ; preds = %20
  %48 = call fastcc i32 @marvell_nfc_end_cmd(ptr noundef %0, i32 noundef 6, ptr noundef nonnull @.str.35)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %71

50:                                               ; preds = %47
  call fastcc void @marvell_nfc_xfer_data_pio(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  %51 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 7
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr %struct.marvell_nand_chip, ptr %0, i32 0, i32 9, i32 %52, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = sub i32 8, %54
  %56 = shl nuw i32 1, %55
  %57 = call fastcc i32 @marvell_nfc_end_cmd(ptr noundef %0, i32 noundef %56, ptr noundef nonnull @.str.22) #10
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %50
  %60 = load ptr, ptr %6, align 4
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 3
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.marvell_nfc, ptr %65, i32 0, i32 2
  %67 = load ptr, ptr %66, align 4
  %68 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #10, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !24
  %69 = and i32 %68, -268435457
  %70 = load ptr, ptr %66, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %69) #10, !srcloc !9
  br label %71

71:                                               ; preds = %63, %59, %50, %47, %43, %37, %24, %17
  %72 = phi i32 [ %18, %17 ], [ %48, %47 ], [ %57, %50 ], [ 0, %63 ], [ 0, %59 ], [ %31, %24 ], [ %31, %37 ], [ %31, %43 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #10
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @marvell_nfc_naked_waitrdy_exec(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = alloca %struct.marvell_nfc_op, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !16
  call fastcc void @marvell_nfc_parse_instructions(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  %4 = getelementptr inbounds %struct.marvell_nfc_op, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = call fastcc i32 @marvell_nfc_wait_op(ptr noundef %0, i32 noundef %5)
  %7 = getelementptr inbounds %struct.marvell_nfc_op, ptr %3, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %2
  %11 = icmp ult i32 %8, 10000
  br i1 %11, label %12, label %17

12:                                               ; preds = %10
  %13 = trunc i32 %8 to i16
  %14 = add nuw nsw i16 %13, 999
  %15 = udiv i16 %14, 1000
  %16 = zext i16 %15 to i32
  br label %20

17:                                               ; preds = %10
  %18 = add i32 %8, 999
  %19 = udiv i32 %18, 1000
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi i32 [ %16, %12 ], [ %19, %17 ]
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %22(i32 noundef %21) #10
  br label %23

23:                                               ; preds = %20, %2
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #10
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @marvell_nfc_parse_instructions(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %5 = load ptr, ptr %4, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(40) %2, i8 0, i32 40, i1 false)
  %6 = getelementptr inbounds %struct.nand_subop, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %144, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.nand_subop, ptr %1, i32 0, i32 1
  %11 = getelementptr inbounds %struct.marvell_nfc_op, ptr %2, i32 0, i32 2
  %12 = getelementptr inbounds %struct.marvell_nfc_op, ptr %2, i32 0, i32 3
  %13 = getelementptr inbounds %struct.marvell_nfc_op, ptr %2, i32 0, i32 6
  %14 = getelementptr inbounds %struct.marvell_nfc_op, ptr %2, i32 0, i32 5
  %15 = getelementptr inbounds %struct.marvell_nfc, ptr %5, i32 0, i32 9
  %16 = getelementptr [4 x i32], ptr %2, i32 0, i32 3
  %17 = getelementptr inbounds %struct.marvell_nfc_op, ptr %2, i32 0, i32 4
  %18 = getelementptr [4 x i32], ptr %2, i32 0, i32 1
  %19 = getelementptr [4 x i32], ptr %2, i32 0, i32 2
  %20 = getelementptr inbounds %struct.marvell_nfc_op, ptr %2, i32 0, i32 1
  br label %21

21:                                               ; preds = %139, %9
  %22 = phi i1 [ true, %9 ], [ %140, %139 ]
  %23 = phi i32 [ 0, %9 ], [ %141, %139 ]
  %24 = load ptr, ptr %10, align 4
  %25 = getelementptr %struct.nand_op_instr, ptr %24, i32 %23
  %26 = load i32, ptr %25, align 4
  switch i32 %26, label %139 [
    i32 0, label %27
    i32 1, label %41
    i32 2, label %102
    i32 3, label %116
    i32 4, label %131
  ]

27:                                               ; preds = %21
  %28 = getelementptr %struct.nand_op_instr, ptr %24, i32 %23, i32 1
  %29 = load i8, ptr %28, align 4
  %30 = zext i8 %29 to i32
  br i1 %22, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, ptr %2, align 4
  %33 = or i32 %32, %30
  br label %39

34:                                               ; preds = %27
  %35 = shl nuw nsw i32 %30, 8
  %36 = load i32, ptr %2, align 4
  %37 = or i32 %35, %36
  %38 = or i32 %37, 524288
  br label %39

39:                                               ; preds = %34, %31
  %40 = phi i32 [ %38, %34 ], [ %33, %31 ]
  store i32 %40, ptr %2, align 4
  br label %134

41:                                               ; preds = %21
  %42 = tail call i32 @nand_subop_get_addr_start_off(ptr noundef %1, i32 noundef %23) #10
  %43 = tail call i32 @nand_subop_get_num_addr_cyc(ptr noundef %1, i32 noundef %23) #10
  %44 = getelementptr %struct.nand_op_instr, ptr %24, i32 %23, i32 1, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr i8, ptr %45, i32 %42
  %47 = shl i32 %43, 16
  %48 = and i32 %47, 458752
  %49 = load i32, ptr %2, align 4
  %50 = or i32 %49, %48
  store i32 %50, ptr %2, align 4
  %51 = tail call i32 @llvm.umin.i32(i32 %43, i32 4)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %79, label %53

53:                                               ; preds = %41
  %54 = load i32, ptr %18, align 4
  %55 = load i8, ptr %46, align 1
  %56 = zext i8 %55 to i32
  %57 = or i32 %54, %56
  store i32 %57, ptr %18, align 4
  %58 = icmp eq i32 %51, 1
  br i1 %58, label %79, label %59

59:                                               ; preds = %53
  %60 = getelementptr i8, ptr %46, i32 1
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  %63 = shl nuw nsw i32 %62, 8
  %64 = or i32 %63, %57
  store i32 %64, ptr %18, align 4
  %65 = icmp eq i32 %51, 2
  br i1 %65, label %79, label %66

66:                                               ; preds = %59
  %67 = getelementptr i8, ptr %46, i32 2
  %68 = load i8, ptr %67, align 1
  %69 = zext i8 %68 to i32
  %70 = shl nuw nsw i32 %69, 16
  %71 = or i32 %70, %64
  store i32 %71, ptr %18, align 4
  %72 = icmp eq i32 %51, 3
  br i1 %72, label %79, label %73

73:                                               ; preds = %66
  %74 = getelementptr i8, ptr %46, i32 3
  %75 = load i8, ptr %74, align 1
  %76 = zext i8 %75 to i32
  %77 = shl nuw i32 %76, 24
  %78 = or i32 %77, %71
  store i32 %78, ptr %18, align 4
  br label %79

79:                                               ; preds = %73, %66, %59, %53, %41
  %80 = icmp ugt i32 %43, 4
  br i1 %80, label %81, label %134

81:                                               ; preds = %79
  %82 = getelementptr i8, ptr %46, i32 4
  %83 = load i8, ptr %82, align 1
  %84 = zext i8 %83 to i32
  %85 = load i32, ptr %19, align 4
  %86 = or i32 %85, %84
  store i32 %86, ptr %19, align 4
  %87 = icmp eq i32 %43, 5
  br i1 %87, label %134, label %88

88:                                               ; preds = %81
  %89 = getelementptr i8, ptr %46, i32 5
  %90 = load i8, ptr %89, align 1
  %91 = zext i8 %90 to i32
  %92 = shl nuw nsw i32 %91, 16
  %93 = load i32, ptr %16, align 4
  %94 = or i32 %92, %93
  store i32 %94, ptr %16, align 4
  %95 = icmp eq i32 %43, 7
  br i1 %95, label %96, label %134

96:                                               ; preds = %88
  %97 = getelementptr i8, ptr %46, i32 6
  %98 = load i8, ptr %97, align 1
  %99 = zext i8 %98 to i32
  %100 = shl nuw i32 %99, 24
  %101 = or i32 %100, %94
  store i32 %101, ptr %16, align 4
  br label %134

102:                                              ; preds = %21
  store ptr %25, ptr %13, align 4
  store i32 %23, ptr %14, align 4
  %103 = load ptr, ptr %15, align 4
  %104 = getelementptr inbounds %struct.marvell_nfc_caps, ptr %103, i32 0, i32 4
  %105 = load i8, ptr %104, align 2, !range !10
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %134, label %107

107:                                              ; preds = %102
  %108 = load i32, ptr %2, align 4
  %109 = or i32 %108, 268435456
  store i32 %109, ptr %2, align 4
  %110 = tail call i32 @nand_subop_get_data_len(ptr noundef %1, i32 noundef %23) #10
  %111 = add i32 %110, -1
  %112 = or i32 %111, 7
  %113 = add i32 %112, 1
  %114 = load i32, ptr %16, align 4
  %115 = or i32 %113, %114
  store i32 %115, ptr %16, align 4
  br label %134

116:                                              ; preds = %21
  store ptr %25, ptr %13, align 4
  store i32 %23, ptr %14, align 4
  %117 = load i32, ptr %2, align 4
  %118 = or i32 %117, 2097152
  store i32 %118, ptr %2, align 4
  %119 = load ptr, ptr %15, align 4
  %120 = getelementptr inbounds %struct.marvell_nfc_caps, ptr %119, i32 0, i32 4
  %121 = load i8, ptr %120, align 2, !range !10
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %134, label %123

123:                                              ; preds = %116
  %124 = or i32 %117, 270532608
  store i32 %124, ptr %2, align 4
  %125 = tail call i32 @nand_subop_get_data_len(ptr noundef %1, i32 noundef %23) #10
  %126 = add i32 %125, -1
  %127 = or i32 %126, 7
  %128 = add i32 %127, 1
  %129 = load i32, ptr %16, align 4
  %130 = or i32 %128, %129
  store i32 %130, ptr %16, align 4
  br label %134

131:                                              ; preds = %21
  %132 = getelementptr %struct.nand_op_instr, ptr %24, i32 %23, i32 1
  %133 = load i32, ptr %132, align 4
  store i32 %133, ptr %11, align 4
  br label %134

134:                                              ; preds = %131, %123, %116, %107, %102, %96, %88, %81, %79, %39
  %135 = phi ptr [ %12, %131 ], [ %20, %39 ], [ %20, %79 ], [ %20, %81 ], [ %20, %96 ], [ %20, %88 ], [ %17, %107 ], [ %17, %102 ], [ %17, %123 ], [ %17, %116 ]
  %136 = phi i1 [ %22, %131 ], [ false, %39 ], [ %22, %79 ], [ %22, %81 ], [ %22, %96 ], [ %22, %88 ], [ %22, %107 ], [ %22, %102 ], [ %22, %123 ], [ %22, %116 ]
  %137 = getelementptr %struct.nand_op_instr, ptr %24, i32 %23, i32 2
  %138 = load i32, ptr %137, align 4
  store i32 %138, ptr %135, align 4
  br label %139

139:                                              ; preds = %134, %21
  %140 = phi i1 [ %22, %21 ], [ %136, %134 ]
  %141 = add nuw i32 %23, 1
  %142 = load i32, ptr %6, align 4
  %143 = icmp ult i32 %141, %142
  br i1 %143, label %21, label %144

144:                                              ; preds = %139, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @marvell_nfc_xfer_data_pio(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = alloca [8 x i8], align 8
  %5 = alloca [8 x i8], align 8
  %6 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.marvell_nfc_op, ptr %2, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.marvell_nfc_op, ptr %2, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @nand_subop_get_data_len(ptr noundef %1, i32 noundef %11) #10
  %13 = tail call i32 @nand_subop_get_data_start_off(ptr noundef %1, i32 noundef %11) #10
  %14 = load i32, ptr %9, align 4
  %15 = icmp eq i32 %14, 2
  %16 = getelementptr inbounds %struct.nand_op_instr, ptr %9, i32 0, i32 1, i32 0, i32 2
  %17 = load i8, ptr %16, align 4, !range !10
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr %6, align 4
  %26 = getelementptr inbounds %struct.marvell_nfc, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #10, !srcloc !8
  %29 = and i32 %28, -201326593
  %30 = load ptr, ptr %26, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %29) #10, !srcloc !9
  br label %31

31:                                               ; preds = %24, %19, %3
  %32 = getelementptr inbounds %struct.nand_op_instr, ptr %9, i32 0, i32 1, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 %13
  %35 = and i32 %12, 7
  %36 = and i32 %12, -8
  %37 = icmp eq i32 %36, 0
  br i1 %15, label %38, label %55

38:                                               ; preds = %31
  br i1 %37, label %48, label %39

39:                                               ; preds = %38
  %40 = getelementptr inbounds %struct.marvell_nfc, ptr %7, i32 0, i32 2
  br label %41

41:                                               ; preds = %41, %39
  %42 = phi i32 [ 0, %39 ], [ %46, %41 ]
  %43 = load ptr, ptr %40, align 4
  %44 = getelementptr i8, ptr %43, i32 64
  %45 = getelementptr i8, ptr %34, i32 %42
  tail call void @__raw_readsl(ptr noundef %44, ptr noundef %45, i32 noundef 2) #10
  %46 = add nuw i32 %42, 8
  %47 = icmp ult i32 %46, %36
  br i1 %47, label %41, label %48

48:                                               ; preds = %41, %38
  %49 = icmp eq i32 %35, 0
  br i1 %49, label %72, label %50

50:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  store i64 0, ptr %5, align 8, !annotation !16
  %51 = getelementptr inbounds %struct.marvell_nfc, ptr %7, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr i8, ptr %52, i32 64
  call void @__raw_readsl(ptr noundef %53, ptr noundef nonnull %5, i32 noundef 2) #10
  %54 = getelementptr i8, ptr %34, i32 %36
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %54, ptr nonnull align 8 %5, i32 %35, i1 false) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  br label %72

55:                                               ; preds = %31
  br i1 %37, label %65, label %56

56:                                               ; preds = %55
  %57 = getelementptr inbounds %struct.marvell_nfc, ptr %7, i32 0, i32 2
  br label %58

58:                                               ; preds = %58, %56
  %59 = phi i32 [ 0, %56 ], [ %63, %58 ]
  %60 = load ptr, ptr %57, align 4
  %61 = getelementptr i8, ptr %60, i32 64
  %62 = getelementptr i8, ptr %34, i32 %59
  tail call void @__raw_writesl(ptr noundef %61, ptr noundef %62, i32 noundef 2) #10
  %63 = add nuw i32 %59, 8
  %64 = icmp ult i32 %63, %36
  br i1 %64, label %58, label %65

65:                                               ; preds = %58, %55
  %66 = icmp eq i32 %35, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  store i64 0, ptr %4, align 8, !annotation !16
  %68 = getelementptr i8, ptr %34, i32 %36
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 8 %4, ptr align 1 %68, i32 %35, i1 false) #10
  %69 = getelementptr inbounds %struct.marvell_nfc, ptr %7, i32 0, i32 2
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr i8, ptr %70, i32 64
  call void @__raw_writesl(ptr noundef %71, ptr noundef nonnull %4, i32 noundef 2) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %72

72:                                               ; preds = %67, %65, %50, %48
  %73 = load i8, ptr %16, align 4, !range !10
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %87, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %77 = load i32, ptr %76, align 8
  %78 = and i32 %77, 2
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %75
  %81 = load ptr, ptr %6, align 4
  %82 = getelementptr inbounds %struct.marvell_nfc, ptr %81, i32 0, i32 2
  %83 = load ptr, ptr %82, align 4
  %84 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #10, !srcloc !8
  %85 = or i32 %84, 201326592
  %86 = load ptr, ptr %82, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %85) #10, !srcloc !9
  br label %87

87:                                               ; preds = %80, %75, %72
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_subop_get_addr_start_off(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_subop_get_num_addr_cyc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_subop_get_data_len(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_subop_get_data_start_off(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @marvell_nfc_read_id_type_exec(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = alloca %struct.marvell_nfc_op, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !16
  call fastcc void @marvell_nfc_parse_instructions(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  %4 = load i32, ptr %3, align 4
  %5 = or i32 %4, 6291456
  store i32 %5, ptr %3, align 4
  %6 = call fastcc i32 @marvell_nfc_prepare_cmd(ptr noundef %0)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %78

8:                                                ; preds = %2
  call fastcc void @marvell_nfc_send_cmd(ptr noundef %0, ptr noundef nonnull %3)
  %9 = call fastcc i32 @marvell_nfc_end_cmd(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.42)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %78

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.marvell_nfc_op, ptr %3, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %11
  %16 = icmp ult i32 %13, 10000
  br i1 %16, label %17, label %22

17:                                               ; preds = %15
  %18 = trunc i32 %13 to i16
  %19 = add nuw nsw i16 %18, 999
  %20 = udiv i16 %19, 1000
  %21 = zext i16 %20 to i32
  br label %25

22:                                               ; preds = %15
  %23 = add i32 %13, 999
  %24 = udiv i32 %23, 1000
  br label %25

25:                                               ; preds = %22, %17
  %26 = phi i32 [ %21, %17 ], [ %24, %22 ]
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %27(i32 noundef %26) #10
  br label %28

28:                                               ; preds = %25, %11
  %29 = getelementptr inbounds %struct.marvell_nfc_op, ptr %3, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = call fastcc i32 @marvell_nfc_wait_op(ptr noundef %0, i32 noundef %30)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %78

35:                                               ; preds = %32, %28
  %36 = getelementptr inbounds %struct.marvell_nfc_op, ptr %3, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %52, label %39

39:                                               ; preds = %35
  %40 = icmp ult i32 %37, 10000
  br i1 %40, label %41, label %46

41:                                               ; preds = %39
  %42 = trunc i32 %37 to i16
  %43 = add nuw nsw i16 %42, 999
  %44 = udiv i16 %43, 1000
  %45 = zext i16 %44 to i32
  br label %49

46:                                               ; preds = %39
  %47 = add i32 %37, 999
  %48 = udiv i32 %47, 1000
  br label %49

49:                                               ; preds = %46, %41
  %50 = phi i32 [ %45, %41 ], [ %48, %46 ]
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %51(i32 noundef %50) #10
  br label %52

52:                                               ; preds = %49, %35
  call fastcc void @marvell_nfc_xfer_data_pio(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  %53 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 7
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr %struct.marvell_nand_chip, ptr %0, i32 0, i32 9, i32 %54, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = sub i32 8, %56
  %58 = shl nuw i32 1, %57
  %59 = call fastcc i32 @marvell_nfc_end_cmd(ptr noundef %0, i32 noundef %58, ptr noundef nonnull @.str.22) #10
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %52
  %62 = getelementptr inbounds %struct.marvell_nfc_op, ptr %3, i32 0, i32 4
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %78, label %65

65:                                               ; preds = %61
  %66 = icmp ult i32 %63, 10000
  br i1 %66, label %67, label %72

67:                                               ; preds = %65
  %68 = trunc i32 %63 to i16
  %69 = add nuw nsw i16 %68, 999
  %70 = udiv i16 %69, 1000
  %71 = zext i16 %70 to i32
  br label %75

72:                                               ; preds = %65
  %73 = add i32 %63, 999
  %74 = udiv i32 %73, 1000
  br label %75

75:                                               ; preds = %72, %67
  %76 = phi i32 [ %74, %72 ], [ %71, %67 ]
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %77(i32 noundef %76) #10
  br label %78

78:                                               ; preds = %75, %61, %52, %32, %8, %2
  %79 = phi i32 [ %6, %2 ], [ %9, %8 ], [ %33, %32 ], [ %59, %52 ], [ 0, %61 ], [ 0, %75 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #10
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @marvell_nfc_erase_cmd_type_exec(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = alloca %struct.marvell_nfc_op, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !16
  call fastcc void @marvell_nfc_parse_instructions(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  %4 = load i32, ptr %3, align 4
  %5 = or i32 %4, 4194304
  store i32 %5, ptr %3, align 4
  %6 = call fastcc i32 @marvell_nfc_prepare_cmd(ptr noundef %0)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %56

8:                                                ; preds = %2
  call fastcc void @marvell_nfc_send_cmd(ptr noundef %0, ptr noundef nonnull %3)
  %9 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr %struct.marvell_nand_chip, ptr %0, i32 0, i32 9, i32 %10, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = sub i32 8, %12
  %14 = shl nuw i32 1, %13
  %15 = call fastcc i32 @marvell_nfc_end_cmd(ptr noundef %0, i32 noundef %14, ptr noundef nonnull @.str.22) #10
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %56

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.marvell_nfc_op, ptr %3, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %17
  %22 = icmp ult i32 %19, 10000
  br i1 %22, label %23, label %28

23:                                               ; preds = %21
  %24 = trunc i32 %19 to i16
  %25 = add nuw nsw i16 %24, 999
  %26 = udiv i16 %25, 1000
  %27 = zext i16 %26 to i32
  br label %31

28:                                               ; preds = %21
  %29 = add i32 %19, 999
  %30 = udiv i32 %29, 1000
  br label %31

31:                                               ; preds = %28, %23
  %32 = phi i32 [ %27, %23 ], [ %30, %28 ]
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %33(i32 noundef %32) #10
  br label %34

34:                                               ; preds = %31, %17
  %35 = getelementptr inbounds %struct.marvell_nfc_op, ptr %3, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = call fastcc i32 @marvell_nfc_wait_op(ptr noundef %0, i32 noundef %36)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.marvell_nfc_op, ptr %3, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %39
  %44 = icmp ult i32 %41, 10000
  br i1 %44, label %45, label %50

45:                                               ; preds = %43
  %46 = trunc i32 %41 to i16
  %47 = add nuw nsw i16 %46, 999
  %48 = udiv i16 %47, 1000
  %49 = zext i16 %48 to i32
  br label %53

50:                                               ; preds = %43
  %51 = add i32 %41, 999
  %52 = udiv i32 %51, 1000
  br label %53

53:                                               ; preds = %50, %45
  %54 = phi i32 [ %52, %50 ], [ %49, %45 ]
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %55(i32 noundef %54) #10
  br label %56

56:                                               ; preds = %53, %39, %34, %8, %2
  %57 = phi i32 [ %6, %2 ], [ %15, %8 ], [ %37, %34 ], [ 0, %39 ], [ 0, %53 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #10
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @marvell_nfc_read_status_exec(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = alloca %struct.marvell_nfc_op, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !16
  call fastcc void @marvell_nfc_parse_instructions(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  %4 = load i32, ptr %3, align 4
  %5 = or i32 %4, 8388608
  store i32 %5, ptr %3, align 4
  %6 = call fastcc i32 @marvell_nfc_prepare_cmd(ptr noundef %0)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %78

8:                                                ; preds = %2
  call fastcc void @marvell_nfc_send_cmd(ptr noundef %0, ptr noundef nonnull %3)
  %9 = call fastcc i32 @marvell_nfc_end_cmd(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.43)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %78

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.marvell_nfc_op, ptr %3, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %11
  %16 = icmp ult i32 %13, 10000
  br i1 %16, label %17, label %22

17:                                               ; preds = %15
  %18 = trunc i32 %13 to i16
  %19 = add nuw nsw i16 %18, 999
  %20 = udiv i16 %19, 1000
  %21 = zext i16 %20 to i32
  br label %25

22:                                               ; preds = %15
  %23 = add i32 %13, 999
  %24 = udiv i32 %23, 1000
  br label %25

25:                                               ; preds = %22, %17
  %26 = phi i32 [ %21, %17 ], [ %24, %22 ]
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %27(i32 noundef %26) #10
  br label %28

28:                                               ; preds = %25, %11
  %29 = getelementptr inbounds %struct.marvell_nfc_op, ptr %3, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = call fastcc i32 @marvell_nfc_wait_op(ptr noundef %0, i32 noundef %30)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %78

35:                                               ; preds = %32, %28
  %36 = getelementptr inbounds %struct.marvell_nfc_op, ptr %3, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %52, label %39

39:                                               ; preds = %35
  %40 = icmp ult i32 %37, 10000
  br i1 %40, label %41, label %46

41:                                               ; preds = %39
  %42 = trunc i32 %37 to i16
  %43 = add nuw nsw i16 %42, 999
  %44 = udiv i16 %43, 1000
  %45 = zext i16 %44 to i32
  br label %49

46:                                               ; preds = %39
  %47 = add i32 %37, 999
  %48 = udiv i32 %47, 1000
  br label %49

49:                                               ; preds = %46, %41
  %50 = phi i32 [ %45, %41 ], [ %48, %46 ]
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %51(i32 noundef %50) #10
  br label %52

52:                                               ; preds = %49, %35
  call fastcc void @marvell_nfc_xfer_data_pio(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  %53 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 7
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr %struct.marvell_nand_chip, ptr %0, i32 0, i32 9, i32 %54, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = sub i32 8, %56
  %58 = shl nuw i32 1, %57
  %59 = call fastcc i32 @marvell_nfc_end_cmd(ptr noundef %0, i32 noundef %58, ptr noundef nonnull @.str.22) #10
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %52
  %62 = getelementptr inbounds %struct.marvell_nfc_op, ptr %3, i32 0, i32 4
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %78, label %65

65:                                               ; preds = %61
  %66 = icmp ult i32 %63, 10000
  br i1 %66, label %67, label %72

67:                                               ; preds = %65
  %68 = trunc i32 %63 to i16
  %69 = add nuw nsw i16 %68, 999
  %70 = udiv i16 %69, 1000
  %71 = zext i16 %70 to i32
  br label %75

72:                                               ; preds = %65
  %73 = add i32 %63, 999
  %74 = udiv i32 %73, 1000
  br label %75

75:                                               ; preds = %72, %67
  %76 = phi i32 [ %74, %72 ], [ %71, %67 ]
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %77(i32 noundef %76) #10
  br label %78

78:                                               ; preds = %75, %61, %52, %32, %8, %2
  %79 = phi i32 [ %6, %2 ], [ %9, %8 ], [ %33, %32 ], [ %59, %52 ], [ 0, %61 ], [ 0, %75 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #10
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @marvell_nfc_reset_cmd_type_exec(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = alloca %struct.marvell_nfc_op, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !16
  call fastcc void @marvell_nfc_parse_instructions(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  %4 = load i32, ptr %3, align 4
  %5 = or i32 %4, 10485760
  store i32 %5, ptr %3, align 4
  %6 = call fastcc i32 @marvell_nfc_prepare_cmd(ptr noundef %0)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %56

8:                                                ; preds = %2
  call fastcc void @marvell_nfc_send_cmd(ptr noundef %0, ptr noundef nonnull %3)
  %9 = getelementptr inbounds %struct.marvell_nand_chip, ptr %0, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr %struct.marvell_nand_chip, ptr %0, i32 0, i32 9, i32 %10, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = sub i32 8, %12
  %14 = shl nuw i32 1, %13
  %15 = call fastcc i32 @marvell_nfc_end_cmd(ptr noundef %0, i32 noundef %14, ptr noundef nonnull @.str.22) #10
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %56

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.marvell_nfc_op, ptr %3, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %17
  %22 = icmp ult i32 %19, 10000
  br i1 %22, label %23, label %28

23:                                               ; preds = %21
  %24 = trunc i32 %19 to i16
  %25 = add nuw nsw i16 %24, 999
  %26 = udiv i16 %25, 1000
  %27 = zext i16 %26 to i32
  br label %31

28:                                               ; preds = %21
  %29 = add i32 %19, 999
  %30 = udiv i32 %29, 1000
  br label %31

31:                                               ; preds = %28, %23
  %32 = phi i32 [ %27, %23 ], [ %30, %28 ]
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %33(i32 noundef %32) #10
  br label %34

34:                                               ; preds = %31, %17
  %35 = getelementptr inbounds %struct.marvell_nfc_op, ptr %3, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = call fastcc i32 @marvell_nfc_wait_op(ptr noundef %0, i32 noundef %36)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.marvell_nfc_op, ptr %3, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %39
  %44 = icmp ult i32 %41, 10000
  br i1 %44, label %45, label %50

45:                                               ; preds = %43
  %46 = trunc i32 %41 to i16
  %47 = add nuw nsw i16 %46, 999
  %48 = udiv i16 %47, 1000
  %49 = zext i16 %48 to i32
  br label %53

50:                                               ; preds = %43
  %51 = add i32 %41, 999
  %52 = udiv i32 %51, 1000
  br label %53

53:                                               ; preds = %50, %45
  %54 = phi i32 [ %52, %50 ], [ %49, %45 ]
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %55(i32 noundef %54) #10
  br label %56

56:                                               ; preds = %53, %39, %34, %8, %2
  %57 = phi i32 [ %6, %2 ], [ %15, %8 ], [ %37, %34 ], [ 0, %39 ], [ 0, %53 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #10
  ret i32 %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @marvell_nand_chip_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.marvell_nfc_caps, ptr %11, i32 0, i32 3
  %13 = load i8, ptr %12, align 1, !range !10
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = tail call i32 @of_property_count_elems_of_size(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef 4) #10
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.47) #11
  br label %141

19:                                               ; preds = %15, %9, %3
  %20 = phi i32 [ %16, %15 ], [ 1, %9 ], [ 1, %3 ]
  %21 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %20, i32 12) #10
  %22 = extractvalue { i32, i1 } %21, 1
  %23 = extractvalue { i32, i1 } %21, 0
  %24 = tail call i32 @llvm.uadd.sat.i32(i32 %23, i32 1464) #10
  %25 = select i1 %22, i32 -1, i32 %24
  %26 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef %25, i32 noundef 3520) #10
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.48) #11
  br label %141

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.marvell_nand_chip, ptr %26, i32 0, i32 8
  store i32 %20, ptr %30, align 8
  %31 = getelementptr inbounds %struct.marvell_nand_chip, ptr %26, i32 0, i32 7
  store i32 -1, ptr %31, align 4
  %32 = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 9
  %33 = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 6
  br label %34

34:                                               ; preds = %85, %29
  %35 = phi i32 [ 0, %29 ], [ %87, %85 ]
  br i1 %8, label %36, label %41

36:                                               ; preds = %34
  %37 = load ptr, ptr %32, align 4
  %38 = getelementptr inbounds %struct.marvell_nfc_caps, ptr %37, i32 0, i32 3
  %39 = load i8, ptr %38, align 1, !range !10
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36, %34
  store i32 %35, ptr %4, align 4
  br label %48

42:                                               ; preds = %36
  %43 = call i32 @of_property_read_u32_index(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %35, ptr noundef nonnull %4) #10
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, ptr %4, align 4
  br label %48

47:                                               ; preds = %42
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.49, i32 noundef %43) #11
  br label %141

48:                                               ; preds = %45, %41
  %49 = phi i32 [ %46, %45 ], [ %35, %41 ]
  %50 = load ptr, ptr %32, align 4
  %51 = load i32, ptr %50, align 4
  %52 = icmp ult i32 %49, %51
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.50, i32 noundef %49, i32 noundef %51) #11
  br label %141

54:                                               ; preds = %48
  %55 = call i32 @_test_and_set_bit(i32 noundef %49, ptr noundef %33) #10
  %56 = icmp eq i32 %55, 0
  %57 = load i32, ptr %4, align 4
  br i1 %56, label %59, label %58

58:                                               ; preds = %54
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.51, i32 noundef %57) #11
  br label %141

59:                                               ; preds = %54
  %60 = getelementptr %struct.marvell_nand_chip, ptr %26, i32 0, i32 9, i32 %35
  store i32 %57, ptr %60, align 4
  %61 = icmp ult i32 %57, 4
  br i1 %61, label %62, label %141

62:                                               ; preds = %59
  %63 = getelementptr inbounds [4 x i32], ptr @switch.table.marvell_nand_chip_init, i32 0, i32 %57
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr %struct.marvell_nand_chip, ptr %26, i32 0, i32 9, i32 %35, i32 1
  store i32 %64, ptr %65, align 4
  br i1 %8, label %66, label %71

66:                                               ; preds = %62
  %67 = load ptr, ptr %32, align 4
  %68 = getelementptr inbounds %struct.marvell_nfc_caps, ptr %67, i32 0, i32 3
  %69 = load i8, ptr %68, align 1, !range !10
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %66, %62
  store i32 0, ptr %5, align 4
  br label %78

72:                                               ; preds = %66
  %73 = call i32 @of_property_read_u32_index(ptr noundef %2, ptr noundef nonnull @.str.52, i32 noundef %35, ptr noundef nonnull %5) #10
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load i32, ptr %5, align 4
  br label %78

77:                                               ; preds = %72
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.53, i32 noundef %73) #11
  br label %141

78:                                               ; preds = %75, %71
  %79 = phi i32 [ %76, %75 ], [ 0, %71 ]
  %80 = load ptr, ptr %32, align 4
  %81 = getelementptr inbounds %struct.marvell_nfc_caps, ptr %80, i32 0, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = icmp ult i32 %79, %82
  br i1 %83, label %85, label %84

84:                                               ; preds = %78
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.54, i32 noundef %79, i32 noundef %82) #11
  br label %141

85:                                               ; preds = %78
  %86 = getelementptr %struct.marvell_nand_chip, ptr %26, i32 0, i32 9, i32 %35, i32 2
  store i32 %79, ptr %86, align 4
  %87 = add nuw nsw i32 %35, 1
  %88 = icmp eq i32 %87, %20
  br i1 %88, label %89, label %34

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.nand_chip, ptr %26, i32 0, i32 32
  store ptr %1, ptr %90, align 4
  %91 = getelementptr inbounds %struct.mtd_info, ptr %26, i32 0, i32 56, i32 25
  store ptr %2, ptr %91, align 8
  %92 = getelementptr inbounds %struct.mtd_info, ptr %26, i32 0, i32 13
  %93 = load ptr, ptr %92, align 8
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = call i32 @of_property_read_string(ptr noundef %2, ptr noundef nonnull @.str.58, ptr noundef %92) #10
  br label %97

97:                                               ; preds = %95, %89
  %98 = call ptr @of_find_property(ptr noundef %2, ptr noundef nonnull @.str.55, ptr noundef null) #10
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.nand_chip, ptr %26, i32 0, i32 6
  %102 = load i32, ptr %101, align 8
  %103 = or i32 %102, 8388608
  store i32 %103, ptr %101, align 8
  br label %104

104:                                              ; preds = %100, %97
  %105 = getelementptr inbounds %struct.mtd_info, ptr %26, i32 0, i32 56, i32 1
  store ptr %0, ptr %105, align 4
  %106 = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 2
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr i8, ptr %107, i32 4
  %109 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %108) #10, !srcloc !8
  %110 = getelementptr inbounds %struct.marvell_nand_chip, ptr %26, i32 0, i32 4
  store i32 %109, ptr %110, align 8
  %111 = load ptr, ptr %106, align 4
  %112 = getelementptr i8, ptr %111, i32 12
  %113 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %112) #10, !srcloc !8
  %114 = getelementptr inbounds %struct.marvell_nand_chip, ptr %26, i32 0, i32 5
  store i32 %113, ptr %114, align 4
  %115 = getelementptr inbounds %struct.nand_chip, ptr %26, i32 0, i32 6
  %116 = load i32, ptr %115, align 8
  %117 = or i32 %116, 524288
  store i32 %117, ptr %115, align 8
  %118 = load i32, ptr %30, align 8
  %119 = call i32 @nand_scan_with_ids(ptr noundef nonnull %26, i32 noundef %118, ptr noundef null) #10
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %104
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.56) #11
  br label %141

122:                                              ; preds = %104
  br i1 %8, label %129, label %123

123:                                              ; preds = %122
  %124 = getelementptr inbounds %struct.pxa3xx_nand_platform_data, ptr %7, i32 0, i32 4
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr inbounds %struct.pxa3xx_nand_platform_data, ptr %7, i32 0, i32 5
  %127 = load i32, ptr %126, align 4
  %128 = call i32 @mtd_device_parse_register(ptr noundef nonnull %26, ptr noundef null, ptr noundef null, ptr noundef %125, i32 noundef %127) #10
  br label %131

129:                                              ; preds = %122
  %130 = call i32 @mtd_device_parse_register(ptr noundef nonnull %26, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #10
  br label %131

131:                                              ; preds = %129, %123
  %132 = phi i32 [ %128, %123 ], [ %130, %129 ]
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %131
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.57, i32 noundef %132) #11
  call void @nand_cleanup(ptr noundef nonnull %26) #10
  br label %141

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.marvell_nand_chip, ptr %26, i32 0, i32 1
  %137 = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 7
  %138 = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 7, i32 1
  %139 = load ptr, ptr %138, align 4
  store ptr %136, ptr %138, align 4
  store ptr %137, ptr %136, align 4
  %140 = getelementptr inbounds %struct.marvell_nand_chip, ptr %26, i32 0, i32 1, i32 1
  store ptr %139, ptr %140, align 4
  store volatile ptr %136, ptr %139, align 4
  br label %141

141:                                              ; preds = %135, %134, %121, %84, %77, %59, %58, %53, %47, %28, %18
  %142 = phi i32 [ -22, %53 ], [ -22, %58 ], [ -22, %84 ], [ %73, %77 ], [ %43, %47 ], [ %119, %121 ], [ %132, %134 ], [ 0, %135 ], [ -12, %28 ], [ -22, %18 ], [ -22, %59 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret i32 %142
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_scan_with_ids(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @marvell_nfc_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.marvell_nfc, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %37, label %7

7:                                                ; preds = %34, %1
  %8 = phi ptr [ %35, %34 ], [ %5, %1 ]
  %9 = getelementptr i8, ptr %8, i32 -116
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i64 @ktime_get() #10
  %12 = add i64 %11, 100000000
  %13 = getelementptr inbounds %struct.marvell_nfc, ptr %10, i32 0, i32 2
  br label %14

14:                                               ; preds = %19, %7
  %15 = load ptr, ptr %13, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #10, !srcloc !8
  %17 = and i32 %16, 268435456
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %14
  %20 = tail call i64 @ktime_get() #10
  %21 = icmp sgt i64 %20, %12
  br i1 %21, label %22, label %14

22:                                               ; preds = %19
  %23 = load ptr, ptr %13, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #10, !srcloc !8
  %25 = and i32 %24, 268435456
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.marvell_nfc, ptr %10, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.17) #11
  %30 = load ptr, ptr %13, align 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !15
  %32 = and i32 %31, -268435457
  %33 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %32) #10, !srcloc !9
  br label %34

34:                                               ; preds = %27, %22, %14
  %35 = load ptr, ptr %8, align 4
  %36 = icmp eq ptr %35, %4
  br i1 %36, label %37, label %7

37:                                               ; preds = %34, %1
  %38 = getelementptr inbounds %struct.marvell_nfc, ptr %3, i32 0, i32 4
  %39 = load ptr, ptr %38, align 4
  tail call void @clk_disable(ptr noundef %39) #10
  tail call void @clk_unprepare(ptr noundef %39) #10
  %40 = getelementptr inbounds %struct.marvell_nfc, ptr %3, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  tail call void @clk_disable(ptr noundef %41) #10
  tail call void @clk_unprepare(ptr noundef %41) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @marvell_nfc_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.marvell_nfc, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #10
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #10
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #10
  br label %12

12:                                               ; preds = %11, %1
  %13 = phi i32 [ %6, %1 ], [ %9, %11 ]
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %37, label %15

15:                                               ; preds = %12, %8
  %16 = getelementptr inbounds %struct.marvell_nfc, ptr %3, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @clk_prepare(ptr noundef %17) #10
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = tail call i32 @clk_enable(ptr noundef %17) #10
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  tail call void @clk_unprepare(ptr noundef %17) #10
  br label %24

24:                                               ; preds = %23, %15
  %25 = phi i32 [ %18, %15 ], [ %21, %23 ]
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %28) #10
  tail call void @clk_unprepare(ptr noundef %28) #10
  br label %37

29:                                               ; preds = %24, %20
  %30 = getelementptr inbounds %struct.marvell_nfc, ptr %3, i32 0, i32 8
  store ptr null, ptr %30, align 4
  %31 = getelementptr inbounds %struct.marvell_nfc, ptr %3, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 -2147016705) #10, !srcloc !9
  %33 = load ptr, ptr %31, align 4
  %34 = getelementptr i8, ptr %33, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 -1) #10, !srcloc !9
  %35 = load ptr, ptr %31, align 4
  %36 = getelementptr i8, ptr %35, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 0) #10, !srcloc !9
  br label %37

37:                                               ; preds = %29, %27, %12
  %38 = phi i32 [ %25, %27 ], [ 0, %29 ], [ %13, %12 ]
  ret i32 %38
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #9

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind allocsize(0) }

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
!8 = !{i64 4197536}
!9 = !{i64 4197118}
!10 = !{i8 0, i8 2}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 493772, i64 493799, i64 493821, i64 493849}
!13 = !{i64 494180, i64 494207, i64 494240, i64 494261, i64 494288, i64 494314}
!14 = !{i64 2147979316, i64 2147979596, i64 2147979930, i64 2147980264}
!15 = !{i64 2153529950}
!16 = !{!"auto-init"}
!17 = !{i64 2153531585}
!18 = !{i64 2153536191}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{i64 2153537688}
!21 = !{i64 2153541097}
!22 = !{i64 2153540939}
!23 = !{i64 2153576195}
!24 = !{i64 2153577494}
