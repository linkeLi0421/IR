; ModuleID = '/llk/IR/drivers/input/misc/adxl34x.c_pt.bc'
source_filename = "../drivers/input/misc/adxl34x.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_adxl34x_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22adxl34x_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_adxl34x_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_adxl34x_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22adxl34x_resume\22\09\09\09\09\09"
module asm "__kstrtabns_adxl34x_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_adxl34x_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22adxl34x_probe\22\09\09\09\09\09"
module asm "__kstrtabns_adxl34x_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_adxl34x_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22adxl34x_remove\22\09\09\09\09\09"
module asm "__kstrtabns_adxl34x_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.adxl34x_platform_data = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [3 x i32], i32, i32, i8, i8, i8, i8, [4 x i32], [6 x i32] }
%struct.lock_class_key = type {}
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.adxl34x = type { ptr, ptr, %struct.mutex, %struct.adxl34x_platform_data, %struct.axis_triple, %struct.axis_triple, %struct.axis_triple, [32 x i8], i32, i32, i8, i8, i8, i8, i32, i32, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.axis_triple = type { i32, i32, i32 }
%struct.adxl34x_bus_ops = type { i16, ptr, ptr, ptr }
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
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }

@__kstrtab_adxl34x_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_adxl34x_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_adxl34x_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @adxl34x_suspend to i32), ptr @__kstrtab_adxl34x_suspend, ptr @__kstrtabns_adxl34x_suspend }, section "___ksymtab_gpl+adxl34x_suspend", align 4
@__kstrtab_adxl34x_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_adxl34x_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_adxl34x_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @adxl34x_resume to i32), ptr @__kstrtab_adxl34x_resume, ptr @__kstrtabns_adxl34x_resume }, section "___ksymtab_gpl+adxl34x_resume", align 4
@.str = private unnamed_addr constant [9 x i8] c"no IRQ?\0A\00", align 1
@adxl34x_default_init = internal unnamed_addr constant %struct.adxl34x_platform_data { i8 0, i8 0, i8 0, i8 7, i8 35, i8 3, i8 20, i8 20, i8 -1, i8 6, i8 4, i8 3, i8 8, i8 32, i8 8, i8 8, i8 0, i8 48, i8 2, i8 0, i32 3, i32 0, i32 1, i32 2, [3 x i32] [i32 330, i32 330, i32 330], i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [6 x i32] zeroinitializer }, align 4
@adxl34x_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"&ac->mutex\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"ADXL34x accelerometer\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Failed to probe %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"%s/input0\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"irq %d busy?\0A\00", align 1
@adxl34x_attr_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @adxl34x_attributes, ptr null }, align 4
@__kstrtab_adxl34x_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_adxl34x_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_adxl34x_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @adxl34x_probe to i32), ptr @__kstrtab_adxl34x_probe, ptr @__kstrtabns_adxl34x_probe }, section "___ksymtab_gpl+adxl34x_probe", align 4
@__kstrtab_adxl34x_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_adxl34x_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_adxl34x_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @adxl34x_remove to i32), ptr @__kstrtab_adxl34x_remove, ptr @__kstrtabns_adxl34x_remove }, section "___ksymtab_gpl+adxl34x_remove", align 4
@__UNIQUE_ID_author210 = internal constant [58 x i8] c"author=Michael Hennerich <hennerich@blackfin.uclinux.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description211 = internal constant [64 x i8] c"description=ADXL345/346 Three-Axis Digital Accelerometer Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license212 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@adxl34x_attributes = internal global [6 x ptr] [ptr @dev_attr_disable, ptr @dev_attr_calibrate, ptr @dev_attr_rate, ptr @dev_attr_autosleep, ptr @dev_attr_position, ptr null], align 4
@dev_attr_disable = internal global %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 436 }, ptr @adxl34x_disable_show, ptr @adxl34x_disable_store }, align 4
@dev_attr_calibrate = internal global %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 436 }, ptr @adxl34x_calibrate_show, ptr @adxl34x_calibrate_store }, align 4
@dev_attr_rate = internal global %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 436 }, ptr @adxl34x_rate_show, ptr @adxl34x_rate_store }, align 4
@dev_attr_autosleep = internal global %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 436 }, ptr @adxl34x_autosleep_show, ptr @adxl34x_autosleep_store }, align 4
@dev_attr_position = internal global %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292 }, ptr @adxl34x_position_show, ptr null }, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"calibrate\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"%d,%d,%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"rate\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"autosleep\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"position\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"(%d, %d, %d)\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author210, ptr @__UNIQUE_ID_description211, ptr @__UNIQUE_ID_license212, ptr @__ksymtab_adxl34x_probe, ptr @__ksymtab_adxl34x_remove, ptr @__ksymtab_adxl34x_resume, ptr @__ksymtab_adxl34x_suspend], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @adxl34x_suspend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.adxl34x, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %2) #9
  %3 = getelementptr inbounds %struct.adxl34x, ptr %0, i32 0, i32 12
  %4 = load i8, ptr %3, align 2, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %21

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.adxl34x, ptr %0, i32 0, i32 10
  %8 = load i8, ptr %7, align 4, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.adxl34x, ptr %0, i32 0, i32 11
  %12 = load i8, ptr %11, align 1, !range !8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.adxl34x, ptr %0, i32 0, i32 17
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %16, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %0, align 4
  %20 = tail call i32 %18(ptr noundef %19, i8 noundef zeroext 45, i8 noundef zeroext 0) #9
  br label %21

21:                                               ; preds = %14, %10, %6, %1
  store i8 1, ptr %3, align 2
  tail call void @mutex_unlock(ptr noundef %2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @adxl34x_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.adxl34x, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %2) #9
  %3 = getelementptr inbounds %struct.adxl34x, ptr %0, i32 0, i32 12
  %4 = load i8, ptr %3, align 2, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.adxl34x, ptr %0, i32 0, i32 10
  %8 = load i8, ptr %7, align 4, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.adxl34x, ptr %0, i32 0, i32 11
  %12 = load i8, ptr %11, align 1, !range !8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.adxl34x, ptr %0, i32 0, i32 17
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %16, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %0, align 4
  %20 = getelementptr inbounds %struct.adxl34x, ptr %0, i32 0, i32 3, i32 17
  %21 = load i8, ptr %20, align 1
  %22 = or i8 %21, 8
  %23 = tail call i32 %18(ptr noundef %19, i8 noundef zeroext 45, i8 noundef zeroext %22) #9
  br label %24

24:                                               ; preds = %14, %10, %6, %1
  store i8 0, ptr %3, align 2
  tail call void @mutex_unlock(ptr noundef %2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @adxl34x_probe(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #0 {
  %5 = zext i1 %2 to i8
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str) #10
  br label %469

8:                                                ; preds = %4
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 224) #11
  %11 = tail call ptr @input_allocate_device() #9
  %12 = icmp ne ptr %10, null
  %13 = icmp ne ptr %11, null
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %15, label %467

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.adxl34x, ptr %10, i32 0, i32 13
  store i8 %5, ptr %16, align 1
  %17 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  %20 = select i1 %19, ptr @adxl34x_default_init, ptr %18
  %21 = getelementptr inbounds %struct.adxl34x, ptr %10, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(100) %21, ptr noundef align 4 dereferenceable(100) %20, i32 100, i1 false)
  %22 = getelementptr inbounds %struct.adxl34x, ptr %10, i32 0, i32 1
  store ptr %11, ptr %22, align 4
  store ptr %0, ptr %10, align 8
  %23 = getelementptr inbounds %struct.adxl34x, ptr %10, i32 0, i32 14
  store i32 %1, ptr %23, align 8
  %24 = getelementptr inbounds %struct.adxl34x, ptr %10, i32 0, i32 17
  store ptr %3, ptr %24, align 4
  %25 = getelementptr inbounds %struct.adxl34x, ptr %10, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %25, ptr noundef nonnull @.str.1, ptr noundef nonnull @adxl34x_probe.__key) #9
  store ptr @.str.2, ptr %11, align 8
  %26 = load ptr, ptr %24, align 4
  %27 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %10, align 8
  %30 = tail call i32 %28(ptr noundef %29, i8 noundef zeroext 0) #9
  switch i32 %30, label %32 [
    i32 229, label %34
    i32 230, label %31
  ]

