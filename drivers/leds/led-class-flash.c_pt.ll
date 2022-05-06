; ModuleID = '/llk/IR/drivers/leds/led-class-flash.c_pt.bc'
source_filename = "../drivers/leds/led-class-flash.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_classdev_flash_register_ext:\09\09\09\09\09"
module asm "\09.asciz \09\22led_classdev_flash_register_ext\22\09\09\09\09\09"
module asm "__kstrtabns_led_classdev_flash_register_ext:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_classdev_flash_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22led_classdev_flash_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_led_classdev_flash_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_led_classdev_flash_register_ext:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_led_classdev_flash_register_ext\22\09\09\09\09\09"
module asm "__kstrtabns_devm_led_classdev_flash_register_ext:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_led_classdev_flash_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_led_classdev_flash_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_devm_led_classdev_flash_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_set_flash_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22led_set_flash_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_led_set_flash_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_get_flash_fault:\09\09\09\09\09"
module asm "\09.asciz \09\22led_get_flash_fault\22\09\09\09\09\09"
module asm "__kstrtabns_led_get_flash_fault:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_set_flash_brightness:\09\09\09\09\09"
module asm "\09.asciz \09\22led_set_flash_brightness\22\09\09\09\09\09"
module asm "__kstrtabns_led_set_flash_brightness:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_update_flash_brightness:\09\09\09\09\09"
module asm "\09.asciz \09\22led_update_flash_brightness\22\09\09\09\09\09"
module asm "__kstrtabns_led_update_flash_brightness:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.led_classdev_flash = type { %struct.led_classdev, ptr, %struct.led_flash_setting, %struct.led_flash_setting, [5 x ptr] }
%struct.led_flash_setting = type { i32, i32, i32, i32 }
%struct.led_flash_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }

