; ModuleID = '/llk/IR/drivers/mtd/nand/ecc-sw-hamming.c_pt.bc'
source_filename = "../drivers/mtd/nand/ecc-sw-hamming.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ecc_sw_hamming_calculate:\09\09\09\09\09"
module asm "\09.asciz \09\22ecc_sw_hamming_calculate\22\09\09\09\09\09"
module asm "__kstrtabns_ecc_sw_hamming_calculate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_ecc_sw_hamming_calculate:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_ecc_sw_hamming_calculate\22\09\09\09\09\09"
module asm "__kstrtabns_nand_ecc_sw_hamming_calculate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ecc_sw_hamming_correct:\09\09\09\09\09"
module asm "\09.asciz \09\22ecc_sw_hamming_correct\22\09\09\09\09\09"
module asm "__kstrtabns_ecc_sw_hamming_correct:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_ecc_sw_hamming_correct:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_ecc_sw_hamming_correct\22\09\09\09\09\09"
module asm "__kstrtabns_nand_ecc_sw_hamming_correct:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_ecc_sw_hamming_init_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_ecc_sw_hamming_init_ctx\22\09\09\09\09\09"
module asm "__kstrtabns_nand_ecc_sw_hamming_init_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_ecc_sw_hamming_cleanup_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_ecc_sw_hamming_cleanup_ctx\22\09\09\09\09\09"
module asm "__kstrtabns_nand_ecc_sw_hamming_cleanup_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_ecc_sw_hamming_get_engine:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_ecc_sw_hamming_get_engine\22\09\09\09\09\09"
module asm "__kstrtabns_nand_ecc_sw_hamming_get_engine:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nand_ecc_engine = type { ptr }
%struct.nand_ecc_engine_ops = type { ptr, ptr, ptr, ptr }
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
%struct.nand_ecc_sw_hamming_conf = type { %struct.nand_ecc_req_tweak_ctx, i32, ptr, ptr, i32 }
%struct.nand_ecc_req_tweak_ctx = type { %struct.nand_page_io_req, ptr, i32, i32, ptr, ptr, i8, i8 }
%struct.nand_page_io_req = type { i32, %struct.nand_pos, i32, i32, %union.anon.6, i32, i32, %union.anon.7, i32 }
%struct.nand_pos = type { i32, i32, i32, i32, i32 }
%union.anon.6 = type { ptr }
%union.anon.7 = type { ptr }

