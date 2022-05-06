; ModuleID = '/llk/IR/drivers/mtd/nand/raw/stm32_fmc2_nand.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/stm32_fmc2_nand.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.nand_ecc_caps = type { ptr, i32, ptr }
%struct.mtd_ooblayout_ops = type { ptr, ptr }
%struct.nand_ecc_step_info = type { i32, ptr, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.stm32_fmc2_nfc = type { %struct.nand_controller, %struct.stm32_fmc2_nand, ptr, ptr, ptr, [2 x ptr], [2 x ptr], [2 x ptr], i32, [2 x i32], ptr, i8, ptr, ptr, ptr, %struct.sg_table, %struct.sg_table, ptr, i32, %struct.completion, %struct.completion, %struct.completion, i8, i32 }
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.stm32_fmc2_nand = type { %struct.nand_chip, %struct.stm32_fmc2_timings, i32, [2 x i32] }
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
%struct.stm32_fmc2_timings = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.nand_operation = type { i32, ptr, i32 }
%struct.nand_op_instr = type { i32, %union.anon.69, i32 }
%union.anon.69 = type { %struct.nand_op_data_instr }
%struct.nand_op_data_instr = type { i32, %union.anon.70, i8 }
%union.anon.70 = type { ptr }
%struct.nand_op_addr_instr = type { i32, ptr }
%struct.nand_interface_config = type { i32, %struct.nand_timings }
%struct.nand_timings = type { i32, %union.anon.71 }
%union.anon.71 = type { %struct.nand_sdr_timings }
%struct.nand_sdr_timings = type { i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.page = type { i32, %union.anon.1, %union.anon.61, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.61 = type { %struct.atomic_t }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.mtd_oob_region = type { i32, i32 }

@__initcall__kmod_stm32_fmc2_nand__496_2074_stm32_fmc2_nfc_driver_init6 = internal global ptr @stm32_fmc2_nfc_driver_init, section ".initcall6.init", align 4
@stm32_fmc2_nfc_driver = internal global %struct.platform_driver { ptr @stm32_fmc2_nfc_probe, ptr @stm32_fmc2_nfc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_fmc2_nfc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_fmc2_nfc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_stm32_fmc2_nfc_driver_exit = internal global ptr @stm32_fmc2_nfc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias497 = internal constant [46 x i8] c"stm32_fmc2_nand.alias=platform:stm32_fmc2_nfc\00", section ".modinfo", align 1
@__UNIQUE_ID_author498 = internal constant [70 x i8] c"stm32_fmc2_nand.author=Christophe Kerello <christophe.kerello@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description499 = internal constant [69 x i8] c"stm32_fmc2_nand.description=STMicroelectronics STM32 FMC2 NFC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file500 = internal constant [58 x i8] c"stm32_fmc2_nand.file=drivers/mtd/nand/raw/stm32_fmc2_nand\00", section ".modinfo", align 1
@__UNIQUE_ID_license501 = internal constant [31 x i8] c"stm32_fmc2_nand.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [15 x i8] c"stm32_fmc2_nfc\00", align 1
@stm32_fmc2_nfc_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32mp15-fmc2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32mp1-fmc2-nfc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@stm32_fmc2_nfc_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @stm32_fmc2_nfc_suspend, ptr @stm32_fmc2_nfc_resume, ptr @stm32_fmc2_nfc_suspend, ptr @stm32_fmc2_nfc_resume, ptr @stm32_fmc2_nfc_suspend, ptr @stm32_fmc2_nfc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@stm32_fmc2_nfc_controller_ops = internal constant %struct.nand_controller_ops { ptr @stm32_fmc2_nfc_attach_chip, ptr null, ptr @stm32_fmc2_nfc_exec_op, ptr @stm32_fmc2_nfc_setup_interface }, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to request irq\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"can not enable the clock\0A\00", align 1
@nand_controller_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"&nfc->lock\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"nand_ecc_engine_type is not well defined in the DT\0A\00", align 1
@stm32_fmc2_nfc_ecc_caps = internal constant %struct.nand_ecc_caps { ptr @stm32_fmc2_nfc_ecc_caps_stepinfo, i32 1, ptr @stm32_fmc2_nfc_calc_ecc_bytes }, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"no valid ECC settings set\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"nand page size is not supported\0A\00", align 1
@stm32_fmc2_nfc_ooblayout_ops = internal constant %struct.mtd_ooblayout_ops { ptr @stm32_fmc2_nfc_ooblayout_ecc, ptr @stm32_fmc2_nfc_ooblayout_free }, align 4
@stm32_fmc2_nfc_ecc_caps_stepinfo = internal constant %struct.nand_ecc_step_info { i32 512, ptr @stm32_fmc2_nfc_ecc_caps_strengths, i32 3 }, align 4
@stm32_fmc2_nfc_ecc_caps_strengths = internal constant [3 x i32] [i32 1, i32 4, i32 8], align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"tx DMA engine slave config failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"rx DMA engine slave config failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"ECC DMA engine slave config failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"seq timeout\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"data DMA timeout\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"ECC DMA timeout\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.13 = private unnamed_addr constant [13 x i8] c"ham timeout\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"bch timeout\0A\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"Waitrdy timeout\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.16 = private unnamed_addr constant [21 x i8] c"st,stm32mp1-fmc2-ebi\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"st,stm32mp1-fmc2-nfc\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"NAND chip not defined\0A\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"too many NAND chips defined\0A\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"invalid reg property size\0A\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"could not retrieve reg property: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"invalid reg value: %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"cs already assigned: %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.28 = private unnamed_addr constant [38 x i8] c"failed to request tx DMA channel: %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.30 = private unnamed_addr constant [38 x i8] c"failed to request rx DMA channel: %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"ecc\00", align 1
@.str.32 = private unnamed_addr constant [39 x i8] c"failed to request ecc DMA channel: %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [50 x i8] c"DMAs not defined in the DT, polling mode is used\0A\00", align 1
@.str.34 = private unnamed_addr constant [39 x i8] c"drivers/mtd/nand/raw/stm32_fmc2_nand.c\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias497, ptr @__UNIQUE_ID_author498, ptr @__UNIQUE_ID_description499, ptr @__UNIQUE_ID_file500, ptr @__UNIQUE_ID_license501, ptr @__exitcall_stm32_fmc2_nfc_driver_exit, ptr @__initcall__kmod_stm32_fmc2_nand__496_2074_stm32_fmc2_nfc_driver_init6, ptr @stm32_fmc2_nfc_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_nfc_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_fmc2_nfc_driver, ptr noundef null) #11
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @stm32_fmc2_nfc_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_fmc2_nfc_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_nfc_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.resource, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !8
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 1632, i32 noundef 3520) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %273, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %5, i32 0, i32 2
  store ptr %4, ptr %8, align 8
  tail call void @__mutex_init(ptr noundef nonnull %5, ptr noundef nonnull @.str.3, ptr noundef nonnull @nand_controller_init.__key) #11
  %9 = getelementptr inbounds %struct.nand_controller, ptr %5, i32 0, i32 1
  store ptr @stm32_fmc2_nfc_controller_ops, ptr %9, align 4
  %10 = load ptr, ptr %8, align 8
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 25
  %16 = load ptr, ptr %15, align 8
  %17 = tail call i32 @of_device_is_compatible(ptr noundef %16, ptr noundef nonnull @.str.16) #11
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 25
  %20 = load ptr, ptr %19, align 8
  %21 = tail call i32 @of_device_is_compatible(ptr noundef %20, ptr noundef nonnull @.str.17) #11
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %31, label %28

23:                                               ; preds = %7
  %24 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 25
  %25 = load ptr, ptr %24, align 8
  %26 = tail call i32 @of_device_is_compatible(ptr noundef %25, ptr noundef nonnull @.str.17) #11
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %273

28:                                               ; preds = %14
  br i1 %18, label %273, label %29

29:                                               ; preds = %28
  %30 = load ptr, ptr %11, align 4
  br label %32

31:                                               ; preds = %14
  br i1 %18, label %32, label %273

32:                                               ; preds = %31, %29, %23
  %33 = phi ptr [ %30, %29 ], [ %10, %23 ], [ %10, %31 ]
  %34 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %5, i32 0, i32 3
  store ptr %33, ptr %34, align 4
  %35 = load ptr, ptr %8, align 8
  %36 = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 25
  %37 = load ptr, ptr %36, align 8
  %38 = tail call ptr @of_get_next_child(ptr noundef %37, ptr noundef null) #11
  %39 = icmp eq ptr %38, null
  br i1 %39, label %48, label %40

40:                                               ; preds = %40, %32
  %41 = phi i32 [ %43, %40 ], [ 0, %32 ]
  %42 = phi ptr [ %44, %40 ], [ %38, %32 ]
  %43 = add i32 %41, 1
  %44 = tail call ptr @of_get_next_child(ptr noundef %37, ptr noundef nonnull %42) #11
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %40

46:                                               ; preds = %40
  %47 = icmp eq i32 %43, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %46, %32
  %49 = load ptr, ptr %8, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.18) #12
  br label %273

50:                                               ; preds = %46
  %51 = icmp sgt i32 %43, 1
  br i1 %51, label %52, label %54

52:                                               ; preds = %50
  %53 = load ptr, ptr %8, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.19) #12
  br label %273

54:                                               ; preds = %50
  %55 = tail call ptr @of_get_next_child(ptr noundef %37, ptr noundef null) #11
  %56 = icmp eq ptr %55, null
  br i1 %56, label %118, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %5, i32 0, i32 1, i32 2
  %59 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %5, i32 0, i32 22
  %60 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %5, i32 0, i32 1, i32 0, i32 0, i32 0, i32 56, i32 25
  %61 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %5, i32 0, i32 1, i32 0, i32 0, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !8
  %62 = call ptr @of_get_property(ptr noundef nonnull %55, ptr noundef nonnull @.str.20, ptr noundef %58) #11
  %63 = icmp eq ptr %62, null
  br i1 %63, label %100, label %64

64:                                               ; preds = %111, %57
  %65 = phi ptr [ %112, %111 ], [ %55, %57 ]
  %66 = load i32, ptr %58, align 8
  %67 = lshr i32 %66, 2
  store i32 %67, ptr %58, align 8
  %68 = icmp ult i32 %66, 4
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load ptr, ptr %8, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.21) #12
  br label %100

71:                                               ; preds = %88, %64
  %72 = phi i32 [ %92, %88 ], [ 0, %64 ]
  %73 = call i32 @of_property_read_u32_index(ptr noundef nonnull %65, ptr noundef nonnull @.str.20, i32 noundef %72, ptr noundef nonnull %2) #11
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %102

75:                                               ; preds = %71
  %76 = load i32, ptr %2, align 4
  %77 = icmp ugt i32 %76, 1
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load ptr, ptr %8, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.23, i32 noundef %76) #12
  br label %100

80:                                               ; preds = %75
  %81 = load i8, ptr %59, align 4
  %82 = zext i8 %81 to i32
  %83 = shl nuw nsw i32 1, %76
  %84 = and i32 %83, %82
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %80
  %87 = load ptr, ptr %8, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.24, i32 noundef %76) #12
  br label %100

88:                                               ; preds = %80
  %89 = trunc i32 %83 to i8
  %90 = or i8 %81, %89
  store i8 %90, ptr %59, align 4
  %91 = getelementptr %struct.stm32_fmc2_nfc, ptr %5, i32 0, i32 1, i32 3, i32 %72
  store i32 %76, ptr %91, align 4
  %92 = add nuw nsw i32 %72, 1
  %93 = load i32, ptr %58, align 8
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %71, label %95

95:                                               ; preds = %88
  store ptr %65, ptr %60, align 8
  %96 = load ptr, ptr %61, align 8
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %115

98:                                               ; preds = %95
  %99 = call i32 @of_property_read_string(ptr noundef nonnull %65, ptr noundef nonnull @.str.25, ptr noundef %61) #11
  br label %115

100:                                              ; preds = %111, %86, %78, %69, %57
  %101 = phi ptr [ %65, %86 ], [ %65, %78 ], [ %65, %69 ], [ %55, %57 ], [ %112, %111 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  br label %105

102:                                              ; preds = %71
  %103 = load ptr, ptr %8, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.22, i32 noundef %73) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  %104 = icmp slt i32 %73, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102, %100
  %106 = phi ptr [ %101, %100 ], [ %65, %102 ]
  %107 = phi i32 [ -22, %100 ], [ %73, %102 ]
  call void @of_node_put(ptr noundef nonnull %106) #11
  br label %273

108:                                              ; preds = %102
  %109 = call ptr @of_get_next_child(ptr noundef %37, ptr noundef nonnull %65) #11
  %110 = icmp eq ptr %109, null
  br i1 %110, label %273, label %111

111:                                              ; preds = %115, %108
  %112 = phi ptr [ %109, %108 ], [ %116, %115 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !8
  %113 = call ptr @of_get_property(ptr noundef nonnull %112, ptr noundef nonnull @.str.20, ptr noundef %58) #11
  %114 = icmp eq ptr %113, null
  br i1 %114, label %100, label %64

115:                                              ; preds = %98, %95
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  %116 = call ptr @of_get_next_child(ptr noundef %37, ptr noundef nonnull %65) #11
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %111

118:                                              ; preds = %115, %54
  %119 = load ptr, ptr %34, align 4
  %120 = getelementptr inbounds %struct.device, ptr %119, i32 0, i32 25
  %121 = load ptr, ptr %120, align 8
  %122 = call i32 @of_address_to_resource(ptr noundef %121, i32 noundef 0, ptr noundef nonnull %3) #11
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %273

124:                                              ; preds = %118
  %125 = load i32, ptr %3, align 4
  %126 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %5, i32 0, i32 8
  store i32 %125, ptr %126, align 4
  %127 = load ptr, ptr %34, align 4
  %128 = getelementptr inbounds %struct.device, ptr %127, i32 0, i32 25
  %129 = load ptr, ptr %128, align 8
  %130 = call ptr @device_node_to_regmap(ptr noundef %129) #11
  %131 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %5, i32 0, i32 4
  store ptr %130, ptr %131, align 8
  %132 = icmp ugt ptr %130, inttoptr (i32 -4096 to ptr)
  br i1 %132, label %133, label %135

133:                                              ; preds = %124
  %134 = ptrtoint ptr %130 to i32
  br label %273

135:                                              ; preds = %124
  %136 = load ptr, ptr %8, align 8
  %137 = load ptr, ptr %34, align 4
  %138 = icmp eq ptr %136, %137
  %139 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %5, i32 0, i32 22
  %140 = load i8, ptr %139, align 4
  %141 = zext i8 %140 to i32
  %142 = and i32 %141, 1
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %174, label %144

144:                                              ; preds = %135
  %145 = zext i1 %138 to i32
  %146 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef %145) #11
  %147 = call ptr @devm_ioremap_resource(ptr noundef %4, ptr noundef %146) #11
  %148 = getelementptr %struct.stm32_fmc2_nfc, ptr %5, i32 0, i32 5, i32 0
  store ptr %147, ptr %148, align 4
  %149 = icmp ugt ptr %147, inttoptr (i32 -4096 to ptr)
  br i1 %149, label %150, label %153

150:                                              ; preds = %179, %144
  %151 = phi ptr [ %147, %144 ], [ %181, %179 ]
  %152 = ptrtoint ptr %151 to i32
  br label %273

153:                                              ; preds = %144
  %154 = load i32, ptr %146, align 4
  %155 = getelementptr %struct.stm32_fmc2_nfc, ptr %5, i32 0, i32 9, i32 0
  store i32 %154, ptr %155, align 4
  %156 = select i1 %138, i32 2, i32 1
  %157 = call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef %156) #11
  %158 = getelementptr %struct.stm32_fmc2_nfc, ptr %5, i32 0, i32 6, i32 0
  store ptr %157, ptr %158, align 4
  %159 = icmp ugt ptr %157, inttoptr (i32 -4096 to ptr)
  br i1 %159, label %160, label %163

160:                                              ; preds = %184, %153
  %161 = phi ptr [ %157, %153 ], [ %188, %184 ]
  %162 = ptrtoint ptr %161 to i32
  br label %273

