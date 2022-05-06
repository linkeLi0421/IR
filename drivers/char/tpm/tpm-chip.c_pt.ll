; ModuleID = '/llk/IR/drivers/char/tpm/tpm-chip.c_pt.bc'
source_filename = "../drivers/char/tpm/tpm-chip.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tpm_chip_start:\09\09\09\09\09"
module asm "\09.asciz \09\22tpm_chip_start\22\09\09\09\09\09"
module asm "__kstrtabns_tpm_chip_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tpm_chip_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22tpm_chip_stop\22\09\09\09\09\09"
module asm "__kstrtabns_tpm_chip_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tpm_try_get_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22tpm_try_get_ops\22\09\09\09\09\09"
module asm "__kstrtabns_tpm_try_get_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tpm_put_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22tpm_put_ops\22\09\09\09\09\09"
module asm "__kstrtabns_tpm_put_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tpm_default_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22tpm_default_chip\22\09\09\09\09\09"
module asm "__kstrtabns_tpm_default_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tpm_chip_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22tpm_chip_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_tpm_chip_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tpmm_chip_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22tpmm_chip_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_tpmm_chip_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tpm_chip_register:\09\09\09\09\09"
module asm "\09.asciz \09\22tpm_chip_register\22\09\09\09\09\09"
module asm "__kstrtabns_tpm_chip_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tpm_chip_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22tpm_chip_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_tpm_chip_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
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
%struct.tpm_class_ops = type { i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }

