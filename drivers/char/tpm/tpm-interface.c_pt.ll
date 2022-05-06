; ModuleID = '/llk/IR/drivers/char/tpm/tpm-interface.c_pt.bc'
source_filename = "../drivers/char/tpm/tpm-interface.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tpm_calc_ordinal_duration:\09\09\09\09\09"
module asm "\09.asciz \09\22tpm_calc_ordinal_duration\22\09\09\09\09\09"
module asm "__kstrtabns_tpm_calc_ordinal_duration:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tpm_transmit_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22tpm_transmit_cmd\22\09\09\09\09\09"
module asm "__kstrtabns_tpm_transmit_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tpm_get_timeouts:\09\09\09\09\09"
module asm "\09.asciz \09\22tpm_get_timeouts\22\09\09\09\09\09"
module asm "__kstrtabns_tpm_get_timeouts:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tpm_is_tpm2:\09\09\09\09\09"
module asm "\09.asciz \09\22tpm_is_tpm2\22\09\09\09\09\09"
module asm "__kstrtabns_tpm_is_tpm2:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tpm_pcr_read:\09\09\09\09\09"
module asm "\09.asciz \09\22tpm_pcr_read\22\09\09\09\09\09"
module asm "__kstrtabns_tpm_pcr_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tpm_pcr_extend:\09\09\09\09\09"
module asm "\09.asciz \09\22tpm_pcr_extend\22\09\09\09\09\09"
module asm "__kstrtabns_tpm_pcr_extend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tpm_send:\09\09\09\09\09"
module asm "\09.asciz \09\22tpm_send\22\09\09\09\09\09"
module asm "__kstrtabns_tpm_send:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tpm_pm_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22tpm_pm_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_tpm_pm_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tpm_pm_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22tpm_pm_resume\22\09\09\09\09\09"
module asm "__kstrtabns_tpm_pm_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tpm_get_random:\09\09\09\09\09"
module asm "\09.asciz \09\22tpm_get_random\22\09\09\09\09\09"
module asm "__kstrtabns_tpm_get_random:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.64 }
%union.anon.64 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.tpm_chip = type { %struct.device, %struct.device, %struct.cdev, %struct.cdev, %struct.rw_semaphore, ptr, %struct.tpm_bios_log, %struct.tpm_chip_seqops, %struct.tpm_chip_seqops, i32, i32, i32, [64 x i8], %struct.hwrng, %struct.mutex, i32, i32, i32, i32, i8, [4 x i32], i8, [3 x ptr], [8 x ptr], i32, i32, ptr, %struct.tpm_space, i32, i32, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.tpm_bios_log = type { ptr, ptr }
%struct.tpm_chip_seqops = type { ptr, ptr }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.tpm_space = type { [3 x i32], ptr, [3 x i32], ptr, i32 }
%struct.tpm_header = type <{ i16, i32, %union.anon.71 }>
%union.anon.71 = type { i32 }
%struct.tpm_class_ops = type { i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tpm_buf = type { i32, ptr }
%struct.tpm_digest = type { i16, [64 x i8] }
%struct.tpm_bank_info = type { i16, i16, i16 }

@__param_str_suspend_pcr = internal constant [12 x i8] c"suspend_pcr\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@tpm_suspend_pcr = internal global i32 0, align 4
@__param_suspend_pcr = internal constant %struct.kernel_param { ptr @__param_str_suspend_pcr, ptr @__this_module, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @tpm_suspend_pcr } }, section "__param", align 4
@__UNIQUE_ID_suspend_pcrtype249 = internal constant [26 x i8] c"parmtype=suspend_pcr:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_suspend_pcr250 = internal constant [77 x i8] c"parm=suspend_pcr:PCR to use for dummy writes to facilitate flush on suspend.\00", section ".modinfo", align 1
@__kstrtab_tpm_calc_ordinal_duration = external dso_local constant [0 x i8], align 1
@__kstrtabns_tpm_calc_ordinal_duration = external dso_local constant [0 x i8], align 1
@__ksymtab_tpm_calc_ordinal_duration = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tpm_calc_ordinal_duration to i32), ptr @__kstrtab_tpm_calc_ordinal_duration, ptr @__kstrtabns_tpm_calc_ordinal_duration }, section "___ksymtab_gpl+tpm_calc_ordinal_duration", align 4
@.str = private unnamed_addr constant [15 x i8] c"in retry loop\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"self test is still running\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"A TPM error (%d) occurred %s\0A\00", align 1
@__kstrtab_tpm_transmit_cmd = external dso_local constant [0 x i8], align 1
@__kstrtabns_tpm_transmit_cmd = external dso_local constant [0 x i8], align 1
@__ksymtab_tpm_transmit_cmd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tpm_transmit_cmd to i32), ptr @__kstrtab_tpm_transmit_cmd, ptr @__kstrtabns_tpm_transmit_cmd }, section "___ksymtab_gpl+tpm_transmit_cmd", align 4
@__kstrtab_tpm_get_timeouts = external dso_local constant [0 x i8], align 1
@__kstrtabns_tpm_get_timeouts = external dso_local constant [0 x i8], align 1
@__ksymtab_tpm_get_timeouts = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tpm_get_timeouts to i32), ptr @__kstrtab_tpm_get_timeouts, ptr @__kstrtabns_tpm_get_timeouts }, section "___ksymtab_gpl+tpm_get_timeouts", align 4
@__kstrtab_tpm_is_tpm2 = external dso_local constant [0 x i8], align 1
@__kstrtabns_tpm_is_tpm2 = external dso_local constant [0 x i8], align 1
@__ksymtab_tpm_is_tpm2 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tpm_is_tpm2 to i32), ptr @__kstrtab_tpm_is_tpm2, ptr @__kstrtabns_tpm_is_tpm2 }, section "___ksymtab_gpl+tpm_is_tpm2", align 4
@__kstrtab_tpm_pcr_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_tpm_pcr_read = external dso_local constant [0 x i8], align 1
@__ksymtab_tpm_pcr_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tpm_pcr_read to i32), ptr @__kstrtab_tpm_pcr_read, ptr @__kstrtabns_tpm_pcr_read }, section "___ksymtab_gpl+tpm_pcr_read", align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"attempting extend a PCR value\00", align 1
@__kstrtab_tpm_pcr_extend = external dso_local constant [0 x i8], align 1
@__kstrtabns_tpm_pcr_extend = external dso_local constant [0 x i8], align 1
@__ksymtab_tpm_pcr_extend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tpm_pcr_extend to i32), ptr @__kstrtab_tpm_pcr_extend, ptr @__kstrtabns_tpm_pcr_extend }, section "___ksymtab_gpl+tpm_pcr_extend", align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"attempting to a send a command\00", align 1
@__kstrtab_tpm_send = external dso_local constant [0 x i8], align 1
@__kstrtabns_tpm_send = external dso_local constant [0 x i8], align 1
@__ksymtab_tpm_send = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tpm_send to i32), ptr @__kstrtab_tpm_send, ptr @__kstrtabns_tpm_send }, section "___ksymtab_gpl+tpm_send", align 4
@__kstrtab_tpm_pm_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_tpm_pm_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_tpm_pm_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tpm_pm_suspend to i32), ptr @__kstrtab_tpm_pm_suspend, ptr @__kstrtabns_tpm_pm_suspend }, section "___ksymtab_gpl+tpm_pm_suspend", align 4
@__kstrtab_tpm_pm_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_tpm_pm_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_tpm_pm_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tpm_pm_resume to i32), ptr @__kstrtab_tpm_pm_resume, ptr @__kstrtabns_tpm_pm_resume }, section "___ksymtab_gpl+tpm_pm_resume", align 4
@__kstrtab_tpm_get_random = external dso_local constant [0 x i8], align 1
@__kstrtabns_tpm_get_random = external dso_local constant [0 x i8], align 1
@__ksymtab_tpm_get_random = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tpm_get_random to i32), ptr @__kstrtab_tpm_get_random, ptr @__kstrtabns_tpm_get_random }, section "___ksymtab_gpl+tpm_get_random", align 4
@__UNIQUE_ID_author253 = internal constant [52 x i8] c"author=Leendert van Doorn (leendert@watson.ibm.com)\00", section ".modinfo", align 1
@__UNIQUE_ID_description254 = internal constant [23 x i8] c"description=TPM Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_version255 = internal constant [12 x i8] c"version=2.0\00", section ".modinfo", align 1
@__UNIQUE_ID_license256 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"invalid count value %x %zx\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"%s: send(): error %d\0A\00", align 1
@__func__.tpm_try_transmit = private unnamed_addr constant [17 x i8] c"tpm_try_transmit\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"%s: send(): invalid value %d\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.8 = private unnamed_addr constant [20 x i8] c"Operation Canceled\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Operation Timed out\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"tpm_transmit: tpm_recv: error %d\0A\00", align 1
@pm_suspend_global_flags = external dso_local local_unnamed_addr global i32, align 4
@tpm_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"tpm\00", align 1
@tpm_class = external dso_local local_unnamed_addr global ptr, align 4
@.str.12 = private unnamed_addr constant [29 x i8] c"\013couldn't create tpm class\0A\00", align 1
@tpm_init.__key.13 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"tpmrm\00", align 1
@tpmrm_class = external dso_local local_unnamed_addr global ptr, align 4
@.str.15 = private unnamed_addr constant [31 x i8] c"\013couldn't create tpmrm class\0A\00", align 1
@tpm_devt = external dso_local global i32, align 4
@.str.16 = private unnamed_addr constant [43 x i8] c"\013tpm: failed to allocate char dev region\0A\00", align 1
@dev_nums_idr = external dso_local global %struct.idr, align 4
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_author253, ptr @__UNIQUE_ID_description254, ptr @__UNIQUE_ID_license256, ptr @__UNIQUE_ID_suspend_pcr250, ptr @__UNIQUE_ID_suspend_pcrtype249, ptr @__UNIQUE_ID_version255, ptr @__ksymtab_tpm_calc_ordinal_duration, ptr @__ksymtab_tpm_get_random, ptr @__ksymtab_tpm_get_timeouts, ptr @__ksymtab_tpm_is_tpm2, ptr @__ksymtab_tpm_pcr_extend, ptr @__ksymtab_tpm_pcr_read, ptr @__ksymtab_tpm_pm_resume, ptr @__ksymtab_tpm_pm_suspend, ptr @__ksymtab_tpm_send, ptr @__ksymtab_tpm_transmit_cmd, ptr @__param_suspend_pcr], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tpm_calc_ordinal_duration(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 9
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 @tpm2_calc_ordinal_duration(ptr noundef %0, i32 noundef %1) #9
  br label %11

9:                                                ; preds = %2
  %10 = tail call i32 @tpm1_calc_ordinal_duration(ptr noundef %0, i32 noundef %1) #9
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm2_calc_ordinal_duration(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm1_calc_ordinal_duration(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tpm_transmit(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [22 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %4)
  %5 = tail call i32 @llvm.umin.i32(i32 %2, i32 22)
  %6 = getelementptr inbounds %struct.tpm_header, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 1
  %8 = icmp ugt i32 %5, 21
  %9 = sub nuw nsw i32 22, %5
  %10 = select i1 %8, i32 0, i32 %9
  %11 = getelementptr i8, ptr %4, i32 %5
  call void @llvm.memset.p0.i32(ptr align 1 %11, i8 0, i32 %10, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %4, ptr align 1 %1, i32 %5, i1 false)
  %12 = icmp ult i32 %2, 10
  br i1 %12, label %117, label %13

13:                                               ; preds = %3
  %14 = tail call i32 @llvm.umin.i32(i32 %2, i32 4096) #9
  %15 = getelementptr inbounds %struct.tpm_header, ptr %1, i32 0, i32 1
  %16 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 5
  %17 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 9
  %18 = icmp eq i32 %7, 1124139008
  %19 = load i32, ptr %15, align 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %117, label %21

21:                                               ; preds = %13
  %22 = tail call i32 @llvm.bswap.i32(i32 %7) #9
  %23 = tail call i32 @llvm.bswap.i32(i32 %19) #9
  br label %24

24:                                               ; preds = %108, %21
  %25 = phi i32 [ %22, %21 ], [ %115, %108 ]
  %26 = phi i32 [ %23, %21 ], [ %114, %108 ]
  %27 = phi i32 [ 20, %21 ], [ %111, %108 ]
  %28 = icmp ugt i32 %26, %14
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %26, i32 noundef %14) #10
  br label %117

30:                                               ; preds = %24
  %31 = load ptr, ptr %16, align 8
  %32 = getelementptr inbounds %struct.tpm_class_ops, ptr %31, i32 0, i32 5
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 %33(ptr noundef %0, ptr noundef %1, i32 noundef %26) #9
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = icmp eq i32 %34, -32
  br i1 %37, label %117, label %38

38:                                               ; preds = %36
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.tpm_try_transmit, i32 noundef %34) #10
  br label %117

39:                                               ; preds = %30
  %40 = icmp eq i32 %34, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %39
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.tpm_try_transmit, i32 noundef %34) #10
  br label %42

42:                                               ; preds = %41, %39
  %43 = load i32, ptr %17, align 4
  %44 = and i32 %43, 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %16, align 8
  br label %84

48:                                               ; preds = %42
  %49 = load volatile i32, ptr @jiffies, align 64
  %50 = and i32 %43, 2
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = tail call i32 @tpm2_calc_ordinal_duration(ptr noundef %0, i32 noundef %25) #9
  br label %56

54:                                               ; preds = %48
  %55 = tail call i32 @tpm1_calc_ordinal_duration(ptr noundef %0, i32 noundef %25) #9
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = add i32 %57, %49
  br label %59

59:                                               ; preds = %76, %56
  %60 = load ptr, ptr %16, align 8
  %61 = getelementptr inbounds %struct.tpm_class_ops, ptr %60, i32 0, i32 7
  %62 = load ptr, ptr %61, align 4
  %63 = tail call zeroext i8 %62(ptr noundef %0) #9
  %64 = load ptr, ptr %16, align 8
  %65 = getelementptr inbounds %struct.tpm_class_ops, ptr %64, i32 0, i32 1
  %66 = load i8, ptr %65, align 4
  %67 = and i8 %66, %63
  %68 = getelementptr inbounds %struct.tpm_class_ops, ptr %64, i32 0, i32 2
  %69 = load i8, ptr %68, align 1
  %70 = icmp eq i8 %67, %69
  br i1 %70, label %84, label %71

71:                                               ; preds = %59
  %72 = getelementptr inbounds %struct.tpm_class_ops, ptr %64, i32 0, i32 3
  %73 = load ptr, ptr %72, align 4
  %74 = tail call zeroext i1 %73(ptr noundef %0, i8 noundef zeroext %63) #9
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.8) #10
  br label %117

