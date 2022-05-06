; ModuleID = '/llk/IR/drivers/media/mc/mc-devnode.c_pt.bc'
source_filename = "../drivers/media/mc/mc-devnode.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
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
%struct.media_devnode = type { ptr, ptr, %struct.device, %struct.cdev, ptr, i32, i32, ptr }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.media_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.66, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.67, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.68, ptr, %struct.address_space, %struct.list_head, %union.anon.69, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.66 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.67 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.68 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.69 = type { ptr }

@media_devnode_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @media_devnode_lock, i64 12), ptr getelementptr (i8, ptr @media_devnode_lock, i64 12) } }, align 4
@media_devnode_nums = internal global [8 x i32] zeroinitializer, align 4
@.str = private unnamed_addr constant [34 x i8] c"\013mc: could not get a free minor\0A\00", align 1
@media_bus_type = internal global %struct.bus_type { ptr @.str.3, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, align 4
@media_dev_t = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"media%d\00", align 1
@media_devnode_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @no_llseek, ptr @media_read, ptr @media_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @media_poll, ptr @media_ioctl, ptr null, ptr null, i32 0, ptr @media_open, ptr null, ptr @media_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"\013mc: %s: cdev_device_add failed\0A\00", align 1
@__func__.media_devnode_register = private unnamed_addr constant [23 x i8] c"media_devnode_register\00", align 1
@__UNIQUE_ID_author222 = internal constant [60 x i8] c"author=Laurent Pinchart <laurent.pinchart@ideasonboard.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description223 = internal constant [55 x i8] c"description=Device node registration for media drivers\00", section ".modinfo", align 1
@__UNIQUE_ID_license224 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"media\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@.str.4 = private unnamed_addr constant [36 x i8] c"\016mc: Linux media interface: v0.10\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"\014mc: unable to allocate major\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"\014mc: bus_register failed\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author222, ptr @__UNIQUE_ID_description223, ptr @__UNIQUE_ID_license224], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @media_devnode_register(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @media_devnode_lock) #4
  %4 = tail call i32 @_find_first_zero_bit_le(ptr noundef nonnull @media_devnode_nums, i32 noundef 256) #4
  %5 = icmp eq i32 %4, 256
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  tail call void @mutex_unlock(ptr noundef nonnull @media_devnode_lock) #4
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #5
  tail call void @kfree(ptr noundef %1) #4
  br label %35

8:                                                ; preds = %3
  tail call void @_set_bit(i32 noundef %4, ptr noundef nonnull @media_devnode_nums) #4
  tail call void @mutex_unlock(ptr noundef nonnull @media_devnode_lock) #4
  %9 = getelementptr inbounds %struct.media_devnode, ptr %1, i32 0, i32 5
  store i32 %4, ptr %9, align 8
  store ptr %0, ptr %1, align 8
  %10 = getelementptr inbounds %struct.media_devnode, ptr %1, i32 0, i32 2
  %11 = getelementptr inbounds %struct.media_devnode, ptr %1, i32 0, i32 2, i32 5
  store ptr @media_bus_type, ptr %11, align 4
  %12 = load i32, ptr @media_dev_t, align 4
  %13 = and i32 %12, -1048576
  %14 = or i32 %13, %4
  %15 = getelementptr inbounds %struct.media_devnode, ptr %1, i32 0, i32 2, i32 27
  store i32 %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.media_devnode, ptr %1, i32 0, i32 2, i32 33
  store ptr @media_devnode_release, ptr %16, align 4
  %17 = getelementptr inbounds %struct.media_devnode, ptr %1, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %8
  %21 = getelementptr inbounds %struct.media_devnode, ptr %1, i32 0, i32 2, i32 1
  store ptr %18, ptr %21, align 4
  br label %22

22:                                               ; preds = %20, %8
  %23 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %10, ptr noundef nonnull @.str.1, i32 noundef %4) #4
  tail call void @device_initialize(ptr noundef %10) #4
  %24 = getelementptr inbounds %struct.media_devnode, ptr %1, i32 0, i32 3
  tail call void @cdev_init(ptr noundef %24, ptr noundef nonnull @media_devnode_fops) #4
  %25 = getelementptr inbounds %struct.media_devnode, ptr %1, i32 0, i32 3, i32 1
  store ptr %2, ptr %25, align 4
  %26 = load i32, ptr %9, align 8
  %27 = tail call i32 (ptr, ptr, ...) @kobject_set_name(ptr noundef %24, ptr noundef nonnull @.str.1, i32 noundef %26) #4
  %28 = tail call i32 @cdev_device_add(ptr noundef %24, ptr noundef %10) #4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.media_devnode_register) #5
  tail call void @mutex_lock(ptr noundef nonnull @media_devnode_lock) #4
  %32 = load i32, ptr %9, align 8
  tail call void @_clear_bit(i32 noundef %32, ptr noundef nonnull @media_devnode_nums) #4
  store ptr null, ptr %1, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @media_devnode_lock) #4
  tail call void @put_device(ptr noundef %10) #4
  br label %35

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.media_devnode, ptr %1, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 0, ptr noundef %34) #4
  br label %35