163:                                              ; preds = %153
  %164 = select i1 %138, i32 3, i32 2
  %165 = call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef %164) #11
  %166 = getelementptr %struct.stm32_fmc2_nfc, ptr %5, i32 0, i32 7, i32 0
  store ptr %165, ptr %166, align 4
  %167 = icmp ugt ptr %165, inttoptr (i32 -4096 to ptr)
  br i1 %167, label %171, label %168

168:                                              ; preds = %163
  %169 = load i8, ptr %139, align 4
  %170 = zext i8 %169 to i32
  br label %174

171:                                              ; preds = %191, %163
  %172 = phi ptr [ %165, %163 ], [ %193, %191 ]
  %173 = ptrtoint ptr %172 to i32
  br label %273

174:                                              ; preds = %168, %135
  %175 = phi i32 [ %170, %168 ], [ %141, %135 ]
  %176 = select i1 %138, i32 4, i32 3
  %177 = and i32 %175, 2
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %196, label %179

179:                                              ; preds = %174
  %180 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef %176) #11
  %181 = call ptr @devm_ioremap_resource(ptr noundef %4, ptr noundef %180) #11
  %182 = getelementptr %struct.stm32_fmc2_nfc, ptr %5, i32 0, i32 5, i32 1
  store ptr %181, ptr %182, align 4
  %183 = icmp ugt ptr %181, inttoptr (i32 -4096 to ptr)
  br i1 %183, label %150, label %184

184:                                              ; preds = %179
  %185 = load i32, ptr %180, align 4
  %186 = getelementptr %struct.stm32_fmc2_nfc, ptr %5, i32 0, i32 9, i32 1
  store i32 %185, ptr %186, align 4
  %187 = add nuw nsw i32 %176, 1
  %188 = call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef %187) #11
  %189 = getelementptr %struct.stm32_fmc2_nfc, ptr %5, i32 0, i32 6, i32 1
  store ptr %188, ptr %189, align 4
  %190 = icmp ugt ptr %188, inttoptr (i32 -4096 to ptr)
  br i1 %190, label %160, label %191

191:                                              ; preds = %184
  %192 = add nuw nsw i32 %176, 2
  %193 = call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef %192) #11
  %194 = getelementptr %struct.stm32_fmc2_nfc, ptr %5, i32 0, i32 7, i32 1
  store ptr %193, ptr %194, align 4
  %195 = icmp ugt ptr %193, inttoptr (i32 -4096 to ptr)
  br i1 %195, label %171, label %196

196:                                              ; preds = %191, %174
  %197 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #11
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %273, label %199

199:                                              ; preds = %196
  %200 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %201 = load ptr, ptr %200, align 4
  %202 = icmp eq ptr %201, null
  br i1 %202, label %203, label %205

203:                                              ; preds = %199
  %204 = load ptr, ptr %4, align 4
  br label %205

205:                                              ; preds = %203, %199
  %206 = phi ptr [ %204, %203 ], [ %201, %199 ]
  %207 = call i32 @devm_request_threaded_irq(ptr noundef %4, i32 noundef %197, ptr noundef nonnull @stm32_fmc2_nfc_irq, ptr noundef null, i32 noundef 0, ptr noundef %206, ptr noundef %5) #11
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %210, label %209

209:                                              ; preds = %205
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1) #12
  br label %273

210:                                              ; preds = %205
  %211 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %5, i32 0, i32 19
  store i32 0, ptr %211, align 4
  %212 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %5, i32 0, i32 19, i32 1
  call void @__init_swait_queue_head(ptr noundef %212, ptr noundef nonnull @.str.26, ptr noundef nonnull @init_completion.__key) #11
  %213 = load ptr, ptr %34, align 4
  %214 = call ptr @devm_clk_get(ptr noundef %213, ptr noundef null) #11
  %215 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %5, i32 0, i32 10
  store ptr %214, ptr %215, align 8
  %216 = icmp ugt ptr %214, inttoptr (i32 -4096 to ptr)
  br i1 %216, label %217, label %219

217:                                              ; preds = %210
  %218 = ptrtoint ptr %214 to i32
  br label %273

219:                                              ; preds = %210
  %220 = call fastcc i32 @clk_prepare_enable(ptr noundef %214)
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %223, label %222

222:                                              ; preds = %219
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2) #12
  br label %273

223:                                              ; preds = %219
  %224 = call ptr @__devm_reset_control_get(ptr noundef %4, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #11
  %225 = icmp ugt ptr %224, inttoptr (i32 -4096 to ptr)
  br i1 %225, label %226, label %228

226:                                              ; preds = %223
  %227 = icmp eq ptr %224, inttoptr (i32 -517 to ptr)
  br i1 %227, label %270, label %231

228:                                              ; preds = %223
  %229 = call i32 @reset_control_assert(ptr noundef %224) #11
  %230 = call i32 @reset_control_deassert(ptr noundef %224) #11
  br label %231

231:                                              ; preds = %228, %226
  %232 = call fastcc i32 @stm32_fmc2_nfc_dma_setup(ptr noundef nonnull %5)
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %251

234:                                              ; preds = %231
  call fastcc void @stm32_fmc2_nfc_init(ptr noundef nonnull %5)
  %235 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %5, i32 0, i32 1
  %236 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %5, i32 0, i32 1, i32 0, i32 0, i32 0, i32 56, i32 1
  store ptr %4, ptr %236, align 4
  %237 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %5, i32 0, i32 1, i32 0, i32 32
  store ptr %5, ptr %237, align 4
  %238 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %5, i32 0, i32 1, i32 0, i32 6
  %239 = load i32, ptr %238, align 8
  %240 = or i32 %239, 1573376
  store i32 %240, ptr %238, align 8
  %241 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %5, i32 0, i32 1, i32 2
  %242 = load i32, ptr %241, align 8
  %243 = call i32 @nand_scan_with_ids(ptr noundef %235, i32 noundef %242, ptr noundef null) #11
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %251

245:                                              ; preds = %234
  %246 = call i32 @mtd_device_parse_register(ptr noundef %235, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #11
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %245
  %249 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %249, align 8
  br label %273

250:                                              ; preds = %245
  call void @nand_cleanup(ptr noundef %235) #11
  br label %251

251:                                              ; preds = %250, %234, %231
  %252 = phi i32 [ %232, %231 ], [ %243, %234 ], [ %246, %250 ]
  %253 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %5, i32 0, i32 14
  %254 = load ptr, ptr %253, align 8
  %255 = icmp eq ptr %254, null
  br i1 %255, label %257, label %256

256:                                              ; preds = %251
  call void @dma_release_channel(ptr noundef nonnull %254) #11
  br label %257

257:                                              ; preds = %256, %251
  %258 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %5, i32 0, i32 12
  %259 = load ptr, ptr %258, align 8
  %260 = icmp eq ptr %259, null
  br i1 %260, label %262, label %261

261:                                              ; preds = %257
  call void @dma_release_channel(ptr noundef nonnull %259) #11
  br label %262

262:                                              ; preds = %261, %257
  %263 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %5, i32 0, i32 13
  %264 = load ptr, ptr %263, align 4
  %265 = icmp eq ptr %264, null
  br i1 %265, label %267, label %266

266:                                              ; preds = %262
  call void @dma_release_channel(ptr noundef nonnull %264) #11
  br label %267

267:                                              ; preds = %266, %262
  %268 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %5, i32 0, i32 15
  call void @sg_free_table(ptr noundef %268) #11
  %269 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %5, i32 0, i32 16
  call void @sg_free_table(ptr noundef %269) #11
  br label %270

270:                                              ; preds = %267, %226
  %271 = phi i32 [ -517, %226 ], [ %252, %267 ]
  %272 = load ptr, ptr %215, align 8
  call void @clk_disable(ptr noundef %272) #11
  call void @clk_unprepare(ptr noundef %272) #11
  br label %273

273:                                              ; preds = %270, %248, %222, %217, %209, %196, %171, %160, %150, %133, %118, %108, %105, %52, %48, %31, %28, %23, %1
  %274 = phi i32 [ %134, %133 ], [ %152, %150 ], [ %162, %160 ], [ %173, %171 ], [ %207, %209 ], [ %218, %217 ], [ %220, %222 ], [ %271, %270 ], [ 0, %248 ], [ -12, %1 ], [ %122, %118 ], [ %197, %196 ], [ -22, %28 ], [ -22, %31 ], [ -22, %23 ], [ -22, %48 ], [ %107, %105 ], [ -22, %52 ], [ %73, %108 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #11
  ret i32 %274
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_nfc_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %3, i32 0, i32 1
  %5 = tail call i32 @mtd_device_unregister(ptr noundef %4) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7, !prof !9

7:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 2000, i32 noundef 9, ptr noundef null) #11
  br label %8

8:                                                ; preds = %7, %1
  tail call void @nand_cleanup(ptr noundef %4) #11
  %9 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %3, i32 0, i32 14
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @dma_release_channel(ptr noundef nonnull %10) #11
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %3, i32 0, i32 12
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @dma_release_channel(ptr noundef nonnull %15) #11
  br label %18

18:                                               ; preds = %17, %13
  %19 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %3, i32 0, i32 13
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @dma_release_channel(ptr noundef nonnull %20) #11
  br label %23

23:                                               ; preds = %22, %18
  %24 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %3, i32 0, i32 15
  tail call void @sg_free_table(ptr noundef %24) #11
  %25 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %3, i32 0, i32 16
  tail call void @sg_free_table(ptr noundef %25) #11
  %26 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %3, i32 0, i32 10
  %27 = load ptr, ptr %26, align 8
  tail call void @clk_disable(ptr noundef %27) #11
  tail call void @clk_unprepare(ptr noundef %27) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_nfc_irq(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 11
  %4 = load i8, ptr %3, align 4
  switch i8 %4, label %14 [
    i8 2, label %5
    i8 1, label %9
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 4
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 544, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %13

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 4
  %11 = load ptr, ptr %10, align 8
  %12 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 592, i32 noundef 18, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %13

13:                                               ; preds = %9, %5
  store i8 0, ptr %3, align 4
  br label %14

14:                                               ; preds = %13, %2
  %15 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 19
  tail call void @complete(ptr noundef %15) #11
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #6 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #11
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stm32_fmc2_nfc_dma_setup(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @dma_request_chan(ptr noundef %3, ptr noundef nonnull @.str.27) #11
  %5 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %0, i32 0, i32 12
  store ptr %4, ptr %5, align 8
  %6 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = ptrtoint ptr %4 to i32
  switch i32 %8, label %9 [
    i32 -19, label %11
    i32 -517, label %11
  ]

9:                                                ; preds = %7
  %10 = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.28, i32 noundef %8) #12
  br label %11

11:                                               ; preds = %9, %7, %7
  store ptr null, ptr %5, align 8
  br label %50

12:                                               ; preds = %1
  %13 = load ptr, ptr %2, align 8
  %14 = tail call ptr @dma_request_chan(ptr noundef %13, ptr noundef nonnull @.str.29) #11
  %15 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %0, i32 0, i32 13
  store ptr %14, ptr %15, align 4
  %16 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = ptrtoint ptr %14 to i32
  switch i32 %18, label %19 [
    i32 -19, label %21
    i32 -517, label %21
  ]

19:                                               ; preds = %17
  %20 = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.30, i32 noundef %18) #12
  br label %21

21:                                               ; preds = %19, %17, %17
  store ptr null, ptr %15, align 4
  br label %50

22:                                               ; preds = %12
  %23 = load ptr, ptr %2, align 8
  %24 = tail call ptr @dma_request_chan(ptr noundef %23, ptr noundef nonnull @.str.31) #11
  %25 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %0, i32 0, i32 14
  store ptr %24, ptr %25, align 8
  %26 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = ptrtoint ptr %24 to i32
  switch i32 %28, label %29 [
    i32 -19, label %31
    i32 -517, label %31
  ]

29:                                               ; preds = %27
  %30 = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.32, i32 noundef %28) #12
  br label %31

31:                                               ; preds = %29, %27, %27
  store ptr null, ptr %25, align 8
  br label %50

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %0, i32 0, i32 16
  %34 = tail call i32 @sg_alloc_table(ptr noundef %33, i32 noundef 16, i32 noundef 3264) #11
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %32
  %37 = load ptr, ptr %2, align 8
  %38 = tail call noalias ptr @devm_kmalloc(ptr noundef %37, i32 noundef 320, i32 noundef 3520) #11
  %39 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %0, i32 0, i32 17
  store ptr %38, ptr %39, align 4
  %40 = icmp eq ptr %38, null
  br i1 %40, label %55, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %0, i32 0, i32 15
  %43 = tail call i32 @sg_alloc_table(ptr noundef %42, i32 noundef 16, i32 noundef 3264) #11
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %0, i32 0, i32 20
  store i32 0, ptr %46, align 4
  %47 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %0, i32 0, i32 20, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %47, ptr noundef nonnull @.str.26, ptr noundef nonnull @init_completion.__key) #11
  %48 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %0, i32 0, i32 21
  store i32 0, ptr %48, align 4
  %49 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %0, i32 0, i32 21, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %49, ptr noundef nonnull @.str.26, ptr noundef nonnull @init_completion.__key) #11
  br label %55

50:                                               ; preds = %31, %21, %11
  %51 = phi i32 [ %8, %11 ], [ %18, %21 ], [ %28, %31 ]
  %52 = icmp eq i32 %51, -19
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %54, ptr noundef nonnull @.str.33) #12
  br label %55

55:                                               ; preds = %53, %50, %45, %41, %36, %32
  %56 = phi i32 [ 0, %45 ], [ %34, %32 ], [ -12, %36 ], [ %43, %41 ], [ 0, %53 ], [ %51, %50 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stm32_fmc2_nfc_init(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = call i32 @regmap_read(ptr noundef %4, i32 noundef 128, ptr noundef nonnull %2) #11
  %6 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %0, i32 0, i32 23
  store i32 -1, ptr %6, align 8
  %7 = load i32, ptr %2, align 4
  %8 = and i32 %7, -51380087
  %9 = or i32 %8, 523782
  store i32 %9, ptr %2, align 4
  %10 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load ptr, ptr %3, align 8
  %17 = call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 0, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %18 = load i32, ptr %2, align 4
  br label %19

19:                                               ; preds = %15, %1
  %20 = phi i32 [ %18, %15 ], [ %9, %1 ]
  %21 = load ptr, ptr %3, align 8
  %22 = call i32 @regmap_write(ptr noundef %21, i32 noundef 128, i32 noundef %20) #11
  %23 = load ptr, ptr %3, align 8
  %24 = call i32 @regmap_write(ptr noundef %23, i32 noundef 136, i32 noundef 168430090) #11
  %25 = load ptr, ptr %3, align 8
  %26 = call i32 @regmap_write(ptr noundef %25, i32 noundef 140, i32 noundef 168430090) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_nfc_attach_chip(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %3, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.4) #12
  br label %119

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i32 512, ptr %11, align 8
  br label %15

15:                                               ; preds = %14, %10
  %16 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 7
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 8, ptr %16, align 4
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, -2
  %24 = tail call i32 @nand_ecc_choose_conf(ptr noundef %0, ptr noundef nonnull @stm32_fmc2_nfc_ecc_caps, i32 noundef %23) #11
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %3, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.5) #12
  br label %119

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = load i32, ptr %11, align 8
  %33 = udiv i32 %31, %32
  %34 = icmp ugt i32 %33, 16
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %3, i32 0, i32 2
  %37 = load ptr, ptr %36, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.6) #12
  br label %119

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 10
  %40 = load i32, ptr %39, align 8
  %41 = and i32 %40, 131072
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  %44 = or i32 %40, 262144
  store i32 %44, ptr %39, align 8
  br label %45

45:                                               ; preds = %43, %38
  %46 = load ptr, ptr %2, align 4
  %47 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %46, i32 0, i32 12
  %48 = load ptr, ptr %47, align 8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %65, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %46, i32 0, i32 13
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %65, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %46, i32 0, i32 14
  %56 = load ptr, ptr %55, align 8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %65, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 15
  store ptr @stm32_fmc2_nfc_seq_correct, ptr %59, align 4
  %60 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 21
  store ptr @stm32_fmc2_nfc_seq_write_page, ptr %60, align 4
  %61 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 18
  store ptr @stm32_fmc2_nfc_seq_read_page, ptr %61, align 8
  %62 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 17
  store ptr @stm32_fmc2_nfc_seq_write_page_raw, ptr %62, align 4
  %63 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 16
  store ptr @stm32_fmc2_nfc_seq_read_page_raw, ptr %63, align 8
  %64 = load i32, ptr %16, align 4
  br label %78

