; ModuleID = '/llk/IR/drivers/mtd/nand/core.c_pt.bc'
source_filename = "../drivers/mtd/nand/core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nanddev_isbad:\09\09\09\09\09"
module asm "\09.asciz \09\22nanddev_isbad\22\09\09\09\09\09"
module asm "__kstrtabns_nanddev_isbad:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nanddev_markbad:\09\09\09\09\09"
module asm "\09.asciz \09\22nanddev_markbad\22\09\09\09\09\09"
module asm "__kstrtabns_nanddev_markbad:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nanddev_isreserved:\09\09\09\09\09"
module asm "\09.asciz \09\22nanddev_isreserved\22\09\09\09\09\09"
module asm "__kstrtabns_nanddev_isreserved:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nanddev_erase:\09\09\09\09\09"
module asm "\09.asciz \09\22nanddev_erase\22\09\09\09\09\09"
module asm "__kstrtabns_nanddev_erase:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nanddev_mtd_erase:\09\09\09\09\09"
module asm "\09.asciz \09\22nanddev_mtd_erase\22\09\09\09\09\09"
module asm "__kstrtabns_nanddev_mtd_erase:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nanddev_mtd_max_bad_blocks:\09\09\09\09\09"
module asm "\09.asciz \09\22nanddev_mtd_max_bad_blocks\22\09\09\09\09\09"
module asm "__kstrtabns_nanddev_mtd_max_bad_blocks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nanddev_ecc_engine_init:\09\09\09\09\09"
module asm "\09.asciz \09\22nanddev_ecc_engine_init\22\09\09\09\09\09"
module asm "__kstrtabns_nanddev_ecc_engine_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nanddev_ecc_engine_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22nanddev_ecc_engine_cleanup\22\09\09\09\09\09"
module asm "__kstrtabns_nanddev_ecc_engine_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nanddev_init:\09\09\09\09\09"
module asm "\09.asciz \09\22nanddev_init\22\09\09\09\09\09"
module asm "__kstrtabns_nanddev_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nanddev_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22nanddev_cleanup\22\09\09\09\09\09"
module asm "__kstrtabns_nanddev_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.5 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
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
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.5 = type { %struct.mtd_part, [16 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.nand_memory_organization = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc = type { %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_context, ptr, ptr }
%struct.nand_ecc_props = type { i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc_context = type { %struct.nand_ecc_props, i32, i32, ptr }
%struct.nand_row_converter = type { i32, i32 }
%struct.nand_bbt = type { ptr }
%struct.nand_pos = type { i32, i32, i32, i32, i32 }
%struct.nand_ops = type { ptr, ptr, ptr }
%struct.erase_info = type { i64, i64, i64 }

@nanddev_isbad.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mtd_expert_analysis_mode = external dso_local local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [24 x i8] c"drivers/mtd/nand/core.c\00", align 1
@mtd_expert_analysis_warning = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_nanddev_isbad = external dso_local constant [0 x i8], align 1
@__kstrtabns_nanddev_isbad = external dso_local constant [0 x i8], align 1
@__ksymtab_nanddev_isbad = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nanddev_isbad to i32), ptr @__kstrtab_nanddev_isbad, ptr @__kstrtabns_nanddev_isbad }, section "___ksymtab_gpl+nanddev_isbad", align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"\014nand: failed to write BBM to block @%llx (err = %d)\0A\00", align 1
@__kstrtab_nanddev_markbad = external dso_local constant [0 x i8], align 1
@__kstrtabns_nanddev_markbad = external dso_local constant [0 x i8], align 1
@__ksymtab_nanddev_markbad = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nanddev_markbad to i32), ptr @__kstrtab_nanddev_markbad, ptr @__kstrtabns_nanddev_markbad }, section "___ksymtab_gpl+nanddev_markbad", align 4
@__kstrtab_nanddev_isreserved = external dso_local constant [0 x i8], align 1
@__kstrtabns_nanddev_isreserved = external dso_local constant [0 x i8], align 1
@__ksymtab_nanddev_isreserved = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nanddev_isreserved to i32), ptr @__kstrtab_nanddev_isreserved, ptr @__kstrtabns_nanddev_isreserved }, section "___ksymtab_gpl+nanddev_isreserved", align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"\014nand: attempt to erase a bad/reserved block @%llx\0A\00", align 1
@__kstrtab_nanddev_erase = external dso_local constant [0 x i8], align 1
@__kstrtabns_nanddev_erase = external dso_local constant [0 x i8], align 1
@__ksymtab_nanddev_erase = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nanddev_erase to i32), ptr @__kstrtab_nanddev_erase, ptr @__kstrtabns_nanddev_erase }, section "___ksymtab_gpl+nanddev_erase", align 4
@__kstrtab_nanddev_mtd_erase = external dso_local constant [0 x i8], align 1
@__kstrtabns_nanddev_mtd_erase = external dso_local constant [0 x i8], align 1
@__ksymtab_nanddev_mtd_erase = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nanddev_mtd_erase to i32), ptr @__kstrtab_nanddev_mtd_erase, ptr @__kstrtabns_nanddev_mtd_erase }, section "___ksymtab_gpl+nanddev_mtd_erase", align 4
@__kstrtab_nanddev_mtd_max_bad_blocks = external dso_local constant [0 x i8], align 1
@__kstrtabns_nanddev_mtd_max_bad_blocks = external dso_local constant [0 x i8], align 1
@__ksymtab_nanddev_mtd_max_bad_blocks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nanddev_mtd_max_bad_blocks to i32), ptr @__kstrtab_nanddev_mtd_max_bad_blocks, ptr @__kstrtabns_nanddev_mtd_max_bad_blocks }, section "___ksymtab_gpl+nanddev_mtd_max_bad_blocks", align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"\013nand: No ECC engine found\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"\013nand: No suitable ECC configuration\0A\00", align 1
@__kstrtab_nanddev_ecc_engine_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_nanddev_ecc_engine_init = external dso_local constant [0 x i8], align 1
@__ksymtab_nanddev_ecc_engine_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nanddev_ecc_engine_init to i32), ptr @__kstrtab_nanddev_ecc_engine_init, ptr @__kstrtabns_nanddev_ecc_engine_init }, section "___ksymtab_gpl+nanddev_ecc_engine_init", align 4
@__kstrtab_nanddev_ecc_engine_cleanup = external dso_local constant [0 x i8], align 1
@__kstrtabns_nanddev_ecc_engine_cleanup = external dso_local constant [0 x i8], align 1
@__ksymtab_nanddev_ecc_engine_cleanup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nanddev_ecc_engine_cleanup to i32), ptr @__kstrtab_nanddev_ecc_engine_cleanup, ptr @__kstrtabns_nanddev_ecc_engine_cleanup }, section "___ksymtab_gpl+nanddev_ecc_engine_cleanup", align 4
@__kstrtab_nanddev_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_nanddev_init = external dso_local constant [0 x i8], align 1
@__ksymtab_nanddev_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nanddev_init to i32), ptr @__kstrtab_nanddev_init, ptr @__kstrtabns_nanddev_init }, section "___ksymtab_gpl+nanddev_init", align 4
@__kstrtab_nanddev_cleanup = external dso_local constant [0 x i8], align 1
@__kstrtabns_nanddev_cleanup = external dso_local constant [0 x i8], align 1
@__ksymtab_nanddev_cleanup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nanddev_cleanup to i32), ptr @__kstrtab_nanddev_cleanup, ptr @__kstrtabns_nanddev_cleanup }, section "___ksymtab_gpl+nanddev_cleanup", align 4
@__UNIQUE_ID_description172 = internal constant [44 x i8] c"nandcore.description=Generic NAND framework\00", section ".modinfo", align 1
@__UNIQUE_ID_author173 = internal constant [69 x i8] c"nandcore.author=Boris Brezillon <boris.brezillon@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file174 = internal constant [40 x i8] c"nandcore.file=drivers/mtd/nand/nandcore\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [24 x i8] c"nandcore.license=GPL v2\00", section ".modinfo", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"\013nand: On-host hardware ECC engines not supported yet\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"\013nand: Missing ECC engine type\0A\00", align 1
@.str.7 = private unnamed_addr constant [108 x i8] c"\014nand: WARNING: %s: the ECC used on your system is too weak compared to the one required by the NAND chip\0A\00", align 1
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_author173, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__ksymtab_nanddev_cleanup, ptr @__ksymtab_nanddev_ecc_engine_cleanup, ptr @__ksymtab_nanddev_ecc_engine_init, ptr @__ksymtab_nanddev_erase, ptr @__ksymtab_nanddev_init, ptr @__ksymtab_nanddev_isbad, ptr @__ksymtab_nanddev_isreserved, ptr @__ksymtab_nanddev_markbad, ptr @__ksymtab_nanddev_mtd_erase, ptr @__ksymtab_nanddev_mtd_max_bad_blocks], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @nanddev_isbad(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i8, ptr @mtd_expert_analysis_mode, align 1, !range !8
  %4 = icmp ne i8 %3, 0
  %5 = load i1, ptr @nanddev_isbad.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %10, !prof !9

8:                                                ; preds = %2
  store i1 true, ptr @nanddev_isbad.__already_done, align 1
  %9 = load ptr, ptr @mtd_expert_analysis_warning, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 24, i32 noundef 9, ptr noundef %9) #7
  br label %10

