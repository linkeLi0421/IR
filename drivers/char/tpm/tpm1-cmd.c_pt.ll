; ModuleID = '/llk/IR/drivers/char/tpm/tpm1-cmd.c_pt.bc'
source_filename = "../drivers/char/tpm/tpm1-cmd.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tpm1_getcap:\09\09\09\09\09"
module asm "\09.asciz \09\22tpm1_getcap\22\09\09\09\09\09"
module asm "__kstrtabns_tpm1_getcap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tpm1_do_selftest:\09\09\09\09\09"
module asm "\09.asciz \09\22tpm1_do_selftest\22\09\09\09\09\09"
module asm "__kstrtabns_tpm1_do_selftest:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
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
%union.cap_t = type { %struct.timeout_t, [8 x i8] }
%struct.timeout_t = type { i32, i32, i32, i32 }
%struct.tpm_header = type <{ i16, i32, %union.anon.65 }>
%union.anon.65 = type { i32 }
%struct.tpm_class_ops = type { i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tpm_bank_info = type { i16, i16, i16 }

@tpm1_ordinal_duration = internal unnamed_addr constant [243 x i8] c"\04\04\04\04\04\04\04\04\04\04\00\00\01\02\02\01\00\00\01\02\00\00\01\01\01\00\00\01\00\00\01\02\01\00\00\00\01\01\04\04\01\02\01\00\00\00\00\00\00\02\01\01\04\04\04\04\04\04\04\04\01\01\01\00\00\01\04\04\04\04\00\00\04\04\04\04\04\04\04\04\02\04\01\02\00\04\04\04\04\04\00\00\00\00\00\04\04\04\04\04\01\00\00\04\04\04\04\04\04\04\00\00\00\00\00\00\00\00\04\04\02\02\01\04\00\00\00\02\00\00\00\01\04\00\01\04\04\04\04\04\00\00\04\04\04\04\04\04\04\04\00\01\01\00\00\04\04\04\04\04\00\00\00\00\04\04\04\04\04\04\02\04\04\04\04\04\04\04\04\04\01\00\01\01\01\01\00\04\04\04\04\04\04\04\04\04\04\04\04\04\00\04\04\04\00\00\00\00\00\00\01\04\01\01\01\04\01\04\04\00\00\00\00\00\00\04\04\04\04\04\00\02\01\04\04\04\04\04\04\04\00\04\01", align 1
@.str = private unnamed_addr constant [37 x i8] c"attempting to determine the timeouts\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"A TPM error (%zd) occurred attempting to determine the timeouts\0A\00", align 1
@.str.2 = private unnamed_addr constant [100 x i8] c"[Hardware Error]: Adjusting reported timeouts: A %lu->%luus B %lu->%luus C %lu->%luus D %lu->%luus\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"attempting to determine the durations\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"[Hardware Error]: Adjusting reported durations.\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Adjusting TPM timeout parameters.\00", align 1
@__kstrtab_tpm1_getcap = external dso_local constant [0 x i8], align 1
@__kstrtabns_tpm1_getcap = external dso_local constant [0 x i8], align 1
@__ksymtab_tpm1_getcap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tpm1_getcap to i32), ptr @__kstrtab_tpm1_getcap, ptr @__kstrtabns_tpm1_getcap }, section "___ksymtab_gpl+tpm1_getcap", align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"attempting get random\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"attempting to read a pcr value\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"TPM not ready (%d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [66 x i8] c"[Hardware Error]: TPM command timed out during continue self test\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"TPM is disabled/deactivated (0x%X)\0A\00", align 1
@__kstrtab_tpm1_do_selftest = external dso_local constant [0 x i8], align 1
@__kstrtabns_tpm1_do_selftest = external dso_local constant [0 x i8], align 1
@__ksymtab_tpm1_do_selftest = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tpm1_do_selftest to i32), ptr @__kstrtab_tpm1_do_selftest, ptr @__kstrtabns_tpm1_do_selftest }, section "___ksymtab_gpl+tpm1_do_selftest", align 4
@.str.11 = private unnamed_addr constant [22 x i8] c"TPM self test failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"extending dummy pcr before suspend\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"Error (%d) sending savestate before suspend\0A\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"TPM savestate took %dms\0A\00", align 1
@hash_digest_size = external dso_local local_unnamed_addr constant [20 x i32], align 4
@.str.15 = private unnamed_addr constant [30 x i8] c"starting up the TPM manually\0A\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"attempting to start the TPM\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"include/linux/tpm.h\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"tpm_buf: overflow\0A\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"continue selftest\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_tpm1_do_selftest, ptr @__ksymtab_tpm1_getcap], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @tpm1_calc_ordinal_duration(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ult i32 %1, 243
  br i1 %3, label %4, label %13

4:                                                ; preds = %2
  %5 = getelementptr [243 x i8], ptr @tpm1_ordinal_duration, i32 0, i32 %1
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, 4
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = zext i8 %6 to i32
  %10 = getelementptr %struct.tpm_chip, ptr %0, i32 0, i32 20, i32 %9
  %11 = load i32, ptr %10, align 4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %4, %2
  br label %14

