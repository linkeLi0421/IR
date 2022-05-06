; ModuleID = '/llk/IR/drivers/pps/pps.c_pt.bc'
source_filename = "../drivers/pps/pps.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pps_lookup_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22pps_lookup_dev\22\09\09\09\09\09"
module asm "__kstrtabns_pps_lookup_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.pps_device = type { %struct.pps_source_info, %struct.pps_kparams, i32, i32, %struct.pps_ktime, %struct.pps_ktime, i32, i32, %struct.wait_queue_head, i32, ptr, %struct.cdev, ptr, ptr, %struct.spinlock }
%struct.pps_source_info = type { [32 x i8], [32 x i8], i32, ptr, ptr, ptr }
%struct.pps_kparams = type { i32, i32, %struct.pps_ktime, %struct.pps_ktime }
%struct.pps_ktime = type { i64, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.11, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.pps_fdata = type { %struct.pps_kinfo, %struct.pps_ktime }
%struct.pps_kinfo = type { i32, i32, %struct.pps_ktime, %struct.pps_ktime, i32 }
%struct.pps_bind_args = type { i32, i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.58, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.59, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.60, ptr, %struct.address_space, %struct.list_head, %union.anon.61, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.58 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.59 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.60 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.61 = type { ptr }

@pps_idr_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pps_idr_lock, i64 12), ptr getelementptr (i8, ptr @pps_idr_lock, i64 12) } }, align 4
@pps_idr = internal global %struct.idr { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554436, ptr null }, i32 0, i32 0 }, align 4
@.str = private unnamed_addr constant [52 x i8] c"\013pps_core: %s: too many PPS sources in the system\0A\00", align 1
@pps_devt = internal global i32 0, align 4
@pps_cdev_fops = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pps_cdev_poll, ptr @pps_cdev_ioctl, ptr null, ptr null, i32 0, ptr @pps_cdev_open, ptr null, ptr @pps_cdev_release, ptr null, ptr @pps_cdev_fasync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"\013pps_core: %s: failed to add char device %d:%d\0A\00", align 1
@pps_class = internal unnamed_addr global ptr null, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"pps%d\00", align 1
@__kstrtab_pps_lookup_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_pps_lookup_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_pps_lookup_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pps_lookup_dev to i32), ptr @__kstrtab_pps_lookup_dev, ptr @__kstrtabns_pps_lookup_dev }, section "___ksymtab+pps_lookup_dev", align 4
@__initcall__kmod_pps_core__206_484_pps_init4 = internal global ptr @pps_init, section ".initcall4.init", align 4
@__exitcall_pps_exit = internal global ptr @pps_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author207 = internal constant [53 x i8] c"pps_core.author=Rodolfo Giometti <giometti@linux.it>\00", section ".modinfo", align 1
@__UNIQUE_ID_description208 = internal constant [62 x i8] c"pps_core.description=LinuxPPS support (RFC 2783) - ver. 5.3.6\00", section ".modinfo", align 1
@__UNIQUE_ID_file209 = internal constant [35 x i8] c"pps_core.file=drivers/pps/pps_core\00", section ".modinfo", align 1
@__UNIQUE_ID_license210 = internal constant [21 x i8] c"pps_core.license=GPL\00", section ".modinfo", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"unsupported capabilities (%x)\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"invalid kernel consumer bind parameters (%x)\0A\00", align 1
@pps_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"pps\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"\013pps_core: failed to allocate class\0A\00", align 1
@pps_groups = external dso_local global [0 x ptr], align 4
@.str.9 = private unnamed_addr constant [51 x i8] c"\013pps_core: failed to allocate char device region\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"\016pps_core: LinuxPPS API ver. %d registered\0A\00", align 1
@.str.11 = private unnamed_addr constant [89 x i8] c"\016pps_core: Software ver. %s - Copyright 2005-2007 Rodolfo Giometti <giometti@linux.it>\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"5.3.6\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author207, ptr @__UNIQUE_ID_description208, ptr @__UNIQUE_ID_file209, ptr @__UNIQUE_ID_license210, ptr @__exitcall_pps_exit, ptr @__initcall__kmod_pps_core__206_484_pps_init4, ptr @__ksymtab_pps_lookup_dev, ptr @pps_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pps_register_cdev(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @pps_idr_lock) #8
  %2 = tail call i32 @idr_alloc(ptr noundef nonnull @pps_idr, ptr noundef %0, i32 noundef 0, i32 noundef 16, i32 noundef 3264) #8
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = icmp eq i32 %2, -28
  br i1 %5, label %6, label %41

