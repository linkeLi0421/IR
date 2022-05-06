; ModuleID = '/llk/IR/drivers/leds/led-triggers.c_pt.bc'
source_filename = "../drivers/leds/led-triggers.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_trigger_write:\09\09\09\09\09"
module asm "\09.asciz \09\22led_trigger_write\22\09\09\09\09\09"
module asm "__kstrtabns_led_trigger_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_trigger_read:\09\09\09\09\09"
module asm "\09.asciz \09\22led_trigger_read\22\09\09\09\09\09"
module asm "__kstrtabns_led_trigger_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_trigger_set:\09\09\09\09\09"
module asm "\09.asciz \09\22led_trigger_set\22\09\09\09\09\09"
module asm "__kstrtabns_led_trigger_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_trigger_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22led_trigger_remove\22\09\09\09\09\09"
module asm "__kstrtabns_led_trigger_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_trigger_set_default:\09\09\09\09\09"
module asm "\09.asciz \09\22led_trigger_set_default\22\09\09\09\09\09"
module asm "__kstrtabns_led_trigger_set_default:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_trigger_rename_static:\09\09\09\09\09"
module asm "\09.asciz \09\22led_trigger_rename_static\22\09\09\09\09\09"
module asm "__kstrtabns_led_trigger_rename_static:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_trigger_register:\09\09\09\09\09"
module asm "\09.asciz \09\22led_trigger_register\22\09\09\09\09\09"
module asm "__kstrtabns_led_trigger_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_trigger_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22led_trigger_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_led_trigger_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_led_trigger_register:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_led_trigger_register\22\09\09\09\09\09"
module asm "__kstrtabns_devm_led_trigger_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_trigger_event:\09\09\09\09\09"
module asm "\09.asciz \09\22led_trigger_event\22\09\09\09\09\09"
module asm "__kstrtabns_led_trigger_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_trigger_blink:\09\09\09\09\09"
module asm "\09.asciz \09\22led_trigger_blink\22\09\09\09\09\09"
module asm "__kstrtabns_led_trigger_blink:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_trigger_blink_oneshot:\09\09\09\09\09"
module asm "\09.asciz \09\22led_trigger_blink_oneshot\22\09\09\09\09\09"
module asm "__kstrtabns_led_trigger_blink_oneshot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_trigger_register_simple:\09\09\09\09\09"
module asm "\09.asciz \09\22led_trigger_register_simple\22\09\09\09\09\09"
module asm "__kstrtabns_led_trigger_register_simple:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_trigger_unregister_simple:\09\09\09\09\09"
module asm "\09.asciz \09\22led_trigger_unregister_simple\22\09\09\09\09\09"
module asm "__kstrtabns_led_trigger_unregister_simple:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.led_trigger = type { ptr, ptr, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, ptr }
%struct.__va_list = type { ptr }

