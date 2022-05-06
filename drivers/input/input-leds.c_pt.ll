; ModuleID = '/llk/IR/drivers/input/input-leds.c_pt.bc'
source_filename = "../drivers/input/input-leds.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.input_handler = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, %struct.list_head, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.input_device_id = type { i32, i16, i16, i16, i16, [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }
%struct.anon.63 = type { ptr, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.input_leds = type { %struct.input_handle, i32, [0 x %struct.input_led] }
%struct.input_handle = type { ptr, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head }
%struct.input_led = type { %struct.led_classdev, ptr, i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }

@__initcall__kmod_input_leds__206_209_input_leds_init6 = internal global ptr @input_leds_init, section ".initcall6.init", align 4
@input_leds_handler = internal global %struct.input_handler { ptr null, ptr @input_leds_event, ptr null, ptr null, ptr null, ptr @input_leds_connect, ptr @input_leds_disconnect, ptr null, i8 0, i32 0, ptr @.str, ptr @input_leds_ids, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer }, align 4
@__exitcall_input_leds_exit = internal global ptr @input_leds_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author207 = internal constant [65 x i8] c"input_leds.author=Samuel Thibault <samuel.thibault@ens-lyon.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author208 = internal constant [62 x i8] c"input_leds.author=Dmitry Torokhov <dmitry.torokhov@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description209 = internal constant [44 x i8] c"input_leds.description=Input -> LEDs Bridge\00", section ".modinfo", align 1
@__UNIQUE_ID_file210 = internal constant [41 x i8] c"input_leds.file=drivers/input/input-leds\00", section ".modinfo", align 1
@__UNIQUE_ID_license211 = internal constant [26 x i8] c"input_leds.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [5 x i8] c"leds\00", align 1
@input_leds_ids = internal constant [2 x %struct.input_device_id] [%struct.input_device_id { i32 16, i16 0, i16 0, i16 0, i16 0, [1 x i32] [i32 131072], [24 x i32] zeroinitializer, [1 x i32] zeroinitializer, [2 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, i32 0 }, %struct.input_device_id zeroinitializer], align 4
@input_led_info = internal unnamed_addr constant [16 x %struct.anon.63] [%struct.anon.63 { ptr @.str.3, ptr @.str.4 }, %struct.anon.63 { ptr @.str.5, ptr @.str.6 }, %struct.anon.63 { ptr @.str.7, ptr @.str.8 }, %struct.anon.63 { ptr @.str.9, ptr null }, %struct.anon.63 { ptr @.str.10, ptr @.str.11 }, %struct.anon.63 { ptr @.str.12, ptr null }, %struct.anon.63 { ptr @.str.13, ptr null }, %struct.anon.63 { ptr @.str.14, ptr null }, %struct.anon.63 { ptr @.str.15, ptr null }, %struct.anon.63 { ptr @.str.16, ptr null }, %struct.anon.63 { ptr @.str.17, ptr null }, %struct.anon.63 zeroinitializer, %struct.anon.63 zeroinitializer, %struct.anon.63 zeroinitializer, %struct.anon.63 zeroinitializer, %struct.anon.63 zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s::%s\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to register LED %s: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"numlock\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"kbd-numlock\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"capslock\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"kbd-capslock\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"scrolllock\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"kbd-scrolllock\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"compose\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"kana\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"kbd-kanalock\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"sleep\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"suspend\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"mute\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"misc\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"mail\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"charging\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author207, ptr @__UNIQUE_ID_author208, ptr @__UNIQUE_ID_description209, ptr @__UNIQUE_ID_file210, ptr @__UNIQUE_ID_license211, ptr @__exitcall_input_leds_exit, ptr @__initcall__kmod_input_leds__206_209_input_leds_init6, ptr @input_leds_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @input_leds_init() #0 section ".init.text" {
  %1 = tail call i32 @input_register_handler(ptr noundef nonnull @input_leds_handler) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @input_leds_exit() #0 section ".exit.text" {
  tail call void @input_unregister_handler(ptr noundef nonnull @input_leds_handler) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @input_leds_event(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @input_leds_connect(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #3 {
  %4 = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 10
  %5 = tail call i32 @_find_next_bit_le(ptr noundef %4, i32 noundef 16, i32 noundef 0) #8
  %6 = icmp ult i32 %5, 16
  br i1 %6, label %7, label %96

7:                                                ; preds = %7, %3
  %8 = phi i32 [ %14, %7 ], [ 0, %3 ]
  %9 = phi i32 [ %16, %7 ], [ %5, %3 ]
  %10 = getelementptr [16 x %struct.anon.63], ptr @input_led_info, i32 0, i32 %9
  %11 = load ptr, ptr %10, align 4
  %12 = icmp ne ptr %11, null
  %13 = zext i1 %12 to i32
  %14 = add i32 %8, %13
  %15 = add nuw nsw i32 %9, 1
  %16 = tail call i32 @_find_next_bit_le(ptr noundef %4, i32 noundef 16, i32 noundef %15) #8
  %17 = icmp ult i32 %16, 16
  br i1 %17, label %7, label %18

18:                                               ; preds = %7
  %19 = icmp eq i32 %14, 0
  br i1 %19, label %96, label %20

20:                                               ; preds = %18
  %21 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %14, i32 200) #8
  %22 = extractvalue { i32, i1 } %21, 1
  %23 = extractvalue { i32, i1 } %21, 0
  %24 = add nuw i32 %23, 40
  %25 = select i1 %22, i32 -1, i32 %24
  %26 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %25, i32 noundef 3520) #9
  %27 = icmp eq ptr %26, null
  br i1 %27, label %96, label %28

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.input_leds, ptr %26, i32 0, i32 1
  store i32 %14, ptr %29, align 4
  %30 = getelementptr inbounds %struct.input_handle, ptr %26, i32 0, i32 3
  store ptr %1, ptr %30, align 4
  %31 = getelementptr inbounds %struct.input_handle, ptr %26, i32 0, i32 4
  store ptr %0, ptr %31, align 16
  %32 = getelementptr inbounds %struct.input_handle, ptr %26, i32 0, i32 2
  store ptr @.str, ptr %32, align 8
  store ptr %26, ptr %26, align 64
  %33 = tail call i32 @input_register_handle(ptr noundef nonnull %26) #8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %94

35:                                               ; preds = %28
  %36 = tail call i32 @input_open_device(ptr noundef nonnull %26) #8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %92

38:                                               ; preds = %35
  %39 = tail call i32 @_find_next_bit_le(ptr noundef %4, i32 noundef 16, i32 noundef 0) #8
  %40 = icmp ult i32 %39, 16
  br i1 %40, label %41, label %96

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 40
  %43 = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 40, i32 3
  br label %44

44:                                               ; preds = %76, %41
  %45 = phi i32 [ 0, %41 ], [ %77, %76 ]
  %46 = phi i32 [ %39, %41 ], [ %79, %76 ]
  %47 = getelementptr [16 x %struct.anon.63], ptr @input_led_info, i32 0, i32 %46
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %76, label %50

50:                                               ; preds = %44
  %51 = getelementptr %struct.input_leds, ptr %26, i32 0, i32 2, i32 %45
  %52 = getelementptr %struct.input_leds, ptr %26, i32 0, i32 2, i32 %45, i32 1
  store ptr %26, ptr %52, align 8
  %53 = getelementptr %struct.input_leds, ptr %26, i32 0, i32 2, i32 %45, i32 2
  store i32 %46, ptr %53, align 4
  %54 = load ptr, ptr %43, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load ptr, ptr %42, align 4
  br label %58

58:                                               ; preds = %56, %50
  %59 = phi ptr [ %57, %56 ], [ %54, %50 ]
  %60 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.1, ptr noundef %59, ptr noundef nonnull %48) #8
  store ptr %60, ptr %51, align 8
  %61 = icmp eq ptr %60, null
  br i1 %61, label %81, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.led_classdev, ptr %51, i32 0, i32 2
  store i32 1, ptr %63, align 8
  %64 = getelementptr inbounds %struct.led_classdev, ptr %51, i32 0, i32 7
  store ptr @input_leds_brightness_get, ptr %64, align 4
  %65 = getelementptr inbounds %struct.led_classdev, ptr %51, i32 0, i32 5
  store ptr @input_leds_brightness_set, ptr %65, align 4
  %66 = getelementptr [16 x %struct.anon.63], ptr @input_led_info, i32 0, i32 %46, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.led_classdev, ptr %51, i32 0, i32 14
  store ptr %67, ptr %68, align 4
  %69 = tail call i32 @led_classdev_register_ext(ptr noundef %42, ptr noundef %51, ptr noundef null) #8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %62
  %72 = load ptr, ptr %51, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.2, ptr noundef %72, i32 noundef %69) #10
  %73 = load ptr, ptr %51, align 8
  tail call void @kfree(ptr noundef %73) #8
  br label %81

74:                                               ; preds = %62
  %75 = add i32 %45, 1
  br label %76

76:                                               ; preds = %74, %44
  %77 = phi i32 [ %75, %74 ], [ %45, %44 ]
  %78 = add nuw nsw i32 %46, 1
  %79 = tail call i32 @_find_next_bit_le(ptr noundef %4, i32 noundef 16, i32 noundef %78) #8
  %80 = icmp ult i32 %79, 16
  br i1 %80, label %44, label %96

81:                                               ; preds = %71, %58
  %82 = phi i32 [ %69, %71 ], [ -12, %58 ]
  %83 = add i32 %45, -1
  %84 = icmp sgt i32 %83, -1
  br i1 %84, label %85, label %91

85:                                               ; preds = %85, %81
  %86 = phi i32 [ %89, %85 ], [ %83, %81 ]
  %87 = getelementptr %struct.input_leds, ptr %26, i32 0, i32 2, i32 %86
  tail call void @led_classdev_unregister(ptr noundef %87) #8
  %88 = load ptr, ptr %87, align 8
  tail call void @kfree(ptr noundef %88) #8
  %89 = add nsw i32 %86, -1
  %90 = icmp sgt i32 %86, 0
  br i1 %90, label %85, label %91

91:                                               ; preds = %85, %81
  tail call void @input_close_device(ptr noundef nonnull %26) #8
  br label %92

92:                                               ; preds = %91, %35
  %93 = phi i32 [ %36, %35 ], [ %82, %91 ]
  tail call void @input_unregister_handle(ptr noundef nonnull %26) #8
  br label %94

94:                                               ; preds = %92, %28
  %95 = phi i32 [ %33, %28 ], [ %93, %92 ]
  tail call void @kfree(ptr noundef nonnull %26) #8
  br label %96

96:                                               ; preds = %94, %76, %38, %20, %18, %3
  %97 = phi i32 [ %95, %94 ], [ -6, %18 ], [ -12, %20 ], [ -6, %3 ], [ 0, %38 ], [ 0, %76 ]
  ret i32 %97
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @input_leds_disconnect(ptr noundef %0) #3 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.input_leds, ptr %2, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %6, %1
  %7 = phi i32 [ %10, %6 ], [ 0, %1 ]
  %8 = getelementptr %struct.input_leds, ptr %2, i32 0, i32 2, i32 %7
  tail call void @led_classdev_unregister(ptr noundef %8) #8
  %9 = load ptr, ptr %8, align 4
  tail call void @kfree(ptr noundef %9) #8
  %10 = add nuw i32 %7, 1
  %11 = load i32, ptr %3, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %6, label %13

13:                                               ; preds = %6, %1
  tail call void @input_close_device(ptr noundef %0) #8
  tail call void @input_unregister_handle(ptr noundef %0) #8
  tail call void @kfree(ptr noundef %2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_handle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_open_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @input_leds_brightness_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.input_led, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.input_handle, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.input_led, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 28
  %9 = lshr i32 %7, 5
  %10 = getelementptr i32, ptr %8, i32 %9
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %7, 31
  %13 = shl nuw i32 1, %12
  %14 = and i32 %13, %11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %1
  %20 = phi i32 [ %18, %16 ], [ 0, %1 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @input_leds_brightness_set(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.input_led, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.input_led, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp ne i32 %1, 0
  %8 = zext i1 %7 to i32
  tail call void @input_inject_event(ptr noundef %4, i32 noundef 17, i32 noundef %6, i32 noundef %8) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_close_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_handle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_inject_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }
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
