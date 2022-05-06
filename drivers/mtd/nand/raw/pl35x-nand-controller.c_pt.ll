; ModuleID = '/llk/IR/drivers/mtd/nand/raw/pl35x-nand-controller.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/pl35x-nand-controller.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.nand_bbt_descr = type { i32, [8 x i32], i32, i32, [8 x i8], i32, i32, i32, ptr }
%struct.mtd_ooblayout_ops = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.nand_op_parser = type { ptr, i32 }
%struct.nand_op_parser_pattern_elem = type { i32, i8, %union.anon.81 }
%union.anon.81 = type { %struct.nand_op_parser_addr_constraints }
%struct.nand_op_parser_addr_constraints = type { i32 }
%struct.nand_op_parser_data_constraints = type { i32 }
%struct.nand_op_parser_pattern = type { ptr, i32, ptr }
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
%struct.pl35x_nandc = type { ptr, ptr, ptr, %struct.nand_controller, %struct.list_head, ptr, i32, ptr }
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.amba_device = type { %struct.device, %struct.resource, ptr, %struct.device_dma_parameters, i32, i32, %struct.amba_cs_uci_id, [9 x i32], ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.amba_cs_uci_id = type { i32, i32, i32, ptr }
%struct.pl35x_nand = type { %struct.list_head, %struct.nand_chip, i32, i32, i32, i32 }
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.80, i32, %struct.mutex, i8, i32, i32, ptr, i8, ptr, %struct.nand_ecc_ctrl, ptr }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.74 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.74 = type { %struct.mtd_part, [16 x i8] }
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
%struct.anon.80 = type { i32, i32 }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nand_interface_config = type { i32, %struct.nand_timings }
%struct.nand_timings = type { i32, %union.anon.77 }
%union.anon.77 = type { %struct.nand_sdr_timings }
%struct.nand_sdr_timings = type { i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.mtd_oob_region = type { i32, i32 }
%struct.nand_subop = type { i32, ptr, i32, i32, i32 }
%struct.nand_op_instr = type { i32, %union.anon.75, i32 }
%union.anon.75 = type { %struct.nand_op_data_instr }
%struct.nand_op_data_instr = type { i32, %union.anon.76, i8 }
%union.anon.76 = type { ptr }

@__initcall__kmod_pl35x_nand_controller__259_1189_pl35x_nandc_driver_init6 = internal global ptr @pl35x_nandc_driver_init, section ".initcall6.init", align 4
@pl35x_nandc_driver = internal global %struct.platform_driver { ptr @pl35x_nand_probe, ptr @pl35x_nand_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pl35x_nand_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_pl35x_nandc_driver_exit = internal global ptr @pl35x_nandc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author260 = internal constant [42 x i8] c"pl35x_nand_controller.author=Xilinx, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_alias261 = internal constant [59 x i8] c"pl35x_nand_controller.alias=platform:pl35x-nand-controller\00", section ".modinfo", align 1
@__UNIQUE_ID_description262 = internal constant [67 x i8] c"pl35x_nand_controller.description=ARM PL35X NAND controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file263 = internal constant [70 x i8] c"pl35x_nand_controller.file=drivers/mtd/nand/raw/pl35x-nand-controller\00", section ".modinfo", align 1
@__UNIQUE_ID_license264 = internal constant [34 x i8] c"pl35x_nand_controller.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [22 x i8] c"pl35x-nand-controller\00", align 1
@pl35x_nand_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,pl353-nand-r2p1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@pl35x_nandc_ops = internal constant %struct.nand_controller_ops { ptr @pl35x_nand_attach_chip, ptr null, ptr @pl35x_nfc_exec_op, ptr @pl35x_nfc_setup_interface }, align 4
@nand_controller_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"&nfc->lock\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"No minimum ECC strength, using 1b/512B\0A\00", align 1
@bbt_main_descr = internal global %struct.nand_bbt_descr { i32 9106, [8 x i32] zeroinitializer, i32 4, i32 20, [8 x i8] zeroinitializer, i32 4, i32 4, i32 0, ptr @bbt_pattern }, align 4
@bbt_mirror_descr = internal global %struct.nand_bbt_descr { i32 9106, [8 x i32] zeroinitializer, i32 4, i32 20, [8 x i8] zeroinitializer, i32 4, i32 4, i32 0, ptr @mirror_pattern }, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Unsupported ECC mode: %d\0A\00", align 1
@bbt_pattern = internal global [4 x i8] c"Bbt0", align 1
@mirror_pattern = internal global [4 x i8] c"1tbB", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"The hardware ECC engine is limited to pages up to 2kiB\0A\00", align 1
@pl35x_ecc_ooblayout16_ops = internal constant %struct.mtd_ooblayout_ops { ptr @pl35x_ecc_ooblayout16_ecc, ptr @pl35x_ecc_ooblayout16_free }, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"Unsupported OOB size\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.6 = private unnamed_addr constant [53 x i8] c"Timeout polling on NAND controller interrupt (0x%x)\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"Timeout polling on ECC controller interrupt\0A\00", align 1
@pl35x_nandc_op_parser = internal constant %struct.nand_op_parser { ptr @.compoundliteral.11, i32 3 }, align 4
@.compoundliteral = internal constant <{ %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, { i32, i8, { %struct.nand_op_parser_data_constraints } } }> <{ %struct.nand_op_parser_pattern_elem { i32 0, i8 1, %union.anon.81 zeroinitializer }, %struct.nand_op_parser_pattern_elem { i32 1, i8 1, %union.anon.81 { %struct.nand_op_parser_addr_constraints { i32 7 } } }, %struct.nand_op_parser_pattern_elem { i32 0, i8 1, %union.anon.81 zeroinitializer }, %struct.nand_op_parser_pattern_elem { i32 4, i8 1, %union.anon.81 zeroinitializer }, { i32, i8, { %struct.nand_op_parser_data_constraints } } { i32 2, i8 1, { %struct.nand_op_parser_data_constraints } { %struct.nand_op_parser_data_constraints { i32 2112 } } } }>, align 4
@.compoundliteral.9 = internal constant <{ %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, { i32, i8, { %struct.nand_op_parser_data_constraints } }, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem }> <{ %struct.nand_op_parser_pattern_elem zeroinitializer, %struct.nand_op_parser_pattern_elem { i32 1, i8 0, %union.anon.81 { %struct.nand_op_parser_addr_constraints { i32 7 } } }, { i32, i8, { %struct.nand_op_parser_data_constraints } } { i32 3, i8 0, { %struct.nand_op_parser_data_constraints } { %struct.nand_op_parser_data_constraints { i32 2112 } } }, %struct.nand_op_parser_pattern_elem zeroinitializer, %struct.nand_op_parser_pattern_elem { i32 4, i8 1, %union.anon.81 zeroinitializer } }>, align 4
@.compoundliteral.10 = internal constant <{ %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, { i32, i8, { %struct.nand_op_parser_data_constraints } }, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem }> <{ %struct.nand_op_parser_pattern_elem zeroinitializer, %struct.nand_op_parser_pattern_elem { i32 1, i8 0, %union.anon.81 { %struct.nand_op_parser_addr_constraints { i32 7 } } }, { i32, i8, { %struct.nand_op_parser_data_constraints } } { i32 3, i8 0, { %struct.nand_op_parser_data_constraints } { %struct.nand_op_parser_data_constraints { i32 2112 } } }, %struct.nand_op_parser_pattern_elem { i32 0, i8 1, %union.anon.81 zeroinitializer }, %struct.nand_op_parser_pattern_elem { i32 4, i8 1, %union.anon.81 zeroinitializer } }>, align 4
@.compoundliteral.11 = internal constant [3 x %struct.nand_op_parser_pattern] [%struct.nand_op_parser_pattern { ptr @.compoundliteral, i32 5, ptr @pl35x_nand_exec_op }, %struct.nand_op_parser_pattern { ptr @.compoundliteral.9, i32 5, ptr @pl35x_nand_exec_op }, %struct.nand_op_parser_pattern { ptr @.compoundliteral.10, i32 5, ptr @pl35x_nand_exec_op }], align 4
@.str.12 = private unnamed_addr constant [7 x i8] c"memclk\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"Failed to retrieve SMC memclk\0A\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"Incorrect number of NAND chips (%d)\0A\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"Wrong CS %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"Already assigned CS %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"Failed to allocate mtd->name\0A\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.21 = private unnamed_addr constant [45 x i8] c"drivers/mtd/nand/raw/pl35x-nand-controller.c\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias261, ptr @__UNIQUE_ID_author260, ptr @__UNIQUE_ID_description262, ptr @__UNIQUE_ID_file263, ptr @__UNIQUE_ID_license264, ptr @__exitcall_pl35x_nandc_driver_exit, ptr @__initcall__kmod_pl35x_nand_controller__259_1189_pl35x_nandc_driver_init6, ptr @pl35x_nandc_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @pl35x_nandc_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @pl35x_nandc_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @pl35x_nandc_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @pl35x_nandc_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl35x_nand_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 56, i32 noundef 3520) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %145, label %8

8:                                                ; preds = %1
  store ptr %3, ptr %6, align 4
  %9 = getelementptr inbounds %struct.pl35x_nandc, ptr %6, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %9, ptr noundef nonnull @.str.1, ptr noundef nonnull @nand_controller_init.__key) #8
  %10 = getelementptr inbounds %struct.pl35x_nandc, ptr %6, i32 0, i32 3, i32 1
  store ptr @pl35x_nandc_ops, ptr %10, align 4
  %11 = getelementptr inbounds %struct.pl35x_nandc, ptr %6, i32 0, i32 4
  store volatile ptr %11, ptr %11, align 4
  %12 = getelementptr inbounds %struct.pl35x_nandc, ptr %6, i32 0, i32 4, i32 1
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.amba_device, ptr %5, i32 0, i32 1
  %14 = tail call ptr @devm_ioremap_resource(ptr noundef %5, ptr noundef %13) #8
  %15 = getelementptr inbounds %struct.pl35x_nandc, ptr %6, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  %16 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %19

17:                                               ; preds = %8
  %18 = ptrtoint ptr %14 to i32
  br label %145

19:                                               ; preds = %8
  %20 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #8
  %21 = getelementptr inbounds %struct.pl35x_nandc, ptr %6, i32 0, i32 2
  store ptr %20, ptr %21, align 4
  %22 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = ptrtoint ptr %20 to i32
  br label %145

25:                                               ; preds = %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %26 = load ptr, ptr %15, align 4
  %27 = getelementptr i8, ptr %26, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 82) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %28 = load ptr, ptr %15, align 4
  %29 = getelementptr i8, ptr %28, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 0) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %30 = load ptr, ptr %15, align 4
  %31 = getelementptr i8, ptr %30, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 37748736) #8, !srcloc !9
  %32 = load ptr, ptr %15, align 4
  %33 = getelementptr i8, ptr %32, i32 1028
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %35 = and i32 %34, -13
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  %36 = load ptr, ptr %15, align 4
  %37 = getelementptr i8, ptr %36, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !15
  tail call void @arm_heavy_mb() #8
  %38 = load ptr, ptr %15, align 4
  %39 = getelementptr i8, ptr %38, i32 1032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 19923072) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !16
  tail call void @arm_heavy_mb() #8
  %40 = load ptr, ptr %15, align 4
  %41 = getelementptr i8, ptr %40, i32 1036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 31458693) #8, !srcloc !9
  %42 = load ptr, ptr %6, align 4
  %43 = getelementptr inbounds %struct.device, ptr %42, i32 0, i32 25
  %44 = load ptr, ptr %43, align 8
  %45 = tail call ptr @of_get_next_child(ptr noundef %44, ptr noundef null) #8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %57, label %47