@trigger_list = dso_local global %struct.list_head { ptr @trigger_list, ptr @trigger_list }, align 4
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@triggers_list_lock = internal global %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @triggers_list_lock, i64 16), ptr getelementptr (i8, ptr @triggers_list_lock, i64 16) } }, align 4
@__kstrtab_led_trigger_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_trigger_write = external dso_local constant [0 x i8], align 1
@__ksymtab_led_trigger_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_trigger_write to i32), ptr @__kstrtab_led_trigger_write, ptr @__kstrtabns_led_trigger_write }, section "___ksymtab_gpl+led_trigger_write", align 4
@__kstrtab_led_trigger_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_trigger_read = external dso_local constant [0 x i8], align 1
@__ksymtab_led_trigger_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_trigger_read to i32), ptr @__kstrtab_led_trigger_read, ptr @__kstrtabns_led_trigger_read }, section "___ksymtab_gpl+led_trigger_read", align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"TRIGGER=%s\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to add trigger attributes\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"%s: Error sending uevent\0A\00", align 1
@__func__.led_trigger_set = private unnamed_addr constant [16 x i8] c"led_trigger_set\00", align 1
@__kstrtab_led_trigger_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_trigger_set = external dso_local constant [0 x i8], align 1
@__ksymtab_led_trigger_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_trigger_set to i32), ptr @__kstrtab_led_trigger_set, ptr @__kstrtabns_led_trigger_set }, section "___ksymtab_gpl+led_trigger_set", align 4
@__kstrtab_led_trigger_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_trigger_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_led_trigger_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_trigger_remove to i32), ptr @__kstrtab_led_trigger_remove, ptr @__kstrtabns_led_trigger_remove }, section "___ksymtab_gpl+led_trigger_remove", align 4
@__kstrtab_led_trigger_set_default = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_trigger_set_default = external dso_local constant [0 x i8], align 1
@__ksymtab_led_trigger_set_default = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_trigger_set_default to i32), ptr @__kstrtab_led_trigger_set_default, ptr @__kstrtabns_led_trigger_set_default }, section "___ksymtab_gpl+led_trigger_set_default", align 4
@__kstrtab_led_trigger_rename_static = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_trigger_rename_static = external dso_local constant [0 x i8], align 1
@__ksymtab_led_trigger_rename_static = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_trigger_rename_static to i32), ptr @__kstrtab_led_trigger_rename_static, ptr @__kstrtabns_led_trigger_rename_static }, section "___ksymtab_gpl+led_trigger_rename_static", align 4
@leds_list_lock = external dso_local global %struct.rw_semaphore, align 4
@leds_list = external dso_local global %struct.list_head, align 4
@__kstrtab_led_trigger_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_trigger_register = external dso_local constant [0 x i8], align 1
@__ksymtab_led_trigger_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_trigger_register to i32), ptr @__kstrtab_led_trigger_register, ptr @__kstrtabns_led_trigger_register }, section "___ksymtab_gpl+led_trigger_register", align 4
@__kstrtab_led_trigger_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_trigger_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_led_trigger_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_trigger_unregister to i32), ptr @__kstrtab_led_trigger_unregister, ptr @__kstrtabns_led_trigger_unregister }, section "___ksymtab_gpl+led_trigger_unregister", align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"devm_led_trigger_release\00", align 1
@__kstrtab_devm_led_trigger_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_led_trigger_register = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_led_trigger_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_led_trigger_register to i32), ptr @__kstrtab_devm_led_trigger_register, ptr @__kstrtabns_devm_led_trigger_register }, section "___ksymtab_gpl+devm_led_trigger_register", align 4
@__kstrtab_led_trigger_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_trigger_event = external dso_local constant [0 x i8], align 1
@__ksymtab_led_trigger_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_trigger_event to i32), ptr @__kstrtab_led_trigger_event, ptr @__kstrtabns_led_trigger_event }, section "___ksymtab_gpl+led_trigger_event", align 4
@__kstrtab_led_trigger_blink = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_trigger_blink = external dso_local constant [0 x i8], align 1
@__ksymtab_led_trigger_blink = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_trigger_blink to i32), ptr @__kstrtab_led_trigger_blink, ptr @__kstrtabns_led_trigger_blink }, section "___ksymtab_gpl+led_trigger_blink", align 4
@__kstrtab_led_trigger_blink_oneshot = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_trigger_blink_oneshot = external dso_local constant [0 x i8], align 1
@__ksymtab_led_trigger_blink_oneshot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_trigger_blink_oneshot to i32), ptr @__kstrtab_led_trigger_blink_oneshot, ptr @__kstrtabns_led_trigger_blink_oneshot }, section "___ksymtab_gpl+led_trigger_blink_oneshot", align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"\014LED trigger %s failed to register (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"\014LED trigger %s failed to register (no memory)\0A\00", align 1
@__kstrtab_led_trigger_register_simple = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_trigger_register_simple = external dso_local constant [0 x i8], align 1
@__ksymtab_led_trigger_register_simple = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_trigger_register_simple to i32), ptr @__kstrtab_led_trigger_register_simple, ptr @__kstrtabns_led_trigger_register_simple }, section "___ksymtab_gpl+led_trigger_register_simple", align 4
@__kstrtab_led_trigger_unregister_simple = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_trigger_unregister_simple = external dso_local constant [0 x i8], align 1
@__ksymtab_led_trigger_unregister_simple = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_trigger_unregister_simple to i32), ptr @__kstrtab_led_trigger_unregister_simple, ptr @__kstrtabns_led_trigger_unregister_simple }, section "___ksymtab_gpl+led_trigger_unregister_simple", align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"[none]\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c" %s%s%s\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [14 x ptr] [ptr @__ksymtab_devm_led_trigger_register, ptr @__ksymtab_led_trigger_blink, ptr @__ksymtab_led_trigger_blink_oneshot, ptr @__ksymtab_led_trigger_event, ptr @__ksymtab_led_trigger_read, ptr @__ksymtab_led_trigger_register, ptr @__ksymtab_led_trigger_register_simple, ptr @__ksymtab_led_trigger_remove, ptr @__ksymtab_led_trigger_rename_static, ptr @__ksymtab_led_trigger_set, ptr @__ksymtab_led_trigger_set_default, ptr @__ksymtab_led_trigger_unregister, ptr @__ksymtab_led_trigger_unregister_simple, ptr @__ksymtab_led_trigger_write], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @led_trigger_write(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr noundef %3, i64 %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.led_classdev, ptr %8, i32 0, i32 29
  tail call void @mutex_lock(ptr noundef %9) #10
  %10 = getelementptr inbounds %struct.led_classdev, ptr %8, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 131072
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %44

14:                                               ; preds = %6
  %15 = tail call zeroext i1 @sysfs_streq(ptr noundef %3, ptr noundef nonnull @.str) #10
  br i1 %15, label %16, label %19

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.led_classdev, ptr %8, i32 0, i32 23
  tail call void @down_write(ptr noundef %17) #10
  %18 = tail call i32 @led_trigger_set(ptr noundef %8, ptr noundef null) #10
  tail call void @up_write(ptr noundef %17) #10
  br label %44

19:                                               ; preds = %14
  tail call void @down_read(ptr noundef nonnull @triggers_list_lock) #10
  %20 = load ptr, ptr @trigger_list, align 4
  %21 = icmp eq ptr %20, @trigger_list
  br i1 %21, label %43, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.led_classdev, ptr %8, i32 0, i32 28
  br label %24

24:                                               ; preds = %40, %22
  %25 = phi ptr [ %20, %22 ], [ %41, %40 ]
  %26 = getelementptr i8, ptr %25, i32 -28
  %27 = load ptr, ptr %26, align 4
  %28 = tail call zeroext i1 @sysfs_streq(ptr noundef %3, ptr noundef %27) #10
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = getelementptr i8, ptr %25, i32 -16
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %23, align 4
  %35 = icmp eq ptr %31, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %33, %29
  %37 = getelementptr i8, ptr %25, i32 -28
  %38 = getelementptr inbounds %struct.led_classdev, ptr %8, i32 0, i32 23
  tail call void @down_write(ptr noundef %38) #10
  %39 = tail call i32 @led_trigger_set(ptr noundef %8, ptr noundef %37)
  tail call void @up_write(ptr noundef %38) #10
  tail call void @up_read(ptr noundef nonnull @triggers_list_lock) #10
  br label %44

40:                                               ; preds = %33, %24
  %41 = load ptr, ptr %25, align 4
  %42 = icmp eq ptr %41, @trigger_list
  br i1 %42, label %43, label %24

43:                                               ; preds = %40, %19
  tail call void @up_read(ptr noundef nonnull @triggers_list_lock) #10
  br label %44

44:                                               ; preds = %43, %36, %16, %6
  %45 = phi i32 [ %5, %16 ], [ %5, %36 ], [ -22, %43 ], [ -16, %6 ]
  tail call void @mutex_unlock(ptr noundef %9) #10
  ret i32 %45
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @led_trigger_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 23
  tail call void @down_write(ptr noundef %2) #10
  %3 = tail call i32 @led_trigger_set(ptr noundef %0, ptr noundef null)
  tail call void @up_write(ptr noundef %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @led_trigger_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [2 x ptr], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  %4 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 24
  %5 = load ptr, ptr %4, align 4
  %6 = icmp ne ptr %5, null
  %7 = icmp ne ptr %1, null
  %8 = or i1 %7, %6
  br i1 %8, label %9, label %96

9:                                                ; preds = %2
  br i1 %7, label %10, label %12

10:                                               ; preds = %9
  %11 = load ptr, ptr %1, align 4
  br label %12

12:                                               ; preds = %10, %9
  %13 = phi ptr [ %11, %10 ], [ @.str, %9 ]
  %14 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.1, ptr noundef %13) #10
  %15 = load ptr, ptr %4, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %44, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.led_trigger, ptr %15, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %18) #10
  %19 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 25
  %20 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 25, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %19, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %21, ptr %23, align 4
  store volatile ptr %22, ptr %21, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %20, align 4
  %24 = load ptr, ptr %4, align 4
  %25 = getelementptr inbounds %struct.led_trigger, ptr %24, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %26 = load i16, ptr %25, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr %25, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  tail call void @synchronize_rcu() #10
  %28 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 21
  %29 = tail call zeroext i1 @cancel_work_sync(ptr noundef %28) #10
  tail call void @led_stop_software_blink(ptr noundef %0) #10
  %30 = load ptr, ptr %4, align 4
  %31 = getelementptr inbounds %struct.led_trigger, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %17
  tail call void %32(ptr noundef %0) #10
  %35 = load ptr, ptr %4, align 4
  br label %36