@invparity = internal unnamed_addr constant [256 x i8] c"\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01", align 1
@__kstrtab_ecc_sw_hamming_calculate = external dso_local constant [0 x i8], align 1
@__kstrtabns_ecc_sw_hamming_calculate = external dso_local constant [0 x i8], align 1
@__ksymtab_ecc_sw_hamming_calculate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ecc_sw_hamming_calculate to i32), ptr @__kstrtab_ecc_sw_hamming_calculate, ptr @__kstrtabns_ecc_sw_hamming_calculate }, section "___ksymtab+ecc_sw_hamming_calculate", align 4
@__kstrtab_nand_ecc_sw_hamming_calculate = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_ecc_sw_hamming_calculate = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_ecc_sw_hamming_calculate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_ecc_sw_hamming_calculate to i32), ptr @__kstrtab_nand_ecc_sw_hamming_calculate, ptr @__kstrtabns_nand_ecc_sw_hamming_calculate }, section "___ksymtab+nand_ecc_sw_hamming_calculate", align 4
@addressbits = internal unnamed_addr constant [256 x i8] c"\00\00\01\01\00\00\01\01\02\02\03\03\02\02\03\03\00\00\01\01\00\00\01\01\02\02\03\03\02\02\03\03\04\04\05\05\04\04\05\05\06\06\07\07\06\06\07\07\04\04\05\05\04\04\05\05\06\06\07\07\06\06\07\07\00\00\01\01\00\00\01\01\02\02\03\03\02\02\03\03\00\00\01\01\00\00\01\01\02\02\03\03\02\02\03\03\04\04\05\05\04\04\05\05\06\06\07\07\06\06\07\07\04\04\05\05\04\04\05\05\06\06\07\07\06\06\07\07\08\08\09\09\08\08\09\09\0A\0A\0B\0B\0A\0A\0B\0B\08\08\09\09\08\08\09\09\0A\0A\0B\0B\0A\0A\0B\0B\0C\0C\0D\0D\0C\0C\0D\0D\0E\0E\0F\0F\0E\0E\0F\0F\0C\0C\0D\0D\0C\0C\0D\0D\0E\0E\0F\0F\0E\0E\0F\0F\08\08\09\09\08\08\09\09\0A\0A\0B\0B\0A\0A\0B\0B\08\08\09\09\08\08\09\09\0A\0A\0B\0B\0A\0A\0B\0B\0C\0C\0D\0D\0C\0C\0D\0D\0E\0E\0F\0F\0E\0E\0F\0F\0C\0C\0D\0D\0C\0C\0D\0D\0E\0E\0F\0F\0E\0E\0F\0F", align 1
@bitsperbyte = internal unnamed_addr constant [256 x i8] c"\00\01\01\02\01\02\02\03\01\02\02\03\02\03\03\04\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\04\05\05\06\05\06\06\07\05\06\06\07\06\07\07\08", align 1
@.str = private unnamed_addr constant [31 x i8] c"\013%s: uncorrectable ECC error\0A\00", align 1
@__func__.ecc_sw_hamming_correct = private unnamed_addr constant [23 x i8] c"ecc_sw_hamming_correct\00", align 1
@__kstrtab_ecc_sw_hamming_correct = external dso_local constant [0 x i8], align 1
@__kstrtabns_ecc_sw_hamming_correct = external dso_local constant [0 x i8], align 1
@__ksymtab_ecc_sw_hamming_correct = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ecc_sw_hamming_correct to i32), ptr @__kstrtab_ecc_sw_hamming_correct, ptr @__kstrtabns_ecc_sw_hamming_correct }, section "___ksymtab+ecc_sw_hamming_correct", align 4
@__kstrtab_nand_ecc_sw_hamming_correct = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_ecc_sw_hamming_correct = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_ecc_sw_hamming_correct = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_ecc_sw_hamming_correct to i32), ptr @__kstrtab_nand_ecc_sw_hamming_correct, ptr @__kstrtabns_nand_ecc_sw_hamming_correct }, section "___ksymtab+nand_ecc_sw_hamming_correct", align 4
@__kstrtab_nand_ecc_sw_hamming_init_ctx = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_ecc_sw_hamming_init_ctx = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_ecc_sw_hamming_init_ctx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_ecc_sw_hamming_init_ctx to i32), ptr @__kstrtab_nand_ecc_sw_hamming_init_ctx, ptr @__kstrtabns_nand_ecc_sw_hamming_init_ctx }, section "___ksymtab+nand_ecc_sw_hamming_init_ctx", align 4
@__kstrtab_nand_ecc_sw_hamming_cleanup_ctx = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_ecc_sw_hamming_cleanup_ctx = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_ecc_sw_hamming_cleanup_ctx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_ecc_sw_hamming_cleanup_ctx to i32), ptr @__kstrtab_nand_ecc_sw_hamming_cleanup_ctx, ptr @__kstrtabns_nand_ecc_sw_hamming_cleanup_ctx }, section "___ksymtab+nand_ecc_sw_hamming_cleanup_ctx", align 4
@nand_ecc_sw_hamming_engine = internal global %struct.nand_ecc_engine { ptr @nand_ecc_sw_hamming_engine_ops }, align 4
@__kstrtab_nand_ecc_sw_hamming_get_engine = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_ecc_sw_hamming_get_engine = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_ecc_sw_hamming_get_engine = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_ecc_sw_hamming_get_engine to i32), ptr @__kstrtab_nand_ecc_sw_hamming_get_engine, ptr @__kstrtabns_nand_ecc_sw_hamming_get_engine }, section "___ksymtab+nand_ecc_sw_hamming_get_engine", align 4
@__UNIQUE_ID_file178 = internal constant [40 x i8] c"nandcore.file=drivers/mtd/nand/nandcore\00", section ".modinfo", align 1
@__UNIQUE_ID_license179 = internal constant [21 x i8] c"nandcore.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author180 = internal constant [65 x i8] c"nandcore.author=Frans Meulenbroeks <fransmeulenbroeks@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description181 = internal constant [55 x i8] c"nandcore.description=NAND software Hamming ECC support\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@nand_ecc_sw_hamming_engine_ops = internal global %struct.nand_ecc_engine_ops { ptr @nand_ecc_sw_hamming_init_ctx, ptr @nand_ecc_sw_hamming_cleanup_ctx, ptr @nand_ecc_sw_hamming_prepare_io_req, ptr @nand_ecc_sw_hamming_finish_io_req }, align 4
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_author180, ptr @__UNIQUE_ID_description181, ptr @__UNIQUE_ID_file178, ptr @__UNIQUE_ID_license179, ptr @__ksymtab_ecc_sw_hamming_calculate, ptr @__ksymtab_ecc_sw_hamming_correct, ptr @__ksymtab_nand_ecc_sw_hamming_calculate, ptr @__ksymtab_nand_ecc_sw_hamming_cleanup_ctx, ptr @__ksymtab_nand_ecc_sw_hamming_correct, ptr @__ksymtab_nand_ecc_sw_hamming_get_engine, ptr @__ksymtab_nand_ecc_sw_hamming_init_ctx], section "llvm.metadata"

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ecc_sw_hamming_calculate(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i1 noundef zeroext %3) #0 {
  %5 = icmp eq i32 %1, 256
  %6 = select i1 %5, i32 4, i32 8
  %7 = xor i1 %5, true
  br label %8