14:                                               ; preds = %13, %8
  %15 = phi i32 [ 12000, %13 ], [ %11, %8 ]
  ret i32 %15
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tpm1_get_timeouts(ptr noundef %0) local_unnamed_addr #2 {
  %2 = alloca %struct.tpm_buf, align 8
  %3 = alloca %union.cap_t, align 4
  %4 = alloca [4 x i32], align 4
  %5 = alloca [3 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i32 12, i1 false), !annotation !8
  %6 = call i32 @tpm1_getcap(ptr noundef %0, i32 noundef 277, ptr noundef nonnull %3, ptr noundef null, i32 noundef 16)
  %7 = icmp eq i32 %6, 38
  br i1 %7, label %8, label %39

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  store i64 0, ptr %2, align 8, !annotation !8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.15) #10
  %9 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #9
  %10 = inttoptr i32 %9 to ptr
  %11 = getelementptr inbounds %struct.tpm_buf, ptr %2, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  %12 = icmp eq i32 %9, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  br label %179

14:                                               ; preds = %8
  store i16 -16128, ptr %10, align 1
  %15 = getelementptr inbounds %struct.tpm_header, ptr %10, i32 0, i32 1
  store i32 167772160, ptr %15, align 1
  %16 = getelementptr inbounds %struct.tpm_header, ptr %10, i32 0, i32 2
  store i32 -1728053248, ptr %16, align 1
  %17 = load ptr, ptr %11, align 4
  %18 = getelementptr inbounds %struct.tpm_header, ptr %17, i32 0, i32 1
  %19 = load i32, ptr %18, align 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #9
  %21 = load i32, ptr %2, align 8
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %14
  %25 = add i32 %20, 2
  %26 = icmp ugt i32 %25, 4096
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.18) #9
  %28 = or i32 %21, 1
  store i32 %28, ptr %2, align 8
  br label %32

29:                                               ; preds = %24
  %30 = getelementptr i8, ptr %17, i32 %20
  store i16 256, ptr %30, align 1
  %31 = tail call i32 @llvm.bswap.i32(i32 %25) #9
  store i32 %31, ptr %18, align 1
  br label %32

32:                                               ; preds = %29, %27, %14
  %33 = call i32 @tpm_transmit_cmd(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 0, ptr noundef nonnull @.str.16) #9
  %34 = load ptr, ptr %11, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @free_pages(i32 noundef %35, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  %36 = icmp eq i32 %33, 0
  br i1 %36, label %37, label %179

37:                                               ; preds = %32
  %38 = call i32 @tpm1_getcap(ptr noundef %0, i32 noundef 277, ptr noundef nonnull %3, ptr noundef nonnull @.str, i32 noundef 16)
  br label %39

39:                                               ; preds = %37, %1
  %40 = phi i32 [ %38, %37 ], [ %6, %1 ]
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %40) #10
  br label %179

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 15
  %45 = load i32, ptr %44, align 8
  %46 = call i32 @jiffies_to_usecs(i32 noundef %45) #9
  %47 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 16
  %48 = load i32, ptr %47, align 4
  %49 = call i32 @jiffies_to_usecs(i32 noundef %48) #9
  %50 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 17
  %51 = load i32, ptr %50, align 8
  %52 = call i32 @jiffies_to_usecs(i32 noundef %51) #9
  %53 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 18
  %54 = load i32, ptr %53, align 4
  %55 = call i32 @jiffies_to_usecs(i32 noundef %54) #9
  %56 = load i32, ptr %3, align 4
  %57 = call i32 @llvm.bswap.i32(i32 %56)
  %58 = getelementptr inbounds %struct.timeout_t, ptr %3, i32 0, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = call i32 @llvm.bswap.i32(i32 %59)
  %61 = getelementptr inbounds %struct.timeout_t, ptr %3, i32 0, i32 2
  %62 = load i32, ptr %61, align 4
  %63 = call i32 @llvm.bswap.i32(i32 %62)
  %64 = getelementptr inbounds %struct.timeout_t, ptr %3, i32 0, i32 3
  %65 = load i32, ptr %64, align 4
  %66 = call i32 @llvm.bswap.i32(i32 %65)
  store i32 %57, ptr %4, align 4
  %67 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 %60, ptr %67, align 4
  %68 = getelementptr inbounds i8, ptr %4, i32 8
  store i32 %63, ptr %68, align 4
  %69 = getelementptr inbounds i8, ptr %4, i32 12
  store i32 %66, ptr %69, align 4
  %70 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 5
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr inbounds %struct.tpm_class_ops, ptr %71, i32 0, i32 8
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %43
  call void %73(ptr noundef %0, ptr noundef nonnull %4) #9
  br label %76

76:                                               ; preds = %75, %43
  %77 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 19
  %78 = load i8, ptr %77, align 8, !range !9
  %79 = icmp eq i8 %78, 0
  %80 = load i32, ptr %4, align 4
  br i1 %79, label %85, label %81

81:                                               ; preds = %76
  %82 = load i32, ptr %67, align 4
  %83 = load i32, ptr %68, align 4
  %84 = load i32, ptr %69, align 4
  br label %119

