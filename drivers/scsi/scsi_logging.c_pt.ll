; ModuleID = '/llk/IR/drivers/scsi/scsi_logging.c_pt.bc'
source_filename = "../drivers/scsi/scsi_logging.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdev_prefix_printk:\09\09\09\09\09"
module asm "\09.asciz \09\22sdev_prefix_printk\22\09\09\09\09\09"
module asm "__kstrtabns_sdev_prefix_printk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scmd_printk:\09\09\09\09\09"
module asm "\09.asciz \09\22scmd_printk\22\09\09\09\09\09"
module asm "__kstrtabns_scmd_printk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___scsi_format_command:\09\09\09\09\09"
module asm "\09.asciz \09\22__scsi_format_command\22\09\09\09\09\09"
module asm "__kstrtabns___scsi_format_command:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_print_command:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_print_command\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_print_command:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_print_sense_hdr:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_print_sense_hdr\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_print_sense_hdr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___scsi_print_sense:\09\09\09\09\09"
module asm "\09.asciz \09\22__scsi_print_sense\22\09\09\09\09\09"
module asm "__kstrtabns___scsi_print_sense:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_print_sense:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_print_sense\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_print_sense:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_print_result:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_print_result\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_print_result:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.__va_list = type { ptr }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.execute_work = type { %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.lockdep_map = type {}
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.scsi_varlen_cdb_hdr = type { i8, i8, [5 x i8], i8, i16 }
%struct.scsi_sense_hdr = type { i8, i8, i8, i8, i8, i8, i8, i8 }

@.str = private unnamed_addr constant [6 x i8] c"[%s] \00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"drivers/scsi/scsi_logging.c\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__kstrtab_sdev_prefix_printk = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdev_prefix_printk = external dso_local constant [0 x i8], align 1
@__ksymtab_sdev_prefix_printk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdev_prefix_printk to i32), ptr @__kstrtab_sdev_prefix_printk, ptr @__kstrtabns_sdev_prefix_printk }, section "___ksymtab+sdev_prefix_printk", align 4
@__kstrtab_scmd_printk = external dso_local constant [0 x i8], align 1
@__kstrtabns_scmd_printk = external dso_local constant [0 x i8], align 1
@__ksymtab_scmd_printk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scmd_printk to i32), ptr @__kstrtab_scmd_printk, ptr @__kstrtabns_scmd_printk }, section "___ksymtab+scmd_printk", align 4
@.str.3 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@__kstrtab___scsi_format_command = external dso_local constant [0 x i8], align 1
@__kstrtabns___scsi_format_command = external dso_local constant [0 x i8], align 1
@__ksymtab___scsi_format_command = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__scsi_format_command to i32), ptr @__kstrtab___scsi_format_command, ptr @__kstrtabns___scsi_format_command }, section "___ksymtab+__scsi_format_command", align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"CDB: \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\016\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"CDB[%02x]: \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c" \00", align 1
@__kstrtab_scsi_print_command = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_print_command = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_print_command = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_print_command to i32), ptr @__kstrtab_scsi_print_command, ptr @__kstrtabns_scsi_print_command }, section "___ksymtab+scsi_print_command", align 4
@__kstrtab_scsi_print_sense_hdr = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_print_sense_hdr = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_print_sense_hdr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_print_sense_hdr to i32), ptr @__kstrtab_scsi_print_sense_hdr, ptr @__kstrtabns_scsi_print_sense_hdr }, section "___ksymtab+scsi_print_sense_hdr", align 4
@__kstrtab___scsi_print_sense = external dso_local constant [0 x i8], align 1
@__kstrtabns___scsi_print_sense = external dso_local constant [0 x i8], align 1
@__ksymtab___scsi_print_sense = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__scsi_print_sense to i32), ptr @__kstrtab___scsi_print_sense, ptr @__kstrtabns___scsi_print_sense }, section "___ksymtab+__scsi_print_sense", align 4
@__kstrtab_scsi_print_sense = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_print_sense = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_print_sense = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_print_sense to i32), ptr @__kstrtab_scsi_print_sense, ptr @__kstrtabns_scsi_print_sense }, section "___ksymtab+scsi_print_sense", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.9 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"UNKNOWN(0x%02x) \00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"Result: \00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"hostbyte=0x%02x \00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"driverbyte=DRIVER_OK \00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"cmd_age=%lus\00", align 1
@__kstrtab_scsi_print_result = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_print_result = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_print_result = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_print_result to i32), ptr @__kstrtab_scsi_print_result, ptr @__kstrtabns_scsi_print_result }, section "___ksymtab+scsi_print_result", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.17 = private unnamed_addr constant [8 x i8] c"tag#%d \00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"short variable length command, len=%d\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"opcode=0x%x\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c" (vendor)\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c" (reserved)\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"opcode=0x%x, sa=0x%x\00", align 1
@scsi_command_size_tbl = external dso_local local_unnamed_addr constant [8 x i8], align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"Sense Key : \00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"0x%x \00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"[deferred] \00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"[current] \00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"[descriptor] \00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"<<vendor>>\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"ASC=0x%x \00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"ASCQ=0x%x \00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab___scsi_format_command, ptr @__ksymtab___scsi_print_sense, ptr @__ksymtab_scmd_printk, ptr @__ksymtab_scsi_print_command, ptr @__ksymtab_scsi_print_result, ptr @__ksymtab_scsi_print_sense, ptr @__ksymtab_scsi_print_sense_hdr, ptr @__ksymtab_sdev_prefix_printk], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sdev_prefix_printk(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) #0 {
  %5 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = icmp eq ptr %1, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 2592, i32 noundef 128) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %26, label %11