@dev_nums_idr = dso_local global %struct.idr { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554436, ptr null }, i32 0, i32 0 }, align 4
@__kstrtab_tpm_chip_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_tpm_chip_start = external dso_local constant [0 x i8], align 1
@__ksymtab_tpm_chip_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tpm_chip_start to i32), ptr @__kstrtab_tpm_chip_start, ptr @__kstrtabns_tpm_chip_start }, section "___ksymtab_gpl+tpm_chip_start", align 4
@__kstrtab_tpm_chip_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns_tpm_chip_stop = external dso_local constant [0 x i8], align 1
@__ksymtab_tpm_chip_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tpm_chip_stop to i32), ptr @__kstrtab_tpm_chip_stop, ptr @__kstrtabns_tpm_chip_stop }, section "___ksymtab_gpl+tpm_chip_stop", align 4
@__kstrtab_tpm_try_get_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_tpm_try_get_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_tpm_try_get_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tpm_try_get_ops to i32), ptr @__kstrtab_tpm_try_get_ops, ptr @__kstrtabns_tpm_try_get_ops }, section "___ksymtab_gpl+tpm_try_get_ops", align 4
@__kstrtab_tpm_put_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_tpm_put_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_tpm_put_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tpm_put_ops to i32), ptr @__kstrtab_tpm_put_ops, ptr @__kstrtabns_tpm_put_ops }, section "___ksymtab_gpl+tpm_put_ops", align 4
@idr_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @idr_lock, i64 12), ptr getelementptr (i8, ptr @idr_lock, i64 12) } }, align 4
@__kstrtab_tpm_default_chip = external dso_local constant [0 x i8], align 1
@__kstrtabns_tpm_default_chip = external dso_local constant [0 x i8], align 1
@__ksymtab_tpm_default_chip = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tpm_default_chip to i32), ptr @__kstrtab_tpm_default_chip, ptr @__kstrtabns_tpm_default_chip }, section "___ksymtab_gpl+tpm_default_chip", align 4
@tpm_chip_alloc.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [17 x i8] c"&chip->tpm_mutex\00", align 1
@tpm_chip_alloc.__key.1 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"&chip->ops_sem\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"No available tpm device numbers\0A\00", align 1
@tpm_class = dso_local local_unnamed_addr global ptr null, align 4
@tpmrm_class = dso_local local_unnamed_addr global ptr null, align 4
@tpm_devt = dso_local local_unnamed_addr global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"tpm%d\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"tpmrm%d\00", align 1
@tpm_fops = external dso_local constant %struct.file_operations, align 4
@tpmrm_fops = external dso_local constant %struct.file_operations, align 4
@__this_module = external dso_local global %struct.module, align 64
@__kstrtab_tpm_chip_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_tpm_chip_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_tpm_chip_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tpm_chip_alloc to i32), ptr @__kstrtab_tpm_chip_alloc, ptr @__kstrtabns_tpm_chip_alloc }, section "___ksymtab_gpl+tpm_chip_alloc", align 4
@__kstrtab_tpmm_chip_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_tpmm_chip_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_tpmm_chip_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tpmm_chip_alloc to i32), ptr @__kstrtab_tpmm_chip_alloc, ptr @__kstrtabns_tpmm_chip_alloc }, section "___ksymtab_gpl+tpmm_chip_alloc", align 4
@__kstrtab_tpm_chip_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_tpm_chip_register = external dso_local constant [0 x i8], align 1
@__ksymtab_tpm_chip_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tpm_chip_register to i32), ptr @__kstrtab_tpm_chip_register, ptr @__kstrtabns_tpm_chip_register }, section "___ksymtab_gpl+tpm_chip_register", align 4
@__kstrtab_tpm_chip_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_tpm_chip_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_tpm_chip_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tpm_chip_unregister to i32), ptr @__kstrtab_tpm_chip_unregister, ptr @__kstrtabns_tpm_chip_unregister }, section "___ksymtab_gpl+tpm_chip_unregister", align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"%s: : error %d\0A\00", align 1
@__func__.tpm_relinquish_locality = private unnamed_addr constant [24 x i8] c"tpm_relinquish_locality\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"tpm-rng-%d\00", align 1
@.str.8 = private unnamed_addr constant [60 x i8] c"unable to cdev_device_add() %s, major %d, minor %d, err=%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"ppi\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_tpm_chip_alloc, ptr @__ksymtab_tpm_chip_register, ptr @__ksymtab_tpm_chip_start, ptr @__ksymtab_tpm_chip_stop, ptr @__ksymtab_tpm_chip_unregister, ptr @__ksymtab_tpm_default_chip, ptr @__ksymtab_tpm_put_ops, ptr @__ksymtab_tpm_try_get_ops, ptr @__ksymtab_tpmm_chip_alloc], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tpm_chip_start(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tpm_class_ops, ptr %3, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void %5(ptr noundef %0, i1 noundef zeroext true) #6
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 31
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %26

12:                                               ; preds = %8
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds %struct.tpm_class_ops, ptr %13, i32 0, i32 12
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %12
  %18 = tail call i32 %15(ptr noundef %0, i32 noundef 0) #6
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  store i32 %18, ptr %9, align 8
  br label %26

21:                                               ; preds = %17
  %22 = load ptr, ptr %2, align 8
  %23 = getelementptr inbounds %struct.tpm_class_ops, ptr %22, i32 0, i32 14
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %54, label %51

26:                                               ; preds = %20, %12, %8
  %27 = load ptr, ptr %2, align 8
  %28 = getelementptr inbounds %struct.tpm_class_ops, ptr %27, i32 0, i32 11
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %54, label %31

31:                                               ; preds = %26
  %32 = tail call i32 %29(ptr noundef %0) #6
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %54, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr %2, align 8
  %36 = getelementptr inbounds %struct.tpm_class_ops, ptr %35, i32 0, i32 13
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %34
  %40 = load i32, ptr %9, align 8
  %41 = tail call i32 %37(ptr noundef %0, i32 noundef %40) #6
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.tpm_relinquish_locality, i32 noundef %41) #7
  br label %44

44:                                               ; preds = %43, %39
  store i32 -1, ptr %9, align 8
  %45 = load ptr, ptr %2, align 8
  br label %46

46:                                               ; preds = %44, %34
  %47 = phi ptr [ %35, %34 ], [ %45, %44 ]
  %48 = getelementptr inbounds %struct.tpm_class_ops, ptr %47, i32 0, i32 14
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %46, %21
  %52 = phi ptr [ %24, %21 ], [ %49, %46 ]
  %53 = phi i32 [ %18, %21 ], [ %32, %46 ]
  tail call void %52(ptr noundef %0, i1 noundef zeroext false) #6
  br label %54

54:                                               ; preds = %51, %46, %31, %26, %21
  %55 = phi i32 [ 0, %31 ], [ %18, %21 ], [ %32, %46 ], [ 0, %26 ], [ %53, %51 ]
  ret i32 %55
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tpm_chip_stop(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tpm_class_ops, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = tail call i32 %5(ptr noundef %0) #6
  %9 = load ptr, ptr %2, align 8
  br label %10

10:                                               ; preds = %7, %1
  %11 = phi ptr [ %3, %1 ], [ %9, %7 ]
  %12 = getelementptr inbounds %struct.tpm_class_ops, ptr %11, i32 0, i32 13
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 31
  %17 = load i32, ptr %16, align 8
  %18 = tail call i32 %13(ptr noundef %0, i32 noundef %17) #6
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.tpm_relinquish_locality, i32 noundef %18) #7
  br label %21

