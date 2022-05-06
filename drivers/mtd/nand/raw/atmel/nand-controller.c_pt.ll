; ModuleID = '/llk/IR/drivers/mtd/nand/raw/atmel/nand-controller.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/atmel/nand-controller.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.63 }
%union.anon.63 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atmel_nand_controller_caps = type { i8, i8, i32, i32, ptr, ptr }
%struct.atmel_nand_controller_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.nand_op_parser = type { ptr, i32 }
%struct.nand_op_parser_pattern_elem = type { i32, i8, %union.anon.82 }
%union.anon.82 = type { %struct.nand_op_parser_addr_constraints }
%struct.nand_op_parser_addr_constraints = type { i32 }
%struct.nand_op_parser_data_constraints = type { i32 }
%struct.nand_op_parser_pattern = type { ptr, i32, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atmel_smc_nand_ebi_csa_cfg = type { i32, i32 }
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
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.atmel_nand_controller = type { %struct.nand_controller, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atmel_hsmc_nand_controller = type { %struct.atmel_nand_controller, %struct.anon.77, ptr, ptr, %struct.atmel_nfc_op, %struct.completion, i32, i32, ptr }
%struct.anon.77 = type { ptr, ptr, i32 }
%struct.atmel_nfc_op = type { i8, i8, [2 x i8], i8, [5 x i8], i32, i32, i32 }
%struct.atmel_nand = type { %struct.list_head, ptr, %struct.nand_chip, ptr, ptr, ptr, i32, [0 x %struct.atmel_nand_cs] }
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
%struct.atmel_nand_cs = type { i32, %struct.atmel_nand_rb, ptr, %struct.anon.76, %struct.atmel_smc_cs_conf }
%struct.atmel_nand_rb = type { i32, %union.anon.75 }
%union.anon.75 = type { ptr }
%struct.anon.76 = type { ptr, i32 }
%struct.atmel_smc_cs_conf = type { i32, i32, i32, i32, i32 }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.nand_interface_config = type { i32, %struct.nand_timings }
%struct.nand_timings = type { i32, %union.anon.71 }
%union.anon.71 = type { %struct.nand_sdr_timings }
%struct.nand_sdr_timings = type { i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.atmel_pmecc_user_req = type { i32, i32, %struct.anon.81 }
%struct.anon.81 = type { i32, i32, i32, i32, i32 }
%struct.mtd_oob_region = type { i32, i32 }
%struct.page = type { i32, %union.anon.1, %union.anon.61, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.61 = type { %struct.atomic_t }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.nand_subop = type { i32, ptr, i32, i32, i32 }
%struct.nand_op_instr = type { i32, %union.anon.69, i32 }
%union.anon.69 = type { %struct.nand_op_data_instr }
%struct.nand_op_data_instr = type { i32, %union.anon.70, i8 }
%union.anon.70 = type { ptr }
%struct.atmel_smc_nand_controller = type { %struct.atmel_nand_controller, ptr, ptr }
%struct.nand_operation = type { i32, ptr, i32 }

@__UNIQUE_ID_avoiddma236 = internal constant [52 x i8] c"atmel_nand_controller.parm=avoiddma:Avoid using DMA\00", section ".modinfo", align 1
@__param_str_avoiddma = internal constant [31 x i8] c"atmel_nand_controller.avoiddma\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@atmel_nand_avoid_dma = internal global i8 0, section ".data..read_mostly", align 1
@__param_avoiddma = internal constant %struct.kernel_param { ptr @__param_str_avoiddma, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.63 { ptr @atmel_nand_avoid_dma } }, section "__param", align 4
@__UNIQUE_ID_avoiddmatype237 = internal constant [45 x i8] c"atmel_nand_controller.parmtype=avoiddma:bool\00", section ".modinfo", align 1
@__initcall__kmod_atmel_nand_controller__260_2657_atmel_nand_controller_driver_init6 = internal global ptr @atmel_nand_controller_driver_init, section ".initcall6.init", align 4
@atmel_nand_controller_driver = internal global %struct.platform_driver { ptr @atmel_nand_controller_probe, ptr @atmel_nand_controller_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @atmel_nand_controller_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atmel_nand_controller_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_atmel_nand_controller_driver_exit = internal global ptr @atmel_nand_controller_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file261 = internal constant [76 x i8] c"atmel_nand_controller.file=drivers/mtd/nand/raw/atmel/atmel-nand-controller\00", section ".modinfo", align 1
@__UNIQUE_ID_license262 = internal constant [34 x i8] c"atmel_nand_controller.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author263 = internal constant [82 x i8] c"atmel_nand_controller.author=Boris Brezillon <boris.brezillon@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description264 = internal constant [78 x i8] c"atmel_nand_controller.description=NAND Flash Controller driver for Atmel SoCs\00", section ".modinfo", align 1
@__UNIQUE_ID_alias265 = internal constant [59 x i8] c"atmel_nand_controller.alias=platform:atmel-nand-controller\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [22 x i8] c"atmel-nand-controller\00", align 1
@atmel_nand_controller_of_ids = internal constant [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91rm9200-nand-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_rm9200_nc_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9260-nand-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_sam9260_nc_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9261-nand-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_sam9261_nc_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9g45-nand-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_sam9g45_nc_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d3-nand-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_sama5_nc_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sam9x60-nand-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @microchip_sam9x60_nc_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91rm9200-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_rm9200_nand_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d4-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_rm9200_nand_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_rm9200_nand_caps }, %struct.of_device_id zeroinitializer], align 4
@atmel_nand_controller_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr @atmel_nand_controller_resume, ptr null, ptr @atmel_nand_controller_resume, ptr null, ptr @atmel_nand_controller_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Could not retrieve NFC caps\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"atmel,sama5d3-nfc\00", align 1
@atmel_sama5_nand_caps = internal constant %struct.atmel_nand_controller_caps { i8 1, i8 1, i32 2097152, i32 4194304, ptr null, ptr @atmel_hsmc_nc_ops }, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"atmel,nand-has-dma\00", align 1
@atmel_sam9g45_nand_caps = internal constant %struct.atmel_nand_controller_caps { i8 1, i8 1, i32 2097152, i32 4194304, ptr null, ptr @atmel_smc_nc_ops }, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"atmel,nand-addr-offset\00", align 1
@atmel_sam9261_nand_caps = internal constant %struct.atmel_nand_controller_caps { i8 0, i8 1, i32 4194304, i32 2097152, ptr null, ptr @atmel_smc_nc_ops }, align 4
@atmel_hsmc_nc_ops = internal constant %struct.atmel_nand_controller_ops { ptr @atmel_hsmc_nand_controller_probe, ptr @atmel_hsmc_nand_controller_remove, ptr @atmel_nand_init, ptr @atmel_hsmc_nand_ecc_init, ptr @atmel_hsmc_nand_setup_interface, ptr @atmel_hsmc_nand_exec_op }, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"nfc\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"Could not get register NFC interrupt handler (err = %d)\0A\00", align 1
@atmel_nand_controller_ops = internal constant %struct.nand_controller_ops { ptr @atmel_nand_attach_chip, ptr null, ptr @atmel_nand_exec_op, ptr @atmel_nand_setup_interface }, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"Could not get PMECC object\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Failed to request DMA channel\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Failed to retrieve MCK clk\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"atmel,smc\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"Missing or invalid atmel,smc property\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"Could not get SMC regmap (err = %d)\0A\00", align 1
@nand_controller_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"&nfc->lock\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"atmel_nand\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"%s:nand.%d\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"Failed to allocate mtd->name\0A\00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"Could not find device node for sama5d3-nfc\0A\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"Failed to retrieve HSMC clock (err = %d)\0A\00", align 1
@.str.19 = private unnamed_addr constant [44 x i8] c"Failed to enable the HSMC clock (err = %d)\0A\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"Failed to get IRQ number (err = %d)\0A\00", align 1
@.str.21 = private unnamed_addr constant [47 x i8] c"Invalid or missing NFC IO resource (err = %d)\0A\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"nfc-io\00", align 1
@.str.23 = private unnamed_addr constant [43 x i8] c"Could not create NFC IO regmap (err = %d)\0A\00", align 1
@.str.24 = private unnamed_addr constant [45 x i8] c"Invalid or missing HSMC resource (err = %d)\0A\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"smc\00", align 1
@.str.26 = private unnamed_addr constant [45 x i8] c"Invalid or missing SRAM resource (err = %d)\0A\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"atmel,nfc-io\00", align 1
@.str.28 = private unnamed_addr constant [42 x i8] c"Missing or invalid atmel,nfc-io property\0A\00", align 1
@.str.29 = private unnamed_addr constant [40 x i8] c"Could not get NFC IO regmap (err = %d)\0A\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"atmel,nfc-sram\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"Missing SRAM\0A\00", align 1
@.str.32 = private unnamed_addr constant [50 x i8] c"Could not allocate memory from the NFC SRAM pool\0A\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@.str.34 = private unnamed_addr constant [33 x i8] c"missing #address-cells property\0A\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"#size-cells\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"missing #size-cells property\0A\00", align 1
@.str.37 = private unnamed_addr constant [36 x i8] c"Failed to get R/B gpio (err = %ld)\0A\00", align 1
@.str.38 = private unnamed_addr constant [35 x i8] c"Failed to get CS gpio (err = %ld)\0A\00", align 1
@.str.39 = private unnamed_addr constant [39 x i8] c"Failed to get detect gpio (err = %ld)\0A\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.42 = private unnamed_addr constant [33 x i8] c"Missing or invalid reg property\0A\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"det\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"nand-det\00", align 1
@.str.45 = private unnamed_addr constant [33 x i8] c"Invalid reg property (err = %d)\0A\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"atmel,rb\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"nand-rb\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"cs\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"nand-cs\00", align 1
@.str.51 = private unnamed_addr constant [30 x i8] c"No SmartMedia card inserted.\0A\00", align 1
@.str.52 = private unnamed_addr constant [22 x i8] c"NAND scan failed: %d\0A\00", align 1
@.str.53 = private unnamed_addr constant [35 x i8] c"Failed to register mtd device: %d\0A\00", align 1
@.str.54 = private unnamed_addr constant [26 x i8] c"Unsupported ECC mode: %d\0A\00", align 1
@.str.55 = private unnamed_addr constant [22 x i8] c"HW ECC not supported\0A\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"atmel,pmecc-cap\00", align 1
@.str.57 = private unnamed_addr constant [24 x i8] c"atmel,pmecc-sector-size\00", align 1
@.str.58 = private unnamed_addr constant [40 x i8] c"Failed to enable ECC engine (err = %d)\0A\00", align 1
@.str.59 = private unnamed_addr constant [42 x i8] c"Failed to read NAND page data (err = %d)\0A\00", align 1
@.str.60 = private unnamed_addr constant [46 x i8] c"Failed to transfer NAND page data (err = %d)\0A\00", align 1
@.str.61 = private unnamed_addr constant [42 x i8] c"Failed to load NAND page data (err = %d)\0A\00", align 1
@.str.62 = private unnamed_addr constant [40 x i8] c"Failed to send NAND command (err = %d)!\00", align 1
@.str.63 = private unnamed_addr constant [26 x i8] c"Waiting NAND R/B Timeout\0A\00", align 1
@.str.64 = private unnamed_addr constant [29 x i8] c"Access to an undefined area\0A\00", align 1
@.str.65 = private unnamed_addr constant [19 x i8] c"Access while busy\0A\00", align 1
@.str.66 = private unnamed_addr constant [19 x i8] c"Wrong access size\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.67 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.68 = private unnamed_addr constant [43 x i8] c"Failed to prepare a buffer for DMA access\0A\00", align 1
@.str.69 = private unnamed_addr constant [30 x i8] c"Failed to prepare DMA memcpy\0A\00", align 1
@.str.70 = private unnamed_addr constant [28 x i8] c"Failed to do DMA tx_submit\0A\00", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.71 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.72 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@atmel_hsmc_op_parser = internal constant %struct.nand_op_parser { ptr @.compoundliteral.76, i32 4 }, align 4
@.compoundliteral = internal constant [3 x %struct.nand_op_parser_pattern_elem] [%struct.nand_op_parser_pattern_elem { i32 0, i8 1, %union.anon.82 zeroinitializer }, %struct.nand_op_parser_pattern_elem { i32 1, i8 1, %union.anon.82 { %struct.nand_op_parser_addr_constraints { i32 5 } } }, %struct.nand_op_parser_pattern_elem { i32 0, i8 1, %union.anon.82 zeroinitializer }], align 4
@.compoundliteral.73 = internal constant [1 x { i32, i8, { %struct.nand_op_parser_data_constraints } }] [{ i32, i8, { %struct.nand_op_parser_data_constraints } } { i32 2, i8 0, { %struct.nand_op_parser_data_constraints } zeroinitializer }], align 4
@.compoundliteral.74 = internal constant [1 x { i32, i8, { %struct.nand_op_parser_data_constraints } }] [{ i32, i8, { %struct.nand_op_parser_data_constraints } } { i32 3, i8 0, { %struct.nand_op_parser_data_constraints } zeroinitializer }], align 4
@.compoundliteral.75 = internal constant [1 x %struct.nand_op_parser_pattern_elem] [%struct.nand_op_parser_pattern_elem { i32 4, i8 0, %union.anon.82 zeroinitializer }], align 4
@.compoundliteral.76 = internal constant [4 x %struct.nand_op_parser_pattern] [%struct.nand_op_parser_pattern { ptr @.compoundliteral, i32 3, ptr @atmel_hsmc_exec_cmd_addr }, %struct.nand_op_parser_pattern { ptr @.compoundliteral.73, i32 1, ptr @atmel_hsmc_exec_rw }, %struct.nand_op_parser_pattern { ptr @.compoundliteral.74, i32 1, ptr @atmel_hsmc_exec_rw }, %struct.nand_op_parser_pattern { ptr @.compoundliteral.75, i32 1, ptr @atmel_hsmc_exec_waitrdy }], align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@atmel_smc_nc_ops = internal constant %struct.atmel_nand_controller_ops { ptr @atmel_smc_nand_controller_probe, ptr @atmel_smc_nand_controller_remove, ptr @atmel_smc_nand_init, ptr @atmel_nand_ecc_init, ptr @atmel_smc_nand_setup_interface, ptr @atmel_smc_nand_exec_op }, align 4
@atmel_ebi_csa_regmap_of_ids = internal constant [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9260-matrix\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9260_ebi_csa }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9261-matrix\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9261_ebi_csa }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9263-matrix\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9263_ebi_csa }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9rl-matrix\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9rl_ebi_csa }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9g45-matrix\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9g45_ebi_csa }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9n12-matrix\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9n12_ebi_csa }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9x5-matrix\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9x5_ebi_csa }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sam9x60-sfr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sam9x60_ebi_csa }, %struct.of_device_id zeroinitializer], align 4
@.str.77 = private unnamed_addr constant [40 x i8] c"Could not get EBICSA regmap (err = %d)\0A\00", align 1
@.str.78 = private unnamed_addr constant [23 x i8] c"atmel,at91sam9263-ebi1\00", align 1
@at91sam9260_ebi_csa = internal constant %struct.atmel_smc_nand_ebi_csa_cfg { i32 284, i32 0 }, align 4
@at91sam9261_ebi_csa = internal constant %struct.atmel_smc_nand_ebi_csa_cfg { i32 48, i32 0 }, align 4
@at91sam9263_ebi_csa = internal constant %struct.atmel_smc_nand_ebi_csa_cfg { i32 288, i32 0 }, align 4
@at91sam9rl_ebi_csa = internal constant %struct.atmel_smc_nand_ebi_csa_cfg { i32 288, i32 0 }, align 4
@at91sam9g45_ebi_csa = internal constant %struct.atmel_smc_nand_ebi_csa_cfg { i32 296, i32 0 }, align 4
@at91sam9n12_ebi_csa = internal constant %struct.atmel_smc_nand_ebi_csa_cfg { i32 280, i32 0 }, align 4
@at91sam9x5_ebi_csa = internal constant %struct.atmel_smc_nand_ebi_csa_cfg { i32 288, i32 0 }, align 4
@sam9x60_ebi_csa = internal constant %struct.atmel_smc_nand_ebi_csa_cfg { i32 4, i32 16777216 }, align 4
@atmel_rm9200_nc_caps = internal constant %struct.atmel_nand_controller_caps { i8 0, i8 0, i32 2097152, i32 4194304, ptr @.str.79, ptr @at91rm9200_nc_ops }, align 4
@atmel_sam9260_nc_caps = internal constant %struct.atmel_nand_controller_caps { i8 0, i8 0, i32 2097152, i32 4194304, ptr @.str.79, ptr @atmel_smc_nc_ops }, align 4
@atmel_sam9261_nc_caps = internal constant %struct.atmel_nand_controller_caps { i8 0, i8 0, i32 4194304, i32 2097152, ptr @.str.79, ptr @atmel_smc_nc_ops }, align 4
@atmel_sam9g45_nc_caps = internal constant %struct.atmel_nand_controller_caps { i8 1, i8 0, i32 2097152, i32 4194304, ptr @.str.79, ptr @atmel_smc_nc_ops }, align 4
@atmel_sama5_nc_caps = internal constant %struct.atmel_nand_controller_caps { i8 1, i8 0, i32 2097152, i32 4194304, ptr null, ptr @atmel_hsmc_nc_ops }, align 4
@microchip_sam9x60_nc_caps = internal constant %struct.atmel_nand_controller_caps { i8 1, i8 0, i32 2097152, i32 4194304, ptr @.str.80, ptr @atmel_smc_nc_ops }, align 4
@atmel_rm9200_nand_caps = internal constant %struct.atmel_nand_controller_caps { i8 0, i8 1, i32 2097152, i32 4194304, ptr null, ptr @atmel_smc_nc_ops }, align 4
@.str.79 = private unnamed_addr constant [13 x i8] c"atmel,matrix\00", align 1
@at91rm9200_nc_ops = internal constant %struct.atmel_nand_controller_ops { ptr @atmel_smc_nand_controller_probe, ptr @atmel_smc_nand_controller_remove, ptr @atmel_smc_nand_init, ptr @atmel_nand_ecc_init, ptr null, ptr @atmel_smc_nand_exec_op }, align 4
@.str.80 = private unnamed_addr constant [14 x i8] c"microchip,sfr\00", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_alias265, ptr @__UNIQUE_ID_author263, ptr @__UNIQUE_ID_avoiddma236, ptr @__UNIQUE_ID_avoiddmatype237, ptr @__UNIQUE_ID_description264, ptr @__UNIQUE_ID_file261, ptr @__UNIQUE_ID_license262, ptr @__exitcall_atmel_nand_controller_driver_exit, ptr @__initcall__kmod_atmel_nand_controller__260_2657_atmel_nand_controller_driver_init6, ptr @__param_avoiddma, ptr @atmel_nand_controller_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @atmel_nand_controller_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @atmel_nand_controller_driver, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @atmel_nand_controller_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @atmel_nand_controller_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_nand_controller_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.platform_device_id, ptr %4, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = inttoptr i32 %8 to ptr
  br label %13

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %12 = tail call ptr @of_device_get_match_data(ptr noundef %11) #9
  br label %13