10:                                               ; preds = %8, %2
  br i1 %4, label %50, label %11

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %44, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.nand_pos, ptr %1, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nand_pos, ptr %1, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = load i32, ptr %1, align 4
  %21 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 7
  %22 = load i32, ptr %21, align 4
  %23 = mul i32 %22, %20
  %24 = add i32 %23, %19
  %25 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 4
  %26 = load i32, ptr %25, align 8
  %27 = mul i32 %24, %26
  %28 = add i32 %27, %17
  %29 = tail call i32 @nanddev_bbt_get_block_status(ptr noundef %0, i32 noundef %28) #7
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %15
  %32 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 5
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.nand_ops, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = tail call zeroext i1 %35(ptr noundef %0, ptr noundef %1) #7
  %37 = select i1 %36, i32 4, i32 1
  %38 = tail call i32 @nanddev_bbt_set_block_status(ptr noundef %0, i32 noundef %28, i32 noundef %37) #7
  br label %39

39:                                               ; preds = %31, %15
  %40 = phi i32 [ %37, %31 ], [ %29, %15 ]
  %41 = icmp eq i32 %40, 2
  %42 = icmp eq i32 %40, 4
  %43 = or i1 %41, %42
  br label %50

44:                                               ; preds = %11
  %45 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 5
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.nand_ops, ptr %46, i32 0, i32 2
  %48 = load ptr, ptr %47, align 4
  %49 = tail call zeroext i1 %48(ptr noundef %0, ptr noundef %1) #7
  br label %50