65:                                               ; preds = %54, %50, %45
  %66 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 13
  store ptr @stm32_fmc2_nfc_hwctl, ptr %66, align 4
  %67 = load i32, ptr %16, align 4
  %68 = icmp eq i32 %67, 1
  %69 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 14
  br i1 %68, label %70, label %75

70:                                               ; preds = %65
  store ptr @stm32_fmc2_nfc_ham_calculate, ptr %69, align 8
  %71 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 15
  store ptr @stm32_fmc2_nfc_ham_correct, ptr %71, align 4
  %72 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 10
  %73 = load i32, ptr %72, align 8
  %74 = or i32 %73, 1
  store i32 %74, ptr %72, align 8
  br label %80

75:                                               ; preds = %65
  store ptr @stm32_fmc2_nfc_bch_calculate, ptr %69, align 8
  %76 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 15
  store ptr @stm32_fmc2_nfc_bch_correct, ptr %76, align 4
  %77 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 18
  store ptr @stm32_fmc2_nfc_read_page, ptr %77, align 8
  br label %78

78:                                               ; preds = %75, %58
  %79 = phi i32 [ %67, %75 ], [ %64, %58 ]
  switch i32 %79, label %98 [
    i32 1, label %80
    i32 8, label %86
  ]

80:                                               ; preds = %78, %70
  %81 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %82 = load i32, ptr %81, align 8
  %83 = and i32 %82, 2
  %84 = icmp eq i32 %83, 0
  %85 = select i1 %84, i32 3, i32 4
  br label %92

86:                                               ; preds = %78
  %87 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %88 = load i32, ptr %87, align 8
  %89 = and i32 %88, 2
  %90 = icmp eq i32 %89, 0
  %91 = select i1 %90, i32 13, i32 14
  br label %92

92:                                               ; preds = %86, %80
  %93 = phi i32 [ %82, %80 ], [ %88, %86 ]
  %94 = phi i1 [ false, %80 ], [ true, %86 ]
  %95 = phi i32 [ %85, %80 ], [ %91, %86 ]
  %96 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  store i32 %95, ptr %96, align 4
  %97 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 15
  store ptr @stm32_fmc2_nfc_ooblayout_ops, ptr %97, align 8
  br label %108

98:                                               ; preds = %78
  %99 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %100 = load i32, ptr %99, align 8
  %101 = and i32 %100, 2
  %102 = icmp eq i32 %101, 0
  %103 = select i1 %102, i32 7, i32 8
  %104 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  store i32 %103, ptr %104, align 4
  %105 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 15
  store ptr @stm32_fmc2_nfc_ooblayout_ops, ptr %105, align 8
  %106 = icmp eq i32 %79, 4
  %107 = select i1 %106, i32 131328, i32 131072
  br label %108

108:                                              ; preds = %98, %92
  %109 = phi i32 [ %93, %92 ], [ %100, %98 ]
  %110 = phi i1 [ %94, %92 ], [ false, %98 ]
  %111 = phi i32 [ 131072, %92 ], [ %107, %98 ]
  %112 = shl i32 %109, 3
  %113 = and i32 %112, 16
  %114 = select i1 %110, i32 16908544, i32 %111
  %115 = or i32 %114, %113
  %116 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %46, i32 0, i32 4
  %117 = load ptr, ptr %116, align 8
  %118 = tail call i32 @regmap_update_bits_base(ptr noundef %117, i32 noundef 128, i32 noundef 17695024, i32 noundef %115, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %119

119:                                              ; preds = %108, %35, %26, %7
  %120 = phi i32 [ -22, %7 ], [ %24, %26 ], [ -22, %35 ], [ 0, %108 ]
  ret i32 %120
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_nfc_exec_op(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %7 = load ptr, ptr %6, align 4
  br i1 %2, label %293, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr %1, align 4
  %10 = tail call fastcc i32 @stm32_fmc2_nfc_select_chip(ptr noundef %0, i32 noundef %9)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %293

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.nand_operation, ptr %1, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %293, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.nand_operation, ptr %1, i32 0, i32 1
  %18 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 7
  %19 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %20 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %7, i32 0, i32 23
  br label %21

21:                                               ; preds = %288, %16
  %22 = phi i32 [ 0, %16 ], [ %289, %288 ]
  %23 = phi i32 [ 0, %16 ], [ %290, %288 ]
  %24 = load ptr, ptr %17, align 4
  %25 = getelementptr %struct.nand_op_instr, ptr %24, i32 %23
  %26 = load i32, ptr %25, align 4
  switch i32 %26, label %288 [
    i32 0, label %33
    i32 1, label %27
    i32 2, label %50
    i32 3, label %131
    i32 4, label %212
  ]

27:                                               ; preds = %21
  %28 = getelementptr %struct.nand_op_instr, ptr %24, i32 %23, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %288, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.nand_op_addr_instr, ptr %28, i32 0, i32 1
  br label %39

33:                                               ; preds = %21
  %34 = getelementptr %struct.nand_op_instr, ptr %24, i32 %23, i32 1
  %35 = load i8, ptr %34, align 4
  %36 = load i32, ptr %20, align 8
  %37 = getelementptr %struct.stm32_fmc2_nfc, ptr %7, i32 0, i32 6, i32 %36
  %38 = load ptr, ptr %37, align 4
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %38, i8 %35) #11, !srcloc !10
  br label %288

39:                                               ; preds = %39, %31
  %40 = phi i32 [ 0, %31 ], [ %47, %39 ]
  %41 = load ptr, ptr %32, align 4
  %42 = getelementptr i8, ptr %41, i32 %40
  %43 = load i8, ptr %42, align 1
  %44 = load i32, ptr %20, align 8
  %45 = getelementptr %struct.stm32_fmc2_nfc, ptr %7, i32 0, i32 7, i32 %44
  %46 = load ptr, ptr %45, align 4
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %46, i8 %43) #11, !srcloc !10
  %47 = add nuw i32 %40, 1
  %48 = load i32, ptr %28, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %39, label %288

50:                                               ; preds = %21
  %51 = getelementptr %struct.nand_op_instr, ptr %24, i32 %23, i32 1
  %52 = getelementptr inbounds %struct.nand_op_data_instr, ptr %51, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = load i32, ptr %51, align 4
  %55 = getelementptr inbounds %struct.nand_op_data_instr, ptr %51, i32 0, i32 2
  %56 = load i8, ptr %55, align 4, !range !11
  %57 = icmp eq i8 %56, 0
  %58 = load ptr, ptr %6, align 4
  %59 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %58, i32 0, i32 23
  %60 = load i32, ptr %59, align 8
  %61 = getelementptr %struct.stm32_fmc2_nfc, ptr %58, i32 0, i32 5, i32 %60
  %62 = load ptr, ptr %61, align 4
  br i1 %57, label %71, label %63

63:                                               ; preds = %50
  %64 = load i32, ptr %19, align 8
  %65 = and i32 %64, 2
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %58, i32 0, i32 4
  %69 = load ptr, ptr %68, align 8
  %70 = call i32 @regmap_update_bits_base(ptr noundef %69, i32 noundef 128, i32 noundef 48, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %71

71:                                               ; preds = %67, %63, %50
  %72 = ptrtoint ptr %53 to i32
  %73 = and i32 %72, 3
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %97, label %75

75:                                               ; preds = %71
  %76 = and i32 %72, 1
  %77 = icmp ne i32 %76, 0
  %78 = icmp ne i32 %54, 0
  %79 = and i1 %78, %77
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %62) #11, !srcloc !12
  store i8 %81, ptr %53, align 1
  %82 = getelementptr i8, ptr %53, i32 1
  %83 = add i32 %54, -1
  %84 = ptrtoint ptr %82 to i32
  %85 = and i32 %84, 3
  %86 = icmp ne i32 %85, 0
  br label %87

87:                                               ; preds = %80, %75
  %88 = phi i1 [ %86, %80 ], [ true, %75 ]
  %89 = phi i32 [ %83, %80 ], [ %54, %75 ]
  %90 = phi ptr [ %82, %80 ], [ %53, %75 ]
  %91 = icmp ugt i32 %89, 1
  %92 = and i1 %88, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %62) #11, !srcloc !13
  store i16 %94, ptr %90, align 2
  %95 = getelementptr i8, ptr %90, i32 2
  %96 = add i32 %89, -2
  br label %97

97:                                               ; preds = %93, %87, %71
  %98 = phi i32 [ %54, %71 ], [ %96, %93 ], [ %89, %87 ]
  %99 = phi ptr [ %53, %71 ], [ %95, %93 ], [ %90, %87 ]
  %100 = icmp ugt i32 %98, 3
  br i1 %100, label %101, label %108

101:                                              ; preds = %101, %97
  %102 = phi ptr [ %105, %101 ], [ %99, %97 ]
  %103 = phi i32 [ %106, %101 ], [ %98, %97 ]
  %104 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #11, !srcloc !14
  store i32 %104, ptr %102, align 4
  %105 = getelementptr i8, ptr %102, i32 4
  %106 = add i32 %103, -4
  %107 = icmp ugt i32 %106, 3
  br i1 %107, label %101, label %108

108:                                              ; preds = %101, %97
  %109 = phi i32 [ %98, %97 ], [ %106, %101 ]
  %110 = phi ptr [ %99, %97 ], [ %105, %101 ]
  %111 = icmp ugt i32 %109, 1
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %62) #11, !srcloc !13
  store i16 %113, ptr %110, align 2
  %114 = getelementptr i8, ptr %110, i32 2
  %115 = add nsw i32 %109, -2
  br label %116

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %115, %112 ], [ %109, %108 ]
  %118 = phi ptr [ %114, %112 ], [ %110, %108 ]
  %119 = icmp eq i32 %117, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %116
  %121 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %62) #11, !srcloc !12
  store i8 %121, ptr %118, align 1
  br label %122

122:                                              ; preds = %120, %116
  br i1 %57, label %288, label %123

123:                                              ; preds = %122
  %124 = load i32, ptr %19, align 8
  %125 = and i32 %124, 2
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %288, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %58, i32 0, i32 4
  %129 = load ptr, ptr %128, align 8
  %130 = call i32 @regmap_update_bits_base(ptr noundef %129, i32 noundef 128, i32 noundef 48, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %288

131:                                              ; preds = %21
  %132 = getelementptr %struct.nand_op_instr, ptr %24, i32 %23, i32 1
  %133 = getelementptr inbounds %struct.nand_op_data_instr, ptr %132, i32 0, i32 1
  %134 = load ptr, ptr %133, align 4
  %135 = load i32, ptr %132, align 4
  %136 = getelementptr inbounds %struct.nand_op_data_instr, ptr %132, i32 0, i32 2
  %137 = load i8, ptr %136, align 4, !range !11
  %138 = icmp eq i8 %137, 0
  %139 = load ptr, ptr %6, align 4
  %140 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %139, i32 0, i32 23
  %141 = load i32, ptr %140, align 8
  %142 = getelementptr %struct.stm32_fmc2_nfc, ptr %139, i32 0, i32 5, i32 %141
  %143 = load ptr, ptr %142, align 4
  br i1 %138, label %152, label %144

144:                                              ; preds = %131
  %145 = load i32, ptr %19, align 8
  %146 = and i32 %145, 2
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %152, label %148

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %139, i32 0, i32 4
  %150 = load ptr, ptr %149, align 8
  %151 = call i32 @regmap_update_bits_base(ptr noundef %150, i32 noundef 128, i32 noundef 48, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %152

152:                                              ; preds = %148, %144, %131
  %153 = ptrtoint ptr %134 to i32
  %154 = and i32 %153, 3
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %178, label %156

156:                                              ; preds = %152
  %157 = and i32 %153, 1
  %158 = icmp ne i32 %157, 0
  %159 = icmp ne i32 %135, 0
  %160 = and i1 %159, %158
  br i1 %160, label %161, label %168

161:                                              ; preds = %156
  %162 = load i8, ptr %134, align 1
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %143, i8 %162) #11, !srcloc !10
  %163 = getelementptr i8, ptr %134, i32 1
  %164 = add i32 %135, -1
  %165 = ptrtoint ptr %163 to i32
  %166 = and i32 %165, 3
  %167 = icmp ne i32 %166, 0
  br label %168

168:                                              ; preds = %161, %156
  %169 = phi i1 [ %167, %161 ], [ true, %156 ]
  %170 = phi i32 [ %164, %161 ], [ %135, %156 ]
  %171 = phi ptr [ %163, %161 ], [ %134, %156 ]
  %172 = icmp ugt i32 %170, 1
  %173 = and i1 %169, %172
  br i1 %173, label %174, label %178

174:                                              ; preds = %168
  %175 = load i16, ptr %171, align 2
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %143, i16 %175) #11, !srcloc !15
  %176 = getelementptr i8, ptr %171, i32 2
  %177 = add i32 %170, -2
  br label %178

178:                                              ; preds = %174, %168, %152
  %179 = phi i32 [ %135, %152 ], [ %177, %174 ], [ %170, %168 ]
  %180 = phi ptr [ %134, %152 ], [ %176, %174 ], [ %171, %168 ]
  %181 = icmp ugt i32 %179, 3
  br i1 %181, label %182, label %189

182:                                              ; preds = %182, %178
  %183 = phi ptr [ %186, %182 ], [ %180, %178 ]
  %184 = phi i32 [ %187, %182 ], [ %179, %178 ]
  %185 = load i32, ptr %183, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 %185) #11, !srcloc !16
  %186 = getelementptr i8, ptr %183, i32 4
  %187 = add i32 %184, -4
  %188 = icmp ugt i32 %187, 3
  br i1 %188, label %182, label %189

189:                                              ; preds = %182, %178
  %190 = phi i32 [ %179, %178 ], [ %187, %182 ]
  %191 = phi ptr [ %180, %178 ], [ %186, %182 ]
  %192 = icmp ugt i32 %190, 1
  br i1 %192, label %193, label %197

193:                                              ; preds = %189
  %194 = load i16, ptr %191, align 2
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %143, i16 %194) #11, !srcloc !15
  %195 = getelementptr i8, ptr %191, i32 2
  %196 = add nsw i32 %190, -2
  br label %197

197:                                              ; preds = %193, %189
  %198 = phi i32 [ %196, %193 ], [ %190, %189 ]
  %199 = phi ptr [ %195, %193 ], [ %191, %189 ]
  %200 = icmp eq i32 %198, 0
  br i1 %200, label %203, label %201

201:                                              ; preds = %197
  %202 = load i8, ptr %199, align 1
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %143, i8 %202) #11, !srcloc !10
  br label %203

203:                                              ; preds = %201, %197
  br i1 %138, label %288, label %204

204:                                              ; preds = %203
  %205 = load i32, ptr %19, align 8
  %206 = and i32 %205, 2
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %288, label %208