13:                                               ; preds = %10, %6
  %14 = phi ptr [ %9, %6 ], [ %12, %10 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.1) #10
  br label %50

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.atmel_nand_controller_caps, ptr %14, i32 0, i32 1
  %20 = load i8, ptr %19, align 1, !range !8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %44, label %22

22:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 21, ptr %2, align 4
  %23 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %24 = load ptr, ptr %23, align 8
  %25 = tail call ptr @of_get_compatible_child(ptr noundef %24, ptr noundef nonnull @.str.2) #9
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  tail call void @of_node_put(ptr noundef nonnull %25) #9
  br label %28

28:                                               ; preds = %27, %22
  %29 = phi ptr [ @atmel_sama5_nand_caps, %27 ], [ %14, %22 ]
  %30 = load i8, ptr %29, align 4, !range !8
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load ptr, ptr %23, align 8
  %34 = tail call ptr @of_find_property(ptr noundef %33, ptr noundef nonnull @.str.3, ptr noundef null) #9
  %35 = icmp eq ptr %34, null
  %36 = select i1 %35, ptr %29, ptr @atmel_sam9g45_nand_caps
  br label %37

37:                                               ; preds = %32, %28
  %38 = phi ptr [ %29, %28 ], [ %36, %32 ]
  %39 = load ptr, ptr %23, align 8
  %40 = call i32 @of_property_read_variable_u32_array(ptr noundef %39, ptr noundef nonnull @.str.4, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #9
  %41 = load i32, ptr %2, align 4
  %42 = icmp eq i32 %41, 21
  %43 = select i1 %42, ptr %38, ptr @atmel_sam9261_nand_caps
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  br label %44

44:                                               ; preds = %37, %18
  %45 = phi ptr [ %43, %37 ], [ %14, %18 ]
  %46 = getelementptr inbounds %struct.atmel_nand_controller_caps, ptr %45, i32 0, i32 5
  %47 = load ptr, ptr %46, align 4
  %48 = load ptr, ptr %47, align 4
  %49 = call i32 %48(ptr noundef %0, ptr noundef %45) #9
  br label %50

50:                                               ; preds = %44, %16
  %51 = phi i32 [ %49, %44 ], [ -22, %16 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_nand_controller_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.atmel_nand_controller, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.atmel_nand_controller_caps, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.atmel_nand_controller_ops, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(ptr noundef %3) #9
  ret i32 %10
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_compatible_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_hsmc_nand_controller_probe(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = alloca %struct.of_phandle_args, align 4
  %5 = alloca %struct.regmap_config, align 4
  %6 = alloca %struct.resource, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 128, i32 noundef 3520) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %188, label %10

10:                                               ; preds = %2
  %11 = tail call fastcc i32 @atmel_nand_controller_init(ptr noundef nonnull %8, ptr noundef %0, ptr noundef %1)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %188

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.atmel_nand_controller_caps, ptr %1, i32 0, i32 1
  %15 = load i8, ptr %14, align 1, !range !8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %109, label %17

17:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(172) %5, i8 0, i32 172, i1 false) #9
  %18 = getelementptr inbounds { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, ptr, i32, i8, i8, [2 x i8], i32, i32, i8, [3 x i8] }, ptr %5, i32 0, i32 1
  store i32 32, ptr %18, align 4
  %19 = getelementptr inbounds { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, ptr, i32, i8, i8, [2 x i8], i32, i32, i8, [3 x i8] }, ptr %5, i32 0, i32 2
  store i32 4, ptr %19, align 4
  %20 = getelementptr inbounds { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, ptr, i32, i8, i8, [2 x i8], i32, i32, i8, [3 x i8] }, ptr %5, i32 0, i32 4
  store i32 32, ptr %20, align 4
  %21 = getelementptr inbounds %struct.atmel_nand_controller, ptr %8, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %6, i8 0, i32 32, i1 false) #9, !annotation !9
  %23 = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 25
  %24 = load ptr, ptr %23, align 8
  %25 = tail call ptr @of_get_compatible_child(ptr noundef %24, ptr noundef nonnull @.str.2) #9
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.17) #10
  br label %107

28:                                               ; preds = %17
  %29 = tail call ptr @of_clk_get(ptr noundef nonnull %25, i32 noundef 0) #9
  %30 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %8, i32 0, i32 8
  store ptr %29, ptr %30, align 4
  %31 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = ptrtoint ptr %29 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.18, i32 noundef %33) #10
  br label %105

34:                                               ; preds = %28
  %35 = tail call i32 @clk_prepare(ptr noundef %29) #9
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = tail call i32 @clk_enable(ptr noundef %29) #9
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  tail call void @clk_unprepare(ptr noundef %29) #9
  br label %41

41:                                               ; preds = %40, %34
  %42 = phi i32 [ %38, %40 ], [ %35, %34 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.19, i32 noundef %42) #10
  br label %105

43:                                               ; preds = %37
  %44 = tail call i32 @of_irq_get(ptr noundef %24, i32 noundef 0) #9
  %45 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %8, i32 0, i32 7
  store i32 %44, ptr %45, align 4
  %46 = icmp slt i32 %44, 1
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = icmp eq i32 %44, 0
  %49 = select i1 %48, i32 -6, i32 %44
  %50 = icmp eq i32 %49, -517
  br i1 %50, label %105, label %51

51:                                               ; preds = %47
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.20, i32 noundef %49) #10
  br label %105

52:                                               ; preds = %43
  %53 = call i32 @of_address_to_resource(ptr noundef nonnull %25, i32 noundef 0, ptr noundef nonnull %6) #9
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.21, i32 noundef %53) #10
  br label %105

56:                                               ; preds = %52
  %57 = call ptr @devm_ioremap_resource(ptr noundef %22, ptr noundef nonnull %6) #9
  %58 = icmp ugt ptr %57, inttoptr (i32 -4096 to ptr)
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = ptrtoint ptr %57 to i32
  br label %105

61:                                               ; preds = %56
  store ptr @.str.22, ptr %5, align 4
  %62 = getelementptr inbounds %struct.resource, ptr %6, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = load i32, ptr %6, align 4
  %65 = add i32 %63, -3
  %66 = sub i32 %65, %64
  %67 = getelementptr inbounds %struct.regmap_config, ptr %5, i32 0, i32 19
  store i32 %66, ptr %67, align 4
  %68 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %22, ptr noundef null, ptr noundef %57, ptr noundef nonnull %5, ptr noundef null, ptr noundef null) #9
  %69 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %8, i32 0, i32 3
  store ptr %68, ptr %69, align 4
  %70 = icmp ugt ptr %68, inttoptr (i32 -4096 to ptr)
  br i1 %70, label %71, label %73

71:                                               ; preds = %61
  %72 = ptrtoint ptr %68 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.23, i32 noundef %72) #10
  br label %105

73:                                               ; preds = %61
  %74 = call i32 @of_address_to_resource(ptr noundef nonnull %25, i32 noundef 1, ptr noundef nonnull %6) #9
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef %74) #10
  br label %105

77:                                               ; preds = %73
  %78 = call ptr @devm_ioremap_resource(ptr noundef %22, ptr noundef nonnull %6) #9
  %79 = icmp ugt ptr %78, inttoptr (i32 -4096 to ptr)
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = ptrtoint ptr %78 to i32
  br label %105

82:                                               ; preds = %77
  store ptr @.str.25, ptr %5, align 4
  %83 = load i32, ptr %62, align 4
  %84 = load i32, ptr %6, align 4
  %85 = add i32 %83, -3
  %86 = sub i32 %85, %84
  store i32 %86, ptr %67, align 4
  %87 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %22, ptr noundef null, ptr noundef %78, ptr noundef nonnull %5, ptr noundef null, ptr noundef null) #9
  %88 = getelementptr inbounds %struct.atmel_nand_controller, ptr %8, i32 0, i32 3
  store ptr %87, ptr %88, align 4
  %89 = icmp ugt ptr %87, inttoptr (i32 -4096 to ptr)
  br i1 %89, label %90, label %92

90:                                               ; preds = %82
  %91 = ptrtoint ptr %87 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.23, i32 noundef %91) #10
  br label %105

92:                                               ; preds = %82
  %93 = call i32 @of_address_to_resource(ptr noundef nonnull %25, i32 noundef 2, ptr noundef nonnull %6) #9
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %92
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.26, i32 noundef %93) #10
  br label %105

96:                                               ; preds = %92
  %97 = call ptr @devm_ioremap_resource(ptr noundef %22, ptr noundef nonnull %6) #9
  %98 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %8, i32 0, i32 1, i32 1
  store ptr %97, ptr %98, align 4
  %99 = icmp ugt ptr %97, inttoptr (i32 -4096 to ptr)
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = ptrtoint ptr %97 to i32
  br label %105

102:                                              ; preds = %96
  %103 = load i32, ptr %6, align 4
  %104 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %8, i32 0, i32 1, i32 2
  store i32 %103, ptr %104, align 4
  br label %105

105:                                              ; preds = %102, %100, %95, %90, %80, %76, %71, %59, %55, %51, %47, %41, %32
  %106 = phi i32 [ %33, %32 ], [ %42, %41 ], [ %49, %51 ], [ -517, %47 ], [ %53, %55 ], [ %60, %59 ], [ %72, %71 ], [ %74, %76 ], [ %81, %80 ], [ %91, %90 ], [ %93, %95 ], [ %101, %100 ], [ 0, %102 ]
  call void @of_node_put(ptr noundef nonnull %25) #9
  br label %107

107:                                              ; preds = %105, %27
  %108 = phi i32 [ %106, %105 ], [ -19, %27 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %5) #9
  br label %166

109:                                              ; preds = %13
  %110 = getelementptr inbounds %struct.atmel_nand_controller, ptr %8, i32 0, i32 2
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr inbounds %struct.device, ptr %111, i32 0, i32 1
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.device, ptr %113, i32 0, i32 25
  %115 = load ptr, ptr %114, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #9, !annotation !9
  %116 = call i32 @__of_parse_phandle_with_args(ptr noundef %115, ptr noundef nonnull @.str.10, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4) #9
  %117 = icmp ne i32 %116, 0
  %118 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #9
  %119 = icmp eq ptr %118, null
  %120 = select i1 %117, i1 true, i1 %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %109
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.11) #10
  br label %188

122:                                              ; preds = %109
  %123 = call ptr @atmel_hsmc_get_reg_layout(ptr noundef nonnull %118) #9
  %124 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %8, i32 0, i32 2
  store ptr %123, ptr %124, align 4
  %125 = call i32 @of_irq_get(ptr noundef nonnull %118, i32 noundef 0) #9
  %126 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %8, i32 0, i32 7
  store i32 %125, ptr %126, align 4
  call void @of_node_put(ptr noundef nonnull %118) #9
  %127 = load i32, ptr %126, align 4
  %128 = icmp slt i32 %127, 1
  br i1 %128, label %129, label %134

129:                                              ; preds = %122
  %130 = icmp eq i32 %127, 0
  %131 = select i1 %130, i32 -6, i32 %127
  %132 = icmp eq i32 %131, -517
  br i1 %132, label %188, label %133

133:                                              ; preds = %129
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.20, i32 noundef %131) #10
  br label %188

134:                                              ; preds = %122
  %135 = getelementptr inbounds %struct.device, ptr %111, i32 0, i32 25
  %136 = load ptr, ptr %135, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #9, !annotation !9
  %137 = call i32 @__of_parse_phandle_with_args(ptr noundef %136, ptr noundef nonnull @.str.27, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #9
  %138 = icmp ne i32 %137, 0
  %139 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #9
  %140 = icmp eq ptr %139, null
  %141 = select i1 %138, i1 true, i1 %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %134
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.28) #10
  br label %188

143:                                              ; preds = %134
  %144 = call ptr @syscon_node_to_regmap(ptr noundef nonnull %139) #9
  %145 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %8, i32 0, i32 3
  store ptr %144, ptr %145, align 4
  call void @of_node_put(ptr noundef nonnull %139) #9
  %146 = load ptr, ptr %145, align 4
  %147 = icmp ugt ptr %146, inttoptr (i32 -4096 to ptr)
  br i1 %147, label %148, label %150

148:                                              ; preds = %143
  %149 = ptrtoint ptr %146 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.29, i32 noundef %149) #10
  br label %166

150:                                              ; preds = %143
  %151 = load ptr, ptr %110, align 4
  %152 = getelementptr inbounds %struct.device, ptr %151, i32 0, i32 25
  %153 = load ptr, ptr %152, align 8
  %154 = call ptr @of_gen_pool_get(ptr noundef %153, ptr noundef nonnull @.str.30, i32 noundef 0) #9
  %155 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %8, i32 0, i32 1
  store ptr %154, ptr %155, align 4
  %156 = icmp eq ptr %154, null
  br i1 %156, label %157, label %159

157:                                              ; preds = %150
  %158 = load ptr, ptr %110, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %158, ptr noundef nonnull @.str.31) #10
  br label %188

159:                                              ; preds = %150
  %160 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %8, i32 0, i32 1, i32 2
  %161 = call ptr @gen_pool_dma_alloc(ptr noundef nonnull %154, i32 noundef 9216, ptr noundef %160) #9
  %162 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %8, i32 0, i32 1, i32 1
  store ptr %161, ptr %162, align 4
  %163 = icmp eq ptr %161, null
  br i1 %163, label %164, label %169

164:                                              ; preds = %159
  %165 = load ptr, ptr %110, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %165, ptr noundef nonnull @.str.32) #10
  br label %188

166:                                              ; preds = %148, %107
  %167 = phi i32 [ %108, %107 ], [ %149, %148 ]
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %188

169:                                              ; preds = %166, %159
  %170 = getelementptr inbounds %struct.atmel_nand_controller, ptr %8, i32 0, i32 3
  %171 = load ptr, ptr %170, align 4
  %172 = call i32 @regmap_write(ptr noundef %171, i32 noundef 16, i32 noundef -1) #9
  %173 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %8, i32 0, i32 7
  %174 = load i32, ptr %173, align 4
  %175 = call i32 @devm_request_threaded_irq(ptr noundef %7, i32 noundef %174, ptr noundef nonnull @atmel_nfc_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.5, ptr noundef nonnull %8) #9
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %169
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.6, i32 noundef %175) #10
  br label %185

178:                                              ; preds = %169
  %179 = load ptr, ptr %170, align 4
  %180 = call i32 @regmap_write(ptr noundef %179, i32 noundef 0, i32 noundef 8323072) #9
  %181 = load ptr, ptr %170, align 4
  %182 = call i32 @regmap_write(ptr noundef %181, i32 noundef 4, i32 noundef 1) #9
  %183 = call fastcc i32 @atmel_nand_controller_add_nands(ptr noundef nonnull %8)
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %188, label %185

185:                                              ; preds = %178, %177
  %186 = phi i32 [ %175, %177 ], [ %183, %178 ]
  %187 = call i32 @atmel_hsmc_nand_controller_remove(ptr noundef nonnull %8)
  br label %188

