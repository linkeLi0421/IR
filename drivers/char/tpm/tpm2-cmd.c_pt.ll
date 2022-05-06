; ModuleID = '/llk/IR/drivers/char/tpm/tpm2-cmd.c_pt.bc'
source_filename = "../drivers/char/tpm/tpm2-cmd.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tpm2_flush_context:\09\09\09\09\09"
module asm "\09.asciz \09\22tpm2_flush_context\22\09\09\09\09\09"
module asm "__kstrtabns_tpm2_flush_context:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tpm2_get_tpm_pt:\09\09\09\09\09"
module asm "\09.asciz \09\22tpm2_get_tpm_pt\22\09\09\09\09\09"
module asm "__kstrtabns_tpm2_get_tpm_pt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tpm2_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22tpm2_probe\22\09\09\09\09\09"
module asm "__kstrtabns_tpm2_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tpm2_get_cc_attrs_tbl:\09\09\09\09\09"
module asm "\09.asciz \09\22tpm2_get_cc_attrs_tbl\22\09\09\09\09\09"
module asm "__kstrtabns_tpm2_get_cc_attrs_tbl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tpm2_hash = type { i32, i32 }
%struct.tpm_chip = type { %struct.device, %struct.device, %struct.cdev, %struct.cdev, %struct.rw_semaphore, ptr, %struct.tpm_bios_log, %struct.tpm_chip_seqops, %struct.tpm_chip_seqops, i32, i32, i32, [64 x i8], %struct.hwrng, %struct.mutex, i32, i32, i32, i32, i8, [4 x i32], i8, [3 x ptr], [8 x ptr], i32, i32, ptr, %struct.tpm_space, i32, i32, ptr, i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tpm_bios_log = type { ptr, ptr }
%struct.tpm_chip_seqops = type { ptr, ptr }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.tpm_space = type { [3 x i32], ptr, [3 x i32], ptr, i32 }
%struct.tpm_buf = type { i32, ptr }
%struct.tpm_bank_info = type { i16, i16, i16 }
%struct.tpm_header = type <{ i16, i32, %union.anon.65 }>
%union.anon.65 = type { i32 }
%struct.tpm_digest = type { i16, [64 x i8] }
%struct.tpm2_pcr_selection = type { i16, i8, [3 x i8] }

@.str = private unnamed_addr constant [31 x i8] c"attempting to read a pcr value\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"attempting extend a PCR value\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"attempting get random\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"0x%08x was not flushed, out of memory\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"flushing context\00", align 1
@__kstrtab_tpm2_flush_context = external dso_local constant [0 x i8], align 1
@__kstrtabns_tpm2_flush_context = external dso_local constant [0 x i8], align 1
@__ksymtab_tpm2_flush_context = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tpm2_flush_context to i32), ptr @__kstrtab_tpm2_flush_context, ptr @__kstrtabns_tpm2_flush_context }, section "___ksymtab_gpl+tpm2_flush_context", align 4
@__kstrtab_tpm2_get_tpm_pt = external dso_local constant [0 x i8], align 1
@__kstrtabns_tpm2_get_tpm_pt = external dso_local constant [0 x i8], align 1
@__ksymtab_tpm2_get_tpm_pt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tpm2_get_tpm_pt to i32), ptr @__kstrtab_tpm2_get_tpm_pt, ptr @__kstrtabns_tpm2_get_tpm_pt }, section "___ksymtab_gpl+tpm2_get_tpm_pt", align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"stopping the TPM\00", align 1
@__kstrtab_tpm2_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_tpm2_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_tpm2_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tpm2_probe to i32), ptr @__kstrtab_tpm2_probe, ptr @__kstrtabns_tpm2_probe }, section "___ksymtab_gpl+tpm2_probe", align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"get tpm pcr allocation\00", align 1
@__kstrtab_tpm2_get_cc_attrs_tbl = external dso_local constant [0 x i8], align 1
@__kstrtabns_tpm2_get_cc_attrs_tbl = external dso_local constant [0 x i8], align 1
@__ksymtab_tpm2_get_cc_attrs_tbl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tpm2_get_cc_attrs_tbl to i32), ptr @__kstrtab_tpm2_get_cc_attrs_tbl, ptr @__kstrtabns_tpm2_get_cc_attrs_tbl }, section "___ksymtab_gpl+tpm2_get_cc_attrs_tbl", align 4
@.str.7 = private unnamed_addr constant [54 x i8] c"TPM in field upgrade mode, requires firmware upgrade\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"include/linux/tpm.h\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"tpm_buf: overflow\0A\00", align 1
@tpm2_hash_map = internal unnamed_addr constant [5 x %struct.tpm2_hash] [%struct.tpm2_hash { i32 2, i32 4 }, %struct.tpm2_hash { i32 4, i32 11 }, %struct.tpm2_hash { i32 5, i32 12 }, %struct.tpm2_hash { i32 6, i32 13 }, %struct.tpm2_hash { i32 17, i32 18 }], align 4
@hash_digest_size = external dso_local local_unnamed_addr constant [20 x i32], align 4
@.str.10 = private unnamed_addr constant [25 x i8] c"attempting the self test\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"starting up the TPM manually\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"attempting to start the TPM\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_tpm2_flush_context, ptr @__ksymtab_tpm2_get_cc_attrs_tbl, ptr @__ksymtab_tpm2_get_tpm_pt, ptr @__ksymtab_tpm2_probe], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @tpm2_get_timeouts(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 15
  store i32 75, ptr %2, align 8
  %3 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 16
  store i32 200, ptr %3, align 4
  %4 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 17
  store i32 20, ptr %4, align 8
  %5 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 18
  store i32 3, ptr %5, align 4
  %6 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 20
  store i32 2, ptr %6, align 4
  %7 = getelementptr %struct.tpm_chip, ptr %0, i32 0, i32 20, i32 1
  store i32 75, ptr %7, align 4
  %8 = getelementptr %struct.tpm_chip, ptr %0, i32 0, i32 20, i32 2
  store i32 200, ptr %8, align 4
  %9 = getelementptr %struct.tpm_chip, ptr %0, i32 0, i32 20, i32 3
  store i32 30000, ptr %9, align 4
  %10 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 9
  %11 = load i32, ptr %10, align 4
  %12 = or i32 %11, 16
  store i32 %12, ptr %10, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @tpm2_calc_ordinal_duration(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  switch i32 %1, label %16 [
    i32 324, label %12
    i32 323, label %3
    i32 379, label %4
    i32 348, label %12
    i32 318, label %12
    i32 389, label %12
    i32 390, label %12
    i32 375, label %5
    i32 386, label %12
    i32 289, label %6
    i32 297, label %7
    i32 378, label %12
    i32 334, label %8
    i32 305, label %9
    i32 339, label %10
    i32 401, label %11
  ]

3:                                                ; preds = %2
  br label %12

4:                                                ; preds = %2
  br label %12

5:                                                ; preds = %2
  br label %12

6:                                                ; preds = %2
  br label %12

7:                                                ; preds = %2
  br label %12

8:                                                ; preds = %2
  br label %12

9:                                                ; preds = %2
  br label %12

10:                                               ; preds = %2
  br label %12

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %11, %10, %9, %8, %7, %6, %5, %4, %3, %2, %2, %2, %2, %2, %2, %2
  %13 = phi i32 [ 1, %2 ], [ 1, %2 ], [ 1, %2 ], [ 1, %2 ], [ 1, %2 ], [ 1, %2 ], [ 1, %2 ], [ 2, %3 ], [ 2, %4 ], [ 3, %5 ], [ 2, %6 ], [ 2, %7 ], [ 2, %8 ], [ 3, %9 ], [ 3, %10 ], [ 3, %11 ]
  %14 = getelementptr %struct.tpm_chip, ptr %0, i32 0, i32 20, i32 %13
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %12, %2
  %17 = phi i32 [ %15, %12 ], [ 12000, %2 ]
  ret i32 %17
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tpm2_pcr_read(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr noundef writeonly %3) local_unnamed_addr #3 {
  %5 = alloca %struct.tpm_buf, align 8
  %6 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store i64 0, ptr %5, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %6) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %6, i8 0, i32 3, i1 false)
  %7 = icmp ugt i32 %1, 23
  br i1 %7, label %142, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %3, null
  br i1 %9, label %10, label %35

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 25
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 26
  %16 = load ptr, ptr %15, align 4
  %17 = load i16, ptr %2, align 1
  br label %18