36:                                               ; preds = %34, %17
  %37 = phi ptr [ %35, %34 ], [ %30, %17 ]
  %38 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 11
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.led_trigger, ptr %37, i32 0, i32 7
  %41 = load ptr, ptr %40, align 4
  tail call void @device_remove_groups(ptr noundef %39, ptr noundef %41) #10
  store ptr null, ptr %4, align 4
  %42 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 26
  store ptr null, ptr %42, align 4
  %43 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 27
  store i8 0, ptr %43, align 4
  tail call void @led_set_brightness(ptr noundef %0, i32 noundef 0) #10
  br label %44

44:                                               ; preds = %36, %12
  br i1 %7, label %45, label %72

45:                                               ; preds = %44
  %46 = getelementptr inbounds %struct.led_trigger, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %46) #10
  %47 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 25
  %48 = getelementptr inbounds %struct.led_trigger, ptr %1, i32 0, i32 5
  %49 = getelementptr inbounds %struct.led_trigger, ptr %1, i32 0, i32 5, i32 1
  %50 = load ptr, ptr %49, align 4
  store ptr %48, ptr %47, align 4
  %51 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 25, i32 1
  store ptr %50, ptr %51, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  store volatile ptr %47, ptr %50, align 4
  store ptr %47, ptr %49, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %52 = load i16, ptr %46, align 4
  %53 = add i16 %52, 1
  store i16 %53, ptr %46, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  store ptr %1, ptr %4, align 4
  %54 = getelementptr inbounds %struct.led_trigger, ptr %1, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %45
  %58 = tail call i32 %55(ptr noundef %0) #10
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %84