6:                                                ; preds = %4
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %0) #9
  br label %41

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.pps_device, ptr %0, i32 0, i32 9
  store i32 %2, ptr %9, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @pps_idr_lock) #8
  %10 = load i32, ptr @pps_devt, align 4
  %11 = and i32 %10, -1048576
  %12 = load i32, ptr %9, align 4
  %13 = or i32 %11, %12
  %14 = getelementptr inbounds %struct.pps_device, ptr %0, i32 0, i32 11
  tail call void @cdev_init(ptr noundef %14, ptr noundef nonnull @pps_cdev_fops) #8
  %15 = getelementptr inbounds %struct.pps_source_info, ptr %0, i32 0, i32 4
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.pps_device, ptr %0, i32 0, i32 11, i32 1
  store ptr %16, ptr %17, align 4
  %18 = tail call i32 @cdev_add(ptr noundef %14, i32 noundef %13, i32 noundef 1) #8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %8
  %21 = load i32, ptr @pps_devt, align 4
  %22 = lshr i32 %21, 20
  %23 = load i32, ptr %9, align 4
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %0, i32 noundef %22, i32 noundef %23) #9
  br label %37

25:                                               ; preds = %8
  %26 = load ptr, ptr @pps_class, align 4
  %27 = getelementptr inbounds %struct.pps_source_info, ptr %0, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = load i32, ptr %9, align 4
  %30 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %26, ptr noundef %28, i32 noundef %13, ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %29) #8
  %31 = getelementptr inbounds %struct.pps_device, ptr %0, i32 0, i32 12
  store ptr %30, ptr %31, align 8
  %32 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = ptrtoint ptr %30 to i32
  tail call void @cdev_del(ptr noundef %14) #8
  br label %37

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.device, ptr %30, i32 0, i32 33
  store ptr @pps_device_destruct, ptr %36, align 4
  br label %43

37:                                               ; preds = %33, %20
  %38 = phi i32 [ %18, %20 ], [ %34, %33 ]
  tail call void @mutex_lock(ptr noundef nonnull @pps_idr_lock) #8
  %39 = load i32, ptr %9, align 4
  %40 = tail call ptr @idr_remove(ptr noundef nonnull @pps_idr, i32 noundef %39) #8
  br label %41

41:                                               ; preds = %37, %6, %4
  %42 = phi i32 [ -16, %6 ], [ %2, %4 ], [ %38, %37 ]
  tail call void @mutex_unlock(ptr noundef nonnull @pps_idr_lock) #8
  br label %43

