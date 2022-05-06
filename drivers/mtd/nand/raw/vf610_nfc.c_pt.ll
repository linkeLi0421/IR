; ModuleID = '/llk/IR/drivers/mtd/nand/raw/vf610_nfc.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/vf610_nfc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.nand_op_parser = type { ptr, i32 }
%struct.nand_op_parser_data_constraints = type { i32 }
%struct.nand_op_parser_pattern_elem = type { i32, i8, %union.anon.12 }
%union.anon.12 = type { %struct.nand_op_parser_addr_constraints }
%struct.nand_op_parser_addr_constraints = type { i32 }
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
%struct.vf610_nfc = type { %struct.nand_controller, %struct.nand_chip, ptr, ptr, %struct.completion, i32, ptr, i8, i32 }
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.11, i32, %struct.mutex, i8, i32, i32, ptr, i8, ptr, %struct.nand_ecc_ctrl, ptr }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.8 = type { %struct.mtd_part, [16 x i8] }
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
%struct.anon.11 = type { i32, i32 }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nand_subop = type { i32, ptr, i32, i32, i32 }
%struct.nand_op_instr = type { i32, %union.anon.5, i32 }
%union.anon.5 = type { %struct.nand_op_data_instr }
%struct.nand_op_data_instr = type { i32, %union.anon.6, i8 }
%union.anon.6 = type { ptr }

@__initcall__kmod_vf610_nfc__184_961_vf610_nfc_driver_init6 = internal global ptr @vf610_nfc_driver_init, section ".initcall6.init", align 4
@vf610_nfc_driver = internal global %struct.platform_driver { ptr @vf610_nfc_probe, ptr @vf610_nfc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @vf610_nfc_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vf610_nfc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_vf610_nfc_driver_exit = internal global ptr @vf610_nfc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author185 = internal constant [57 x i8] c"vf610_nfc.author=Stefan Agner <stefan.agner@toradex.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description186 = internal constant [66 x i8] c"vf610_nfc.description=Freescale VF610/MPC5125 NFC MTD NAND driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file187 = internal constant [46 x i8] c"vf610_nfc.file=drivers/mtd/nand/raw/vf610_nfc\00", section ".modinfo", align 1
@__UNIQUE_ID_license188 = internal constant [22 x i8] c"vf610_nfc.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"vf610_nfc\00", align 1
@vf610_nfc_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,vf610-nfc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@vf610_nfc_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @vf610_nfc_suspend, ptr @vf610_nfc_resume, ptr @vf610_nfc_suspend, ptr @vf610_nfc_resume, ptr @vf610_nfc_suspend, ptr @vf610_nfc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Unable to enable clock!\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"fsl,vf610-nfc-nandcs\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Only one NAND chip supported!\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"NAND chip sub-node missing!\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Error requesting IRQ!\0A\00", align 1
@vf610_nfc_controller_ops = internal constant %struct.nand_controller_ops { ptr @vf610_nfc_attach_chip, ptr null, ptr @vf610_nfc_exec_op, ptr null }, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@nand_controller_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"&nfc->lock\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Unsupported flash page size\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"Unsupported flash with hwecc\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"Step size needs to be page size\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"Unsupported ECC strength\0A\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"Timeout while waiting for BUSY.\0A\00", align 1
@vf610_nfc_op_parser = internal constant %struct.nand_op_parser { ptr @.compoundliteral.15, i32 2 }, align 4
@.compoundliteral = internal constant <{ %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, { i32, i8, { %struct.nand_op_parser_data_constraints } }, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem }> <{ %struct.nand_op_parser_pattern_elem { i32 0, i8 1, %union.anon.12 zeroinitializer }, %struct.nand_op_parser_pattern_elem { i32 1, i8 1, %union.anon.12 { %struct.nand_op_parser_addr_constraints { i32 5 } } }, { i32, i8, { %struct.nand_op_parser_data_constraints } } { i32 3, i8 1, { %struct.nand_op_parser_data_constraints } { %struct.nand_op_parser_data_constraints { i32 2304 } } }, %struct.nand_op_parser_pattern_elem { i32 0, i8 1, %union.anon.12 zeroinitializer }, %struct.nand_op_parser_pattern_elem { i32 4, i8 1, %union.anon.12 zeroinitializer } }>, align 4
@.compoundliteral.14 = internal constant <{ %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, { i32, i8, { %struct.nand_op_parser_data_constraints } } }> <{ %struct.nand_op_parser_pattern_elem { i32 0, i8 1, %union.anon.12 zeroinitializer }, %struct.nand_op_parser_pattern_elem { i32 1, i8 1, %union.anon.12 { %struct.nand_op_parser_addr_constraints { i32 5 } } }, %struct.nand_op_parser_pattern_elem { i32 0, i8 1, %union.anon.12 zeroinitializer }, %struct.nand_op_parser_pattern_elem { i32 4, i8 1, %union.anon.12 zeroinitializer }, { i32, i8, { %struct.nand_op_parser_data_constraints } } { i32 2, i8 1, { %struct.nand_op_parser_data_constraints } { %struct.nand_op_parser_data_constraints { i32 2304 } } } }>, align 4
@.compoundliteral.15 = internal constant [2 x %struct.nand_op_parser_pattern] [%struct.nand_op_parser_pattern { ptr @.compoundliteral, i32 5, ptr @vf610_nfc_cmd }, %struct.nand_op_parser_pattern { ptr @.compoundliteral.14, i32 5, ptr @vf610_nfc_cmd }], align 4
@.str.16 = private unnamed_addr constant [33 x i8] c"drivers/mtd/nand/raw/vf610_nfc.c\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author185, ptr @__UNIQUE_ID_description186, ptr @__UNIQUE_ID_file187, ptr @__UNIQUE_ID_license188, ptr @__exitcall_vf610_nfc_driver_exit, ptr @__initcall__kmod_vf610_nfc__184_961_vf610_nfc_driver_init6, ptr @vf610_nfc_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @vf610_nfc_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @vf610_nfc_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @vf610_nfc_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @vf610_nfc_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vf610_nfc_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 1488, i32 noundef 3520) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %100, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.vf610_nfc, ptr %3, i32 0, i32 2
  store ptr %2, ptr %6, align 8
  %7 = getelementptr inbounds %struct.vf610_nfc, ptr %3, i32 0, i32 1
  %8 = getelementptr inbounds %struct.vf610_nfc, ptr %3, i32 0, i32 1, i32 0, i32 0, i32 55
  store ptr null, ptr %8, align 4
  %9 = getelementptr inbounds %struct.vf610_nfc, ptr %3, i32 0, i32 1, i32 0, i32 0, i32 56, i32 1
  store ptr %2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.vf610_nfc, ptr %3, i32 0, i32 1, i32 0, i32 0, i32 13
  store ptr @.str, ptr %10, align 8
  %11 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #8
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %100, label %13

13:                                               ; preds = %5
  %14 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #8
  %15 = getelementptr inbounds %struct.vf610_nfc, ptr %3, i32 0, i32 3
  store ptr %14, ptr %15, align 4
  %16 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = ptrtoint ptr %14 to i32
  br label %100

19:                                               ; preds = %13
  %20 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #8
  %21 = getelementptr inbounds %struct.vf610_nfc, ptr %3, i32 0, i32 6
  store ptr %20, ptr %21, align 4
  %22 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = ptrtoint ptr %20 to i32
  br label %100

25:                                               ; preds = %19
  %26 = tail call i32 @clk_prepare(ptr noundef %20) #8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = tail call i32 @clk_enable(ptr noundef %20) #8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  tail call void @clk_unprepare(ptr noundef %20) #8
  br label %32

32:                                               ; preds = %31, %25
  %33 = phi i32 [ %29, %31 ], [ %26, %25 ]
  %34 = load ptr, ptr %6, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.1) #9
  br label %100

