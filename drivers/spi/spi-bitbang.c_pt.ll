; ModuleID = '/llk/IR/drivers/spi/spi-bitbang.c_pt.bc'
source_filename = "../drivers/spi/spi-bitbang.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_bitbang_setup_transfer:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_bitbang_setup_transfer\22\09\09\09\09\09"
module asm "__kstrtabns_spi_bitbang_setup_transfer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_bitbang_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_bitbang_setup\22\09\09\09\09\09"
module asm "__kstrtabns_spi_bitbang_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_bitbang_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_bitbang_cleanup\22\09\09\09\09\09"
module asm "__kstrtabns_spi_bitbang_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_bitbang_init:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_bitbang_init\22\09\09\09\09\09"
module asm "__kstrtabns_spi_bitbang_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_bitbang_start:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_bitbang_start\22\09\09\09\09\09"
module asm "__kstrtabns_spi_bitbang_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_bitbang_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_bitbang_stop\22\09\09\09\09\09"
module asm "__kstrtabns_spi_bitbang_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
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
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_bitbang_cs = type { i32, ptr, ptr }
%struct.spi_bitbang = type { %struct.mutex, i8, i8, i16, ptr, ptr, ptr, ptr, [4 x ptr], ptr }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }

@__kstrtab_spi_bitbang_setup_transfer = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_bitbang_setup_transfer = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_bitbang_setup_transfer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_bitbang_setup_transfer to i32), ptr @__kstrtab_spi_bitbang_setup_transfer, ptr @__kstrtabns_spi_bitbang_setup_transfer }, section "___ksymtab_gpl+spi_bitbang_setup_transfer", align 4
@__kstrtab_spi_bitbang_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_bitbang_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_bitbang_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_bitbang_setup to i32), ptr @__kstrtab_spi_bitbang_setup, ptr @__kstrtabns_spi_bitbang_setup }, section "___ksymtab_gpl+spi_bitbang_setup", align 4
@__kstrtab_spi_bitbang_cleanup = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_bitbang_cleanup = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_bitbang_cleanup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_bitbang_cleanup to i32), ptr @__kstrtab_spi_bitbang_cleanup, ptr @__kstrtabns_spi_bitbang_cleanup }, section "___ksymtab_gpl+spi_bitbang_cleanup", align 4
@spi_bitbang_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [15 x i8] c"&bitbang->lock\00", align 1
@__kstrtab_spi_bitbang_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_bitbang_init = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_bitbang_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_bitbang_init to i32), ptr @__kstrtab_spi_bitbang_init, ptr @__kstrtabns_spi_bitbang_init }, section "___ksymtab_gpl+spi_bitbang_init", align 4
@__kstrtab_spi_bitbang_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_bitbang_start = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_bitbang_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_bitbang_start to i32), ptr @__kstrtab_spi_bitbang_start, ptr @__kstrtabns_spi_bitbang_start }, section "___ksymtab_gpl+spi_bitbang_start", align 4
@__kstrtab_spi_bitbang_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_bitbang_stop = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_bitbang_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_bitbang_stop to i32), ptr @__kstrtab_spi_bitbang_stop, ptr @__kstrtabns_spi_bitbang_stop }, section "___ksymtab_gpl+spi_bitbang_stop", align 4
@__UNIQUE_ID_file226 = internal constant [41 x i8] c"spi_bitbang.file=drivers/spi/spi-bitbang\00", section ".modinfo", align 1
@__UNIQUE_ID_license227 = internal constant [24 x i8] c"spi_bitbang.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_file226, ptr @__UNIQUE_ID_license227, ptr @__ksymtab_spi_bitbang_cleanup, ptr @__ksymtab_spi_bitbang_init, ptr @__ksymtab_spi_bitbang_setup, ptr @__ksymtab_spi_bitbang_setup_transfer, ptr @__ksymtab_spi_bitbang_start, ptr @__ksymtab_spi_bitbang_stop], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @spi_bitbang_setup_transfer(ptr nocapture noundef readonly %0, ptr noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %1, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.spi_transfer, ptr %1, i32 0, i32 8
  %8 = load i8, ptr %7, align 1
  %9 = getelementptr inbounds %struct.spi_transfer, ptr %1, i32 0, i32 12
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i8 %8, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %6, %2
  %13 = phi i32 [ %10, %6 ], [ 0, %2 ]
  %14 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 5
  %15 = load i8, ptr %14, align 1
  br label %16

16:                                               ; preds = %12, %6
  %17 = phi i32 [ %10, %6 ], [ %13, %12 ]
  %18 = phi i8 [ %8, %6 ], [ %15, %12 ]
  %19 = icmp ult i8 %18, 9
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = icmp ult i8 %18, 17
  br i1 %21, label %24, label %22