8:                                                ; preds = %8, %4
  %9 = phi i32 [ 0, %4 ], [ %99, %8 ]
  %10 = phi i32 [ 0, %4 ], [ %85, %8 ]
  %11 = phi i32 [ 0, %4 ], [ %98, %8 ]
  %12 = phi i32 [ 0, %4 ], [ %93, %8 ]
  %13 = phi i32 [ 0, %4 ], [ %89, %8 ]
  %14 = phi i32 [ 0, %4 ], [ %42, %8 ]
  %15 = phi i32 [ 0, %4 ], [ %55, %8 ]
  %16 = phi i32 [ 0, %4 ], [ %65, %8 ]
  %17 = phi i32 [ 0, %4 ], [ %75, %8 ]
  %18 = phi ptr [ %0, %4 ], [ %76, %8 ]
  %19 = getelementptr i32, ptr %18, i32 1
  %20 = load i32, ptr %18, align 4
  %21 = getelementptr i32, ptr %18, i32 2
  %22 = load i32, ptr %19, align 4
  %23 = xor i32 %22, %20
  %24 = getelementptr i32, ptr %18, i32 3
  %25 = load i32, ptr %21, align 4
  %26 = xor i32 %23, %25
  %27 = getelementptr i32, ptr %18, i32 4
  %28 = load i32, ptr %24, align 4
  %29 = xor i32 %26, %28
  %30 = getelementptr i32, ptr %18, i32 5
  %31 = load i32, ptr %27, align 4
  %32 = getelementptr i32, ptr %18, i32 6
  %33 = load i32, ptr %30, align 4
  %34 = getelementptr i32, ptr %18, i32 7
  %35 = load i32, ptr %32, align 4
  %36 = getelementptr i32, ptr %18, i32 8
  %37 = load i32, ptr %34, align 4
  %38 = xor i32 %33, %31
  %39 = xor i32 %38, %29
  %40 = xor i32 %39, %35
  %41 = xor i32 %40, %37
  %42 = xor i32 %41, %14
  %43 = getelementptr i32, ptr %18, i32 9
  %44 = load i32, ptr %36, align 4
  %45 = getelementptr i32, ptr %18, i32 10
  %46 = load i32, ptr %43, align 4
  %47 = getelementptr i32, ptr %18, i32 11
  %48 = load i32, ptr %45, align 4
  %49 = getelementptr i32, ptr %18, i32 12
  %50 = load i32, ptr %47, align 4
  %51 = xor i32 %46, %44
  %52 = xor i32 %51, %15
  %53 = xor i32 %52, %29
  %54 = xor i32 %53, %48
  %55 = xor i32 %54, %50
  %56 = getelementptr i32, ptr %18, i32 13
  %57 = load i32, ptr %49, align 4
  %58 = getelementptr i32, ptr %18, i32 14
  %59 = load i32, ptr %56, align 4
  %60 = xor i32 %51, %16
  %61 = xor i32 %60, %23
  %62 = xor i32 %61, %31
  %63 = xor i32 %62, %33
  %64 = xor i32 %63, %57
  %65 = xor i32 %64, %59
  %66 = getelementptr i32, ptr %18, i32 15
  %67 = load i32, ptr %58, align 4
  %68 = xor i32 %48, %44
  %69 = xor i32 %68, %17
  %70 = xor i32 %69, %20
  %71 = xor i32 %70, %25
  %72 = xor i32 %71, %31
  %73 = xor i32 %72, %35
  %74 = xor i32 %73, %57
  %75 = xor i32 %74, %67
  %76 = getelementptr i32, ptr %18, i32 16
  %77 = load i32, ptr %66, align 4
  %78 = xor i32 %51, %41
  %79 = xor i32 %78, %48
  %80 = xor i32 %79, %50
  %81 = xor i32 %80, %57
  %82 = xor i32 %81, %59
  %83 = xor i32 %82, %67
  %84 = xor i32 %83, %77
  %85 = xor i32 %84, %10
  %86 = and i32 %9, 1
  %87 = icmp eq i32 %86, 0
  %88 = select i1 %87, i32 %84, i32 0
  %89 = xor i32 %88, %13
  %90 = and i32 %9, 2
  %91 = icmp eq i32 %90, 0
  %92 = select i1 %91, i32 %84, i32 0
  %93 = xor i32 %92, %12
  %94 = and i32 %9, 4
  %95 = icmp eq i32 %94, 0
  %96 = select i1 %7, i1 %95, i1 false
  %97 = select i1 %96, i32 %84, i32 0
  %98 = xor i32 %97, %11
  %99 = add nuw nsw i32 %9, 1
  %100 = icmp eq i32 %99, %6
  br i1 %100, label %101, label %8

