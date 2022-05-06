; ModuleID = '/llk/IR/drivers/mtd/nand/raw/nand_bbt.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/nand_bbt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_create_bbt:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_create_bbt\22\09\09\09\09\09"
module asm "__kstrtabns_nand_create_bbt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.nand_bbt_descr = type { i32, [8 x i32], i32, i32, [8 x i8], i32, i32, i32, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.11, i32, %struct.mutex, i8, i32, i32, ptr, i8, ptr, %struct.nand_ecc_ctrl, ptr }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.5 }
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
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.nand_id = type { [8 x i8], i32 }
%struct.nand_parameters = type { ptr, i8, [8 x i32], [8 x i32], ptr }
%struct.nand_manufacturer = type { ptr, ptr }
%struct.nand_chip_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nand_legacy = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.nand_controller }
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.anon.11 = type { i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtd_oob_ops = type { i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.erase_info = type { i64, i64, i64 }

@bbt_main_no_oob_descr = internal global %struct.nand_bbt_descr { i32 271250, [8 x i32] zeroinitializer, i32 0, i32 4, [8 x i8] zeroinitializer, i32 4, i32 4, i32 0, ptr @bbt_pattern }, align 4
@bbt_mirror_no_oob_descr = internal global %struct.nand_bbt_descr { i32 271250, [8 x i32] zeroinitializer, i32 0, i32 4, [8 x i8] zeroinitializer, i32 4, i32 4, i32 0, ptr @mirror_pattern }, align 4
@bbt_main_descr = internal global %struct.nand_bbt_descr { i32 9106, [8 x i32] zeroinitializer, i32 8, i32 12, [8 x i8] zeroinitializer, i32 4, i32 4, i32 0, ptr @bbt_pattern }, align 4
@bbt_mirror_descr = internal global %struct.nand_bbt_descr { i32 9106, [8 x i32] zeroinitializer, i32 8, i32 12, [8 x i8] zeroinitializer, i32 4, i32 4, i32 0, ptr @mirror_pattern }, align 4
@__kstrtab_nand_create_bbt = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_create_bbt = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_create_bbt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_create_bbt to i32), ptr @__kstrtab_nand_create_bbt, ptr @__kstrtabns_nand_create_bbt }, section "___ksymtab+nand_create_bbt", align 4
@nand_isbad_bbt.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mtd_expert_analysis_mode = external dso_local local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [32 x i8] c"drivers/mtd/nand/raw/nand_bbt.c\00", align 1
@mtd_expert_analysis_warning = external dso_local local_unnamed_addr global ptr, align 4
@bbt_pattern = internal global [4 x i8] c"Bbt0", align 1
@mirror_pattern = internal global [4 x i8] c"1tbB", align 1
@scan_ff_pattern = internal global [2 x i8] c"\FF\FF", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"\013nand_bbt: can't scan flash and build the RAM-based BBT\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"\016Scanning device for bad blocks\0A\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"\014create_bbt(): chipnr (%d) > available chips (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"\014Bad eraseblock %d at 0x%012llx\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"\016Bad block table at page %d, version 0x%02X\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"\014Bad block table not found for chip %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"\016Bad block table found at page %d, version 0x%02X\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"\016nand_bbt: ECC error in BBT at 0x%012llx\0A\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"\016nand_bbt: corrected error in BBT at 0x%012llx\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"\016nand_bbt: error reading BBT\0A\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"\016nand_read_bbt: reserved block at 0x%012llx\0A\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"\016nand_read_bbt: bad block at 0x%012llx\0A\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"\013No space left to write bad block table\0A\00", align 1
@.str.15 = private unnamed_addr constant [65 x i8] c"\016nand_bbt: error reading block for writing the bad block table\0A\00", align 1
@.str.16 = private unnamed_addr constant [71 x i8] c"\014nand_bbt: ECC error while reading block for writing bad block table\0A\00", align 1
@.str.17 = private unnamed_addr constant [46 x i8] c"\014nand_bbt: error while erasing BBT block %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"\014nand_bbt: error while writing BBT block %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [56 x i8] c"\016Bad block table written to 0x%012llx, version 0x%02X\0A\00", align 1
@.str.20 = private unnamed_addr constant [52 x i8] c"\014nand_bbt: error while writing bad block table %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [49 x i8] c"\014nand_bbt: error %d while marking block %d bad\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_nand_create_bbt], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nand_create_bbt(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 10
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 131072
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 13
  br i1 %5, label %15, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %6, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %7
  %11 = and i32 %3, 262144
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, ptr @bbt_main_descr, ptr @bbt_main_no_oob_descr
  %14 = select i1 %12, ptr @bbt_mirror_descr, ptr @bbt_mirror_no_oob_descr
  br label %15

15:                                               ; preds = %10, %1
  %16 = phi ptr [ %13, %10 ], [ null, %1 ]
  %17 = phi ptr [ %14, %10 ], [ null, %1 ]
  store ptr %16, ptr %6, align 4
  %18 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 14
  store ptr %17, ptr %18, align 8
  br label %19

19:                                               ; preds = %15, %7
  %20 = phi ptr [ %8, %7 ], [ %16, %15 ]
  %21 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 15
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %44

24:                                               ; preds = %19
  %25 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %26 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 68) #11
  %27 = icmp eq ptr %26, null
  br i1 %27, label %283, label %28

28:                                               ; preds = %24
  %29 = load i32, ptr %2, align 8
  %30 = and i32 %29, 2147221503
  %31 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 11
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.nand_bbt_descr, ptr %26, i32 0, i32 2
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, 2
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i32 1, i32 2
  %39 = getelementptr inbounds %struct.nand_bbt_descr, ptr %26, i32 0, i32 5
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.nand_bbt_descr, ptr %26, i32 0, i32 8
  store ptr @scan_ff_pattern, ptr %40, align 8
  %41 = or i32 %30, -2147483648
  store i32 %41, ptr %26, align 8
  store ptr %26, ptr %21, align 4
  %42 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 13
  %43 = load ptr, ptr %42, align 4
  br label %44

44:                                               ; preds = %28, %19
  %45 = phi ptr [ %43, %28 ], [ %20, %19 ]
  %46 = phi ptr [ %26, %28 ], [ %22, %19 ]
  %47 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 13
  %48 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 14
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 9
  %51 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 2
  %52 = load i64, ptr %51, align 8
  %53 = load i32, ptr %50, align 4
  %54 = add i32 %53, 2
  %55 = zext i32 %54 to i64
  %56 = lshr i64 %52, %55
  %57 = icmp eq i64 %56, 0
  %58 = trunc i64 %56 to i32
  %59 = select i1 %57, i32 1, i32 %58
  %60 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %59, i32 noundef 3520) #12
  %61 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 16
  store ptr %60, ptr %61, align 8
  %62 = icmp eq ptr %60, null
  br i1 %62, label %283, label %63

63:                                               ; preds = %44
  %64 = icmp eq ptr %45, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 24, i32 1
  store i32 -1, ptr %66, align 4
  %67 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 22
  %68 = load ptr, ptr %67, align 8
  %69 = tail call fastcc i32 @create_bbt(ptr noundef %0, ptr noundef %68, ptr noundef nonnull %46, i32 noundef -1) #13
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %283, label %71

71:                                               ; preds = %65
  %72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #14
  br label %280

73:                                               ; preds = %63
  tail call fastcc void @verify_bbt_descr(ptr noundef %0, ptr noundef nonnull %45) #13
  tail call fastcc void @verify_bbt_descr(ptr noundef %0, ptr noundef %49) #13
  %74 = load i32, ptr %50, align 4
  %75 = shl nuw i32 1, %74
  %76 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 17
  %77 = load i32, ptr %76, align 4
  %78 = ashr i32 %75, %77
  %79 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %80 = load i32, ptr %79, align 4
  %81 = mul i32 %78, %80
  %82 = add i32 %81, %75
  %83 = tail call noalias ptr @vmalloc(i32 noundef %82) #12
  %84 = icmp eq ptr %83, null
  br i1 %84, label %280, label %85

85:                                               ; preds = %73
  %86 = load i32, ptr %45, align 4
  %87 = and i32 %86, 32
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %148, label %89

89:                                               ; preds = %85
  %90 = and i32 %86, 256
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %117, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.nand_bbt_descr, ptr %45, i32 0, i32 1
  %94 = load i32, ptr %93, align 4
  %95 = sext i32 %94 to i64
  %96 = load i32, ptr %76, align 4
  %97 = zext i32 %96 to i64
  %98 = shl i64 %95, %97
  %99 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %100 = load i32, ptr %99, align 4
  tail call fastcc void @scan_read(ptr noundef %0, ptr noundef nonnull %83, i64 noundef %98, i32 noundef %100, ptr noundef nonnull %45) #13
  %101 = getelementptr inbounds %struct.nand_bbt_descr, ptr %45, i32 0, i32 3
  %102 = load i32, ptr %101, align 4
  %103 = load i32, ptr %45, align 4
  %104 = and i32 %103, 262144
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %92
  %107 = load i32, ptr %99, align 4
  %108 = add i32 %107, %102
  br label %109

109:                                              ; preds = %106, %92
  %110 = phi i32 [ %102, %92 ], [ %108, %106 ]
  %111 = getelementptr i8, ptr %83, i32 %110
  %112 = load i8, ptr %111, align 1
  %113 = getelementptr inbounds %struct.nand_bbt_descr, ptr %45, i32 0, i32 4
  store i8 %112, ptr %113, align 4
  %114 = load i32, ptr %93, align 4
  %115 = zext i8 %112 to i32
  %116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %114, i32 noundef %115) #14
  br label %117

117:                                              ; preds = %109, %89
  %118 = icmp eq ptr %49, null
  br i1 %118, label %151, label %119

119:                                              ; preds = %117
  %120 = load i32, ptr %49, align 4
  %121 = and i32 %120, 256
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %151, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.nand_bbt_descr, ptr %49, i32 0, i32 1
  %125 = load i32, ptr %124, align 4
  %126 = sext i32 %125 to i64
  %127 = load i32, ptr %76, align 4
  %128 = zext i32 %127 to i64
  %129 = shl i64 %126, %128
  %130 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %131 = load i32, ptr %130, align 4
  tail call fastcc void @scan_read(ptr noundef %0, ptr noundef nonnull %83, i64 noundef %129, i32 noundef %131, ptr noundef nonnull %49) #13
  %132 = getelementptr inbounds %struct.nand_bbt_descr, ptr %49, i32 0, i32 3
  %133 = load i32, ptr %132, align 4
  %134 = load i32, ptr %49, align 4
  %135 = and i32 %134, 262144
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %123
  %138 = load i32, ptr %130, align 4
  %139 = add i32 %138, %133
  br label %140