85:                                               ; preds = %76
  %86 = icmp eq i32 %80, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %85
  store i32 %46, ptr %4, align 4
  store i8 1, ptr %77, align 8
  br label %88

88:                                               ; preds = %87, %85
  %89 = phi i8 [ 0, %85 ], [ 1, %87 ]
  %90 = phi i32 [ %80, %85 ], [ %46, %87 ]
  %91 = load i32, ptr %67, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  store i32 %49, ptr %67, align 4
  store i8 1, ptr %77, align 8
  br label %94

94:                                               ; preds = %93, %88
  %95 = phi i32 [ %49, %93 ], [ %91, %88 ]
  %96 = phi i8 [ 1, %93 ], [ %89, %88 ]
  %97 = load i32, ptr %68, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  store i32 %52, ptr %68, align 4
  store i8 1, ptr %77, align 8
  br label %100

100:                                              ; preds = %99, %94
  %101 = phi i32 [ %52, %99 ], [ %97, %94 ]
  %102 = phi i8 [ 1, %99 ], [ %96, %94 ]
  %103 = load i32, ptr %69, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %100
  %106 = add i32 %90, -1
  %107 = icmp ult i32 %106, 999
  br i1 %107, label %111, label %117

108:                                              ; preds = %100
  store i32 %55, ptr %69, align 4
  store i8 1, ptr %77, align 8
  %109 = add i32 %90, -1
  %110 = icmp ult i32 %109, 999
  br i1 %110, label %111, label %119

111:                                              ; preds = %108, %105
  %112 = phi i32 [ %55, %108 ], [ %103, %105 ]
  %113 = mul nuw nsw i32 %90, 1000
  store i32 %113, ptr %4, align 4
  %114 = mul i32 %95, 1000
  store i32 %114, ptr %67, align 4
  %115 = mul i32 %101, 1000
  store i32 %115, ptr %68, align 4
  %116 = mul i32 %112, 1000
  store i32 %116, ptr %69, align 4
  store i8 1, ptr %77, align 8
  br label %119

117:                                              ; preds = %105
  %118 = icmp eq i8 %102, 0
  br i1 %118, label %125, label %119

119:                                              ; preds = %117, %111, %108, %81
  %120 = phi i32 [ %84, %81 ], [ %116, %111 ], [ %103, %117 ], [ %55, %108 ]
  %121 = phi i32 [ %83, %81 ], [ %115, %111 ], [ %101, %117 ], [ %101, %108 ]
  %122 = phi i32 [ %82, %81 ], [ %114, %111 ], [ %95, %117 ], [ %95, %108 ]
  %123 = phi i32 [ %80, %81 ], [ %113, %111 ], [ %90, %117 ], [ %90, %108 ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %57, i32 noundef %123, i32 noundef %60, i32 noundef %122, i32 noundef %63, i32 noundef %121, i32 noundef %66, i32 noundef %120) #10
  %124 = load i32, ptr %4, align 4
  br label %125

125:                                              ; preds = %119, %117
  %126 = phi i32 [ %124, %119 ], [ %90, %117 ]
  %127 = call i32 @__usecs_to_jiffies(i32 noundef %126) #9
  store i32 %127, ptr %44, align 8
  %128 = load i32, ptr %67, align 4
  %129 = call i32 @__usecs_to_jiffies(i32 noundef %128) #9
  store i32 %129, ptr %47, align 4
  %130 = load i32, ptr %68, align 4
  %131 = call i32 @__usecs_to_jiffies(i32 noundef %130) #9
  store i32 %131, ptr %50, align 8
  %132 = load i32, ptr %69, align 4
  %133 = call i32 @__usecs_to_jiffies(i32 noundef %132) #9
  store i32 %133, ptr %53, align 4
  %134 = call i32 @tpm1_getcap(ptr noundef %0, i32 noundef 288, ptr noundef nonnull %3, ptr noundef nonnull @.str.3, i32 noundef 12)
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %179

136:                                              ; preds = %125
  %137 = load i32, ptr %3, align 4
  %138 = call i32 @llvm.bswap.i32(i32 %137)
  %139 = call i32 @__usecs_to_jiffies(i32 noundef %138) #9
  %140 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 20
  store i32 %139, ptr %140, align 4
  %141 = load i32, ptr %58, align 4
  %142 = call i32 @llvm.bswap.i32(i32 %141)
  %143 = call i32 @__usecs_to_jiffies(i32 noundef %142) #9
  %144 = getelementptr %struct.tpm_chip, ptr %0, i32 0, i32 20, i32 1
  store i32 %143, ptr %144, align 4
  %145 = load i32, ptr %61, align 4
  %146 = call i32 @llvm.bswap.i32(i32 %145)
  %147 = call i32 @__usecs_to_jiffies(i32 noundef %146) #9
  %148 = getelementptr %struct.tpm_chip, ptr %0, i32 0, i32 20, i32 2
  store i32 %147, ptr %148, align 4
  %149 = getelementptr %struct.tpm_chip, ptr %0, i32 0, i32 20, i32 3
  store i32 0, ptr %149, align 4
  %150 = load ptr, ptr %70, align 8
  %151 = getelementptr inbounds %struct.tpm_class_ops, ptr %150, i32 0, i32 9
  %152 = load ptr, ptr %151, align 4
  %153 = icmp eq ptr %152, null
  br i1 %153, label %155, label %154