21:                                               ; preds = %20, %15
  store i32 -1, ptr %16, align 8
  %22 = load ptr, ptr %2, align 8
  br label %23

23:                                               ; preds = %21, %10
  %24 = phi ptr [ %11, %10 ], [ %22, %21 ]
  %25 = getelementptr inbounds %struct.tpm_class_ops, ptr %24, i32 0, i32 14
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  tail call void %26(ptr noundef %0, i1 noundef zeroext false) #6
  br label %29

29:                                               ; preds = %28, %23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tpm_try_get_ops(ptr noundef %0) #0 {
  %2 = tail call ptr @get_device(ptr noundef %0) #6
  %3 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 4
  tail call void @down_read(ptr noundef %3) #6
  %4 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 14
  tail call void @mutex_lock(ptr noundef %8) #6
  %9 = tail call i32 @tpm_chip_start(ptr noundef %0)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  tail call void @mutex_unlock(ptr noundef %8) #6
  br label %12

12:                                               ; preds = %11, %1
  %13 = phi i32 [ %9, %11 ], [ -5, %1 ]
  tail call void @up_read(ptr noundef %3) #6
  tail call void @put_device(ptr noundef %0) #6
  br label %14

14:                                               ; preds = %12, %7
  %15 = phi i32 [ %13, %12 ], [ 0, %7 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tpm_put_ops(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tpm_class_ops, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = tail call i32 %5(ptr noundef %0) #6
  %9 = load ptr, ptr %2, align 8
  br label %10

10:                                               ; preds = %7, %1
  %11 = phi ptr [ %3, %1 ], [ %9, %7 ]
  %12 = getelementptr inbounds %struct.tpm_class_ops, ptr %11, i32 0, i32 13
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 31
  %17 = load i32, ptr %16, align 8
  %18 = tail call i32 %13(ptr noundef %0, i32 noundef %17) #6
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.tpm_relinquish_locality, i32 noundef %18) #7
  br label %21

21:                                               ; preds = %20, %15
  store i32 -1, ptr %16, align 8
  %22 = load ptr, ptr %2, align 8
  br label %23

23:                                               ; preds = %21, %10
  %24 = phi ptr [ %11, %10 ], [ %22, %21 ]
  %25 = getelementptr inbounds %struct.tpm_class_ops, ptr %24, i32 0, i32 14
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  tail call void %26(ptr noundef %0, i1 noundef zeroext false) #6
  br label %29

29:                                               ; preds = %28, %23
  %30 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 14
  tail call void @mutex_unlock(ptr noundef %30) #6
  %31 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 4
  tail call void @up_read(ptr noundef %31) #6
  tail call void @put_device(ptr noundef %0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tpm_default_chip() #0 {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #6
  store i32 0, ptr %1, align 4
  tail call void @mutex_lock(ptr noundef nonnull @idr_lock) #6
  br label %2

2:                                                ; preds = %8, %0
  %3 = phi i32 [ %9, %8 ], [ 0, %0 ]
  %4 = call ptr @idr_get_next(ptr noundef nonnull @dev_nums_idr, ptr noundef nonnull %1) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = call ptr @get_device(ptr noundef nonnull %4) #6
  br label %11

8:                                                ; preds = %2
  %9 = load i32, ptr %1, align 4
  %10 = icmp eq i32 %3, %9
  br i1 %10, label %11, label %2

11:                                               ; preds = %8, %6
  call void @mutex_unlock(ptr noundef nonnull @idr_lock) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #6
  ret ptr %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tpm_find_get_ops(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @tpm_try_get_ops(ptr noundef nonnull %0)
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, ptr %0, ptr null
  br label %22

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4
  tail call void @mutex_lock(ptr noundef nonnull @idr_lock) #6
  br label %9

9:                                                ; preds = %13, %8
  %10 = phi i32 [ %14, %13 ], [ 0, %8 ]
  %11 = call ptr @idr_get_next(ptr noundef nonnull @dev_nums_idr, ptr noundef nonnull %2) #6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load i32, ptr %2, align 4
  %15 = icmp eq i32 %10, %14
  br i1 %15, label %16, label %9

16:                                               ; preds = %13
  call void @mutex_unlock(ptr noundef nonnull @idr_lock) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  br label %22

17:                                               ; preds = %9
  %18 = call ptr @get_device(ptr noundef nonnull %11) #6
  call void @mutex_unlock(ptr noundef nonnull @idr_lock) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  %19 = call i32 @tpm_try_get_ops(ptr noundef nonnull %11)
  call void @put_device(ptr noundef nonnull %11) #6
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, ptr %11, ptr null
  br label %22

22:                                               ; preds = %17, %16, %4
  %23 = phi ptr [ %7, %4 ], [ %21, %17 ], [ null, %16 ]
  ret ptr %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tpm_chip_alloc(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 1424) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %69, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tpm_chip, ptr %4, i32 0, i32 14
  tail call void @__mutex_init(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef nonnull @tpm_chip_alloc.__key) #6
  %8 = getelementptr inbounds %struct.tpm_chip, ptr %4, i32 0, i32 4
  tail call void @__init_rwsem(ptr noundef %8, ptr noundef nonnull @.str.2, ptr noundef nonnull @tpm_chip_alloc.__key.1) #6
  %9 = getelementptr inbounds %struct.tpm_chip, ptr %4, i32 0, i32 5
  store ptr %1, ptr %9, align 8
  tail call void @mutex_lock(ptr noundef nonnull @idr_lock) #6
  %10 = tail call i32 @idr_alloc(ptr noundef nonnull @dev_nums_idr, ptr noundef null, i32 noundef 0, i32 noundef 65536, i32 noundef 3264) #6
  tail call void @mutex_unlock(ptr noundef nonnull @idr_lock) #6
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.3) #7
  tail call void @kfree(ptr noundef nonnull %4) #6
  %13 = inttoptr i32 %10 to ptr
  br label %69

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.tpm_chip, ptr %4, i32 0, i32 10
  store i32 %10, ptr %15, align 8
  tail call void @device_initialize(ptr noundef nonnull %4) #6
  %16 = getelementptr inbounds %struct.tpm_chip, ptr %4, i32 0, i32 1
  tail call void @device_initialize(ptr noundef %16) #6
  %17 = load ptr, ptr @tpm_class, align 4
  %18 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 31
  store ptr %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.class, ptr %17, i32 0, i32 9
  store ptr @tpm_class_shutdown, ptr %19, align 4
  %20 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 33
  store ptr @tpm_dev_release, ptr %20, align 4
  %21 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1
  store ptr %0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.tpm_chip, ptr %4, i32 0, i32 23
  %23 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 32
  store ptr %22, ptr %23, align 8
  %24 = getelementptr inbounds %struct.tpm_chip, ptr %4, i32 0, i32 1, i32 1
  store ptr %0, ptr %24, align 4
  %25 = load ptr, ptr @tpmrm_class, align 4
  %26 = getelementptr inbounds %struct.tpm_chip, ptr %4, i32 0, i32 1, i32 31
  store ptr %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.tpm_chip, ptr %4, i32 0, i32 1, i32 33
  store ptr @tpm_devs_release, ptr %27, align 4
  %28 = getelementptr inbounds %struct.tpm_chip, ptr %4, i32 0, i32 9
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %14
  %33 = tail call ptr @get_device(ptr noundef nonnull %4) #6
  br label %34

34:                                               ; preds = %32, %14
  %35 = load i32, ptr %15, align 8
  %36 = icmp eq i32 %35, 0
  %37 = load i32, ptr @tpm_devt, align 4
  %38 = and i32 %37, -1048576
  %39 = or i32 %38, %35
  %40 = select i1 %36, i32 10485984, i32 %39
  %41 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 27
  store i32 %40, ptr %41, align 8
  %42 = add i32 %35, 65536
  %43 = or i32 %42, %38
  %44 = getelementptr inbounds %struct.tpm_chip, ptr %4, i32 0, i32 1, i32 27
  store i32 %43, ptr %44, align 8
  %45 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %4, ptr noundef nonnull @.str.4, i32 noundef %35) #6
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %34
  %48 = load i32, ptr %15, align 8
  %49 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %16, ptr noundef nonnull @.str.5, i32 noundef %48) #6
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %47
  %52 = icmp eq ptr %0, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %51
  %54 = load i32, ptr %28, align 4
  %55 = or i32 %54, 8
  store i32 %55, ptr %28, align 4
  br label %56

