; ModuleID = '/llk/IR/drivers/leds/trigger/ledtrig-gpio.c_pt.bc'
source_filename = "../drivers/leds/trigger/ledtrig-gpio.c"
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
%struct.gpio_trig_data = type { ptr, i32, i32, i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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

@__initcall__kmod_ledtrig_gpio__210_198_gpio_led_trigger_init6 = internal global ptr @gpio_led_trigger_init, section ".initcall6.init", align 4
@gpio_led_trigger = internal global %struct.led_trigger { ptr @.str, ptr @gpio_trig_activate, ptr @gpio_trig_deactivate, ptr null, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr @gpio_trig_groups }, align 4
@__exitcall_gpio_led_trigger_exit = internal global ptr @gpio_led_trigger_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author211 = internal constant [54 x i8] c"ledtrig_gpio.author=Felipe Balbi <me@felipebalbi.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description212 = internal constant [42 x i8] c"ledtrig_gpio.description=GPIO LED trigger\00", section ".modinfo", align 1
@__UNIQUE_ID_file213 = internal constant [52 x i8] c"ledtrig_gpio.file=drivers/leds/trigger/ledtrig-gpio\00", section ".modinfo", align 1
@__UNIQUE_ID_license214 = internal constant [28 x i8] c"ledtrig_gpio.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@gpio_trig_groups = internal global [2 x ptr] [ptr @gpio_trig_group, ptr null], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@gpio_trig_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @gpio_trig_attrs, ptr null }, align 4
@gpio_trig_attrs = internal global [4 x ptr] [ptr @dev_attr_desired_brightness, ptr @dev_attr_inverted, ptr @dev_attr_gpio, ptr null], align 4
@dev_attr_desired_brightness = internal global %struct.device_attribute { %struct.attribute { ptr @.str.1, i16 420 }, ptr @gpio_trig_brightness_show, ptr @gpio_trig_brightness_store }, align 4
@dev_attr_inverted = internal global %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 420 }, ptr @gpio_trig_inverted_show, ptr @gpio_trig_inverted_store }, align 4
@dev_attr_gpio = internal global %struct.device_attribute { %struct.attribute { ptr @.str, i16 420 }, ptr @gpio_trig_gpio_show, ptr @gpio_trig_gpio_store }, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"desired_brightness\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"invalid value\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"inverted\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"couldn't read gpio number\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"ledtrig-gpio\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"request_irq failed with error %d\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author211, ptr @__UNIQUE_ID_description212, ptr @__UNIQUE_ID_file213, ptr @__UNIQUE_ID_license214, ptr @__exitcall_gpio_led_trigger_exit, ptr @__initcall__kmod_ledtrig_gpio__210_198_gpio_led_trigger_init6, ptr @gpio_led_trigger_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @gpio_led_trigger_init() #0 section ".init.text" {
  %1 = tail call i32 @led_trigger_register(ptr noundef nonnull @gpio_led_trigger) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @gpio_led_trigger_exit() #0 section ".exit.text" {
  tail call void @led_trigger_unregister(ptr noundef nonnull @gpio_led_trigger) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_trigger_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_trig_activate(ptr noundef %0) #2 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 16) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  store ptr %0, ptr %3, align 8
  %6 = getelementptr inbounds %struct.gpio_trig_data, ptr %3, i32 0, i32 3
  store i32 -2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 26
  store ptr %3, ptr %7, align 4
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi i32 [ 0, %5 ], [ -12, %1 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gpio_trig_deactivate(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 26
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gpio_trig_data, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %5, 2048
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = tail call ptr @gpio_to_desc(i32 noundef %5) #8
  %9 = tail call i32 @gpiod_to_irq(ptr noundef %8) #8
  %10 = tail call ptr @free_irq(i32 noundef %9, ptr noundef %0) #8
  br label %11

11:                                               ; preds = %7, %1
  tail call void @kfree(ptr noundef %3) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_trig_brightness_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.led_classdev, ptr %5, i32 0, i32 26
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.gpio_trig_data, ptr %7, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %9)
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_trig_brightness_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.led_classdev, ptr %7, i32 0, i32 26
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !8
  %10 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %2, ptr noundef nonnull @.str.3, ptr noundef nonnull %5)
  %11 = icmp slt i32 %10, 1
  %12 = load i32, ptr %5, align 4
  %13 = icmp ugt i32 %12, 255
  %14 = select i1 %11, i1 true, i1 %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.4) #10
  br label %18

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.gpio_trig_data, ptr %9, i32 0, i32 1
  store i32 %12, ptr %17, align 4
  br label %18

