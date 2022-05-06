; ModuleID = '/llk/IR/drivers/input/mouse/focaltech.c_pt.bc'
source_filename = "../drivers/input/mouse/focaltech.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.psmouse = type { ptr, ptr, %struct.ps2dev, %struct.delayed_work, ptr, ptr, ptr, [8 x i8], i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, [64 x i8], [32 x i8], i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ps2dev = type { ptr, %struct.mutex, %struct.wait_queue_head, i32, [8 x i8], i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.focaltech_data = type { i32, i32, %struct.focaltech_hw_state }
%struct.focaltech_hw_state = type { [5 x %struct.focaltech_finger_state], i32, i8 }
%struct.focaltech_finger_state = type { i8, i8, i32, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }

@focaltech_pnp_ids = internal constant [4 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr null], align 4
@.str = private unnamed_addr constant [10 x i8] c"FocalTech\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Touchpad\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"focaltech: Unable to read the size of the touchpad\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"focaltech: Unable to initialize the device\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"FLT0101\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"FLT0102\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"FLT0103\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"focaltech: Unknown packet type: %02x\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"focaltech: Invalid finger in abs packet: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"focaltech: First finger in rel packet invalid: %d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @focaltech_detect(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = tail call zeroext i1 @psmouse_matches_pnp_id(ptr noundef %0, ptr noundef nonnull @focaltech_pnp_ids) #8
  %4 = and i1 %3, %1
  %5 = select i1 %3, i32 0, i32 -19
  br i1 %4, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 4
  store ptr @.str, ptr %7, align 4
  %8 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 5
  store ptr @.str.1, ptr %8, align 4
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi i32 [ %5, %2 ], [ 0, %6 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @psmouse_matches_pnp_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @focaltech_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [3 x i8], align 1
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 76) #9
  store ptr %4, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %78, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %8 = tail call i32 @ps2_command(ptr noundef %7, ptr noundef null, i32 noundef 246) #8
  %9 = tail call i32 @psmouse_reset(ptr noundef %0) #8
  %10 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %2, i8 0, i32 3, i1 false) #8, !annotation !8
  %11 = call i32 @ps2_command(ptr noundef %7, ptr noundef nonnull %2, i32 noundef 230) #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %6
  store i8 0, ptr %2, align 1
  %14 = call i32 @ps2_command(ptr noundef %7, ptr noundef nonnull %2, i32 noundef 4328) #8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %13
  %17 = call i32 @ps2_command(ptr noundef %7, ptr noundef nonnull %2, i32 noundef 4328) #8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = call i32 @ps2_command(ptr noundef %7, ptr noundef nonnull %2, i32 noundef 4328) #8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  store i8 2, ptr %2, align 1
  %23 = call i32 @ps2_command(ptr noundef %7, ptr noundef nonnull %2, i32 noundef 4328) #8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = call i32 @ps2_command(ptr noundef %7, ptr noundef nonnull %2, i32 noundef 1001) #8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25, %22, %19, %16, %13, %6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #8
  br label %71

29:                                               ; preds = %25
  %30 = getelementptr inbounds [3 x i8], ptr %2, i32 0, i32 1
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = shl nuw nsw i32 %32, 7
  store i32 %33, ptr %10, align 4
  %34 = getelementptr inbounds [3 x i8], ptr %2, i32 0, i32 2
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = shl nuw nsw i32 %36, 7
  %38 = getelementptr inbounds %struct.focaltech_data, ptr %10, i32 0, i32 1
  store i32 %37, ptr %38, align 4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #8
  %39 = call fastcc i32 @focaltech_switch_protocol(ptr noundef %0)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %71