50:                                               ; preds = %44, %39, %10
  %51 = phi i1 [ %43, %39 ], [ %49, %44 ], [ false, %10 ]
  ret i1 %51
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nanddev_bbt_get_block_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nanddev_bbt_set_block_status(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nanddev_markbad(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call zeroext i1 @nanddev_isbad(ptr noundef %0, ptr noundef %1)
  br i1 %3, label %66, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nand_ops, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %0, ptr noundef %1) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %37, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.nand_pos, ptr %1, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nand_pos, ptr %1, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nand_pos, ptr %1, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = load i32, ptr %1, align 4
  %19 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = mul i32 %20, %18
  %22 = add i32 %21, %17
  %23 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 4
  %24 = load i32, ptr %23, align 8
  %25 = mul i32 %22, %24
  %26 = add i32 %25, %15
  %27 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = mul i32 %26, %28
  %30 = add i32 %29, %13
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = zext i32 %33 to i64
  %35 = mul nuw i64 %31, %34
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i64 noundef %35, i32 noundef %9) #8
  br label %37

37:                                               ; preds = %11, %4
  %38 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 4
  %39 = load ptr, ptr %38, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %59, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.nand_pos, ptr %1, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.nand_pos, ptr %1, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = load i32, ptr %1, align 4
  %47 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 7
  %48 = load i32, ptr %47, align 4
  %49 = mul i32 %48, %46
  %50 = add i32 %49, %45
  %51 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 4
  %52 = load i32, ptr %51, align 8
  %53 = mul i32 %50, %52
  %54 = add i32 %53, %43
  %55 = tail call i32 @nanddev_bbt_set_block_status(ptr noundef %0, i32 noundef %54, i32 noundef 2) #7
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %41
  %58 = tail call i32 @nanddev_bbt_update(ptr noundef %0) #7
  br label %59

59:                                               ; preds = %57, %37
  %60 = phi i32 [ %58, %57 ], [ %9, %37 ]
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = add i32 %64, 1
  store i32 %65, ptr %63, align 4
  br label %66

66:                                               ; preds = %62, %59, %41, %2
  %67 = phi i32 [ 0, %2 ], [ 0, %62 ], [ %60, %59 ], [ %55, %41 ]
  ret i32 %67
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nanddev_bbt_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @nanddev_isreserved(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nand_pos, ptr %1, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nand_pos, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = load i32, ptr %1, align 4
  %12 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = mul i32 %13, %11
  %15 = add i32 %14, %10
  %16 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 4
  %17 = load i32, ptr %16, align 8
  %18 = mul i32 %15, %17
  %19 = add i32 %18, %8
  %20 = tail call i32 @nanddev_bbt_get_block_status(ptr noundef %0, i32 noundef %19) #7
  %21 = icmp eq i32 %20, 3
  br label %22

22:                                               ; preds = %6, %2
  %23 = phi i1 [ %21, %6 ], [ false, %2 ]
  ret i1 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nanddev_erase(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call zeroext i1 @nanddev_isbad(ptr noundef %0, ptr noundef %1)
  br i1 %3, label %24, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %50, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nand_pos, ptr %1, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nand_pos, ptr %1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = load i32, ptr %1, align 4
  %14 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 7
  %15 = load i32, ptr %14, align 4
  %16 = mul i32 %15, %13
  %17 = add i32 %16, %12
  %18 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 4
  %19 = load i32, ptr %18, align 8
  %20 = mul i32 %17, %19
  %21 = add i32 %20, %10
  %22 = tail call i32 @nanddev_bbt_get_block_status(ptr noundef %0, i32 noundef %21) #7
  %23 = icmp eq i32 %22, 3
  br i1 %23, label %24, label %50

24:                                               ; preds = %8, %2
  %25 = getelementptr inbounds %struct.nand_pos, ptr %1, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.nand_pos, ptr %1, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.nand_pos, ptr %1, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = load i32, ptr %1, align 4
  %32 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 7
  %33 = load i32, ptr %32, align 4
  %34 = mul i32 %33, %31
  %35 = add i32 %34, %30
  %36 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 4
  %37 = load i32, ptr %36, align 8
  %38 = mul i32 %35, %37
  %39 = add i32 %38, %28
  %40 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = mul i32 %39, %41
  %43 = add i32 %42, %26
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = zext i32 %46 to i64
  %48 = mul nuw i64 %44, %47
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i64 noundef %48) #8
  br label %55

50:                                               ; preds = %8, %4
  %51 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 5
  %52 = load ptr, ptr %51, align 4
  %53 = load ptr, ptr %52, align 4
  %54 = tail call i32 %53(ptr noundef %0, ptr noundef %1) #7
  br label %55

55:                                               ; preds = %50, %24
  %56 = phi i32 [ -5, %24 ], [ %54, %50 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nanddev_mtd_erase(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca %struct.nand_pos, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #7
  %4 = load i64, ptr %1, align 8
  %5 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp ult i64 %4, 4294967296
  br i1 %7, label %8, label %12, !prof !10

8:                                                ; preds = %2
  %9 = trunc i64 %4 to i32
  %10 = udiv i32 %9, %6
  %11 = zext i32 %10 to i64
  br label %15

12:                                               ; preds = %2
  %13 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %6, i64 %4) #9, !srcloc !11
  %14 = extractvalue { i64, i64 } %13, 1
  br label %15

15:                                               ; preds = %12, %8
  %16 = phi i64 [ %11, %8 ], [ %14, %12 ]
  %17 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = icmp ult i64 %16, 4294967296
  br i1 %19, label %20, label %28, !prof !10

20:                                               ; preds = %15
  %21 = trunc i64 %16 to i32
  %22 = freeze i32 %21
  %23 = freeze i32 %18
  %24 = udiv i32 %22, %23
  %25 = mul i32 %24, %23
  %26 = sub i32 %22, %25
  %27 = zext i32 %24 to i64
  br label %34

28:                                               ; preds = %15
  %29 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %18, i64 %16) #9, !srcloc !11
  %30 = extractvalue { i64, i64 } %29, 0
  %31 = extractvalue { i64, i64 } %29, 1
  %32 = lshr i64 %30, 32
  %33 = trunc i64 %32 to i32
  br label %34

34:                                               ; preds = %28, %20
  %35 = phi i64 [ %27, %20 ], [ %31, %28 ]
  %36 = phi i32 [ %26, %20 ], [ %33, %28 ]
  %37 = getelementptr inbounds %struct.nand_pos, ptr %3, i32 0, i32 4
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 4
  %39 = load i32, ptr %38, align 8
  %40 = icmp ult i64 %35, 4294967296
  br i1 %40, label %41, label %49, !prof !10

41:                                               ; preds = %34
  %42 = trunc i64 %35 to i32
  %43 = freeze i32 %42
  %44 = freeze i32 %39
  %45 = udiv i32 %43, %44
  %46 = mul i32 %45, %44
  %47 = sub i32 %43, %46
  %48 = zext i32 %45 to i64
  br label %55

49:                                               ; preds = %34
  %50 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %39, i64 %35) #9, !srcloc !11
  %51 = extractvalue { i64, i64 } %50, 0
  %52 = extractvalue { i64, i64 } %50, 1
  %53 = lshr i64 %51, 32
  %54 = trunc i64 %53 to i32
  br label %55

