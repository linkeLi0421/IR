; ModuleID = '/llk/IR/drivers/devfreq/devfreq-event.c_pt.bc'
source_filename = "../drivers/devfreq/devfreq-event.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_event_enable_edev:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_event_enable_edev\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_event_enable_edev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_event_disable_edev:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_event_disable_edev\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_event_disable_edev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_event_is_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_event_is_enabled\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_event_is_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_event_set_event:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_event_set_event\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_event_set_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_event_get_event:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_event_get_event\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_event_get_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_event_reset_event:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_event_reset_event\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_event_reset_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_event_get_edev_by_phandle:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_event_get_edev_by_phandle\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_event_get_edev_by_phandle:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_event_get_edev_count:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_event_get_edev_count\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_event_get_edev_count:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_event_add_edev:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_event_add_edev\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_event_add_edev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_event_remove_edev:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_event_remove_edev\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_event_remove_edev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_devfreq_event_add_edev:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_devfreq_event_add_edev\22\09\09\09\09\09"
module asm "__kstrtabns_devm_devfreq_event_add_edev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_devfreq_event_remove_edev:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_devfreq_event_remove_edev\22\09\09\09\09\09"
module asm "__kstrtabns_devm_devfreq_event_remove_edev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.devfreq_event_dev = type { %struct.list_head, %struct.device, %struct.mutex, i32, ptr }
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
%struct.devfreq_event_desc = type { ptr, i32, ptr, ptr }
%struct.devfreq_event_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.devfreq_event_data = type { i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_devfreq_event_enable_edev = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_event_enable_edev = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_event_enable_edev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_event_enable_edev to i32), ptr @__kstrtab_devfreq_event_enable_edev, ptr @__kstrtabns_devfreq_event_enable_edev }, section "___ksymtab_gpl+devfreq_event_enable_edev", align 4
@.str = private unnamed_addr constant [25 x i8] c"unbalanced enable_count\0A\00", align 1
@__kstrtab_devfreq_event_disable_edev = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_event_disable_edev = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_event_disable_edev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_event_disable_edev to i32), ptr @__kstrtab_devfreq_event_disable_edev, ptr @__kstrtabns_devfreq_event_disable_edev }, section "___ksymtab_gpl+devfreq_event_disable_edev", align 4
@__kstrtab_devfreq_event_is_enabled = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_event_is_enabled = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_event_is_enabled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_event_is_enabled to i32), ptr @__kstrtab_devfreq_event_is_enabled, ptr @__kstrtabns_devfreq_event_is_enabled }, section "___ksymtab_gpl+devfreq_event_is_enabled", align 4
@__kstrtab_devfreq_event_set_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_event_set_event = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_event_set_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_event_set_event to i32), ptr @__kstrtab_devfreq_event_set_event, ptr @__kstrtabns_devfreq_event_set_event }, section "___ksymtab_gpl+devfreq_event_set_event", align 4
@__kstrtab_devfreq_event_get_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_event_get_event = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_event_get_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_event_get_event to i32), ptr @__kstrtab_devfreq_event_get_event, ptr @__kstrtabns_devfreq_event_get_event }, section "___ksymtab_gpl+devfreq_event_get_event", align 4
@__kstrtab_devfreq_event_reset_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_event_reset_event = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_event_reset_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_event_reset_event to i32), ptr @__kstrtab_devfreq_event_reset_event, ptr @__kstrtabns_devfreq_event_reset_event }, section "___ksymtab_gpl+devfreq_event_reset_event", align 4
@devfreq_event_list_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @devfreq_event_list_lock, i64 12), ptr getelementptr (i8, ptr @devfreq_event_list_lock, i64 12) } }, align 4
@devfreq_event_list = internal global %struct.list_head { ptr @devfreq_event_list, ptr @devfreq_event_list }, align 4
@__kstrtab_devfreq_event_get_edev_by_phandle = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_event_get_edev_by_phandle = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_event_get_edev_by_phandle = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_event_get_edev_by_phandle to i32), ptr @__kstrtab_devfreq_event_get_edev_by_phandle, ptr @__kstrtabns_devfreq_event_get_edev_by_phandle }, section "___ksymtab_gpl+devfreq_event_get_edev_by_phandle", align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"device does not have a device node entry\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"failed to get the count of devfreq-event in %pOF node\0A\00", align 1
@__kstrtab_devfreq_event_get_edev_count = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_event_get_edev_count = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_event_get_edev_count = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_event_get_edev_count to i32), ptr @__kstrtab_devfreq_event_get_edev_count, ptr @__kstrtabns_devfreq_event_get_edev_count }, section "___ksymtab_gpl+devfreq_event_get_edev_count", align 4
@devfreq_event_add_edev.event_no = internal global %struct.atomic_t { i32 -1 }, align 4
@devfreq_event_add_edev.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"&edev->lock\00", align 1
@devfreq_event_class = internal unnamed_addr global ptr null, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"event%d\00", align 1
@__kstrtab_devfreq_event_add_edev = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_event_add_edev = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_event_add_edev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_event_add_edev to i32), ptr @__kstrtab_devfreq_event_add_edev, ptr @__kstrtabns_devfreq_event_add_edev }, section "___ksymtab_gpl+devfreq_event_add_edev", align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"drivers/devfreq/devfreq-event.c\00", align 1
@__kstrtab_devfreq_event_remove_edev = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_event_remove_edev = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_event_remove_edev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_event_remove_edev to i32), ptr @__kstrtab_devfreq_event_remove_edev, ptr @__kstrtabns_devfreq_event_remove_edev }, section "___ksymtab_gpl+devfreq_event_remove_edev", align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"devm_devfreq_event_release\00", align 1
@__kstrtab_devm_devfreq_event_add_edev = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_devfreq_event_add_edev = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_devfreq_event_add_edev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_devfreq_event_add_edev to i32), ptr @__kstrtab_devm_devfreq_event_add_edev, ptr @__kstrtabns_devm_devfreq_event_add_edev }, section "___ksymtab_gpl+devm_devfreq_event_add_edev", align 4
@__kstrtab_devm_devfreq_event_remove_edev = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_devfreq_event_remove_edev = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_devfreq_event_remove_edev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_devfreq_event_remove_edev to i32), ptr @__kstrtab_devm_devfreq_event_remove_edev, ptr @__kstrtabns_devm_devfreq_event_remove_edev }, section "___ksymtab_gpl+devm_devfreq_event_remove_edev", align 4
@__initcall__kmod_devfreq_event__166_482_devfreq_event_init4 = internal global ptr @devfreq_event_init, section ".initcall4.init", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@devfreq_event_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"devfreq-event\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"\013%s: couldn't create class\0A\00", align 1
@devfreq_event_groups = internal global [2 x ptr] [ptr @devfreq_event_group, ptr null], align 4
@devfreq_event_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @devfreq_event_attrs, ptr null }, align 4
@devfreq_event_attrs = internal global [3 x ptr] [ptr @dev_attr_name, ptr @dev_attr_enable_count, ptr null], align 4
@dev_attr_name = internal global %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292 }, ptr @name_show, ptr null }, align 4
@dev_attr_enable_count = internal global %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292 }, ptr @enable_count_show, ptr null }, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"enable_count\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.compiler.used = appending global [13 x ptr] [ptr @__initcall__kmod_devfreq_event__166_482_devfreq_event_init4, ptr @__ksymtab_devfreq_event_add_edev, ptr @__ksymtab_devfreq_event_disable_edev, ptr @__ksymtab_devfreq_event_enable_edev, ptr @__ksymtab_devfreq_event_get_edev_by_phandle, ptr @__ksymtab_devfreq_event_get_edev_count, ptr @__ksymtab_devfreq_event_get_event, ptr @__ksymtab_devfreq_event_is_enabled, ptr @__ksymtab_devfreq_event_remove_edev, ptr @__ksymtab_devfreq_event_reset_event, ptr @__ksymtab_devfreq_event_set_event, ptr @__ksymtab_devm_devfreq_event_add_edev, ptr @__ksymtab_devm_devfreq_event_remove_edev], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devfreq_event_enable_edev(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.devfreq_event_dev, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.devfreq_event_dev, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %8) #9
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr inbounds %struct.devfreq_event_desc, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr %11, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.devfreq_event_dev, ptr %0, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = tail call i32 %14(ptr noundef nonnull %0) #9
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %20, %16, %13, %7
  %24 = phi i32 [ %21, %20 ], [ 0, %16 ], [ 0, %13 ], [ 0, %7 ]
  %25 = getelementptr inbounds %struct.devfreq_event_dev, ptr %0, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, 1
  store i32 %27, ptr %25, align 4
  br label %28