41:                                               ; preds = %29
  %42 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = load ptr, ptr %0, align 4
  %45 = getelementptr inbounds %struct.input_dev, ptr %43, i32 0, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, -13
  %48 = getelementptr inbounds %struct.input_dev, ptr %43, i32 0, i32 7
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, -4
  store i32 %50, ptr %48, align 4
  %51 = getelementptr %struct.input_dev, ptr %43, i32 0, i32 6, i32 8
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, -393217
  store i32 %53, ptr %51, align 4
  %54 = or i32 %47, 8
  store i32 %54, ptr %45, align 4
  %55 = load i32, ptr %44, align 4
  call void @input_set_abs_params(ptr noundef %43, i32 noundef 53, i32 noundef 0, i32 noundef %55, i32 noundef 0, i32 noundef 0) #8
  %56 = getelementptr inbounds %struct.focaltech_data, ptr %44, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  call void @input_set_abs_params(ptr noundef %43, i32 noundef 54, i32 noundef 0, i32 noundef %57, i32 noundef 0, i32 noundef 0) #8
  call void @input_set_abs_params(ptr noundef %43, i32 noundef 28, i32 noundef 0, i32 noundef 15, i32 noundef 0, i32 noundef 0) #8
  %58 = call i32 @input_mt_init_slots(ptr noundef %43, i32 noundef 5, i32 noundef 1) #8
  %59 = getelementptr inbounds %struct.input_dev, ptr %43, i32 0, i32 4
  %60 = load i32, ptr %59, align 4
  %61 = or i32 %60, 4
  store i32 %61, ptr %59, align 4
  %62 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 26
  store ptr @focaltech_process_byte, ptr %62, align 4
  %63 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 10
  store i8 6, ptr %63, align 2
  %64 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 32
  store ptr @focaltech_disconnect, ptr %64, align 4
  %65 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 30
  store ptr @focaltech_reconnect, ptr %65, align 4
  %66 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 33
  store ptr @focaltech_reset, ptr %66, align 4
  %67 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 24
  store i32 0, ptr %67, align 4
  %68 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 28
  store ptr @focaltech_set_resolution, ptr %68, align 4
  %69 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 27
  store ptr @focaltech_set_rate, ptr %69, align 4
  %70 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 29
  store ptr @focaltech_set_scale, ptr %70, align 4
  br label %78

71:                                               ; preds = %29, %28
  %72 = phi ptr [ @.str.2, %28 ], [ @.str.3, %29 ]
  %73 = phi i32 [ -5, %28 ], [ %39, %29 ]
  %74 = load ptr, ptr %7, align 4
  %75 = getelementptr inbounds %struct.serio, ptr %74, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull %72) #10
  %76 = call i32 @ps2_command(ptr noundef %7, ptr noundef null, i32 noundef 246) #8
  %77 = call i32 @psmouse_reset(ptr noundef %0) #8
  call void @kfree(ptr noundef nonnull %4) #8
  br label %78