56:                                               ; preds = %53, %51
  %57 = getelementptr inbounds %struct.tpm_chip, ptr %4, i32 0, i32 2
  tail call void @cdev_init(ptr noundef %57, ptr noundef nonnull @tpm_fops) #6
  %58 = getelementptr inbounds %struct.tpm_chip, ptr %4, i32 0, i32 3
  tail call void @cdev_init(ptr noundef %58, ptr noundef nonnull @tpmrm_fops) #6
  %59 = getelementptr inbounds %struct.tpm_chip, ptr %4, i32 0, i32 2, i32 1
  store ptr @__this_module, ptr %59, align 4
  %60 = getelementptr inbounds %struct.tpm_chip, ptr %4, i32 0, i32 3, i32 1
  store ptr @__this_module, ptr %60, align 8
  %61 = getelementptr inbounds %struct.tpm_chip, ptr %4, i32 0, i32 27
  %62 = tail call i32 @tpm2_init_space(ptr noundef %61, i32 noundef 16384) #6
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.tpm_chip, ptr %4, i32 0, i32 31
  store i32 -1, ptr %65, align 8
  br label %69

66:                                               ; preds = %56, %47, %34
  %67 = phi i32 [ %45, %34 ], [ %49, %47 ], [ -12, %56 ]
  tail call void @put_device(ptr noundef %16) #6
  tail call void @put_device(ptr noundef nonnull %4) #6
  %68 = inttoptr i32 %67 to ptr
  br label %69