55:                                               ; preds = %49, %41
  %56 = phi i64 [ %48, %41 ], [ %52, %49 ]
  %57 = phi i32 [ %47, %41 ], [ %54, %49 ]
  %58 = getelementptr inbounds %struct.nand_pos, ptr %3, i32 0, i32 3
  store i32 %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 6
  %60 = load i32, ptr %59, align 8
  %61 = urem i32 %57, %60
  %62 = getelementptr inbounds %struct.nand_pos, ptr %3, i32 0, i32 2
  store i32 %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 7
  %64 = load i32, ptr %63, align 4
  %65 = icmp ult i64 %56, 4294967296
  br i1 %65, label %66, label %73, !prof !10

66:                                               ; preds = %55
  %67 = trunc i64 %56 to i32
  %68 = freeze i32 %67
  %69 = freeze i32 %64
  %70 = udiv i32 %68, %69
  %71 = mul i32 %70, %69
  %72 = sub i32 %68, %71
  br label %80

73:                                               ; preds = %55
  %74 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %64, i64 %56) #9, !srcloc !11
  %75 = extractvalue { i64, i64 } %74, 0
  %76 = extractvalue { i64, i64 } %74, 1
  %77 = lshr i64 %75, 32
  %78 = trunc i64 %77 to i32
  %79 = trunc i64 %76 to i32
  br label %80

80:                                               ; preds = %73, %66
  %81 = phi i32 [ %70, %66 ], [ %79, %73 ]
  %82 = phi i32 [ %72, %66 ], [ %78, %73 ]
  %83 = getelementptr inbounds %struct.nand_pos, ptr %3, i32 0, i32 1
  store i32 %82, ptr %83, align 4
  store i32 %81, ptr %3, align 4
  %84 = getelementptr inbounds %struct.erase_info, ptr %1, i32 0, i32 1
  %85 = load i64, ptr %84, align 8
  %86 = add i64 %4, -1
  %87 = add i64 %86, %85
  %88 = icmp ult i64 %87, 4294967296
  br i1 %88, label %89, label %93, !prof !10

89:                                               ; preds = %80
  %90 = trunc i64 %87 to i32
  %91 = udiv i32 %90, %6
  %92 = zext i32 %91 to i64
  br label %96

93:                                               ; preds = %80
  %94 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %6, i64 %87) #9, !srcloc !11
  %95 = extractvalue { i64, i64 } %94, 1
  br label %96

96:                                               ; preds = %93, %89
  %97 = phi i64 [ %92, %89 ], [ %95, %93 ]
  %98 = icmp ult i64 %97, 4294967296
  br i1 %98, label %99, label %107, !prof !10

99:                                               ; preds = %96
  %100 = trunc i64 %97 to i32
  %101 = freeze i32 %100
  %102 = freeze i32 %18
  %103 = udiv i32 %101, %102
  %104 = mul i32 %103, %102
  %105 = sub i32 %101, %104
  %106 = zext i32 %103 to i64
  br label %113

107:                                              ; preds = %96
  %108 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %18, i64 %97) #9, !srcloc !11
  %109 = extractvalue { i64, i64 } %108, 0
  %110 = extractvalue { i64, i64 } %108, 1
  %111 = lshr i64 %109, 32
  %112 = trunc i64 %111 to i32
  br label %113

113:                                              ; preds = %107, %99
  %114 = phi i64 [ %106, %99 ], [ %110, %107 ]
  %115 = phi i32 [ %105, %99 ], [ %112, %107 ]
  %116 = icmp ult i64 %114, 4294967296
  br i1 %116, label %117, label %125, !prof !10

117:                                              ; preds = %113
  %118 = trunc i64 %114 to i32
  %119 = freeze i32 %118
  %120 = freeze i32 %39
  %121 = udiv i32 %119, %120
  %122 = mul i32 %121, %120
  %123 = sub i32 %119, %122
  %124 = zext i32 %121 to i64
  br label %131