76:                                               ; preds = %71
  tail call void @usleep_range_state(i32 noundef 700, i32 noundef 1000, i32 noundef 2) #9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !8
  %77 = load volatile i32, ptr @jiffies, align 64
  %78 = sub i32 %77, %58
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %59, label %80

80:                                               ; preds = %76
  %81 = load ptr, ptr %16, align 8
  %82 = getelementptr inbounds %struct.tpm_class_ops, ptr %81, i32 0, i32 6
  %83 = load ptr, ptr %82, align 4
  tail call void %83(ptr noundef %0) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.9) #10
  br label %117

84:                                               ; preds = %59, %46
  %85 = phi ptr [ %47, %46 ], [ %64, %59 ]
  %86 = getelementptr inbounds %struct.tpm_class_ops, ptr %85, i32 0, i32 4
  %87 = load ptr, ptr %86, align 4
  %88 = tail call i32 %87(ptr noundef %0, ptr noundef %1, i32 noundef %14) #9
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %88) #10
  br label %117

91:                                               ; preds = %84
  %92 = icmp ult i32 %88, 10
  br i1 %92, label %117, label %93

93:                                               ; preds = %91
  %94 = load i32, ptr %15, align 1
  %95 = tail call i32 @llvm.bswap.i32(i32 %94) #9
  %96 = icmp eq i32 %88, %95
  br i1 %96, label %97, label %117

