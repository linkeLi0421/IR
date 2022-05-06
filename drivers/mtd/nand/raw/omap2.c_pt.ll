; ModuleID = '/llk/IR/drivers/mtd/nand/raw/omap2.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/omap2.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.mtd_ooblayout_ops = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.omap_nand_info = type { %struct.nand_chip, ptr, i32, i8, i32, i32, ptr, i32, %struct.completion, ptr, i32, i32, i32, ptr, i32, ptr, %struct.gpmc_nand_regs, ptr, i8, ptr, ptr, i32, i32, i32, i32, ptr, ptr }
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
%struct.gpmc_nand_regs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [8 x ptr], [8 x ptr], [8 x ptr], [8 x ptr], [8 x ptr], [8 x ptr], [8 x ptr] }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.nand_operation = type { i32, ptr, i32 }
%struct.nand_op_instr = type { i32, %union.anon.72, i32 }
%union.anon.72 = type { %struct.nand_op_data_instr }
%struct.nand_op_data_instr = type { i32, %union.anon.73, i8 }
%union.anon.73 = type { ptr }
%struct.elm_errorvec = type { i8, i8, i32, [16 x i32] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.mtd_oob_region = type { i32, i32 }

@__initcall__kmod_omap2_nand__240_2305_omap_nand_driver_init6 = internal global ptr @omap_nand_driver_init, section ".initcall6.init", align 4
@omap_nand_driver = internal global %struct.platform_driver { ptr @omap_nand_probe, ptr @omap_nand_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @omap_nand_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_omap_nand_driver_exit = internal global ptr @omap_nand_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias241 = internal constant [37 x i8] c"omap2_nand.alias=platform:omap2-nand\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [48 x i8] c"omap2_nand.file=drivers/mtd/nand/raw/omap2_nand\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [23 x i8] c"omap2_nand.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description244 = internal constant [67 x i8] c"omap2_nand.description=Glue layer for NAND flash on TI OMAP boards\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"omap2-nand\00", align 1
@omap_nand_ids = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am64-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to get GPMC->NAND interface\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"omap2-nand.%d\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Failed to set MTD name\0A\00", align 1
@omap_gpmc_controller_initialized = internal unnamed_addr global i1 false, align 1
@omap_nand_controller_ops = internal constant %struct.nand_controller_ops { ptr @omap_nand_attach_chip, ptr null, ptr @omap_nand_exec_op, ptr null }, align 4
@omap_gpmc_controller = internal global %struct.nand_controller zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"failed to get ready gpio\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"reg not found in DT\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"ti,elm-id\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"elm_id\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"ti,nand-ecc-opt\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"ti,nand-ecc-opt not found\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"sw\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"ham1\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"hw\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"hw-romcode\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"bch4\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"bch8\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"bch16\00", align 1
@.str.19 = private unnamed_addr constant [40 x i8] c"unrecognized value for ti,nand-ecc-opt\0A\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"ti,nand-xfer-type\00", align 1
@.str.21 = private unnamed_addr constant [42 x i8] c"unrecognized value for ti,nand-xfer-type\0A\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"prefetch-polled\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"polled\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"prefetch-dma\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"prefetch-irq\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"rxtx\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"DMA engine request failed\0A\00", align 1
@.str.29 = private unnamed_addr constant [36 x i8] c"DMA engine slave config failed: %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"gpmc-nand-fifo\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"Requesting IRQ %d, error %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"gpmc-nand-count\00", align 1
@.str.33 = private unnamed_addr constant [29 x i8] c"xfer_type %d not supported!\0A\00", align 1
@.str.34 = private unnamed_addr constant [35 x i8] c"nand: using OMAP_ECC_HAM1_CODE_HW\0A\00", align 1
@omap_ooblayout_ops = internal constant %struct.mtd_ooblayout_ops { ptr @omap_ooblayout_ecc, ptr @omap_ooblayout_free }, align 4
@.str.35 = private unnamed_addr constant [50 x i8] c"\016nand: using OMAP_ECC_BCH4_CODE_HW_DETECTION_SW\0A\00", align 1
@omap_sw_ooblayout_ops = internal constant %struct.mtd_ooblayout_ops { ptr @omap_sw_ooblayout_ecc, ptr @omap_sw_ooblayout_free }, align 4
@.str.36 = private unnamed_addr constant [27 x i8] c"Unable to use BCH library\0A\00", align 1
@.str.37 = private unnamed_addr constant [48 x i8] c"\016nand: using OMAP_ECC_BCH4_CODE_HW ECC scheme\0A\00", align 1
@.str.38 = private unnamed_addr constant [50 x i8] c"\016nand: using OMAP_ECC_BCH8_CODE_HW_DETECTION_SW\0A\00", align 1
@.str.39 = private unnamed_addr constant [27 x i8] c"unable to use BCH library\0A\00", align 1
@.str.40 = private unnamed_addr constant [48 x i8] c"\016nand: using OMAP_ECC_BCH8_CODE_HW ECC scheme\0A\00", align 1
@.str.41 = private unnamed_addr constant [43 x i8] c"\016Using OMAP_ECC_BCH16_CODE_HW ECC scheme\0A\00", align 1
@.str.42 = private unnamed_addr constant [35 x i8] c"Invalid or unsupported ECC scheme\0A\00", align 1
@.str.43 = private unnamed_addr constant [51 x i8] c"Not enough OOB bytes: required = %d, available=%d\0A\00", align 1
@loops_per_jiffy = external dso_local local_unnamed_addr global i32, align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@.str.44 = private unnamed_addr constant [35 x i8] c"Couldn't DMA map a %d byte buffer\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.46 = private unnamed_addr constant [40 x i8] c"CONFIG_MTD_NAND_ECC_SW_BCH not enabled\0A\00", align 1
@.str.48 = private unnamed_addr constant [19 x i8] c"ELM not available\0A\00", align 1
@.str.49 = private unnamed_addr constant [31 x i8] c"ELM devicetree node not found\0A\00", align 1
@.str.50 = private unnamed_addr constant [22 x i8] c"ELM device not found\0A\00", align 1
@.str.51 = private unnamed_addr constant [31 x i8] c"error: unrecognized Mode[%d]!\0A\00", align 1
@bch4_polynomial = internal unnamed_addr constant [7 x i8] c"(\13\CC9\96\AC\7F", align 1
@bch8_polynomial = internal unnamed_addr constant [13 x i8] c"\EFQ.\09\ED\93\9A\C2\97y\E5$\B5", align 1
@bch4_vector = internal global [7 x i8] c"\00k1\DDA\BC\10", align 1
@bch8_vector = internal global [13 x i8] c"\F3\DB\14\16\8B\D2\BE\CC\ACk\FF\99{", align 1
@bch16_vector = internal global [26 x i8] c"\F5$\1C\D0a\B3\F1U.,\86\A3\ED6\1BxHv\A9;\97\D1z\93\07\0E", align 1
@.str.52 = private unnamed_addr constant [30 x i8] c"invalid driver configuration\0A\00", align 1
@.str.53 = private unnamed_addr constant [31 x i8] c"uncorrectable bit-flips found\0A\00", align 1
@.str.54 = private unnamed_addr constant [26 x i8] c"invalid bit-flip @ %d:%d\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@nand_controller_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"&nfc->lock\00", align 1
@.str.56 = private unnamed_addr constant [29 x i8] c"drivers/mtd/nand/raw/omap2.c\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_alias241, ptr @__UNIQUE_ID_description244, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__exitcall_omap_nand_driver_exit, ptr @__initcall__kmod_omap2_nand__240_2305_omap_nand_driver_init6, ptr @omap_nand_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @omap_nand_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @omap_nand_driver, ptr noundef null) #13
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @omap_nand_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @omap_nand_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_nand_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 1808, i32 noundef 3520) #13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %164, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.omap_nand_info, ptr %7, i32 0, i32 1
  store ptr %0, ptr %10, align 8
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %12 = load ptr, ptr %11, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store ptr null, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !annotation !8
  %13 = call i32 @of_property_read_variable_u32_array(ptr noundef %12, ptr noundef nonnull @.str.6, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #13
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %91, label %15

15:                                               ; preds = %9
  %16 = load i32, ptr %5, align 4
  %17 = getelementptr inbounds %struct.omap_nand_info, ptr %7, i32 0, i32 2
  store i32 %16, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #13, !annotation !8
  %18 = call i32 @__of_parse_phandle_with_args(ptr noundef %12, ptr noundef nonnull @.str.8, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #13
  %19 = icmp eq i32 %18, 0
  %20 = load ptr, ptr %3, align 4
  %21 = select i1 %19, ptr %20, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #13
  %22 = getelementptr inbounds %struct.omap_nand_info, ptr %7, i32 0, i32 6
  store ptr %21, ptr %22, align 4
  %23 = icmp eq ptr %21, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #13, !annotation !8
  %25 = call i32 @__of_parse_phandle_with_args(ptr noundef %12, ptr noundef nonnull @.str.9, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #13
  %26 = icmp eq i32 %25, 0
  %27 = load ptr, ptr %2, align 4
  %28 = select i1 %26, ptr %27, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #13
  store ptr %28, ptr %22, align 4
  br label %29

29:                                               ; preds = %24, %15
  %30 = call i32 @of_property_read_string(ptr noundef %12, ptr noundef nonnull @.str.10, ptr noundef nonnull %4) #13
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %91

32:                                               ; preds = %29
  %33 = load ptr, ptr %4, align 4
  %34 = call i32 @strcmp(ptr noundef %33, ptr noundef nonnull dereferenceable(3) @.str.12) #13
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.omap_nand_info, ptr %7, i32 0, i32 5
  store i32 0, ptr %37, align 8
  br label %72

38:                                               ; preds = %32
  %39 = call i32 @strcmp(ptr noundef %33, ptr noundef nonnull dereferenceable(5) @.str.13) #13
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = call i32 @strcmp(ptr noundef %33, ptr noundef nonnull dereferenceable(3) @.str.14) #13
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = call i32 @strcmp(ptr noundef %33, ptr noundef nonnull dereferenceable(11) @.str.15) #13
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44, %41, %38
  %48 = getelementptr inbounds %struct.omap_nand_info, ptr %7, i32 0, i32 5
  store i32 1, ptr %48, align 8
  br label %72

49:                                               ; preds = %44
  %50 = call i32 @strcmp(ptr noundef %33, ptr noundef nonnull dereferenceable(5) @.str.16) #13
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load ptr, ptr %22, align 4
  %54 = icmp eq ptr %53, null
  %55 = getelementptr inbounds %struct.omap_nand_info, ptr %7, i32 0, i32 5
  br i1 %54, label %57, label %56

56:                                               ; preds = %52
  store i32 3, ptr %55, align 8
  br label %72

57:                                               ; preds = %52
  store i32 2, ptr %55, align 8
  br label %72

58:                                               ; preds = %49
  %59 = call i32 @strcmp(ptr noundef %33, ptr noundef nonnull dereferenceable(5) @.str.17) #13
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load ptr, ptr %22, align 4
  %63 = icmp eq ptr %62, null
  %64 = getelementptr inbounds %struct.omap_nand_info, ptr %7, i32 0, i32 5
  br i1 %63, label %66, label %65

65:                                               ; preds = %61
  store i32 5, ptr %64, align 8
  br label %72

66:                                               ; preds = %61
  store i32 4, ptr %64, align 8
  br label %72

67:                                               ; preds = %58
  %68 = call i32 @strcmp(ptr noundef %33, ptr noundef nonnull dereferenceable(6) @.str.18) #13
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %91

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.omap_nand_info, ptr %7, i32 0, i32 5
  store i32 6, ptr %71, align 8
  br label %72

72:                                               ; preds = %70, %66, %65, %57, %56, %47, %36
  %73 = call i32 @of_property_read_string(ptr noundef %12, ptr noundef nonnull @.str.20, ptr noundef nonnull %4) #13
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %93

75:                                               ; preds = %72
  %76 = load ptr, ptr %4, align 4
  %77 = call i32 @strcasecmp(ptr noundef %76, ptr noundef nonnull @.str.22) #13
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %88, %85, %82, %75
  %80 = phi i32 [ 0, %75 ], [ 1, %82 ], [ 2, %85 ], [ 3, %88 ]
  %81 = getelementptr inbounds %struct.omap_nand_info, ptr %7, i32 0, i32 4
  store i32 %80, ptr %81, align 4
  br label %93

82:                                               ; preds = %75
  %83 = call i32 @strcasecmp(ptr noundef %76, ptr noundef nonnull @.str.23) #13
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %79, label %85

85:                                               ; preds = %82
  %86 = call i32 @strcasecmp(ptr noundef %76, ptr noundef nonnull @.str.24) #13
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %79, label %88

88:                                               ; preds = %85
  %89 = call i32 @strcasecmp(ptr noundef %76, ptr noundef nonnull @.str.25) #13
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %79, label %91

91:                                               ; preds = %88, %67, %29, %9
  %92 = phi ptr [ @.str.7, %9 ], [ @.str.11, %29 ], [ @.str.19, %67 ], [ @.str.21, %88 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull %92) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  br label %164

93:                                               ; preds = %79, %72
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  %94 = getelementptr inbounds %struct.omap_nand_info, ptr %7, i32 0, i32 16
  %95 = load i32, ptr %17, align 4
  %96 = call ptr @gpmc_omap_get_nand_ops(ptr noundef %94, i32 noundef %95) #13
  %97 = getelementptr inbounds %struct.omap_nand_info, ptr %7, i32 0, i32 17
  store ptr %96, ptr %97, align 4
  %98 = icmp eq ptr %96, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.1) #14
  br label %164

100:                                              ; preds = %93
  %101 = getelementptr inbounds %struct.mtd_info, ptr %7, i32 0, i32 56, i32 1
  store ptr %6, ptr %101, align 4
  %102 = load ptr, ptr %11, align 8
  %103 = getelementptr inbounds %struct.mtd_info, ptr %7, i32 0, i32 56, i32 25
  store ptr %102, ptr %103, align 8
  %104 = getelementptr inbounds %struct.mtd_info, ptr %7, i32 0, i32 13
  %105 = load ptr, ptr %104, align 8
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %116

107:                                              ; preds = %100
  %108 = call i32 @of_property_read_string(ptr noundef %102, ptr noundef nonnull @.str.26, ptr noundef %104) #13
  %109 = load ptr, ptr %104, align 8
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %116

111:                                              ; preds = %107
  %112 = load i32, ptr %17, align 4
  %113 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %6, i32 noundef 3264, ptr noundef nonnull @.str.2, i32 noundef %112) #13
  store ptr %113, ptr %104, align 8
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.3) #14
  br label %164

116:                                              ; preds = %111, %107, %100
  %117 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #13
  %118 = call ptr @devm_ioremap_resource(ptr noundef %6, ptr noundef %117) #13
  %119 = icmp ugt ptr %118, inttoptr (i32 -4096 to ptr)
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = ptrtoint ptr %118 to i32
  br label %164

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.omap_nand_info, ptr %7, i32 0, i32 15
  store ptr %118, ptr %123, align 4
  %124 = load i32, ptr %117, align 4
  %125 = getelementptr inbounds %struct.omap_nand_info, ptr %7, i32 0, i32 7
  store i32 %124, ptr %125, align 8
  %126 = load i1, ptr @omap_gpmc_controller_initialized, align 1
  br i1 %126, label %128, label %127

127:                                              ; preds = %122
  store ptr @omap_nand_controller_ops, ptr getelementptr inbounds (%struct.nand_controller, ptr @omap_gpmc_controller, i32 0, i32 1), align 4
  call void @__mutex_init(ptr noundef nonnull @omap_gpmc_controller, ptr noundef nonnull @.str.55, ptr noundef nonnull @nand_controller_init.__key) #13
  store i1 true, ptr @omap_gpmc_controller_initialized, align 1
  br label %128

128:                                              ; preds = %127, %122
  %129 = getelementptr inbounds %struct.nand_chip, ptr %7, i32 0, i32 32
  store ptr @omap_gpmc_controller, ptr %129, align 4
  %130 = call ptr @devm_gpiod_get_optional(ptr noundef %6, ptr noundef nonnull @.str.4, i32 noundef 1) #13
  %131 = getelementptr inbounds %struct.omap_nand_info, ptr %7, i32 0, i32 20
  store ptr %130, ptr %131, align 8
  %132 = icmp ugt ptr %130, inttoptr (i32 -4096 to ptr)
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.5) #14
  %134 = load ptr, ptr %131, align 8
  %135 = ptrtoint ptr %134 to i32
  br label %164