28:                                               ; preds = %23, %20
  %29 = phi i32 [ %21, %20 ], [ %24, %23 ]
  tail call void @mutex_unlock(ptr noundef %8) #9
  br label %30

30:                                               ; preds = %28, %3, %1
  %31 = phi i32 [ %29, %28 ], [ -22, %3 ], [ -22, %1 ]
  ret i32 %31
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devfreq_event_disable_edev(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %36, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.devfreq_event_dev, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %36, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.devfreq_event_dev, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %8) #9
  %9 = getelementptr inbounds %struct.devfreq_event_dev, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.devfreq_event_dev, ptr %0, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str) #10
  br label %34

14:                                               ; preds = %7
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds %struct.devfreq_event_desc, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.devfreq_event_ops, ptr %17, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp ne ptr %21, null
  %23 = icmp eq i32 %10, 1
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = tail call i32 %21(ptr noundef nonnull %0) #9
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = load i32, ptr %9, align 4
  br label %30

30:                                               ; preds = %28, %19, %14
  %31 = phi i32 [ %29, %28 ], [ %10, %19 ], [ %10, %14 ]
  %32 = phi i32 [ %26, %28 ], [ 0, %19 ], [ 0, %14 ]
  %33 = add i32 %31, -1
  store i32 %33, ptr %9, align 4
  br label %34

