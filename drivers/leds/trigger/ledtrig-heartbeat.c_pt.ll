; ModuleID = '/llk/IR/drivers/leds/trigger/ledtrig-heartbeat.c_pt.bc'
source_filename = "../drivers/leds/trigger/ledtrig-heartbeat.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.notifier_block = type { ptr, ptr, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.led_trigger = type { ptr, ptr, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.heartbeat_trig_data = type { ptr, i32, i32, %struct.timer_list, i32 }
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

@heartbeat_reboot_nb = internal global %struct.notifier_block { ptr @heartbeat_reboot_notifier, ptr null, i32 0 }, align 4
@panic_notifier_list = external dso_local global %struct.atomic_notifier_head, align 4
@heartbeat_panic_nb = internal global %struct.notifier_block { ptr @heartbeat_panic_notifier, ptr null, i32 0 }, align 4
@heartbeat_led_trigger = internal global %struct.led_trigger { ptr @.str, ptr @heartbeat_trig_activate, ptr @heartbeat_trig_deactivate, ptr null, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr @heartbeat_trig_groups }, align 4
@__initcall__kmod_ledtrig_heartbeat__166_208_heartbeat_trig_init6 = internal global ptr @heartbeat_trig_init, section ".initcall6.init", align 4
@__exitcall_heartbeat_trig_exit = internal global ptr @heartbeat_trig_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author167 = internal constant [62 x i8] c"ledtrig_heartbeat.author=Atsushi Nemoto <anemo@mba.ocn.ne.jp>\00", section ".modinfo", align 1
@__UNIQUE_ID_description168 = internal constant [52 x i8] c"ledtrig_heartbeat.description=Heartbeat LED trigger\00", section ".modinfo", align 1
@__UNIQUE_ID_file169 = internal constant [62 x i8] c"ledtrig_heartbeat.file=drivers/leds/trigger/ledtrig-heartbeat\00", section ".modinfo", align 1
@__UNIQUE_ID_license170 = internal constant [33 x i8] c"ledtrig_heartbeat.license=GPL v2\00", section ".modinfo", align 1
@panic_heartbeats = internal unnamed_addr global i1 false, align 4
@.str = private unnamed_addr constant [10 x i8] c"heartbeat\00", align 1
@heartbeat_trig_groups = internal global [2 x ptr] [ptr @heartbeat_trig_group, ptr null], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@avenrun = external dso_local local_unnamed_addr global [0 x i32], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@heartbeat_trig_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @heartbeat_trig_attrs, ptr null }, align 4
@heartbeat_trig_attrs = internal global [2 x ptr] [ptr @dev_attr_invert, ptr null], align 4
@dev_attr_invert = internal global %struct.device_attribute { %struct.attribute { ptr @.str.1, i16 420 }, ptr @led_invert_show, ptr @led_invert_store }, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"invert\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author167, ptr @__UNIQUE_ID_description168, ptr @__UNIQUE_ID_file169, ptr @__UNIQUE_ID_license170, ptr @__exitcall_heartbeat_trig_exit, ptr @__initcall__kmod_ledtrig_heartbeat__166_208_heartbeat_trig_init6, ptr @heartbeat_trig_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @heartbeat_trig_exit() #0 section ".exit.text" {
  %1 = tail call i32 @unregister_reboot_notifier(ptr noundef nonnull @heartbeat_reboot_nb) #8
  %2 = tail call i32 @atomic_notifier_chain_unregister(ptr noundef nonnull @panic_notifier_list, ptr noundef nonnull @heartbeat_panic_nb) #8
  tail call void @led_trigger_unregister(ptr noundef nonnull @heartbeat_led_trigger) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_reboot_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @heartbeat_trig_init() #0 section ".init.text" {
  %1 = tail call i32 @led_trigger_register(ptr noundef nonnull @heartbeat_led_trigger) #8
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = tail call i32 @atomic_notifier_chain_register(ptr noundef nonnull @panic_notifier_list, ptr noundef nonnull @heartbeat_panic_nb) #8
  %5 = tail call i32 @register_reboot_notifier(ptr noundef nonnull @heartbeat_reboot_nb) #8
  br label %6