125:                                              ; preds = %113
  %126 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %39, i64 %114) #9, !srcloc !11
  %127 = extractvalue { i64, i64 } %126, 0
  %128 = extractvalue { i64, i64 } %126, 1
  %129 = lshr i64 %127, 32
  %130 = trunc i64 %129 to i32
  br label %131

131:                                              ; preds = %125, %117
  %132 = phi i64 [ %124, %117 ], [ %128, %125 ]
  %133 = phi i32 [ %123, %117 ], [ %130, %125 ]
  %134 = icmp ult i64 %132, 4294967296
  br i1 %134, label %135, label %142, !prof !10

135:                                              ; preds = %131
  %136 = trunc i64 %132 to i32
  %137 = freeze i32 %136
  %138 = freeze i32 %64
  %139 = udiv i32 %137, %138
  %140 = mul i32 %139, %138
  %141 = sub i32 %137, %140
  br label %149

142:                                              ; preds = %131
  %143 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %64, i64 %132) #9, !srcloc !11
  %144 = extractvalue { i64, i64 } %143, 0
  %145 = extractvalue { i64, i64 } %143, 1
  %146 = lshr i64 %144, 32
  %147 = trunc i64 %146 to i32
  %148 = trunc i64 %145 to i32
  br label %149

149:                                              ; preds = %142, %135
  %150 = phi i32 [ %139, %135 ], [ %148, %142 ]
  %151 = phi i32 [ %141, %135 ], [ %147, %142 ]
  br label %152

152:                                              ; preds = %211, %149
  %153 = phi i32 [ 0, %211 ], [ %36, %149 ]
  %154 = phi i32 [ %212, %211 ], [ %57, %149 ]
  %155 = phi i32 [ %213, %211 ], [ %81, %149 ]
  %156 = icmp eq i32 %155, %150
  br i1 %156, label %159, label %157

157:                                              ; preds = %152
  %158 = icmp ult i32 %155, %150
  br i1 %158, label %170, label %214

159:                                              ; preds = %152
  %160 = load i32, ptr %83, align 4
  %161 = icmp eq i32 %160, %151
  br i1 %161, label %164, label %162

162:                                              ; preds = %159
  %163 = icmp ult i32 %160, %151
  br i1 %163, label %170, label %214

164:                                              ; preds = %159
  %165 = icmp eq i32 %154, %133
  br i1 %165, label %168, label %166

166:                                              ; preds = %164
  %167 = icmp ult i32 %154, %133
  br i1 %167, label %170, label %214

168:                                              ; preds = %164
  %169 = icmp ugt i32 %153, %115
  br i1 %169, label %214, label %170

170:                                              ; preds = %168, %166, %162, %157
  %171 = call i32 @nanddev_erase(ptr noundef %0, ptr noundef nonnull %3)
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %192, label %173

173:                                              ; preds = %170
  %174 = load i32, ptr %37, align 4
  %175 = load i32, ptr %58, align 4
  %176 = load i32, ptr %83, align 4
  %177 = load i32, ptr %3, align 4
  %178 = load i32, ptr %63, align 4
  %179 = mul i32 %178, %177
  %180 = add i32 %179, %176
  %181 = load i32, ptr %38, align 8
  %182 = mul i32 %180, %181
  %183 = add i32 %182, %175
  %184 = load i32, ptr %17, align 4
  %185 = mul i32 %183, %184
  %186 = add i32 %185, %174
  %187 = zext i32 %186 to i64
  %188 = load i32, ptr %5, align 4
  %189 = zext i32 %188 to i64
  %190 = mul nuw i64 %187, %189
  %191 = getelementptr inbounds %struct.erase_info, ptr %1, i32 0, i32 2
  store i64 %190, ptr %191, align 8
  br label %214

192:                                              ; preds = %170
  %193 = load i32, ptr %58, align 4
  %194 = load i32, ptr %38, align 8
  %195 = add i32 %194, -1
  %196 = icmp ult i32 %193, %195
  br i1 %196, label %207, label %197

197:                                              ; preds = %192
  %198 = load i32, ptr %83, align 4
  %199 = load i32, ptr %63, align 4
  %200 = add i32 %199, -1
  %201 = icmp ult i32 %198, %200
  br i1 %201, label %205, label %202

202:                                              ; preds = %197
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %83, i8 0, i64 16, i1 false) #7
  %203 = load i32, ptr %3, align 4
  %204 = add i32 %203, 1
  store i32 %204, ptr %3, align 4
  br label %211

205:                                              ; preds = %197
  %206 = add nuw i32 %198, 1
  store i32 %206, ptr %83, align 4
  store i32 0, ptr %37, align 4
  store i32 0, ptr %62, align 4
  store i32 0, ptr %58, align 4
  br label %211

207:                                              ; preds = %192
  %208 = add nuw i32 %193, 1
  store i32 %208, ptr %58, align 4
  store i32 0, ptr %37, align 4
  %209 = load i32, ptr %59, align 8
  %210 = urem i32 %208, %209
  store i32 %210, ptr %62, align 4
  br label %211

211:                                              ; preds = %207, %205, %202
  %212 = phi i32 [ 0, %202 ], [ 0, %205 ], [ %208, %207 ]
  %213 = load i32, ptr %3, align 4
  br label %152