@__kstrtab_led_classdev_flash_register_ext = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_classdev_flash_register_ext = external dso_local constant [0 x i8], align 1
@__ksymtab_led_classdev_flash_register_ext = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_classdev_flash_register_ext to i32), ptr @__kstrtab_led_classdev_flash_register_ext, ptr @__kstrtabns_led_classdev_flash_register_ext }, section "___ksymtab_gpl+led_classdev_flash_register_ext", align 4
@__kstrtab_led_classdev_flash_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_classdev_flash_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_led_classdev_flash_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_classdev_flash_unregister to i32), ptr @__kstrtab_led_classdev_flash_unregister, ptr @__kstrtabns_led_classdev_flash_unregister }, section "___ksymtab_gpl+led_classdev_flash_unregister", align 4
@.str = private unnamed_addr constant [32 x i8] c"devm_led_classdev_flash_release\00", align 1
@__kstrtab_devm_led_classdev_flash_register_ext = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_led_classdev_flash_register_ext = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_led_classdev_flash_register_ext = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_led_classdev_flash_register_ext to i32), ptr @__kstrtab_devm_led_classdev_flash_register_ext, ptr @__kstrtabns_devm_led_classdev_flash_register_ext }, section "___ksymtab_gpl+devm_led_classdev_flash_register_ext", align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"drivers/leds/led-class-flash.c\00", align 1
@__kstrtab_devm_led_classdev_flash_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_led_classdev_flash_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_led_classdev_flash_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_led_classdev_flash_unregister to i32), ptr @__kstrtab_devm_led_classdev_flash_unregister, ptr @__kstrtabns_devm_led_classdev_flash_unregister }, section "___ksymtab_gpl+devm_led_classdev_flash_unregister", align 4
@__kstrtab_led_set_flash_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_set_flash_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_led_set_flash_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_set_flash_timeout to i32), ptr @__kstrtab_led_set_flash_timeout, ptr @__kstrtabns_led_set_flash_timeout }, section "___ksymtab_gpl+led_set_flash_timeout", align 4
@__kstrtab_led_get_flash_fault = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_get_flash_fault = external dso_local constant [0 x i8], align 1
@__ksymtab_led_get_flash_fault = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_get_flash_fault to i32), ptr @__kstrtab_led_get_flash_fault, ptr @__kstrtabns_led_get_flash_fault }, section "___ksymtab_gpl+led_get_flash_fault", align 4
@__kstrtab_led_set_flash_brightness = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_set_flash_brightness = external dso_local constant [0 x i8], align 1
@__ksymtab_led_set_flash_brightness = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_set_flash_brightness to i32), ptr @__kstrtab_led_set_flash_brightness, ptr @__kstrtabns_led_set_flash_brightness }, section "___ksymtab_gpl+led_set_flash_brightness", align 4
@__kstrtab_led_update_flash_brightness = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_update_flash_brightness = external dso_local constant [0 x i8], align 1
@__ksymtab_led_update_flash_brightness = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_update_flash_brightness to i32), ptr @__kstrtab_led_update_flash_brightness, ptr @__kstrtabns_led_update_flash_brightness }, section "___ksymtab_gpl+led_update_flash_brightness", align 4
@__UNIQUE_ID_author170 = internal constant [51 x i8] c"author=Jacek Anaszewski <j.anaszewski@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description171 = internal constant [38 x i8] c"description=LED Flash class interface\00", section ".modinfo", align 1
@__UNIQUE_ID_license172 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@led_flash_strobe_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @led_flash_strobe_attrs, ptr null }, align 4
@led_flash_brightness_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @led_flash_brightness_attrs, ptr null }, align 4
@led_flash_timeout_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @led_flash_timeout_attrs, ptr null }, align 4
@led_flash_fault_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @led_flash_fault_attrs, ptr null }, align 4
@led_flash_strobe_attrs = internal global [2 x ptr] [ptr @dev_attr_flash_strobe, ptr null], align 4
@dev_attr_flash_strobe = internal global %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 420 }, ptr @flash_strobe_show, ptr @flash_strobe_store }, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"flash_strobe\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@led_flash_brightness_attrs = internal global [3 x ptr] [ptr @dev_attr_flash_brightness, ptr @dev_attr_max_flash_brightness, ptr null], align 4
@dev_attr_flash_brightness = internal global %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 420 }, ptr @flash_brightness_show, ptr @flash_brightness_store }, align 4
@dev_attr_max_flash_brightness = internal global %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 292 }, ptr @max_flash_brightness_show, ptr null }, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"flash_brightness\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"max_flash_brightness\00", align 1
@led_flash_timeout_attrs = internal global [3 x ptr] [ptr @dev_attr_flash_timeout, ptr @dev_attr_max_flash_timeout, ptr null], align 4
@dev_attr_flash_timeout = internal global %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 420 }, ptr @flash_timeout_show, ptr @flash_timeout_store }, align 4
@dev_attr_max_flash_timeout = internal global %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292 }, ptr @max_flash_timeout_show, ptr null }, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"flash_timeout\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"max_flash_timeout\00", align 1
@led_flash_fault_attrs = internal global [2 x ptr] [ptr @dev_attr_flash_fault, ptr null], align 4
@dev_attr_flash_fault = internal global %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292 }, ptr @flash_fault_show, ptr null }, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"flash_fault\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"led-over-voltage\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"flash-timeout-exceeded\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"controller-over-temperature\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"controller-short-circuit\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"led-power-supply-over-current\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"indicator-led-fault\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"led-under-voltage\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"controller-under-voltage\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"led-over-temperature\00", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_author170, ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_license172, ptr @__ksymtab_devm_led_classdev_flash_register_ext, ptr @__ksymtab_devm_led_classdev_flash_unregister, ptr @__ksymtab_led_classdev_flash_register_ext, ptr @__ksymtab_led_classdev_flash_unregister, ptr @__ksymtab_led_get_flash_fault, ptr @__ksymtab_led_set_flash_brightness, ptr @__ksymtab_led_set_flash_timeout, ptr @__ksymtab_led_update_flash_brightness], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @led_classdev_flash_register_ext(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %49, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 262144
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %46, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %49, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.led_classdev_flash, ptr %1, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %49, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.led_flash_ops, ptr %16, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %49, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 20
  store ptr @led_flash_resume, ptr %23, align 4
  %24 = getelementptr inbounds %struct.led_classdev_flash, ptr %1, i32 0, i32 4
  store ptr @led_flash_strobe_group, ptr %24, align 4
  %25 = load ptr, ptr %16, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = getelementptr %struct.led_classdev_flash, ptr %1, i32 0, i32 4, i32 1
  store ptr @led_flash_brightness_group, ptr %28, align 4
  br label %29

