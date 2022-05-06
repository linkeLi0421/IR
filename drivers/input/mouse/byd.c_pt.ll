; ModuleID = '/llk/IR/drivers/input/mouse/byd.c_pt.bc'
source_filename = "../drivers/input/mouse/byd.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon.63 = type { i16, i8 }
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
%struct.byd_data = type { %struct.timer_list, ptr, i32, i32, i32, i8, i8, i8 }
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
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }

@.str = private unnamed_addr constant [4 x i8] c"BYD\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"TouchPad\00", align 1
@byd_reset_touchpad.seq = internal unnamed_addr constant [25 x %struct.anon.63] [%struct.anon.63 { i16 4339, i8 -56 }, %struct.anon.63 { i16 4339, i8 100 }, %struct.anon.63 { i16 4339, i8 80 }, %struct.anon.63 { i16 754, i8 0 }, %struct.anon.63 { i16 244, i8 0 }, %struct.anon.63 { i16 4322, i8 0 }, %struct.anon.63 { i16 4320, i8 2 }, %struct.anon.63 { i16 5344, i8 1 }, %struct.anon.63 { i16 4307, i8 1 }, %struct.anon.63 { i16 4304, i8 4 }, %struct.anon.63 { i16 4308, i8 2 }, %struct.anon.63 { i16 4311, i8 4 }, %struct.anon.63 { i16 4312, i8 4 }, %struct.anon.63 { i16 4315, i8 1 }, %struct.anon.63 { i16 4318, i8 0 }, %struct.anon.63 { i16 4323, i8 2 }, %struct.anon.63 { i16 4306, i8 4 }, %struct.anon.63 { i16 4325, i8 4 }, %struct.anon.63 { i16 4316, i8 0 }, %struct.anon.63 { i16 4317, i8 0 }, %struct.anon.63 { i16 4319, i8 0 }, %struct.anon.63 { i16 4321, i8 0 }, %struct.anon.63 { i16 4305, i8 2 }, %struct.anon.63 { i16 4320, i8 0 }, %struct.anon.63 { i16 4322, i8 1 }], align 2
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"byd: Unable to initialize device\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"byd: Always_1 bit not 1. pkt[0] = %02x\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.4 = private unnamed_addr constant [48 x i8] c"byd: Unrecognized Z: pkt = %02x %02x %02x %02x\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @byd_detect(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca [4 x i8], align 4
  %4 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 3, ptr %3, align 4
  %5 = call i32 @ps2_command(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 4328) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %33

7:                                                ; preds = %2
  %8 = call i32 @ps2_command(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 4328) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %7
  %11 = call i32 @ps2_command(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 4328) #5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %10
  %14 = call i32 @ps2_command(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 4328) #5
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %13
  %17 = call i32 @ps2_command(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 1001) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %16
  %20 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 1
  %21 = load i8, ptr %20, align 1
  %22 = icmp ne i8 %21, 3
  %23 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 2
  %24 = load i8, ptr %23, align 2
  %25 = icmp ne i8 %24, 100
  %26 = select i1 %22, i1 true, i1 %25
  %27 = xor i1 %1, true
  %28 = or i1 %26, %27
  %29 = select i1 %26, i32 -19, i32 0
  br i1 %28, label %33, label %30

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 4
  store ptr @.str, ptr %31, align 4
  %32 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 5
  store ptr @.str.1, ptr %32, align 4
  br label %33

