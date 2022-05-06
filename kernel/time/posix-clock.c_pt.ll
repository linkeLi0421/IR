; ModuleID = '/llk/IR/kernel/time/posix-clock.c_pt.bc'
source_filename = "../kernel/time/posix-clock.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_posix_clock_register:\09\09\09\09\09"
module asm "\09.asciz \09\22posix_clock_register\22\09\09\09\09\09"
module asm "__kstrtabns_posix_clock_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_posix_clock_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22posix_clock_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_posix_clock_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type {}
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.k_clock = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.posix_clock = type { %struct.posix_clock_operations, %struct.cdev, ptr, %struct.rw_semaphore, i8 }
%struct.posix_clock_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.89, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.90, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.91, ptr, %struct.address_space, %struct.list_head, %union.anon.92, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.89 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.90 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.91 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.92 = type { ptr }

@posix_clock_register.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [12 x i8] c"&clk->rwsem\00", align 1
@posix_clock_file_operations = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @posix_clock_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @posix_clock_poll, ptr @posix_clock_ioctl, ptr null, ptr null, i32 0, ptr @posix_clock_open, ptr null, ptr @posix_clock_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"\013%s unable to add device %d:%d\0A\00", align 1
@__kstrtab_posix_clock_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_posix_clock_register = external dso_local constant [0 x i8], align 1
@__ksymtab_posix_clock_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @posix_clock_register to i32), ptr @__kstrtab_posix_clock_register, ptr @__kstrtabns_posix_clock_register }, section "___ksymtab_gpl+posix_clock_register", align 4
@__kstrtab_posix_clock_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_posix_clock_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_posix_clock_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @posix_clock_unregister to i32), ptr @__kstrtab_posix_clock_unregister, ptr @__kstrtabns_posix_clock_unregister }, section "___ksymtab_gpl+posix_clock_unregister", align 4
@clock_posix_dynamic = dso_local local_unnamed_addr constant %struct.k_clock { ptr @pc_clock_getres, ptr @pc_clock_settime, ptr @pc_clock_gettime, ptr null, ptr @pc_clock_adjtime, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_posix_clock_register, ptr @__ksymtab_posix_clock_unregister], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @posix_clock_register(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.posix_clock, ptr %0, i32 0, i32 3
  tail call void @__init_rwsem(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @posix_clock_register.__key) #3
  %4 = getelementptr inbounds %struct.posix_clock, ptr %0, i32 0, i32 1
  tail call void @cdev_init(ptr noundef %4, ptr noundef nonnull @posix_clock_file_operations) #3
  %5 = tail call i32 @cdev_device_add(ptr noundef %4, ptr noundef %1) #3
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = load ptr, ptr %1, align 4
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi ptr [ %12, %11 ], [ %9, %7 ]
  %15 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 20
  %18 = and i32 %16, 1048575
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %14, i32 noundef %17, i32 noundef %18) #4
  br label %24

20:                                               ; preds = %2
  %21 = load ptr, ptr %0, align 4
  %22 = getelementptr inbounds %struct.posix_clock, ptr %0, i32 0, i32 1, i32 1
  store ptr %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.posix_clock, ptr %0, i32 0, i32 2
  store ptr %1, ptr %23, align 4
  br label %24