18:                                               ; preds = %23, %14
  %19 = phi i32 [ 0, %14 ], [ %24, %23 ]
  %20 = getelementptr %struct.tpm_bank_info, ptr %16, i32 %19
  %21 = load i16, ptr %20, align 2
  %22 = icmp eq i16 %21, %17
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = add nuw i32 %19, 1
  %25 = icmp eq i32 %24, %12
  br i1 %25, label %142, label %18

26:                                               ; preds = %18, %10
  %27 = phi i32 [ 0, %10 ], [ %19, %18 ]
  %28 = icmp eq i32 %27, %12
  br i1 %28, label %142, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 26
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr %struct.tpm_bank_info, ptr %31, i32 %27, i32 1
  %33 = load i16, ptr %32, align 2
  %34 = zext i16 %33 to i32
  br label %35

35:                                               ; preds = %29, %8
  %36 = phi i32 [ 0, %8 ], [ %34, %29 ]
  %37 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #11
  %38 = inttoptr i32 %37 to ptr
  %39 = getelementptr inbounds %struct.tpm_buf, ptr %5, i32 0, i32 1
  store ptr %38, ptr %39, align 4
  %40 = icmp eq i32 %37, 0
  br i1 %40, label %142, label %41

41:                                               ; preds = %35
  store i16 384, ptr %38, align 1
  %42 = getelementptr inbounds %struct.tpm_header, ptr %38, i32 0, i32 1
  store i32 167772160, ptr %42, align 1
  %43 = getelementptr inbounds %struct.tpm_header, ptr %38, i32 0, i32 2
  store i32 2113994752, ptr %43, align 1
  %44 = and i32 %1, 7
  %45 = shl nuw nsw i32 1, %44
  %46 = trunc i32 %45 to i8
  %47 = lshr i32 %1, 3
  %48 = getelementptr [3 x i8], ptr %6, i32 0, i32 %47
  store i8 %46, ptr %48, align 1
  %49 = load ptr, ptr %39, align 4
  %50 = getelementptr inbounds %struct.tpm_header, ptr %49, i32 0, i32 1
  %51 = load i32, ptr %50, align 1
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #11
  %53 = load i32, ptr %5, align 8
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %41
  %57 = add i32 %52, 4
  %58 = icmp ugt i32 %57, 4096
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.9) #11
  %60 = or i32 %53, 1
  store i32 %60, ptr %5, align 8
  br label %66

61:                                               ; preds = %56
  %62 = getelementptr i8, ptr %49, i32 %52
  store i32 16777216, ptr %62, align 1
  %63 = tail call i32 @llvm.bswap.i32(i32 %57) #11
  store i32 %63, ptr %50, align 1
  %64 = load ptr, ptr %39, align 4
  %65 = load i32, ptr %5, align 8
  br label %66

66:                                               ; preds = %61, %59, %41
  %67 = phi i32 [ %53, %41 ], [ %60, %59 ], [ %65, %61 ]
  %68 = phi ptr [ %49, %41 ], [ %49, %59 ], [ %64, %61 ]
  %69 = load i16, ptr %2, align 1
  %70 = tail call i16 @llvm.bswap.i16(i16 %69) #11
  %71 = getelementptr inbounds %struct.tpm_header, ptr %68, i32 0, i32 1
  %72 = load i32, ptr %71, align 1
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #11
  %74 = and i32 %67, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %66
  %77 = add i32 %73, 2
  %78 = icmp ugt i32 %77, 4096
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.9) #11
  %80 = or i32 %67, 1
  store i32 %80, ptr %5, align 8
  br label %86

81:                                               ; preds = %76
  %82 = getelementptr i8, ptr %68, i32 %73
  store i16 %70, ptr %82, align 1
  %83 = tail call i32 @llvm.bswap.i32(i32 %77) #11
  store i32 %83, ptr %71, align 1
  %84 = load ptr, ptr %39, align 4
  %85 = load i32, ptr %5, align 8
  br label %86

86:                                               ; preds = %81, %79, %66
  %87 = phi i32 [ %67, %66 ], [ %80, %79 ], [ %85, %81 ]
  %88 = phi ptr [ %68, %66 ], [ %68, %79 ], [ %84, %81 ]
  %89 = getelementptr inbounds %struct.tpm_header, ptr %88, i32 0, i32 1
  %90 = load i32, ptr %89, align 1
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #11
  %92 = and i32 %87, 1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %86
  %95 = add i32 %91, 1
  %96 = icmp ugt i32 %95, 4096
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.9) #11
  %98 = or i32 %87, 1
  store i32 %98, ptr %5, align 8
  br label %104

99:                                               ; preds = %94
  %100 = getelementptr i8, ptr %88, i32 %91
  store i8 3, ptr %100, align 1
  %101 = tail call i32 @llvm.bswap.i32(i32 %95) #11
  store i32 %101, ptr %89, align 1
  %102 = load ptr, ptr %39, align 4
  %103 = load i32, ptr %5, align 8
  br label %104

104:                                              ; preds = %99, %97, %86
  %105 = phi i32 [ %87, %86 ], [ %98, %97 ], [ %103, %99 ]
  %106 = phi ptr [ %88, %86 ], [ %88, %97 ], [ %102, %99 ]
  %107 = getelementptr inbounds %struct.tpm_header, ptr %106, i32 0, i32 1
  %108 = load i32, ptr %107, align 1
  %109 = tail call i32 @llvm.bswap.i32(i32 %108) #11
  %110 = and i32 %105, 1
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %104
  %113 = add i32 %109, 3
  %114 = icmp ugt i32 %113, 4096
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.9) #11
  %116 = or i32 %105, 1
  store i32 %116, ptr %5, align 8
  br label %120

117:                                              ; preds = %112
  %118 = getelementptr i8, ptr %106, i32 %109
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %118, ptr noundef nonnull align 1 dereferenceable(3) %6, i32 3, i1 false) #11
  %119 = tail call i32 @llvm.bswap.i32(i32 %113) #11
  store i32 %119, ptr %107, align 1
  br label %120

120:                                              ; preds = %117, %115, %104
  %121 = call i32 @tpm_transmit_cmd(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 0, ptr noundef nonnull @.str) #11
  %122 = icmp eq i32 %121, 0
  %123 = load ptr, ptr %39, align 4
  br i1 %122, label %124, label %139

124:                                              ; preds = %120
  %125 = getelementptr i8, ptr %123, i32 28
  %126 = load i16, ptr %125, align 1
  %127 = call i16 @llvm.bswap.i16(i16 %126)
  %128 = zext i16 %127 to i32
  %129 = icmp ugt i16 %127, 64
  br i1 %129, label %139, label %130

130:                                              ; preds = %124
  %131 = xor i1 %9, true
  %132 = icmp eq i32 %36, %128
  %133 = select i1 %131, i1 true, i1 %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %130
  br i1 %9, label %136, label %135

135:                                              ; preds = %134
  store i16 %127, ptr %3, align 2
  br label %136

136:                                              ; preds = %135, %134
  %137 = getelementptr inbounds %struct.tpm_digest, ptr %2, i32 0, i32 1
  %138 = getelementptr i8, ptr %123, i32 30
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %137, ptr align 1 %138, i32 %128, i1 false)
  br label %139

139:                                              ; preds = %136, %130, %124, %120
  %140 = phi i32 [ 0, %136 ], [ -22, %130 ], [ -22, %124 ], [ %121, %120 ]
  %141 = ptrtoint ptr %123 to i32
  call void @free_pages(i32 noundef %141, i32 noundef 0) #11
  br label %142

