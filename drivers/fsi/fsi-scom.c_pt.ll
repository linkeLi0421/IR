; ModuleID = '/llk/IR/drivers/fsi/fsi-scom.c_pt.bc'
source_filename = "../drivers/fsi/fsi-scom.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fsi_driver = type { %struct.device_driver, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.fsi_device_id = type { i8, i8 }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.scom_device = type { %struct.list_head, ptr, %struct.device, %struct.cdev, %struct.mutex, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.file = type { %union.anon.11, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.scom_access = type { i64, i64, i64, i32, i8, i8 }
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
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.61 = type { ptr }

@__UNIQUE_ID_license206 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@scom_drv = internal global %struct.fsi_driver { %struct.device_driver { ptr @.str, ptr @fsi_bus_type, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr @scom_probe, ptr null, ptr @scom_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @scom_ids }, align 4
@.str = private unnamed_addr constant [5 x i8] c"scom\00", align 1
@fsi_bus_type = external dso_local global %struct.bus_type, align 4
@scom_ids = internal constant [2 x %struct.fsi_device_id] [%struct.fsi_device_id { i8 5, i8 0 }, %struct.fsi_device_id zeroinitializer], align 1
@scom_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"&scom->lock\00", align 1
@fsi_cdev_type = external dso_local constant %struct.device_type, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"scom%d\00", align 1
@scom_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @scom_llseek, ptr @scom_read, ptr @scom_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @scom_ioctl, ptr null, ptr null, i32 0, ptr @scom_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Error %d creating char device %s\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__this_module = external dso_local global %struct.module, align 64
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID_license206], section "llvm.metadata"
@switch.table.scom_write = private unnamed_addr constant [7 x i32] [i32 -6, i32 -5, i32 -5, i32 -110, i32 -5, i32 -5, i32 -19], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 {
  %1 = tail call i32 @fsi_driver_register(ptr noundef nonnull @scom_drv) #10
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 {
  tail call void @fsi_driver_unregister(ptr noundef nonnull @scom_drv) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsi_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scom_probe(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 576) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %38, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %4, ptr %7, align 8
  %8 = getelementptr inbounds %struct.scom_device, ptr %4, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %8, ptr noundef nonnull @.str.1, ptr noundef nonnull @scom_probe.__key) #10
  %9 = tail call ptr @get_device(ptr noundef %0) #10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  tail call void @kfree(ptr noundef nonnull %4) #10
  br label %38

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.scom_device, ptr %4, i32 0, i32 1
  store ptr %0, ptr %13, align 8
  %14 = getelementptr inbounds %struct.scom_device, ptr %4, i32 0, i32 2
  %15 = getelementptr inbounds %struct.scom_device, ptr %4, i32 0, i32 2, i32 4
  store ptr @fsi_cdev_type, ptr %15, align 8
  %16 = getelementptr inbounds %struct.scom_device, ptr %4, i32 0, i32 2, i32 1
  store ptr %0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.scom_device, ptr %4, i32 0, i32 2, i32 33
  store ptr @scom_free, ptr %17, align 4
  tail call void @device_initialize(ptr noundef %14) #10
  %18 = getelementptr inbounds %struct.scom_device, ptr %4, i32 0, i32 2, i32 27
  %19 = call i32 @fsi_get_new_minor(ptr noundef %0, i32 noundef 2, ptr noundef %18, ptr noundef nonnull %2) #10
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %12
  %22 = load i32, ptr %2, align 4
  %23 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %14, ptr noundef nonnull @.str.2, i32 noundef %22) #10
  %24 = getelementptr inbounds %struct.scom_device, ptr %4, i32 0, i32 3
  call void @cdev_init(ptr noundef %24, ptr noundef nonnull @scom_fops) #10
  %25 = call i32 @cdev_device_add(ptr noundef %24, ptr noundef %14) #10
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.scom_device, ptr %4, i32 0, i32 2, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load ptr, ptr %14, align 8
  br label %33

33:                                               ; preds = %31, %27
  %34 = phi ptr [ %32, %31 ], [ %29, %27 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %25, ptr noundef %34) #12
  %35 = load i32, ptr %18, align 8
  call void @fsi_free_minor(i32 noundef %35) #10
  br label %36