35:                                               ; preds = %28
  %36 = tail call ptr @of_match_device(ptr noundef nonnull @vf610_nfc_dt_ids, ptr noundef %2) #8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %97, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.of_device_id, ptr %36, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = ptrtoint ptr %40 to i32
  %42 = getelementptr inbounds %struct.vf610_nfc, ptr %3, i32 0, i32 5
  store i32 %41, ptr %42, align 8
  %43 = load ptr, ptr %6, align 8
  %44 = getelementptr inbounds %struct.device, ptr %43, i32 0, i32 25
  %45 = load ptr, ptr %44, align 8
  %46 = tail call ptr @of_get_next_available_child(ptr noundef %45, ptr noundef null) #8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %70, label %48

48:                                               ; preds = %38
  %49 = getelementptr inbounds %struct.vf610_nfc, ptr %3, i32 0, i32 1, i32 0, i32 0, i32 56, i32 25
  br label %50

50:                                               ; preds = %64, %48
  %51 = phi ptr [ %46, %48 ], [ %68, %64 ]
  %52 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %51, ptr noundef nonnull @.str.2) #8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr %49, align 8
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr %6, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.3) #9
  tail call void @of_node_put(ptr noundef nonnull %51) #8
  br label %97

59:                                               ; preds = %54
  store ptr %51, ptr %49, align 8
  %60 = load ptr, ptr %10, align 8
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = tail call i32 @of_property_read_string(ptr noundef nonnull %51, ptr noundef nonnull @.str.6, ptr noundef %10) #8
  br label %64

64:                                               ; preds = %62, %59, %50
  %65 = load ptr, ptr %6, align 8
  %66 = getelementptr inbounds %struct.device, ptr %65, i32 0, i32 25
  %67 = load ptr, ptr %66, align 8
  %68 = tail call ptr @of_get_next_available_child(ptr noundef %67, ptr noundef nonnull %51) #8
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %50

70:                                               ; preds = %64, %38
  %71 = getelementptr inbounds %struct.vf610_nfc, ptr %3, i32 0, i32 1, i32 0, i32 0, i32 56, i32 25
  %72 = load ptr, ptr %71, align 8
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load ptr, ptr %6, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.4) #9
  br label %97

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.vf610_nfc, ptr %3, i32 0, i32 1, i32 6
  %78 = load i32, ptr %77, align 8
  %79 = or i32 %78, 512
  store i32 %79, ptr %77, align 8
  %80 = getelementptr inbounds %struct.vf610_nfc, ptr %3, i32 0, i32 4
  store i32 0, ptr %80, align 4
  %81 = getelementptr inbounds %struct.vf610_nfc, ptr %3, i32 0, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %81, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_completion.__key) #8
  %82 = load ptr, ptr %6, align 8
  %83 = tail call i32 @devm_request_threaded_irq(ptr noundef %82, i32 noundef %11, ptr noundef nonnull @vf610_nfc_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %3) #8
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %76
  %86 = load ptr, ptr %6, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.5) #9
  br label %97

87:                                               ; preds = %76
  tail call fastcc void @vf610_nfc_preinit_controller(ptr noundef nonnull %3)
  tail call void @__mutex_init(ptr noundef nonnull %3, ptr noundef nonnull @.str.8, ptr noundef nonnull @nand_controller_init.__key) #8
  %88 = getelementptr inbounds %struct.nand_controller, ptr %3, i32 0, i32 1
  store ptr @vf610_nfc_controller_ops, ptr %88, align 4
  %89 = getelementptr inbounds %struct.vf610_nfc, ptr %3, i32 0, i32 1, i32 32
  store ptr %3, ptr %89, align 4
  %90 = tail call i32 @nand_scan_with_ids(ptr noundef %7, i32 noundef 1, ptr noundef null) #8
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %93, align 8
  %94 = tail call i32 @mtd_device_parse_register(ptr noundef %7, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #8
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  tail call void @nand_cleanup(ptr noundef %7) #8
  br label %97

97:                                               ; preds = %96, %87, %85, %74, %57, %35
  %98 = phi i32 [ -22, %57 ], [ %83, %85 ], [ %90, %87 ], [ %94, %96 ], [ -19, %74 ], [ -19, %35 ]
  %99 = load ptr, ptr %21, align 4
  tail call void @clk_disable(ptr noundef %99) #8
  tail call void @clk_unprepare(ptr noundef %99) #8
  br label %100

100:                                              ; preds = %97, %92, %32, %23, %17, %5, %1
  %101 = phi i32 [ %18, %17 ], [ %24, %23 ], [ %33, %32 ], [ %98, %97 ], [ -12, %1 ], [ -22, %5 ], [ 0, %92 ]
  ret i32 %101
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vf610_nfc_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.vf610_nfc, ptr %3, i32 0, i32 1
  %5 = tail call i32 @mtd_device_unregister(ptr noundef %4) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7, !prof !8

7:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 919, i32 noundef 9, ptr noundef null) #8
  br label %8