154:                                              ; preds = %136
  call void %152(ptr noundef %0, ptr noundef nonnull %5) #9
  br label %155

155:                                              ; preds = %154, %136
  %156 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 21
  %157 = load i8, ptr %156, align 4, !range !9
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %155
  %160 = load i32, ptr %140, align 4
  br label %167

161:                                              ; preds = %155
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.4) #10
  %162 = load i32, ptr %5, align 4
  store i32 %162, ptr %140, align 4
  %163 = getelementptr inbounds [3 x i32], ptr %5, i32 0, i32 1
  %164 = load i32, ptr %163, align 4
  store i32 %164, ptr %144, align 4
  %165 = getelementptr inbounds [3 x i32], ptr %5, i32 0, i32 2
  %166 = load i32, ptr %165, align 4
  store i32 %166, ptr %148, align 4
  br label %167

167:                                              ; preds = %161, %159
  %168 = phi i32 [ %160, %159 ], [ %162, %161 ]
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %167
  store i32 100, ptr %140, align 4
  %171 = load i32, ptr %144, align 4
  %172 = mul i32 %171, 1000
  store i32 %172, ptr %144, align 4
  %173 = load i32, ptr %148, align 4
  %174 = mul i32 %173, 1000
  store i32 %174, ptr %148, align 4
  store i8 1, ptr %156, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.5) #10
  br label %175

175:                                              ; preds = %170, %167
  %176 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 9
  %177 = load i32, ptr %176, align 4
  %178 = or i32 %177, 16
  store i32 %178, ptr %176, align 4
  br label %179

179:                                              ; preds = %175, %125, %42, %32, %13
  %180 = phi i32 [ %40, %42 ], [ 0, %175 ], [ 38, %32 ], [ %134, %125 ], [ 38, %13 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  ret i32 %180
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tpm1_getcap(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr noundef %3, i32 noundef %4) #2 {
  %6 = alloca %struct.tpm_buf, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  store i64 0, ptr %6, align 8, !annotation !8
  %7 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #9
  %8 = inttoptr i32 %7 to ptr
  %9 = getelementptr inbounds %struct.tpm_buf, ptr %6, i32 0, i32 1
  store ptr %8, ptr %9, align 4
  %10 = icmp eq i32 %7, 0
  br i1 %10, label %120, label %11

11:                                               ; preds = %5
  store i16 -16128, ptr %8, align 1
  %12 = getelementptr inbounds %struct.tpm_header, ptr %8, i32 0, i32 1
  store i32 167772160, ptr %12, align 1
  %13 = getelementptr inbounds %struct.tpm_header, ptr %8, i32 0, i32 2
  store i32 1694498816, ptr %13, align 1
  switch i32 %1, label %49 [
    i32 26, label %14
    i32 6, label %14
  ]

14:                                               ; preds = %11, %11
  %15 = tail call i32 @llvm.bswap.i32(i32 %1) #9
  %16 = load ptr, ptr %9, align 4
  %17 = getelementptr inbounds %struct.tpm_header, ptr %16, i32 0, i32 1
  %18 = load i32, ptr %17, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #9
  %20 = load i32, ptr %6, align 8
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %14
  %24 = add i32 %19, 4
  %25 = icmp ugt i32 %24, 4096
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.18) #9
  %27 = or i32 %20, 1
  store i32 %27, ptr %6, align 8
  br label %33

28:                                               ; preds = %23
  %29 = getelementptr i8, ptr %16, i32 %19
  store i32 %15, ptr %29, align 1
  %30 = tail call i32 @llvm.bswap.i32(i32 %24) #9
  store i32 %30, ptr %17, align 1
  %31 = load ptr, ptr %9, align 4
  %32 = load i32, ptr %6, align 8
  br label %33

33:                                               ; preds = %28, %26, %14
  %34 = phi i32 [ %20, %14 ], [ %27, %26 ], [ %32, %28 ]
  %35 = phi ptr [ %16, %14 ], [ %16, %26 ], [ %31, %28 ]
  %36 = getelementptr inbounds %struct.tpm_header, ptr %35, i32 0, i32 1
  %37 = load i32, ptr %36, align 1
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #9
  %39 = and i32 %34, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %112

41:                                               ; preds = %33
  %42 = add i32 %38, 4
  %43 = icmp ugt i32 %42, 4096
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.18) #9
  %45 = or i32 %34, 1
  store i32 %45, ptr %6, align 8
  br label %112

46:                                               ; preds = %41
  %47 = getelementptr i8, ptr %35, i32 %38
  store i32 0, ptr %47, align 1
  %48 = tail call i32 @llvm.bswap.i32(i32 %42) #9
  store i32 %48, ptr %36, align 1
  br label %112

49:                                               ; preds = %11
  %50 = and i32 %1, -2
  %51 = icmp eq i32 %50, 264
  %52 = load ptr, ptr %9, align 4
  %53 = getelementptr inbounds %struct.tpm_header, ptr %52, i32 0, i32 1
  %54 = load i32, ptr %53, align 1
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #9
  %56 = load i32, ptr %6, align 8
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 0
  br i1 %51, label %59, label %68