188:                                              ; preds = %185, %178, %166, %164, %157, %142, %133, %129, %121, %10, %2
  %189 = phi i32 [ %186, %185 ], [ -12, %2 ], [ %11, %10 ], [ %167, %166 ], [ 0, %178 ], [ -517, %129 ], [ %131, %133 ], [ -22, %121 ], [ -22, %142 ], [ -12, %157 ], [ -12, %164 ]
  ret i32 %189
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_hsmc_nand_controller_remove(ptr noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.atmel_nand_controller, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %17, label %5

5:                                                ; preds = %11, %1
  %6 = phi ptr [ %7, %11 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.atmel_nand, ptr %6, i32 0, i32 2
  %9 = tail call i32 @mtd_device_unregister(ptr noundef %8) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %42

11:                                               ; preds = %5
  tail call void @nand_cleanup(ptr noundef %8) #9
  %12 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %6, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %13, ptr %15, align 4
  store volatile ptr %14, ptr %13, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %12, align 4
  %16 = icmp eq ptr %7, %2
  br i1 %16, label %17, label %5

17:                                               ; preds = %11, %1
  %18 = getelementptr inbounds %struct.atmel_nand_controller, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 4, i32 noundef 2) #9
  %21 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %0, i32 0, i32 1, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = ptrtoint ptr %26 to i32
  tail call void @gen_pool_free_owner(ptr noundef nonnull %22, i32 noundef %27, i32 noundef 9216, ptr noundef null) #9
  br label %28

28:                                               ; preds = %24, %17
  %29 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %0, i32 0, i32 8
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  tail call void @clk_disable(ptr noundef nonnull %30) #9
  tail call void @clk_unprepare(ptr noundef nonnull %30) #9
  %33 = load ptr, ptr %29, align 4
  tail call void @clk_put(ptr noundef %33) #9
  br label %34

34:                                               ; preds = %32, %28
  %35 = getelementptr inbounds %struct.atmel_nand_controller, ptr %0, i32 0, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  tail call void @dma_release_channel(ptr noundef nonnull %36) #9
  br label %39

39:                                               ; preds = %38, %34
  %40 = getelementptr inbounds %struct.atmel_nand_controller, ptr %0, i32 0, i32 7
  %41 = load ptr, ptr %40, align 4
  tail call void @clk_put(ptr noundef %41) #9
  br label %42

42:                                               ; preds = %39, %5
  %43 = phi i32 [ 0, %39 ], [ %9, %5 ]
  ret i32 %43
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @atmel_nand_init(ptr noundef %0, ptr nocapture noundef %1) #5 {
  %3 = getelementptr inbounds %struct.atmel_nand_controller, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.atmel_nand, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 56, i32 1
  store ptr %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.atmel_nand, ptr %1, i32 0, i32 2, i32 32
  store ptr %0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.atmel_nand_controller, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.atmel_nand_controller, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.atmel_nand_controller_caps, ptr %12, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.atmel_nand_controller_ops, ptr %14, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %10, %2
  %19 = getelementptr inbounds %struct.atmel_nand, ptr %1, i32 0, i32 2, i32 6
  %20 = load i32, ptr %19, align 8
  %21 = or i32 %20, 8388608
  store i32 %21, ptr %19, align 8
  br label %22

22:                                               ; preds = %18, %10
  %23 = getelementptr inbounds %struct.atmel_nand_controller, ptr %0, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.atmel_nand, ptr %1, i32 0, i32 2, i32 6
  %28 = load i32, ptr %27, align 8
  %29 = or i32 %28, 1048576
  store i32 %29, ptr %27, align 8
  br label %30

30:                                               ; preds = %26, %22
  %31 = getelementptr inbounds %struct.atmel_nand_controller, ptr %0, i32 0, i32 5
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.atmel_nand, ptr %1, i32 0, i32 2, i32 33
  store i32 3, ptr %35, align 8
  br label %36

36:                                               ; preds = %34, %30
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_hsmc_nand_ecc_init(ptr noundef %0) #2 {
  %2 = tail call i32 @atmel_nand_ecc_init(ptr noundef %0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 18
  store ptr @atmel_hsmc_nand_pmecc_read_page, ptr %9, align 8
  %10 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 21
  store ptr @atmel_hsmc_nand_pmecc_write_page, ptr %10, align 4
  %11 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 16
  store ptr @atmel_hsmc_nand_pmecc_read_page_raw, ptr %11, align 8
  %12 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 17
  store ptr @atmel_hsmc_nand_pmecc_write_page_raw, ptr %12, align 4
  br label %13

13:                                               ; preds = %8, %4, %1
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_hsmc_nand_setup_interface(ptr noundef %0, i32 noundef %1, ptr noundef %2) #2 {
  %4 = alloca %struct.atmel_smc_cs_conf, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.atmel_nand, ptr %0, i32 0, i32 2, i32 32
  %6 = load ptr, ptr %5, align 4
  %7 = call fastcc i32 @atmel_smc_nand_prepare_smcconf(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %4)
  %8 = icmp ne i32 %7, 0
  %9 = icmp eq i32 %1, -1
  %10 = or i1 %9, %8
  br i1 %10, label %30, label %11

11:                                               ; preds = %3
  %12 = getelementptr %struct.atmel_nand, ptr %0, i32 0, i32 7, i32 %1
  %13 = getelementptr %struct.atmel_nand, ptr %0, i32 0, i32 7, i32 %1, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %13, ptr noundef nonnull align 4 dereferenceable(20) %4, i32 20, i1 false)
  %14 = getelementptr %struct.atmel_nand, ptr %0, i32 0, i32 7, i32 %1, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = getelementptr %struct.atmel_nand, ptr %0, i32 0, i32 7, i32 %1, i32 1, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = shl i32 %19, 28
  %21 = getelementptr %struct.atmel_nand, ptr %0, i32 0, i32 7, i32 %1, i32 4, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = or i32 %22, %20
  store i32 %23, ptr %21, align 4
  br label %24

24:                                               ; preds = %17, %11
  %25 = getelementptr inbounds %struct.atmel_nand_controller, ptr %6, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %6, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = load i32, ptr %12, align 4
  call void @atmel_hsmc_cs_conf_apply(ptr noundef %26, ptr noundef %28, i32 noundef %29, ptr noundef %13) #9
  br label %30

30:                                               ; preds = %24, %3
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #9
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_hsmc_nand_exec_op(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #2 {
  br i1 %2, label %30, label %4

4:                                                ; preds = %3
  %5 = load i32, ptr %1, align 4
  %6 = getelementptr inbounds %struct.atmel_nand, ptr %0, i32 0, i32 2, i32 0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = lshr i32 %7, 9
  %9 = icmp ult i32 %7, 512
  %10 = tail call i32 @llvm.ctlz.i32(i32 %8, i1 false) #9, !range !10
  %11 = sub nsw i32 31, %10
  %12 = select i1 %9, i32 -513, i32 %11
  %13 = getelementptr inbounds %struct.atmel_nand, ptr %0, i32 0, i32 2, i32 0, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = shl i32 %14, 22
  %16 = and i32 %15, -16777216
  %17 = or i32 %16, %12
  %18 = or i32 %17, 512
  %19 = getelementptr %struct.atmel_nand, ptr %0, i32 0, i32 7, i32 %5
  %20 = getelementptr inbounds %struct.atmel_nand, ptr %0, i32 0, i32 3
  store ptr %19, ptr %20, align 8
  %21 = getelementptr inbounds %struct.atmel_nand, ptr %0, i32 0, i32 2, i32 32
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %22, i32 0, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, %18
  br i1 %25, label %30, label %26

26:                                               ; preds = %4
  %27 = getelementptr inbounds %struct.atmel_nand_controller, ptr %22, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 0, i32 noundef 2130707207, i32 noundef %18, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  store i32 %18, ptr %23, align 4
  br label %30

30:                                               ; preds = %26, %4, %3
  %31 = getelementptr inbounds %struct.atmel_nand, ptr %0, i32 0, i32 2
  %32 = tail call i32 @nand_op_parser_exec_op(ptr noundef %31, ptr noundef nonnull @atmel_hsmc_op_parser, ptr noundef %1, i1 noundef zeroext %2) #9
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @atmel_nand_controller_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 {
  %4 = alloca %struct.of_phandle_args, align 4
  %5 = alloca %struct.dma_cap_mask_t, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull @nand_controller_init.__key) #9
  %7 = getelementptr inbounds %struct.nand_controller, ptr %0, i32 0, i32 1
  store ptr @atmel_nand_controller_ops, ptr %7, align 4
  %8 = getelementptr inbounds %struct.atmel_nand_controller, ptr %0, i32 0, i32 6
  store volatile ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.atmel_nand_controller, ptr %0, i32 0, i32 6, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.atmel_nand_controller, ptr %0, i32 0, i32 2
  store ptr %6, ptr %10, align 4
  %11 = getelementptr inbounds %struct.atmel_nand_controller, ptr %0, i32 0, i32 1
  store ptr %2, ptr %11, align 4
  %12 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 8
  store ptr %0, ptr %12, align 8
  %13 = tail call ptr @devm_atmel_pmecc_get(ptr noundef %6) #9
  %14 = getelementptr inbounds %struct.atmel_nand_controller, ptr %0, i32 0, i32 5
  store ptr %13, ptr %14, align 4
  %15 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = ptrtoint ptr %13 to i32
  %18 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %6, i32 noundef %17, ptr noundef nonnull @.str.7) #9
  br label %67

19:                                               ; preds = %3
  %20 = load ptr, ptr %11, align 4
  %21 = load i8, ptr %20, align 4, !range !8
  %22 = icmp ne i8 %21, 0
  %23 = load i8, ptr @atmel_nand_avoid_dma, align 1
  %24 = icmp eq i8 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %34

26:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %5) #9
  %27 = call ptr @__dma_request_channel(ptr noundef nonnull %5, ptr noundef null, ptr noundef null, ptr noundef null) #9
  %28 = getelementptr inbounds %struct.atmel_nand_controller, ptr %0, i32 0, i32 4
  store ptr %27, ptr %28, align 4
  %29 = icmp eq ptr %27, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load ptr, ptr %10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.8) #10
  br label %32

32:                                               ; preds = %30, %26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  %33 = load ptr, ptr %11, align 4
  br label %34

34:                                               ; preds = %32, %19
  %35 = phi ptr [ %33, %32 ], [ %20, %19 ]
  %36 = getelementptr inbounds %struct.atmel_nand_controller_caps, ptr %35, i32 0, i32 1
  %37 = load i8, ptr %36, align 1, !range !8
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %67

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.device, ptr %41, i32 0, i32 25
  %43 = load ptr, ptr %42, align 8
  %44 = call ptr @of_clk_get(ptr noundef %43, i32 noundef 0) #9
  %45 = getelementptr inbounds %struct.atmel_nand_controller, ptr %0, i32 0, i32 7
  store ptr %44, ptr %45, align 4
  %46 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.9) #10
  %48 = load ptr, ptr %45, align 4
  %49 = ptrtoint ptr %48 to i32
  br label %67

50:                                               ; preds = %39
  %51 = load ptr, ptr %40, align 4
  %52 = getelementptr inbounds %struct.device, ptr %51, i32 0, i32 25
  %53 = load ptr, ptr %52, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #9, !annotation !9
  %54 = call i32 @__of_parse_phandle_with_args(ptr noundef %53, ptr noundef nonnull @.str.10, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4) #9
  %55 = icmp ne i32 %54, 0
  %56 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #9
  %57 = icmp eq ptr %56, null
  %58 = select i1 %55, i1 true, i1 %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.11) #10
  br label %67

60:                                               ; preds = %50
  %61 = call ptr @syscon_node_to_regmap(ptr noundef nonnull %56) #9
  %62 = getelementptr inbounds %struct.atmel_nand_controller, ptr %0, i32 0, i32 3
  store ptr %61, ptr %62, align 4
  call void @of_node_put(ptr noundef nonnull %56) #9
  %63 = load ptr, ptr %62, align 4
  %64 = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = ptrtoint ptr %63 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.12, i32 noundef %66) #10
  br label %67

67:                                               ; preds = %65, %60, %59, %47, %34, %16
  %68 = phi i32 [ %18, %16 ], [ %49, %47 ], [ %66, %65 ], [ -22, %59 ], [ 0, %34 ], [ 0, %60 ]
  ret i32 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_nfc_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !9
  %4 = getelementptr inbounds %struct.atmel_nand_controller, ptr %1, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = call i32 @regmap_read(ptr noundef %5, i32 noundef 8, ptr noundef nonnull %3) #9
  %7 = load i32, ptr %3, align 4
  %8 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %1, i32 0, i32 4, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = or i32 %9, 15728640
  %11 = and i32 %10, %7
  %12 = and i32 %7, 15728640
  %13 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %1, i32 0, i32 4, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = or i32 %14, %12
  store i32 %15, ptr %13, align 4
  %16 = xor i32 %7, -1
  %17 = and i32 %9, %16
  store i32 %17, ptr %8, align 4
  %18 = icmp eq i32 %17, 0
  %19 = icmp ne i32 %15, 0
  %20 = select i1 %18, i1 true, i1 %19
  %21 = icmp eq i32 %11, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load ptr, ptr %4, align 4
  %24 = call i32 @regmap_write(ptr noundef %23, i32 noundef 16, i32 noundef %11) #9
  br label %25

25:                                               ; preds = %22, %2
  br i1 %20, label %26, label %28

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %1, i32 0, i32 5
  call void @complete(ptr noundef %27) #9
  br label %28

28:                                               ; preds = %26, %25
  %29 = xor i1 %21, true
  %30 = zext i1 %29 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @atmel_nand_controller_add_nands(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.resource, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.atmel_nand_controller, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.atmel_nand_controller, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.atmel_nand_controller_caps, ptr %8, i32 0, i32 1
  %10 = load i8, ptr %9, align 1, !range !8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %62, label %12

12:                                               ; preds = %1
  %13 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 1500, i32 noundef 3520) #9
  %14 = icmp eq ptr %13, null
  br i1 %14, label %204, label %15

15:                                               ; preds = %12
  %16 = getelementptr i8, ptr %6, i32 -16
  %17 = getelementptr inbounds %struct.atmel_nand, ptr %13, i32 0, i32 6
  store i32 1, ptr %17, align 4
  %18 = tail call ptr @platform_get_resource(ptr noundef %16, i32 noundef 512, i32 noundef 0) #9
  %19 = tail call ptr @devm_ioremap_resource(ptr noundef %6, ptr noundef %18) #9
  %20 = getelementptr inbounds %struct.atmel_nand, ptr %13, i32 0, i32 7
  %21 = getelementptr inbounds %struct.atmel_nand, ptr %13, i32 1, i32 2
  store ptr %19, ptr %21, align 8
  %22 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = ptrtoint ptr %19 to i32
  br label %204

25:                                               ; preds = %15
  %26 = load i32, ptr %18, align 4
  %27 = getelementptr inbounds %struct.atmel_nand, ptr %13, i32 1, i32 2, i32 0, i32 0, i32 1
  store i32 %26, ptr %27, align 4
  store i32 3, ptr %20, align 8
  %28 = tail call ptr @devm_gpiod_get_index_optional(ptr noundef %6, ptr noundef null, i32 noundef 0, i32 noundef 1) #9
  %29 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = ptrtoint ptr %28 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.37, i32 noundef %31) #10
  br label %204

32:                                               ; preds = %25
  %33 = icmp eq ptr %28, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.atmel_nand, ptr %13, i32 1, i32 0, i32 1
  store i32 2, ptr %35, align 4
  %36 = getelementptr inbounds %struct.atmel_nand, ptr %13, i32 1, i32 1
  store ptr %28, ptr %36, align 4
  br label %37

37:                                               ; preds = %34, %32
  %38 = tail call ptr @devm_gpiod_get_index_optional(ptr noundef %6, ptr noundef null, i32 noundef 1, i32 noundef 7) #9
  %39 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = ptrtoint ptr %38 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.38, i32 noundef %41) #10
  br label %204

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.atmel_nand_cs, ptr %20, i32 0, i32 2
  store ptr %38, ptr %43, align 4
  %44 = load ptr, ptr %5, align 4
  %45 = tail call ptr @devm_gpiod_get_index_optional(ptr noundef %44, ptr noundef null, i32 noundef 2, i32 noundef 1) #9
  %46 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = ptrtoint ptr %45 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.39, i32 noundef %48) #10
  br label %204

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.atmel_nand, ptr %13, i32 0, i32 5
  store ptr %45, ptr %50, align 8
  %51 = load ptr, ptr %5, align 4
  %52 = getelementptr inbounds %struct.device, ptr %51, i32 0, i32 25
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %struct.atmel_nand, ptr %13, i32 0, i32 2, i32 0, i32 0, i32 56, i32 25
  store ptr %53, ptr %54, align 8
  %55 = getelementptr inbounds %struct.atmel_nand, ptr %13, i32 0, i32 2, i32 0, i32 0, i32 13
  %56 = load ptr, ptr %55, align 8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = tail call i32 @of_property_read_string(ptr noundef %53, ptr noundef nonnull @.str.40, ptr noundef %55) #9
  br label %60

60:                                               ; preds = %58, %49
  %61 = tail call fastcc i32 @atmel_nand_controller_add_nand(ptr noundef %0, ptr noundef nonnull %13) #9
  br label %204

62:                                               ; preds = %1
  %63 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 25
  %64 = load ptr, ptr %63, align 8
  %65 = call i32 @of_property_read_variable_u32_array(ptr noundef %64, ptr noundef nonnull @.str.33, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #9
  %66 = icmp sgt i32 %65, -1
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.34) #10
  br label %204

68:                                               ; preds = %62
  %69 = load i32, ptr %4, align 4
  %70 = call i32 @of_property_read_variable_u32_array(ptr noundef %64, ptr noundef nonnull @.str.35, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #9
  %71 = icmp sgt i32 %70, -1
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.36) #10
  br label %204

73:                                               ; preds = %68
  %74 = load i32, ptr %4, align 4
  %75 = add i32 %74, %69
  %76 = call ptr @of_get_next_child(ptr noundef %64, ptr noundef null) #9
  %77 = icmp eq ptr %76, null
  br i1 %77, label %204, label %78

78:                                               ; preds = %73
  %79 = shl i32 %75, 2
  br label %80

80:                                               ; preds = %184, %78
  %81 = phi ptr [ %76, %78 ], [ %185, %184 ]
  %82 = call i32 @of_property_count_elems_of_size(ptr noundef nonnull %81, ptr noundef nonnull @.str.41, i32 noundef %79) #9
  %83 = icmp slt i32 %82, 1
  %84 = load ptr, ptr %5, align 4
  br i1 %83, label %85, label %86

85:                                               ; preds = %80
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.42) #10
  br label %178

86:                                               ; preds = %80
  %87 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %82, i32 44) #9
  %88 = extractvalue { i32, i1 } %87, 1
  %89 = extractvalue { i32, i1 } %87, 0
  %90 = call i32 @llvm.uadd.sat.i32(i32 %89, i32 1456) #9
  %91 = select i1 %88, i32 -1, i32 %90
  %92 = call noalias ptr @devm_kmalloc(ptr noundef %84, i32 noundef %91, i32 noundef 3520) #9
  %93 = icmp eq ptr %92, null
  br i1 %93, label %178, label %94

94:                                               ; preds = %86
  %95 = getelementptr inbounds %struct.atmel_nand, ptr %92, i32 0, i32 6
  store i32 %82, ptr %95, align 4
  %96 = load ptr, ptr %5, align 4
  %97 = getelementptr inbounds %struct.device_node, ptr %81, i32 0, i32 3
  %98 = call ptr @devm_fwnode_gpiod_get_index(ptr noundef %96, ptr noundef %97, ptr noundef nonnull @.str.43, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @.str.44) #9
  %99 = icmp ugt ptr %98, inttoptr (i32 -4096 to ptr)
  br i1 %99, label %100, label %105

100:                                              ; preds = %94
  %101 = icmp eq ptr %98, inttoptr (i32 -2 to ptr)
  br i1 %101, label %107, label %102

102:                                              ; preds = %100
  %103 = ptrtoint ptr %98 to i32
  %104 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %104, ptr noundef nonnull @.str.39, i32 noundef %103) #10
  br label %175

105:                                              ; preds = %94
  %106 = getelementptr inbounds %struct.atmel_nand, ptr %92, i32 0, i32 5
  store ptr %98, ptr %106, align 8
  br label %107

107:                                              ; preds = %105, %100
  br label %108

108:                                              ; preds = %165, %107
  %109 = phi i32 [ %166, %165 ], [ 0, %107 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false) #9, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !9
  %110 = call i32 @of_address_to_resource(ptr noundef nonnull %81, i32 noundef 0, ptr noundef nonnull %2) #9
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %108
  %113 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.45, i32 noundef %110) #10
  %114 = inttoptr i32 %110 to ptr
  br label %163

115:                                              ; preds = %108
  %116 = mul i32 %109, %75
  %117 = call i32 @of_property_read_u32_index(ptr noundef nonnull %81, ptr noundef nonnull @.str.41, i32 noundef %116, ptr noundef nonnull %3) #9
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %115
  %120 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %120, ptr noundef nonnull @.str.45, i32 noundef %117) #10
  %121 = inttoptr i32 %117 to ptr
  br label %163

122:                                              ; preds = %115
  %123 = load i32, ptr %3, align 4
  %124 = getelementptr %struct.atmel_nand, ptr %92, i32 0, i32 7, i32 %109
  store i32 %123, ptr %124, align 4
  %125 = load i32, ptr %2, align 4
  %126 = getelementptr %struct.atmel_nand, ptr %92, i32 0, i32 7, i32 %109, i32 3
  %127 = getelementptr %struct.atmel_nand, ptr %92, i32 0, i32 7, i32 %109, i32 3, i32 1
  store i32 %125, ptr %127, align 4
  %128 = load ptr, ptr %5, align 4
  %129 = call ptr @devm_ioremap_resource(ptr noundef %128, ptr noundef nonnull %2) #9
  store ptr %129, ptr %126, align 4
  %130 = icmp ugt ptr %129, inttoptr (i32 -4096 to ptr)
  br i1 %130, label %163, label %131