8:                                                ; preds = %7, %1
  tail call void @nand_cleanup(ptr noundef %4) #8
  %9 = getelementptr inbounds %struct.vf610_nfc, ptr %3, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  tail call void @clk_disable(ptr noundef %10) #8
  tail call void @clk_unprepare(ptr noundef %10) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vf610_nfc_irq(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.vf610_nfc, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 16184
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %7 = and i32 %6, -1048577
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr i8, ptr %8, i32 16184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #8, !srcloc !12
  %10 = getelementptr inbounds %struct.vf610_nfc, ptr %1, i32 0, i32 4
  tail call void @complete(ptr noundef %10) #8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vf610_nfc_preinit_controller(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.vf610_nfc, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 16176
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %6 = and i32 %5, -129
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 16176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #8, !srcloc !12
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr i8, ptr %9, i32 16176
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %12 = and i32 %11, -33
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr i8, ptr %13, i32 16176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #8, !srcloc !12
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr i8, ptr %15, i32 16176
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %18 = and i32 %17, -17
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %19 = load ptr, ptr %2, align 4
  %20 = getelementptr i8, ptr %19, i32 16176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #8, !srcloc !12
  %21 = load ptr, ptr %2, align 4
  %22 = getelementptr i8, ptr %21, i32 16176
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %24 = and i32 %23, -65
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %25 = load ptr, ptr %2, align 4
  %26 = getelementptr i8, ptr %25, i32 16176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #8, !srcloc !12
  %27 = load ptr, ptr %2, align 4
  %28 = getelementptr i8, ptr %27, i32 16176
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %30 = and i32 %29, -1048577
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %31 = load ptr, ptr %2, align 4
  %32 = getelementptr i8, ptr %31, i32 16176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #8, !srcloc !12
  %33 = load ptr, ptr %2, align 4
  %34 = getelementptr i8, ptr %33, i32 16176
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %36 = or i32 %35, 65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %37 = load ptr, ptr %2, align 4
  %38 = getelementptr i8, ptr %37, i32 16176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #8, !srcloc !12
  %39 = load ptr, ptr %2, align 4
  %40 = getelementptr i8, ptr %39, i32 16176
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %42 = and i32 %41, -917505
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %43 = load ptr, ptr %2, align 4
  %44 = getelementptr i8, ptr %43, i32 16176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #8, !srcloc !12
  %45 = load ptr, ptr %2, align 4
  %46 = getelementptr i8, ptr %45, i32 16176
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %48 = and i32 %47, -16
  %49 = or i32 %48, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %50 = load ptr, ptr %2, align 4
  %51 = getelementptr i8, ptr %50, i32 16176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #8, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vf610_nfc_attach_chip(ptr nocapture noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -24
  tail call fastcc void @vf610_nfc_init_controller(ptr noundef %2)
  %3 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 10
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 131072
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = or i32 %4, 262144
  store i32 %8, ptr %3, align 8
  br label %9

9:                                                ; preds = %7, %1
  %10 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, %11
  %15 = icmp ugt i32 %14, 2296
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = getelementptr i8, ptr %0, i32 1424
  %18 = load ptr, ptr %17, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.9) #9
  br label %60

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33
  %21 = load i32, ptr %20, align 8
  %22 = icmp eq i32 %21, 3
  br i1 %22, label %23, label %60

23:                                               ; preds = %19
  %24 = icmp ne i32 %11, 2048
  %25 = icmp ult i32 %13, 64
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %0, i32 1424
  %29 = load ptr, ptr %28, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.10) #9
  br label %60

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  %32 = load i32, ptr %31, align 8
  %33 = icmp eq i32 %32, %11
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = getelementptr i8, ptr %0, i32 1424
  %36 = load ptr, ptr %35, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.11) #9
  br label %60

37:                                               ; preds = %30
  %38 = icmp ugt i32 %13, 64
  br i1 %38, label %39, label %40

39:                                               ; preds = %37
  store i32 64, ptr %12, align 4
  br label %40

40:                                               ; preds = %39, %37
  %41 = tail call ptr @nand_get_large_page_ooblayout() #8
  %42 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 15
  store ptr %41, ptr %42, align 8
  %43 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 7
  %44 = load i32, ptr %43, align 4
  switch i32 %44, label %46 [
    i32 32, label %49
    i32 24, label %45
  ]

45:                                               ; preds = %40
  br label %49

46:                                               ; preds = %40
  %47 = getelementptr i8, ptr %0, i32 1424
  %48 = load ptr, ptr %47, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.12) #9
  br label %60

49:                                               ; preds = %45, %40
  %50 = phi i32 [ 6, %45 ], [ 7, %40 ]
  %51 = phi i32 [ 45, %45 ], [ 60, %40 ]
  %52 = getelementptr i8, ptr %0, i32 1460
  store i32 %50, ptr %52, align 4
  %53 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  store i32 %51, ptr %53, align 4
  %54 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 18
  store ptr @vf610_nfc_read_page, ptr %54, align 8
  %55 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 21
  store ptr @vf610_nfc_write_page, ptr %55, align 4
  %56 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 16
  store ptr @vf610_nfc_read_page_raw, ptr %56, align 8
  %57 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 17
  store ptr @vf610_nfc_write_page_raw, ptr %57, align 4
  %58 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 24
  store ptr @vf610_nfc_read_oob, ptr %58, align 8
  %59 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 25
  store ptr @vf610_nfc_write_oob, ptr %59, align 4
  store i32 2048, ptr %31, align 8
  br label %60