11:                                               ; preds = %7
  %12 = icmp eq ptr %2, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %11
  %14 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %9, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull %2) #7
  %15 = icmp ult i32 %14, 128
  br i1 %15, label %17, label %16, !prof !9

16:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 73, i32 noundef 9, ptr noundef null) #7
  br label %24

17:                                               ; preds = %13, %11
  %18 = phi i32 [ %14, %13 ], [ 0, %11 ]
  call void @llvm.va_start(ptr nonnull %5)
  %19 = getelementptr i8, ptr %9, i32 %18
  %20 = sub nuw nsw i32 128, %18
  %21 = load i32, ptr %5, align 4
  %22 = insertvalue [1 x i32] poison, i32 %21, 0
  %23 = call i32 @vscnprintf(ptr noundef %19, i32 noundef %20, ptr noundef %3, [1 x i32] %22) #7
  call void @llvm.va_end(ptr nonnull %5)
  br label %24

24:                                               ; preds = %17, %16
  %25 = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 54
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %25, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #9
  call void @kfree(ptr noundef nonnull %9) #7
  br label %26

26:                                               ; preds = %24, %7, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vscnprintf(ptr noundef, i32 noundef, ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scmd_printk(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, ...) #0 {
  %4 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = icmp eq ptr %1, null
  br i1 %5, label %49, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %49, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 2592, i32 noundef 128) #8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %49, label %14

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %1, i32 -168
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.request_queue, ptr %16, i32 0, i32 15
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  %20 = getelementptr inbounds %struct.gendisk, ptr %18, i32 0, i32 3
  %21 = getelementptr i8, ptr %1, i32 -148
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq ptr %20, null
  %24 = select i1 %19, i1 true, i1 %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %14
  %26 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %12, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull %20) #7
  %27 = icmp ult i32 %26, 128
  br i1 %27, label %29, label %28, !prof !9

28:                                               ; preds = %25
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 47, i32 noundef 9, ptr noundef null) #7
  br label %45

29:                                               ; preds = %25, %14
  %30 = phi i32 [ %26, %25 ], [ 0, %14 ]
  %31 = icmp sgt i32 %22, -1
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = getelementptr i8, ptr %12, i32 %30
  %34 = sub nuw nsw i32 128, %30
  %35 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %33, i32 noundef %34, ptr noundef nonnull @.str.17, i32 noundef %22) #7
  %36 = add i32 %35, %30
  %37 = icmp ult i32 %36, 128
  br i1 %37, label %38, label %45

38:                                               ; preds = %32, %29
  %39 = phi i32 [ %36, %32 ], [ %30, %29 ]
  call void @llvm.va_start(ptr nonnull %4)
  %40 = getelementptr i8, ptr %12, i32 %39
  %41 = sub nuw nsw i32 128, %39
  %42 = load i32, ptr %4, align 4
  %43 = insertvalue [1 x i32] poison, i32 %42, 0
  %44 = call i32 @vscnprintf(ptr noundef %40, i32 noundef %41, ptr noundef %2, [1 x i32] %43) #7
  call void @llvm.va_end(ptr nonnull %4)
  br label %45

45:                                               ; preds = %38, %32, %28
  %46 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.scsi_device, ptr %47, i32 0, i32 54
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %48, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #9
  call void @kfree(ptr noundef nonnull %12) #7
  br label %49