34:                                               ; preds = %30, %25, %12
  %35 = phi i32 [ -5, %12 ], [ %26, %25 ], [ %32, %30 ]
  tail call void @mutex_unlock(ptr noundef %8) #9
  br label %36

36:                                               ; preds = %34, %3, %1
  %37 = phi i32 [ %35, %34 ], [ -22, %3 ], [ -22, %1 ]
  ret i32 %37
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @devfreq_event_is_enabled(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.devfreq_event_dev, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.devfreq_event_dev, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %8) #9
  %9 = getelementptr inbounds %struct.devfreq_event_dev, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp ne i32 %10, 0
  tail call void @mutex_unlock(ptr noundef %8) #9
  br label %12

12:                                               ; preds = %7, %3, %1
  %13 = phi i1 [ %11, %7 ], [ false, %3 ], [ false, %1 ]
  ret i1 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devfreq_event_set_event(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %27, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.devfreq_event_dev, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.devfreq_event_desc, ptr %5, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %27, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.devfreq_event_ops, ptr %9, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.devfreq_event_dev, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %16) #9
  %17 = getelementptr inbounds %struct.devfreq_event_dev, ptr %0, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  tail call void @mutex_unlock(ptr noundef %16) #9
  br i1 %19, label %27, label %20

20:                                               ; preds = %15
  tail call void @mutex_lock(ptr noundef %16) #9
  %21 = load ptr, ptr %4, align 8
  %22 = getelementptr inbounds %struct.devfreq_event_desc, ptr %21, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.devfreq_event_ops, ptr %23, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 %25(ptr noundef nonnull %0) #9
  tail call void @mutex_unlock(ptr noundef %16) #9
  br label %27