140:                                              ; preds = %137, %123
  %141 = phi i32 [ %133, %123 ], [ %139, %137 ]
  %142 = getelementptr i8, ptr %83, i32 %141
  %143 = load i8, ptr %142, align 1
  %144 = getelementptr inbounds %struct.nand_bbt_descr, ptr %49, i32 0, i32 4
  store i8 %143, ptr %144, align 4
  %145 = load i32, ptr %124, align 4
  %146 = zext i8 %143 to i32
  %147 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %145, i32 noundef %146) #14
  br label %151

148:                                              ; preds = %85
  tail call fastcc void @search_bbt(ptr noundef %0, ptr noundef nonnull %83, ptr noundef nonnull %45) #13
  %149 = icmp eq ptr %49, null
  br i1 %149, label %151, label %150

150:                                              ; preds = %148
  tail call fastcc void @search_bbt(ptr noundef %0, ptr noundef nonnull %83, ptr noundef nonnull %49) #13
  br label %151

151:                                              ; preds = %150, %148, %140, %119, %117
  %152 = load ptr, ptr %47, align 4
  %153 = load ptr, ptr %48, align 8
  %154 = load i32, ptr %152, align 4
  %155 = and i32 %154, 128
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %161, label %157

157:                                              ; preds = %151
  %158 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %159 = load i32, ptr %158, align 8
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %161, label %274

161:                                              ; preds = %157, %151
  %162 = phi i32 [ %159, %157 ], [ 1, %151 ]
  %163 = icmp ne ptr %153, null
  %164 = icmp eq ptr %152, null
  br label %165

165:                                              ; preds = %272, %161
  %166 = phi i32 [ %154, %161 ], [ %273, %272 ]
  %167 = phi i32 [ 0, %161 ], [ %270, %272 ]
  %168 = and i32 %166, 128
  %169 = icmp eq i32 %168, 0
  %170 = select i1 %169, i32 -1, i32 %167
  %171 = getelementptr %struct.nand_bbt_descr, ptr %152, i32 0, i32 1, i32 %167
  %172 = load i32, ptr %171, align 4
  %173 = icmp eq i32 %172, -1
  br i1 %163, label %174, label %193

174:                                              ; preds = %165
  %175 = getelementptr %struct.nand_bbt_descr, ptr %153, i32 0, i32 1, i32 %167
  %176 = load i32, ptr %175, align 4
  %177 = icmp eq i32 %176, -1
  br i1 %173, label %178, label %179

178:                                              ; preds = %174
  br i1 %177, label %194, label %211

179:                                              ; preds = %174
  br i1 %177, label %208, label %180

180:                                              ; preds = %179
  %181 = getelementptr %struct.nand_bbt_descr, ptr %152, i32 0, i32 4, i32 %167
  %182 = load i8, ptr %181, align 1
  %183 = getelementptr %struct.nand_bbt_descr, ptr %153, i32 0, i32 4, i32 %167
  %184 = load i8, ptr %183, align 1
  %185 = icmp eq i8 %182, %184
  br i1 %185, label %186, label %190

186:                                              ; preds = %180
  %187 = and i32 %166, 256
  %188 = icmp eq i32 %187, 0
  %189 = select i1 %188, ptr %153, ptr null
  br label %208

190:                                              ; preds = %180
  %191 = sub i8 %182, %184
  %192 = icmp sgt i8 %191, 0
  br i1 %192, label %208, label %211

193:                                              ; preds = %165
  br i1 %173, label %194, label %208

194:                                              ; preds = %193, %178
  %195 = phi i32 [ 1, %193 ], [ 3, %178 ]
  %196 = and i32 %166, 512
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %268, label %198

198:                                              ; preds = %194
  %199 = load i32, ptr %2, align 8
  %200 = and i32 %199, 1024
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %198
  %203 = tail call fastcc i32 @create_bbt(ptr noundef %0, ptr noundef nonnull %83, ptr noundef %46, i32 noundef %170) #13
  br label %204

204:                                              ; preds = %202, %198
  %205 = getelementptr %struct.nand_bbt_descr, ptr %152, i32 0, i32 4, i32 %167
  store i8 1, ptr %205, align 1
  br i1 %163, label %206, label %241

206:                                              ; preds = %204
  %207 = getelementptr %struct.nand_bbt_descr, ptr %153, i32 0, i32 4, i32 %167
  store i8 1, ptr %207, align 1
  br label %234

208:                                              ; preds = %193, %190, %186, %179
  %209 = phi ptr [ null, %193 ], [ %189, %186 ], [ null, %179 ], [ null, %190 ]
  %210 = phi i32 [ 0, %193 ], [ 0, %186 ], [ 2, %179 ], [ 2, %190 ]
  br i1 %164, label %217, label %211

211:                                              ; preds = %208, %190, %178
  %212 = phi i32 [ %210, %208 ], [ 1, %178 ], [ 1, %190 ]
  %213 = phi ptr [ %152, %208 ], [ %153, %178 ], [ %153, %190 ]
  %214 = phi ptr [ %209, %208 ], [ null, %178 ], [ null, %190 ]
  %215 = tail call fastcc i32 @read_abs_bbt(ptr noundef %0, ptr noundef nonnull %83, ptr noundef nonnull %213, i32 noundef %170) #13
  %216 = icmp eq i32 %215, -74
  br i1 %216, label %263, label %217

217:                                              ; preds = %211, %208
  %218 = phi i32 [ %212, %211 ], [ %210, %208 ]
  %219 = phi ptr [ %214, %211 ], [ %209, %208 ]
  %220 = phi i32 [ %215, %211 ], [ 0, %208 ]
  %221 = icmp eq ptr %219, null
  br i1 %221, label %225, label %222

222:                                              ; preds = %217
  %223 = tail call fastcc i32 @read_abs_bbt(ptr noundef %0, ptr noundef nonnull %83, ptr noundef nonnull %219, i32 noundef %170) #13
  %224 = icmp eq i32 %223, -74
  br i1 %224, label %263, label %225

225:                                              ; preds = %222, %217
  %226 = phi i32 [ %223, %222 ], [ 0, %217 ]
  %227 = icmp eq i32 %220, -117
  %228 = icmp eq i32 %226, -117
  %229 = select i1 %227, i1 true, i1 %228
  %230 = select i1 %229, i32 3, i32 %218
  br i1 %163, label %231, label %241

231:                                              ; preds = %225
  %232 = getelementptr %struct.nand_bbt_descr, ptr %153, i32 0, i32 4, i32 %167
  %233 = load i8, ptr %232, align 1
  br label %234

234:                                              ; preds = %231, %206
  %235 = phi i8 [ 1, %206 ], [ %233, %231 ]
  %236 = phi i32 [ %195, %206 ], [ %230, %231 ]
  %237 = getelementptr %struct.nand_bbt_descr, ptr %152, i32 0, i32 4, i32 %167
  %238 = load i8, ptr %237, align 1
  %239 = getelementptr %struct.nand_bbt_descr, ptr %153, i32 0, i32 4, i32 %167
  %240 = tail call i8 @llvm.umax.i8(i8 %238, i8 %235) #13
  store i8 %240, ptr %237, align 1
  store i8 %240, ptr %239, align 1
  br label %241

241:                                              ; preds = %234, %225, %204
  %242 = phi i32 [ %236, %234 ], [ %230, %225 ], [ %195, %204 ]
  %243 = and i32 %242, 1
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %252, label %245

245:                                              ; preds = %241
  %246 = load i32, ptr %152, align 4
  %247 = and i32 %246, 8192
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %252, label %249

249:                                              ; preds = %245
  %250 = tail call fastcc i32 @write_bbt(ptr noundef %0, ptr noundef nonnull %83, ptr noundef %152, ptr noundef %153, i32 noundef %170) #13
  %251 = icmp slt i32 %250, 0
  br i1 %251, label %278, label %252

252:                                              ; preds = %249, %245, %241
  %253 = and i32 %242, 2
  %254 = icmp ne i32 %253, 0
  %255 = select i1 %254, i1 %163, i1 false
  br i1 %255, label %256, label %268

256:                                              ; preds = %252
  %257 = load i32, ptr %153, align 4
  %258 = and i32 %257, 8192
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %268, label %260

260:                                              ; preds = %256
  %261 = tail call fastcc i32 @write_bbt(ptr noundef %0, ptr noundef nonnull %83, ptr noundef nonnull %153, ptr noundef %152, i32 noundef %170) #13
  %262 = icmp slt i32 %261, 0
  br i1 %262, label %278, label %268

263:                                              ; preds = %222, %211
  %264 = phi ptr [ %213, %211 ], [ %219, %222 ]
  %265 = getelementptr %struct.nand_bbt_descr, ptr %264, i32 0, i32 1, i32 %167
  store i32 -1, ptr %265, align 4
  %266 = getelementptr %struct.nand_bbt_descr, ptr %264, i32 0, i32 4, i32 %167
  store i8 0, ptr %266, align 1
  %267 = add i32 %167, -1
  br label %268

268:                                              ; preds = %263, %260, %256, %252, %194
  %269 = phi i32 [ %167, %260 ], [ %167, %256 ], [ %167, %252 ], [ %167, %194 ], [ %267, %263 ]
  %270 = add i32 %269, 1
  %271 = icmp slt i32 %270, %162
  br i1 %271, label %272, label %274

272:                                              ; preds = %268
  %273 = load i32, ptr %152, align 4
  br label %165

274:                                              ; preds = %268, %157
  tail call fastcc void @mark_bbt_region(ptr noundef %0, ptr noundef nonnull %45) #13
  %275 = icmp eq ptr %49, null
  br i1 %275, label %277, label %276

276:                                              ; preds = %274
  tail call fastcc void @mark_bbt_region(ptr noundef %0, ptr noundef nonnull %49) #13
  br label %277

277:                                              ; preds = %276, %274
  tail call void @vfree(ptr noundef nonnull %83) #13
  br label %283

278:                                              ; preds = %260, %249
  %279 = phi i32 [ %261, %260 ], [ %250, %249 ]
  tail call void @vfree(ptr noundef nonnull %83) #13
  br label %280

280:                                              ; preds = %278, %73, %71
  %281 = phi i32 [ %279, %278 ], [ %69, %71 ], [ -12, %73 ]
  %282 = load ptr, ptr %61, align 8
  tail call void @kfree(ptr noundef %282) #13
  store ptr null, ptr %61, align 8
  br label %283