60:                                               ; preds = %57, %45
  %61 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 11
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.led_trigger, ptr %1, i32 0, i32 7
  %64 = load ptr, ptr %63, align 4
  %65 = tail call i32 @device_add_groups(ptr noundef %62, ptr noundef %64) #10
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %60
  %68 = load ptr, ptr %61, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.2) #11
  %69 = getelementptr inbounds %struct.led_trigger, ptr %1, i32 0, i32 2
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %84, label %83

72:                                               ; preds = %60, %44
  %73 = icmp eq ptr %14, null
  br i1 %73, label %96, label %74

74:                                               ; preds = %72
  store ptr %14, ptr %3, align 8
  %75 = getelementptr inbounds [2 x ptr], ptr %3, i32 0, i32 1
  store ptr null, ptr %75, align 4
  %76 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 11
  %77 = load ptr, ptr %76, align 4
  %78 = call i32 @kobject_uevent_env(ptr noundef %77, i32 noundef 2, ptr noundef nonnull %3) #10
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %74
  %81 = load ptr, ptr %76, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.led_trigger_set) #11
  br label %82

82:                                               ; preds = %80, %74
  call void @kfree(ptr noundef nonnull %14) #10
  br label %96

83:                                               ; preds = %67
  tail call void %70(ptr noundef %0) #10
  br label %84

84:                                               ; preds = %83, %67, %57
  %85 = phi i32 [ %58, %57 ], [ %65, %83 ], [ %65, %67 ]
  %86 = load ptr, ptr %4, align 4
  %87 = getelementptr inbounds %struct.led_trigger, ptr %86, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %87) #10
  %88 = load ptr, ptr %51, align 4
  %89 = load ptr, ptr %47, align 4
  %90 = getelementptr inbounds %struct.list_head, ptr %89, i32 0, i32 1
  store ptr %88, ptr %90, align 4
  store volatile ptr %89, ptr %88, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %51, align 4
  %91 = load ptr, ptr %4, align 4
  %92 = getelementptr inbounds %struct.led_trigger, ptr %91, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %93 = load i16, ptr %92, align 4
  %94 = add i16 %93, 1
  store i16 %94, ptr %92, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  tail call void @synchronize_rcu() #10
  store ptr null, ptr %4, align 4
  %95 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 26
  store ptr null, ptr %95, align 4
  tail call void @led_set_brightness(ptr noundef %0, i32 noundef 0) #10
  tail call void @kfree(ptr noundef %14) #10
  br label %96