36:                                               ; preds = %33, %12
  %37 = phi i32 [ %19, %12 ], [ %25, %33 ]
  call void @put_device(ptr noundef %14) #10
  br label %38

38:                                               ; preds = %36, %21, %11, %1
  %39 = phi i32 [ %37, %36 ], [ -19, %11 ], [ -12, %1 ], [ 0, %21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scom_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.scom_device, ptr %3, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %4) #10
  %5 = getelementptr inbounds %struct.scom_device, ptr %3, i32 0, i32 5
  store i8 1, ptr %5, align 8
  tail call void @mutex_unlock(ptr noundef %4) #10
  %6 = getelementptr inbounds %struct.scom_device, ptr %3, i32 0, i32 3
  %7 = getelementptr inbounds %struct.scom_device, ptr %3, i32 0, i32 2
  tail call void @cdev_device_del(ptr noundef %6, ptr noundef %7) #10
  %8 = getelementptr inbounds %struct.scom_device, ptr %3, i32 0, i32 2, i32 27
  %9 = load i32, ptr %8, align 8
  tail call void @fsi_free_minor(i32 noundef %9) #10
  tail call void @put_device(ptr noundef %7) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @scom_free(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -16
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = load ptr, ptr %3, align 8
  tail call void @put_device(ptr noundef %4) #10
  tail call void @kfree(ptr noundef %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsi_get_new_minor(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_device_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsi_free_minor(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i64 @scom_llseek(ptr nocapture noundef writeonly %0, i64 noundef %1, i32 noundef %2) #5 {
  switch i32 %2, label %7 [
    i32 1, label %6
    i32 0, label %4
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 10
  store i64 %1, ptr %5, align 8
  br label %6

6:                                                ; preds = %4, %3
  br label %7

7:                                                ; preds = %6, %3
  %8 = phi i64 [ %1, %6 ], [ -22, %3 ]
  ret i64 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scom_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %10 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  store i64 0, ptr %8, align 8, !annotation !8
  %11 = icmp eq i32 %2, 8
  br i1 %11, label %12, label %71

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.scom_device, ptr %10, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %13) #10
  %14 = getelementptr inbounds %struct.scom_device, ptr %10, i32 0, i32 5
  %15 = load i8, ptr %14, align 8, !range !9
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  tail call void @mutex_unlock(ptr noundef %13) #10
  br label %71

18:                                               ; preds = %12
  %19 = load i64, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i32 0, ptr %7, align 4, !annotation !8
  %20 = call fastcc i32 @raw_get_scom(ptr noundef %10, ptr noundef nonnull %8, i64 noundef %19, ptr noundef nonnull %7) #10
  %21 = icmp eq i32 %20, -19
  br i1 %21, label %50, label %22

22:                                               ; preds = %18
  %23 = load i32, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 -1, ptr %6, align 4
  %24 = and i32 %23, 84934656
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.scom_device, ptr %10, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8
  %29 = call i32 @fsi_device_write(ptr noundef %28, i32 noundef 24, ptr noundef nonnull %6, i32 noundef 4) #10
  br label %30

30:                                               ; preds = %26, %22
  %31 = and i32 %23, 16777216
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = and i32 %23, 67108864
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = and i32 %23, 1048576
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36, %33, %30
  %40 = phi i32 [ -16, %36 ], [ -5, %33 ], [ -1, %30 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  br label %50

41:                                               ; preds = %36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  %42 = lshr i32 %23, 12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 -1, ptr %5, align 4
  %43 = trunc i32 %42 to i3
  switch i3 %43, label %44 [
    i3 0, label %58
    i3 1, label %56
  ]

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.scom_device, ptr %10, i32 0, i32 1
  %46 = load ptr, ptr %45, align 8
  %47 = call i32 @fsi_device_write(ptr noundef %46, i32 noundef 24, ptr noundef nonnull %5, i32 noundef 4) #10
  %48 = xor i3 %43, -4
  %49 = icmp eq i3 %48, -1
  br i1 %49, label %56, label %52

50:                                               ; preds = %39, %18
  %51 = phi i32 [ %40, %39 ], [ -19, %18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @mutex_unlock(ptr noundef %13) #10
  br label %71

52:                                               ; preds = %44
  %53 = zext i3 %48 to i32
  %54 = getelementptr inbounds [7 x i32], ptr @switch.table.scom_write, i32 0, i32 %53
  %55 = load i32, ptr %54, align 4
  br label %56

56:                                               ; preds = %52, %44, %41
  %57 = phi i32 [ -16, %41 ], [ %55, %52 ], [ -5, %44 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @mutex_unlock(ptr noundef %13) #10
  br label %71

58:                                               ; preds = %41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @mutex_unlock(ptr noundef %13) #10
  %59 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 8, i32 -1090519040) #13, !srcloc !10
  %60 = extractvalue { i32, i32 } %59, 0
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %58
  %63 = tail call ptr @llvm.thread.pointer() #10
  %64 = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 3
  %65 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %64) #14, !srcloc !11
  %66 = and i32 %65, -13
  %67 = or i32 %66, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %67) #10, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !13
  %68 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %8, i32 noundef 8) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %65) #10, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !13
  %69 = icmp eq i32 %68, 0
  %70 = select i1 %69, i32 8, i32 %68
  br label %71

71:                                               ; preds = %62, %58, %56, %50, %17, %4
  %72 = phi i32 [ -22, %4 ], [ -19, %17 ], [ %51, %50 ], [ %57, %56 ], [ 8, %58 ], [ %70, %62 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scom_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %10 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  store i64 0, ptr %8, align 8, !annotation !8
  %11 = icmp eq i32 %2, 8
  br i1 %11, label %12, label %76

12:                                               ; preds = %4
  %13 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 8, i32 -1090519040) #13, !srcloc !14
  %14 = extractvalue { i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %24, !prof !15

16:                                               ; preds = %12
  %17 = tail call ptr @llvm.thread.pointer() #10
  %18 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %19 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %18) #14, !srcloc !11
  %20 = and i32 %19, -13
  %21 = or i32 %20, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #10, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !13
  %22 = call i32 @arm_copy_from_user(ptr noundef nonnull %8, ptr noundef %1, i32 noundef 8) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #10, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !13
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24, !prof !15

24:                                               ; preds = %16, %12
  %25 = phi i32 [ %22, %16 ], [ 8, %12 ]
  %26 = sub i32 8, %25
  %27 = getelementptr i8, ptr %8, i32 %26
  call void @llvm.memset.p0.i32(ptr align 1 %27, i8 0, i32 %25, i1 false) #10
  br label %76

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct.scom_device, ptr %10, i32 0, i32 4
  call void @mutex_lock(ptr noundef %29) #10
  %30 = getelementptr inbounds %struct.scom_device, ptr %10, i32 0, i32 5
  %31 = load i8, ptr %30, align 8, !range !9
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  call void @mutex_unlock(ptr noundef %29) #10
  br label %76

34:                                               ; preds = %28
  %35 = load i64, ptr %8, align 8
  %36 = load i64, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i32 0, ptr %7, align 4, !annotation !8
  %37 = call fastcc i32 @raw_put_scom(ptr noundef %10, i64 noundef %35, i64 noundef %36, ptr noundef nonnull %7) #10
  %38 = icmp eq i32 %37, -19
  br i1 %38, label %67, label %39

39:                                               ; preds = %34
  %40 = load i32, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 -1, ptr %6, align 4
  %41 = and i32 %40, 84934656
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.scom_device, ptr %10, i32 0, i32 1
  %45 = load ptr, ptr %44, align 8
  %46 = call i32 @fsi_device_write(ptr noundef %45, i32 noundef 24, ptr noundef nonnull %6, i32 noundef 4) #10
  br label %47

47:                                               ; preds = %43, %39
  %48 = and i32 %40, 16777216
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = and i32 %40, 67108864
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = and i32 %40, 1048576
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %53, %50, %47
  %57 = phi i32 [ -16, %53 ], [ -5, %50 ], [ -1, %47 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  br label %67

58:                                               ; preds = %53
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  %59 = lshr i32 %40, 12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 -1, ptr %5, align 4
  %60 = trunc i32 %59 to i3
  switch i3 %60, label %61 [
    i3 0, label %75
    i3 1, label %73
  ]

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.scom_device, ptr %10, i32 0, i32 1
  %63 = load ptr, ptr %62, align 8
  %64 = call i32 @fsi_device_write(ptr noundef %63, i32 noundef 24, ptr noundef nonnull %5, i32 noundef 4) #10
  %65 = xor i3 %60, -4
  %66 = icmp eq i3 %65, -1
  br i1 %66, label %73, label %69

67:                                               ; preds = %56, %34
  %68 = phi i32 [ %57, %56 ], [ -19, %34 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @mutex_unlock(ptr noundef %29) #10
  br label %76

69:                                               ; preds = %61
  %70 = zext i3 %65 to i32
  %71 = getelementptr inbounds [7 x i32], ptr @switch.table.scom_write, i32 0, i32 %70
  %72 = load i32, ptr %71, align 4
  br label %73

73:                                               ; preds = %69, %61, %58
  %74 = phi i32 [ -16, %58 ], [ %72, %69 ], [ -5, %61 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @mutex_unlock(ptr noundef %29) #10
  br label %76

75:                                               ; preds = %58
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @mutex_unlock(ptr noundef %29) #10
  br label %76

76:                                               ; preds = %75, %73, %67, %33, %24, %4
  %77 = phi i32 [ -22, %4 ], [ 8, %75 ], [ -19, %33 ], [ %68, %67 ], [ %74, %73 ], [ -22, %24 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  ret i32 %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scom_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.scom_access, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.scom_access, align 8
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %11 = load ptr, ptr %10, align 8
  %12 = inttoptr i32 %2 to ptr
  %13 = getelementptr inbounds %struct.scom_device, ptr %11, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %13) #10
  %14 = getelementptr inbounds %struct.scom_device, ptr %11, i32 0, i32 5
  %15 = load i8, ptr %14, align 8, !range !9
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  tail call void @mutex_unlock(ptr noundef %13) #10
  br label %177

18:                                               ; preds = %3
  switch i32 %1, label %175 [
    i32 -2147192064, label %19
    i32 -1071615231, label %26
    i32 -1071615230, label %75
    i32 1074033411, label %148
  ]

19:                                               ; preds = %18
  %20 = tail call ptr @llvm.thread.pointer() #10
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %22 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %21) #14, !srcloc !11
  %23 = and i32 %22, -13
  %24 = or i32 %23, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #10, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !13
  %25 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %12, i32 1, i32 -1090519041) #10, !srcloc !16
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #10, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !13
  br label %175

26:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i32 32, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #10
  store i32 0, ptr %9, align 4, !annotation !8
  %27 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %12, i32 32, i32 -1090519040) #13
  %28 = extractvalue { i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %38, !prof !15

30:                                               ; preds = %26
  %31 = tail call ptr @llvm.thread.pointer() #10
  %32 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 3
  %33 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %32) #14, !srcloc !11
  %34 = and i32 %33, -13
  %35 = or i32 %34, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %35) #10, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !13
  %36 = call i32 @arm_copy_from_user(ptr noundef nonnull %8, ptr noundef %12, i32 noundef 32) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %33) #10, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !13
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38, !prof !15