142:                                              ; preds = %139, %35, %26, %23, %4
  %143 = phi i32 [ %140, %139 ], [ -22, %4 ], [ -22, %26 ], [ -12, %35 ], [ -22, %23 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  ret i32 %143
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_transmit_cmd(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tpm2_pcr_extend(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #3 {
  %4 = alloca %struct.tpm_buf, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  store i64 0, ptr %4, align 8, !annotation !8
  %5 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #11
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.tpm_buf, ptr %4, i32 0, i32 1
  store ptr %6, ptr %7, align 4
  %8 = icmp eq i32 %5, 0
  br i1 %8, label %142, label %9

9:                                                ; preds = %3
  store i16 640, ptr %6, align 1
  %10 = getelementptr inbounds %struct.tpm_header, ptr %6, i32 0, i32 1
  store i32 167772160, ptr %10, align 1
  %11 = getelementptr inbounds %struct.tpm_header, ptr %6, i32 0, i32 2
  store i32 -2113863680, ptr %11, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %1) #11
  %13 = load ptr, ptr %7, align 4
  %14 = getelementptr inbounds %struct.tpm_header, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #11
  %17 = load i32, ptr %4, align 8
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %9
  %21 = add i32 %16, 4
  %22 = icmp ugt i32 %21, 4096
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.9) #11
  %24 = or i32 %17, 1
  store i32 %24, ptr %4, align 8
  br label %30

25:                                               ; preds = %20
  %26 = getelementptr i8, ptr %13, i32 %16
  store i32 %12, ptr %26, align 1
  %27 = tail call i32 @llvm.bswap.i32(i32 %21) #11
  store i32 %27, ptr %14, align 1
  %28 = load ptr, ptr %7, align 4
  %29 = load i32, ptr %4, align 8
  br label %30

30:                                               ; preds = %25, %23, %9
  %31 = phi i32 [ %17, %9 ], [ %24, %23 ], [ %29, %25 ]
  %32 = phi ptr [ %13, %9 ], [ %13, %23 ], [ %28, %25 ]
  %33 = getelementptr inbounds %struct.tpm_header, ptr %32, i32 0, i32 1
  %34 = load i32, ptr %33, align 1
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #11
  %36 = and i32 %31, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %30
  %39 = add i32 %35, 4
  %40 = icmp ugt i32 %39, 4096
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.9) #11
  %42 = or i32 %31, 1
  store i32 %42, ptr %4, align 8
  br label %48

43:                                               ; preds = %38
  %44 = getelementptr i8, ptr %32, i32 %35
  store i32 150994944, ptr %44, align 1
  %45 = tail call i32 @llvm.bswap.i32(i32 %39) #11
  store i32 %45, ptr %33, align 1
  %46 = load ptr, ptr %7, align 4
  %47 = load i32, ptr %4, align 8
  br label %48

48:                                               ; preds = %43, %41, %30
  %49 = phi i32 [ %31, %30 ], [ %42, %41 ], [ %47, %43 ]
  %50 = phi ptr [ %32, %30 ], [ %32, %41 ], [ %46, %43 ]
  %51 = getelementptr inbounds %struct.tpm_header, ptr %50, i32 0, i32 1
  %52 = load i32, ptr %51, align 1
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #11
  %54 = and i32 %49, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %48
  %57 = add i32 %53, 9
  %58 = icmp ugt i32 %57, 4096
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.9) #11
  %60 = or i32 %49, 1
  store i32 %60, ptr %4, align 8
  br label %67

61:                                               ; preds = %56
  %62 = getelementptr i8, ptr %50, i32 %53
  store i32 150995008, ptr %62, align 1
  %63 = getelementptr inbounds i8, ptr %62, i32 4
  %64 = tail call i32 @llvm.bswap.i32(i32 %57) #11
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(5) %63, i8 0, i64 5, i1 false)
  store i32 %64, ptr %51, align 1
  %65 = load ptr, ptr %7, align 4
  %66 = load i32, ptr %4, align 8
  br label %67

67:                                               ; preds = %61, %59, %48
  %68 = phi i32 [ %49, %48 ], [ %60, %59 ], [ %66, %61 ]
  %69 = phi ptr [ %50, %48 ], [ %50, %59 ], [ %65, %61 ]
  %70 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 25
  %71 = load i32, ptr %70, align 8
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #11
  %73 = getelementptr inbounds %struct.tpm_header, ptr %69, i32 0, i32 1
  %74 = load i32, ptr %73, align 1
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #11
  %76 = and i32 %68, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %67
  %79 = add i32 %75, 4
  %80 = icmp ugt i32 %79, 4096
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.9) #11
  %82 = or i32 %68, 1
  store i32 %82, ptr %4, align 8
  br label %86

83:                                               ; preds = %78
  %84 = getelementptr i8, ptr %69, i32 %75
  store i32 %72, ptr %84, align 1
  %85 = tail call i32 @llvm.bswap.i32(i32 %79) #11
  store i32 %85, ptr %73, align 1
  br label %86

86:                                               ; preds = %83, %81, %67
  %87 = load i32, ptr %70, align 8
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %138, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 26
  br label %91

91:                                               ; preds = %134, %89
  %92 = phi i32 [ 0, %89 ], [ %135, %134 ]
  %93 = getelementptr %struct.tpm_digest, ptr %2, i32 %92
  %94 = load i16, ptr %93, align 1
  %95 = tail call i16 @llvm.bswap.i16(i16 %94) #11
  %96 = load ptr, ptr %7, align 4
  %97 = getelementptr inbounds %struct.tpm_header, ptr %96, i32 0, i32 1
  %98 = load i32, ptr %97, align 1
  %99 = tail call i32 @llvm.bswap.i32(i32 %98) #11
  %100 = load i32, ptr %4, align 8
  %101 = and i32 %100, 1
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %91
  %104 = add i32 %99, 2
  %105 = icmp ugt i32 %104, 4096
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.9) #11
  %107 = or i32 %100, 1
  store i32 %107, ptr %4, align 8
  br label %113

108:                                              ; preds = %103
  %109 = getelementptr i8, ptr %96, i32 %99
  store i16 %95, ptr %109, align 1
  %110 = tail call i32 @llvm.bswap.i32(i32 %104) #11
  store i32 %110, ptr %97, align 1
  %111 = load ptr, ptr %7, align 4
  %112 = load i32, ptr %4, align 8
  br label %113

113:                                              ; preds = %108, %106, %91
  %114 = phi i32 [ %100, %91 ], [ %107, %106 ], [ %112, %108 ]
  %115 = phi ptr [ %96, %91 ], [ %96, %106 ], [ %111, %108 ]
  %116 = getelementptr %struct.tpm_digest, ptr %2, i32 %92, i32 1
  %117 = load ptr, ptr %90, align 4
  %118 = getelementptr %struct.tpm_bank_info, ptr %117, i32 %92, i32 1
  %119 = load i16, ptr %118, align 2
  %120 = zext i16 %119 to i32
  %121 = getelementptr inbounds %struct.tpm_header, ptr %115, i32 0, i32 1
  %122 = load i32, ptr %121, align 1
  %123 = tail call i32 @llvm.bswap.i32(i32 %122) #11
  %124 = and i32 %114, 1
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %113
  %127 = add i32 %123, %120
  %128 = icmp ugt i32 %127, 4096
  br i1 %128, label %129, label %131

129:                                              ; preds = %126
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.9) #11
  %130 = or i32 %114, 1
  store i32 %130, ptr %4, align 8
  br label %134

131:                                              ; preds = %126
  %132 = getelementptr i8, ptr %115, i32 %123
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %132, ptr align 1 %116, i32 %120, i1 false) #11
  %133 = tail call i32 @llvm.bswap.i32(i32 %127) #11
  store i32 %133, ptr %121, align 1
  br label %134

134:                                              ; preds = %131, %129, %113
  %135 = add nuw i32 %92, 1
  %136 = load i32, ptr %70, align 8
  %137 = icmp ult i32 %135, %136
  br i1 %137, label %91, label %138

138:                                              ; preds = %134, %86
  %139 = call i32 @tpm_transmit_cmd(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 0, ptr noundef nonnull @.str.1) #11
  %140 = load ptr, ptr %7, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @free_pages(i32 noundef %141, i32 noundef 0) #11
  br label %142