97:                                               ; preds = %93
  %98 = load i32, ptr %6, align 1
  switch i32 %98, label %117 [
    i32 571015168, label %99
    i32 168361984, label %99
  ]

99:                                               ; preds = %97, %97
  %100 = icmp eq i32 %98, 168361984
  %101 = select i1 %100, i1 %18, i1 false
  br i1 %101, label %117, label %102

102:                                              ; preds = %99
  %103 = icmp ugt i32 %27, 2000
  br i1 %103, label %104, label %108

104:                                              ; preds = %102
  %105 = icmp eq i32 %98, 571015168
  br i1 %105, label %106, label %107

106:                                              ; preds = %104
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str) #10
  br label %117

107:                                              ; preds = %104
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.1) #10
  br label %117

108:                                              ; preds = %102
  %109 = mul nuw nsw i32 %27, 1000
  %110 = add nsw i32 %109, -300
  tail call void @usleep_range_state(i32 noundef %110, i32 noundef %109, i32 noundef 2) #9
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1, ptr nonnull align 1 %4, i32 %5, i1 false)
  %111 = shl nuw nsw i32 %27, 1
  %112 = load i32, ptr %6, align 1
  %113 = load i32, ptr %15, align 1
  %114 = tail call i32 @llvm.bswap.i32(i32 %113) #9
  %115 = tail call i32 @llvm.bswap.i32(i32 %112) #9
  %116 = icmp eq i32 %113, 0
  br i1 %116, label %117, label %24