38:                                               ; preds = %30, %26
  %39 = phi i32 [ %36, %30 ], [ 32, %26 ]
  %40 = sub i32 32, %39
  %41 = getelementptr i8, ptr %8, i32 %40
  call void @llvm.memset.p0.i32(ptr align 1 %41, i8 0, i32 %39, i1 false) #10
  br label %73

42:                                               ; preds = %30
  %43 = getelementptr inbounds %struct.scom_access, ptr %8, i32 0, i32 1
  %44 = load i64, ptr %8, align 8
  %45 = call fastcc i32 @raw_get_scom(ptr noundef %11, ptr noundef %43, i64 noundef %44, ptr noundef nonnull %9) #10
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %73

47:                                               ; preds = %42
  %48 = load i32, ptr %9, align 4
  %49 = lshr i32 %48, 12
  %50 = trunc i32 %49 to i8
  %51 = and i8 %50, 7
  %52 = getelementptr inbounds %struct.scom_access, ptr %8, i32 0, i32 4
  store i8 %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.scom_access, ptr %8, i32 0, i32 3
  store i32 0, ptr %53, align 8
  %54 = and i32 %48, 16777216
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %47
  %57 = and i32 %48, 67108864
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = and i32 %48, 1048576
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = icmp sgt i32 %48, -1
  br i1 %63, label %66, label %64