101:                                              ; preds = %8
  %102 = lshr i32 %75, 16
  %103 = xor i32 %102, %75
  %104 = lshr i32 %103, 8
  %105 = xor i32 %104, %103
  %106 = and i32 %105, 255
  %107 = lshr i32 %65, 16
  %108 = xor i32 %107, %65
  %109 = lshr i32 %108, 8
  %110 = xor i32 %109, %108
  %111 = and i32 %110, 255
  %112 = lshr i32 %55, 16
  %113 = xor i32 %112, %55
  %114 = lshr i32 %113, 8
  %115 = xor i32 %114, %113
  %116 = and i32 %115, 255
  %117 = lshr i32 %42, 16
  %118 = xor i32 %117, %42
  %119 = lshr i32 %118, 8
  %120 = xor i32 %119, %118
  %121 = and i32 %120, 255
  %122 = lshr i32 %89, 16
  %123 = xor i32 %122, %89
  %124 = lshr i32 %123, 8
  %125 = xor i32 %124, %123
  %126 = and i32 %125, 255
  %127 = lshr i32 %93, 16
  %128 = xor i32 %127, %93
  %129 = lshr i32 %128, 8
  %130 = xor i32 %129, %128
  %131 = and i32 %130, 255
  %132 = lshr i32 %98, 16
  %133 = xor i32 %132, %98
  %134 = lshr i32 %133, 8
  %135 = xor i32 %134, %133
  %136 = and i32 %135, 255
  %137 = select i1 %5, i32 %98, i32 %136
  %138 = lshr i32 %85, 16
  %139 = lshr i32 %85, 24
  %140 = and i32 %138, 255
  %141 = xor i32 %140, %139
  %142 = lshr i32 %85, 8
  %143 = xor i32 %142, %85
  %144 = and i32 %143, 255
  %145 = xor i32 %138, %85
  %146 = lshr i32 %145, 8
  %147 = and i32 %146, 255
  %148 = and i32 %145, 255
  %149 = xor i32 %146, %145
  %150 = and i32 %149, 255
  %151 = xor i32 %150, %106
  %152 = xor i32 %150, %111
  %153 = xor i32 %150, %116
  %154 = xor i32 %150, %121
  %155 = xor i32 %150, %126
  %156 = xor i32 %150, %131
  %157 = xor i32 %137, %149
  %158 = and i32 %157, 255
  %159 = select i1 %5, i32 0, i32 %158
  %160 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %152
  %161 = load i8, ptr %160, align 1
  %162 = shl i8 %161, 7
  %163 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %111
  %164 = load i8, ptr %163, align 1
  %165 = shl i8 %164, 6
  %166 = or i8 %165, %162
  %167 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %151
  %168 = load i8, ptr %167, align 1
  %169 = shl i8 %168, 5
  %170 = or i8 %166, %169
  %171 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %106
  %172 = load i8, ptr %171, align 1
  %173 = shl i8 %172, 4
  %174 = or i8 %170, %173
  %175 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %141
  %176 = load i8, ptr %175, align 1
  %177 = shl i8 %176, 3
  %178 = or i8 %174, %177
  %179 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %144
  %180 = load i8, ptr %179, align 1
  %181 = shl i8 %180, 2
  %182 = or i8 %178, %181
  %183 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %147
  %184 = load i8, ptr %183, align 1
  %185 = shl i8 %184, 1
  %186 = or i8 %182, %185
  %187 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %148
  %188 = load i8, ptr %187, align 1
  %189 = or i8 %186, %188
  br i1 %3, label %190, label %221

190:                                              ; preds = %101
  store i8 %189, ptr %2, align 1
  %191 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %156
  %192 = load i8, ptr %191, align 1
  %193 = shl i8 %192, 7
  %194 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %131
  %195 = load i8, ptr %194, align 1
  %196 = shl i8 %195, 6
  %197 = or i8 %196, %193
  %198 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %155
  %199 = load i8, ptr %198, align 1
  %200 = shl i8 %199, 5
  %201 = or i8 %197, %200
  %202 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %126
  %203 = load i8, ptr %202, align 1
  %204 = shl i8 %203, 4
  %205 = or i8 %201, %204
  %206 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %154
  %207 = load i8, ptr %206, align 1
  %208 = shl i8 %207, 3
  %209 = or i8 %205, %208
  %210 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %121
  %211 = load i8, ptr %210, align 1
  %212 = shl i8 %211, 2
  %213 = or i8 %209, %212
  %214 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %153
  %215 = load i8, ptr %214, align 1
  %216 = shl i8 %215, 1
  %217 = or i8 %213, %216
  %218 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %116
  %219 = load i8, ptr %218, align 1
  %220 = or i8 %217, %219
  br label %252

221:                                              ; preds = %101
  %222 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %156
  %223 = load i8, ptr %222, align 1
  %224 = shl i8 %223, 7
  %225 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %131
  %226 = load i8, ptr %225, align 1
  %227 = shl i8 %226, 6
  %228 = or i8 %227, %224
  %229 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %155
  %230 = load i8, ptr %229, align 1
  %231 = shl i8 %230, 5
  %232 = or i8 %228, %231
  %233 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %126
  %234 = load i8, ptr %233, align 1
  %235 = shl i8 %234, 4
  %236 = or i8 %232, %235
  %237 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %154
  %238 = load i8, ptr %237, align 1
  %239 = shl i8 %238, 3
  %240 = or i8 %236, %239
  %241 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %121
  %242 = load i8, ptr %241, align 1
  %243 = shl i8 %242, 2
  %244 = or i8 %240, %243
  %245 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %153
  %246 = load i8, ptr %245, align 1
  %247 = shl i8 %246, 1
  %248 = or i8 %244, %247
  %249 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %116
  %250 = load i8, ptr %249, align 1
  %251 = or i8 %248, %250
  store i8 %251, ptr %2, align 1
  br label %252

