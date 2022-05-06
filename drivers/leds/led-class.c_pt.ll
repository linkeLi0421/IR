; ModuleID = '/llk/IR/drivers/leds/led-class.c_pt.bc'
source_filename = "../drivers/leds/led-class.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_classdev_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22led_classdev_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_led_classdev_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_classdev_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22led_classdev_resume\22\09\09\09\09\09"
module asm "__kstrtabns_led_classdev_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_led_get:\09\09\09\09\09"
module asm "\09.asciz \09\22of_led_get\22\09\09\09\09\09"
module asm "__kstrtabns_of_led_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_put:\09\09\09\09\09"
module asm "\09.asciz \09\22led_put\22\09\09\09\09\09"
module asm "__kstrtabns_led_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_of_led_get:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_of_led_get\22\09\09\09\09\09"
module asm "__kstrtabns_devm_of_led_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_classdev_register_ext:\09\09\09\09\09"
module asm "\09.asciz \09\22led_classdev_register_ext\22\09\09\09\09\09"
module asm "__kstrtabns_led_classdev_register_ext:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_classdev_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22led_classdev_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_led_classdev_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_led_classdev_register_ext:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_led_classdev_register_ext\22\09\09\09\09\09"
module asm "__kstrtabns_devm_led_classdev_register_ext:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_led_classdev_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_led_classdev_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_devm_led_classdev_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.led_init_data = type { ptr, ptr, ptr, i8 }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_led_classdev_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_classdev_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_led_classdev_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_classdev_suspend to i32), ptr @__kstrtab_led_classdev_suspend, ptr @__kstrtabns_led_classdev_suspend }, section "___ksymtab_gpl+led_classdev_suspend", align 4
@__kstrtab_led_classdev_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_classdev_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_led_classdev_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_classdev_resume to i32), ptr @__kstrtab_led_classdev_resume, ptr @__kstrtabns_led_classdev_resume }, section "___ksymtab_gpl+led_classdev_resume", align 4
@.str = private unnamed_addr constant [5 x i8] c"leds\00", align 1
@leds_class = internal unnamed_addr global ptr null, align 4
@__kstrtab_of_led_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_led_get = external dso_local constant [0 x i8], align 1
@__ksymtab_of_led_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_led_get to i32), ptr @__kstrtab_of_led_get, ptr @__kstrtabns_of_led_get }, section "___ksymtab_gpl+of_led_get", align 4
@__kstrtab_led_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_put = external dso_local constant [0 x i8], align 1
@__ksymtab_led_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_put to i32), ptr @__kstrtab_led_put, ptr @__kstrtabns_led_put }, section "___ksymtab_gpl+led_put", align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"devm_led_release\00", align 1
@__kstrtab_devm_of_led_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_of_led_get = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_of_led_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_of_led_get to i32), ptr @__kstrtab_devm_of_led_get, ptr @__kstrtabns_devm_of_led_get }, section "___ksymtab_gpl+devm_of_led_get", align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Mandatory device name is missing\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"linux,default-trigger\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"retain-state-shutdown\00", align 1
@led_classdev_register_ext.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"&led_cdev->led_access\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"Led %s renamed to %s due to name collision\00", align 1
@led_classdev_register_ext.__key.8 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"&led_cdev->trigger_lock\00", align 1
@leds_list_lock = external dso_local global %struct.rw_semaphore, align 4
@leds_list = external dso_local global %struct.list_head, align 4
@__kstrtab_led_classdev_register_ext = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_classdev_register_ext = external dso_local constant [0 x i8], align 1
@__ksymtab_led_classdev_register_ext = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_classdev_register_ext to i32), ptr @__kstrtab_led_classdev_register_ext, ptr @__kstrtabns_led_classdev_register_ext }, section "___ksymtab_gpl+led_classdev_register_ext", align 4
@__kstrtab_led_classdev_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_classdev_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_led_classdev_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_classdev_unregister to i32), ptr @__kstrtab_led_classdev_unregister, ptr @__kstrtabns_led_classdev_unregister }, section "___ksymtab_gpl+led_classdev_unregister", align 4
@.str.10 = private unnamed_addr constant [26 x i8] c"devm_led_classdev_release\00", align 1
@__kstrtab_devm_led_classdev_register_ext = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_led_classdev_register_ext = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_led_classdev_register_ext = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_led_classdev_register_ext to i32), ptr @__kstrtab_devm_led_classdev_register_ext, ptr @__kstrtabns_devm_led_classdev_register_ext }, section "___ksymtab_gpl+devm_led_classdev_register_ext", align 4
@.str.11 = private unnamed_addr constant [25 x i8] c"drivers/leds/led-class.c\00", align 1
@__kstrtab_devm_led_classdev_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_led_classdev_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_led_classdev_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_led_classdev_unregister to i32), ptr @__kstrtab_devm_led_classdev_unregister, ptr @__kstrtabns_devm_led_classdev_unregister }, section "___ksymtab_gpl+devm_led_classdev_unregister", align 4
@__initcall__kmod_led_class__166_543_leds_init4 = internal global ptr @leds_init, section ".initcall4.init", align 4
@__exitcall_leds_exit = internal global ptr @leds_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author167 = internal constant [43 x i8] c"led_class.author=John Lenz, Richard Purdie\00", section ".modinfo", align 1
@__UNIQUE_ID_file168 = internal constant [38 x i8] c"led_class.file=drivers/leds/led-class\00", section ".modinfo", align 1
@__UNIQUE_ID_license169 = internal constant [22 x i8] c"led_class.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description170 = internal constant [42 x i8] c"led_class.description=LED Class Interface\00", section ".modinfo", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"%s_%u\00", align 1
@leds_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@leds_class_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @led_suspend, ptr @led_resume, ptr @led_suspend, ptr @led_resume, ptr @led_suspend, ptr @led_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@led_groups = internal global [3 x ptr] [ptr @led_group, ptr @led_trigger_group, ptr null], align 4
@led_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @led_class_attrs, ptr null }, align 4
@led_trigger_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr null, ptr @led_trigger_bin_attrs }, align 4
@led_class_attrs = internal global [3 x ptr] [ptr @dev_attr_brightness, ptr @dev_attr_max_brightness, ptr null], align 4
@dev_attr_brightness = internal global %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 420 }, ptr @brightness_show, ptr @brightness_store }, align 4
@dev_attr_max_brightness = internal global %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292 }, ptr @max_brightness_show, ptr null }, align 4
@.str.13 = private unnamed_addr constant [11 x i8] c"brightness\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"max_brightness\00", align 1
@led_trigger_bin_attrs = internal global [2 x ptr] [ptr @bin_attr_trigger, ptr null], align 4
@bin_attr_trigger = internal global %struct.bin_attribute { %struct.attribute { ptr @.str.16, i16 420 }, i32 0, ptr null, ptr null, ptr @led_trigger_read, ptr @led_trigger_write, ptr null }, align 4
@.str.16 = private unnamed_addr constant [8 x i8] c"trigger\00", align 1
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_author167, ptr @__UNIQUE_ID_description170, ptr @__UNIQUE_ID_file168, ptr @__UNIQUE_ID_license169, ptr @__exitcall_leds_exit, ptr @__initcall__kmod_led_class__166_543_leds_init4, ptr @__ksymtab_devm_led_classdev_register_ext, ptr @__ksymtab_devm_led_classdev_unregister, ptr @__ksymtab_devm_of_led_get, ptr @__ksymtab_led_classdev_register_ext, ptr @__ksymtab_led_classdev_resume, ptr @__ksymtab_led_classdev_suspend, ptr @__ksymtab_led_classdev_unregister, ptr @__ksymtab_led_put, ptr @__ksymtab_of_led_get, ptr @leds_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @led_classdev_suspend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = or i32 %3, 1
  store i32 %4, ptr %2, align 4
  tail call void @led_set_brightness_nopm(ptr noundef %0, i32 noundef 0) #9
  %5 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 21
  %6 = tail call zeroext i1 @flush_work(ptr noundef %5) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_set_brightness_nopm(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @led_classdev_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  tail call void @led_set_brightness_nopm(ptr noundef %0, i32 noundef %3) #9
  %4 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 20
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void %5(ptr noundef %0) #9
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, -2
  store i32 %11, ptr %9, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_led_get(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #9, !annotation !8
  %4 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef null, i32 noundef 0, i32 noundef %1, ptr noundef nonnull %3) #9
  %5 = icmp ne i32 %4, 0
  %6 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #9
  %7 = icmp eq ptr %6, null
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %26, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr @leds_class, align 4
  %11 = call ptr @class_find_device(ptr noundef %10, ptr noundef null, ptr noundef nonnull %6, ptr noundef nonnull @device_match_of_node) #9
  call void @of_node_put(ptr noundef nonnull %6) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %26, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 8
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.led_classdev, ptr %15, i32 0, i32 11
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 6
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.device_driver, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = call zeroext i1 @try_module_get(ptr noundef %23) #9
  %25 = select i1 %24, ptr %15, ptr inttoptr (i32 -19 to ptr)
  br label %26

26:                                               ; preds = %13, %9, %2
  %27 = phi ptr [ inttoptr (i32 -2 to ptr), %2 ], [ inttoptr (i32 -517 to ptr), %9 ], [ %25, %13 ]
  ret ptr %27
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @led_put(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.device_driver, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  tail call void @module_put(ptr noundef %9) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_of_led_get(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = icmp eq ptr %0, null
  br i1 %4, label %43, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #9, !annotation !8
  %8 = call i32 @__of_parse_phandle_with_args(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef null, i32 noundef 0, i32 noundef %1, ptr noundef nonnull %3) #9
  %9 = icmp ne i32 %8, 0
  %10 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #9
  %11 = icmp eq ptr %10, null
  %12 = select i1 %9, i1 true, i1 %11
  br i1 %12, label %43, label %13

13:                                               ; preds = %5
  %14 = load ptr, ptr @leds_class, align 4
  %15 = call ptr @class_find_device(ptr noundef %14, ptr noundef null, ptr noundef nonnull %10, ptr noundef nonnull @device_match_of_node) #9
  call void @of_node_put(ptr noundef nonnull %10) #9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %43, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 8
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.led_classdev, ptr %19, i32 0, i32 11
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 6
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.device_driver, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = call zeroext i1 @try_module_get(ptr noundef %27) #9
  br i1 %28, label %29, label %43

29:                                               ; preds = %17
  %30 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %43, label %31

31:                                               ; preds = %29
  %32 = call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_led_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.1) #9
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load ptr, ptr %20, align 4
  %36 = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.device, ptr %37, i32 0, i32 6
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.device_driver, ptr %39, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  call void @module_put(ptr noundef %41) #9
  br label %43

42:                                               ; preds = %31
  store ptr %19, ptr %32, align 4
  call void @devres_add(ptr noundef nonnull %0, ptr noundef nonnull %32) #9
  br label %43

43:                                               ; preds = %42, %34, %29, %17, %13, %5, %2
  %44 = phi ptr [ %19, %42 ], [ inttoptr (i32 -12 to ptr), %34 ], [ %19, %29 ], [ inttoptr (i32 -22 to ptr), %2 ], [ inttoptr (i32 -19 to ptr), %17 ], [ inttoptr (i32 -517 to ptr), %13 ], [ inttoptr (i32 -2 to ptr), %5 ]
  ret ptr %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_led_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.led_classdev, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 6
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.device_driver, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  tail call void @module_put(ptr noundef %11) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @led_classdev_register_ext(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [64 x i8], align 1
  %5 = alloca [64 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %4, i8 0, i32 64, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %5, i8 0, i32 64, i1 false), !annotation !8
  %6 = icmp eq ptr %2, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.led_init_data, ptr %2, i32 0, i32 3
  %9 = load i8, ptr %8, align 4, !range !9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.led_init_data, ptr %2, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.2) #10
  br label %86

16:                                               ; preds = %11, %7
  %17 = call i32 @led_compose_name(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %4) #9
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %86, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %2, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %33, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 14
  %24 = call i32 @fwnode_property_read_string(ptr noundef nonnull %20, ptr noundef nonnull @.str.3, ptr noundef %23) #9
  %25 = load ptr, ptr %2, align 4
  %26 = call zeroext i1 @fwnode_property_present(ptr noundef %25, ptr noundef nonnull @.str.4) #9
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = or i32 %29, 4194304
  store i32 %30, ptr %28, align 4
  br label %33

31:                                               ; preds = %3
  %32 = load ptr, ptr %1, align 4
  br label %33

33:                                               ; preds = %31, %27, %22, %19
  %34 = phi ptr [ %4, %27 ], [ %4, %22 ], [ %4, %19 ], [ %32, %31 ]
  %35 = call i32 @strlcpy(ptr noundef nonnull %5, ptr noundef %34, i32 noundef 64) #9
  br label %36

36:                                               ; preds = %41, %33
  %37 = phi i32 [ 0, %33 ], [ %42, %41 ]
  %38 = load ptr, ptr @leds_class, align 4
  %39 = call ptr @class_find_device(ptr noundef %38, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull @device_match_name) #9
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %36
  call void @put_device(ptr noundef nonnull %39) #9
  %42 = add i32 %37, 1
  %43 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 64, ptr noundef nonnull @.str.12, ptr noundef %34, i32 noundef %42) #9
  %44 = icmp ult i32 %43, 64
  br i1 %44, label %36, label %86

45:                                               ; preds = %36
  %46 = icmp slt i32 %37, 0
  br i1 %46, label %86, label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 29
  call void @__mutex_init(ptr noundef %48, ptr noundef nonnull @.str.5, ptr noundef nonnull @led_classdev_register_ext.__key) #9
  call void @mutex_lock(ptr noundef %48) #9
  %49 = load ptr, ptr @leds_class, align 4
  %50 = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 12
  %51 = load ptr, ptr %50, align 4
  %52 = call ptr (ptr, ptr, i32, ptr, ptr, ptr, ...) @device_create_with_groups(ptr noundef %49, ptr noundef %0, i32 noundef 0, ptr noundef %1, ptr noundef %51, ptr noundef nonnull @.str.6, ptr noundef nonnull %5) #9
  %53 = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 11
  store ptr %52, ptr %53, align 4
  %54 = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  call void @mutex_unlock(ptr noundef %48) #9
  %56 = load ptr, ptr %53, align 4
  %57 = ptrtoint ptr %56 to i32
  br label %86

58:                                               ; preds = %47
  br i1 %6, label %63, label %59

59:                                               ; preds = %58
  %60 = load ptr, ptr %2, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  call void @device_set_node(ptr noundef %52, ptr noundef nonnull %60) #9
  br label %63

63:                                               ; preds = %62, %59, %58
  %64 = icmp eq i32 %37, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %63
  %66 = load ptr, ptr %53, align 4
  %67 = getelementptr inbounds %struct.device, ptr %66, i32 0, i32 3
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load ptr, ptr %66, align 4
  br label %72

72:                                               ; preds = %70, %65
  %73 = phi ptr [ %71, %70 ], [ %68, %65 ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef %34, ptr noundef %73) #10
  br label %74

74:                                               ; preds = %72, %63
  %75 = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 4
  store i32 0, ptr %75, align 4
  %76 = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 23
  call void @__init_rwsem(ptr noundef %76, ptr noundef nonnull @.str.9, ptr noundef nonnull @led_classdev_register_ext.__key.8) #9
  call void @down_write(ptr noundef nonnull @leds_list_lock) #9
  %77 = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 13
  %78 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @leds_list, i32 0, i32 1), align 4
  store ptr %77, ptr getelementptr inbounds (%struct.list_head, ptr @leds_list, i32 0, i32 1), align 4
  store ptr @leds_list, ptr %77, align 4
  %79 = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 13, i32 1
  store ptr %78, ptr %79, align 4
  store volatile ptr %77, ptr %78, align 4
  call void @up_write(ptr noundef nonnull @leds_list_lock) #9
  %80 = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 2
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  store i32 255, ptr %80, align 4
  br label %84

