; ModuleID = '/llk/IR/drivers/pwm/sysfs.c_pt.bc'
source_filename = "../drivers/pwm/sysfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.lock_class_key = type {}
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }
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
%struct.pwm_export = type { %struct.device, ptr, %struct.mutex, %struct.pwm_state }
%struct.pwm_capture = type { i32, i32 }

@pwm_class = internal global %struct.class { ptr @.str.2, ptr null, ptr null, ptr @pwm_chip_groups, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pwm_class_pm_ops, ptr null }, align 4
@.str = private unnamed_addr constant [10 x i8] c"pwmchip%d\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"device_create failed for pwm_chip sysfs export\0A\00", align 1
@__initcall__kmod_sysfs__166_529_pwm_sysfs_init4 = internal global ptr @pwm_sysfs_init, section ".initcall4.init", align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"pwm\00", align 1
@pwm_chip_groups = internal global [2 x ptr] [ptr @pwm_chip_group, ptr null], align 4
@pwm_class_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pwm_class_suspend, ptr @pwm_class_resume, ptr @pwm_class_suspend, ptr @pwm_class_resume, ptr @pwm_class_suspend, ptr @pwm_class_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@pwm_chip_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @pwm_chip_attrs, ptr null }, align 4
@pwm_chip_attrs = internal global [4 x ptr] [ptr @dev_attr_export, ptr @dev_attr_unexport, ptr @dev_attr_npwm, ptr null], align 4
@dev_attr_export = internal global %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 128 }, ptr null, ptr @export_store }, align 4
@dev_attr_unexport = internal global %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 128 }, ptr null, ptr @unexport_store }, align 4
@dev_attr_npwm = internal global %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292 }, ptr @npwm_show, ptr null }, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"export\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"sysfs\00", align 1
@pwm_export_child.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"&export->lock\00", align 1
@pwm_groups = internal global [2 x ptr] [ptr @pwm_group, ptr null], align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"pwm%u\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"EXPORT=pwm%u\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@pwm_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @pwm_attrs, ptr null }, align 4
@pwm_attrs = internal global [6 x ptr] [ptr @dev_attr_period, ptr @dev_attr_duty_cycle, ptr @dev_attr_enable, ptr @dev_attr_polarity, ptr @dev_attr_capture, ptr null], align 4
@dev_attr_period = internal global %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 420 }, ptr @period_show, ptr @period_store }, align 4
@dev_attr_duty_cycle = internal global %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 420 }, ptr @duty_cycle_show, ptr @duty_cycle_store }, align 4
@dev_attr_enable = internal global %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 420 }, ptr @enable_show, ptr @enable_store }, align 4
@dev_attr_polarity = internal global %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 420 }, ptr @polarity_show, ptr @polarity_store }, align 4
@dev_attr_capture = internal global %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292 }, ptr @capture_show, ptr null }, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"period\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"duty_cycle\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"polarity\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"inversed\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"capture\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"%u %u\0A\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"unexport\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"npwm\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"UNEXPORT=pwm%u\00", align 1
@pwm_sysfs_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_sysfs__166_529_pwm_sysfs_init4], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pwmchip_sysfs_export(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.pwm_chip, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef nonnull @pwm_class, ptr noundef %2, i32 noundef 0, ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %4) #11
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.1) #12
  br label %9

9:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pwmchip_sysfs_unexport(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @class_find_device(ptr noundef nonnull @pwm_class, ptr noundef null, ptr noundef %0, ptr noundef nonnull @pwmchip_sysfs_match) #11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.pwm_chip, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %26, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.pwm_chip, ptr %0, i32 0, i32 7
  br label %10

10:                                               ; preds = %22, %8
  %11 = phi i32 [ %6, %8 ], [ %23, %22 ]
  %12 = phi i32 [ 0, %8 ], [ %24, %22 ]
  %13 = load ptr, ptr %9, align 4
  %14 = getelementptr %struct.pwm_device, ptr %13, i32 %12, i32 1
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %10
  %19 = getelementptr %struct.pwm_device, ptr %13, i32 %12
  %20 = tail call fastcc i32 @pwm_unexport_child(ptr noundef nonnull %2, ptr noundef %19)
  %21 = load i32, ptr %5, align 4
  br label %22

22:                                               ; preds = %18, %10
  %23 = phi i32 [ %21, %18 ], [ %11, %10 ]
  %24 = add nuw i32 %12, 1
  %25 = icmp ult i32 %24, %23
  br i1 %25, label %10, label %26

26:                                               ; preds = %22, %4
  tail call void @put_device(ptr noundef nonnull %2) #11
  tail call void @device_unregister(ptr noundef nonnull %2) #11
  br label %27

27:                                               ; preds = %26, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @class_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @pwmchip_sysfs_match(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #4 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, %1
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pwm_unexport_child(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [2 x ptr], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %4 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 1
  %5 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %4) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @device_find_child(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @pwm_unexport_match) #11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.23, i32 noundef %12) #11
  store ptr %13, ptr %3, align 8
  %14 = getelementptr inbounds [2 x ptr], ptr %3, i32 0, i32 1
  store ptr null, ptr %14, align 4
  %15 = call i32 @kobject_uevent_env(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %3) #11
  %16 = load ptr, ptr %3, align 8
  call void @kfree(ptr noundef %16) #11
  call void @put_device(ptr noundef nonnull %8) #11
  call void @device_unregister(ptr noundef nonnull %8) #11
  call void @pwm_put(ptr noundef %1) #11
  br label %17

17:                                               ; preds = %10, %7, %2
  %18 = phi i32 [ 0, %10 ], [ -19, %2 ], [ -19, %7 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @pwm_sysfs_init() #5 section ".init.text" {
  %1 = tail call i32 @__class_register(ptr noundef nonnull @pwm_class, ptr noundef nonnull @pwm_sysfs_init.__key) #11
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @export_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca [2 x ptr], align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 0, ptr %6, align 4, !annotation !8
  %9 = call i32 @kstrtouint(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %6) #11
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %54, label %11

11:                                               ; preds = %4
  %12 = load i32, ptr %6, align 4
  %13 = getelementptr inbounds %struct.pwm_chip, ptr %8, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = icmp ult i32 %12, %14
  br i1 %15, label %16, label %54

16:                                               ; preds = %11
  %17 = call ptr @pwm_request_from_chip(ptr noundef %8, i32 noundef %12, ptr noundef nonnull @.str.4) #11
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = ptrtoint ptr %17 to i32
  br label %54

21:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %22 = getelementptr inbounds %struct.pwm_device, ptr %17, i32 0, i32 1
  %23 = call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %22) #11
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %21
  %26 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %27 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 520) #13
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  call void @_clear_bit(i32 noundef 2, ptr noundef %22) #11
  br label %42

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.pwm_export, ptr %27, i32 0, i32 1
  store ptr %17, ptr %31, align 8
  %32 = getelementptr inbounds %struct.pwm_export, ptr %27, i32 0, i32 2
  call void @__mutex_init(ptr noundef %32, ptr noundef nonnull @.str.5, ptr noundef nonnull @pwm_export_child.__key) #11
  %33 = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 33
  store ptr @pwm_export_release, ptr %33, align 4
  %34 = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 1
  store ptr %0, ptr %34, align 4
  %35 = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 27
  store i32 0, ptr %35, align 8
  %36 = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 32
  store ptr @pwm_groups, ptr %36, align 8
  %37 = getelementptr inbounds %struct.pwm_device, ptr %17, i32 0, i32 2
  %38 = load i32, ptr %37, align 8
  %39 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %27, ptr noundef nonnull @.str.6, i32 noundef %38) #11
  %40 = call i32 @device_register(ptr noundef nonnull %27) #11
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %48, label %44

42:                                               ; preds = %29, %21
  %43 = phi i32 [ -16, %21 ], [ -12, %29 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %46

44:                                               ; preds = %30
  call void @_clear_bit(i32 noundef 2, ptr noundef %22) #11
  call void @put_device(ptr noundef nonnull %27) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  %45 = icmp slt i32 %40, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %40, %44 ]
  call void @pwm_put(ptr noundef %17) #11
  br label %54

