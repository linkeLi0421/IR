; ModuleID = '/llk/IR/drivers/leds/trigger/ledtrig-transient.c_pt.bc'
source_filename = "../drivers/leds/trigger/ledtrig-transient.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.led_trigger = type { ptr, ptr, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.transient_trig_data = type { i32, i32, i32, i32, %struct.timer_list, ptr }
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

@__initcall__kmod_ledtrig_transient__166_194_transient_trigger_init6 = internal global ptr @transient_trigger_init, section ".initcall6.init", align 4
@transient_trigger = internal global %struct.led_trigger { ptr @.str, ptr @transient_trig_activate, ptr @transient_trig_deactivate, ptr null, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr @transient_trig_groups }, align 4
@__exitcall_transient_trigger_exit = internal global ptr @transient_trigger_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author167 = internal constant [58 x i8] c"ledtrig_transient.author=Shuah Khan <shuahkhan@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description168 = internal constant [52 x i8] c"ledtrig_transient.description=Transient LED trigger\00", section ".modinfo", align 1
@__UNIQUE_ID_file169 = internal constant [62 x i8] c"ledtrig_transient.file=drivers/leds/trigger/ledtrig-transient\00", section ".modinfo", align 1
@__UNIQUE_ID_license170 = internal constant [33 x i8] c"ledtrig_transient.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"transient\00", align 1
@transient_trig_groups = internal global [2 x ptr] [ptr @transient_trig_group, ptr null], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@transient_trig_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @transient_trig_attrs, ptr null }, align 4
@transient_trig_attrs = internal global [4 x ptr] [ptr @dev_attr_activate, ptr @dev_attr_duration, ptr @dev_attr_state, ptr null], align 4
@dev_attr_activate = internal global %struct.device_attribute { %struct.attribute { ptr @.str.1, i16 420 }, ptr @transient_activate_show, ptr @transient_activate_store }, align 4
@dev_attr_duration = internal global %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 420 }, ptr @transient_duration_show, ptr @transient_duration_store }, align 4
@dev_attr_state = internal global %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 420 }, ptr @transient_state_show, ptr @transient_state_store }, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"activate\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.3 = private unnamed_addr constant [9 x i8] c"duration\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author167, ptr @__UNIQUE_ID_description168, ptr @__UNIQUE_ID_file169, ptr @__UNIQUE_ID_license170, ptr @__exitcall_transient_trigger_exit, ptr @__initcall__kmod_ledtrig_transient__166_194_transient_trigger_init6, ptr @transient_trigger_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @transient_trigger_init() #0 section ".init.text" {
  %1 = tail call i32 @led_trigger_register(ptr noundef nonnull @transient_trigger) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @transient_trigger_exit() #0 section ".exit.text" {
  tail call void @led_trigger_unregister(ptr noundef nonnull @transient_trigger) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_trigger_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @transient_trig_activate(ptr noundef %0) #2 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 40) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 26
  store ptr %3, ptr %6, align 4
  %7 = getelementptr inbounds %struct.transient_trig_data, ptr %3, i32 0, i32 5
  store ptr %0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.transient_trig_data, ptr %3, i32 0, i32 4
  tail call void @init_timer_key(ptr noundef %8, ptr noundef nonnull @transient_timer_function, i32 noundef 0, ptr noundef null, ptr noundef null) #7
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ 0, %5 ], [ -12, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @transient_trig_deactivate(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 26
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.transient_trig_data, ptr %3, i32 0, i32 4
  %5 = tail call i32 @del_timer_sync(ptr noundef %4) #7
  %6 = getelementptr inbounds %struct.transient_trig_data, ptr %3, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  tail call void @led_set_brightness_nosleep(ptr noundef %0, i32 noundef %7) #7
  tail call void @kfree(ptr noundef %3) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @transient_timer_function(ptr nocapture noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -16
  %3 = getelementptr i8, ptr %0, i32 20
  %4 = load ptr, ptr %3, align 4
  store i32 0, ptr %2, align 4
  %5 = getelementptr i8, ptr %0, i32 -8
  %6 = load i32, ptr %5, align 4
  tail call void @led_set_brightness_nosleep(ptr noundef %4, i32 noundef %6) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_set_brightness_nosleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @transient_activate_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.led_classdev, ptr %5, i32 0, i32 26
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %8)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @transient_activate_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.led_classdev, ptr %7, i32 0, i32 26
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !8
  %10 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %45

12:                                               ; preds = %4
  %13 = load i32, ptr %5, align 4
  %14 = icmp ugt i32 %13, 1
  br i1 %14, label %45, label %15

15:                                               ; preds = %12
  %16 = icmp eq i32 %13, 0
  %17 = load i32, ptr %9, align 4
  br i1 %16, label %18, label %26

18:                                               ; preds = %15
  %19 = icmp eq i32 %17, 1
  br i1 %19, label %20, label %45

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.transient_trig_data, ptr %9, i32 0, i32 4
  %22 = call i32 @del_timer(ptr noundef %21) #7
  %23 = load i32, ptr %5, align 4
  store i32 %23, ptr %9, align 4
  %24 = getelementptr inbounds %struct.transient_trig_data, ptr %9, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  call void @led_set_brightness_nosleep(ptr noundef %7, i32 noundef %25) #7
  br label %45

26:                                               ; preds = %15
  %27 = icmp eq i32 %17, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.transient_trig_data, ptr %9, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %28
  store i32 1, ptr %9, align 4
  %33 = getelementptr inbounds %struct.transient_trig_data, ptr %9, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  call void @led_set_brightness_nosleep(ptr noundef %7, i32 noundef %34) #7
  %35 = load i32, ptr %33, align 4
  %36 = icmp eq i32 %35, 255
  %37 = select i1 %36, i32 0, i32 255
  %38 = getelementptr inbounds %struct.transient_trig_data, ptr %9, i32 0, i32 2
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.transient_trig_data, ptr %9, i32 0, i32 4
  %40 = load volatile i32, ptr @jiffies, align 64
  %41 = load i32, ptr %29, align 4
  %42 = call i32 @__msecs_to_jiffies(i32 noundef %41) #7
  %43 = add i32 %42, %40
  %44 = call i32 @mod_timer(ptr noundef %39, i32 noundef %43) #7
  br label %45

45:                                               ; preds = %32, %28, %26, %20, %18, %12, %4
  %46 = phi i32 [ %3, %20 ], [ %10, %4 ], [ -22, %12 ], [ %3, %32 ], [ %3, %28 ], [ %3, %26 ], [ %3, %18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 %46
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @transient_duration_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.led_classdev, ptr %5, i32 0, i32 26
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.transient_trig_data, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef %9)
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @transient_duration_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.led_classdev, ptr %7, i32 0, i32 26
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !8
  %10 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load i32, ptr %5, align 4
  %14 = getelementptr inbounds %struct.transient_trig_data, ptr %9, i32 0, i32 3
  store i32 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %4
  %16 = phi i32 [ %3, %12 ], [ %10, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 %16
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @transient_state_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.led_classdev, ptr %5, i32 0, i32 26
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.transient_trig_data, ptr %7, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 255
  %11 = zext i1 %10 to i32
  %12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %11)
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @transient_state_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.led_classdev, ptr %7, i32 0, i32 26
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !8
  %10 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %4
  %13 = load i32, ptr %5, align 4
  %14 = icmp ugt i32 %13, 1
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = icmp eq i32 %13, 1
  %17 = select i1 %16, i32 255, i32 0
  %18 = getelementptr inbounds %struct.transient_trig_data, ptr %9, i32 0, i32 1
  store i32 %17, ptr %18, align 4
  br label %19

19:                                               ; preds = %15, %12, %4
  %20 = phi i32 [ %3, %15 ], [ %10, %4 ], [ -22, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 %20
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }

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