64:                                               ; preds = %62, %59, %56, %47
  %65 = phi i32 [ 2, %47 ], [ 1, %56 ], [ 4, %59 ], [ -2147483648, %62 ]
  store i32 %65, ptr %53, align 8
  br label %66

66:                                               ; preds = %64, %62
  %67 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %32) #14, !srcloc !11
  %68 = and i32 %67, -13
  %69 = or i32 %68, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %69) #10, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !13
  %70 = call i32 @arm_copy_to_user(ptr noundef %12, ptr noundef nonnull %8, i32 noundef 32) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %67) #10, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !13
  %71 = icmp eq i32 %70, 0
  %72 = select i1 %71, i32 0, i32 -14
  br label %73

73:                                               ; preds = %66, %42, %38
  %74 = phi i32 [ %45, %42 ], [ -14, %38 ], [ %72, %66 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #10
  br label %175

75:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  store i64 0, ptr %5, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i32 32, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i32 0, ptr %7, align 4, !annotation !8
  %76 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %12, i32 32, i32 -1090519040) #13
  %77 = extractvalue { i32, i32 } %76, 0
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %87, !prof !15

79:                                               ; preds = %75
  %80 = tail call ptr @llvm.thread.pointer() #10
  %81 = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 3
  %82 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %81) #14, !srcloc !11
  %83 = and i32 %82, -13
  %84 = or i32 %83, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %84) #10, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !13
  %85 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %12, i32 noundef 32) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %82) #10, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !13
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %91, label %87, !prof !15

