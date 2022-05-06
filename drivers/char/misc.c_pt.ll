; ModuleID = '/llk/IR/drivers/char/misc.c_pt.bc'
source_filename = "../drivers/char/misc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_misc_register:\09\09\09\09\09"
module asm "\09.asciz \09\22misc_register\22\09\09\09\09\09"
module asm "__kstrtabns_misc_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_misc_deregister:\09\09\09\09\09"
module asm "\09.asciz \09\22misc_deregister\22\09\09\09\09\09"
module asm "__kstrtabns_misc_deregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.59, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.60, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.61, ptr, %struct.address_space, %struct.list_head, %union.anon.62, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.59 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.60 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.61 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.62 = type { ptr }
%struct.file = type { %union.anon.11, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@misc_mtx = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @misc_mtx, i64 12), ptr getelementptr (i8, ptr @misc_mtx, i64 12) } }, align 4
@misc_minors = internal global [4 x i32] zeroinitializer, align 4
@misc_list = internal global %struct.list_head { ptr @misc_list, ptr @misc_list }, align 4
@misc_class = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__kstrtab_misc_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_misc_register = external dso_local constant [0 x i8], align 1
@__ksymtab_misc_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @misc_register to i32), ptr @__kstrtab_misc_register, ptr @__kstrtabns_misc_register }, section "___ksymtab+misc_register", align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"drivers/char/misc.c\00", align 1
@__kstrtab_misc_deregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_misc_deregister = external dso_local constant [0 x i8], align 1
@__ksymtab_misc_deregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @misc_deregister to i32), ptr @__kstrtab_misc_deregister, ptr @__kstrtabns_misc_deregister }, section "___ksymtab+misc_deregister", align 4
@__initcall__kmod_misc__202_291_misc_init4 = internal global ptr @misc_init, section ".initcall4.init", align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"misc\00", align 1
@misc_seq_ops = internal constant %struct.seq_operations { ptr @misc_seq_start, ptr @misc_seq_stop, ptr @misc_seq_next, ptr @misc_seq_show }, align 4
@misc_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@misc_fops = internal constant %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @misc_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"\013unable to get major %d for misc devices\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%3i %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"char-major-%d-%d\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__initcall__kmod_misc__202_291_misc_init4, ptr @__ksymtab_misc_deregister, ptr @__ksymtab_misc_register], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @misc_register(ptr noundef %0) #0 {
  %2 = load i32, ptr %0, align 4
  %3 = icmp eq i32 %2, 255
  %4 = getelementptr inbounds %struct.miscdevice, ptr %0, i32 0, i32 3
  store volatile ptr %4, ptr %4, align 4
  %5 = getelementptr inbounds %struct.miscdevice, ptr %0, i32 0, i32 3, i32 1
  store ptr %4, ptr %5, align 4
  tail call void @mutex_lock(ptr noundef nonnull @misc_mtx) #4
  br i1 %3, label %6, label %11

6:                                                ; preds = %1
  %7 = tail call i32 @_find_first_zero_bit_le(ptr noundef nonnull @misc_minors, i32 noundef 128) #4
  %8 = icmp sgt i32 %7, 127
  br i1 %8, label %48, label %9

9:                                                ; preds = %6
  %10 = sub i32 127, %7
  store i32 %10, ptr %0, align 4
  tail call void @_set_bit(i32 noundef %7, ptr noundef nonnull @misc_minors) #4
  br label %20

11:                                               ; preds = %15, %1
  %12 = phi ptr [ %13, %15 ], [ @misc_list, %1 ]
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, @misc_list
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr i8, ptr %13, i32 -12
  %17 = load i32, ptr %16, align 4
  %18 = load i32, ptr %0, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %48, label %11