78:                                               ; preds = %71, %41, %1
  %79 = phi i32 [ %73, %71 ], [ 0, %41 ], [ -12, %1 ]
  ret i32 %79
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @focaltech_reset(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %3 = tail call i32 @ps2_command(ptr noundef %2, ptr noundef null, i32 noundef 246) #8
  %4 = tail call i32 @psmouse_reset(ptr noundef %0) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @focaltech_switch_protocol(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [3 x i8], align 1
  %3 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %2, i8 0, i64 3, i1 false)
  %4 = call i32 @ps2_command(ptr noundef %3, ptr noundef nonnull %2, i32 noundef 4344) #8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %1
  %7 = call i32 @ps2_command(ptr noundef %3, ptr noundef nonnull %2, i32 noundef 4344) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %6
  %10 = call i32 @ps2_command(ptr noundef %3, ptr noundef nonnull %2, i32 noundef 4344) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %9
  store i8 1, ptr %2, align 1
  %13 = call i32 @ps2_command(ptr noundef %3, ptr noundef nonnull %2, i32 noundef 4344) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = call i32 @ps2_command(ptr noundef %3, ptr noundef nonnull %2, i32 noundef 230) #8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = call i32 @ps2_command(ptr noundef %3, ptr noundef nonnull %2, i32 noundef 244) #8
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 0, i32 -5
  br label %22

22:                                               ; preds = %18, %15, %12, %9, %6, %1
  %23 = phi i32 [ -5, %1 ], [ -5, %6 ], [ -5, %9 ], [ -5, %12 ], [ -5, %15 ], [ %21, %18 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #8
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @focaltech_process_byte(ptr noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 9
  %3 = load i8, ptr %2, align 1
  %4 = icmp ugt i8 %3, 5
  br i1 %4, label %5, label %182

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 7
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = and i32 %8, 15
  switch i32 %9, label %140 [
    i32 3, label %10
    i32 6, label %50
    i32 9, label %91
  ]

10:                                               ; preds = %5
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.focaltech_data, ptr %11, i32 0, i32 2
  %13 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 1
  %14 = load i8, ptr %13, align 1
  %15 = getelementptr inbounds %struct.focaltech_data, ptr %11, i32 0, i32 2, i32 2
  %16 = lshr i8 %7, 4
  %17 = and i8 %16, 1
  store i8 %17, ptr %15, align 4
  %18 = and i8 %14, 1
  %19 = icmp eq i8 %18, 0
  store i8 %18, ptr %12, align 4
  br i1 %19, label %20, label %22

20:                                               ; preds = %10
  %21 = getelementptr %struct.focaltech_data, ptr %11, i32 0, i32 2, i32 0, i32 0, i32 1
  store i8 0, ptr %21, align 1
  br label %22

22:                                               ; preds = %20, %10
  %23 = lshr i8 %14, 1
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  %26 = getelementptr %struct.focaltech_data, ptr %11, i32 0, i32 2, i32 0, i32 1
  store i8 %24, ptr %26, align 4
  br i1 %25, label %27, label %29

27:                                               ; preds = %22
  %28 = getelementptr %struct.focaltech_data, ptr %11, i32 0, i32 2, i32 0, i32 1, i32 1
  store i8 0, ptr %28, align 1
  br label %29

29:                                               ; preds = %27, %22
  %30 = lshr i8 %14, 2
  %31 = and i8 %30, 1
  %32 = icmp eq i8 %31, 0
  %33 = getelementptr %struct.focaltech_data, ptr %11, i32 0, i32 2, i32 0, i32 2
  store i8 %31, ptr %33, align 4
  br i1 %32, label %34, label %36

34:                                               ; preds = %29
  %35 = getelementptr %struct.focaltech_data, ptr %11, i32 0, i32 2, i32 0, i32 2, i32 1
  store i8 0, ptr %35, align 1
  br label %36

36:                                               ; preds = %34, %29
  %37 = lshr i8 %14, 3
  %38 = and i8 %37, 1
  %39 = icmp eq i8 %38, 0
  %40 = getelementptr %struct.focaltech_data, ptr %11, i32 0, i32 2, i32 0, i32 3
  store i8 %38, ptr %40, align 4
  br i1 %39, label %41, label %43

41:                                               ; preds = %36
  %42 = getelementptr %struct.focaltech_data, ptr %11, i32 0, i32 2, i32 0, i32 3, i32 1
  store i8 0, ptr %42, align 1
  br label %43

43:                                               ; preds = %41, %36
  %44 = lshr i8 %14, 4
  %45 = and i8 %44, 1
  %46 = icmp eq i8 %45, 0
  %47 = getelementptr %struct.focaltech_data, ptr %11, i32 0, i32 2, i32 0, i32 4
  store i8 %45, ptr %47, align 4
  br i1 %46, label %48, label %144

48:                                               ; preds = %43
  %49 = getelementptr %struct.focaltech_data, ptr %11, i32 0, i32 2, i32 0, i32 4, i32 1
  store i8 0, ptr %49, align 1
  br label %144

50:                                               ; preds = %5
  %51 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 1
  %52 = load i8, ptr %51, align 1
  %53 = lshr i8 %52, 4
  %54 = zext i8 %53 to i32
  %55 = add nsw i32 %54, -1
  %56 = icmp ugt i32 %55, 4
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.serio, ptr %59, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.8, i32 noundef %55) #10
  br label %144

61:                                               ; preds = %50
  %62 = load ptr, ptr %0, align 4
  %63 = getelementptr inbounds %struct.focaltech_data, ptr %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.focaltech_data, ptr %62, i32 0, i32 2, i32 2
  %65 = lshr i8 %7, 4
  %66 = and i8 %65, 1
  store i8 %66, ptr %64, align 4
  %67 = load i8, ptr %51, align 1
  %68 = and i8 %67, 15
  %69 = zext i8 %68 to i32
  %70 = shl nuw nsw i32 %69, 8
  %71 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 2
  %72 = load i8, ptr %71, align 1
  %73 = zext i8 %72 to i32
  %74 = or i32 %70, %73
  %75 = getelementptr [5 x %struct.focaltech_finger_state], ptr %63, i32 0, i32 %55, i32 2
  store i32 %74, ptr %75, align 4
  %76 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 3
  %77 = load i8, ptr %76, align 1
  %78 = zext i8 %77 to i32
  %79 = shl nuw nsw i32 %78, 8
  %80 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 4
  %81 = load i8, ptr %80, align 1
  %82 = zext i8 %81 to i32
  %83 = or i32 %79, %82
  %84 = getelementptr [5 x %struct.focaltech_finger_state], ptr %63, i32 0, i32 %55, i32 3
  store i32 %83, ptr %84, align 4
  %85 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 5
  %86 = load i8, ptr %85, align 1
  %87 = lshr i8 %86, 4
  %88 = zext i8 %87 to i32
  %89 = getelementptr inbounds %struct.focaltech_data, ptr %62, i32 0, i32 2, i32 1
  store i32 %88, ptr %89, align 4
  %90 = getelementptr [5 x %struct.focaltech_finger_state], ptr %63, i32 0, i32 %55, i32 1
  store i8 1, ptr %90, align 1
  br label %144

91:                                               ; preds = %5
  %92 = load ptr, ptr %0, align 4
  %93 = getelementptr inbounds %struct.focaltech_data, ptr %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.focaltech_data, ptr %92, i32 0, i32 2, i32 2
  %95 = lshr i8 %7, 7
  store i8 %95, ptr %94, align 4
  %96 = load i8, ptr %6, align 1
  %97 = lshr i8 %96, 4
  %98 = and i8 %97, 7
  %99 = zext i8 %98 to i32
  %100 = add nsw i32 %99, -1
  %101 = icmp ult i8 %98, 6
  br i1 %101, label %102, label %115

102:                                              ; preds = %91
  %103 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 1
  %104 = load i8, ptr %103, align 1
  %105 = zext i8 %104 to i32
  %106 = getelementptr [5 x %struct.focaltech_finger_state], ptr %93, i32 0, i32 %100, i32 2
  %107 = load i32, ptr %106, align 4
  %108 = add i32 %107, %105
  store i32 %108, ptr %106, align 4
  %109 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 2
  %110 = load i8, ptr %109, align 1
  %111 = zext i8 %110 to i32
  %112 = getelementptr [5 x %struct.focaltech_finger_state], ptr %93, i32 0, i32 %100, i32 3
  %113 = load i32, ptr %112, align 4
  %114 = add i32 %113, %111
  store i32 %114, ptr %112, align 4
  br label %119

115:                                              ; preds = %91
  %116 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.serio, ptr %117, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %118, ptr noundef nonnull @.str.9, i32 noundef %100) #10
  br label %119

119:                                              ; preds = %115, %102
  %120 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 3
  %121 = load i8, ptr %120, align 1
  %122 = lshr i8 %121, 4
  %123 = and i8 %122, 7
  %124 = icmp ult i8 %123, 6
  br i1 %124, label %125, label %144

125:                                              ; preds = %119
  %126 = zext i8 %123 to i32
  %127 = add nsw i32 %126, -1
  %128 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 4
  %129 = load i8, ptr %128, align 1
  %130 = zext i8 %129 to i32
  %131 = getelementptr [5 x %struct.focaltech_finger_state], ptr %93, i32 0, i32 %127, i32 2
  %132 = load i32, ptr %131, align 4
  %133 = add i32 %132, %130
  store i32 %133, ptr %131, align 4
  %134 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 5
  %135 = load i8, ptr %134, align 1
  %136 = zext i8 %135 to i32
  %137 = getelementptr [5 x %struct.focaltech_finger_state], ptr %93, i32 0, i32 %127, i32 3
  %138 = load i32, ptr %137, align 4
  %139 = add i32 %138, %136
  store i32 %139, ptr %137, align 4
  br label %144

140:                                              ; preds = %5
  %141 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.serio, ptr %142, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %143, ptr noundef nonnull @.str.7, i32 noundef %8) #10
  br label %144