59:                                               ; preds = %49
  br i1 %58, label %60, label %77

60:                                               ; preds = %59
  %61 = add i32 %55, 4
  %62 = icmp ugt i32 %61, 4096
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.18) #9
  %64 = or i32 %56, 1
  store i32 %64, ptr %6, align 8
  br label %77

65:                                               ; preds = %60
  %66 = getelementptr i8, ptr %52, i32 %55
  store i32 67108864, ptr %66, align 1
  %67 = tail call i32 @llvm.bswap.i32(i32 %61) #9
  store i32 %67, ptr %53, align 1
  br label %77

68:                                               ; preds = %49
  br i1 %58, label %69, label %77

69:                                               ; preds = %68
  %70 = add i32 %55, 4
  %71 = icmp ugt i32 %70, 4096
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.18) #9
  %73 = or i32 %56, 1
  store i32 %73, ptr %6, align 8
  br label %77

74:                                               ; preds = %69
  %75 = getelementptr i8, ptr %52, i32 %55
  store i32 83886080, ptr %75, align 1
  %76 = tail call i32 @llvm.bswap.i32(i32 %70) #9
  store i32 %76, ptr %53, align 1
  br label %77

77:                                               ; preds = %74, %72, %68, %65, %63, %59
  %78 = load ptr, ptr %9, align 4
  %79 = getelementptr inbounds %struct.tpm_header, ptr %78, i32 0, i32 1
  %80 = load i32, ptr %79, align 1
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #9
  %82 = load i32, ptr %6, align 8
  %83 = and i32 %82, 1
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %77
  %86 = add i32 %81, 4
  %87 = icmp ugt i32 %86, 4096
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.18) #9
  %89 = or i32 %82, 1
  store i32 %89, ptr %6, align 8
  br label %95

90:                                               ; preds = %85
  %91 = getelementptr i8, ptr %78, i32 %81
  store i32 67108864, ptr %91, align 1
  %92 = tail call i32 @llvm.bswap.i32(i32 %86) #9
  store i32 %92, ptr %79, align 1
  %93 = load ptr, ptr %9, align 4
  %94 = load i32, ptr %6, align 8
  br label %95

95:                                               ; preds = %90, %88, %77
  %96 = phi i32 [ %82, %77 ], [ %89, %88 ], [ %94, %90 ]
  %97 = phi ptr [ %78, %77 ], [ %78, %88 ], [ %93, %90 ]
  %98 = tail call i32 @llvm.bswap.i32(i32 %1) #9
  %99 = getelementptr inbounds %struct.tpm_header, ptr %97, i32 0, i32 1
  %100 = load i32, ptr %99, align 1
  %101 = tail call i32 @llvm.bswap.i32(i32 %100) #9
  %102 = and i32 %96, 1
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %95
  %105 = add i32 %101, 4
  %106 = icmp ugt i32 %105, 4096
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.18) #9
  %108 = or i32 %96, 1
  store i32 %108, ptr %6, align 8
  br label %112

109:                                              ; preds = %104
  %110 = getelementptr i8, ptr %97, i32 %101
  store i32 %98, ptr %110, align 1
  %111 = tail call i32 @llvm.bswap.i32(i32 %105) #9
  store i32 %111, ptr %99, align 1
  br label %112

112:                                              ; preds = %109, %107, %95, %46, %44, %33
  %113 = call i32 @tpm_transmit_cmd(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %4, ptr noundef %3) #9
  %114 = icmp eq i32 %113, 0
  %115 = load ptr, ptr %9, align 4
  br i1 %114, label %116, label %118

116:                                              ; preds = %112
  %117 = getelementptr i8, ptr %115, i32 14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %2, ptr noundef align 4 dereferenceable(24) %117, i32 24, i1 false)
  br label %118

118:                                              ; preds = %116, %112
  %119 = ptrtoint ptr %115 to i32
  call void @free_pages(i32 noundef %119, i32 noundef 0) #9
  br label %120

120:                                              ; preds = %118, %5
  %121 = phi i32 [ %113, %118 ], [ -12, %5 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  ret i32 %121
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tpm1_pcr_extend(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #2 {
  %5 = alloca %struct.tpm_buf, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  store i64 0, ptr %5, align 8, !annotation !8
  %6 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #9
  %7 = inttoptr i32 %6 to ptr
  %8 = getelementptr inbounds %struct.tpm_buf, ptr %5, i32 0, i32 1
  store ptr %7, ptr %8, align 4
  %9 = icmp eq i32 %6, 0
  br i1 %9, label %51, label %10

10:                                               ; preds = %4
  store i16 -16128, ptr %7, align 1
  %11 = getelementptr inbounds %struct.tpm_header, ptr %7, i32 0, i32 1
  store i32 167772160, ptr %11, align 1
  %12 = getelementptr inbounds %struct.tpm_header, ptr %7, i32 0, i32 2
  store i32 335544320, ptr %12, align 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %1) #9
  %14 = load ptr, ptr %8, align 4
  %15 = getelementptr inbounds %struct.tpm_header, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #9
  %18 = load i32, ptr %5, align 8
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %10
  %22 = add i32 %17, 4
  %23 = icmp ugt i32 %22, 4096
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.18) #9
  %25 = or i32 %18, 1
  store i32 %25, ptr %5, align 8
  br label %31