252:                                              ; preds = %221, %190
  %253 = phi i8 [ %220, %190 ], [ %189, %221 ]
  %254 = getelementptr i8, ptr %2, i32 1
  store i8 %253, ptr %254, align 1
  %255 = and i32 %149, 240
  %256 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %255
  %257 = load i8, ptr %256, align 1
  %258 = shl i8 %257, 7
  %259 = and i32 %149, 15
  %260 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %259
  %261 = load i8, ptr %260, align 1
  %262 = shl i8 %261, 6
  br i1 %5, label %263, label %286

263:                                              ; preds = %252
  %264 = and i32 %149, 204
  %265 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %264
  %266 = load i8, ptr %265, align 1
  %267 = shl i8 %266, 5
  %268 = and i32 %149, 51
  %269 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %268
  %270 = load i8, ptr %269, align 1
  %271 = shl i8 %270, 4
  %272 = and i32 %149, 170
  %273 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %272
  %274 = load i8, ptr %273, align 1
  %275 = shl i8 %274, 3
  %276 = and i32 %149, 85
  %277 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %276
  %278 = load i8, ptr %277, align 1
  %279 = shl i8 %278, 2
  %280 = or i8 %258, %262
  %281 = or i8 %280, %267
  %282 = or i8 %281, %271
  %283 = or i8 %282, %275
  %284 = or i8 %283, %279
  %285 = or i8 %284, 3
  br label %315

286:                                              ; preds = %252
  %287 = or i8 %262, %258
  %288 = and i32 %149, 204
  %289 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %288
  %290 = load i8, ptr %289, align 1
  %291 = shl i8 %290, 5
  %292 = or i8 %287, %291
  %293 = and i32 %149, 51
  %294 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %293
  %295 = load i8, ptr %294, align 1
  %296 = shl i8 %295, 4
  %297 = or i8 %292, %296
  %298 = and i32 %149, 170
  %299 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %298
  %300 = load i8, ptr %299, align 1
  %301 = shl i8 %300, 3
  %302 = or i8 %297, %301
  %303 = and i32 %149, 85
  %304 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %303
  %305 = load i8, ptr %304, align 1
  %306 = shl i8 %305, 2
  %307 = or i8 %302, %306
  %308 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %159
  %309 = load i8, ptr %308, align 1
  %310 = shl i8 %309, 1
  %311 = or i8 %307, %310
  %312 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %137
  %313 = load i8, ptr %312, align 1
  %314 = or i8 %311, %313
  br label %315

315:                                              ; preds = %286, %263
  %316 = phi i8 [ %285, %263 ], [ %314, %286 ]
  %317 = getelementptr i8, ptr %2, i32 2
  store i8 %316, ptr %317, align 1
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nand_ecc_sw_hamming_calculate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 3, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 3, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq ptr %5, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.nand_ecc_sw_hamming_conf, ptr %5, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = icmp ne i32 %11, 0
  br label %13

13:                                               ; preds = %9, %3
  %14 = phi i1 [ %12, %9 ], [ false, %3 ]
  %15 = tail call i32 @ecc_sw_hamming_calculate(ptr noundef %1, i32 noundef %7, ptr noundef %2, i1 noundef zeroext %14)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ecc_sw_hamming_correct(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i1 noundef zeroext %4) #1 {
  %6 = lshr i32 %3, 8
  br i1 %4, label %7, label %13

7:                                                ; preds = %5
  %8 = load i8, ptr %1, align 1
  %9 = load i8, ptr %2, align 1
  %10 = xor i8 %9, %8
  %11 = getelementptr i8, ptr %1, i32 1
  %12 = getelementptr i8, ptr %2, i32 1
  br label %19

13:                                               ; preds = %5
  %14 = getelementptr i8, ptr %1, i32 1
  %15 = load i8, ptr %14, align 1
  %16 = getelementptr i8, ptr %2, i32 1
  %17 = load i8, ptr %16, align 1
  %18 = xor i8 %17, %15
  br label %19

19:                                               ; preds = %13, %7
  %20 = phi ptr [ %2, %13 ], [ %12, %7 ]
  %21 = phi ptr [ %1, %13 ], [ %11, %7 ]
  %22 = phi i8 [ %18, %13 ], [ %10, %7 ]
  %23 = load i8, ptr %21, align 1
  %24 = load i8, ptr %20, align 1
  %25 = xor i8 %24, %23
  %26 = getelementptr i8, ptr %1, i32 2
  %27 = load i8, ptr %26, align 1
  %28 = getelementptr i8, ptr %2, i32 2
  %29 = load i8, ptr %28, align 1
  %30 = xor i8 %29, %27
  %31 = zext i8 %22 to i32
  %32 = zext i8 %25 to i32
  %33 = or i8 %25, %22
  %34 = zext i8 %30 to i32
  %35 = or i8 %33, %30
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %104, label %37

37:                                               ; preds = %19
  %38 = lshr i32 %31, 1
  %39 = xor i32 %38, %31
  %40 = and i32 %39, 85
  %41 = icmp eq i32 %40, 85
  br i1 %41, label %42, label %89

42:                                               ; preds = %37
  %43 = lshr i32 %32, 1
  %44 = xor i32 %43, %32
  %45 = and i32 %44, 85
  %46 = icmp eq i32 %45, 85
  br i1 %46, label %47, label %89

