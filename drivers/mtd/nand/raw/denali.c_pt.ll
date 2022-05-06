; ModuleID = '/llk/IR/drivers/mtd/nand/raw/denali.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/denali.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_denali_calc_ecc_bytes:\09\09\09\09\09"
module asm "\09.asciz \09\22denali_calc_ecc_bytes\22\09\09\09\09\09"
module asm "__kstrtabns_denali_calc_ecc_bytes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_denali_chip_init:\09\09\09\09\09"
module asm "\09.asciz \09\22denali_chip_init\22\09\09\09\09\09"
module asm "__kstrtabns_denali_chip_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_denali_init:\09\09\09\09\09"
module asm "\09.asciz \09\22denali_init\22\09\09\09\09\09"
module asm "__kstrtabns_denali_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_denali_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22denali_remove\22\09\09\09\09\09"
module asm "__kstrtabns_denali_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mtd_ooblayout_ops = type { ptr, ptr }
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.74, i32, %struct.mutex, i8, i32, i32, ptr, i8, ptr, %struct.nand_ecc_ctrl, ptr }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.71 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.71 = type { %struct.mtd_part, [16 x i8] }
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
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.anon.74 = type { i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.denali_chip = type { %struct.nand_chip, %struct.list_head, i32, [0 x %struct.denali_chip_sel] }
%struct.denali_chip_sel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.denali_controller = type { %struct.nand_controller, ptr, %struct.list_head, i32, i32, ptr, ptr, %struct.completion, i32, i32, i32, %struct.spinlock, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.4, %union.anon.64, %struct.atomic_t }
%union.anon.4 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.64 = type { %struct.atomic_t }
%struct.mtd_oob_region = type { i32, i32 }
%struct.nand_operation = type { i32, ptr, i32 }
%struct.nand_op_instr = type { i32, %union.anon.0, i32 }
%union.anon.0 = type { %struct.nand_op_data_instr }
%struct.nand_op_data_instr = type { i32, %union.anon.1, i8 }
%union.anon.1 = type { ptr }
%struct.nand_interface_config = type { i32, %struct.nand_timings }
%struct.nand_timings = type { i32, %union.anon.2 }
%union.anon.2 = type { %struct.nand_sdr_timings }
%struct.nand_sdr_timings = type { i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }

@__kstrtab_denali_calc_ecc_bytes = external dso_local constant [0 x i8], align 1
@__kstrtabns_denali_calc_ecc_bytes = external dso_local constant [0 x i8], align 1
@__ksymtab_denali_calc_ecc_bytes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @denali_calc_ecc_bytes to i32), ptr @__kstrtab_denali_calc_ecc_bytes, ptr @__kstrtabns_denali_calc_ecc_bytes }, section "___ksymtab+denali_calc_ecc_bytes", align 4
@.str = private unnamed_addr constant [21 x i8] c"unsupported bank %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"bank %d is assigned twice in the same chip\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"bank %d is already used\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"denali-nand\00", align 1
@denali_ooblayout_ops = internal constant %struct.mtd_ooblayout_ops { ptr @denali_ooblayout_ecc, ptr @denali_ooblayout_free }, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Failed to register MTD: %d\0A\00", align 1
@__kstrtab_denali_chip_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_denali_chip_init = external dso_local constant [0 x i8], align 1
@__ksymtab_denali_chip_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @denali_chip_init to i32), ptr @__kstrtab_denali_chip_init, ptr @__kstrtabns_denali_chip_init }, section "___ksymtab_gpl+denali_chip_init", align 4
@denali_controller_ops = internal constant %struct.nand_controller_ops { ptr @denali_attach_chip, ptr null, ptr @denali_exec_op, ptr @denali_setup_interface }, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"Failed to set DMA mask. Disabling DMA.\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Unable to request IRQ\0A\00", align 1
@__kstrtab_denali_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_denali_init = external dso_local constant [0 x i8], align 1
@__ksymtab_denali_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @denali_init to i32), ptr @__kstrtab_denali_init, ptr @__kstrtabns_denali_init }, section "___ksymtab+denali_init", align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"drivers/mtd/nand/raw/denali.c\00", align 1
@__kstrtab_denali_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_denali_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_denali_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @denali_remove to i32), ptr @__kstrtab_denali_remove, ptr @__kstrtabns_denali_remove }, section "___ksymtab+denali_remove", align 4
@__UNIQUE_ID_description352 = internal constant [58 x i8] c"denali.description=Driver core for Denali NAND controller\00", section ".modinfo", align 1
@__UNIQUE_ID_author353 = internal constant [50 x i8] c"denali.author=Intel Corporation and its suppliers\00", section ".modinfo", align 1
@__UNIQUE_ID_file354 = internal constant [40 x i8] c"denali.file=drivers/mtd/nand/raw/denali\00", section ".modinfo", align 1
@__UNIQUE_ID_license355 = internal constant [22 x i8] c"denali.license=GPL v2\00", section ".modinfo", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.10 = private unnamed_addr constant [36 x i8] c"timeout while waiting for irq 0x%x\0A\00", align 1
@nand_controller_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"&nfc->lock\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Failed to setup ECC settings.\0A\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"unsupported number of devices %d\0A\00", align 1
@denali_exec_instr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"unsupported NAND instruction type: %d\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author353, ptr @__UNIQUE_ID_description352, ptr @__UNIQUE_ID_file354, ptr @__UNIQUE_ID_license355, ptr @__ksymtab_denali_calc_ecc_bytes, ptr @__ksymtab_denali_chip_init, ptr @__ksymtab_denali_init, ptr @__ksymtab_denali_remove], section "llvm.metadata"

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @denali_calc_ecc_bytes(i32 noundef %0, i32 noundef %1) #0 {
  %3 = shl i32 %0, 3
  %4 = icmp eq i32 %3, 0
  %5 = tail call i32 @llvm.ctlz.i32(i32 %3, i1 false) #7, !range !8
  %6 = sub nuw nsw i32 32, %5
  %7 = select i1 %4, i32 0, i32 %6
  %8 = mul i32 %7, %1
  %9 = add i32 %8, 15
  %10 = sdiv i32 %9, 16
  %11 = shl nsw i32 %10, 1
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @denali_chip_init(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.nand_chip, ptr %1, i32 0, i32 32
  store ptr %0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.denali_chip, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %59, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 16
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 2
  br label %11

11:                                               ; preds = %56, %7
  %12 = phi i32 [ 0, %7 ], [ %57, %56 ]
  %13 = getelementptr %struct.denali_chip, ptr %1, i32 0, i32 3, i32 %12
  %14 = load i32, ptr %13, align 4
  %15 = icmp ult i32 %14, %9
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = icmp sgt i32 %12, 0
  br i1 %17, label %24, label %32

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str, i32 noundef %14) #8
  br label %124

21:                                               ; preds = %24
  %22 = add nuw nsw i32 %25, 1
  %23 = icmp eq i32 %22, %12
  br i1 %23, label %32, label %24

24:                                               ; preds = %21, %16
  %25 = phi i32 [ %22, %21 ], [ 0, %16 ]
  %26 = getelementptr %struct.denali_chip, ptr %1, i32 0, i32 3, i32 %25
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %14, %27
  br i1 %28, label %29, label %21

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.1, i32 noundef %14) #8
  br label %124

32:                                               ; preds = %21, %16
  %33 = load ptr, ptr %10, align 4
  %34 = icmp eq ptr %33, %10
  br i1 %34, label %56, label %38

35:                                               ; preds = %45, %38
  %36 = load ptr, ptr %39, align 4
  %37 = icmp eq ptr %36, %10
  br i1 %37, label %56, label %38

38:                                               ; preds = %35, %32
  %39 = phi ptr [ %36, %35 ], [ %33, %32 ]
  %40 = getelementptr i8, ptr %39, i32 8
  %41 = load i32, ptr %40, align 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %35, label %43

43:                                               ; preds = %38
  %44 = getelementptr i8, ptr %39, i32 12
  br label %48

45:                                               ; preds = %48
  %46 = add nuw i32 %49, 1
  %47 = icmp eq i32 %46, %41
  br i1 %47, label %35, label %48

48:                                               ; preds = %45, %43
  %49 = phi i32 [ 0, %43 ], [ %46, %45 ]
  %50 = getelementptr [0 x %struct.denali_chip_sel], ptr %44, i32 0, i32 %49
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %14, %51
  br i1 %52, label %53, label %45

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.2, i32 noundef %14) #8
  br label %124

56:                                               ; preds = %35, %32
  %57 = add nuw i32 %12, 1
  %58 = icmp eq i32 %57, %5
  br i1 %58, label %59, label %11

59:                                               ; preds = %56, %2
  %60 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 56, i32 1
  store ptr %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 13
  %64 = load ptr, ptr %63, align 8
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 2
  %68 = load volatile ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, %67
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store ptr @.str.3, ptr %63, align 8
  br label %71

71:                                               ; preds = %70, %66, %59
  %72 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 12
  %73 = load i8, ptr %72, align 4, !range !9
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.nand_chip, ptr %1, i32 0, i32 6
  %77 = load i32, ptr %76, align 8
  %78 = or i32 %77, 1048576
  store i32 %78, ptr %76, align 8
  %79 = getelementptr inbounds %struct.nand_chip, ptr %1, i32 0, i32 25
  store i32 16, ptr %79, align 8
  br label %80

80:                                               ; preds = %75, %71
  %81 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 3
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 4
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.nand_chip, ptr %1, i32 0, i32 6
  %90 = load i32, ptr %89, align 8
  br label %95

91:                                               ; preds = %84, %80
  %92 = getelementptr inbounds %struct.nand_chip, ptr %1, i32 0, i32 6
  %93 = load i32, ptr %92, align 8
  %94 = or i32 %93, 8388608
  br label %95