27:                                               ; preds = %20, %15, %11, %7, %3, %1
  %28 = phi i32 [ %26, %20 ], [ -22, %3 ], [ -22, %1 ], [ -22, %11 ], [ -22, %7 ], [ -1, %15 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devfreq_event_get_event(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %32, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.devfreq_event_dev, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %32, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.devfreq_event_desc, ptr %6, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %32, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.devfreq_event_ops, ptr %10, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.devfreq_event_dev, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %17) #9
  %18 = getelementptr inbounds %struct.devfreq_event_dev, ptr %0, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  tail call void @mutex_unlock(ptr noundef %17) #9
  br i1 %20, label %32, label %21

21:                                               ; preds = %16
  store i32 0, ptr %1, align 4
  %22 = getelementptr inbounds %struct.devfreq_event_data, ptr %1, i32 0, i32 1
  store i32 0, ptr %22, align 4
  tail call void @mutex_lock(ptr noundef %17) #9
  %23 = load ptr, ptr %5, align 8
  %24 = getelementptr inbounds %struct.devfreq_event_desc, ptr %23, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.devfreq_event_ops, ptr %25, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 %27(ptr noundef nonnull %0, ptr noundef %1) #9
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  store i32 0, ptr %1, align 4
  store i32 0, ptr %22, align 4
  br label %31

31:                                               ; preds = %30, %21
  tail call void @mutex_unlock(ptr noundef %17) #9
  br label %32

32:                                               ; preds = %31, %16, %12, %8, %4, %2
  %33 = phi i32 [ %28, %31 ], [ -22, %4 ], [ -22, %2 ], [ -22, %12 ], [ -22, %8 ], [ -22, %16 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devfreq_event_reset_event(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %25, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.devfreq_event_dev, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.devfreq_event_dev, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %8) #9
  %9 = getelementptr inbounds %struct.devfreq_event_dev, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  tail call void @mutex_unlock(ptr noundef %8) #9
  br i1 %11, label %25, label %12

12:                                               ; preds = %7
  tail call void @mutex_lock(ptr noundef %8) #9
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds %struct.devfreq_event_desc, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.devfreq_event_ops, ptr %15, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = tail call i32 %19(ptr noundef nonnull %0) #9
  br label %23

23:                                               ; preds = %21, %17, %12
  %24 = phi i32 [ %22, %21 ], [ 0, %17 ], [ 0, %12 ]
  tail call void @mutex_unlock(ptr noundef %8) #9
  br label %25

25:                                               ; preds = %23, %7, %3, %1
  %26 = phi i32 [ %24, %23 ], [ -22, %3 ], [ -22, %1 ], [ -1, %7 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devfreq_event_get_edev_by_phandle(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.of_phandle_args, align 4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = icmp ne ptr %6, null
  %8 = icmp ne ptr %1, null
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %49

10:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #9, !annotation !8
  %11 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %6, ptr noundef nonnull %1, ptr noundef null, i32 noundef 0, i32 noundef %2, ptr noundef nonnull %4) #9
  %12 = icmp ne i32 %11, 0
  %13 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #9
  %14 = icmp eq ptr %13, null
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %49, label %16

16:                                               ; preds = %10
  call void @mutex_lock(ptr noundef nonnull @devfreq_event_list_lock) #9
  %17 = load ptr, ptr @devfreq_event_list, align 4
  %18 = icmp eq ptr %17, @devfreq_event_list
  br i1 %18, label %19, label %21

19:                                               ; preds = %30, %16
  %20 = icmp eq ptr %17, @devfreq_event_list
  br i1 %20, label %33, label %34

21:                                               ; preds = %30, %16
  %22 = phi ptr [ %31, %30 ], [ %17, %16 ]
  %23 = getelementptr inbounds %struct.devfreq_event_dev, ptr %22, i32 0, i32 1, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 25
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, %13
  br i1 %29, label %43, label %30

30:                                               ; preds = %26, %21
  %31 = load ptr, ptr %22, align 4
  %32 = icmp eq ptr %31, @devfreq_event_list
  br i1 %32, label %19, label %21

33:                                               ; preds = %40, %19
  call void @mutex_unlock(ptr noundef nonnull @devfreq_event_list_lock) #9
  br label %47

34:                                               ; preds = %40, %19
  %35 = phi ptr [ %41, %40 ], [ %17, %19 ]
  %36 = getelementptr inbounds %struct.devfreq_event_dev, ptr %35, i32 0, i32 4
  %37 = load ptr, ptr %36, align 8
  %38 = load ptr, ptr %37, align 4
  %39 = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %13, ptr noundef %38) #9
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load ptr, ptr %35, align 4
  %42 = icmp eq ptr %41, @devfreq_event_list
  br i1 %42, label %33, label %34

43:                                               ; preds = %34, %26
  %44 = phi ptr [ %35, %34 ], [ %22, %26 ]
  call void @mutex_unlock(ptr noundef nonnull @devfreq_event_list_lock) #9
  %45 = icmp eq ptr %44, null
  %46 = select i1 %45, ptr inttoptr (i32 -19 to ptr), ptr %44
  br label %47

47:                                               ; preds = %43, %33
  %48 = phi ptr [ inttoptr (i32 -19 to ptr), %33 ], [ %46, %43 ]
  call void @of_node_put(ptr noundef nonnull %13) #9
  br label %49

49:                                               ; preds = %47, %10, %3
  %50 = phi ptr [ inttoptr (i32 -22 to ptr), %3 ], [ inttoptr (i32 -19 to ptr), %10 ], [ %48, %47 ]
  ret ptr %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devfreq_event_get_edev_count(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = icmp ne ptr %4, null
  %6 = icmp ne ptr %1, null
  %7 = and i1 %6, %5
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.1) #10
  br label %14

9:                                                ; preds = %2
  %10 = tail call i32 @of_property_count_elems_of_size(ptr noundef nonnull %4, ptr noundef nonnull %1, i32 noundef 4) #9
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %13) #10
  br label %14

14:                                               ; preds = %12, %9, %8
  %15 = phi i32 [ %10, %12 ], [ -22, %8 ], [ %10, %9 ]
  ret i32 %15
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devfreq_event_add_edev(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %46

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %46, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.devfreq_event_desc, ptr %1, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %46, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.devfreq_event_ops, ptr %11, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %46, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.devfreq_event_ops, ptr %11, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %46, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %23 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 512) #11
  %24 = icmp eq ptr %23, null
  br i1 %24, label %46, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.devfreq_event_dev, ptr %23, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %26, ptr noundef nonnull @.str.3, ptr noundef nonnull @devfreq_event_add_edev.__key) #9
  %27 = getelementptr inbounds %struct.devfreq_event_dev, ptr %23, i32 0, i32 4
  store ptr %1, ptr %27, align 8
  %28 = getelementptr inbounds %struct.devfreq_event_dev, ptr %23, i32 0, i32 3
  store i32 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.devfreq_event_dev, ptr %23, i32 0, i32 1
  %30 = getelementptr inbounds %struct.devfreq_event_dev, ptr %23, i32 0, i32 1, i32 1
  store ptr %0, ptr %30, align 4
  %31 = load ptr, ptr @devfreq_event_class, align 4
  %32 = getelementptr inbounds %struct.devfreq_event_dev, ptr %23, i32 0, i32 1, i32 31
  store ptr %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.devfreq_event_dev, ptr %23, i32 0, i32 1, i32 33
  store ptr @devfreq_event_release_edev, ptr %33, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @devfreq_event_add_edev.event_no) #9, !srcloc !10
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @devfreq_event_add_edev.event_no, ptr nonnull @devfreq_event_add_edev.event_no, i32 1, ptr nonnull elementtype(i32) @devfreq_event_add_edev.event_no) #9, !srcloc !11
  %35 = extractvalue { i32, i32 } %34, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %36 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %29, ptr noundef nonnull @.str.4, i32 noundef %35) #9
  %37 = tail call i32 @device_register(ptr noundef %29) #9
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %25
  tail call void @put_device(ptr noundef %29) #9
  %40 = inttoptr i32 %37 to ptr
  br label %46