214:                                              ; preds = %173, %168, %166, %162, %157
  %215 = phi i32 [ %171, %173 ], [ 0, %166 ], [ 0, %162 ], [ 0, %157 ], [ 0, %168 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #7
  ret i32 %215
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @nanddev_mtd_max_bad_blocks(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2) #4 {
  %4 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %208, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp ult i64 %1, 4294967296
  br i1 %10, label %11, label %15, !prof !10

11:                                               ; preds = %7
  %12 = trunc i64 %1 to i32
  %13 = udiv i32 %12, %9
  %14 = zext i32 %13 to i64
  br label %18

15:                                               ; preds = %7
  %16 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %9, i64 %1) #9, !srcloc !11
  %17 = extractvalue { i64, i64 } %16, 1
  br label %18

18:                                               ; preds = %15, %11
  %19 = phi i64 [ %14, %11 ], [ %17, %15 ]
  %20 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = icmp ult i64 %19, 4294967296
  br i1 %22, label %23, label %27, !prof !10

23:                                               ; preds = %18
  %24 = trunc i64 %19 to i32
  %25 = udiv i32 %24, %21
  %26 = zext i32 %25 to i64
  br label %30

27:                                               ; preds = %18
  %28 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %21, i64 %19) #9, !srcloc !11
  %29 = extractvalue { i64, i64 } %28, 1
  br label %30

30:                                               ; preds = %27, %23
  %31 = phi i64 [ %26, %23 ], [ %29, %27 ]
  %32 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 4
  %33 = load i32, ptr %32, align 8
  %34 = icmp ult i64 %31, 4294967296
  br i1 %34, label %35, label %39, !prof !10

35:                                               ; preds = %30
  %36 = trunc i64 %31 to i32
  %37 = udiv i32 %36, %33
  %38 = zext i32 %37 to i64
  br label %42

39:                                               ; preds = %30
  %40 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %33, i64 %31) #9, !srcloc !11
  %41 = extractvalue { i64, i64 } %40, 1
  br label %42

42:                                               ; preds = %39, %35
  %43 = phi i64 [ %38, %35 ], [ %41, %39 ]
  %44 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 7
  %45 = load i32, ptr %44, align 4
  %46 = icmp ult i64 %43, 4294967296
  br i1 %46, label %49, label %47, !prof !10

47:                                               ; preds = %42
  %48 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %45, i64 %43) #9, !srcloc !11
  br label %49

49:                                               ; preds = %47, %42
  %50 = zext i32 %2 to i64
  %51 = add i64 %50, %1
  %52 = icmp ult i64 %51, 4294967296
  br i1 %52, label %53, label %57, !prof !10

53:                                               ; preds = %49
  %54 = trunc i64 %51 to i32
  %55 = udiv i32 %54, %9
  %56 = zext i32 %55 to i64
  br label %60

57:                                               ; preds = %49
  %58 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %9, i64 %51) #9, !srcloc !11
  %59 = extractvalue { i64, i64 } %58, 1
  br label %60

60:                                               ; preds = %57, %53
  %61 = phi i64 [ %56, %53 ], [ %59, %57 ]
  %62 = icmp ult i64 %61, 4294967296
  br i1 %62, label %63, label %71, !prof !10

63:                                               ; preds = %60
  %64 = trunc i64 %61 to i32
  %65 = freeze i32 %64
  %66 = freeze i32 %21
  %67 = udiv i32 %65, %66
  %68 = mul i32 %67, %66
  %69 = sub i32 %65, %68
  %70 = zext i32 %67 to i64
  br label %77

71:                                               ; preds = %60
  %72 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %21, i64 %61) #9, !srcloc !11
  %73 = extractvalue { i64, i64 } %72, 0
  %74 = extractvalue { i64, i64 } %72, 1
  %75 = lshr i64 %73, 32
  %76 = trunc i64 %75 to i32
  br label %77

77:                                               ; preds = %71, %63
  %78 = phi i64 [ %70, %63 ], [ %74, %71 ]
  %79 = phi i32 [ %69, %63 ], [ %76, %71 ]
  %80 = icmp ult i64 %78, 4294967296
  br i1 %80, label %81, label %89, !prof !10

81:                                               ; preds = %77
  %82 = trunc i64 %78 to i32
  %83 = freeze i32 %82
  %84 = freeze i32 %33
  %85 = udiv i32 %83, %84
  %86 = mul i32 %85, %84
  %87 = sub i32 %83, %86
  %88 = zext i32 %85 to i64
  br label %95

89:                                               ; preds = %77
  %90 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %33, i64 %78) #9, !srcloc !11
  %91 = extractvalue { i64, i64 } %90, 0
  %92 = extractvalue { i64, i64 } %90, 1
  %93 = lshr i64 %91, 32
  %94 = trunc i64 %93 to i32
  br label %95

95:                                               ; preds = %89, %81
  %96 = phi i64 [ %88, %81 ], [ %92, %89 ]
  %97 = phi i32 [ %87, %81 ], [ %94, %89 ]
  %98 = icmp ult i64 %96, 4294967296
  br i1 %98, label %99, label %106, !prof !10

99:                                               ; preds = %95
  %100 = trunc i64 %96 to i32
  %101 = freeze i32 %100
  %102 = freeze i32 %45
  %103 = udiv i32 %101, %102
  %104 = mul i32 %103, %102
  %105 = sub i32 %101, %104
  br label %113

106:                                              ; preds = %95
  %107 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %45, i64 %96) #9, !srcloc !11
  %108 = extractvalue { i64, i64 } %107, 0
  %109 = extractvalue { i64, i64 } %107, 1
  %110 = lshr i64 %108, 32
  %111 = trunc i64 %110 to i32
  %112 = trunc i64 %109 to i32
  br label %113