48:                                               ; preds = %30
  %49 = load i32, ptr %37, align 8
  %50 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.7, i32 noundef %49) #11
  store ptr %50, ptr %5, align 8
  %51 = getelementptr inbounds [2 x ptr], ptr %5, i32 0, i32 1
  store ptr null, ptr %51, align 4
  %52 = call i32 @kobject_uevent_env(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %5) #11
  %53 = load ptr, ptr %5, align 8
  call void @kfree(ptr noundef %53) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %54

54:                                               ; preds = %48, %46, %44, %19, %11, %4
  %55 = phi i32 [ %20, %19 ], [ %9, %4 ], [ -19, %11 ], [ %3, %48 ], [ %40, %44 ], [ %47, %46 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pwm_request_from_chip(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwm_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pwm_export_release(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent_env(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @period_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr inbounds %struct.pwm_export, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.pwm_device, ptr %5, i32 0, i32 7
  %7 = load i64, ptr %6, align 8
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.9, i64 noundef %7)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @period_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.pwm_state, align 8
  %6 = alloca i64, align 8
  %7 = getelementptr inbounds %struct.pwm_export, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  store i64 0, ptr %6, align 8, !annotation !8
  %9 = call i32 @kstrtoull(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %6) #11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.pwm_export, ptr %0, i32 0, i32 2
  call void @mutex_lock(ptr noundef %12) #11
  %13 = getelementptr inbounds %struct.pwm_device, ptr %8, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef align 8 dereferenceable(24) %13, i32 24, i1 false) #11
  %14 = load i64, ptr %6, align 8
  store i64 %14, ptr %5, align 8
  %15 = call i32 @pwm_apply_state(ptr noundef %8, ptr noundef nonnull %5) #11
  call void @mutex_unlock(ptr noundef %12) #11
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 %3, i32 %15
  br label %18

18:                                               ; preds = %11, %4
  %19 = phi i32 [ %17, %11 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  ret i32 %19
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwm_apply_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @duty_cycle_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr inbounds %struct.pwm_export, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.pwm_device, ptr %5, i32 0, i32 7, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.9, i64 noundef %7)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @duty_cycle_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.pwm_state, align 8
  %6 = alloca i64, align 8
  %7 = getelementptr inbounds %struct.pwm_export, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  store i64 0, ptr %6, align 8, !annotation !8
  %9 = call i32 @kstrtoull(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %6) #11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.pwm_export, ptr %0, i32 0, i32 2
  call void @mutex_lock(ptr noundef %12) #11
  %13 = getelementptr inbounds %struct.pwm_device, ptr %8, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef align 8 dereferenceable(24) %13, i32 24, i1 false) #11
  %14 = load i64, ptr %6, align 8
  %15 = getelementptr inbounds %struct.pwm_state, ptr %5, i32 0, i32 1
  store i64 %14, ptr %15, align 8
  %16 = call i32 @pwm_apply_state(ptr noundef %8, ptr noundef nonnull %5) #11
  call void @mutex_unlock(ptr noundef %12) #11
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 %3, i32 %16
  br label %19

19:                                               ; preds = %11, %4
  %20 = phi i32 [ %18, %11 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  ret i32 %20
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @enable_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr inbounds %struct.pwm_export, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.pwm_device, ptr %5, i32 0, i32 7, i32 3
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i32
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef %8)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @enable_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.pwm_state, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.pwm_export, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 0, ptr %6, align 4, !annotation !8
  %9 = call i32 @kstrtoint(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %6) #11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.pwm_export, ptr %0, i32 0, i32 2
  call void @mutex_lock(ptr noundef %12) #11
  %13 = getelementptr inbounds %struct.pwm_device, ptr %8, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef align 8 dereferenceable(24) %13, i32 24, i1 false) #11
  %14 = load i32, ptr %6, align 4
  switch i32 %14, label %15 [
    i32 0, label %17
    i32 1, label %16
  ]