87:                                               ; preds = %79, %75
  %88 = phi i32 [ %85, %79 ], [ 32, %75 ]
  %89 = sub i32 32, %88
  %90 = getelementptr i8, ptr %6, i32 %89
  call void @llvm.memset.p0.i32(ptr align 1 %90, i8 0, i32 %88, i1 false) #10
  br label %146

91:                                               ; preds = %79
  %92 = getelementptr inbounds %struct.scom_access, ptr %6, i32 0, i32 2
  %93 = load i64, ptr %92, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %106, label %95

95:                                               ; preds = %91
  %96 = load i64, ptr %6, align 8
  %97 = call fastcc i32 @raw_get_scom(ptr noundef %11, ptr noundef nonnull %5, i64 noundef %96, ptr noundef nonnull %7) #10
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %146

99:                                               ; preds = %95
  %100 = load i32, ptr %7, align 4
  %101 = and i32 %100, 84963328
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %120

103:                                              ; preds = %99
  %104 = load i64, ptr %92, align 8
  %105 = load i64, ptr %5, align 8
  br label %106

106:                                              ; preds = %103, %91
  %107 = phi i64 [ %105, %103 ], [ -1, %91 ]
  %108 = phi i64 [ %104, %103 ], [ -1, %91 ]
  %109 = xor i64 %108, -1
  %110 = and i64 %107, %109
  %111 = getelementptr inbounds %struct.scom_access, ptr %6, i32 0, i32 1
  %112 = load i64, ptr %111, align 8
  %113 = and i64 %112, %108
  %114 = or i64 %113, %110
  %115 = load i64, ptr %6, align 8
  %116 = call fastcc i32 @raw_put_scom(ptr noundef %11, i64 noundef %114, i64 noundef %115, ptr noundef nonnull %7) #10
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %146

118:                                              ; preds = %106
  %119 = load i32, ptr %7, align 4
  br label %120

120:                                              ; preds = %118, %99
  %121 = phi i32 [ %119, %118 ], [ %100, %99 ]
  %122 = lshr i32 %121, 12
  %123 = trunc i32 %122 to i8
  %124 = and i8 %123, 7
  %125 = getelementptr inbounds %struct.scom_access, ptr %6, i32 0, i32 4
  store i8 %124, ptr %125, align 4
  %126 = getelementptr inbounds %struct.scom_access, ptr %6, i32 0, i32 3
  store i32 0, ptr %126, align 8
  %127 = and i32 %121, 16777216
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %120
  %130 = and i32 %121, 67108864
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %129
  %133 = and i32 %121, 1048576
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %132
  %136 = icmp sgt i32 %121, -1
  br i1 %136, label %139, label %137

137:                                              ; preds = %135, %132, %129, %120
  %138 = phi i32 [ 2, %120 ], [ 1, %129 ], [ 4, %132 ], [ -2147483648, %135 ]
  store i32 %138, ptr %126, align 8
  br label %139