283:                                              ; preds = %280, %277, %65, %44, %24
  %284 = phi i32 [ -12, %24 ], [ %281, %280 ], [ 0, %277 ], [ -12, %44 ], [ 0, %65 ]
  ret i32 %284
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @nand_isreserved_bbt(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 9
  %4 = load i32, ptr %3, align 4
  %5 = zext i32 %4 to i64
  %6 = ashr i64 %1, %5
  %7 = trunc i64 %6 to i32
  %8 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 16
  %9 = load ptr, ptr %8, align 8
  %10 = ashr i32 %7, 2
  %11 = getelementptr i8, ptr %9, i32 %10
  %12 = load i8, ptr %11, align 1
  %13 = shl i32 %7, 1
  %14 = and i32 %13, 6
  %15 = zext i8 %12 to i32
  %16 = lshr i32 %15, %14
  %17 = and i32 %16, 3
  %18 = icmp eq i32 %17, 2
  %19 = zext i1 %18 to i32
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nand_isbad_bbt(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 9
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = ashr i64 %1, %6
  %8 = trunc i64 %7 to i32
  %9 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 16
  %10 = load ptr, ptr %9, align 8
  %11 = ashr i32 %8, 2
  %12 = getelementptr i8, ptr %10, i32 %11
  %13 = load i8, ptr %12, align 1
  %14 = shl i32 %8, 1
  %15 = and i32 %14, 6
  %16 = zext i8 %13 to i32
  %17 = lshr i32 %16, %15
  %18 = trunc i32 %17 to i2
  %19 = load i8, ptr @mtd_expert_analysis_mode, align 1, !range !8
  %20 = icmp ne i8 %19, 0
  %21 = load i1, ptr @nand_isbad_bbt.__already_done, align 1
  %22 = xor i1 %21, true
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %26, !prof !9

24:                                               ; preds = %3
  store i1 true, ptr @nand_isbad_bbt.__already_done, align 1
  %25 = load ptr, ptr @mtd_expert_analysis_warning, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1458, i32 noundef 9, ptr noundef %25) #13
  br label %26

26:                                               ; preds = %24, %3
  br i1 %20, label %33, label %27

27:                                               ; preds = %26
  switch i2 %18, label %32 [
    i2 0, label %33
    i2 1, label %28
    i2 -2, label %29
  ]

28:                                               ; preds = %27
  br label %33

29:                                               ; preds = %27
  %30 = icmp eq i32 %2, 0
  %31 = zext i1 %30 to i32
  br label %33

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32, %29, %28, %27, %26
  %34 = phi i32 [ 1, %32 ], [ %31, %29 ], [ 1, %28 ], [ 0, %26 ], [ 0, %27 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nand_markbad_bbt(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 9
  %4 = load i32, ptr %3, align 4
  %5 = zext i32 %4 to i64
  %6 = ashr i64 %1, %5
  %7 = trunc i64 %6 to i32
  %8 = shl i32 %7, 1
  %9 = and i32 %8, 6
  %10 = shl nuw nsw i32 1, %9
  %11 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 16
  %12 = load ptr, ptr %11, align 8
  %13 = ashr i32 %7, 2
  %14 = getelementptr i8, ptr %12, i32 %13
  %15 = load i8, ptr %14, align 1
  %16 = trunc i32 %10 to i8
  %17 = or i8 %15, %16
  store i8 %17, ptr %14, align 1
  %18 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 10
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 131072
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = tail call fastcc i32 @nand_update_bbt(ptr noundef %0, i64 noundef %1)
  br label %24

24:                                               ; preds = %22, %2
  %25 = phi i32 [ %23, %22 ], [ 0, %2 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nand_update_bbt(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 13
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 14
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 16
  %8 = load ptr, ptr %7, align 8
  %9 = icmp ne ptr %8, null
  %10 = icmp ne ptr %4, null
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %67

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 9
  %14 = load i32, ptr %13, align 4
  %15 = shl nuw i32 1, %14
  %16 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 17
  %17 = load i32, ptr %16, align 4
  %18 = ashr i32 %15, %17
  %19 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = mul i32 %18, %20
  %22 = add i32 %21, %15
  %23 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %22, i32 noundef 3264) #12
  %24 = icmp eq ptr %23, null
  br i1 %24, label %67, label %25

25:                                               ; preds = %12
  %26 = load i32, ptr %4, align 4
  %27 = and i32 %26, 128
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 19
  %31 = load i32, ptr %30, align 4
  %32 = zext i32 %31 to i64
  %33 = ashr i64 %1, %32
  %34 = trunc i64 %33 to i32
  br label %35

35:                                               ; preds = %29, %25
  %36 = phi i32 [ %34, %29 ], [ 0, %25 ]
  %37 = phi i32 [ %34, %29 ], [ -1, %25 ]
  %38 = getelementptr %struct.nand_bbt_descr, ptr %4, i32 0, i32 4, i32 %36
  %39 = load i8, ptr %38, align 1
  %40 = add i8 %39, 1
  store i8 %40, ptr %38, align 1
  %41 = icmp eq ptr %6, null
  br i1 %41, label %49, label %42

42:                                               ; preds = %35
  %43 = getelementptr %struct.nand_bbt_descr, ptr %6, i32 0, i32 4, i32 %36
  %44 = load i8, ptr %43, align 1
  %45 = add i8 %44, 1
  store i8 %45, ptr %43, align 1
  %46 = load i32, ptr %4, align 4
  %47 = and i32 %46, 8192
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %58, label %55

49:                                               ; preds = %35
  %50 = load i32, ptr %4, align 4
  %51 = and i32 %50, 8192
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %49
  %54 = tail call fastcc i32 @write_bbt(ptr noundef %0, ptr noundef nonnull %23, ptr noundef nonnull %4, ptr noundef null, i32 noundef %37)
  br label %65

55:                                               ; preds = %42
  %56 = tail call fastcc i32 @write_bbt(ptr noundef %0, ptr noundef nonnull %23, ptr noundef nonnull %4, ptr noundef nonnull %6, i32 noundef %37)
  %57 = icmp sgt i32 %56, -1
  br i1 %57, label %58, label %65

58:                                               ; preds = %55, %42
  %59 = phi i32 [ %56, %55 ], [ 0, %42 ]
  %60 = load i32, ptr %6, align 4
  %61 = and i32 %60, 8192
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %58
  %64 = tail call fastcc i32 @write_bbt(ptr noundef %0, ptr noundef nonnull %23, ptr noundef nonnull %6, ptr noundef nonnull %4, i32 noundef %37)
  br label %65

65:                                               ; preds = %63, %58, %55, %53, %49
  %66 = phi i32 [ %64, %63 ], [ %59, %58 ], [ %56, %55 ], [ 0, %49 ], [ %54, %53 ]
  tail call void @kfree(ptr noundef nonnull %23) #13
  br label %67

67:                                               ; preds = %65, %12, %2
  %68 = phi i32 [ %66, %65 ], [ -22, %2 ], [ -12, %12 ]
  ret i32 %68
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @verify_bbt_descr(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 4
  %7 = load i32, ptr %6, align 8
  %8 = zext i32 %7 to i64
  %9 = mul nuw i64 %8, %5
  %10 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = zext i32 %11 to i64
  %13 = mul i64 %9, %12
  %14 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = zext i32 %15 to i64
  %17 = mul i64 %13, %16
  %18 = icmp eq ptr %1, null
  br i1 %18, label %83, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.nand_bbt_descr, ptr %1, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = load i32, ptr %1, align 4
  %23 = and i32 %22, 15
  %24 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 10
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 262144
  %27 = icmp eq i32 %26, 0
  %28 = and i32 %25, 131072
  %29 = icmp eq i32 %28, 0
  %30 = xor i1 %27, true
  %31 = select i1 %30, i1 %29, i1 false
  br i1 %31, label %32, label %33, !prof !9

32:                                               ; preds = %19
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/nand/raw/nand_bbt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1206, 0\0A.popsection", ""() #13, !srcloc !10
  unreachable

33:                                               ; preds = %19
  %34 = icmp eq i32 %23, 0
  br i1 %34, label %35, label %36, !prof !9

35:                                               ; preds = %33
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/nand/raw/nand_bbt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1207, 0\0A.popsection", ""() #13, !srcloc !11
  unreachable

36:                                               ; preds = %33
  %37 = and i32 %22, 256
  %38 = icmp eq i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = add i32 %21, %40
  %42 = and i32 %22, 262144
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %63, label %44

44:                                               ; preds = %36
  br i1 %29, label %45, label %46, !prof !9

45:                                               ; preds = %44
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/nand/raw/nand_bbt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1213, 0\0A.popsection", ""() #13, !srcloc !12
  unreachable

46:                                               ; preds = %44
  br i1 %27, label %47, label %48, !prof !9

47:                                               ; preds = %46
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/nand/raw/nand_bbt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1214, 0\0A.popsection", ""() #13, !srcloc !13
  unreachable

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.nand_bbt_descr, ptr %1, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %53, label %52, !prof !14

52:                                               ; preds = %48
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/nand/raw/nand_bbt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1215, 0\0A.popsection", ""() #13, !srcloc !15
  unreachable

53:                                               ; preds = %48
  br i1 %38, label %59, label %54

54:                                               ; preds = %53
  %55 = getelementptr inbounds %struct.nand_bbt_descr, ptr %1, i32 0, i32 3
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, %21
  br i1 %57, label %59, label %58, !prof !14

58:                                               ; preds = %54
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/nand/raw/nand_bbt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1217, 0\0A.popsection", ""() #13, !srcloc !16
  unreachable

59:                                               ; preds = %54, %53
  %60 = and i32 %22, 16384
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %63, label %62, !prof !14

62:                                               ; preds = %59
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/nand/raw/nand_bbt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1218, 0\0A.popsection", ""() #13, !srcloc !17
  unreachable

63:                                               ; preds = %59, %36
  %64 = and i32 %22, 128
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 2
  %68 = load i64, ptr %67, align 8
  br label %69

69:                                               ; preds = %66, %63
  %70 = phi i64 [ %68, %66 ], [ %17, %63 ]
  %71 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 9
  %72 = load i32, ptr %71, align 4
  %73 = zext i32 %72 to i64
  %74 = lshr i64 %70, %73
  %75 = trunc i64 %74 to i32
  %76 = lshr i32 %75, 3
  %77 = mul i32 %76, %23
  %78 = select i1 %43, i32 0, i32 %41
  %79 = add i32 %77, %78
  %80 = shl nuw i32 1, %72
  %81 = icmp ugt i32 %79, %80
  br i1 %81, label %82, label %83, !prof !9

82:                                               ; preds = %69
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/nand/raw/nand_bbt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1229, 0\0A.popsection", ""() #13, !srcloc !18
  unreachable

83:                                               ; preds = %69, %2
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mark_bbt_region(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load i32, ptr %1, align 4
  %4 = and i32 %3, 128
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 2
  %8 = load i64, ptr %7, align 8
  %9 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 9
  %10 = load i32, ptr %9, align 4
  %11 = zext i32 %10 to i64
  %12 = lshr i64 %8, %11
  %13 = trunc i64 %12 to i32
  br label %38

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 4
  %16 = load i32, ptr %15, align 8
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 7
  %19 = load i32, ptr %18, align 4
  %20 = zext i32 %19 to i64
  %21 = mul nuw i64 %20, %17
  %22 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = zext i32 %23 to i64
  %25 = mul i64 %21, %24
  %26 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = zext i32 %27 to i64
  %29 = mul i64 %25, %28
  %30 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %31 = load i32, ptr %30, align 8
  %32 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 9
  %33 = load i32, ptr %32, align 4
  %34 = zext i32 %33 to i64
  %35 = lshr i64 %29, %34
  %36 = trunc i64 %35 to i32
  %37 = icmp sgt i32 %31, 0
  br i1 %37, label %38, label %130

38:                                               ; preds = %14, %6
  %39 = phi i32 [ %13, %6 ], [ %36, %14 ]
  %40 = phi i32 [ 1, %6 ], [ %31, %14 ]
  %41 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 9
  %42 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 17
  %43 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 16
  %44 = getelementptr inbounds %struct.nand_bbt_descr, ptr %1, i32 0, i32 7
  %45 = getelementptr inbounds %struct.nand_bbt_descr, ptr %1, i32 0, i32 6
  br label %46

46:                                               ; preds = %128, %38
  %47 = phi i32 [ %3, %38 ], [ %129, %128 ]
  %48 = phi i32 [ 0, %38 ], [ %126, %128 ]
  %49 = and i32 %47, 8224
  %50 = icmp eq i32 %49, 8192
  br i1 %50, label %76, label %51

51:                                               ; preds = %46
  %52 = getelementptr %struct.nand_bbt_descr, ptr %1, i32 0, i32 1, i32 %48
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %125, label %55

55:                                               ; preds = %51
  %56 = load i32, ptr %41, align 4
  %57 = load i32, ptr %42, align 4
  %58 = sub i32 %56, %57
  %59 = ashr i32 %53, %58
  %60 = load ptr, ptr %43, align 8
  %61 = ashr i32 %59, 2
  %62 = getelementptr i8, ptr %60, i32 %61
  %63 = load i8, ptr %62, align 1
  %64 = shl i32 %59, 1
  %65 = and i32 %64, 6
  %66 = zext i8 %63 to i32
  %67 = lshr i32 %66, %65
  %68 = shl nuw nsw i32 2, %65
  %69 = trunc i32 %68 to i8
  %70 = or i8 %63, %69
  store i8 %70, ptr %62, align 1
  %71 = and i32 %67, 3
  %72 = icmp eq i32 %71, 2
  br i1 %72, label %125, label %73

73:                                               ; preds = %55
  %74 = load i32, ptr %44, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %125, label %118

76:                                               ; preds = %46
  %77 = and i32 %47, 16
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %76
  %80 = add nuw nsw i32 %48, 1
  %81 = mul i32 %80, %39
  %82 = load i32, ptr %45, align 4
  %83 = sub i32 %81, %82
  br label %87

84:                                               ; preds = %76
  %85 = mul i32 %48, %39
  %86 = load i32, ptr %45, align 4
  br label %87

87:                                               ; preds = %84, %79
  %88 = phi i32 [ %82, %79 ], [ %86, %84 ]
  %89 = phi i32 [ %83, %79 ], [ %85, %84 ]
  %90 = icmp sgt i32 %88, 0
  br i1 %90, label %91, label %125

91:                                               ; preds = %91, %87
  %92 = phi i32 [ %108, %91 ], [ 0, %87 ]
  %93 = phi i32 [ %109, %91 ], [ %89, %87 ]
  %94 = phi i32 [ %110, %91 ], [ 0, %87 ]
  %95 = load ptr, ptr %43, align 8
  %96 = ashr i32 %93, 2
  %97 = getelementptr i8, ptr %95, i32 %96
  %98 = load i8, ptr %97, align 1
  %99 = shl i32 %93, 1
  %100 = and i32 %99, 6
  %101 = zext i8 %98 to i32
  %102 = lshr i32 %101, %100
  %103 = shl nuw nsw i32 2, %100
  %104 = trunc i32 %103 to i8
  %105 = or i8 %98, %104
  store i8 %105, ptr %97, align 1
  %106 = and i32 %102, 3
  %107 = icmp eq i32 %106, 2
  %108 = select i1 %107, i32 %92, i32 1
  %109 = add i32 %93, 1
  %110 = add nuw nsw i32 %94, 1
  %111 = load i32, ptr %45, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %91, label %113

113:                                              ; preds = %91
  %114 = icmp eq i32 %108, 0
  br i1 %114, label %125, label %115

115:                                              ; preds = %113
  %116 = load i32, ptr %44, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %125, label %118

118:                                              ; preds = %115, %73
  %119 = phi i32 [ %59, %73 ], [ %93, %115 ]
  %120 = sext i32 %119 to i64
  %121 = load i32, ptr %41, align 4
  %122 = zext i32 %121 to i64
  %123 = shl i64 %120, %122
  %124 = tail call fastcc i32 @nand_update_bbt(ptr noundef %0, i64 noundef %123)
  br label %125

125:                                              ; preds = %118, %115, %113, %87, %73, %55, %51
  %126 = add nuw nsw i32 %48, 1
  %127 = icmp eq i32 %126, %40
  br i1 %127, label %130, label %128

128:                                              ; preds = %125
  %129 = load i32, ptr %1, align 4
  br label %46

130:                                              ; preds = %125, %14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @create_bbt(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 4
  %9 = load i32, ptr %8, align 8
  %10 = zext i32 %9 to i64
  %11 = mul nuw i64 %10, %7
  %12 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = zext i32 %13 to i64
  %15 = mul i64 %11, %14
  %16 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = zext i32 %17 to i64
  %19 = mul i64 %15, %18
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #14
  %21 = icmp eq i32 %3, -1
  br i1 %21, label %22, label %30

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 2
  %24 = load i64, ptr %23, align 8
  %25 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 9
  %26 = load i32, ptr %25, align 4
  %27 = zext i32 %26 to i64
  %28 = lshr i64 %24, %27
  %29 = trunc i64 %28 to i32
  br label %47

30:                                               ; preds = %4
  %31 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %32 = load i32, ptr %31, align 8
  %33 = icmp ugt i32 %32, %3
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = add nuw i32 %3, 1
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %35, i32 noundef %32) #14
  br label %88

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 9
  %39 = load i32, ptr %38, align 4
  %40 = zext i32 %39 to i64
  %41 = lshr i64 %19, %40
  %42 = trunc i64 %41 to i32
  %43 = mul i32 %42, %3
  %44 = add i32 %43, %42
  %45 = sext i32 %43 to i64
  %46 = shl i64 %45, %40
  br label %47

47:                                               ; preds = %37, %22
  %48 = phi i32 [ %29, %22 ], [ %44, %37 ]
  %49 = phi i32 [ 0, %22 ], [ %43, %37 ]
  %50 = phi i64 [ 0, %22 ], [ %46, %37 ]
  %51 = icmp slt i32 %49, %48
  br i1 %51, label %52, label %88

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 16
  %54 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52, i32 2
  %55 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 9
  br label %56

56:                                               ; preds = %81, %52
  %57 = phi i64 [ %50, %52 ], [ %85, %81 ]
  %58 = phi i32 [ %49, %52 ], [ %86, %81 ]
  %59 = load i32, ptr %2, align 4
  %60 = and i32 %59, 262144
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %63, label %62, !prof !14

62:                                               ; preds = %56
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/nand/raw/nand_bbt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 519, 0\0A.popsection", ""() #13, !srcloc !19
  unreachable

63:                                               ; preds = %56
  %64 = tail call fastcc i32 @scan_block_fast(ptr noundef %0, ptr noundef %2, i64 noundef %57, ptr noundef %1)
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %88, label %66

66:                                               ; preds = %63
  %67 = icmp eq i32 %64, 0
  br i1 %67, label %81, label %68

68:                                               ; preds = %66
  %69 = shl i32 %58, 1
  %70 = and i32 %69, 6
  %71 = shl nuw nsw i32 3, %70
  %72 = load ptr, ptr %53, align 8
  %73 = ashr i32 %58, 2
  %74 = getelementptr i8, ptr %72, i32 %73
  %75 = load i8, ptr %74, align 1
  %76 = trunc i32 %71 to i8
  %77 = or i8 %75, %76
  store i8 %77, ptr %74, align 1
  %78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %58, i64 noundef %57) #14
  %79 = load i32, ptr %54, align 4
  %80 = add i32 %79, 1
  store i32 %80, ptr %54, align 4
  br label %81

81:                                               ; preds = %68, %66
  %82 = load i32, ptr %55, align 4
  %83 = shl nuw i32 1, %82
  %84 = sext i32 %83 to i64
  %85 = add i64 %57, %84
  %86 = add i32 %58, 1
  %87 = icmp eq i32 %86, %48
  br i1 %87, label %88, label %56

88:                                               ; preds = %81, %63, %47, %34
  %89 = phi i32 [ -22, %34 ], [ 0, %47 ], [ 0, %81 ], [ %64, %63 ]
  ret i32 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @scan_block_fast(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.mtd_oob_ops, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #13
  %6 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %6, i8 0, i32 16, i1 false), !annotation !20
  %7 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.mtd_oob_ops, ptr %5, i32 0, i32 3
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.mtd_oob_ops, ptr %5, i32 0, i32 7
  store ptr %3, ptr %10, align 4
  %11 = getelementptr inbounds %struct.mtd_oob_ops, ptr %5, i32 0, i32 5
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.mtd_oob_ops, ptr %5, i32 0, i32 6
  store ptr null, ptr %12, align 4
  store i32 0, ptr %5, align 4
  %13 = tail call i32 @nand_bbm_get_next_page(ptr noundef %0, i32 noundef 0) #13
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %38

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %17 = getelementptr inbounds %struct.nand_bbt_descr, ptr %1, i32 0, i32 2
  %18 = getelementptr inbounds %struct.nand_bbt_descr, ptr %1, i32 0, i32 8
  %19 = getelementptr inbounds %struct.nand_bbt_descr, ptr %1, i32 0, i32 5
  br label %20

20:                                               ; preds = %34, %15
  %21 = phi i32 [ %13, %15 ], [ %36, %34 ]
  %22 = load i32, ptr %16, align 4
  %23 = mul i32 %22, %21
  %24 = zext i32 %23 to i64
  %25 = add i64 %24, %2
  %26 = call i32 @mtd_read_oob(ptr noundef %0, i64 noundef %25, ptr noundef nonnull %5) #13
  switch i32 %26, label %38 [
    i32 0, label %27
    i32 -74, label %27
    i32 -117, label %27
  ]

27:                                               ; preds = %20, %20, %20
  %28 = load i32, ptr %17, align 4
  %29 = getelementptr i8, ptr %3, i32 %28
  %30 = load ptr, ptr %18, align 4
  %31 = load i32, ptr %19, align 4
  %32 = call i32 @bcmp(ptr %29, ptr %30, i32 %31) #13
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = add nuw i32 %21, 1
  %36 = call i32 @nand_bbm_get_next_page(ptr noundef %0, i32 noundef %35) #13
  %37 = icmp sgt i32 %36, -1
  br i1 %37, label %20, label %38

38:                                               ; preds = %34, %27, %20, %4
  %39 = phi i32 [ 0, %4 ], [ %26, %20 ], [ 0, %34 ], [ 1, %27 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  ret i32 %39
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_bbm_get_next_page(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read_oob(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @scan_read(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = alloca %struct.mtd_oob_ops, align 4
  %7 = alloca i32, align 4
  %8 = load i32, ptr %4, align 4
  %9 = and i32 %8, 262144
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store i32 0, ptr %7, align 4, !annotation !20
  %12 = getelementptr inbounds %struct.nand_bbt_descr, ptr %4, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = lshr i32 %8, 8
  %15 = and i32 %14, 1
  %16 = add i32 %13, %15
  %17 = call i32 @mtd_read(ptr noundef %0, i64 noundef %2, i32 noundef %16, ptr noundef nonnull %7, ptr noundef %1) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  br label %47

18:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #13
  %19 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i64 24, i1 false) #13
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.mtd_oob_ops, ptr %6, i32 0, i32 3
  store i32 %20, ptr %21, align 4
  %22 = icmp eq i32 %3, 0
  br i1 %22, label %46, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.mtd_oob_ops, ptr %6, i32 0, i32 6
  %25 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %26 = getelementptr inbounds %struct.mtd_oob_ops, ptr %6, i32 0, i32 1
  %27 = getelementptr inbounds %struct.mtd_oob_ops, ptr %6, i32 0, i32 7
  %28 = load i32, ptr %25, align 4
  br label %29

29:                                               ; preds = %37, %23
  %30 = phi i32 [ %28, %23 ], [ %39, %37 ]
  %31 = phi ptr [ %1, %23 ], [ %41, %37 ]
  %32 = phi i64 [ %2, %23 ], [ %44, %37 ]
  %33 = phi i32 [ %3, %23 ], [ %42, %37 ]
  store ptr %31, ptr %24, align 4
  %34 = call i32 @llvm.umin.i32(i32 %33, i32 %30) #13
  store i32 %34, ptr %26, align 4
  %35 = getelementptr i8, ptr %31, i32 %34
  store ptr %35, ptr %27, align 4
  %36 = call i32 @mtd_read_oob(ptr noundef %0, i64 noundef %32, ptr noundef nonnull %6) #13
  switch i32 %36, label %46 [
    i32 0, label %37
    i32 -74, label %37
    i32 -117, label %37
  ]

37:                                               ; preds = %29, %29, %29
  %38 = load i32, ptr %19, align 4
  %39 = load i32, ptr %25, align 4
  %40 = add i32 %39, %38
  %41 = getelementptr i8, ptr %31, i32 %40
  %42 = sub i32 %33, %39
  %43 = zext i32 %39 to i64
  %44 = add i64 %32, %43
  %45 = icmp eq i32 %42, 0
  br i1 %45, label %46, label %29

46:                                               ; preds = %37, %29, %18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #13
  br label %47

47:                                               ; preds = %46, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @search_bbt(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 4
  %8 = load i32, ptr %7, align 8
  %9 = zext i32 %8 to i64
  %10 = mul nuw i64 %9, %6
  %11 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = zext i32 %12 to i64
  %14 = mul i64 %10, %13
  %15 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = zext i32 %16 to i64
  %18 = mul i64 %14, %17
  %19 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %20 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 9
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 17
  %23 = load i32, ptr %22, align 4
  %24 = sub i32 %21, %23
  %25 = load i32, ptr %2, align 4
  %26 = and i32 %25, 16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 2
  %30 = load i64, ptr %29, align 8
  %31 = zext i32 %21 to i64
  %32 = lshr i64 %30, %31
  %33 = trunc i64 %32 to i32
  %34 = add i32 %33, -1
  br label %35

35:                                               ; preds = %28, %3
  %36 = phi i32 [ %34, %28 ], [ 0, %3 ]
  %37 = phi i32 [ -1, %28 ], [ 1, %3 ]
  %38 = and i32 %25, 128
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %42 = load i32, ptr %41, align 8
  %43 = zext i32 %21 to i64
  %44 = lshr i64 %18, %43
  %45 = trunc i64 %44 to i32
  %46 = add i32 %45, -1
  %47 = and i32 %36, %46
  %48 = icmp sgt i32 %42, 0
  br i1 %48, label %49, label %159

49:                                               ; preds = %40, %35
  %50 = phi i32 [ %47, %40 ], [ %36, %35 ]
  %51 = phi i32 [ %42, %40 ], [ 1, %35 ]
  %52 = getelementptr inbounds %struct.nand_bbt_descr, ptr %2, i32 0, i32 6
  %53 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 15
  %54 = getelementptr inbounds %struct.nand_bbt_descr, ptr %2, i32 0, i32 2
  %55 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 10
  %56 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %57 = getelementptr inbounds %struct.nand_bbt_descr, ptr %2, i32 0, i32 8
  %58 = getelementptr inbounds %struct.nand_bbt_descr, ptr %2, i32 0, i32 5
  %59 = getelementptr inbounds %struct.nand_bbt_descr, ptr %2, i32 0, i32 3
  br label %60

60:                                               ; preds = %136, %49
  %61 = phi i32 [ %50, %49 ], [ %141, %136 ]
  %62 = phi i32 [ 0, %49 ], [ %142, %136 ]
  %63 = getelementptr %struct.nand_bbt_descr, ptr %2, i32 0, i32 4, i32 %62
  store i8 0, ptr %63, align 1
  %64 = getelementptr %struct.nand_bbt_descr, ptr %2, i32 0, i32 1, i32 %62
  store i32 -1, ptr %64, align 4
  %65 = load i32, ptr %52, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %136

67:                                               ; preds = %132, %60
  %68 = phi i32 [ %133, %132 ], [ 0, %60 ]
  %69 = mul nsw i32 %68, %37
  %70 = add i32 %69, %61
  %71 = sext i32 %70 to i64
  %72 = load i32, ptr %20, align 4
  %73 = zext i32 %72 to i64
  %74 = shl i64 %71, %73
  %75 = load ptr, ptr %53, align 4
  %76 = load i32, ptr %2, align 4
  %77 = and i32 %76, 262144
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %67
  %80 = load i32, ptr %54, align 4
  %81 = getelementptr inbounds %struct.nand_bbt_descr, ptr %75, i32 0, i32 2
  %82 = load i32, ptr %81, align 4
  %83 = icmp slt i32 %80, %82
  br i1 %83, label %89, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.nand_bbt_descr, ptr %75, i32 0, i32 5
  %86 = load i32, ptr %85, align 4
  %87 = add i32 %86, %82
  %88 = icmp slt i32 %80, %87
  br i1 %88, label %100, label %89

89:                                               ; preds = %84, %79, %67
  %90 = load i32, ptr %55, align 8
  %91 = and i32 %90, 524288
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %89
  %94 = load i32, ptr %56, align 8
  %95 = and i32 %94, 134217728
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = tail call fastcc i32 @scan_block_fast(ptr noundef %0, ptr noundef %75, i64 noundef %74, ptr noundef %1) #13
  %99 = icmp slt i32 %98, 1
  br i1 %99, label %100, label %132

100:                                              ; preds = %97, %93, %89, %84
  %101 = load i32, ptr %19, align 4
  tail call fastcc void @scan_read(ptr noundef %0, ptr noundef %1, i64 noundef %74, i32 noundef %101, ptr noundef %2)
  %102 = load i32, ptr %2, align 4
  %103 = and i32 %102, 262144
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  %106 = load i32, ptr %19, align 4
  %107 = getelementptr i8, ptr %1, i32 %106
  %108 = load i32, ptr %54, align 4
  %109 = getelementptr i8, ptr %107, i32 %108
  br label %110

110:                                              ; preds = %105, %100
  %111 = phi ptr [ %109, %105 ], [ %1, %100 ]
  %112 = load ptr, ptr %57, align 4
  %113 = load i32, ptr %58, align 4
  %114 = tail call i32 @bcmp(ptr %111, ptr %112, i32 %113) #13
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %132

116:                                              ; preds = %110
  %117 = shl i32 %70, %24
  store i32 %117, ptr %64, align 4
  %118 = load i32, ptr %2, align 4
  %119 = and i32 %118, 256
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %136, label %121

121:                                              ; preds = %116
  %122 = load i32, ptr %59, align 4
  %123 = and i32 %118, 262144
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = load i32, ptr %19, align 4
  %127 = add i32 %126, %122
  br label %128

128:                                              ; preds = %125, %121
  %129 = phi i32 [ %122, %121 ], [ %127, %125 ]
  %130 = getelementptr i8, ptr %1, i32 %129
  %131 = load i8, ptr %130, align 1
  store i8 %131, ptr %63, align 1
  br label %136

132:                                              ; preds = %110, %97
  %133 = add nuw nsw i32 %68, 1
  %134 = load i32, ptr %52, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %67, label %136

136:                                              ; preds = %132, %128, %116, %60
  %137 = load i32, ptr %20, align 4
  %138 = zext i32 %137 to i64
  %139 = lshr i64 %18, %138
  %140 = trunc i64 %139 to i32
  %141 = add i32 %61, %140
  %142 = add nuw nsw i32 %62, 1
  %143 = icmp eq i32 %142, %51
  br i1 %143, label %144, label %60

144:                                              ; preds = %156, %136
  %145 = phi i32 [ %157, %156 ], [ 0, %136 ]
  %146 = getelementptr %struct.nand_bbt_descr, ptr %2, i32 0, i32 1, i32 %145
  %147 = load i32, ptr %146, align 4
  %148 = icmp eq i32 %147, -1
  br i1 %148, label %149, label %151

149:                                              ; preds = %144
  %150 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %145) #14
  br label %156

151:                                              ; preds = %144
  %152 = getelementptr %struct.nand_bbt_descr, ptr %2, i32 0, i32 4, i32 %145
  %153 = load i8, ptr %152, align 1
  %154 = zext i8 %153 to i32
  %155 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %147, i32 noundef %154) #14
  br label %156

156:                                              ; preds = %151, %149
  %157 = add nuw nsw i32 %145, 1
  %158 = icmp eq i32 %157, %51
  br i1 %158, label %159, label %144

159:                                              ; preds = %156, %40
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @read_abs_bbt(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 4
  %9 = load i32, ptr %8, align 8
  %10 = zext i32 %9 to i64
  %11 = mul nuw i64 %10, %7
  %12 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = zext i32 %13 to i64
  %15 = mul i64 %11, %14
  %16 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = zext i32 %17 to i64
  %19 = mul i64 %15, %18
  %20 = load i32, ptr %2, align 4
  %21 = and i32 %20, 128
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %56, label %23

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %25 = load i32, ptr %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %68, label %27

27:                                               ; preds = %23
  %28 = icmp eq i32 %3, -1
  %29 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 9
  br label %30

30:                                               ; preds = %47, %27
  %31 = phi i32 [ %25, %27 ], [ %48, %47 ]
  %32 = phi i32 [ 0, %27 ], [ %53, %47 ]
  %33 = phi i32 [ 0, %27 ], [ %54, %47 ]
  %34 = icmp eq i32 %33, %3
  %35 = select i1 %28, i1 true, i1 %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %30
  %37 = getelementptr %struct.nand_bbt_descr, ptr %2, i32 0, i32 1, i32 %33
  %38 = load i32, ptr %37, align 4
  %39 = load i32, ptr %29, align 4
  %40 = zext i32 %39 to i64
  %41 = lshr i64 %19, %40
  %42 = trunc i64 %41 to i32
  %43 = tail call fastcc i32 @read_bbt(ptr noundef %0, ptr noundef %1, i32 noundef %38, i32 noundef %42, ptr noundef %2, i32 noundef %32)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %69

45:                                               ; preds = %36
  %46 = load i32, ptr %24, align 8
  br label %47

47:                                               ; preds = %45, %30
  %48 = phi i32 [ %46, %45 ], [ %31, %30 ]
  %49 = load i32, ptr %29, align 4
  %50 = zext i32 %49 to i64
  %51 = lshr i64 %19, %50
  %52 = trunc i64 %51 to i32
  %53 = add i32 %32, %52
  %54 = add nuw i32 %33, 1
  %55 = icmp ult i32 %54, %48
  br i1 %55, label %30, label %68

56:                                               ; preds = %4
  %57 = getelementptr inbounds %struct.nand_bbt_descr, ptr %2, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 2
  %60 = load i64, ptr %59, align 8
  %61 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 9
  %62 = load i32, ptr %61, align 4
  %63 = zext i32 %62 to i64
  %64 = lshr i64 %60, %63
  %65 = trunc i64 %64 to i32
  %66 = tail call fastcc i32 @read_bbt(ptr noundef %0, ptr noundef %1, i32 noundef %58, i32 noundef %65, ptr noundef %2, i32 noundef 0)
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %56, %47, %23
  br label %69

69:                                               ; preds = %68, %56, %36
  %70 = phi i32 [ 0, %68 ], [ %66, %56 ], [ %43, %36 ]
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @write_bbt(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef readonly %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.mtd_oob_ops, align 4
  %7 = alloca %struct.erase_info, align 8
  %8 = alloca [4 x i8], align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mtd_oob_ops, align 4
  %11 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 4
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 1
  %18 = load i32, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i32 24, i1 false), !annotation !20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  store i32 0, ptr %8, align 4, !annotation !20
  %19 = getelementptr inbounds %struct.nand_bbt_descr, ptr %2, i32 0, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = trunc i32 %20 to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  store i32 0, ptr %9, align 4, !annotation !20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #13
  %22 = getelementptr inbounds i8, ptr %10, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %22, i8 0, i32 28, i1 false), !annotation !20
  %23 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.mtd_oob_ops, ptr %10, i32 0, i32 3
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.mtd_oob_ops, ptr %10, i32 0, i32 6
  store ptr null, ptr %26, align 4
  store i32 0, ptr %10, align 4
  %27 = icmp eq i8 %21, 0
  %28 = load i32, ptr %2, align 4
  %29 = and i32 %28, 128
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %50, label %31

31:                                               ; preds = %5
  %32 = zext i32 %14 to i64
  %33 = zext i32 %12 to i64
  %34 = mul nuw i64 %32, %33
  %35 = zext i32 %16 to i64
  %36 = mul i64 %34, %35
  %37 = zext i32 %18 to i64
  %38 = mul i64 %36, %37
  %39 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 9
  %40 = load i32, ptr %39, align 4
  %41 = zext i32 %40 to i64
  %42 = lshr i64 %38, %41
  %43 = trunc i64 %42 to i32
  %44 = icmp eq i32 %4, -1
  br i1 %44, label %45, label %48

45:                                               ; preds = %31
  %46 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %47 = load i32, ptr %46, align 8
  br label %58

48:                                               ; preds = %31
  %49 = add nuw i32 %4, 1
  br label %58

50:                                               ; preds = %5
  %51 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 2
  %52 = load i64, ptr %51, align 8
  %53 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 9
  %54 = load i32, ptr %53, align 4
  %55 = zext i32 %54 to i64
  %56 = lshr i64 %52, %55
  %57 = trunc i64 %56 to i32
  br label %62

58:                                               ; preds = %48, %45
  %59 = phi i32 [ %47, %45 ], [ %49, %48 ]
  %60 = phi i32 [ 0, %45 ], [ %4, %48 ]
  %61 = icmp slt i32 %60, %59
  br i1 %61, label %62, label %372

62:                                               ; preds = %58, %50
  %63 = phi i32 [ 0, %50 ], [ %60, %58 ]
  %64 = phi i32 [ 1, %50 ], [ %59, %58 ]
  %65 = phi i32 [ %57, %50 ], [ %43, %58 ]
  %66 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 9
  %67 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 17
  %68 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %69 = getelementptr inbounds %struct.nand_bbt_descr, ptr %2, i32 0, i32 6
  %70 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 16
  %71 = icmp eq ptr %3, null
  %72 = xor i8 %21, -1
  %73 = select i1 %27, i8 0, i8 %72
  %74 = getelementptr inbounds [4 x i8], ptr %8, i32 0, i32 2
  %75 = getelementptr inbounds [4 x i8], ptr %8, i32 0, i32 1
  %76 = getelementptr inbounds [4 x i8], ptr %8, i32 0, i32 3
  %77 = getelementptr inbounds %struct.mtd_oob_ops, ptr %10, i32 0, i32 7
  %78 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %79 = getelementptr inbounds %struct.mtd_oob_ops, ptr %10, i32 0, i32 4
  %80 = getelementptr inbounds %struct.nand_bbt_descr, ptr %2, i32 0, i32 5
  %81 = getelementptr inbounds %struct.nand_bbt_descr, ptr %2, i32 0, i32 8
  %82 = getelementptr inbounds %struct.nand_bbt_descr, ptr %2, i32 0, i32 2
  %83 = getelementptr inbounds %struct.nand_bbt_descr, ptr %2, i32 0, i32 3
  %84 = icmp sgt i32 %65, 0
  %85 = getelementptr inbounds %struct.erase_info, ptr %7, i32 0, i32 1
  %86 = getelementptr inbounds %struct.mtd_oob_ops, ptr %6, i32 0, i32 3
  %87 = getelementptr inbounds %struct.mtd_oob_ops, ptr %6, i32 0, i32 6
  %88 = getelementptr inbounds %struct.mtd_oob_ops, ptr %6, i32 0, i32 7
  %89 = getelementptr inbounds %struct.mtd_oob_ops, ptr %6, i32 0, i32 1
  %90 = getelementptr inbounds i8, ptr %7, i32 16
  br label %91

91:                                               ; preds = %365, %62
  %92 = phi i32 [ %63, %62 ], [ %367, %365 ]
  %93 = getelementptr %struct.nand_bbt_descr, ptr %2, i32 0, i32 1, i32 %92
  %94 = load i32, ptr %93, align 4
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %101, label %96

96:                                               ; preds = %91
  %97 = load i32, ptr %66, align 4
  %98 = load i32, ptr %67, align 4
  %99 = sub i32 %97, %98
  %100 = ashr i32 %94, %99
  br label %160

101:                                              ; preds = %91
  %102 = load i32, ptr %13, align 8
  %103 = zext i32 %102 to i64
  %104 = load i32, ptr %11, align 4
  %105 = zext i32 %104 to i64
  %106 = mul nuw i64 %105, %103
  %107 = load i32, ptr %15, align 4
  %108 = zext i32 %107 to i64
  %109 = mul i64 %106, %108
  %110 = load i32, ptr %17, align 4
  %111 = zext i32 %110 to i64
  %112 = mul i64 %109, %111
  %113 = load i32, ptr %66, align 4
  %114 = zext i32 %113 to i64
  %115 = lshr i64 %112, %114
  %116 = trunc i64 %115 to i32
  %117 = load i32, ptr %2, align 4
  %118 = and i32 %117, 128
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %101
  %121 = load i32, ptr %68, align 8
  %122 = mul i32 %121, %116
  br label %123

123:                                              ; preds = %120, %101
  %124 = phi i32 [ %116, %101 ], [ %122, %120 ]
  %125 = and i32 %117, 16
  %126 = icmp eq i32 %125, 0
  %127 = add nsw i32 %92, 1
  %128 = mul i32 %124, %127
  %129 = add i32 %128, -1
  %130 = mul i32 %124, %92
  %131 = select i1 %126, i32 %130, i32 %129
  %132 = load i32, ptr %69, align 4
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %164

134:                                              ; preds = %123
  %135 = load ptr, ptr %70, align 8
  %136 = getelementptr %struct.nand_bbt_descr, ptr %3, i32 0, i32 1, i32 %92
  br label %137

137:                                              ; preds = %157, %134
  %138 = phi i32 [ 0, %134 ], [ %158, %157 ]
  %139 = sub nsw i32 0, %138
  %140 = select i1 %126, i32 %138, i32 %139
  %141 = add i32 %140, %131
  %142 = ashr i32 %141, 2
  %143 = getelementptr i8, ptr %135, i32 %142
  %144 = load i8, ptr %143, align 1
  %145 = shl i32 %141, 1
  %146 = and i32 %145, 6
  %147 = zext i8 %144 to i32
  %148 = lshr i32 %147, %146
  %149 = trunc i32 %148 to i2
  switch i2 %149, label %150 [
    i2 1, label %157
    i2 -1, label %157
  ]

150:                                              ; preds = %137
  br i1 %71, label %160, label %151

151:                                              ; preds = %150
  %152 = load i32, ptr %67, align 4
  %153 = sub i32 %113, %152
  %154 = shl i32 %141, %153
  %155 = load i32, ptr %136, align 4
  %156 = icmp eq i32 %155, %154
  br i1 %156, label %157, label %160

157:                                              ; preds = %151, %137, %137
  %158 = add nuw nsw i32 %138, 1
  %159 = icmp eq i32 %158, %132
  br i1 %159, label %164, label %137

160:                                              ; preds = %151, %150, %96
  %161 = phi i32 [ %97, %96 ], [ %113, %151 ], [ %113, %150 ]
  %162 = phi i32 [ %100, %96 ], [ %141, %151 ], [ %141, %150 ]
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %160, %157, %123
  %165 = phi i32 [ -28, %157 ], [ -28, %123 ], [ %162, %160 ]
  %166 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #14
  br label %369

167:                                              ; preds = %160
  %168 = load i32, ptr %67, align 4
  %169 = sub i32 %161, %168
  %170 = shl i32 %162, %169
  %171 = load i32, ptr %2, align 4
  %172 = and i32 %171, 15
  store i8 %73, ptr %74, align 2
  switch i32 %172, label %372 [
    i32 1, label %173
    i32 2, label %174
    i32 4, label %175
    i32 8, label %176
  ]

173:                                              ; preds = %167
  store i8 0, ptr %8, align 4
  br label %177

174:                                              ; preds = %167
  store i8 0, ptr %8, align 4
  br label %177

175:                                              ; preds = %167
  store i8 0, ptr %8, align 4
  br label %177

176:                                              ; preds = %167
  store i8 0, ptr %8, align 4
  br label %177

177:                                              ; preds = %176, %175, %174, %173
  %178 = phi i8 [ 15, %176 ], [ 12, %175 ], [ 1, %174 ], [ 1, %173 ]
  %179 = phi i8 [ -1, %176 ], [ 15, %175 ], [ 3, %174 ], [ 1, %173 ]
  %180 = phi i32 [ 0, %176 ], [ 1, %175 ], [ 2, %174 ], [ 3, %173 ]
  %181 = phi i32 [ 0, %176 ], [ 4, %175 ], [ 6, %174 ], [ 7, %173 ]
  store i8 %178, ptr %75, align 1
  store i8 %179, ptr %76, align 1
  %182 = sext i32 %170 to i64
  %183 = zext i32 %168 to i64
  %184 = shl i64 %182, %183
  %185 = and i32 %171, 16384
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %228, label %187

187:                                              ; preds = %177
  %188 = zext i32 %161 to i64
  %189 = shl nsw i64 -1, %188
  %190 = and i64 %184, %189
  %191 = shl nuw i32 1, %161
  %192 = call i32 @mtd_read(ptr noundef %0, i64 noundef %190, i32 noundef %191, ptr noundef nonnull %9, ptr noundef %1) #13
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %194, label %201

194:                                              ; preds = %187
  %195 = load i32, ptr %9, align 4
  %196 = icmp eq i32 %195, %191
  br i1 %196, label %199, label %197

197:                                              ; preds = %194
  %198 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  br label %372

199:                                              ; preds = %194
  %200 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #14
  br label %201

201:                                              ; preds = %199, %187
  %202 = load i32, ptr %67, align 4
  %203 = lshr i32 %191, %202
  %204 = load i32, ptr %23, align 4
  %205 = mul i32 %203, %204
  store i32 %205, ptr %25, align 4
  %206 = getelementptr i8, ptr %1, i32 %191
  store ptr %206, ptr %77, align 4
  %207 = load i32, ptr %78, align 4
  %208 = zext i32 %207 to i64
  %209 = add i64 %190, %208
  %210 = call i32 @mtd_read_oob(ptr noundef %0, i64 noundef %209, ptr noundef nonnull %10) #13
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %369, label %212

212:                                              ; preds = %201
  %213 = load i32, ptr %79, align 4
  %214 = load i32, ptr %25, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %369

216:                                              ; preds = %212
  %217 = load i32, ptr %67, align 4
  %218 = zext i32 %217 to i64
  %219 = ashr i64 %190, %218
  %220 = trunc i64 %219 to i32
  %221 = sub i32 %170, %220
  %222 = shl i32 %221, %217
  %223 = getelementptr i8, ptr %1, i32 %222
  %224 = ashr i32 %65, %180
  call void @llvm.memset.p0.i32(ptr align 1 %223, i8 -1, i32 %224, i1 false)
  %225 = load i32, ptr %23, align 4
  %226 = mul i32 %221, %225
  %227 = add i32 %226, %191
  br label %261

228:                                              ; preds = %177
  %229 = and i32 %171, 262144
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %245, label %231

231:                                              ; preds = %228
  %232 = load i32, ptr %80, align 4
  %233 = lshr i32 %171, 8
  %234 = and i32 %233, 1
  %235 = add i32 %232, %234
  %236 = ashr i32 %65, %180
  %237 = load i32, ptr %78, align 4
  %238 = add i32 %236, -1
  %239 = add i32 %238, %235
  %240 = add i32 %239, %237
  %241 = sub i32 0, %237
  %242 = and i32 %240, %241
  call void @llvm.memset.p0.i32(ptr align 1 %1, i8 -1, i32 %242, i1 false)
  %243 = load ptr, ptr %81, align 4
  %244 = load i32, ptr %80, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1, ptr align 1 %243, i32 %244, i1 false)
  br label %261

245:                                              ; preds = %228
  %246 = ashr i32 %65, %180
  %247 = load i32, ptr %78, align 4
  %248 = add i32 %246, -1
  %249 = add i32 %248, %247
  %250 = sub i32 0, %247
  %251 = and i32 %249, %250
  %252 = lshr i32 %251, %168
  %253 = load i32, ptr %23, align 4
  %254 = mul i32 %252, %253
  %255 = add i32 %254, %251
  call void @llvm.memset.p0.i32(ptr align 1 %1, i8 -1, i32 %255, i1 false)
  %256 = load i32, ptr %82, align 4
  %257 = add i32 %251, %256
  %258 = getelementptr i8, ptr %1, i32 %257
  %259 = load ptr, ptr %81, align 4
  %260 = load i32, ptr %80, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %258, ptr align 1 %259, i32 %260, i1 false)
  br label %261

261:                                              ; preds = %245, %231, %216
  %262 = phi i32 [ %227, %216 ], [ 0, %231 ], [ %251, %245 ]
  %263 = phi i32 [ %191, %216 ], [ %242, %231 ], [ %251, %245 ]
  %264 = phi i64 [ %190, %216 ], [ %184, %231 ], [ %184, %245 ]
  %265 = phi i32 [ %222, %216 ], [ %235, %231 ], [ 0, %245 ]
  %266 = load i32, ptr %2, align 4
  %267 = and i32 %266, 256
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %275, label %269

269:                                              ; preds = %261
  %270 = getelementptr %struct.nand_bbt_descr, ptr %2, i32 0, i32 4, i32 %92
  %271 = load i8, ptr %270, align 1
  %272 = load i32, ptr %83, align 4
  %273 = add i32 %272, %262
  %274 = getelementptr i8, ptr %1, i32 %273
  store i8 %271, ptr %274, align 1
  br label %275

275:                                              ; preds = %269, %261
  br i1 %84, label %276, label %306

276:                                              ; preds = %275
  %277 = xor i32 %180, 3
  %278 = mul i32 %92, %65
  br label %279

279:                                              ; preds = %279, %276
  %280 = phi i32 [ 0, %276 ], [ %304, %279 ]
  %281 = shl i32 %280, %277
  %282 = and i32 %281, %181
  %283 = add i32 %280, %278
  %284 = load ptr, ptr %70, align 8
  %285 = ashr i32 %283, 2
  %286 = getelementptr i8, ptr %284, i32 %285
  %287 = load i8, ptr %286, align 1
  %288 = shl i32 %283, 1
  %289 = and i32 %288, 6
  %290 = zext i8 %287 to i32
  %291 = lshr i32 %290, %289
  %292 = and i32 %291, 3
  %293 = getelementptr [4 x i8], ptr %8, i32 0, i32 %292
  %294 = load i8, ptr %293, align 1
  %295 = zext i8 %294 to i32
  %296 = shl i32 %295, %282
  %297 = lshr i32 %280, %180
  %298 = add i32 %297, %265
  %299 = getelementptr i8, ptr %1, i32 %298
  %300 = load i8, ptr %299, align 1
  %301 = trunc i32 %296 to i8
  %302 = xor i8 %301, -1
  %303 = and i8 %300, %302
  store i8 %303, ptr %299, align 1
  %304 = add nuw nsw i32 %280, 1
  %305 = icmp eq i32 %304, %65
  br i1 %305, label %306, label %279

306:                                              ; preds = %279, %275
  store i64 0, ptr %90, align 8
  store i64 %264, ptr %7, align 8
  %307 = load i32, ptr %66, align 4
  %308 = shl nuw i32 1, %307
  %309 = sext i32 %308 to i64
  store i64 %309, ptr %85, align 8
  %310 = call i32 @nand_erase_nand(ptr noundef %0, ptr noundef nonnull %7, i32 noundef 1) #13
  %311 = icmp slt i32 %310, 0
  br i1 %311, label %312, label %331

312:                                              ; preds = %306
  %313 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %310) #14
  %314 = shl i32 %162, 1
  %315 = and i32 %314, 6
  %316 = shl nuw nsw i32 1, %315
  %317 = load ptr, ptr %70, align 8
  %318 = ashr i32 %162, 2
  %319 = getelementptr i8, ptr %317, i32 %318
  %320 = load i8, ptr %319, align 1
  %321 = trunc i32 %316 to i8
  %322 = or i8 %320, %321
  store i8 %322, ptr %319, align 1
  %323 = sext i32 %162 to i64
  %324 = load i32, ptr %66, align 4
  %325 = zext i32 %324 to i64
  %326 = shl i64 %323, %325
  %327 = call i32 @nand_markbad_bbm(ptr noundef %0, i64 noundef %326) #13
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %365, label %329

329:                                              ; preds = %312
  %330 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %327, i32 noundef %162) #14
  br label %365

331:                                              ; preds = %306
  %332 = load i32, ptr %2, align 4
  %333 = and i32 %332, 262144
  %334 = icmp eq i32 %333, 0
  %335 = getelementptr i8, ptr %1, i32 %263
  %336 = select i1 %334, ptr %335, ptr null
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i64 24, i1 false) #13
  %337 = load i32, ptr %23, align 4
  store i32 %337, ptr %86, align 4
  store ptr %1, ptr %87, align 4
  store ptr %336, ptr %88, align 4
  store i32 %263, ptr %89, align 4
  %338 = call i32 @mtd_write_oob(ptr noundef %0, i64 noundef %264, ptr noundef nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #13
  %339 = icmp slt i32 %338, 0
  br i1 %339, label %340, label %359

340:                                              ; preds = %331
  %341 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %338) #14
  %342 = shl i32 %162, 1
  %343 = and i32 %342, 6
  %344 = shl nuw nsw i32 1, %343
  %345 = load ptr, ptr %70, align 8
  %346 = ashr i32 %162, 2
  %347 = getelementptr i8, ptr %345, i32 %346
  %348 = load i8, ptr %347, align 1
  %349 = trunc i32 %344 to i8
  %350 = or i8 %348, %349
  store i8 %350, ptr %347, align 1
  %351 = sext i32 %162 to i64
  %352 = load i32, ptr %66, align 4
  %353 = zext i32 %352 to i64
  %354 = shl i64 %351, %353
  %355 = call i32 @nand_markbad_bbm(ptr noundef %0, i64 noundef %354) #13
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %365, label %357

357:                                              ; preds = %340
  %358 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %355, i32 noundef %162) #14
  br label %365

359:                                              ; preds = %331
  %360 = getelementptr %struct.nand_bbt_descr, ptr %2, i32 0, i32 4, i32 %92
  %361 = load i8, ptr %360, align 1
  %362 = zext i8 %361 to i32
  %363 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i64 noundef %264, i32 noundef %362) #14
  %364 = add i32 %92, 1
  br label %365