43:                                               ; preds = %41, %35
  %44 = phi i32 [ %42, %41 ], [ 0, %35 ]
  ret i32 %44
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pps_device_destruct(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.pps_device, ptr %3, i32 0, i32 11
  tail call void @cdev_del(ptr noundef %4) #8
  tail call void @mutex_lock(ptr noundef nonnull @pps_idr_lock) #8
  %5 = getelementptr inbounds %struct.pps_device, ptr %3, i32 0, i32 9
  %6 = load i32, ptr %5, align 4
  %7 = tail call ptr @idr_remove(ptr noundef nonnull @pps_idr, i32 noundef %6) #8
  tail call void @mutex_unlock(ptr noundef nonnull @pps_idr_lock) #8
  tail call void @kfree(ptr noundef %0) #8
  tail call void @kfree(ptr noundef %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pps_unregister_cdev(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.pps_device, ptr %0, i32 0, i32 10
  store ptr null, ptr %2, align 8
  %3 = load ptr, ptr @pps_class, align 4
  %4 = getelementptr inbounds %struct.pps_device, ptr %0, i32 0, i32 12
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27
  %7 = load i32, ptr %6, align 8
  tail call void @device_destroy(ptr noundef %3, i32 noundef %7) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pps_lookup_dev(ptr noundef readnone %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !8
  store i32 0, ptr %2, align 4
  %3 = call ptr @idr_get_next(ptr noundef nonnull @pps_idr, ptr noundef nonnull %2) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %10, %1
  %6 = phi ptr [ %13, %10 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.pps_device, ptr %6, i32 0, i32 10
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %15, label %10

10:                                               ; preds = %5
  %11 = load i32, ptr %2, align 4
  %12 = add i32 %11, 1
  store i32 %12, ptr %2, align 4
  %13 = call ptr @idr_get_next(ptr noundef nonnull @pps_idr, ptr noundef nonnull %2) #8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %5

15:                                               ; preds = %10, %5, %1
  %16 = phi ptr [ null, %1 ], [ %6, %5 ], [ null, %10 ]
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret ptr %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @pps_exit() #4 section ".exit.text" {
  %1 = load ptr, ptr @pps_class, align 4
  tail call void @class_destroy(ptr noundef %1) #8
  %2 = load i32, ptr @pps_devt, align 4
  tail call void @unregister_chrdev_region(i32 noundef %2, i32 noundef 16) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @pps_init() #4 section ".init.text" {
  %1 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @pps_init.__key) #8
  store ptr %1, ptr @pps_class, align 4
  %2 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #9
  %5 = load ptr, ptr @pps_class, align 4
  %6 = ptrtoint ptr %5 to i32
  br label %17

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.class, ptr %1, i32 0, i32 3
  store ptr @pps_groups, ptr %8, align 4
  %9 = tail call i32 @alloc_chrdev_region(ptr noundef nonnull @pps_devt, i32 noundef 0, i32 noundef 16, ptr noundef nonnull @.str.7) #8
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #9
  %13 = load ptr, ptr @pps_class, align 4
  tail call void @class_destroy(ptr noundef %13) #8
  br label %17

14:                                               ; preds = %7
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 1) #9
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #9
  br label %17

17:                                               ; preds = %14, %11, %3
  %18 = phi i32 [ %6, %3 ], [ %9, %11 ], [ 0, %14 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pps_cdev_poll(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.pps_device, ptr %4, i32 0, i32 8
  %6 = icmp eq ptr %1, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 4
  %9 = icmp ne ptr %8, null
  %10 = icmp ne ptr %5, null
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void %8(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %1) #8
  br label %13

13:                                               ; preds = %12, %7, %2
  ret i32 65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pps_cdev_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.wait_queue_entry, align 4
  %5 = alloca %struct.wait_queue_entry, align 4
  %6 = alloca %struct.pps_kparams, align 8
  %7 = alloca %struct.pps_fdata, align 8
  %8 = alloca %struct.pps_bind_args, align 4
  %9 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %10 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i32 40, i1 false), !annotation !10
  %11 = inttoptr i32 %2 to ptr
  switch i32 %1, label %231 [
    i32 -2147192671, label %12
    i32 1074032802, label %28
    i32 -2147192669, label %80
    i32 -1073450844, label %90
    i32 1074032805, label %187
  ]

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.pps_device, ptr %10, i32 0, i32 14
  tail call void @_raw_spin_lock_irq(ptr noundef %13) #8
  %14 = getelementptr inbounds %struct.pps_device, ptr %10, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef align 8 dereferenceable(40) %14, i32 40, i1 false)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %15 = load i16, ptr %13, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr %13, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  %17 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %11, i32 40, i32 -1090519040) #10, !srcloc !16
  %18 = extractvalue { i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %231

20:                                               ; preds = %12
  %21 = tail call ptr @llvm.thread.pointer() #8
  %22 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %23 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %22) #11, !srcloc !17
  %24 = and i32 %23, -13
  %25 = or i32 %24, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #8, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !19
  %26 = call i32 @arm_copy_to_user(ptr noundef %11, ptr noundef nonnull %6, i32 noundef 40) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #8, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !19
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %230, label %231

28:                                               ; preds = %3
  %29 = tail call zeroext i1 @capable(i32 noundef 25) #8
  br i1 %29, label %30, label %231

30:                                               ; preds = %28
  %31 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %11, i32 40, i32 -1090519040) #10, !srcloc !20
  %32 = extractvalue { i32, i32 } %31, 0
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %42, !prof !21

34:                                               ; preds = %30
  %35 = tail call ptr @llvm.thread.pointer() #8
  %36 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 3
  %37 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %36) #11, !srcloc !17
  %38 = and i32 %37, -13
  %39 = or i32 %38, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #8, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !19
  %40 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %11, i32 noundef 40) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %37) #8, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !19
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42, !prof !21