47:                                               ; preds = %47, %25
  %48 = phi i32 [ %50, %47 ], [ 0, %25 ]
  %49 = phi ptr [ %51, %47 ], [ %45, %25 ]
  %50 = add i32 %48, 1
  %51 = tail call ptr @of_get_next_child(ptr noundef %44, ptr noundef nonnull %49) #8
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %47

53:                                               ; preds = %47
  %54 = icmp eq i32 %50, 0
  %55 = icmp sgt i32 %50, 1
  %56 = or i1 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53, %25
  %58 = phi i32 [ %50, %53 ], [ 0, %25 ]
  %59 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.14, i32 noundef %58) #9
  br label %145

60:                                               ; preds = %53
  %61 = tail call ptr @of_get_next_child(ptr noundef %44, ptr noundef null) #8
  %62 = icmp eq ptr %61, null
  br i1 %62, label %143, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.pl35x_nandc, ptr %6, i32 0, i32 6
  br label %65

65:                                               ; preds = %116, %63
  %66 = phi ptr [ %61, %63 ], [ %119, %116 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !17
  %67 = load ptr, ptr %6, align 4
  %68 = call noalias ptr @devm_kmalloc(ptr noundef %67, i32 noundef 1448, i32 noundef 3520) #8
  %69 = icmp eq ptr %68, null
  br i1 %69, label %121, label %70

70:                                               ; preds = %65
  %71 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %66, ptr noundef nonnull @.str.15, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #8
  %72 = icmp sgt i32 %71, -1
  br i1 %72, label %73, label %123

73:                                               ; preds = %70
  %74 = load i32, ptr %2, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.16, i32 noundef %74) #9
  br label %121

78:                                               ; preds = %73
  %79 = call i32 @_test_and_set_bit(i32 noundef %74, ptr noundef %64) #8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load ptr, ptr %6, align 4
  %83 = load i32, ptr %2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.17, i32 noundef %83) #9
  br label %121

84:                                               ; preds = %78
  %85 = load i32, ptr %2, align 4
  %86 = getelementptr inbounds %struct.pl35x_nand, ptr %68, i32 0, i32 2
  store i32 %85, ptr %86, align 8
  %87 = getelementptr inbounds %struct.pl35x_nand, ptr %68, i32 0, i32 1
  %88 = getelementptr inbounds %struct.pl35x_nand, ptr %68, i32 0, i32 1, i32 6
  store i32 1573376, ptr %88, align 8
  %89 = getelementptr inbounds %struct.pl35x_nand, ptr %68, i32 0, i32 1, i32 10
  store i32 131072, ptr %89, align 8
  %90 = getelementptr inbounds %struct.pl35x_nand, ptr %68, i32 0, i32 1, i32 32
  store ptr %9, ptr %90, align 4
  %91 = load ptr, ptr %6, align 4
  %92 = getelementptr inbounds %struct.pl35x_nand, ptr %68, i32 0, i32 1, i32 0, i32 0, i32 56, i32 1
  store ptr %91, ptr %92, align 4
  %93 = getelementptr inbounds %struct.device, ptr %91, i32 0, i32 25
  %94 = load ptr, ptr %93, align 8
  %95 = getelementptr inbounds %struct.pl35x_nand, ptr %68, i32 0, i32 1, i32 0, i32 0, i32 56, i32 25
  store ptr %94, ptr %95, align 8
  %96 = getelementptr inbounds %struct.pl35x_nand, ptr %68, i32 0, i32 1, i32 0, i32 0, i32 13
  %97 = load ptr, ptr %96, align 8
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %109

99:                                               ; preds = %84
  %100 = call i32 @of_property_read_string(ptr noundef %94, ptr noundef nonnull @.str.20, ptr noundef %96) #8
  %101 = load ptr, ptr %96, align 8
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %99
  %104 = load ptr, ptr %6, align 4
  %105 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %104, i32 noundef 3264, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str) #8
  store ptr %105, ptr %96, align 8
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %108, ptr noundef nonnull @.str.19) #9
  br label %121

109:                                              ; preds = %103, %99, %84
  %110 = call i32 @nand_scan_with_ids(ptr noundef %87, i32 noundef 1, ptr noundef null) #8
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %109
  %113 = call i32 @mtd_device_parse_register(ptr noundef %87, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #8
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %112
  call void @nand_cleanup(ptr noundef %87) #8
  br label %121

116:                                              ; preds = %112
  %117 = load ptr, ptr %12, align 4
  store ptr %68, ptr %12, align 4
  store ptr %11, ptr %68, align 4
  %118 = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  store ptr %117, ptr %118, align 4
  store volatile ptr %68, ptr %117, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %119 = call ptr @of_get_next_child(ptr noundef %44, ptr noundef nonnull %66) #8
  %120 = icmp eq ptr %119, null
  br i1 %120, label %143, label %65

121:                                              ; preds = %115, %109, %107, %81, %76, %65
  %122 = phi i32 [ -12, %107 ], [ %113, %115 ], [ -22, %81 ], [ -22, %76 ], [ -12, %65 ], [ %110, %109 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %124

123:                                              ; preds = %70
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %124

124:                                              ; preds = %123, %121
  %125 = phi i32 [ %122, %121 ], [ %71, %123 ]
  call void @of_node_put(ptr noundef nonnull %66) #8
  %126 = load ptr, ptr %11, align 4
  %127 = icmp eq ptr %126, %11
  br i1 %127, label %145, label %128

128:                                              ; preds = %135, %124
  %129 = phi ptr [ %130, %135 ], [ %126, %124 ]
  %130 = load ptr, ptr %129, align 8
  %131 = getelementptr inbounds %struct.pl35x_nand, ptr %129, i32 0, i32 1
  %132 = call i32 @mtd_device_unregister(ptr noundef %131) #8
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %135, label %134, !prof !18

134:                                              ; preds = %128
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 1099, i32 noundef 9, ptr noundef null) #8
  br label %135

135:                                              ; preds = %134, %128
  call void @nand_cleanup(ptr noundef %131) #8
  %136 = getelementptr inbounds %struct.list_head, ptr %129, i32 0, i32 1
  %137 = load ptr, ptr %136, align 4
  %138 = load ptr, ptr %129, align 4
  %139 = getelementptr inbounds %struct.list_head, ptr %138, i32 0, i32 1
  store ptr %137, ptr %139, align 4
  store volatile ptr %138, ptr %137, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %129, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %136, align 4
  %140 = icmp eq ptr %130, %11
  br i1 %140, label %141, label %128

141:                                              ; preds = %135
  %142 = icmp eq i32 %125, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %141, %116, %60
  %144 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %144, align 8
  br label %145

145:                                              ; preds = %143, %141, %124, %57, %23, %17, %1
  %146 = phi i32 [ %18, %17 ], [ %24, %23 ], [ 0, %143 ], [ -12, %1 ], [ %125, %141 ], [ %125, %124 ], [ -22, %57 ]
  ret i32 %146
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl35x_nand_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.pl35x_nandc, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %20, label %7

7:                                                ; preds = %14, %1
  %8 = phi ptr [ %9, %14 ], [ %5, %1 ]
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.pl35x_nand, ptr %8, i32 0, i32 1
  %11 = tail call i32 @mtd_device_unregister(ptr noundef %10) #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13, !prof !18

13:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 1099, i32 noundef 9, ptr noundef null) #8
  br label %14

14:                                               ; preds = %13, %7
  tail call void @nand_cleanup(ptr noundef %10) #8
  %15 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %8, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  store ptr %16, ptr %18, align 4
  store volatile ptr %17, ptr %16, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %15, align 4
  %19 = icmp eq ptr %9, %4
  br i1 %19, label %20, label %7

20:                                               ; preds = %14, %1
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl35x_nand_attach_chip(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 -12
  %5 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %30, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %12, %8
  %17 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 1, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 1, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20, %16
  %25 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %25, ptr noundef nonnull @.str.2) #9
  br label %26