33:                                               ; preds = %30, %19, %16, %13, %10, %7, %2
  %34 = phi i32 [ -1, %2 ], [ -1, %7 ], [ -1, %10 ], [ -1, %13 ], [ -1, %16 ], [ %29, %19 ], [ 0, %30 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  ret i32 %34
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ps2_command(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @byd_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4 x i8], align 4
  %3 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @psmouse_reset(ptr noundef %0) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %62

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  br label %12

9:                                                ; preds = %12
  %10 = add nuw nsw i32 %13, 1
  %11 = icmp eq i32 %10, 25
  br i1 %11, label %22, label %12

12:                                               ; preds = %9, %7
  %13 = phi i32 [ 0, %7 ], [ %10, %9 ]
  store i32 0, ptr %2, align 4
  %14 = getelementptr [25 x %struct.anon.63], ptr @byd_reset_touchpad.seq, i32 0, i32 %13
  %15 = getelementptr [25 x %struct.anon.63], ptr @byd_reset_touchpad.seq, i32 0, i32 %13, i32 1
  %16 = load i8, ptr %15, align 2
  store i8 %16, ptr %2, align 4
  %17 = load i16, ptr %14, align 2
  %18 = zext i16 %17 to i32
  %19 = call i32 @ps2_command(ptr noundef %8, ptr noundef nonnull %2, i32 noundef %18) #5
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %9, label %21

21:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  br label %62

22:                                               ; preds = %9
  call void @psmouse_set_state(ptr noundef %0, i32 noundef 4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  %23 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %24 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 40) #6
  %25 = icmp eq ptr %24, null
  br i1 %25, label %62, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.byd_data, ptr %24, i32 0, i32 1
  store ptr %0, ptr %27, align 4
  call void @init_timer_key(ptr noundef nonnull %24, ptr noundef nonnull @byd_clear_touch, i32 noundef 0, ptr noundef null, ptr noundef null) #5
  store ptr %24, ptr %0, align 4
  %28 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 32
  store ptr @byd_disconnect, ptr %28, align 4
  %29 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 30
  store ptr @byd_reconnect, ptr %29, align 4
  %30 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 26
  store ptr @byd_process_byte, ptr %30, align 4
  %31 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 10
  store i8 4, ptr %31, align 2
  %32 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 24
  store i32 0, ptr %32, align 4
  %33 = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = or i32 %34, 1
  store i32 %35, ptr %33, align 4
  %36 = getelementptr %struct.input_dev, ptr %4, i32 0, i32 6, i32 10
  %37 = load i32, ptr %36, align 4
  %38 = or i32 %37, 1056
  store i32 %38, ptr %36, align 4
  %39 = getelementptr %struct.input_dev, ptr %4, i32 0, i32 6, i32 8
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, -458753
  %42 = or i32 %41, 196608
  store i32 %42, ptr %39, align 4
  %43 = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 5
  %44 = load i32, ptr %43, align 4
  %45 = or i32 %44, 8
  store i32 %45, ptr %43, align 4
  call void @input_set_abs_params(ptr noundef %4, i32 noundef 0, i32 noundef 0, i32 noundef 11264, i32 noundef 0, i32 noundef 0) #5
  call void @input_set_abs_params(ptr noundef %4, i32 noundef 1, i32 noundef 0, i32 noundef 6656, i32 noundef 0, i32 noundef 0) #5
  call void @input_alloc_absinfo(ptr noundef %4) #5
  %46 = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 26
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %26
  %50 = getelementptr %struct.input_absinfo, ptr %47, i32 0, i32 5
  store i32 111, ptr %50, align 4
  br label %51

51:                                               ; preds = %49, %26
  call void @input_alloc_absinfo(ptr noundef %4) #5
  %52 = load ptr, ptr %46, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = getelementptr %struct.input_absinfo, ptr %52, i32 1, i32 5
  store i32 111, ptr %55, align 4
  br label %56

56:                                               ; preds = %54, %51
  %57 = load i32, ptr %43, align 4
  %58 = and i32 %57, -5
  store i32 %58, ptr %43, align 4
  %59 = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 7
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, -4
  store i32 %61, ptr %59, align 4
  br label %62

62:                                               ; preds = %56, %22, %21, %1
  %63 = phi i32 [ 0, %56 ], [ -5, %1 ], [ -5, %21 ], [ -12, %22 ]
  ret i32 %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psmouse_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @byd_clear_touch(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.byd_data, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.psmouse, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.serio, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %6) #5
  %7 = getelementptr inbounds %struct.byd_data, ptr %0, i32 0, i32 7
  store i8 0, ptr %7, align 2
  tail call fastcc void @byd_report_input(ptr noundef %3)
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr inbounds %struct.serio, ptr %8, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  %10 = load i16, ptr %9, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  %12 = getelementptr inbounds %struct.byd_data, ptr %0, i32 0, i32 2
  store i32 5632, ptr %12, align 4
  %13 = getelementptr inbounds %struct.byd_data, ptr %0, i32 0, i32 3
  store i32 3328, ptr %13, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @byd_disconnect(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @del_timer(ptr noundef nonnull %2) #5
  %6 = load ptr, ptr %0, align 4
  tail call void @kfree(ptr noundef %6) #5
  store ptr null, ptr %0, align 4
  br label %7

7:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @byd_reconnect(ptr noundef %0) #0 {
  %2 = alloca [4 x i8], align 4
  %3 = tail call i32 @psmouse_reset(ptr noundef %0) #5
  %4 = tail call i32 @byd_detect(ptr noundef %0, i1 noundef zeroext false)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @psmouse_reset(ptr noundef %0) #5
  tail call void @msleep(i32 noundef 1000) #5
  %8 = tail call i32 @byd_detect(ptr noundef %0, i1 noundef zeroext false)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10, !llvm.loop !13

10:                                               ; preds = %6
  %11 = tail call i32 @psmouse_reset(ptr noundef %0) #5
  tail call void @msleep(i32 noundef 1000) #5
  %12 = tail call i32 @byd_detect(ptr noundef %0, i1 noundef zeroext false)
  %13 = icmp eq i32 %12, 0
  br label %14

14:                                               ; preds = %10, %6
  %15 = phi i32 [ %8, %6 ], [ %12, %10 ]
  %16 = phi i1 [ %9, %6 ], [ %13, %10 ]
  br i1 %16, label %17, label %35

17:                                               ; preds = %14, %1
  %18 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  br label %22

19:                                               ; preds = %22
  %20 = add nuw nsw i32 %23, 1
  %21 = icmp eq i32 %20, 25
  br i1 %21, label %31, label %22

22:                                               ; preds = %19, %17
  %23 = phi i32 [ 0, %17 ], [ %20, %19 ]
  store i32 0, ptr %2, align 4
  %24 = getelementptr [25 x %struct.anon.63], ptr @byd_reset_touchpad.seq, i32 0, i32 %23
  %25 = getelementptr [25 x %struct.anon.63], ptr @byd_reset_touchpad.seq, i32 0, i32 %23, i32 1
  %26 = load i8, ptr %25, align 2
  store i8 %26, ptr %2, align 4
  %27 = load i16, ptr %24, align 2
  %28 = zext i16 %27 to i32
  %29 = call i32 @ps2_command(ptr noundef %18, ptr noundef nonnull %2, i32 noundef %28) #5
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %19, label %32

31:                                               ; preds = %19
  call void @psmouse_set_state(ptr noundef %0, i32 noundef 4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  br label %35

32:                                               ; preds = %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  %33 = load ptr, ptr %18, align 4
  %34 = getelementptr inbounds %struct.serio, ptr %33, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.2) #7
  br label %35

35:                                               ; preds = %32, %31, %14
  %36 = phi i32 [ -5, %32 ], [ %15, %14 ], [ 0, %31 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @byd_process_byte(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 7
  %5 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 9
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %1
  %9 = load i8, ptr %4, align 1
  %10 = zext i8 %9 to i32
  %11 = and i32 %10, 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.serio, ptr %15, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.3, i32 noundef %10) #7
  br label %104

17:                                               ; preds = %8, %1
  %18 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 10
  %19 = load i8, ptr %18, align 2
  %20 = icmp ult i8 %6, %19
  br i1 %20, label %104, label %21

21:                                               ; preds = %17
  %22 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 3
  %23 = load i8, ptr %22, align 1
  switch i8 %23, label %74 [
    i8 -8, label %24
    i8 0, label %48
  ]

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.byd_data, ptr %3, i32 0, i32 7
  %26 = load i8, ptr %25, align 2, !range !15
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %87

28:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2)
  store volatile i32 0, ptr %2, align 4
  %29 = getelementptr inbounds %struct.byd_data, ptr %3, i32 0, i32 4
  %30 = load volatile i32, ptr %29, align 4
  %31 = add i32 %30, 7
  store volatile i32 %31, ptr %2, align 4
  %32 = load volatile i32, ptr %2, align 4
  %33 = load volatile i32, ptr @jiffies, align 64
  %34 = sub i32 %32, %33
  %35 = lshr i32 %34, 31
  %36 = trunc i32 %35 to i8
  store i8 %36, ptr %25, align 2
  %37 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 1
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = mul nuw nsw i32 %39, 44
  %41 = getelementptr inbounds %struct.byd_data, ptr %3, i32 0, i32 2
  store i32 %40, ptr %41, align 4
  %42 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 2
  %43 = load i8, ptr %42, align 1
  %44 = xor i8 %43, -1
  %45 = zext i8 %44 to i32
  %46 = mul nuw nsw i32 %45, 26
  %47 = getelementptr inbounds %struct.byd_data, ptr %3, i32 0, i32 3
  store i32 %46, ptr %47, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  br label %87

48:                                               ; preds = %21
  %49 = load i8, ptr %4, align 1
  %50 = zext i8 %49 to i32
  %51 = and i32 %50, 16
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %52, i32 0, i32 -256
  %54 = and i32 %50, 32
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %55, i32 0, i32 -256
  %57 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 1
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  %60 = or i32 %53, %59
  %61 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 2
  %62 = load i8, ptr %61, align 1
  %63 = zext i8 %62 to i32
  %64 = or i32 %56, %63
  %65 = mul nsw i32 %60, 11
  %66 = getelementptr inbounds %struct.byd_data, ptr %3, i32 0, i32 2
  %67 = load i32, ptr %66, align 4
  %68 = add i32 %65, %67
  store i32 %68, ptr %66, align 4
  %69 = mul nsw i32 %64, -11
  %70 = getelementptr inbounds %struct.byd_data, ptr %3, i32 0, i32 3
  %71 = load i32, ptr %70, align 4
  %72 = add i32 %69, %71
  store i32 %72, ptr %70, align 4
  %73 = getelementptr inbounds %struct.byd_data, ptr %3, i32 0, i32 7
  store i8 1, ptr %73, align 2
  br label %87

74:                                               ; preds = %21
  %75 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.serio, ptr %76, i32 0, i32 18
  %78 = load i8, ptr %4, align 4
  %79 = zext i8 %78 to i32
  %80 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 1
  %81 = load i8, ptr %80, align 1
  %82 = zext i8 %81 to i32
  %83 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 2
  %84 = load i8, ptr %83, align 2
  %85 = zext i8 %84 to i32
  %86 = zext i8 %23 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %77, ptr noundef nonnull @.str.4, i32 noundef %79, i32 noundef %82, i32 noundef %85, i32 noundef %86) #7
  br label %104

87:                                               ; preds = %48, %28, %24
  %88 = load i8, ptr %4, align 1
  %89 = and i8 %88, 1
  %90 = getelementptr inbounds %struct.byd_data, ptr %3, i32 0, i32 5
  store i8 %89, ptr %90, align 4
  %91 = load i8, ptr %4, align 1
  %92 = getelementptr inbounds %struct.byd_data, ptr %3, i32 0, i32 6
  %93 = lshr i8 %91, 1
  %94 = and i8 %93, 1
  store i8 %94, ptr %92, align 1
  tail call fastcc void @byd_report_input(ptr noundef %0)
  %95 = getelementptr inbounds %struct.byd_data, ptr %3, i32 0, i32 7
  %96 = load i8, ptr %95, align 2, !range !15
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %87
  %99 = load volatile i32, ptr @jiffies, align 64
  %100 = getelementptr inbounds %struct.byd_data, ptr %3, i32 0, i32 4
  store volatile i32 %99, ptr %100, align 4
  %101 = load volatile i32, ptr @jiffies, align 64
  %102 = add i32 %101, 7
  %103 = tail call i32 @mod_timer(ptr noundef %3, i32 noundef %102) #5
  br label %104

104:                                              ; preds = %98, %87, %74, %17, %13
  %105 = phi i32 [ 0, %74 ], [ 0, %13 ], [ 1, %17 ], [ 2, %98 ], [ 2, %87 ]
  ret i32 %105
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @psmouse_set_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @byd_report_input(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.byd_data, ptr %2, i32 0, i32 7
  %6 = load i8, ptr %5, align 2, !range !15
  %7 = zext i8 %6 to i32
  tail call void @input_event(ptr noundef %4, i32 noundef 1, i32 noundef 330, i32 noundef %7) #5
  %8 = load i8, ptr %5, align 2, !range !15
  %9 = zext i8 %8 to i32
  tail call void @input_event(ptr noundef %4, i32 noundef 1, i32 noundef 325, i32 noundef %9) #5
  %10 = getelementptr inbounds %struct.byd_data, ptr %2, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  tail call void @input_event(ptr noundef %4, i32 noundef 3, i32 noundef 0, i32 noundef %11) #5
  %12 = getelementptr inbounds %struct.byd_data, ptr %2, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  tail call void @input_event(ptr noundef %4, i32 noundef 3, i32 noundef 1, i32 noundef %13) #5
  %14 = getelementptr inbounds %struct.byd_data, ptr %2, i32 0, i32 5
  %15 = load i8, ptr %14, align 4, !range !15
  %16 = zext i8 %15 to i32
  tail call void @input_event(ptr noundef %4, i32 noundef 1, i32 noundef 272, i32 noundef %16) #5
  %17 = getelementptr inbounds %struct.byd_data, ptr %2, i32 0, i32 6
  %18 = load i8, ptr %17, align 1, !range !15
  %19 = zext i8 %18 to i32
  tail call void @input_event(ptr noundef %4, i32 noundef 1, i32 noundef 273, i32 noundef %19) #5
  tail call void @input_event(ptr noundef %4, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_alloc_absinfo(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(2) }
attributes #7 = { cold nounwind }

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
!8 = !{i64 2149178528}
!9 = !{i64 2149174352}
!10 = !{i64 2149174427, i64 2149174454, i64 2149174501, i64 2149174523, i64 2149174551, i64 2149174571}
!11 = !{i64 296186}
!12 = !{i64 2149202672}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.peeled.count", i32 1}
!15 = !{i8 0, i8 2}