42:                                               ; preds = %34, %30
  %43 = phi i32 [ %40, %34 ], [ 40, %30 ]
  %44 = sub i32 40, %43
  %45 = getelementptr i8, ptr %6, i32 %44
  call void @llvm.memset.p0.i32(ptr align 1 %45, i8 0, i32 %43, i1 false) #8
  br label %231

46:                                               ; preds = %34
  %47 = getelementptr inbounds %struct.pps_kparams, ptr %6, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 3
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %231, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.pps_source_info, ptr %10, i32 0, i32 2
  %53 = load i32, ptr %52, align 8
  %54 = xor i32 %53, -1
  %55 = and i32 %48, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %231

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.pps_device, ptr %10, i32 0, i32 14
  call void @_raw_spin_lock_irq(ptr noundef %58) #8
  %59 = getelementptr inbounds %struct.pps_device, ptr %10, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(40) %59, ptr noundef nonnull align 8 dereferenceable(40) %6, i32 40, i1 false)
  %60 = load i32, ptr %47, align 4
  %61 = and i32 %60, 12288
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.pps_device, ptr %10, i32 0, i32 1, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = or i32 %65, 4096
  store i32 %66, ptr %64, align 4
  br label %67

67:                                               ; preds = %63, %57
  %68 = load i32, ptr %52, align 8
  %69 = and i32 %68, 256
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.pps_device, ptr %10, i32 0, i32 1, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = or i32 %73, 256
  store i32 %74, ptr %72, align 4
  br label %75

75:                                               ; preds = %71, %67
  store i32 1, ptr %59, align 8
  %76 = getelementptr inbounds %struct.pps_device, ptr %10, i32 0, i32 1, i32 2, i32 2
  store i32 0, ptr %76, align 4
  %77 = getelementptr inbounds %struct.pps_device, ptr %10, i32 0, i32 1, i32 3, i32 2
  store i32 0, ptr %77, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %78 = load i16, ptr %58, align 4
  %79 = add i16 %78, 1
  store i16 %79, ptr %58, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !13
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  br label %230

80:                                               ; preds = %3
  %81 = getelementptr inbounds %struct.pps_source_info, ptr %10, i32 0, i32 2
  %82 = load i32, ptr %81, align 8
  %83 = tail call ptr @llvm.thread.pointer() #8
  %84 = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 3
  %85 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %84) #11, !srcloc !17
  %86 = and i32 %85, -13
  %87 = or i32 %86, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %87) #8, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !19
  %88 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %11, i32 %82, i32 -1090519041) #8, !srcloc !22
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %85) #8, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !19
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %230, label %231

90:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 0, i32 64, i1 false), !annotation !10
  %91 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %11, i32 64, i32 -1090519040) #10
  %92 = extractvalue { i32, i32 } %91, 0
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %102, !prof !21

94:                                               ; preds = %90
  %95 = tail call ptr @llvm.thread.pointer() #8
  %96 = getelementptr inbounds %struct.thread_info, ptr %95, i32 0, i32 3
  %97 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %96) #11, !srcloc !17
  %98 = and i32 %97, -13
  %99 = or i32 %98, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %99) #8, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !19
  %100 = call i32 @arm_copy_from_user(ptr noundef nonnull %7, ptr noundef %11, i32 noundef 64) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %97) #8, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !19
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %106, label %102, !prof !21