47:                                               ; preds = %42
  switch i32 %6, label %89 [
    i32 1, label %48
    i32 2, label %53
  ]

48:                                               ; preds = %47
  %49 = lshr i32 %34, 1
  %50 = xor i32 %49, %34
  %51 = and i32 %50, 84
  %52 = icmp eq i32 %51, 84
  br i1 %52, label %58, label %89

53:                                               ; preds = %47
  %54 = lshr i32 %34, 1
  %55 = xor i32 %54, %34
  %56 = and i32 %55, 85
  %57 = icmp eq i32 %56, 85
  br i1 %57, label %63, label %89

58:                                               ; preds = %48
  %59 = getelementptr [256 x i8], ptr @addressbits, i32 0, i32 %32
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  %62 = shl nuw nsw i32 %61, 4
  br label %74

63:                                               ; preds = %53
  %64 = and i32 %34, 3
  %65 = getelementptr [256 x i8], ptr @addressbits, i32 0, i32 %64
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %66 to i32
  %68 = shl nuw nsw i32 %67, 8
  %69 = getelementptr [256 x i8], ptr @addressbits, i32 0, i32 %32
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i32
  %72 = shl nuw nsw i32 %71, 4
  %73 = add nuw nsw i32 %72, %68
  br label %74

74:                                               ; preds = %63, %58
  %75 = phi i32 [ %73, %63 ], [ %62, %58 ]
  %76 = getelementptr [256 x i8], ptr @addressbits, i32 0, i32 %31
  %77 = load i8, ptr %76, align 1
  %78 = zext i8 %77 to i32
  %79 = add nuw nsw i32 %75, %78
  %80 = lshr i32 %34, 2
  %81 = getelementptr [256 x i8], ptr @addressbits, i32 0, i32 %80
  %82 = load i8, ptr %81, align 1
  %83 = zext i8 %82 to i32
  %84 = shl nuw i32 1, %83
  %85 = getelementptr i8, ptr %0, i32 %79
  %86 = load i8, ptr %85, align 1
  %87 = trunc i32 %84 to i8
  %88 = xor i8 %86, %87
  store i8 %88, ptr %85, align 1
  br label %104

89:                                               ; preds = %53, %48, %47, %42, %37
  %90 = getelementptr [256 x i8], ptr @bitsperbyte, i32 0, i32 %31
  %91 = load i8, ptr %90, align 1
  %92 = zext i8 %91 to i32
  %93 = getelementptr [256 x i8], ptr @bitsperbyte, i32 0, i32 %32
  %94 = load i8, ptr %93, align 1
  %95 = zext i8 %94 to i32
  %96 = add nuw nsw i32 %95, %92
  %97 = getelementptr [256 x i8], ptr @bitsperbyte, i32 0, i32 %34
  %98 = load i8, ptr %97, align 1
  %99 = zext i8 %98 to i32
  %100 = add nuw nsw i32 %96, %99
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %104, label %102

102:                                              ; preds = %89
  %103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ecc_sw_hamming_correct) #8
  br label %104

104:                                              ; preds = %102, %89, %74, %19
  %105 = phi i32 [ 1, %74 ], [ -74, %102 ], [ 0, %19 ], [ 1, %89 ]
  ret i32 %105
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nand_ecc_sw_hamming_correct(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #1 {
  %5 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 3, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 3, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq ptr %6, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.nand_ecc_sw_hamming_conf, ptr %6, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = icmp ne i32 %12, 0
  br label %14

14:                                               ; preds = %10, %4
  %15 = phi i1 [ %13, %10 ], [ false, %4 ]
  %16 = tail call i32 @ecc_sw_hamming_correct(ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %8, i1 noundef zeroext %15)
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nand_ecc_sw_hamming_init_ctx(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 3
  %3 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  switch i32 %8, label %57 [
    i32 8, label %9
    i32 16, label %9
    i32 64, label %11
    i32 128, label %11
  ]

9:                                                ; preds = %6, %6
  %10 = tail call ptr @nand_get_small_page_ooblayout() #9
  br label %13

11:                                               ; preds = %6, %6
  %12 = tail call ptr @nand_get_large_page_hamming_ooblayout() #9
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi ptr [ %10, %9 ], [ %12, %11 ]
  store ptr %14, ptr %3, align 8
  br label %15

15:                                               ; preds = %13, %1
  store i32 2, ptr %2, align 4
  %16 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 3, i32 0, i32 2
  store i32 1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 2, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 3, i32 0, i32 4
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 3, i32 0, i32 3
  store i32 1, ptr %20, align 4
  switch i32 %18, label %21 [
    i32 256, label %22
    i32 512, label %22
  ]

21:                                               ; preds = %15
  store i32 256, ptr %19, align 4
  br label %22

22:                                               ; preds = %21, %15, %15
  %23 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %24 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 92) #10
  %25 = icmp eq ptr %24, null
  br i1 %25, label %57, label %26

26:                                               ; preds = %22
  %27 = tail call i32 @nand_ecc_init_req_tweaking(ptr noundef nonnull %24, ptr noundef %0) #9
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.nand_ecc_sw_hamming_conf, ptr %24, i32 0, i32 1
  store i32 3, ptr %30, align 4
  %31 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %32 = load i32, ptr %31, align 4
  %33 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %32, i32 noundef 3520) #11
  %34 = getelementptr inbounds %struct.nand_ecc_sw_hamming_conf, ptr %24, i32 0, i32 2
  store ptr %33, ptr %34, align 8
  %35 = load i32, ptr %31, align 4
  %36 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %35, i32 noundef 3520) #11
  %37 = getelementptr inbounds %struct.nand_ecc_sw_hamming_conf, ptr %24, i32 0, i32 3
  store ptr %36, ptr %37, align 4
  %38 = load ptr, ptr %34, align 8
  %39 = icmp eq ptr %38, null
  %40 = icmp eq ptr %36, null
  %41 = select i1 %39, i1 true, i1 %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %29
  tail call void @nand_ecc_cleanup_req_tweaking(ptr noundef nonnull %24) #9
  %43 = load ptr, ptr %34, align 8
  tail call void @kfree(ptr noundef %43) #9
  %44 = load ptr, ptr %37, align 4
  tail call void @kfree(ptr noundef %44) #9
  br label %55