95:                                               ; preds = %91, %88
  %96 = phi i32 [ %90, %88 ], [ %94, %91 ]
  %97 = getelementptr inbounds %struct.nand_chip, ptr %1, i32 0, i32 10
  %98 = load i32, ptr %97, align 8
  %99 = or i32 %98, 393216
  store i32 %99, ptr %97, align 8
  %100 = getelementptr inbounds %struct.nand_chip, ptr %1, i32 0, i32 6
  %101 = or i32 %96, 512
  store i32 %101, ptr %100, align 8
  %102 = getelementptr inbounds %struct.nand_chip, ptr %1, i32 0, i32 33
  store i32 3, ptr %102, align 8
  %103 = getelementptr inbounds %struct.nand_chip, ptr %1, i32 0, i32 33, i32 1
  store i32 2, ptr %103, align 4
  %104 = getelementptr inbounds %struct.nand_chip, ptr %1, i32 0, i32 33, i32 18
  store ptr @denali_read_page, ptr %104, align 8
  %105 = getelementptr inbounds %struct.nand_chip, ptr %1, i32 0, i32 33, i32 21
  store ptr @denali_write_page, ptr %105, align 4
  %106 = getelementptr inbounds %struct.nand_chip, ptr %1, i32 0, i32 33, i32 16
  store ptr @denali_read_page_raw, ptr %106, align 8
  %107 = getelementptr inbounds %struct.nand_chip, ptr %1, i32 0, i32 33, i32 17
  store ptr @denali_write_page_raw, ptr %107, align 4
  %108 = getelementptr inbounds %struct.nand_chip, ptr %1, i32 0, i32 33, i32 24
  store ptr @denali_read_oob, ptr %108, align 8
  %109 = getelementptr inbounds %struct.nand_chip, ptr %1, i32 0, i32 33, i32 25
  store ptr @denali_write_oob, ptr %109, align 4
  %110 = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 15
  store ptr @denali_ooblayout_ops, ptr %110, align 8
  %111 = tail call i32 @nand_scan_with_ids(ptr noundef %1, i32 noundef %5, ptr noundef null) #7
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %95
  %114 = tail call i32 @mtd_device_parse_register(ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #7
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %113
  %117 = load ptr, ptr %60, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.4, i32 noundef %114) #8
  tail call void @nand_cleanup(ptr noundef %1) #7
  br label %124

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.denali_chip, ptr %1, i32 0, i32 1
  %120 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 2
  %121 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 2, i32 1
  %122 = load ptr, ptr %121, align 4
  store ptr %119, ptr %121, align 4
  store ptr %120, ptr %119, align 4
  %123 = getelementptr inbounds %struct.denali_chip, ptr %1, i32 0, i32 1, i32 1
  store ptr %122, ptr %123, align 4
  store volatile ptr %119, ptr %122, align 4
  br label %124

124:                                              ; preds = %118, %116, %95, %53, %29, %18
  %125 = phi i32 [ %114, %116 ], [ 0, %118 ], [ -22, %53 ], [ -22, %29 ], [ -22, %18 ], [ %111, %95 ]
  ret i32 %125
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @denali_read_page(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = tail call fastcc i32 @denali_page_xfer(ptr noundef %0, ptr noundef %1, i32 noundef %8, i32 noundef %3, i1 noundef zeroext false)
  switch i32 %9, label %193 [
    i32 -74, label %10
    i32 0, label %10
  ]

10:                                               ; preds = %4, %4
  %11 = getelementptr inbounds %struct.denali_controller, ptr %6, i32 0, i32 18
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %43, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr %5, align 4
  %17 = getelementptr inbounds %struct.denali_controller, ptr %16, i32 0, i32 15
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.denali_controller, ptr %16, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = freeze i32 %18
  %22 = sdiv i32 %21, 2
  %23 = shl i32 %22, 4
  %24 = add i32 %23, 1616
  %25 = getelementptr i8, ptr %20, i32 %24
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %27 = mul i32 %22, 2
  %28 = sub i32 %21, %27
  %29 = shl nsw i32 %28, 3
  %30 = lshr i32 %26, %29
  %31 = and i32 %30, 128
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %15
  %34 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = sub i32 32, %35
  %37 = lshr i32 -1, %36
  br label %126

38:                                               ; preds = %15
  %39 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52
  %40 = and i32 %30, 127
  %41 = load i32, ptr %39, align 4
  %42 = add i32 %41, %40
  store i32 %42, ptr %39, align 4
  br label %193

43:                                               ; preds = %10
  %44 = icmp eq i32 %9, -74
  br i1 %44, label %45, label %193

45:                                               ; preds = %43
  %46 = load ptr, ptr %5, align 4
  %47 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52
  %48 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  %49 = load i32, ptr %48, align 8
  %50 = getelementptr inbounds %struct.denali_controller, ptr %46, i32 0, i32 11
  %51 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %50) #7
  %52 = getelementptr inbounds %struct.denali_controller, ptr %46, i32 0, i32 10
  store i32 0, ptr %52, align 4
  %53 = getelementptr inbounds %struct.denali_controller, ptr %46, i32 0, i32 9
  store i32 0, ptr %53, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %50, i32 noundef %51) #7
  %54 = getelementptr inbounds %struct.denali_controller, ptr %46, i32 0, i32 5
  %55 = getelementptr inbounds %struct.denali_controller, ptr %46, i32 0, i32 13
  br label %56

56:                                               ; preds = %100, %45
  %57 = phi i32 [ 0, %45 ], [ %101, %100 ]
  %58 = phi i32 [ 0, %45 ], [ %65, %100 ]
  %59 = phi i32 [ 0, %45 ], [ %102, %100 ]
  %60 = phi i32 [ 0, %45 ], [ %103, %100 ]
  %61 = load ptr, ptr %54, align 4
  %62 = getelementptr i8, ptr %61, i32 1584
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %64 = lshr i32 %63, 12
  %65 = and i32 %64, 15
  %66 = and i32 %63, 4095
  %67 = load ptr, ptr %54, align 4
  %68 = getelementptr i8, ptr %67, i32 1600
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %70 = lshr i32 %69, 8
  %71 = and i32 %70, 15
  %72 = icmp eq i32 %65, %58
  %73 = select i1 %72, i32 %60, i32 0
  %74 = and i32 %69, 16384
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %56
  %77 = shl nuw nsw i32 1, %65
  %78 = or i32 %77, %57
  br label %100

79:                                               ; preds = %56
  %80 = icmp ult i32 %66, %49
  br i1 %80, label %81, label %100

81:                                               ; preds = %79
  %82 = mul i32 %65, %49
  %83 = add i32 %82, %66
  %84 = load i32, ptr %55, align 4
  %85 = mul i32 %84, %83
  %86 = add i32 %85, %71
  %87 = getelementptr i8, ptr %1, i32 %86
  %88 = and i32 %69, 255
  %89 = load i8, ptr %87, align 1
  %90 = zext i8 %89 to i32
  %91 = xor i32 %88, %90
  %92 = tail call i32 @__sw_hweight8(i32 noundef %91) #7
  %93 = load i8, ptr %87, align 1
  %94 = trunc i32 %69 to i8
  %95 = xor i8 %93, %94
  store i8 %95, ptr %87, align 1
  %96 = load i32, ptr %47, align 4
  %97 = add i32 %96, %92
  store i32 %97, ptr %47, align 4
  %98 = add i32 %92, %73
  %99 = tail call i32 @llvm.umax.i32(i32 %59, i32 %98) #7
  br label %100

100:                                              ; preds = %81, %79, %76
  %101 = phi i32 [ %57, %81 ], [ %57, %79 ], [ %78, %76 ]
  %102 = phi i32 [ %99, %81 ], [ %59, %79 ], [ %59, %76 ]
  %103 = phi i32 [ %98, %81 ], [ %73, %79 ], [ %73, %76 ]
  %104 = and i32 %69, 32768
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %56, label %106

106:                                              ; preds = %100
  %107 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %50) #7
  %108 = load i32, ptr %52, align 4
  %109 = and i32 %108, 1
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %106
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %50, i32 noundef %107) #7
  br label %121

112:                                              ; preds = %106
  store i32 1, ptr %53, align 4
  %113 = getelementptr inbounds %struct.denali_controller, ptr %46, i32 0, i32 7
  store i32 0, ptr %113, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %50, i32 noundef %107) #7
  %114 = tail call i32 @wait_for_completion_timeout(ptr noundef %113, i32 noundef 100) #7
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.denali_controller, ptr %46, i32 0, i32 1
  %118 = load ptr, ptr %117, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %118, ptr noundef nonnull @.str.10, i32 noundef 1) #8
  br label %121

119:                                              ; preds = %112
  %120 = load i32, ptr %52, align 4
  br label %121

121:                                              ; preds = %119, %116, %111
  %122 = phi i32 [ %108, %111 ], [ %120, %119 ], [ 0, %116 ]
  %123 = and i32 %122, 1
  %124 = icmp eq i32 %123, 0
  %125 = select i1 %124, i32 -5, i32 %102
  br label %126

126:                                              ; preds = %121, %33
  %127 = phi i32 [ %101, %121 ], [ %37, %33 ]
  %128 = phi i32 [ %125, %121 ], [ 0, %33 ]
  %129 = icmp slt i32 %128, 0
  %130 = icmp eq i32 %127, 0
  %131 = select i1 %129, i1 true, i1 %130
  br i1 %131, label %193, label %132

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %193, label %136

136:                                              ; preds = %132
  %137 = tail call i32 @nand_read_page_op(ptr noundef %0, i32 noundef %3, i32 noundef 0, ptr noundef null, i32 noundef 0) #7
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %193

139:                                              ; preds = %136
  %140 = tail call fastcc i32 @denali_oob_xfer(ptr noundef %0, ptr noundef nonnull %134, i1 noundef zeroext false) #7
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %193

142:                                              ; preds = %139
  %143 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52
  %144 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 3
  %145 = load i32, ptr %144, align 4
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %147, label %193

147:                                              ; preds = %142
  %148 = load ptr, ptr %133, align 4
  %149 = load ptr, ptr %5, align 4
  %150 = getelementptr inbounds %struct.denali_controller, ptr %149, i32 0, i32 14
  %151 = load i32, ptr %150, align 4
  %152 = getelementptr i8, ptr %148, i32 %151
  %153 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  %154 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  %155 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 7
  %156 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52, i32 1
  br label %157

157:                                              ; preds = %186, %147
  %158 = phi i32 [ %145, %147 ], [ %187, %186 ]
  %159 = phi ptr [ %1, %147 ], [ %190, %186 ]
  %160 = phi i32 [ %128, %147 ], [ %189, %186 ]
  %161 = phi i32 [ 0, %147 ], [ %191, %186 ]
  %162 = phi ptr [ %152, %147 ], [ %188, %186 ]
  %163 = shl nuw i32 1, %161
  %164 = and i32 %163, %127
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %186, label %166

166:                                              ; preds = %157
  %167 = load i32, ptr %153, align 4
  %168 = load i32, ptr %154, align 4
  %169 = load i32, ptr %155, align 4
  %170 = tail call i32 @nand_check_erased_ecc_chunk(ptr noundef %159, i32 noundef %167, ptr noundef %162, i32 noundef %168, ptr noundef null, i32 noundef 0, i32 noundef %169) #7
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %166
  %173 = load i32, ptr %156, align 4
  %174 = add i32 %173, 1
  store i32 %174, ptr %156, align 4
  br label %179