102:                                              ; preds = %94, %90
  %103 = phi i32 [ %100, %94 ], [ 64, %90 ]
  %104 = sub i32 64, %103
  %105 = getelementptr i8, ptr %7, i32 %104
  call void @llvm.memset.p0.i32(ptr align 1 %105, i8 0, i32 %103, i1 false) #8
  br label %164

106:                                              ; preds = %94
  %107 = getelementptr inbounds %struct.pps_device, ptr %10, i32 0, i32 7
  %108 = load i32, ptr %107, align 4
  %109 = getelementptr inbounds %struct.pps_fdata, ptr %7, i32 0, i32 1, i32 2
  %110 = load i32, ptr %109, align 4
  %111 = and i32 %110, 1
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %128, label %113

113:                                              ; preds = %106
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false) #8, !annotation !10
  call void @init_wait_entry(ptr noundef nonnull %4, i32 noundef 0) #8
  %114 = getelementptr inbounds %struct.pps_device, ptr %10, i32 0, i32 8
  %115 = call i32 @prepare_to_wait_event(ptr noundef %114, ptr noundef nonnull %4, i32 noundef 1) #8
  %116 = load i32, ptr %107, align 4
  %117 = icmp eq i32 %108, %116
  br i1 %117, label %118, label %125

118:                                              ; preds = %121, %113
  %119 = phi i32 [ %122, %121 ], [ %115, %113 ]
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %118
  call void @schedule() #8
  %122 = call i32 @prepare_to_wait_event(ptr noundef %114, ptr noundef nonnull %4, i32 noundef 1) #8
  %123 = load i32, ptr %107, align 4
  %124 = icmp eq i32 %108, %123
  br i1 %124, label %118, label %125

125:                                              ; preds = %121, %113
  call void @finish_wait(ptr noundef %114, ptr noundef nonnull %4) #8
  br label %126

126:                                              ; preds = %125, %118
  %127 = phi i32 [ 0, %125 ], [ %119, %118 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #8
  br label %161

128:                                              ; preds = %106
  %129 = getelementptr inbounds %struct.pps_fdata, ptr %7, i32 0, i32 1
  %130 = load i64, ptr %129, align 8
  %131 = trunc i64 %130 to i32
  %132 = mul i32 %131, 100
  %133 = getelementptr inbounds %struct.pps_fdata, ptr %7, i32 0, i32 1, i32 1
  %134 = load i32, ptr %133, align 8
  %135 = sdiv i32 %134, 10000000
  %136 = add i32 %132, %135
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %166, label %138

138:                                              ; preds = %128
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false) #8, !annotation !10
  call void @init_wait_entry(ptr noundef nonnull %5, i32 noundef 0) #8
  %139 = getelementptr inbounds %struct.pps_device, ptr %10, i32 0, i32 8
  %140 = call i32 @prepare_to_wait_event(ptr noundef %139, ptr noundef nonnull %5, i32 noundef 1) #8
  %141 = load i32, ptr %107, align 4
  %142 = icmp eq i32 %108, %141
  br i1 %142, label %144, label %143