31:                                               ; preds = %15
  br label %34

32:                                               ; preds = %15
  %33 = load ptr, ptr %11, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %33) #10
  br label %467

34:                                               ; preds = %31, %15
  %35 = phi i32 [ 346, %31 ], [ 345, %15 ]
  %36 = getelementptr inbounds %struct.adxl34x, ptr %10, i32 0, i32 15
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.adxl34x, ptr %10, i32 0, i32 7
  %38 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load ptr, ptr %0, align 4
  br label %43

43:                                               ; preds = %41, %34
  %44 = phi ptr [ %42, %41 ], [ %39, %34 ]
  %45 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %37, i32 noundef 32, ptr noundef nonnull @.str.4, ptr noundef %44)
  %46 = getelementptr inbounds %struct.input_dev, ptr %11, i32 0, i32 1
  store ptr %37, ptr %46, align 4
  %47 = getelementptr inbounds %struct.input_dev, ptr %11, i32 0, i32 40, i32 1
  store ptr %0, ptr %47, align 4
  %48 = getelementptr inbounds %struct.adxl34x, ptr %10, i32 0, i32 15
  %49 = load i32, ptr %48, align 4
  %50 = trunc i32 %49 to i16
  %51 = getelementptr inbounds %struct.input_dev, ptr %11, i32 0, i32 3
  %52 = getelementptr inbounds %struct.input_dev, ptr %11, i32 0, i32 3, i32 2
  store i16 %50, ptr %52, align 4
  %53 = load i16, ptr %3, align 4
  store i16 %53, ptr %51, align 4
  %54 = getelementptr inbounds %struct.input_dev, ptr %11, i32 0, i32 31
  store ptr @adxl34x_input_open, ptr %54, align 4
  %55 = getelementptr inbounds %struct.input_dev, ptr %11, i32 0, i32 32
  store ptr @adxl34x_input_close, ptr %55, align 8
  %56 = getelementptr inbounds %struct.input_dev, ptr %11, i32 0, i32 40, i32 8
  store ptr %10, ptr %56, align 8
  %57 = getelementptr inbounds %struct.adxl34x, ptr %10, i32 0, i32 3, i32 20
  %58 = load i32, ptr %57, align 8
  %59 = getelementptr inbounds %struct.input_dev, ptr %11, i32 0, i32 5
  %60 = and i32 %58, 31
  %61 = shl nuw i32 1, %60
  %62 = lshr i32 %58, 5
  %63 = getelementptr i32, ptr %59, i32 %62
  %64 = load i32, ptr %63, align 4
  %65 = or i32 %61, %64
  store i32 %65, ptr %63, align 4
  %66 = load i32, ptr %57, align 8
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %68, label %72

68:                                               ; preds = %43
  %69 = getelementptr inbounds %struct.input_dev, ptr %11, i32 0, i32 7
  %70 = load i32, ptr %69, align 4
  %71 = or i32 %70, 7
  store i32 %71, ptr %69, align 4
  br label %82

72:                                               ; preds = %43
  %73 = getelementptr inbounds %struct.input_dev, ptr %11, i32 0, i32 8
  %74 = load i32, ptr %73, align 4
  %75 = or i32 %74, 7
  store i32 %75, ptr %73, align 4
  %76 = getelementptr inbounds %struct.adxl34x, ptr %10, i32 0, i32 3, i32 15
  %77 = load i8, ptr %76, align 1
  %78 = and i8 %77, 8
  %79 = icmp eq i8 %78, 0
  %80 = select i1 %79, i32 -512, i32 -4096
  %81 = select i1 %79, i32 512, i32 4096
  tail call void @input_set_abs_params(ptr noundef nonnull %11, i32 noundef 0, i32 noundef %80, i32 noundef %81, i32 noundef 3, i32 noundef 3) #9
  tail call void @input_set_abs_params(ptr noundef nonnull %11, i32 noundef 1, i32 noundef %80, i32 noundef %81, i32 noundef 3, i32 noundef 3) #9
  tail call void @input_set_abs_params(ptr noundef nonnull %11, i32 noundef 2, i32 noundef %80, i32 noundef %81, i32 noundef 3, i32 noundef 3) #9
  br label %82

82:                                               ; preds = %72, %68
  %83 = load i32, ptr %59, align 4
  %84 = or i32 %83, 2
  store i32 %84, ptr %59, align 4
  %85 = getelementptr inbounds %struct.adxl34x, ptr %10, i32 0, i32 3, i32 24
  %86 = load i32, ptr %85, align 8
  %87 = getelementptr inbounds %struct.input_dev, ptr %11, i32 0, i32 6
  %88 = and i32 %86, 31
  %89 = shl nuw i32 1, %88
  %90 = lshr i32 %86, 5
  %91 = getelementptr i32, ptr %87, i32 %90
  %92 = load i32, ptr %91, align 4
  %93 = or i32 %89, %92
  store i32 %93, ptr %91, align 4
  %94 = getelementptr %struct.adxl34x, ptr %10, i32 0, i32 3, i32 24, i32 1
  %95 = load i32, ptr %94, align 4
  %96 = and i32 %95, 31
  %97 = shl nuw i32 1, %96
  %98 = lshr i32 %95, 5
  %99 = getelementptr i32, ptr %87, i32 %98
  %100 = load i32, ptr %99, align 4
  %101 = or i32 %97, %100
  store i32 %101, ptr %99, align 4
  %102 = getelementptr %struct.adxl34x, ptr %10, i32 0, i32 3, i32 24, i32 2
  %103 = load i32, ptr %102, align 8
  %104 = and i32 %103, 31
  %105 = shl nuw i32 1, %104
  %106 = lshr i32 %103, 5
  %107 = getelementptr i32, ptr %87, i32 %106
  %108 = load i32, ptr %107, align 4
  %109 = or i32 %105, %108
  store i32 %109, ptr %107, align 4
  %110 = getelementptr inbounds %struct.adxl34x, ptr %10, i32 0, i32 3, i32 25
  %111 = load i32, ptr %110, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %121, label %113

113:                                              ; preds = %82
  %114 = getelementptr inbounds %struct.adxl34x, ptr %10, i32 0, i32 16
  store i32 4, ptr %114, align 8
  %115 = and i32 %111, 31
  %116 = shl nuw i32 1, %115
  %117 = lshr i32 %111, 5
  %118 = getelementptr i32, ptr %87, i32 %117
  %119 = load i32, ptr %118, align 4
  %120 = or i32 %119, %116
  store i32 %120, ptr %118, align 4
  br label %121

121:                                              ; preds = %113, %82
  %122 = getelementptr inbounds %struct.adxl34x, ptr %10, i32 0, i32 3, i32 26
  %123 = load i32, ptr %122, align 8
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %132, label %125