365:                                              ; preds = %359, %357, %340, %329, %312
  %366 = phi i32 [ %170, %359 ], [ -1, %312 ], [ -1, %329 ], [ -1, %340 ], [ -1, %357 ]
  %367 = phi i32 [ %364, %359 ], [ %92, %312 ], [ %92, %329 ], [ %92, %340 ], [ %92, %357 ]
  store i32 %366, ptr %93, align 4
  %368 = icmp slt i32 %367, %64
  br i1 %368, label %91, label %372

369:                                              ; preds = %212, %201, %164
  %370 = phi i32 [ %165, %164 ], [ %210, %201 ], [ %210, %212 ]
  %371 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %370) #14
  br label %372

372:                                              ; preds = %369, %365, %197, %167, %58
  %373 = phi i32 [ %370, %369 ], [ %192, %197 ], [ 0, %58 ], [ 0, %365 ], [ -22, %167 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #13
  ret i32 %373
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @read_bbt(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store i32 0, ptr %7, align 4, !annotation !20
  %8 = load i32, ptr %4, align 4
  %9 = and i32 %8, 15
  %10 = shl nsw i32 -1, %9
  %11 = getelementptr inbounds %struct.nand_bbt_descr, ptr %4, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = mul i32 %9, %3
  %14 = ashr i32 %13, 3
  %15 = and i32 %8, 262144
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.nand_bbt_descr, ptr %4, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = lshr i32 %8, 8
  %21 = and i32 %20, 1
  %22 = add i32 %19, %21
  br label %23

23:                                               ; preds = %17, %6
  %24 = phi i32 [ %22, %17 ], [ 0, %6 ]
  %25 = icmp ult i32 %13, 8
  br i1 %25, label %128, label %26

26:                                               ; preds = %23
  %27 = sext i32 %2 to i64
  %28 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 17
  %29 = load i32, ptr %28, align 4
  %30 = zext i32 %29 to i64
  %31 = shl i64 %27, %30
  %32 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 9
  %33 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %34 = and i32 %10, 255
  %35 = xor i32 %34, 255
  %36 = icmp ne i32 %12, 0
  %37 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 16
  %38 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52, i32 2
  %39 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52, i32 3
  br label %40

40:                                               ; preds = %122, %26
  %41 = phi i32 [ 0, %26 ], [ %70, %122 ]
  %42 = phi i32 [ 0, %26 ], [ %123, %122 ]
  %43 = phi i32 [ %24, %26 ], [ 0, %122 ]
  %44 = phi i64 [ %31, %26 ], [ %126, %122 ]
  %45 = phi i32 [ %14, %26 ], [ %124, %122 ]
  %46 = load i32, ptr %32, align 4
  %47 = shl nuw i32 1, %46
  %48 = call i32 @llvm.umin.i32(i32 %45, i32 %47)
  %49 = sub i32 %48, %43
  %50 = zext i32 %43 to i64
  %51 = add i64 %44, %50
  %52 = call i32 @mtd_read(ptr noundef %0, i64 noundef %51, i32 noundef %49, ptr noundef nonnull %7, ptr noundef %1) #13
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %40
  switch i32 %52, label %67 [
    i32 -74, label %55
    i32 -117, label %61
  ]

55:                                               ; preds = %54
  %56 = load i32, ptr %33, align 4
  %57 = xor i32 %56, -1
  %58 = zext i32 %57 to i64
  %59 = and i64 %51, %58
  %60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i64 noundef %59) #14
  br label %128

61:                                               ; preds = %54
  %62 = load i32, ptr %33, align 4
  %63 = xor i32 %62, -1
  %64 = zext i32 %63 to i64
  %65 = and i64 %51, %64
  %66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i64 noundef %65) #14
  br label %69