143:                                              ; preds = %138
  call void @finish_wait(ptr noundef %139, ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #8
  br label %161

144:                                              ; preds = %149, %138
  %145 = phi i32 [ %157, %149 ], [ %136, %138 ]
  %146 = phi i32 [ %151, %149 ], [ %140, %138 ]
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %144
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #8
  br label %161

149:                                              ; preds = %144
  %150 = call i32 @schedule_timeout(i32 noundef %145) #8
  %151 = call i32 @prepare_to_wait_event(ptr noundef %139, ptr noundef nonnull %5, i32 noundef 1) #8
  %152 = load i32, ptr %107, align 4
  %153 = icmp ne i32 %108, %152
  %154 = xor i1 %153, true
  %155 = icmp ne i32 %150, 0
  %156 = select i1 %154, i1 true, i1 %155
  %157 = select i1 %156, i32 %150, i32 1
  %158 = icmp eq i32 %157, 0
  %159 = select i1 %153, i1 true, i1 %158
  br i1 %159, label %160, label %144

160:                                              ; preds = %149
  call void @finish_wait(ptr noundef %139, ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #8
  br i1 %158, label %164, label %161

161:                                              ; preds = %160, %148, %143, %126
  %162 = phi i32 [ %127, %126 ], [ %157, %160 ], [ %146, %148 ], [ %136, %143 ]
  %163 = icmp eq i32 %162, -512
  br i1 %163, label %164, label %166

164:                                              ; preds = %161, %160, %102
  %165 = phi i32 [ -110, %160 ], [ -14, %102 ], [ -4, %161 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #8
  br label %231

166:                                              ; preds = %161, %128
  %167 = getelementptr inbounds %struct.pps_device, ptr %10, i32 0, i32 14
  call void @_raw_spin_lock_irq(ptr noundef %167) #8
  %168 = getelementptr inbounds %struct.pps_device, ptr %10, i32 0, i32 2
  %169 = load i32, ptr %168, align 8
  store i32 %169, ptr %7, align 8
  %170 = getelementptr inbounds %struct.pps_device, ptr %10, i32 0, i32 3
  %171 = load i32, ptr %170, align 4
  %172 = getelementptr inbounds %struct.pps_kinfo, ptr %7, i32 0, i32 1
  store i32 %171, ptr %172, align 4
  %173 = getelementptr inbounds %struct.pps_kinfo, ptr %7, i32 0, i32 2
  %174 = getelementptr inbounds %struct.pps_device, ptr %10, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %173, ptr noundef align 8 dereferenceable(16) %174, i32 16, i1 false)
  %175 = getelementptr inbounds %struct.pps_kinfo, ptr %7, i32 0, i32 3
  %176 = getelementptr inbounds %struct.pps_device, ptr %10, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %175, ptr noundef align 8 dereferenceable(16) %176, i32 16, i1 false)
  %177 = getelementptr inbounds %struct.pps_device, ptr %10, i32 0, i32 6
  %178 = load i32, ptr %177, align 8
  %179 = getelementptr inbounds %struct.pps_kinfo, ptr %7, i32 0, i32 4
  store i32 %178, ptr %179, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %180 = load i16, ptr %167, align 4
  %181 = add i16 %180, 1
  store i16 %181, ptr %167, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !13
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  %182 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %96) #11, !srcloc !17
  %183 = and i32 %182, -13
  %184 = or i32 %183, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %184) #8, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !19
  %185 = call i32 @arm_copy_to_user(ptr noundef %11, ptr noundef nonnull %7, i32 noundef 64) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %182) #8, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !19
  %186 = icmp eq i32 %185, 0
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #8
  br i1 %186, label %230, label %231

187:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %8, i8 0, i32 12, i1 false), !annotation !10
  %188 = tail call zeroext i1 @capable(i32 noundef 25) #8
  br i1 %188, label %189, label %228

189:                                              ; preds = %187
  %190 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %11, i32 12, i32 -1090519040) #10, !srcloc !20
  %191 = extractvalue { i32, i32 } %190, 0
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %201, !prof !21

193:                                              ; preds = %189
  %194 = tail call ptr @llvm.thread.pointer() #8
  %195 = getelementptr inbounds %struct.thread_info, ptr %194, i32 0, i32 3
  %196 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %195) #11, !srcloc !17
  %197 = and i32 %196, -13
  %198 = or i32 %197, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %198) #8, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !19
  %199 = call i32 @arm_copy_from_user(ptr noundef nonnull %8, ptr noundef %11, i32 noundef 12) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %196) #8, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !19
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %205, label %201, !prof !21