125:                                              ; preds = %121
  %126 = and i32 %123, 31
  %127 = shl nuw i32 1, %126
  %128 = lshr i32 %123, 5
  %129 = getelementptr i32, ptr %87, i32 %128
  %130 = load i32, ptr %129, align 4
  %131 = or i32 %130, %127
  store i32 %131, ptr %129, align 4
  br label %132

132:                                              ; preds = %125, %121
  %133 = getelementptr inbounds %struct.adxl34x, ptr %10, i32 0, i32 16
  %134 = load i32, ptr %133, align 8
  %135 = or i32 %134, 24
  store i32 %135, ptr %133, align 8
  %136 = getelementptr inbounds %struct.adxl34x, ptr %10, i32 0, i32 3, i32 19
  %137 = load i8, ptr %136, align 1
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %147, label %139

139:                                              ; preds = %132
  %140 = or i32 %134, 26
  store i32 %140, ptr %133, align 8
  %141 = getelementptr inbounds %struct.adxl34x, ptr %10, i32 0, i32 3, i32 18
  %142 = load i8, ptr %141, align 2
  %143 = and i8 %142, 3
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %139
  %146 = or i8 %142, 2
  store i8 %146, ptr %141, align 2
  br label %149

147:                                              ; preds = %132
  %148 = or i32 %134, 152
  store i32 %148, ptr %133, align 8
  br label %149

149:                                              ; preds = %147, %145, %139
  %150 = phi i32 [ %140, %139 ], [ %140, %145 ], [ %148, %147 ]
  %151 = getelementptr inbounds %struct.adxl34x, ptr %10, i32 0, i32 3, i32 3
  %152 = load i8, ptr %151, align 1
  %153 = and i8 %152, 7
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %157, label %155

155:                                              ; preds = %149
  %156 = or i32 %150, 96
  store i32 %156, ptr %133, align 8
  br label %157

157:                                              ; preds = %155, %149
  %158 = getelementptr inbounds %struct.adxl34x, ptr %10, i32 0, i32 3, i32 18
  %159 = load i8, ptr %158, align 2
  %160 = and i8 %159, 3
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %157
  store i8 0, ptr %16, align 1
  br label %163

163:                                              ; preds = %162, %157
  %164 = load ptr, ptr %24, align 4
  %165 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %164, i32 0, i32 3
  %166 = load ptr, ptr %165, align 4
  %167 = load ptr, ptr %10, align 8
  %168 = tail call i32 %166(ptr noundef %167, i8 noundef zeroext 45, i8 noundef zeroext 0) #9
  %169 = load i32, ptr %23, align 8
  %170 = load ptr, ptr %38, align 4
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %174

172:                                              ; preds = %163
  %173 = load ptr, ptr %0, align 4
  br label %174

174:                                              ; preds = %172, %163
  %175 = phi ptr [ %173, %172 ], [ %170, %163 ]
  %176 = tail call i32 @request_threaded_irq(i32 noundef %169, ptr noundef null, ptr noundef nonnull @adxl34x_irq, i32 noundef 8196, ptr noundef %175, ptr noundef nonnull %10) #9
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %180, label %178

178:                                              ; preds = %174
  %179 = load i32, ptr %23, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %179) #10
  br label %467

180:                                              ; preds = %174
  %181 = tail call i32 @sysfs_create_group(ptr noundef %0, ptr noundef nonnull @adxl34x_attr_group) #9
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %463

183:                                              ; preds = %180
  %184 = tail call i32 @input_register_device(ptr noundef nonnull %11) #9
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %462