175:                                              ; preds = %166
  %176 = load i32, ptr %143, align 4
  %177 = add i32 %176, %170
  store i32 %177, ptr %143, align 4
  %178 = tail call i32 @llvm.umax.i32(i32 %160, i32 %170) #7
  br label %179

179:                                              ; preds = %175, %172
  %180 = phi i32 [ %160, %172 ], [ %178, %175 ]
  %181 = load i32, ptr %153, align 4
  %182 = getelementptr i8, ptr %159, i32 %181
  %183 = load i32, ptr %154, align 4
  %184 = getelementptr i8, ptr %162, i32 %183
  %185 = load i32, ptr %144, align 4
  br label %186

186:                                              ; preds = %179, %157
  %187 = phi i32 [ %185, %179 ], [ %158, %157 ]
  %188 = phi ptr [ %184, %179 ], [ %162, %157 ]
  %189 = phi i32 [ %180, %179 ], [ %160, %157 ]
  %190 = phi ptr [ %182, %179 ], [ %159, %157 ]
  %191 = add nuw nsw i32 %161, 1
  %192 = icmp slt i32 %191, %187
  br i1 %192, label %157, label %193

193:                                              ; preds = %186, %142, %139, %136, %132, %126, %43, %38, %4
  %194 = phi i32 [ %9, %4 ], [ %128, %126 ], [ %140, %139 ], [ %128, %142 ], [ %40, %38 ], [ 0, %43 ], [ %137, %136 ], [ -22, %132 ], [ %189, %186 ]
  ret i32 %194
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @denali_write_page(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = tail call fastcc i32 @denali_page_xfer(ptr noundef %0, ptr noundef %1, i32 noundef %6, i32 noundef %3, i1 noundef zeroext true)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @denali_read_page_raw(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %4
  %10 = phi ptr [ %8, %6 ], [ null, %4 ]
  %11 = icmp ne ptr %1, null
  %12 = icmp ne ptr %10, null
  %13 = or i1 %11, %12
  br i1 %13, label %14, label %68

14:                                               ; preds = %9
  %15 = tail call i32 @nand_read_page_op(ptr noundef %0, i32 noundef %3, i32 noundef 0, ptr noundef null, i32 noundef 0) #7
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %68

17:                                               ; preds = %14
  br i1 %11, label %18, label %63

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.denali_controller, ptr %20, i32 0, i32 14
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %63

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  %30 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  %31 = add i32 %24, %22
  br label %32

32:                                               ; preds = %58, %28
  %33 = phi i32 [ 0, %28 ], [ %60, %58 ]
  %34 = phi ptr [ %1, %28 ], [ %59, %58 ]
  %35 = load i32, ptr %29, align 4
  %36 = load i32, ptr %30, align 4
  %37 = add i32 %36, %35
  %38 = mul i32 %37, %33
  %39 = icmp sgt i32 %22, %38
  br i1 %39, label %42, label %40

40:                                               ; preds = %32
  %41 = add i32 %38, %24
  br label %52

42:                                               ; preds = %32
  %43 = add i32 %38, %35
  %44 = icmp sgt i32 %43, %22
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = sub i32 %22, %38
  %47 = tail call i32 @nand_change_read_column_op(ptr noundef %0, i32 noundef %38, ptr noundef %34, i32 noundef %46, i1 noundef zeroext false) #7
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %68

49:                                               ; preds = %45
  %50 = getelementptr i8, ptr %34, i32 %46
  %51 = sub i32 %35, %46
  br label %52

52:                                               ; preds = %49, %42, %40
  %53 = phi ptr [ %34, %40 ], [ %50, %49 ], [ %34, %42 ]
  %54 = phi i32 [ %41, %40 ], [ %31, %49 ], [ %38, %42 ]
  %55 = phi i32 [ %35, %40 ], [ %51, %49 ], [ %35, %42 ]
  %56 = tail call i32 @nand_change_read_column_op(ptr noundef %0, i32 noundef %54, ptr noundef %53, i32 noundef %55, i1 noundef zeroext false) #7
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %52
  %59 = getelementptr i8, ptr %53, i32 %55
  %60 = add nuw nsw i32 %33, 1
  %61 = load i32, ptr %25, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %32, label %63

63:                                               ; preds = %58, %18, %17
  br i1 %12, label %64, label %67

64:                                               ; preds = %63
  %65 = tail call fastcc i32 @denali_oob_xfer(ptr noundef %0, ptr noundef nonnull %10, i1 noundef zeroext false) #7
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64, %63
  br label %68

68:                                               ; preds = %67, %64, %52, %45, %14, %9
  %69 = phi i32 [ 0, %67 ], [ -22, %9 ], [ %15, %14 ], [ %65, %64 ], [ %56, %52 ], [ %47, %45 ]
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @denali_write_page_raw(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %4
  %10 = phi ptr [ %8, %6 ], [ null, %4 ]
  %11 = icmp ne ptr %1, null
  %12 = icmp ne ptr %10, null
  %13 = or i1 %11, %12
  br i1 %13, label %14, label %69

14:                                               ; preds = %9
  %15 = tail call i32 @nand_prog_page_begin_op(ptr noundef %0, i32 noundef %3, i32 noundef 0, ptr noundef null, i32 noundef 0) #7
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %69

17:                                               ; preds = %14
  br i1 %11, label %18, label %63

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.denali_controller, ptr %20, i32 0, i32 14
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %63

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  %30 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  %31 = add i32 %24, %22
  br label %32

32:                                               ; preds = %58, %28
  %33 = phi i32 [ 0, %28 ], [ %60, %58 ]
  %34 = phi ptr [ %1, %28 ], [ %59, %58 ]
  %35 = load i32, ptr %29, align 4
  %36 = load i32, ptr %30, align 4
  %37 = add i32 %36, %35
  %38 = mul i32 %37, %33
  %39 = icmp sgt i32 %22, %38
  br i1 %39, label %42, label %40

40:                                               ; preds = %32
  %41 = add i32 %38, %24
  br label %52

42:                                               ; preds = %32
  %43 = add i32 %38, %35
  %44 = icmp sgt i32 %43, %22
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = sub i32 %22, %38
  %47 = tail call i32 @nand_change_write_column_op(ptr noundef %0, i32 noundef %38, ptr noundef %34, i32 noundef %46, i1 noundef zeroext false) #7
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %45
  %50 = getelementptr i8, ptr %34, i32 %46
  %51 = sub i32 %35, %46
  br label %52

52:                                               ; preds = %49, %42, %40
  %53 = phi ptr [ %34, %40 ], [ %50, %49 ], [ %34, %42 ]
  %54 = phi i32 [ %41, %40 ], [ %31, %49 ], [ %38, %42 ]
  %55 = phi i32 [ %35, %40 ], [ %51, %49 ], [ %35, %42 ]
  %56 = tail call i32 @nand_change_write_column_op(ptr noundef %0, i32 noundef %54, ptr noundef %53, i32 noundef %55, i1 noundef zeroext false) #7
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %52
  %59 = getelementptr i8, ptr %53, i32 %55
  %60 = add nuw nsw i32 %33, 1
  %61 = load i32, ptr %25, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %32, label %63

63:                                               ; preds = %58, %18, %17
  br i1 %12, label %64, label %67

64:                                               ; preds = %63
  %65 = tail call fastcc i32 @denali_oob_xfer(ptr noundef %0, ptr noundef nonnull %10, i1 noundef zeroext true) #7
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64, %63
  %68 = tail call i32 @nand_prog_page_end_op(ptr noundef %0) #7
  br label %69

69:                                               ; preds = %67, %64, %52, %45, %14, %9
  %70 = phi i32 [ %68, %67 ], [ -22, %9 ], [ %15, %14 ], [ %65, %64 ], [ %56, %52 ], [ %47, %45 ]
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @denali_read_oob(ptr noundef %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @nand_read_page_op(ptr noundef %0, i32 noundef %1, i32 noundef 0, ptr noundef null, i32 noundef 0) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call fastcc i32 @denali_oob_xfer(ptr noundef %0, ptr noundef nonnull %4, i1 noundef zeroext false) #7
  br label %11

11:                                               ; preds = %9, %6, %2
  %12 = phi i32 [ -22, %2 ], [ %7, %6 ], [ %10, %9 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @denali_write_oob(ptr noundef %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @nand_prog_page_begin_op(ptr noundef %0, i32 noundef %1, i32 noundef 0, ptr noundef null, i32 noundef 0) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = tail call fastcc i32 @denali_oob_xfer(ptr noundef %0, ptr noundef nonnull %4, i1 noundef zeroext true) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = tail call i32 @nand_prog_page_end_op(ptr noundef %0) #7
  br label %14

14:                                               ; preds = %12, %9, %6, %2
  %15 = phi i32 [ %13, %12 ], [ -22, %2 ], [ %7, %6 ], [ %10, %9 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @denali_init(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 1008
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  tail call void @__mutex_init(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull @nand_controller_init.__key) #7
  %6 = getelementptr inbounds %struct.nand_controller, ptr %0, i32 0, i32 1
  store ptr @denali_controller_ops, ptr %6, align 4
  %7 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 7
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 7, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %8, ptr noundef nonnull @.str.15, ptr noundef nonnull @init_completion.__key) #7
  %9 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 11
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 2
  store volatile ptr %10, ptr %10, align 4
  %11 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 2, i32 1
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 15
  store i32 -1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 17
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr i8, ptr %17, i32 880
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %20 = trunc i32 %19 to i16
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  %22 = zext i16 %21 to i32
  store i32 %22, ptr %13, align 4
  br label %23

23:                                               ; preds = %16, %1
  %24 = phi i32 [ %14, %1 ], [ %22, %16 ]
  %25 = and i32 %5, 3
  %26 = shl nuw nsw i32 1, %25
  %27 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 16
  %28 = icmp ult i32 %24, 1281
  %29 = zext i1 %28 to i32
  %30 = shl nuw nsw i32 %26, %29
  store i32 %30, ptr %27, align 4
  %31 = and i32 %5, 64
  %32 = icmp eq i32 %31, 0
  %33 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 12
  br i1 %32, label %35, label %34

34:                                               ; preds = %23
  store i8 1, ptr %33, align 4
  br label %38

35:                                               ; preds = %23
  %36 = load i8, ptr %33, align 4, !range !9
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %61, label %38

38:                                               ; preds = %35, %34
  %39 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 12
  %40 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 18
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 2
  %43 = icmp eq i32 %42, 0
  %44 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = select i1 %43, i64 4294967295, i64 -1
  %47 = tail call i32 @dma_set_mask(ptr noundef %45, i64 noundef %46) #7
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %38
  %50 = load ptr, ptr %44, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %50, ptr noundef nonnull @.str.5) #8
  store i8 0, ptr %39, align 4
  br label %61

51:                                               ; preds = %38
  %52 = load i8, ptr %39, align 4
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %51
  %55 = load i32, ptr %40, align 4
  %56 = and i32 %55, 2
  %57 = icmp eq i32 %56, 0
  %58 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 22
  br i1 %57, label %60, label %59

59:                                               ; preds = %54
  store ptr @denali_setup_dma64, ptr %58, align 4
  br label %61

60:                                               ; preds = %54
  store ptr @denali_setup_dma32, ptr %58, align 4
  br label %61

61:                                               ; preds = %60, %59, %51, %49, %35
  %62 = and i32 %5, 2048
  %63 = icmp eq i32 %62, 0
  %64 = select i1 %63, ptr @denali_direct_read, ptr @denali_indexed_read
  %65 = select i1 %63, ptr @denali_direct_write, ptr @denali_indexed_write
  %66 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 20
  store ptr %64, ptr %66, align 4
  %67 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 21
  store ptr %65, ptr %67, align 4
  %68 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 14
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 0
  %71 = load ptr, ptr %2, align 4
  %72 = getelementptr i8, ptr %71, i32 560
  br i1 %70, label %74, label %73

73:                                               ; preds = %61
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %69) #7, !srcloc !13
  br label %76

74:                                               ; preds = %61
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  store i32 %75, ptr %68, align 4
  br label %76

76:                                               ; preds = %74, %73
  %77 = load ptr, ptr %2, align 4
  %78 = getelementptr i8, ptr %77, i32 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 0) #7, !srcloc !13
  %79 = load i32, ptr %27, align 4
  %80 = sub i32 32, %79
  %81 = lshr i32 -1, %80
  %82 = load ptr, ptr %2, align 4
  %83 = getelementptr i8, ptr %82, i32 96
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %81) #7, !srcloc !13
  %84 = load ptr, ptr %2, align 4
  %85 = getelementptr i8, ptr %84, i32 208
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 1) #7, !srcloc !13
  %86 = load ptr, ptr %2, align 4
  %87 = getelementptr i8, ptr %86, i32 224
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 1) #7, !srcloc !13
  %88 = load ptr, ptr %2, align 4
  %89 = getelementptr i8, ptr %88, i32 576
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 65535) #7, !srcloc !13
  %90 = load ptr, ptr %2, align 4
  %91 = getelementptr i8, ptr %90, i32 640
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 1) #7, !srcloc !13
  %92 = load i32, ptr %27, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %94, %76
  %95 = phi i32 [ %100, %94 ], [ 0, %76 ]
  %96 = load ptr, ptr %2, align 4
  %97 = mul i32 %95, 80
  %98 = add i32 %97, 1040
  %99 = getelementptr i8, ptr %96, i32 %98
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 -1) #7, !srcloc !13
  %100 = add nuw nsw i32 %95, 1
  %101 = load i32, ptr %27, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %94, label %103