113:                                              ; preds = %106, %99
  %114 = phi i32 [ %103, %99 ], [ %112, %106 ]
  %115 = phi i32 [ %105, %99 ], [ %111, %106 ]
  %116 = icmp ult i64 %1, 4294967296
  br i1 %116, label %117, label %121, !prof !10

117:                                              ; preds = %113
  %118 = trunc i64 %1 to i32
  %119 = udiv i32 %118, %9
  %120 = zext i32 %119 to i64
  br label %124

121:                                              ; preds = %113
  %122 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %9, i64 %1) #9, !srcloc !11
  %123 = extractvalue { i64, i64 } %122, 1
  br label %124

124:                                              ; preds = %121, %117
  %125 = phi i64 [ %120, %117 ], [ %123, %121 ]
  %126 = icmp ult i64 %125, 4294967296
  br i1 %126, label %127, label %135, !prof !10

127:                                              ; preds = %124
  %128 = trunc i64 %125 to i32
  %129 = freeze i32 %128
  %130 = freeze i32 %21
  %131 = udiv i32 %129, %130
  %132 = mul i32 %131, %130
  %133 = sub i32 %129, %132
  %134 = zext i32 %131 to i64
  br label %141

135:                                              ; preds = %124
  %136 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %21, i64 %125) #9, !srcloc !11
  %137 = extractvalue { i64, i64 } %136, 0
  %138 = extractvalue { i64, i64 } %136, 1
  %139 = lshr i64 %137, 32
  %140 = trunc i64 %139 to i32
  br label %141

141:                                              ; preds = %135, %127
  %142 = phi i64 [ %134, %127 ], [ %138, %135 ]
  %143 = phi i32 [ %133, %127 ], [ %140, %135 ]
  %144 = icmp ult i64 %142, 4294967296
  br i1 %144, label %145, label %153, !prof !10

145:                                              ; preds = %141
  %146 = trunc i64 %142 to i32
  %147 = freeze i32 %146
  %148 = freeze i32 %33
  %149 = udiv i32 %147, %148
  %150 = mul i32 %149, %148
  %151 = sub i32 %147, %150
  %152 = zext i32 %149 to i64
  br label %159

153:                                              ; preds = %141
  %154 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %33, i64 %142) #9, !srcloc !11
  %155 = extractvalue { i64, i64 } %154, 0
  %156 = extractvalue { i64, i64 } %154, 1
  %157 = lshr i64 %155, 32
  %158 = trunc i64 %157 to i32
  br label %159

159:                                              ; preds = %153, %145
  %160 = phi i64 [ %152, %145 ], [ %156, %153 ]
  %161 = phi i32 [ %151, %145 ], [ %158, %153 ]
  %162 = icmp ult i64 %160, 4294967296
  br i1 %162, label %163, label %170, !prof !10

163:                                              ; preds = %159
  %164 = trunc i64 %160 to i32
  %165 = freeze i32 %164
  %166 = freeze i32 %45
  %167 = udiv i32 %165, %166
  %168 = mul i32 %167, %166
  %169 = sub i32 %165, %168
  br label %177

170:                                              ; preds = %159
  %171 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %45, i64 %160) #9, !srcloc !11
  %172 = extractvalue { i64, i64 } %171, 0
  %173 = extractvalue { i64, i64 } %171, 1
  %174 = lshr i64 %172, 32
  %175 = trunc i64 %174 to i32
  %176 = trunc i64 %173 to i32
  br label %177

177:                                              ; preds = %170, %163
  %178 = phi i32 [ %167, %163 ], [ %176, %170 ]
  %179 = phi i32 [ %169, %163 ], [ %175, %170 ]
  %180 = add i32 %45, -1
  br label %181

181:                                              ; preds = %200, %177
  %182 = phi i32 [ %178, %177 ], [ %206, %200 ]
  %183 = phi i32 [ %179, %177 ], [ %207, %200 ]
  %184 = phi i32 [ %161, %177 ], [ 0, %200 ]
  %185 = phi i32 [ %143, %177 ], [ 0, %200 ]
  %186 = phi i32 [ 0, %177 ], [ %201, %200 ]
  %187 = icmp eq i32 %182, %114
  br i1 %187, label %190, label %188

188:                                              ; preds = %181
  %189 = icmp ult i32 %182, %114
  br i1 %189, label %200, label %208

190:                                              ; preds = %181
  %191 = icmp eq i32 %183, %115
  br i1 %191, label %194, label %192

192:                                              ; preds = %190
  %193 = icmp ult i32 %183, %115
  br i1 %193, label %200, label %208

194:                                              ; preds = %190
  %195 = icmp eq i32 %184, %97
  br i1 %195, label %198, label %196

196:                                              ; preds = %194
  %197 = icmp ult i32 %184, %97
  br i1 %197, label %200, label %208

198:                                              ; preds = %194
  %199 = icmp ult i32 %185, %79
  br i1 %199, label %200, label %208

200:                                              ; preds = %198, %196, %192, %188
  %201 = add i32 %186, %5
  %202 = icmp ult i32 %183, %180
  %203 = add nuw i32 %183, 1
  %204 = xor i1 %202, true
  %205 = zext i1 %204 to i32
  %206 = add i32 %182, %205
  %207 = select i1 %202, i32 %203, i32 0
  br label %181