186:                                              ; preds = %183
  %187 = load ptr, ptr %24, align 4
  %188 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %187, i32 0, i32 3
  %189 = load ptr, ptr %188, align 4
  %190 = load ptr, ptr %10, align 8
  %191 = load i8, ptr %21, align 4
  %192 = tail call i32 %189(ptr noundef %190, i8 noundef zeroext 30, i8 noundef zeroext %191) #9
  %193 = load i8, ptr %21, align 4
  %194 = sext i8 %193 to i32
  %195 = getelementptr inbounds %struct.adxl34x, ptr %10, i32 0, i32 5
  store i32 %194, ptr %195, align 4
  %196 = load ptr, ptr %24, align 4
  %197 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %196, i32 0, i32 3
  %198 = load ptr, ptr %197, align 4
  %199 = load ptr, ptr %10, align 8
  %200 = getelementptr inbounds %struct.adxl34x, ptr %10, i32 0, i32 3, i32 1
  %201 = load i8, ptr %200, align 1
  %202 = tail call i32 %198(ptr noundef %199, i8 noundef zeroext 31, i8 noundef zeroext %201) #9
  %203 = load i8, ptr %200, align 1
  %204 = sext i8 %203 to i32
  %205 = getelementptr inbounds %struct.adxl34x, ptr %10, i32 0, i32 5, i32 1
  store i32 %204, ptr %205, align 8
  %206 = load ptr, ptr %24, align 4
  %207 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %206, i32 0, i32 3
  %208 = load ptr, ptr %207, align 4
  %209 = load ptr, ptr %10, align 8
  %210 = getelementptr inbounds %struct.adxl34x, ptr %10, i32 0, i32 3, i32 2
  %211 = load i8, ptr %210, align 2
  %212 = tail call i32 %208(ptr noundef %209, i8 noundef zeroext 32, i8 noundef zeroext %211) #9
  %213 = load i8, ptr %210, align 2
  %214 = sext i8 %213 to i32
  %215 = getelementptr inbounds %struct.adxl34x, ptr %10, i32 0, i32 5, i32 2
  store i32 %214, ptr %215, align 4
  %216 = load ptr, ptr %24, align 4
  %217 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %216, i32 0, i32 3
  %218 = load ptr, ptr %217, align 4
  %219 = load ptr, ptr %10, align 8
  %220 = getelementptr inbounds %struct.adxl34x, ptr %10, i32 0, i32 3, i32 4
  %221 = load i8, ptr %220, align 8
  %222 = tail call i32 %218(ptr noundef %219, i8 noundef zeroext 29, i8 noundef zeroext %221) #9
  %223 = load ptr, ptr %24, align 4
  %224 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %223, i32 0, i32 3
  %225 = load ptr, ptr %224, align 4
  %226 = load ptr, ptr %10, align 8
  %227 = getelementptr inbounds %struct.adxl34x, ptr %10, i32 0, i32 3, i32 5
  %228 = load i8, ptr %227, align 1
  %229 = tail call i32 %225(ptr noundef %226, i8 noundef zeroext 33, i8 noundef zeroext %228) #9
  %230 = load ptr, ptr %24, align 4
  %231 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %230, i32 0, i32 3
  %232 = load ptr, ptr %231, align 4
  %233 = load ptr, ptr %10, align 8
  %234 = getelementptr inbounds %struct.adxl34x, ptr %10, i32 0, i32 3, i32 6
  %235 = load i8, ptr %234, align 2
  %236 = tail call i32 %232(ptr noundef %233, i8 noundef zeroext 34, i8 noundef zeroext %235) #9
  %237 = load ptr, ptr %24, align 4
  %238 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %237, i32 0, i32 3
  %239 = load ptr, ptr %238, align 4
  %240 = load ptr, ptr %10, align 8
  %241 = getelementptr inbounds %struct.adxl34x, ptr %10, i32 0, i32 3, i32 7
  %242 = load i8, ptr %241, align 1
  %243 = tail call i32 %239(ptr noundef %240, i8 noundef zeroext 35, i8 noundef zeroext %242) #9
  %244 = load ptr, ptr %24, align 4
  %245 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %244, i32 0, i32 3
  %246 = load ptr, ptr %245, align 4
  %247 = load ptr, ptr %10, align 8
  %248 = getelementptr inbounds %struct.adxl34x, ptr %10, i32 0, i32 3, i32 9
  %249 = load i8, ptr %248, align 1
  %250 = tail call i32 %246(ptr noundef %247, i8 noundef zeroext 36, i8 noundef zeroext %249) #9
  %251 = load ptr, ptr %24, align 4
  %252 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %251, i32 0, i32 3
  %253 = load ptr, ptr %252, align 4
  %254 = load ptr, ptr %10, align 8
  %255 = getelementptr inbounds %struct.adxl34x, ptr %10, i32 0, i32 3, i32 10
  %256 = load i8, ptr %255, align 2
  %257 = tail call i32 %253(ptr noundef %254, i8 noundef zeroext 37, i8 noundef zeroext %256) #9
  %258 = load ptr, ptr %24, align 4
  %259 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %258, i32 0, i32 3
  %260 = load ptr, ptr %259, align 4
  %261 = load ptr, ptr %10, align 8
  %262 = getelementptr inbounds %struct.adxl34x, ptr %10, i32 0, i32 3, i32 11
  %263 = load i8, ptr %262, align 1
  %264 = tail call i32 %260(ptr noundef %261, i8 noundef zeroext 38, i8 noundef zeroext %263) #9
  %265 = load ptr, ptr %24, align 4
  %266 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %265, i32 0, i32 3
  %267 = load ptr, ptr %266, align 4
  %268 = load ptr, ptr %10, align 8
  %269 = getelementptr inbounds %struct.adxl34x, ptr %10, i32 0, i32 3, i32 12
  %270 = load i8, ptr %269, align 8
  %271 = tail call i32 %267(ptr noundef %268, i8 noundef zeroext 40, i8 noundef zeroext %270) #9
  %272 = load ptr, ptr %24, align 4
  %273 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %272, i32 0, i32 3
  %274 = load ptr, ptr %273, align 4
  %275 = load ptr, ptr %10, align 8
  %276 = getelementptr inbounds %struct.adxl34x, ptr %10, i32 0, i32 3, i32 13
  %277 = load i8, ptr %276, align 1
  %278 = tail call i32 %274(ptr noundef %275, i8 noundef zeroext 41, i8 noundef zeroext %277) #9
  %279 = load ptr, ptr %24, align 4
  %280 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %279, i32 0, i32 3
  %281 = load ptr, ptr %280, align 4
  %282 = load ptr, ptr %10, align 8
  %283 = load i8, ptr %151, align 1
  %284 = tail call i32 %281(ptr noundef %282, i8 noundef zeroext 42, i8 noundef zeroext %283) #9
  %285 = load ptr, ptr %24, align 4
  %286 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %285, i32 0, i32 3
  %287 = load ptr, ptr %286, align 4
  %288 = load ptr, ptr %10, align 8
  %289 = getelementptr inbounds %struct.adxl34x, ptr %10, i32 0, i32 3, i32 8
  %290 = load i8, ptr %289, align 4
  %291 = tail call i32 %287(ptr noundef %288, i8 noundef zeroext 39, i8 noundef zeroext %290) #9
  %292 = load ptr, ptr %24, align 4
  %293 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %292, i32 0, i32 3
  %294 = load ptr, ptr %293, align 4
  %295 = load ptr, ptr %10, align 8
  %296 = getelementptr inbounds %struct.adxl34x, ptr %10, i32 0, i32 3, i32 14
  %297 = load i8, ptr %296, align 2
  %298 = and i8 %297, 15
  %299 = getelementptr inbounds %struct.adxl34x, ptr %10, i32 0, i32 3, i32 16
  %300 = load i8, ptr %299, align 4
  %301 = icmp eq i8 %300, 0
  %302 = select i1 %301, i8 0, i8 16
  %303 = or i8 %302, %298
  %304 = tail call i32 %294(ptr noundef %295, i8 noundef zeroext 44, i8 noundef zeroext %303) #9
  %305 = load ptr, ptr %24, align 4
  %306 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %305, i32 0, i32 3
  %307 = load ptr, ptr %306, align 4
  %308 = load ptr, ptr %10, align 8
  %309 = getelementptr inbounds %struct.adxl34x, ptr %10, i32 0, i32 3, i32 15
  %310 = load i8, ptr %309, align 1
  %311 = tail call i32 %307(ptr noundef %308, i8 noundef zeroext 49, i8 noundef zeroext %310) #9
  %312 = load ptr, ptr %24, align 4
  %313 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %312, i32 0, i32 3
  %314 = load ptr, ptr %313, align 4
  %315 = load ptr, ptr %10, align 8
  %316 = load i8, ptr %158, align 2
  %317 = shl i8 %316, 6
  %318 = load i8, ptr %136, align 1
  %319 = and i8 %318, 31
  %320 = or i8 %319, %317
  %321 = tail call i32 %314(ptr noundef %315, i8 noundef zeroext 56, i8 noundef zeroext %320) #9
  %322 = getelementptr inbounds %struct.adxl34x, ptr %10, i32 0, i32 3, i32 27
  %323 = load i8, ptr %322, align 4
  %324 = icmp eq i8 %323, 0
  %325 = load ptr, ptr %24, align 4
  %326 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %325, i32 0, i32 3
  %327 = load ptr, ptr %326, align 4
  %328 = load ptr, ptr %10, align 8
  br i1 %324, label %333, label %329

329:                                              ; preds = %186
  %330 = load i32, ptr %133, align 8
  %331 = trunc i32 %330 to i8
  %332 = or i8 %331, 1
  br label %333

333:                                              ; preds = %329, %186
  %334 = phi i8 [ %332, %329 ], [ 0, %186 ]
  %335 = tail call i32 %327(ptr noundef %328, i8 noundef zeroext 47, i8 noundef zeroext %334) #9
  %336 = load i32, ptr %48, align 4
  %337 = icmp eq i32 %336, 346
  br i1 %337, label %338, label %448

338:                                              ; preds = %333
  %339 = getelementptr inbounds %struct.adxl34x, ptr %10, i32 0, i32 3, i32 28
  %340 = load i8, ptr %339, align 1
  %341 = icmp eq i8 %340, 0
  br i1 %341, label %448, label %342

342:                                              ; preds = %338
  %343 = load ptr, ptr %24, align 4
  %344 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %343, i32 0, i32 3
  %345 = load ptr, ptr %344, align 4
  %346 = load ptr, ptr %10, align 8
  %347 = getelementptr inbounds %struct.adxl34x, ptr %10, i32 0, i32 3, i32 29
  %348 = load i8, ptr %347, align 2
  %349 = shl i8 %348, 4
  %350 = and i8 %349, 112
  %351 = getelementptr inbounds %struct.adxl34x, ptr %10, i32 0, i32 3, i32 30
  %352 = load i8, ptr %351, align 1
  %353 = and i8 %352, 7
  %354 = or i8 %350, %353
  %355 = tail call i32 %345(ptr noundef %346, i8 noundef zeroext 59, i8 noundef zeroext %354) #9
  %356 = getelementptr inbounds %struct.adxl34x, ptr %10, i32 0, i32 8
  store i32 1234, ptr %356, align 4
  %357 = getelementptr inbounds %struct.adxl34x, ptr %10, i32 0, i32 9
  store i32 1234, ptr %357, align 8
  %358 = load i8, ptr %339, align 1
  %359 = and i8 %358, 2
  %360 = icmp eq i8 %359, 0
  br i1 %360, label %411, label %361