103:                                              ; preds = %94, %76
  %104 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 1
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 8
  %107 = load i32, ptr %106, align 4
  %108 = tail call i32 @devm_request_threaded_irq(ptr noundef %105, i32 noundef %107, ptr noundef nonnull @denali_isr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.3, ptr noundef %0) #7
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %103
  %111 = load ptr, ptr %104, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.6) #8
  br label %127

112:                                              ; preds = %103
  %113 = load i32, ptr %27, align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %124

115:                                              ; preds = %115, %112
  %116 = phi i32 [ %121, %115 ], [ 0, %112 ]
  %117 = load ptr, ptr %2, align 4
  %118 = mul i32 %116, 80
  %119 = add i32 %118, 1056
  %120 = getelementptr i8, ptr %117, i32 %119
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 -1) #7, !srcloc !13
  %121 = add nuw nsw i32 %116, 1
  %122 = load i32, ptr %27, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %115, label %124

124:                                              ; preds = %115, %112
  %125 = load ptr, ptr %2, align 4
  %126 = getelementptr i8, ptr %125, i32 240
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %126, i32 1) #7, !srcloc !13
  br label %127

127:                                              ; preds = %124, %110
  %128 = phi i32 [ %108, %110 ], [ 0, %124 ]
  ret i32 %128
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @denali_setup_dma64(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) #1 {
  %5 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 15
  %6 = load i32, ptr %5, align 4
  %7 = shl i32 %6, 24
  %8 = or i32 %7, %2
  %9 = or i32 %8, 134217728
  %10 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 21
  %11 = load ptr, ptr %10, align 4
  %12 = select i1 %3, i32 20979969, i32 20979713
  tail call void %11(ptr noundef %0, i32 noundef %9, i32 noundef %12) #7
  %13 = load ptr, ptr %10, align 4
  tail call void %13(ptr noundef %0, i32 noundef %9, i32 noundef %1) #7
  %14 = load ptr, ptr %10, align 4
  tail call void %14(ptr noundef %0, i32 noundef %9, i32 noundef 0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @denali_setup_dma32(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) #1 {
  %5 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 15
  %6 = load i32, ptr %5, align 4
  %7 = shl i32 %6, 24
  %8 = or i32 %7, 134217728
  %9 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 21
  %10 = load ptr, ptr %9, align 4
  %11 = or i32 %8, %2
  %12 = select i1 %3, i32 8449, i32 8193
  tail call void %10(ptr noundef %0, i32 noundef %11, i32 noundef %12) #7
  %13 = load ptr, ptr %9, align 4
  %14 = lshr i32 %1, 8
  %15 = and i32 %14, 16776960
  %16 = or i32 %8, %15
  tail call void %13(ptr noundef %0, i32 noundef %16, i32 noundef 8704) #7
  %17 = load ptr, ptr %9, align 4
  %18 = shl i32 %1, 8
  %19 = and i32 %18, 16776960
  %20 = or i32 %8, %19
  tail call void %17(ptr noundef %0, i32 noundef %20, i32 noundef 8960) #7
  %21 = load ptr, ptr %9, align 4
  %22 = or i32 %7, 134299648
  tail call void %21(ptr noundef %0, i32 noundef %22, i32 noundef 9216) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @denali_indexed_read(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %1) #7, !srcloc !13
  %5 = load ptr, ptr %3, align 4
  %6 = getelementptr i8, ptr %5, i32 16
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @denali_indexed_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %1) #7, !srcloc !13
  %6 = load ptr, ptr %4, align 4
  %7 = getelementptr i8, ptr %6, i32 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %2) #7, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @denali_direct_read(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 %1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @denali_direct_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %2) #7, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @denali_isr(i32 noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.denali_controller, ptr %1, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %3) #7
  %4 = getelementptr inbounds %struct.denali_controller, ptr %1, i32 0, i32 16
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %38

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.denali_controller, ptr %1, i32 0, i32 5
  %9 = getelementptr inbounds %struct.denali_controller, ptr %1, i32 0, i32 15
  %10 = getelementptr inbounds %struct.denali_controller, ptr %1, i32 0, i32 10
  %11 = getelementptr inbounds %struct.denali_controller, ptr %1, i32 0, i32 9
  %12 = getelementptr inbounds %struct.denali_controller, ptr %1, i32 0, i32 7
  br label %13

13:                                               ; preds = %34, %7
  %14 = phi i32 [ 0, %7 ], [ %35, %34 ]
  %15 = phi i32 [ 0, %7 ], [ %22, %34 ]
  %16 = load ptr, ptr %8, align 4
  %17 = mul i32 %14, 80
  %18 = add i32 %17, 1040
  %19 = getelementptr i8, ptr %16, i32 %18
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 %15, i32 1
  %23 = load ptr, ptr %8, align 4
  %24 = getelementptr i8, ptr %23, i32 %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %20) #7, !srcloc !13
  %25 = load i32, ptr %9, align 4
  %26 = icmp eq i32 %14, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %13
  %28 = load i32, ptr %10, align 4
  %29 = or i32 %28, %20
  store i32 %29, ptr %10, align 4
  %30 = load i32, ptr %11, align 4
  %31 = and i32 %30, %29
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  tail call void @complete(ptr noundef %12) #7
  br label %34

34:                                               ; preds = %33, %27, %13
  %35 = add nuw nsw i32 %14, 1
  %36 = load i32, ptr %4, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %13, label %38

38:                                               ; preds = %34, %2
  %39 = phi i32 [ 0, %2 ], [ %22, %34 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %40 = load i16, ptr %3, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !17
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @denali_remove(ptr noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %18, label %5

5:                                                ; preds = %12, %1
  %6 = phi ptr [ %8, %12 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -1424
  %8 = load ptr, ptr %6, align 8
  %9 = tail call i32 @mtd_device_unregister(ptr noundef %7) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11, !prof !18

11:                                               ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1370, i32 noundef 9, ptr noundef null) #7
  br label %12

12:                                               ; preds = %11, %5
  tail call void @nand_cleanup(ptr noundef %7) #7
  %13 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %6, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %14, ptr %16, align 4
  store volatile ptr %15, ptr %14, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %13, align 4
  %17 = icmp eq ptr %8, %2
  br i1 %17, label %18, label %5

18:                                               ; preds = %12, %1
  %19 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 16
  %20 = load i32, ptr %19, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 5
  br label %24

24:                                               ; preds = %24, %22
  %25 = phi i32 [ 0, %22 ], [ %30, %24 ]
  %26 = load ptr, ptr %23, align 4
  %27 = mul i32 %25, 80
  %28 = add i32 %27, 1056
  %29 = getelementptr i8, ptr %26, i32 %28
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 0) #7, !srcloc !13
  %30 = add nuw nsw i32 %25, 1
  %31 = load i32, ptr %19, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %24, label %33

33:                                               ; preds = %24, %18
  %34 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 5
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i8, ptr %35, i32 240
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 0) #7, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @denali_page_xfer(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #1 {
  %6 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %9 = load i32, ptr %8, align 4
  tail call fastcc void @denali_select_target(ptr noundef %0, i32 noundef %9)
  %10 = getelementptr inbounds %struct.denali_controller, ptr %7, i32 0, i32 12
  %11 = load i8, ptr %10, align 4, !range !9
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %91, label %13

13:                                               ; preds = %5
  %14 = select i1 %4, i32 1, i32 2
  %15 = getelementptr inbounds %struct.denali_controller, ptr %7, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %1) #7
  %18 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %19 = xor i1 %18, true
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %30, !prof !19

21:                                               ; preds = %13
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %22 = tail call ptr @dev_driver_string(ptr noundef %16) #7
  %23 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load ptr, ptr %16, align 4
  br label %28