26:                                               ; preds = %24, %20
  %27 = phi i32 [ 512, %24 ], [ %18, %20 ]
  %28 = phi i32 [ 1, %24 ], [ %22, %20 ]
  store i32 %27, ptr %9, align 8
  %29 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 7
  store i32 %28, ptr %29, align 4
  br label %30

30:                                               ; preds = %26, %12, %1
  %31 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = icmp ult i32 %32, 513
  %34 = select i1 %33, i32 1, i32 2
  %35 = getelementptr i8, ptr %0, i32 1428
  %36 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 16384
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 2, i32 3
  %41 = add nuw nsw i32 %34, %40
  store i32 %41, ptr %35, align 4
  %42 = load i32, ptr %5, align 8
  switch i32 %42, label %95 [
    i32 4, label %43
    i32 1, label %97
    i32 2, label %97
    i32 3, label %46
  ]

43:                                               ; preds = %30
  %44 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 13
  store ptr @bbt_main_descr, ptr %44, align 4
  %45 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 14
  store ptr @bbt_mirror_descr, ptr %45, align 8
  br label %97

46:                                               ; preds = %30
  %47 = add i32 %32, -2049
  %48 = icmp ult i32 %47, -1537
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.4) #9
  br label %97

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 7
  store i32 1, ptr %52, align 4
  %53 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  store i32 3, ptr %53, align 4
  %54 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  store i32 512, ptr %54, align 8
  %55 = lshr i32 %32, 9
  %56 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 3
  store i32 %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 18
  store ptr @pl35x_nand_read_page_hwecc, ptr %57, align 8
  %58 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 21
  store ptr @pl35x_nand_write_page_hwecc, ptr %58, align 4
  %59 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 17
  store ptr @nand_monolithic_write_page_raw, ptr %59, align 4
  switch i32 %32, label %62 [
    i32 512, label %63
    i32 1024, label %60
    i32 2048, label %61
  ]

60:                                               ; preds = %51
  br label %63

61:                                               ; preds = %51
  br label %63

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62, %61, %60, %51
  %64 = phi i32 [ 0, %62 ], [ 3, %61 ], [ 2, %60 ], [ 1, %51 ]
  %65 = getelementptr i8, ptr %3, i32 -8
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr i8, ptr %66, i32 1028
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !19
  %69 = getelementptr i8, ptr %0, i32 1432
  %70 = and i32 %68, -4
  %71 = or i32 %70, %64
  store i32 %71, ptr %69, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %72 = load i32, ptr %69, align 8
  %73 = load ptr, ptr %65, align 4
  %74 = getelementptr i8, ptr %73, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %72) #8, !srcloc !9
  %75 = load ptr, ptr %4, align 4
  %76 = load i32, ptr %53, align 4
  %77 = load i32, ptr %56, align 4
  %78 = mul i32 %77, %76
  %79 = tail call noalias ptr @devm_kmalloc(ptr noundef %75, i32 noundef %78, i32 noundef 3264) #8
  %80 = getelementptr i8, ptr %3, i32 40
  store ptr %79, ptr %80, align 4
  %81 = icmp eq ptr %79, null
  br i1 %81, label %97, label %82

82:                                               ; preds = %63
  %83 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %84 = load i32, ptr %83, align 4
  switch i32 %84, label %93 [
    i32 16, label %85
    i32 64, label %90
  ]

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 15
  store ptr @pl35x_ecc_ooblayout16_ops, ptr %86, align 8
  %87 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 10
  %88 = load i32, ptr %87, align 8
  %89 = or i32 %88, 524288
  store i32 %89, ptr %87, align 8
  br label %97

90:                                               ; preds = %82
  %91 = tail call ptr @nand_get_large_page_ooblayout() #8
  %92 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 15
  store ptr %91, ptr %92, align 8
  br label %97

93:                                               ; preds = %82
  %94 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.5) #9
  br label %97

95:                                               ; preds = %30
  %96 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.3, i32 noundef %42) #9
  br label %97

97:                                               ; preds = %95, %93, %90, %85, %63, %49, %43, %30, %30
  %98 = phi i32 [ -22, %95 ], [ 0, %90 ], [ 0, %85 ], [ 0, %43 ], [ 0, %30 ], [ 0, %30 ], [ -12, %63 ], [ -95, %93 ], [ -95, %49 ]
  ret i32 %98
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl35x_nfc_exec_op(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #2 {
  br i1 %2, label %22, label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 32
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %22, label %10

10:                                               ; preds = %4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !21
  tail call void @arm_heavy_mb() #8
  %11 = getelementptr i8, ptr %0, i32 1436
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr i8, ptr %6, i32 -8
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %12) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %16 = load ptr, ptr %13, align 4
  %17 = getelementptr i8, ptr %16, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 37748736) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !22
  tail call void @arm_heavy_mb() #8
  %18 = getelementptr i8, ptr %0, i32 1432
  %19 = load i32, ptr %18, align 8
  %20 = load ptr, ptr %13, align 4
  %21 = getelementptr i8, ptr %20, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #8, !srcloc !9
  store ptr %0, ptr %7, align 4
  br label %22

22:                                               ; preds = %10, %4, %3
  %23 = tail call i32 @nand_op_parser_exec_op(ptr noundef %0, ptr noundef nonnull @pl35x_nandc_op_parser, ptr noundef %1, i1 noundef zeroext %2) #8
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl35x_nfc_setup_interface(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -12
  %7 = load i32, ptr %2, align 8
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.nand_interface_config, ptr %2, i32 0, i32 1, i32 1
  %10 = select i1 %8, ptr %9, ptr inttoptr (i32 -22 to ptr)
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = ptrtoint ptr %10 to i32
  br label %102

14:                                               ; preds = %3
  %15 = load ptr, ptr %6, align 4
  %16 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 25
  %19 = load ptr, ptr %18, align 8
  %20 = tail call ptr @of_clk_get_by_name(ptr noundef %19, ptr noundef nonnull @.str.12) #8
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.13) #9
  %24 = ptrtoint ptr %20 to i32
  br label %102

25:                                               ; preds = %14
  %26 = tail call i32 @clk_get_rate(ptr noundef %20) #8
  %27 = udiv i32 1000000000, %26
  %28 = getelementptr inbounds %struct.nand_sdr_timings, ptr %10, i32 0, i32 22
  %29 = load i32, ptr %28, align 8
  %30 = udiv i32 %29, 1000
  %31 = add nsw i32 %27, -1
  %32 = add nsw i32 %31, %30
  %33 = udiv i32 %32, %27
  %34 = icmp ult i32 %29, 20001
  %35 = zext i1 %34 to i32
  %36 = add i32 %33, %35
  %37 = and i32 %36, 15
  %38 = icmp ugt i32 %36, 15
  %39 = icmp ult i32 %37, 2
  %40 = or i1 %38, %39
  br i1 %40, label %102, label %41

41:                                               ; preds = %25
  %42 = getelementptr inbounds %struct.nand_sdr_timings, ptr %10, i32 0, i32 33
  %43 = load i32, ptr %42, align 4
  %44 = udiv i32 %43, 1000
  %45 = add nsw i32 %31, %44
  %46 = udiv i32 %45, %27
  %47 = icmp ugt i32 %46, 15
  %48 = and i32 %46, 14
  %49 = icmp eq i32 %48, 0
  %50 = or i1 %47, %49
  br i1 %50, label %102, label %51

51:                                               ; preds = %41
  %52 = getelementptr inbounds %struct.nand_sdr_timings, ptr %10, i32 0, i32 36
  %53 = load i32, ptr %52, align 8
  %54 = udiv i32 %53, 1000
  %55 = add nsw i32 %31, %54
  %56 = udiv i32 %55, %27
  %57 = icmp ugt i32 %56, 7
  %58 = and i32 %56, 7
  %59 = icmp eq i32 %58, 0
  %60 = or i1 %57, %59
  br i1 %60, label %102, label %61

61:                                               ; preds = %51
  %62 = getelementptr inbounds %struct.nand_sdr_timings, ptr %10, i32 0, i32 13
  %63 = load i32, ptr %62, align 4
  %64 = udiv i32 %63, 1000
  %65 = add nsw i32 %31, %64
  %66 = udiv i32 %65, %27
  %67 = icmp ult i32 %66, 8
  br i1 %67, label %68, label %102

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.nand_sdr_timings, ptr %10, i32 0, i32 7
  %70 = load i32, ptr %69, align 4
  %71 = udiv i32 %70, 1000
  %72 = add nsw i32 %31, %71
  %73 = udiv i32 %72, %27
  %74 = icmp ult i32 %73, 8
  br i1 %74, label %75, label %102

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.nand_sdr_timings, ptr %10, i32 0, i32 30
  %77 = load i32, ptr %76, align 8
  %78 = udiv i32 %77, 1000
  %79 = add nsw i32 %31, %78
  %80 = udiv i32 %79, %27
  %81 = icmp ult i32 %80, 16
  br i1 %81, label %82, label %102

82:                                               ; preds = %75
  %83 = icmp eq i32 %1, -1
  br i1 %83, label %102, label %84

84:                                               ; preds = %82
  %85 = shl nuw nsw i32 %46, 4
  %86 = and i32 %85, 240
  %87 = shl nuw nsw i32 %56, 11
  %88 = and i32 %87, 14336
  %89 = shl nuw nsw i32 %66, 14
  %90 = and i32 %89, 114688
  %91 = shl nuw nsw i32 %73, 17
  %92 = and i32 %91, 917504
  %93 = shl nuw nsw i32 %80, 20
  %94 = and i32 %93, 15728640
  %95 = or i32 %37, %86
  %96 = or i32 %95, %88
  %97 = or i32 %96, %90
  %98 = or i32 %97, %92
  %99 = or i32 %98, %94
  %100 = or i32 %99, 256
  %101 = getelementptr i8, ptr %0, i32 1436
  store i32 %100, ptr %101, align 4
  br label %102