35:                                               ; preds = %33, %30, %6
  %36 = phi i32 [ -23, %6 ], [ %28, %30 ], [ 0, %33 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @media_devnode_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  tail call void @mutex_lock(ptr noundef nonnull @media_devnode_lock) #4
  %3 = getelementptr i8, ptr %0, i32 536
  %4 = load i32, ptr %3, align 8
  tail call void @_clear_bit(i32 noundef %4, ptr noundef nonnull @media_devnode_nums) #4
  tail call void @mutex_unlock(ptr noundef nonnull @media_devnode_lock) #4
  %5 = getelementptr i8, ptr %0, i32 544
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void %6(ptr noundef %2) #4
  br label %9

9:                                                ; preds = %8, %1
  tail call void @kfree(ptr noundef %2) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_device_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @media_devnode_unregister_prepare(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.media_devnode, ptr %0, i32 0, i32 6
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @mutex_lock(ptr noundef nonnull @media_devnode_lock) #4
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %4) #4
  tail call void @mutex_unlock(ptr noundef nonnull @media_devnode_lock) #4
  br label %9

9:                                                ; preds = %8, %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @media_devnode_unregister(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @media_devnode_lock) #4
  %2 = getelementptr inbounds %struct.media_devnode, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.media_devnode, ptr %0, i32 0, i32 2
  tail call void @cdev_device_del(ptr noundef %2, ptr noundef %3) #4
  store ptr null, ptr %0, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @media_devnode_lock) #4
  tail call void @put_device(ptr noundef %3) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_device_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #3 section ".init.text" {
  %1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #5
  %2 = tail call i32 @alloc_chrdev_region(ptr noundef nonnull @media_dev_t, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.3) #4
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %0
  %5 = tail call i32 @bus_register(ptr noundef nonnull @media_bus_type) #4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %4
  %8 = load i32, ptr @media_dev_t, align 4
  tail call void @unregister_chrdev_region(i32 noundef %8, i32 noundef 256) #4
  br label %9

9:                                                ; preds = %7, %0
  %10 = phi ptr [ @.str.6, %7 ], [ @.str.5, %0 ]
  %11 = phi i32 [ -5, %7 ], [ %2, %0 ]
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %10) #5
  br label %13

13:                                               ; preds = %9, %4
  %14 = phi i32 [ 0, %4 ], [ %11, %9 ]
  ret i32 %14
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #3 section ".exit.text" {
  tail call void @bus_unregister(ptr noundef nonnull @media_bus_type) #4
  %1 = load i32, ptr @media_dev_t, align 4
  tail call void @unregister_chrdev_region(i32 noundef %1, i32 noundef 256) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @media_read(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.media_devnode, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.media_file_operations, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %4
  %13 = icmp eq ptr %6, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.media_devnode, ptr %6, i32 0, i32 6
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = tail call i32 %10(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #4
  br label %21

21:                                               ; preds = %19, %14, %12, %4
  %22 = phi i32 [ %20, %19 ], [ -22, %4 ], [ -5, %14 ], [ -5, %12 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @media_write(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.media_devnode, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.media_file_operations, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %4
  %13 = icmp eq ptr %6, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.media_devnode, ptr %6, i32 0, i32 6
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = tail call i32 %10(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #4
  br label %21

21:                                               ; preds = %19, %14, %12, %4
  %22 = phi i32 [ %20, %19 ], [ -22, %4 ], [ -5, %14 ], [ -5, %12 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @media_poll(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.media_devnode, ptr %4, i32 0, i32 6
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.media_devnode, ptr %4, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.media_file_operations, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = tail call i32 %15(ptr noundef %0, ptr noundef %1) #4
  br label %19

19:                                               ; preds = %17, %11, %6, %2
  %20 = phi i32 [ %18, %17 ], [ 24, %6 ], [ 325, %11 ], [ 24, %2 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @media_ioctl(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.media_devnode, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.media_file_operations, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %3
  %12 = icmp eq ptr %5, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.media_devnode, ptr %5, i32 0, i32 6
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = tail call i32 %9(ptr noundef %0, i32 noundef %1, i32 noundef %2) #4
  br label %20

20:                                               ; preds = %18, %13, %11, %3
  %21 = phi i32 [ %19, %18 ], [ -25, %3 ], [ -5, %13 ], [ -5, %11 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @media_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @media_devnode_lock) #4
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 43
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -480
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %4, i32 68
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7, %2
  tail call void @mutex_unlock(ptr noundef nonnull @media_devnode_lock) #4
  br label %26

13:                                               ; preds = %7
  %14 = getelementptr i8, ptr %4, i32 -472
  %15 = tail call ptr @get_device(ptr noundef %14) #4
  tail call void @mutex_unlock(ptr noundef nonnull @media_devnode_lock) #4
  %16 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %5, ptr %16, align 8
  %17 = getelementptr i8, ptr %4, i32 -476
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.media_file_operations, ptr %18, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %13
  %23 = tail call i32 %20(ptr noundef %1) #4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void @put_device(ptr noundef %14) #4
  store ptr null, ptr %16, align 8
  br label %26

26:                                               ; preds = %25, %22, %13, %12
  %27 = phi i32 [ %23, %25 ], [ -6, %12 ], [ 0, %22 ], [ 0, %13 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @media_release(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.media_devnode, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.media_file_operations, ptr %6, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 %8(ptr noundef %1) #4
  br label %12

12:                                               ; preds = %10, %2
  store ptr null, ptr %3, align 8
  %13 = getelementptr inbounds %struct.media_devnode, ptr %4, i32 0, i32 2
  tail call void @put_device(ptr noundef %13) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