142:                                              ; preds = %138, %3
  %143 = phi i32 [ %139, %138 ], [ -12, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  ret i32 %143
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tpm2_get_random(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = alloca %struct.tpm_buf, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  store i64 0, ptr %4, align 8, !annotation !8
  %5 = add i32 %2, -129
  %6 = icmp ult i32 %5, -128
  br i1 %6, label %78, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #11
  %9 = inttoptr i32 %8 to ptr
  %10 = getelementptr inbounds %struct.tpm_buf, ptr %4, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  %11 = icmp eq i32 %8, 0
  br i1 %11, label %78, label %12

12:                                               ; preds = %7
  store i16 0, ptr %9, align 1
  %13 = getelementptr inbounds %struct.tpm_header, ptr %9, i32 0, i32 1
  store i32 167772160, ptr %13, align 1
  %14 = getelementptr inbounds %struct.tpm_header, ptr %9, i32 0, i32 2
  store i32 0, ptr %14, align 1
  %15 = load ptr, ptr %10, align 4
  br label %16

16:                                               ; preds = %61, %12
  %17 = phi ptr [ %15, %12 ], [ %50, %61 ]
  %18 = phi i32 [ %2, %12 ], [ %65, %61 ]
  %19 = phi i32 [ 0, %12 ], [ %64, %61 ]
  %20 = phi i32 [ 5, %12 ], [ %66, %61 ]
  %21 = phi ptr [ %1, %12 ], [ %63, %61 ]
  store i16 384, ptr %17, align 1
  %22 = getelementptr inbounds %struct.tpm_header, ptr %17, i32 0, i32 1
  store i32 167772160, ptr %22, align 1
  %23 = getelementptr inbounds %struct.tpm_header, ptr %17, i32 0, i32 2
  store i32 2063663104, ptr %23, align 1
  %24 = trunc i32 %18 to i16
  %25 = call i16 @llvm.bswap.i16(i16 %24) #11
  %26 = load ptr, ptr %10, align 4
  %27 = getelementptr inbounds %struct.tpm_header, ptr %26, i32 0, i32 1
  %28 = load i32, ptr %27, align 1
  %29 = call i32 @llvm.bswap.i32(i32 %28) #11
  %30 = load i32, ptr %4, align 8
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %16
  %34 = add i32 %29, 2
  %35 = icmp ugt i32 %34, 4096
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.9) #11
  %37 = load i32, ptr %4, align 8
  %38 = or i32 %37, 1
  store i32 %38, ptr %4, align 8
  br label %42

39:                                               ; preds = %33
  %40 = getelementptr i8, ptr %26, i32 %29
  store i16 %25, ptr %40, align 1
  %41 = call i32 @llvm.bswap.i32(i32 %34) #11
  store i32 %41, ptr %27, align 1
  br label %42

42:                                               ; preds = %39, %36, %16
  %43 = call i32 @tpm_transmit_cmd(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 2, ptr noundef nonnull @.str.2) #11
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = icmp sgt i32 %43, 0
  %47 = select i1 %46, i32 -5, i32 %43
  %48 = load ptr, ptr %10, align 4
  br label %74

49:                                               ; preds = %42
  %50 = load ptr, ptr %10, align 4
  %51 = getelementptr i8, ptr %50, i32 10
  %52 = load i16, ptr %51, align 1
  %53 = call i16 @llvm.bswap.i16(i16 %52)
  %54 = zext i16 %53 to i32
  %55 = call i32 @llvm.umin.i32(i32 %18, i32 %54)
  %56 = getelementptr inbounds %struct.tpm_header, ptr %50, i32 0, i32 1
  %57 = load i32, ptr %56, align 1
  %58 = call i32 @llvm.bswap.i32(i32 %57) #11
  %59 = add nuw nsw i32 %55, 12
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %74, label %61

61:                                               ; preds = %49
  %62 = getelementptr i8, ptr %50, i32 12
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %21, ptr align 1 %62, i32 %55, i1 false)
  %63 = getelementptr i8, ptr %21, i32 %55
  %64 = add i32 %55, %19
  %65 = sub i32 %18, %55
  %66 = add nsw i32 %20, -1
  %67 = icmp ne i32 %20, 0
  %68 = icmp ult i32 %64, %2
  %69 = select i1 %67, i1 %68, i1 false
  br i1 %69, label %16, label %70

70:                                               ; preds = %61
  %71 = ptrtoint ptr %50 to i32
  call void @free_pages(i32 noundef %71, i32 noundef 0) #11
  %72 = icmp eq i32 %64, 0
  %73 = select i1 %72, i32 -5, i32 %64
  br label %78

74:                                               ; preds = %49, %45
  %75 = phi ptr [ %48, %45 ], [ %50, %49 ]
  %76 = phi i32 [ %47, %45 ], [ -14, %49 ]
  %77 = ptrtoint ptr %75 to i32
  call void @free_pages(i32 noundef %77, i32 noundef 0) #11
  br label %78

78:                                               ; preds = %74, %70, %7, %3
  %79 = phi i32 [ %76, %74 ], [ %73, %70 ], [ -22, %3 ], [ -12, %7 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tpm2_flush_context(ptr noundef %0, i32 noundef %1) #3 {
  %3 = alloca %struct.tpm_buf, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store i64 0, ptr %3, align 8, !annotation !8
  %4 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #11
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.tpm_buf, ptr %3, i32 0, i32 1
  store ptr %5, ptr %6, align 4
  %7 = icmp eq i32 %4, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %1) #12
  br label %32

9:                                                ; preds = %2
  store i16 384, ptr %5, align 1
  %10 = getelementptr inbounds %struct.tpm_header, ptr %5, i32 0, i32 1
  store i32 167772160, ptr %10, align 1
  %11 = getelementptr inbounds %struct.tpm_header, ptr %5, i32 0, i32 2
  store i32 1694564352, ptr %11, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %1) #11
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr inbounds %struct.tpm_header, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #11
  %17 = load i32, ptr %3, align 8
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %9
  %21 = add i32 %16, 4
  %22 = icmp ugt i32 %21, 4096
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.9) #11
  %24 = or i32 %17, 1
  store i32 %24, ptr %3, align 8
  br label %28

25:                                               ; preds = %20
  %26 = getelementptr i8, ptr %13, i32 %16
  store i32 %12, ptr %26, align 1
  %27 = tail call i32 @llvm.bswap.i32(i32 %21) #11
  store i32 %27, ptr %14, align 1
  br label %28

28:                                               ; preds = %25, %23, %9
  %29 = call i32 @tpm_transmit_cmd(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 0, ptr noundef nonnull @.str.4) #11
  %30 = load ptr, ptr %6, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @free_pages(i32 noundef %31, i32 noundef 0) #11
  br label %32

32:                                               ; preds = %28, %8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tpm2_get_tpm_pt(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture readnone %3) #3 {
  %5 = alloca %struct.tpm_buf, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store i64 0, ptr %5, align 8, !annotation !8
  %6 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #11
  %7 = inttoptr i32 %6 to ptr
  %8 = getelementptr inbounds %struct.tpm_buf, ptr %5, i32 0, i32 1
  store ptr %7, ptr %8, align 4
  %9 = icmp eq i32 %6, 0
  br i1 %9, label %75, label %10

10:                                               ; preds = %4
  store i16 384, ptr %7, align 1
  %11 = getelementptr inbounds %struct.tpm_header, ptr %7, i32 0, i32 1
  store i32 167772160, ptr %11, align 1
  %12 = getelementptr inbounds %struct.tpm_header, ptr %7, i32 0, i32 2
  store i32 2046885888, ptr %12, align 1
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr inbounds %struct.tpm_header, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #11
  %17 = load i32, ptr %5, align 8
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %10
  %21 = add i32 %16, 4
  %22 = icmp ugt i32 %21, 4096
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.9) #11
  %24 = or i32 %17, 1
  store i32 %24, ptr %5, align 8
  br label %30

25:                                               ; preds = %20
  %26 = getelementptr i8, ptr %13, i32 %16
  store i32 100663296, ptr %26, align 1
  %27 = tail call i32 @llvm.bswap.i32(i32 %21) #11
  store i32 %27, ptr %14, align 1
  %28 = load ptr, ptr %8, align 4
  %29 = load i32, ptr %5, align 8
  br label %30

30:                                               ; preds = %25, %23, %10
  %31 = phi i32 [ %17, %10 ], [ %24, %23 ], [ %29, %25 ]
  %32 = phi ptr [ %13, %10 ], [ %13, %23 ], [ %28, %25 ]
  %33 = tail call i32 @llvm.bswap.i32(i32 %1) #11
  %34 = getelementptr inbounds %struct.tpm_header, ptr %32, i32 0, i32 1
  %35 = load i32, ptr %34, align 1
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #11
  %37 = and i32 %31, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %30
  %40 = add i32 %36, 4
  %41 = icmp ugt i32 %40, 4096
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.9) #11
  %43 = or i32 %31, 1
  store i32 %43, ptr %5, align 8
  br label %49

44:                                               ; preds = %39
  %45 = getelementptr i8, ptr %32, i32 %36
  store i32 %33, ptr %45, align 1
  %46 = tail call i32 @llvm.bswap.i32(i32 %40) #11
  store i32 %46, ptr %34, align 1
  %47 = load ptr, ptr %8, align 4
  %48 = load i32, ptr %5, align 8
  br label %49

49:                                               ; preds = %44, %42, %30
  %50 = phi i32 [ %31, %30 ], [ %43, %42 ], [ %48, %44 ]
  %51 = phi ptr [ %32, %30 ], [ %32, %42 ], [ %47, %44 ]
  %52 = getelementptr inbounds %struct.tpm_header, ptr %51, i32 0, i32 1
  %53 = load i32, ptr %52, align 1
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #11
  %55 = and i32 %50, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %49
  %58 = add i32 %54, 4
  %59 = icmp ugt i32 %58, 4096
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.9) #11
  %61 = or i32 %50, 1
  store i32 %61, ptr %5, align 8
  br label %65