18:                                               ; preds = %16, %15
  %19 = phi i32 [ -22, %15 ], [ %3, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret i32 %19
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_trig_inverted_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.led_classdev, ptr %5, i32 0, i32 26
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.gpio_trig_data, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %9)
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_trig_inverted_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.led_classdev, ptr %7, i32 0, i32 26
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !8
  %10 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #8
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %42, label %12

12:                                               ; preds = %4
  %13 = load i32, ptr %5, align 4
  %14 = icmp ugt i32 %13, 1
  br i1 %14, label %42, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.gpio_trig_data, ptr %9, i32 0, i32 2
  store i32 %13, ptr %16, align 4
  %17 = getelementptr inbounds %struct.gpio_trig_data, ptr %9, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = icmp ult i32 %18, 2048
  br i1 %19, label %20, label %42

20:                                               ; preds = %15
  %21 = load ptr, ptr %8, align 4
  %22 = getelementptr inbounds %struct.gpio_trig_data, ptr %21, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = call ptr @gpio_to_desc(i32 noundef %23) #8
  %25 = call i32 @gpiod_get_raw_value_cansleep(ptr noundef %24) #8
  %26 = getelementptr inbounds %struct.gpio_trig_data, ptr %21, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  %29 = icmp eq i32 %25, 0
  %30 = zext i1 %29 to i32
  %31 = select i1 %28, i32 %25, i32 %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %20
  %34 = getelementptr inbounds %struct.gpio_trig_data, ptr %21, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  %37 = load ptr, ptr %21, align 4
  br i1 %36, label %39, label %38

38:                                               ; preds = %33
  call void @led_set_brightness_nosleep(ptr noundef %37, i32 noundef %35) #8
  br label %42

39:                                               ; preds = %33
  call void @led_set_brightness_nosleep(ptr noundef %37, i32 noundef 255) #8
  br label %42

40:                                               ; preds = %20
  %41 = load ptr, ptr %21, align 4
  call void @led_set_brightness_nosleep(ptr noundef %41, i32 noundef 0) #8
  br label %42

42:                                               ; preds = %40, %39, %38, %15, %12, %4
  %43 = phi i32 [ %10, %4 ], [ -22, %12 ], [ %3, %15 ], [ %3, %38 ], [ %3, %39 ], [ %3, %40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_trig_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 26
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.gpio_trig_data, ptr %4, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = tail call ptr @gpio_to_desc(i32 noundef %6) #8
  %8 = tail call i32 @gpiod_get_raw_value_cansleep(ptr noundef %7) #8
  %9 = getelementptr inbounds %struct.gpio_trig_data, ptr %4, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  %12 = icmp eq i32 %8, 0
  %13 = zext i1 %12 to i32
  %14 = select i1 %11, i32 %8, i32 %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.gpio_trig_data, ptr %4, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  %20 = load ptr, ptr %4, align 4
  br i1 %19, label %22, label %21

21:                                               ; preds = %16
  tail call void @led_set_brightness_nosleep(ptr noundef %20, i32 noundef %18) #8
  br label %25

22:                                               ; preds = %16
  tail call void @led_set_brightness_nosleep(ptr noundef %20, i32 noundef 255) #8
  br label %25

23:                                               ; preds = %2
  %24 = load ptr, ptr %4, align 4
  tail call void @led_set_brightness_nosleep(ptr noundef %24, i32 noundef 0) #8
  br label %25

25:                                               ; preds = %23, %22, %21
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_set_brightness_nosleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_raw_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_trig_gpio_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.led_classdev, ptr %5, i32 0, i32 26
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.gpio_trig_data, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %9)
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_trig_gpio_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.led_classdev, ptr %7, i32 0, i32 26
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !8
  %10 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %2, ptr noundef nonnull @.str.3, ptr noundef nonnull %5)
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.6) #10
  br label %65

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.gpio_trig_data, ptr %9, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = load i32, ptr %5, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %65, label %18