136:                                              ; preds = %128
  %137 = getelementptr inbounds %struct.omap_nand_info, ptr %7, i32 0, i32 18
  %138 = load i8, ptr %137, align 8, !range !9
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.nand_chip, ptr %7, i32 0, i32 10
  %142 = load i32, ptr %141, align 8
  %143 = or i32 %142, 131072
  store i32 %143, ptr %141, align 8
  br label %144

144:                                              ; preds = %140, %136
  %145 = getelementptr inbounds %struct.omap_nand_info, ptr %7, i32 0, i32 25
  store ptr @omap_nand_data_in, ptr %145, align 4
  %146 = getelementptr inbounds %struct.omap_nand_info, ptr %7, i32 0, i32 26
  store ptr @omap_nand_data_out, ptr %146, align 8
  %147 = call i32 @nand_scan_with_ids(ptr noundef nonnull %7, i32 noundef 1, ptr noundef null) #13
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %144
  %150 = call i32 @mtd_device_parse_register(ptr noundef nonnull %7, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #13
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %149
  %153 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %7, ptr %153, align 8
  br label %164

154:                                              ; preds = %149
  call void @nand_cleanup(ptr noundef nonnull %7) #13
  br label %155

155:                                              ; preds = %154, %144
  %156 = phi i32 [ %147, %144 ], [ %150, %154 ]
  %157 = getelementptr inbounds %struct.omap_nand_info, ptr %7, i32 0, i32 9
  %158 = load ptr, ptr %157, align 4
  %159 = icmp eq ptr %158, null
  %160 = icmp ugt ptr %158, inttoptr (i32 -4096 to ptr)
  %161 = or i1 %159, %160
  br i1 %161, label %163, label %162

162:                                              ; preds = %155
  call void @dma_release_channel(ptr noundef nonnull %158) #13
  br label %163

163:                                              ; preds = %162, %155
  call void @rawnand_sw_bch_cleanup(ptr noundef nonnull %7) #13
  br label %164

164:                                              ; preds = %163, %152, %133, %120, %115, %99, %91, %1
  %165 = phi i32 [ %121, %120 ], [ %135, %133 ], [ %156, %163 ], [ 0, %152 ], [ -12, %115 ], [ -19, %99 ], [ -12, %1 ], [ -22, %91 ]
  ret i32 %165
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_nand_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @rawnand_sw_bch_cleanup(ptr noundef %3) #13
  %4 = getelementptr inbounds %struct.omap_nand_info, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @dma_release_channel(ptr noundef nonnull %5) #13
  br label %8

8:                                                ; preds = %7, %1
  %9 = tail call i32 @mtd_device_unregister(ptr noundef %3) #13
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11, !prof !10

11:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 2288, i32 noundef 9, ptr noundef null) #13
  br label %12

12:                                               ; preds = %11, %8
  tail call void @nand_cleanup(ptr noundef %3) #13
  ret i32 %9
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpmc_omap_get_nand_ops(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_nand_data_in(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) #2 {
  %5 = ptrtoint ptr %1 to i32
  %6 = or i32 %5, %2
  %7 = and i32 %6, 1
  %8 = icmp ne i32 %7, 0
  %9 = or i1 %8, %3
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 15
  %12 = load ptr, ptr %11, align 4
  tail call void @__raw_readsb(ptr noundef %12, ptr noundef %1, i32 noundef %2) #13
  br label %22

13:                                               ; preds = %4
  %14 = and i32 %6, 3
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 15
  %17 = load ptr, ptr %16, align 4
  br i1 %15, label %20, label %18

18:                                               ; preds = %13
  %19 = lshr i32 %2, 1
  tail call void @__raw_readsw(ptr noundef %17, ptr noundef %1, i32 noundef %19) #13
  br label %22

20:                                               ; preds = %13
  %21 = lshr i32 %2, 2
  tail call void @__raw_readsl(ptr noundef %17, ptr noundef %1, i32 noundef %21) #13
  br label %22

22:                                               ; preds = %20, %18, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_nand_data_out(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) #2 {
  %5 = ptrtoint ptr %1 to i32
  %6 = or i32 %5, %2
  %7 = and i32 %6, 1
  %8 = icmp ne i32 %7, 0
  %9 = or i1 %8, %3
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 15
  %12 = load ptr, ptr %11, align 4
  tail call void @__raw_writesb(ptr noundef %12, ptr noundef %1, i32 noundef %2) #13
  br label %22

13:                                               ; preds = %4
  %14 = and i32 %6, 3
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 15
  %17 = load ptr, ptr %16, align 4
  br i1 %15, label %20, label %18

18:                                               ; preds = %13
  %19 = lshr i32 %2, 1
  tail call void @__raw_writesw(ptr noundef %17, ptr noundef %1, i32 noundef %19) #13
  br label %22

20:                                               ; preds = %13
  %21 = lshr i32 %2, 2
  tail call void @__raw_writesl(ptr noundef %17, ptr noundef %1, i32 noundef %21) #13
  br label %22

22:                                               ; preds = %20, %18, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rawnand_sw_bch_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_nand_attach_chip(ptr noundef %0) #2 {
  %2 = alloca %struct.dma_cap_mask_t, align 4
  %3 = alloca %struct.dma_slave_config, align 4
  %4 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  store i32 0, ptr %2, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 10
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 131072
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = or i32 %8, 262144
  store i32 %12, ptr %7, align 8
  br label %17

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %15 = load i32, ptr %14, align 8
  %16 = or i32 %15, 65536
  store i32 %16, ptr %14, align 8
  br label %17

17:                                               ; preds = %13, %11
  %18 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  switch i32 %19, label %75 [
    i32 0, label %20
    i32 1, label %76
    i32 2, label %23
    i32 3, label %53
  ]

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 25
  store ptr @omap_nand_data_in_pref, ptr %21, align 4
  %22 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 26
  store ptr @omap_nand_data_out_pref, ptr %22, align 8
  br label %76

23:                                               ; preds = %17
  store i32 0, ptr %2, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %2) #13
  %24 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = call ptr @dma_request_chan(ptr noundef %25, ptr noundef nonnull @.str.27) #13
  %27 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 9
  store ptr %26, ptr %27, align 4
  %28 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.28) #14
  %30 = load ptr, ptr %27, align 4
  %31 = ptrtoint ptr %30 to i32
  br label %195

32:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #13
  %33 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %3, i8 0, i64 48, i1 false)
  %34 = load i32, ptr %33, align 8
  %35 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 1
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 2
  store i32 %34, ptr %36, align 4
  %37 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 3
  store i32 4, ptr %37, align 4
  %38 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 4
  store i32 4, ptr %38, align 4
  %39 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 5
  store i32 16, ptr %39, align 4
  %40 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 6
  store i32 16, ptr %40, align 4
  %41 = load ptr, ptr %26, align 4
  %42 = getelementptr inbounds %struct.dma_device, ptr %41, i32 0, i32 44
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %32
  %46 = call i32 %43(ptr noundef %26, ptr noundef nonnull %3) #13
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %45, %32
  %49 = phi i32 [ %46, %45 ], [ -38, %32 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.29, i32 noundef %49) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #13
  br label %195

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 25
  store ptr @omap_nand_data_in_dma_pref, ptr %51, align 4
  %52 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 26
  store ptr @omap_nand_data_out_dma_pref, ptr %52, align 8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #13
  br label %76

53:                                               ; preds = %17
  %54 = tail call i32 @platform_get_irq(ptr noundef %5, i32 noundef 0) #13
  %55 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 10
  store i32 %54, ptr %55, align 8
  %56 = icmp slt i32 %54, 1
  br i1 %56, label %195, label %57

57:                                               ; preds = %53
  %58 = tail call i32 @devm_request_threaded_irq(ptr noundef %6, i32 noundef %54, ptr noundef nonnull @omap_nand_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.30, ptr noundef %0) #13
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = load i32, ptr %55, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.31, i32 noundef %61, i32 noundef %58) #14
  store i32 0, ptr %55, align 8
  br label %195

62:                                               ; preds = %57
  %63 = load ptr, ptr %4, align 8
  %64 = tail call i32 @platform_get_irq(ptr noundef %63, i32 noundef 1) #13
  %65 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 11
  store i32 %64, ptr %65, align 4
  %66 = icmp slt i32 %64, 1
  br i1 %66, label %195, label %67

67:                                               ; preds = %62
  %68 = tail call i32 @devm_request_threaded_irq(ptr noundef %6, i32 noundef %64, ptr noundef nonnull @omap_nand_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.32, ptr noundef %0) #13
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = load i32, ptr %65, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.31, i32 noundef %71, i32 noundef %68) #14
  store i32 0, ptr %65, align 4
  br label %195

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 25
  store ptr @omap_nand_data_in_irq_pref, ptr %73, align 4
  %74 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 26
  store ptr @omap_nand_data_out_irq_pref, ptr %74, align 8
  br label %76

75:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.33, i32 noundef %19) #14
  br label %195

76:                                               ; preds = %72, %50, %20, %17
  %77 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 5
  %78 = load i32, ptr %77, align 8
  switch i32 %78, label %99 [
    i32 2, label %79
    i32 4, label %79
    i32 3, label %82
    i32 5, label %82
    i32 6, label %82
  ]

79:                                               ; preds = %76, %76
  %80 = load ptr, ptr %4, align 8
  %81 = getelementptr inbounds %struct.platform_device, ptr %80, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.46) #14
  br label %195

82:                                               ; preds = %76, %76, %76
  %83 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 6
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %93, label %86

86:                                               ; preds = %82
  %87 = call ptr @of_find_device_by_node(ptr noundef nonnull %84) #13
  %88 = icmp eq ptr %87, null
  br i1 %88, label %93, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.platform_device, ptr %87, i32 0, i32 3
  %91 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 19
  store ptr %90, ptr %91, align 4
  %92 = load i32, ptr %77, align 8
  br label %99

93:                                               ; preds = %86, %82
  %94 = phi ptr [ @.str.49, %82 ], [ @.str.50, %86 ]
  %95 = load ptr, ptr %4, align 8
  %96 = getelementptr inbounds %struct.platform_device, ptr %95, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull %94) #14
  %97 = load ptr, ptr %4, align 8
  %98 = getelementptr inbounds %struct.platform_device, ptr %97, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.48) #14
  br label %195

99:                                               ; preds = %89, %76
  %100 = phi i32 [ %92, %89 ], [ %78, %76 ]
  switch i32 %100, label %146 [
    i32 0, label %101
    i32 1, label %104
    i32 2, label %118
    i32 3, label %147
    i32 4, label %131
    i32 5, label %144
    i32 6, label %145
  ]

101:                                              ; preds = %99
  %102 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33
  store i32 2, ptr %102, align 8
  %103 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 2
  store i32 1, ptr %103, align 8
  br label %195

104:                                              ; preds = %99
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.34) #14
  %105 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33
  store i32 3, ptr %105, align 8
  %106 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  store i32 3, ptr %106, align 4
  %107 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  store i32 512, ptr %107, align 8
  %108 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 7
  store i32 1, ptr %108, align 4
  %109 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 14
  store ptr @omap_calculate_ecc, ptr %109, align 8
  %110 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 13
  store ptr @omap_enable_hwecc, ptr %110, align 4
  %111 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 15
  store ptr @omap_correct_data, ptr %111, align 4
  %112 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 15
  store ptr @omap_ooblayout_ops, ptr %112, align 8
  %113 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %114 = load i32, ptr %113, align 8
  %115 = and i32 %114, 2
  %116 = icmp eq i32 %115, 0
  %117 = select i1 %116, i32 1, i32 2
  br label %181

118:                                              ; preds = %99
  %119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #14
  %120 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33
  store i32 3, ptr %120, align 8
  %121 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  store i32 512, ptr %121, align 8
  %122 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  store i32 7, ptr %122, align 4
  %123 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 7
  store i32 4, ptr %123, align 4
  %124 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 13
  store ptr @omap_enable_hwecc_bch, ptr %124, align 4
  %125 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 15
  store ptr @rawnand_sw_bch_correct, ptr %125, align 4
  %126 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 14
  store ptr @omap_calculate_ecc_bch_sw, ptr %126, align 8
  %127 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 15
  store ptr @omap_sw_ooblayout_ops, ptr %127, align 8
  %128 = call i32 @rawnand_sw_bch_init(ptr noundef %0) #13
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %181, label %130

130:                                              ; preds = %118
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.36) #14
  br label %195

131:                                              ; preds = %99
  %132 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #14
  %133 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33
  store i32 3, ptr %133, align 8
  %134 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  store i32 512, ptr %134, align 8
  %135 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  store i32 13, ptr %135, align 4
  %136 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 7
  store i32 8, ptr %136, align 4
  %137 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 13
  store ptr @omap_enable_hwecc_bch, ptr %137, align 4
  %138 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 15
  store ptr @rawnand_sw_bch_correct, ptr %138, align 4
  %139 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 14
  store ptr @omap_calculate_ecc_bch_sw, ptr %139, align 8
  %140 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 15
  store ptr @omap_sw_ooblayout_ops, ptr %140, align 8
  %141 = call i32 @rawnand_sw_bch_init(ptr noundef %0) #13
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %181, label %143

143:                                              ; preds = %131
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.39) #14
  br label %195

144:                                              ; preds = %99
  br label %147

145:                                              ; preds = %99
  br label %147

146:                                              ; preds = %99
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.42) #14
  br label %195

147:                                              ; preds = %145, %144, %99
  %148 = phi ptr [ @.str.41, %145 ], [ @.str.40, %144 ], [ @.str.37, %99 ]
  %149 = phi i32 [ 26, %145 ], [ 14, %144 ], [ 8, %99 ]
  %150 = phi i32 [ 16, %145 ], [ 8, %144 ], [ 4, %99 ]
  %151 = phi i32 [ 2, %145 ], [ 1, %144 ], [ 0, %99 ]
  %152 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %148) #14
  %153 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33
  store i32 3, ptr %153, align 8
  %154 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  store i32 512, ptr %154, align 8
  %155 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  store i32 %149, ptr %155, align 4
  %156 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 7
  store i32 %150, ptr %156, align 4
  %157 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 13
  store ptr @omap_enable_hwecc_bch, ptr %157, align 4
  %158 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 15
  store ptr @omap_elm_correct_data, ptr %158, align 4
  %159 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 18
  store ptr @omap_read_page_bch, ptr %159, align 8
  %160 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 21
  store ptr @omap_write_page_bch, ptr %160, align 4
  %161 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 20
  store ptr @omap_write_subpage_bch, ptr %161, align 8
  %162 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 15
  store ptr @omap_ooblayout_ops, ptr %162, align 8
  %163 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %164 = load i32, ptr %163, align 4
  %165 = lshr i32 %164, 9
  %166 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 3
  store i32 %165, ptr %166, align 4
  %167 = lshr i32 %164, 12
  %168 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 21
  %169 = icmp ult i32 %164, 4096
  %170 = select i1 %169, i32 1, i32 %167
  store i32 %170, ptr %168, align 4
  %171 = select i1 %169, i32 %165, i32 8
  %172 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 22
  store i32 %171, ptr %172, align 8
  %173 = shl nuw i32 %171, 9
  %174 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 23
  store i32 %173, ptr %174, align 4
  %175 = mul nuw nsw i32 %149, %171
  %176 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 24
  store i32 %175, ptr %176, align 8
  %177 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 19
  %178 = load ptr, ptr %177, align 4
  %179 = call i32 @elm_config(ptr noundef %178, i32 noundef %151, i32 noundef %171, i32 noundef 512, i32 noundef %149) #13
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %195, label %181

181:                                              ; preds = %147, %131, %118, %104
  %182 = phi i32 [ 2, %147 ], [ 2, %131 ], [ 2, %118 ], [ %117, %104 ]
  %183 = phi i32 [ %149, %147 ], [ 14, %131 ], [ 8, %118 ], [ 3, %104 ]
  %184 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %185 = load i32, ptr %184, align 4
  %186 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  %187 = load i32, ptr %186, align 8
  %188 = udiv i32 %185, %187
  %189 = mul i32 %188, %183
  %190 = add i32 %189, %182
  %191 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %192 = load i32, ptr %191, align 4
  %193 = icmp ult i32 %192, %190
  br i1 %193, label %194, label %195