139:                                              ; preds = %137, %135
  %140 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %81) #14, !srcloc !11
  %141 = and i32 %140, -13
  %142 = or i32 %141, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %142) #10, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !13
  %143 = call i32 @arm_copy_to_user(ptr noundef %12, ptr noundef nonnull %6, i32 noundef 32) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %140) #10, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !13
  %144 = icmp eq i32 %143, 0
  %145 = select i1 %144, i32 0, i32 -14
  br label %146

146:                                              ; preds = %139, %106, %95, %87
  %147 = phi i32 [ %97, %95 ], [ %116, %106 ], [ -14, %87 ], [ %145, %139 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  br label %175

148:                                              ; preds = %18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 -1, ptr %4, align 4
  %149 = tail call ptr @llvm.thread.pointer() #10
  %150 = getelementptr inbounds %struct.thread_info, ptr %149, i32 0, i32 3
  %151 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %150) #14, !srcloc !11
  %152 = and i32 %151, -13
  %153 = or i32 %152, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %153) #10, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !13
  %154 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %12, i32 -1090519041) #10, !srcloc !17
  %155 = extractvalue { i32, i32 } %154, 0
  %156 = extractvalue { i32, i32 } %154, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %151) #10, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !13
  %157 = icmp eq i32 %155, 0
  br i1 %157, label %158, label %173

158:                                              ; preds = %148
  %159 = and i32 %156, 2
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %158
  %162 = getelementptr inbounds %struct.scom_device, ptr %11, i32 0, i32 1
  %163 = load ptr, ptr %162, align 8
  %164 = call i32 @fsi_device_write(ptr noundef %163, i32 noundef 28, ptr noundef nonnull %4, i32 noundef 4) #10
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %161, %158
  %167 = and i32 %156, 3
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %173, label %169

169:                                              ; preds = %166
  %170 = getelementptr inbounds %struct.scom_device, ptr %11, i32 0, i32 1
  %171 = load ptr, ptr %170, align 8
  %172 = call i32 @fsi_device_write(ptr noundef %171, i32 noundef 24, ptr noundef nonnull %4, i32 noundef 4) #10
  br label %173