208:                                              ; preds = %204
  %209 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %139, i32 0, i32 4
  %210 = load ptr, ptr %209, align 8
  %211 = call i32 @regmap_update_bits_base(ptr noundef %210, i32 noundef 128, i32 noundef 48, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %288

212:                                              ; preds = %21
  %213 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !8
  %214 = call i64 @ktime_get() #11
  %215 = add i64 %214, 5000000000
  %216 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %213, i32 0, i32 4
  %217 = load ptr, ptr %216, align 8
  %218 = call i32 @regmap_read(ptr noundef %217, i32 noundef 132, ptr noundef nonnull %5) #11
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %242

220:                                              ; preds = %233, %212
  %221 = load i32, ptr %5, align 4
  %222 = and i32 %221, 64
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %237

224:                                              ; preds = %220
  %225 = call i64 @ktime_get() #11
  %226 = icmp sgt i64 %225, %215
  br i1 %226, label %227, label %233

227:                                              ; preds = %224
  %228 = load ptr, ptr %216, align 8
  %229 = call i32 @regmap_read(ptr noundef %228, i32 noundef 132, ptr noundef nonnull %5) #11
  %230 = icmp eq i32 %229, 0
  %231 = load i32, ptr %5, align 4
  %232 = and i32 %231, 64
  br label %237

233:                                              ; preds = %224
  call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #11
  %234 = load ptr, ptr %216, align 8
  %235 = call i32 @regmap_read(ptr noundef %234, i32 noundef 132, ptr noundef nonnull %5) #11
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %220, label %242

237:                                              ; preds = %227, %220
  %238 = phi i32 [ %232, %227 ], [ 1, %220 ]
  %239 = phi i1 [ %230, %227 ], [ true, %220 ]
  %240 = icmp ne i32 %238, 0
  %241 = select i1 %239, i1 %240, i1 false
  br i1 %241, label %245, label %242

242:                                              ; preds = %237, %233, %212
  %243 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %213, i32 0, i32 2
  %244 = load ptr, ptr %243, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %244, ptr noundef nonnull @.str.15) #12
  br label %245

245:                                              ; preds = %242, %237
  %246 = load ptr, ptr %18, align 4
  %247 = load i32, ptr %246, align 8
  %248 = icmp eq i32 %247, 0
  %249 = getelementptr inbounds %struct.nand_interface_config, ptr %246, i32 0, i32 1, i32 1
  %250 = select i1 %248, ptr %249, ptr inttoptr (i32 -22 to ptr)
  %251 = getelementptr inbounds %struct.nand_sdr_timings, ptr %250, i32 0, i32 32
  %252 = load i32, ptr %251, align 8
  %253 = add i32 %252, 999
  %254 = udiv i32 %253, 1000
  %255 = add nuw nsw i32 %254, 999
  %256 = udiv i32 %255, 1000
  %257 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %257(i32 noundef %256) #11
  %258 = load ptr, ptr %216, align 8
  %259 = call i32 @regmap_write(ptr noundef %258, i32 noundef 392, i32 noundef 2) #11
  %260 = call i64 @ktime_get() #11
  %261 = add i64 %260, 5000000000
  %262 = load ptr, ptr %216, align 8
  %263 = call i32 @regmap_read(ptr noundef %262, i32 noundef 388, ptr noundef nonnull %4) #11
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %279

265:                                              ; preds = %275, %245
  %266 = load i32, ptr %4, align 4
  %267 = and i32 %266, 2
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %279

269:                                              ; preds = %265
  %270 = call i64 @ktime_get() #11
  %271 = icmp sgt i64 %270, %261
  br i1 %271, label %272, label %275

272:                                              ; preds = %269
  %273 = load ptr, ptr %216, align 8
  %274 = call i32 @regmap_read(ptr noundef %273, i32 noundef 388, ptr noundef nonnull %4) #11
  br label %279

275:                                              ; preds = %269
  call void @usleep_range_state(i32 noundef 2, i32 noundef 5, i32 noundef 2) #11
  %276 = load ptr, ptr %216, align 8
  %277 = call i32 @regmap_read(ptr noundef %276, i32 noundef 388, ptr noundef nonnull %4) #11
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %265, label %279

279:                                              ; preds = %275, %272, %265, %245
  %280 = phi i32 [ %274, %272 ], [ %263, %245 ], [ %277, %275 ], [ 0, %265 ]
  %281 = icmp ne i32 %280, 0
  %282 = load i32, ptr %4, align 4
  %283 = and i32 %282, 2
  %284 = icmp ne i32 %283, 0
  %285 = select i1 %281, i1 true, i1 %284
  %286 = select i1 %285, i32 0, i32 -110
  %287 = select i1 %281, i32 %280, i32 %286
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br label %288

288:                                              ; preds = %279, %208, %204, %203, %127, %123, %122, %39, %33, %27, %21
  %289 = phi i32 [ %22, %21 ], [ %287, %279 ], [ %22, %33 ], [ %22, %122 ], [ %22, %123 ], [ %22, %127 ], [ %22, %203 ], [ %22, %204 ], [ %22, %208 ], [ %22, %27 ], [ %22, %39 ]
  %290 = add nuw i32 %23, 1
  %291 = load i32, ptr %13, align 4
  %292 = icmp ult i32 %290, %291
  br i1 %292, label %21, label %293

293:                                              ; preds = %288, %12, %8, %3
  %294 = phi i32 [ 0, %3 ], [ %10, %8 ], [ 0, %12 ], [ %289, %288 ]
  ret i32 %294
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_nfc_setup_interface(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) #2 {
  %4 = load i32, ptr %2, align 8
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.nand_interface_config, ptr %2, i32 0, i32 1, i32 1
  %7 = select i1 %5, ptr %6, ptr inttoptr (i32 -22 to ptr)
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = ptrtoint ptr %7 to i32
  br label %248

11:                                               ; preds = %3
  %12 = icmp eq i32 %1, -1
  br i1 %12, label %248, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.stm32_fmc2_nand, ptr %0, i32 0, i32 1
  %17 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %15, i32 0, i32 10
  %18 = load ptr, ptr %17, align 8
  %19 = tail call i32 @clk_get_rate(ptr noundef %18) #11
  %20 = udiv i32 %19, 1000
  %21 = udiv i32 1000000000, %20
  %22 = getelementptr inbounds %struct.nand_sdr_timings, ptr %7, i32 0, i32 7
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 @llvm.umax.i32(i32 %21, i32 %23) #11
  %25 = add nsw i32 %21, -1
  %26 = add i32 %24, %25
  %27 = udiv i32 %26, %21
  %28 = add nsw i32 %27, -1
  %29 = tail call i32 @llvm.umin.i32(i32 %28, i32 15) #11
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.stm32_fmc2_nand, ptr %0, i32 0, i32 1, i32 1
  store i8 %30, ptr %31, align 1
  %32 = getelementptr inbounds %struct.nand_sdr_timings, ptr %7, i32 0, i32 13
  %33 = load i32, ptr %32, align 4
  %34 = tail call i32 @llvm.umax.i32(i32 %21, i32 %33) #11
  %35 = add i32 %34, %25
  %36 = udiv i32 %35, %21
  %37 = add nsw i32 %36, -1
  %38 = tail call i32 @llvm.umin.i32(i32 %37, i32 15) #11
  %39 = trunc i32 %38 to i8
  store i8 %39, ptr %16, align 1
  %40 = getelementptr inbounds %struct.stm32_fmc2_nand, ptr %0, i32 0, i32 1, i32 2
  store i8 1, ptr %40, align 1
  %41 = shl nuw nsw i32 %21, 1
  %42 = getelementptr inbounds %struct.nand_sdr_timings, ptr %7, i32 0, i32 29
  %43 = load i32, ptr %42, align 4
  %44 = tail call i32 @llvm.umax.i32(i32 %21, i32 %43) #11
  %45 = getelementptr inbounds %struct.nand_sdr_timings, ptr %7, i32 0, i32 36
  %46 = load i32, ptr %45, align 8
  %47 = tail call i32 @llvm.umax.i32(i32 %44, i32 %46) #11
  %48 = getelementptr inbounds %struct.nand_sdr_timings, ptr %7, i32 0, i32 23
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %49, 8000
  %51 = tail call i32 @llvm.umax.i32(i32 %47, i32 %50) #11
  %52 = add i32 %51, %25
  %53 = udiv i32 %52, %21
  %54 = tail call i32 @llvm.umax.i32(i32 %53, i32 1) #11
  %55 = tail call i32 @llvm.umin.i32(i32 %54, i32 255) #11
  %56 = trunc i32 %55 to i8
  %57 = getelementptr inbounds %struct.stm32_fmc2_nand, ptr %0, i32 0, i32 1, i32 3
  store i8 %56, ptr %57, align 1
  %58 = getelementptr inbounds %struct.nand_sdr_timings, ptr %7, i32 0, i32 16
  %59 = load i32, ptr %58, align 8
  %60 = icmp ugt i32 %59, %51
  %61 = sub i32 %59, %51
  %62 = tail call i32 @llvm.umax.i32(i32 %21, i32 %61) #11
  %63 = select i1 %60, i32 %62, i32 %21
  %64 = getelementptr inbounds %struct.nand_sdr_timings, ptr %7, i32 0, i32 6
  %65 = load i32, ptr %64, align 8
  %66 = icmp ugt i32 %65, %51
  %67 = sub i32 %65, %51
  %68 = tail call i32 @llvm.umax.i32(i32 %63, i32 %67) #11
  %69 = select i1 %66, i32 %68, i32 %63
  %70 = icmp ugt i32 %51, %41
  br i1 %70, label %71, label %79

71:                                               ; preds = %13
  %72 = getelementptr inbounds %struct.nand_sdr_timings, ptr %7, i32 0, i32 18
  %73 = load i32, ptr %72, align 8
  %74 = sub i32 %51, %41
  %75 = icmp ugt i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = sub i32 %73, %74
  %78 = tail call i32 @llvm.umax.i32(i32 %69, i32 %77) #11
  br label %79

79:                                               ; preds = %76, %71, %13
  %80 = phi i32 [ %69, %71 ], [ %69, %13 ], [ %78, %76 ]
  %81 = add i32 %80, %25
  %82 = udiv i32 %81, %21
  %83 = tail call i32 @llvm.umax.i32(i32 %82, i32 1) #11
  %84 = tail call i32 @llvm.umin.i32(i32 %83, i32 255) #11
  %85 = trunc i32 %84 to i8
  %86 = getelementptr inbounds %struct.stm32_fmc2_nand, ptr %0, i32 0, i32 1, i32 5
  store i8 %85, ptr %86, align 1
  %87 = getelementptr inbounds %struct.nand_sdr_timings, ptr %7, i32 0, i32 10
  %88 = load i32, ptr %87, align 8
  %89 = tail call i32 @llvm.umax.i32(i32 %21, i32 %88) #11
  %90 = getelementptr inbounds %struct.nand_sdr_timings, ptr %7, i32 0, i32 24
  %91 = load i32, ptr %90, align 8
  %92 = icmp ugt i32 %91, %80
  %93 = sub i32 %91, %80
  %94 = tail call i32 @llvm.umax.i32(i32 %89, i32 %93) #11
  %95 = select i1 %92, i32 %94, i32 %89
  %96 = getelementptr inbounds %struct.nand_sdr_timings, ptr %7, i32 0, i32 22
  %97 = load i32, ptr %96, align 8
  %98 = add i32 %80, %51
  %99 = icmp ugt i32 %97, %98
  %100 = sub i32 %97, %98
  %101 = tail call i32 @llvm.umax.i32(i32 %95, i32 %100) #11
  %102 = select i1 %99, i32 %101, i32 %95
  %103 = getelementptr inbounds %struct.nand_sdr_timings, ptr %7, i32 0, i32 33
  %104 = load i32, ptr %103, align 4
  %105 = icmp ugt i32 %104, %98
  %106 = sub i32 %104, %98
  %107 = tail call i32 @llvm.umax.i32(i32 %102, i32 %106) #11
  %108 = select i1 %105, i32 %107, i32 %102
  %109 = add i32 %108, %25
  %110 = udiv i32 %109, %21
  %111 = tail call i32 @llvm.umax.i32(i32 %110, i32 1) #11
  %112 = tail call i32 @llvm.umin.i32(i32 %111, i32 255) #11
  %113 = trunc i32 %112 to i8
  %114 = getelementptr inbounds %struct.stm32_fmc2_nand, ptr %0, i32 0, i32 1, i32 4
  store i8 %113, ptr %114, align 1
  %115 = load i32, ptr %58, align 8
  %116 = icmp ugt i32 %115, %51
  %117 = sub i32 %115, %51
  %118 = tail call i32 @llvm.umax.i32(i32 %21, i32 %117) #11
  %119 = select i1 %116, i32 %118, i32 %21
  %120 = getelementptr inbounds %struct.nand_sdr_timings, ptr %7, i32 0, i32 14
  %121 = load i32, ptr %120, align 8
  %122 = icmp ugt i32 %121, %51
  %123 = sub i32 %121, %51
  %124 = tail call i32 @llvm.umax.i32(i32 %119, i32 %123) #11
  %125 = select i1 %122, i32 %124, i32 %119
  %126 = load i32, ptr %64, align 8
  %127 = icmp ugt i32 %126, %51
  %128 = sub i32 %126, %51
  %129 = tail call i32 @llvm.umax.i32(i32 %125, i32 %128) #11
  %130 = select i1 %127, i32 %129, i32 %125
  %131 = getelementptr inbounds %struct.nand_sdr_timings, ptr %7, i32 0, i32 26
  %132 = load i32, ptr %131, align 8
  %133 = icmp ugt i32 %132, %108
  %134 = sub i32 %132, %108
  %135 = tail call i32 @llvm.umax.i32(i32 %130, i32 %134) #11
  %136 = select i1 %133, i32 %135, i32 %130
  br i1 %70, label %137, label %145

137:                                              ; preds = %79
  %138 = getelementptr inbounds %struct.nand_sdr_timings, ptr %7, i32 0, i32 18
  %139 = load i32, ptr %138, align 8
  %140 = sub i32 %51, %41
  %141 = icmp ugt i32 %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %137
  %143 = sub i32 %139, %140
  %144 = tail call i32 @llvm.umax.i32(i32 %136, i32 %143) #11
  br label %145