194:                                              ; preds = %181
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.43, i32 noundef %190, i32 noundef %192) #14
  br label %195

195:                                              ; preds = %194, %181, %147, %146, %143, %130, %101, %93, %79, %75, %70, %62, %60, %53, %48, %29
  %196 = phi i32 [ -22, %75 ], [ %58, %60 ], [ %68, %70 ], [ 0, %101 ], [ -22, %146 ], [ -22, %194 ], [ %141, %143 ], [ %128, %130 ], [ %31, %29 ], [ %49, %48 ], [ -19, %53 ], [ -19, %62 ], [ %179, %147 ], [ 0, %181 ], [ -22, %79 ], [ -22, %93 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  ret i32 %196
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_nand_exec_op(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) #2 {
  br i1 %2, label %81, label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.nand_operation, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %81, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nand_operation, ptr %1, i32 0, i32 1
  %10 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 20
  %11 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 26
  %12 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 25
  %13 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 16, i32 1
  %14 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 16
  br label %15

15:                                               ; preds = %77, %8
  %16 = phi i32 [ 0, %8 ], [ %78, %77 ]
  %17 = load ptr, ptr %9, align 4
  %18 = getelementptr %struct.nand_op_instr, ptr %17, i32 %16
  %19 = load i32, ptr %18, align 4
  switch i32 %19, label %69 [
    i32 0, label %26
    i32 1, label %20
    i32 2, label %39
    i32 3, label %48
    i32 4, label %57
  ]

20:                                               ; preds = %15
  %21 = getelementptr %struct.nand_op_instr, ptr %17, i32 %16, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %69, label %24

24:                                               ; preds = %20
  %25 = getelementptr %struct.nand_op_instr, ptr %17, i32 %16, i32 1, i32 0, i32 1
  br label %30

26:                                               ; preds = %15
  %27 = getelementptr %struct.nand_op_instr, ptr %17, i32 %16, i32 1
  %28 = load i8, ptr %27, align 4
  %29 = load ptr, ptr %14, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !11
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %29, i8 %28) #13, !srcloc !12
  br label %69

30:                                               ; preds = %30, %24
  %31 = phi i32 [ 0, %24 ], [ %36, %30 ]
  %32 = load ptr, ptr %25, align 4
  %33 = getelementptr i8, ptr %32, i32 %31
  %34 = load i8, ptr %33, align 1
  %35 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !11
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %35, i8 %34) #13, !srcloc !12
  %36 = add nuw i32 %31, 1
  %37 = load i32, ptr %21, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %30, label %69

39:                                               ; preds = %15
  %40 = load ptr, ptr %12, align 4
  %41 = getelementptr %struct.nand_op_instr, ptr %17, i32 %16, i32 1
  %42 = getelementptr %struct.nand_op_instr, ptr %17, i32 %16, i32 1, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = load i32, ptr %41, align 4
  %45 = getelementptr %struct.nand_op_instr, ptr %17, i32 %16, i32 1, i32 0, i32 2
  %46 = load i8, ptr %45, align 4, !range !9
  %47 = icmp ne i8 %46, 0
  tail call void %40(ptr noundef %0, ptr noundef %43, i32 noundef %44, i1 noundef zeroext %47) #13
  br label %69

48:                                               ; preds = %15
  %49 = load ptr, ptr %11, align 8
  %50 = getelementptr %struct.nand_op_instr, ptr %17, i32 %16, i32 1
  %51 = getelementptr %struct.nand_op_instr, ptr %17, i32 %16, i32 1, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = load i32, ptr %50, align 4
  %54 = getelementptr %struct.nand_op_instr, ptr %17, i32 %16, i32 1, i32 0, i32 2
  %55 = load i8, ptr %54, align 4, !range !9
  %56 = icmp ne i8 %55, 0
  tail call void %49(ptr noundef %0, ptr noundef %52, i32 noundef %53, i1 noundef zeroext %56) #13
  br label %69

57:                                               ; preds = %15
  %58 = load ptr, ptr %10, align 8
  %59 = icmp eq ptr %58, null
  %60 = getelementptr %struct.nand_op_instr, ptr %17, i32 %16, i32 1
  %61 = load i32, ptr %60, align 4
  br i1 %59, label %64, label %62

62:                                               ; preds = %57
  %63 = tail call i32 @nand_gpio_waitrdy(ptr noundef %0, ptr noundef nonnull %58, i32 noundef %61) #13
  br label %66

64:                                               ; preds = %57
  %65 = tail call i32 @nand_soft_waitrdy(ptr noundef %0, i32 noundef %61) #13
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %66, %48, %39, %30, %26, %20, %15
  %70 = getelementptr %struct.nand_op_instr, ptr %17, i32 %16, i32 2
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = add i32 %71, 999
  %75 = udiv i32 %74, 1000
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %76(i32 noundef %75) #13
  br label %77

77:                                               ; preds = %73, %69
  %78 = add nuw i32 %16, 1
  %79 = load i32, ptr %5, align 4
  %80 = icmp ult i32 %78, %79
  br i1 %80, label %15, label %81

81:                                               ; preds = %77, %66, %4, %3
  %82 = phi i32 [ 0, %3 ], [ 0, %4 ], [ 0, %77 ], [ %67, %66 ]
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_nand_data_in_pref(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) #2 {
  br i1 %3, label %5, label %8

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  tail call void @__raw_readsb(ptr noundef %7, ptr noundef %1, i32 noundef %2) #13
  br label %82

8:                                                ; preds = %4
  %9 = and i32 %2, 3
  %10 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 16, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !14
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %8
  %17 = and i32 %2, -4
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !15
  tail call void @arm_heavy_mb() #13
  %18 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 16, i32 4
  %19 = load ptr, ptr %18, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #13, !srcloc !16
  %20 = shl i32 %11, 24
  %21 = or i32 %20, 16512
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !17
  tail call void @arm_heavy_mb() #13
  %22 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 16, i32 3
  %23 = load ptr, ptr %22, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #13, !srcloc !16
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !18
  tail call void @arm_heavy_mb() #13
  %24 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 1) #13, !srcloc !16
  %25 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 16, i32 6
  %26 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 15
  br label %44

27:                                               ; preds = %8
  %28 = ptrtoint ptr %1 to i32
  %29 = or i32 %28, %2
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 15
  %34 = load ptr, ptr %33, align 4
  tail call void @__raw_readsb(ptr noundef %34, ptr noundef %1, i32 noundef %2) #13
  br label %82

35:                                               ; preds = %27
  %36 = and i32 %29, 3
  %37 = icmp eq i32 %36, 0
  %38 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 15
  %39 = load ptr, ptr %38, align 4
  br i1 %37, label %42, label %40

40:                                               ; preds = %35
  %41 = lshr i32 %2, 1
  tail call void @__raw_readsw(ptr noundef %39, ptr noundef %1, i32 noundef %41) #13
  br label %82

42:                                               ; preds = %35
  %43 = lshr i32 %2, 2
  tail call void @__raw_readsl(ptr noundef %39, ptr noundef %1, i32 noundef %43) #13
  br label %82

44:                                               ; preds = %44, %16
  %45 = phi i32 [ %17, %16 ], [ %54, %44 ]
  %46 = phi ptr [ %1, %16 ], [ %52, %44 ]
  %47 = load ptr, ptr %25, align 8
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !19
  %49 = lshr i32 %48, 26
  %50 = and i32 %49, 31
  %51 = load ptr, ptr %26, align 4
  tail call void @__raw_readsl(ptr noundef %51, ptr noundef %46, i32 noundef %50) #13
  %52 = getelementptr i32, ptr %46, i32 %50
  %53 = mul nsw i32 %50, -4
  %54 = add i32 %53, %45
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %44

56:                                               ; preds = %44
  %57 = load i32, ptr %10, align 4
  %58 = load ptr, ptr %22, align 4
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !20
  %60 = lshr i32 %59, 24
  %61 = and i32 %60, 7
  %62 = icmp eq i32 %61, %57
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !21
  tail call void @arm_heavy_mb() #13
  %64 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 0) #13, !srcloc !16
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !22
  tail call void @arm_heavy_mb() #13
  %65 = load ptr, ptr %22, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 0) #13, !srcloc !16
  br label %66

66:                                               ; preds = %63, %56
  %67 = icmp eq i32 %9, 0
  br i1 %67, label %82, label %68

68:                                               ; preds = %66
  %69 = ptrtoint ptr %52 to i32
  %70 = or i32 %9, %69
  %71 = and i32 %70, 1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %68
  %74 = load ptr, ptr %26, align 4
  tail call void @__raw_readsb(ptr noundef %74, ptr noundef %52, i32 noundef %9) #13
  br label %82

75:                                               ; preds = %68
  %76 = and i32 %70, 3
  %77 = icmp eq i32 %76, 0
  %78 = load ptr, ptr %26, align 4
  br i1 %77, label %81, label %79

79:                                               ; preds = %75
  %80 = lshr i32 %9, 1
  tail call void @__raw_readsw(ptr noundef %78, ptr noundef %52, i32 noundef %80) #13
  br label %82

81:                                               ; preds = %75
  tail call void @__raw_readsl(ptr noundef %78, ptr noundef %52, i32 noundef 0) #13
  br label %82

82:                                               ; preds = %81, %79, %73, %66, %42, %40, %32, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_nand_data_out_pref(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) #2 {
  br i1 %3, label %5, label %8

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  tail call void @__raw_writesb(ptr noundef %7, ptr noundef %1, i32 noundef %2) #13
  br label %102

8:                                                ; preds = %4
  %9 = and i32 %2, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !23
  tail call void @arm_heavy_mb() #13
  %12 = load i8, ptr %1, align 1
  %13 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 15
  %14 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %14, i8 %12) #13, !srcloc !12
  %15 = getelementptr i8, ptr %1, i32 1
  %16 = add i32 %2, -1
  br label %17

17:                                               ; preds = %11, %8
  %18 = phi ptr [ %15, %11 ], [ %1, %8 ]
  %19 = phi i32 [ %16, %11 ], [ %2, %8 ]
  %20 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 16, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !14
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !15
  tail call void @arm_heavy_mb() #13
  %27 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 16, i32 4
  %28 = load ptr, ptr %27, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %19) #13, !srcloc !16
  %29 = shl i32 %21, 24
  %30 = or i32 %29, 16513
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !17
  tail call void @arm_heavy_mb() #13
  %31 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 16, i32 3
  %32 = load ptr, ptr %31, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #13, !srcloc !16
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !18
  tail call void @arm_heavy_mb() #13
  %33 = load ptr, ptr %22, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 1) #13, !srcloc !16
  %34 = icmp eq i32 %19, 0
  br i1 %34, label %79, label %35

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 16, i32 6
  %37 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 15
  br label %59

38:                                               ; preds = %17
  %39 = ptrtoint ptr %1 to i32
  %40 = or i32 %19, %39
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 15
  %45 = load ptr, ptr %44, align 4
  tail call void @__raw_writesb(ptr noundef %45, ptr noundef %1, i32 noundef %19) #13
  br label %102

46:                                               ; preds = %38
  %47 = and i32 %40, 3
  %48 = icmp eq i32 %47, 0
  %49 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 15
  %50 = load ptr, ptr %49, align 4
  br i1 %48, label %53, label %51

51:                                               ; preds = %46
  %52 = lshr i32 %19, 1
  tail call void @__raw_writesw(ptr noundef %50, ptr noundef %1, i32 noundef %52) #13
  br label %102

53:                                               ; preds = %46
  %54 = lshr i32 %19, 2
  tail call void @__raw_writesl(ptr noundef %50, ptr noundef %1, i32 noundef %54) #13
  br label %102

55:                                               ; preds = %67, %59
  %56 = phi ptr [ %61, %59 ], [ %71, %67 ]
  %57 = phi i32 [ %60, %59 ], [ %75, %67 ]
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %79, label %59

59:                                               ; preds = %55, %35
  %60 = phi i32 [ %19, %35 ], [ %57, %55 ]
  %61 = phi ptr [ %18, %35 ], [ %56, %55 ]
  %62 = load ptr, ptr %36, align 8
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !24
  %64 = lshr i32 %63, 25
  %65 = and i32 %64, 63
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %55, label %67

67:                                               ; preds = %67, %59
  %68 = phi i32 [ %75, %67 ], [ %60, %59 ]
  %69 = phi i32 [ %74, %67 ], [ 0, %59 ]
  %70 = phi ptr [ %71, %67 ], [ %61, %59 ]
  %71 = getelementptr i16, ptr %70, i32 1
  %72 = load i16, ptr %70, align 2
  %73 = load ptr, ptr %37, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !25
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %73, i16 %72) #13, !srcloc !26
  %74 = add nuw nsw i32 %69, 1
  %75 = add i32 %68, -2
  %76 = icmp ult i32 %74, %65
  %77 = icmp ne i32 %75, 0
  %78 = select i1 %76, i1 %77, i1 false
  br i1 %78, label %67, label %55

79:                                               ; preds = %55, %26
  %80 = load i32, ptr @loops_per_jiffy, align 4
  %81 = mul i32 %80, 500
  %82 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 16, i32 6
  br label %83

83:                                               ; preds = %83, %79
  %84 = phi i32 [ 0, %79 ], [ %89, %83 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !27
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !28
  %85 = load ptr, ptr %82, align 8
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !29
  %87 = and i32 %86, 16383
  %88 = icmp ne i32 %87, 0
  %89 = add nuw i32 %84, 1
  %90 = icmp ult i32 %84, %81
  %91 = select i1 %88, i1 %90, i1 false
  br i1 %91, label %83, label %92

92:                                               ; preds = %83
  %93 = load i32, ptr %20, align 4
  %94 = load ptr, ptr %31, align 4
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %94) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !20
  %96 = lshr i32 %95, 24
  %97 = and i32 %96, 7
  %98 = icmp eq i32 %97, %93
  br i1 %98, label %99, label %102

99:                                               ; preds = %92
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !21
  tail call void @arm_heavy_mb() #13
  %100 = load ptr, ptr %22, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 0) #13, !srcloc !16
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !22
  tail call void @arm_heavy_mb() #13
  %101 = load ptr, ptr %31, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 0) #13, !srcloc !16
  br label %102

102:                                              ; preds = %99, %92, %53, %51, %43, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_nand_data_in_dma_pref(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) #2 {
  br i1 %3, label %5, label %8

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  tail call void @__raw_readsb(ptr noundef %7, ptr noundef %1, i32 noundef %2) #13
  br label %14

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = icmp ult i32 %10, %2
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @omap_nand_data_in_pref(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext false)
  br label %14

13:                                               ; preds = %8
  tail call fastcc void @omap_nand_dma_transfer(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 0)
  br label %14

14:                                               ; preds = %13, %12, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_nand_data_out_dma_pref(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) #2 {
  br i1 %3, label %5, label %8

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  tail call void @__raw_writesb(ptr noundef %7, ptr noundef %1, i32 noundef %2) #13
  br label %14

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = icmp ult i32 %10, %2
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @omap_nand_data_out_pref(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext false)
  br label %14

13:                                               ; preds = %8
  tail call fastcc void @omap_nand_dma_transfer(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 1)
  br label %14