60:                                               ; preds = %49, %46, %34, %27, %19, %16
  %61 = phi i32 [ -6, %16 ], [ -6, %27 ], [ -6, %34 ], [ 0, %49 ], [ -6, %46 ], [ 0, %19 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vf610_nfc_exec_op(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #2 {
  br i1 %2, label %20, label %4

4:                                                ; preds = %3
  %5 = getelementptr i8, ptr %0, i32 1448
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %20

8:                                                ; preds = %4
  %9 = load i32, ptr %1, align 4
  %10 = getelementptr i8, ptr %0, i32 1428
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 16140
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %14 = and i32 %13, 16777215
  %15 = shl i32 16777216, %9
  %16 = or i32 %14, %15
  %17 = or i32 %16, 268435456
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %18 = load ptr, ptr %10, align 4
  %19 = getelementptr i8, ptr %18, i32 16140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #8, !srcloc !12
  br label %20

20:                                               ; preds = %8, %4, %3
  %21 = tail call i32 @nand_op_parser_exec_op(ptr noundef %0, ptr noundef nonnull @vf610_nfc_op_parser, ptr noundef %1, i1 noundef zeroext %2) #8
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vf610_nfc_init_controller(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.vf610_nfc, ptr %0, i32 0, i32 1, i32 6
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 2
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.vf610_nfc, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 16176
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8
  br i1 %5, label %14, label %10

10:                                               ; preds = %1
  %11 = or i32 %9, 128
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr i8, ptr %12, i32 16176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #8, !srcloc !12
  br label %18

14:                                               ; preds = %1
  %15 = and i32 %9, -129
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %16 = load ptr, ptr %6, align 4
  %17 = getelementptr i8, ptr %16, i32 16176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #8, !srcloc !12
  br label %18

18:                                               ; preds = %14, %10
  %19 = getelementptr inbounds %struct.vf610_nfc, ptr %0, i32 0, i32 1, i32 33
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %22, label %37

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.vf610_nfc, ptr %0, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 16176
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %27 = and i32 %26, -2143289345
  %28 = or i32 %27, 1203765248
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %29 = load ptr, ptr %23, align 4
  %30 = getelementptr i8, ptr %29, i32 16176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #8, !srcloc !12
  %31 = load ptr, ptr %23, align 4
  %32 = getelementptr i8, ptr %31, i32 16176
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %34 = or i32 %33, 2097152
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %35 = load ptr, ptr %23, align 4
  %36 = getelementptr i8, ptr %35, i32 16176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #8, !srcloc !12
  br label %37

37:                                               ; preds = %22, %18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nand_get_large_page_ooblayout() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vf610_nfc_read_page(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr i8, ptr %0, i32 -24
  %6 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, %7
  %11 = getelementptr i8, ptr %0, i32 1448
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %27

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr i8, ptr %0, i32 1428
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 16140
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %21 = and i32 %20, 16777215
  %22 = shl i32 16777216, %16
  %23 = or i32 %21, %22
  %24 = or i32 %23, 268435456
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %25 = load ptr, ptr %17, align 4
  %26 = getelementptr i8, ptr %25, i32 16140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #8, !srcloc !12
  br label %27

27:                                               ; preds = %14, %4
  %28 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 16384
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 65535, i32 16777215
  %33 = and i32 %32, %3
  %34 = select i1 %31, i32 8183808, i32 8314880
  %35 = getelementptr i8, ptr %0, i32 1460
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr i8, ptr %0, i32 1428
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr i8, ptr %38, i32 16176
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %41 = and i32 %40, -917505
  %42 = shl i32 %36, 17
  %43 = or i32 %41, %42
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %44 = load ptr, ptr %37, align 4
  %45 = getelementptr i8, ptr %44, i32 16176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #8, !srcloc !12
  tail call fastcc void @vf610_nfc_run(ptr noundef %5, i32 noundef 0, i32 noundef %33, i32 noundef 805306368, i32 noundef %34, i32 noundef %10)
  %46 = load ptr, ptr %37, align 4
  %47 = getelementptr i8, ptr %46, i32 16176
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %49 = and i32 %48, -917505
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %50 = load ptr, ptr %37, align 4
  %51 = getelementptr i8, ptr %50, i32 16176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #8, !srcloc !12
  %52 = load ptr, ptr %37, align 4
  %53 = load i32, ptr %6, align 4
  tail call void @mmiocpy(ptr noundef %1, ptr noundef %52, i32 noundef %53) #8
  %54 = icmp eq i32 %2, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %27
  %56 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %57 = load ptr, ptr %56, align 4
  %58 = load ptr, ptr %37, align 4
  %59 = load i32, ptr %6, align 4
  %60 = getelementptr i8, ptr %58, i32 %59
  %61 = load i32, ptr %8, align 4
  tail call void @mmiocpy(ptr noundef %57, ptr noundef %60, i32 noundef %61) #8
  br label %62

62:                                               ; preds = %55, %27
  %63 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr i8, ptr %0, i32 1340
  %66 = load i32, ptr %65, align 4
  %67 = load ptr, ptr %37, align 4
  %68 = getelementptr i8, ptr %67, i32 2300
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %70 = and i32 %69, 128
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %62
  %73 = and i32 %69, 63
  br label %86

74:                                               ; preds = %62
  %75 = sdiv i32 %66, 2
  %76 = getelementptr i8, ptr %0, i32 1456
  store i8 1, ptr %76, align 8
  %77 = load i32, ptr %8, align 4
  %78 = tail call i32 @nand_read_oob_op(ptr noundef %0, i32 noundef %3, i32 noundef 0, ptr noundef %64, i32 noundef %77) #8
  store i8 0, ptr %76, align 8
  %79 = getelementptr i8, ptr %0, i32 1328
  %80 = load i32, ptr %79, align 8
  %81 = load i32, ptr %8, align 4
  %82 = tail call i32 @nand_check_erased_ecc_chunk(ptr noundef %1, i32 noundef %80, ptr noundef %64, i32 noundef %81, ptr noundef null, i32 noundef 0, i32 noundef %75) #8
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %74
  %85 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52, i32 1
  br label %89

86:                                               ; preds = %74, %72
  %87 = phi i32 [ %73, %72 ], [ %82, %74 ]
  %88 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52
  br label %89

89:                                               ; preds = %86, %84
  %90 = phi ptr [ %88, %86 ], [ %85, %84 ]
  %91 = phi i32 [ %87, %86 ], [ 1, %84 ]
  %92 = phi i32 [ %87, %86 ], [ 0, %84 ]
  %93 = load i32, ptr %90, align 4
  %94 = add i32 %93, %91
  store i32 %94, ptr %90, align 4
  ret i32 %92
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vf610_nfc_write_page(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #8
  store i8 0, ptr %5, align 1, !annotation !13
  %10 = getelementptr i8, ptr %0, i32 1448
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %27

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr i8, ptr %0, i32 1428
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 16140
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %20 = and i32 %19, 16777215
  %21 = shl i32 16777216, %15
  %22 = or i32 %20, %21
  %23 = or i32 %22, 268435456
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %24 = load ptr, ptr %16, align 4
  %25 = getelementptr i8, ptr %24, i32 16140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #8, !srcloc !12
  %26 = load i32, ptr %6, align 4
  br label %27

27:                                               ; preds = %13, %4
  %28 = phi i32 [ %7, %4 ], [ %26, %13 ]
  %29 = add i32 %9, %7
  %30 = getelementptr i8, ptr %0, i32 -24
  %31 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 16384
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, i32 65535, i32 16777215
  %36 = and i32 %35, %3
  %37 = getelementptr i8, ptr %0, i32 1428
  %38 = load ptr, ptr %37, align 4
  tail call void @mmiocpy(ptr noundef %38, ptr noundef %1, i32 noundef %28) #8
  %39 = select i1 %34, i32 -2139242496, i32 -2139111424
  %40 = getelementptr i8, ptr %0, i32 1460
  %41 = load i32, ptr %40, align 4
  %42 = load ptr, ptr %37, align 4
  %43 = getelementptr i8, ptr %42, i32 16176
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %45 = and i32 %44, -917505
  %46 = shl i32 %41, 17
  %47 = or i32 %45, %46
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %48 = load ptr, ptr %37, align 4
  %49 = getelementptr i8, ptr %48, i32 16176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #8, !srcloc !12
  tail call fastcc void @vf610_nfc_run(ptr noundef %30, i32 noundef 0, i32 noundef %36, i32 noundef 268435456, i32 noundef %39, i32 noundef %29)
  %50 = load ptr, ptr %37, align 4
  %51 = getelementptr i8, ptr %50, i32 16176
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %53 = and i32 %52, -917505
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %54 = load ptr, ptr %37, align 4
  %55 = getelementptr i8, ptr %54, i32 16176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #8, !srcloc !12
  %56 = call i32 @nand_status_op(ptr noundef %0, ptr noundef nonnull %5) #8
  %57 = icmp eq i32 %56, 0
  %58 = load i8, ptr %5, align 1
  %59 = and i8 %58, 1
  %60 = icmp eq i8 %59, 0
  %61 = select i1 %60, i32 0, i32 -5
  %62 = select i1 %57, i32 %61, i32 %56
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vf610_nfc_read_page_raw(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr i8, ptr %0, i32 1456
  store i8 1, ptr %5, align 8
  %6 = tail call i32 @nand_read_page_raw(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #8
  store i8 0, ptr %5, align 8
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vf610_nfc_write_page_raw(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr i8, ptr %0, i32 1456
  store i8 1, ptr %5, align 8
  %6 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @nand_prog_page_begin_op(ptr noundef %0, i32 noundef %3, i32 noundef 0, ptr noundef %1, i32 noundef %7) #8
  %9 = icmp eq i32 %8, 0
  %10 = icmp ne i32 %2, 0
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 @nand_write_data_op(ptr noundef %0, ptr noundef %14, i32 noundef %16, i1 noundef zeroext false) #8
  br label %18

18:                                               ; preds = %12, %4
  %19 = phi i32 [ %17, %12 ], [ %8, %4 ]
  store i8 0, ptr %5, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = tail call i32 @nand_prog_page_end_op(ptr noundef %0) #8
  br label %23

23:                                               ; preds = %21, %18
  %24 = phi i32 [ %22, %21 ], [ %19, %18 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vf610_nfc_read_oob(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 1456
  store i8 1, ptr %3, align 8
  %4 = tail call i32 @nand_read_oob_std(ptr noundef %0, i32 noundef %1) #8
  store i8 0, ptr %3, align 8
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vf610_nfc_write_oob(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 1456
  store i8 1, ptr %3, align 8
  %4 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 @nand_prog_page_begin_op(ptr noundef %0, i32 noundef %1, i32 noundef %5, ptr noundef %7, i32 noundef %9) #8
  store i8 0, ptr %3, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = tail call i32 @nand_prog_page_end_op(ptr noundef %0) #8
  br label %14

14:                                               ; preds = %12, %2
  %15 = phi i32 [ %13, %12 ], [ %10, %2 ]
  ret i32 %15
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vf610_nfc_run(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #5 {
  %7 = getelementptr inbounds %struct.vf610_nfc, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 16136
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %11 = and i32 %10, -65536
  %12 = or i32 %11, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %13 = load ptr, ptr %7, align 4
  %14 = getelementptr i8, ptr %13, i32 16136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #8, !srcloc !12
  %15 = load ptr, ptr %7, align 4
  %16 = getelementptr i8, ptr %15, i32 16140
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %18 = and i32 %17, -16777216
  %19 = or i32 %18, %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %20 = load ptr, ptr %7, align 4
  %21 = getelementptr i8, ptr %20, i32 16140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %22 = load ptr, ptr %7, align 4
  %23 = getelementptr i8, ptr %22, i32 16172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %5) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %24 = load ptr, ptr %7, align 4
  %25 = getelementptr i8, ptr %24, i32 16128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %3) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %26 = load ptr, ptr %7, align 4
  %27 = getelementptr i8, ptr %26, i32 16132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %4) #8, !srcloc !12
  %28 = load ptr, ptr %7, align 4
  %29 = getelementptr i8, ptr %28, i32 16184
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %31 = or i32 %30, 1048576
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %32 = load ptr, ptr %7, align 4
  %33 = getelementptr i8, ptr %32, i32 16184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #8, !srcloc !12
  %34 = load ptr, ptr %7, align 4
  %35 = getelementptr i8, ptr %34, i32 16132
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %37 = or i32 %36, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %38 = load ptr, ptr %7, align 4
  %39 = getelementptr i8, ptr %38, i32 16132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #8, !srcloc !12
  %40 = getelementptr inbounds %struct.vf610_nfc, ptr %0, i32 0, i32 4
  %41 = tail call i32 @wait_for_completion_timeout(ptr noundef %40, i32 noundef 10) #8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %6
  %44 = getelementptr inbounds %struct.vf610_nfc, ptr %0, i32 0, i32 2
  %45 = load ptr, ptr %44, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %45, ptr noundef nonnull @.str.13) #9
  br label %46

46:                                               ; preds = %43, %6
  %47 = load ptr, ptr %7, align 4
  %48 = getelementptr i8, ptr %47, i32 16184
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %50 = or i32 %49, 393216
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %51 = load ptr, ptr %7, align 4
  %52 = getelementptr i8, ptr %51, i32 16184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #8, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_oob_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_check_erased_ecc_chunk(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_status_op(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_page_raw(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_prog_page_begin_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_write_data_op(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_prog_page_end_op(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_oob_std(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_op_parser_exec_op(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vf610_nfc_cmd(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr i8, ptr %0, i32 -24
  %6 = getelementptr inbounds %struct.nand_subop, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %278, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.nand_subop, ptr %1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %278, label %13

13:                                               ; preds = %9
  %14 = load i32, ptr %11, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.nand_op_instr, ptr %11, i32 0, i32 1
  %18 = load i8, ptr %17, align 4
  %19 = zext i8 %18 to i32
  %20 = shl nuw i32 %19, 24
  %21 = icmp ugt i32 %7, 1
  br i1 %21, label %22, label %168

22:                                               ; preds = %16
  %23 = getelementptr %struct.nand_op_instr, ptr %11, i32 1
  %24 = icmp eq ptr %23, null
  br i1 %24, label %168, label %25

25:                                               ; preds = %22
  %26 = load i32, ptr %23, align 4
  br label %27

27:                                               ; preds = %25, %13
  %28 = phi i32 [ %26, %25 ], [ %14, %13 ]
  %29 = phi i32 [ 16384, %25 ], [ 0, %13 ]
  %30 = phi i32 [ %20, %25 ], [ 0, %13 ]
  %31 = phi ptr [ %23, %25 ], [ %11, %13 ]
  %32 = phi i32 [ 1, %25 ], [ 0, %13 ]
  %33 = icmp eq i32 %28, 1
  br i1 %33, label %34, label %78

34:                                               ; preds = %27
  %35 = tail call i32 @nand_subop_get_num_addr_cyc(ptr noundef %1, i32 noundef %32) #8
  %36 = tail call i32 @nand_subop_get_addr_start_off(ptr noundef %1, i32 noundef %32) #8
  %37 = icmp slt i32 %36, %35
  br i1 %37, label %38, label %62

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.nand_op_instr, ptr %31, i32 0, i32 1, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  br label %41

41:                                               ; preds = %57, %38
  %42 = phi i32 [ %36, %38 ], [ %60, %57 ]
  %43 = phi i32 [ 0, %38 ], [ %59, %57 ]
  %44 = phi i32 [ 0, %38 ], [ %58, %57 ]
  %45 = getelementptr i8, ptr %40, i32 %42
  %46 = load i8, ptr %45, align 1
  %47 = icmp slt i32 %42, 2
  %48 = zext i8 %46 to i32
  %49 = shl i32 %42, 3
  br i1 %47, label %50, label %53

50:                                               ; preds = %41
  %51 = shl i32 %48, %49
  %52 = or i32 %51, %44
  br label %57

53:                                               ; preds = %41
  %54 = add i32 %49, -16
  %55 = shl i32 %48, %54
  %56 = or i32 %55, %43
  br label %57

57:                                               ; preds = %53, %50
  %58 = phi i32 [ %52, %50 ], [ %44, %53 ]
  %59 = phi i32 [ %43, %50 ], [ %56, %53 ]
  %60 = add nsw i32 %42, 1
  %61 = icmp eq i32 %60, %35
  br i1 %61, label %62, label %41

62:                                               ; preds = %57, %34
  %63 = phi i32 [ 0, %34 ], [ %58, %57 ]
  %64 = phi i32 [ 0, %34 ], [ %59, %57 ]
  %65 = sub i32 14, %35
  %66 = shl nsw i32 -1, %65
  %67 = and i32 %66, 16383
  %68 = or i32 %67, %29
  %69 = add nuw nsw i32 %32, 1
  %70 = load i32, ptr %6, align 4
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %72, label %168

72:                                               ; preds = %62
  %73 = load ptr, ptr %10, align 4
  %74 = getelementptr %struct.nand_op_instr, ptr %73, i32 %69
  %75 = icmp eq ptr %74, null
  br i1 %75, label %168, label %76

76:                                               ; preds = %72
  %77 = load i32, ptr %74, align 4
  br label %78

78:                                               ; preds = %76, %27
  %79 = phi ptr [ %73, %76 ], [ %11, %27 ]
  %80 = phi i32 [ %70, %76 ], [ %7, %27 ]
  %81 = phi i32 [ %77, %76 ], [ %28, %27 ]
  %82 = phi i32 [ %68, %76 ], [ %29, %27 ]
  %83 = phi i32 [ %64, %76 ], [ 0, %27 ]
  %84 = phi i32 [ %63, %76 ], [ 0, %27 ]
  %85 = phi ptr [ %74, %76 ], [ %31, %27 ]
  %86 = phi i32 [ %69, %76 ], [ %32, %27 ]
  %87 = icmp eq i32 %81, 3
  br i1 %87, label %88, label %127

88:                                               ; preds = %78
  %89 = tail call i32 @nand_subop_get_data_len(ptr noundef %1, i32 noundef %86) #8
  %90 = tail call i32 @nand_subop_get_data_start_off(ptr noundef %1, i32 noundef %86) #8
  %91 = getelementptr inbounds %struct.nand_op_instr, ptr %85, i32 0, i32 1, i32 0, i32 2
  %92 = load i8, ptr %91, align 4, !range !14
  %93 = icmp ne i8 %92, 0
  %94 = getelementptr i8, ptr %0, i32 1428
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr i8, ptr %95, i32 %90
  %97 = getelementptr inbounds %struct.nand_op_instr, ptr %85, i32 0, i32 1, i32 0, i32 1
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr i8, ptr %98, i32 %90
  %100 = getelementptr i8, ptr %0, i32 1456
  %101 = load i8, ptr %100, align 8, !range !14
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %88
  %104 = icmp eq i32 %89, 0
  br i1 %104, label %116, label %105

105:                                              ; preds = %105, %103
  %106 = phi i32 [ %113, %105 ], [ 0, %103 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  store i32 0, ptr %4, align 4
  %107 = getelementptr i8, ptr %99, i32 %106
  %108 = sub i32 %89, %106
  %109 = tail call i32 @llvm.umin.i32(i32 %108, i32 4) #8
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %4, ptr align 1 %107, i32 %109, i1 false) #8
  %110 = load i32, ptr %4, align 4
  %111 = tail call i32 @llvm.bswap.i32(i32 %110) #8
  %112 = getelementptr i8, ptr %96, i32 %106
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 %111) #8, !srcloc !12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  %113 = add i32 %106, 4
  %114 = icmp ult i32 %113, %89
  br i1 %114, label %105, label %116

115:                                              ; preds = %88
  tail call void @mmiocpy(ptr noundef %96, ptr noundef %99, i32 noundef %89) #8
  br label %116

116:                                              ; preds = %115, %105, %103
  %117 = or i32 %82, 256
  %118 = add nsw i32 %86, 1
  %119 = load i32, ptr %6, align 4
  %120 = icmp ult i32 %118, %119
  br i1 %120, label %121, label %162

121:                                              ; preds = %116
  %122 = load ptr, ptr %10, align 4
  %123 = getelementptr %struct.nand_op_instr, ptr %122, i32 %118
  %124 = icmp eq ptr %123, null
  br i1 %124, label %162, label %125

125:                                              ; preds = %121
  %126 = load i32, ptr %123, align 4
  br label %127

127:                                              ; preds = %125, %78
  %128 = phi ptr [ %122, %125 ], [ %79, %78 ]
  %129 = phi i32 [ %119, %125 ], [ %80, %78 ]
  %130 = phi i32 [ %126, %125 ], [ %81, %78 ]
  %131 = phi i1 [ %93, %125 ], [ false, %78 ]
  %132 = phi i32 [ %117, %125 ], [ %82, %78 ]
  %133 = phi i32 [ %90, %125 ], [ 0, %78 ]
  %134 = phi i32 [ %89, %125 ], [ 0, %78 ]
  %135 = phi ptr [ %123, %125 ], [ %85, %78 ]
  %136 = phi i32 [ %118, %125 ], [ %86, %78 ]
  %137 = icmp eq i32 %130, 0
  br i1 %137, label %138, label %151

138:                                              ; preds = %127
  %139 = getelementptr inbounds %struct.nand_op_instr, ptr %135, i32 0, i32 1
  %140 = load i8, ptr %139, align 4
  %141 = zext i8 %140 to i32
  %142 = shl nuw i32 %141, 24
  %143 = or i32 %132, 128
  %144 = add nuw nsw i32 %136, 1
  %145 = icmp ult i32 %144, %129
  br i1 %145, label %146, label %162

146:                                              ; preds = %138
  %147 = getelementptr %struct.nand_op_instr, ptr %128, i32 %144
  %148 = icmp eq ptr %147, null
  br i1 %148, label %162, label %149

149:                                              ; preds = %146
  %150 = load i32, ptr %147, align 4
  br label %151

151:                                              ; preds = %149, %127
  %152 = phi i32 [ %150, %149 ], [ %130, %127 ]
  %153 = phi i32 [ %143, %149 ], [ %132, %127 ]
  %154 = phi i32 [ %142, %149 ], [ 0, %127 ]
  %155 = phi ptr [ %147, %149 ], [ %135, %127 ]
  %156 = phi i32 [ %144, %149 ], [ %136, %127 ]
  %157 = icmp eq i32 %152, 4
  br i1 %157, label %158, label %182

158:                                              ; preds = %151
  %159 = or i32 %153, 64
  %160 = add nuw i32 %156, 1
  %161 = icmp ult i32 %160, %129
  br i1 %161, label %177, label %162

162:                                              ; preds = %158, %146, %138, %121, %116
  %163 = phi i32 [ %154, %158 ], [ %142, %146 ], [ %142, %138 ], [ 0, %121 ], [ 0, %116 ]
  %164 = phi i32 [ %134, %158 ], [ %134, %146 ], [ %134, %138 ], [ %89, %121 ], [ %89, %116 ]
  %165 = phi i32 [ %133, %158 ], [ %133, %146 ], [ %133, %138 ], [ %90, %121 ], [ %90, %116 ]
  %166 = phi i1 [ %131, %158 ], [ %131, %146 ], [ %131, %138 ], [ %93, %121 ], [ %93, %116 ]
  %167 = phi i32 [ %159, %158 ], [ %143, %146 ], [ %143, %138 ], [ %117, %121 ], [ %117, %116 ]
  br i1 %166, label %202, label %168

168:                                              ; preds = %162, %72, %62, %22, %16
  %169 = phi i32 [ %167, %162 ], [ 16384, %16 ], [ 16384, %22 ], [ %68, %62 ], [ %68, %72 ]
  %170 = phi i32 [ %164, %162 ], [ 0, %16 ], [ 0, %22 ], [ 0, %62 ], [ 0, %72 ]
  %171 = phi i32 [ %30, %162 ], [ %20, %16 ], [ %20, %22 ], [ %30, %62 ], [ %30, %72 ]
  %172 = phi i32 [ %84, %162 ], [ 0, %16 ], [ 0, %22 ], [ %63, %62 ], [ %63, %72 ]
  %173 = phi i32 [ %83, %162 ], [ 0, %16 ], [ 0, %22 ], [ %64, %62 ], [ %64, %72 ]
  %174 = phi i32 [ %163, %162 ], [ 0, %16 ], [ 0, %22 ], [ 0, %62 ], [ 0, %72 ]
  %175 = shl i32 %169, 8
  %176 = or i32 %171, %175
  tail call fastcc void @vf610_nfc_run(ptr noundef %5, i32 noundef %172, i32 noundef %173, i32 noundef %174, i32 noundef %176, i32 noundef %170)
  br label %278

177:                                              ; preds = %158
  %178 = getelementptr %struct.nand_op_instr, ptr %128, i32 %160
  %179 = icmp eq ptr %178, null
  br i1 %179, label %198, label %180

180:                                              ; preds = %177
  %181 = load i32, ptr %178, align 4
  br label %182

182:                                              ; preds = %180, %151
  %183 = phi i32 [ %181, %180 ], [ %152, %151 ]
  %184 = phi i32 [ %159, %180 ], [ %153, %151 ]
  %185 = phi ptr [ %178, %180 ], [ %155, %151 ]
  %186 = phi i32 [ %160, %180 ], [ %156, %151 ]
  %187 = icmp eq i32 %183, 2
  br i1 %187, label %188, label %198

188:                                              ; preds = %182
  %189 = tail call i32 @nand_subop_get_data_len(ptr noundef %1, i32 noundef %186) #8
  %190 = tail call i32 @nand_subop_get_data_start_off(ptr noundef %1, i32 noundef %186) #8
  %191 = getelementptr inbounds %struct.nand_op_instr, ptr %185, i32 0, i32 1, i32 0, i32 2
  %192 = load i8, ptr %191, align 4, !range !14
  %193 = icmp eq i8 %192, 0
  %194 = or i32 %184, 32
  br i1 %193, label %195, label %202

195:                                              ; preds = %188
  %196 = shl i32 %194, 8
  %197 = or i32 %196, %30
  tail call fastcc void @vf610_nfc_run(ptr noundef %5, i32 noundef %84, i32 noundef %83, i32 noundef %154, i32 noundef %197, i32 noundef %189)
  br label %233

198:                                              ; preds = %182, %177
  %199 = phi i1 [ false, %182 ], [ true, %177 ]
  %200 = phi ptr [ %185, %182 ], [ null, %177 ]
  %201 = phi i32 [ %184, %182 ], [ %159, %177 ]
  br i1 %131, label %202, label %223

202:                                              ; preds = %198, %188, %162
  %203 = phi i32 [ %194, %188 ], [ %201, %198 ], [ %167, %162 ]
  %204 = phi i32 [ %190, %188 ], [ %133, %198 ], [ %165, %162 ]
  %205 = phi i32 [ %189, %188 ], [ %134, %198 ], [ %164, %162 ]
  %206 = phi i32 [ %154, %188 ], [ %154, %198 ], [ %163, %162 ]
  %207 = phi ptr [ %185, %188 ], [ %200, %198 ], [ null, %162 ]
  %208 = phi i1 [ false, %188 ], [ %199, %198 ], [ true, %162 ]
  %209 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %210 = load i32, ptr %209, align 8
  %211 = and i32 %210, 2
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %223, label %213

213:                                              ; preds = %202
  %214 = getelementptr i8, ptr %0, i32 1428
  %215 = load ptr, ptr %214, align 4
  %216 = getelementptr i8, ptr %215, i32 16176
  %217 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %216) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %218 = and i32 %217, -129
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %219 = load ptr, ptr %214, align 4
  %220 = getelementptr i8, ptr %219, i32 16176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %220, i32 %218) #8, !srcloc !12
  %221 = shl i32 %203, 8
  %222 = or i32 %221, %30
  tail call fastcc void @vf610_nfc_run(ptr noundef %5, i32 noundef %84, i32 noundef %83, i32 noundef %206, i32 noundef %222, i32 noundef %205)
  br i1 %208, label %265, label %233

223:                                              ; preds = %202, %198
  %224 = phi i1 [ true, %202 ], [ false, %198 ]
  %225 = phi i32 [ %203, %202 ], [ %201, %198 ]
  %226 = phi i32 [ %204, %202 ], [ %133, %198 ]
  %227 = phi i32 [ %205, %202 ], [ %134, %198 ]
  %228 = phi i32 [ %206, %202 ], [ %154, %198 ]
  %229 = phi ptr [ %207, %202 ], [ %200, %198 ]
  %230 = phi i1 [ %208, %202 ], [ %199, %198 ]
  %231 = shl i32 %225, 8
  %232 = or i32 %231, %30
  tail call fastcc void @vf610_nfc_run(ptr noundef %5, i32 noundef %84, i32 noundef %83, i32 noundef %228, i32 noundef %232, i32 noundef %227)
  br i1 %230, label %263, label %233

233:                                              ; preds = %223, %213, %195
  %234 = phi ptr [ %207, %213 ], [ %229, %223 ], [ %185, %195 ]
  %235 = phi i32 [ %205, %213 ], [ %227, %223 ], [ %189, %195 ]
  %236 = phi i32 [ %204, %213 ], [ %226, %223 ], [ %190, %195 ]
  %237 = phi i1 [ true, %213 ], [ %224, %223 ], [ false, %195 ]
  %238 = load i32, ptr %234, align 4
  %239 = icmp eq i32 %238, 2
  br i1 %239, label %240, label %263

240:                                              ; preds = %233
  %241 = getelementptr inbounds %struct.nand_op_instr, ptr %234, i32 0, i32 1, i32 0, i32 1
  %242 = load ptr, ptr %241, align 4
  %243 = getelementptr i8, ptr %242, i32 %236
  %244 = getelementptr i8, ptr %0, i32 1428
  %245 = load ptr, ptr %244, align 4
  %246 = getelementptr i8, ptr %245, i32 %236
  %247 = getelementptr i8, ptr %0, i32 1456
  %248 = load i8, ptr %247, align 8, !range !14
  %249 = icmp eq i8 %248, 0
  br i1 %249, label %250, label %262

250:                                              ; preds = %240
  %251 = icmp eq i32 %235, 0
  br i1 %251, label %263, label %252

252:                                              ; preds = %252, %250
  %253 = phi i32 [ %260, %252 ], [ 0, %250 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  %254 = getelementptr i8, ptr %246, i32 %253
  %255 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %254) #8, !srcloc !9
  %256 = tail call i32 @llvm.bswap.i32(i32 %255) #8
  store i32 %256, ptr %3, align 4
  %257 = getelementptr i8, ptr %243, i32 %253
  %258 = sub i32 %235, %253
  %259 = tail call i32 @llvm.umin.i32(i32 %258, i32 4) #8
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %257, ptr nonnull align 4 %3, i32 %259, i1 false) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  %260 = add i32 %253, 4
  %261 = icmp ult i32 %260, %235
  br i1 %261, label %252, label %263

262:                                              ; preds = %240
  tail call void @mmiocpy(ptr noundef %243, ptr noundef %246, i32 noundef %235) #8
  br i1 %237, label %265, label %278

263:                                              ; preds = %252, %250, %233, %223
  %264 = phi i1 [ %237, %233 ], [ %224, %223 ], [ %237, %250 ], [ %237, %252 ]
  br i1 %264, label %265, label %278

265:                                              ; preds = %263, %262, %213
  %266 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %267 = load i32, ptr %266, align 8
  %268 = and i32 %267, 2
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %278, label %270

270:                                              ; preds = %265
  %271 = getelementptr i8, ptr %0, i32 1428
  %272 = load ptr, ptr %271, align 4
  %273 = getelementptr i8, ptr %272, i32 16176
  %274 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %273) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %275 = or i32 %274, 128
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %276 = load ptr, ptr %271, align 4
  %277 = getelementptr i8, ptr %276, i32 16176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %277, i32 %275) #8, !srcloc !12
  br label %278

278:                                              ; preds = %270, %265, %263, %262, %168, %9, %2
  %279 = phi i32 [ -22, %9 ], [ 0, %270 ], [ 0, %265 ], [ 0, %263 ], [ 0, %168 ], [ 0, %262 ], [ -22, %2 ]
  ret i32 %279
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_subop_get_num_addr_cyc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_subop_get_addr_start_off(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_subop_get_data_len(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_subop_get_data_start_off(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_scan_with_ids(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vf610_nfc_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.vf610_nfc, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vf610_nfc_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.vf610_nfc, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #8
  br label %13

12:                                               ; preds = %8
  tail call fastcc void @vf610_nfc_preinit_controller(ptr noundef %3)
  tail call fastcc void @vf610_nfc_init_controller(ptr noundef %3)
  br label %13

13:                                               ; preds = %12, %11, %1
  %14 = phi i32 [ 0, %12 ], [ %9, %11 ], [ %6, %1 ]
  ret i32 %14
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn }
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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 3522472}
!10 = !{i64 2152011164}
!11 = !{i64 2152011516}
!12 = !{i64 3522054}
!13 = !{!"auto-init"}
!14 = !{i8 0, i8 2}