6:                                                ; preds = %3, %0
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @heartbeat_reboot_notifier(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #2 {
  tail call void @led_trigger_unregister(ptr noundef nonnull @heartbeat_led_trigger) #8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @heartbeat_panic_notifier(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #3 {
  store i1 true, ptr @panic_heartbeats, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @heartbeat_trig_activate(ptr noundef %0) #2 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 36) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 26
  store ptr %3, ptr %6, align 4
  store ptr %0, ptr %3, align 8
  %7 = getelementptr inbounds %struct.heartbeat_trig_data, ptr %3, i32 0, i32 3
  tail call void @init_timer_key(ptr noundef %7, ptr noundef nonnull @led_heartbeat_function, i32 noundef 0, ptr noundef null, ptr noundef null) #8
  %8 = getelementptr inbounds %struct.heartbeat_trig_data, ptr %3, i32 0, i32 1
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 18
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  store i32 %14, ptr %9, align 4
  br label %15

15:                                               ; preds = %12, %5
  tail call void @led_heartbeat_function(ptr noundef %7)
  %16 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %16) #8
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi i32 [ 0, %15 ], [ -12, %1 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @heartbeat_trig_deactivate(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 26
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.heartbeat_trig_data, ptr %3, i32 0, i32 3
  %5 = tail call i32 @del_timer_sync(ptr noundef %4) #8
  tail call void @kfree(ptr noundef %3) #8
  %6 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %6) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @led_heartbeat_function(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -12
  %3 = load ptr, ptr %2, align 4
  %4 = load i1, ptr @panic_heartbeats, align 4
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %1
  tail call void @led_set_brightness_nosleep(ptr noundef %3, i32 noundef 0) #8
  br label %61

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.led_classdev, ptr %3, i32 0, i32 4
  %8 = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %7) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.led_classdev, ptr %3, i32 0, i32 19
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.led_classdev, ptr %3, i32 0, i32 18
  store i32 %12, ptr %13, align 4
  br label %14

14:                                               ; preds = %10, %6
  %15 = getelementptr i8, ptr %0, i32 -8
  %16 = load i32, ptr %15, align 4
  switch i32 %16, label %42 [
    i32 0, label %17
    i32 1, label %30
    i32 2, label %38
  ]

17:                                               ; preds = %14
  %18 = load i32, ptr @avenrun, align 4
  %19 = mul i32 %18, 5
  %20 = add i32 %19, 14336
  %21 = udiv i32 13762560, %20
  %22 = add nuw nsw i32 %21, 300
  %23 = getelementptr i8, ptr %0, i32 -4
  store i32 %22, ptr %23, align 4
  %24 = tail call i32 @__msecs_to_jiffies(i32 noundef %22) #8
  %25 = load i32, ptr %15, align 4
  %26 = add i32 %25, 1
  store i32 %24, ptr %23, align 4
  store i32 %26, ptr %15, align 4
  %27 = getelementptr i8, ptr %0, i32 20
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %51, label %55

30:                                               ; preds = %14
  %31 = getelementptr i8, ptr %0, i32 -4
  %32 = load i32, ptr %31, align 4
  %33 = lshr i32 %32, 2
  %34 = add nsw i32 %33, -7
  store i32 2, ptr %15, align 4
  %35 = getelementptr i8, ptr %0, i32 20
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %55, label %51

38:                                               ; preds = %14
  store i32 3, ptr %15, align 4
  %39 = getelementptr i8, ptr %0, i32 20
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %51, label %55

42:                                               ; preds = %14
  %43 = getelementptr i8, ptr %0, i32 -4
  %44 = load i32, ptr %43, align 4
  %45 = lshr i32 %44, 2
  %46 = add i32 %44, -7
  %47 = sub i32 %46, %45
  store i32 0, ptr %15, align 4
  %48 = getelementptr i8, ptr %0, i32 20
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %42, %38, %30, %17
  %52 = phi i32 [ 7, %17 ], [ %34, %30 ], [ 7, %38 ], [ %47, %42 ]
  %53 = getelementptr inbounds %struct.led_classdev, ptr %3, i32 0, i32 18
  %54 = load i32, ptr %53, align 4
  br label %55

55:                                               ; preds = %51, %42, %38, %30, %17
  %56 = phi i32 [ 0, %42 ], [ 0, %38 ], [ 0, %30 ], [ 0, %17 ], [ %54, %51 ]
  %57 = phi i32 [ %47, %42 ], [ 7, %38 ], [ %34, %30 ], [ 7, %17 ], [ %52, %51 ]
  tail call void @led_set_brightness_nosleep(ptr noundef %3, i32 noundef %56) #8
  %58 = load volatile i32, ptr @jiffies, align 64
  %59 = add i32 %58, %57
  %60 = tail call i32 @mod_timer(ptr noundef %0, i32 noundef %59) #8
  br label %61

61:                                               ; preds = %55, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_set_brightness_nosleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @led_invert_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.led_classdev, ptr %5, i32 0, i32 26
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.heartbeat_trig_data, ptr %7, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %9)
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @led_invert_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.led_classdev, ptr %7, i32 0, i32 26
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !9
  %10 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %4
  %13 = load i32, ptr %5, align 4
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = getelementptr inbounds %struct.heartbeat_trig_data, ptr %9, i32 0, i32 4
  store i32 %15, ptr %16, align 4
  br label %17

17:                                               ; preds = %12, %4
  %18 = phi i32 [ %3, %12 ], [ %10, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret i32 %18
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_trigger_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_reboot_notifier(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }

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
!9 = !{!"auto-init"}