131:                                              ; preds = %122
  %132 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %81, ptr noundef nonnull @.str.46, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #9
  %133 = icmp sgt i32 %132, -1
  br i1 %133, label %134, label %140

134:                                              ; preds = %131
  %135 = load i32, ptr %3, align 4
  %136 = icmp ugt i32 %135, 7
  br i1 %136, label %163, label %137

137:                                              ; preds = %134
  %138 = getelementptr %struct.atmel_nand, ptr %92, i32 0, i32 7, i32 %109, i32 1
  store i32 1, ptr %138, align 4
  %139 = getelementptr %struct.atmel_nand, ptr %92, i32 0, i32 7, i32 %109, i32 1, i32 1
  store i32 %135, ptr %139, align 4
  br label %152

140:                                              ; preds = %131
  %141 = load ptr, ptr %5, align 4
  %142 = call ptr @devm_fwnode_gpiod_get_index(ptr noundef %141, ptr noundef %97, ptr noundef nonnull @.str.47, i32 noundef %109, i32 noundef 1, ptr noundef nonnull @.str.48) #9
  %143 = icmp ugt ptr %142, inttoptr (i32 -4096 to ptr)
  br i1 %143, label %144, label %149

144:                                              ; preds = %140
  %145 = icmp eq ptr %142, inttoptr (i32 -2 to ptr)
  br i1 %145, label %152, label %146

146:                                              ; preds = %144
  %147 = ptrtoint ptr %142 to i32
  %148 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %148, ptr noundef nonnull @.str.37, i32 noundef %147) #10
  br label %163

149:                                              ; preds = %140
  %150 = getelementptr %struct.atmel_nand, ptr %92, i32 0, i32 7, i32 %109, i32 1
  store i32 2, ptr %150, align 4
  %151 = getelementptr %struct.atmel_nand, ptr %92, i32 0, i32 7, i32 %109, i32 1, i32 1
  store ptr %142, ptr %151, align 4
  br label %152

152:                                              ; preds = %149, %144, %137
  %153 = load ptr, ptr %5, align 4
  %154 = call ptr @devm_fwnode_gpiod_get_index(ptr noundef %153, ptr noundef %97, ptr noundef nonnull @.str.49, i32 noundef %109, i32 noundef 7, ptr noundef nonnull @.str.50) #9
  %155 = icmp ugt ptr %154, inttoptr (i32 -4096 to ptr)
  br i1 %155, label %156, label %161

156:                                              ; preds = %152
  %157 = icmp eq ptr %154, inttoptr (i32 -2 to ptr)
  br i1 %157, label %165, label %158

158:                                              ; preds = %156
  %159 = ptrtoint ptr %154 to i32
  %160 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %160, ptr noundef nonnull @.str.38, i32 noundef %159) #10
  br label %163

161:                                              ; preds = %152
  %162 = getelementptr %struct.atmel_nand, ptr %92, i32 0, i32 7, i32 %109, i32 2
  store ptr %154, ptr %162, align 4
  br label %165