69:                                               ; preds = %66, %64, %12, %2
  %70 = phi ptr [ %13, %12 ], [ %68, %66 ], [ %4, %64 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %70
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tpm_class_shutdown(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 4
  tail call void @down_write(ptr noundef %2) #6
  %3 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 9
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %38, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @tpm_chip_start(ptr noundef %0)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %38

10:                                               ; preds = %7
  tail call void @tpm2_shutdown(ptr noundef %0, i16 noundef zeroext 0) #6
  %11 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 5
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.tpm_class_ops, ptr %12, i32 0, i32 10
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = tail call i32 %14(ptr noundef %0) #6
  %18 = load ptr, ptr %11, align 8
  br label %19

19:                                               ; preds = %16, %10
  %20 = phi ptr [ %12, %10 ], [ %18, %16 ]
  %21 = getelementptr inbounds %struct.tpm_class_ops, ptr %20, i32 0, i32 13
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 31
  %26 = load i32, ptr %25, align 8
  %27 = tail call i32 %22(ptr noundef %0, i32 noundef %26) #6
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.tpm_relinquish_locality, i32 noundef %27) #7
  br label %30

30:                                               ; preds = %29, %24
  store i32 -1, ptr %25, align 8
  %31 = load ptr, ptr %11, align 8
  br label %32

32:                                               ; preds = %30, %19
  %33 = phi ptr [ %20, %19 ], [ %31, %30 ]
  %34 = getelementptr inbounds %struct.tpm_class_ops, ptr %33, i32 0, i32 14
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  tail call void %35(ptr noundef %0, i1 noundef zeroext false) #6
  br label %38

38:                                               ; preds = %37, %32, %7, %1
  %39 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 5
  store ptr null, ptr %39, align 8
  tail call void @up_write(ptr noundef %2) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tpm_dev_release(ptr noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @idr_lock) #6
  %2 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 10
  %3 = load i32, ptr %2, align 8
  %4 = tail call ptr @idr_remove(ptr noundef nonnull @dev_nums_idr, i32 noundef %3) #6
  tail call void @mutex_unlock(ptr noundef nonnull @idr_lock) #6
  %5 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  tail call void @kfree(ptr noundef %6) #6
  %7 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 27, i32 1
  %8 = load ptr, ptr %7, align 4
  tail call void @kfree(ptr noundef %8) #6
  %9 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 27, i32 3
  %10 = load ptr, ptr %9, align 4
  tail call void @kfree(ptr noundef %10) #6
  %11 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 26
  %12 = load ptr, ptr %11, align 4
  tail call void @kfree(ptr noundef %12) #6
  tail call void @kfree(ptr noundef %0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tpm_devs_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -472
  tail call void @put_device(ptr noundef %2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm2_init_space(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tpmm_chip_alloc(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @tpm_chip_alloc(ptr noundef %0, ptr noundef %1)
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @devm_add_action(ptr noundef %0, ptr noundef nonnull @put_device, ptr noundef %3) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  tail call void @put_device(ptr noundef %3) #6
  %9 = inttoptr i32 %6 to ptr
  br label %12

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %3, ptr %11, align 8
  br label %12

12:                                               ; preds = %10, %8, %2
  %13 = phi ptr [ %9, %8 ], [ %3, %10 ], [ %3, %2 ]
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tpm_chip_register(ptr noundef %0) #0 {
  %2 = tail call i32 @tpm_chip_start(ptr noundef %0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %148

4:                                                ; preds = %1
  %5 = tail call i32 @tpm_auto_startup(ptr noundef %0) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %35, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 5
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.tpm_class_ops, ptr %9, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %7
  %14 = tail call i32 %11(ptr noundef %0) #6
  %15 = load ptr, ptr %8, align 8
  br label %16

16:                                               ; preds = %13, %7
  %17 = phi ptr [ %9, %7 ], [ %15, %13 ]
  %18 = getelementptr inbounds %struct.tpm_class_ops, ptr %17, i32 0, i32 13
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 31
  %23 = load i32, ptr %22, align 8
  %24 = tail call i32 %19(ptr noundef %0, i32 noundef %23) #6
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.tpm_relinquish_locality, i32 noundef %24) #7
  br label %27

27:                                               ; preds = %26, %21
  store i32 -1, ptr %22, align 8
  %28 = load ptr, ptr %8, align 8
  br label %29

29:                                               ; preds = %27, %16
  %30 = phi ptr [ %17, %16 ], [ %28, %27 ]
  %31 = getelementptr inbounds %struct.tpm_class_ops, ptr %30, i32 0, i32 14
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %148, label %34

34:                                               ; preds = %29
  tail call void %32(ptr noundef %0, i1 noundef zeroext false) #6
  br label %148

35:                                               ; preds = %4
  %36 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 9
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 128
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = and i32 %37, 2
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = tail call i32 @tpm2_get_pcr_allocation(ptr noundef %0) #6
  br label %47

45:                                               ; preds = %40
  %46 = tail call i32 @tpm1_get_pcr_allocation(ptr noundef %0) #6
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  %49 = icmp sgt i32 %48, 0
  %50 = select i1 %49, i32 -19, i32 %48
  br label %51

51:                                               ; preds = %47, %35
  %52 = phi i32 [ 0, %35 ], [ %50, %47 ]
  %53 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 5
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %struct.tpm_class_ops, ptr %54, i32 0, i32 10
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %51
  %59 = tail call i32 %56(ptr noundef %0) #6
  %60 = load ptr, ptr %53, align 8
  br label %61

61:                                               ; preds = %58, %51
  %62 = phi ptr [ %54, %51 ], [ %60, %58 ]
  %63 = getelementptr inbounds %struct.tpm_class_ops, ptr %62, i32 0, i32 13
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %74, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 31
  %68 = load i32, ptr %67, align 8
  %69 = tail call i32 %64(ptr noundef %0, i32 noundef %68) #6
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.tpm_relinquish_locality, i32 noundef %69) #7
  br label %72

72:                                               ; preds = %71, %66
  store i32 -1, ptr %67, align 8
  %73 = load ptr, ptr %53, align 8
  br label %74

74:                                               ; preds = %72, %61
  %75 = phi ptr [ %62, %61 ], [ %73, %72 ]
  %76 = getelementptr inbounds %struct.tpm_class_ops, ptr %75, i32 0, i32 14
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %74
  tail call void %77(ptr noundef %0, i1 noundef zeroext false) #6
  br label %80

80:                                               ; preds = %79, %74
  %81 = icmp eq i32 %52, 0
  br i1 %81, label %82, label %148

82:                                               ; preds = %80
  tail call void @tpm_sysfs_add_device(ptr noundef %0) #6
  tail call void @tpm_bios_log_setup(ptr noundef %0) #6
  %83 = load i32, ptr %36, align 4
  %84 = and i32 %83, 128
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 12
  %88 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 10
  %89 = load i32, ptr %88, align 8
  %90 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %87, i32 noundef 64, ptr noundef nonnull @.str.7, i32 noundef %89) #6
  %91 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 13
  store ptr %87, ptr %91, align 8
  %92 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 13, i32 5
  store ptr @tpm_hwrng_read, ptr %92, align 4
  %93 = tail call i32 @hwrng_register(ptr noundef %91) #6
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %146

95:                                               ; preds = %86, %82
  %96 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 2
  %97 = tail call i32 @cdev_device_add(ptr noundef %96, ptr noundef %0) #6
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %111, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load ptr, ptr %0, align 4
  br label %105

105:                                              ; preds = %103, %99
  %106 = phi ptr [ %104, %103 ], [ %101, %99 ]
  %107 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 27
  %108 = load i32, ptr %107, align 8
  %109 = lshr i32 %108, 20
  %110 = and i32 %108, 1048575
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef %106, i32 noundef %109, i32 noundef %110, i32 noundef %97) #7
  br label %139

111:                                              ; preds = %95
  %112 = load i32, ptr %36, align 4
  %113 = and i32 %112, 130
  %114 = icmp eq i32 %113, 2
  br i1 %114, label %115, label %132

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 3
  %117 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 1
  %118 = tail call i32 @cdev_device_add(ptr noundef %116, ptr noundef %117) #6
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %132, label %120

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 1, i32 3
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = load ptr, ptr %117, align 4
  br label %126

126:                                              ; preds = %124, %120
  %127 = phi ptr [ %125, %124 ], [ %122, %120 ]
  %128 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 1, i32 27
  %129 = load i32, ptr %128, align 8
  %130 = lshr i32 %129, 20
  %131 = and i32 %129, 1048575
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.8, ptr noundef %127, i32 noundef %130, i32 noundef %131, i32 noundef %118) #7
  br label %139

132:                                              ; preds = %115, %111
  tail call void @mutex_lock(ptr noundef nonnull @idr_lock) #6
  %133 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 10
  %134 = load i32, ptr %133, align 8
  %135 = tail call ptr @idr_replace(ptr noundef nonnull @dev_nums_idr, ptr noundef %0, i32 noundef %134) #6
  tail call void @mutex_unlock(ptr noundef nonnull @idr_lock) #6
  %136 = tail call fastcc i32 @tpm_add_legacy_sysfs(ptr noundef %0)
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %148, label %138

138:                                              ; preds = %132
  tail call void @tpm_chip_unregister(ptr noundef %0)
  br label %148

139:                                              ; preds = %126, %105
  %140 = phi i32 [ %118, %126 ], [ %97, %105 ]
  %141 = load i32, ptr %36, align 4
  %142 = and i32 %141, 128
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 13
  tail call void @hwrng_unregister(ptr noundef %145) #6
  br label %146

146:                                              ; preds = %144, %139, %86
  %147 = phi i32 [ %93, %86 ], [ %140, %139 ], [ %140, %144 ]
  tail call void @tpm_bios_log_teardown(ptr noundef %0) #6
  br label %148

148:                                              ; preds = %146, %138, %132, %80, %34, %29, %1
  %149 = phi i32 [ %147, %146 ], [ %136, %138 ], [ %2, %1 ], [ %52, %80 ], [ 0, %132 ], [ %5, %29 ], [ %5, %34 ]
  ret i32 %149
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_auto_startup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpm_sysfs_add_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpm_bios_log_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tpm_add_legacy_sysfs(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 9
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 138
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %47

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @compat_only_sysfs_link_entry_to_kobj(ptr noundef %8, ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef null) #6
  switch i32 %9, label %47 [
    i32 -2, label %10
    i32 0, label %10
  ]

10:                                               ; preds = %6, %6
  %11 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 23
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.attribute_group, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %47, label %21

17:                                               ; preds = %21
  %18 = getelementptr ptr, ptr %23, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %47, label %21

21:                                               ; preds = %17, %10
  %22 = phi ptr [ %19, %17 ], [ %15, %10 ]
  %23 = phi ptr [ %18, %17 ], [ %14, %10 ]
  %24 = load ptr, ptr %7, align 4
  %25 = load ptr, ptr %22, align 4
  %26 = tail call i32 @compat_only_sysfs_link_entry_to_kobj(ptr noundef %24, ptr noundef %0, ptr noundef %25, ptr noundef null) #6
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %17, label %28

28:                                               ; preds = %21
  %29 = load i32, ptr %2, align 4
  %30 = and i32 %29, 138
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %28
  %33 = load ptr, ptr %7, align 4
  tail call void @sysfs_remove_link(ptr noundef %33, ptr noundef nonnull @.str.9) #6
  %34 = load ptr, ptr %11, align 4
  %35 = getelementptr inbounds %struct.attribute_group, ptr %34, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %47, label %39

39:                                               ; preds = %39, %32
  %40 = phi ptr [ %45, %39 ], [ %37, %32 ]
  %41 = phi ptr [ %44, %39 ], [ %36, %32 ]
  %42 = load ptr, ptr %7, align 4
  %43 = load ptr, ptr %40, align 4
  tail call void @sysfs_remove_link(ptr noundef %42, ptr noundef %43) #6
  %44 = getelementptr ptr, ptr %41, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %39

47:                                               ; preds = %39, %32, %28, %17, %10, %6, %1
  %48 = phi i32 [ 0, %1 ], [ %9, %6 ], [ %26, %28 ], [ %26, %32 ], [ 0, %10 ], [ %26, %39 ], [ 0, %17 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tpm_chip_unregister(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 9
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 138
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  tail call void @sysfs_remove_link(ptr noundef %8, ptr noundef nonnull @.str.9) #6
  %9 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 23
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.attribute_group, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %15, %6
  %16 = phi ptr [ %21, %15 ], [ %13, %6 ]
  %17 = phi ptr [ %20, %15 ], [ %12, %6 ]
  %18 = load ptr, ptr %7, align 4
  %19 = load ptr, ptr %16, align 4
  tail call void @sysfs_remove_link(ptr noundef %18, ptr noundef %19) #6
  %20 = getelementptr ptr, ptr %17, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %15

23:                                               ; preds = %15, %6, %1
  %24 = load i32, ptr %2, align 4
  %25 = and i32 %24, 128
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 13
  tail call void @hwrng_unregister(ptr noundef %28) #6
  br label %29

29:                                               ; preds = %27, %23
  tail call void @tpm_bios_log_teardown(ptr noundef %0) #6
  %30 = load i32, ptr %2, align 4
  %31 = and i32 %30, 130
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 3
  %35 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 1
  tail call void @cdev_device_del(ptr noundef %34, ptr noundef %35) #6
  br label %36

36:                                               ; preds = %33, %29
  %37 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 2
  tail call void @cdev_device_del(ptr noundef %37, ptr noundef %0) #6
  tail call void @mutex_lock(ptr noundef nonnull @idr_lock) #6
  %38 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 10
  %39 = load i32, ptr %38, align 8
  %40 = tail call ptr @idr_replace(ptr noundef nonnull @dev_nums_idr, ptr noundef null, i32 noundef %39) #6
  tail call void @mutex_unlock(ptr noundef nonnull @idr_lock) #6
  %41 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 4
  tail call void @down_write(ptr noundef %41) #6
  %42 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 5
  %43 = load ptr, ptr %42, align 8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %80, label %45

45:                                               ; preds = %36
  %46 = load i32, ptr %2, align 4
  %47 = and i32 %46, 2
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %79, label %49

49:                                               ; preds = %45
  %50 = tail call i32 @tpm_chip_start(ptr noundef %0) #6
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %79

52:                                               ; preds = %49
  tail call void @tpm2_shutdown(ptr noundef %0, i16 noundef zeroext 0) #6
  %53 = load ptr, ptr %42, align 8
  %54 = getelementptr inbounds %struct.tpm_class_ops, ptr %53, i32 0, i32 10
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = tail call i32 %55(ptr noundef %0) #6
  %59 = load ptr, ptr %42, align 8
  br label %60

60:                                               ; preds = %57, %52
  %61 = phi ptr [ %53, %52 ], [ %59, %57 ]
  %62 = getelementptr inbounds %struct.tpm_class_ops, ptr %61, i32 0, i32 13
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %73, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 31
  %67 = load i32, ptr %66, align 8
  %68 = tail call i32 %63(ptr noundef %0, i32 noundef %67) #6
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.tpm_relinquish_locality, i32 noundef %68) #7
  br label %71

71:                                               ; preds = %70, %65
  store i32 -1, ptr %66, align 8
  %72 = load ptr, ptr %42, align 8
  br label %73

73:                                               ; preds = %71, %60
  %74 = phi ptr [ %61, %60 ], [ %72, %71 ]
  %75 = getelementptr inbounds %struct.tpm_class_ops, ptr %74, i32 0, i32 14
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %73
  tail call void %76(ptr noundef %0, i1 noundef zeroext false) #6
  br label %79

79:                                               ; preds = %78, %73, %49, %45
  store ptr null, ptr %42, align 8
  br label %80

80:                                               ; preds = %79, %36
  tail call void @up_write(ptr noundef %41) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwrng_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpm_bios_log_teardown(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_device_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpm2_shutdown(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm2_get_pcr_allocation(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm1_get_pcr_allocation(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tpm_hwrng_read(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 -1192
  %6 = tail call i32 @tpm_get_random(ptr noundef %5, ptr noundef %1, i32 noundef %2) #6
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hwrng_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_get_random(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_device_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_replace(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @compat_only_sysfs_link_entry_to_kobj(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind allocsize(2) }

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