15:                                               ; preds = %11
  call void @mutex_unlock(ptr noundef %12) #11
  br label %23

16:                                               ; preds = %11
  br label %17

17:                                               ; preds = %16, %11
  %18 = phi i8 [ 1, %16 ], [ 0, %11 ]
  %19 = getelementptr inbounds %struct.pwm_state, ptr %5, i32 0, i32 3
  store i8 %18, ptr %19, align 4
  %20 = call i32 @pwm_apply_state(ptr noundef %8, ptr noundef nonnull %5) #11
  call void @mutex_unlock(ptr noundef %12) #11
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 %3, i32 %20
  br label %23

23:                                               ; preds = %17, %15, %4
  %24 = phi i32 [ %9, %4 ], [ -22, %15 ], [ %22, %17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @polarity_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr inbounds %struct.pwm_export, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.pwm_device, ptr %5, i32 0, i32 7, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 1
  %9 = select i1 %8, ptr @.str.16, ptr @.str.14
  %10 = icmp eq i32 %7, 0
  %11 = select i1 %10, ptr @.str.15, ptr %9
  %12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.17, ptr noundef nonnull %11)
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @polarity_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.pwm_state, align 8
  %6 = getelementptr inbounds %struct.pwm_export, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  %8 = tail call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.15) #11
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = tail call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.16) #11
  br i1 %10, label %11, label %19

11:                                               ; preds = %9, %4
  %12 = phi i32 [ 0, %4 ], [ 1, %9 ]
  %13 = getelementptr inbounds %struct.pwm_export, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %13) #11
  %14 = getelementptr inbounds %struct.pwm_device, ptr %7, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef align 8 dereferenceable(24) %14, i32 24, i1 false) #11
  %15 = getelementptr inbounds %struct.pwm_state, ptr %5, i32 0, i32 2
  store i32 %12, ptr %15, align 8
  %16 = call i32 @pwm_apply_state(ptr noundef %7, ptr noundef nonnull %5) #11
  call void @mutex_unlock(ptr noundef %13) #11
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 %3, i32 %16
  br label %19

19:                                               ; preds = %11, %9
  %20 = phi i32 [ %18, %11 ], [ -22, %9 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @capture_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.pwm_capture, align 8
  %5 = getelementptr inbounds %struct.pwm_export, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  store i64 0, ptr %4, align 8, !annotation !8
  %7 = tail call i32 @jiffies_to_msecs(i32 noundef 100) #11
  %8 = call i32 @pwm_capture(ptr noundef %6, ptr noundef nonnull %4, i32 noundef %7) #11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load i32, ptr %4, align 8
  %12 = getelementptr inbounds %struct.pwm_capture, ptr %4, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef %11, i32 noundef %13)
  br label %15