361:                                              ; preds = %342
  %362 = getelementptr %struct.adxl34x, ptr %10, i32 0, i32 3, i32 32, i32 0
  %363 = load i32, ptr %362, align 8
  %364 = and i32 %363, 31
  %365 = shl nuw i32 1, %364
  %366 = lshr i32 %363, 5
  %367 = getelementptr i32, ptr %87, i32 %366
  %368 = load i32, ptr %367, align 4
  %369 = or i32 %365, %368
  store i32 %369, ptr %367, align 4
  %370 = getelementptr %struct.adxl34x, ptr %10, i32 0, i32 3, i32 32, i32 1
  %371 = load i32, ptr %370, align 4
  %372 = and i32 %371, 31
  %373 = shl nuw i32 1, %372
  %374 = lshr i32 %371, 5
  %375 = getelementptr i32, ptr %87, i32 %374
  %376 = load i32, ptr %375, align 4
  %377 = or i32 %373, %376
  store i32 %377, ptr %375, align 4
  %378 = getelementptr %struct.adxl34x, ptr %10, i32 0, i32 3, i32 32, i32 2
  %379 = load i32, ptr %378, align 8
  %380 = and i32 %379, 31
  %381 = shl nuw i32 1, %380
  %382 = lshr i32 %379, 5
  %383 = getelementptr i32, ptr %87, i32 %382
  %384 = load i32, ptr %383, align 4
  %385 = or i32 %381, %384
  store i32 %385, ptr %383, align 4
  %386 = getelementptr %struct.adxl34x, ptr %10, i32 0, i32 3, i32 32, i32 3
  %387 = load i32, ptr %386, align 4
  %388 = and i32 %387, 31
  %389 = shl nuw i32 1, %388
  %390 = lshr i32 %387, 5
  %391 = getelementptr i32, ptr %87, i32 %390
  %392 = load i32, ptr %391, align 4
  %393 = or i32 %389, %392
  store i32 %393, ptr %391, align 4
  %394 = getelementptr %struct.adxl34x, ptr %10, i32 0, i32 3, i32 32, i32 4
  %395 = load i32, ptr %394, align 8
  %396 = and i32 %395, 31
  %397 = shl nuw i32 1, %396
  %398 = lshr i32 %395, 5
  %399 = getelementptr i32, ptr %87, i32 %398
  %400 = load i32, ptr %399, align 4
  %401 = or i32 %397, %400
  store i32 %401, ptr %399, align 4
  %402 = getelementptr %struct.adxl34x, ptr %10, i32 0, i32 3, i32 32, i32 5
  %403 = load i32, ptr %402, align 4
  %404 = and i32 %403, 31
  %405 = shl nuw i32 1, %404
  %406 = lshr i32 %403, 5
  %407 = getelementptr i32, ptr %87, i32 %406
  %408 = load i32, ptr %407, align 4
  %409 = or i32 %405, %408
  store i32 %409, ptr %407, align 4
  %410 = load i8, ptr %339, align 1
  br label %411

411:                                              ; preds = %361, %342
  %412 = phi i8 [ %410, %361 ], [ %358, %342 ]
  %413 = and i8 %412, 1
  %414 = icmp eq i8 %413, 0
  br i1 %414, label %450, label %415

415:                                              ; preds = %411
  %416 = getelementptr %struct.adxl34x, ptr %10, i32 0, i32 3, i32 31, i32 0
  %417 = load i32, ptr %416, align 8
  %418 = and i32 %417, 31
  %419 = shl nuw i32 1, %418
  %420 = lshr i32 %417, 5
  %421 = getelementptr i32, ptr %87, i32 %420
  %422 = load i32, ptr %421, align 4
  %423 = or i32 %419, %422
  store i32 %423, ptr %421, align 4
  %424 = getelementptr %struct.adxl34x, ptr %10, i32 0, i32 3, i32 31, i32 1
  %425 = load i32, ptr %424, align 4
  %426 = and i32 %425, 31
  %427 = shl nuw i32 1, %426
  %428 = lshr i32 %425, 5
  %429 = getelementptr i32, ptr %87, i32 %428
  %430 = load i32, ptr %429, align 4
  %431 = or i32 %427, %430
  store i32 %431, ptr %429, align 4
  %432 = getelementptr %struct.adxl34x, ptr %10, i32 0, i32 3, i32 31, i32 2
  %433 = load i32, ptr %432, align 8
  %434 = and i32 %433, 31
  %435 = shl nuw i32 1, %434
  %436 = lshr i32 %433, 5
  %437 = getelementptr i32, ptr %87, i32 %436
  %438 = load i32, ptr %437, align 4
  %439 = or i32 %435, %438
  store i32 %439, ptr %437, align 4
  %440 = getelementptr %struct.adxl34x, ptr %10, i32 0, i32 3, i32 31, i32 3
  %441 = load i32, ptr %440, align 4
  %442 = and i32 %441, 31
  %443 = shl nuw i32 1, %442
  %444 = lshr i32 %441, 5
  %445 = getelementptr i32, ptr %87, i32 %444
  %446 = load i32, ptr %445, align 4
  %447 = or i32 %443, %446
  store i32 %447, ptr %445, align 4
  br label %450

448:                                              ; preds = %338, %333
  %449 = getelementptr inbounds %struct.adxl34x, ptr %10, i32 0, i32 3, i32 28
  store i8 0, ptr %449, align 1
  br label %450

450:                                              ; preds = %448, %415, %411
  %451 = load ptr, ptr %24, align 4
  %452 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %451, i32 0, i32 3
  %453 = load ptr, ptr %452, align 4
  %454 = load ptr, ptr %10, align 8
  %455 = load i32, ptr %133, align 8
  %456 = trunc i32 %455 to i8
  %457 = or i8 %456, 1
  %458 = tail call i32 %453(ptr noundef %454, i8 noundef zeroext 46, i8 noundef zeroext %457) #9
  %459 = getelementptr inbounds %struct.adxl34x, ptr %10, i32 0, i32 3, i32 17
  %460 = load i8, ptr %459, align 1
  %461 = and i8 %460, 48
  store i8 %461, ptr %459, align 1
  br label %472

462:                                              ; preds = %183
  tail call void @sysfs_remove_group(ptr noundef %0, ptr noundef nonnull @adxl34x_attr_group) #9
  br label %463

463:                                              ; preds = %462, %180
  %464 = phi i32 [ %181, %180 ], [ %184, %462 ]
  %465 = load i32, ptr %23, align 8
  %466 = tail call ptr @free_irq(i32 noundef %465, ptr noundef nonnull %10) #9
  br label %467

467:                                              ; preds = %463, %178, %32, %8
  %468 = phi i32 [ -19, %32 ], [ %176, %178 ], [ %464, %463 ], [ -12, %8 ]
  tail call void @input_free_device(ptr noundef %11) #9
  tail call void @kfree(ptr noundef %10) #9
  br label %469

469:                                              ; preds = %467, %7
  %470 = phi i32 [ %468, %467 ], [ -19, %7 ]
  %471 = inttoptr i32 %470 to ptr
  br label %472

472:                                              ; preds = %469, %450
  %473 = phi ptr [ %471, %469 ], [ %10, %450 ]
  ret ptr %473
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adxl34x_input_open(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.adxl34x, ptr %3, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %4) #9
  %5 = getelementptr inbounds %struct.adxl34x, ptr %3, i32 0, i32 12
  %6 = load i8, ptr %5, align 2, !range !8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.adxl34x, ptr %3, i32 0, i32 10
  %10 = load i8, ptr %9, align 4, !range !8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.adxl34x, ptr %3, i32 0, i32 17
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %3, align 4
  %18 = getelementptr inbounds %struct.adxl34x, ptr %3, i32 0, i32 3, i32 17
  %19 = load i8, ptr %18, align 1
  %20 = or i8 %19, 8
  %21 = tail call i32 %16(ptr noundef %17, i8 noundef zeroext 45, i8 noundef zeroext %20) #9
  br label %22