201:                                              ; preds = %193, %189
  %202 = phi i32 [ %199, %193 ], [ 12, %189 ]
  %203 = sub i32 12, %202
  %204 = getelementptr i8, ptr %8, i32 %203
  call void @llvm.memset.p0.i32(ptr align 1 %204, i8 0, i32 %202, i1 false) #8
  br label %228

205:                                              ; preds = %193
  %206 = getelementptr inbounds %struct.pps_bind_args, ptr %8, i32 0, i32 1
  %207 = load i32, ptr %206, align 4
  %208 = getelementptr inbounds %struct.pps_source_info, ptr %10, i32 0, i32 2
  %209 = load i32, ptr %208, align 8
  %210 = xor i32 %209, -1
  %211 = and i32 %207, %210
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %216, label %213

213:                                              ; preds = %205
  %214 = getelementptr inbounds %struct.pps_device, ptr %10, i32 0, i32 12
  %215 = load ptr, ptr %214, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %215, ptr noundef nonnull @.str.3, i32 noundef %207) #9
  br label %228

216:                                              ; preds = %205
  %217 = load i32, ptr %8, align 4
  %218 = icmp eq i32 %217, 4096
  br i1 %218, label %219, label %225

219:                                              ; preds = %216
  %220 = icmp ugt i32 %207, 3
  %221 = getelementptr inbounds %struct.pps_bind_args, ptr %8, i32 0, i32 2
  %222 = load i32, ptr %221, align 4
  %223 = icmp ne i32 %222, 0
  %224 = select i1 %220, i1 true, i1 %223
  br i1 %224, label %225, label %228

225:                                              ; preds = %219, %216
  %226 = getelementptr inbounds %struct.pps_device, ptr %10, i32 0, i32 12
  %227 = load ptr, ptr %226, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %227, ptr noundef nonnull @.str.4, i32 noundef %207) #9
  br label %228

228:                                              ; preds = %225, %219, %213, %201, %187
  %229 = phi i32 [ -22, %213 ], [ -22, %225 ], [ -1, %187 ], [ -95, %219 ], [ -14, %201 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #8
  br label %231

230:                                              ; preds = %166, %80, %75, %20
  br label %231

231:                                              ; preds = %230, %228, %166, %164, %80, %51, %46, %42, %28, %20, %12, %3
  %232 = phi i32 [ 0, %230 ], [ %229, %228 ], [ -14, %166 ], [ -14, %20 ], [ -1, %28 ], [ -22, %46 ], [ -22, %51 ], [ -14, %80 ], [ -25, %3 ], [ %165, %164 ], [ -14, %12 ], [ -14, %42 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #8
  ret i32 %232
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pps_cdev_open(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 43
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -188
  %6 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %5, ptr %6, align 8
  %7 = getelementptr i8, ptr %4, i32 60
  %8 = load ptr, ptr %7, align 8
  %9 = tail call ptr @kobject_get(ptr noundef %8) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pps_cdev_release(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 43
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 60
  %6 = load ptr, ptr %5, align 8
  tail call void @kobject_put(ptr noundef %6) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pps_cdev_fasync(i32 noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.pps_device, ptr %5, i32 0, i32 13
  %7 = tail call i32 @fasync_helper(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %6) #8
  ret i32 %7
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fasync_helper(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }
attributes #11 = { nounwind readonly }

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
!8 = !{i64 2149053921}
!9 = !{i64 2149054138}
!10 = !{!"auto-init"}
!11 = !{i64 2148935566}
!12 = !{i64 2148931390}
!13 = !{i64 2148931465, i64 2148931492, i64 2148931539, i64 2148931561, i64 2148931589, i64 2148931609}
!14 = !{i64 315132}
!15 = !{i64 2148959710}
!16 = !{i64 2150909940, i64 2150909965}
!17 = !{i64 3405474}
!18 = !{i64 3405671}
!19 = !{i64 2150890950}
!20 = !{i64 2150909362, i64 2150909387}
!21 = !{!"branch_weights", i32 2000, i32 1}
!22 = !{i64 2151957702, i64 2151957982, i64 2151958316, i64 2151958650}