26:                                               ; preds = %21
  %27 = getelementptr i8, ptr %14, i32 %17
  store i32 %13, ptr %27, align 1
  %28 = tail call i32 @llvm.bswap.i32(i32 %22) #9
  store i32 %28, ptr %15, align 1
  %29 = load ptr, ptr %8, align 4
  %30 = load i32, ptr %5, align 8
  br label %31

31:                                               ; preds = %26, %24, %10
  %32 = phi i32 [ %18, %10 ], [ %25, %24 ], [ %30, %26 ]
  %33 = phi ptr [ %14, %10 ], [ %14, %24 ], [ %29, %26 ]
  %34 = getelementptr inbounds %struct.tpm_header, ptr %33, i32 0, i32 1
  %35 = load i32, ptr %34, align 1
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #9
  %37 = and i32 %32, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %31
  %40 = add i32 %36, 20
  %41 = icmp ugt i32 %40, 4096
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.18) #9
  %43 = or i32 %32, 1
  store i32 %43, ptr %5, align 8
  br label %47

44:                                               ; preds = %39
  %45 = getelementptr i8, ptr %33, i32 %36
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(20) %45, ptr noundef align 1 dereferenceable(20) %2, i32 20, i1 false) #9
  %46 = tail call i32 @llvm.bswap.i32(i32 %40) #9
  store i32 %46, ptr %34, align 1
  br label %47

47:                                               ; preds = %44, %42, %31
  %48 = call i32 @tpm_transmit_cmd(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 20, ptr noundef %3) #9
  %49 = load ptr, ptr %8, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @free_pages(i32 noundef %50, i32 noundef 0) #9
  br label %51