67:                                               ; preds = %54
  %68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #14
  br label %128

69:                                               ; preds = %61, %40
  %70 = phi i32 [ -117, %61 ], [ %41, %40 ]
  %71 = icmp eq i32 %48, %43
  br i1 %71, label %122, label %72

72:                                               ; preds = %119, %69
  %73 = phi i32 [ %120, %119 ], [ 0, %69 ]
  %74 = phi i32 [ %117, %119 ], [ %42, %69 ]
  %75 = getelementptr i8, ptr %1, i32 %73
  %76 = load i8, ptr %75, align 1
  %77 = zext i8 %76 to i32
  br label %78

78:                                               ; preds = %115, %72
  %79 = phi i32 [ 0, %72 ], [ %116, %115 ]
  %80 = phi i32 [ %74, %72 ], [ %117, %115 ]
  %81 = lshr i32 %77, %79
  %82 = and i32 %81, %35
  %83 = icmp eq i32 %82, %35
  br i1 %83, label %115, label %84

84:                                               ; preds = %78
  %85 = icmp eq i32 %82, %12
  %86 = select i1 %36, i1 %85, i1 false
  %87 = add i32 %80, %5
  %88 = sext i32 %87 to i64
  %89 = load i32, ptr %32, align 4
  %90 = zext i32 %89 to i64
  %91 = shl i64 %88, %90
  br i1 %86, label %92, label %97