49:                                               ; preds = %45, %10, %6, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sdev_format_header(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %2) #7
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi i32 [ %7, %6 ], [ 0, %4 ]
  %10 = icmp ult i32 %9, %1
  br i1 %10, label %12, label %11, !prof !9

11:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 47, i32 noundef 9, ptr noundef null) #7
  br label %19

12:                                               ; preds = %8
  %13 = icmp sgt i32 %3, -1
  br i1 %13, label %14, label %19

14:                                               ; preds = %12
  %15 = getelementptr i8, ptr %0, i32 %9
  %16 = sub i32 %1, %9
  %17 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %15, i32 noundef %16, ptr noundef nonnull @.str.17, i32 noundef %3) #7
  %18 = add i32 %17, %9
  br label %19

19:                                               ; preds = %14, %12, %11
  %20 = phi i32 [ %9, %11 ], [ %18, %14 ], [ %9, %12 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__scsi_format_command(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = tail call fastcc i32 @scsi_format_opcode_name(ptr noundef %0, i32 noundef %1, ptr noundef %2)
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %7, label %51

7:                                                ; preds = %4
  %8 = load i8, ptr %2, align 1
  %9 = icmp eq i8 %8, 127
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.scsi_varlen_cdb_hdr, ptr %2, i32 0, i32 3
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = add nuw nsw i32 %13, 8
  br label %21

15:                                               ; preds = %7
  %16 = lshr i8 %8, 5
  %17 = zext i8 %16 to i32
  %18 = getelementptr [8 x i8], ptr @scsi_command_size_tbl, i32 0, i32 %17
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  br label %21

21:                                               ; preds = %15, %10
  %22 = phi i32 [ %14, %10 ], [ %20, %15 ]
  %23 = tail call i32 @llvm.umin.i32(i32 %22, i32 %3)
  %24 = add i32 %1, -3
  %25 = icmp eq i32 %23, 0
  %26 = icmp ugt i32 %5, %24
  %27 = select i1 %25, i1 true, i1 %26
  br i1 %27, label %51, label %28

28:                                               ; preds = %21
  %29 = getelementptr i8, ptr %0, i32 %5
  %30 = sub i32 %1, %5
  %31 = zext i8 %8 to i32
  %32 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %29, i32 noundef %30, ptr noundef nonnull @.str.3, i32 noundef %31) #7
  %33 = add i32 %32, %5
  %34 = icmp ult i32 %23, 2
  %35 = icmp ugt i32 %33, %24
  %36 = select i1 %34, i1 true, i1 %35
  br i1 %36, label %51, label %37

37:                                               ; preds = %37, %28
  %38 = phi i32 [ %47, %37 ], [ 1, %28 ]
  %39 = phi i32 [ %46, %37 ], [ %33, %28 ]
  %40 = getelementptr i8, ptr %2, i32 %38
  %41 = load i8, ptr %40, align 1
  %42 = getelementptr i8, ptr %0, i32 %39
  %43 = sub i32 %1, %39
  %44 = zext i8 %41 to i32
  %45 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %42, i32 noundef %43, ptr noundef nonnull @.str.3, i32 noundef %44) #7
  %46 = add i32 %45, %39
  %47 = add nuw nsw i32 %38, 1
  %48 = icmp uge i32 %47, %23
  %49 = icmp ugt i32 %46, %24
  %50 = select i1 %48, i1 true, i1 %49
  br i1 %50, label %51, label %37

51:                                               ; preds = %37, %28, %21, %4
  %52 = phi i32 [ %5, %4 ], [ %5, %21 ], [ %33, %28 ], [ %46, %37 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @scsi_format_opcode_name(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = load i8, ptr %2, align 1
  %5 = zext i8 %4 to i32
  %6 = icmp eq i8 %4, 127
  br i1 %6, label %7, label %24

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.scsi_varlen_cdb_hdr, ptr %2, i32 0, i32 3
  %9 = load i8, ptr %8, align 1
  %10 = icmp ult i8 %9, 2
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = zext i8 %9 to i32
  %13 = add nuw nsw i32 %12, 8
  %14 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.18, i32 noundef %13) #7
  br label %55

15:                                               ; preds = %7
  %16 = getelementptr i8, ptr %2, i32 8
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = shl nuw nsw i32 %18, 8
  %20 = getelementptr i8, ptr %2, i32 9
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = or i32 %19, %22
  br label %48

24:                                               ; preds = %3
  %25 = getelementptr i8, ptr %2, i32 1
  %26 = load i8, ptr %25, align 1
  %27 = and i8 %26, 31
  %28 = zext i8 %27 to i32
  switch i8 %4, label %29 [
    i8 -124, label %48
    i8 -93, label %48
    i8 -92, label %48
    i8 94, label %48
    i8 95, label %48
    i8 -85, label %48
    i8 -87, label %48
    i8 -99, label %48
    i8 -98, label %48
    i8 -97, label %48
    i8 -125, label %48
  ]

29:                                               ; preds = %24
  %30 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.19, i32 noundef %5) #7
  %31 = icmp ult i32 %30, %1
  br i1 %31, label %33, label %32, !prof !9