45:                                               ; preds = %29
  %46 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 3, i32 3
  store ptr %24, ptr %46, align 4
  %47 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %48 = load i32, ptr %47, align 4
  %49 = load i32, ptr %19, align 4
  %50 = udiv i32 %48, %49
  %51 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 3, i32 1
  store i32 %50, ptr %51, align 4
  %52 = load i32, ptr %30, align 4
  %53 = mul i32 %52, %50
  %54 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 3, i32 2
  store i32 %53, ptr %54, align 4
  br label %57

55:                                               ; preds = %42, %26
  %56 = phi i32 [ %27, %26 ], [ -12, %42 ]
  tail call void @kfree(ptr noundef nonnull %24) #9
  br label %57

57:                                               ; preds = %55, %45, %22, %6
  %58 = phi i32 [ %56, %55 ], [ 0, %45 ], [ -524, %6 ], [ -12, %22 ]
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nand_get_small_page_ooblayout() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nand_get_large_page_hamming_ooblayout() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_ecc_init_req_tweaking(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_ecc_cleanup_req_tweaking(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nand_ecc_sw_hamming_cleanup_ctx(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 3, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  tail call void @nand_ecc_cleanup_req_tweaking(ptr noundef nonnull %3) #9
  %6 = getelementptr inbounds %struct.nand_ecc_sw_hamming_conf, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %7) #9
  %8 = getelementptr inbounds %struct.nand_ecc_sw_hamming_conf, ptr %3, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  tail call void @kfree(ptr noundef %9) #9
  tail call void @kfree(ptr noundef nonnull %3) #9
  br label %10

10:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @nand_ecc_sw_hamming_get_engine() #4 {
  ret ptr @nand_ecc_sw_hamming_engine
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nand_ecc_sw_hamming_prepare_io_req(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 3, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 3, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nand_ecc_sw_hamming_conf, ptr %4, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 3, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 3, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nand_ecc_sw_hamming_conf, ptr %4, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nand_page_io_req, ptr %1, i32 0, i32 8
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %53, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.nand_page_io_req, ptr %1, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %53, label %22

22:                                               ; preds = %18
  tail call void @nand_ecc_tweak_req(ptr noundef %4, ptr noundef %1) #9
  %23 = load i32, ptr %1, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %53, label %25

25:                                               ; preds = %22
  %26 = icmp eq i32 %10, 0
  br i1 %26, label %49, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.nand_page_io_req, ptr %1, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  br label %30

30:                                               ; preds = %42, %27
  %31 = phi i32 [ %46, %42 ], [ 0, %27 ]
  %32 = phi ptr [ %47, %42 ], [ %29, %27 ]
  %33 = phi i32 [ %45, %42 ], [ %10, %27 ]
  %34 = getelementptr i8, ptr %14, i32 %31
  %35 = load ptr, ptr %3, align 4
  %36 = load i32, ptr %5, align 4
  %37 = icmp eq ptr %35, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.nand_ecc_sw_hamming_conf, ptr %35, i32 0, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = icmp ne i32 %40, 0
  br label %42

42:                                               ; preds = %38, %30
  %43 = phi i1 [ %41, %38 ], [ false, %30 ]
  %44 = tail call i32 @ecc_sw_hamming_calculate(ptr noundef %32, i32 noundef %36, ptr noundef %34, i1 noundef zeroext %43) #9
  %45 = add i32 %33, -1
  %46 = add i32 %31, %8
  %47 = getelementptr i8, ptr %32, i32 %6
  %48 = icmp eq i32 %45, 0
  br i1 %48, label %49, label %30

49:                                               ; preds = %42, %25
  %50 = getelementptr inbounds %struct.nand_page_io_req, ptr %1, i32 0, i32 7
  %51 = load ptr, ptr %50, align 4
  %52 = tail call i32 @mtd_ooblayout_set_eccbytes(ptr noundef %0, ptr noundef %14, ptr noundef %51, i32 noundef 0, i32 noundef %12) #9
  br label %53

53:                                               ; preds = %49, %22, %18, %2
  %54 = phi i32 [ %52, %49 ], [ 0, %2 ], [ 0, %18 ], [ 0, %22 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nand_ecc_sw_hamming_finish_io_req(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 3, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 3, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 3, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nand_ecc_sw_hamming_conf, ptr %4, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 3, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nand_ecc_sw_hamming_conf, ptr %4, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nand_ecc_sw_hamming_conf, ptr %4, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nand_page_io_req, ptr %1, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nand_page_io_req, ptr %1, i32 0, i32 8
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %95, label %22

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.nand_page_io_req, ptr %1, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %95, label %26

26:                                               ; preds = %22
  %27 = load i32, ptr %1, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %93, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.nand_page_io_req, ptr %1, i32 0, i32 7
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 @mtd_ooblayout_get_eccbytes(ptr noundef %0, ptr noundef %16, ptr noundef %31, i32 noundef 0, i32 noundef %8) #9
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %95

34:                                               ; preds = %29
  %35 = icmp eq i32 %12, 0
  br i1 %35, label %55, label %36

36:                                               ; preds = %48, %34
  %37 = phi i32 [ %52, %48 ], [ 0, %34 ]
  %38 = phi ptr [ %53, %48 ], [ %18, %34 ]
  %39 = phi i32 [ %51, %48 ], [ %12, %34 ]
  %40 = getelementptr i8, ptr %14, i32 %37
  %41 = load ptr, ptr %3, align 4
  %42 = load i32, ptr %5, align 4
  %43 = icmp eq ptr %41, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.nand_ecc_sw_hamming_conf, ptr %41, i32 0, i32 4
  %46 = load i32, ptr %45, align 4
  %47 = icmp ne i32 %46, 0
  br label %48

48:                                               ; preds = %44, %36
  %49 = phi i1 [ %47, %44 ], [ false, %36 ]
  %50 = tail call i32 @ecc_sw_hamming_calculate(ptr noundef %38, i32 noundef %42, ptr noundef %40, i1 noundef zeroext %49) #9
  %51 = add i32 %39, -1
  %52 = add i32 %37, %10
  %53 = getelementptr i8, ptr %38, i32 %6
  %54 = icmp eq i32 %51, 0
  br i1 %54, label %55, label %36

55:                                               ; preds = %48, %34
  %56 = load i32, ptr %11, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %93, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr %17, align 4
  %60 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52
  %61 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52, i32 1
  br label %62

62:                                               ; preds = %87, %58
  %63 = phi i32 [ 0, %58 ], [ %90, %87 ]
  %64 = phi ptr [ %59, %58 ], [ %91, %87 ]
  %65 = phi i32 [ 0, %58 ], [ %88, %87 ]
  %66 = phi i32 [ %56, %58 ], [ %89, %87 ]
  %67 = getelementptr i8, ptr %16, i32 %63
  %68 = getelementptr i8, ptr %14, i32 %63
  %69 = load ptr, ptr %3, align 4
  %70 = load i32, ptr %5, align 4
  %71 = icmp eq ptr %69, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %62
  %73 = getelementptr inbounds %struct.nand_ecc_sw_hamming_conf, ptr %69, i32 0, i32 4
  %74 = load i32, ptr %73, align 4
  %75 = icmp ne i32 %74, 0
  br label %76

76:                                               ; preds = %72, %62
  %77 = phi i1 [ %75, %72 ], [ false, %62 ]
  %78 = tail call i32 @ecc_sw_hamming_correct(ptr noundef %64, ptr noundef %67, ptr noundef %68, i32 noundef %70, i1 noundef zeroext %77) #9
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i32, ptr %61, align 4
  %82 = add i32 %81, 1
  store i32 %82, ptr %61, align 4
  br label %87

83:                                               ; preds = %76
  %84 = load i32, ptr %60, align 4
  %85 = add i32 %84, %78
  store i32 %85, ptr %60, align 4
  %86 = tail call i32 @llvm.umax.i32(i32 %65, i32 %78)
  br label %87

87:                                               ; preds = %83, %80
  %88 = phi i32 [ %65, %80 ], [ %86, %83 ]
  %89 = add i32 %66, -1
  %90 = add i32 %63, %10
  %91 = getelementptr i8, ptr %64, i32 %6
  %92 = icmp eq i32 %89, 0
  br i1 %92, label %93, label %62

93:                                               ; preds = %87, %55, %26
  %94 = phi i32 [ 0, %26 ], [ 0, %55 ], [ %88, %87 ]
  tail call void @nand_ecc_restore_req(ptr noundef %4, ptr noundef %1) #9
  br label %95

95:                                               ; preds = %93, %29, %22, %2
  %96 = phi i32 [ 0, %2 ], [ 0, %22 ], [ %32, %29 ], [ %94, %93 ]
  ret i32 %96
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_ecc_tweak_req(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_ooblayout_set_eccbytes(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_ecc_restore_req(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_ooblayout_get_eccbytes(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(0) }

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