117:                                              ; preds = %108, %107, %106, %99, %97, %93, %91, %90, %80, %75, %38, %36, %29, %13, %3
  %118 = phi i32 [ %88, %106 ], [ %88, %107 ], [ -125, %75 ], [ -32, %36 ], [ %34, %38 ], [ -62, %80 ], [ -7, %29 ], [ %88, %90 ], [ -22, %3 ], [ -61, %13 ], [ %88, %99 ], [ %88, %97 ], [ -61, %108 ], [ -14, %93 ], [ -14, %91 ]
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %4)
  ret i32 %118
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tpm_transmit_cmd(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.tpm_buf, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @tpm_transmit(ptr noundef %0, ptr noundef %6, i32 noundef 4096)
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tpm_header, ptr %6, i32 0, i32 2
  %11 = load i32, ptr %10, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %13 = icmp eq i32 %11, 0
  %14 = icmp eq ptr %3, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %9
  switch i32 %11, label %16 [
    i32 0, label %18
    i32 100663296, label %22
    i32 117440512, label %22
    i32 168361984, label %22
  ]

16:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %12, ptr noundef nonnull %3) #10
  br label %17

17:                                               ; preds = %16, %9
  br i1 %13, label %18, label %22

18:                                               ; preds = %17, %15
  %19 = add i32 %2, 10
  %20 = icmp ult i32 %7, %19
  %21 = select i1 %20, i32 -14, i32 0
  br label %22