102:                                              ; preds = %84, %82, %75, %68, %61, %51, %41, %25, %22, %12
  %103 = phi i32 [ %13, %12 ], [ %24, %22 ], [ 0, %84 ], [ -22, %25 ], [ -22, %41 ], [ -22, %51 ], [ -22, %61 ], [ -22, %68 ], [ -22, %75 ], [ 0, %82 ]
  ret i32 %103
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl35x_nand_read_page_hwecc(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = alloca [3 x i8], align 1
  %6 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.nand_interface_config, ptr %7, i32 0, i32 1, i32 1
  %11 = select i1 %9, ptr %10, ptr inttoptr (i32 -22 to ptr)
  %12 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 -12
  %15 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr i8, ptr %0, i32 1428
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr i8, ptr %13, i32 -8
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 1028
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %23 = and i32 %22, -13
  %24 = or i32 %23, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  %25 = load ptr, ptr %19, align 4
  %26 = getelementptr i8, ptr %25, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #8, !srcloc !9
  %27 = icmp eq ptr %0, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %4
  %29 = getelementptr i8, ptr %0, i32 1432
  store i32 %24, ptr %29, align 8
  br label %30

30:                                               ; preds = %28, %4
  %31 = tail call fastcc i32 @pl35x_smc_wait_for_ecc_done(ptr noundef %14) #8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %300

33:                                               ; preds = %30
  %34 = icmp ult i32 %16, 513
  %35 = select i1 %34, i32 1, i32 2
  %36 = load i32, ptr %17, align 4
  %37 = shl i32 %36, 21
  %38 = or i32 %37, 1146880
  %39 = icmp ugt i32 %18, %35
  br i1 %39, label %40, label %66

40:                                               ; preds = %33
  %41 = sub i32 %18, %35
  br label %42

42:                                               ; preds = %60, %40
  %43 = phi i32 [ %63, %60 ], [ 0, %40 ]
  %44 = phi i32 [ %64, %60 ], [ %35, %40 ]
  %45 = phi i32 [ %62, %60 ], [ 0, %40 ]
  %46 = phi i32 [ %61, %60 ], [ 0, %40 ]
  %47 = shl i32 %43, 3
  %48 = and i32 %47, 248
  %49 = ashr i32 %3, %48
  %50 = icmp ult i32 %44, 4
  %51 = and i32 %49, 255
  %52 = shl i32 %44, 3
  br i1 %50, label %53, label %56

53:                                               ; preds = %42
  %54 = shl nuw i32 %51, %52
  %55 = or i32 %54, %46
  br label %60

56:                                               ; preds = %42
  %57 = add i32 %52, -32
  %58 = shl i32 %51, %57
  %59 = or i32 %58, %45
  br label %60

60:                                               ; preds = %56, %53
  %61 = phi i32 [ %55, %53 ], [ %46, %56 ]
  %62 = phi i32 [ %45, %53 ], [ %59, %56 ]
  %63 = add nuw i32 %43, 1
  %64 = add nuw i32 %44, 1
  %65 = icmp eq i32 %63, %41
  br i1 %65, label %66, label %42

66:                                               ; preds = %60, %33
  %67 = phi i32 [ 0, %33 ], [ %61, %60 ]
  %68 = phi i32 [ 0, %33 ], [ %62, %60 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  %69 = getelementptr i8, ptr %13, i32 -4
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr i8, ptr %70, i32 %38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %67) #8, !srcloc !9
  %72 = load i32, ptr %17, align 4
  %73 = icmp ugt i32 %72, 4
  br i1 %73, label %74, label %77

74:                                               ; preds = %66
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !24
  tail call void @arm_heavy_mb() #8
  %75 = load ptr, ptr %69, align 4
  %76 = getelementptr i8, ptr %75, i32 %38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %68) #8, !srcloc !9
  br label %77

77:                                               ; preds = %74, %66
  %78 = getelementptr inbounds %struct.nand_sdr_timings, ptr %11, i32 0, i32 30
  %79 = load i32, ptr %78, align 8
  %80 = add i32 %79, 999
  %81 = udiv i32 %80, 1000
  %82 = add nuw nsw i32 %81, 999
  %83 = udiv i32 %82, 1000
  %84 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %84(i32 noundef %83) #8
  %85 = tail call fastcc i32 @pl35x_smc_wait_for_irq(ptr noundef %14)
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %290

87:                                               ; preds = %77
  %88 = load i32, ptr %15, align 4
  %89 = load ptr, ptr %12, align 4
  %90 = lshr i32 %88, 2
  %91 = and i32 %88, -4
  %92 = icmp ult i32 %88, 4
  br i1 %92, label %96, label %93

93:                                               ; preds = %87
  %94 = getelementptr i8, ptr %89, i32 -4
  %95 = tail call i32 @llvm.umax.i32(i32 %90, i32 1) #8
  br label %100

96:                                               ; preds = %100, %87
  %97 = icmp ult i32 %91, %88
  br i1 %97, label %98, label %118

98:                                               ; preds = %96
  %99 = getelementptr i8, ptr %89, i32 -4
  br label %110

100:                                              ; preds = %100, %93
  %101 = phi i32 [ 0, %93 ], [ %102, %100 ]
  %102 = add nuw nsw i32 %101, 1
  %103 = icmp eq i32 %102, %90
  %104 = select i1 %103, i32 525312, i32 524288
  %105 = load ptr, ptr %94, align 4
  %106 = getelementptr i8, ptr %105, i32 %104
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !25
  %108 = getelementptr i32, ptr %1, i32 %101
  store i32 %107, ptr %108, align 4
  %109 = icmp eq i32 %102, %95
  br i1 %109, label %96, label %100

110:                                              ; preds = %110, %98
  %111 = phi i32 [ %91, %98 ], [ %116, %110 ]
  %112 = load ptr, ptr %99, align 4
  %113 = getelementptr i8, ptr %112, i32 524288
  %114 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %113) #8, !srcloc !26
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !27
  %115 = getelementptr i8, ptr %1, i32 %111
  store i8 %114, ptr %115, align 1
  %116 = add i32 %111, 1
  %117 = icmp eq i32 %116, %88
  br i1 %117, label %118, label %110

118:                                              ; preds = %110, %96
  %119 = tail call fastcc i32 @pl35x_smc_wait_for_ecc_done(ptr noundef %14)
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %290

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %125 = load i32, ptr %124, align 4
  %126 = load ptr, ptr %12, align 4
  %127 = lshr i32 %125, 2
  %128 = and i32 %125, -4
  %129 = icmp ult i32 %125, 4
  br i1 %129, label %133, label %130

130:                                              ; preds = %121
  %131 = getelementptr i8, ptr %126, i32 -4
  %132 = tail call i32 @llvm.umax.i32(i32 %127, i32 1) #8
  br label %137

133:                                              ; preds = %137, %121
  %134 = icmp ult i32 %128, %125
  br i1 %134, label %135, label %155

135:                                              ; preds = %133
  %136 = getelementptr i8, ptr %126, i32 -4
  br label %147

137:                                              ; preds = %137, %130
  %138 = phi i32 [ 0, %130 ], [ %139, %137 ]
  %139 = add nuw nsw i32 %138, 1
  %140 = icmp eq i32 %139, %127
  %141 = select i1 %140, i32 2621440, i32 524288
  %142 = load ptr, ptr %131, align 4
  %143 = getelementptr i8, ptr %142, i32 %141
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %143) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !25
  %145 = getelementptr i32, ptr %123, i32 %138
  store i32 %144, ptr %145, align 4
  %146 = icmp eq i32 %139, %132
  br i1 %146, label %133, label %137

147:                                              ; preds = %147, %135
  %148 = phi i32 [ %128, %135 ], [ %153, %147 ]
  %149 = load ptr, ptr %136, align 4
  %150 = getelementptr i8, ptr %149, i32 524288
  %151 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %150) #8, !srcloc !26
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !27
  %152 = getelementptr i8, ptr %123, i32 %148
  store i8 %151, ptr %152, align 1
  %153 = add i32 %148, 1
  %154 = icmp eq i32 %153, %125
  br i1 %154, label %155, label %147

155:                                              ; preds = %147, %133
  %156 = getelementptr i8, ptr %13, i32 40
  %157 = load ptr, ptr %156, align 4
  %158 = load ptr, ptr %122, align 4
  %159 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 6
  %160 = load i32, ptr %159, align 8
  %161 = tail call i32 @mtd_ooblayout_get_eccbytes(ptr noundef %0, ptr noundef %157, ptr noundef %158, i32 noundef 0, i32 noundef %160) #8
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %290

163:                                              ; preds = %155
  %164 = load ptr, ptr %19, align 4
  %165 = getelementptr i8, ptr %164, i32 1028
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %165) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %167 = and i32 %166, -13
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  %168 = load ptr, ptr %19, align 4
  %169 = getelementptr i8, ptr %168, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %169, i32 %167) #8, !srcloc !9
  br i1 %27, label %172, label %170

170:                                              ; preds = %163
  %171 = getelementptr i8, ptr %0, i32 1432
  store i32 %167, ptr %171, align 8
  br label %172

172:                                              ; preds = %170, %163
  %173 = load ptr, ptr %156, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %5, i8 0, i32 3, i1 false) #8, !annotation !17
  %174 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 3
  %175 = load i32, ptr %174, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %288, label %177

177:                                              ; preds = %172
  %178 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52, i32 1
  %179 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  %180 = getelementptr inbounds i8, ptr %5, i32 1
  %181 = getelementptr inbounds i8, ptr %5, i32 2
  %182 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52
  %183 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  br label %184