32:                                               ; preds = %29
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 134, i32 noundef 9, ptr noundef null) #7
  br label %55

33:                                               ; preds = %29
  %34 = icmp ugt i8 %4, -65
  br i1 %34, label %35, label %40

35:                                               ; preds = %33
  %36 = getelementptr i8, ptr %0, i32 %30
  %37 = sub i32 %1, %30
  %38 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %36, i32 noundef %37, ptr noundef nonnull @.str.20) #7
  %39 = add i32 %38, %30
  br label %51

40:                                               ; preds = %33
  %41 = add i8 %4, -96
  %42 = icmp ult i8 %41, 30
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = getelementptr i8, ptr %0, i32 %30
  %45 = sub i32 %1, %30
  %46 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %44, i32 noundef %45, ptr noundef nonnull @.str.21) #7
  %47 = add i32 %46, %30
  br label %51

48:                                               ; preds = %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %15
  %49 = phi i32 [ %23, %15 ], [ %28, %24 ], [ %28, %24 ], [ %28, %24 ], [ %28, %24 ], [ %28, %24 ], [ %28, %24 ], [ %28, %24 ], [ %28, %24 ], [ %28, %24 ], [ %28, %24 ], [ %28, %24 ]
  %50 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.23, i32 noundef %5, i32 noundef %49) #7
  br label %51

51:                                               ; preds = %48, %43, %40, %35
  %52 = phi i32 [ %50, %48 ], [ %39, %35 ], [ %47, %43 ], [ %30, %40 ]
  %53 = icmp ult i32 %52, %1
  br i1 %53, label %55, label %54, !prof !9

54:                                               ; preds = %51
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 153, i32 noundef 9, ptr noundef null) #7
  br label %55

55:                                               ; preds = %54, %51, %32, %11
  %56 = phi i32 [ %30, %32 ], [ %52, %54 ], [ %52, %51 ], [ %14, %11 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_print_command(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %114, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 2592, i32 noundef 128) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %114, label %9

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %0, i32 -168
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.request_queue, ptr %11, i32 0, i32 15
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds %struct.gendisk, ptr %13, i32 0, i32 3
  %16 = getelementptr i8, ptr %0, i32 -148
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq ptr %15, null
  %19 = select i1 %14, i1 true, i1 %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %9
  %21 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %7, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull %15) #7
  %22 = icmp ult i32 %21, 128
  br i1 %22, label %24, label %23, !prof !9

23:                                               ; preds = %20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 47, i32 noundef 9, ptr noundef null) #7
  br label %109

24:                                               ; preds = %20, %9
  %25 = phi i32 [ %21, %20 ], [ 0, %9 ]
  %26 = icmp sgt i32 %17, -1
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = getelementptr i8, ptr %7, i32 %25
  %29 = sub nuw nsw i32 128, %25
  %30 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %28, i32 noundef %29, ptr noundef nonnull @.str.17, i32 noundef %17) #7
  %31 = add i32 %30, %25
  %32 = icmp ult i32 %31, 128
  br i1 %32, label %33, label %109

33:                                               ; preds = %27, %24
  %34 = phi i32 [ %31, %27 ], [ %25, %24 ]
  %35 = getelementptr i8, ptr %7, i32 %34
  %36 = sub nuw nsw i32 128, %34
  %37 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %35, i32 noundef %36, ptr noundef nonnull @.str.4) #7
  %38 = add i32 %37, %34
  %39 = icmp ult i32 %38, 128
  br i1 %39, label %41, label %40, !prof !9

40:                                               ; preds = %33
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 198, i32 noundef 9, ptr noundef null) #7
  br label %109