62:                                               ; preds = %57
  %63 = getelementptr i8, ptr %51, i32 %54
  store i32 16777216, ptr %63, align 1
  %64 = tail call i32 @llvm.bswap.i32(i32 %58) #11
  store i32 %64, ptr %52, align 1
  br label %65

65:                                               ; preds = %62, %60, %49
  %66 = call i32 @tpm_transmit_cmd(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 0, ptr noundef null) #11
  %67 = icmp eq i32 %66, 0
  %68 = load ptr, ptr %8, align 4
  br i1 %67, label %69, label %73

69:                                               ; preds = %65
  %70 = getelementptr i8, ptr %68, i32 23
  %71 = load i32, ptr %70, align 1
  %72 = call i32 @llvm.bswap.i32(i32 %71)
  store i32 %72, ptr %2, align 4
  br label %73

73:                                               ; preds = %69, %65
  %74 = ptrtoint ptr %68 to i32
  call void @free_pages(i32 noundef %74, i32 noundef 0) #11
  br label %75

75:                                               ; preds = %73, %4
  %76 = phi i32 [ %66, %73 ], [ -12, %4 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  ret i32 %76
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tpm2_shutdown(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #3 {
  %3 = alloca %struct.tpm_buf, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store i64 0, ptr %3, align 8, !annotation !8
  %4 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #11
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.tpm_buf, ptr %3, i32 0, i32 1
  store ptr %5, ptr %6, align 4
  %7 = icmp eq i32 %4, 0
  br i1 %7, label %31, label %8

8:                                                ; preds = %2
  store i16 384, ptr %5, align 1
  %9 = getelementptr inbounds %struct.tpm_header, ptr %5, i32 0, i32 1
  store i32 167772160, ptr %9, align 1
  %10 = getelementptr inbounds %struct.tpm_header, ptr %5, i32 0, i32 2
  store i32 1157693440, ptr %10, align 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %1) #11
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds %struct.tpm_header, ptr %12, i32 0, i32 1
  %14 = load i32, ptr %13, align 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #11
  %16 = load i32, ptr %3, align 8
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %8
  %20 = add i32 %15, 2
  %21 = icmp ugt i32 %20, 4096
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.9) #11
  %23 = or i32 %16, 1
  store i32 %23, ptr %3, align 8
  br label %27

24:                                               ; preds = %19
  %25 = getelementptr i8, ptr %12, i32 %15
  store i16 %11, ptr %25, align 1
  %26 = tail call i32 @llvm.bswap.i32(i32 %20) #11
  store i32 %26, ptr %13, align 1
  br label %27

27:                                               ; preds = %24, %22, %8
  %28 = call i32 @tpm_transmit_cmd(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 0, ptr noundef nonnull @.str.5) #11
  %29 = load ptr, ptr %6, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @free_pages(i32 noundef %30, i32 noundef 0) #11
  br label %31

31:                                               ; preds = %27, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tpm2_probe(ptr noundef %0) #3 {
  %2 = alloca %struct.tpm_buf, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  store i64 0, ptr %2, align 8, !annotation !8
  %3 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #11
  %4 = inttoptr i32 %3 to ptr
  %5 = getelementptr inbounds %struct.tpm_buf, ptr %2, i32 0, i32 1
  store ptr %4, ptr %5, align 4
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %74, label %7

7:                                                ; preds = %1
  store i16 384, ptr %4, align 1
  %8 = getelementptr inbounds %struct.tpm_header, ptr %4, i32 0, i32 1
  store i32 167772160, ptr %8, align 1
  %9 = getelementptr inbounds %struct.tpm_header, ptr %4, i32 0, i32 2
  store i32 2046885888, ptr %9, align 1
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr inbounds %struct.tpm_header, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #11
  %14 = load i32, ptr %2, align 8
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %7
  %18 = add i32 %13, 4
  %19 = icmp ugt i32 %18, 4096
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.9) #11
  %21 = or i32 %14, 1
  store i32 %21, ptr %2, align 8
  br label %27

22:                                               ; preds = %17
  %23 = getelementptr i8, ptr %10, i32 %13
  store i32 100663296, ptr %23, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %18) #11
  store i32 %24, ptr %11, align 1
  %25 = load ptr, ptr %5, align 4
  %26 = load i32, ptr %2, align 8
  br label %27

27:                                               ; preds = %22, %20, %7
  %28 = phi i32 [ %14, %7 ], [ %21, %20 ], [ %26, %22 ]
  %29 = phi ptr [ %10, %7 ], [ %10, %20 ], [ %25, %22 ]
  %30 = getelementptr inbounds %struct.tpm_header, ptr %29, i32 0, i32 1
  %31 = load i32, ptr %30, align 1
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #11
  %33 = and i32 %28, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %27
  %36 = add i32 %32, 4
  %37 = icmp ugt i32 %36, 4096
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.9) #11
  %39 = or i32 %28, 1
  store i32 %39, ptr %2, align 8
  br label %45

40:                                               ; preds = %35
  %41 = getelementptr i8, ptr %29, i32 %32
  store i32 687931392, ptr %41, align 1
  %42 = tail call i32 @llvm.bswap.i32(i32 %36) #11
  store i32 %42, ptr %30, align 1
  %43 = load ptr, ptr %5, align 4
  %44 = load i32, ptr %2, align 8
  br label %45

45:                                               ; preds = %40, %38, %27
  %46 = phi i32 [ %28, %27 ], [ %39, %38 ], [ %44, %40 ]
  %47 = phi ptr [ %29, %27 ], [ %29, %38 ], [ %43, %40 ]
  %48 = getelementptr inbounds %struct.tpm_header, ptr %47, i32 0, i32 1
  %49 = load i32, ptr %48, align 1
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #11
  %51 = and i32 %46, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %45
  %54 = add i32 %50, 4
  %55 = icmp ugt i32 %54, 4096
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.9) #11
  %57 = or i32 %46, 1
  store i32 %57, ptr %2, align 8
  br label %61

58:                                               ; preds = %53
  %59 = getelementptr i8, ptr %47, i32 %50
  store i32 16777216, ptr %59, align 1
  %60 = tail call i32 @llvm.bswap.i32(i32 %54) #11
  store i32 %60, ptr %48, align 1
  br label %61

61:                                               ; preds = %58, %56, %45
  %62 = call i32 @tpm_transmit_cmd(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 0, ptr noundef null) #11
  %63 = icmp sgt i32 %62, -1
  %64 = load ptr, ptr %5, align 4
  br i1 %63, label %65, label %72

65:                                               ; preds = %61
  %66 = load i16, ptr %64, align 1
  %67 = icmp eq i16 %66, 384
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 9
  %70 = load i32, ptr %69, align 4
  %71 = or i32 %70, 2
  store i32 %71, ptr %69, align 4
  br label %72

72:                                               ; preds = %68, %65, %61
  %73 = ptrtoint ptr %64 to i32
  call void @free_pages(i32 noundef %73, i32 noundef 0) #11
  br label %74

74:                                               ; preds = %72, %1
  %75 = phi i32 [ 0, %72 ], [ -12, %1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tpm2_get_pcr_allocation(ptr noundef %0) local_unnamed_addr #3 {
  %2 = alloca %struct.tpm_digest, align 2
  %3 = alloca %struct.tpm2_pcr_selection, align 2
  %4 = alloca %struct.tpm_buf, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %3, i8 0, i32 6, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  store i64 0, ptr %4, align 8, !annotation !8
  %5 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #11
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.tpm_buf, ptr %4, i32 0, i32 1
  store ptr %6, ptr %7, align 4
  %8 = icmp eq i32 %5, 0
  br i1 %8, label %152, label %9

9:                                                ; preds = %1
  store i16 384, ptr %6, align 1
  %10 = getelementptr inbounds %struct.tpm_header, ptr %6, i32 0, i32 1
  store i32 167772160, ptr %10, align 1
  %11 = getelementptr inbounds %struct.tpm_header, ptr %6, i32 0, i32 2
  store i32 2046885888, ptr %11, align 1
  %12 = load ptr, ptr %7, align 4
  %13 = getelementptr inbounds %struct.tpm_header, ptr %12, i32 0, i32 1
  %14 = load i32, ptr %13, align 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #11
  %16 = load i32, ptr %4, align 8
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %9
  %20 = add i32 %15, 4
  %21 = icmp ugt i32 %20, 4096
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.9) #11
  %23 = or i32 %16, 1
  store i32 %23, ptr %4, align 8
  br label %29