14:                                               ; preds = %13, %12, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_nand_irq(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.omap_nand_info, ptr %1, i32 0, i32 16, i32 6
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !30
  %6 = lshr i32 %5, 24
  %7 = and i32 %6, 124
  %8 = getelementptr inbounds %struct.omap_nand_info, ptr %1, i32 0, i32 12
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %33

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.omap_nand_info, ptr %1, i32 0, i32 11
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, %0
  br i1 %14, label %44, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.omap_nand_info, ptr %1, i32 0, i32 14
  %17 = load i32, ptr %16, align 8
  %18 = icmp ne i32 %17, 0
  %19 = icmp ult i32 %17, %7
  %20 = select i1 %18, i1 %19, i1 false
  %21 = icmp eq i32 %17, 0
  %22 = select i1 %21, i32 0, i32 %7
  %23 = select i1 %20, i32 %17, i32 %22
  %24 = getelementptr inbounds %struct.omap_nand_info, ptr %1, i32 0, i32 15
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.omap_nand_info, ptr %1, i32 0, i32 13
  %27 = load ptr, ptr %26, align 4
  %28 = lshr i32 %23, 2
  tail call void @__raw_writesl(ptr noundef %25, ptr noundef %27, i32 noundef %28) #13
  %29 = load ptr, ptr %26, align 4
  %30 = getelementptr i8, ptr %29, i32 %23
  store ptr %30, ptr %26, align 4
  %31 = load i32, ptr %16, align 8
  %32 = sub i32 %31, %23
  store i32 %32, ptr %16, align 8
  br label %50

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.omap_nand_info, ptr %1, i32 0, i32 15
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.omap_nand_info, ptr %1, i32 0, i32 13
  %37 = load ptr, ptr %36, align 4
  %38 = lshr exact i32 %7, 2
  tail call void @__raw_readsl(ptr noundef %35, ptr noundef %37, i32 noundef %38) #13
  %39 = load ptr, ptr %36, align 4
  %40 = getelementptr i8, ptr %39, i32 %7
  store ptr %40, ptr %36, align 4
  %41 = getelementptr inbounds %struct.omap_nand_info, ptr %1, i32 0, i32 11
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, %0
  br i1 %43, label %44, label %50

44:                                               ; preds = %33, %11
  %45 = getelementptr inbounds %struct.omap_nand_info, ptr %1, i32 0, i32 8
  tail call void @complete(ptr noundef %45) #13
  %46 = getelementptr inbounds %struct.omap_nand_info, ptr %1, i32 0, i32 10
  %47 = load i32, ptr %46, align 8
  tail call void @disable_irq_nosync(i32 noundef %47) #13
  %48 = getelementptr inbounds %struct.omap_nand_info, ptr %1, i32 0, i32 11
  %49 = load i32, ptr %48, align 4
  tail call void @disable_irq_nosync(i32 noundef %49) #13
  br label %50

50:                                               ; preds = %44, %33, %15
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_nand_data_in_irq_pref(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) #2 {
  %5 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = icmp uge i32 %6, %2
  %8 = or i1 %7, %3
  br i1 %8, label %9, label %27

9:                                                ; preds = %4
  %10 = ptrtoint ptr %1 to i32
  %11 = or i32 %10, %2
  %12 = and i32 %11, 1
  %13 = icmp ne i32 %12, 0
  %14 = or i1 %13, %3
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 15
  %17 = load ptr, ptr %16, align 4
  tail call void @__raw_readsb(ptr noundef %17, ptr noundef %1, i32 noundef %2) #13
  br label %77

18:                                               ; preds = %9
  %19 = and i32 %11, 3
  %20 = icmp eq i32 %19, 0
  %21 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 15
  %22 = load ptr, ptr %21, align 4
  br i1 %20, label %25, label %23

23:                                               ; preds = %18
  %24 = lshr i32 %2, 1
  tail call void @__raw_readsw(ptr noundef %22, ptr noundef %1, i32 noundef %24) #13
  br label %77

25:                                               ; preds = %18
  %26 = lshr i32 %2, 2
  tail call void @__raw_readsl(ptr noundef %22, ptr noundef %1, i32 noundef %26) #13
  br label %77

27:                                               ; preds = %4
  %28 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 12
  store i32 0, ptr %28, align 8
  %29 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 13
  store ptr %1, ptr %29, align 4
  %30 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 8
  store i32 0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 8, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %31, ptr noundef nonnull @.str.45, ptr noundef nonnull @init_completion.__key) #13
  %32 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 16, i32 5
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !14
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %55, label %38

38:                                               ; preds = %27
  %39 = ptrtoint ptr %1 to i32
  %40 = or i32 %39, %2
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 15
  %45 = load ptr, ptr %44, align 4
  tail call void @__raw_readsb(ptr noundef %45, ptr noundef %1, i32 noundef %2) #13
  br label %77

46:                                               ; preds = %38
  %47 = and i32 %40, 3
  %48 = icmp eq i32 %47, 0
  %49 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 15
  %50 = load ptr, ptr %49, align 4
  br i1 %48, label %53, label %51

51:                                               ; preds = %46
  %52 = lshr i32 %2, 1
  tail call void @__raw_readsw(ptr noundef %50, ptr noundef %1, i32 noundef %52) #13
  br label %77

53:                                               ; preds = %46
  %54 = lshr i32 %2, 2
  tail call void @__raw_readsl(ptr noundef %50, ptr noundef %1, i32 noundef %54) #13
  br label %77

55:                                               ; preds = %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !15
  tail call void @arm_heavy_mb() #13
  %56 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 16, i32 4
  %57 = load ptr, ptr %56, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %2) #13, !srcloc !16
  %58 = shl i32 %33, 24
  %59 = or i32 %58, 8320
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !17
  tail call void @arm_heavy_mb() #13
  %60 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 16, i32 3
  %61 = load ptr, ptr %60, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %59) #13, !srcloc !16
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !18
  tail call void @arm_heavy_mb() #13
  %62 = load ptr, ptr %34, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 1) #13, !srcloc !16
  %63 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 14
  store i32 %2, ptr %63, align 8
  %64 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 11
  %65 = load i32, ptr %64, align 4
  tail call void @enable_irq(i32 noundef %65) #13
  %66 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 10
  %67 = load i32, ptr %66, align 8
  tail call void @enable_irq(i32 noundef %67) #13
  tail call void @wait_for_completion(ptr noundef %30) #13
  %68 = load i32, ptr %32, align 4
  %69 = load ptr, ptr %60, align 4
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !20
  %71 = lshr i32 %70, 24
  %72 = and i32 %71, 7
  %73 = icmp eq i32 %72, %68
  br i1 %73, label %74, label %77

74:                                               ; preds = %55
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !21
  tail call void @arm_heavy_mb() #13
  %75 = load ptr, ptr %34, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 0) #13, !srcloc !16
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !22
  tail call void @arm_heavy_mb() #13
  %76 = load ptr, ptr %60, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 0) #13, !srcloc !16
  br label %77

77:                                               ; preds = %74, %55, %53, %51, %43, %25, %23, %15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_nand_data_out_irq_pref(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) #2 {
  %5 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = icmp uge i32 %6, %2
  %8 = or i1 %7, %3
  br i1 %8, label %9, label %27

9:                                                ; preds = %4
  %10 = ptrtoint ptr %1 to i32
  %11 = or i32 %10, %2
  %12 = and i32 %11, 1
  %13 = icmp ne i32 %12, 0
  %14 = or i1 %13, %3
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 15
  %17 = load ptr, ptr %16, align 4
  tail call void @__raw_writesb(ptr noundef %17, ptr noundef %1, i32 noundef %2) #13
  br label %90

18:                                               ; preds = %9
  %19 = and i32 %11, 3
  %20 = icmp eq i32 %19, 0
  %21 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 15
  %22 = load ptr, ptr %21, align 4
  br i1 %20, label %25, label %23

23:                                               ; preds = %18
  %24 = lshr i32 %2, 1
  tail call void @__raw_writesw(ptr noundef %22, ptr noundef %1, i32 noundef %24) #13
  br label %90

25:                                               ; preds = %18
  %26 = lshr i32 %2, 2
  tail call void @__raw_writesl(ptr noundef %22, ptr noundef %1, i32 noundef %26) #13
  br label %90

27:                                               ; preds = %4
  %28 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 12
  store i32 1, ptr %28, align 8
  %29 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 13
  store ptr %1, ptr %29, align 4
  %30 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 8
  store i32 0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 8, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %31, ptr noundef nonnull @.str.45, ptr noundef nonnull @init_completion.__key) #13
  %32 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 16, i32 5
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !14
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %55, label %38

38:                                               ; preds = %27
  %39 = ptrtoint ptr %1 to i32
  %40 = or i32 %39, %2
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 15
  %45 = load ptr, ptr %44, align 4
  tail call void @__raw_writesb(ptr noundef %45, ptr noundef %1, i32 noundef %2) #13
  br label %90

46:                                               ; preds = %38
  %47 = and i32 %40, 3
  %48 = icmp eq i32 %47, 0
  %49 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 15
  %50 = load ptr, ptr %49, align 4
  br i1 %48, label %53, label %51

51:                                               ; preds = %46
  %52 = lshr i32 %2, 1
  tail call void @__raw_writesw(ptr noundef %50, ptr noundef %1, i32 noundef %52) #13
  br label %90

53:                                               ; preds = %46
  %54 = lshr i32 %2, 2
  tail call void @__raw_writesl(ptr noundef %50, ptr noundef %1, i32 noundef %54) #13
  br label %90

55:                                               ; preds = %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !15
  tail call void @arm_heavy_mb() #13
  %56 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 16, i32 4
  %57 = load ptr, ptr %56, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %2) #13, !srcloc !16
  %58 = shl i32 %33, 24
  %59 = or i32 %58, 6273
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !17
  tail call void @arm_heavy_mb() #13
  %60 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 16, i32 3
  %61 = load ptr, ptr %60, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %59) #13, !srcloc !16
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !18
  tail call void @arm_heavy_mb() #13
  %62 = load ptr, ptr %34, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 1) #13, !srcloc !16
  %63 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 14
  store i32 %2, ptr %63, align 8
  %64 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 11
  %65 = load i32, ptr %64, align 4
  tail call void @enable_irq(i32 noundef %65) #13
  %66 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 10
  %67 = load i32, ptr %66, align 8
  tail call void @enable_irq(i32 noundef %67) #13
  tail call void @wait_for_completion(ptr noundef %30) #13
  %68 = load i32, ptr @loops_per_jiffy, align 4
  %69 = mul i32 %68, 500
  %70 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 16, i32 6
  br label %71

71:                                               ; preds = %71, %55
  %72 = phi i32 [ 0, %55 ], [ %77, %71 ]
  %73 = load ptr, ptr %70, align 8
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !31
  %75 = and i32 %74, 16383
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !32
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !33
  %76 = icmp ne i32 %75, 0
  %77 = add nuw i32 %72, 1
  %78 = icmp ult i32 %72, %69
  %79 = select i1 %76, i1 %78, i1 false
  br i1 %79, label %71, label %80

80:                                               ; preds = %71
  %81 = load i32, ptr %32, align 4
  %82 = load ptr, ptr %60, align 4
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !20
  %84 = lshr i32 %83, 24
  %85 = and i32 %84, 7
  %86 = icmp eq i32 %85, %81
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !21
  tail call void @arm_heavy_mb() #13
  %88 = load ptr, ptr %34, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 0) #13, !srcloc !16
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !22
  tail call void @arm_heavy_mb() #13
  %89 = load ptr, ptr %60, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 0) #13, !srcloc !16
  br label %90

90:                                               ; preds = %87, %80, %53, %51, %43, %25, %23, %15
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_calculate_ecc(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 16, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !34
  %7 = lshr i32 %6, 1
  %8 = and i32 %7, 7
  %9 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %27

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 16, i32 10
  %14 = load ptr, ptr %13, align 8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !35
  %16 = trunc i32 %15 to i8
  %17 = getelementptr i8, ptr %2, i32 1
  store i8 %16, ptr %2, align 1
  %18 = lshr i32 %15, 16
  %19 = trunc i32 %18 to i8
  %20 = getelementptr i8, ptr %2, i32 2
  store i8 %19, ptr %17, align 1
  %21 = lshr i32 %15, 8
  %22 = and i32 %21, 15
  %23 = lshr i32 %15, 20
  %24 = and i32 %23, 240
  %25 = or i32 %22, %24
  %26 = trunc i32 %25 to i8
  store i8 %26, ptr %20, align 1
  br label %27

27:                                               ; preds = %12, %3
  %28 = phi i32 [ 0, %12 ], [ -22, %3 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_enable_hwecc(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %4 = load i32, ptr %3, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !36
  tail call void @arm_heavy_mb() #13
  %5 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 16, i32 8
  %6 = load ptr, ptr %5, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 257) #13, !srcloc !16
  %7 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  %8 = load i32, ptr %7, align 8
  %9 = shl i32 %8, 21
  %10 = add i32 %9, -4194304
  %11 = and i32 %10, -4194304
  %12 = or i32 %11, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !37
  tail call void @arm_heavy_mb() #13
  %13 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 16, i32 9
  %14 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #13, !srcloc !16
  switch i32 %1, label %19 [
    i32 0, label %15
    i32 1, label %15
    i32 2, label %17
  ]

15:                                               ; preds = %2, %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !38
  tail call void @arm_heavy_mb() #13
  %16 = load ptr, ptr %5, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 257) #13, !srcloc !16
  br label %23

17:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !39
  tail call void @arm_heavy_mb() #13
  %18 = load ptr, ptr %5, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 256) #13, !srcloc !16
  br label %23

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.platform_device, ptr %21, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef nonnull @.str.51, i32 noundef %1) #14
  br label %23

23:                                               ; preds = %19, %17, %15
  %24 = shl i32 %4, 6
  %25 = and i32 %24, 128
  %26 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = shl i32 %27, 1
  %29 = or i32 %25, %28
  %30 = or i32 %29, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !40
  tail call void @arm_heavy_mb() #13
  %31 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 16, i32 7
  %32 = load ptr, ptr %31, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #13, !srcloc !16
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_correct_data(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) #8 {
  %5 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 2048
  br i1 %11, label %13, label %12

12:                                               ; preds = %8, %4
  br label %13

13:                                               ; preds = %12, %8
  %14 = phi i32 [ 1, %12 ], [ 4, %8 ]
  br label %15

15:                                               ; preds = %294, %13
  %16 = phi i32 [ 0, %13 ], [ %295, %294 ]
  %17 = phi i32 [ 0, %13 ], [ %299, %294 ]
  %18 = phi ptr [ %3, %13 ], [ %297, %294 ]
  %19 = phi ptr [ %2, %13 ], [ %296, %294 ]
  %20 = phi ptr [ %1, %13 ], [ %298, %294 ]
  %21 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %19, ptr noundef dereferenceable(3) %18, i32 3)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %294, label %23