41:                                               ; preds = %33
  %42 = getelementptr i8, ptr %7, i32 %38
  %43 = sub nuw nsw i32 128, %38
  %44 = load ptr, ptr %2, align 4
  %45 = tail call fastcc i32 @scsi_format_opcode_name(ptr noundef %42, i32 noundef %43, ptr noundef %44)
  %46 = add i32 %45, %38
  %47 = icmp ult i32 %46, 128
  br i1 %47, label %48, label %109

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 14
  %50 = load i16, ptr %49, align 4
  %51 = icmp ugt i16 %50, 16
  br i1 %51, label %52, label %95

52:                                               ; preds = %48
  %53 = getelementptr i8, ptr %7, i32 %46
  %54 = sub nuw nsw i32 128, %46
  %55 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %53, i32 noundef %54, ptr noundef nonnull @.str.5) #7
  %56 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.scsi_device, ptr %57, i32 0, i32 54
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.6, ptr noundef %58, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #9
  %59 = load i16, ptr %49, align 4
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %113, label %61

61:                                               ; preds = %52
  %62 = zext i16 %59 to i32
  br label %63

63:                                               ; preds = %88, %61
  %64 = phi i32 [ %93, %88 ], [ %62, %61 ]
  %65 = phi i32 [ %91, %88 ], [ 0, %61 ]
  %66 = load ptr, ptr %10, align 8
  %67 = getelementptr inbounds %struct.request_queue, ptr %66, i32 0, i32 15
  %68 = load ptr, ptr %67, align 8
  %69 = icmp eq ptr %68, null
  %70 = getelementptr inbounds %struct.gendisk, ptr %68, i32 0, i32 3
  %71 = select i1 %69, ptr null, ptr %70
  %72 = load i32, ptr %16, align 4
  %73 = tail call fastcc i32 @sdev_format_header(ptr noundef nonnull %7, i32 noundef 128, ptr noundef %71, i32 noundef %72)
  %74 = icmp ugt i32 %73, 70
  br i1 %74, label %75, label %76, !prof !10

75:                                               ; preds = %63
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 217, i32 noundef 9, ptr noundef null) #7
  br label %88

76:                                               ; preds = %63
  %77 = sub nsw i32 %64, %65
  %78 = tail call i32 @llvm.smin.i32(i32 %77, i32 16)
  %79 = getelementptr i8, ptr %7, i32 %73
  %80 = sub nuw nsw i32 128, %73
  %81 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %79, i32 noundef %80, ptr noundef nonnull @.str.7, i32 noundef %65) #7
  %82 = add i32 %81, %73
  %83 = load ptr, ptr %2, align 4
  %84 = getelementptr i8, ptr %83, i32 %65
  %85 = getelementptr i8, ptr %7, i32 %82
  %86 = sub i32 128, %82
  %87 = tail call i32 @hex_dump_to_buffer(ptr noundef %84, i32 noundef %78, i32 noundef 16, i32 noundef 1, ptr noundef %85, i32 noundef %86, i1 noundef zeroext false) #7
  br label %88

88:                                               ; preds = %76, %75
  %89 = load ptr, ptr %56, align 4
  %90 = getelementptr inbounds %struct.scsi_device, ptr %89, i32 0, i32 54
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.6, ptr noundef %90, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #9
  %91 = add nuw nsw i32 %65, 16
  %92 = load i16, ptr %49, align 4
  %93 = zext i16 %92 to i32
  %94 = icmp ult i32 %91, %93
  br i1 %94, label %63, label %113

95:                                               ; preds = %48
  %96 = icmp ugt i32 %46, 79
  br i1 %96, label %97, label %98, !prof !10

97:                                               ; preds = %95
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 229, i32 noundef 9, ptr noundef null) #7
  br label %109

98:                                               ; preds = %95
  %99 = getelementptr i8, ptr %7, i32 %46
  %100 = sub nuw nsw i32 128, %46
  %101 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %99, i32 noundef %100, ptr noundef nonnull @.str.8) #7
  %102 = add i32 %101, %46
  %103 = load ptr, ptr %2, align 4
  %104 = load i16, ptr %49, align 4
  %105 = zext i16 %104 to i32
  %106 = getelementptr i8, ptr %7, i32 %102
  %107 = sub i32 128, %102
  %108 = tail call i32 @hex_dump_to_buffer(ptr noundef %103, i32 noundef %105, i32 noundef 16, i32 noundef 1, ptr noundef %106, i32 noundef %107, i1 noundef zeroext false) #7
  br label %109