208:                                              ; preds = %198, %196, %192, %188, %3
  %209 = phi i32 [ -524, %3 ], [ %186, %188 ], [ %186, %192 ], [ %186, %196 ], [ %186, %198 ]
  ret i32 %209
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nanddev_ecc_engine_init(ptr noundef %0) #0 {
  tail call void @of_get_nand_ecc_user_config(ptr noundef %0) #7
  %2 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi i32 [ %7, %5 ], [ %3, %1 ]
  switch i32 %9, label %18 [
    i32 1, label %26
    i32 2, label %10
    i32 4, label %13
    i32 3, label %16
  ]

10:                                               ; preds = %8
  %11 = tail call ptr @nand_ecc_get_sw_engine(ptr noundef %0) #7
  %12 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 5
  store ptr %11, ptr %12, align 4
  br label %20

13:                                               ; preds = %8
  %14 = tail call ptr @nand_ecc_get_on_die_hw_engine(ptr noundef %0) #7
  %15 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 5
  store ptr %14, ptr %15, align 4
  br label %20

16:                                               ; preds = %8
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #8
  br label %20

18:                                               ; preds = %8
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #8
  br label %20

20:                                               ; preds = %18, %16, %13, %10
  %21 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #8
  br label %46

26:                                               ; preds = %8
  %27 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %46, label %30

30:                                               ; preds = %26, %20
  %31 = tail call i32 @nand_ecc_init_ctx(ptr noundef %0) #7
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = tail call zeroext i1 @nand_ecc_is_strong_enough(ptr noundef %0) #7
  br i1 %34, label %46, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 13
  %37 = load ptr, ptr %36, align 8
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %37) #8
  br label %46

39:                                               ; preds = %30
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #8
  %41 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 3
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 3
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #8
  br label %46

46:                                               ; preds = %44, %39, %35, %33, %26, %24
  %47 = phi i32 [ -22, %24 ], [ 0, %26 ], [ %31, %39 ], [ %31, %44 ], [ 0, %35 ], [ 0, %33 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nanddev_ecc_engine_cleanup(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @nand_ecc_cleanup_ctx(ptr noundef %0) #7
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #8
  br label %12

12:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_ecc_cleanup_ctx(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nanddev_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1
  %5 = icmp ne ptr %0, null
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %83

8:                                                ; preds = %3
  %9 = load ptr, ptr %1, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %83, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.nand_ops, ptr %1, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %83, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.nand_ops, ptr %1, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %83, label %19

19:                                               ; preds = %15
  %20 = load i32, ptr %4, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %83, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %83, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %83, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %83, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %83, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 7
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %83, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %83, label %46

46:                                               ; preds = %42
  %47 = add i32 %28, -1
  %48 = icmp eq i32 %47, 0
  %49 = tail call i32 @llvm.ctlz.i32(i32 %47, i1 false) #7, !range !12
  %50 = sub nuw nsw i32 32, %49
  %51 = select i1 %48, i32 0, i32 %50
  %52 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 3
  %53 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 3, i32 1
  store i32 %51, ptr %53, align 4
  %54 = add i32 %32, -1
  %55 = icmp eq i32 %54, 0
  %56 = tail call i32 @llvm.ctlz.i32(i32 %54, i1 false) #7, !range !12
  %57 = sub nuw nsw i32 32, %56
  %58 = select i1 %55, i32 0, i32 %57
  %59 = add nuw nsw i32 %58, %51
  store i32 %59, ptr %52, align 8
  %60 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 5
  store ptr %1, ptr %60, align 4
  %61 = icmp eq i32 %20, 1
  %62 = select i1 %61, i8 4, i8 8
  store i8 %62, ptr %0, align 8
  %63 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 1
  store i32 1024, ptr %63, align 4
  %64 = mul i32 %28, %24
  %65 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 3
  store i32 %64, ptr %65, align 8
  %66 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  store i32 %24, ptr %66, align 4
  %67 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 5
  store i32 %24, ptr %67, align 8
  %68 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 2
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  store i32 %69, ptr %70, align 4
  %71 = zext i32 %40 to i64
  %72 = zext i32 %32 to i64
  %73 = mul nuw i64 %72, %71
  %74 = zext i32 %28 to i64
  %75 = mul i64 %73, %74
  %76 = zext i32 %24 to i64
  %77 = mul i64 %75, %76
  %78 = zext i32 %44 to i64
  %79 = mul i64 %77, %78
  %80 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 2
  store i64 %79, ptr %80, align 8
  %81 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 55
  store ptr %2, ptr %81, align 4
  %82 = tail call i32 @nanddev_bbt_init(ptr noundef nonnull %0) #7
  br label %83

83:                                               ; preds = %46, %42, %38, %34, %30, %26, %22, %19, %15, %11, %8, %3
  %84 = phi i32 [ %82, %46 ], [ -22, %3 ], [ -22, %15 ], [ -22, %11 ], [ -22, %8 ], [ -22, %42 ], [ -22, %38 ], [ -22, %34 ], [ -22, %30 ], [ -22, %26 ], [ -22, %22 ], [ -22, %19 ]
  ret i32 %84
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nanddev_bbt_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nanddev_cleanup(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @nanddev_bbt_cleanup(ptr noundef %0) #7
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nanddev_bbt_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_get_nand_ecc_user_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nand_ecc_get_sw_engine(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nand_ecc_get_on_die_hw_engine(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_ecc_init_ctx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nand_ecc_is_strong_enough(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{i8 0, i8 2}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2147898654, i64 2147898934, i64 2147899268, i64 2147899602}
!12 = !{i32 0, i32 33}