28:                                               ; preds = %26, %21
  %29 = phi ptr [ %27, %26 ], [ %24, %21 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef %22, ptr noundef %29) #7
  br label %30

30:                                               ; preds = %28, %13
  br i1 %17, label %40, label %31

31:                                               ; preds = %30
  %32 = load ptr, ptr @mem_map, align 4
  %33 = ptrtoint ptr %1 to i32
  %34 = add i32 %33, 1073741824
  %35 = lshr i32 %34, 12
  %36 = getelementptr %struct.page, ptr %32, i32 %35
  %37 = and i32 %33, 4095
  %38 = tail call i32 @dma_map_page_attrs(ptr noundef %16, ptr noundef %36, i32 noundef %37, i32 noundef %2, i32 noundef %14, i32 noundef 0) #7
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %42

40:                                               ; preds = %31, %30
  %41 = tail call fastcc i32 @denali_pio_xfer(ptr noundef %7, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) #7
  br label %93

42:                                               ; preds = %31
  br i1 %4, label %49, label %43

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.denali_controller, ptr %7, i32 0, i32 18
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %47, i32 2, i32 1
  br label %49

49:                                               ; preds = %43, %42
  %50 = phi i32 [ 20, %42 ], [ 4, %43 ]
  %51 = phi i32 [ 0, %42 ], [ %48, %43 ]
  %52 = getelementptr inbounds %struct.denali_controller, ptr %7, i32 0, i32 5
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr i8, ptr %53, i32 1792
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 1) #7, !srcloc !13
  %55 = load ptr, ptr %52, align 4
  %56 = getelementptr i8, ptr %55, i32 1792
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %58 = getelementptr inbounds %struct.denali_controller, ptr %7, i32 0, i32 11
  %59 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %58) #7
  %60 = getelementptr inbounds %struct.denali_controller, ptr %7, i32 0, i32 10
  store i32 0, ptr %60, align 4
  %61 = getelementptr inbounds %struct.denali_controller, ptr %7, i32 0, i32 9
  store i32 0, ptr %61, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %58, i32 noundef %59) #7
  %62 = getelementptr inbounds %struct.denali_controller, ptr %7, i32 0, i32 22
  %63 = load ptr, ptr %62, align 4
  tail call void %63(ptr noundef %7, i32 noundef %38, i32 noundef %3, i1 noundef zeroext %4) #7
  %64 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %58) #7
  %65 = load i32, ptr %60, align 4
  %66 = and i32 %65, %50
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %58, i32 noundef %64) #7
  br label %77

69:                                               ; preds = %49
  store i32 %50, ptr %61, align 4
  %70 = getelementptr inbounds %struct.denali_controller, ptr %7, i32 0, i32 7
  store i32 0, ptr %70, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %58, i32 noundef %64) #7
  %71 = tail call i32 @wait_for_completion_timeout(ptr noundef %70, i32 noundef 100) #7
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.10, i32 noundef %50) #8
  br label %77

75:                                               ; preds = %69
  %76 = load i32, ptr %60, align 4
  br label %77

77:                                               ; preds = %75, %73, %68
  %78 = phi i32 [ %65, %68 ], [ %76, %75 ], [ 0, %73 ]
  %79 = and i32 %78, 4
  %80 = icmp eq i32 %79, 0
  %81 = and i32 %78, %51
  %82 = icmp eq i32 %81, 0
  %83 = select i1 %82, i32 0, i32 -74
  %84 = select i1 %80, i32 -5, i32 %83
  %85 = load ptr, ptr %52, align 4
  %86 = getelementptr i8, ptr %85, i32 1792
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 0) #7, !srcloc !13
  %87 = load ptr, ptr %15, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %87, i32 noundef %38, i32 noundef %2, i32 noundef %14, i32 noundef 0) #7
  %88 = and i32 %78, 65536
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %77
  tail call void @llvm.memset.p0.i32(ptr align 1 %1, i8 -1, i32 %2, i1 false) #7
  br label %93

91:                                               ; preds = %5
  %92 = tail call fastcc i32 @denali_pio_xfer(ptr noundef %7, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4)
  br label %93

93:                                               ; preds = %91, %90, %77, %40
  %94 = phi i32 [ %92, %91 ], [ %41, %40 ], [ %84, %90 ], [ %84, %77 ]
  ret i32 %94
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @denali_select_target(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.denali_chip, ptr %0, i32 0, i32 3, i32 %1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.denali_controller, ptr %4, i32 0, i32 15
  store i32 %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 18
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 17
  %11 = load i32, ptr %10, align 4
  %12 = sub i32 %9, %11
  %13 = shl nuw i32 1, %12
  %14 = getelementptr inbounds %struct.denali_controller, ptr %4, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 336
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %13) #7, !srcloc !13
  %17 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %18 = load i32, ptr %17, align 8
  %19 = lshr i32 %18, 1
  %20 = and i32 %19, 1
  %21 = load ptr, ptr %14, align 4
  %22 = getelementptr i8, ptr %21, i32 352
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #7, !srcloc !13
  %23 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = load ptr, ptr %14, align 4
  %26 = getelementptr i8, ptr %25, i32 368
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #7, !srcloc !13
  %27 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %28 = load i32, ptr %27, align 4
  %29 = load ptr, ptr %14, align 4
  %30 = getelementptr i8, ptr %29, i32 384
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #7, !srcloc !13
  %31 = load i32, ptr %17, align 8
  %32 = lshr i32 %31, 14
  %33 = and i32 %32, 1
  %34 = xor i32 %33, 1
  %35 = load ptr, ptr %14, align 4
  %36 = getelementptr i8, ptr %35, i32 400
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #7, !srcloc !13
  %37 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 7
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 31
  %40 = or i32 %39, 65536
  %41 = load ptr, ptr %14, align 4
  %42 = getelementptr i8, ptr %41, i32 432
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #7, !srcloc !13
  %43 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  %44 = load i32, ptr %43, align 8
  %45 = load ptr, ptr %14, align 4
  %46 = getelementptr i8, ptr %45, i32 1712
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #7, !srcloc !13
  %47 = load i32, ptr %43, align 8
  %48 = load ptr, ptr %14, align 4
  %49 = getelementptr i8, ptr %48, i32 1728
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #7, !srcloc !13
  %50 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = load ptr, ptr %14, align 4
  %53 = getelementptr i8, ptr %52, i32 1744
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #7, !srcloc !13
  %54 = load i32, ptr %17, align 8
  %55 = and i32 %54, 8388608
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %90

57:                                               ; preds = %2
  %58 = getelementptr %struct.denali_chip, ptr %0, i32 0, i32 3, i32 %1, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = load ptr, ptr %14, align 4
  %61 = getelementptr i8, ptr %60, i32 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %59) #7, !srcloc !13
  %62 = getelementptr %struct.denali_chip, ptr %0, i32 0, i32 3, i32 %1, i32 2
  %63 = load i32, ptr %62, align 4
  %64 = load ptr, ptr %14, align 4
  %65 = getelementptr i8, ptr %64, i32 272
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %63) #7, !srcloc !13
  %66 = getelementptr %struct.denali_chip, ptr %0, i32 0, i32 3, i32 %1, i32 3
  %67 = load i32, ptr %66, align 4
  %68 = load ptr, ptr %14, align 4
  %69 = getelementptr i8, ptr %68, i32 288
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %67) #7, !srcloc !13
  %70 = getelementptr %struct.denali_chip, ptr %0, i32 0, i32 3, i32 %1, i32 4
  %71 = load i32, ptr %70, align 4
  %72 = load ptr, ptr %14, align 4
  %73 = getelementptr i8, ptr %72, i32 304
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %71) #7, !srcloc !13
  %74 = getelementptr %struct.denali_chip, ptr %0, i32 0, i32 3, i32 %1, i32 5
  %75 = load i32, ptr %74, align 4
  %76 = load ptr, ptr %14, align 4
  %77 = getelementptr i8, ptr %76, i32 496
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %75) #7, !srcloc !13
  %78 = getelementptr %struct.denali_chip, ptr %0, i32 0, i32 3, i32 %1, i32 6
  %79 = load i32, ptr %78, align 4
  %80 = load ptr, ptr %14, align 4
  %81 = getelementptr i8, ptr %80, i32 512
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %79) #7, !srcloc !13
  %82 = getelementptr %struct.denali_chip, ptr %0, i32 0, i32 3, i32 %1, i32 7
  %83 = load i32, ptr %82, align 4
  %84 = load ptr, ptr %14, align 4
  %85 = getelementptr i8, ptr %84, i32 544
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %83) #7, !srcloc !13
  %86 = getelementptr %struct.denali_chip, ptr %0, i32 0, i32 3, i32 %1, i32 8
  %87 = load i32, ptr %86, align 4
  %88 = load ptr, ptr %14, align 4
  %89 = getelementptr i8, ptr %88, i32 656
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %87) #7, !srcloc !13
  br label %90

90:                                               ; preds = %57, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @denali_pio_xfer(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #1 {
  %6 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 15
  %7 = load i32, ptr %6, align 4
  %8 = shl i32 %7, 24
  %9 = or i32 %8, %3
  %10 = or i32 %9, 67108864
  br i1 %4, label %11, label %47

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 11
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #7
  %14 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 10
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 9
  store i32 0, ptr %15, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %13) #7
  %16 = icmp ult i32 %2, 4
  br i1 %16, label %27, label %17

17:                                               ; preds = %11
  %18 = lshr i32 %2, 2
  %19 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 21
  br label %20

20:                                               ; preds = %20, %17
  %21 = phi i32 [ 0, %17 ], [ %25, %20 ]
  %22 = load ptr, ptr %19, align 4
  %23 = getelementptr i32, ptr %1, i32 %21
  %24 = load i32, ptr %23, align 4
  tail call void %22(ptr noundef %0, i32 noundef %10, i32 noundef %24) #7
  %25 = add nuw nsw i32 %21, 1
  %26 = icmp eq i32 %25, %18
  br i1 %26, label %27, label %20

27:                                               ; preds = %20, %11
  %28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #7
  %29 = load i32, ptr %14, align 4
  %30 = and i32 %29, 144
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %28) #7
  br label %42

33:                                               ; preds = %27
  store i32 144, ptr %15, align 4
  %34 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 7
  store i32 0, ptr %34, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %28) #7
  %35 = tail call i32 @wait_for_completion_timeout(ptr noundef %34, i32 noundef 100) #7
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.10, i32 noundef 144) #8
  br label %42

40:                                               ; preds = %33
  %41 = load i32, ptr %14, align 4
  br label %42

42:                                               ; preds = %40, %37, %32
  %43 = phi i32 [ %29, %32 ], [ %41, %40 ], [ 0, %37 ]
  %44 = and i32 %43, 128
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, i32 -5, i32 0
  br label %94