109:                                              ; preds = %98, %97, %41, %40, %27, %23
  %110 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 1
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr inbounds %struct.scsi_device, ptr %111, i32 0, i32 54
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.6, ptr noundef %112, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #9
  br label %113

113:                                              ; preds = %109, %88, %52
  tail call void @kfree(ptr noundef nonnull %7) #7
  br label %114

114:                                              ; preds = %113, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex_dump_to_buffer(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_print_sense_hdr(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  tail call fastcc void @scsi_log_print_sense_hdr(ptr noundef %0, ptr noundef %1, i32 noundef -1, ptr noundef %2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @scsi_log_print_sense_hdr(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 2592, i32 noundef 128) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %63, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %1, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %8
  %11 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %6, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull %1) #7
  %12 = icmp ult i32 %11, 128
  br i1 %12, label %14, label %13, !prof !9

13:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 47, i32 noundef 9, ptr noundef null) #7
  br label %22

14:                                               ; preds = %10, %8
  %15 = phi i32 [ %11, %10 ], [ 0, %8 ]
  %16 = icmp sgt i32 %2, -1
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = getelementptr i8, ptr %6, i32 %15
  %19 = sub nuw nsw i32 128, %15
  %20 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %18, i32 noundef %19, ptr noundef nonnull @.str.17, i32 noundef %2) #7
  %21 = add i32 %20, %15
  br label %22

22:                                               ; preds = %17, %14, %13
  %23 = phi i32 [ %11, %13 ], [ %21, %17 ], [ %15, %14 ]
  %24 = getelementptr i8, ptr %6, i32 %23
  %25 = sub i32 128, %23
  %26 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %24, i32 noundef %25, ptr noundef nonnull @.str.24) #7
  %27 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %3, i32 0, i32 1
  %28 = getelementptr i8, ptr %24, i32 %26
  %29 = sub i32 %25, %26
  %30 = load i8, ptr %27, align 1
  %31 = zext i8 %30 to i32
  %32 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %28, i32 noundef %29, ptr noundef nonnull @.str.25, i32 noundef %31) #7
  %33 = add i32 %32, %26
  %34 = getelementptr i8, ptr %24, i32 %33
  %35 = sub i32 %25, %33
  %36 = load i8, ptr %3, align 1
  %37 = icmp ugt i8 %36, 111
  %38 = and i8 %36, 1
  %39 = icmp ne i8 %38, 0
  %40 = and i1 %37, %39
  %41 = select i1 %40, ptr @.str.26, ptr @.str.27
  %42 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %34, i32 noundef %35, ptr noundef nonnull %41) #7
  %43 = load i8, ptr %3, align 1
  %44 = icmp ugt i8 %43, 113
  br i1 %44, label %45, label %50

45:                                               ; preds = %22
  %46 = add i32 %42, %33
  %47 = getelementptr i8, ptr %24, i32 %46
  %48 = sub i32 %25, %46
  %49 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %47, i32 noundef %48, ptr noundef nonnull @.str.28) #7
  br label %50

50:                                               ; preds = %45, %22
  %51 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 54
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.6, ptr noundef %51, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #9
  tail call void @kfree(ptr noundef nonnull %6) #7
  %52 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %53 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %52, i32 noundef 2592, i32 noundef 128) #8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %63, label %55

55:                                               ; preds = %50
  %56 = tail call fastcc i32 @sdev_format_header(ptr noundef nonnull %53, i32 noundef 128, ptr noundef %1, i32 noundef %2)
  %57 = getelementptr i8, ptr %53, i32 %56
  %58 = sub i32 128, %56
  %59 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %3, i32 0, i32 2
  %60 = load i8, ptr %59, align 1
  %61 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %3, i32 0, i32 3
  %62 = load i8, ptr %61, align 1
  tail call fastcc void @scsi_format_extd_sense(ptr noundef %57, i32 noundef %58, i8 noundef zeroext %60, i8 noundef zeroext %62)
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.6, ptr noundef %51, ptr noundef nonnull @.str.2, ptr noundef nonnull %53) #9
  tail call void @kfree(ptr noundef nonnull %53) #7
  br label %63