24:                                               ; preds = %19
  %25 = getelementptr i8, ptr %12, i32 %15
  store i32 83886080, ptr %25, align 1
  %26 = tail call i32 @llvm.bswap.i32(i32 %20) #11
  store i32 %26, ptr %13, align 1
  %27 = load ptr, ptr %7, align 4
  %28 = load i32, ptr %4, align 8
  br label %29

29:                                               ; preds = %24, %22, %9
  %30 = phi i32 [ %16, %9 ], [ %23, %22 ], [ %28, %24 ]
  %31 = phi ptr [ %12, %9 ], [ %12, %22 ], [ %27, %24 ]
  %32 = getelementptr inbounds %struct.tpm_header, ptr %31, i32 0, i32 1
  %33 = load i32, ptr %32, align 1
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #11
  %35 = and i32 %30, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %29
  %38 = add i32 %34, 4
  %39 = icmp ugt i32 %38, 4096
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.9) #11
  %41 = or i32 %30, 1
  store i32 %41, ptr %4, align 8
  br label %47

42:                                               ; preds = %37
  %43 = getelementptr i8, ptr %31, i32 %34
  store i32 0, ptr %43, align 1
  %44 = tail call i32 @llvm.bswap.i32(i32 %38) #11
  store i32 %44, ptr %32, align 1
  %45 = load ptr, ptr %7, align 4
  %46 = load i32, ptr %4, align 8
  br label %47

47:                                               ; preds = %42, %40, %29
  %48 = phi i32 [ %30, %29 ], [ %41, %40 ], [ %46, %42 ]
  %49 = phi ptr [ %31, %29 ], [ %31, %40 ], [ %45, %42 ]
  %50 = getelementptr inbounds %struct.tpm_header, ptr %49, i32 0, i32 1
  %51 = load i32, ptr %50, align 1
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #11
  %53 = and i32 %48, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %47
  %56 = add i32 %52, 4
  %57 = icmp ugt i32 %56, 4096
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.9) #11
  %59 = or i32 %48, 1
  store i32 %59, ptr %4, align 8
  br label %63

60:                                               ; preds = %55
  %61 = getelementptr i8, ptr %49, i32 %52
  store i32 16777216, ptr %61, align 1
  %62 = tail call i32 @llvm.bswap.i32(i32 %56) #11
  store i32 %62, ptr %50, align 1
  br label %63

63:                                               ; preds = %60, %58, %47
  %64 = call i32 @tpm_transmit_cmd(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 9, ptr noundef nonnull @.str.6) #11
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %148

66:                                               ; preds = %63
  %67 = load ptr, ptr %7, align 4
  %68 = getelementptr i8, ptr %67, i32 15
  %69 = load i32, ptr %68, align 4
  %70 = call i32 @llvm.bswap.i32(i32 %69) #11
  %71 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %70, i32 6) #11
  %72 = extractvalue { i32, i1 } %71, 1
  br i1 %72, label %73, label %75, !prof !9

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 26
  store ptr null, ptr %74, align 4
  br label %148

75:                                               ; preds = %66
  %76 = extractvalue { i32, i1 } %71, 0
  %77 = call noalias align 64 ptr @__kmalloc(i32 noundef %76, i32 noundef 3520) #13
  %78 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 26
  store ptr %77, ptr %78, align 4
  %79 = icmp eq ptr %77, null
  br i1 %79, label %148, label %80

80:                                               ; preds = %75
  %81 = load ptr, ptr %7, align 4
  %82 = getelementptr i8, ptr %81, i32 2
  %83 = load i32, ptr %82, align 4
  %84 = call i32 @llvm.bswap.i32(i32 %83) #11
  %85 = getelementptr i8, ptr %81, i32 %84
  %86 = icmp eq i32 %69, 0
  br i1 %86, label %144, label %87

87:                                               ; preds = %80
  %88 = getelementptr i8, ptr %81, i32 19
  %89 = getelementptr inbounds %struct.tpm2_pcr_selection, ptr %3, i32 0, i32 2
  %90 = getelementptr inbounds %struct.tpm2_pcr_selection, ptr %3, i32 0, i32 1
  %91 = getelementptr inbounds i8, ptr %2, i32 2
  %92 = call i32 @llvm.umax.i32(i32 %70, i32 1)
  br label %93

93:                                               ; preds = %135, %87
  %94 = phi i32 [ 0, %87 ], [ %142, %135 ]
  %95 = phi i32 [ 0, %87 ], [ %137, %135 ]
  %96 = phi i32 [ 0, %87 ], [ %136, %135 ]
  %97 = phi ptr [ %88, %87 ], [ %141, %135 ]
  %98 = getelementptr i8, ptr %97, i32 2
  %99 = icmp ult ptr %98, %85
  br i1 %99, label %100, label %144

100:                                              ; preds = %93
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %3, ptr noundef align 1 dereferenceable(6) %97, i32 6, i1 false)
  %101 = load i16, ptr %3, align 2
  %102 = load i8, ptr %90, align 2
  %103 = zext i8 %102 to i32
  %104 = call ptr @memchr_inv(ptr noundef %89, i32 noundef 0, i32 noundef %103) #11
  %105 = icmp eq ptr %104, null
  br i1 %105, label %135, label %106

106:                                              ; preds = %100
  %107 = call i16 @llvm.bswap.i16(i16 %101)
  %108 = load ptr, ptr %78, align 4
  %109 = getelementptr %struct.tpm_bank_info, ptr %108, i32 %96
  store i16 %107, ptr %109, align 2
  %110 = load ptr, ptr %78, align 4
  %111 = getelementptr %struct.tpm_bank_info, ptr %110, i32 %96
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %2) #11
  call void @llvm.memset.p0.i64(ptr noundef align 2 dereferenceable(64) %91, i8 0, i64 64, i1 false) #11
  %112 = load i16, ptr %111, align 2
  store i16 %112, ptr %2, align 2
  switch i16 %112, label %127 [
    i16 4, label %117
    i16 11, label %113
    i16 12, label %114
    i16 13, label %115
    i16 18, label %116
  ]

113:                                              ; preds = %106
  br label %117

114:                                              ; preds = %106
  br label %117

115:                                              ; preds = %106
  br label %117

116:                                              ; preds = %106
  br label %117

117:                                              ; preds = %116, %115, %114, %113, %106
  %118 = phi i32 [ 0, %106 ], [ 1, %113 ], [ 2, %114 ], [ 3, %115 ], [ 4, %116 ]
  %119 = getelementptr [5 x %struct.tpm2_hash], ptr @tpm2_hash_map, i32 0, i32 %118
  %120 = load i32, ptr %119, align 4
  %121 = getelementptr [20 x i32], ptr @hash_digest_size, i32 0, i32 %120
  %122 = load i32, ptr %121, align 4
  %123 = trunc i32 %122 to i16
  %124 = getelementptr %struct.tpm_bank_info, ptr %110, i32 %96, i32 1
  store i16 %123, ptr %124, align 2
  %125 = trunc i32 %120 to i16
  %126 = getelementptr %struct.tpm_bank_info, ptr %110, i32 %96, i32 2
  store i16 %125, ptr %126, align 2
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %2) #11
  br label %132

127:                                              ; preds = %106
  %128 = getelementptr %struct.tpm_bank_info, ptr %110, i32 %96, i32 2
  store i16 20, ptr %128, align 2
  %129 = getelementptr %struct.tpm_bank_info, ptr %110, i32 %96, i32 1
  %130 = call i32 @tpm2_pcr_read(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2, ptr noundef %129) #11
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %2) #11
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %144, label %132

132:                                              ; preds = %127, %117
  %133 = phi i32 [ 0, %117 ], [ %130, %127 ]
  %134 = add i32 %96, 1
  br label %135

135:                                              ; preds = %132, %100
  %136 = phi i32 [ %134, %132 ], [ %96, %100 ]
  %137 = phi i32 [ %133, %132 ], [ %95, %100 ]
  %138 = load i8, ptr %90, align 2
  %139 = zext i8 %138 to i32
  %140 = add nuw nsw i32 %139, 3
  %141 = getelementptr i8, ptr %97, i32 %140
  %142 = add nuw i32 %94, 1
  %143 = icmp eq i32 %142, %92
  br i1 %143, label %144, label %93