184:                                              ; preds = %276, %177
  %185 = phi i8 [ 0, %177 ], [ %277, %276 ]
  %186 = phi i8 [ 0, %177 ], [ %278, %276 ]
  %187 = phi i8 [ 0, %177 ], [ %279, %276 ]
  %188 = phi ptr [ %1, %177 ], [ %283, %276 ]
  %189 = phi ptr [ %173, %177 ], [ %285, %276 ]
  %190 = phi i32 [ 0, %177 ], [ %280, %276 ]
  %191 = phi i32 [ 0, %177 ], [ %281, %276 ]
  %192 = load ptr, ptr %19, align 4
  %193 = shl i32 %191, 2
  %194 = add i32 %193, 1048
  %195 = getelementptr i8, ptr %192, i32 %194
  %196 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %195) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !28
  %197 = and i32 %196, 1073741824
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %288, label %199

199:                                              ; preds = %184
  %200 = and i32 %196, 268435456
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %205, label %202

202:                                              ; preds = %199
  %203 = load i32, ptr %178, align 4
  %204 = add i32 %203, 1
  store i32 %204, ptr %178, align 4
  br label %276

205:                                              ; preds = %199
  %206 = xor i32 %196, -1
  %207 = load i32, ptr %179, align 4
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %221, label %209

209:                                              ; preds = %209, %205
  %210 = phi i32 [ %215, %209 ], [ 0, %205 ]
  %211 = shl i32 %210, 3
  %212 = lshr i32 %206, %211
  %213 = trunc i32 %212 to i8
  %214 = getelementptr i8, ptr %5, i32 %210
  store i8 %213, ptr %214, align 1
  %215 = add nuw i32 %210, 1
  %216 = icmp eq i32 %215, %207
  br i1 %216, label %217, label %209

217:                                              ; preds = %209
  %218 = load i8, ptr %5, align 1
  %219 = load i8, ptr %180, align 1
  %220 = load i8, ptr %181, align 1
  br label %221

221:                                              ; preds = %217, %205
  %222 = phi i8 [ %220, %217 ], [ %185, %205 ]
  %223 = phi i8 [ %219, %217 ], [ %186, %205 ]
  %224 = phi i8 [ %218, %217 ], [ %187, %205 ]
  %225 = load i8, ptr %189, align 1
  %226 = zext i8 %225 to i32
  %227 = getelementptr i8, ptr %189, i32 1
  %228 = load i8, ptr %227, align 1
  %229 = zext i8 %228 to i32
  %230 = shl nuw nsw i32 %229, 8
  %231 = and i32 %230, 3840
  %232 = or i32 %231, %226
  %233 = lshr i32 %229, 4
  %234 = getelementptr i8, ptr %189, i32 2
  %235 = load i8, ptr %234, align 1
  %236 = zext i8 %235 to i32
  %237 = shl nuw nsw i32 %236, 4
  %238 = or i32 %237, %233
  %239 = zext i8 %224 to i32
  %240 = zext i8 %223 to i32
  %241 = shl nuw nsw i32 %240, 8
  %242 = and i32 %241, 3840
  %243 = or i32 %242, %239
  %244 = lshr i32 %240, 4
  %245 = zext i8 %222 to i32
  %246 = shl nuw nsw i32 %245, 4
  %247 = or i32 %244, %246
  %248 = xor i32 %232, %243
  %249 = xor i32 %238, %247
  %250 = icmp eq i32 %248, 0
  %251 = icmp eq i32 %249, 0
  %252 = select i1 %250, i1 %251, i1 false, !prof !18
  br i1 %252, label %271, label %253, !prof !18

253:                                              ; preds = %221
  %254 = xor i32 %249, 4095
  %255 = icmp eq i32 %248, %254
  br i1 %255, label %256, label %264

256:                                              ; preds = %253
  %257 = lshr i32 %248, 3
  %258 = and i32 %248, 7
  %259 = shl nuw nsw i32 1, %258
  %260 = getelementptr i8, ptr %188, i32 %257
  %261 = load i8, ptr %260, align 1
  %262 = trunc i32 %259 to i8
  %263 = xor i8 %261, %262
  store i8 %263, ptr %260, align 1
  br label %271

264:                                              ; preds = %253
  %265 = or i32 %248, %249
  %266 = tail call i32 @__sw_hweight32(i32 noundef %265) #8
  %267 = icmp eq i32 %266, 1
  br i1 %267, label %271, label %268

268:                                              ; preds = %264
  %269 = load i32, ptr %178, align 4
  %270 = add i32 %269, 1
  store i32 %270, ptr %178, align 4
  br label %276

271:                                              ; preds = %264, %256, %221
  %272 = phi i32 [ 0, %221 ], [ 1, %256 ], [ 1, %264 ]
  %273 = load i32, ptr %182, align 4
  %274 = add i32 %273, %272
  store i32 %274, ptr %182, align 4
  %275 = tail call i32 @llvm.umax.i32(i32 %190, i32 %272) #8
  br label %276

276:                                              ; preds = %271, %268, %202
  %277 = phi i8 [ %185, %202 ], [ %222, %268 ], [ %222, %271 ]
  %278 = phi i8 [ %186, %202 ], [ %223, %268 ], [ %223, %271 ]
  %279 = phi i8 [ %187, %202 ], [ %224, %268 ], [ %224, %271 ]
  %280 = phi i32 [ %190, %202 ], [ %190, %268 ], [ %275, %271 ]
  %281 = add nuw i32 %191, 1
  %282 = load i32, ptr %183, align 8
  %283 = getelementptr i8, ptr %188, i32 %282
  %284 = load i32, ptr %179, align 4
  %285 = getelementptr i8, ptr %189, i32 %284
  %286 = load i32, ptr %174, align 4
  %287 = icmp ult i32 %281, %286
  br i1 %287, label %184, label %288

288:                                              ; preds = %276, %184, %172
  %289 = phi i32 [ 0, %172 ], [ -22, %184 ], [ %280, %276 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #8
  br label %300

290:                                              ; preds = %155, %118, %77
  %291 = phi i32 [ %85, %77 ], [ %119, %118 ], [ %161, %155 ]
  %292 = load ptr, ptr %19, align 4
  %293 = getelementptr i8, ptr %292, i32 1028
  %294 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %293) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %295 = and i32 %294, -13
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  %296 = load ptr, ptr %19, align 4
  %297 = getelementptr i8, ptr %296, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %297, i32 %295) #8, !srcloc !9
  br i1 %27, label %300, label %298

298:                                              ; preds = %290
  %299 = getelementptr i8, ptr %0, i32 1432
  store i32 %295, ptr %299, align 8
  br label %300

300:                                              ; preds = %298, %290, %288, %30
  %301 = phi i32 [ %289, %288 ], [ %31, %30 ], [ %291, %290 ], [ %291, %298 ]
  ret i32 %301
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl35x_nand_write_page_hwecc(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 -12
  %8 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %0, i32 1428
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i8, ptr %6, i32 -8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 1028
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %16 = and i32 %15, -13
  %17 = or i32 %16, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  %18 = load ptr, ptr %12, align 4
  %19 = getelementptr i8, ptr %18, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #8, !srcloc !9
  %20 = icmp eq ptr %0, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %4
  %22 = getelementptr i8, ptr %0, i32 1432
  store i32 %17, ptr %22, align 8
  br label %23

23:                                               ; preds = %21, %4
  %24 = tail call fastcc i32 @pl35x_smc_wait_for_ecc_done(ptr noundef %7) #8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %203

26:                                               ; preds = %23
  %27 = icmp ult i32 %9, 513
  %28 = select i1 %27, i32 1, i32 2
  %29 = load i32, ptr %10, align 4
  %30 = shl i32 %29, 21
  %31 = or i32 %30, 1024
  %32 = icmp ugt i32 %11, %28
  br i1 %32, label %33, label %59

33:                                               ; preds = %26
  %34 = sub i32 %11, %28
  br label %35

35:                                               ; preds = %53, %33
  %36 = phi i32 [ %56, %53 ], [ 0, %33 ]
  %37 = phi i32 [ %57, %53 ], [ %28, %33 ]
  %38 = phi i32 [ %55, %53 ], [ 0, %33 ]
  %39 = phi i32 [ %54, %53 ], [ 0, %33 ]
  %40 = shl i32 %36, 3
  %41 = and i32 %40, 248
  %42 = ashr i32 %3, %41
  %43 = icmp ult i32 %37, 4
  %44 = and i32 %42, 255
  %45 = shl i32 %37, 3
  br i1 %43, label %46, label %49

46:                                               ; preds = %35
  %47 = shl nuw i32 %44, %45
  %48 = or i32 %47, %39
  br label %53

49:                                               ; preds = %35
  %50 = add i32 %45, -32
  %51 = shl i32 %44, %50
  %52 = or i32 %51, %38
  br label %53

53:                                               ; preds = %49, %46
  %54 = phi i32 [ %48, %46 ], [ %39, %49 ]
  %55 = phi i32 [ %38, %46 ], [ %52, %49 ]
  %56 = add nuw i32 %36, 1
  %57 = add nuw i32 %37, 1
  %58 = icmp eq i32 %56, %34
  br i1 %58, label %59, label %35

59:                                               ; preds = %53, %26
  %60 = phi i32 [ 0, %26 ], [ %54, %53 ]
  %61 = phi i32 [ 0, %26 ], [ %55, %53 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !29
  tail call void @arm_heavy_mb() #8
  %62 = getelementptr i8, ptr %6, i32 -4
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr i8, ptr %63, i32 %31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %60) #8, !srcloc !9
  %65 = load i32, ptr %10, align 4
  %66 = icmp ugt i32 %65, 4
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !30
  tail call void @arm_heavy_mb() #8
  %68 = load ptr, ptr %62, align 4
  %69 = getelementptr i8, ptr %68, i32 %31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %61) #8, !srcloc !9
  br label %70