41:                                               ; preds = %25
  %42 = getelementptr inbounds %struct.devfreq_event_dev, ptr %23, i32 0, i32 1, i32 8
  store ptr %23, ptr %42, align 8
  store volatile ptr %23, ptr %23, align 8
  %43 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  store ptr %23, ptr %43, align 4
  tail call void @mutex_lock(ptr noundef nonnull @devfreq_event_list_lock) #9
  %44 = load ptr, ptr @devfreq_event_list, align 4
  %45 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  store ptr %23, ptr %45, align 4
  store ptr %44, ptr %23, align 8
  store ptr @devfreq_event_list, ptr %43, align 4
  store volatile ptr %23, ptr @devfreq_event_list, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @devfreq_event_list_lock) #9
  br label %46

46:                                               ; preds = %41, %39, %21, %17, %13, %9, %6, %2
  %47 = phi ptr [ %40, %39 ], [ %23, %41 ], [ inttoptr (i32 -22 to ptr), %2 ], [ inttoptr (i32 -22 to ptr), %9 ], [ inttoptr (i32 -22 to ptr), %6 ], [ inttoptr (i32 -22 to ptr), %17 ], [ inttoptr (i32 -22 to ptr), %13 ], [ inttoptr (i32 -12 to ptr), %21 ]
  ret ptr %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devfreq_event_release_edev(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  tail call void @kfree(ptr noundef %2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devfreq_event_remove_edev(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.devfreq_event_dev, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7, !prof !13

7:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %8

8:                                                ; preds = %7, %3
  tail call void @mutex_lock(ptr noundef nonnull @devfreq_event_list_lock) #9
  %9 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %10, ptr %12, align 4
  store volatile ptr %11, ptr %10, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %9, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @devfreq_event_list_lock) #9
  %13 = getelementptr inbounds %struct.devfreq_event_dev, ptr %0, i32 0, i32 1
  tail call void @device_unregister(ptr noundef %13) #9
  br label %14

14:                                               ; preds = %8, %1
  %15 = phi i32 [ 0, %8 ], [ -22, %1 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_devfreq_event_add_edev(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_devfreq_event_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.6) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @devfreq_event_add_edev(ptr noundef %0, ptr noundef %1)
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void @devres_free(ptr noundef nonnull %3) #9
  br label %10

9:                                                ; preds = %5
  store ptr %6, ptr %3, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %3) #9
  br label %10

10:                                               ; preds = %9, %8, %2
  %11 = phi ptr [ inttoptr (i32 -12 to ptr), %8 ], [ %6, %9 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_devfreq_event_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.devfreq_event_dev, ptr %3, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9, !prof !13

9:                                                ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %10

10:                                               ; preds = %9, %5
  tail call void @mutex_lock(ptr noundef nonnull @devfreq_event_list_lock) #9
  %11 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %3, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %12, ptr %14, align 4
  store volatile ptr %13, ptr %12, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %11, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @devfreq_event_list_lock) #9
  %15 = getelementptr inbounds %struct.devfreq_event_dev, ptr %3, i32 0, i32 1
  tail call void @device_unregister(ptr noundef %15) #9
  br label %16

16:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devm_devfreq_event_remove_edev(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @devres_release(ptr noundef %0, ptr noundef nonnull @devm_devfreq_event_release, ptr noundef nonnull @devm_devfreq_event_match, ptr noundef %1) #9
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5, !prof !13

5:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 432, i32 noundef 9, ptr noundef null) #9
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @devm_devfreq_event_match(ptr nocapture noundef readnone %0, ptr noundef readonly %1, ptr noundef readnone %2) #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %1, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !14

8:                                                ; preds = %5, %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 376, i32 noundef 9, ptr noundef null) #9
  br label %12

9:                                                ; preds = %5
  %10 = icmp eq ptr %6, %2
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %9, %8
  %13 = phi i32 [ 0, %8 ], [ %11, %9 ]
  ret i32 %13
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @devfreq_event_init() #4 section ".init.text" {
  %1 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @devfreq_event_init.__key) #9
  store ptr %1, ptr @devfreq_event_class, align 4
  %2 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5) #10
  %5 = load ptr, ptr @devfreq_event_class, align 4
  %6 = ptrtoint ptr %5 to i32
  br label %9

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.class, ptr %1, i32 0, i32 3
  store ptr @devfreq_event_groups, ptr %8, align 4
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi i32 [ %6, %3 ], [ 0, %7 ]
  ret i32 %10
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @name_show(ptr noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %0, i32 496
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 4
  %12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.10, ptr noundef %11)
  br label %13

13:                                               ; preds = %10, %6, %3
  %14 = phi i32 [ %12, %10 ], [ -22, %6 ], [ -22, %3 ]
  ret i32 %14
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @enable_count_show(ptr noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %0, i32 496
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %0, i32 492
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef %12)
  br label %14

14:                                               ; preds = %10, %6, %3
  %15 = phi i32 [ %13, %10 ], [ -22, %6 ], [ -22, %3 ]
  ret i32 %15
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{!"auto-init"}
!9 = !{i64 2148251984}
!10 = !{i64 589310, i64 2148090876, i64 2148090902, i64 2148090949, i64 2148090971, i64 2148090999, i64 2148091019}
!11 = !{i64 2148154822, i64 2148154854, i64 2148154883, i64 2148154917, i64 2148154948, i64 2148154971}
!12 = !{i64 2148252187}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{!"branch_weights", i32 1, i32 2000}