24:                                               ; preds = %20, %13
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_device_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @posix_clock_unregister(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.posix_clock, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.posix_clock, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  tail call void @cdev_device_del(ptr noundef %2, ptr noundef %4) #3
  %5 = getelementptr inbounds %struct.posix_clock, ptr %0, i32 0, i32 3
  tail call void @down_write(ptr noundef %5) #3
  %6 = getelementptr inbounds %struct.posix_clock, ptr %0, i32 0, i32 4
  store i8 1, ptr %6, align 4
  tail call void @up_write(ptr noundef %5) #3
  %7 = load ptr, ptr %3, align 4
  tail call void @put_device(ptr noundef %7) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_device_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pc_clock_getres(i32 noundef %0, ptr noundef %1) #0 {
  %3 = ashr i32 %0, 3
  %4 = xor i32 %3, -1
  %5 = tail call ptr @fget(i32 noundef %4) #3
  %6 = icmp eq ptr %5, null
  br i1 %6, label %32, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.file_operations, ptr %9, i32 0, i32 14
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, @posix_clock_open
  br i1 %12, label %13, label %30

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 15
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.posix_clock, ptr %15, i32 0, i32 3
  tail call void @down_read(ptr noundef %18) #3
  %19 = getelementptr inbounds %struct.posix_clock, ptr %15, i32 0, i32 4
  %20 = load i8, ptr %19, align 4, !range !8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.posix_clock_operations, ptr %15, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = tail call i32 %24(ptr noundef nonnull %15, ptr noundef %1) #3
  br label %28

28:                                               ; preds = %26, %22, %17
  %29 = phi i32 [ -19, %17 ], [ %27, %26 ], [ -95, %22 ]
  tail call void @up_read(ptr noundef %18) #3
  br label %30

30:                                               ; preds = %28, %13, %7
  %31 = phi i32 [ -22, %13 ], [ -22, %7 ], [ %29, %28 ]
  tail call void @fput(ptr noundef nonnull %5) #3
  br label %32

32:                                               ; preds = %30, %2
  %33 = phi i32 [ -22, %2 ], [ %31, %30 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pc_clock_settime(i32 noundef %0, ptr noundef %1) #0 {
  %3 = ashr i32 %0, 3
  %4 = xor i32 %3, -1
  %5 = tail call ptr @fget(i32 noundef %4) #3
  %6 = icmp eq ptr %5, null
  br i1 %6, label %37, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.file_operations, ptr %9, i32 0, i32 14
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, @posix_clock_open
  br i1 %12, label %13, label %35

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 15
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %35, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.posix_clock, ptr %15, i32 0, i32 3
  tail call void @down_read(ptr noundef %18) #3
  %19 = getelementptr inbounds %struct.posix_clock, ptr %15, i32 0, i32 4
  %20 = load i8, ptr %19, align 4, !range !8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 8
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.posix_clock_operations, ptr %15, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = tail call i32 %29(ptr noundef nonnull %15, ptr noundef %1) #3
  br label %33

33:                                               ; preds = %31, %27, %22, %17
  %34 = phi i32 [ -19, %17 ], [ %32, %31 ], [ -13, %22 ], [ -95, %27 ]
  tail call void @up_read(ptr noundef %18) #3
  br label %35

35:                                               ; preds = %33, %13, %7
  %36 = phi i32 [ -22, %13 ], [ -22, %7 ], [ %34, %33 ]
  tail call void @fput(ptr noundef nonnull %5) #3
  br label %37

37:                                               ; preds = %35, %2
  %38 = phi i32 [ -22, %2 ], [ %36, %35 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pc_clock_gettime(i32 noundef %0, ptr noundef %1) #0 {
  %3 = ashr i32 %0, 3
  %4 = xor i32 %3, -1
  %5 = tail call ptr @fget(i32 noundef %4) #3
  %6 = icmp eq ptr %5, null
  br i1 %6, label %32, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.file_operations, ptr %9, i32 0, i32 14
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, @posix_clock_open
  br i1 %12, label %13, label %30

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 15
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.posix_clock, ptr %15, i32 0, i32 3
  tail call void @down_read(ptr noundef %18) #3
  %19 = getelementptr inbounds %struct.posix_clock, ptr %15, i32 0, i32 4
  %20 = load i8, ptr %19, align 4, !range !8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.posix_clock_operations, ptr %15, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = tail call i32 %24(ptr noundef nonnull %15, ptr noundef %1) #3
  br label %28

28:                                               ; preds = %26, %22, %17
  %29 = phi i32 [ -19, %17 ], [ %27, %26 ], [ -95, %22 ]
  tail call void @up_read(ptr noundef %18) #3
  br label %30

30:                                               ; preds = %28, %13, %7
  %31 = phi i32 [ -22, %13 ], [ -22, %7 ], [ %29, %28 ]
  tail call void @fput(ptr noundef nonnull %5) #3
  br label %32

32:                                               ; preds = %30, %2
  %33 = phi i32 [ -22, %2 ], [ %31, %30 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pc_clock_adjtime(i32 noundef %0, ptr noundef %1) #0 {
  %3 = ashr i32 %0, 3
  %4 = xor i32 %3, -1
  %5 = tail call ptr @fget(i32 noundef %4) #3
  %6 = icmp eq ptr %5, null
  br i1 %6, label %37, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.file_operations, ptr %9, i32 0, i32 14
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, @posix_clock_open
  br i1 %12, label %13, label %35

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 15
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %35, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.posix_clock, ptr %15, i32 0, i32 3
  tail call void @down_read(ptr noundef %18) #3
  %19 = getelementptr inbounds %struct.posix_clock, ptr %15, i32 0, i32 4
  %20 = load i8, ptr %19, align 4, !range !8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 8
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.posix_clock_operations, ptr %15, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = tail call i32 %29(ptr noundef nonnull %15, ptr noundef %1) #3
  br label %33

33:                                               ; preds = %31, %27, %22, %17
  %34 = phi i32 [ -19, %17 ], [ %32, %31 ], [ -13, %22 ], [ -95, %27 ]
  tail call void @up_read(ptr noundef %18) #3
  br label %35

35:                                               ; preds = %33, %13, %7
  %36 = phi i32 [ -22, %13 ], [ -22, %7 ], [ %34, %33 ]
  tail call void @fput(ptr noundef nonnull %5) #3
  br label %37

37:                                               ; preds = %35, %2
  %38 = phi i32 [ -22, %2 ], [ %36, %35 ]
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @posix_clock_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.posix_clock, ptr %6, i32 0, i32 3
  tail call void @down_read(ptr noundef %7) #3
  %8 = getelementptr inbounds %struct.posix_clock, ptr %6, i32 0, i32 4
  %9 = load i8, ptr %8, align 4, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %4
  %12 = icmp eq ptr %6, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.posix_clock_operations, ptr %6, i32 0, i32 9
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 %15(ptr noundef nonnull %6, i32 noundef %19, ptr noundef %1, i32 noundef %2) #3
  br label %21

21:                                               ; preds = %17, %13, %4
  %22 = phi i32 [ -19, %4 ], [ %20, %17 ], [ -22, %13 ]
  tail call void @up_read(ptr noundef %7) #3
  br label %23

23:                                               ; preds = %21, %11
  %24 = phi i32 [ -19, %11 ], [ %22, %21 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @posix_clock_poll(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.posix_clock, ptr %4, i32 0, i32 3
  tail call void @down_read(ptr noundef %5) #3
  %6 = getelementptr inbounds %struct.posix_clock, ptr %4, i32 0, i32 4
  %7 = load i8, ptr %6, align 4, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = icmp eq ptr %4, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.posix_clock_operations, ptr %4, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call i32 %13(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %1) #3
  br label %17

17:                                               ; preds = %15, %11, %2
  %18 = phi i32 [ 8, %2 ], [ %16, %15 ], [ 0, %11 ]
  tail call void @up_read(ptr noundef %5) #3
  br label %19

19:                                               ; preds = %17, %9
  %20 = phi i32 [ 8, %9 ], [ %18, %17 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @posix_clock_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.posix_clock, ptr %5, i32 0, i32 3
  tail call void @down_read(ptr noundef %6) #3
  %7 = getelementptr inbounds %struct.posix_clock, ptr %5, i32 0, i32 4
  %8 = load i8, ptr %7, align 4, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = icmp eq ptr %5, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.posix_clock_operations, ptr %5, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call i32 %14(ptr noundef nonnull %5, i32 noundef %1, i32 noundef %2) #3
  br label %18

18:                                               ; preds = %16, %12, %3
  %19 = phi i32 [ -19, %3 ], [ %17, %16 ], [ -25, %12 ]
  tail call void @up_read(ptr noundef %6) #3
  br label %20

20:                                               ; preds = %18, %10
  %21 = phi i32 [ -19, %10 ], [ %19, %18 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @posix_clock_open(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 43
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -40
  %6 = getelementptr i8, ptr %4, i32 64
  tail call void @down_read(ptr noundef %6) #3
  %7 = getelementptr i8, ptr %4, i32 88
  %8 = load i8, ptr %7, align 4, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %2
  %11 = getelementptr i8, ptr %4, i32 -16
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 8
  %16 = load i32, ptr %15, align 8
  %17 = tail call i32 %12(ptr noundef %5, i32 noundef %16) #3
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14, %10
  %20 = getelementptr i8, ptr %4, i32 60
  %21 = load ptr, ptr %20, align 4
  %22 = tail call ptr @get_device(ptr noundef %21) #3
  %23 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %5, ptr %23, align 8
  br label %24

24:                                               ; preds = %19, %14, %2
  %25 = phi i32 [ %17, %14 ], [ 0, %19 ], [ -19, %2 ]
  tail call void @up_read(ptr noundef %6) #3
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @posix_clock_release(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.posix_clock_operations, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 %6(ptr noundef %4) #3
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi i32 [ %9, %8 ], [ 0, %2 ]
  %12 = getelementptr inbounds %struct.posix_clock, ptr %4, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  tail call void @put_device(ptr noundef %13) #3
  store ptr null, ptr %3, align 8
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fget(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }

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