47:                                               ; preds = %5
  %48 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 18
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  %52 = select i1 %51, i32 2, i32 1
  %53 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 11
  %54 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %53) #7
  %55 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 10
  store i32 0, ptr %55, align 4
  %56 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 9
  store i32 0, ptr %56, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %53, i32 noundef %54) #7
  %57 = icmp ult i32 %2, 4
  br i1 %57, label %68, label %58

58:                                               ; preds = %47
  %59 = lshr i32 %2, 2
  %60 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 20
  br label %61

61:                                               ; preds = %61, %58
  %62 = phi i32 [ 0, %58 ], [ %66, %61 ]
  %63 = load ptr, ptr %60, align 4
  %64 = tail call i32 %63(ptr noundef %0, i32 noundef %10) #7
  %65 = getelementptr i32, ptr %1, i32 %62
  store i32 %64, ptr %65, align 4
  %66 = add nuw nsw i32 %62, 1
  %67 = icmp eq i32 %66, %59
  br i1 %67, label %68, label %61

68:                                               ; preds = %61, %47
  %69 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %53) #7
  %70 = load i32, ptr %55, align 4
  %71 = and i32 %70, 32768
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %53, i32 noundef %69) #7
  br label %85

74:                                               ; preds = %68
  store i32 32768, ptr %56, align 4
  %75 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 7
  store i32 0, ptr %75, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %53, i32 noundef %69) #7
  %76 = tail call i32 @wait_for_completion_timeout(ptr noundef %75, i32 noundef 100) #7
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.10, i32 noundef 32768) #8
  br label %94

81:                                               ; preds = %74
  %82 = load i32, ptr %55, align 4
  %83 = and i32 %82, 32768
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %94, label %85

85:                                               ; preds = %81, %73
  %86 = phi i32 [ %70, %73 ], [ %82, %81 ]
  %87 = and i32 %86, 65536
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  tail call void @llvm.memset.p0.i32(ptr align 4 %1, i8 -1, i32 %2, i1 false) #7
  br label %90

90:                                               ; preds = %89, %85
  %91 = and i32 %86, %52
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %92, i32 0, i32 -74
  br label %94