163:                                              ; preds = %158, %146, %134, %122, %119, %112
  %164 = phi ptr [ %114, %112 ], [ %121, %119 ], [ %142, %146 ], [ %154, %158 ], [ inttoptr (i32 -22 to ptr), %134 ], [ %129, %122 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #9
  br label %175

165:                                              ; preds = %161, %156
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #9
  %166 = add nuw nsw i32 %109, 1
  %167 = icmp eq i32 %166, %82
  br i1 %167, label %168, label %108

168:                                              ; preds = %165
  %169 = getelementptr inbounds %struct.atmel_nand, ptr %92, i32 0, i32 2, i32 0, i32 0, i32 56, i32 25
  store ptr %81, ptr %169, align 8
  %170 = getelementptr inbounds %struct.atmel_nand, ptr %92, i32 0, i32 2, i32 0, i32 0, i32 13
  %171 = load ptr, ptr %170, align 8
  %172 = icmp eq ptr %171, null
  br i1 %172, label %173, label %175

173:                                              ; preds = %168
  %174 = call i32 @of_property_read_string(ptr noundef nonnull %81, ptr noundef nonnull @.str.40, ptr noundef %170) #9
  br label %175

175:                                              ; preds = %173, %168, %163, %102
  %176 = phi ptr [ %98, %102 ], [ %164, %163 ], [ %92, %168 ], [ %92, %173 ]
  %177 = icmp ugt ptr %176, inttoptr (i32 -4096 to ptr)
  br i1 %177, label %178, label %181

178:                                              ; preds = %175, %86, %85
  %179 = phi ptr [ inttoptr (i32 -22 to ptr), %85 ], [ inttoptr (i32 -12 to ptr), %86 ], [ %176, %175 ]
  %180 = ptrtoint ptr %179 to i32
  br label %187

181:                                              ; preds = %175
  %182 = call fastcc i32 @atmel_nand_controller_add_nand(ptr noundef %0, ptr noundef %176)
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %181
  %185 = call ptr @of_get_next_child(ptr noundef %64, ptr noundef nonnull %81) #9
  %186 = icmp eq ptr %185, null
  br i1 %186, label %204, label %80

187:                                              ; preds = %181, %178
  %188 = phi i32 [ %180, %178 ], [ %182, %181 ]
  %189 = getelementptr inbounds %struct.atmel_nand_controller, ptr %0, i32 0, i32 6
  %190 = load ptr, ptr %189, align 4
  %191 = icmp eq ptr %190, %189
  br i1 %191, label %204, label %192

192:                                              ; preds = %198, %187
  %193 = phi ptr [ %194, %198 ], [ %190, %187 ]
  %194 = load ptr, ptr %193, align 8
  %195 = getelementptr inbounds %struct.atmel_nand, ptr %193, i32 0, i32 2
  %196 = call i32 @mtd_device_unregister(ptr noundef %195) #9
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %204

198:                                              ; preds = %192
  call void @nand_cleanup(ptr noundef %195) #9
  %199 = getelementptr inbounds %struct.list_head, ptr %193, i32 0, i32 1
  %200 = load ptr, ptr %199, align 4
  %201 = load ptr, ptr %193, align 4
  %202 = getelementptr inbounds %struct.list_head, ptr %201, i32 0, i32 1
  store ptr %200, ptr %202, align 4
  store volatile ptr %201, ptr %200, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %193, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %199, align 4
  %203 = icmp eq ptr %194, %189
  br i1 %203, label %204, label %192

204:                                              ; preds = %198, %192, %187, %184, %73, %72, %67, %60, %47, %40, %30, %23, %12
  %205 = phi i32 [ %65, %67 ], [ %70, %72 ], [ %24, %23 ], [ %31, %30 ], [ %41, %40 ], [ %48, %47 ], [ %61, %60 ], [ -12, %12 ], [ %188, %187 ], [ 0, %73 ], [ %188, %192 ], [ %188, %198 ], [ 0, %184 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %205
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_atmel_pmecc_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_nand_attach_chip(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.atmel_nand_controller, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.atmel_nand_controller_caps, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.atmel_nand_controller_ops, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(ptr noundef %0) #9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %43

12:                                               ; preds = %1
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr inbounds %struct.atmel_nand_controller_caps, ptr %13, i32 0, i32 1
  %15 = load i8, ptr %14, align 1, !range !8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.atmel_nand_controller, ptr %3, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 25
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %17, %12
  %24 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 13
  store ptr @.str.14, ptr %24, align 8
  br label %43

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 13
  %27 = load ptr, ptr %26, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %43

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load ptr, ptr %19, align 4
  br label %35

35:                                               ; preds = %33, %29
  %36 = phi ptr [ %34, %33 ], [ %31, %29 ]
  %37 = getelementptr i8, ptr %0, i32 1440
  %38 = load i32, ptr %37, align 8
  %39 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %19, i32 noundef 3264, ptr noundef nonnull @.str.15, ptr noundef %36, i32 noundef %38) #9
  store ptr %39, ptr %26, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load ptr, ptr %18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.16) #10
  br label %43

43:                                               ; preds = %41, %35, %25, %23, %1
  %44 = phi i32 [ -12, %41 ], [ %10, %1 ], [ 0, %25 ], [ 0, %35 ], [ 0, %23 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_nand_exec_op(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 -16
  %5 = getelementptr i8, ptr %0, i32 1308
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.atmel_nand_controller, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.atmel_nand_controller_caps, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.atmel_nand_controller_ops, ptr %10, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %4, ptr noundef %1, i1 noundef zeroext %2) #9
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_nand_setup_interface(ptr noundef %0, i32 noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 -16
  %5 = load i32, ptr %2, align 8
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %struct.nand_interface_config, ptr %2, i32 0, i32 1, i32 1
  %8 = select i1 %6, ptr %7, ptr inttoptr (i32 -22 to ptr)
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = ptrtoint ptr %8 to i32
  br label %28

12:                                               ; preds = %3
  %13 = getelementptr i8, ptr %0, i32 1436
  %14 = load i32, ptr %13, align 4
  %15 = icmp sle i32 %14, %1
  %16 = icmp slt i32 %1, -1
  %17 = or i1 %16, %15
  br i1 %17, label %28, label %18

18:                                               ; preds = %12
  %19 = getelementptr i8, ptr %0, i32 1308
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.atmel_nand_controller, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.atmel_nand_controller_caps, ptr %22, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.atmel_nand_controller_ops, ptr %24, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 %26(ptr noundef %4, i32 noundef %1, ptr noundef %2) #9
  br label %28

28:                                               ; preds = %18, %12, %10
  %29 = phi i32 [ %11, %10 ], [ %27, %18 ], [ -22, %12 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @atmel_hsmc_get_reg_layout(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_gen_pool_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gen_pool_dma_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @atmel_nand_controller_add_nand(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.atmel_nand, ptr %1, i32 0, i32 2
  %4 = getelementptr inbounds %struct.atmel_nand, ptr %1, i32 0, i32 5
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = tail call i32 @gpiod_get_value(ptr noundef nonnull %5) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.atmel_nand_controller, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.51) #10
  br label %38

13:                                               ; preds = %7, %2
  %14 = getelementptr inbounds %struct.atmel_nand_controller, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.atmel_nand_controller_caps, ptr %15, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.atmel_nand_controller_ops, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  tail call void %19(ptr noundef %0, ptr noundef %1) #9
  %20 = getelementptr inbounds %struct.atmel_nand, ptr %1, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 @nand_scan_with_ids(ptr noundef %3, i32 noundef %21, ptr noundef null) #9
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.atmel_nand_controller, ptr %0, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.52, i32 noundef %22) #10
  br label %38

27:                                               ; preds = %13
  %28 = tail call i32 @mtd_device_parse_register(ptr noundef %3, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #9
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.atmel_nand_controller, ptr %0, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.53, i32 noundef %28) #10
  tail call void @nand_cleanup(ptr noundef %3) #9
  br label %38

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.atmel_nand_controller, ptr %0, i32 0, i32 6
  %35 = getelementptr inbounds %struct.atmel_nand_controller, ptr %0, i32 0, i32 6, i32 1
  %36 = load ptr, ptr %35, align 4
  store ptr %1, ptr %35, align 4
  store ptr %34, ptr %1, align 4
  %37 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  store ptr %36, ptr %37, align 4
  store volatile ptr %1, ptr %36, align 4
  br label %38

38:                                               ; preds = %33, %30, %24, %10
  %39 = phi i32 [ 0, %10 ], [ %22, %24 ], [ %28, %30 ], [ 0, %33 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index_optional(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_fwnode_gpiod_get_index(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_scan_with_ids(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_pool_free_owner(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_nand_ecc_init(ptr noundef %0) #2 {
  %2 = alloca %struct.atmel_pmecc_user_req, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33
  %7 = load i32, ptr %6, align 8
  switch i32 %7, label %107 [
    i32 1, label %110
    i32 2, label %110
    i32 3, label %8
  ]

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #9
  %9 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %9, i8 0, i32 16, i1 false) #9, !annotation !9
  %10 = getelementptr inbounds %struct.atmel_nand_controller, ptr %5, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.atmel_nand_controller, ptr %5, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.55) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #9
  br label %110

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.atmel_nand_controller, ptr %5, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.atmel_nand_controller_caps, ptr %18, i32 0, i32 1
  %20 = load i8, ptr %19, align 1, !range !8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %42, label %22

22:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !9
  %23 = getelementptr inbounds %struct.atmel_nand_controller, ptr %5, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 25
  %26 = load ptr, ptr %25, align 8
  %27 = call i32 @of_property_read_variable_u32_array(ptr noundef %26, ptr noundef nonnull @.str.56, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #9
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, ptr %3, align 4
  %31 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 7
  store i32 %30, ptr %31, align 4
  br label %32

32:                                               ; preds = %29, %22
  %33 = load ptr, ptr %23, align 4
  %34 = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 25
  %35 = load ptr, ptr %34, align 8
  %36 = call i32 @of_property_read_variable_u32_array(ptr noundef %35, ptr noundef nonnull @.str.57, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #9
  %37 = icmp sgt i32 %36, -1
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, ptr %3, align 4
  %40 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  store i32 %39, ptr %40, align 8
  br label %41

41:                                               ; preds = %38, %32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  br label %42

42:                                               ; preds = %41, %16
  %43 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 2, i32 5
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 7
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 1, i32 3
  %53 = load i32, ptr %52, align 4
  br label %54

54:                                               ; preds = %51, %47, %42
  %55 = phi i32 [ 0, %42 ], [ %49, %47 ], [ %53, %51 ]
  store i32 %55, ptr %9, align 4
  %56 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  %57 = load i32, ptr %56, align 8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.atmel_pmecc_user_req, ptr %2, i32 0, i32 2, i32 2
  store i32 %57, ptr %60, align 4
  br label %68

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 1, i32 4
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  %65 = getelementptr inbounds %struct.atmel_pmecc_user_req, ptr %2, i32 0, i32 2, i32 2
  br i1 %64, label %67, label %66

66:                                               ; preds = %61
  store i32 %63, ptr %65, align 4
  br label %68

67:                                               ; preds = %61
  store i32 0, ptr %65, align 4
  br label %68

68:                                               ; preds = %67, %66, %59
  %69 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %70 = load i32, ptr %69, align 4
  store i32 %70, ptr %2, align 4
  %71 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr inbounds %struct.atmel_pmecc_user_req, ptr %2, i32 0, i32 1
  store i32 %72, ptr %73, align 4
  %74 = icmp ult i32 %70, 513
  %75 = add i32 %72, -2
  %76 = select i1 %74, i32 4, i32 %75
  %77 = xor i1 %74, true
  %78 = sext i1 %77 to i32
  %79 = getelementptr inbounds %struct.atmel_pmecc_user_req, ptr %2, i32 0, i32 2, i32 1
  store i32 %76, ptr %79, align 4
  %80 = getelementptr inbounds %struct.atmel_pmecc_user_req, ptr %2, i32 0, i32 2, i32 4
  store i32 %78, ptr %80, align 4
  %81 = load ptr, ptr %10, align 4
  %82 = call ptr @atmel_pmecc_create_user(ptr noundef %81, ptr noundef nonnull %2) #9
  %83 = getelementptr i8, ptr %0, i32 1428
  store ptr %82, ptr %83, align 4
  %84 = icmp ugt ptr %82, inttoptr (i32 -4096 to ptr)
  br i1 %84, label %105, label %85

85:                                               ; preds = %68
  %86 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 2
  store i32 2, ptr %86, align 8
  %87 = getelementptr inbounds %struct.atmel_pmecc_user_req, ptr %2, i32 0, i32 2, i32 2
  %88 = load i32, ptr %87, align 4
  store i32 %88, ptr %56, align 8
  %89 = load i32, ptr %79, align 4
  %90 = getelementptr inbounds %struct.atmel_pmecc_user_req, ptr %2, i32 0, i32 2, i32 3
  %91 = load i32, ptr %90, align 4
  %92 = sdiv i32 %89, %91
  %93 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  store i32 %92, ptr %93, align 4
  %94 = load i32, ptr %9, align 4
  %95 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 7
  store i32 %94, ptr %95, align 4
  %96 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %97 = load i32, ptr %96, align 8
  %98 = or i32 %97, 512
  store i32 %98, ptr %96, align 8
  %99 = call ptr @nand_get_large_page_ooblayout() #9
  %100 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 15
  store ptr %99, ptr %100, align 8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #9
  %101 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 18
  store ptr @atmel_nand_pmecc_read_page, ptr %101, align 8
  %102 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 21
  store ptr @atmel_nand_pmecc_write_page, ptr %102, align 4
  %103 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 16
  store ptr @atmel_nand_pmecc_read_page_raw, ptr %103, align 8
  %104 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 17
  store ptr @atmel_nand_pmecc_write_page_raw, ptr %104, align 4
  br label %110

105:                                              ; preds = %68
  %106 = ptrtoint ptr %82 to i32
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #9
  br label %110

107:                                              ; preds = %1
  %108 = getelementptr inbounds %struct.atmel_nand_controller, ptr %5, i32 0, i32 2
  %109 = load ptr, ptr %108, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %109, ptr noundef nonnull @.str.54, i32 noundef %7) #10
  br label %110

110:                                              ; preds = %107, %105, %85, %13, %1, %1
  %111 = phi i32 [ -524, %107 ], [ %106, %105 ], [ 0, %1 ], [ 0, %1 ], [ 0, %85 ], [ -524, %13 ]
  ret i32 %111
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_hsmc_nand_pmecc_read_page(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = icmp ne i32 %2, 0
  %6 = tail call fastcc i32 @atmel_hsmc_nand_pmecc_read_pg(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %5, i32 noundef %3, i1 noundef zeroext false)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_hsmc_nand_pmecc_write_page(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = tail call fastcc i32 @atmel_hsmc_nand_pmecc_write_pg(ptr noundef %0, ptr noundef %1, i32 noundef %3, i1 noundef zeroext false)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_hsmc_nand_pmecc_read_page_raw(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = icmp ne i32 %2, 0
  %6 = tail call fastcc i32 @atmel_hsmc_nand_pmecc_read_pg(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %5, i32 noundef %3, i1 noundef zeroext true)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_hsmc_nand_pmecc_write_page_raw(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = tail call fastcc i32 @atmel_hsmc_nand_pmecc_write_pg(ptr noundef %0, ptr noundef %1, i32 noundef %3, i1 noundef zeroext true)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_nand_pmecc_read_page(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = tail call fastcc i32 @atmel_nand_pmecc_read_pg(ptr noundef %0, ptr noundef %1, i32 noundef %3, i1 noundef zeroext false)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_nand_pmecc_write_page(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = tail call fastcc i32 @atmel_nand_pmecc_write_pg(ptr noundef %0, ptr noundef %1, i32 noundef %3, i1 noundef zeroext false)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_nand_pmecc_read_page_raw(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = tail call i32 @nand_read_page_op(ptr noundef %0, i32 noundef %3, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %6 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @nand_read_data_op(ptr noundef %0, ptr noundef %1, i32 noundef %7, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @nand_read_data_op(ptr noundef %0, ptr noundef %12, i32 noundef %14, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %16

16:                                               ; preds = %10, %4
  %17 = phi i32 [ %8, %4 ], [ %15, %10 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_nand_pmecc_write_page_raw(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = tail call fastcc i32 @atmel_nand_pmecc_write_pg(ptr noundef %0, ptr noundef %1, i32 noundef %3, i1 noundef zeroext true)
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @atmel_pmecc_create_user(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nand_get_large_page_ooblayout() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @atmel_nand_pmecc_read_pg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #2 {
  %5 = tail call i32 @nand_read_page_op(ptr noundef %0, i32 noundef %2, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %6 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %7 = load ptr, ptr %6, align 4
  br i1 %3, label %16, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %0, i32 1428
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @atmel_pmecc_enable(ptr noundef %10, i32 noundef 0) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.atmel_nand_controller, ptr %7, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.58, i32 noundef %11) #10
  br label %35

16:                                               ; preds = %8, %4
  %17 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @nand_read_data_op(ptr noundef %0, ptr noundef %1, i32 noundef %18, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = tail call i32 @nand_read_data_op(ptr noundef %0, ptr noundef %23, i32 noundef %25, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = tail call fastcc i32 @atmel_nand_pmecc_correct_data(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %3)
  br label %30

30:                                               ; preds = %28, %21, %16
  %31 = phi i32 [ %19, %16 ], [ %26, %21 ], [ %29, %28 ]
  br i1 %3, label %35, label %32

32:                                               ; preds = %30
  %33 = getelementptr i8, ptr %0, i32 1428
  %34 = load ptr, ptr %33, align 4
  tail call void @atmel_pmecc_disable(ptr noundef %34) #9
  br label %35

35:                                               ; preds = %32, %30, %13
  %36 = phi i32 [ %11, %13 ], [ %31, %30 ], [ %31, %32 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_page_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_data_op(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @atmel_nand_pmecc_correct_data(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #2 {
  %4 = alloca %struct.mtd_oob_region, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  store i64 0, ptr %4, align 8, !annotation !9
  %5 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %6 = load ptr, ptr %5, align 4
  br i1 %2, label %64, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 1428
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @atmel_pmecc_wait_rdy(ptr noundef %9) #9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.atmel_nand_controller, ptr %6, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.59, i32 noundef %10) #10
  br label %64

15:                                               ; preds = %7
  %16 = call i32 @mtd_ooblayout_ecc(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %4) #9
  %17 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %64

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %22 = load ptr, ptr %21, align 4
  %23 = load i32, ptr %4, align 8
  %24 = getelementptr i8, ptr %22, i32 %23
  %25 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  %26 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  %27 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 7
  %28 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52
  %29 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52, i32 1
  br label %30

30:                                               ; preds = %55, %20
  %31 = phi ptr [ %24, %20 ], [ %60, %55 ]
  %32 = phi ptr [ %1, %20 ], [ %58, %55 ]
  %33 = phi i32 [ 0, %20 ], [ %56, %55 ]
  %34 = phi i32 [ 0, %20 ], [ %61, %55 ]
  %35 = load ptr, ptr %8, align 4
  %36 = call i32 @atmel_pmecc_correct_sector(ptr noundef %35, i32 noundef %34, ptr noundef %32, ptr noundef %31) #9
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %30
  %39 = load ptr, ptr %8, align 4
  %40 = call zeroext i1 @atmel_pmecc_correct_erased_chunks(ptr noundef %39) #9
  br i1 %40, label %52, label %41

41:                                               ; preds = %38
  %42 = load i32, ptr %25, align 8
  %43 = load i32, ptr %26, align 4
  %44 = load i32, ptr %27, align 4
  %45 = call i32 @nand_check_erased_ecc_chunk(ptr noundef %32, i32 noundef %42, ptr noundef %31, i32 noundef %43, ptr noundef null, i32 noundef 0, i32 noundef %44) #9
  %46 = icmp sgt i32 %45, -1
  br i1 %46, label %47, label %52

47:                                               ; preds = %41, %30
  %48 = phi i32 [ %45, %41 ], [ %36, %30 ]
  %49 = load i32, ptr %28, align 4
  %50 = add i32 %49, %48
  store i32 %50, ptr %28, align 4
  %51 = call i32 @llvm.smax.i32(i32 %48, i32 %33)
  br label %55

52:                                               ; preds = %41, %38
  %53 = load i32, ptr %29, align 4
  %54 = add i32 %53, 1
  store i32 %54, ptr %29, align 4
  br label %55

55:                                               ; preds = %52, %47
  %56 = phi i32 [ %51, %47 ], [ %33, %52 ]
  %57 = load i32, ptr %25, align 8
  %58 = getelementptr i8, ptr %32, i32 %57
  %59 = load i32, ptr %26, align 4
  %60 = getelementptr i8, ptr %31, i32 %59
  %61 = add nuw nsw i32 %34, 1
  %62 = load i32, ptr %17, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %30, label %64

64:                                               ; preds = %55, %15, %12, %3
  %65 = phi i32 [ %10, %12 ], [ 0, %3 ], [ 0, %15 ], [ %56, %55 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret i32 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atmel_pmecc_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atmel_pmecc_wait_rdy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_ooblayout_ecc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atmel_pmecc_correct_sector(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @atmel_pmecc_correct_erased_chunks(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_check_erased_ecc_chunk(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @atmel_pmecc_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @atmel_nand_pmecc_write_pg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #2 {
  %5 = tail call i32 @nand_prog_page_begin_op(ptr noundef %0, i32 noundef %2, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %6 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %7 = load ptr, ptr %6, align 4
  br i1 %3, label %16, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %0, i32 1428
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @atmel_pmecc_enable(ptr noundef %10, i32 noundef 1) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.atmel_nand_controller, ptr %7, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.58, i32 noundef %11) #10
  br label %36

16:                                               ; preds = %8, %4
  %17 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @nand_write_data_op(ptr noundef %0, ptr noundef %1, i32 noundef %18, i1 noundef zeroext false) #9
  %20 = tail call fastcc i32 @atmel_nand_pmecc_generate_eccbytes(ptr noundef %0, i1 noundef zeroext %3)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = getelementptr i8, ptr %0, i32 1428
  %24 = load ptr, ptr %23, align 4
  tail call void @atmel_pmecc_disable(ptr noundef %24) #9
  br label %36

25:                                               ; preds = %16
  br i1 %3, label %29, label %26

26:                                               ; preds = %25
  %27 = getelementptr i8, ptr %0, i32 1428
  %28 = load ptr, ptr %27, align 4
  tail call void @atmel_pmecc_disable(ptr noundef %28) #9
  br label %29

29:                                               ; preds = %26, %25
  %30 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %33 = load i32, ptr %32, align 4
  %34 = tail call i32 @nand_write_data_op(ptr noundef %0, ptr noundef %31, i32 noundef %33, i1 noundef zeroext false) #9
  %35 = tail call i32 @nand_prog_page_end_op(ptr noundef %0) #9
  br label %36

36:                                               ; preds = %29, %22, %13
  %37 = phi i32 [ %20, %22 ], [ %35, %29 ], [ %11, %13 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_prog_page_begin_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_write_data_op(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @atmel_nand_pmecc_generate_eccbytes(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = alloca %struct.mtd_oob_region, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  store i64 0, ptr %3, align 8, !annotation !9
  %4 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %5 = load ptr, ptr %4, align 4
  br i1 %1, label %34, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 1428
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @atmel_pmecc_wait_rdy(ptr noundef %8) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.atmel_nand_controller, ptr %5, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.60, i32 noundef %9) #10
  br label %34

14:                                               ; preds = %6
  %15 = call i32 @mtd_ooblayout_ecc(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3) #9
  %16 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %21 = load ptr, ptr %20, align 4
  %22 = load i32, ptr %3, align 8
  %23 = getelementptr i8, ptr %21, i32 %22
  %24 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  br label %25

25:                                               ; preds = %25, %19
  %26 = phi i32 [ 0, %19 ], [ %31, %25 ]
  %27 = phi ptr [ %23, %19 ], [ %30, %25 ]
  %28 = load ptr, ptr %7, align 4
  call void @atmel_pmecc_get_generated_eccbytes(ptr noundef %28, i32 noundef %26, ptr noundef %27) #9
  %29 = load i32, ptr %24, align 4
  %30 = getelementptr i8, ptr %27, i32 %29
  %31 = add nuw nsw i32 %26, 1
  %32 = load i32, ptr %16, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %25, label %34

34:                                               ; preds = %25, %14, %11, %2
  %35 = phi i32 [ %9, %11 ], [ 0, %2 ], [ 0, %14 ], [ 0, %25 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_prog_page_end_op(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @atmel_pmecc_get_generated_eccbytes(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @atmel_hsmc_nand_pmecc_read_pg(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #2 {
  %6 = getelementptr i8, ptr %0, i32 -16
  %7 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr i8, ptr %0, i32 20
  %10 = load i32, ptr %9, align 4
  %11 = lshr i32 %10, 9
  %12 = icmp ult i32 %10, 512
  %13 = tail call i32 @llvm.ctlz.i32(i32 %11, i1 false) #9, !range !10
  %14 = sub nsw i32 31, %13
  %15 = select i1 %12, i32 -513, i32 %14
  %16 = getelementptr i8, ptr %0, i32 28
  %17 = load i32, ptr %16, align 4
  %18 = shl i32 %17, 22
  %19 = and i32 %18, -16777216
  %20 = or i32 %19, %15
  %21 = or i32 %20, 512
  %22 = getelementptr %struct.atmel_nand, ptr %6, i32 0, i32 7, i32 %8
  %23 = getelementptr i8, ptr %0, i32 1424
  store ptr %22, ptr %23, align 8
  %24 = getelementptr i8, ptr %0, i32 1308
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %25, i32 0, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, %21
  br i1 %28, label %35, label %29

29:                                               ; preds = %5
  %30 = getelementptr inbounds %struct.atmel_nand_controller, ptr %25, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 0, i32 noundef 2130707207, i32 noundef %21, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  store i32 %21, ptr %26, align 4
  %33 = load ptr, ptr %24, align 4
  %34 = load ptr, ptr %23, align 8
  br label %35

35:                                               ; preds = %29, %5
  %36 = phi ptr [ %22, %5 ], [ %34, %29 ]
  %37 = phi ptr [ %25, %5 ], [ %33, %29 ]
  %38 = getelementptr inbounds %struct.atmel_nand_cs, ptr %36, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %43, label %41

41:                                               ; preds = %35
  %42 = tail call fastcc i32 @atmel_nand_pmecc_read_pg(ptr noundef %0, ptr noundef %1, i32 noundef %3, i1 noundef zeroext %4)
  br label %145

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %37, i32 0, i32 4
  %45 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %37, i32 0, i32 4, i32 1
  %46 = load i8, ptr %45, align 1
  %47 = add i8 %46, 1
  store i8 %47, ptr %45, align 1
  %48 = zext i8 %46 to i32
  %49 = getelementptr %struct.atmel_hsmc_nand_controller, ptr %37, i32 0, i32 4, i32 2, i32 %48
  store i8 0, ptr %49, align 1
  %50 = load i32, ptr %9, align 4
  %51 = icmp ugt i32 %50, 512
  br i1 %51, label %52, label %56

52:                                               ; preds = %43
  %53 = add i8 %46, 2
  store i8 %53, ptr %45, align 1
  %54 = zext i8 %47 to i32
  %55 = getelementptr %struct.atmel_hsmc_nand_controller, ptr %37, i32 0, i32 4, i32 2, i32 %54
  store i8 48, ptr %55, align 1
  br label %56

56:                                               ; preds = %52, %43
  %57 = load ptr, ptr %24, align 4
  %58 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %57, i32 0, i32 4, i32 3
  %59 = load i8, ptr %58, align 4
  %60 = add i8 %59, 1
  store i8 %60, ptr %58, align 4
  %61 = zext i8 %59 to i32
  %62 = getelementptr %struct.atmel_hsmc_nand_controller, ptr %57, i32 0, i32 4, i32 4, i32 %61
  store i8 0, ptr %62, align 1
  %63 = load i32, ptr %9, align 4
  %64 = icmp ugt i32 %63, 512
  br i1 %64, label %65, label %69

65:                                               ; preds = %56
  %66 = add i8 %59, 2
  store i8 %66, ptr %58, align 4
  %67 = zext i8 %60 to i32
  %68 = getelementptr %struct.atmel_hsmc_nand_controller, ptr %57, i32 0, i32 4, i32 4, i32 %67
  store i8 0, ptr %68, align 1
  br label %69

69:                                               ; preds = %65, %56
  %70 = phi i8 [ %60, %56 ], [ %66, %65 ]
  %71 = icmp sgt i32 %3, -1
  br i1 %71, label %72, label %92

72:                                               ; preds = %69
  %73 = trunc i32 %3 to i8
  %74 = add i8 %70, 1
  %75 = zext i8 %70 to i32
  %76 = getelementptr %struct.atmel_hsmc_nand_controller, ptr %57, i32 0, i32 4, i32 4, i32 %75
  store i8 %73, ptr %76, align 1
  %77 = lshr i32 %3, 8
  %78 = trunc i32 %77 to i8
  %79 = add i8 %70, 2
  store i8 %79, ptr %58, align 4
  %80 = zext i8 %74 to i32
  %81 = getelementptr %struct.atmel_hsmc_nand_controller, ptr %57, i32 0, i32 4, i32 4, i32 %80
  store i8 %78, ptr %81, align 1
  %82 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %83 = load i32, ptr %82, align 8
  %84 = and i32 %83, 16384
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %72
  %87 = lshr i32 %3, 16
  %88 = trunc i32 %87 to i8
  %89 = add i8 %70, 3
  store i8 %89, ptr %58, align 4
  %90 = zext i8 %79 to i32
  %91 = getelementptr %struct.atmel_hsmc_nand_controller, ptr %57, i32 0, i32 4, i32 4, i32 %90
  store i8 %88, ptr %91, align 1
  br label %92

92:                                               ; preds = %86, %72, %69
  %93 = load ptr, ptr %23, align 8
  %94 = load i32, ptr %93, align 4
  %95 = trunc i32 %94 to i8
  store i8 %95, ptr %44, align 4
  %96 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %37, i32 0, i32 4, i32 5
  store i32 1, ptr %96, align 4
  %97 = load ptr, ptr %24, align 4
  br i1 %4, label %106, label %98

98:                                               ; preds = %92
  %99 = getelementptr i8, ptr %0, i32 1428
  %100 = load ptr, ptr %99, align 4
  %101 = tail call i32 @atmel_pmecc_enable(ptr noundef %100, i32 noundef 0) #9
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.atmel_nand_controller, ptr %97, i32 0, i32 2
  %105 = load ptr, ptr %104, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %105, ptr noundef nonnull @.str.58, i32 noundef %101) #10
  br label %145

106:                                              ; preds = %92
  %107 = tail call fastcc i32 @atmel_nfc_exec_op(ptr noundef %37, i1 noundef zeroext false)
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %118, label %114

109:                                              ; preds = %98
  %110 = tail call fastcc i32 @atmel_nfc_exec_op(ptr noundef %37, i1 noundef zeroext false)
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %109
  %113 = load ptr, ptr %99, align 4
  tail call void @atmel_pmecc_disable(ptr noundef %113) #9
  br label %114

114:                                              ; preds = %112, %106
  %115 = phi i32 [ %110, %112 ], [ %107, %106 ]
  %116 = getelementptr inbounds %struct.atmel_nand_controller, ptr %37, i32 0, i32 2
  %117 = load ptr, ptr %116, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.61, i32 noundef %115) #10
  br label %145

118:                                              ; preds = %109, %106
  %119 = load ptr, ptr %24, align 4
  %120 = getelementptr inbounds %struct.atmel_nand_controller, ptr %119, i32 0, i32 4
  %121 = load ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %129, label %123

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %119, i32 0, i32 1, i32 2
  %125 = load i32, ptr %124, align 4
  %126 = load i32, ptr %9, align 4
  %127 = tail call fastcc i32 @atmel_nand_dma_transfer(ptr noundef %119, ptr noundef %1, i32 noundef %125, i32 noundef %126, i32 noundef 2) #9
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %123, %118
  %130 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %119, i32 0, i32 1, i32 1
  %131 = load ptr, ptr %130, align 4
  %132 = load i32, ptr %9, align 4
  tail call void @mmiocpy(ptr noundef %1, ptr noundef %131, i32 noundef %132) #9
  br label %133

133:                                              ; preds = %129, %123
  %134 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %119, i32 0, i32 1, i32 1
  %137 = load ptr, ptr %136, align 4
  %138 = load i32, ptr %9, align 4
  %139 = getelementptr i8, ptr %137, i32 %138
  %140 = load i32, ptr %16, align 4
  tail call void @mmiocpy(ptr noundef %135, ptr noundef %139, i32 noundef %140) #9
  %141 = tail call fastcc i32 @atmel_nand_pmecc_correct_data(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %4)
  br i1 %4, label %145, label %142

142:                                              ; preds = %133
  %143 = getelementptr i8, ptr %0, i32 1428
  %144 = load ptr, ptr %143, align 4
  tail call void @atmel_pmecc_disable(ptr noundef %144) #9
  br label %145

145:                                              ; preds = %142, %133, %114, %103, %41
  %146 = phi i32 [ %42, %41 ], [ %115, %114 ], [ %101, %103 ], [ %141, %133 ], [ %141, %142 ]
  ret i32 %146
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @atmel_nfc_exec_op(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %0, i32 0, i32 4
  %6 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %0, i32 0, i32 4, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %0, i32 0, i32 4, i32 6
  store i32 131072, ptr %7, align 4
  %8 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %0, i32 0, i32 4, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp eq i8 %9, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %12, %2
  %13 = phi i32 [ %22, %12 ], [ 0, %2 ]
  %14 = phi i32 [ %21, %12 ], [ 0, %2 ]
  %15 = getelementptr %struct.atmel_hsmc_nand_controller, ptr %0, i32 0, i32 4, i32 2, i32 %13
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = shl i32 %13, 3
  %19 = or i32 %18, 2
  %20 = shl i32 %17, %19
  %21 = or i32 %20, %14
  %22 = add nuw nsw i32 %13, 1
  %23 = icmp eq i32 %22, %10
  br i1 %23, label %24, label %12

24:                                               ; preds = %12, %2
  %25 = phi i32 [ 0, %2 ], [ %21, %12 ]
  %26 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %0, i32 0, i32 4, i32 3
  %27 = load i8, ptr %26, align 4
  %28 = icmp eq i8 %27, 5
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.atmel_nand_controller, ptr %0, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr %struct.atmel_hsmc_nand_controller, ptr %0, i32 0, i32 4, i32 4, i32 1
  %33 = load i8, ptr %6, align 1
  %34 = zext i8 %33 to i32
  %35 = tail call i32 @regmap_write(ptr noundef %31, i32 noundef 24, i32 noundef %34) #9
  %36 = load i8, ptr %26, align 4
  %37 = load i8, ptr %8, align 1
  br label %38

38:                                               ; preds = %29, %24
  %39 = phi i8 [ %37, %29 ], [ %9, %24 ]
  %40 = phi i8 [ %36, %29 ], [ %27, %24 ]
  %41 = phi ptr [ %32, %29 ], [ %6, %24 ]
  %42 = load i8, ptr %5, align 4
  %43 = zext i8 %42 to i32
  %44 = shl nuw nsw i32 %43, 22
  %45 = zext i8 %40 to i32
  %46 = shl nuw nsw i32 %45, 19
  %47 = or i32 %44, %25
  %48 = or i32 %47, %46
  %49 = icmp ugt i8 %39, 1
  %50 = or i32 %48, 262144
  %51 = select i1 %49, i32 %50, i32 %48
  %52 = load i8, ptr %41, align 1
  %53 = zext i8 %52 to i32
  %54 = getelementptr i8, ptr %41, i32 1
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = shl nuw nsw i32 %56, 8
  %58 = or i32 %57, %53
  %59 = getelementptr i8, ptr %41, i32 2
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  %62 = shl nuw nsw i32 %61, 16
  %63 = or i32 %58, %62
  %64 = getelementptr i8, ptr %41, i32 3
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %65 to i32
  %67 = shl nuw i32 %66, 24
  %68 = or i32 %63, %67
  %69 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %0, i32 0, i32 4, i32 5
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %38
  %73 = load i32, ptr %7, align 4
  %74 = or i32 %73, 65536
  store i32 %74, ptr %7, align 4
  %75 = icmp eq i32 %70, 2
  %76 = select i1 %75, i32 100663296, i32 33554432
  %77 = or i32 %76, %51
  br label %78

78:                                               ; preds = %72, %38
  %79 = phi i32 [ %51, %38 ], [ %77, %72 ]
  %80 = getelementptr inbounds %struct.atmel_nand_controller, ptr %0, i32 0, i32 3
  %81 = load ptr, ptr %80, align 4
  %82 = call i32 @regmap_read(ptr noundef %81, i32 noundef 8, ptr noundef nonnull %4) #9
  %83 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %0, i32 0, i32 3
  %84 = load ptr, ptr %83, align 4
  %85 = call i32 @regmap_write(ptr noundef %84, i32 noundef %79, i32 noundef %68) #9
  br i1 %1, label %86, label %131

86:                                               ; preds = %78
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !9
  %87 = call i64 @ktime_get() #9
  %88 = add i64 %87, 1000000000
  %89 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %0, i32 0, i32 4, i32 7
  br label %90

90:                                               ; preds = %105, %86
  %91 = load ptr, ptr %80, align 4
  %92 = call i32 @regmap_read(ptr noundef %91, i32 noundef 8, ptr noundef nonnull %3) #9
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %129

94:                                               ; preds = %90
  %95 = load i32, ptr %3, align 4
  %96 = and i32 %95, 15728640
  %97 = load i32, ptr %89, align 4
  %98 = or i32 %97, %96
  store i32 %98, ptr %89, align 4
  %99 = load i32, ptr %7, align 4
  %100 = xor i32 %95, -1
  %101 = and i32 %99, %100
  store i32 %101, ptr %7, align 4
  %102 = icmp eq i32 %101, 0
  %103 = icmp ne i32 %98, 0
  %104 = select i1 %102, i1 true, i1 %103
  br i1 %104, label %118, label %105

105:                                              ; preds = %94
  %106 = call i64 @ktime_get() #9
  %107 = icmp sgt i64 %106, %88
  br i1 %107, label %108, label %90

108:                                              ; preds = %105
  %109 = load ptr, ptr %80, align 4
  %110 = call i32 @regmap_read(ptr noundef %109, i32 noundef 8, ptr noundef nonnull %3) #9
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %129

112:                                              ; preds = %108
  %113 = load i32, ptr %3, align 4
  %114 = load i32, ptr %89, align 4
  %115 = load i32, ptr %7, align 4
  %116 = and i32 %113, 15728640
  %117 = xor i32 %113, -1
  br label %118

118:                                              ; preds = %112, %94
  %119 = phi i32 [ %117, %112 ], [ %100, %94 ]
  %120 = phi i32 [ %116, %112 ], [ %96, %94 ]
  %121 = phi i32 [ %115, %112 ], [ %101, %94 ]
  %122 = phi i32 [ %114, %112 ], [ %98, %94 ]
  %123 = or i32 %122, %120
  store i32 %123, ptr %89, align 4
  %124 = and i32 %121, %119
  store i32 %124, ptr %7, align 4
  %125 = icmp eq i32 %124, 0
  %126 = icmp ne i32 %123, 0
  %127 = select i1 %125, i1 true, i1 %126
  %128 = select i1 %127, i32 0, i32 -110
  br label %129

129:                                              ; preds = %118, %108, %90
  %130 = phi i32 [ %128, %118 ], [ %110, %108 ], [ %92, %90 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  br label %143

131:                                              ; preds = %78
  %132 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %0, i32 0, i32 5
  store i32 0, ptr %132, align 4
  %133 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %0, i32 0, i32 5, i32 1
  call void @__init_swait_queue_head(ptr noundef %133, ptr noundef nonnull @.str.67, ptr noundef nonnull @init_completion.__key) #9
  %134 = load ptr, ptr %80, align 4
  %135 = load i32, ptr %7, align 4
  %136 = or i32 %135, 15728640
  %137 = call i32 @regmap_write(ptr noundef %134, i32 noundef 12, i32 noundef %136) #9
  %138 = call i32 @wait_for_completion_timeout(ptr noundef %132, i32 noundef 100) #9
  %139 = icmp eq i32 %138, 0
  %140 = select i1 %139, i32 -110, i32 0
  %141 = load ptr, ptr %80, align 4
  %142 = call i32 @regmap_write(ptr noundef %141, i32 noundef 16, i32 noundef -1) #9
  br label %143

143:                                              ; preds = %131, %129
  %144 = phi i32 [ %130, %129 ], [ %140, %131 ]
  %145 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %0, i32 0, i32 4, i32 7
  %146 = load i32, ptr %145, align 4
  %147 = and i32 %146, 1048576
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %143
  %150 = getelementptr inbounds %struct.atmel_nand_controller, ptr %0, i32 0, i32 2
  %151 = load ptr, ptr %150, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %151, ptr noundef nonnull @.str.63) #10
  %152 = load i32, ptr %145, align 4
  br label %153

153:                                              ; preds = %149, %143
  %154 = phi i32 [ %152, %149 ], [ %146, %143 ]
  %155 = phi i32 [ -110, %149 ], [ %144, %143 ]
  %156 = and i32 %154, 2097152
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %162, label %158

158:                                              ; preds = %153
  %159 = getelementptr inbounds %struct.atmel_nand_controller, ptr %0, i32 0, i32 2
  %160 = load ptr, ptr %159, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %160, ptr noundef nonnull @.str.64) #10
  %161 = load i32, ptr %145, align 4
  br label %162

162:                                              ; preds = %158, %153
  %163 = phi i32 [ %161, %158 ], [ %154, %153 ]
  %164 = phi i32 [ -5, %158 ], [ %155, %153 ]
  %165 = and i32 %163, 4194304
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %162
  %168 = and i32 %163, 8388608
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %179, label %176

170:                                              ; preds = %162
  %171 = getelementptr inbounds %struct.atmel_nand_controller, ptr %0, i32 0, i32 2
  %172 = load ptr, ptr %171, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %172, ptr noundef nonnull @.str.65) #10
  %173 = load i32, ptr %145, align 4
  %174 = and i32 %173, 8388608
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %181, label %176

176:                                              ; preds = %170, %167
  %177 = getelementptr inbounds %struct.atmel_nand_controller, ptr %0, i32 0, i32 2
  %178 = load ptr, ptr %177, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %178, ptr noundef nonnull @.str.66) #10
  br label %181

179:                                              ; preds = %167
  %180 = icmp eq i32 %164, 0
  br i1 %180, label %185, label %181

181:                                              ; preds = %179, %176, %170
  %182 = phi i32 [ -5, %176 ], [ %164, %179 ], [ -5, %170 ]
  %183 = getelementptr inbounds %struct.atmel_nand_controller, ptr %0, i32 0, i32 2
  %184 = load ptr, ptr %183, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %184, ptr noundef nonnull @.str.62, i32 noundef %182) #10
  br label %185

185:                                              ; preds = %181, %179
  %186 = phi i32 [ %182, %181 ], [ 0, %179 ]
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %186
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @atmel_nand_dma_transfer(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #2 {
  %6 = alloca %struct.completion, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  %7 = getelementptr inbounds %struct.completion, ptr %6, i32 0, i32 1, i32 1
  store i64 0, ptr %6, align 8
  store ptr %7, ptr %7, align 8
  %8 = getelementptr inbounds %struct.completion, ptr %6, i32 0, i32 1, i32 1, i32 1
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.atmel_nand_controller, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = call zeroext i1 @is_vmalloc_addr(ptr noundef %1) #9
  %12 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %24, !prof !11

15:                                               ; preds = %5
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %16 = call ptr @dev_driver_string(ptr noundef %10) #9
  %17 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load ptr, ptr %10, align 4
  br label %22

22:                                               ; preds = %20, %15
  %23 = phi ptr [ %21, %20 ], [ %18, %15 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.72, ptr noundef %16, ptr noundef %23) #9
  br label %24

24:                                               ; preds = %22, %5
  br i1 %11, label %33, label %25

25:                                               ; preds = %24
  %26 = load ptr, ptr @mem_map, align 4
  %27 = ptrtoint ptr %1 to i32
  %28 = add i32 %27, 1073741824
  %29 = lshr i32 %28, 12
  %30 = getelementptr %struct.page, ptr %26, i32 %29
  %31 = and i32 %27, 4095
  %32 = call i32 @dma_map_page_attrs(ptr noundef %10, ptr noundef %30, i32 noundef %31, i32 noundef %3, i32 noundef %4, i32 noundef 0) #9
  br label %33

33:                                               ; preds = %25, %24
  %34 = phi i32 [ %32, %25 ], [ -1, %24 ]
  %35 = icmp eq i32 %2, -1
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load ptr, ptr %9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.68) #10
  br label %71

38:                                               ; preds = %33
  %39 = icmp eq i32 %4, 2
  %40 = select i1 %39, i32 %2, i32 %34
  %41 = select i1 %39, i32 %34, i32 %2
  %42 = getelementptr inbounds %struct.atmel_nand_controller, ptr %0, i32 0, i32 4
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %67, label %45

45:                                               ; preds = %38
  %46 = load ptr, ptr %43, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %67, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.dma_device, ptr %46, i32 0, i32 30
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %67, label %52

52:                                               ; preds = %48
  %53 = call ptr %50(ptr noundef nonnull %43, i32 noundef %41, i32 noundef %40, i32 noundef %3, i32 noundef 3) #9
  %54 = icmp eq ptr %53, null
  br i1 %54, label %67, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %53, i32 0, i32 6
  store ptr @atmel_nand_dma_transfer_finished, ptr %56, align 4
  %57 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %53, i32 0, i32 8
  store ptr %6, ptr %57, align 4
  %58 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %53, i32 0, i32 4
  %59 = load ptr, ptr %58, align 4
  %60 = call i32 %59(ptr noundef nonnull %53) #9
  %61 = icmp sgt i32 %60, -1
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = load ptr, ptr %42, align 4
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.dma_device, ptr %64, i32 0, i32 50
  %66 = load ptr, ptr %65, align 4
  call void %66(ptr noundef %63) #9
  call void @wait_for_completion(ptr noundef nonnull %6) #9
  br label %71

67:                                               ; preds = %55, %52, %48, %45, %38
  %68 = phi ptr [ @.str.69, %38 ], [ @.str.69, %45 ], [ @.str.69, %48 ], [ @.str.69, %52 ], [ @.str.70, %55 ]
  %69 = load ptr, ptr %9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull %68) #10
  %70 = load ptr, ptr %9, align 4
  call void @dma_unmap_page_attrs(ptr noundef %70, i32 noundef %34, i32 noundef %3, i32 noundef %4, i32 noundef 0) #9
  br label %71

71:                                               ; preds = %67, %62, %36
  %72 = phi i32 [ 0, %62 ], [ -5, %67 ], [ -5, %36 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_nand_dma_transfer_finished(ptr noundef %0) #2 {
  tail call void @complete(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @atmel_hsmc_nand_pmecc_write_pg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #2 {
  %5 = getelementptr i8, ptr %0, i32 -16
  %6 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr i8, ptr %0, i32 20
  %9 = load i32, ptr %8, align 4
  %10 = lshr i32 %9, 9
  %11 = icmp ult i32 %9, 512
  %12 = tail call i32 @llvm.ctlz.i32(i32 %10, i1 false) #9, !range !10
  %13 = sub nsw i32 31, %12
  %14 = select i1 %11, i32 -513, i32 %13
  %15 = getelementptr i8, ptr %0, i32 28
  %16 = load i32, ptr %15, align 4
  %17 = shl i32 %16, 22
  %18 = and i32 %17, -16777216
  %19 = or i32 %18, %14
  %20 = or i32 %19, 512
  %21 = getelementptr %struct.atmel_nand, ptr %5, i32 0, i32 7, i32 %7
  %22 = getelementptr i8, ptr %0, i32 1424
  store ptr %21, ptr %22, align 8
  %23 = getelementptr i8, ptr %0, i32 1308
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %24, i32 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, %20
  br i1 %27, label %33, label %28

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.atmel_nand_controller, ptr %24, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 0, i32 noundef 2130707207, i32 noundef %20, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  store i32 %20, ptr %25, align 4
  %32 = load ptr, ptr %23, align 4
  br label %33

33:                                               ; preds = %28, %4
  %34 = phi ptr [ %24, %4 ], [ %32, %28 ]
  %35 = getelementptr inbounds %struct.atmel_nand_controller, ptr %34, i32 0, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %34, i32 0, i32 1, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = load i32, ptr %8, align 4
  %42 = tail call fastcc i32 @atmel_nand_dma_transfer(ptr noundef %34, ptr noundef %1, i32 noundef %40, i32 noundef %41, i32 noundef 1) #9
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %38, %33
  %45 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %34, i32 0, i32 1, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = load i32, ptr %8, align 4
  tail call void @mmiocpy(ptr noundef %46, ptr noundef %1, i32 noundef %47) #9
  br label %48

48:                                               ; preds = %44, %38
  %49 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %34, i32 0, i32 4
  %50 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %34, i32 0, i32 4, i32 2
  store i8 -128, ptr %50, align 2
  %51 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %34, i32 0, i32 4, i32 1
  store i8 1, ptr %51, align 1
  %52 = load ptr, ptr %23, align 4
  %53 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %52, i32 0, i32 4, i32 3
  %54 = load i8, ptr %53, align 4
  %55 = add i8 %54, 1
  store i8 %55, ptr %53, align 4
  %56 = zext i8 %54 to i32
  %57 = getelementptr %struct.atmel_hsmc_nand_controller, ptr %52, i32 0, i32 4, i32 4, i32 %56
  store i8 0, ptr %57, align 1
  %58 = load i32, ptr %8, align 4
  %59 = icmp ugt i32 %58, 512
  br i1 %59, label %60, label %64

60:                                               ; preds = %48
  %61 = add i8 %54, 2
  store i8 %61, ptr %53, align 4
  %62 = zext i8 %55 to i32
  %63 = getelementptr %struct.atmel_hsmc_nand_controller, ptr %52, i32 0, i32 4, i32 4, i32 %62
  store i8 0, ptr %63, align 1
  br label %64

64:                                               ; preds = %60, %48
  %65 = phi i8 [ %55, %48 ], [ %61, %60 ]
  %66 = icmp sgt i32 %2, -1
  br i1 %66, label %67, label %87

67:                                               ; preds = %64
  %68 = trunc i32 %2 to i8
  %69 = add i8 %65, 1
  %70 = zext i8 %65 to i32
  %71 = getelementptr %struct.atmel_hsmc_nand_controller, ptr %52, i32 0, i32 4, i32 4, i32 %70
  store i8 %68, ptr %71, align 1
  %72 = lshr i32 %2, 8
  %73 = trunc i32 %72 to i8
  %74 = add i8 %65, 2
  store i8 %74, ptr %53, align 4
  %75 = zext i8 %69 to i32
  %76 = getelementptr %struct.atmel_hsmc_nand_controller, ptr %52, i32 0, i32 4, i32 4, i32 %75
  store i8 %73, ptr %76, align 1
  %77 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %78 = load i32, ptr %77, align 8
  %79 = and i32 %78, 16384
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %67
  %82 = lshr i32 %2, 16
  %83 = trunc i32 %82 to i8
  %84 = add i8 %65, 3
  store i8 %84, ptr %53, align 4
  %85 = zext i8 %74 to i32
  %86 = getelementptr %struct.atmel_hsmc_nand_controller, ptr %52, i32 0, i32 4, i32 4, i32 %85
  store i8 %83, ptr %86, align 1
  br label %87

87:                                               ; preds = %81, %67, %64
  %88 = load ptr, ptr %22, align 8
  %89 = load i32, ptr %88, align 4
  %90 = trunc i32 %89 to i8
  store i8 %90, ptr %49, align 4
  %91 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %34, i32 0, i32 4, i32 5
  store i32 2, ptr %91, align 4
  %92 = load ptr, ptr %23, align 4
  br i1 %3, label %101, label %93

93:                                               ; preds = %87
  %94 = getelementptr i8, ptr %0, i32 1428
  %95 = load ptr, ptr %94, align 4
  %96 = tail call i32 @atmel_pmecc_enable(ptr noundef %95, i32 noundef 1) #9
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.atmel_nand_controller, ptr %92, i32 0, i32 2
  %100 = load ptr, ptr %99, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.58, i32 noundef %96) #10
  br label %128

101:                                              ; preds = %87
  %102 = tail call fastcc i32 @atmel_nfc_exec_op(ptr noundef %34, i1 noundef zeroext false)
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %113, label %109

104:                                              ; preds = %93
  %105 = tail call fastcc i32 @atmel_nfc_exec_op(ptr noundef %34, i1 noundef zeroext false)
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %115, label %107

107:                                              ; preds = %104
  %108 = load ptr, ptr %94, align 4
  tail call void @atmel_pmecc_disable(ptr noundef %108) #9
  br label %109

109:                                              ; preds = %107, %101
  %110 = phi i32 [ %105, %107 ], [ %102, %101 ]
  %111 = getelementptr inbounds %struct.atmel_nand_controller, ptr %34, i32 0, i32 2
  %112 = load ptr, ptr %111, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %112, ptr noundef nonnull @.str.60, i32 noundef %110) #10
  br label %128

113:                                              ; preds = %101
  %114 = tail call fastcc i32 @atmel_nand_pmecc_generate_eccbytes(ptr noundef %0, i1 noundef zeroext true)
  br label %119

115:                                              ; preds = %104
  %116 = tail call fastcc i32 @atmel_nand_pmecc_generate_eccbytes(ptr noundef %0, i1 noundef zeroext false)
  %117 = getelementptr i8, ptr %0, i32 1428
  %118 = load ptr, ptr %117, align 4
  tail call void @atmel_pmecc_disable(ptr noundef %118) #9
  br label %119

119:                                              ; preds = %115, %113
  %120 = phi i32 [ %114, %113 ], [ %116, %115 ]
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %119
  %123 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %124 = load ptr, ptr %123, align 4
  %125 = load i32, ptr %15, align 4
  %126 = tail call i32 @nand_write_data_op(ptr noundef %0, ptr noundef %124, i32 noundef %125, i1 noundef zeroext false) #9
  %127 = tail call i32 @nand_prog_page_end_op(ptr noundef %0) #9
  br label %128

128:                                              ; preds = %122, %119, %109, %98
  %129 = phi i32 [ %110, %109 ], [ %127, %122 ], [ %96, %98 ], [ %120, %119 ]
  ret i32 %129
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @atmel_smc_nand_prepare_smcconf(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.atmel_nand, ptr %0, i32 0, i32 2, i32 32
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %1, align 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %156

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.nand_interface_config, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 22
  %10 = load i32, ptr %9, align 8
  %11 = icmp ult i32 %10, 30000
  br i1 %11, label %156, label %12

12:                                               ; preds = %8
  tail call void @atmel_smc_cs_conf_init(ptr noundef %2) #9
  %13 = getelementptr inbounds %struct.atmel_nand_controller, ptr %5, i32 0, i32 7
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @clk_get_rate(ptr noundef %14) #9
  %16 = udiv i32 1000000000, %15
  %17 = mul i32 %16, 1000
  %18 = getelementptr inbounds %struct.nand_interface_config, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 36
  %19 = load i32, ptr %18, align 8
  %20 = add i32 %17, -1
  %21 = add i32 %20, %19
  %22 = udiv i32 %21, %17
  %23 = tail call i32 @atmel_smc_cs_conf_set_pulse(ptr noundef %2, i32 noundef 0, i32 noundef %22) #9
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %156

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.nand_interface_config, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 14
  %27 = load i32, ptr %26, align 8
  %28 = getelementptr inbounds %struct.nand_interface_config, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 16
  %29 = load i32, ptr %28, align 8
  %30 = tail call i32 @llvm.umax.i32(i32 %27, i32 %29)
  %31 = getelementptr inbounds %struct.nand_interface_config, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 6
  %32 = load i32, ptr %31, align 8
  %33 = tail call i32 @llvm.umax.i32(i32 %30, i32 %32)
  %34 = getelementptr inbounds %struct.nand_interface_config, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 18
  %35 = load i32, ptr %34, align 8
  %36 = tail call i32 @llvm.umax.i32(i32 %33, i32 %35)
  %37 = add i32 %20, %36
  %38 = udiv i32 %37, %17
  %39 = tail call i32 @llvm.usub.sat.i32(i32 %38, i32 %22)
  %40 = tail call i32 @atmel_smc_cs_conf_set_setup(ptr noundef %2, i32 noundef 0, i32 noundef %39) #9
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %156

42:                                               ; preds = %25
  %43 = add i32 %39, %22
  %44 = getelementptr inbounds %struct.nand_interface_config, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 12
  %45 = load i32, ptr %44, align 8
  %46 = getelementptr inbounds %struct.nand_interface_config, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 10
  %47 = load i32, ptr %46, align 8
  %48 = tail call i32 @llvm.umax.i32(i32 %45, i32 %47)
  %49 = getelementptr inbounds %struct.nand_interface_config, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 4
  %50 = load i32, ptr %49, align 8
  %51 = tail call i32 @llvm.umax.i32(i32 %48, i32 %50)
  %52 = getelementptr inbounds %struct.nand_interface_config, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 17
  %53 = load i32, ptr %52, align 4
  %54 = tail call i32 @llvm.umax.i32(i32 %51, i32 %53)
  %55 = getelementptr inbounds %struct.nand_interface_config, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 34
  %56 = load i32, ptr %55, align 8
  %57 = tail call i32 @llvm.umax.i32(i32 %54, i32 %56)
  %58 = add i32 %20, %57
  %59 = udiv i32 %58, %17
  %60 = add i32 %43, %59
  %61 = getelementptr inbounds %struct.nand_interface_config, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 33
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %20, %62
  %64 = udiv i32 %63, %17
  %65 = tail call i32 @llvm.umax.i32(i32 %60, i32 %64)
  %66 = tail call i32 @atmel_smc_cs_conf_set_cycle(ptr noundef %2, i32 noundef 0, i32 noundef %65) #9
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %156

68:                                               ; preds = %42
  %69 = tail call i32 @atmel_smc_cs_conf_set_pulse(ptr noundef %2, i32 noundef 8, i32 noundef %65) #9
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %156

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.nand_interface_config, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 24
  %73 = load i32, ptr %72, align 8
  %74 = getelementptr inbounds %struct.nand_interface_config, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 25
  %75 = load i32, ptr %74, align 4
  %76 = tail call i32 @llvm.umax.i32(i32 %73, i32 %75)
  %77 = add i32 %20, %76
  %78 = udiv i32 %77, %17
  %79 = getelementptr inbounds %struct.nand_interface_config, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 27
  %80 = load i32, ptr %79, align 4
  %81 = add i32 %20, %80
  %82 = udiv i32 %81, %17
  %83 = sub i32 %82, %78
  %84 = icmp ugt i32 %83, 16
  %85 = icmp eq i32 %82, %78
  %86 = shl i32 %83, 16
  %87 = add i32 %86, -65536
  %88 = or i32 %87, 1048576
  %89 = select i1 %85, i32 1048576, i32 %88
  %90 = select i1 %84, i32 2031616, i32 %89
  %91 = getelementptr inbounds %struct.atmel_smc_cs_conf, ptr %2, i32 0, i32 4
  %92 = load i32, ptr %91, align 4
  %93 = or i32 %90, %92
  store i32 %93, ptr %91, align 4
  %94 = getelementptr inbounds %struct.nand_interface_config, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 29
  %95 = load i32, ptr %94, align 4
  %96 = add i32 %20, %95
  %97 = udiv i32 %96, %17
  %98 = tail call i32 @atmel_smc_cs_conf_set_pulse(ptr noundef %2, i32 noundef 16, i32 noundef %97) #9
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %156

100:                                              ; preds = %71
  %101 = add i32 %97, %78
  %102 = load i32, ptr %9, align 8
  %103 = add i32 %20, %102
  %104 = udiv i32 %103, %17
  %105 = tail call i32 @llvm.umax.i32(i32 %101, i32 %104)
  %106 = tail call i32 @atmel_smc_cs_conf_set_cycle(ptr noundef %2, i32 noundef 16, i32 noundef %105) #9
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %156

108:                                              ; preds = %100
  %109 = tail call i32 @atmel_smc_cs_conf_set_pulse(ptr noundef %2, i32 noundef 24, i32 noundef %105) #9
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %156

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.nand_interface_config, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 13
  %113 = load i32, ptr %112, align 4
  %114 = add i32 %20, %113
  %115 = udiv i32 %114, %17
  %116 = tail call i32 @atmel_smc_cs_conf_set_timing(ptr noundef %2, i32 noundef 0, i32 noundef %115) #9
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %156

118:                                              ; preds = %111
  %119 = getelementptr inbounds %struct.nand_interface_config, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 5
  %120 = load i32, ptr %119, align 4
  %121 = add i32 %20, %120
  %122 = udiv i32 %121, %17
  %123 = tail call i32 @atmel_smc_cs_conf_set_timing(ptr noundef %2, i32 noundef 4, i32 noundef %122) #9
  switch i32 %123, label %156 [
    i32 -34, label %124
    i32 0, label %124
  ]

124:                                              ; preds = %118, %118
  %125 = getelementptr inbounds %struct.nand_interface_config, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 7
  %126 = load i32, ptr %125, align 4
  %127 = add i32 %20, %126
  %128 = udiv i32 %127, %17
  %129 = tail call i32 @atmel_smc_cs_conf_set_timing(ptr noundef %2, i32 noundef 8, i32 noundef %128) #9
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %156

131:                                              ; preds = %124
  %132 = getelementptr inbounds %struct.nand_interface_config, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 30
  %133 = load i32, ptr %132, align 8
  %134 = add i32 %20, %133
  %135 = udiv i32 %134, %17
  %136 = tail call i32 @atmel_smc_cs_conf_set_timing(ptr noundef %2, i32 noundef 16, i32 noundef %135) #9
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %156

138:                                              ; preds = %131
  %139 = getelementptr inbounds %struct.nand_interface_config, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 32
  %140 = load i32, ptr %139, align 8
  %141 = add i32 %20, %140
  %142 = udiv i32 %141, %17
  %143 = tail call i32 @atmel_smc_cs_conf_set_timing(ptr noundef %2, i32 noundef 24, i32 noundef %142) #9
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %156

145:                                              ; preds = %138
  %146 = getelementptr inbounds %struct.atmel_smc_cs_conf, ptr %2, i32 0, i32 3
  %147 = load i32, ptr %146, align 4
  %148 = or i32 %147, -2147483648
  store i32 %148, ptr %146, align 4
  %149 = getelementptr inbounds %struct.atmel_nand, ptr %0, i32 0, i32 2, i32 6
  %150 = load i32, ptr %149, align 8
  %151 = load i32, ptr %91, align 4
  %152 = shl i32 %150, 11
  %153 = and i32 %152, 4096
  %154 = or i32 %153, %151
  %155 = or i32 %154, 3
  store i32 %155, ptr %91, align 4
  br label %156

156:                                              ; preds = %145, %138, %131, %124, %118, %111, %108, %100, %71, %68, %42, %25, %12, %8, %3
  %157 = phi i32 [ 0, %145 ], [ -524, %3 ], [ -524, %8 ], [ %23, %12 ], [ %40, %25 ], [ %66, %42 ], [ %69, %68 ], [ %98, %71 ], [ %106, %100 ], [ %109, %108 ], [ %116, %111 ], [ %123, %118 ], [ %129, %124 ], [ %136, %131 ], [ %143, %138 ]
  ret i32 %157
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @atmel_hsmc_cs_conf_apply(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @atmel_smc_cs_conf_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atmel_smc_cs_conf_set_pulse(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atmel_smc_cs_conf_set_setup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atmel_smc_cs_conf_set_cycle(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atmel_smc_cs_conf_set_timing(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_op_parser_exec_op(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_hsmc_exec_cmd_addr(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 1424
  %6 = load ptr, ptr %5, align 8
  %7 = load i32, ptr %6, align 4
  %8 = trunc i32 %7 to i8
  %9 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %4, i32 0, i32 4
  store i8 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.nand_subop, ptr %1, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %52, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.nand_subop, ptr %1, i32 0, i32 1
  %15 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %4, i32 0, i32 4, i32 3
  %16 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %4, i32 0, i32 4, i32 1
  br label %17

17:                                               ; preds = %48, %13
  %18 = phi i32 [ 0, %13 ], [ %49, %48 ]
  %19 = load ptr, ptr %14, align 4
  %20 = getelementptr %struct.nand_op_instr, ptr %19, i32 %18
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = getelementptr %struct.nand_op_instr, ptr %19, i32 %18, i32 1
  %25 = load i8, ptr %24, align 4
  %26 = load i8, ptr %16, align 1
  %27 = add i8 %26, 1
  store i8 %27, ptr %16, align 1
  %28 = zext i8 %26 to i32
  %29 = getelementptr %struct.atmel_hsmc_nand_controller, ptr %4, i32 0, i32 4, i32 2, i32 %28
  store i8 %25, ptr %29, align 1
  br label %48

30:                                               ; preds = %17
  %31 = tail call i32 @nand_subop_get_addr_start_off(ptr noundef %1, i32 noundef %18) #9
  %32 = tail call i32 @nand_subop_get_num_addr_cyc(ptr noundef %1, i32 noundef %18) #9
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %30
  %35 = getelementptr %struct.nand_op_instr, ptr %19, i32 %18, i32 1, i32 0, i32 1
  br label %36

36:                                               ; preds = %36, %34
  %37 = phi i32 [ %31, %34 ], [ %45, %36 ]
  %38 = load ptr, ptr %35, align 4
  %39 = getelementptr i8, ptr %38, i32 %37
  %40 = load i8, ptr %39, align 1
  %41 = load i8, ptr %15, align 4
  %42 = zext i8 %41 to i32
  %43 = getelementptr %struct.atmel_hsmc_nand_controller, ptr %4, i32 0, i32 4, i32 4, i32 %42
  store i8 %40, ptr %43, align 1
  %44 = add i8 %41, 1
  store i8 %44, ptr %15, align 4
  %45 = add nuw i32 %37, 1
  %46 = tail call i32 @nand_subop_get_num_addr_cyc(ptr noundef %1, i32 noundef %18) #9
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %36, label %48

48:                                               ; preds = %36, %30, %23
  %49 = add nuw i32 %18, 1
  %50 = load i32, ptr %10, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %17, label %52

52:                                               ; preds = %48, %2
  %53 = tail call fastcc i32 @atmel_nfc_exec_op(ptr noundef %4, i1 noundef zeroext true)
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_hsmc_exec_rw(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.nand_subop, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -16
  %6 = load i32, ptr %4, align 4
  %7 = icmp eq i32 %6, 2
  %8 = getelementptr inbounds %struct.nand_op_instr, ptr %4, i32 0, i32 1
  %9 = getelementptr inbounds %struct.nand_op_instr, ptr %4, i32 0, i32 1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %8, align 4
  %12 = getelementptr inbounds %struct.nand_op_instr, ptr %4, i32 0, i32 1, i32 0, i32 2
  %13 = load i8, ptr %12, align 4, !range !8
  %14 = icmp ne i8 %13, 0
  br i1 %7, label %15, label %16

15:                                               ; preds = %2
  tail call fastcc void @atmel_nand_data_in(ptr noundef %5, ptr noundef %10, i32 noundef %11, i1 noundef zeroext %14)
  br label %17

16:                                               ; preds = %2
  tail call fastcc void @atmel_nand_data_out(ptr noundef %5, ptr noundef %10, i32 noundef %11, i1 noundef zeroext %14)
  br label %17

17:                                               ; preds = %16, %15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_hsmc_exec_waitrdy(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.nand_subop, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nand_op_instr, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !9
  %8 = getelementptr i8, ptr %0, i32 1424
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.atmel_nand_cs, ptr %9, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  switch i32 %11, label %14 [
    i32 1, label %18
    i32 0, label %12
  ]

12:                                               ; preds = %2
  %13 = tail call i32 @nand_soft_waitrdy(ptr noundef %0, i32 noundef %7) #9
  br label %59

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.atmel_nand_cs, ptr %9, i32 0, i32 1, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @nand_gpio_waitrdy(ptr noundef %0, ptr noundef %16, i32 noundef %7) #9
  br label %59

18:                                               ; preds = %2
  %19 = getelementptr i8, ptr %0, i32 1308
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.atmel_nand_cs, ptr %9, i32 0, i32 1, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, 24
  %24 = shl nuw i32 1, %23
  %25 = mul i32 %7, 1000
  %26 = zext i32 %25 to i64
  %27 = tail call i64 @ktime_get() #9
  %28 = mul nuw nsw i64 %26, 1000
  %29 = add i64 %27, %28
  %30 = getelementptr inbounds %struct.atmel_nand_controller, ptr %20, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = call i32 @regmap_read(ptr noundef %31, i32 noundef 8, ptr noundef nonnull %3) #9
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %18
  %35 = icmp eq i32 %25, 0
  br label %36

36:                                               ; preds = %44, %34
  %37 = load i32, ptr %3, align 4
  %38 = and i32 %37, %24
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %36
  br i1 %35, label %44, label %41

41:                                               ; preds = %40
  %42 = call i64 @ktime_get() #9
  %43 = icmp sgt i64 %42, %29
  br i1 %43, label %49, label %44

44:                                               ; preds = %41, %40
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %45(i32 noundef 2147480) #9
  %46 = load ptr, ptr %30, align 4
  %47 = call i32 @regmap_read(ptr noundef %46, i32 noundef 8, ptr noundef nonnull %3) #9
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %36, label %59

49:                                               ; preds = %41
  %50 = load ptr, ptr %30, align 4
  %51 = call i32 @regmap_read(ptr noundef %50, i32 noundef 8, ptr noundef nonnull %3) #9
  %52 = icmp eq i32 %51, 0
  %53 = load i32, ptr %3, align 4
  %54 = and i32 %53, %24
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %55, i32 -110, i32 0
  br i1 %52, label %57, label %59

57:                                               ; preds = %49, %36
  %58 = phi i32 [ %56, %49 ], [ 0, %36 ]
  br label %59

59:                                               ; preds = %57, %49, %44, %18, %14, %12
  %60 = phi i32 [ %13, %12 ], [ %17, %14 ], [ %58, %57 ], [ %51, %49 ], [ %32, %18 ], [ %47, %44 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_subop_get_addr_start_off(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_subop_get_num_addr_cyc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @atmel_nand_data_in(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.atmel_nand, ptr %0, i32 0, i32 2, i32 32
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.atmel_nand_controller, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp ne ptr %8, null
  %10 = icmp ugt ptr %1, inttoptr (i32 -1073741825 to ptr)
  %11 = and i1 %10, %9
  %12 = load ptr, ptr @high_memory, align 4
  %13 = icmp ugt ptr %12, %1
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %33

15:                                               ; preds = %4
  %16 = ptrtoint ptr %1 to i32
  %17 = add i32 %16, 1073741824
  %18 = lshr i32 %17, 12
  %19 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %20 = add i32 %19, %18
  %21 = tail call i32 @pfn_valid(i32 noundef %20) #9
  %22 = icmp eq i32 %21, 0
  %23 = icmp ult i32 %2, 128
  %24 = or i1 %23, %22
  %25 = or i1 %24, %3
  br i1 %25, label %33, label %26

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.atmel_nand, ptr %0, i32 0, i32 3
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.atmel_nand_cs, ptr %28, i32 0, i32 3, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = tail call fastcc i32 @atmel_nand_dma_transfer(ptr noundef %6, ptr noundef nonnull %1, i32 noundef %30, i32 noundef %2, i32 noundef 2)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %46, label %33

33:                                               ; preds = %26, %15, %4
  %34 = getelementptr inbounds %struct.atmel_nand, ptr %0, i32 0, i32 2, i32 6
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, 2
  %37 = icmp eq i32 %36, 0
  %38 = or i1 %37, %3
  %39 = getelementptr inbounds %struct.atmel_nand, ptr %0, i32 0, i32 3
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.atmel_nand_cs, ptr %40, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  br i1 %38, label %45, label %43

43:                                               ; preds = %33
  %44 = lshr i32 %2, 1
  tail call void @__raw_readsw(ptr noundef %42, ptr noundef %1, i32 noundef %44) #9
  br label %46

45:                                               ; preds = %33
  tail call void @__raw_readsb(ptr noundef %42, ptr noundef %1, i32 noundef %2) #9
  br label %46

46:                                               ; preds = %45, %43, %26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @atmel_nand_data_out(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.atmel_nand, ptr %0, i32 0, i32 2, i32 32
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.atmel_nand_controller, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp ne ptr %8, null
  %10 = icmp ugt ptr %1, inttoptr (i32 -1073741825 to ptr)
  %11 = and i1 %10, %9
  %12 = load ptr, ptr @high_memory, align 4
  %13 = icmp ugt ptr %12, %1
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %33

15:                                               ; preds = %4
  %16 = ptrtoint ptr %1 to i32
  %17 = add i32 %16, 1073741824
  %18 = lshr i32 %17, 12
  %19 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %20 = add i32 %19, %18
  %21 = tail call i32 @pfn_valid(i32 noundef %20) #9
  %22 = icmp eq i32 %21, 0
  %23 = icmp ult i32 %2, 128
  %24 = or i1 %23, %22
  %25 = or i1 %24, %3
  br i1 %25, label %33, label %26

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.atmel_nand, ptr %0, i32 0, i32 3
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.atmel_nand_cs, ptr %28, i32 0, i32 3, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = tail call fastcc i32 @atmel_nand_dma_transfer(ptr noundef %6, ptr noundef nonnull %1, i32 noundef %30, i32 noundef %2, i32 noundef 1)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %46, label %33

33:                                               ; preds = %26, %15, %4
  %34 = getelementptr inbounds %struct.atmel_nand, ptr %0, i32 0, i32 2, i32 6
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, 2
  %37 = icmp eq i32 %36, 0
  %38 = or i1 %37, %3
  %39 = getelementptr inbounds %struct.atmel_nand, ptr %0, i32 0, i32 3
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.atmel_nand_cs, ptr %40, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  br i1 %38, label %45, label %43

43:                                               ; preds = %33
  %44 = lshr i32 %2, 1
  tail call void @__raw_writesw(ptr noundef %42, ptr noundef %1, i32 noundef %44) #9
  br label %46

45:                                               ; preds = %33
  tail call void @__raw_writesb(ptr noundef %42, ptr noundef %1, i32 noundef %2) #9
  br label %46

46:                                               ; preds = %45, %43, %26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_soft_waitrdy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_gpio_waitrdy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_smc_nand_controller_probe(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 64, i32 noundef 3520) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %56, label %7

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @atmel_nand_controller_init(ptr noundef nonnull %5, ptr noundef %0, ptr noundef %1)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %56

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.atmel_nand_controller, ptr %5, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.atmel_nand_controller, ptr %5, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.atmel_nand_controller_caps, ptr %14, i32 0, i32 1
  %16 = load i8, ptr %15, align 1, !range !8
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %54

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 25
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.atmel_nand_controller_caps, ptr %14, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #9, !annotation !9
  %25 = call i32 @__of_parse_phandle_with_args(ptr noundef %22, ptr noundef %24, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #9
  %26 = icmp ne i32 %25, 0
  %27 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #9
  %28 = icmp eq ptr %27, null
  %29 = select i1 %26, i1 true, i1 %28
  br i1 %29, label %54, label %30

30:                                               ; preds = %18
  %31 = call ptr @of_match_node(ptr noundef nonnull @atmel_ebi_csa_regmap_of_ids, ptr noundef nonnull %27) #9
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  call void @of_node_put(ptr noundef nonnull %27) #9
  br label %54

34:                                               ; preds = %30
  %35 = call ptr @syscon_node_to_regmap(ptr noundef nonnull %27) #9
  %36 = getelementptr inbounds %struct.atmel_smc_nand_controller, ptr %5, i32 0, i32 1
  store ptr %35, ptr %36, align 4
  call void @of_node_put(ptr noundef nonnull %27) #9
  %37 = load ptr, ptr %36, align 4
  %38 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %52, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.of_device_id, ptr %31, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.atmel_smc_nand_controller, ptr %5, i32 0, i32 2
  store ptr %41, ptr %42, align 4
  %43 = load ptr, ptr %19, align 4
  %44 = getelementptr inbounds %struct.device, ptr %43, i32 0, i32 25
  %45 = load ptr, ptr %44, align 8
  %46 = call i32 @of_device_is_compatible(ptr noundef %45, ptr noundef nonnull @.str.78) #9
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %39
  %49 = load ptr, ptr %42, align 4
  %50 = load i32, ptr %49, align 4
  %51 = add i32 %50, 4
  store i32 %51, ptr %49, align 4
  br label %54

52:                                               ; preds = %34
  %53 = ptrtoint ptr %37 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.77, i32 noundef %53) #10
  br label %56

54:                                               ; preds = %48, %39, %33, %18, %10
  %55 = call fastcc i32 @atmel_nand_controller_add_nands(ptr noundef nonnull %5)
  br label %56

56:                                               ; preds = %54, %52, %7, %2
  %57 = phi i32 [ %55, %54 ], [ -12, %2 ], [ %8, %7 ], [ %53, %52 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_smc_nand_controller_remove(ptr noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.atmel_nand_controller, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %17, label %5

5:                                                ; preds = %11, %1
  %6 = phi ptr [ %7, %11 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.atmel_nand, ptr %6, i32 0, i32 2
  %9 = tail call i32 @mtd_device_unregister(ptr noundef %8) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %5
  tail call void @nand_cleanup(ptr noundef %8) #9
  %12 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %6, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %13, ptr %15, align 4
  store volatile ptr %14, ptr %13, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %12, align 4
  %16 = icmp eq ptr %7, %2
  br i1 %16, label %17, label %5

17:                                               ; preds = %11, %1
  %18 = getelementptr inbounds %struct.atmel_nand_controller, ptr %0, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @dma_release_channel(ptr noundef nonnull %19) #9
  br label %22

22:                                               ; preds = %21, %17
  %23 = getelementptr inbounds %struct.atmel_nand_controller, ptr %0, i32 0, i32 7
  %24 = load ptr, ptr %23, align 4
  tail call void @clk_put(ptr noundef %24) #9
  br label %25

25:                                               ; preds = %22, %5
  %26 = phi i32 [ 0, %22 ], [ %9, %5 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_smc_nand_init(ptr noundef %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.atmel_nand_controller, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.atmel_nand, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 56, i32 1
  store ptr %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.atmel_nand, ptr %1, i32 0, i32 2, i32 32
  store ptr %0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.atmel_nand_controller, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.atmel_nand_controller, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.atmel_nand_controller_caps, ptr %12, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.atmel_nand_controller_ops, ptr %14, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %10, %2
  %19 = getelementptr inbounds %struct.atmel_nand, ptr %1, i32 0, i32 2, i32 6
  %20 = load i32, ptr %19, align 8
  %21 = or i32 %20, 8388608
  store i32 %21, ptr %19, align 8
  br label %22

22:                                               ; preds = %18, %10
  %23 = getelementptr inbounds %struct.atmel_nand_controller, ptr %0, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.atmel_nand, ptr %1, i32 0, i32 2, i32 6
  %28 = load i32, ptr %27, align 8
  %29 = or i32 %28, 1048576
  store i32 %29, ptr %27, align 8
  br label %30

30:                                               ; preds = %26, %22
  %31 = getelementptr inbounds %struct.atmel_nand_controller, ptr %0, i32 0, i32 5
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.atmel_nand, ptr %1, i32 0, i32 2, i32 33
  store i32 3, ptr %35, align 8
  br label %36

36:                                               ; preds = %34, %30
  %37 = getelementptr inbounds %struct.atmel_smc_nand_controller, ptr %0, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %70, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.atmel_nand, ptr %1, i32 0, i32 6
  %42 = load i32, ptr %41, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.atmel_smc_nand_controller, ptr %0, i32 0, i32 2
  br label %46

46:                                               ; preds = %58, %44
  %47 = phi ptr [ %38, %44 ], [ %59, %58 ]
  %48 = phi i32 [ 0, %44 ], [ %55, %58 ]
  %49 = load ptr, ptr %45, align 4
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr %struct.atmel_nand, ptr %1, i32 0, i32 7, i32 %48
  %52 = load i32, ptr %51, align 4
  %53 = shl nuw i32 1, %52
  %54 = tail call i32 @regmap_update_bits_base(ptr noundef %47, i32 noundef %50, i32 noundef %53, i32 noundef %53, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %55 = add nuw nsw i32 %48, 1
  %56 = load i32, ptr %41, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %46
  %59 = load ptr, ptr %37, align 4
  br label %46

60:                                               ; preds = %46, %40
  %61 = getelementptr inbounds %struct.atmel_smc_nand_controller, ptr %0, i32 0, i32 2
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.atmel_smc_nand_ebi_csa_cfg, ptr %62, i32 0, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %60
  %67 = load ptr, ptr %37, align 4
  %68 = load i32, ptr %62, align 4
  %69 = tail call i32 @regmap_update_bits_base(ptr noundef %67, i32 noundef %68, i32 noundef %64, i32 noundef %64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %70

70:                                               ; preds = %66, %60, %36
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_smc_nand_setup_interface(ptr noundef %0, i32 noundef %1, ptr noundef %2) #2 {
  %4 = alloca %struct.atmel_smc_cs_conf, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.atmel_nand, ptr %0, i32 0, i32 2, i32 32
  %6 = load ptr, ptr %5, align 4
  %7 = call fastcc i32 @atmel_smc_nand_prepare_smcconf(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %4)
  %8 = icmp ne i32 %7, 0
  %9 = icmp eq i32 %1, -1
  %10 = or i1 %9, %8
  br i1 %10, label %17, label %11

11:                                               ; preds = %3
  %12 = getelementptr %struct.atmel_nand, ptr %0, i32 0, i32 7, i32 %1
  %13 = getelementptr %struct.atmel_nand, ptr %0, i32 0, i32 7, i32 %1, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %13, ptr noundef nonnull align 4 dereferenceable(20) %4, i32 20, i1 false)
  %14 = getelementptr inbounds %struct.atmel_nand_controller, ptr %6, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = load i32, ptr %12, align 4
  call void @atmel_smc_cs_conf_apply(ptr noundef %15, i32 noundef %16, ptr noundef %13) #9
  br label %17

17:                                               ; preds = %11, %3
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #9
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_smc_nand_exec_op(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) #2 {
  br i1 %2, label %97, label %4

4:                                                ; preds = %3
  %5 = load i32, ptr %1, align 4
  %6 = getelementptr %struct.atmel_nand, ptr %0, i32 0, i32 7, i32 %5
  %7 = getelementptr inbounds %struct.atmel_nand, ptr %0, i32 0, i32 3
  store ptr %6, ptr %7, align 8
  %8 = getelementptr %struct.atmel_nand, ptr %0, i32 0, i32 7, i32 %5, i32 2
  %9 = load ptr, ptr %8, align 4
  tail call void @gpiod_set_value(ptr noundef %9, i32 noundef 0) #9
  %10 = getelementptr inbounds %struct.nand_operation, ptr %1, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %92, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.nand_operation, ptr %1, i32 0, i32 1
  %15 = getelementptr inbounds %struct.atmel_nand, ptr %0, i32 0, i32 2, i32 32
  %16 = getelementptr inbounds %struct.atmel_nand, ptr %0, i32 0, i32 2
  br label %17

17:                                               ; preds = %88, %13
  %18 = phi i32 [ 0, %13 ], [ %89, %88 ]
  %19 = load ptr, ptr %14, align 4
  %20 = getelementptr %struct.nand_op_instr, ptr %19, i32 %18
  %21 = load ptr, ptr %15, align 4
  %22 = load i32, ptr %20, align 4
  switch i32 %22, label %92 [
    i32 0, label %30
    i32 1, label %23
    i32 2, label %56
    i32 3, label %64
    i32 4, label %72
  ]

23:                                               ; preds = %17
  %24 = getelementptr %struct.nand_op_instr, ptr %19, i32 %18, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %88, label %27

27:                                               ; preds = %23
  %28 = getelementptr %struct.nand_op_instr, ptr %19, i32 %18, i32 1, i32 0, i32 1
  %29 = getelementptr inbounds %struct.atmel_nand_controller, ptr %21, i32 0, i32 1
  br label %41

30:                                               ; preds = %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %31 = getelementptr %struct.nand_op_instr, ptr %19, i32 %18, i32 1
  %32 = load i8, ptr %31, align 4
  %33 = load ptr, ptr %7, align 8
  %34 = getelementptr inbounds %struct.atmel_nand_cs, ptr %33, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.atmel_nand_controller, ptr %21, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.atmel_nand_controller_caps, ptr %37, i32 0, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr i8, ptr %35, i32 %39
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %40, i8 %32) #9, !srcloc !13
  br label %88

41:                                               ; preds = %41, %27
  %42 = phi i32 [ 0, %27 ], [ %53, %41 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %43 = load ptr, ptr %28, align 4
  %44 = getelementptr i8, ptr %43, i32 %42
  %45 = load i8, ptr %44, align 1
  %46 = load ptr, ptr %7, align 8
  %47 = getelementptr inbounds %struct.atmel_nand_cs, ptr %46, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = load ptr, ptr %29, align 4
  %50 = getelementptr inbounds %struct.atmel_nand_controller_caps, ptr %49, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr i8, ptr %48, i32 %51
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %52, i8 %45) #9, !srcloc !13
  %53 = add nuw i32 %42, 1
  %54 = load i32, ptr %24, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %41, label %88

56:                                               ; preds = %17
  %57 = getelementptr %struct.nand_op_instr, ptr %19, i32 %18, i32 1
  %58 = getelementptr %struct.nand_op_instr, ptr %19, i32 %18, i32 1, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = load i32, ptr %57, align 4
  %61 = getelementptr %struct.nand_op_instr, ptr %19, i32 %18, i32 1, i32 0, i32 2
  %62 = load i8, ptr %61, align 4, !range !8
  %63 = icmp ne i8 %62, 0
  tail call fastcc void @atmel_nand_data_in(ptr noundef %0, ptr noundef %59, i32 noundef %60, i1 noundef zeroext %63) #9
  br label %88

64:                                               ; preds = %17
  %65 = getelementptr %struct.nand_op_instr, ptr %19, i32 %18, i32 1
  %66 = getelementptr %struct.nand_op_instr, ptr %19, i32 %18, i32 1, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = load i32, ptr %65, align 4
  %69 = getelementptr %struct.nand_op_instr, ptr %19, i32 %18, i32 1, i32 0, i32 2
  %70 = load i8, ptr %69, align 4, !range !8
  %71 = icmp ne i8 %70, 0
  tail call fastcc void @atmel_nand_data_out(ptr noundef %0, ptr noundef %67, i32 noundef %68, i1 noundef zeroext %71) #9
  br label %88

72:                                               ; preds = %17
  %73 = getelementptr %struct.nand_op_instr, ptr %19, i32 %18, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = load ptr, ptr %7, align 8
  %76 = getelementptr inbounds %struct.atmel_nand_cs, ptr %75, i32 0, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = tail call i32 @nand_soft_waitrdy(ptr noundef %16, i32 noundef %74) #9
  br label %85

81:                                               ; preds = %72
  %82 = getelementptr inbounds %struct.atmel_nand_cs, ptr %75, i32 0, i32 1, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = tail call i32 @nand_gpio_waitrdy(ptr noundef %16, ptr noundef %83, i32 noundef %74) #9
  br label %85

85:                                               ; preds = %81, %79
  %86 = phi i32 [ %80, %79 ], [ %84, %81 ]
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %85, %64, %56, %41, %30, %23
  %89 = add nuw i32 %18, 1
  %90 = load i32, ptr %10, align 4
  %91 = icmp ult i32 %89, %90
  br i1 %91, label %17, label %92

92:                                               ; preds = %88, %85, %17, %4
  %93 = phi i32 [ 0, %4 ], [ -22, %17 ], [ %86, %85 ], [ 0, %88 ]
  %94 = load ptr, ptr %7, align 8
  %95 = getelementptr inbounds %struct.atmel_nand_cs, ptr %94, i32 0, i32 2
  %96 = load ptr, ptr %95, align 4
  tail call void @gpiod_set_value(ptr noundef %96, i32 noundef 1) #9
  br label %97

97:                                               ; preds = %92, %3
  %98 = phi i32 [ %93, %92 ], [ 0, %3 ]
  ret i32 %98
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @atmel_smc_cs_conf_apply(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_nand_controller_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.atmel_nand_controller, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @atmel_pmecc_reset(ptr noundef nonnull %5) #9
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %struct.atmel_nand_controller, ptr %3, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %28, label %15

12:                                               ; preds = %22, %15
  %13 = load ptr, ptr %16, align 4
  %14 = icmp eq ptr %13, %9
  br i1 %14, label %28, label %15

15:                                               ; preds = %12, %8
  %16 = phi ptr [ %13, %12 ], [ %10, %8 ]
  %17 = getelementptr inbounds %struct.atmel_nand, ptr %16, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %12

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.atmel_nand, ptr %16, i32 0, i32 2
  br label %22

22:                                               ; preds = %22, %20
  %23 = phi i32 [ 0, %20 ], [ %25, %22 ]
  %24 = tail call i32 @nand_reset(ptr noundef %21, i32 noundef %23) #9
  %25 = add nuw nsw i32 %23, 1
  %26 = load i32, ptr %17, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %22, label %12

28:                                               ; preds = %12, %8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @atmel_pmecc_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_reset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!10 = !{i32 0, i32 33}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2153570786}
!13 = !{i64 5050133}
!14 = !{i64 2153571119}