29:                                               ; preds = %27, %22
  %30 = phi i32 [ 2, %27 ], [ 1, %22 ]
  %31 = getelementptr inbounds %struct.led_flash_ops, ptr %16, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = add nuw nsw i32 %30, 1
  %36 = getelementptr ptr, ptr %24, i32 %30
  store ptr @led_flash_timeout_group, ptr %36, align 4
  br label %37

37:                                               ; preds = %34, %29
  %38 = phi i32 [ %35, %34 ], [ %30, %29 ]
  %39 = getelementptr inbounds %struct.led_flash_ops, ptr %16, i32 0, i32 5
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = getelementptr ptr, ptr %24, i32 %38
  store ptr @led_flash_fault_group, ptr %43, align 4
  br label %44

44:                                               ; preds = %42, %37
  %45 = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 12
  store ptr %24, ptr %45, align 4
  br label %46

46:                                               ; preds = %44, %5
  %47 = tail call i32 @led_classdev_register_ext(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #7
  %48 = tail call i32 @llvm.smin.i32(i32 %47, i32 0)
  br label %49

49:                                               ; preds = %46, %18, %14, %10, %3
  %50 = phi i32 [ -22, %3 ], [ -22, %10 ], [ -22, %18 ], [ -22, %14 ], [ %48, %46 ]
  ret i32 %50
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @led_flash_resume(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.led_classdev_flash, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.led_classdev_flash, ptr %0, i32 0, i32 2, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 %6(ptr noundef nonnull %0, i32 noundef %10) #7
  %12 = load ptr, ptr %4, align 4
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi ptr [ %5, %3 ], [ %12, %8 ]
  %15 = getelementptr inbounds %struct.led_flash_ops, ptr %14, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.led_classdev_flash, ptr %0, i32 0, i32 3, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 %16(ptr noundef nonnull %0, i32 noundef %20) #7
  br label %22

22:                                               ; preds = %18, %13, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @led_classdev_flash_unregister(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @led_classdev_unregister(ptr noundef nonnull %0) #7
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_led_classdev_flash_register_ext(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_led_classdev_flash_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %56, label %6

6:                                                ; preds = %3
  %7 = icmp eq ptr %1, null
  br i1 %7, label %53, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 262144
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %49, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %53, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.led_classdev_flash, ptr %1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %53, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.led_flash_ops, ptr %19, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %53, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 20
  store ptr @led_flash_resume, ptr %26, align 4
  %27 = getelementptr inbounds %struct.led_classdev_flash, ptr %1, i32 0, i32 4
  store ptr @led_flash_strobe_group, ptr %27, align 4
  %28 = load ptr, ptr %19, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = getelementptr %struct.led_classdev_flash, ptr %1, i32 0, i32 4, i32 1
  store ptr @led_flash_brightness_group, ptr %31, align 4
  br label %32

32:                                               ; preds = %30, %25
  %33 = phi i32 [ 2, %30 ], [ 1, %25 ]
  %34 = getelementptr inbounds %struct.led_flash_ops, ptr %19, i32 0, i32 4
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = add nuw nsw i32 %33, 1
  %39 = getelementptr ptr, ptr %27, i32 %33
  store ptr @led_flash_timeout_group, ptr %39, align 4
  br label %40

40:                                               ; preds = %37, %32
  %41 = phi i32 [ %38, %37 ], [ %33, %32 ]
  %42 = getelementptr inbounds %struct.led_flash_ops, ptr %19, i32 0, i32 5
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = getelementptr ptr, ptr %27, i32 %41
  store ptr @led_flash_fault_group, ptr %46, align 4
  br label %47

47:                                               ; preds = %45, %40
  %48 = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 12
  store ptr %27, ptr %48, align 4
  br label %49

49:                                               ; preds = %47, %8
  %50 = tail call i32 @led_classdev_register_ext(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #7
  %51 = tail call i32 @llvm.smin.i32(i32 %50, i32 0) #7
  %52 = icmp sgt i32 %50, -1
  br i1 %52, label %55, label %53

53:                                               ; preds = %49, %21, %17, %13, %6
  %54 = phi i32 [ %51, %49 ], [ -22, %6 ], [ -22, %13 ], [ -22, %21 ], [ -22, %17 ]
  tail call void @devres_free(ptr noundef nonnull %4) #7
  br label %56

55:                                               ; preds = %49
  store ptr %1, ptr %4, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %4) #7
  br label %56

56:                                               ; preds = %55, %53, %3
  %57 = phi i32 [ %54, %53 ], [ 0, %55 ], [ -12, %3 ]
  ret i32 %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_led_classdev_flash_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @led_classdev_unregister(ptr noundef nonnull %3) #7
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devm_led_classdev_flash_unregister(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @devres_release(ptr noundef %0, ptr noundef nonnull @devm_led_classdev_flash_release, ptr noundef nonnull @devm_led_classdev_flash_match, ptr noundef %1) #7
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5, !prof !8

5:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 374, i32 noundef 9, ptr noundef null) #7
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @devm_led_classdev_flash_match(ptr nocapture noundef readnone %0, ptr noundef readonly %1, ptr noundef readnone %2) #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %1, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %5, %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 363, i32 noundef 9, ptr noundef null) #7
  br label %12

9:                                                ; preds = %5
  %10 = icmp eq ptr %6, %2
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %9, %8
  %13 = phi i32 [ 0, %8 ], [ %11, %9 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @led_set_flash_timeout(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.led_classdev_flash, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.led_classdev_flash, ptr %0, i32 0, i32 3, i32 3
  %5 = getelementptr inbounds %struct.led_classdev_flash, ptr %0, i32 0, i32 3, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = lshr i32 %6, 1
  %8 = add i32 %7, %1
  %9 = load i32, ptr %3, align 4
  %10 = tail call i32 @llvm.umax.i32(i32 %8, i32 %9) #7
  %11 = getelementptr inbounds %struct.led_classdev_flash, ptr %0, i32 0, i32 3, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @llvm.umin.i32(i32 %10, i32 %12) #7
  %14 = sub i32 %13, %9
  %15 = urem i32 %14, %6
  %16 = sub i32 %9, %15
  %17 = add i32 %16, %14
  store i32 %17, ptr %4, align 4
  %18 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %2
  %23 = icmp eq ptr %0, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.led_classdev_flash, ptr %0, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.led_flash_ops, ptr %26, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %24
  %31 = tail call i32 %28(ptr noundef nonnull %0, i32 noundef %17) #7
  br label %32

32:                                               ; preds = %30, %24, %22, %2
  %33 = phi i32 [ %31, %30 ], [ -22, %24 ], [ -22, %22 ], [ 0, %2 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @led_get_flash_fault(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.led_classdev_flash, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.led_flash_ops, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = tail call i32 %8(ptr noundef nonnull %0, ptr noundef %1) #7
  br label %12

12:                                               ; preds = %10, %4, %2
  %13 = phi i32 [ %11, %10 ], [ -22, %4 ], [ -22, %2 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @led_set_flash_brightness(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.led_classdev_flash, ptr %0, i32 0, i32 2
  %4 = getelementptr inbounds %struct.led_classdev_flash, ptr %0, i32 0, i32 2, i32 3
  %5 = getelementptr inbounds %struct.led_classdev_flash, ptr %0, i32 0, i32 2, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = lshr i32 %6, 1
  %8 = add i32 %7, %1
  %9 = load i32, ptr %3, align 4
  %10 = tail call i32 @llvm.umax.i32(i32 %8, i32 %9) #7
  %11 = getelementptr inbounds %struct.led_classdev_flash, ptr %0, i32 0, i32 2, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @llvm.umin.i32(i32 %10, i32 %12) #7
  %14 = sub i32 %13, %9
  %15 = urem i32 %14, %6
  %16 = sub i32 %9, %15
  %17 = add i32 %16, %14
  store i32 %17, ptr %4, align 4
  %18 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = icmp eq ptr %0, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.led_classdev_flash, ptr %0, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = tail call i32 %27(ptr noundef nonnull %0, i32 noundef %17) #7
  br label %31

31:                                               ; preds = %29, %24, %22, %2
  %32 = phi i32 [ %30, %29 ], [ -22, %24 ], [ -22, %22 ], [ 0, %2 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @led_update_flash_brightness(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !10
  %3 = icmp eq ptr %0, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.led_classdev_flash, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.led_flash_ops, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %4
  %11 = call i32 %8(ptr noundef nonnull %0, ptr noundef nonnull %2) #7
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load i32, ptr %2, align 4
  %15 = getelementptr inbounds %struct.led_classdev_flash, ptr %0, i32 0, i32 2, i32 3
  store i32 %14, ptr %15, align 4
  br label %16

16:                                               ; preds = %13, %10, %4, %1
  %17 = phi i32 [ 0, %13 ], [ 0, %4 ], [ 0, %1 ], [ %11, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @flash_strobe_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #7
  store i8 0, ptr %4, align 1, !annotation !10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.led_classdev_flash, ptr %6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.led_flash_ops, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %8
  %15 = call i32 %12(ptr noundef nonnull %6, ptr noundef nonnull %4) #7
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = load i8, ptr %4, align 1, !range !11
  %19 = zext i8 %18 to i32
  %20 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %19)
  br label %21

21:                                               ; preds = %17, %14, %8, %3
  %22 = phi i32 [ %20, %17 ], [ %15, %14 ], [ -22, %3 ], [ -22, %8 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #7
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @flash_strobe_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !10
  %8 = getelementptr inbounds %struct.led_classdev, ptr %7, i32 0, i32 29
  tail call void @mutex_lock(ptr noundef %8) #7
  %9 = getelementptr inbounds %struct.led_classdev, ptr %7, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 131072
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %4
  %14 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %13
  %17 = load i32, ptr %5, align 4
  %18 = icmp ugt i32 %17, 1
  br i1 %18, label %31, label %19

19:                                               ; preds = %16
  %20 = icmp eq ptr %7, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %19
  %22 = icmp ne i32 %17, 0
  %23 = getelementptr inbounds %struct.led_classdev_flash, ptr %7, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.led_flash_ops, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = call i32 %26(ptr noundef nonnull %7, i1 noundef zeroext %22) #7
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21, %19
  %30 = phi i32 [ %27, %21 ], [ -22, %19 ]
  br label %31

31:                                               ; preds = %29, %21, %16, %13, %4
  %32 = phi i32 [ -16, %4 ], [ %14, %13 ], [ -22, %16 ], [ %30, %29 ], [ %3, %21 ]
  call void @mutex_unlock(ptr noundef %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 %32
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @flash_brightness_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.led_classdev_flash, ptr %6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.led_flash_ops, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %8
  %15 = call i32 %12(ptr noundef nonnull %6, ptr noundef nonnull %4) #7
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i32, ptr %4, align 4
  %19 = getelementptr inbounds %struct.led_classdev_flash, ptr %6, i32 0, i32 2, i32 3
  store i32 %18, ptr %19, align 4
  br label %20

20:                                               ; preds = %17, %14, %8, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  %21 = getelementptr inbounds %struct.led_classdev_flash, ptr %6, i32 0, i32 2, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %22)
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @flash_brightness_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !10
  %8 = getelementptr inbounds %struct.led_classdev, ptr %7, i32 0, i32 29
  tail call void @mutex_lock(ptr noundef %8) #7
  %9 = getelementptr inbounds %struct.led_classdev, ptr %7, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 131072
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %48

13:                                               ; preds = %4
  %14 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %48

16:                                               ; preds = %13
  %17 = load i32, ptr %5, align 4
  %18 = getelementptr inbounds %struct.led_classdev_flash, ptr %7, i32 0, i32 2
  %19 = getelementptr inbounds %struct.led_classdev_flash, ptr %7, i32 0, i32 2, i32 3
  %20 = getelementptr inbounds %struct.led_classdev_flash, ptr %7, i32 0, i32 2, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = lshr i32 %21, 1
  %23 = add i32 %22, %17
  %24 = load i32, ptr %18, align 4
  %25 = call i32 @llvm.umax.i32(i32 %23, i32 %24) #7
  %26 = getelementptr inbounds %struct.led_classdev_flash, ptr %7, i32 0, i32 2, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = call i32 @llvm.umin.i32(i32 %25, i32 %27) #7
  %29 = sub i32 %28, %24
  %30 = urem i32 %29, %21
  %31 = sub i32 %24, %30
  %32 = add i32 %29, %31
  store i32 %32, ptr %19, align 4
  %33 = load i32, ptr %9, align 4
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %16
  %37 = icmp eq ptr %7, null
  br i1 %37, label %46, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.led_classdev_flash, ptr %7, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = call i32 %41(ptr noundef nonnull %7, i32 noundef %32) #7
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43, %38, %36
  %47 = phi i32 [ %44, %43 ], [ -22, %38 ], [ -22, %36 ]
  br label %48

48:                                               ; preds = %46, %43, %16, %13, %4
  %49 = phi i32 [ %14, %13 ], [ -16, %4 ], [ %47, %46 ], [ %3, %43 ], [ %3, %16 ]
  call void @mutex_unlock(ptr noundef %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 %49
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max_flash_brightness_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.led_classdev_flash, ptr %5, i32 0, i32 2, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %7)
  ret i32 %8
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @flash_timeout_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.led_classdev_flash, ptr %5, i32 0, i32 3, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %7)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @flash_timeout_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !10
  %8 = getelementptr inbounds %struct.led_classdev, ptr %7, i32 0, i32 29
  tail call void @mutex_lock(ptr noundef %8) #7
  %9 = getelementptr inbounds %struct.led_classdev, ptr %7, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 131072
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %49

13:                                               ; preds = %4
  %14 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %49

16:                                               ; preds = %13
  %17 = load i32, ptr %5, align 4
  %18 = getelementptr inbounds %struct.led_classdev_flash, ptr %7, i32 0, i32 3
  %19 = getelementptr inbounds %struct.led_classdev_flash, ptr %7, i32 0, i32 3, i32 3
  %20 = getelementptr inbounds %struct.led_classdev_flash, ptr %7, i32 0, i32 3, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = lshr i32 %21, 1
  %23 = add i32 %22, %17
  %24 = load i32, ptr %18, align 4
  %25 = call i32 @llvm.umax.i32(i32 %23, i32 %24) #7
  %26 = getelementptr inbounds %struct.led_classdev_flash, ptr %7, i32 0, i32 3, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = call i32 @llvm.umin.i32(i32 %25, i32 %27) #7
  %29 = sub i32 %28, %24
  %30 = urem i32 %29, %21
  %31 = sub i32 %24, %30
  %32 = add i32 %29, %31
  store i32 %32, ptr %19, align 4
  %33 = load i32, ptr %9, align 4
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %16
  %37 = icmp eq ptr %7, null
  br i1 %37, label %47, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.led_classdev_flash, ptr %7, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.led_flash_ops, ptr %40, i32 0, i32 4
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = call i32 %42(ptr noundef nonnull %7, i32 noundef %32) #7
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44, %38, %36
  %48 = phi i32 [ %45, %44 ], [ -22, %38 ], [ -22, %36 ]
  br label %49

49:                                               ; preds = %47, %44, %16, %13, %4
  %50 = phi i32 [ %14, %13 ], [ -16, %4 ], [ %48, %47 ], [ %3, %44 ], [ %3, %16 ]
  call void @mutex_unlock(ptr noundef %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 %50
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max_flash_timeout_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.led_classdev_flash, ptr %5, i32 0, i32 3, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %7)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @flash_fault_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %99, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.led_classdev_flash, ptr %6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.led_flash_ops, ptr %10, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %99, label %14

14:                                               ; preds = %8
  %15 = call i32 %12(ptr noundef nonnull %6, ptr noundef nonnull %4) #7
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %99, label %17

17:                                               ; preds = %14
  store i8 0, ptr %2, align 1
  %18 = load i32, ptr %4, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11)
  %23 = getelementptr i8, ptr %2, i32 %22
  %24 = load i32, ptr %4, align 4
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi i32 [ %24, %21 ], [ %18, %17 ]
  %27 = phi ptr [ %23, %21 ], [ %2, %17 ]
  %28 = and i32 %26, 2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %27, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12)
  %32 = getelementptr i8, ptr %27, i32 %31
  %33 = load i32, ptr %4, align 4
  br label %34

34:                                               ; preds = %30, %25
  %35 = phi i32 [ %33, %30 ], [ %26, %25 ]
  %36 = phi ptr [ %32, %30 ], [ %27, %25 ]
  %37 = and i32 %35, 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %36, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.13)
  %41 = getelementptr i8, ptr %36, i32 %40
  %42 = load i32, ptr %4, align 4
  br label %43

43:                                               ; preds = %39, %34
  %44 = phi i32 [ %42, %39 ], [ %35, %34 ]
  %45 = phi ptr [ %41, %39 ], [ %36, %34 ]
  %46 = and i32 %44, 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %45, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.14)
  %50 = getelementptr i8, ptr %45, i32 %49
  %51 = load i32, ptr %4, align 4
  br label %52

52:                                               ; preds = %48, %43
  %53 = phi i32 [ %51, %48 ], [ %44, %43 ]
  %54 = phi ptr [ %50, %48 ], [ %45, %43 ]
  %55 = and i32 %53, 16
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %52
  %58 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %54, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.15)
  %59 = getelementptr i8, ptr %54, i32 %58
  %60 = load i32, ptr %4, align 4
  br label %61

61:                                               ; preds = %57, %52
  %62 = phi i32 [ %60, %57 ], [ %53, %52 ]
  %63 = phi ptr [ %59, %57 ], [ %54, %52 ]
  %64 = and i32 %62, 32
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %61
  %67 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %63, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.16)
  %68 = getelementptr i8, ptr %63, i32 %67
  %69 = load i32, ptr %4, align 4
  br label %70

70:                                               ; preds = %66, %61
  %71 = phi i32 [ %69, %66 ], [ %62, %61 ]
  %72 = phi ptr [ %68, %66 ], [ %63, %61 ]
  %73 = and i32 %71, 64
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %70
  %76 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %72, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.17)
  %77 = getelementptr i8, ptr %72, i32 %76
  %78 = load i32, ptr %4, align 4
  br label %79

79:                                               ; preds = %75, %70
  %80 = phi i32 [ %78, %75 ], [ %71, %70 ]
  %81 = phi ptr [ %77, %75 ], [ %72, %70 ]
  %82 = and i32 %80, 128
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %79
  %85 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %81, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.18)
  %86 = getelementptr i8, ptr %81, i32 %85
  %87 = load i32, ptr %4, align 4
  br label %88

88:                                               ; preds = %84, %79
  %89 = phi i32 [ %87, %84 ], [ %80, %79 ]
  %90 = phi ptr [ %86, %84 ], [ %81, %79 ]
  %91 = and i32 %89, 256
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %88
  %94 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %90, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.19)
  br label %95

95:                                               ; preds = %93, %88
  %96 = call i32 @strlen(ptr %2)
  %97 = getelementptr i8, ptr %2, i32 %96
  store i16 10, ptr %97, align 1
  %98 = call i32 @strlen(ptr noundef %2)
  br label %99

99:                                               ; preds = %95, %14, %8, %3
  %100 = phi i32 [ %98, %95 ], [ -22, %14 ], [ -22, %8 ], [ -22, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret i32 %100
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"auto-init"}
!11 = !{i8 0, i8 2}