70:                                               ; preds = %67, %59
  %71 = load i32, ptr %8, align 4
  %72 = load ptr, ptr %5, align 4
  %73 = sdiv i32 %71, 4
  %74 = and i32 %71, -4
  %75 = add i32 %71, 3
  %76 = icmp ult i32 %75, 7
  br i1 %76, label %80, label %77

77:                                               ; preds = %70
  %78 = getelementptr i8, ptr %72, i32 -4
  %79 = tail call i32 @llvm.umax.i32(i32 %73, i32 1) #8
  br label %84

80:                                               ; preds = %84, %70
  %81 = icmp slt i32 %74, %71
  br i1 %81, label %82, label %102

82:                                               ; preds = %80
  %83 = getelementptr i8, ptr %72, i32 -4
  br label %94

84:                                               ; preds = %84, %77
  %85 = phi i32 [ 0, %77 ], [ %86, %84 ]
  %86 = add nuw i32 %85, 1
  %87 = icmp eq i32 %86, %73
  %88 = select i1 %87, i32 525312, i32 524288
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !31
  tail call void @arm_heavy_mb() #8
  %89 = getelementptr i32, ptr %1, i32 %85
  %90 = load i32, ptr %89, align 4
  %91 = load ptr, ptr %78, align 4
  %92 = getelementptr i8, ptr %91, i32 %88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %90) #8, !srcloc !9
  %93 = icmp eq i32 %86, %79
  br i1 %93, label %80, label %84

94:                                               ; preds = %94, %82
  %95 = phi i32 [ %74, %82 ], [ %100, %94 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !32
  tail call void @arm_heavy_mb() #8
  %96 = getelementptr i8, ptr %1, i32 %95
  %97 = load i8, ptr %96, align 1
  %98 = load ptr, ptr %83, align 4
  %99 = getelementptr i8, ptr %98, i32 524288
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %99, i8 %97) #8, !srcloc !33
  %100 = add i32 %95, 1
  %101 = icmp eq i32 %100, %71
  br i1 %101, label %102, label %94

102:                                              ; preds = %94, %80
  %103 = tail call fastcc i32 @pl35x_smc_wait_for_ecc_done(ptr noundef %7)
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %193

105:                                              ; preds = %102
  %106 = getelementptr i8, ptr %6, i32 40
  %107 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 3
  %108 = load i32, ptr %107, align 4
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %142

110:                                              ; preds = %105
  %111 = load ptr, ptr %106, align 4
  %112 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  br label %113

113:                                              ; preds = %136, %110
  %114 = phi ptr [ %111, %110 ], [ %139, %136 ]
  %115 = phi i32 [ 0, %110 ], [ %138, %136 ]
  %116 = load ptr, ptr %12, align 4
  %117 = shl i32 %115, 2
  %118 = add i32 %117, 1048
  %119 = getelementptr i8, ptr %116, i32 %118
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %119) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !34
  %121 = and i32 %120, 1073741824
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %193, label %123

123:                                              ; preds = %113
  %124 = xor i32 %120, -1
  %125 = load i32, ptr %112, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %136, label %127

127:                                              ; preds = %127, %123
  %128 = phi i32 [ %133, %127 ], [ 0, %123 ]
  %129 = shl i32 %128, 3
  %130 = lshr i32 %124, %129
  %131 = trunc i32 %130 to i8
  %132 = getelementptr i8, ptr %114, i32 %128
  store i8 %131, ptr %132, align 1
  %133 = add nuw i32 %128, 1
  %134 = load i32, ptr %112, align 4
  %135 = icmp ult i32 %133, %134
  br i1 %135, label %127, label %136

136:                                              ; preds = %127, %123
  %137 = phi i32 [ 0, %123 ], [ %134, %127 ]
  %138 = add nuw nsw i32 %115, 1
  %139 = getelementptr i8, ptr %114, i32 %137
  %140 = load i32, ptr %107, align 4
  %141 = icmp slt i32 %138, %140
  br i1 %141, label %113, label %142

142:                                              ; preds = %136, %105
  %143 = icmp eq i32 %2, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %142
  %145 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %148 = load i32, ptr %147, align 4
  tail call void @llvm.memset.p0.i32(ptr align 1 %146, i8 -1, i32 %148, i1 false)
  br label %149

149:                                              ; preds = %144, %142
  %150 = load ptr, ptr %106, align 4
  %151 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %152 = load ptr, ptr %151, align 4
  %153 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 6
  %154 = load i32, ptr %153, align 8
  %155 = tail call i32 @mtd_ooblayout_set_eccbytes(ptr noundef %0, ptr noundef %150, ptr noundef %152, i32 noundef 0, i32 noundef %154) #8
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %193

157:                                              ; preds = %149
  %158 = load ptr, ptr %151, align 4
  %159 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %160 = load i32, ptr %159, align 4
  %161 = load ptr, ptr %5, align 4
  %162 = sdiv i32 %160, 4
  %163 = and i32 %160, -4
  %164 = add i32 %160, 3
  %165 = icmp ult i32 %164, 7
  br i1 %165, label %169, label %166

166:                                              ; preds = %157
  %167 = getelementptr i8, ptr %161, i32 -4
  %168 = tail call i32 @llvm.umax.i32(i32 %162, i32 1) #8
  br label %173

169:                                              ; preds = %173, %157
  %170 = icmp slt i32 %163, %160
  br i1 %170, label %171, label %191

171:                                              ; preds = %169
  %172 = getelementptr i8, ptr %161, i32 -4
  br label %183

173:                                              ; preds = %173, %166
  %174 = phi i32 [ 0, %166 ], [ %175, %173 ]
  %175 = add nuw i32 %174, 1
  %176 = icmp eq i32 %175, %162
  %177 = select i1 %176, i32 3702784, i32 524288
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !31
  tail call void @arm_heavy_mb() #8
  %178 = getelementptr i32, ptr %158, i32 %174
  %179 = load i32, ptr %178, align 4
  %180 = load ptr, ptr %167, align 4
  %181 = getelementptr i8, ptr %180, i32 %177
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %181, i32 %179) #8, !srcloc !9
  %182 = icmp eq i32 %175, %168
  br i1 %182, label %169, label %173

183:                                              ; preds = %183, %171
  %184 = phi i32 [ %163, %171 ], [ %189, %183 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !32
  tail call void @arm_heavy_mb() #8
  %185 = getelementptr i8, ptr %158, i32 %184
  %186 = load i8, ptr %185, align 1
  %187 = load ptr, ptr %172, align 4
  %188 = getelementptr i8, ptr %187, i32 524288
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %188, i8 %186) #8, !srcloc !33
  %189 = add i32 %184, 1
  %190 = icmp eq i32 %189, %160
  br i1 %190, label %191, label %183

191:                                              ; preds = %183, %169
  %192 = tail call fastcc i32 @pl35x_smc_wait_for_irq(ptr noundef %7)
  br label %193

193:                                              ; preds = %191, %149, %113, %102
  %194 = phi i32 [ %103, %102 ], [ %155, %149 ], [ %192, %191 ], [ -22, %113 ]
  %195 = load ptr, ptr %12, align 4
  %196 = getelementptr i8, ptr %195, i32 1028
  %197 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %196) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %198 = and i32 %197, -13
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  %199 = load ptr, ptr %12, align 4
  %200 = getelementptr i8, ptr %199, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %200, i32 %198) #8, !srcloc !9
  br i1 %20, label %203, label %201

201:                                              ; preds = %193
  %202 = getelementptr i8, ptr %0, i32 1432
  store i32 %198, ptr %202, align 8
  br label %203

203:                                              ; preds = %201, %193, %23
  %204 = phi i32 [ %24, %23 ], [ %194, %193 ], [ %194, %201 ]
  ret i32 %204
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_monolithic_write_page_raw(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nand_get_large_page_ooblayout() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pl35x_smc_wait_for_irq(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = tail call i64 @ktime_get() #8
  %3 = add i64 %2, 1000000000
  %4 = getelementptr inbounds %struct.pl35x_nandc, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !35
  %7 = and i32 %6, 64
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %15, %1
  %10 = tail call i64 @ktime_get() #8
  %11 = icmp sgt i64 %10, %3
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load ptr, ptr %4, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !36
  br label %20

15:                                               ; preds = %9
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #8
  %16 = load ptr, ptr %4, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !35
  %18 = and i32 %17, 64
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %9, label %20

20:                                               ; preds = %15, %12, %1
  %21 = phi i32 [ %14, %12 ], [ %6, %1 ], [ %17, %15 ]
  %22 = and i32 %21, 64
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.6, i32 noundef %21) #9
  br label %26

26:                                               ; preds = %24, %20
  %27 = phi i32 [ -110, %24 ], [ 0, %20 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !37
  tail call void @arm_heavy_mb() #8
  %28 = load ptr, ptr %4, align 4
  %29 = getelementptr i8, ptr %28, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 16) #8, !srcloc !9
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pl35x_nand_read_data_op(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4) unnamed_addr #2 {
  %6 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %7 = load ptr, ptr %6, align 4
  %8 = lshr i32 %2, 2
  %9 = and i32 %2, -4
  br i1 %3, label %10, label %21

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8
  tail call void @arm_heavy_mb() #8
  %16 = getelementptr i8, ptr %7, i32 -8
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 0) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %19 = load ptr, ptr %16, align 4
  %20 = getelementptr i8, ptr %19, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 37748736) #8, !srcloc !9
  br label %21