144:                                              ; preds = %135, %127, %93, %80
  %145 = phi i32 [ 0, %80 ], [ %96, %93 ], [ %96, %127 ], [ %136, %135 ]
  %146 = phi i32 [ 0, %80 ], [ -14, %93 ], [ %130, %127 ], [ %137, %135 ]
  %147 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 25
  store i32 %145, ptr %147, align 8
  br label %148

148:                                              ; preds = %144, %75, %73, %63
  %149 = phi i32 [ %64, %63 ], [ %146, %144 ], [ -12, %75 ], [ -12, %73 ]
  %150 = load ptr, ptr %7, align 4
  %151 = ptrtoint ptr %150 to i32
  call void @free_pages(i32 noundef %151, i32 noundef 0) #11
  br label %152

152:                                              ; preds = %148, %1
  %153 = phi i32 [ %149, %148 ], [ -12, %1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #11
  ret i32 %153
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tpm2_get_cc_attrs_tbl(ptr noundef %0) #3 {
  %2 = alloca %struct.tpm_buf, align 8
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  store i64 0, ptr %2, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = call i32 @tpm2_get_tpm_pt(ptr noundef %0, i32 noundef 297, ptr noundef nonnull %3, ptr undef)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %119

6:                                                ; preds = %1
  %7 = load i32, ptr %3, align 4
  %8 = icmp ugt i32 %7, 1048575
  br i1 %8, label %123, label %9

9:                                                ; preds = %6
  %10 = shl nuw nsw i32 %7, 2
  %11 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef %10, i32 noundef 3520) #11
  %12 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 30
  store ptr %11, ptr %12, align 4
  %13 = icmp eq ptr %11, null
  br i1 %13, label %123, label %14

14:                                               ; preds = %9
  %15 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #11
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr inbounds %struct.tpm_buf, ptr %2, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  %18 = icmp eq i32 %15, 0
  br i1 %18, label %123, label %19

19:                                               ; preds = %14
  store i16 384, ptr %16, align 1
  %20 = getelementptr inbounds %struct.tpm_header, ptr %16, i32 0, i32 1
  store i32 167772160, ptr %20, align 1
  %21 = getelementptr inbounds %struct.tpm_header, ptr %16, i32 0, i32 2
  store i32 2046885888, ptr %21, align 1
  %22 = load ptr, ptr %17, align 4
  %23 = getelementptr inbounds %struct.tpm_header, ptr %22, i32 0, i32 1
  %24 = load i32, ptr %23, align 1
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #11
  %26 = load i32, ptr %2, align 8
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %19
  %30 = add i32 %25, 4
  %31 = icmp ugt i32 %30, 4096
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.9) #11
  %33 = or i32 %26, 1
  store i32 %33, ptr %2, align 8
  br label %39

34:                                               ; preds = %29
  %35 = getelementptr i8, ptr %22, i32 %25
  store i32 33554432, ptr %35, align 1
  %36 = tail call i32 @llvm.bswap.i32(i32 %30) #11
  store i32 %36, ptr %23, align 1
  %37 = load ptr, ptr %17, align 4
  %38 = load i32, ptr %2, align 8
  br label %39

39:                                               ; preds = %34, %32, %19
  %40 = phi i32 [ %26, %19 ], [ %33, %32 ], [ %38, %34 ]
  %41 = phi ptr [ %22, %19 ], [ %22, %32 ], [ %37, %34 ]
  %42 = getelementptr inbounds %struct.tpm_header, ptr %41, i32 0, i32 1
  %43 = load i32, ptr %42, align 1
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #11
  %45 = and i32 %40, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %39
  %48 = add i32 %44, 4
  %49 = icmp ugt i32 %48, 4096
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.9) #11
  %51 = or i32 %40, 1
  store i32 %51, ptr %2, align 8
  br label %57

52:                                               ; preds = %47
  %53 = getelementptr i8, ptr %41, i32 %44
  store i32 520159232, ptr %53, align 1
  %54 = tail call i32 @llvm.bswap.i32(i32 %48) #11
  store i32 %54, ptr %42, align 1
  %55 = load ptr, ptr %17, align 4
  %56 = load i32, ptr %2, align 8
  br label %57

57:                                               ; preds = %52, %50, %39
  %58 = phi i32 [ %40, %39 ], [ %51, %50 ], [ %56, %52 ]
  %59 = phi ptr [ %41, %39 ], [ %41, %50 ], [ %55, %52 ]
  %60 = tail call i32 @llvm.bswap.i32(i32 %7) #11
  %61 = getelementptr inbounds %struct.tpm_header, ptr %59, i32 0, i32 1
  %62 = load i32, ptr %61, align 1
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #11
  %64 = and i32 %58, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %57
  %67 = add i32 %63, 4
  %68 = icmp ugt i32 %67, 4096
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.9) #11
  %70 = or i32 %58, 1
  store i32 %70, ptr %2, align 8
  br label %74

71:                                               ; preds = %66
  %72 = getelementptr i8, ptr %59, i32 %63
  store i32 %60, ptr %72, align 1
  %73 = tail call i32 @llvm.bswap.i32(i32 %67) #11
  store i32 %73, ptr %61, align 1
  br label %74

74:                                               ; preds = %71, %69, %57
  %75 = add nuw nsw i32 %10, 9
  %76 = call i32 @tpm_transmit_cmd(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %75, ptr noundef null) #11
  %77 = icmp eq i32 %76, 0
  %78 = load ptr, ptr %17, align 4
  br i1 %77, label %81, label %79

79:                                               ; preds = %74
  %80 = ptrtoint ptr %78 to i32
  call void @free_pages(i32 noundef %80, i32 noundef 0) #11
  br label %119

81:                                               ; preds = %74
  %82 = getelementptr i8, ptr %78, i32 15
  %83 = load i32, ptr %82, align 4
  %84 = call i32 @llvm.bswap.i32(i32 %83) #11
  %85 = icmp eq i32 %7, %84
  br i1 %85, label %88, label %86

86:                                               ; preds = %81
  %87 = ptrtoint ptr %78 to i32
  call void @free_pages(i32 noundef %87, i32 noundef 0) #11
  br label %123

88:                                               ; preds = %81
  %89 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 29
  store i32 %7, ptr %89, align 8
  %90 = icmp eq i32 %7, 0
  br i1 %90, label %116, label %91

91:                                               ; preds = %88
  %92 = getelementptr i8, ptr %78, i32 19
  br label %93

93:                                               ; preds = %110, %91
  %94 = phi i32 [ %111, %110 ], [ 0, %91 ]
  %95 = phi ptr [ %112, %110 ], [ %92, %91 ]
  %96 = load i32, ptr %95, align 4
  %97 = call i32 @llvm.bswap.i32(i32 %96) #11
  %98 = load ptr, ptr %12, align 4
  %99 = getelementptr i32, ptr %98, i32 %94
  store i32 %97, ptr %99, align 4
  %100 = load ptr, ptr %12, align 4
  %101 = getelementptr i32, ptr %100, i32 %94
  %102 = load i32, ptr %101, align 4
  %103 = trunc i32 %102 to i16
  switch i16 %103, label %110 [
    i16 357, label %104
    i16 354, label %104
  ]

104:                                              ; preds = %93, %93
  %105 = and i32 %102, -234881025
  store i32 %105, ptr %101, align 4
  %106 = load ptr, ptr %12, align 4
  %107 = getelementptr i32, ptr %106, i32 %94
  %108 = load i32, ptr %107, align 4
  %109 = or i32 %108, 33554432
  store i32 %109, ptr %107, align 4
  br label %110

110:                                              ; preds = %104, %93
  %111 = add nuw i32 %94, 1
  %112 = getelementptr i32, ptr %95, i32 1
  %113 = icmp eq i32 %111, %7
  br i1 %113, label %114, label %93

114:                                              ; preds = %110
  %115 = load ptr, ptr %17, align 4
  br label %116

116:                                              ; preds = %114, %88
  %117 = phi ptr [ %115, %114 ], [ %78, %88 ]
  %118 = ptrtoint ptr %117 to i32
  call void @free_pages(i32 noundef %118, i32 noundef 0) #11
  br label %123

119:                                              ; preds = %79, %1
  %120 = phi i32 [ %4, %1 ], [ %76, %79 ]
  %121 = icmp sgt i32 %120, 0
  %122 = select i1 %121, i32 -19, i32 %120
  br label %123