51:                                               ; preds = %47, %4
  %52 = phi i32 [ %48, %47 ], [ -12, %4 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  ret i32 %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_transmit_cmd(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tpm1_get_random(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = alloca %struct.tpm_buf, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  store i64 0, ptr %4, align 8, !annotation !8
  %5 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #9
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.tpm_buf, ptr %4, i32 0, i32 1
  store ptr %6, ptr %7, align 4
  %8 = icmp eq i32 %5, 0
  br i1 %8, label %70, label %9

9:                                                ; preds = %3
  %10 = tail call i32 @llvm.umin.i32(i32 %2, i32 128)
  store i16 -16128, ptr %6, align 1
  %11 = getelementptr inbounds %struct.tpm_header, ptr %6, i32 0, i32 1
  store i32 167772160, ptr %11, align 1
  %12 = getelementptr inbounds %struct.tpm_header, ptr %6, i32 0, i32 2
  store i32 1174405120, ptr %12, align 1
  br label %13

13:                                               ; preds = %53, %9
  %14 = phi i32 [ %10, %9 ], [ %57, %53 ]
  %15 = phi ptr [ %1, %9 ], [ %55, %53 ]
  %16 = phi i32 [ 0, %9 ], [ %56, %53 ]
  %17 = phi i32 [ 5, %9 ], [ %59, %53 ]
  %18 = call i32 @llvm.bswap.i32(i32 %14) #9
  %19 = load ptr, ptr %7, align 4
  %20 = getelementptr inbounds %struct.tpm_header, ptr %19, i32 0, i32 1
  %21 = load i32, ptr %20, align 1
  %22 = call i32 @llvm.bswap.i32(i32 %21) #9
  %23 = load i32, ptr %4, align 8
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %13
  %27 = add i32 %22, 4
  %28 = icmp ugt i32 %27, 4096
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.18) #9
  %30 = load i32, ptr %4, align 8
  %31 = or i32 %30, 1
  store i32 %31, ptr %4, align 8
  br label %35

32:                                               ; preds = %26
  %33 = getelementptr i8, ptr %19, i32 %22
  store i32 %18, ptr %33, align 1
  %34 = call i32 @llvm.bswap.i32(i32 %27) #9
  store i32 %34, ptr %20, align 1
  br label %35

35:                                               ; preds = %32, %29, %13
  %36 = call i32 @tpm_transmit_cmd(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 4, ptr noundef nonnull @.str.6) #9
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = icmp sgt i32 %36, 0
  %40 = select i1 %39, i32 -5, i32 %36
  br label %66

41:                                               ; preds = %35
  %42 = load ptr, ptr %7, align 4
  %43 = getelementptr i8, ptr %42, i32 10
  %44 = load i32, ptr %43, align 1
  %45 = call i32 @llvm.bswap.i32(i32 %44)
  %46 = icmp ult i32 %14, %45
  br i1 %46, label %66, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.tpm_header, ptr %42, i32 0, i32 1
  %49 = load i32, ptr %48, align 1
  %50 = call i32 @llvm.bswap.i32(i32 %49) #9
  %51 = add i32 %45, 14
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %66, label %53

53:                                               ; preds = %47
  %54 = getelementptr i8, ptr %42, i32 14
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %15, ptr align 1 %54, i32 %45, i1 false)
  %55 = getelementptr i8, ptr %15, i32 %45
  %56 = add i32 %45, %16
  %57 = sub i32 %14, %45
  store i16 -16128, ptr %42, align 1
  store i32 167772160, ptr %48, align 1
  %58 = getelementptr inbounds %struct.tpm_header, ptr %42, i32 0, i32 2
  store i32 1174405120, ptr %58, align 1
  %59 = add nsw i32 %17, -1
  %60 = icmp ne i32 %17, 0
  %61 = icmp ult i32 %56, %2
  %62 = select i1 %60, i1 %61, i1 false
  br i1 %62, label %13, label %63

63:                                               ; preds = %53
  %64 = icmp eq i32 %56, 0
  %65 = select i1 %64, i32 -5, i32 %56
  br label %66

66:                                               ; preds = %63, %47, %41, %38
  %67 = phi i32 [ %40, %38 ], [ %65, %63 ], [ -14, %41 ], [ -14, %47 ]
  %68 = load ptr, ptr %7, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @free_pages(i32 noundef %69, i32 noundef 0) #9
  br label %70

70:                                               ; preds = %66, %3
  %71 = phi i32 [ %67, %66 ], [ -12, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tpm1_pcr_read(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #2 {
  %4 = alloca %struct.tpm_buf, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  store i64 0, ptr %4, align 8, !annotation !8
  %5 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #9
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.tpm_buf, ptr %4, i32 0, i32 1
  store ptr %6, ptr %7, align 4
  %8 = icmp eq i32 %5, 0
  br i1 %8, label %42, label %9

9:                                                ; preds = %3
  store i16 -16128, ptr %6, align 1
  %10 = getelementptr inbounds %struct.tpm_header, ptr %6, i32 0, i32 1
  store i32 167772160, ptr %10, align 1
  %11 = getelementptr inbounds %struct.tpm_header, ptr %6, i32 0, i32 2
  store i32 352321536, ptr %11, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %1) #9
  %13 = load ptr, ptr %7, align 4
  %14 = getelementptr inbounds %struct.tpm_header, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #9
  %17 = load i32, ptr %4, align 8
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %9
  %21 = add i32 %16, 4
  %22 = icmp ugt i32 %21, 4096
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.18) #9
  %24 = or i32 %17, 1
  store i32 %24, ptr %4, align 8
  br label %28

25:                                               ; preds = %20
  %26 = getelementptr i8, ptr %13, i32 %16
  store i32 %12, ptr %26, align 1
  %27 = tail call i32 @llvm.bswap.i32(i32 %21) #9
  store i32 %27, ptr %14, align 1
  br label %28

28:                                               ; preds = %25, %23, %9
  %29 = call i32 @tpm_transmit_cmd(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 20, ptr noundef nonnull @.str.7) #9
  %30 = icmp eq i32 %29, 0
  %31 = load ptr, ptr %7, align 4
  br i1 %30, label %32, label %39

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.tpm_header, ptr %31, i32 0, i32 1
  %34 = load i32, ptr %33, align 1
  %35 = call i32 @llvm.bswap.i32(i32 %34) #9
  %36 = icmp ult i32 %35, 20
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = getelementptr i8, ptr %31, i32 10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(20) %2, ptr noundef align 1 dereferenceable(20) %38, i32 20, i1 false)
  br label %39

39:                                               ; preds = %37, %32, %28
  %40 = phi i32 [ 0, %37 ], [ -14, %32 ], [ %29, %28 ]
  %41 = ptrtoint ptr %31 to i32
  call void @free_pages(i32 noundef %41, i32 noundef 0) #9
  br label %42

42:                                               ; preds = %39, %3
  %43 = phi i32 [ %40, %39 ], [ -12, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tpm1_do_selftest(ptr noundef %0) #2 {
  %2 = alloca %struct.tpm_buf, align 8
  %3 = alloca [20 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #9
  %4 = getelementptr %struct.tpm_chip, ptr %0, i32 0, i32 20, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp slt i32 %5, 1
  %7 = select i1 %6, i32 12000, i32 %5
  %8 = tail call i32 @jiffies_to_msecs(i32 noundef %7) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  store i64 0, ptr %2, align 8, !annotation !8
  %9 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #9
  %10 = inttoptr i32 %9 to ptr
  %11 = getelementptr inbounds %struct.tpm_buf, ptr %2, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  %12 = icmp eq i32 %9, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  br label %40

14:                                               ; preds = %1
  store i16 -16128, ptr %10, align 1
  %15 = getelementptr inbounds %struct.tpm_header, ptr %10, i32 0, i32 1
  store i32 167772160, ptr %15, align 1
  %16 = getelementptr inbounds %struct.tpm_header, ptr %10, i32 0, i32 2
  store i32 1392508928, ptr %16, align 1
  %17 = call i32 @tpm_transmit_cmd(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 0, ptr noundef nonnull @.str.19) #9
  %18 = load ptr, ptr %11, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @free_pages(i32 noundef %19, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  switch i32 %17, label %40 [
    i32 38, label %22
    i32 0, label %20
  ]

20:                                               ; preds = %14
  %21 = udiv i32 %8, 100
  br label %26

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 9
  %24 = load i32, ptr %23, align 4
  %25 = or i32 %24, 32
  store i32 %25, ptr %23, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef 38) #10
  br label %40

26:                                               ; preds = %37, %20
  %27 = phi i32 [ %38, %37 ], [ %21, %20 ]
  %28 = call i32 @tpm1_pcr_read(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3)
  %29 = icmp eq i32 %28, -62
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.9) #10
  br label %37

31:                                               ; preds = %26
  %32 = and i32 %28, -2
  %33 = icmp eq i32 %32, 6
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %28) #10
  br label %40