173:                                              ; preds = %169, %166, %161, %148
  %174 = phi i32 [ -14, %148 ], [ %164, %161 ], [ %172, %169 ], [ 0, %166 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %175

175:                                              ; preds = %173, %146, %73, %19, %18
  %176 = phi i32 [ -25, %18 ], [ %174, %173 ], [ %147, %146 ], [ %74, %73 ], [ %25, %19 ]
  call void @mutex_unlock(ptr noundef %13) #10
  br label %177

177:                                              ; preds = %175, %17
  %178 = phi i32 [ -19, %17 ], [ %176, %175 ]
  ret i32 %178
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @scom_open(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 43
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -488
  %6 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %5, ptr %6, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @raw_get_scom(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i64 noundef %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = alloca i64, align 8
  %6 = icmp sgt i64 %2, -1
  br i1 %6, label %45, label %7

7:                                                ; preds = %4
  %8 = and i64 %2, 1152921504606846976
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %48

10:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  %11 = and i64 %2, 4503595332403200
  %12 = or i64 %11, -9223372036854775808
  store i64 %12, ptr %5, align 8
  %13 = trunc i64 %2 to i32
  %14 = and i32 %13, 2147483647
  %15 = tail call fastcc i32 @__put_scom(ptr noundef %0, i64 noundef %12, i32 noundef %14, ptr noundef %3) #10
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %43

17:                                               ; preds = %10
  %18 = load i32, ptr %3, align 4
  %19 = and i32 %18, 84963328
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %40, %17
  %22 = phi i32 [ %41, %40 ], [ 0, %17 ]
  %23 = call fastcc i32 @__get_scom(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %13, ptr noundef %3) #10
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %21
  %26 = load i32, ptr %3, align 4
  %27 = and i32 %26, 84963328
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %25
  %30 = load i64, ptr %5, align 8
  %31 = trunc i64 %30 to i32
  %32 = lshr i32 %31, 28
  %33 = and i32 %32, 7
  %34 = shl nuw nsw i32 %33, 12
  store i32 %34, ptr %3, align 4
  %35 = and i64 %30, 65535
  store i64 %35, ptr %1, align 8
  %36 = and i64 %30, 2147483648
  %37 = icmp ne i64 %36, 0
  %38 = icmp ne i32 %33, 1
  %39 = select i1 %37, i1 true, i1 %38
  br i1 %39, label %43, label %40

40:                                               ; preds = %29
  tail call void @msleep(i32 noundef 1) #10
  %41 = add nuw nsw i32 %22, 1
  %42 = icmp eq i32 %41, 10
  br i1 %42, label %43, label %21

43:                                               ; preds = %40, %29, %25, %21, %17, %10
  %44 = phi i32 [ 0, %17 ], [ %15, %10 ], [ 0, %25 ], [ %23, %21 ], [ 0, %29 ], [ 0, %40 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  br label %48

45:                                               ; preds = %4
  %46 = trunc i64 %2 to i32
  %47 = tail call fastcc i32 @__get_scom(ptr noundef %0, ptr noundef %1, i32 noundef %46, ptr noundef %3)
  br label %48

48:                                               ; preds = %45, %43, %7
  %49 = phi i32 [ %44, %43 ], [ %47, %45 ], [ -6, %7 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__get_scom(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4, !annotation !8
  store i64 0, ptr %1, align 8
  %7 = tail call i32 @llvm.bswap.i32(i32 %2)
  store i32 %7, ptr %5, align 4
  %8 = getelementptr inbounds %struct.scom_device, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = call i32 @fsi_device_write(ptr noundef %9, i32 noundef 8, ptr noundef nonnull %5, i32 noundef 4) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %38

12:                                               ; preds = %4
  %13 = load ptr, ptr %8, align 8
  %14 = call i32 @fsi_device_read(ptr noundef %13, i32 noundef 28, ptr noundef nonnull %6, i32 noundef 4) #10
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %12
  %17 = load ptr, ptr %8, align 8
  %18 = call i32 @fsi_device_read(ptr noundef %17, i32 noundef 0, ptr noundef nonnull %5, i32 noundef 4) #10
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %16
  %21 = load i32, ptr %5, align 4
  %22 = call i32 @llvm.bswap.i32(i32 %21)
  %23 = zext i32 %22 to i64
  %24 = shl nuw i64 %23, 32
  %25 = load i64, ptr %1, align 8
  %26 = or i64 %24, %25
  store i64 %26, ptr %1, align 8
  %27 = load ptr, ptr %8, align 8
  %28 = call i32 @fsi_device_read(ptr noundef %27, i32 noundef 4, ptr noundef nonnull %5, i32 noundef 4) #10
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %20
  %31 = load i32, ptr %5, align 4
  %32 = call i32 @llvm.bswap.i32(i32 %31)
  %33 = zext i32 %32 to i64
  %34 = load i64, ptr %1, align 8
  %35 = or i64 %34, %33
  store i64 %35, ptr %1, align 8
  %36 = load i32, ptr %6, align 4
  %37 = call i32 @llvm.bswap.i32(i32 %36)
  store i32 %37, ptr %3, align 4
  br label %38

38:                                               ; preds = %30, %20, %16, %12, %4
  %39 = phi i32 [ 0, %30 ], [ %10, %4 ], [ %14, %12 ], [ %18, %16 ], [ %28, %20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__put_scom(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = lshr i64 %1, 32
  %8 = trunc i64 %7 to i32
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  store i32 %9, ptr %5, align 4
  %10 = getelementptr inbounds %struct.scom_device, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = call i32 @fsi_device_write(ptr noundef %11, i32 noundef 0, ptr noundef nonnull %5, i32 noundef 4) #10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %4
  %15 = trunc i64 %1 to i32
  %16 = call i32 @llvm.bswap.i32(i32 %15)
  store i32 %16, ptr %5, align 4
  %17 = load ptr, ptr %10, align 8
  %18 = call i32 @fsi_device_write(ptr noundef %17, i32 noundef 4, ptr noundef nonnull %5, i32 noundef 4) #10
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %14
  %21 = or i32 %2, -2147483648
  %22 = call i32 @llvm.bswap.i32(i32 %21)
  store i32 %22, ptr %5, align 4
  %23 = load ptr, ptr %10, align 8
  %24 = call i32 @fsi_device_write(ptr noundef %23, i32 noundef 8, ptr noundef nonnull %5, i32 noundef 4) #10
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load ptr, ptr %10, align 8
  %28 = call i32 @fsi_device_read(ptr noundef %27, i32 noundef 28, ptr noundef nonnull %6, i32 noundef 4) #10
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, ptr %6, align 4
  %32 = call i32 @llvm.bswap.i32(i32 %31)
  store i32 %32, ptr %3, align 4
  br label %33

33:                                               ; preds = %30, %26, %20, %14, %4
  %34 = phi i32 [ 0, %30 ], [ %12, %4 ], [ %18, %14 ], [ %24, %20 ], [ %28, %26 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsi_device_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsi_device_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @raw_put_scom(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = alloca i64, align 8
  %6 = icmp sgt i64 %2, -1
  br i1 %6, label %54, label %7

7:                                                ; preds = %4
  %8 = and i64 %2, 1152921504606846976
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %7
  %11 = icmp ult i64 %1, 4503599627370496
  br i1 %11, label %12, label %57

12:                                               ; preds = %10
  %13 = shl i64 %2, 20
  %14 = and i64 %13, -4503599627370496
  %15 = or i64 %14, %1
  %16 = trunc i64 %2 to i32
  %17 = tail call fastcc i32 @__put_scom(ptr noundef %0, i64 noundef %15, i32 noundef %16, ptr noundef %3) #10
  br label %57

18:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  %19 = icmp ult i64 %1, 65536
  br i1 %19, label %20, label %52

20:                                               ; preds = %18
  %21 = and i64 %2, 4503595332403200
  %22 = or i64 %21, %1
  store i64 %22, ptr %5, align 8
  %23 = trunc i64 %2 to i32
  %24 = and i32 %23, 2147483647
  %25 = tail call fastcc i32 @__put_scom(ptr noundef %0, i64 noundef %22, i32 noundef %24, ptr noundef %3) #10
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %52

27:                                               ; preds = %20
  %28 = load i32, ptr %3, align 4
  %29 = and i32 %28, 84963328
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %52

31:                                               ; preds = %49, %27
  %32 = phi i32 [ %50, %49 ], [ 0, %27 ]
  %33 = call fastcc i32 @__get_scom(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %23, ptr noundef %3) #10
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %31
  %36 = load i32, ptr %3, align 4
  %37 = and i32 %36, 84963328
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %35
  %40 = load i64, ptr %5, align 8
  %41 = trunc i64 %40 to i32
  %42 = lshr i32 %41, 28
  %43 = and i32 %42, 7
  %44 = shl nuw nsw i32 %43, 12
  store i32 %44, ptr %3, align 4
  %45 = and i64 %40, 2147483648
  %46 = icmp ne i64 %45, 0
  %47 = icmp ne i32 %43, 1
  %48 = select i1 %46, i1 true, i1 %47
  br i1 %48, label %52, label %49

49:                                               ; preds = %39
  tail call void @msleep(i32 noundef 1) #10
  %50 = add nuw nsw i32 %32, 1
  %51 = icmp eq i32 %50, 10
  br i1 %51, label %52, label %31

52:                                               ; preds = %49, %39, %35, %31, %27, %20, %18
  %53 = phi i32 [ -22, %18 ], [ 0, %27 ], [ %25, %20 ], [ 0, %35 ], [ %33, %31 ], [ 0, %39 ], [ 0, %49 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  br label %57

54:                                               ; preds = %4
  %55 = trunc i64 %2 to i32
  %56 = tail call fastcc i32 @__put_scom(ptr noundef %0, i64 noundef %1, i32 noundef %55, ptr noundef %3)
  br label %57

57:                                               ; preds = %54, %52, %12, %10
  %58 = phi i32 [ %53, %52 ], [ %56, %54 ], [ %17, %12 ], [ -22, %10 ]
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_device_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsi_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind readonly }

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
!10 = !{i64 2151489263, i64 2151489288}
!11 = !{i64 3984797}
!12 = !{i64 3984994}
!13 = !{i64 2151470273}
!14 = !{i64 2151488685, i64 2151488710}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2151949257, i64 2151949537, i64 2151949871, i64 2151950205}
!17 = !{i64 2151940212, i64 2151940492, i64 2151940826, i64 2151941160}