18:                                               ; preds = %13
  %19 = icmp ult i32 %16, 2048
  br i1 %19, label %29, label %20

20:                                               ; preds = %18
  %21 = icmp ult i32 %15, 2048
  br i1 %21, label %22, label %27

22:                                               ; preds = %20
  %23 = call ptr @gpio_to_desc(i32 noundef %15) #8
  %24 = call i32 @gpiod_to_irq(ptr noundef %23) #8
  %25 = call ptr @free_irq(i32 noundef %24, ptr noundef %7) #8
  %26 = load i32, ptr %5, align 4
  br label %27

27:                                               ; preds = %22, %20
  %28 = phi i32 [ %26, %22 ], [ %16, %20 ]
  store i32 %28, ptr %14, align 4
  br label %65

29:                                               ; preds = %18
  %30 = call ptr @gpio_to_desc(i32 noundef %16) #8
  %31 = call i32 @gpiod_to_irq(ptr noundef %30) #8
  %32 = call i32 @request_threaded_irq(i32 noundef %31, ptr noundef null, ptr noundef nonnull @gpio_trig_irq, i32 noundef 8323, ptr noundef nonnull @.str.7, ptr noundef %7) #8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %32) #10
  br label %65

35:                                               ; preds = %29
  %36 = load i32, ptr %14, align 4
  %37 = icmp ult i32 %36, 2048
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = call ptr @gpio_to_desc(i32 noundef %36) #8
  %40 = call i32 @gpiod_to_irq(ptr noundef %39) #8
  %41 = call ptr @free_irq(i32 noundef %40, ptr noundef %7) #8
  br label %42

42:                                               ; preds = %38, %35
  %43 = load i32, ptr %5, align 4
  store i32 %43, ptr %14, align 4
  %44 = load ptr, ptr %8, align 4
  %45 = getelementptr inbounds %struct.gpio_trig_data, ptr %44, i32 0, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = call ptr @gpio_to_desc(i32 noundef %46) #8
  %48 = call i32 @gpiod_get_raw_value_cansleep(ptr noundef %47) #8
  %49 = getelementptr inbounds %struct.gpio_trig_data, ptr %44, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  %52 = icmp eq i32 %48, 0
  %53 = zext i1 %52 to i32
  %54 = select i1 %51, i32 %48, i32 %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %42
  %57 = getelementptr inbounds %struct.gpio_trig_data, ptr %44, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  %60 = load ptr, ptr %44, align 4
  br i1 %59, label %62, label %61

61:                                               ; preds = %56
  call void @led_set_brightness_nosleep(ptr noundef %60, i32 noundef %58) #8
  br label %65

62:                                               ; preds = %56
  call void @led_set_brightness_nosleep(ptr noundef %60, i32 noundef 255) #8
  br label %65

63:                                               ; preds = %42
  %64 = load ptr, ptr %44, align 4
  call void @led_set_brightness_nosleep(ptr noundef %64, i32 noundef 0) #8
  br label %65

65:                                               ; preds = %63, %62, %61, %34, %27, %13, %12
  %66 = phi i32 [ -22, %12 ], [ %3, %27 ], [ %3, %13 ], [ %32, %34 ], [ %3, %61 ], [ %3, %62 ], [ %3, %63 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret i32 %66
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
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