23:                                               ; preds = %15
  %24 = load i32, ptr %19, align 4
  %25 = trunc i32 %24 to i8
  %26 = getelementptr i8, ptr %19, i32 1
  %27 = lshr i32 %24, 8
  %28 = trunc i32 %27 to i8
  %29 = getelementptr i8, ptr %19, i32 2
  %30 = lshr i32 %24, 16
  %31 = trunc i32 %30 to i8
  %32 = shl i8 %28, 1
  %33 = and i8 %32, -128
  %34 = and i8 %25, 64
  %35 = and i8 %28, 32
  %36 = lshr i8 %25, 1
  %37 = and i8 %36, 16
  %38 = lshr i8 %28, 1
  %39 = and i8 %38, 8
  %40 = lshr i8 %25, 2
  %41 = and i8 %40, 4
  %42 = lshr i8 %28, 2
  %43 = and i8 %42, 2
  %44 = lshr i8 %25, 3
  %45 = and i8 %44, 1
  %46 = or i8 %35, %34
  %47 = or i8 %46, %37
  %48 = or i8 %47, %41
  %49 = or i8 %48, %45
  %50 = or i8 %49, %33
  %51 = or i8 %50, %39
  %52 = or i8 %51, %43
  %53 = xor i8 %52, -1
  store i8 %53, ptr %19, align 1
  %54 = shl i8 %31, 1
  %55 = and i8 %54, -128
  %56 = shl i8 %31, 4
  %57 = and i8 %56, 64
  %58 = and i8 %31, 32
  %59 = shl i8 %31, 3
  %60 = and i8 %59, 16
  %61 = lshr i8 %31, 1
  %62 = and i8 %61, 8
  %63 = shl i8 %31, 2
  %64 = and i8 %63, 4
  %65 = lshr i8 %28, 6
  %66 = and i8 %65, 2
  %67 = lshr i8 %25, 7
  %68 = or i8 %58, %67
  %69 = or i8 %68, %66
  %70 = or i8 %69, %57
  %71 = or i8 %70, %55
  %72 = or i8 %71, %60
  %73 = or i8 %72, %62
  %74 = or i8 %73, %64
  %75 = xor i8 %74, -1
  store i8 %75, ptr %26, align 1
  %76 = shl i8 %28, 5
  %77 = and i8 %76, -128
  %78 = shl i8 %25, 4
  %79 = and i8 %78, 64
  %80 = shl i8 %28, 4
  %81 = and i8 %80, 32
  %82 = shl i8 %25, 3
  %83 = and i8 %82, 16
  %84 = shl i8 %28, 3
  %85 = and i8 %84, 8
  %86 = shl i8 %25, 2
  %87 = and i8 %86, 4
  %88 = lshr i8 %31, 6
  %89 = and i8 %88, 2
  %90 = lshr i8 %31, 3
  %91 = and i8 %90, 1
  %92 = or i8 %83, %79
  %93 = or i8 %92, %87
  %94 = or i8 %93, %77
  %95 = or i8 %94, %81
  %96 = or i8 %95, %85
  %97 = or i8 %96, %89
  %98 = or i8 %97, %91
  %99 = xor i8 %98, -1
  store i8 %99, ptr %29, align 1
  %100 = load i8, ptr %18, align 1
  %101 = getelementptr i8, ptr %18, i32 1
  %102 = load i8, ptr %101, align 1
  %103 = getelementptr i8, ptr %18, i32 2
  %104 = load i8, ptr %103, align 1
  %105 = shl i8 %102, 1
  %106 = and i8 %105, -128
  %107 = and i8 %100, 64
  %108 = and i8 %102, 32
  %109 = lshr i8 %100, 1
  %110 = and i8 %109, 16
  %111 = lshr i8 %102, 1
  %112 = and i8 %111, 8
  %113 = lshr i8 %100, 2
  %114 = and i8 %113, 4
  %115 = lshr i8 %102, 2
  %116 = and i8 %115, 2
  %117 = lshr i8 %100, 3
  %118 = and i8 %117, 1
  %119 = or i8 %108, %107
  %120 = or i8 %119, %110
  %121 = or i8 %120, %114
  %122 = or i8 %121, %118
  %123 = or i8 %122, %106
  %124 = or i8 %123, %112
  %125 = or i8 %124, %116
  %126 = xor i8 %125, -1
  store i8 %126, ptr %18, align 1
  %127 = shl i8 %104, 1
  %128 = and i8 %127, -128
  %129 = shl i8 %104, 4
  %130 = and i8 %129, 64
  %131 = and i8 %104, 32
  %132 = shl i8 %104, 3
  %133 = and i8 %132, 16
  %134 = lshr i8 %104, 1
  %135 = and i8 %134, 8
  %136 = shl i8 %104, 2
  %137 = and i8 %136, 4
  %138 = lshr i8 %102, 6
  %139 = and i8 %138, 2
  %140 = lshr i8 %100, 7
  %141 = or i8 %131, %140
  %142 = or i8 %141, %139
  %143 = or i8 %142, %130
  %144 = or i8 %143, %128
  %145 = or i8 %144, %133
  %146 = or i8 %145, %135
  %147 = or i8 %146, %137
  %148 = xor i8 %147, -1
  store i8 %148, ptr %101, align 1
  %149 = shl i8 %102, 5
  %150 = and i8 %149, -128
  %151 = shl i8 %100, 4
  %152 = and i8 %151, 64
  %153 = shl i8 %102, 4
  %154 = and i8 %153, 32
  %155 = shl i8 %100, 3
  %156 = and i8 %155, 16
  %157 = shl i8 %102, 3
  %158 = and i8 %157, 8
  %159 = shl i8 %100, 2
  %160 = and i8 %159, 4
  %161 = lshr i8 %104, 6
  %162 = and i8 %161, 2
  %163 = lshr i8 %104, 3
  %164 = and i8 %163, 1
  %165 = or i8 %156, %152
  %166 = or i8 %165, %160
  %167 = or i8 %166, %150
  %168 = or i8 %167, %154
  %169 = or i8 %168, %158
  %170 = or i8 %169, %162
  %171 = or i8 %170, %164
  %172 = xor i8 %171, -1
  store i8 %172, ptr %103, align 1
  %173 = load i8, ptr %19, align 1
  %174 = xor i8 %173, -1
  store i8 %174, ptr %19, align 1
  %175 = load i8, ptr %18, align 1
  %176 = xor i8 %175, -1
  store i8 %176, ptr %18, align 1
  %177 = load i8, ptr %26, align 1
  %178 = xor i8 %177, -1
  store i8 %178, ptr %26, align 1
  %179 = load i8, ptr %101, align 1
  %180 = xor i8 %179, -1
  store i8 %180, ptr %101, align 1
  %181 = load i8, ptr %29, align 1
  %182 = xor i8 %181, -1
  store i8 %182, ptr %29, align 1
  %183 = load i8, ptr %103, align 1
  %184 = xor i8 %183, -1
  store i8 %184, ptr %103, align 1
  %185 = load i8, ptr %19, align 1
  store i8 0, ptr %19, align 1
  %186 = load i8, ptr %26, align 1
  store i8 0, ptr %26, align 1
  %187 = load i8, ptr %29, align 1
  store i8 0, ptr %29, align 1
  %188 = load i8, ptr %18, align 1
  store i8 0, ptr %18, align 1
  %189 = load i8, ptr %101, align 1
  store i8 0, ptr %101, align 1
  %190 = load i8, ptr %103, align 1
  store i8 0, ptr %103, align 1
  %191 = xor i8 %190, %187
  %192 = lshr i8 %191, 2
  %193 = lshr i8 %191, 3
  %194 = and i8 %193, 1
  %195 = lshr i8 %191, 4
  %196 = and i8 %195, 1
  %197 = lshr i8 %191, 5
  %198 = and i8 %197, 1
  %199 = lshr i8 %191, 6
  %200 = and i8 %199, 1
  %201 = lshr i8 %191, 7
  %202 = xor i8 %188, %185
  %203 = and i8 %202, 1
  %204 = lshr i8 %202, 1
  %205 = and i8 %204, 1
  %206 = lshr i8 %202, 2
  %207 = and i8 %206, 1
  %208 = lshr i8 %202, 3
  %209 = and i8 %208, 1
  %210 = lshr i8 %202, 4
  %211 = and i8 %210, 1
  %212 = lshr i8 %202, 5
  %213 = and i8 %212, 1
  %214 = lshr i8 %202, 6
  %215 = and i8 %214, 1
  %216 = lshr i8 %202, 7
  %217 = xor i8 %189, %186
  %218 = and i8 %217, 1
  %219 = lshr i8 %217, 1
  %220 = and i8 %219, 1
  %221 = lshr i8 %217, 2
  %222 = and i8 %221, 1
  %223 = lshr i8 %217, 3
  %224 = and i8 %223, 1
  %225 = lshr i8 %217, 4
  %226 = and i8 %225, 1
  %227 = lshr i8 %217, 5
  %228 = and i8 %227, 1
  %229 = lshr i8 %217, 6
  %230 = and i8 %229, 1
  %231 = lshr i8 %217, 7
  %232 = and i8 %191, 1
  %233 = lshr i8 %191, 1
  %234 = and i8 %233, 1
  %235 = and i8 %192, 1
  %236 = add nuw nsw i8 %216, %203
  %237 = add nuw nsw i8 %236, %205
  %238 = add nuw nsw i8 %237, %207
  %239 = add nuw nsw i8 %238, %209
  %240 = add nuw nsw i8 %239, %211
  %241 = add nuw nsw i8 %240, %213
  %242 = add nuw nsw i8 %241, %215
  %243 = add nuw nsw i8 %242, %218
  %244 = add nuw nsw i8 %243, %231
  %245 = add nuw nsw i8 %244, %220
  %246 = add nuw nsw i8 %245, %222
  %247 = add nuw nsw i8 %246, %224
  %248 = add nuw nsw i8 %247, %226
  %249 = add nuw nsw i8 %248, %228
  %250 = add nuw nsw i8 %249, %230
  %251 = add nuw nsw i8 %250, %201
  %252 = add nuw nsw i8 %251, %232
  %253 = add nuw nsw i8 %252, %194
  %254 = add nuw nsw i8 %253, %235
  %255 = add nuw nsw i8 %254, %196
  %256 = add nuw nsw i8 %255, %198
  %257 = add nuw nsw i8 %256, %200
  %258 = add nuw nsw i8 %257, %234
  switch i8 %258, label %288 [
    i8 0, label %291
    i8 1, label %301
    i8 11, label %301
    i8 12, label %259
  ]

259:                                              ; preds = %23
  %260 = zext i8 %234 to i32
  %261 = shl nuw nsw i32 %260, 8
  %262 = and i8 %217, -128
  %263 = shl nuw nsw i8 %228, 6
  %264 = shl nuw nsw i8 %224, 5
  %265 = zext i8 %264 to i32
  %266 = shl nuw nsw i8 %220, 4
  %267 = zext i8 %266 to i32
  %268 = shl nuw nsw i8 %216, 3
  %269 = shl nuw nsw i8 %213, 2
  %270 = shl nuw nsw i8 %209, 1
  %271 = or i8 %205, %268
  %272 = or i8 %271, %262
  %273 = or i8 %272, %269
  %274 = or i8 %273, %270
  %275 = or i8 %274, %263
  %276 = zext i8 %275 to i32
  %277 = add nuw nsw i32 %276, %265
  %278 = add nuw nsw i32 %277, %267
  %279 = add nuw nsw i32 %278, %261
  %280 = shl nuw nsw i8 %201, 2
  %281 = shl nuw nsw i8 %198, 1
  %282 = or i8 %281, %280
  %283 = or i8 %282, %194
  %284 = shl nuw i8 1, %283
  %285 = getelementptr i8, ptr %20, i32 %279
  %286 = load i8, ptr %285, align 1
  %287 = xor i8 %286, %284
  store i8 %287, ptr %285, align 1
  br label %291

288:                                              ; preds = %23
  %289 = and i32 %24, 16777215
  %290 = icmp eq i32 %289, 16777215
  br i1 %290, label %291, label %301

291:                                              ; preds = %288, %259, %23
  %292 = phi i32 [ 1, %259 ], [ 0, %23 ], [ 0, %288 ]
  %293 = add i32 %292, %16
  br label %294

294:                                              ; preds = %291, %15
  %295 = phi i32 [ %293, %291 ], [ %16, %15 ]
  %296 = getelementptr i8, ptr %19, i32 3
  %297 = getelementptr i8, ptr %18, i32 3
  %298 = getelementptr i8, ptr %20, i32 512
  %299 = add nuw nsw i32 %17, 1
  %300 = icmp eq i32 %299, %14
  br i1 %300, label %301, label %15

301:                                              ; preds = %294, %288, %23, %23
  %302 = phi i32 [ %295, %294 ], [ -74, %23 ], [ -74, %23 ], [ -74, %288 ]
  ret i32 %302
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_enable_hwecc_bch(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 8
  switch i32 %4, label %54 [
    i32 2, label %26
    i32 3, label %5
    i32 4, label %12
    i32 5, label %13
    i32 6, label %20
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %1, 0
  %9 = select i1 %8, i32 256, i32 1536
  %10 = select i1 %8, i32 12582912, i32 134217728
  %11 = select i1 %8, i32 53248, i32 0
  br label %26

12:                                               ; preds = %2
  br label %26

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %1, 0
  %17 = select i1 %16, i32 256, i32 1536
  %18 = select i1 %16, i32 8388608, i32 134217728
  %19 = select i1 %16, i32 106496, i32 0
  br label %26

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %1, 0
  %24 = select i1 %23, i32 0, i32 218103808
  %25 = select i1 %23, i32 212992, i32 0
  br label %26

26:                                               ; preds = %20, %13, %12, %5, %2
  %27 = phi i32 [ 1, %12 ], [ 1, %2 ], [ %7, %5 ], [ %15, %13 ], [ %22, %20 ]
  %28 = phi i32 [ 69633, %12 ], [ 65537, %2 ], [ 65537, %5 ], [ 69633, %13 ], [ 73729, %20 ]
  %29 = phi i32 [ 1536, %12 ], [ 1536, %2 ], [ %9, %5 ], [ %17, %13 ], [ 256, %20 ]
  %30 = phi i32 [ 134217728, %12 ], [ 134217728, %2 ], [ %10, %5 ], [ %18, %13 ], [ %24, %20 ]
  %31 = phi i32 [ 0, %12 ], [ 0, %2 ], [ %11, %5 ], [ %19, %13 ], [ %25, %20 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !41
  tail call void @arm_heavy_mb() #13
  %32 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 16, i32 8
  %33 = load ptr, ptr %32, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 1) #13, !srcloc !16
  %34 = or i32 %31, %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !42
  tail call void @arm_heavy_mb() #13
  %35 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 16, i32 9
  %36 = load ptr, ptr %35, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #13, !srcloc !16
  %37 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %38 = load i32, ptr %37, align 8
  %39 = shl i32 %38, 6
  %40 = and i32 %39, 128
  %41 = shl i32 %27, 4
  %42 = add i32 %41, 112
  %43 = and i32 %42, 112
  %44 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = shl i32 %45, 1
  %47 = or i32 %28, %29
  %48 = or i32 %47, %43
  %49 = or i32 %48, %40
  %50 = or i32 %49, %46
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !43
  tail call void @arm_heavy_mb() #13
  %51 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 16, i32 7
  %52 = load ptr, ptr %51, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #13, !srcloc !16
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !44
  tail call void @arm_heavy_mb() #13
  %53 = load ptr, ptr %32, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 257) #13, !srcloc !16
  br label %54

54:                                               ; preds = %26, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rawnand_sw_bch_correct(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_calculate_ecc_bch_sw(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = tail call fastcc i32 @_omap_calculate_ecc_bch(ptr noundef %0, ptr noundef %2, i32 noundef 0)
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rawnand_sw_bch_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_elm_correct_data(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr noundef %3) #2 {
  %5 = alloca [8 x %struct.elm_errorvec], align 4
  %6 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 22
  %7 = load i32, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %5) #13
  %8 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 5
  %9 = load i32, ptr %8, align 8
  switch i32 %9, label %21 [
    i32 3, label %10
    i32 5, label %14
    i32 6, label %18
  ]

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, -1
  br label %25

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, -1
  br label %25

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  %20 = load i32, ptr %19, align 4
  br label %25

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.platform_device, ptr %23, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.52) #14
  br label %201

25:                                               ; preds = %18, %14, %10
  %26 = phi i32 [ %20, %18 ], [ %16, %14 ], [ %12, %10 ]
  %27 = phi i32 [ %20, %18 ], [ %17, %14 ], [ %13, %10 ]
  %28 = phi ptr [ @bch16_vector, %18 ], [ @bch8_vector, %14 ], [ @bch4_vector, %10 ]
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(576) %5, i8 0, i32 576, i1 false)
  %29 = icmp sgt i32 %7, 0
  br i1 %29, label %30, label %201

30:                                               ; preds = %25
  %31 = icmp sgt i32 %27, 0
  %32 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  %33 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 7
  %34 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  br label %35

35:                                               ; preds = %105, %30
  %36 = phi i32 [ %26, %30 ], [ %108, %105 ]
  %37 = phi ptr [ %2, %30 ], [ %110, %105 ]
  %38 = phi ptr [ %3, %30 ], [ %109, %105 ]
  %39 = phi i1 [ false, %30 ], [ %107, %105 ]
  %40 = phi i32 [ 0, %30 ], [ %106, %105 ]
  %41 = phi i32 [ 0, %30 ], [ %111, %105 ]
  br i1 %31, label %45, label %105

42:                                               ; preds = %45
  %43 = add nuw nsw i32 %46, 1
  %44 = icmp eq i32 %43, %27
  br i1 %44, label %105, label %45

45:                                               ; preds = %42, %35
  %46 = phi i32 [ %43, %42 ], [ 0, %35 ]
  %47 = getelementptr i8, ptr %38, i32 %46
  %48 = load i8, ptr %47, align 1
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %42, label %50

50:                                               ; preds = %45
  %51 = tail call i32 @bcmp(ptr %38, ptr nonnull %28, i32 %27)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %105, label %53

53:                                               ; preds = %50
  %54 = load i32, ptr %32, align 8
  %55 = mul i32 %54, %41
  %56 = getelementptr i8, ptr %1, i32 %55
  %57 = icmp sgt i32 %54, 0
  br i1 %57, label %69, label %64

58:                                               ; preds = %69
  %59 = add nuw nsw i32 %70, 1
  %60 = load i32, ptr %32, align 8
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %69, label %62

62:                                               ; preds = %58
  %63 = load i32, ptr %34, align 4
  br label %64

64:                                               ; preds = %62, %53
  %65 = phi i32 [ %36, %53 ], [ %63, %62 ]
  %66 = phi i32 [ 0, %53 ], [ %77, %62 ]
  %67 = add i32 %65, -1
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %85, label %96