15:                                               ; preds = %10, %3
  %16 = phi i32 [ %14, %10 ], [ %8, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwm_capture(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @unexport_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = call i32 @kstrtouint(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #11
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %4
  %11 = load i32, ptr %5, align 4
  %12 = getelementptr inbounds %struct.pwm_chip, ptr %7, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.pwm_chip, ptr %7, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr %struct.pwm_device, ptr %17, i32 %11
  %19 = call fastcc i32 @pwm_unexport_child(ptr noundef %0, ptr noundef %18)
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 %3, i32 %19
  br label %22

22:                                               ; preds = %15, %10, %4
  %23 = phi i32 [ %21, %15 ], [ %8, %4 ], [ -19, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret i32 %23
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @npwm_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.pwm_chip, ptr %5, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.22, i32 noundef %7)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pwm_class_suspend(ptr noundef %0) #0 {
  %2 = alloca %struct.pwm_state, align 8
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.pwm_chip, ptr %4, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %36, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.pwm_chip, ptr %4, i32 0, i32 7
  %10 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 3
  br label %11

11:                                               ; preds = %31, %8
  %12 = phi i32 [ 0, %8 ], [ %32, %31 ]
  %13 = phi i32 [ 0, %8 ], [ %33, %31 ]
  %14 = load ptr, ptr %9, align 4
  %15 = getelementptr %struct.pwm_device, ptr %14, i32 %13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i32 24, i1 false), !annotation !8
  %16 = getelementptr %struct.pwm_device, ptr %14, i32 %13, i32 1
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %11
  %21 = call ptr @device_find_child(ptr noundef %0, ptr noundef %15, ptr noundef nonnull @pwm_unexport_match) #11
  %22 = icmp eq ptr %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %20
  call void @put_device(ptr noundef nonnull %21) #11
  %24 = getelementptr inbounds %struct.pwm_export, ptr %21, i32 0, i32 2
  call void @mutex_lock(ptr noundef %24) #11
  %25 = getelementptr %struct.pwm_device, ptr %14, i32 %13, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef align 8 dereferenceable(24) %25, i32 24, i1 false) #11
  %26 = getelementptr inbounds %struct.pwm_export, ptr %21, i32 0, i32 3
  call void @llvm.memmove.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %26, ptr noundef align 8 dereferenceable(24) %25, i32 24, i1 false)
  store i8 0, ptr %10, align 4
  %27 = call i32 @pwm_apply_state(ptr noundef %15, ptr noundef nonnull %2) #11
  call void @mutex_unlock(ptr noundef %24) #11
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = call fastcc i32 @pwm_class_resume_npwm(ptr noundef %0, i32 noundef %13)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #11
  br label %36

31:                                               ; preds = %23, %20, %11
  %32 = phi i32 [ %27, %23 ], [ %12, %11 ], [ %12, %20 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #11
  %33 = add nuw i32 %13, 1
  %34 = load i32, ptr %5, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %11, label %36

36:                                               ; preds = %31, %29, %1
  %37 = phi i32 [ %27, %29 ], [ 0, %1 ], [ %32, %31 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pwm_class_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.pwm_chip, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = tail call fastcc i32 @pwm_class_resume_npwm(ptr noundef %0, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pwm_class_resume_npwm(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.pwm_state, align 8
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %34, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.pwm_chip, ptr %7, i32 0, i32 7
  %9 = getelementptr inbounds %struct.pwm_state, ptr %3, i32 0, i32 3
  br label %10

10:                                               ; preds = %30, %5
  %11 = phi i32 [ 0, %5 ], [ %31, %30 ]
  %12 = phi i32 [ 0, %5 ], [ %32, %30 ]
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr %struct.pwm_device, ptr %13, i32 %12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !8
  %15 = getelementptr %struct.pwm_device, ptr %13, i32 %12, i32 1
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %10
  %20 = call ptr @device_find_child(ptr noundef %0, ptr noundef %14, ptr noundef nonnull @pwm_unexport_match) #11
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  br label %30

23:                                               ; preds = %19
  call void @put_device(ptr noundef nonnull %20) #11
  %24 = getelementptr inbounds %struct.pwm_export, ptr %20, i32 0, i32 2
  call void @mutex_lock(ptr noundef %24) #11
  %25 = getelementptr %struct.pwm_device, ptr %13, i32 %12, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef align 8 dereferenceable(24) %25, i32 24, i1 false) #11
  %26 = getelementptr inbounds %struct.pwm_export, ptr %20, i32 0, i32 3, i32 3
  %27 = load i8, ptr %26, align 4, !range !9
  store i8 %27, ptr %9, align 4
  %28 = call i32 @pwm_apply_state(ptr noundef %14, ptr noundef nonnull %3) #11
  call void @mutex_unlock(ptr noundef %24) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %23, %22
  %31 = phi i32 [ %11, %22 ], [ %28, %23 ]
  %32 = add nuw i32 %12, 1
  %33 = icmp eq i32 %32, %1
  br i1 %33, label %34, label %10

34:                                               ; preds = %30, %23, %2
  %35 = phi i32 [ 0, %2 ], [ %28, %23 ], [ %31, %30 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_find_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @pwm_unexport_match(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #4 {
  %3 = getelementptr inbounds %struct.pwm_export, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, %1
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

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