22:                                               ; preds = %12, %8, %1
  %23 = getelementptr inbounds %struct.adxl34x, ptr %3, i32 0, i32 11
  store i8 1, ptr %23, align 1
  tail call void @mutex_unlock(ptr noundef %4) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @adxl34x_input_close(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.adxl34x, ptr %3, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %4) #9
  %5 = getelementptr inbounds %struct.adxl34x, ptr %3, i32 0, i32 12
  %6 = load i8, ptr %5, align 2, !range !8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.adxl34x, ptr %3, i32 0, i32 10
  %10 = load i8, ptr %9, align 4, !range !8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.adxl34x, ptr %3, i32 0, i32 17
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %3, align 4
  %18 = tail call i32 %16(ptr noundef %17, i8 noundef zeroext 45, i8 noundef zeroext 0) #9
  br label %19

19:                                               ; preds = %12, %8, %1
  %20 = getelementptr inbounds %struct.adxl34x, ptr %3, i32 0, i32 11
  store i8 0, ptr %20, align 1
  tail call void @mutex_unlock(ptr noundef %4) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adxl34x_irq(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca [3 x i16], align 2
  %4 = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 3
  %5 = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 3, i32 3
  %6 = load i8, ptr %5, align 1
  %7 = and i8 %6, 7
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %1, align 4
  %15 = tail call i32 %13(ptr noundef %14, i8 noundef zeroext 43) #9
  br label %16

16:                                               ; preds = %9, %2
  %17 = phi i32 [ %15, %9 ], [ 0, %2 ]
  %18 = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 17
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %1, align 4
  %23 = tail call i32 %21(ptr noundef %22, i8 noundef zeroext 48) #9
  %24 = and i32 %23, 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 3, i32 25
  %30 = load i32, ptr %29, align 4
  tail call void @input_event(ptr noundef %28, i32 noundef 1, i32 noundef %30, i32 noundef 1) #9
  tail call void @input_event(ptr noundef %28, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  tail call void @input_event(ptr noundef %28, i32 noundef 1, i32 noundef %30, i32 noundef 0) #9
  br label %31

31:                                               ; preds = %26, %16
  %32 = and i32 %23, 96
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  tail call fastcc void @adxl34x_do_tap(ptr noundef %1, ptr noundef %4, i32 noundef %17)
  %35 = and i32 %23, 32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  tail call fastcc void @adxl34x_do_tap(ptr noundef %1, ptr noundef %4, i32 noundef %17)
  br label %38

38:                                               ; preds = %37, %34, %31
  %39 = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 3, i32 26
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %55, label %42

42:                                               ; preds = %38
  %43 = and i32 %23, 16
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  tail call void @input_event(ptr noundef %47, i32 noundef 1, i32 noundef %40, i32 noundef 1) #9
  br label %48

48:                                               ; preds = %45, %42
  %49 = and i32 %23, 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = load i32, ptr %39, align 4
  tail call void @input_event(ptr noundef %53, i32 noundef 1, i32 noundef %54, i32 noundef 0) #9
  br label %55

55:                                               ; preds = %51, %48, %38
  %56 = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 3, i32 28
  %57 = load i8, ptr %56, align 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %101, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr %18, align 4
  %61 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %60, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = load ptr, ptr %1, align 4
  %64 = tail call i32 %62(ptr noundef %63, i8 noundef zeroext 60) #9
  %65 = load i8, ptr %56, align 1
  %66 = and i8 %65, 1
  %67 = icmp eq i8 %66, 0
  %68 = and i32 %64, 64
  %69 = icmp eq i32 %68, 0
  %70 = select i1 %67, i1 true, i1 %69
  br i1 %70, label %83, label %71

71:                                               ; preds = %59
  %72 = lshr i32 %64, 4
  %73 = and i32 %72, 3
  %74 = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 8
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, %73
  br i1 %76, label %83, label %77

77:                                               ; preds = %71
  store i32 %73, ptr %74, align 4
  %78 = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr %struct.adxl34x, ptr %1, i32 0, i32 3, i32 31, i32 %73
  %81 = load i32, ptr %80, align 4
  tail call void @input_event(ptr noundef %79, i32 noundef 1, i32 noundef %81, i32 noundef 1) #9
  tail call void @input_event(ptr noundef %79, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  tail call void @input_event(ptr noundef %79, i32 noundef 1, i32 noundef %81, i32 noundef 0) #9
  %82 = load i8, ptr %56, align 1
  br label %83

83:                                               ; preds = %77, %71, %59
  %84 = phi i8 [ %65, %71 ], [ %82, %77 ], [ %65, %59 ]
  %85 = and i8 %84, 2
  %86 = icmp eq i8 %85, 0
  %87 = and i32 %64, 8
  %88 = icmp eq i32 %87, 0
  %89 = select i1 %86, i1 true, i1 %88
  br i1 %89, label %101, label %90

90:                                               ; preds = %83
  %91 = and i32 %64, 7
  %92 = add nsw i32 %91, -1
  %93 = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 9
  %94 = load i32, ptr %93, align 4
  %95 = icmp eq i32 %94, %92
  br i1 %95, label %101, label %96

96:                                               ; preds = %90
  store i32 %92, ptr %93, align 4
  %97 = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 1
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr %struct.adxl34x, ptr %1, i32 0, i32 3, i32 32, i32 %92
  %100 = load i32, ptr %99, align 4
  tail call void @input_event(ptr noundef %98, i32 noundef 1, i32 noundef %100, i32 noundef 1) #9
  tail call void @input_event(ptr noundef %98, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  tail call void @input_event(ptr noundef %98, i32 noundef 1, i32 noundef %100, i32 noundef 0) #9
  br label %101

101:                                              ; preds = %96, %90, %83, %55
  %102 = and i32 %23, 130
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %170, label %104

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 3, i32 18
  %106 = load i8, ptr %105, align 2
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %116, label %108

108:                                              ; preds = %104
  %109 = load ptr, ptr %18, align 4
  %110 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %109, i32 0, i32 1
  %111 = load ptr, ptr %110, align 4
  %112 = load ptr, ptr %1, align 4
  %113 = tail call i32 %111(ptr noundef %112, i8 noundef zeroext 57) #9
  %114 = and i32 %113, 63
  %115 = add nuw nsw i32 %114, 1
  br label %116

116:                                              ; preds = %108, %104
  %117 = phi i32 [ %115, %108 ], [ 1, %104 ]
  %118 = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 2
  %119 = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 6
  %120 = getelementptr inbounds [3 x i16], ptr %3, i32 0, i32 1
  %121 = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 6, i32 1
  %122 = getelementptr inbounds [3 x i16], ptr %3, i32 0, i32 2
  %123 = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 6, i32 2
  %124 = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 1
  %125 = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 3, i32 20
  %126 = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 3, i32 21
  %127 = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 4
  %128 = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 3, i32 22
  %129 = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 4, i32 1
  %130 = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 3, i32 23
  %131 = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 4, i32 2
  %132 = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 13
  br label %133

133:                                              ; preds = %167, %116
  %134 = phi i32 [ %117, %116 ], [ %168, %167 ]
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %3, i8 0, i32 6, i1 false) #9, !annotation !9
  %135 = load ptr, ptr %18, align 4
  %136 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %135, i32 0, i32 2
  %137 = load ptr, ptr %136, align 4
  %138 = load ptr, ptr %1, align 4
  %139 = call i32 %137(ptr noundef %138, i8 noundef zeroext 50, i32 noundef 6, ptr noundef nonnull %3) #9
  call void @mutex_lock(ptr noundef %118) #9
  %140 = load i16, ptr %3, align 2
  %141 = sext i16 %140 to i32
  store i32 %141, ptr %119, align 4
  %142 = load i16, ptr %120, align 2
  %143 = sext i16 %142 to i32
  store i32 %143, ptr %121, align 4
  %144 = load i16, ptr %122, align 2
  %145 = sext i16 %144 to i32
  store i32 %145, ptr %123, align 4
  call void @mutex_unlock(ptr noundef %118) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #9
  %146 = load ptr, ptr %124, align 4
  %147 = load i32, ptr %125, align 4
  %148 = load i32, ptr %126, align 4
  %149 = load i32, ptr %127, align 4
  %150 = sub i32 %141, %149
  call void @input_event(ptr noundef %146, i32 noundef %147, i32 noundef %148, i32 noundef %150) #9
  %151 = load ptr, ptr %124, align 4
  %152 = load i32, ptr %125, align 4
  %153 = load i32, ptr %128, align 4
  %154 = load i32, ptr %129, align 4
  %155 = sub i32 %143, %154
  call void @input_event(ptr noundef %151, i32 noundef %152, i32 noundef %153, i32 noundef %155) #9
  %156 = load ptr, ptr %124, align 4
  %157 = load i32, ptr %125, align 4
  %158 = load i32, ptr %130, align 4
  %159 = load i32, ptr %131, align 4
  %160 = sub i32 %145, %159
  call void @input_event(ptr noundef %156, i32 noundef %157, i32 noundef %158, i32 noundef %160) #9
  %161 = load i8, ptr %132, align 1, !range !8
  %162 = icmp ne i8 %161, 0
  %163 = icmp ne i32 %134, 1
  %164 = select i1 %162, i1 %163, i1 false
  br i1 %164, label %165, label %167

165:                                              ; preds = %133
  %166 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %166(i32 noundef 644244) #9
  br label %167

167:                                              ; preds = %165, %133
  %168 = add nsw i32 %134, -1
  %169 = icmp sgt i32 %134, 1
  br i1 %169, label %133, label %170

170:                                              ; preds = %167, %101
  %171 = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 1
  %172 = load ptr, ptr %171, align 4
  call void @input_event(ptr noundef %172, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @adxl34x_remove(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  tail call void @sysfs_remove_group(ptr noundef %2, ptr noundef nonnull @adxl34x_attr_group) #9
  %3 = getelementptr inbounds %struct.adxl34x, ptr %0, i32 0, i32 14
  %4 = load i32, ptr %3, align 4
  %5 = tail call ptr @free_irq(i32 noundef %4, ptr noundef %0) #9
  %6 = getelementptr inbounds %struct.adxl34x, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call void @input_unregister_device(ptr noundef %7) #9
  tail call void @kfree(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @adxl34x_do_tap(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.adxl34x, ptr %0, i32 0, i32 1
  %5 = and i32 %2, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr %struct.adxl34x_platform_data, ptr %1, i32 0, i32 24, i32 0
  %10 = load i32, ptr %9, align 4
  tail call void @input_event(ptr noundef %8, i32 noundef 1, i32 noundef %10, i32 noundef 1) #9
  br label %11

11:                                               ; preds = %7, %3
  %12 = and i32 %2, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr %struct.adxl34x_platform_data, ptr %1, i32 0, i32 24, i32 1
  %17 = load i32, ptr %16, align 4
  tail call void @input_event(ptr noundef %15, i32 noundef 1, i32 noundef %17, i32 noundef 1) #9
  br label %18

18:                                               ; preds = %14, %11
  %19 = and i32 %2, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %4, align 4
  %23 = getelementptr %struct.adxl34x_platform_data, ptr %1, i32 0, i32 24, i32 2
  %24 = load i32, ptr %23, align 4
  tail call void @input_event(ptr noundef %22, i32 noundef 1, i32 noundef %24, i32 noundef 1) #9
  br label %25

25:                                               ; preds = %21, %18
  %26 = load ptr, ptr %4, align 4
  tail call void @input_event(ptr noundef %26, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  br i1 %6, label %31, label %27

27:                                               ; preds = %25
  %28 = load ptr, ptr %4, align 4
  %29 = getelementptr %struct.adxl34x_platform_data, ptr %1, i32 0, i32 24, i32 0
  %30 = load i32, ptr %29, align 4
  tail call void @input_event(ptr noundef %28, i32 noundef 1, i32 noundef %30, i32 noundef 0) #9
  br label %31

31:                                               ; preds = %27, %25
  br i1 %13, label %36, label %32

32:                                               ; preds = %31
  %33 = load ptr, ptr %4, align 4
  %34 = getelementptr %struct.adxl34x_platform_data, ptr %1, i32 0, i32 24, i32 1
  %35 = load i32, ptr %34, align 4
  tail call void @input_event(ptr noundef %33, i32 noundef 1, i32 noundef %35, i32 noundef 0) #9
  br label %36

36:                                               ; preds = %32, %31
  br i1 %20, label %41, label %37

37:                                               ; preds = %36
  %38 = load ptr, ptr %4, align 4
  %39 = getelementptr %struct.adxl34x_platform_data, ptr %1, i32 0, i32 24, i32 2
  %40 = load i32, ptr %39, align 4
  tail call void @input_event(ptr noundef %38, i32 noundef 1, i32 noundef %40, i32 noundef 0) #9
  br label %41

41:                                               ; preds = %37, %36
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adxl34x_disable_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.adxl34x, ptr %5, i32 0, i32 10
  %7 = load i8, ptr %6, align 4, !range !8
  %8 = zext i8 %7 to i32
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef %8)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adxl34x_disable_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !9
  %8 = call i32 @kstrtouint(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %49

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.adxl34x, ptr %7, i32 0, i32 2
  call void @mutex_lock(ptr noundef %11) #9
  %12 = getelementptr inbounds %struct.adxl34x, ptr %7, i32 0, i32 12
  %13 = load i8, ptr %12, align 2, !range !8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %44

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.adxl34x, ptr %7, i32 0, i32 11
  %17 = load i8, ptr %16, align 1, !range !8
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %44, label %19

19:                                               ; preds = %15
  %20 = load i32, ptr %5, align 4
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %struct.adxl34x, ptr %7, i32 0, i32 10
  %23 = load i8, ptr %22, align 4, !range !8
  %24 = icmp eq i8 %23, 0
  br i1 %21, label %33, label %25

25:                                               ; preds = %19
  br i1 %24, label %26, label %44

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.adxl34x, ptr %7, i32 0, i32 17
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %28, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %7, align 4
  %32 = call i32 %30(ptr noundef %31, i8 noundef zeroext 45, i8 noundef zeroext 0) #9
  br label %44

33:                                               ; preds = %19
  br i1 %24, label %44, label %34

34:                                               ; preds = %33
  %35 = getelementptr inbounds %struct.adxl34x, ptr %7, i32 0, i32 17
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %36, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = load ptr, ptr %7, align 4
  %40 = getelementptr inbounds %struct.adxl34x, ptr %7, i32 0, i32 3, i32 17
  %41 = load i8, ptr %40, align 1
  %42 = or i8 %41, 8
  %43 = call i32 %38(ptr noundef %39, i8 noundef zeroext 45, i8 noundef zeroext %42) #9
  br label %44

44:                                               ; preds = %34, %33, %26, %25, %15, %10
  %45 = load i32, ptr %5, align 4
  %46 = icmp ne i32 %45, 0
  %47 = getelementptr inbounds %struct.adxl34x, ptr %7, i32 0, i32 10
  %48 = zext i1 %46 to i8
  store i8 %48, ptr %47, align 4
  call void @mutex_unlock(ptr noundef %11) #9
  br label %49

49:                                               ; preds = %44, %4
  %50 = phi i32 [ %3, %44 ], [ %8, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %50
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adxl34x_calibrate_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.adxl34x, ptr %5, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %6) #9
  %7 = getelementptr inbounds %struct.adxl34x, ptr %5, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = shl i32 %8, 2
  %10 = getelementptr inbounds %struct.adxl34x, ptr %5, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %9, %11
  %13 = getelementptr inbounds %struct.adxl34x, ptr %5, i32 0, i32 5, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = shl i32 %14, 2
  %16 = getelementptr inbounds %struct.adxl34x, ptr %5, i32 0, i32 4, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %15, %17
  %19 = getelementptr inbounds %struct.adxl34x, ptr %5, i32 0, i32 5, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = shl i32 %20, 2
  %22 = getelementptr inbounds %struct.adxl34x, ptr %5, i32 0, i32 4, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %21, %23
  %25 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.9, i32 noundef %12, i32 noundef %18, i32 noundef %24)
  tail call void @mutex_unlock(ptr noundef %6) #9
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adxl34x_calibrate_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, i32 noundef returned %3) #0 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.adxl34x, ptr %6, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %7) #9
  %8 = getelementptr inbounds %struct.adxl34x, ptr %6, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = sdiv i32 %9, -4
  %11 = getelementptr inbounds %struct.adxl34x, ptr %6, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %10, %12
  store i32 %13, ptr %11, align 4
  %14 = srem i32 %9, 4
  %15 = getelementptr inbounds %struct.adxl34x, ptr %6, i32 0, i32 4
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.adxl34x, ptr %6, i32 0, i32 6, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = sdiv i32 %17, -4
  %19 = getelementptr inbounds %struct.adxl34x, ptr %6, i32 0, i32 5, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %18, %20
  store i32 %21, ptr %19, align 4
  %22 = srem i32 %17, 4
  %23 = getelementptr inbounds %struct.adxl34x, ptr %6, i32 0, i32 4, i32 1
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.adxl34x, ptr %6, i32 0, i32 6, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = sdiv i32 %25, -4
  %27 = getelementptr inbounds %struct.adxl34x, ptr %6, i32 0, i32 5, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %26, %28
  store i32 %29, ptr %27, align 4
  %30 = srem i32 %25, 4
  %31 = getelementptr inbounds %struct.adxl34x, ptr %6, i32 0, i32 4, i32 2
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.adxl34x, ptr %6, i32 0, i32 17
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %33, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = load ptr, ptr %6, align 4
  %37 = trunc i32 %13 to i8
  %38 = tail call i32 %35(ptr noundef %36, i8 noundef zeroext 30, i8 noundef zeroext %37) #9
  %39 = load ptr, ptr %32, align 4
  %40 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %39, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = load ptr, ptr %6, align 4
  %43 = load i32, ptr %19, align 4
  %44 = trunc i32 %43 to i8
  %45 = tail call i32 %41(ptr noundef %42, i8 noundef zeroext 31, i8 noundef zeroext %44) #9
  %46 = load ptr, ptr %32, align 4
  %47 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %46, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = load ptr, ptr %6, align 4
  %50 = load i32, ptr %27, align 4
  %51 = trunc i32 %50 to i8
  %52 = tail call i32 %48(ptr noundef %49, i8 noundef zeroext 32, i8 noundef zeroext %51) #9
  tail call void @mutex_unlock(ptr noundef %7) #9
  ret i32 %3
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adxl34x_rate_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.adxl34x, ptr %5, i32 0, i32 3, i32 14
  %7 = load i8, ptr %6, align 2
  %8 = and i8 %7, 15
  %9 = zext i8 %8 to i32
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef %9)
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adxl34x_rate_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #9
  store i8 0, ptr %5, align 1, !annotation !9
  %8 = call i32 @kstrtou8(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.adxl34x, ptr %7, i32 0, i32 2
  call void @mutex_lock(ptr noundef %11) #9
  %12 = load i8, ptr %5, align 1
  %13 = and i8 %12, 15
  %14 = getelementptr inbounds %struct.adxl34x, ptr %7, i32 0, i32 3, i32 14
  store i8 %13, ptr %14, align 2
  %15 = getelementptr inbounds %struct.adxl34x, ptr %7, i32 0, i32 17
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %16, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %7, align 4
  %20 = getelementptr inbounds %struct.adxl34x, ptr %7, i32 0, i32 3, i32 16
  %21 = load i8, ptr %20, align 4
  %22 = icmp eq i8 %21, 0
  %23 = select i1 %22, i8 0, i8 16
  %24 = or i8 %23, %13
  %25 = call i32 %18(ptr noundef %19, i8 noundef zeroext 44, i8 noundef zeroext %24) #9
  call void @mutex_unlock(ptr noundef %11) #9
  br label %26

26:                                               ; preds = %10, %4
  %27 = phi i32 [ %3, %10 ], [ %8, %4 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #9
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adxl34x_autosleep_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.adxl34x, ptr %5, i32 0, i32 3, i32 17
  %7 = load i8, ptr %6, align 1
  %8 = and i8 %7, 48
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i32
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef %10)
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adxl34x_autosleep_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !9
  %8 = call i32 @kstrtouint(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %39

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.adxl34x, ptr %7, i32 0, i32 2
  call void @mutex_lock(ptr noundef %11) #9
  %12 = load i32, ptr %5, align 4
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds %struct.adxl34x, ptr %7, i32 0, i32 3, i32 17
  %15 = load i8, ptr %14, align 1
  %16 = and i8 %15, -49
  %17 = select i1 %13, i8 0, i8 48
  %18 = or i8 %16, %17
  store i8 %18, ptr %14, align 1
  %19 = getelementptr inbounds %struct.adxl34x, ptr %7, i32 0, i32 10
  %20 = load i8, ptr %19, align 4, !range !8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.adxl34x, ptr %7, i32 0, i32 12
  %24 = load i8, ptr %23, align 2, !range !8
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.adxl34x, ptr %7, i32 0, i32 11
  %28 = load i8, ptr %27, align 1, !range !8
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.adxl34x, ptr %7, i32 0, i32 17
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %32, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %7, align 4
  %36 = or i8 %18, 8
  %37 = call i32 %34(ptr noundef %35, i8 noundef zeroext 45, i8 noundef zeroext %36) #9
  br label %38

38:                                               ; preds = %30, %26, %22, %10
  call void @mutex_unlock(ptr noundef %11) #9
  br label %39

39:                                               ; preds = %38, %4
  %40 = phi i32 [ %3, %38 ], [ %8, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adxl34x_position_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.adxl34x, ptr %5, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %6) #9
  %7 = getelementptr inbounds %struct.adxl34x, ptr %5, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.adxl34x, ptr %5, i32 0, i32 6, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.adxl34x, ptr %5, i32 0, i32 6, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef %8, i32 noundef %10, i32 noundef %12)
  tail call void @mutex_unlock(ptr noundef %6) #9
  ret i32 %13
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

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
!9 = !{!"auto-init"}