84:                                               ; preds = %83, %74
  %85 = call i32 @led_update_brightness(ptr noundef %1) #9
  call void @led_init_core(ptr noundef %1) #9
  call void @led_trigger_set_default(ptr noundef %1) #9
  call void @mutex_unlock(ptr noundef %48) #9
  br label %86

86:                                               ; preds = %84, %55, %45, %41, %16, %15
  %87 = phi i32 [ %57, %55 ], [ 0, %84 ], [ -22, %15 ], [ %17, %16 ], [ %37, %45 ], [ -12, %41 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  ret i32 %87
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_compose_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fwnode_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create_with_groups(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_update_brightness(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_init_core(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_set_default(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @led_classdev_unregister(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  %5 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %6 = or i1 %4, %5
  br i1 %6, label %31, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 23
  tail call void @down_write(ptr noundef %8) #9
  %9 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 24
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = tail call i32 @led_trigger_set(ptr noundef %0, ptr noundef null) #9
  br label %14

14:                                               ; preds = %12, %7
  tail call void @up_write(ptr noundef %8) #9
  %15 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = or i32 %16, 2
  store i32 %17, ptr %15, align 4
  tail call void @led_stop_software_blink(ptr noundef %0) #9
  %18 = load i32, ptr %15, align 4
  %19 = and i32 %18, 4194304
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  tail call void @led_set_brightness(ptr noundef %0, i32 noundef 0) #9
  br label %22

22:                                               ; preds = %21, %14
  %23 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 21
  %24 = tail call zeroext i1 @flush_work(ptr noundef %23) #9
  %25 = load ptr, ptr %2, align 4
  tail call void @device_unregister(ptr noundef %25) #9
  tail call void @down_write(ptr noundef nonnull @leds_list_lock) #9
  %26 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 13
  %27 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 13, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %26, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  store ptr %28, ptr %30, align 4
  store volatile ptr %29, ptr %28, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %26, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %27, align 4
  tail call void @up_write(ptr noundef nonnull @leds_list_lock) #9
  br label %31

31:                                               ; preds = %22, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_trigger_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_stop_software_blink(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_set_brightness(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_led_classdev_register_ext(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_led_classdev_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.10) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @led_classdev_register_ext(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @devres_free(ptr noundef nonnull %4) #9
  br label %11

10:                                               ; preds = %6
  store ptr %1, ptr %4, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %4) #9
  br label %11

11:                                               ; preds = %10, %9, %3
  %12 = phi i32 [ %7, %9 ], [ 0, %10 ], [ -12, %3 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_led_classdev_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  tail call void @led_classdev_unregister(ptr noundef %3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devm_led_classdev_unregister(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @devres_release(ptr noundef %0, ptr noundef nonnull @devm_led_classdev_release, ptr noundef nonnull @devm_led_classdev_match, ptr noundef %1) #9
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5, !prof !10

5:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 524, i32 noundef 9, ptr noundef null) #9
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @devm_led_classdev_match(ptr nocapture noundef readnone %0, ptr noundef readonly %1, ptr noundef readnone %2) #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %1, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !11

8:                                                ; preds = %5, %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 508, i32 noundef 9, ptr noundef null) #9
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
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @leds_exit() #5 section ".exit.text" {
  %1 = load ptr, ptr @leds_class, align 4
  tail call void @class_destroy(ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @leds_init() #5 section ".init.text" {
  %1 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @leds_init.__key) #9
  store ptr %1, ptr @leds_class, align 4
  %2 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = ptrtoint ptr %1 to i32
  br label %8

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.class, ptr %1, i32 0, i32 13
  store ptr @leds_class_dev_pm_ops, ptr %6, align 4
  %7 = getelementptr inbounds %struct.class, ptr %1, i32 0, i32 3
  store ptr @led_groups, ptr %7, align 4
  br label %8

8:                                                ; preds = %5, %3
  %9 = phi i32 [ %4, %3 ], [ 0, %5 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @class_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_match_of_node(ptr noundef, ptr noundef) #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_match_name(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @led_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.led_classdev, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 65536
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = or i32 %5, 1
  store i32 %9, ptr %4, align 4
  tail call void @led_set_brightness_nopm(ptr noundef %3, i32 noundef 0) #9
  %10 = getelementptr inbounds %struct.led_classdev, ptr %3, i32 0, i32 21
  %11 = tail call zeroext i1 @flush_work(ptr noundef %10) #9
  br label %12

12:                                               ; preds = %8, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @led_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.led_classdev, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 65536
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.led_classdev, ptr %3, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  tail call void @led_set_brightness_nopm(ptr noundef %3, i32 noundef %10) #9
  %11 = getelementptr inbounds %struct.led_classdev, ptr %3, i32 0, i32 20
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %8
  tail call void %12(ptr noundef %3) #9
  br label %15

15:                                               ; preds = %14, %8
  %16 = load i32, ptr %4, align 4
  %17 = and i32 %16, -2
  store i32 %17, ptr %4, align 4
  br label %18

18:                                               ; preds = %15, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brightness_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @led_update_brightness(ptr noundef %5) #9
  %7 = getelementptr inbounds %struct.led_classdev, ptr %5, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %8)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brightness_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.led_classdev, ptr %7, i32 0, i32 29
  tail call void @mutex_lock(ptr noundef %8) #9
  %9 = getelementptr inbounds %struct.led_classdev, ptr %7, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 131072
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %4
  %14 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %13
  %17 = load i32, ptr %5, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  call void @led_trigger_remove(ptr noundef %7) #9
  %20 = load i32, ptr %5, align 4
  br label %21

21:                                               ; preds = %19, %16
  %22 = phi i32 [ %20, %19 ], [ %17, %16 ]
  call void @led_set_brightness(ptr noundef %7, i32 noundef %22) #9
  %23 = getelementptr inbounds %struct.led_classdev, ptr %7, i32 0, i32 21
  %24 = call zeroext i1 @flush_work(ptr noundef %23) #9
  br label %25

25:                                               ; preds = %21, %13, %4
  %26 = phi i32 [ %14, %13 ], [ %3, %21 ], [ -16, %4 ]
  call void @mutex_unlock(ptr noundef %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %26
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max_brightness_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.led_classdev, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %7)
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_trigger_read(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_trigger_write(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{!"branch_weights", i32 1, i32 2000}