21:                                               ; preds = %15, %10, %5
  %22 = icmp ult i32 %2, 4
  br i1 %22, label %27, label %23

23:                                               ; preds = %21
  %24 = add i32 %4, 524288
  %25 = getelementptr i8, ptr %7, i32 -4
  %26 = call i32 @llvm.umax.i32(i32 %8, i32 1)
  br label %31

27:                                               ; preds = %31, %21
  %28 = icmp ult i32 %9, %2
  br i1 %28, label %29, label %49

29:                                               ; preds = %27
  %30 = getelementptr i8, ptr %7, i32 -4
  br label %41

31:                                               ; preds = %31, %23
  %32 = phi i32 [ 0, %23 ], [ %33, %31 ]
  %33 = add nuw nsw i32 %32, 1
  %34 = icmp eq i32 %33, %8
  %35 = select i1 %34, i32 %24, i32 524288
  %36 = load ptr, ptr %25, align 4
  %37 = getelementptr i8, ptr %36, i32 %35
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !25
  %39 = getelementptr i32, ptr %1, i32 %32
  store i32 %38, ptr %39, align 4
  %40 = icmp eq i32 %33, %26
  br i1 %40, label %27, label %31

41:                                               ; preds = %41, %29
  %42 = phi i32 [ %9, %29 ], [ %47, %41 ]
  %43 = load ptr, ptr %30, align 4
  %44 = getelementptr i8, ptr %43, i32 524288
  %45 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %44) #8, !srcloc !26
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !27
  %46 = getelementptr i8, ptr %1, i32 %42
  store i8 %45, ptr %46, align 1
  %47 = add i32 %42, 1
  %48 = icmp eq i32 %47, %2
  br i1 %48, label %49, label %41

49:                                               ; preds = %41, %27
  br i1 %3, label %50, label %62

50:                                               ; preds = %49
  %51 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %52 = load i32, ptr %51, align 8
  %53 = and i32 %52, 2
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %50
  %56 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8
  tail call void @arm_heavy_mb() #8
  %57 = getelementptr i8, ptr %56, i32 -8
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr i8, ptr %58, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 1) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %60 = load ptr, ptr %57, align 4
  %61 = getelementptr i8, ptr %60, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 37748736) #8, !srcloc !9
  br label %62

62:                                               ; preds = %55, %50, %49
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pl35x_smc_wait_for_ecc_done(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = tail call i64 @ktime_get() #8
  %3 = add i64 %2, 1000000000
  %4 = getelementptr inbounds %struct.pl35x_nandc, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 1024
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !38
  %8 = and i32 %7, 64
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %13, %1
  %11 = tail call i64 @ktime_get() #8
  %12 = icmp sgt i64 %11, %3
  br i1 %12, label %19, label %13

13:                                               ; preds = %10
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #8
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr i8, ptr %14, i32 1024
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !38
  %17 = and i32 %16, 64
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %27, label %10

19:                                               ; preds = %10
  %20 = load ptr, ptr %4, align 4
  %21 = getelementptr i8, ptr %20, i32 1024
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !39
  %23 = and i32 %22, 64
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.8) #9
  br label %27

27:                                               ; preds = %25, %19, %13, %1
  %28 = phi i32 [ -110, %25 ], [ 0, %19 ], [ 0, %1 ], [ 0, %13 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_ooblayout_get_eccbytes(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pl35x_nand_write_data_op(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4) unnamed_addr #2 {
  %6 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %7 = load ptr, ptr %6, align 4
  %8 = sdiv i32 %2, 4
  %9 = and i32 %2, -4
  br i1 %3, label %10, label %21

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8
  tail call void @arm_heavy_mb() #8
  %16 = getelementptr i8, ptr %7, i32 -8
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 0) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %19 = load ptr, ptr %16, align 4
  %20 = getelementptr i8, ptr %19, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 37748736) #8, !srcloc !9
  br label %21

21:                                               ; preds = %15, %10, %5
  %22 = add i32 %2, 3
  %23 = icmp ult i32 %22, 7
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = add i32 %4, 524288
  %26 = getelementptr i8, ptr %7, i32 -4
  %27 = call i32 @llvm.umax.i32(i32 %8, i32 1)
  br label %32

28:                                               ; preds = %32, %21
  %29 = icmp slt i32 %9, %2
  br i1 %29, label %30, label %50

30:                                               ; preds = %28
  %31 = getelementptr i8, ptr %7, i32 -4
  br label %42

32:                                               ; preds = %32, %24
  %33 = phi i32 [ 0, %24 ], [ %34, %32 ]
  %34 = add nuw i32 %33, 1
  %35 = icmp eq i32 %34, %8
  %36 = select i1 %35, i32 %25, i32 524288
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !31
  tail call void @arm_heavy_mb() #8
  %37 = getelementptr i32, ptr %1, i32 %33
  %38 = load i32, ptr %37, align 4
  %39 = load ptr, ptr %26, align 4
  %40 = getelementptr i8, ptr %39, i32 %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #8, !srcloc !9
  %41 = icmp eq i32 %34, %27
  br i1 %41, label %28, label %32

42:                                               ; preds = %42, %30
  %43 = phi i32 [ %9, %30 ], [ %48, %42 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !32
  tail call void @arm_heavy_mb() #8
  %44 = getelementptr i8, ptr %1, i32 %43
  %45 = load i8, ptr %44, align 1
  %46 = load ptr, ptr %31, align 4
  %47 = getelementptr i8, ptr %46, i32 524288
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %47, i8 %45) #8, !srcloc !33
  %48 = add i32 %43, 1
  %49 = icmp eq i32 %48, %2
  br i1 %49, label %50, label %42

50:                                               ; preds = %42, %28
  br i1 %3, label %51, label %63

51:                                               ; preds = %50
  %52 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 2
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %51
  %57 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8
  tail call void @arm_heavy_mb() #8
  %58 = getelementptr i8, ptr %57, i32 -8
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr i8, ptr %59, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 1) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %61 = load ptr, ptr %58, align 4
  %62 = getelementptr i8, ptr %61, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 37748736) #8, !srcloc !9
  br label %63