92:                                               ; preds = %84
  %93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i64 noundef %91) #14
  %94 = shl i32 %87, 1
  %95 = and i32 %94, 6
  %96 = shl nuw nsw i32 2, %95
  br label %104

97:                                               ; preds = %84
  %98 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i64 noundef %91) #14
  %99 = icmp eq i32 %82, 0
  %100 = shl i32 %87, 1
  %101 = and i32 %100, 6
  %102 = select i1 %99, i32 3, i32 1
  %103 = shl nuw nsw i32 %102, %101
  br label %104

104:                                              ; preds = %97, %92
  %105 = phi i32 [ %103, %97 ], [ %96, %92 ]
  %106 = phi ptr [ %38, %97 ], [ %39, %92 ]
  %107 = load ptr, ptr %37, align 8
  %108 = ashr i32 %87, 2
  %109 = getelementptr i8, ptr %107, i32 %108
  %110 = load i8, ptr %109, align 1
  %111 = trunc i32 %105 to i8
  %112 = or i8 %110, %111
  store i8 %112, ptr %109, align 1
  %113 = load i32, ptr %106, align 4
  %114 = add i32 %113, 1
  store i32 %114, ptr %106, align 4
  br label %115

115:                                              ; preds = %104, %78
  %116 = add i32 %79, %9
  %117 = add i32 %80, 1
  %118 = icmp slt i32 %116, 8
  br i1 %118, label %78, label %119