63:                                               ; preds = %55, %50, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__scsi_print_sense(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  tail call fastcc void @scsi_log_print_sense(ptr noundef %0, ptr noundef %1, i32 noundef -1, ptr noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @scsi_log_print_sense(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.scsi_sense_hdr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  store i64 0, ptr %6, align 8, !annotation !8
  %7 = call zeroext i1 @scsi_normalize_sense(ptr noundef %3, i32 noundef %4, ptr noundef nonnull %6) #7
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  call fastcc void @scsi_log_print_sense_hdr(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %6)
  br label %43

9:                                                ; preds = %5
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %11 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 2592, i32 noundef 128) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %43, label %13

13:                                               ; preds = %9
  %14 = icmp sgt i32 %4, 0
  br i1 %14, label %15, label %42

15:                                               ; preds = %13
  %16 = icmp eq ptr %1, null
  %17 = icmp sgt i32 %2, -1
  %18 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 54
  br label %19

19:                                               ; preds = %34, %15
  %20 = phi i32 [ 0, %15 ], [ %40, %34 ]
  %21 = sub i32 %4, %20
  %22 = call i32 @llvm.smin.i32(i32 %21, i32 16) #7
  br i1 %16, label %27, label %23

23:                                               ; preds = %19
  %24 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %11, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull %1) #7
  %25 = icmp ult i32 %24, 128
  br i1 %25, label %27, label %26, !prof !9

26:                                               ; preds = %23
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 47, i32 noundef 9, ptr noundef null) #7
  br label %34

27:                                               ; preds = %23, %19
  %28 = phi i32 [ %24, %23 ], [ 0, %19 ]
  br i1 %17, label %29, label %34

29:                                               ; preds = %27
  %30 = getelementptr i8, ptr %11, i32 %28
  %31 = sub nuw nsw i32 128, %28
  %32 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %30, i32 noundef %31, ptr noundef nonnull @.str.17, i32 noundef %2) #7
  %33 = add i32 %32, %28
  br label %34

34:                                               ; preds = %29, %27, %26
  %35 = phi i32 [ %24, %26 ], [ %33, %29 ], [ %28, %27 ]
  %36 = getelementptr i8, ptr %3, i32 %20
  %37 = getelementptr i8, ptr %11, i32 %35
  %38 = sub i32 128, %35
  %39 = call i32 @hex_dump_to_buffer(ptr noundef %36, i32 noundef %22, i32 noundef 16, i32 noundef 1, ptr noundef %37, i32 noundef %38, i1 noundef zeroext false) #7
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.6, ptr noundef %18, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #9
  %40 = add i32 %20, 16
  %41 = icmp slt i32 %40, %4
  br i1 %41, label %19, label %42

42:                                               ; preds = %34, %13
  call void @kfree(ptr noundef nonnull %11) #7
  br label %43

43:                                               ; preds = %42, %9, %8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_print_sense(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 -168
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  %9 = getelementptr inbounds %struct.gendisk, ptr %7, i32 0, i32 3
  %10 = select i1 %8, ptr null, ptr %9
  %11 = getelementptr i8, ptr %0, i32 -148
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 21
  %14 = load ptr, ptr %13, align 4
  tail call fastcc void @scsi_log_print_sense(ptr noundef %3, ptr noundef %10, i32 noundef %12, ptr noundef %14, i32 noundef 96)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_print_result(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 24
  %5 = load volatile i32, ptr @jiffies, align 64
  %6 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = sub i32 %5, %7
  %9 = udiv i32 %8, 100
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 2592, i32 noundef 128) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %84, label %13

13:                                               ; preds = %3
  %14 = getelementptr i8, ptr %0, i32 -168
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.request_queue, ptr %15, i32 0, i32 15
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  %19 = getelementptr inbounds %struct.gendisk, ptr %17, i32 0, i32 3
  %20 = getelementptr i8, ptr %0, i32 -148
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq ptr %19, null
  %23 = select i1 %18, i1 true, i1 %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %13
  %25 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %11, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull %19) #7
  %26 = icmp ult i32 %25, 128
  br i1 %26, label %28, label %27, !prof !9

27:                                               ; preds = %24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 47, i32 noundef 9, ptr noundef null) #7
  br label %80

28:                                               ; preds = %24, %13
  %29 = phi i32 [ %25, %24 ], [ 0, %13 ]
  %30 = icmp sgt i32 %21, -1
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = getelementptr i8, ptr %11, i32 %29
  %33 = sub nuw nsw i32 128, %29
  %34 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %32, i32 noundef %33, ptr noundef nonnull @.str.17, i32 noundef %21) #7
  %35 = add i32 %34, %29
  %36 = icmp ult i32 %35, 128
  br i1 %36, label %37, label %80