96:                                               ; preds = %84, %82, %72, %2
  %97 = phi i32 [ %85, %84 ], [ 0, %2 ], [ 0, %82 ], [ 0, %72 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret i32 %97
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @led_trigger_read(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) #0 {
  %7 = alloca i64, align 8
  store i64 %4, ptr %7, align 8
  %8 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  tail call void @down_read(ptr noundef nonnull @triggers_list_lock) #10
  %10 = getelementptr inbounds %struct.led_classdev, ptr %9, i32 0, i32 23
  tail call void @down_read(ptr noundef %10) #10
  %11 = tail call fastcc i32 @led_trigger_format(ptr noundef null, i32 noundef 0, ptr noundef %9)
  %12 = add i32 %11, 1
  %13 = tail call noalias ptr @kvmalloc_node(i32 noundef %12, i32 noundef 3264, i32 noundef -1) #12
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %6
  tail call void @up_read(ptr noundef %10) #10
  tail call void @up_read(ptr noundef nonnull @triggers_list_lock) #10
  br label %19

16:                                               ; preds = %6
  %17 = tail call fastcc i32 @led_trigger_format(ptr noundef nonnull %13, i32 noundef %12, ptr noundef %9)
  tail call void @up_read(ptr noundef %10) #10
  tail call void @up_read(ptr noundef nonnull @triggers_list_lock) #10
  %18 = call i32 @memory_read_from_buffer(ptr noundef %3, i32 noundef %5, ptr noundef nonnull %7, ptr noundef nonnull %13, i32 noundef %17) #10
  call void @kvfree(ptr noundef nonnull %13) #10
  br label %19

19:                                               ; preds = %16, %15
  %20 = phi i32 [ %18, %16 ], [ -12, %15 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @led_trigger_format(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.led_classdev, ptr %2, i32 0, i32 24
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  %7 = select i1 %6, ptr @.str.8, ptr @.str
  %8 = tail call i32 (ptr, i32, ptr, ...) @led_trigger_snprintf(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.7, ptr noundef nonnull %7)
  %9 = load ptr, ptr @trigger_list, align 4
  %10 = icmp eq ptr %9, @trigger_list
  br i1 %10, label %47, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.led_classdev, ptr %2, i32 0, i32 28
  br label %13

13:                                               ; preds = %43, %11
  %14 = phi ptr [ %9, %11 ], [ %45, %43 ]
  %15 = phi i32 [ %8, %11 ], [ %44, %43 ]
  %16 = getelementptr i8, ptr %14, i32 -28
  %17 = getelementptr i8, ptr %14, i32 -16
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = load ptr, ptr %12, align 4
  %22 = icmp eq ptr %18, %21
  br i1 %22, label %23, label %43

23:                                               ; preds = %20, %13
  %24 = load ptr, ptr %4, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load ptr, ptr %16, align 4
  br label %35

28:                                               ; preds = %23
  %29 = load ptr, ptr %24, align 4
  %30 = load ptr, ptr %16, align 4
  %31 = tail call i32 @strcmp(ptr noundef %29, ptr noundef %30)
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, ptr @.str.10, ptr @.str.11
  %34 = select i1 %32, ptr @.str.12, ptr @.str.11
  br label %35

35:                                               ; preds = %28, %26
  %36 = phi ptr [ %27, %26 ], [ %30, %28 ]
  %37 = phi ptr [ @.str.11, %26 ], [ %33, %28 ]
  %38 = phi ptr [ @.str.11, %26 ], [ %34, %28 ]
  %39 = sub i32 %1, %15
  %40 = getelementptr i8, ptr %0, i32 %15
  %41 = tail call i32 (ptr, i32, ptr, ...) @led_trigger_snprintf(ptr noundef %40, i32 noundef %39, ptr noundef nonnull @.str.9, ptr noundef nonnull %37, ptr noundef %36, ptr noundef nonnull %38)
  %42 = add i32 %41, %15
  br label %43

43:                                               ; preds = %35, %20
  %44 = phi i32 [ %42, %35 ], [ %15, %20 ]
  %45 = load ptr, ptr %14, align 4
  %46 = icmp eq ptr %45, @trigger_list
  br i1 %46, label %47, label %13

47:                                               ; preds = %43, %3
  %48 = phi i32 [ %8, %3 ], [ %44, %43 ]
  %49 = getelementptr i8, ptr %0, i32 %48
  %50 = sub i32 %1, %48
  %51 = tail call i32 (ptr, i32, ptr, ...) @led_trigger_snprintf(ptr noundef %49, i32 noundef %50, ptr noundef nonnull @.str.13)
  %52 = add i32 %51, %48
  ret i32 %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memory_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_stop_software_blink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_groups(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_set_brightness(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_groups(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent_env(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @led_trigger_set_default(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %35, label %5

5:                                                ; preds = %1
  tail call void @down_read(ptr noundef nonnull @triggers_list_lock) #10
  %6 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 23
  tail call void @down_write(ptr noundef %6) #10
  %7 = load ptr, ptr @trigger_list, align 4
  %8 = icmp eq ptr %7, @trigger_list
  br i1 %8, label %34, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 28
  br label %12

12:                                               ; preds = %31, %9
  %13 = phi ptr [ %7, %9 ], [ %32, %31 ]
  %14 = getelementptr i8, ptr %13, i32 -28
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @strcmp(ptr noundef %10, ptr noundef %15)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %12
  %19 = getelementptr i8, ptr %13, i32 -16
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %11, align 4
  %24 = icmp eq ptr %20, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %22, %18
  %26 = getelementptr i8, ptr %13, i32 -28
  %27 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = or i32 %28, 8388608
  store i32 %29, ptr %27, align 4
  %30 = tail call i32 @led_trigger_set(ptr noundef %0, ptr noundef %26)
  br label %34

31:                                               ; preds = %22, %12
  %32 = load ptr, ptr %13, align 4
  %33 = icmp eq ptr %32, @trigger_list
  br i1 %33, label %34, label %12

34:                                               ; preds = %31, %25, %5
  tail call void @up_write(ptr noundef %6) #10
  tail call void @up_read(ptr noundef nonnull @triggers_list_lock) #10
  br label %35

35:                                               ; preds = %34, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @led_trigger_rename_static(ptr noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = icmp eq ptr %3, %0
  br i1 %4, label %5, label %6, !prof !13

5:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/leds/led-triggers.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 274, 0\0A.popsection", ""() #10, !srcloc !14
  unreachable

6:                                                ; preds = %2
  tail call void @down_write(ptr noundef nonnull @triggers_list_lock) #10
  %7 = load ptr, ptr %1, align 4
  %8 = tail call ptr @strcpy(ptr noundef %7, ptr noundef %0)
  tail call void @up_write(ptr noundef nonnull @triggers_list_lock) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @led_trigger_register(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.led_trigger, ptr %0, i32 0, i32 4
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.led_trigger, ptr %0, i32 0, i32 5
  store volatile ptr %3, ptr %3, align 4
  %4 = getelementptr inbounds %struct.led_trigger, ptr %0, i32 0, i32 5, i32 1
  store ptr %3, ptr %4, align 4
  tail call void @down_write(ptr noundef nonnull @triggers_list_lock) #10
  %5 = load ptr, ptr @trigger_list, align 4
  %6 = icmp eq ptr %5, @trigger_list
  br i1 %6, label %29, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.led_trigger, ptr %0, i32 0, i32 3
  br label %10

10:                                               ; preds = %26, %7
  %11 = phi ptr [ %5, %7 ], [ %27, %26 ]
  %12 = getelementptr i8, ptr %11, i32 -28
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @strcmp(ptr noundef %13, ptr noundef %8)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %10
  %17 = load ptr, ptr %9, align 4
  %18 = getelementptr i8, ptr %11, i32 -16
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %17, %19
  %21 = icmp eq ptr %17, null
  %22 = or i1 %21, %20
  %23 = icmp eq ptr %19, null
  %24 = or i1 %23, %22
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  tail call void @up_write(ptr noundef nonnull @triggers_list_lock) #10
  br label %68

26:                                               ; preds = %16, %10
  %27 = load ptr, ptr %11, align 4
  %28 = icmp eq ptr %27, @trigger_list
  br i1 %28, label %29, label %10

29:                                               ; preds = %26, %1
  %30 = getelementptr inbounds %struct.led_trigger, ptr %0, i32 0, i32 6
  %31 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @trigger_list, i32 0, i32 1), align 4
  store ptr %30, ptr getelementptr inbounds (%struct.list_head, ptr @trigger_list, i32 0, i32 1), align 4
  store ptr @trigger_list, ptr %30, align 4
  %32 = getelementptr inbounds %struct.led_trigger, ptr %0, i32 0, i32 6, i32 1
  store ptr %31, ptr %32, align 4
  store volatile ptr %30, ptr %31, align 4
  tail call void @up_write(ptr noundef nonnull @triggers_list_lock) #10
  tail call void @down_read(ptr noundef nonnull @leds_list_lock) #10
  %33 = load ptr, ptr @leds_list, align 4
  %34 = icmp eq ptr %33, @leds_list
  br i1 %34, label %67, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.led_trigger, ptr %0, i32 0, i32 3
  br label %37

37:                                               ; preds = %64, %35
  %38 = phi ptr [ %33, %35 ], [ %65, %64 ]
  %39 = getelementptr i8, ptr %38, i32 -52
  %40 = getelementptr i8, ptr %38, i32 72
  tail call void @down_write(ptr noundef %40) #10
  %41 = getelementptr i8, ptr %38, i32 96
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %64

44:                                               ; preds = %37
  %45 = getelementptr i8, ptr %38, i32 8
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %64, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %0, align 4
  %50 = tail call i32 @strcmp(ptr noundef nonnull %46, ptr noundef %49)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %48
  %53 = load ptr, ptr %36, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = getelementptr i8, ptr %38, i32 116
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %53, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %55, %52
  %60 = getelementptr i8, ptr %38, i32 -40
  %61 = load i32, ptr %60, align 4
  %62 = or i32 %61, 8388608
  store i32 %62, ptr %60, align 4
  %63 = tail call i32 @led_trigger_set(ptr noundef %39, ptr noundef %0)
  br label %64

64:                                               ; preds = %59, %55, %48, %44, %37
  tail call void @up_write(ptr noundef %40) #10
  %65 = load ptr, ptr %38, align 4
  %66 = icmp eq ptr %65, @leds_list
  br i1 %66, label %67, label %37

67:                                               ; preds = %64, %29
  tail call void @up_read(ptr noundef nonnull @leds_list_lock) #10
  br label %68

68:                                               ; preds = %67, %25
  %69 = phi i32 [ -17, %25 ], [ 0, %67 ]
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @led_trigger_unregister(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.led_trigger, ptr %0, i32 0, i32 6
  %3 = load volatile ptr, ptr %2, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !15
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.led_trigger, ptr %0, i32 0, i32 6, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %2
  br i1 %8, label %29, label %9

9:                                                ; preds = %5, %1
  tail call void @down_write(ptr noundef nonnull @triggers_list_lock) #10
  %10 = getelementptr inbounds %struct.led_trigger, ptr %0, i32 0, i32 6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %11, ptr %13, align 4
  store volatile ptr %12, ptr %11, align 4
  store volatile ptr %2, ptr %2, align 4
  store ptr %2, ptr %10, align 4
  tail call void @up_write(ptr noundef nonnull @triggers_list_lock) #10
  tail call void @down_read(ptr noundef nonnull @leds_list_lock) #10
  %14 = load ptr, ptr @leds_list, align 4
  %15 = icmp eq ptr %14, @leds_list
  br i1 %15, label %28, label %16

16:                                               ; preds = %25, %9
  %17 = phi ptr [ %26, %25 ], [ %14, %9 ]
  %18 = getelementptr i8, ptr %17, i32 72
  tail call void @down_write(ptr noundef %18) #10
  %19 = getelementptr i8, ptr %17, i32 96
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = getelementptr i8, ptr %17, i32 -52
  %24 = tail call i32 @led_trigger_set(ptr noundef %23, ptr noundef null)
  br label %25

25:                                               ; preds = %22, %16
  tail call void @up_write(ptr noundef %18) #10
  %26 = load ptr, ptr %17, align 4
  %27 = icmp eq ptr %26, @leds_list
  br i1 %27, label %28, label %16

28:                                               ; preds = %25, %9
  tail call void @up_read(ptr noundef nonnull @leds_list_lock) #10
  br label %29

29:                                               ; preds = %28, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_led_trigger_register(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_led_trigger_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.4) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  store ptr %1, ptr %3, align 4
  %6 = tail call i32 @led_trigger_register(ptr noundef %1)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call void @devres_free(ptr noundef nonnull %3) #10
  br label %10

9:                                                ; preds = %5
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %3) #10
  br label %10

10:                                               ; preds = %9, %8, %2
  %11 = phi i32 [ -12, %2 ], [ 0, %9 ], [ %6, %8 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_led_trigger_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  tail call void @led_trigger_unregister(ptr noundef %3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @led_trigger_event(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  %5 = getelementptr inbounds %struct.led_trigger, ptr %0, i32 0, i32 5
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %13, label %8

8:                                                ; preds = %8, %4
  %9 = phi ptr [ %11, %8 ], [ %6, %4 ]
  %10 = getelementptr i8, ptr %9, i32 -152
  tail call void @led_set_brightness(ptr noundef %10, i32 noundef %1) #10
  %11 = load volatile ptr, ptr %9, align 4
  %12 = icmp eq ptr %11, %5
  br i1 %12, label %13, label %8

13:                                               ; preds = %8, %4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  br label %14

14:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @led_trigger_blink(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %3
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  %6 = getelementptr inbounds %struct.led_trigger, ptr %0, i32 0, i32 5
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %14, label %9

9:                                                ; preds = %9, %5
  %10 = phi ptr [ %12, %9 ], [ %7, %5 ]
  %11 = getelementptr i8, ptr %10, i32 -152
  tail call void @led_blink_set(ptr noundef %11, ptr noundef %1, ptr noundef %2) #10
  %12 = load volatile ptr, ptr %10, align 4
  %13 = icmp eq ptr %12, %6
  br i1 %13, label %14, label %9

14:                                               ; preds = %9, %5
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  br label %15

15:                                               ; preds = %14, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @led_trigger_blink_oneshot(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  %7 = getelementptr inbounds %struct.led_trigger, ptr %0, i32 0, i32 5
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %15, label %10

10:                                               ; preds = %10, %6
  %11 = phi ptr [ %13, %10 ], [ %8, %6 ]
  %12 = getelementptr i8, ptr %11, i32 -152
  tail call void @led_blink_set_oneshot(ptr noundef %12, ptr noundef %1, ptr noundef %2, i32 noundef %3) #10
  %13 = load volatile ptr, ptr %11, align 4
  %14 = icmp eq ptr %13, %7
  br i1 %14, label %15, label %10

15:                                               ; preds = %10, %6
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  br label %16

16:                                               ; preds = %15, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @led_trigger_register_simple(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 40) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  store ptr %0, ptr %4, align 8
  %7 = tail call i32 @led_trigger_register(ptr noundef nonnull %4)
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  tail call void @kfree(ptr noundef nonnull %4) #10
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %0, i32 noundef %7) #11
  br label %13

11:                                               ; preds = %2
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %0) #11
  br label %13

13:                                               ; preds = %11, %9, %6
  %14 = phi ptr [ null, %9 ], [ %4, %6 ], [ null, %11 ]
  store ptr %14, ptr %1, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @led_trigger_unregister_simple(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @led_trigger_unregister(ptr noundef nonnull %0)
  br label %4

4:                                                ; preds = %3, %1
  tail call void @kfree(ptr noundef %0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @led_trigger_snprintf(ptr noundef %0, i32 noundef %1, ptr noundef %2, ...) unnamed_addr #0 {
  %4 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !18
  call void @llvm.va_start(ptr nonnull %4)
  %5 = icmp slt i32 %1, 1
  %6 = load i32, ptr %4, align 4
  %7 = insertvalue [1 x i32] poison, i32 %6, 0
  br i1 %5, label %8, label %10

8:                                                ; preds = %3
  %9 = call i32 @vsnprintf(ptr noundef null, i32 noundef 0, ptr noundef %2, [1 x i32] %7)
  br label %12

10:                                               ; preds = %3
  %11 = call i32 @vscnprintf(ptr noundef %0, i32 noundef %1, ptr noundef %2, [1 x i32] %7) #10
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret i32 %13
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vscnprintf(ptr noundef, i32 noundef, ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_blink_set_oneshot(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_blink_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }
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
!8 = !{i64 2148830590}
!9 = !{i64 2148826414}
!10 = !{i64 2148826489, i64 2148826516, i64 2148826563, i64 2148826585, i64 2148826613, i64 2148826633}
!11 = !{i64 2148853593}
!12 = !{i64 2149101048}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 2152495043, i64 2152495535, i64 2152495080, i64 2152495136, i64 2152495170, i64 2152495194, i64 2152495235, i64 2152495256, i64 2152495284, i64 2152495318}
!15 = !{i64 2148467482}
!16 = !{i64 2149075807}
!17 = !{i64 2149076024}
!18 = !{!"auto-init"}