94:                                               ; preds = %90, %81, %78, %42
  %95 = phi i32 [ %46, %42 ], [ %93, %90 ], [ -5, %81 ], [ -5, %78 ]
  ret i32 %95
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_check_erased_ecc_chunk(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_page_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @denali_oob_xfer(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.denali_controller, ptr %5, i32 0, i32 14
  %11 = load i32, ptr %10, align 4
  br i1 %2, label %12, label %14

12:                                               ; preds = %3
  %13 = tail call i32 @nand_change_write_column_op(ptr noundef %0, i32 noundef %7, ptr noundef %1, i32 noundef %11, i1 noundef zeroext false) #7
  br label %16

14:                                               ; preds = %3
  %15 = tail call i32 @nand_change_read_column_op(ptr noundef %0, i32 noundef %7, ptr noundef %1, i32 noundef %11, i1 noundef zeroext false) #7
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %75

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %75

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %1, i32 %11
  %25 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  %26 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  %27 = add i32 %9, %7
  %28 = add i32 %11, %7
  br label %29

29:                                               ; preds = %70, %23
  %30 = phi i32 [ %21, %23 ], [ %73, %70 ]
  %31 = phi i32 [ 0, %23 ], [ %72, %70 ]
  %32 = phi ptr [ %24, %23 ], [ %71, %70 ]
  %33 = load i32, ptr %25, align 4
  %34 = load i32, ptr %26, align 4
  %35 = add i32 %34, %33
  %36 = mul i32 %35, %31
  %37 = add i32 %36, %33
  %38 = add nsw i32 %30, -1
  %39 = icmp eq i32 %31, %38
  %40 = add i32 %37, %11
  %41 = sub i32 %27, %40
  %42 = select i1 %39, i32 %41, i32 %34
  %43 = icmp sgt i32 %7, %37
  br i1 %43, label %44, label %59

44:                                               ; preds = %29
  %45 = add i32 %42, %37
  %46 = icmp sgt i32 %45, %7
  br i1 %46, label %47, label %59

47:                                               ; preds = %44
  %48 = sub i32 %7, %37
  br i1 %2, label %49, label %51

49:                                               ; preds = %47
  %50 = tail call i32 @nand_change_write_column_op(ptr noundef %0, i32 noundef %37, ptr noundef %32, i32 noundef %48, i1 noundef zeroext false) #7
  br label %53

51:                                               ; preds = %47
  %52 = tail call i32 @nand_change_read_column_op(ptr noundef %0, i32 noundef %37, ptr noundef %32, i32 noundef %48, i1 noundef zeroext false) #7
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %75

56:                                               ; preds = %53
  %57 = getelementptr i8, ptr %32, i32 %48
  %58 = sub i32 %42, %48
  br label %59

59:                                               ; preds = %56, %44, %29
  %60 = phi ptr [ %57, %56 ], [ %32, %44 ], [ %32, %29 ]
  %61 = phi i32 [ %28, %56 ], [ %37, %44 ], [ %40, %29 ]
  %62 = phi i32 [ %58, %56 ], [ %42, %44 ], [ %42, %29 ]
  br i1 %2, label %63, label %65

63:                                               ; preds = %59
  %64 = tail call i32 @nand_change_write_column_op(ptr noundef %0, i32 noundef %61, ptr noundef %60, i32 noundef %62, i1 noundef zeroext false) #7
  br label %67

65:                                               ; preds = %59
  %66 = tail call i32 @nand_change_read_column_op(ptr noundef %0, i32 noundef %61, ptr noundef %60, i32 noundef %62, i1 noundef zeroext false) #7
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = getelementptr i8, ptr %60, i32 %62
  %72 = add nuw nsw i32 %31, 1
  %73 = load i32, ptr %20, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %29, label %75

75:                                               ; preds = %70, %67, %53, %19, %16
  %76 = phi i32 [ %17, %16 ], [ 0, %19 ], [ %54, %53 ], [ %68, %67 ], [ 0, %70 ]
  ret i32 %76
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_change_write_column_op(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_change_read_column_op(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_prog_page_begin_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_prog_page_end_op(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @denali_ooblayout_ecc(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.denali_controller, ptr %7, i32 0, i32 14
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr %2, align 4
  %10 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 6
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.mtd_oob_region, ptr %2, i32 0, i32 1
  store i32 %11, ptr %12, align 4
  br label %13

13:                                               ; preds = %5, %3
  %14 = phi i32 [ 0, %5 ], [ -34, %3 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @denali_ooblayout_free(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 6
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr inbounds %struct.denali_controller, ptr %7, i32 0, i32 14
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, %9
  store i32 %12, ptr %2, align 4
  %13 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = sub i32 %14, %12
  %16 = getelementptr inbounds %struct.mtd_oob_region, ptr %2, i32 0, i32 1
  store i32 %15, ptr %16, align 4
  br label %17

17:                                               ; preds = %5, %3
  %18 = phi i32 [ 0, %5 ], [ -34, %3 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_scan_with_ids(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @denali_attach_chip(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.denali_controller, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.denali_controller, ptr %3, i32 0, i32 14
  %9 = load i32, ptr %8, align 4
  %10 = sub i32 %7, %9
  %11 = tail call i32 @nand_ecc_choose_conf(ptr noundef %0, ptr noundef %5, i32 noundef %10) #7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.denali_controller, ptr %3, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.12) #8
  br label %78

16:                                               ; preds = %1
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr inbounds %struct.denali_controller, ptr %17, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 592
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %22 = getelementptr inbounds %struct.denali_controller, ptr %17, i32 0, i32 13
  store i32 %21, ptr %22, align 4
  %23 = icmp eq i32 %21, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %16
  store i32 1, ptr %22, align 4
  %25 = load ptr, ptr %18, align 4
  %26 = getelementptr i8, ptr %25, i32 592
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 1) #7, !srcloc !13
  %27 = load i32, ptr %22, align 4
  br label %28

28:                                               ; preds = %24, %16
  %29 = phi i32 [ %27, %24 ], [ %21, %16 ]
  switch i32 %29, label %30 [
    i32 1, label %78
    i32 2, label %33
  ]

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.denali_controller, ptr %17, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.13, i32 noundef %29) #8
  br label %78

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = shl i32 %35, 1
  store i32 %36, ptr %34, align 4
  %37 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = shl i32 %38, 1
  store i32 %39, ptr %37, align 4
  %40 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 2
  %41 = load i64, ptr %40, align 8
  %42 = shl i64 %41, 1
  store i64 %42, ptr %40, align 8
  %43 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 3
  %44 = load i32, ptr %43, align 8
  %45 = shl i32 %44, 1
  store i32 %45, ptr %43, align 8
  %46 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %47 = load i32, ptr %46, align 4
  %48 = shl i32 %47, 1
  store i32 %48, ptr %46, align 4
  %49 = load i32, ptr %6, align 4
  %50 = shl i32 %49, 1
  store i32 %50, ptr %6, align 4
  %51 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 17
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, 1
  store i32 %53, ptr %51, align 4
  %54 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 18
  %55 = load i32, ptr %54, align 8
  %56 = add i32 %55, 1
  store i32 %56, ptr %54, align 8
  %57 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 9
  %58 = load i32, ptr %57, align 4
  %59 = add i32 %58, 1
  store i32 %59, ptr %57, align 4
  %60 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 19
  %61 = load i32, ptr %60, align 4
  %62 = add i32 %61, 1
  store i32 %62, ptr %60, align 4
  %63 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 20
  %64 = load i32, ptr %63, align 8
  %65 = shl i32 %64, 1
  store i32 %65, ptr %63, align 8
  %66 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  %67 = load i32, ptr %66, align 8
  %68 = shl i32 %67, 1
  store i32 %68, ptr %66, align 8
  %69 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  %70 = load i32, ptr %69, align 4
  %71 = shl i32 %70, 1
  store i32 %71, ptr %69, align 4
  %72 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 7
  %73 = load i32, ptr %72, align 4
  %74 = shl i32 %73, 1
  store i32 %74, ptr %72, align 4
  %75 = getelementptr inbounds %struct.denali_controller, ptr %17, i32 0, i32 14
  %76 = load i32, ptr %75, align 4
  %77 = shl i32 %76, 1
  store i32 %77, ptr %75, align 4
  br label %78

78:                                               ; preds = %33, %30, %28, %13
  %79 = phi i32 [ %11, %13 ], [ -22, %30 ], [ 0, %33 ], [ 0, %28 ]
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @denali_exec_op(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) #1 {
  br i1 %2, label %185, label %4

4:                                                ; preds = %3
  %5 = load i32, ptr %1, align 4
  tail call fastcc void @denali_select_target(ptr noundef %0, i32 noundef %5)
  %6 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.denali_controller, ptr %7, i32 0, i32 11
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #7
  %10 = getelementptr inbounds %struct.denali_controller, ptr %7, i32 0, i32 10
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.denali_controller, ptr %7, i32 0, i32 9
  store i32 0, ptr %11, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #7
  %12 = getelementptr inbounds %struct.nand_operation, ptr %1, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %185, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.nand_operation, ptr %1, i32 0, i32 1
  %17 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  br label %18

18:                                               ; preds = %181, %15
  %19 = phi i32 [ 0, %15 ], [ %182, %181 ]
  %20 = load ptr, ptr %16, align 4
  %21 = getelementptr %struct.nand_op_instr, ptr %20, i32 %19
  %22 = load ptr, ptr %6, align 4
  %23 = load i32, ptr %21, align 4
  switch i32 %23, label %178 [
    i32 0, label %24
    i32 1, label %34
    i32 2, label %54
    i32 3, label %103
    i32 4, label %154
  ]

24:                                               ; preds = %18
  %25 = getelementptr %struct.nand_op_instr, ptr %20, i32 %19, i32 1
  %26 = getelementptr inbounds %struct.denali_controller, ptr %22, i32 0, i32 21
  %27 = getelementptr inbounds %struct.denali_controller, ptr %22, i32 0, i32 15
  %28 = load ptr, ptr %26, align 4
  %29 = load i32, ptr %27, align 4
  %30 = shl i32 %29, 24
  %31 = or i32 %30, 201326592
  %32 = load i8, ptr %25, align 1
  %33 = zext i8 %32 to i32
  tail call void %28(ptr noundef %22, i32 noundef %31, i32 noundef %33) #7
  br label %181

34:                                               ; preds = %18
  %35 = getelementptr %struct.nand_op_instr, ptr %20, i32 %19, i32 1
  %36 = getelementptr %struct.nand_op_instr, ptr %20, i32 %19, i32 1, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = load i32, ptr %35, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %181, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.denali_controller, ptr %22, i32 0, i32 21
  %42 = getelementptr inbounds %struct.denali_controller, ptr %22, i32 0, i32 15
  br label %43

43:                                               ; preds = %43, %40
  %44 = phi i32 [ 0, %40 ], [ %52, %43 ]
  %45 = load ptr, ptr %41, align 4
  %46 = load i32, ptr %42, align 4
  %47 = shl i32 %46, 24
  %48 = or i32 %47, 201326593
  %49 = getelementptr i8, ptr %37, i32 %44
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  tail call void %45(ptr noundef %22, i32 noundef %48, i32 noundef %51) #7
  %52 = add nuw i32 %44, 1
  %53 = icmp eq i32 %52, %38
  br i1 %53, label %181, label %43

54:                                               ; preds = %18
  %55 = getelementptr %struct.nand_op_instr, ptr %20, i32 %19, i32 1
  %56 = getelementptr %struct.nand_op_instr, ptr %20, i32 %19, i32 1, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = load i32, ptr %55, align 4
  %59 = getelementptr %struct.nand_op_instr, ptr %20, i32 %19, i32 1, i32 0, i32 2
  %60 = load i8, ptr %59, align 4, !range !9
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %54
  %63 = icmp eq i32 %58, 0
  br i1 %63, label %181, label %89

64:                                               ; preds = %54
  %65 = load i32, ptr %17, align 8
  %66 = and i32 %65, 2
  %67 = icmp eq i32 %66, 0
  %68 = icmp eq i32 %58, 0
  br i1 %67, label %88, label %69

69:                                               ; preds = %64
  br i1 %68, label %181, label %70

70:                                               ; preds = %69
  %71 = getelementptr inbounds %struct.denali_controller, ptr %22, i32 0, i32 20
  %72 = getelementptr inbounds %struct.denali_controller, ptr %22, i32 0, i32 15
  br label %73

73:                                               ; preds = %73, %70
  %74 = phi i32 [ 0, %70 ], [ %86, %73 ]
  %75 = load ptr, ptr %71, align 4
  %76 = load i32, ptr %72, align 4
  %77 = shl i32 %76, 24
  %78 = or i32 %77, 201326594
  %79 = tail call i32 %75(ptr noundef %22, i32 noundef %78) #7
  %80 = trunc i32 %79 to i8
  %81 = getelementptr i8, ptr %57, i32 %74
  store i8 %80, ptr %81, align 1
  %82 = lshr i32 %79, 16
  %83 = trunc i32 %82 to i8
  %84 = or i32 %74, 1
  %85 = getelementptr i8, ptr %57, i32 %84
  store i8 %83, ptr %85, align 1
  %86 = add i32 %74, 2
  %87 = icmp ult i32 %86, %58
  br i1 %87, label %73, label %181

88:                                               ; preds = %64
  br i1 %68, label %181, label %89

89:                                               ; preds = %88, %62
  %90 = getelementptr inbounds %struct.denali_controller, ptr %22, i32 0, i32 20
  %91 = getelementptr inbounds %struct.denali_controller, ptr %22, i32 0, i32 15
  br label %92

92:                                               ; preds = %92, %89
  %93 = phi i32 [ 0, %89 ], [ %101, %92 ]
  %94 = load ptr, ptr %90, align 4
  %95 = load i32, ptr %91, align 4
  %96 = shl i32 %95, 24
  %97 = or i32 %96, 201326594
  %98 = tail call i32 %94(ptr noundef %22, i32 noundef %97) #7
  %99 = trunc i32 %98 to i8
  %100 = getelementptr i8, ptr %57, i32 %93
  store i8 %99, ptr %100, align 1
  %101 = add nuw i32 %93, 1
  %102 = icmp eq i32 %101, %58
  br i1 %102, label %181, label %92

103:                                              ; preds = %18
  %104 = getelementptr %struct.nand_op_instr, ptr %20, i32 %19, i32 1
  %105 = getelementptr %struct.nand_op_instr, ptr %20, i32 %19, i32 1, i32 0, i32 1
  %106 = load ptr, ptr %105, align 4
  %107 = load i32, ptr %104, align 4
  %108 = getelementptr %struct.nand_op_instr, ptr %20, i32 %19, i32 1, i32 0, i32 2
  %109 = load i8, ptr %108, align 4, !range !9
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %103
  %112 = icmp eq i32 %107, 0
  br i1 %112, label %181, label %140

113:                                              ; preds = %103
  %114 = load i32, ptr %17, align 8
  %115 = and i32 %114, 2
  %116 = icmp eq i32 %115, 0
  %117 = icmp eq i32 %107, 0
  br i1 %116, label %139, label %118

118:                                              ; preds = %113
  br i1 %117, label %181, label %119

119:                                              ; preds = %118
  %120 = getelementptr inbounds %struct.denali_controller, ptr %22, i32 0, i32 21
  %121 = getelementptr inbounds %struct.denali_controller, ptr %22, i32 0, i32 15
  br label %122

122:                                              ; preds = %122, %119
  %123 = phi i32 [ 0, %119 ], [ %137, %122 ]
  %124 = load ptr, ptr %120, align 4
  %125 = load i32, ptr %121, align 4
  %126 = shl i32 %125, 24
  %127 = or i32 %126, 201326594
  %128 = or i32 %123, 1
  %129 = getelementptr i8, ptr %106, i32 %128
  %130 = load i8, ptr %129, align 1
  %131 = zext i8 %130 to i32
  %132 = shl nuw nsw i32 %131, 16
  %133 = getelementptr i8, ptr %106, i32 %123
  %134 = load i8, ptr %133, align 1
  %135 = zext i8 %134 to i32
  %136 = or i32 %132, %135
  tail call void %124(ptr noundef %22, i32 noundef %127, i32 noundef %136) #7
  %137 = add i32 %123, 2
  %138 = icmp ult i32 %137, %107
  br i1 %138, label %122, label %181

139:                                              ; preds = %113
  br i1 %117, label %181, label %140

140:                                              ; preds = %139, %111
  %141 = getelementptr inbounds %struct.denali_controller, ptr %22, i32 0, i32 21
  %142 = getelementptr inbounds %struct.denali_controller, ptr %22, i32 0, i32 15
  br label %143

143:                                              ; preds = %143, %140
  %144 = phi i32 [ 0, %140 ], [ %152, %143 ]
  %145 = load ptr, ptr %141, align 4
  %146 = load i32, ptr %142, align 4
  %147 = shl i32 %146, 24
  %148 = or i32 %147, 201326594
  %149 = getelementptr i8, ptr %106, i32 %144
  %150 = load i8, ptr %149, align 1
  %151 = zext i8 %150 to i32
  tail call void %145(ptr noundef %22, i32 noundef %148, i32 noundef %151) #7
  %152 = add nuw i32 %144, 1
  %153 = icmp eq i32 %152, %107
  br i1 %153, label %181, label %143

154:                                              ; preds = %18
  %155 = getelementptr inbounds %struct.denali_controller, ptr %22, i32 0, i32 11
  %156 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %155) #7
  %157 = getelementptr inbounds %struct.denali_controller, ptr %22, i32 0, i32 10
  %158 = load i32, ptr %157, align 4
  %159 = and i32 %158, 4096
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %154
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %155, i32 noundef %156) #7
  br label %172

162:                                              ; preds = %154
  %163 = getelementptr inbounds %struct.denali_controller, ptr %22, i32 0, i32 9
  store i32 4096, ptr %163, align 4
  %164 = getelementptr inbounds %struct.denali_controller, ptr %22, i32 0, i32 7
  store i32 0, ptr %164, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %155, i32 noundef %156) #7
  %165 = tail call i32 @wait_for_completion_timeout(ptr noundef %164, i32 noundef 100) #7
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %162
  %168 = getelementptr inbounds %struct.denali_controller, ptr %22, i32 0, i32 1
  %169 = load ptr, ptr %168, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %169, ptr noundef nonnull @.str.10, i32 noundef 4096) #8
  br label %172

170:                                              ; preds = %162
  %171 = load i32, ptr %157, align 4
  br label %172

172:                                              ; preds = %170, %167, %161
  %173 = phi i32 [ %158, %161 ], [ %171, %170 ], [ 0, %167 ]
  %174 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %155) #7
  store i32 0, ptr %157, align 4
  %175 = getelementptr inbounds %struct.denali_controller, ptr %22, i32 0, i32 9
  store i32 0, ptr %175, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %155, i32 noundef %174) #7
  %176 = and i32 %173, 4096
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %185, label %181

178:                                              ; preds = %18
  %179 = load i1, ptr @denali_exec_instr.__already_done, align 1
  br i1 %179, label %185, label %180, !prof !18

180:                                              ; preds = %178
  store i1 true, ptr @denali_exec_instr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1142, i32 noundef 9, ptr noundef nonnull @.str.14, i32 noundef %23) #7
  br label %185

181:                                              ; preds = %172, %143, %139, %122, %118, %111, %92, %88, %73, %69, %62, %43, %34, %24
  %182 = add nuw i32 %19, 1
  %183 = load i32, ptr %12, align 4
  %184 = icmp ult i32 %182, %183
  br i1 %184, label %18, label %185

185:                                              ; preds = %181, %180, %178, %172, %4, %3
  %186 = phi i32 [ 0, %3 ], [ -22, %180 ], [ -22, %178 ], [ 0, %4 ], [ 0, %181 ], [ -5, %172 ]
  ret i32 %186
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @denali_setup_interface(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %2, align 8
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.nand_interface_config, ptr %2, i32 0, i32 1, i32 1
  %9 = select i1 %7, ptr %8, ptr inttoptr (i32 -22 to ptr)
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = ptrtoint ptr %9 to i32
  br label %168

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.denali_controller, ptr %5, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %15, i64 1000000000000) #9, !srcloc !20
  %17 = extractvalue { i64, i64 } %16, 1
  %18 = trunc i64 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %168, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.denali_controller, ptr %5, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = lshr i32 %22, 1
  %24 = add i32 %23, %15
  %25 = udiv i32 %24, %22
  %26 = add i32 %25, -7
  %27 = icmp ult i32 %26, -3
  br i1 %27, label %168, label %28

28:                                               ; preds = %20
  %29 = icmp eq i32 %1, -1
  br i1 %29, label %168, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.nand_sdr_timings, ptr %9, i32 0, i32 26
  %32 = load i32, ptr %31, align 8
  %33 = add i32 %18, -1
  %34 = getelementptr inbounds %struct.denali_controller, ptr %5, i32 0, i32 5
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i8, ptr %35, i32 288
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %38 = add i32 %33, %32
  %39 = udiv i32 %38, %18
  %40 = tail call i32 @llvm.smin.i32(i32 %39, i32 63)
  %41 = and i32 %37, -64
  %42 = and i32 %40, 63
  %43 = or i32 %41, %42
  %44 = getelementptr %struct.denali_chip, ptr %0, i32 0, i32 3, i32 %1, i32 3
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.nand_sdr_timings, ptr %9, i32 0, i32 27
  %46 = load i32, ptr %45, align 4
  %47 = load ptr, ptr %34, align 4
  %48 = getelementptr i8, ptr %47, i32 656
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %50 = add i32 %33, %46
  %51 = udiv i32 %50, %18
  %52 = tail call i32 @llvm.smin.i32(i32 %51, i32 63)
  %53 = and i32 %49, -64
  %54 = and i32 %52, 63
  %55 = or i32 %53, %54
  %56 = getelementptr %struct.denali_chip, ptr %0, i32 0, i32 3, i32 %1, i32 8
  store i32 %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.nand_sdr_timings, ptr %9, i32 0, i32 1
  %58 = load i32, ptr %57, align 8
  %59 = getelementptr inbounds %struct.nand_sdr_timings, ptr %9, i32 0, i32 35
  %60 = load i32, ptr %59, align 4
  %61 = load ptr, ptr %34, align 4
  %62 = getelementptr i8, ptr %61, i32 256
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %64 = tail call i32 @llvm.umax.i32(i32 %58, i32 %60)
  %65 = add i32 %33, %64
  %66 = udiv i32 %65, %18
  %67 = tail call i32 @llvm.smin.i32(i32 %66, i32 63)
  %68 = and i32 %63, -64
  %69 = and i32 %67, 63
  %70 = or i32 %68, %69
  %71 = getelementptr %struct.denali_chip, ptr %0, i32 0, i32 3, i32 %1, i32 1
  store i32 %70, ptr %71, align 4
  %72 = getelementptr inbounds %struct.denali_controller, ptr %5, i32 0, i32 17
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr inbounds %struct.nand_sdr_timings, ptr %9, i32 0, i32 5
  %75 = load i32, ptr %74, align 4
  %76 = load ptr, ptr %34, align 4
  %77 = getelementptr i8, ptr %76, i32 272
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %79 = add i32 %33, %75
  %80 = udiv i32 %79, %18
  %81 = icmp ult i32 %73, 1281
  %82 = select i1 %81, i32 63, i32 127
  %83 = tail call i32 @llvm.smin.i32(i32 %80, i32 %82)
  %84 = and i32 %78, -128
  %85 = and i32 %83, 127
  %86 = or i32 %84, %85
  %87 = getelementptr %struct.denali_chip, ptr %0, i32 0, i32 3, i32 %1, i32 2
  store i32 %86, ptr %87, align 4
  %88 = getelementptr inbounds %struct.nand_sdr_timings, ptr %9, i32 0, i32 24
  %89 = load i32, ptr %88, align 8
  %90 = getelementptr inbounds %struct.nand_sdr_timings, ptr %9, i32 0, i32 34
  %91 = load i32, ptr %90, align 8
  %92 = load ptr, ptr %34, align 4
  %93 = getelementptr i8, ptr %92, i32 512
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %93) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %95 = tail call i32 @llvm.umax.i32(i32 %89, i32 %91)
  %96 = add i32 %33, %95
  %97 = udiv i32 %96, %18
  %98 = tail call i32 @llvm.smin.i32(i32 %97, i32 31)
  %99 = and i32 %94, -32
  %100 = and i32 %98, 31
  %101 = or i32 %99, %100
  %102 = getelementptr %struct.denali_chip, ptr %0, i32 0, i32 3, i32 %1, i32 6
  store i32 %101, ptr %102, align 4
  %103 = getelementptr inbounds %struct.nand_sdr_timings, ptr %9, i32 0, i32 23
  %104 = load i32, ptr %103, align 4
  %105 = add i32 %18, 9999
  %106 = add i32 %105, %104
  %107 = udiv i32 %106, %18
  %108 = getelementptr inbounds %struct.nand_sdr_timings, ptr %9, i32 0, i32 29
  %109 = load i32, ptr %108, align 4
  %110 = getelementptr inbounds %struct.nand_sdr_timings, ptr %9, i32 0, i32 36
  %111 = load i32, ptr %110, align 8
  %112 = tail call i32 @llvm.umax.i32(i32 %109, i32 %111)
  %113 = add i32 %33, %112
  %114 = udiv i32 %113, %18
  %115 = getelementptr inbounds %struct.nand_sdr_timings, ptr %9, i32 0, i32 25
  %116 = load i32, ptr %115, align 4
  %117 = udiv i32 %116, %18
  %118 = sub i32 %107, %117
  %119 = tail call i32 @llvm.smax.i32(i32 %114, i32 %118)
  %120 = getelementptr inbounds %struct.nand_sdr_timings, ptr %9, i32 0, i32 22
  %121 = load i32, ptr %120, align 8
  %122 = getelementptr inbounds %struct.nand_sdr_timings, ptr %9, i32 0, i32 33
  %123 = load i32, ptr %122, align 4
  %124 = tail call i32 @llvm.umax.i32(i32 %121, i32 %123)
  %125 = add i32 %33, %124
  %126 = udiv i32 %125, %18
  %127 = sub i32 %126, %98
  %128 = tail call i32 @llvm.smax.i32(i32 %119, i32 %127)
  %129 = tail call i32 @llvm.smin.i32(i32 %128, i32 31)
  %130 = add i32 %33, %116
  %131 = udiv i32 %130, %18
  %132 = add i32 %131, %107
  %133 = add i32 %132, %129
  %134 = lshr i32 %133, 1
  %135 = tail call i32 @llvm.umin.i32(i32 %134, i32 15)
  %136 = load ptr, ptr %34, align 4
  %137 = getelementptr i8, ptr %136, i32 304
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %137) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %139 = and i32 %138, -16
  %140 = or i32 %135, %139
  %141 = getelementptr %struct.denali_chip, ptr %0, i32 0, i32 3, i32 %1, i32 4
  store i32 %140, ptr %141, align 4
  %142 = load ptr, ptr %34, align 4
  %143 = getelementptr i8, ptr %142, i32 496
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %143) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %145 = and i32 %144, -32
  %146 = and i32 %129, 31
  %147 = or i32 %145, %146
  %148 = getelementptr %struct.denali_chip, ptr %0, i32 0, i32 3, i32 %1, i32 5
  store i32 %147, ptr %148, align 4
  %149 = getelementptr inbounds %struct.nand_sdr_timings, ptr %9, i32 0, i32 16
  %150 = load i32, ptr %149, align 8
  %151 = add i32 %33, %150
  %152 = udiv i32 %151, %18
  %153 = sub i32 %152, %129
  %154 = getelementptr inbounds %struct.nand_sdr_timings, ptr %9, i32 0, i32 8
  %155 = load i32, ptr %154, align 8
  %156 = add i32 %33, %155
  %157 = udiv i32 %156, %18
  %158 = sub i32 %157, %135
  %159 = tail call i32 @llvm.smax.i32(i32 %153, i32 %158)
  %160 = tail call i32 @llvm.smax.i32(i32 %159, i32 0)
  %161 = tail call i32 @llvm.umin.i32(i32 %160, i32 31)
  %162 = load ptr, ptr %34, align 4
  %163 = getelementptr i8, ptr %162, i32 544
  %164 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %163) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %165 = and i32 %164, -32
  %166 = or i32 %161, %165
  %167 = getelementptr %struct.denali_chip, ptr %0, i32 0, i32 3, i32 %1, i32 7
  store i32 %166, ptr %167, align 4
  br label %168

168:                                              ; preds = %30, %28, %20, %13, %11
  %169 = phi i32 [ %12, %11 ], [ 0, %30 ], [ -22, %13 ], [ -22, %20 ], [ 0, %28 ]
  ret i32 %169
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_ecc_choose_conf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }

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
!8 = !{i32 0, i32 33}
!9 = !{i8 0, i8 2}
!10 = !{i64 5020244}
!11 = !{i64 2152559697}
!12 = !{i64 2152560919}
!13 = !{i64 5019826}
!14 = !{i64 2148897902}
!15 = !{i64 2148893726}
!16 = !{i64 2148893801, i64 2148893828, i64 2148893875, i64 2148893897, i64 2148893925, i64 2148893945}
!17 = !{i64 2148920905}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{i64 2148097362, i64 2148097642, i64 2148097976, i64 2148098310}