69:                                               ; preds = %58, %53
  %70 = phi i32 [ %59, %58 ], [ 0, %53 ]
  %71 = phi i32 [ %77, %58 ], [ 0, %53 ]
  %72 = getelementptr i8, ptr %56, i32 %70
  %73 = load i8, ptr %72, align 1
  %74 = zext i8 %73 to i32
  %75 = xor i32 %74, -1
  %76 = tail call i32 @__sw_hweight8(i32 noundef %75) #13
  %77 = add i32 %76, %71
  %78 = load i32, ptr %33, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %103, label %58

80:                                               ; preds = %85
  %81 = add nuw nsw i32 %86, 1
  %82 = load i32, ptr %34, align 4
  %83 = add i32 %82, -1
  %84 = icmp slt i32 %81, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %80, %64
  %86 = phi i32 [ %81, %80 ], [ 0, %64 ]
  %87 = phi i32 [ %93, %80 ], [ %66, %64 ]
  %88 = getelementptr i8, ptr %37, i32 %86
  %89 = load i8, ptr %88, align 1
  %90 = zext i8 %89 to i32
  %91 = xor i32 %90, -1
  %92 = tail call i32 @__sw_hweight8(i32 noundef %91) #13
  %93 = add i32 %92, %87
  %94 = load i32, ptr %33, align 4
  %95 = icmp sgt i32 %93, %94
  br i1 %95, label %103, label %80

96:                                               ; preds = %80, %64
  %97 = phi i32 [ %66, %64 ], [ %93, %80 ]
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %96
  %100 = load i32, ptr %32, align 8
  tail call void @llvm.memset.p0.i32(ptr align 1 %56, i8 -1, i32 %100, i1 false) #13
  %101 = load i32, ptr %34, align 4
  tail call void @llvm.memset.p0.i32(ptr align 1 %37, i8 -1, i32 %101, i1 false) #13
  %102 = add i32 %97, %40
  br label %105

103:                                              ; preds = %96, %85, %69
  %104 = getelementptr [8 x %struct.elm_errorvec], ptr %5, i32 0, i32 %41
  store i8 1, ptr %104, align 4
  br label %105

105:                                              ; preds = %103, %99, %50, %42, %35
  %106 = phi i32 [ %40, %50 ], [ %102, %99 ], [ %40, %103 ], [ %40, %35 ], [ %40, %42 ]
  %107 = phi i1 [ %39, %50 ], [ %39, %99 ], [ true, %103 ], [ %39, %35 ], [ %39, %42 ]
  %108 = load i32, ptr %34, align 4
  %109 = getelementptr i8, ptr %38, i32 %108
  %110 = getelementptr i8, ptr %37, i32 %108
  %111 = add nuw nsw i32 %41, 1
  %112 = icmp eq i32 %111, %7
  br i1 %112, label %113, label %35

113:                                              ; preds = %105
  br i1 %107, label %114, label %201

114:                                              ; preds = %113
  %115 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 19
  %116 = load ptr, ptr %115, align 4
  call void @elm_decode_bch_error_page(ptr noundef %116, ptr noundef %3, ptr noundef nonnull %5) #13
  br i1 %29, label %117, label %199

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 1
  %119 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  %120 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  br label %121

121:                                              ; preds = %186, %117
  %122 = phi ptr [ %1, %117 ], [ %192, %186 ]
  %123 = phi i32 [ 0, %117 ], [ %187, %186 ]
  %124 = phi ptr [ %2, %117 ], [ %194, %186 ]
  %125 = phi i32 [ %106, %117 ], [ %190, %186 ]
  %126 = phi i32 [ 0, %117 ], [ %195, %186 ]
  %127 = getelementptr [8 x %struct.elm_errorvec], ptr %5, i32 0, i32 %126, i32 1
  %128 = load i8, ptr %127, align 1, !range !9
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %121
  %131 = load ptr, ptr %118, align 8
  %132 = getelementptr inbounds %struct.platform_device, ptr %131, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %132, ptr noundef nonnull @.str.53) #14
  br label %186

133:                                              ; preds = %121
  %134 = getelementptr [8 x %struct.elm_errorvec], ptr %5, i32 0, i32 %126
  %135 = load i8, ptr %134, align 4, !range !9
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %186, label %137

137:                                              ; preds = %133
  %138 = getelementptr [8 x %struct.elm_errorvec], ptr %5, i32 0, i32 %126, i32 2
  %139 = load i32, ptr %138, align 4
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %186

141:                                              ; preds = %181, %137
  %142 = phi i32 [ %182, %181 ], [ %139, %137 ]
  %143 = phi i32 [ %183, %181 ], [ %123, %137 ]
  %144 = phi i32 [ %184, %181 ], [ 0, %137 ]
  %145 = load i32, ptr %8, align 8
  switch i32 %145, label %201 [
    i32 3, label %146
    i32 5, label %150
    i32 6, label %150
  ]

146:                                              ; preds = %141
  %147 = getelementptr [8 x %struct.elm_errorvec], ptr %5, i32 0, i32 %126, i32 3, i32 %144
  %148 = load i32, ptr %147, align 4
  %149 = add i32 %148, 4
  br label %153

150:                                              ; preds = %141, %141
  %151 = getelementptr [8 x %struct.elm_errorvec], ptr %5, i32 0, i32 %126, i32 3, i32 %144
  %152 = load i32, ptr %151, align 4
  br label %153

153:                                              ; preds = %150, %146
  %154 = phi i32 [ %152, %150 ], [ %149, %146 ]
  %155 = load i32, ptr %119, align 4
  %156 = add i32 %155, %27
  %157 = shl i32 %156, 3
  %158 = and i32 %154, 7
  %159 = xor i32 %154, -1
  %160 = add i32 %157, %159
  %161 = lshr i32 %160, 3
  %162 = icmp ult i32 %154, %157
  br i1 %162, label %163, label %177

163:                                              ; preds = %153
  %164 = icmp ult i32 %160, 4096
  %165 = shl nuw nsw i32 1, %158
  br i1 %164, label %166, label %171

166:                                              ; preds = %163
  %167 = getelementptr i8, ptr %122, i32 %161
  %168 = load i8, ptr %167, align 1
  %169 = trunc i32 %165 to i8
  %170 = xor i8 %168, %169
  store i8 %170, ptr %167, align 1
  br label %181

171:                                              ; preds = %163
  %172 = add nsw i32 %161, -512
  %173 = getelementptr i8, ptr %124, i32 %172
  %174 = load i8, ptr %173, align 1
  %175 = trunc i32 %165 to i8
  %176 = xor i8 %174, %175
  store i8 %176, ptr %173, align 1
  br label %181

177:                                              ; preds = %153
  %178 = load ptr, ptr %118, align 8
  %179 = getelementptr inbounds %struct.platform_device, ptr %178, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %179, ptr noundef nonnull @.str.54, i32 noundef %161, i32 noundef %158) #14
  %180 = load i32, ptr %138, align 4
  br label %181

181:                                              ; preds = %177, %171, %166
  %182 = phi i32 [ %142, %166 ], [ %142, %171 ], [ %180, %177 ]
  %183 = phi i32 [ %143, %166 ], [ %143, %171 ], [ -74, %177 ]
  %184 = add nuw nsw i32 %144, 1
  %185 = icmp slt i32 %184, %182
  br i1 %185, label %141, label %186

186:                                              ; preds = %181, %137, %133, %130
  %187 = phi i32 [ -74, %130 ], [ %123, %133 ], [ %123, %137 ], [ %183, %181 ]
  %188 = getelementptr [8 x %struct.elm_errorvec], ptr %5, i32 0, i32 %126, i32 2
  %189 = load i32, ptr %188, align 4
  %190 = call i32 @llvm.umax.i32(i32 %125, i32 %189)
  %191 = load i32, ptr %119, align 4
  %192 = getelementptr i8, ptr %122, i32 %191
  %193 = load i32, ptr %120, align 4
  %194 = getelementptr i8, ptr %124, i32 %193
  %195 = add nuw nsw i32 %126, 1
  %196 = icmp eq i32 %195, %7
  br i1 %196, label %197, label %121

197:                                              ; preds = %186
  %198 = icmp eq i32 %187, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %197, %114
  %200 = phi i32 [ %190, %197 ], [ %106, %114 ]
  br label %201