123:                                              ; preds = %119, %116, %86, %14, %9, %6
  %124 = phi i32 [ -12, %14 ], [ -12, %9 ], [ -14, %6 ], [ 0, %116 ], [ -14, %86 ], [ %122, %119 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  ret i32 %124
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tpm2_auto_startup(ptr noundef %0) local_unnamed_addr #3 {
  %2 = alloca %struct.tpm_buf, align 8
  %3 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 15
  store i32 75, ptr %3, align 8
  %4 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 16
  store i32 200, ptr %4, align 4
  %5 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 17
  store i32 20, ptr %5, align 8
  %6 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 18
  store i32 3, ptr %6, align 4
  %7 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 20
  store i32 2, ptr %7, align 4
  %8 = getelementptr %struct.tpm_chip, ptr %0, i32 0, i32 20, i32 1
  store i32 75, ptr %8, align 4
  %9 = getelementptr %struct.tpm_chip, ptr %0, i32 0, i32 20, i32 2
  store i32 200, ptr %9, align 4
  %10 = getelementptr %struct.tpm_chip, ptr %0, i32 0, i32 20, i32 3
  store i32 30000, ptr %10, align 4
  %11 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 9
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %12, 16
  store i32 %13, ptr %11, align 4
  %14 = tail call fastcc i32 @tpm2_do_selftest(ptr noundef %0)
  %15 = and i32 %14, -257
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %53

17:                                               ; preds = %1
  %18 = icmp eq i32 %14, 256
  br i1 %18, label %19, label %51

19:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  store i64 0, ptr %2, align 8, !annotation !8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.11) #12
  %20 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #11
  %21 = inttoptr i32 %20 to ptr
  %22 = getelementptr inbounds %struct.tpm_buf, ptr %2, i32 0, i32 1
  store ptr %21, ptr %22, align 4
  %23 = icmp eq i32 %20, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  br label %62

25:                                               ; preds = %19
  store i16 384, ptr %21, align 1
  %26 = getelementptr inbounds %struct.tpm_header, ptr %21, i32 0, i32 1
  store i32 167772160, ptr %26, align 1
  %27 = getelementptr inbounds %struct.tpm_header, ptr %21, i32 0, i32 2
  store i32 1140916224, ptr %27, align 1
  %28 = load ptr, ptr %22, align 4
  %29 = getelementptr inbounds %struct.tpm_header, ptr %28, i32 0, i32 1
  %30 = load i32, ptr %29, align 1
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #11
  %32 = load i32, ptr %2, align 8
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %25
  %36 = add i32 %31, 2
  %37 = icmp ugt i32 %36, 4096
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.9) #11
  %39 = or i32 %32, 1
  store i32 %39, ptr %2, align 8
  br label %43

40:                                               ; preds = %35
  %41 = getelementptr i8, ptr %28, i32 %31
  store i16 0, ptr %41, align 1
  %42 = tail call i32 @llvm.bswap.i32(i32 %36) #11
  store i32 %42, ptr %29, align 1
  br label %43

43:                                               ; preds = %40, %38, %25
  %44 = call i32 @tpm_transmit_cmd(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 0, ptr noundef nonnull @.str.12) #11
  %45 = load ptr, ptr %22, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @free_pages(i32 noundef %46, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  %47 = icmp eq i32 %44, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = call fastcc i32 @tpm2_do_selftest(ptr noundef %0)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48, %17
  %52 = call i32 @tpm2_get_cc_attrs_tbl(ptr noundef %0)
  br label %53

53:                                               ; preds = %51, %48, %43, %1
  %54 = phi i32 [ %14, %1 ], [ %44, %43 ], [ %49, %48 ], [ %52, %51 ]
  %55 = icmp eq i32 %54, 301
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.7) #12
  %57 = load i32, ptr %11, align 4
  %58 = or i32 %57, 128
  store i32 %58, ptr %11, align 4
  br label %62

59:                                               ; preds = %53
  %60 = icmp sgt i32 %54, 0
  %61 = select i1 %60, i32 -19, i32 %54
  br label %62

62:                                               ; preds = %59, %56, %24
  %63 = phi i32 [ -12, %24 ], [ 0, %56 ], [ %61, %59 ]
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tpm2_do_selftest(ptr noundef %0) unnamed_addr #3 {
  %2 = alloca %struct.tpm_buf, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  store i64 0, ptr %2, align 8, !annotation !8
  %3 = getelementptr inbounds %struct.tpm_buf, ptr %2, i32 0, i32 1
  %4 = call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #11
  %5 = inttoptr i32 %4 to ptr
  store ptr %5, ptr %3, align 4
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %62, label %36

7:                                                ; preds = %54
  %8 = call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #11
  %9 = inttoptr i32 %8 to ptr
  store ptr %9, ptr %3, align 4
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %62, label %11

11:                                               ; preds = %7
  store i32 0, ptr %2, align 8
  store i16 384, ptr %9, align 1
  %12 = getelementptr inbounds %struct.tpm_header, ptr %9, i32 0, i32 1
  store i32 167772160, ptr %12, align 1
  %13 = getelementptr inbounds %struct.tpm_header, ptr %9, i32 0, i32 2
  store i32 1124139008, ptr %13, align 1
  %14 = load ptr, ptr %3, align 4
  %15 = getelementptr inbounds %struct.tpm_header, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 1
  %17 = call i32 @llvm.bswap.i32(i32 %16) #11
  %18 = load i32, ptr %2, align 8
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %11
  %22 = add i32 %17, 1
  %23 = icmp ugt i32 %22, 4096
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = getelementptr i8, ptr %14, i32 %17
  store i8 1, ptr %25, align 1
  %26 = call i32 @llvm.bswap.i32(i32 %22) #11
  store i32 %26, ptr %15, align 1
  br label %30

27:                                               ; preds = %21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.9) #11
  %28 = load i32, ptr %2, align 8
  %29 = or i32 %28, 1
  store i32 %29, ptr %2, align 8
  br label %30

30:                                               ; preds = %27, %24, %11
  %31 = call i32 @tpm_transmit_cmd(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 0, ptr noundef nonnull @.str.10) #11
  %32 = load ptr, ptr %3, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @free_pages(i32 noundef %33, i32 noundef 0) #11
  %34 = icmp eq i32 %31, 2314
  %35 = select i1 %34, i32 0, i32 %31
  br label %62

36:                                               ; preds = %1
  store i16 384, ptr %5, align 1
  %37 = getelementptr inbounds %struct.tpm_header, ptr %5, i32 0, i32 1
  store i32 167772160, ptr %37, align 1
  %38 = getelementptr inbounds %struct.tpm_header, ptr %5, i32 0, i32 2
  store i32 1124139008, ptr %38, align 1
  %39 = load ptr, ptr %3, align 4
  %40 = getelementptr inbounds %struct.tpm_header, ptr %39, i32 0, i32 1
  %41 = load i32, ptr %40, align 1
  %42 = call i32 @llvm.bswap.i32(i32 %41) #11
  %43 = load i32, ptr %2, align 8
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %36
  %47 = add i32 %42, 1
  %48 = icmp ugt i32 %47, 4096
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.9) #11
  %50 = or i32 %43, 1
  store i32 %50, ptr %2, align 8
  br label %54

51:                                               ; preds = %46
  %52 = getelementptr i8, ptr %39, i32 %42
  store i8 0, ptr %52, align 1
  %53 = call i32 @llvm.bswap.i32(i32 %47) #11
  store i32 %53, ptr %40, align 1
  br label %54

54:                                               ; preds = %51, %49, %36
  %55 = call i32 @tpm_transmit_cmd(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 0, ptr noundef nonnull @.str.10) #11
  %56 = load ptr, ptr %3, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @free_pages(i32 noundef %57, i32 noundef 0) #11
  %58 = icmp eq i32 %55, 2314
  %59 = select i1 %58, i32 0, i32 %55
  %60 = and i32 %59, -257
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %7

62:                                               ; preds = %54, %30, %7, %1
  %63 = phi i32 [ %59, %54 ], [ -12, %1 ], [ -12, %7 ], [ %35, %30 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  ret i32 %63
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @tpm2_find_cc(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 29
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 30
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %15, %6
  %10 = phi i32 [ 0, %6 ], [ %16, %15 ]
  %11 = getelementptr i32, ptr %8, i32 %10
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = add nuw i32 %10, 1
  %17 = icmp eq i32 %16, %4
  br i1 %17, label %18, label %9

18:                                               ; preds = %15, %9, %2
  %19 = phi i32 [ -1, %2 ], [ -1, %15 ], [ %10, %9 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 1, i32 2000}