144:                                              ; preds = %140, %125, %119, %61, %57, %48, %43
  %145 = load ptr, ptr %0, align 4
  %146 = getelementptr inbounds %struct.focaltech_data, ptr %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 1
  %148 = load ptr, ptr %147, align 4
  %149 = getelementptr inbounds %struct.focaltech_data, ptr %145, i32 0, i32 1
  %150 = getelementptr inbounds %struct.focaltech_data, ptr %145, i32 0, i32 2, i32 1
  br label %151

151:                                              ; preds = %175, %144
  %152 = phi i32 [ 0, %144 ], [ %176, %175 ]
  %153 = getelementptr [5 x %struct.focaltech_finger_state], ptr %146, i32 0, i32 %152
  %154 = load i8, ptr %153, align 4, !range !9
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %173, label %156

156:                                              ; preds = %151
  %157 = getelementptr [5 x %struct.focaltech_finger_state], ptr %146, i32 0, i32 %152, i32 1
  %158 = load i8, ptr %157, align 1, !range !9
  %159 = icmp ne i8 %158, 0
  tail call void @input_event(ptr noundef %148, i32 noundef 3, i32 noundef 47, i32 noundef %152) #8
  %160 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %148, i32 noundef 0, i1 noundef zeroext %159) #8
  br i1 %159, label %161, label %175