22:                                               ; preds = %20
  %23 = icmp ult i8 %18, 33
  br i1 %23, label %24, label %37

24:                                               ; preds = %22, %20, %16
  %25 = phi ptr [ @bitbang_txrx_8, %16 ], [ @bitbang_txrx_16, %20 ], [ @bitbang_txrx_32, %22 ]
  %26 = getelementptr inbounds %struct.spi_bitbang_cs, ptr %4, i32 0, i32 2
  store ptr %25, ptr %26, align 4
  %27 = icmp eq i32 %17, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 3
  %30 = load i32, ptr %29, align 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28, %24
  %33 = phi i32 [ %30, %28 ], [ %17, %24 ]
  %34 = udiv i32 500000000, %33
  store i32 %34, ptr %4, align 4
  %35 = icmp ult i32 %33, 250
  br i1 %35, label %37, label %36

36:                                               ; preds = %32, %28
  br label %37

37:                                               ; preds = %36, %32, %22
  %38 = phi i32 [ 0, %36 ], [ -22, %22 ], [ -22, %32 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bitbang_txrx_8(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) #1 {
  %6 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 8
  %7 = load i8, ptr %6, align 1
  %8 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %38, label %11, !prof !8

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %3, align 4
  br label %15

15:                                               ; preds = %32, %11
  %16 = phi ptr [ %33, %32 ], [ %13, %11 ]
  %17 = phi ptr [ %24, %32 ], [ %14, %11 ]
  %18 = phi i32 [ %34, %32 ], [ %9, %11 ]
  %19 = icmp eq ptr %17, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = getelementptr i8, ptr %17, i32 1
  %22 = load i8, ptr %17, align 1
  br label %23

23:                                               ; preds = %20, %15
  %24 = phi ptr [ %21, %20 ], [ null, %15 ]
  %25 = phi i8 [ %22, %20 ], [ 0, %15 ]
  %26 = zext i8 %25 to i32
  %27 = tail call i32 %1(ptr noundef %0, i32 noundef %2, i32 noundef %26, i8 noundef zeroext %7, i32 noundef %4) #4
  %28 = icmp eq ptr %16, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = trunc i32 %27 to i8
  %31 = getelementptr i8, ptr %16, i32 1
  store i8 %30, ptr %16, align 1
  br label %32

32:                                               ; preds = %29, %23
  %33 = phi ptr [ %31, %29 ], [ null, %23 ]
  %34 = add i32 %18, -1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %15, !prof !8

36:                                               ; preds = %32
  %37 = load i32, ptr %8, align 4
  br label %38

38:                                               ; preds = %36, %5
  %39 = phi i32 [ %37, %36 ], [ 0, %5 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bitbang_txrx_16(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) #1 {
  %6 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 8
  %7 = load i8, ptr %6, align 1
  %8 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp ugt i32 %9, 1
  br i1 %10, label %11, label %38, !prof !9

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %3, align 4
  br label %15

15:                                               ; preds = %32, %11
  %16 = phi ptr [ %33, %32 ], [ %13, %11 ]
  %17 = phi ptr [ %24, %32 ], [ %14, %11 ]
  %18 = phi i32 [ %34, %32 ], [ %9, %11 ]
  %19 = icmp eq ptr %17, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = getelementptr i16, ptr %17, i32 1
  %22 = load i16, ptr %17, align 2
  br label %23

23:                                               ; preds = %20, %15
  %24 = phi ptr [ %21, %20 ], [ null, %15 ]
  %25 = phi i16 [ %22, %20 ], [ 0, %15 ]
  %26 = zext i16 %25 to i32
  %27 = tail call i32 %1(ptr noundef %0, i32 noundef %2, i32 noundef %26, i8 noundef zeroext %7, i32 noundef %4) #4
  %28 = icmp eq ptr %16, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = trunc i32 %27 to i16
  %31 = getelementptr i16, ptr %16, i32 1
  store i16 %30, ptr %16, align 2
  br label %32

32:                                               ; preds = %29, %23
  %33 = phi ptr [ %31, %29 ], [ null, %23 ]
  %34 = add i32 %18, -2
  %35 = icmp ugt i32 %34, 1
  br i1 %35, label %15, label %36, !prof !9

36:                                               ; preds = %32
  %37 = load i32, ptr %8, align 4
  br label %38

38:                                               ; preds = %36, %5
  %39 = phi i32 [ %9, %5 ], [ %37, %36 ]
  %40 = phi i32 [ %9, %5 ], [ %34, %36 ]
  %41 = sub i32 %39, %40
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bitbang_txrx_32(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) #1 {
  %6 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 8
  %7 = load i8, ptr %6, align 1
  %8 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp ugt i32 %9, 3
  br i1 %10, label %11, label %36, !prof !9

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %3, align 4
  br label %15

15:                                               ; preds = %30, %11
  %16 = phi ptr [ %31, %30 ], [ %13, %11 ]
  %17 = phi ptr [ %24, %30 ], [ %14, %11 ]
  %18 = phi i32 [ %32, %30 ], [ %9, %11 ]
  %19 = icmp eq ptr %17, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = getelementptr i32, ptr %17, i32 1
  %22 = load i32, ptr %17, align 4
  br label %23

23:                                               ; preds = %20, %15
  %24 = phi ptr [ %21, %20 ], [ null, %15 ]
  %25 = phi i32 [ %22, %20 ], [ 0, %15 ]
  %26 = tail call i32 %1(ptr noundef %0, i32 noundef %2, i32 noundef %25, i8 noundef zeroext %7, i32 noundef %4) #4
  %27 = icmp eq ptr %16, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = getelementptr i32, ptr %16, i32 1
  store i32 %26, ptr %16, align 4
  br label %30

30:                                               ; preds = %28, %23
  %31 = phi ptr [ %29, %28 ], [ null, %23 ]
  %32 = add i32 %18, -4
  %33 = icmp ugt i32 %32, 3
  br i1 %33, label %15, label %34, !prof !9

34:                                               ; preds = %30
  %35 = load i32, ptr %8, align 4
  br label %36

36:                                               ; preds = %34, %5
  %37 = phi i32 [ %9, %5 ], [ %35, %34 ]
  %38 = phi i32 [ %9, %5 ], [ %32, %34 ]
  %39 = sub i32 %37, %38
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spi_bitbang_setup(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %3, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 12) #5
  %12 = icmp eq ptr %11, null
  br i1 %12, label %33, label %13

13:                                               ; preds = %9
  store ptr %11, ptr %2, align 8
  br label %14

14:                                               ; preds = %13, %1
  %15 = phi ptr [ %3, %1 ], [ %11, %13 ]
  %16 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 7
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 3
  %19 = getelementptr %struct.spi_bitbang, ptr %7, i32 0, i32 8, i32 %18
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.spi_bitbang_cs, ptr %15, i32 0, i32 1
  store ptr %20, ptr %21, align 4
  %22 = icmp eq ptr %20, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.spi_bitbang, ptr %7, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = tail call i32 %25(ptr noundef %0, ptr noundef null) #4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27, %14
  %31 = phi i32 [ %28, %27 ], [ -22, %14 ]
  br i1 %8, label %32, label %33

32:                                               ; preds = %30
  tail call void @kfree(ptr noundef nonnull %15) #4
  br label %33

33:                                               ; preds = %32, %30, %27, %23, %9
  %34 = phi i32 [ -12, %9 ], [ 0, %27 ], [ 0, %23 ], [ %31, %32 ], [ %31, %30 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @spi_bitbang_cleanup(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 8
  tail call void @kfree(ptr noundef %3) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spi_bitbang_init(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.spi_bitbang, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %58, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 56
  %7 = load i8, ptr %6, align 8, !range !10
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 10
  %11 = load i16, ptr %10, align 4
  %12 = and i16 %11, 32
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9, %5
  %15 = getelementptr inbounds %struct.spi_bitbang, ptr %0, i32 0, i32 6
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %58, label %18

18:                                               ; preds = %14, %9
  %19 = phi i1 [ false, %9 ], [ true, %14 ]
  tail call void @__mutex_init(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @spi_bitbang_init.__key) #4
  %20 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 5
  %21 = load i32, ptr %20, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.spi_bitbang, ptr %0, i32 0, i32 3
  %25 = load i16, ptr %24, align 2
  %26 = or i16 %25, 3
  %27 = zext i16 %26 to i32
  store i32 %27, ptr %20, align 8
  br label %28

28:                                               ; preds = %23, %18
  %29 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 22
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %58

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 45
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %58

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 44
  store ptr @spi_bitbang_prepare_hardware, ptr %37, align 8
  %38 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 46
  store ptr @spi_bitbang_unprepare_hardware, ptr %38, align 8
  %39 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 51
  store ptr @spi_bitbang_transfer_one, ptr %39, align 4
  br i1 %19, label %40, label %42

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 50
  store ptr @spi_bitbang_set_cs, ptr %41, align 8
  br label %42

42:                                               ; preds = %40, %36
  %43 = getelementptr inbounds %struct.spi_bitbang, ptr %0, i32 0, i32 7
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.spi_bitbang, ptr %0, i32 0, i32 2
  store i8 0, ptr %47, align 1
  store ptr @spi_bitbang_bufs, ptr %43, align 4
  %48 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 20
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.spi_bitbang, ptr %0, i32 0, i32 5
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store ptr @spi_bitbang_setup_transfer, ptr %52, align 4
  br label %56

56:                                               ; preds = %55, %51
  store ptr @spi_bitbang_setup, ptr %48, align 4
  %57 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 23
  store ptr @spi_bitbang_cleanup, ptr %57, align 8
  br label %58

58:                                               ; preds = %56, %46, %42, %32, %28, %14, %1
  %59 = phi i32 [ -22, %1 ], [ -22, %14 ], [ -22, %32 ], [ -22, %28 ], [ 0, %46 ], [ 0, %56 ], [ 0, %42 ]
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_bitbang_prepare_hardware(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @mutex_lock(ptr noundef %3) #4
  %4 = getelementptr inbounds %struct.spi_bitbang, ptr %3, i32 0, i32 1
  store i8 1, ptr %4, align 4
  tail call void @mutex_unlock(ptr noundef %3) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_bitbang_unprepare_hardware(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @mutex_lock(ptr noundef %3) #4
  %4 = getelementptr inbounds %struct.spi_bitbang, ptr %3, i32 0, i32 1
  store i8 0, ptr %4, align 4
  tail call void @mutex_unlock(ptr noundef %3) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_bitbang_transfer_one(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.spi_bitbang, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = tail call i32 %7(ptr noundef %1, ptr noundef %2) #4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %29, label %12

12:                                               ; preds = %9, %3
  %13 = phi i32 [ %10, %9 ], [ 0, %3 ]
  %14 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.spi_bitbang, ptr %5, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 %19(ptr noundef %1, ptr noundef %2) #4
  %21 = load i32, ptr %14, align 4
  br label %22

22:                                               ; preds = %17, %12
  %23 = phi i32 [ %21, %17 ], [ 0, %12 ]
  %24 = phi i32 [ %20, %17 ], [ %13, %12 ]
  %25 = icmp eq i32 %24, %23
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = icmp sgt i32 %24, -1
  %28 = select i1 %27, i32 -121, i32 %24
  br label %29

29:                                               ; preds = %26, %22, %9
  %30 = phi i32 [ %10, %9 ], [ %28, %26 ], [ 0, %22 ]
  tail call void @spi_finalize_current_transfer(ptr noundef %0) #4
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @spi_bitbang_set_cs(ptr noundef %0, i1 noundef zeroext %1) #1 {
  %3 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 4
  %10 = icmp eq i32 %9, 0
  %11 = xor i1 %10, %1
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #4
  %13 = getelementptr inbounds %struct.spi_bitbang, ptr %6, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = zext i1 %11 to i32
  tail call void %14(ptr noundef %0, i32 noundef %15) #4
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_bitbang_bufs(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 8
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.spi_bitbang, ptr %9, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load ptr, ptr %1, align 4
  %15 = icmp ne ptr %14, null
  %16 = tail call i32 %11(ptr noundef %0, i1 noundef zeroext %15) #4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %34, label %18

18:                                               ; preds = %13, %2
  %19 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 7
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 16
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = load ptr, ptr %1, align 4
  %25 = icmp eq ptr %24, null
  %26 = select i1 %25, i32 4, i32 2
  br label %27

27:                                               ; preds = %23, %18
  %28 = phi i32 [ %26, %23 ], [ 0, %18 ]
  %29 = getelementptr inbounds %struct.spi_bitbang_cs, ptr %4, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.spi_bitbang_cs, ptr %4, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 %30(ptr noundef %0, ptr noundef %32, i32 noundef %5, ptr noundef %1, i32 noundef %28) #4
  br label %34

34:                                               ; preds = %27, %13
  %35 = phi i32 [ %16, %13 ], [ %33, %27 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spi_bitbang_start(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.spi_bitbang, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @spi_bitbang_init(ptr noundef %0)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %1
  %7 = icmp eq ptr %3, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = tail call i32 @spi_register_controller(ptr noundef null) #4
  br label %17

10:                                               ; preds = %6
  %11 = tail call ptr @get_device(ptr noundef nonnull %3) #4
  %12 = icmp eq ptr %11, null
  %13 = select i1 %12, ptr null, ptr %3
  %14 = tail call i32 @spi_register_controller(ptr noundef %13) #4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  tail call void @put_device(ptr noundef nonnull %3) #4
  br label %17

17:                                               ; preds = %16, %10, %8, %1
  %18 = phi i32 [ %4, %1 ], [ 0, %10 ], [ %14, %16 ], [ %9, %8 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_register_controller(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @spi_bitbang_stop(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.spi_bitbang, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void @spi_unregister_controller(ptr noundef %3) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_unregister_controller(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_transfer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind allocsize(2) }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i8 0, i8 2}