119:                                              ; preds = %115
  %120 = add nuw i32 %73, 1
  %121 = icmp eq i32 %120, %49
  br i1 %121, label %122, label %72

122:                                              ; preds = %119, %69
  %123 = phi i32 [ %42, %69 ], [ %117, %119 ]
  %124 = sub i32 %45, %49
  %125 = zext i32 %49 to i64
  %126 = add i64 %51, %125
  %127 = icmp eq i32 %124, 0
  br i1 %127, label %128, label %40

128:                                              ; preds = %122, %67, %55, %23
  %129 = phi i32 [ -74, %55 ], [ %52, %67 ], [ 0, %23 ], [ %70, %122 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  ret i32 %129
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_erase_nand(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_markbad_bbm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_write_oob(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #9

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }
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
!8 = !{i8 0, i8 2}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2151675260, i64 2151675757, i64 2151675297, i64 2151675353, i64 2151675387, i64 2151675411, i64 2151675452, i64 2151675473, i64 2151675501, i64 2151675535}
!11 = !{i64 2151676301, i64 2151676798, i64 2151676338, i64 2151676394, i64 2151676428, i64 2151676452, i64 2151676493, i64 2151676514, i64 2151676542, i64 2151676576}
!12 = !{i64 2151677433, i64 2151677930, i64 2151677470, i64 2151677526, i64 2151677560, i64 2151677584, i64 2151677625, i64 2151677646, i64 2151677674, i64 2151677708}
!13 = !{i64 2151678543, i64 2151679040, i64 2151678580, i64 2151678636, i64 2151678670, i64 2151678694, i64 2151678735, i64 2151678756, i64 2151678784, i64 2151678818}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2151679590, i64 2151680087, i64 2151679627, i64 2151679683, i64 2151679717, i64 2151679741, i64 2151679782, i64 2151679803, i64 2151679831, i64 2151679865}
!16 = !{i64 2151680676, i64 2151681173, i64 2151680713, i64 2151680769, i64 2151680803, i64 2151680827, i64 2151680868, i64 2151680889, i64 2151680917, i64 2151680951}
!17 = !{i64 2151681766, i64 2151682263, i64 2151681803, i64 2151681859, i64 2151681893, i64 2151681917, i64 2151681958, i64 2151681979, i64 2151682007, i64 2151682041}
!18 = !{i64 2151682901, i64 2151683398, i64 2151682938, i64 2151682994, i64 2151683028, i64 2151683052, i64 2151683093, i64 2151683114, i64 2151683142, i64 2151683176}
!19 = !{i64 2151665077, i64 2151665573, i64 2151665114, i64 2151665170, i64 2151665204, i64 2151665228, i64 2151665269, i64 2151665290, i64 2151665318, i64 2151665352}
!20 = !{!"auto-init"}