161:                                              ; preds = %156
  %162 = getelementptr [5 x %struct.focaltech_finger_state], ptr %146, i32 0, i32 %152, i32 2
  %163 = load i32, ptr %162, align 4
  %164 = load i32, ptr %145, align 4
  %165 = tail call i32 @llvm.umin.i32(i32 %163, i32 %164) #8
  %166 = getelementptr [5 x %struct.focaltech_finger_state], ptr %146, i32 0, i32 %152, i32 3
  %167 = load i32, ptr %166, align 4
  %168 = load i32, ptr %149, align 4
  %169 = tail call i32 @llvm.umin.i32(i32 %167, i32 %168) #8
  tail call void @input_event(ptr noundef %148, i32 noundef 3, i32 noundef 53, i32 noundef %165) #8
  %170 = load i32, ptr %149, align 4
  %171 = sub i32 %170, %169
  tail call void @input_event(ptr noundef %148, i32 noundef 3, i32 noundef 54, i32 noundef %171) #8
  %172 = load i32, ptr %150, align 4
  tail call void @input_event(ptr noundef %148, i32 noundef 3, i32 noundef 28, i32 noundef %172) #8
  br label %175

173:                                              ; preds = %151
  tail call void @input_event(ptr noundef %148, i32 noundef 3, i32 noundef 47, i32 noundef %152) #8
  %174 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %148, i32 noundef 0, i1 noundef zeroext false) #8
  br label %175

175:                                              ; preds = %173, %161, %156
  %176 = add nuw nsw i32 %152, 1
  %177 = icmp eq i32 %176, 5
  br i1 %177, label %178, label %151

178:                                              ; preds = %175
  tail call void @input_mt_report_pointer_emulation(ptr noundef %148, i1 noundef zeroext true) #8
  %179 = getelementptr inbounds %struct.focaltech_data, ptr %145, i32 0, i32 2, i32 2
  %180 = load i8, ptr %179, align 4, !range !9
  %181 = zext i8 %180 to i32
  tail call void @input_event(ptr noundef %148, i32 noundef 1, i32 noundef 272, i32 noundef %181) #8
  tail call void @input_event(ptr noundef %148, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br label %182

182:                                              ; preds = %178, %1
  %183 = phi i32 [ 2, %178 ], [ 1, %1 ]
  ret i32 %183
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @focaltech_disconnect(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %3 = tail call i32 @ps2_command(ptr noundef %2, ptr noundef null, i32 noundef 246) #8
  %4 = tail call i32 @psmouse_reset(ptr noundef %0) #8
  %5 = load ptr, ptr %0, align 4
  tail call void @kfree(ptr noundef %5) #8
  store ptr null, ptr %0, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @focaltech_reconnect(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %3 = tail call i32 @ps2_command(ptr noundef %2, ptr noundef null, i32 noundef 246) #8
  %4 = tail call i32 @psmouse_reset(ptr noundef %0) #8
  %5 = tail call fastcc i32 @focaltech_switch_protocol(ptr noundef %0)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr inbounds %struct.serio, ptr %8, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.3) #10
  br label %10

10:                                               ; preds = %7, %1
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @focaltech_set_resolution(ptr nocapture noundef %0, i32 noundef %1) #4 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @focaltech_set_rate(ptr nocapture noundef %0, i32 noundef %1) #4 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @focaltech_set_scale(ptr nocapture noundef %0, i32 noundef %1) #4 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ps2_command(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psmouse_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_report_pointer_emulation(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!9 = !{i8 0, i8 2}