35:                                               ; preds = %31
  %36 = icmp eq i32 %28, 2050
  br i1 %36, label %37, label %40

37:                                               ; preds = %35, %30
  call void @usleep_range_state(i32 noundef 99700, i32 noundef 100000, i32 noundef 2) #9
  %38 = add i32 %27, -1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %26

40:                                               ; preds = %37, %35, %34, %22, %14, %13
  %41 = phi i32 [ 0, %34 ], [ %17, %14 ], [ 38, %22 ], [ -12, %13 ], [ %28, %35 ], [ %28, %37 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #9
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tpm1_auto_startup(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call i32 @tpm1_get_timeouts(ptr noundef %0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @tpm1_do_selftest(ptr noundef %0)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.11) #10
  br label %8

8:                                                ; preds = %7, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ]
  %10 = icmp sgt i32 %9, 0
  %11 = select i1 %10, i32 -19, i32 %9
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi i32 [ %11, %8 ], [ 0, %4 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tpm1_pm_suspend(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = alloca [20 x i8], align 1
  %4 = alloca %struct.tpm_buf, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(20) %3, i8 0, i32 20, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  store i64 0, ptr %4, align 8, !annotation !8
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = call i32 @tpm1_pcr_extend(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %3, ptr noundef nonnull @.str.12)
  br label %8

8:                                                ; preds = %6, %2
  %9 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #9
  %10 = inttoptr i32 %9 to ptr
  %11 = getelementptr inbounds %struct.tpm_buf, ptr %4, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  %12 = icmp eq i32 %9, 0
  br i1 %12, label %35, label %13

13:                                               ; preds = %8
  store i16 -16128, ptr %10, align 1
  %14 = getelementptr inbounds %struct.tpm_header, ptr %10, i32 0, i32 1
  store i32 167772160, ptr %14, align 1
  %15 = getelementptr inbounds %struct.tpm_header, ptr %10, i32 0, i32 2
  store i32 -1744830464, ptr %15, align 1
  br label %16

16:                                               ; preds = %19, %13
  %17 = phi i32 [ 0, %13 ], [ %23, %19 ]
  %18 = call i32 @tpm_transmit_cmd(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 0, ptr noundef null) #9
  switch i32 %18, label %25 [
    i32 2048, label %19
    i32 0, label %27
  ]

19:                                               ; preds = %16
  call void @usleep_range_state(i32 noundef 99700, i32 noundef 100000, i32 noundef 2) #9
  %20 = load ptr, ptr %11, align 4
  store i16 -16128, ptr %20, align 1
  %21 = getelementptr inbounds %struct.tpm_header, ptr %20, i32 0, i32 1
  store i32 167772160, ptr %21, align 1
  %22 = getelementptr inbounds %struct.tpm_header, ptr %20, i32 0, i32 2
  store i32 -1744830464, ptr %22, align 1
  %23 = add nuw nsw i32 %17, 1
  %24 = icmp eq i32 %23, 50
  br i1 %24, label %25, label %16

25:                                               ; preds = %19, %16
  %26 = phi i32 [ %18, %16 ], [ 2048, %19 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %26) #10
  br label %31

27:                                               ; preds = %16
  %28 = icmp eq i32 %17, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %27
  %30 = mul i32 %17, 100
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %30) #10
  br label %31

31:                                               ; preds = %29, %27, %25
  %32 = phi i32 [ 0, %27 ], [ 0, %29 ], [ %26, %25 ]
  %33 = load ptr, ptr %11, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @free_pages(i32 noundef %34, i32 noundef 0) #9
  br label %35

35:                                               ; preds = %31, %8
  %36 = phi i32 [ %32, %31 ], [ -12, %8 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #9
  ret i32 %36
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tpm1_get_pcr_allocation(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 6) #11
  %4 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 26
  store ptr %3, ptr %4, align 4
  %5 = icmp eq ptr %3, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  store i16 4, ptr %3, align 8
  %7 = load i32, ptr getelementptr inbounds ([20 x i32], ptr @hash_digest_size, i32 0, i32 2), align 4
  %8 = trunc i32 %7 to i16
  %9 = getelementptr inbounds %struct.tpm_bank_info, ptr %3, i32 0, i32 1
  store i16 %8, ptr %9, align 2
  %10 = getelementptr inbounds %struct.tpm_bank_info, ptr %3, i32 0, i32 2
  store i16 2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 25
  store i32 1, ptr %11, align 8
  br label %12

12:                                               ; preds = %6, %1
  %13 = phi i32 [ 0, %6 ], [ -12, %1 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

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