20:                                               ; preds = %11, %9
  %21 = load i32, ptr %0, align 4
  %22 = or i32 %21, 10485760
  %23 = load ptr, ptr @misc_class, align 4
  %24 = getelementptr inbounds %struct.miscdevice, ptr %0, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.miscdevice, ptr %0, i32 0, i32 6
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.miscdevice, ptr %0, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = tail call ptr (ptr, ptr, i32, ptr, ptr, ptr, ...) @device_create_with_groups(ptr noundef %23, ptr noundef %25, i32 noundef %22, ptr noundef %0, ptr noundef %27, ptr noundef nonnull @.str, ptr noundef %29) #4
  %31 = getelementptr inbounds %struct.miscdevice, ptr %0, i32 0, i32 5
  store ptr %30, ptr %31, align 4
  %32 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %45

33:                                               ; preds = %20
  br i1 %3, label %34, label %42

34:                                               ; preds = %33
  %35 = load i32, ptr %0, align 4
  %36 = sub i32 127, %35
  %37 = icmp ult i32 %36, 128
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  tail call void @_clear_bit(i32 noundef %36, ptr noundef nonnull @misc_minors) #4
  %39 = load ptr, ptr %31, align 4
  br label %40

40:                                               ; preds = %38, %34
  %41 = phi ptr [ %39, %38 ], [ %30, %34 ]
  store i32 255, ptr %0, align 4
  br label %42

42:                                               ; preds = %40, %33
  %43 = phi ptr [ %41, %40 ], [ %30, %33 ]
  %44 = ptrtoint ptr %43 to i32
  br label %48

45:                                               ; preds = %20
  %46 = load ptr, ptr @misc_list, align 4
  %47 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  store ptr %4, ptr %47, align 4
  store ptr %46, ptr %4, align 4
  store ptr @misc_list, ptr %5, align 4
  store volatile ptr %4, ptr @misc_list, align 4
  br label %48

48:                                               ; preds = %45, %42, %15, %6
  %49 = phi i32 [ %44, %42 ], [ 0, %45 ], [ -16, %6 ], [ -16, %15 ]
  tail call void @mutex_unlock(ptr noundef nonnull @misc_mtx) #4
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create_with_groups(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @misc_deregister(ptr noundef %0) #0 {
  %2 = load i32, ptr %0, align 4
  %3 = sub i32 127, %2
  %4 = getelementptr inbounds %struct.miscdevice, ptr %0, i32 0, i32 3
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 243, i32 noundef 9, ptr noundef null) #4
  br label %19

8:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @misc_mtx) #4
  %9 = getelementptr inbounds %struct.miscdevice, ptr %0, i32 0, i32 3, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %10, ptr %12, align 4
  store volatile ptr %11, ptr %10, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %9, align 4
  %13 = load ptr, ptr @misc_class, align 4
  %14 = load i32, ptr %0, align 4
  %15 = or i32 %14, 10485760
  tail call void @device_destroy(ptr noundef %13, i32 noundef %15) #4
  %16 = icmp ult i32 %3, 128
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  tail call void @_clear_bit(i32 noundef %3, ptr noundef nonnull @misc_minors) #4
  br label %18

18:                                               ; preds = %17, %8
  tail call void @mutex_unlock(ptr noundef nonnull @misc_mtx) #4
  br label %19

19:                                               ; preds = %18, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @misc_init() #2 section ".init.text" {
  %1 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.2, i16 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @misc_seq_ops, i32 noundef 0, ptr noundef null) #4
  %2 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @misc_init.__key) #4
  store ptr %2, ptr @misc_class, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %14, label %5

5:                                                ; preds = %0
  %6 = tail call i32 @__register_chrdev(i32 noundef 10, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.2, ptr noundef nonnull @misc_fops) #4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load ptr, ptr @misc_class, align 4
  %10 = getelementptr inbounds %struct.class, ptr %9, i32 0, i32 6
  store ptr @misc_devnode, ptr %10, align 4
  br label %18

11:                                               ; preds = %5
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef 10) #5
  %13 = load ptr, ptr @misc_class, align 4
  tail call void @class_destroy(ptr noundef %13) #4
  br label %14

14:                                               ; preds = %11, %0
  %15 = phi i32 [ %3, %0 ], [ -5, %11 ]
  %16 = icmp eq ptr %1, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.2, ptr noundef null) #4
  br label %18