22:                                               ; preds = %18, %17, %15, %15, %15, %4
  %23 = phi i32 [ %7, %4 ], [ %12, %15 ], [ %12, %15 ], [ %12, %15 ], [ %12, %17 ], [ %21, %18 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tpm_get_timeouts(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 9
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = and i32 %3, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @tpm2_get_timeouts(ptr noundef %0) #9
  br label %13

11:                                               ; preds = %6
  %12 = tail call i32 @tpm1_get_timeouts(ptr noundef %0) #9
  br label %13

13:                                               ; preds = %11, %9, %1
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ], [ 0, %1 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm2_get_timeouts(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm1_get_timeouts(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tpm_is_tpm2(ptr noundef %0) #0 {
  %2 = tail call ptr @tpm_find_get_ops(ptr noundef %0) #9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tpm_chip, ptr %2, i32 0, i32 9
  %6 = load i32, ptr %5, align 4
  %7 = lshr i32 %6, 1
  %8 = and i32 %7, 1
  tail call void @tpm_put_ops(ptr noundef nonnull %2) #9
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i32 [ %8, %4 ], [ -19, %1 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tpm_find_get_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpm_put_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tpm_pcr_read(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @tpm_find_get_ops(ptr noundef %0) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.tpm_chip, ptr %4, i32 0, i32 9
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = tail call i32 @tpm2_pcr_read(ptr noundef nonnull %4, i32 noundef %1, ptr noundef %2, ptr noundef null) #9
  br label %16

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.tpm_digest, ptr %2, i32 0, i32 1
  %15 = tail call i32 @tpm1_pcr_read(ptr noundef nonnull %4, i32 noundef %1, ptr noundef %14) #9
  br label %16

16:                                               ; preds = %13, %11
  %17 = phi i32 [ %12, %11 ], [ %15, %13 ]
  tail call void @tpm_put_ops(ptr noundef nonnull %4) #9
  br label %18

18:                                               ; preds = %16, %3
  %19 = phi i32 [ %17, %16 ], [ -19, %3 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm2_pcr_read(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm1_pcr_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tpm_pcr_extend(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @tpm_find_get_ops(ptr noundef %0) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %35, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.tpm_chip, ptr %4, i32 0, i32 25
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.tpm_chip, ptr %4, i32 0, i32 26
  %12 = load ptr, ptr %11, align 4
  br label %16

13:                                               ; preds = %16
  %14 = add nuw i32 %17, 1
  %15 = icmp eq i32 %14, %8
  br i1 %15, label %23, label %16

16:                                               ; preds = %13, %10
  %17 = phi i32 [ 0, %10 ], [ %14, %13 ]
  %18 = getelementptr %struct.tpm_digest, ptr %2, i32 %17
  %19 = load i16, ptr %18, align 1
  %20 = getelementptr %struct.tpm_bank_info, ptr %12, i32 %17
  %21 = load i16, ptr %20, align 2
  %22 = icmp eq i16 %19, %21
  br i1 %22, label %13, label %33

23:                                               ; preds = %13, %6
  %24 = getelementptr inbounds %struct.tpm_chip, ptr %4, i32 0, i32 9
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = tail call i32 @tpm2_pcr_extend(ptr noundef nonnull %4, i32 noundef %1, ptr noundef %2) #9
  br label %33

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.tpm_digest, ptr %2, i32 0, i32 1
  %32 = tail call i32 @tpm1_pcr_extend(ptr noundef nonnull %4, i32 noundef %1, ptr noundef %31, ptr noundef nonnull @.str.3) #9
  br label %33

33:                                               ; preds = %30, %28, %16
  %34 = phi i32 [ %29, %28 ], [ %32, %30 ], [ -22, %16 ]
  tail call void @tpm_put_ops(ptr noundef nonnull %4) #9
  br label %35

35:                                               ; preds = %33, %3
  %36 = phi i32 [ %34, %33 ], [ -19, %3 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm2_pcr_extend(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm1_pcr_extend(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tpm_send(ptr noundef %0, ptr noundef %1, i32 %2) #0 {
  %4 = tail call ptr @tpm_find_get_ops(ptr noundef %0) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @tpm_transmit(ptr noundef nonnull %4, ptr noundef %1, i32 noundef 4096) #9
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.tpm_header, ptr %1, i32 0, i32 2
  %11 = load i32, ptr %10, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #9
  switch i32 %11, label %13 [
    i32 0, label %14
    i32 100663296, label %17
    i32 117440512, label %17
    i32 168361984, label %17
  ]

13:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %4, ptr noundef nonnull @.str.2, i32 noundef %12, ptr noundef nonnull @.str.4) #10
  br label %17

14:                                               ; preds = %9
  %15 = icmp ult i32 %7, 10
  %16 = select i1 %15, i32 -14, i32 0
  br label %17

17:                                               ; preds = %14, %13, %9, %9, %9, %6
  %18 = phi i32 [ %7, %6 ], [ %12, %9 ], [ %12, %9 ], [ %12, %9 ], [ %12, %13 ], [ %16, %14 ]
  tail call void @tpm_put_ops(ptr noundef nonnull %4) #9
  br label %19

19:                                               ; preds = %17, %3
  %20 = phi i32 [ %18, %17 ], [ -19, %3 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tpm_auto_startup(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 8
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 9
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = tail call i32 @tpm2_auto_startup(ptr noundef %0) #9
  br label %16

14:                                               ; preds = %7
  %15 = tail call i32 @tpm1_auto_startup(ptr noundef %0) #9
  br label %16

16:                                               ; preds = %14, %12, %1
  %17 = phi i32 [ 0, %1 ], [ %13, %12 ], [ %15, %14 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm2_auto_startup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm1_auto_startup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tpm_pm_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %30, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tpm_chip, ptr %3, i32 0, i32 9
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %5
  %11 = and i32 %7, 64
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = load i32, ptr @pm_suspend_global_flags, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %13, %10
  %18 = tail call i32 @tpm_chip_start(ptr noundef nonnull %3) #9
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load i32, ptr %6, align 4
  %22 = and i32 %21, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @tpm2_shutdown(ptr noundef nonnull %3, i16 noundef zeroext 1) #9
  br label %28

25:                                               ; preds = %20
  %26 = load i32, ptr @tpm_suspend_pcr, align 4
  %27 = tail call i32 @tpm1_pm_suspend(ptr noundef nonnull %3, i32 noundef %26) #9
  br label %28

28:                                               ; preds = %25, %24
  %29 = phi i32 [ 0, %24 ], [ %27, %25 ]
  tail call void @tpm_chip_stop(ptr noundef nonnull %3) #9
  br label %30

30:                                               ; preds = %28, %17, %13, %5, %1
  %31 = phi i32 [ -19, %1 ], [ 0, %5 ], [ 0, %17 ], [ %29, %28 ], [ 0, %13 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_chip_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpm2_shutdown(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm1_pm_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpm_chip_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @tpm_pm_resume(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  %5 = select i1 %4, i32 -19, i32 0
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tpm_get_random(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %1, null
  %5 = icmp ugt i32 %2, 128
  %6 = or i1 %4, %5
  br i1 %6, label %21, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @tpm_find_get_ops(ptr noundef %0) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.tpm_chip, ptr %8, i32 0, i32 9
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = tail call i32 @tpm2_get_random(ptr noundef nonnull %8, ptr noundef nonnull %1, i32 noundef %2) #9
  br label %19

17:                                               ; preds = %10
  %18 = tail call i32 @tpm1_get_random(ptr noundef nonnull %8, ptr noundef nonnull %1, i32 noundef %2) #9
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  tail call void @tpm_put_ops(ptr noundef nonnull %8) #9
  br label %21

21:                                               ; preds = %19, %7, %3
  %22 = phi i32 [ %20, %19 ], [ -22, %3 ], [ -19, %7 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm2_get_random(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm1_get_random(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #8 section ".init.text" {
  %1 = tail call ptr @__class_create(ptr noundef nonnull @__this_module, ptr noundef nonnull @.str.11, ptr noundef nonnull @tpm_init.__key) #9
  store ptr %1, ptr @tpm_class, align 4
  %2 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #10
  %5 = load ptr, ptr @tpm_class, align 4
  %6 = ptrtoint ptr %5 to i32
  br label %31

7:                                                ; preds = %0
  %8 = tail call ptr @__class_create(ptr noundef nonnull @__this_module, ptr noundef nonnull @.str.14, ptr noundef nonnull @tpm_init.__key.13) #9
  store ptr %8, ptr @tpmrm_class, align 4
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #10
  %12 = load ptr, ptr @tpmrm_class, align 4
  %13 = ptrtoint ptr %12 to i32
  br label %28

14:                                               ; preds = %7
  %15 = tail call i32 @alloc_chrdev_region(ptr noundef nonnull @tpm_devt, i32 noundef 0, i32 noundef 131072, ptr noundef nonnull @.str.11) #9
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #10
  br label %25

19:                                               ; preds = %14
  %20 = tail call i32 @tpm_dev_common_init() #9
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %19
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #10
  %24 = load i32, ptr @tpm_devt, align 4
  tail call void @unregister_chrdev_region(i32 noundef %24, i32 noundef 131072) #9
  br label %25

25:                                               ; preds = %22, %17
  %26 = phi i32 [ %15, %17 ], [ %20, %22 ]
  %27 = load ptr, ptr @tpmrm_class, align 4
  tail call void @class_destroy(ptr noundef %27) #9
  br label %28

28:                                               ; preds = %25, %10
  %29 = phi i32 [ %13, %10 ], [ %26, %25 ]
  %30 = load ptr, ptr @tpm_class, align 4
  tail call void @class_destroy(ptr noundef %30) #9
  br label %31

31:                                               ; preds = %28, %19, %3
  %32 = phi i32 [ %6, %3 ], [ %29, %28 ], [ 0, %19 ]
  ret i32 %32
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #8 section ".exit.text" {
  tail call void @idr_destroy(ptr noundef nonnull @dev_nums_idr) #9
  %1 = load ptr, ptr @tpm_class, align 4
  tail call void @class_destroy(ptr noundef %1) #9
  %2 = load ptr, ptr @tpmrm_class, align 4
  tail call void @class_destroy(ptr noundef %2) #9
  %3 = load i32, ptr @tpm_devt, align 4
  tail call void @unregister_chrdev_region(i32 noundef %3, i32 noundef 131072) #9
  tail call void @tpm_dev_common_exit() #9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_dev_common_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpm_dev_common_exit() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!8 = !{i64 2154056201}