37:                                               ; preds = %31, %28
  %38 = phi i32 [ %35, %31 ], [ %29, %28 ]
  %39 = icmp eq ptr %1, null
  br i1 %39, label %47, label %40

40:                                               ; preds = %37
  %41 = getelementptr i8, ptr %11, i32 %38
  %42 = sub nuw nsw i32 128, %38
  %43 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %41, i32 noundef %42, ptr noundef nonnull @.str.9, ptr noundef nonnull %1) #7
  %44 = add i32 %43, %38
  %45 = icmp ult i32 %44, 128
  br i1 %45, label %47, label %46, !prof !9

46:                                               ; preds = %40
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 407, i32 noundef 9, ptr noundef null) #7
  br label %80

47:                                               ; preds = %40, %37
  %48 = phi i32 [ %38, %37 ], [ %44, %40 ]
  %49 = getelementptr i8, ptr %11, i32 %48
  %50 = sub nuw nsw i32 128, %48
  %51 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %49, i32 noundef %50, ptr noundef nonnull @.str.11, i32 noundef %2) #7
  %52 = add i32 %51, %48
  %53 = icmp ult i32 %52, 128
  br i1 %53, label %55, label %54, !prof !9

54:                                               ; preds = %47
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 416, i32 noundef 9, ptr noundef null) #7
  br label %80

55:                                               ; preds = %47
  %56 = getelementptr i8, ptr %11, i32 %52
  %57 = sub nuw nsw i32 128, %52
  %58 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %56, i32 noundef %57, ptr noundef nonnull @.str.12) #7
  %59 = add i32 %58, %52
  %60 = icmp ult i32 %59, 128
  br i1 %60, label %62, label %61, !prof !9

61:                                               ; preds = %55
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 420, i32 noundef 9, ptr noundef null) #7
  br label %80

62:                                               ; preds = %55
  %63 = getelementptr i8, ptr %11, i32 %59
  %64 = sub nuw nsw i32 128, %59
  %65 = load i32, ptr %4, align 4
  %66 = lshr i32 %65, 16
  %67 = and i32 %66, 255
  %68 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %63, i32 noundef %64, ptr noundef nonnull @.str.14, i32 noundef %67) #7
  %69 = add i32 %68, %59
  %70 = icmp ult i32 %69, 128
  br i1 %70, label %72, label %71, !prof !9

71:                                               ; preds = %62
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 429, i32 noundef 9, ptr noundef null) #7
  br label %80

72:                                               ; preds = %62
  %73 = getelementptr i8, ptr %11, i32 %69
  %74 = sub nuw nsw i32 128, %69
  %75 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %73, i32 noundef %74, ptr noundef nonnull @.str.15) #7
  %76 = add i32 %75, %69
  %77 = getelementptr i8, ptr %11, i32 %76
  %78 = sub i32 128, %76
  %79 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %77, i32 noundef %78, ptr noundef nonnull @.str.16, i32 noundef %9) #7
  br label %80

80:                                               ; preds = %72, %71, %61, %54, %46, %31, %27
  %81 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.scsi_device, ptr %82, i32 0, i32 54
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.6, ptr noundef %83, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #9
  tail call void @kfree(ptr noundef nonnull %11) #7
  br label %84

84:                                               ; preds = %80, %3
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @scsi_format_extd_sense(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = zext i8 %2 to i32
  %6 = icmp slt i8 %2, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.31) #7
  br label %9

9:                                                ; preds = %7, %4
  %10 = phi i32 [ %8, %7 ], [ 0, %4 ]
  %11 = getelementptr i8, ptr %0, i32 %10
  %12 = sub i32 %1, %10
  %13 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %11, i32 noundef %12, ptr noundef nonnull @.str.32, i32 noundef %5) #7
  %14 = add i32 %13, %10
  %15 = icmp slt i8 %3, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %9
  %17 = getelementptr i8, ptr %0, i32 %14
  %18 = sub i32 %1, %14
  %19 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %17, i32 noundef %18, ptr noundef nonnull @.str.31) #7
  %20 = add i32 %19, %14
  br label %21

21:                                               ; preds = %16, %9
  %22 = phi i32 [ %20, %16 ], [ %14, %9 ]
  %23 = zext i8 %3 to i32
  %24 = getelementptr i8, ptr %0, i32 %22
  %25 = sub i32 %1, %22
  %26 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %24, i32 noundef %25, ptr noundef nonnull @.str.33, i32 noundef %23) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @scsi_normalize_sense(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }
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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"branch_weights", i32 1, i32 2000}