18:                                               ; preds = %17, %14, %8
  %19 = phi i32 [ 0, %8 ], [ %15, %17 ], [ %15, %14 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal noalias ptr @misc_devnode(ptr nocapture noundef readonly %0, ptr noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %1, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.miscdevice, ptr %4, i32 0, i32 8
  %8 = load i16, ptr %7, align 4
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  store i16 %8, ptr %1, align 2
  br label %11

11:                                               ; preds = %10, %6, %2
  %12 = getelementptr inbounds %struct.miscdevice, ptr %4, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call noalias ptr @kstrdup(ptr noundef nonnull %13, i32 noundef 3264) #4
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi ptr [ %16, %15 ], [ null, %11 ]
  ret ptr %18
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @misc_seq_start(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @misc_mtx) #4
  %3 = load i64, ptr %1, align 8
  %4 = tail call ptr @seq_list_start(ptr noundef nonnull @misc_list, i64 noundef %3) #4
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @misc_seq_stop(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #0 {
  tail call void @mutex_unlock(ptr noundef nonnull @misc_mtx) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @misc_seq_next(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @seq_list_next(ptr noundef %1, ptr noundef nonnull @misc_list, ptr noundef %2) #4
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @misc_seq_show(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr i8, ptr %1, i32 -12
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 -8
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  %8 = select i1 %7, ptr @.str.5, ptr %6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %4, ptr noundef nonnull %8) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_start(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @misc_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 12
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1048575
  tail call void @mutex_lock(ptr noundef nonnull @misc_mtx) #4
  br label %6

6:                                                ; preds = %10, %2
  %7 = phi ptr [ @misc_list, %2 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, @misc_list
  br i1 %9, label %24, label %10

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %8, i32 -12
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, %5
  br i1 %13, label %14, label %6

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %8, i32 -4
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %16, align 4
  %20 = tail call zeroext i1 @try_module_get(ptr noundef %19) #4
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load ptr, ptr %15, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %44

24:                                               ; preds = %21, %18, %14, %6
  tail call void @mutex_unlock(ptr noundef nonnull @misc_mtx) #4
  %25 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.6, i32 noundef 10, i32 noundef %5) #4
  tail call void @mutex_lock(ptr noundef nonnull @misc_mtx) #4
  br label %26

26:                                               ; preds = %30, %24
  %27 = phi ptr [ @misc_list, %24 ], [ %28, %30 ]
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, @misc_list
  br i1 %29, label %60, label %30

30:                                               ; preds = %26
  %31 = getelementptr i8, ptr %28, i32 -12
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, %5
  br i1 %33, label %34, label %26

34:                                               ; preds = %30
  %35 = getelementptr i8, ptr %28, i32 -4
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %60, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr %36, align 4
  %40 = tail call zeroext i1 @try_module_get(ptr noundef %39) #4
  br i1 %40, label %41, label %60

41:                                               ; preds = %38
  %42 = load ptr, ptr %35, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %60, label %44

44:                                               ; preds = %41, %21
  %45 = phi ptr [ %22, %21 ], [ %42, %41 ]
  %46 = phi ptr [ %8, %21 ], [ %28, %41 ]
  %47 = getelementptr i8, ptr %46, i32 -12
  %48 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %47, ptr %48, align 8
  %49 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 3
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %44
  %53 = load ptr, ptr %50, align 4
  tail call void @module_put(ptr noundef %53) #4
  br label %54

54:                                               ; preds = %52, %44
  store ptr %45, ptr %49, align 4
  %55 = getelementptr inbounds %struct.file_operations, ptr %45, i32 0, i32 14
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = tail call i32 %56(ptr noundef %0, ptr noundef %1) #4
  br label %60

60:                                               ; preds = %58, %54, %41, %38, %34, %26
  %61 = phi i32 [ %59, %58 ], [ 0, %54 ], [ -19, %41 ], [ -19, %38 ], [ -19, %34 ], [ -19, %26 ]
  tail call void @mutex_unlock(ptr noundef nonnull @misc_mtx) #4
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