201:                                              ; preds = %199, %197, %141, %113, %25, %21
  %202 = phi i32 [ -22, %21 ], [ %106, %113 ], [ %200, %199 ], [ %187, %197 ], [ 0, %25 ], [ -22, %141 ]
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %5) #13
  ret i32 %202
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_read_page_bch(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 12
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 @nand_read_page_op(ptr noundef %0, i32 noundef %3, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %123

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 13
  %13 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %14 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 21
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %123, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 23
  %19 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 24
  %20 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %21 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  %22 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 16, i32 7
  %23 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 15
  %24 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52
  %25 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52, i32 1
  br label %26

26:                                               ; preds = %118, %17
  %27 = phi i32 [ 0, %17 ], [ %120, %118 ]
  %28 = phi i32 [ 0, %17 ], [ %119, %118 ]
  %29 = load ptr, ptr %12, align 4
  tail call void %29(ptr noundef %0, i32 noundef 0) #13
  %30 = load i32, ptr %18, align 4
  %31 = mul i32 %30, %27
  %32 = getelementptr i8, ptr %1, i32 %31
  %33 = tail call i32 @nand_change_read_column_op(ptr noundef %0, i32 noundef %31, ptr noundef %32, i32 noundef %30, i1 noundef zeroext false) #13
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %123

35:                                               ; preds = %26
  %36 = load i32, ptr %13, align 4
  %37 = add i32 %36, 2
  %38 = load i32, ptr %19, align 8
  %39 = mul i32 %38, %27
  %40 = add i32 %37, %39
  %41 = load ptr, ptr %20, align 4
  %42 = getelementptr i8, ptr %41, i32 2
  %43 = getelementptr i8, ptr %42, i32 %39
  %44 = tail call i32 @nand_change_read_column_op(ptr noundef %0, i32 noundef %40, ptr noundef %43, i32 noundef %38, i1 noundef zeroext false) #13
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %123

46:                                               ; preds = %35
  %47 = load i32, ptr %21, align 4
  %48 = load ptr, ptr %22, align 4
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !45
  %50 = lshr i32 %49, 4
  %51 = and i32 %50, 7
  %52 = tail call fastcc i32 @_omap_calculate_ecc_bch(ptr noundef %0, ptr noundef %6, i32 noundef 0) #13
  %53 = icmp ne i32 %52, 0
  %54 = icmp eq i32 %51, 0
  %55 = select i1 %53, i1 true, i1 %54
  br i1 %55, label %95, label %56

56:                                               ; preds = %46
  %57 = getelementptr i8, ptr %6, i32 %47
  %58 = tail call fastcc i32 @_omap_calculate_ecc_bch(ptr noundef %0, ptr noundef %57, i32 noundef 1) #13
  %59 = icmp ne i32 %58, 0
  %60 = icmp eq i32 %51, 1
  %61 = select i1 %59, i1 true, i1 %60
  br i1 %61, label %95, label %62

62:                                               ; preds = %56
  %63 = getelementptr i8, ptr %57, i32 %47
  %64 = tail call fastcc i32 @_omap_calculate_ecc_bch(ptr noundef %0, ptr noundef %63, i32 noundef 2) #13
  %65 = icmp ne i32 %64, 0
  %66 = icmp eq i32 %51, 2
  %67 = select i1 %65, i1 true, i1 %66
  br i1 %67, label %95, label %68

68:                                               ; preds = %62
  %69 = getelementptr i8, ptr %63, i32 %47
  %70 = tail call fastcc i32 @_omap_calculate_ecc_bch(ptr noundef %0, ptr noundef %69, i32 noundef 3) #13
  %71 = icmp ne i32 %70, 0
  %72 = icmp eq i32 %51, 3
  %73 = select i1 %71, i1 true, i1 %72
  br i1 %73, label %95, label %74

74:                                               ; preds = %68
  %75 = getelementptr i8, ptr %69, i32 %47
  %76 = tail call fastcc i32 @_omap_calculate_ecc_bch(ptr noundef %0, ptr noundef %75, i32 noundef 4) #13
  %77 = icmp ne i32 %76, 0
  %78 = icmp eq i32 %51, 4
  %79 = select i1 %77, i1 true, i1 %78
  br i1 %79, label %95, label %80

80:                                               ; preds = %74
  %81 = getelementptr i8, ptr %75, i32 %47
  %82 = tail call fastcc i32 @_omap_calculate_ecc_bch(ptr noundef %0, ptr noundef %81, i32 noundef 5) #13
  %83 = icmp ne i32 %82, 0
  %84 = icmp eq i32 %51, 5
  %85 = select i1 %83, i1 true, i1 %84
  br i1 %85, label %95, label %86

86:                                               ; preds = %80
  %87 = getelementptr i8, ptr %81, i32 %47
  %88 = tail call fastcc i32 @_omap_calculate_ecc_bch(ptr noundef %0, ptr noundef %87, i32 noundef 6) #13
  %89 = icmp ne i32 %88, 0
  %90 = icmp eq i32 %51, 6
  %91 = select i1 %89, i1 true, i1 %90
  br i1 %91, label %95, label %92

92:                                               ; preds = %86
  %93 = getelementptr i8, ptr %87, i32 %47
  %94 = tail call fastcc i32 @_omap_calculate_ecc_bch(ptr noundef %0, ptr noundef %93, i32 noundef 7) #13
  br label %95

95:                                               ; preds = %92, %86, %80, %74, %68, %62, %56, %46
  %96 = phi i32 [ %52, %46 ], [ %58, %56 ], [ %64, %62 ], [ %70, %68 ], [ %76, %74 ], [ %82, %80 ], [ %88, %86 ], [ %94, %92 ]
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %123

98:                                               ; preds = %95
  %99 = load ptr, ptr %20, align 4
  %100 = load i32, ptr %19, align 8
  %101 = mul i32 %100, %27
  %102 = tail call i32 @mtd_ooblayout_get_eccbytes(ptr noundef %0, ptr noundef %8, ptr noundef %99, i32 noundef %101, i32 noundef %100) #13
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %123

104:                                              ; preds = %98
  %105 = load ptr, ptr %23, align 4
  %106 = load i32, ptr %18, align 4
  %107 = mul i32 %106, %27
  %108 = getelementptr i8, ptr %1, i32 %107
  %109 = tail call i32 %105(ptr noundef %0, ptr noundef %108, ptr noundef %8, ptr noundef %6) #13
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %104
  %112 = load i32, ptr %25, align 4
  %113 = add i32 %112, 1
  store i32 %113, ptr %25, align 4
  br label %118

114:                                              ; preds = %104
  %115 = load i32, ptr %24, align 4
  %116 = add i32 %115, %109
  store i32 %116, ptr %24, align 4
  %117 = tail call i32 @llvm.umax.i32(i32 %28, i32 %109)
  br label %118

118:                                              ; preds = %114, %111
  %119 = phi i32 [ %28, %111 ], [ %117, %114 ]
  %120 = add nuw i32 %27, 1
  %121 = load i32, ptr %14, align 4
  %122 = icmp ult i32 %120, %121
  br i1 %122, label %26, label %123

123:                                              ; preds = %118, %98, %95, %35, %26, %11, %4
  %124 = phi i32 [ %9, %4 ], [ 0, %11 ], [ %33, %26 ], [ %44, %35 ], [ %96, %95 ], [ %102, %98 ], [ %119, %118 ]
  ret i32 %124
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_write_page_bch(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @nand_prog_page_begin_op(ptr noundef %0, i32 noundef %3, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %97

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 21
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %89, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 13
  %15 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 26
  %16 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 23
  %17 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  %18 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 16, i32 7
  %19 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %20 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 24
  br label %25

21:                                               ; preds = %83
  %22 = add nuw i32 %26, 1
  %23 = load i32, ptr %10, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %89

25:                                               ; preds = %21, %13
  %26 = phi i32 [ 0, %13 ], [ %22, %21 ]
  %27 = load ptr, ptr %14, align 4
  tail call void %27(ptr noundef %0, i32 noundef 1) #13
  %28 = load ptr, ptr %15, align 8
  %29 = load i32, ptr %16, align 4
  %30 = mul i32 %29, %26
  %31 = getelementptr i8, ptr %1, i32 %30
  tail call void %28(ptr noundef %0, ptr noundef %31, i32 noundef %29, i1 noundef zeroext false) #13
  %32 = load i32, ptr %17, align 4
  %33 = load ptr, ptr %18, align 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !45
  %35 = lshr i32 %34, 4
  %36 = and i32 %35, 7
  %37 = tail call fastcc i32 @_omap_calculate_ecc_bch(ptr noundef %0, ptr noundef %6, i32 noundef 0) #13
  %38 = icmp ne i32 %37, 0
  %39 = icmp eq i32 %36, 0
  %40 = select i1 %38, i1 true, i1 %39
  br i1 %40, label %80, label %41

41:                                               ; preds = %25
  %42 = getelementptr i8, ptr %6, i32 %32
  %43 = tail call fastcc i32 @_omap_calculate_ecc_bch(ptr noundef %0, ptr noundef %42, i32 noundef 1) #13
  %44 = icmp ne i32 %43, 0
  %45 = icmp eq i32 %36, 1
  %46 = select i1 %44, i1 true, i1 %45
  br i1 %46, label %80, label %47

47:                                               ; preds = %41
  %48 = getelementptr i8, ptr %42, i32 %32
  %49 = tail call fastcc i32 @_omap_calculate_ecc_bch(ptr noundef %0, ptr noundef %48, i32 noundef 2) #13
  %50 = icmp ne i32 %49, 0
  %51 = icmp eq i32 %36, 2
  %52 = select i1 %50, i1 true, i1 %51
  br i1 %52, label %80, label %53

53:                                               ; preds = %47
  %54 = getelementptr i8, ptr %48, i32 %32
  %55 = tail call fastcc i32 @_omap_calculate_ecc_bch(ptr noundef %0, ptr noundef %54, i32 noundef 3) #13
  %56 = icmp ne i32 %55, 0
  %57 = icmp eq i32 %36, 3
  %58 = select i1 %56, i1 true, i1 %57
  br i1 %58, label %80, label %59

59:                                               ; preds = %53
  %60 = getelementptr i8, ptr %54, i32 %32
  %61 = tail call fastcc i32 @_omap_calculate_ecc_bch(ptr noundef %0, ptr noundef %60, i32 noundef 4) #13
  %62 = icmp ne i32 %61, 0
  %63 = icmp eq i32 %36, 4
  %64 = select i1 %62, i1 true, i1 %63
  br i1 %64, label %80, label %65

65:                                               ; preds = %59
  %66 = getelementptr i8, ptr %60, i32 %32
  %67 = tail call fastcc i32 @_omap_calculate_ecc_bch(ptr noundef %0, ptr noundef %66, i32 noundef 5) #13
  %68 = icmp ne i32 %67, 0
  %69 = icmp eq i32 %36, 5
  %70 = select i1 %68, i1 true, i1 %69
  br i1 %70, label %80, label %71

71:                                               ; preds = %65
  %72 = getelementptr i8, ptr %66, i32 %32
  %73 = tail call fastcc i32 @_omap_calculate_ecc_bch(ptr noundef %0, ptr noundef %72, i32 noundef 6) #13
  %74 = icmp ne i32 %73, 0
  %75 = icmp eq i32 %36, 6
  %76 = select i1 %74, i1 true, i1 %75
  br i1 %76, label %80, label %77

77:                                               ; preds = %71
  %78 = getelementptr i8, ptr %72, i32 %32
  %79 = tail call fastcc i32 @_omap_calculate_ecc_bch(ptr noundef %0, ptr noundef %78, i32 noundef 7) #13
  br label %80

80:                                               ; preds = %77, %71, %65, %59, %53, %47, %41, %25
  %81 = phi i32 [ %37, %25 ], [ %43, %41 ], [ %49, %47 ], [ %55, %53 ], [ %61, %59 ], [ %67, %65 ], [ %73, %71 ], [ %79, %77 ]
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %80
  %84 = load ptr, ptr %19, align 4
  %85 = load i32, ptr %20, align 8
  %86 = mul i32 %85, %26
  %87 = tail call i32 @mtd_ooblayout_set_eccbytes(ptr noundef %0, ptr noundef %6, ptr noundef %84, i32 noundef %86, i32 noundef %85) #13
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %21, label %97

89:                                               ; preds = %21, %9
  %90 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 26
  %91 = load ptr, ptr %90, align 8
  %92 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %95 = load i32, ptr %94, align 4
  tail call void %91(ptr noundef %0, ptr noundef %93, i32 noundef %95, i1 noundef zeroext false) #13
  %96 = tail call i32 @nand_prog_page_end_op(ptr noundef %0) #13
  br label %97

97:                                               ; preds = %89, %83, %80, %4
  %98 = phi i32 [ %96, %89 ], [ %7, %4 ], [ %87, %83 ], [ %81, %80 ]
  ret i32 %98
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_write_subpage_bch(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #2 {
  %7 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = udiv i32 %1, %10
  %14 = add i32 %1, -1
  %15 = add i32 %14, %2
  %16 = udiv i32 %15, %10
  %17 = tail call i32 @nand_prog_page_begin_op(ptr noundef %0, i32 noundef %5, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %75

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 21
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %67, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 13
  %25 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 26
  %26 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 23
  %27 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 22
  %28 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %29 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 24
  br label %34

30:                                               ; preds = %61
  %31 = add nuw i32 %35, 1
  %32 = load i32, ptr %20, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %67

34:                                               ; preds = %30, %23
  %35 = phi i32 [ 0, %23 ], [ %31, %30 ]
  %36 = load ptr, ptr %24, align 4
  tail call void %36(ptr noundef %0, i32 noundef 1) #13
  %37 = load ptr, ptr %25, align 8
  %38 = load i32, ptr %26, align 4
  %39 = mul i32 %38, %35
  %40 = getelementptr i8, ptr %3, i32 %39
  tail call void %37(ptr noundef %0, ptr noundef %40, i32 noundef %38, i1 noundef zeroext false) #13
  %41 = load i32, ptr %27, align 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %61, label %43

43:                                               ; preds = %57, %34
  %44 = phi i32 [ %59, %57 ], [ %41, %34 ]
  %45 = phi i32 [ %58, %57 ], [ 0, %34 ]
  %46 = mul i32 %44, %35
  %47 = add i32 %46, %45
  %48 = icmp ult i32 %47, %13
  %49 = icmp ugt i32 %47, %16
  %50 = or i1 %48, %49
  %51 = mul i32 %45, %12
  %52 = getelementptr i8, ptr %8, i32 %51
  br i1 %50, label %53, label %54

53:                                               ; preds = %43
  tail call void @llvm.memset.p0.i32(ptr align 1 %52, i8 -1, i32 %12, i1 false)
  br label %57

54:                                               ; preds = %43
  %55 = tail call fastcc i32 @_omap_calculate_ecc_bch(ptr noundef %0, ptr noundef %52, i32 noundef %45)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %54, %53
  %58 = add nuw i32 %45, 1
  %59 = load i32, ptr %27, align 8
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %43, label %61

61:                                               ; preds = %57, %34
  %62 = load ptr, ptr %28, align 4
  %63 = load i32, ptr %29, align 8
  %64 = mul i32 %63, %35
  %65 = tail call i32 @mtd_ooblayout_set_eccbytes(ptr noundef %0, ptr noundef %8, ptr noundef %62, i32 noundef %64, i32 noundef %63) #13
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %30, label %75

67:                                               ; preds = %30, %19
  %68 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 26
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %73 = load i32, ptr %72, align 4
  tail call void %69(ptr noundef %0, ptr noundef %71, i32 noundef %73, i1 noundef zeroext false) #13
  %74 = tail call i32 @nand_prog_page_end_op(ptr noundef %0) #13
  br label %75

75:                                               ; preds = %67, %61, %54, %6
  %76 = phi i32 [ %74, %67 ], [ %17, %6 ], [ %55, %54 ], [ %65, %61 ]
  ret i32 %76
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @elm_config(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @omap_nand_dma_transfer(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 {
  %5 = alloca %struct.scatterlist, align 4
  %6 = icmp eq i32 %3, 0
  %7 = select i1 %6, i32 2, i32 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !8
  %8 = ptrtoint ptr %1 to i32
  %9 = icmp ugt ptr %1, inttoptr (i32 -1073741825 to ptr)
  %10 = load ptr, ptr @high_memory, align 4
  %11 = icmp ugt ptr %10, %1
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %105

13:                                               ; preds = %4
  %14 = add i32 %8, 1073741824
  %15 = lshr i32 %14, 12
  %16 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %17 = add i32 %16, %15
  %18 = tail call i32 @pfn_valid(i32 noundef %17) #13
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %105, label %20

20:                                               ; preds = %13
  call void @sg_init_one(ptr noundef nonnull %5, ptr noundef nonnull %1, i32 noundef %2) #13
  %21 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 9
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.dma_device, ptr %23, i32 0, i32 15
  %25 = load ptr, ptr %24, align 4
  %26 = call i32 @dma_map_sg_attrs(ptr noundef %25, ptr noundef nonnull %5, i32 noundef 1, i32 noundef %7, i32 noundef 0) #13
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.platform_device, ptr %30, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.44, i32 noundef %2) #14
  br label %105

32:                                               ; preds = %20
  %33 = load ptr, ptr %21, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %100, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %33, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %100, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.dma_device, ptr %36, i32 0, i32 39
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %100, label %42

42:                                               ; preds = %38
  %43 = call ptr %40(ptr noundef nonnull %33, ptr noundef nonnull %5, i32 noundef %26, i32 noundef %7, i32 noundef 3, ptr noundef null) #13
  %44 = icmp eq ptr %43, null
  br i1 %44, label %100, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %43, i32 0, i32 6
  store ptr @omap_nand_dma_callback, ptr %46, align 4
  %47 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 8
  %48 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %43, i32 0, i32 8
  store ptr %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %43, i32 0, i32 4
  %50 = load ptr, ptr %49, align 4
  %51 = call i32 %50(ptr noundef nonnull %43) #13
  store i32 0, ptr %47, align 4
  %52 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 8, i32 1
  call void @__init_swait_queue_head(ptr noundef %52, ptr noundef nonnull @.str.45, ptr noundef nonnull @init_completion.__key) #13
  %53 = load ptr, ptr %21, align 4
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.dma_device, ptr %54, i32 0, i32 50
  %56 = load ptr, ptr %55, align 4
  call void %56(ptr noundef %53) #13
  %57 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 16, i32 5
  %60 = load ptr, ptr %59, align 4
  %61 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #13, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !14
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %100

63:                                               ; preds = %45
  call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !15
  call void @arm_heavy_mb() #13
  %64 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 16, i32 4
  %65 = load ptr, ptr %64, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %2) #13, !srcloc !16
  %66 = shl i32 %58, 24
  %67 = and i32 %3, 1
  %68 = or i32 %66, %67
  %69 = or i32 %68, 16516
  call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !17
  call void @arm_heavy_mb() #13
  %70 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 16, i32 3
  %71 = load ptr, ptr %70, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %69) #13, !srcloc !16
  call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !18
  call void @arm_heavy_mb() #13
  %72 = load ptr, ptr %59, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 1) #13, !srcloc !16
  call void @wait_for_completion(ptr noundef %47) #13
  %73 = load i32, ptr @loops_per_jiffy, align 4
  %74 = mul i32 %73, 500
  %75 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 16, i32 6
  br label %76

76:                                               ; preds = %76, %63
  %77 = phi i32 [ 0, %63 ], [ %82, %76 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !46
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !47
  %78 = load ptr, ptr %75, align 8
  %79 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #13, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !48
  %80 = and i32 %79, 16383
  %81 = icmp ne i32 %80, 0
  %82 = add nuw i32 %77, 1
  %83 = icmp ult i32 %77, %74
  %84 = select i1 %81, i1 %83, i1 false
  br i1 %84, label %76, label %85

85:                                               ; preds = %76
  %86 = load i32, ptr %57, align 4
  %87 = load ptr, ptr %70, align 4
  %88 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #13, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !20
  %89 = lshr i32 %88, 24
  %90 = and i32 %89, 7
  %91 = icmp eq i32 %90, %86
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !21
  call void @arm_heavy_mb() #13
  %93 = load ptr, ptr %59, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 0) #13, !srcloc !16
  call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !22
  call void @arm_heavy_mb() #13
  %94 = load ptr, ptr %70, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 0) #13, !srcloc !16
  br label %95

95:                                               ; preds = %92, %85
  %96 = load ptr, ptr %21, align 4
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.dma_device, ptr %97, i32 0, i32 15
  %99 = load ptr, ptr %98, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %99, ptr noundef nonnull %5, i32 noundef 1, i32 noundef %7, i32 noundef 0) #13
  br label %135

100:                                              ; preds = %45, %42, %38, %35, %32
  %101 = load ptr, ptr %21, align 4
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.dma_device, ptr %102, i32 0, i32 15
  %104 = load ptr, ptr %103, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %104, ptr noundef nonnull %5, i32 noundef 1, i32 noundef %7, i32 noundef 0) #13
  br label %105

105:                                              ; preds = %100, %28, %13, %4
  %106 = or i32 %8, %2
  %107 = and i32 %106, 1
  %108 = icmp eq i32 %107, 0
  br i1 %6, label %109, label %122

109:                                              ; preds = %105
  br i1 %108, label %113, label %110

110:                                              ; preds = %109
  %111 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 15
  %112 = load ptr, ptr %111, align 4
  call void @__raw_readsb(ptr noundef %112, ptr noundef %1, i32 noundef %2) #13
  br label %135

113:                                              ; preds = %109
  %114 = and i32 %106, 3
  %115 = icmp eq i32 %114, 0
  %116 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 15
  %117 = load ptr, ptr %116, align 4
  br i1 %115, label %120, label %118

118:                                              ; preds = %113
  %119 = lshr i32 %2, 1
  call void @__raw_readsw(ptr noundef %117, ptr noundef %1, i32 noundef %119) #13
  br label %135

120:                                              ; preds = %113
  %121 = lshr i32 %2, 2
  call void @__raw_readsl(ptr noundef %117, ptr noundef %1, i32 noundef %121) #13
  br label %135

122:                                              ; preds = %105
  br i1 %108, label %126, label %123

123:                                              ; preds = %122
  %124 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 15
  %125 = load ptr, ptr %124, align 4
  call void @__raw_writesb(ptr noundef %125, ptr noundef %1, i32 noundef %2) #13
  br label %135

126:                                              ; preds = %122
  %127 = and i32 %106, 3
  %128 = icmp eq i32 %127, 0
  %129 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 15
  %130 = load ptr, ptr %129, align 4
  br i1 %128, label %133, label %131

131:                                              ; preds = %126
  %132 = lshr i32 %2, 1
  call void @__raw_writesw(ptr noundef %130, ptr noundef %1, i32 noundef %132) #13
  br label %135

133:                                              ; preds = %126
  %134 = lshr i32 %2, 2
  call void @__raw_writesl(ptr noundef %130, ptr noundef %1, i32 noundef %134) #13
  br label %135

135:                                              ; preds = %133, %131, %123, %120, %118, %110, %95
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_nand_dma_callback(ptr noundef %0) #2 {
  tail call void @complete(ptr noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @omap_ooblayout_ecc(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #10 {
  %4 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 1, i32 2
  br label %13

13:                                               ; preds = %7, %3
  %14 = phi i32 [ 2, %3 ], [ %12, %7 ]
  %15 = icmp eq i32 %1, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  store i32 %14, ptr %2, align 4
  %17 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 6
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr inbounds %struct.mtd_oob_region, ptr %2, i32 0, i32 1
  store i32 %18, ptr %19, align 4
  br label %20

20:                                               ; preds = %16, %13
  %21 = phi i32 [ 0, %16 ], [ -34, %13 ]
  ret i32 %21
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @omap_ooblayout_free(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #10 {
  %4 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 1, i32 2
  br label %13

13:                                               ; preds = %7, %3
  %14 = phi i32 [ 2, %3 ], [ %12, %7 ]
  %15 = icmp eq i32 %1, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 6
  %18 = load i32, ptr %17, align 8
  %19 = add i32 %18, %14
  %20 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = icmp ult i32 %19, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  store i32 %19, ptr %2, align 4
  %24 = load i32, ptr %20, align 4
  %25 = sub i32 %24, %19
  %26 = getelementptr inbounds %struct.mtd_oob_region, ptr %2, i32 0, i32 1
  store i32 %25, ptr %26, align 4
  br label %27

27:                                               ; preds = %23, %16, %13
  %28 = phi i32 [ 0, %23 ], [ -34, %13 ], [ -34, %16 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_omap_calculate_ecc_bch(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.omap_nand_info, ptr %0, i32 0, i32 5
  %7 = load i32, ptr %6, align 8
  switch i32 %7, label %202 [
    i32 4, label %8
    i32 5, label %8
    i32 2, label %55
    i32 3, label %55
    i32 6, label %82
  ]

8:                                                ; preds = %3, %3
  %9 = getelementptr %struct.omap_nand_info, ptr %0, i32 0, i32 16, i32 11, i32 %2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !49
  %12 = getelementptr %struct.omap_nand_info, ptr %0, i32 0, i32 16, i32 12, i32 %2
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !50
  %15 = getelementptr %struct.omap_nand_info, ptr %0, i32 0, i32 16, i32 13, i32 %2
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !51
  %18 = getelementptr %struct.omap_nand_info, ptr %0, i32 0, i32 16, i32 14, i32 %2
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !52
  %21 = trunc i32 %20 to i8
  %22 = getelementptr i8, ptr %1, i32 1
  store i8 %21, ptr %1, align 1
  %23 = lshr i32 %17, 24
  %24 = trunc i32 %23 to i8
  %25 = getelementptr i8, ptr %1, i32 2
  store i8 %24, ptr %22, align 1
  %26 = lshr i32 %17, 16
  %27 = trunc i32 %26 to i8
  %28 = getelementptr i8, ptr %1, i32 3
  store i8 %27, ptr %25, align 1
  %29 = lshr i32 %17, 8
  %30 = trunc i32 %29 to i8
  %31 = getelementptr i8, ptr %1, i32 4
  store i8 %30, ptr %28, align 1
  %32 = trunc i32 %17 to i8
  %33 = getelementptr i8, ptr %1, i32 5
  store i8 %32, ptr %31, align 1
  %34 = lshr i32 %14, 24
  %35 = trunc i32 %34 to i8
  %36 = getelementptr i8, ptr %1, i32 6
  store i8 %35, ptr %33, align 1
  %37 = lshr i32 %14, 16
  %38 = trunc i32 %37 to i8
  %39 = getelementptr i8, ptr %1, i32 7
  store i8 %38, ptr %36, align 1
  %40 = lshr i32 %14, 8
  %41 = trunc i32 %40 to i8
  %42 = getelementptr i8, ptr %1, i32 8
  store i8 %41, ptr %39, align 1
  %43 = trunc i32 %14 to i8
  %44 = getelementptr i8, ptr %1, i32 9
  store i8 %43, ptr %42, align 1
  %45 = lshr i32 %11, 24
  %46 = trunc i32 %45 to i8
  %47 = getelementptr i8, ptr %1, i32 10
  store i8 %46, ptr %44, align 1
  %48 = lshr i32 %11, 16
  %49 = trunc i32 %48 to i8
  %50 = getelementptr i8, ptr %1, i32 11
  store i8 %49, ptr %47, align 1
  %51 = lshr i32 %11, 8
  %52 = trunc i32 %51 to i8
  %53 = getelementptr i8, ptr %1, i32 12
  store i8 %52, ptr %50, align 1
  %54 = trunc i32 %11 to i8
  store i8 %54, ptr %53, align 1
  br label %174

55:                                               ; preds = %3, %3
  %56 = getelementptr %struct.omap_nand_info, ptr %0, i32 0, i32 16, i32 11, i32 %2
  %57 = load ptr, ptr %56, align 4
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !53
  %59 = getelementptr %struct.omap_nand_info, ptr %0, i32 0, i32 16, i32 12, i32 %2
  %60 = load ptr, ptr %59, align 4
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !54
  %62 = lshr i32 %61, 12
  %63 = trunc i32 %62 to i8
  %64 = getelementptr i8, ptr %1, i32 1
  store i8 %63, ptr %1, align 1
  %65 = lshr i32 %61, 4
  %66 = trunc i32 %65 to i8
  %67 = getelementptr i8, ptr %1, i32 2
  store i8 %66, ptr %64, align 1
  %68 = tail call i32 @llvm.fshl.i32(i32 %61, i32 %58, i32 4)
  %69 = trunc i32 %68 to i8
  %70 = getelementptr i8, ptr %1, i32 3
  store i8 %69, ptr %67, align 1
  %71 = lshr i32 %58, 20
  %72 = trunc i32 %71 to i8
  %73 = getelementptr i8, ptr %1, i32 4
  store i8 %72, ptr %70, align 1
  %74 = lshr i32 %58, 12
  %75 = trunc i32 %74 to i8
  %76 = getelementptr i8, ptr %1, i32 5
  store i8 %75, ptr %73, align 1
  %77 = lshr i32 %58, 4
  %78 = trunc i32 %77 to i8
  %79 = getelementptr i8, ptr %1, i32 6
  store i8 %78, ptr %76, align 1
  %80 = trunc i32 %58 to i8
  %81 = shl i8 %80, 4
  store i8 %81, ptr %79, align 1
  br label %174

82:                                               ; preds = %3
  %83 = getelementptr %struct.omap_nand_info, ptr %0, i32 0, i32 16, i32 17, i32 %2
  %84 = load ptr, ptr %83, align 4
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !55
  %86 = lshr i32 %85, 8
  %87 = trunc i32 %86 to i8
  store i8 %87, ptr %1, align 1
  %88 = trunc i32 %85 to i8
  %89 = getelementptr i8, ptr %1, i32 1
  store i8 %88, ptr %89, align 1
  %90 = getelementptr %struct.omap_nand_info, ptr %0, i32 0, i32 16, i32 16, i32 %2
  %91 = load ptr, ptr %90, align 4
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !56
  %93 = lshr i32 %92, 24
  %94 = trunc i32 %93 to i8
  %95 = getelementptr i8, ptr %1, i32 2
  store i8 %94, ptr %95, align 1
  %96 = lshr i32 %92, 16
  %97 = trunc i32 %96 to i8
  %98 = getelementptr i8, ptr %1, i32 3
  store i8 %97, ptr %98, align 1
  %99 = lshr i32 %92, 8
  %100 = trunc i32 %99 to i8
  %101 = getelementptr i8, ptr %1, i32 4
  store i8 %100, ptr %101, align 1
  %102 = trunc i32 %92 to i8
  %103 = getelementptr i8, ptr %1, i32 5
  store i8 %102, ptr %103, align 1
  %104 = getelementptr %struct.omap_nand_info, ptr %0, i32 0, i32 16, i32 15, i32 %2
  %105 = load ptr, ptr %104, align 4
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %105) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !57
  %107 = lshr i32 %106, 24
  %108 = trunc i32 %107 to i8
  %109 = getelementptr i8, ptr %1, i32 6
  store i8 %108, ptr %109, align 1
  %110 = lshr i32 %106, 16
  %111 = trunc i32 %110 to i8
  %112 = getelementptr i8, ptr %1, i32 7
  store i8 %111, ptr %112, align 1
  %113 = lshr i32 %106, 8
  %114 = trunc i32 %113 to i8
  %115 = getelementptr i8, ptr %1, i32 8
  store i8 %114, ptr %115, align 1
  %116 = trunc i32 %106 to i8
  %117 = getelementptr i8, ptr %1, i32 9
  store i8 %116, ptr %117, align 1
  %118 = getelementptr %struct.omap_nand_info, ptr %0, i32 0, i32 16, i32 14, i32 %2
  %119 = load ptr, ptr %118, align 4
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %119) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !58
  %121 = lshr i32 %120, 24
  %122 = trunc i32 %121 to i8
  %123 = getelementptr i8, ptr %1, i32 10
  store i8 %122, ptr %123, align 1
  %124 = lshr i32 %120, 16
  %125 = trunc i32 %124 to i8
  %126 = getelementptr i8, ptr %1, i32 11
  store i8 %125, ptr %126, align 1
  %127 = lshr i32 %120, 8
  %128 = trunc i32 %127 to i8
  %129 = getelementptr i8, ptr %1, i32 12
  store i8 %128, ptr %129, align 1
  %130 = trunc i32 %120 to i8
  %131 = getelementptr i8, ptr %1, i32 13
  store i8 %130, ptr %131, align 1
  %132 = getelementptr %struct.omap_nand_info, ptr %0, i32 0, i32 16, i32 13, i32 %2
  %133 = load ptr, ptr %132, align 4
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %133) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !59
  %135 = lshr i32 %134, 24
  %136 = trunc i32 %135 to i8
  %137 = getelementptr i8, ptr %1, i32 14
  store i8 %136, ptr %137, align 1
  %138 = lshr i32 %134, 16
  %139 = trunc i32 %138 to i8
  %140 = getelementptr i8, ptr %1, i32 15
  store i8 %139, ptr %140, align 1
  %141 = lshr i32 %134, 8
  %142 = trunc i32 %141 to i8
  %143 = getelementptr i8, ptr %1, i32 16
  store i8 %142, ptr %143, align 1
  %144 = trunc i32 %134 to i8
  %145 = getelementptr i8, ptr %1, i32 17
  store i8 %144, ptr %145, align 1
  %146 = getelementptr %struct.omap_nand_info, ptr %0, i32 0, i32 16, i32 12, i32 %2
  %147 = load ptr, ptr %146, align 4
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %147) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !60
  %149 = lshr i32 %148, 24
  %150 = trunc i32 %149 to i8
  %151 = getelementptr i8, ptr %1, i32 18
  store i8 %150, ptr %151, align 1
  %152 = lshr i32 %148, 16
  %153 = trunc i32 %152 to i8
  %154 = getelementptr i8, ptr %1, i32 19
  store i8 %153, ptr %154, align 1
  %155 = lshr i32 %148, 8
  %156 = trunc i32 %155 to i8
  %157 = getelementptr i8, ptr %1, i32 20
  store i8 %156, ptr %157, align 1
  %158 = trunc i32 %148 to i8
  %159 = getelementptr i8, ptr %1, i32 21
  store i8 %158, ptr %159, align 1
  %160 = getelementptr %struct.omap_nand_info, ptr %0, i32 0, i32 16, i32 11, i32 %2
  %161 = load ptr, ptr %160, align 4
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %161) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !61
  %163 = lshr i32 %162, 24
  %164 = trunc i32 %163 to i8
  %165 = getelementptr i8, ptr %1, i32 22
  store i8 %164, ptr %165, align 1
  %166 = lshr i32 %162, 16
  %167 = trunc i32 %166 to i8
  %168 = getelementptr i8, ptr %1, i32 23
  store i8 %167, ptr %168, align 1
  %169 = lshr i32 %162, 8
  %170 = trunc i32 %169 to i8
  %171 = getelementptr i8, ptr %1, i32 24
  store i8 %170, ptr %171, align 1
  %172 = trunc i32 %162 to i8
  %173 = getelementptr i8, ptr %1, i32 25
  store i8 %172, ptr %173, align 1
  br label %174

174:                                              ; preds = %82, %55, %8
  %175 = load i32, ptr %6, align 8
  switch i32 %175, label %202 [
    i32 2, label %178
    i32 3, label %198
    i32 4, label %176
    i32 5, label %198
    i32 6, label %201
  ]

176:                                              ; preds = %174
  %177 = icmp sgt i32 %5, 0
  br i1 %177, label %189, label %201

178:                                              ; preds = %174
  %179 = icmp sgt i32 %5, 0
  br i1 %179, label %180, label %201

180:                                              ; preds = %180, %178
  %181 = phi i32 [ %187, %180 ], [ 0, %178 ]
  %182 = getelementptr [7 x i8], ptr @bch4_polynomial, i32 0, i32 %181
  %183 = load i8, ptr %182, align 1
  %184 = getelementptr i8, ptr %1, i32 %181
  %185 = load i8, ptr %184, align 1
  %186 = xor i8 %185, %183
  store i8 %186, ptr %184, align 1
  %187 = add nuw nsw i32 %181, 1
  %188 = icmp eq i32 %187, %5
  br i1 %188, label %201, label %180

189:                                              ; preds = %189, %176
  %190 = phi i32 [ %196, %189 ], [ 0, %176 ]
  %191 = getelementptr [13 x i8], ptr @bch8_polynomial, i32 0, i32 %190
  %192 = load i8, ptr %191, align 1
  %193 = getelementptr i8, ptr %1, i32 %190
  %194 = load i8, ptr %193, align 1
  %195 = xor i8 %194, %192
  store i8 %195, ptr %193, align 1
  %196 = add nuw nsw i32 %190, 1
  %197 = icmp eq i32 %196, %5
  br i1 %197, label %201, label %189

198:                                              ; preds = %174, %174
  %199 = add i32 %5, -1
  %200 = getelementptr i8, ptr %1, i32 %199
  store i8 0, ptr %200, align 1
  br label %201

201:                                              ; preds = %198, %189, %180, %178, %176, %174
  br label %202

202:                                              ; preds = %201, %174, %3
  %203 = phi i32 [ 0, %201 ], [ -22, %3 ], [ -22, %174 ]
  ret i32 %203
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @omap_sw_ooblayout_ecc(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #10 {
  %4 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 3, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, %1
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 3, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = udiv i32 %9, %5
  %11 = add i32 %10, 1
  %12 = mul i32 %11, %1
  %13 = add i32 %12, 2
  store i32 %13, ptr %2, align 4
  %14 = getelementptr inbounds %struct.mtd_oob_region, ptr %2, i32 0, i32 1
  store i32 %10, ptr %14, align 4
  br label %15

15:                                               ; preds = %7, %3
  %16 = phi i32 [ 0, %7 ], [ -34, %3 ]
  ret i32 %16
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @omap_sw_ooblayout_free(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #10 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %21

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 3, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 3, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = udiv i32 %7, %9
  %11 = add i32 %10, 1
  %12 = mul i32 %11, %9
  %13 = add i32 %12, 2
  %14 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = icmp ult i32 %13, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  store i32 %13, ptr %2, align 4
  %18 = load i32, ptr %14, align 4
  %19 = sub i32 %18, %13
  %20 = getelementptr inbounds %struct.mtd_oob_region, ptr %2, i32 0, i32 1
  store i32 %19, ptr %20, align 4
  br label %21

21:                                               ; preds = %17, %5, %3
  %22 = phi i32 [ 0, %17 ], [ -34, %3 ], [ -34, %5 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @elm_decode_bch_error_page(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_page_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_change_read_column_op(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_ooblayout_get_eccbytes(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_prog_page_begin_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_ooblayout_set_eccbytes(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_prog_page_end_op(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_gpio_waitrdy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_soft_waitrdy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_scan_with_ids(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #12

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }

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
!9 = !{i8 0, i8 2}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2152619577}
!12 = !{i64 5079157}
!13 = !{i64 5079772}
!14 = !{i64 2153420932}
!15 = !{i64 2153421140}
!16 = !{i64 5079354}
!17 = !{i64 2153421531}
!18 = !{i64 2153421873}
!19 = !{i64 2153423464}
!20 = !{i64 2153422392}
!21 = !{i64 2153422601}
!22 = !{i64 2153422943}
!23 = !{i64 2153423691}
!24 = !{i64 2153424124}
!25 = !{i64 2152619974}
!26 = !{i64 5078734}
!27 = !{i64 2153424414}
!28 = !{i64 2153424256}
!29 = !{i64 2153424790}
!30 = !{i64 2153427377}
!31 = !{i64 2153427819}
!32 = !{i64 2153428088}
!33 = !{i64 2153427930}
!34 = !{i64 2153432700}
!35 = !{i64 2153433070}
!36 = !{i64 2153433356}
!37 = !{i64 2153433699}
!38 = !{i64 2153434057}
!39 = !{i64 2153434415}
!40 = !{i64 2153435365}
!41 = !{i64 2153435799}
!42 = !{i64 2153436141}
!43 = !{i64 2153436558}
!44 = !{i64 2153436907}
!45 = !{i64 2153442274}
!46 = !{i64 2153426471}
!47 = !{i64 2153426313}
!48 = !{i64 2153426847}
!49 = !{i64 2153437434}
!50 = !{i64 2153437807}
!51 = !{i64 2153438180}
!52 = !{i64 2153438553}
!53 = !{i64 2153438926}
!54 = !{i64 2153439299}
!55 = !{i64 2153439672}
!56 = !{i64 2153440045}
!57 = !{i64 2153440418}
!58 = !{i64 2153440791}
!59 = !{i64 2153441164}
!60 = !{i64 2153441537}
!61 = !{i64 2153441910}