63:                                               ; preds = %56, %51, %50
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_ooblayout_set_eccbytes(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @pl35x_ecc_ooblayout16_ecc(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, %1
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = mul i32 %9, %1
  store i32 %10, ptr %2, align 4
  %11 = load i32, ptr %8, align 4
  %12 = getelementptr inbounds %struct.mtd_oob_region, ptr %2, i32 0, i32 1
  store i32 %11, ptr %12, align 4
  br label %13

13:                                               ; preds = %7, %3
  %14 = phi i32 [ 0, %7 ], [ -34, %3 ]
  ret i32 %14
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @pl35x_ecc_ooblayout16_free(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, %1
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = mul i32 %9, %1
  %11 = add i32 %10, 8
  store i32 %11, ptr %2, align 4
  %12 = getelementptr inbounds %struct.mtd_oob_region, ptr %2, i32 0, i32 1
  store i32 8, ptr %12, align 4
  br label %13

13:                                               ; preds = %7, %3
  %14 = phi i32 [ 0, %7 ], [ -34, %3 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_op_parser_exec_op(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl35x_nand_exec_op(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -12
  %6 = getelementptr inbounds %struct.nand_subop, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %101, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.nand_subop, ptr %1, i32 0, i32 1
  br label %11

11:                                               ; preds = %79, %9
  %12 = phi i1 [ false, %9 ], [ %91, %79 ]
  %13 = phi i32 [ -1, %9 ], [ %92, %79 ]
  %14 = phi i32 [ 0, %9 ], [ %90, %79 ]
  %15 = phi i32 [ 0, %9 ], [ %89, %79 ]
  %16 = phi i32 [ 0, %9 ], [ %93, %79 ]
  %17 = phi i32 [ 0, %9 ], [ %88, %79 ]
  %18 = phi i32 [ 0, %9 ], [ %87, %79 ]
  %19 = phi i32 [ 0, %9 ], [ %86, %79 ]
  %20 = phi i32 [ 0, %9 ], [ %85, %79 ]
  %21 = phi i32 [ 0, %9 ], [ %84, %79 ]
  %22 = phi i32 [ 0, %9 ], [ %83, %79 ]
  %23 = phi i32 [ 0, %9 ], [ %82, %79 ]
  %24 = phi i32 [ 0, %9 ], [ %81, %79 ]
  %25 = phi ptr [ null, %9 ], [ %80, %79 ]
  %26 = load ptr, ptr %10, align 4
  %27 = getelementptr %struct.nand_op_instr, ptr %26, i32 %16
  %28 = load i32, ptr %27, align 4
  switch i32 %28, label %79 [
    i32 0, label %29
    i32 1, label %42
    i32 2, label %72
    i32 3, label %72
    i32 4, label %74
  ]

29:                                               ; preds = %11
  %30 = icmp eq i32 %22, 0
  %31 = getelementptr %struct.nand_op_instr, ptr %26, i32 %16, i32 1
  %32 = load i8, ptr %31, align 4
  %33 = zext i8 %32 to i32
  %34 = shl nuw nsw i32 %33, 3
  %35 = shl nuw nsw i32 %33, 11
  %36 = icmp ne i32 %13, 3
  %37 = select i1 %36, i1 true, i1 %12
  %38 = select i1 %30, i32 %34, i32 %19
  %39 = select i1 %30, i32 %18, i32 %35
  %40 = select i1 %30, i1 %12, i1 %37
  %41 = add i32 %22, 1
  br label %79

42:                                               ; preds = %11
  %43 = tail call i32 @nand_subop_get_addr_start_off(ptr noundef %1, i32 noundef %16) #8
  %44 = tail call i32 @nand_subop_get_num_addr_cyc(ptr noundef %1, i32 noundef %16) #8
  %45 = getelementptr %struct.nand_op_instr, ptr %26, i32 %16, i32 1, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr i8, ptr %46, i32 %43
  %48 = shl i32 %44, 21
  %49 = or i32 %48, %17
  %50 = icmp ult i32 %43, %44
  br i1 %50, label %51, label %79

51:                                               ; preds = %67, %42
  %52 = phi i32 [ %70, %67 ], [ %43, %42 ]
  %53 = phi i32 [ %69, %67 ], [ %20, %42 ]
  %54 = phi i32 [ %68, %67 ], [ %21, %42 ]
  %55 = icmp slt i32 %52, 4
  %56 = getelementptr i8, ptr %47, i32 %52
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i32
  %59 = shl i32 %52, 3
  br i1 %55, label %60, label %63

60:                                               ; preds = %51
  %61 = shl i32 %58, %59
  %62 = or i32 %61, %54
  br label %67

63:                                               ; preds = %51
  %64 = add i32 %59, -32
  %65 = shl i32 %58, %64
  %66 = or i32 %65, %53
  br label %67

67:                                               ; preds = %63, %60
  %68 = phi i32 [ %62, %60 ], [ %54, %63 ]
  %69 = phi i32 [ %53, %60 ], [ %66, %63 ]
  %70 = add nuw i32 %52, 1
  %71 = icmp eq i32 %70, %44
  br i1 %71, label %79, label %51

72:                                               ; preds = %11, %11
  %73 = tail call i32 @nand_subop_get_data_len(ptr noundef %1, i32 noundef %16) #8
  br label %79

74:                                               ; preds = %11
  %75 = getelementptr %struct.nand_op_instr, ptr %26, i32 %16, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr %struct.nand_op_instr, ptr %26, i32 %16, i32 2
  %78 = load i32, ptr %77, align 4
  br label %79

79:                                               ; preds = %74, %72, %67, %42, %29, %11
  %80 = phi ptr [ %25, %11 ], [ %25, %74 ], [ %27, %72 ], [ %25, %29 ], [ %25, %42 ], [ %25, %67 ]
  %81 = phi i32 [ %24, %11 ], [ %76, %74 ], [ %24, %72 ], [ %24, %29 ], [ %24, %42 ], [ %24, %67 ]
  %82 = phi i32 [ %23, %11 ], [ %23, %74 ], [ %23, %72 ], [ %23, %29 ], [ %44, %42 ], [ %44, %67 ]
  %83 = phi i32 [ %22, %11 ], [ %22, %74 ], [ %22, %72 ], [ %41, %29 ], [ %22, %42 ], [ %22, %67 ]
  %84 = phi i32 [ %21, %11 ], [ %21, %74 ], [ %21, %72 ], [ %21, %29 ], [ %21, %42 ], [ %68, %67 ]
  %85 = phi i32 [ %20, %11 ], [ %20, %74 ], [ %20, %72 ], [ %20, %29 ], [ %20, %42 ], [ %69, %67 ]
  %86 = phi i32 [ %19, %11 ], [ %19, %74 ], [ %19, %72 ], [ %38, %29 ], [ %19, %42 ], [ %19, %67 ]
  %87 = phi i32 [ %18, %11 ], [ %18, %74 ], [ %18, %72 ], [ %39, %29 ], [ %18, %42 ], [ %18, %67 ]
  %88 = phi i32 [ %17, %11 ], [ %17, %74 ], [ %17, %72 ], [ %17, %29 ], [ %49, %42 ], [ %49, %67 ]
  %89 = phi i32 [ %15, %11 ], [ %15, %74 ], [ %73, %72 ], [ %15, %29 ], [ %15, %42 ], [ %15, %67 ]
  %90 = phi i32 [ %14, %11 ], [ %78, %74 ], [ %14, %72 ], [ %14, %29 ], [ %14, %42 ], [ %14, %67 ]
  %91 = phi i1 [ %12, %11 ], [ %12, %74 ], [ %12, %72 ], [ %40, %29 ], [ %12, %42 ], [ %12, %67 ]
  %92 = load i32, ptr %27, align 4
  %93 = add nuw i32 %16, 1
  %94 = load i32, ptr %6, align 4
  %95 = icmp ult i32 %93, %94
  br i1 %95, label %11, label %96

96:                                               ; preds = %79
  %97 = or i32 %87, %86
  %98 = select i1 %91, i32 1048576, i32 0
  %99 = or i32 %97, %88
  %100 = or i32 %99, %98
  br label %101

101:                                              ; preds = %96, %2
  %102 = phi i32 [ 0, %2 ], [ %90, %96 ]
  %103 = phi i32 [ 0, %2 ], [ %89, %96 ]
  %104 = phi i32 [ 0, %2 ], [ %87, %96 ]
  %105 = phi i32 [ 0, %2 ], [ %85, %96 ]
  %106 = phi i32 [ 0, %2 ], [ %84, %96 ]
  %107 = phi i32 [ 0, %2 ], [ %83, %96 ]
  %108 = phi i32 [ 0, %2 ], [ %82, %96 ]
  %109 = phi i32 [ 0, %2 ], [ %81, %96 ]
  %110 = phi ptr [ null, %2 ], [ %80, %96 ]
  %111 = phi i32 [ 0, %2 ], [ %100, %96 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !40
  tail call void @arm_heavy_mb() #8
  %112 = getelementptr i8, ptr %4, i32 -4
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr i8, ptr %113, i32 %111
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 %106) #8, !srcloc !9
  %115 = icmp ugt i32 %108, 4
  br i1 %115, label %116, label %119

116:                                              ; preds = %101
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !41
  tail call void @arm_heavy_mb() #8
  %117 = load ptr, ptr %112, align 4
  %118 = getelementptr i8, ptr %117, i32 %111
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 %105) #8, !srcloc !9
  br label %119

119:                                              ; preds = %116, %101
  %120 = icmp eq ptr %110, null
  br i1 %120, label %135, label %121

121:                                              ; preds = %119
  %122 = load i32, ptr %110, align 4
  %123 = icmp eq i32 %122, 3
  br i1 %123, label %124, label %133

124:                                              ; preds = %121
  %125 = icmp eq i32 %107, 2
  %126 = or i32 %104, 3145728
  %127 = select i1 %125, i32 %126, i32 2097152
  %128 = getelementptr inbounds %struct.nand_op_instr, ptr %110, i32 0, i32 1, i32 0, i32 1
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr inbounds %struct.nand_op_instr, ptr %110, i32 0, i32 1, i32 0, i32 2
  %131 = load i8, ptr %130, align 4, !range !42
  %132 = icmp ne i8 %131, 0
  tail call fastcc void @pl35x_nand_write_data_op(ptr noundef %0, ptr noundef %129, i32 noundef %103, i1 noundef zeroext %132, i32 noundef %127)
  br label %133

133:                                              ; preds = %124, %121
  %134 = icmp eq i32 %109, 0
  br i1 %134, label %145, label %137

135:                                              ; preds = %119
  %136 = icmp eq i32 %109, 0
  br i1 %136, label %155, label %137

137:                                              ; preds = %135, %133
  %138 = phi ptr [ null, %135 ], [ %110, %133 ]
  %139 = add i32 %102, 999
  %140 = udiv i32 %139, 1000
  %141 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %141(i32 noundef %140) #8
  %142 = tail call fastcc i32 @pl35x_smc_wait_for_irq(ptr noundef %5)
  %143 = icmp ne i32 %142, 0
  %144 = select i1 %143, i1 true, i1 %120
  br i1 %144, label %155, label %145

145:                                              ; preds = %137, %133
  %146 = phi ptr [ %110, %133 ], [ %138, %137 ]
  %147 = load i32, ptr %146, align 4
  %148 = icmp eq i32 %147, 2
  br i1 %148, label %149, label %155

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.nand_op_instr, ptr %146, i32 0, i32 1, i32 0, i32 1
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr inbounds %struct.nand_op_instr, ptr %146, i32 0, i32 1, i32 0, i32 2
  %153 = load i8, ptr %152, align 4, !range !42
  %154 = icmp ne i8 %153, 0
  tail call fastcc void @pl35x_nand_read_data_op(ptr noundef %0, ptr noundef %151, i32 noundef %103, i1 noundef zeroext %154, i32 noundef 2097152)
  br label %155

155:                                              ; preds = %149, %145, %137, %135
  %156 = phi i32 [ %142, %137 ], [ 0, %149 ], [ 0, %145 ], [ 0, %135 ]
  ret i32 %156
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_subop_get_addr_start_off(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_subop_get_num_addr_cyc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_subop_get_data_len(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_scan_with_ids(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i64 2153944557}
!9 = !{i64 4677811}
!10 = !{i64 2153899177}
!11 = !{i64 2153898800}
!12 = !{i64 4678229}
!13 = !{i64 2153905341}
!14 = !{i64 2153905545}
!15 = !{i64 2153945205}
!16 = !{i64 2153945795}
!17 = !{!"auto-init"}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{i64 2153940789}
!20 = !{i64 2153941001}
!21 = !{i64 2153906495}
!22 = !{i64 2153906860}
!23 = !{i64 2153916269}
!24 = !{i64 2153916601}
!25 = !{i64 2153907628}
!26 = !{i64 4678009}
!27 = !{i64 2153907967}
!28 = !{i64 2153912508}
!29 = !{i64 2153915028}
!30 = !{i64 2153915360}
!31 = !{i64 2153908407}
!32 = !{i64 2153908858}
!33 = !{i64 4677614}
!34 = !{i64 2153911968}
!35 = !{i64 2153901322}
!36 = !{i64 2153901665}
!37 = !{i64 2153899606}
!38 = !{i64 2153903963}
!39 = !{i64 2153904312}
!40 = !{i64 2153926075}
!41 = !{i64 2153926407}
!42 = !{i8 0, i8 2}