145:                                              ; preds = %142, %137, %79
  %146 = phi i32 [ %136, %137 ], [ %136, %79 ], [ %144, %142 ]
  %147 = add i32 %146, %25
  %148 = udiv i32 %147, %21
  %149 = tail call i32 @llvm.umax.i32(i32 %148, i32 1) #11
  %150 = tail call i32 @llvm.umin.i32(i32 %149, i32 255) #11
  %151 = trunc i32 %150 to i8
  %152 = getelementptr inbounds %struct.stm32_fmc2_nand, ptr %0, i32 0, i32 1, i32 7
  store i8 %151, ptr %152, align 1
  %153 = getelementptr inbounds %struct.nand_sdr_timings, ptr %7, i32 0, i32 4
  %154 = load i32, ptr %153, align 8
  %155 = tail call i32 @llvm.umax.i32(i32 %21, i32 %154) #11
  %156 = load i32, ptr %87, align 8
  %157 = tail call i32 @llvm.umax.i32(i32 %155, i32 %156) #11
  %158 = getelementptr inbounds %struct.nand_sdr_timings, ptr %7, i32 0, i32 12
  %159 = load i32, ptr %158, align 8
  %160 = tail call i32 @llvm.umax.i32(i32 %157, i32 %159) #11
  %161 = getelementptr inbounds %struct.nand_sdr_timings, ptr %7, i32 0, i32 15
  %162 = load i32, ptr %161, align 4
  %163 = tail call i32 @llvm.umax.i32(i32 %160, i32 %162) #11
  %164 = getelementptr inbounds %struct.nand_sdr_timings, ptr %7, i32 0, i32 17
  %165 = load i32, ptr %164, align 4
  %166 = tail call i32 @llvm.umax.i32(i32 %163, i32 %165) #11
  %167 = getelementptr inbounds %struct.nand_sdr_timings, ptr %7, i32 0, i32 32
  %168 = load i32, ptr %167, align 8
  %169 = add i32 %168, 11000
  %170 = icmp ugt i32 %169, %80
  %171 = sub i32 %169, %80
  %172 = tail call i32 @llvm.umax.i32(i32 %166, i32 %171) #11
  %173 = select i1 %170, i32 %172, i32 %166
  %174 = getelementptr inbounds %struct.nand_sdr_timings, ptr %7, i32 0, i32 5
  %175 = load i32, ptr %174, align 4
  %176 = icmp ugt i32 %175, %80
  %177 = sub i32 %175, %80
  %178 = tail call i32 @llvm.umax.i32(i32 %173, i32 %177) #11
  %179 = select i1 %176, i32 %178, i32 %173
  %180 = getelementptr inbounds %struct.nand_sdr_timings, ptr %7, i32 0, i32 34
  %181 = load i32, ptr %180, align 8
  %182 = icmp ugt i32 %181, %80
  %183 = sub i32 %181, %80
  %184 = tail call i32 @llvm.umax.i32(i32 %179, i32 %183) #11
  %185 = select i1 %182, i32 %184, i32 %179
  %186 = getelementptr inbounds %struct.nand_sdr_timings, ptr %7, i32 0, i32 35
  %187 = load i32, ptr %186, align 4
  %188 = icmp ugt i32 %187, %80
  %189 = sub i32 %187, %80
  %190 = tail call i32 @llvm.umax.i32(i32 %185, i32 %189) #11
  %191 = select i1 %188, i32 %190, i32 %185
  %192 = load i32, ptr %96, align 8
  %193 = add i32 %146, %51
  %194 = icmp ugt i32 %192, %193
  %195 = sub i32 %192, %193
  %196 = tail call i32 @llvm.umax.i32(i32 %191, i32 %195) #11
  %197 = select i1 %194, i32 %196, i32 %191
  %198 = load i32, ptr %103, align 4
  %199 = icmp ugt i32 %198, %193
  %200 = sub i32 %198, %193
  %201 = tail call i32 @llvm.umax.i32(i32 %197, i32 %200) #11
  %202 = select i1 %199, i32 %201, i32 %197
  %203 = add i32 %202, %25
  %204 = udiv i32 %203, %21
  %205 = tail call i32 @llvm.umax.i32(i32 %204, i32 1) #11
  %206 = tail call i32 @llvm.umin.i32(i32 %205, i32 255) #11
  %207 = trunc i32 %206 to i8
  %208 = getelementptr inbounds %struct.stm32_fmc2_nand, ptr %0, i32 0, i32 1, i32 6
  store i8 %207, ptr %208, align 1
  %209 = load ptr, ptr %14, align 4
  %210 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %209, i32 0, i32 4
  %211 = load ptr, ptr %210, align 8
  %212 = shl nuw nsw i32 %38, 9
  %213 = shl nuw nsw i32 %29, 13
  %214 = or i32 %212, %213
  %215 = tail call i32 @regmap_update_bits_base(ptr noundef %211, i32 noundef 128, i32 noundef 130560, i32 noundef %214, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %216 = load i8, ptr %86, align 1
  %217 = zext i8 %216 to i32
  %218 = load i8, ptr %57, align 1
  %219 = zext i8 %218 to i32
  %220 = shl nuw nsw i32 %219, 8
  %221 = or i32 %220, %217
  %222 = load i8, ptr %114, align 1
  %223 = zext i8 %222 to i32
  %224 = shl nuw nsw i32 %223, 16
  %225 = or i32 %221, %224
  %226 = load i8, ptr %40, align 1
  %227 = zext i8 %226 to i32
  %228 = shl nuw i32 %227, 24
  %229 = or i32 %225, %228
  %230 = load ptr, ptr %210, align 8
  %231 = tail call i32 @regmap_write(ptr noundef %230, i32 noundef 136, i32 noundef %229) #11
  %232 = load i8, ptr %152, align 1
  %233 = load i8, ptr %57, align 1
  %234 = load i8, ptr %208, align 1
  %235 = load i8, ptr %40, align 1
  %236 = zext i8 %233 to i32
  %237 = shl nuw nsw i32 %236, 8
  %238 = zext i8 %232 to i32
  %239 = or i32 %237, %238
  %240 = zext i8 %234 to i32
  %241 = shl nuw nsw i32 %240, 16
  %242 = or i32 %239, %241
  %243 = zext i8 %235 to i32
  %244 = shl nuw i32 %243, 24
  %245 = or i32 %242, %244
  %246 = load ptr, ptr %210, align 8
  %247 = tail call i32 @regmap_write(ptr noundef %246, i32 noundef 140, i32 noundef %245) #11
  br label %248

248:                                              ; preds = %145, %11, %9
  %249 = phi i32 [ %10, %9 ], [ 0, %145 ], [ 0, %11 ]
  ret i32 %249
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_ecc_choose_conf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @stm32_fmc2_nfc_calc_ecc_bytes(i32 noundef %0, i32 noundef %1) #7 {
  %3 = icmp eq i32 %1, 8
  %4 = select i1 %3, i32 14, i32 8
  %5 = icmp eq i32 %1, 1
  %6 = select i1 %5, i32 4, i32 %4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_nfc_seq_correct(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) #2 {
  %5 = alloca [8 x i16], align 2
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %8, i32 0, i32 17
  %18 = load ptr, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 0, ptr %6, align 4, !annotation !8
  %19 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %8, i32 0, i32 4
  %20 = load ptr, ptr %19, align 8
  %21 = call i32 @regmap_read(ptr noundef %20, i32 noundef 560, ptr noundef nonnull %6) #11
  %22 = load i32, ptr %6, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  %23 = icmp sgt i32 %12, 0
  br i1 %23, label %24, label %140

24:                                               ; preds = %4
  %25 = icmp eq i32 %14, 1
  %26 = and i32 %22, 65535
  %27 = getelementptr inbounds [8 x i16], ptr %5, i32 0, i32 1
  %28 = getelementptr inbounds [8 x i16], ptr %5, i32 0, i32 2
  %29 = getelementptr inbounds [8 x i16], ptr %5, i32 0, i32 3
  %30 = getelementptr inbounds [8 x i16], ptr %5, i32 0, i32 4
  %31 = getelementptr inbounds [8 x i16], ptr %5, i32 0, i32 5
  %32 = getelementptr inbounds [8 x i16], ptr %5, i32 0, i32 6
  %33 = getelementptr inbounds [8 x i16], ptr %5, i32 0, i32 7
  %34 = shl i32 %16, 3
  %35 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52
  %36 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52, i32 1
  br label %37

37:                                               ; preds = %134, %24
  %38 = phi ptr [ %1, %24 ], [ %138, %134 ]
  %39 = phi i32 [ 0, %24 ], [ %135, %134 ]
  %40 = phi ptr [ %18, %24 ], [ %119, %134 ]
  %41 = phi i32 [ 0, %24 ], [ %136, %134 ]
  %42 = phi i32 [ 0, %24 ], [ %137, %134 ]
  %43 = shl nuw i32 1, %41
  %44 = and i32 %26, %43
  %45 = icmp eq i32 %44, 0
  br i1 %25, label %46, label %59

46:                                               ; preds = %37
  br i1 %45, label %116, label %47

47:                                               ; preds = %46
  %48 = load i32, ptr %40, align 4
  %49 = getelementptr i8, ptr %3, i32 %42
  %50 = trunc i32 %48 to i8
  store i8 %50, ptr %49, align 1
  %51 = lshr i32 %48, 8
  %52 = trunc i32 %51 to i8
  %53 = getelementptr i8, ptr %49, i32 1
  store i8 %52, ptr %53, align 1
  %54 = lshr i32 %48, 16
  %55 = trunc i32 %54 to i8
  %56 = getelementptr i8, ptr %49, i32 2
  store i8 %55, ptr %56, align 1
  %57 = getelementptr i8, ptr %2, i32 %42
  %58 = call i32 @stm32_fmc2_nfc_ham_correct(ptr noundef %0, ptr noundef %38, ptr noundef %57, ptr noundef %49)
  br label %116

59:                                               ; preds = %37
  br i1 %45, label %116, label %60

60:                                               ; preds = %59
  %61 = load i32, ptr %40, align 4
  %62 = getelementptr i32, ptr %40, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr i32, ptr %40, i32 2
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr i32, ptr %40, i32 3
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr i32, ptr %40, i32 4
  %69 = load i32, ptr %68, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %70 = and i32 %61, 2
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %114, label %72, !prof !9

72:                                               ; preds = %60
  %73 = and i32 %61, 1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %114, !prof !9

75:                                               ; preds = %72
  %76 = trunc i32 %63 to i16
  %77 = and i16 %76, 8191
  store i16 %77, ptr %5, align 2
  %78 = lshr i32 %63, 16
  %79 = trunc i32 %78 to i16
  %80 = and i16 %79, 8191
  store i16 %80, ptr %27, align 2
  %81 = trunc i32 %65 to i16
  %82 = and i16 %81, 8191
  store i16 %82, ptr %28, align 2
  %83 = lshr i32 %65, 16
  %84 = trunc i32 %83 to i16
  %85 = and i16 %84, 8191
  store i16 %85, ptr %29, align 2
  %86 = trunc i32 %67 to i16
  %87 = and i16 %86, 8191
  store i16 %87, ptr %30, align 2
  %88 = lshr i32 %67, 16
  %89 = trunc i32 %88 to i16
  %90 = and i16 %89, 8191
  store i16 %90, ptr %31, align 2
  %91 = trunc i32 %69 to i16
  %92 = and i16 %91, 8191
  store i16 %92, ptr %32, align 2
  %93 = lshr i32 %69, 16
  %94 = trunc i32 %93 to i16
  %95 = and i16 %94, 8191
  store i16 %95, ptr %33, align 2
  %96 = lshr i32 %61, 4
  %97 = and i32 %96, 15
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %114, label %99

99:                                               ; preds = %111, %75
  %100 = phi i16 [ %113, %111 ], [ %77, %75 ]
  %101 = phi i32 [ %109, %111 ], [ 0, %75 ]
  %102 = phi i32 [ %108, %111 ], [ 0, %75 ]
  %103 = zext i16 %100 to i32
  %104 = icmp sgt i32 %34, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %99
  call void @_change_bit(i32 noundef %103, ptr noundef %38) #11
  %106 = add i32 %102, 1
  br label %107

107:                                              ; preds = %105, %99
  %108 = phi i32 [ %106, %105 ], [ %102, %99 ]
  %109 = add nuw nsw i32 %101, 1
  %110 = icmp eq i32 %109, %97
  br i1 %110, label %114, label %111

111:                                              ; preds = %107
  %112 = getelementptr [8 x i16], ptr %5, i32 0, i32 %109
  %113 = load i16, ptr %112, align 2
  br label %99

114:                                              ; preds = %107, %75, %72, %60
  %115 = phi i32 [ 0, %60 ], [ -74, %72 ], [ 0, %75 ], [ %108, %107 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  br label %116

116:                                              ; preds = %114, %59, %47, %46
  %117 = phi i32 [ 1, %47 ], [ 1, %46 ], [ 5, %114 ], [ 5, %59 ]
  %118 = phi i32 [ %58, %47 ], [ 0, %46 ], [ %115, %114 ], [ 0, %59 ]
  %119 = getelementptr i32, ptr %40, i32 %117
  %120 = icmp eq i32 %118, -74
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = getelementptr i8, ptr %2, i32 %42
  %123 = call i32 @nand_check_erased_ecc_chunk(ptr noundef %38, i32 noundef %16, ptr noundef %122, i32 noundef %10, ptr noundef null, i32 noundef 0, i32 noundef %14) #11
  br label %124

124:                                              ; preds = %121, %116
  %125 = phi i32 [ %123, %121 ], [ %118, %116 ]
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load i32, ptr %36, align 4
  %129 = add i32 %128, 1
  store i32 %129, ptr %36, align 4
  br label %134

130:                                              ; preds = %124
  %131 = load i32, ptr %35, align 4
  %132 = add i32 %131, %125
  store i32 %132, ptr %35, align 4
  %133 = call i32 @llvm.umax.i32(i32 %39, i32 %125)
  br label %134

134:                                              ; preds = %130, %127
  %135 = phi i32 [ %39, %127 ], [ %133, %130 ]
  %136 = add nuw nsw i32 %41, 1
  %137 = add i32 %42, %10
  %138 = getelementptr i8, ptr %38, i32 %16
  %139 = icmp eq i32 %136, %12
  br i1 %139, label %140, label %37

140:                                              ; preds = %134, %4
  %141 = phi i32 [ 0, %4 ], [ %135, %134 ]
  ret i32 %141
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_nfc_seq_write_page(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %6 = load i32, ptr %5, align 4
  %7 = tail call fastcc i32 @stm32_fmc2_nfc_select_chip(ptr noundef %0, i32 noundef %6)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %4
  tail call fastcc void @stm32_fmc2_nfc_rw_page_init(ptr noundef %0, i32 noundef %3, i32 noundef 0, i1 noundef zeroext true) #11
  %10 = tail call fastcc i32 @stm32_fmc2_nfc_xfer(ptr noundef %0, ptr noundef %1, i32 noundef 0, i1 noundef zeroext true) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = icmp eq i32 %2, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @nand_change_write_column_op(ptr noundef %0, i32 noundef %16, ptr noundef %18, i32 noundef %20, i1 noundef zeroext false) #11
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14, %12
  %24 = tail call i32 @nand_prog_page_end_op(ptr noundef %0) #11
  br label %25

25:                                               ; preds = %23, %14, %9, %4
  %26 = phi i32 [ %7, %4 ], [ %24, %23 ], [ %10, %9 ], [ %21, %14 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_nfc_seq_read_page(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 12
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %13 = load i32, ptr %12, align 4
  %14 = tail call fastcc i32 @stm32_fmc2_nfc_select_chip(ptr noundef %0, i32 noundef %13)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %55

16:                                               ; preds = %4
  tail call fastcc void @stm32_fmc2_nfc_rw_page_init(ptr noundef %0, i32 noundef %3, i32 noundef 0, i1 noundef zeroext false)
  %17 = tail call fastcc i32 @stm32_fmc2_nfc_xfer(ptr noundef %0, ptr noundef %1, i32 noundef 0, i1 noundef zeroext false)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %55

19:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !8
  %20 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %7, i32 0, i32 4
  %21 = load ptr, ptr %20, align 8
  %22 = call i32 @regmap_read(ptr noundef %21, i32 noundef 560, ptr noundef nonnull %5) #11
  %23 = load i32, ptr %5, align 4
  %24 = trunc i32 %23 to i16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %36, !prof !9

26:                                               ; preds = %19
  %27 = icmp eq i32 %2, 0
  br i1 %27, label %55, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %34 = load i32, ptr %33, align 4
  %35 = call i32 @nand_change_read_column_op(ptr noundef %0, i32 noundef %30, ptr noundef %32, i32 noundef %34, i1 noundef zeroext false) #11
  br label %55

36:                                               ; preds = %19
  %37 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %42 = load i32, ptr %41, align 4
  %43 = call i32 @nand_change_read_column_op(ptr noundef %0, i32 noundef %38, ptr noundef %40, i32 noundef %42, i1 noundef zeroext false) #11
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %36
  %46 = load ptr, ptr %39, align 4
  %47 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 6
  %48 = load i32, ptr %47, align 8
  %49 = call i32 @mtd_ooblayout_get_eccbytes(ptr noundef %0, ptr noundef %11, ptr noundef %46, i32 noundef 0, i32 noundef %48) #11
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 15
  %53 = load ptr, ptr %52, align 4
  %54 = call i32 %53(ptr noundef %0, ptr noundef %1, ptr noundef %11, ptr noundef %9) #11
  br label %55

55:                                               ; preds = %51, %45, %36, %28, %26, %16, %4
  %56 = phi i32 [ %35, %28 ], [ %54, %51 ], [ %14, %4 ], [ %17, %16 ], [ 0, %26 ], [ %43, %36 ], [ %49, %45 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_nfc_seq_write_page_raw(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %6 = load i32, ptr %5, align 4
  %7 = tail call fastcc i32 @stm32_fmc2_nfc_select_chip(ptr noundef %0, i32 noundef %6)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %4
  tail call fastcc void @stm32_fmc2_nfc_rw_page_init(ptr noundef %0, i32 noundef %3, i32 noundef 1, i1 noundef zeroext true) #11
  %10 = tail call fastcc i32 @stm32_fmc2_nfc_xfer(ptr noundef %0, ptr noundef %1, i32 noundef 1, i1 noundef zeroext true) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = icmp eq i32 %2, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @nand_change_write_column_op(ptr noundef %0, i32 noundef %16, ptr noundef %18, i32 noundef %20, i1 noundef zeroext false) #11
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14, %12
  %24 = tail call i32 @nand_prog_page_end_op(ptr noundef %0) #11
  br label %25

25:                                               ; preds = %23, %14, %9, %4
  %26 = phi i32 [ %7, %4 ], [ %24, %23 ], [ %10, %9 ], [ %21, %14 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_nfc_seq_read_page_raw(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %6 = load i32, ptr %5, align 4
  %7 = tail call fastcc i32 @stm32_fmc2_nfc_select_chip(ptr noundef %0, i32 noundef %6)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %4
  tail call fastcc void @stm32_fmc2_nfc_rw_page_init(ptr noundef %0, i32 noundef %3, i32 noundef 1, i1 noundef zeroext false)
  %10 = tail call fastcc i32 @stm32_fmc2_nfc_xfer(ptr noundef %0, ptr noundef %1, i32 noundef 1, i1 noundef zeroext false)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %9
  %13 = icmp eq i32 %2, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @nand_change_read_column_op(ptr noundef %0, i32 noundef %16, ptr noundef %18, i32 noundef %20, i1 noundef zeroext false) #11
  br label %22

22:                                               ; preds = %14, %12, %9, %4
  %23 = phi i32 [ %21, %14 ], [ %7, %4 ], [ %10, %9 ], [ 0, %12 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_fmc2_nfc_hwctl(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 128, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %8 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %25, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 8
  %13 = icmp eq i32 %1, 1
  %14 = select i1 %13, i32 33554432, i32 0
  %15 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 128, i32 noundef 33554432, i32 noundef %14, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %16 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %4, i32 0, i32 19
  store i32 0, ptr %16, align 4
  %17 = load ptr, ptr %5, align 8
  %18 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 600, i32 noundef 31) #11
  %19 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %4, i32 0, i32 11
  store i8 1, ptr %19, align 4
  %20 = load ptr, ptr %5, align 8
  br i1 %13, label %21, label %23

21:                                               ; preds = %11
  %22 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 592, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %25

23:                                               ; preds = %11
  %24 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 592, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %25

25:                                               ; preds = %23, %21, %2
  %26 = load ptr, ptr %5, align 8
  %27 = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 128, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_nfc_ham_calculate(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = tail call i64 @ktime_get() #11
  %9 = add i64 %8, 5000000000
  %10 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %7, i32 0, i32 4
  %11 = load ptr, ptr %10, align 8
  %12 = call i32 @regmap_read(ptr noundef %11, i32 noundef 132, ptr noundef nonnull %4) #11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %24, %3
  %15 = load i32, ptr %4, align 4
  %16 = and i32 %15, 64
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = call i64 @ktime_get() #11
  %20 = icmp sgt i64 %19, %9
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load ptr, ptr %10, align 8
  %23 = call i32 @regmap_read(ptr noundef %22, i32 noundef 132, ptr noundef nonnull %4) #11
  br label %28

24:                                               ; preds = %18
  call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #11
  %25 = load ptr, ptr %10, align 8
  %26 = call i32 @regmap_read(ptr noundef %25, i32 noundef 132, ptr noundef nonnull %4) #11
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %14, label %28

28:                                               ; preds = %24, %21, %14, %3
  %29 = phi i32 [ %23, %21 ], [ %12, %3 ], [ 0, %14 ], [ %26, %24 ]
  %30 = icmp ne i32 %29, 0
  %31 = load i32, ptr %4, align 4
  %32 = and i32 %31, 64
  %33 = icmp ne i32 %32, 0
  %34 = select i1 %30, i1 true, i1 %33
  %35 = select i1 %34, i32 0, i32 -110
  %36 = select i1 %30, i32 %29, i32 %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %7, i32 0, i32 2
  %40 = load ptr, ptr %39, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.13) #12
  br label %54

41:                                               ; preds = %28
  %42 = load ptr, ptr %10, align 8
  %43 = call i32 @regmap_read(ptr noundef %42, i32 noundef 148, ptr noundef nonnull %5) #11
  %44 = load i32, ptr %5, align 4
  %45 = trunc i32 %44 to i8
  store i8 %45, ptr %2, align 1
  %46 = lshr i32 %44, 8
  %47 = trunc i32 %46 to i8
  %48 = getelementptr i8, ptr %2, i32 1
  store i8 %47, ptr %48, align 1
  %49 = lshr i32 %44, 16
  %50 = trunc i32 %49 to i8
  %51 = getelementptr i8, ptr %2, i32 2
  store i8 %50, ptr %51, align 1
  %52 = load ptr, ptr %10, align 8
  %53 = call i32 @regmap_update_bits_base(ptr noundef %52, i32 noundef 128, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %54

54:                                               ; preds = %41, %38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret i32 %36
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_nfc_ham_correct(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #8 {
  %5 = load i8, ptr %2, align 1
  %6 = load i8, ptr %3, align 1
  %7 = xor i8 %6, %5
  %8 = getelementptr i8, ptr %2, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = getelementptr i8, ptr %3, i32 1
  %11 = load i8, ptr %10, align 1
  %12 = xor i8 %11, %9
  %13 = getelementptr i8, ptr %2, i32 2
  %14 = load i8, ptr %13, align 1
  %15 = getelementptr i8, ptr %3, i32 2
  %16 = load i8, ptr %15, align 1
  %17 = xor i8 %16, %14
  %18 = zext i8 %7 to i32
  %19 = zext i8 %12 to i32
  %20 = shl nuw nsw i32 %19, 8
  %21 = or i32 %20, %18
  %22 = zext i8 %17 to i32
  %23 = shl nuw nsw i32 %22, 16
  %24 = or i32 %23, %21
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %97, label %26, !prof !9

26:                                               ; preds = %4
  %27 = and i32 %18, 3
  switch i32 %27, label %97 [
    i32 2, label %28
    i32 1, label %29
  ]

28:                                               ; preds = %26
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i8 [ 0, %26 ], [ 1, %28 ]
  %31 = lshr i32 %18, 2
  %32 = and i32 %31, 3
  switch i32 %32, label %97 [
    i32 2, label %33
    i32 1, label %35
  ]

33:                                               ; preds = %29
  %34 = or i8 %30, 2
  br label %35

35:                                               ; preds = %33, %29
  %36 = phi i8 [ %30, %29 ], [ %34, %33 ]
  %37 = lshr i32 %18, 4
  %38 = and i32 %37, 3
  switch i32 %38, label %97 [
    i32 2, label %39
    i32 1, label %41
  ]

39:                                               ; preds = %35
  %40 = add nsw i8 %36, 4
  br label %41

41:                                               ; preds = %39, %35
  %42 = phi i8 [ %36, %35 ], [ %40, %39 ]
  %43 = lshr i32 %18, 6
  switch i32 %43, label %97 [
    i32 2, label %44
    i32 1, label %45
  ]

44:                                               ; preds = %41
  br label %45

45:                                               ; preds = %44, %41
  %46 = phi i32 [ 0, %41 ], [ 1, %44 ]
  %47 = and i32 %19, 3
  switch i32 %47, label %97 [
    i32 2, label %48
    i32 1, label %50
  ]

48:                                               ; preds = %45
  %49 = or i32 %46, 2
  br label %50

50:                                               ; preds = %48, %45
  %51 = phi i32 [ %46, %45 ], [ %49, %48 ]
  %52 = lshr i32 %19, 2
  %53 = and i32 %52, 3
  switch i32 %53, label %97 [
    i32 2, label %54
    i32 1, label %56
  ]

54:                                               ; preds = %50
  %55 = add nsw i32 %51, 4
  br label %56

56:                                               ; preds = %54, %50
  %57 = phi i32 [ %51, %50 ], [ %55, %54 ]
  %58 = lshr i32 %19, 4
  %59 = and i32 %58, 3
  switch i32 %59, label %97 [
    i32 2, label %60
    i32 1, label %62
  ]

60:                                               ; preds = %56
  %61 = add nsw i32 %57, 8
  br label %62

62:                                               ; preds = %60, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %60 ]
  %64 = lshr i32 %19, 6
  switch i32 %64, label %97 [
    i32 2, label %65
    i32 1, label %67
  ]

65:                                               ; preds = %62
  %66 = add i32 %63, 16
  br label %67

67:                                               ; preds = %65, %62
  %68 = phi i32 [ %63, %62 ], [ %66, %65 ]
  %69 = and i32 %22, 3
  switch i32 %69, label %97 [
    i32 2, label %70
    i32 1, label %72
  ]

70:                                               ; preds = %67
  %71 = add i32 %68, 32
  br label %72

72:                                               ; preds = %70, %67
  %73 = phi i32 [ %68, %67 ], [ %71, %70 ]
  %74 = lshr i32 %22, 2
  %75 = and i32 %74, 3
  switch i32 %75, label %97 [
    i32 2, label %76
    i32 1, label %78
  ]

76:                                               ; preds = %72
  %77 = add i32 %73, 64
  br label %78

78:                                               ; preds = %76, %72
  %79 = phi i32 [ %73, %72 ], [ %77, %76 ]
  %80 = lshr i32 %22, 4
  %81 = and i32 %80, 3
  switch i32 %81, label %97 [
    i32 2, label %82
    i32 1, label %84
  ]

82:                                               ; preds = %78
  %83 = add i32 %79, 128
  br label %84

84:                                               ; preds = %82, %78
  %85 = phi i32 [ %79, %78 ], [ %83, %82 ]
  %86 = lshr i32 %22, 6
  switch i32 %86, label %97 [
    i32 2, label %87
    i32 1, label %89
  ]

87:                                               ; preds = %84
  %88 = add i32 %85, 256
  br label %89

89:                                               ; preds = %87, %84
  %90 = phi i32 [ %85, %84 ], [ %88, %87 ]
  %91 = zext i8 %42 to i32
  %92 = shl nuw i32 1, %91
  %93 = getelementptr i8, ptr %1, i32 %90
  %94 = load i8, ptr %93, align 1
  %95 = trunc i32 %92 to i8
  %96 = xor i8 %94, %95
  store i8 %96, ptr %93, align 1
  br label %97

97:                                               ; preds = %89, %84, %78, %72, %67, %62, %56, %50, %45, %41, %35, %29, %26, %4
  %98 = phi i32 [ 1, %89 ], [ 0, %4 ], [ -74, %84 ], [ -74, %78 ], [ -74, %72 ], [ -74, %67 ], [ -74, %62 ], [ -74, %56 ], [ -74, %50 ], [ -74, %45 ], [ -74, %41 ], [ -74, %35 ], [ -74, %29 ], [ -74, %26 ]
  ret i32 %98
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_nfc_bch_calculate(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %6, i32 0, i32 19
  %8 = tail call i32 @wait_for_completion_timeout(ptr noundef %7, i32 noundef 500) #11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %6, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.14) #12
  %13 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %6, i32 0, i32 4
  %14 = load ptr, ptr %13, align 8
  %15 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 592, i32 noundef 18, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %16 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %6, i32 0, i32 11
  store i8 0, ptr %16, align 4
  br label %72

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %6, i32 0, i32 4
  %19 = load ptr, ptr %18, align 8
  %20 = call i32 @regmap_read(ptr noundef %19, i32 noundef 608, ptr noundef nonnull %4) #11
  %21 = load i32, ptr %4, align 4
  %22 = trunc i32 %21 to i8
  store i8 %22, ptr %2, align 1
  %23 = lshr i32 %21, 8
  %24 = trunc i32 %23 to i8
  %25 = getelementptr i8, ptr %2, i32 1
  store i8 %24, ptr %25, align 1
  %26 = lshr i32 %21, 16
  %27 = trunc i32 %26 to i8
  %28 = getelementptr i8, ptr %2, i32 2
  store i8 %27, ptr %28, align 1
  %29 = lshr i32 %21, 24
  %30 = trunc i32 %29 to i8
  %31 = getelementptr i8, ptr %2, i32 3
  store i8 %30, ptr %31, align 1
  %32 = load ptr, ptr %18, align 8
  %33 = call i32 @regmap_read(ptr noundef %32, i32 noundef 612, ptr noundef nonnull %4) #11
  %34 = load i32, ptr %4, align 4
  %35 = trunc i32 %34 to i8
  %36 = getelementptr i8, ptr %2, i32 4
  store i8 %35, ptr %36, align 1
  %37 = lshr i32 %34, 8
  %38 = trunc i32 %37 to i8
  %39 = getelementptr i8, ptr %2, i32 5
  store i8 %38, ptr %39, align 1
  %40 = lshr i32 %34, 16
  %41 = trunc i32 %40 to i8
  %42 = getelementptr i8, ptr %2, i32 6
  store i8 %41, ptr %42, align 1
  %43 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 7
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 8
  br i1 %45, label %46, label %69

46:                                               ; preds = %17
  %47 = lshr i32 %34, 24
  %48 = trunc i32 %47 to i8
  %49 = getelementptr i8, ptr %2, i32 7
  store i8 %48, ptr %49, align 1
  %50 = load ptr, ptr %18, align 8
  %51 = call i32 @regmap_read(ptr noundef %50, i32 noundef 616, ptr noundef nonnull %4) #11
  %52 = load i32, ptr %4, align 4
  %53 = trunc i32 %52 to i8
  %54 = getelementptr i8, ptr %2, i32 8
  store i8 %53, ptr %54, align 1
  %55 = lshr i32 %52, 8
  %56 = trunc i32 %55 to i8
  %57 = getelementptr i8, ptr %2, i32 9
  store i8 %56, ptr %57, align 1
  %58 = lshr i32 %52, 16
  %59 = trunc i32 %58 to i8
  %60 = getelementptr i8, ptr %2, i32 10
  store i8 %59, ptr %60, align 1
  %61 = lshr i32 %52, 24
  %62 = trunc i32 %61 to i8
  %63 = getelementptr i8, ptr %2, i32 11
  store i8 %62, ptr %63, align 1
  %64 = load ptr, ptr %18, align 8
  %65 = call i32 @regmap_read(ptr noundef %64, i32 noundef 620, ptr noundef nonnull %4) #11
  %66 = load i32, ptr %4, align 4
  %67 = trunc i32 %66 to i8
  %68 = getelementptr i8, ptr %2, i32 12
  store i8 %67, ptr %68, align 1
  br label %69

69:                                               ; preds = %46, %17
  %70 = load ptr, ptr %18, align 8
  %71 = call i32 @regmap_update_bits_base(ptr noundef %70, i32 noundef 128, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %72

72:                                               ; preds = %69, %10
  %73 = phi i32 [ 0, %69 ], [ -110, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_nfc_bch_correct(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #2 {
  %5 = alloca [8 x i16], align 2
  %6 = alloca [5 x i32], align 4
  %7 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 20, i1 false), !annotation !8
  %9 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %8, i32 0, i32 19
  %10 = tail call i32 @wait_for_completion_timeout(ptr noundef %9, i32 noundef 500) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %8, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.14) #12
  %15 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %8, i32 0, i32 4
  %16 = load ptr, ptr %15, align 8
  %17 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 592, i32 noundef 18, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %18 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %8, i32 0, i32 11
  store i8 0, ptr %18, align 4
  br label %91

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %8, i32 0, i32 4
  %21 = load ptr, ptr %20, align 8
  %22 = call i32 @regmap_bulk_read(ptr noundef %21, i32 noundef 636, ptr noundef nonnull %6, i32 noundef 5) #11
  %23 = load ptr, ptr %20, align 8
  %24 = call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 128, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %25 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  %26 = load i32, ptr %25, align 8
  %27 = load i32, ptr %6, align 4
  %28 = getelementptr inbounds i32, ptr %6, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds i32, ptr %6, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds i32, ptr %6, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds i32, ptr %6, i32 4
  %35 = load i32, ptr %34, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %36 = and i32 %27, 2
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %89, label %38, !prof !9

38:                                               ; preds = %19
  %39 = and i32 %27, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %89, !prof !9

41:                                               ; preds = %38
  %42 = trunc i32 %29 to i16
  %43 = and i16 %42, 8191
  store i16 %43, ptr %5, align 2
  %44 = lshr i32 %29, 16
  %45 = trunc i32 %44 to i16
  %46 = and i16 %45, 8191
  %47 = getelementptr inbounds [8 x i16], ptr %5, i32 0, i32 1
  store i16 %46, ptr %47, align 2
  %48 = trunc i32 %31 to i16
  %49 = and i16 %48, 8191
  %50 = getelementptr inbounds [8 x i16], ptr %5, i32 0, i32 2
  store i16 %49, ptr %50, align 2
  %51 = lshr i32 %31, 16
  %52 = trunc i32 %51 to i16
  %53 = and i16 %52, 8191
  %54 = getelementptr inbounds [8 x i16], ptr %5, i32 0, i32 3
  store i16 %53, ptr %54, align 2
  %55 = trunc i32 %33 to i16
  %56 = and i16 %55, 8191
  %57 = getelementptr inbounds [8 x i16], ptr %5, i32 0, i32 4
  store i16 %56, ptr %57, align 2
  %58 = lshr i32 %33, 16
  %59 = trunc i32 %58 to i16
  %60 = and i16 %59, 8191
  %61 = getelementptr inbounds [8 x i16], ptr %5, i32 0, i32 5
  store i16 %60, ptr %61, align 2
  %62 = trunc i32 %35 to i16
  %63 = and i16 %62, 8191
  %64 = getelementptr inbounds [8 x i16], ptr %5, i32 0, i32 6
  store i16 %63, ptr %64, align 2
  %65 = lshr i32 %35, 16
  %66 = trunc i32 %65 to i16
  %67 = and i16 %66, 8191
  %68 = getelementptr inbounds [8 x i16], ptr %5, i32 0, i32 7
  store i16 %67, ptr %68, align 2
  %69 = lshr i32 %27, 4
  %70 = and i32 %69, 15
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %89, label %72

72:                                               ; preds = %41
  %73 = shl i32 %26, 3
  br label %74

74:                                               ; preds = %86, %72
  %75 = phi i16 [ %43, %72 ], [ %88, %86 ]
  %76 = phi i32 [ 0, %72 ], [ %84, %86 ]
  %77 = phi i32 [ 0, %72 ], [ %83, %86 ]
  %78 = zext i16 %75 to i32
  %79 = icmp sgt i32 %73, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  call void @_change_bit(i32 noundef %78, ptr noundef %1) #11
  %81 = add i32 %77, 1
  br label %82

82:                                               ; preds = %80, %74
  %83 = phi i32 [ %81, %80 ], [ %77, %74 ]
  %84 = add nuw nsw i32 %76, 1
  %85 = icmp eq i32 %84, %70
  br i1 %85, label %89, label %86

86:                                               ; preds = %82
  %87 = getelementptr [8 x i16], ptr %5, i32 0, i32 %84
  %88 = load i16, ptr %87, align 2
  br label %74

89:                                               ; preds = %82, %41, %38, %19
  %90 = phi i32 [ 0, %19 ], [ -74, %38 ], [ 0, %41 ], [ %83, %82 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  br label %91

91:                                               ; preds = %89, %12
  %92 = phi i32 [ %90, %89 ], [ -110, %12 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #11
  ret i32 %92
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_nfc_read_page(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 11
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 12
  %16 = load ptr, ptr %15, align 8
  %17 = tail call i32 @nand_read_page_op(ptr noundef %0, i32 noundef %3, i32 noundef 0, ptr noundef null, i32 noundef 0) #11
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %75

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %21 = icmp sgt i32 %10, 0
  br i1 %21, label %22, label %63

22:                                               ; preds = %19
  %23 = load i32, ptr %20, align 4
  %24 = add i32 %23, 2
  %25 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 13
  %26 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 15
  %27 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52
  %28 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52, i32 1
  br label %29

29:                                               ; preds = %57, %22
  %30 = phi i32 [ 0, %22 ], [ %58, %57 ]
  %31 = phi ptr [ %1, %22 ], [ %61, %57 ]
  %32 = phi i32 [ 0, %22 ], [ %59, %57 ]
  %33 = phi i32 [ %24, %22 ], [ %60, %57 ]
  %34 = load ptr, ptr %25, align 4
  tail call void %34(ptr noundef %0, i32 noundef 0) #11
  %35 = mul i32 %32, %6
  %36 = tail call i32 @nand_change_read_column_op(ptr noundef %0, i32 noundef %35, ptr noundef %31, i32 noundef %6, i1 noundef zeroext false) #11
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %75

38:                                               ; preds = %29
  %39 = tail call i32 @nand_change_read_column_op(ptr noundef %0, i32 noundef %33, ptr noundef %16, i32 noundef %8, i1 noundef zeroext false) #11
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %75

41:                                               ; preds = %38
  %42 = load ptr, ptr %26, align 4
  %43 = tail call i32 %42(ptr noundef %0, ptr noundef %31, ptr noundef %16, ptr noundef %14) #11
  %44 = icmp eq i32 %43, -74
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = tail call i32 @nand_check_erased_ecc_chunk(ptr noundef %31, i32 noundef %6, ptr noundef %16, i32 noundef %8, ptr noundef null, i32 noundef 0, i32 noundef %12) #11
  br label %47

47:                                               ; preds = %45, %41
  %48 = phi i32 [ %46, %45 ], [ %43, %41 ]
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, ptr %28, align 4
  %52 = add i32 %51, 1
  store i32 %52, ptr %28, align 4
  br label %57

53:                                               ; preds = %47
  %54 = load i32, ptr %27, align 4
  %55 = add i32 %54, %48
  store i32 %55, ptr %27, align 4
  %56 = tail call i32 @llvm.umax.i32(i32 %30, i32 %48)
  br label %57

57:                                               ; preds = %53, %50
  %58 = phi i32 [ %30, %50 ], [ %56, %53 ]
  %59 = add nuw nsw i32 %32, 1
  %60 = add i32 %33, %8
  %61 = getelementptr i8, ptr %31, i32 %6
  %62 = icmp eq i32 %59, %10
  br i1 %62, label %63, label %29

63:                                               ; preds = %57, %19
  %64 = phi i32 [ 0, %19 ], [ %58, %57 ]
  %65 = icmp eq i32 %2, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %63
  %67 = load i32, ptr %20, align 4
  %68 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %71 = load i32, ptr %70, align 4
  %72 = tail call i32 @nand_change_read_column_op(ptr noundef %0, i32 noundef %67, ptr noundef %69, i32 noundef %71, i1 noundef zeroext false) #11
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %66, %63
  br label %75

75:                                               ; preds = %74, %66, %38, %29, %4
  %76 = phi i32 [ %64, %74 ], [ %17, %4 ], [ %72, %66 ], [ %39, %38 ], [ %36, %29 ]
  ret i32 %76
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_check_erased_ecc_chunk(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_change_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stm32_fmc2_nfc_select_chip(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca %struct.dma_slave_config, align 4
  %4 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #11
  %6 = getelementptr %struct.stm32_fmc2_nand, ptr %0, i32 0, i32 3, i32 %1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %5, i32 0, i32 23
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %7, %9
  br i1 %10, label %151, label %11

11:                                               ; preds = %2
  store i32 %7, ptr %8, align 8
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 4
  %16 = icmp eq i32 %14, 8
  %17 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %18 = load i32, ptr %17, align 8
  %19 = shl i32 %18, 3
  %20 = and i32 %19, 16
  %21 = select i1 %15, i32 131328, i32 131072
  %22 = select i1 %16, i32 16908544, i32 %21
  %23 = or i32 %22, %20
  %24 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %12, i32 0, i32 4
  %25 = load ptr, ptr %24, align 8
  %26 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 128, i32 noundef 17695024, i32 noundef %23, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr inbounds %struct.stm32_fmc2_nand, ptr %0, i32 0, i32 1
  %29 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %27, i32 0, i32 4
  %30 = load ptr, ptr %29, align 8
  %31 = load i8, ptr %28, align 1
  %32 = getelementptr inbounds %struct.stm32_fmc2_nand, ptr %0, i32 0, i32 1, i32 1
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %31 to i32
  %35 = shl nuw nsw i32 %34, 9
  %36 = and i32 %35, 7680
  %37 = zext i8 %33 to i32
  %38 = shl nuw nsw i32 %37, 13
  %39 = and i32 %38, 122880
  %40 = or i32 %39, %36
  %41 = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 128, i32 noundef 130560, i32 noundef %40, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %42 = getelementptr inbounds %struct.stm32_fmc2_nand, ptr %0, i32 0, i32 1, i32 5
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = getelementptr inbounds %struct.stm32_fmc2_nand, ptr %0, i32 0, i32 1, i32 3
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  %48 = shl nuw nsw i32 %47, 8
  %49 = or i32 %48, %44
  %50 = getelementptr inbounds %struct.stm32_fmc2_nand, ptr %0, i32 0, i32 1, i32 4
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i32
  %53 = shl nuw nsw i32 %52, 16
  %54 = or i32 %49, %53
  %55 = getelementptr inbounds %struct.stm32_fmc2_nand, ptr %0, i32 0, i32 1, i32 2
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %56 to i32
  %58 = shl nuw i32 %57, 24
  %59 = or i32 %54, %58
  %60 = load ptr, ptr %29, align 8
  %61 = tail call i32 @regmap_write(ptr noundef %60, i32 noundef 136, i32 noundef %59) #11
  %62 = getelementptr inbounds %struct.stm32_fmc2_nand, ptr %0, i32 0, i32 1, i32 7
  %63 = load i8, ptr %62, align 1
  %64 = load i8, ptr %45, align 1
  %65 = getelementptr inbounds %struct.stm32_fmc2_nand, ptr %0, i32 0, i32 1, i32 6
  %66 = load i8, ptr %65, align 1
  %67 = load i8, ptr %55, align 1
  %68 = zext i8 %64 to i32
  %69 = shl nuw nsw i32 %68, 8
  %70 = zext i8 %63 to i32
  %71 = or i32 %69, %70
  %72 = zext i8 %66 to i32
  %73 = shl nuw nsw i32 %72, 16
  %74 = or i32 %71, %73
  %75 = zext i8 %67 to i32
  %76 = shl nuw i32 %75, 24
  %77 = or i32 %74, %76
  %78 = load ptr, ptr %29, align 8
  %79 = tail call i32 @regmap_write(ptr noundef %78, i32 noundef 140, i32 noundef %77) #11
  %80 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %5, i32 0, i32 12
  %81 = load ptr, ptr %80, align 8
  %82 = icmp eq ptr %81, null
  br i1 %82, label %122, label %83

83:                                               ; preds = %11
  %84 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %5, i32 0, i32 13
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %122, label %87

87:                                               ; preds = %83
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %3, i8 0, i32 48, i1 false)
  %88 = load i32, ptr %8, align 8
  %89 = getelementptr %struct.stm32_fmc2_nfc, ptr %5, i32 0, i32 9, i32 %88
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 1
  store i32 %90, ptr %91, align 4
  %92 = load i32, ptr %89, align 4
  %93 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 2
  store i32 %92, ptr %93, align 4
  %94 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 3
  store i32 4, ptr %94, align 4
  %95 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 4
  store i32 4, ptr %95, align 4
  %96 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 5
  store i32 32, ptr %96, align 4
  %97 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 6
  store i32 32, ptr %97, align 4
  %98 = load ptr, ptr %81, align 4
  %99 = getelementptr inbounds %struct.dma_device, ptr %98, i32 0, i32 44
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %87
  %103 = call i32 %100(ptr noundef nonnull %81, ptr noundef nonnull %3) #11
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %102, %87
  %106 = phi i32 [ %103, %102 ], [ -38, %87 ]
  %107 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %5, i32 0, i32 2
  %108 = load ptr, ptr %107, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %108, ptr noundef nonnull @.str.7) #12
  br label %151

109:                                              ; preds = %102
  %110 = load ptr, ptr %84, align 4
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr inbounds %struct.dma_device, ptr %111, i32 0, i32 44
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %118, label %115

115:                                              ; preds = %109
  %116 = call i32 %113(ptr noundef %110, ptr noundef nonnull %3) #11
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %115, %109
  %119 = phi i32 [ %116, %115 ], [ -38, %109 ]
  %120 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %5, i32 0, i32 2
  %121 = load ptr, ptr %120, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %121, ptr noundef nonnull @.str.8) #12
  br label %151

122:                                              ; preds = %115, %83, %11
  %123 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %5, i32 0, i32 14
  %124 = load ptr, ptr %123, align 8
  %125 = icmp eq ptr %124, null
  br i1 %125, label %151, label %126

126:                                              ; preds = %122
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %3, i8 0, i32 48, i1 false)
  %127 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %5, i32 0, i32 8
  %128 = load i32, ptr %127, align 4
  %129 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 1
  %130 = load i32, ptr %13, align 4
  %131 = icmp eq i32 %130, 1
  %132 = select i1 %131, i32 148, i32 636
  %133 = add i32 %132, %128
  store i32 %133, ptr %129, align 4
  %134 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 3
  store i32 4, ptr %134, align 4
  %135 = load ptr, ptr %124, align 4
  %136 = getelementptr inbounds %struct.dma_device, ptr %135, i32 0, i32 44
  %137 = load ptr, ptr %136, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %126
  %140 = call i32 %137(ptr noundef nonnull %124, ptr noundef nonnull %3) #11
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %146, label %142

142:                                              ; preds = %139, %126
  %143 = phi i32 [ %140, %139 ], [ -38, %126 ]
  %144 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %5, i32 0, i32 2
  %145 = load ptr, ptr %144, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %145, ptr noundef nonnull @.str.9) #12
  br label %151

146:                                              ; preds = %139
  %147 = load i32, ptr %13, align 4
  %148 = icmp eq i32 %147, 1
  %149 = select i1 %148, i32 4, i32 20
  %150 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %5, i32 0, i32 18
  store i32 %149, ptr %150, align 8
  br label %151

151:                                              ; preds = %146, %142, %122, %118, %105, %2
  %152 = phi i32 [ %106, %105 ], [ %119, %118 ], [ %143, %142 ], [ 0, %2 ], [ 0, %146 ], [ 0, %122 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #11
  ret i32 %152
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stm32_fmc2_nfc_rw_page_init(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #2 {
  %5 = alloca [5 x i32], align 4
  %6 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !8
  %11 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %7, i32 0, i32 4
  %12 = load ptr, ptr %11, align 8
  %13 = select i1 %3, i32 33554432, i32 0
  %14 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 128, i32 noundef 33554432, i32 noundef %13, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %15 = select i1 %3, i32 16809988, i32 53477382
  %16 = select i1 %3, i32 34048, i32 65012994
  %17 = getelementptr inbounds [5 x i32], ptr %5, i32 0, i32 1
  %18 = icmp eq i32 %2, 0
  %19 = select i1 %3, i32 34049, i32 65012999
  %20 = select i1 %18, i32 %19, i32 %16
  store i32 %20, ptr %17, align 4
  %21 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = shl i32 %22, 8
  %24 = add i32 %23, 16128
  %25 = and i32 %24, 16128
  %26 = getelementptr inbounds [5 x i32], ptr %5, i32 0, i32 2
  store i32 %25, ptr %26, align 4
  br i1 %3, label %27, label %34

27:                                               ; preds = %4
  %28 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 16384
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 8912896, i32 9437184
  %33 = or i32 %25, %32
  store i32 %33, ptr %26, align 4
  br label %34

34:                                               ; preds = %27, %4
  %35 = getelementptr inbounds [5 x i32], ptr %5, i32 0, i32 3
  %36 = shl i32 %1, 16
  %37 = and i32 %36, 16711680
  %38 = shl i32 %1, 16
  %39 = and i32 %38, -16777216
  %40 = or i32 %37, %39
  store i32 %40, ptr %35, align 4
  %41 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %7, i32 0, i32 23
  %42 = load i32, ptr %41, align 8
  %43 = shl i32 %42, 10
  %44 = and i32 %43, 3072
  %45 = getelementptr inbounds [5 x i32], ptr %5, i32 0, i32 4
  %46 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %47 = load i32, ptr %46, align 8
  %48 = lshr i32 %47, 1
  %49 = and i32 %48, 1
  %50 = lshr i32 %10, %49
  %51 = shl i32 %50, 16
  %52 = or i32 %51, %44
  store i32 %52, ptr %45, align 4
  %53 = and i32 %47, 16384
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %34
  %56 = or i32 %15, 80
  store i32 %56, ptr %5, align 4
  %57 = lshr i32 %1, 16
  %58 = and i32 %57, 255
  %59 = or i32 %52, %58
  store i32 %59, ptr %45, align 4
  br label %62

60:                                               ; preds = %34
  %61 = or i32 %15, 64
  store i32 %61, ptr %5, align 4
  br label %62

62:                                               ; preds = %60, %55
  %63 = load ptr, ptr %11, align 8
  %64 = call i32 @regmap_bulk_write(ptr noundef %63, i32 noundef 516, ptr noundef nonnull %5, i32 noundef 5) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stm32_fmc2_nfc_xfer(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %6, i32 0, i32 13
  %8 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %6, i32 0, i32 12
  %13 = select i1 %3, ptr %12, ptr %7
  %14 = select i1 %3, i32 1, i32 2
  %15 = load ptr, ptr %13, align 4
  %16 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %6, i32 0, i32 15
  %17 = load ptr, ptr %16, align 4
  %18 = icmp sgt i32 %9, 0
  br i1 %18, label %19, label %45

19:                                               ; preds = %32, %4
  %20 = phi i32 [ %40, %32 ], [ 0, %4 ]
  %21 = phi ptr [ %39, %32 ], [ %1, %4 ]
  %22 = phi ptr [ %41, %32 ], [ %17, %4 ]
  %23 = load ptr, ptr @mem_map, align 4
  %24 = ptrtoint ptr %21 to i32
  %25 = add i32 %24, 1073741824
  %26 = lshr i32 %25, 12
  %27 = getelementptr %struct.page, ptr %23, i32 %26
  %28 = ptrtoint ptr %27 to i32
  %29 = and i32 %28, 3
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31, !prof !9

31:                                               ; preds = %19
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #11, !srcloc !17
  unreachable

32:                                               ; preds = %19
  %33 = and i32 %24, 4095
  %34 = load i32, ptr %22, align 4
  %35 = and i32 %34, 3
  %36 = or i32 %35, %28
  store i32 %36, ptr %22, align 4
  %37 = getelementptr inbounds %struct.scatterlist, ptr %22, i32 0, i32 1
  store i32 %33, ptr %37, align 4
  %38 = getelementptr inbounds %struct.scatterlist, ptr %22, i32 0, i32 2
  store i32 %11, ptr %38, align 4
  %39 = getelementptr i8, ptr %21, i32 %11
  %40 = add nuw nsw i32 %20, 1
  %41 = tail call ptr @sg_next(ptr noundef %22) #11
  %42 = icmp eq i32 %40, %9
  br i1 %42, label %43, label %19

43:                                               ; preds = %32
  %44 = load ptr, ptr %16, align 4
  br label %45

45:                                               ; preds = %43, %4
  %46 = phi ptr [ %44, %43 ], [ %17, %4 ]
  %47 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %6, i32 0, i32 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call i32 @dma_map_sg_attrs(ptr noundef %48, ptr noundef %46, i32 noundef %9, i32 noundef %14, i32 noundef 0) #11
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %214, label %51

51:                                               ; preds = %45
  %52 = load ptr, ptr %16, align 4
  %53 = icmp eq ptr %15, null
  br i1 %53, label %210, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr %15, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %210, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.dma_device, ptr %55, i32 0, i32 39
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %210, label %61

61:                                               ; preds = %57
  %62 = tail call ptr %59(ptr noundef nonnull %15, ptr noundef %52, i32 noundef %9, i32 noundef %14, i32 noundef 1, ptr noundef null) #11
  %63 = icmp eq ptr %62, null
  br i1 %63, label %210, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %6, i32 0, i32 20
  store i32 0, ptr %65, align 4
  %66 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %6, i32 0, i32 19
  store i32 0, ptr %66, align 4
  %67 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %62, i32 0, i32 6
  store ptr @stm32_fmc2_nfc_dma_callback, ptr %67, align 4
  %68 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %62, i32 0, i32 8
  store ptr %65, ptr %68, align 4
  %69 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %62, i32 0, i32 4
  %70 = load ptr, ptr %69, align 4
  %71 = tail call i32 %70(ptr noundef nonnull %62) #11
  %72 = tail call i32 @llvm.smin.i32(i32 %71, i32 0) #11
  %73 = icmp sgt i32 %71, -1
  br i1 %73, label %74, label %210

74:                                               ; preds = %64
  %75 = load ptr, ptr %15, align 4
  %76 = getelementptr inbounds %struct.dma_device, ptr %75, i32 0, i32 50
  %77 = load ptr, ptr %76, align 4
  tail call void %77(ptr noundef nonnull %15) #11
  %78 = icmp ne i32 %2, 0
  %79 = or i1 %78, %3
  br i1 %79, label %147, label %80

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %6, i32 0, i32 16
  br i1 %18, label %82, label %113

82:                                               ; preds = %80
  %83 = load ptr, ptr %81, align 8
  %84 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %6, i32 0, i32 17
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %6, i32 0, i32 18
  br label %87

87:                                               ; preds = %100, %82
  %88 = phi i32 [ 0, %82 ], [ %110, %100 ]
  %89 = phi ptr [ %85, %82 ], [ %109, %100 ]
  %90 = phi ptr [ %83, %82 ], [ %111, %100 ]
  %91 = load ptr, ptr @mem_map, align 4
  %92 = ptrtoint ptr %89 to i32
  %93 = add i32 %92, 1073741824
  %94 = lshr i32 %93, 12
  %95 = getelementptr %struct.page, ptr %91, i32 %94
  %96 = ptrtoint ptr %95 to i32
  %97 = and i32 %96, 3
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %100, label %99, !prof !9

99:                                               ; preds = %87
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #11, !srcloc !17
  unreachable

100:                                              ; preds = %87
  %101 = load i32, ptr %86, align 8
  %102 = and i32 %92, 4095
  %103 = load i32, ptr %90, align 4
  %104 = and i32 %103, 3
  %105 = or i32 %104, %96
  store i32 %105, ptr %90, align 4
  %106 = getelementptr inbounds %struct.scatterlist, ptr %90, i32 0, i32 1
  store i32 %102, ptr %106, align 4
  %107 = getelementptr inbounds %struct.scatterlist, ptr %90, i32 0, i32 2
  store i32 %101, ptr %107, align 4
  %108 = load i32, ptr %86, align 8
  %109 = getelementptr i8, ptr %89, i32 %108
  %110 = add nuw nsw i32 %88, 1
  %111 = tail call ptr @sg_next(ptr noundef %90) #11
  %112 = icmp eq i32 %110, %9
  br i1 %112, label %113, label %87

113:                                              ; preds = %100, %80
  %114 = load ptr, ptr %47, align 8
  %115 = load ptr, ptr %81, align 8
  %116 = tail call i32 @dma_map_sg_attrs(ptr noundef %114, ptr noundef %115, i32 noundef %9, i32 noundef %14, i32 noundef 0) #11
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %210, label %118

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %6, i32 0, i32 14
  %120 = load ptr, ptr %119, align 8
  %121 = load ptr, ptr %81, align 8
  %122 = icmp eq ptr %120, null
  br i1 %122, label %205, label %123

123:                                              ; preds = %118
  %124 = load ptr, ptr %120, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %205, label %126

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct.dma_device, ptr %124, i32 0, i32 39
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %205, label %130

130:                                              ; preds = %126
  %131 = tail call ptr %128(ptr noundef nonnull %120, ptr noundef %121, i32 noundef %9, i32 noundef %14, i32 noundef 1, ptr noundef null) #11
  %132 = icmp eq ptr %131, null
  br i1 %132, label %205, label %133

133:                                              ; preds = %130
  %134 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %6, i32 0, i32 21
  store i32 0, ptr %134, align 4
  %135 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %131, i32 0, i32 6
  store ptr @stm32_fmc2_nfc_dma_callback, ptr %135, align 4
  %136 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %131, i32 0, i32 8
  store ptr %134, ptr %136, align 4
  %137 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %131, i32 0, i32 4
  %138 = load ptr, ptr %137, align 4
  %139 = tail call i32 %138(ptr noundef nonnull %131) #11
  %140 = tail call i32 @llvm.smin.i32(i32 %139, i32 0) #11
  %141 = icmp sgt i32 %139, -1
  br i1 %141, label %142, label %205

142:                                              ; preds = %133
  %143 = load ptr, ptr %119, align 8
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr inbounds %struct.dma_device, ptr %144, i32 0, i32 50
  %146 = load ptr, ptr %145, align 4
  tail call void %146(ptr noundef %143) #11
  br label %147

147:                                              ; preds = %142, %74
  %148 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %6, i32 0, i32 4
  %149 = load ptr, ptr %148, align 8
  %150 = tail call i32 @regmap_write(ptr noundef %149, i32 noundef 552, i32 noundef 31) #11
  %151 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %6, i32 0, i32 11
  store i8 2, ptr %151, align 4
  %152 = load ptr, ptr %148, align 8
  %153 = tail call i32 @regmap_update_bits_base(ptr noundef %152, i32 noundef 544, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %154 = load ptr, ptr %148, align 8
  %155 = tail call i32 @regmap_update_bits_base(ptr noundef %154, i32 noundef 512, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %156 = tail call i32 @wait_for_completion_timeout(ptr noundef %66, i32 noundef 500) #11
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %178

158:                                              ; preds = %147
  %159 = load ptr, ptr %47, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %159, ptr noundef nonnull @.str.10) #12
  %160 = load ptr, ptr %148, align 8
  %161 = tail call i32 @regmap_update_bits_base(ptr noundef %160, i32 noundef 544, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  store i8 0, ptr %151, align 4
  %162 = load ptr, ptr %15, align 4
  %163 = getelementptr inbounds %struct.dma_device, ptr %162, i32 0, i32 47
  %164 = load ptr, ptr %163, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %168, label %166

166:                                              ; preds = %158
  %167 = tail call i32 %164(ptr noundef nonnull %15) #11
  br label %168

168:                                              ; preds = %166, %158
  br i1 %79, label %210, label %169

169:                                              ; preds = %168
  %170 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %6, i32 0, i32 14
  %171 = load ptr, ptr %170, align 8
  %172 = load ptr, ptr %171, align 4
  %173 = getelementptr inbounds %struct.dma_device, ptr %172, i32 0, i32 47
  %174 = load ptr, ptr %173, align 4
  %175 = icmp eq ptr %174, null
  br i1 %175, label %205, label %176

176:                                              ; preds = %169
  %177 = tail call i32 %174(ptr noundef %171) #11
  br label %205

178:                                              ; preds = %147
  %179 = tail call i32 @wait_for_completion_timeout(ptr noundef %65, i32 noundef 500) #11
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %189

181:                                              ; preds = %178
  %182 = load ptr, ptr %47, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %182, ptr noundef nonnull @.str.11) #12
  %183 = load ptr, ptr %15, align 4
  %184 = getelementptr inbounds %struct.dma_device, ptr %183, i32 0, i32 47
  %185 = load ptr, ptr %184, align 4
  %186 = icmp eq ptr %185, null
  br i1 %186, label %189, label %187

187:                                              ; preds = %181
  %188 = tail call i32 %185(ptr noundef nonnull %15) #11
  br label %189

189:                                              ; preds = %187, %181, %178
  %190 = phi i32 [ 0, %178 ], [ -110, %181 ], [ -110, %187 ]
  br i1 %79, label %210, label %191

191:                                              ; preds = %189
  %192 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %6, i32 0, i32 21
  %193 = tail call i32 @wait_for_completion_timeout(ptr noundef %192, i32 noundef 500) #11
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %205

195:                                              ; preds = %191
  %196 = load ptr, ptr %47, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %196, ptr noundef nonnull @.str.12) #12
  %197 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %6, i32 0, i32 14
  %198 = load ptr, ptr %197, align 8
  %199 = load ptr, ptr %198, align 4
  %200 = getelementptr inbounds %struct.dma_device, ptr %199, i32 0, i32 47
  %201 = load ptr, ptr %200, align 4
  %202 = icmp eq ptr %201, null
  br i1 %202, label %205, label %203

203:                                              ; preds = %195
  %204 = tail call i32 %201(ptr noundef %198) #11
  br label %205

205:                                              ; preds = %203, %195, %191, %176, %169, %133, %130, %126, %123, %118
  %206 = phi i32 [ -110, %203 ], [ -110, %195 ], [ -110, %176 ], [ -110, %169 ], [ %190, %191 ], [ %140, %133 ], [ -12, %130 ], [ -12, %126 ], [ -12, %123 ], [ -12, %118 ]
  %207 = load ptr, ptr %47, align 8
  %208 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %6, i32 0, i32 16
  %209 = load ptr, ptr %208, align 8
  tail call void @dma_unmap_sg_attrs(ptr noundef %207, ptr noundef %209, i32 noundef %9, i32 noundef %14, i32 noundef 0) #11
  br label %210

210:                                              ; preds = %205, %189, %168, %113, %64, %61, %57, %54, %51
  %211 = phi i32 [ %72, %64 ], [ %206, %205 ], [ %116, %113 ], [ -12, %61 ], [ -12, %57 ], [ -12, %54 ], [ -12, %51 ], [ -110, %168 ], [ %190, %189 ]
  %212 = load ptr, ptr %47, align 8
  %213 = load ptr, ptr %16, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %212, ptr noundef %213, i32 noundef %9, i32 noundef %14, i32 noundef 0) #11
  br label %214

214:                                              ; preds = %210, %45
  %215 = phi i32 [ %211, %210 ], [ %49, %45 ]
  ret i32 %215
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_change_write_column_op(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_prog_page_end_op(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_fmc2_nfc_dma_callback(ptr noundef %0) #2 {
  tail call void @complete(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_change_read_column_op(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_ooblayout_get_eccbytes(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_page_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @stm32_fmc2_nfc_ooblayout_ecc(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mtd_oob_region, ptr %2, i32 0, i32 1
  store i32 %7, ptr %8, align 4
  store i32 2, ptr %2, align 4
  br label %9

9:                                                ; preds = %5, %3
  %10 = phi i32 [ 0, %5 ], [ -34, %3 ]
  ret i32 %10
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @stm32_fmc2_nfc_ooblayout_free(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %7, -2
  %11 = sub i32 %10, %9
  %12 = getelementptr inbounds %struct.mtd_oob_region, ptr %2, i32 0, i32 1
  store i32 %11, ptr %12, align 4
  %13 = load i32, ptr %8, align 4
  %14 = add i32 %13, 2
  store i32 %14, ptr %2, align 4
  br label %15

15:                                               ; preds = %5, %3
  %16 = phi i32 [ 0, %5 ], [ -34, %3 ]
  ret i32 %16
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_scan_with_ids(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_nfc_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 8
  tail call void @clk_disable(ptr noundef %5) #11
  tail call void @clk_unprepare(ptr noundef %5) #11
  %6 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %0) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_nfc_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %3, i32 0, i32 1
  %5 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %0) #11
  %6 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %3, i32 0, i32 10
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @clk_prepare(ptr noundef %7) #11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = tail call i32 @clk_enable(ptr noundef %7) #11
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  tail call void @clk_unprepare(ptr noundef %7) #11
  br label %14

14:                                               ; preds = %13, %1
  %15 = phi i32 [ %11, %13 ], [ %8, %1 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.2) #12
  br label %32

16:                                               ; preds = %10
  tail call fastcc void @stm32_fmc2_nfc_init(ptr noundef %3)
  %17 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %3, i32 0, i32 22
  %18 = load i8, ptr %17, align 4
  %19 = zext i8 %18 to i32
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = tail call i32 @nand_reset(ptr noundef %4, i32 noundef 0) #11
  %24 = load i8, ptr %17, align 4
  %25 = zext i8 %24 to i32
  br label %26

26:                                               ; preds = %22, %16
  %27 = phi i32 [ %19, %16 ], [ %25, %22 ]
  %28 = and i32 %27, 2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = tail call i32 @nand_reset(ptr noundef %4, i32 noundef 1) #11
  br label %32

32:                                               ; preds = %30, %26, %14
  %33 = phi i32 [ %15, %14 ], [ 0, %30 ], [ 0, %26 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_reset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 5118656}
!11 = !{i8 0, i8 2}
!12 = !{i64 5119051}
!13 = !{i64 5118433}
!14 = !{i64 5119271}
!15 = !{i64 5118233}
!16 = !{i64 5118853}
!17 = !{i64 2152675873, i64 2152676365, i64 2152675910, i64 2152675966, i64 2152676000, i64 2152676024, i64 2152676065, i64 2152676086, i64 2152676114, i64 2152676148}
