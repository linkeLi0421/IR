; ModuleID = '/llk/IR/drivers/input/mouse/cyapa_gen3.c_pt.bc'
source_filename = "../drivers/input/mouse/cyapa_gen3.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cyapa_cmd_len = type { i8, i8 }
%struct.cyapa_dev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cyapa = type { i32, [3 x i8], i8, ptr, ptr, ptr, [32 x i8], i8, i8, i8, i16, i8, i16, i8, i16, %struct.gen6_interval_setting, [16 x i8], i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, %struct.mutex, ptr, %union.cyapa_cmd_states }
%struct.gen6_interval_setting = type { i16, i16, i16 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%union.cyapa_cmd_states = type { %struct.cyapa_pip_cmd_states }
%struct.cyapa_pip_cmd_states = type { %struct.mutex, %struct.completion, %struct.atomic_t, i8, i8, ptr, ptr, ptr, i32, %struct.mutex, [256 x i8], [256 x i8] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.firmware = type { i32, ptr, ptr }
%struct.cyapa_reg_data = type { i8, i8, [5 x %struct.cyapa_touch] }
%struct.cyapa_touch = type { i8, i8, i8, i8, i8 }
%struct.gen3_write_block_cmd = type { i8, i8, [8 x i8], i16, [64 x i8], i8, i8 }

@cyapa_smbus_cmds = internal unnamed_addr constant [15 x %struct.cyapa_cmd_len] [%struct.cyapa_cmd_len { i8 0, i8 1 }, %struct.cyapa_cmd_len { i8 2, i8 1 }, %struct.cyapa_cmd_len { i8 4, i8 1 }, %struct.cyapa_cmd_len { i8 -128, i8 27 }, %struct.cyapa_cmd_len { i8 -112, i8 2 }, %struct.cyapa_cmd_len { i8 -104, i8 27 }, %struct.cyapa_cmd_len { i8 -64, i8 3 }, %struct.cyapa_cmd_len { i8 -62, i8 16 }, %struct.cyapa_cmd_len { i8 -60, i8 16 }, %struct.cyapa_cmd_len { i8 -58, i8 16 }, %struct.cyapa_cmd_len { i8 -56, i8 32 }, %struct.cyapa_cmd_len { i8 -54, i8 16 }, %struct.cyapa_cmd_len { i8 -52, i8 16 }, %struct.cyapa_cmd_len { i8 6, i8 1 }, %struct.cyapa_cmd_len { i8 8, i8 1 }], align 1
@cyapa_i2c_cmds = internal unnamed_addr constant [15 x %struct.cyapa_cmd_len] [%struct.cyapa_cmd_len { i8 40, i8 1 }, %struct.cyapa_cmd_len { i8 41, i8 1 }, %struct.cyapa_cmd_len { i8 0, i8 1 }, %struct.cyapa_cmd_len { i8 0, i8 27 }, %struct.cyapa_cmd_len { i8 40, i8 0 }, %struct.cyapa_cmd_len { i8 42, i8 27 }, %struct.cyapa_cmd_len { i8 0, i8 3 }, %struct.cyapa_cmd_len { i8 0, i8 16 }, %struct.cyapa_cmd_len { i8 0, i8 16 }, %struct.cyapa_cmd_len { i8 16, i8 16 }, %struct.cyapa_cmd_len { i8 0, i8 32 }, %struct.cyapa_cmd_len { i8 42, i8 16 }, %struct.cyapa_cmd_len { i8 0, i8 32 }, %struct.cyapa_cmd_len { i8 38, i8 1 }, %struct.cyapa_cmd_len { i8 39, i8 1 }], align 1
@cyapa_gen3_ops = dso_local local_unnamed_addr constant %struct.cyapa_dev_ops { ptr @cyapa_gen3_check_fw, ptr @cyapa_gen3_bl_enter, ptr @cyapa_gen3_bl_activate, ptr @cyapa_gen3_bl_initiate, ptr @cyapa_gen3_do_fw_update, ptr @cyapa_gen3_bl_deactivate, ptr @cyapa_gen3_show_baseline, ptr @cyapa_gen3_do_calibrate, ptr @cyapa_gen3_initialize, ptr @cyapa_gen3_state_parse, ptr @cyapa_gen3_do_operational_check, ptr @cyapa_gen3_irq_handler, ptr @cyapa_gen3_irq_cmd_handler, ptr @cyapa_gen3_empty_output_data, ptr @cyapa_gen3_set_power_mode, ptr @cyapa_gen3_set_proximity }, align 4
@.str = private unnamed_addr constant [43 x i8] c"invalid firmware size = %zu, expected %u.\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"%s %04x, expected: %04x\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"invalid firmware header checksum = \00", align 1
@bl_activate = internal constant [11 x i8] c"\00\FF8\00\01\02\03\04\05\06\07", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"FW update aborted, write image: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"FW update aborted, write checksum: %d\0A\00", align 1
@bl_deactivate = internal constant [11 x i8] c"\00\FF;\00\01\02\03\04\05\06\07", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Error reading dev status. err = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"Trackpad device is busy. device state = 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"Failed to send report baseline command. %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"Device timed out going to Normal state.\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"Failed to read max baseline. err = %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"Failed to read min baseline. err = %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Error reading dev status: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"Trackpad device is busy, device state: 0x%02x\0A\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"Failed to send calibrate command: %d\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.15 = private unnamed_addr constant [31 x i8] c"Failed to calibrate. Timeout.\0A\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"failed to bl_deactivate: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"failed to bl_exit: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"%s: set full power mode failed: %d\0A\00", align 1
@__func__.cyapa_gen3_do_operational_check = private unnamed_addr constant [32 x i8] c"cyapa_gen3_do_operational_check\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"unsupported protocol version (%d)\00", align 1
@product_id = external dso_local constant [0 x i8], align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"unsupported product ID (%s)\0A\00", align 1
@bl_exit = internal constant [11 x i8] c"\00\FF\A5\00\01\02\03\04\05\06\07", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"failed to read report data, (%d)\0A\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"invalid device state bytes: %02x %02x\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cyapa_smbus_read_block(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = zext i8 %1 to i32
  %8 = and i32 %7, 128
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %37, label %10

10:                                               ; preds = %4
  %11 = and i32 %7, 64
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %37, label %23

15:                                               ; preds = %10
  %16 = or i8 %1, 1
  %17 = tail call i32 @i2c_smbus_read_block_data(ptr noundef %6, i8 noundef zeroext %16, ptr noundef %3) #12
  br label %33

18:                                               ; preds = %23
  %19 = add i8 %25, 1
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 %20, 5
  %22 = icmp ult i32 %21, %2
  br i1 %22, label %23, label %33

23:                                               ; preds = %18, %13
  %24 = phi i32 [ %21, %18 ], [ 0, %13 ]
  %25 = phi i8 [ %19, %18 ], [ 0, %13 ]
  %26 = shl i8 %25, 1
  %27 = and i8 %26, 6
  %28 = or i8 %27, %1
  %29 = or i8 %28, 1
  %30 = getelementptr i8, ptr %3, i32 %24
  %31 = tail call i32 @i2c_smbus_read_block_data(ptr noundef %6, i8 noundef zeroext %29, ptr noundef %30) #12
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %37, label %18

33:                                               ; preds = %18, %15
  %34 = phi i32 [ %17, %15 ], [ %31, %18 ]
  %35 = icmp sgt i32 %34, 0
  %36 = select i1 %35, i32 %2, i32 %34
  br label %37

37:                                               ; preds = %33, %23, %13, %4
  %38 = phi i32 [ -22, %4 ], [ 0, %13 ], [ %36, %33 ], [ %31, %23 ]
  ret i32 %38
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_block_data(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cyapa_i2c_reg_read_block(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = trunc i32 %2 to i8
  %8 = tail call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %6, i8 noundef zeroext %1, i8 noundef zeroext %7, ptr noundef %3) #12
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cyapa_read_block(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 8
  %5 = load i8, ptr %4, align 1, !range !8
  %6 = icmp eq i8 %5, 0
  %7 = zext i8 %1 to i32
  br i1 %6, label %44, label %8

8:                                                ; preds = %3
  %9 = getelementptr [15 x %struct.cyapa_cmd_len], ptr @cyapa_smbus_cmds, i32 0, i32 %7
  %10 = load i8, ptr %9, align 1
  %11 = getelementptr [15 x %struct.cyapa_cmd_len], ptr @cyapa_smbus_cmds, i32 0, i32 %7, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = zext i8 %10 to i32
  %17 = and i32 %16, 128
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %52, label %19

19:                                               ; preds = %8
  %20 = and i32 %16, 64
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %19
  %23 = or i8 %10, 1
  %24 = tail call i32 @i2c_smbus_read_block_data(ptr noundef %15, i8 noundef zeroext %23, ptr noundef %2) #12
  br label %40

25:                                               ; preds = %30
  %26 = add i8 %32, 1
  %27 = zext i8 %26 to i32
  %28 = shl nuw nsw i32 %27, 5
  %29 = icmp ult i32 %28, %13
  br i1 %29, label %30, label %40

30:                                               ; preds = %25, %19
  %31 = phi i32 [ %28, %25 ], [ 0, %19 ]
  %32 = phi i8 [ %26, %25 ], [ 0, %19 ]
  %33 = shl i8 %32, 1
  %34 = and i8 %33, 6
  %35 = or i8 %10, %34
  %36 = or i8 %35, 1
  %37 = getelementptr i8, ptr %2, i32 %31
  %38 = tail call i32 @i2c_smbus_read_block_data(ptr noundef %15, i8 noundef zeroext %36, ptr noundef %37) #12
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %52, label %25

40:                                               ; preds = %25, %22
  %41 = phi i32 [ %24, %22 ], [ %38, %25 ]
  %42 = icmp sgt i32 %41, 0
  %43 = select i1 %42, i32 %13, i32 %41
  br label %52

44:                                               ; preds = %3
  %45 = getelementptr [15 x %struct.cyapa_cmd_len], ptr @cyapa_i2c_cmds, i32 0, i32 %7
  %46 = load i8, ptr %45, align 1
  %47 = getelementptr [15 x %struct.cyapa_cmd_len], ptr @cyapa_i2c_cmds, i32 0, i32 %7, i32 1
  %48 = load i8, ptr %47, align 1
  %49 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 4
  %50 = load ptr, ptr %49, align 4
  %51 = tail call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %50, i8 noundef zeroext %46, i8 noundef zeroext %48, ptr noundef %2) #12
  br label %52

52:                                               ; preds = %44, %40, %30, %8
  %53 = phi i32 [ %51, %44 ], [ -22, %8 ], [ %43, %40 ], [ %38, %30 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cyapa_gen3_check_fw(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  %6 = load i32, ptr %1, align 4
  %7 = icmp eq i32 %6, 30848
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str, i32 noundef %6, i32 noundef 30848) #13
  br label %56

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.firmware, ptr %1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = getelementptr i8, ptr %11, i32 1
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = getelementptr i8, ptr %11, i32 2
  br label %18

18:                                               ; preds = %18, %9
  %19 = phi i16 [ %24, %18 ], [ 0, %9 ]
  %20 = phi i32 [ %25, %18 ], [ 0, %9 ]
  %21 = getelementptr i8, ptr %17, i32 %20
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i16
  %24 = add i16 %19, %23
  %25 = add nuw nsw i32 %20, 1
  %26 = icmp eq i32 %25, 126
  br i1 %26, label %27, label %18

27:                                               ; preds = %18
  %28 = shl nuw nsw i32 %13, 8
  %29 = or i32 %28, %16
  %30 = zext i16 %24 to i32
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %30, i32 noundef %29) #13
  br label %56

33:                                               ; preds = %27
  %34 = getelementptr i8, ptr %11, i32 126
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = getelementptr i8, ptr %11, i32 127
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = getelementptr i8, ptr %11, i32 128
  br label %41

41:                                               ; preds = %41, %33
  %42 = phi i16 [ %47, %41 ], [ 0, %33 ]
  %43 = phi i32 [ %48, %41 ], [ 0, %33 ]
  %44 = getelementptr i8, ptr %40, i32 %43
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i16
  %47 = add i16 %42, %46
  %48 = add nuw nsw i32 %43, 1
  %49 = icmp eq i32 %48, 30720
  br i1 %49, label %50, label %41

50:                                               ; preds = %41
  %51 = shl nuw nsw i32 %36, 8
  %52 = or i32 %51, %39
  %53 = zext i16 %47 to i32
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %53, i32 noundef %52) #13
  br label %56

56:                                               ; preds = %55, %50, %32, %8
  %57 = phi i32 [ -22, %8 ], [ -22, %32 ], [ -22, %55 ], [ 0, %50 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cyapa_gen3_bl_enter(ptr noundef %0) #0 {
  %2 = tail call i32 @cyapa_poll_state(ptr noundef %0, i32 noundef 500) #12
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %42

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 4
  switch i32 %5, label %6 [
    i32 2, label %42
    i32 4, label %7
  ]

6:                                                ; preds = %4
  br label %42

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 2
  store i8 0, ptr %8, align 1
  store i32 0, ptr %0, align 4
  %9 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 8
  %10 = load i8, ptr %9, align 1, !range !8
  %11 = icmp eq i8 %10, 0
  %12 = select i1 %11, i8 40, i8 0
  %13 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext %12, i8 noundef zeroext 1) #12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %7
  tail call void @usleep_range_state(i32 noundef 25000, i32 noundef 50000, i32 noundef 2) #12
  %18 = getelementptr %struct.cyapa, ptr %0, i32 0, i32 1, i32 1
  br label %19

19:                                               ; preds = %30, %17
  %20 = phi i32 [ 2000, %17 ], [ %32, %30 ]
  %21 = tail call i32 @cyapa_poll_state(ptr noundef %0, i32 noundef 500) #12
  switch i32 %21, label %42 [
    i32 0, label %22
    i32 -110, label %30
  ]

22:                                               ; preds = %19
  %23 = load i32, ptr %0, align 4
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i8, ptr %18, align 1
  %27 = and i8 %26, 2
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %25, %22
  tail call void @msleep(i32 noundef 100) #12
  br label %30

30:                                               ; preds = %29, %19
  %31 = phi i32 [ -100, %29 ], [ -500, %19 ]
  %32 = add nsw i32 %20, %31
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %19, label %34

34:                                               ; preds = %30
  %35 = load i32, ptr %0, align 4
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %42

37:                                               ; preds = %34, %25
  %38 = load i8, ptr %18, align 1
  %39 = and i8 %38, 2
  %40 = icmp eq i8 %39, 0
  %41 = select i1 %40, i32 0, i32 -11
  br label %42

42:                                               ; preds = %37, %34, %19, %7, %6, %4, %1
  %43 = phi i32 [ -11, %6 ], [ %2, %1 ], [ 0, %4 ], [ -5, %7 ], [ -11, %34 ], [ %41, %37 ], [ %21, %19 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cyapa_gen3_bl_activate(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 11, ptr noundef nonnull @bl_activate) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  tail call void @msleep(i32 noundef 2000) #12
  %7 = tail call i32 @cyapa_poll_state(ptr noundef %0, i32 noundef 11000) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = load i32, ptr %0, align 4
  %11 = icmp eq i32 %10, 3
  %12 = select i1 %11, i32 0, i32 -11
  br label %13

13:                                               ; preds = %9, %6, %1
  %14 = phi i32 [ %4, %1 ], [ %7, %6 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @cyapa_gen3_bl_initiate(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #3 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cyapa_gen3_do_fw_update(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  %6 = getelementptr inbounds %struct.firmware, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 128
  %9 = tail call fastcc i32 @cyapa_gen3_write_blocks(ptr noundef %0, i32 noundef 32, i32 noundef 480, ptr noundef %8)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.3, i32 noundef %9) #13
  br label %17

12:                                               ; preds = %2
  %13 = load ptr, ptr %6, align 4
  %14 = tail call fastcc i32 @cyapa_gen3_write_blocks(ptr noundef %0, i32 noundef 30, i32 noundef 2, ptr noundef %13)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.4, i32 noundef %14) #13
  br label %17

17:                                               ; preds = %16, %12, %11
  %18 = phi i32 [ %9, %11 ], [ %14, %16 ], [ 0, %12 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cyapa_gen3_bl_deactivate(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 11, ptr noundef nonnull @bl_deactivate) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  tail call void @msleep(i32 noundef 100) #12
  %7 = tail call i32 @cyapa_poll_state(ptr noundef %0, i32 noundef 500) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = load i32, ptr %0, align 4
  %11 = icmp eq i32 %10, 2
  %12 = select i1 %11, i32 0, i32 -11
  br label %13

13:                                               ; preds = %9, %6, %1
  %14 = phi i32 [ %4, %1 ], [ %7, %6 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cyapa_gen3_show_baseline(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.cyapa, ptr %5, i32 0, i32 8
  %7 = load i8, ptr %6, align 1, !range !8
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, i8 0, i8 5
  %10 = getelementptr inbounds %struct.cyapa, ptr %5, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %11, i8 noundef zeroext %9) #12
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %12) #13
  br label %78

15:                                               ; preds = %3
  %16 = and i32 %12, 3
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %12) #13
  br label %78

19:                                               ; preds = %15
  %20 = load i8, ptr %6, align 1, !range !8
  %21 = icmp eq i8 %20, 0
  %22 = select i1 %21, i8 40, i8 0
  %23 = load ptr, ptr %10, align 4
  %24 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext %22, i8 noundef zeroext 64) #12
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %19
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #12
  %27 = load i8, ptr %6, align 1, !range !8
  %28 = icmp eq i8 %27, 0
  %29 = select i1 %28, i8 0, i8 5
  %30 = load ptr, ptr %10, align 4
  %31 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %30, i8 noundef zeroext %29) #12
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %34, label %36

33:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %24) #13
  br label %78

34:                                               ; preds = %49, %39, %26
  %35 = phi i32 [ %31, %26 ], [ %44, %39 ], [ %54, %49 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %35) #13
  br label %78

36:                                               ; preds = %26
  %37 = and i32 %31, 3
  %38 = icmp eq i32 %37, 3
  br i1 %38, label %60, label %39

39:                                               ; preds = %36
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #12
  %40 = load i8, ptr %6, align 1, !range !8
  %41 = icmp eq i8 %40, 0
  %42 = select i1 %41, i8 0, i8 5
  %43 = load ptr, ptr %10, align 4
  %44 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %43, i8 noundef zeroext %42) #12
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %34, label %46

46:                                               ; preds = %39
  %47 = and i32 %44, 3
  %48 = icmp eq i32 %47, 3
  br i1 %48, label %60, label %49

49:                                               ; preds = %46
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #12
  %50 = load i8, ptr %6, align 1, !range !8
  %51 = icmp eq i8 %50, 0
  %52 = select i1 %51, i8 0, i8 5
  %53 = load ptr, ptr %10, align 4
  %54 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %53, i8 noundef zeroext %52) #12
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %34, label %56

56:                                               ; preds = %49
  %57 = and i32 %54, 3
  %58 = icmp eq i32 %57, 3
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.8) #13
  br label %78

60:                                               ; preds = %56, %46, %36
  %61 = load i8, ptr %6, align 1, !range !8
  %62 = icmp eq i8 %61, 0
  %63 = select i1 %62, i8 38, i8 7
  %64 = load ptr, ptr %10, align 4
  %65 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %64, i8 noundef zeroext %63) #12
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %65) #13
  br label %78

68:                                               ; preds = %60
  %69 = load i8, ptr %6, align 1, !range !8
  %70 = icmp eq i8 %69, 0
  %71 = select i1 %70, i8 39, i8 9
  %72 = load ptr, ptr %10, align 4
  %73 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %72, i8 noundef zeroext %71) #12
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %73) #13
  br label %78

76:                                               ; preds = %68
  %77 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.11, i32 noundef %65, i32 noundef %73) #12
  br label %78

78:                                               ; preds = %76, %75, %67, %59, %34, %33, %18, %14
  %79 = phi i32 [ %12, %14 ], [ -11, %18 ], [ %24, %33 ], [ %35, %34 ], [ -110, %59 ], [ %65, %67 ], [ %73, %75 ], [ %77, %76 ]
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cyapa_gen3_do_calibrate(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.cyapa, ptr %6, i32 0, i32 8
  %8 = load i8, ptr %7, align 1, !range !8
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, i8 0, i8 5
  %11 = getelementptr inbounds %struct.cyapa, ptr %6, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %12, i8 noundef zeroext %10) #12
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %13) #13
  br label %47

16:                                               ; preds = %4
  %17 = and i32 %13, 3
  %18 = icmp eq i32 %17, 3
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %13) #13
  br label %47

20:                                               ; preds = %16
  %21 = load i8, ptr %7, align 1, !range !8
  %22 = icmp eq i8 %21, 0
  %23 = select i1 %22, i8 40, i8 0
  %24 = load ptr, ptr %11, align 4
  %25 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %24, i8 noundef zeroext %23, i8 noundef zeroext -128) #12
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %25) #13
  br label %47

28:                                               ; preds = %20
  %29 = load volatile i32, ptr @jiffies, align 64
  %30 = sub i32 -200, %29
  br label %31

31:                                               ; preds = %42, %28
  tail call void @msleep(i32 noundef 100) #12
  %32 = load i8, ptr %7, align 1, !range !8
  %33 = icmp eq i8 %32, 0
  %34 = select i1 %33, i8 0, i8 5
  %35 = load ptr, ptr %11, align 4
  %36 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %35, i8 noundef zeroext %34) #12
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %36) #13
  br label %47

39:                                               ; preds = %31
  %40 = and i32 %36, 3
  %41 = icmp eq i32 %40, 3
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  %43 = load volatile i32, ptr @jiffies, align 64
  %44 = add i32 %30, %43
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %31, label %46

46:                                               ; preds = %42
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.15) #13
  br label %47

47:                                               ; preds = %46, %39, %38, %27, %19, %15
  %48 = phi i32 [ -110, %46 ], [ %36, %38 ], [ %25, %27 ], [ -11, %19 ], [ %13, %15 ], [ %3, %39 ]
  ret i32 %48
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @cyapa_gen3_initialize(ptr nocapture noundef readnone %0) #3 {
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @cyapa_gen3_state_parse(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #4 {
  store i32 0, ptr %0, align 4
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %30

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %1, i32 2
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, 0
  %10 = getelementptr i8, ptr %1, i32 1
  %11 = load i8, ptr %10, align 1
  %12 = and i8 %11, -2
  %13 = icmp eq i8 %12, 16
  %14 = select i1 %9, i1 %13, i1 false
  br i1 %14, label %15, label %17

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 21
  store i8 3, ptr %16, align 4
  br label %57

17:                                               ; preds = %6
  %18 = and i8 %11, 16
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %51, label %20

20:                                               ; preds = %17
  %21 = getelementptr i8, ptr %1, i32 1
  %22 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 21
  store i8 3, ptr %22, align 4
  %23 = load i8, ptr %21, align 1
  %24 = icmp sgt i8 %23, -1
  br i1 %24, label %25, label %57

25:                                               ; preds = %20
  %26 = load i8, ptr %7, align 1
  %27 = and i8 %26, 32
  %28 = icmp eq i8 %27, 0
  %29 = select i1 %28, i32 2, i32 3
  br label %57

30:                                               ; preds = %3
  %31 = icmp sgt i8 %4, -1
  br i1 %31, label %43, label %32

32:                                               ; preds = %30
  %33 = getelementptr i8, ptr %1, i32 1
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = and i32 %35, 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %51, label %38

38:                                               ; preds = %32
  %39 = and i32 %35, 96
  %40 = icmp eq i32 %39, 96
  br i1 %40, label %59, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 21
  store i8 3, ptr %42, align 4
  br label %57

43:                                               ; preds = %30
  %44 = icmp eq i8 %4, 12
  %45 = getelementptr i8, ptr %1, i32 1
  %46 = load i8, ptr %45, align 1
  %47 = icmp eq i8 %46, 8
  %48 = select i1 %44, i1 %47, i1 false
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 21
  store i8 3, ptr %50, align 4
  br label %57

51:                                               ; preds = %43, %32, %17
  %52 = phi i8 [ %11, %17 ], [ %34, %32 ], [ %46, %43 ]
  %53 = and i8 %52, -112
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 21
  store i8 3, ptr %56, align 4
  br label %57

57:                                               ; preds = %55, %49, %41, %25, %20, %15
  %58 = phi i32 [ 4, %49 ], [ 1, %55 ], [ 4, %41 ], [ 2, %15 ], [ 1, %20 ], [ %29, %25 ]
  store i32 %58, ptr %0, align 4
  br label %59

59:                                               ; preds = %57, %51, %38
  %60 = phi i1 [ true, %51 ], [ true, %38 ], [ false, %57 ]
  %61 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 21
  %62 = load i8, ptr %61, align 4
  %63 = icmp ne i8 %62, 3
  %64 = or i1 %63, %60
  %65 = select i1 %64, i32 -11, i32 0
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cyapa_gen3_do_operational_check(ptr noundef %0) #0 {
  %2 = alloca [27 x i8], align 1
  %3 = alloca [16 x i8], align 1
  %4 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %7 = load i32, ptr %0, align 4
  switch i32 %7, label %132 [
    i32 3, label %8
    i32 2, label %21
    i32 4, label %48
  ]

8:                                                ; preds = %1
  %9 = tail call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %5, i8 noundef zeroext 0, i8 noundef zeroext 11, ptr noundef nonnull @bl_deactivate) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %8
  tail call void @msleep(i32 noundef 100) #12
  %12 = tail call i32 @cyapa_poll_state(ptr noundef %0, i32 noundef 500) #12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load i32, ptr %0, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load ptr, ptr %4, align 4
  br label %21

19:                                               ; preds = %14, %11, %8
  %20 = phi i32 [ -11, %14 ], [ %12, %11 ], [ %9, %8 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.16, i32 noundef %20) #13
  br label %132

21:                                               ; preds = %17, %1
  %22 = phi ptr [ %18, %17 ], [ %5, %1 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %3, i8 0, i32 16, i1 false) #12, !annotation !9
  %23 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %22, i8 noundef zeroext 0, i8 noundef zeroext 16, ptr noundef nonnull %3) #12
  %24 = icmp eq i32 %23, 16
  %25 = getelementptr inbounds [16 x i8], ptr %3, i32 0, i32 1
  %26 = load i8, ptr %25, align 1
  %27 = icmp eq i8 %26, 17
  %28 = select i1 %24, i1 %27, i1 false
  br i1 %28, label %29, label %36

29:                                               ; preds = %21
  %30 = getelementptr inbounds [16 x i8], ptr %3, i32 0, i32 11
  %31 = load i8, ptr %30, align 1
  %32 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 18
  store i8 %31, ptr %32, align 1
  %33 = getelementptr inbounds [16 x i8], ptr %3, i32 0, i32 12
  %34 = load i8, ptr %33, align 1
  %35 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 19
  store i8 %34, ptr %35, align 2
  br label %36

36:                                               ; preds = %29, %21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  %37 = load ptr, ptr %4, align 4
  %38 = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %37, i8 noundef zeroext 0, i8 noundef zeroext 11, ptr noundef nonnull @bl_exit) #12
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  call void @msleep(i32 noundef 50) #12
  %41 = call i32 @cyapa_poll_state(ptr noundef %0, i32 noundef 4000) #12
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, ptr %0, align 4
  %45 = icmp eq i32 %44, 4
  br i1 %45, label %48, label %46

46:                                               ; preds = %43, %40, %36
  %47 = phi i32 [ -11, %43 ], [ %41, %40 ], [ %38, %36 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.17, i32 noundef %47) #13
  br label %132

48:                                               ; preds = %43, %1
  %49 = call i32 @cyapa_gen3_set_power_mode(ptr noundef %0, i8 noundef zeroext -4, i16 noundef zeroext 0, i32 noundef 1)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.cyapa_gen3_do_operational_check, i32 noundef %49) #13
  br label %52

52:                                               ; preds = %51, %48
  call void @llvm.lifetime.start.p0(i64 27, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(27) %2, i8 0, i32 27, i1 false) #12, !annotation !9
  %53 = load i32, ptr %0, align 4
  %54 = icmp eq i32 %53, 4
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = call i32 @cyapa_read_block(ptr noundef %0, i8 noundef zeroext 5, ptr noundef nonnull %2) #12
  %57 = icmp eq i32 %56, 27
  br i1 %57, label %63, label %58

58:                                               ; preds = %55
  %59 = icmp slt i32 %56, 0
  %60 = select i1 %59, i32 %56, i32 -5
  br label %61

61:                                               ; preds = %58, %52
  %62 = phi i32 [ -16, %52 ], [ %60, %58 ]
  call void @llvm.lifetime.end.p0(i64 27, ptr nonnull %2) #12
  br label %132

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(5) %64, ptr noundef nonnull align 1 dereferenceable(5) %2, i32 5, i1 false) #12
  %65 = getelementptr %struct.cyapa, ptr %0, i32 0, i32 16, i32 5
  store i8 45, ptr %65, align 1
  %66 = getelementptr %struct.cyapa, ptr %0, i32 0, i32 16, i32 6
  %67 = getelementptr inbounds [27 x i8], ptr %2, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %66, ptr noundef align 1 dereferenceable(6) %67, i32 6, i1 false) #12
  %68 = getelementptr %struct.cyapa, ptr %0, i32 0, i32 16, i32 12
  store i8 45, ptr %68, align 4
  %69 = getelementptr %struct.cyapa, ptr %0, i32 0, i32 16, i32 13
  %70 = getelementptr inbounds [27 x i8], ptr %2, i32 0, i32 11
  %71 = load i16, ptr %70, align 1
  store i16 %71, ptr %69, align 1
  %72 = getelementptr %struct.cyapa, ptr %0, i32 0, i32 16, i32 15
  store i8 0, ptr %72, align 1
  %73 = getelementptr inbounds [27 x i8], ptr %2, i32 0, i32 15
  %74 = load i8, ptr %73, align 1
  %75 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 18
  store i8 %74, ptr %75, align 1
  %76 = getelementptr inbounds [27 x i8], ptr %2, i32 0, i32 16
  %77 = load i8, ptr %76, align 1
  %78 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 19
  store i8 %77, ptr %78, align 2
  %79 = getelementptr inbounds [27 x i8], ptr %2, i32 0, i32 19
  %80 = load i8, ptr %79, align 1
  %81 = and i8 %80, 56
  %82 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 20
  store i8 %81, ptr %82, align 1
  %83 = getelementptr inbounds [27 x i8], ptr %2, i32 0, i32 20
  %84 = load i8, ptr %83, align 1
  %85 = and i8 %84, 15
  %86 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 21
  store i8 %85, ptr %86, align 4
  %87 = getelementptr inbounds [27 x i8], ptr %2, i32 0, i32 21
  %88 = load i8, ptr %87, align 1
  %89 = and i8 %88, -16
  %90 = zext i8 %89 to i32
  %91 = shl nuw nsw i32 %90, 4
  %92 = getelementptr inbounds [27 x i8], ptr %2, i32 0, i32 22
  %93 = load i8, ptr %92, align 1
  %94 = zext i8 %93 to i32
  %95 = or i32 %91, %94
  %96 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 22
  store i32 %95, ptr %96, align 4
  %97 = and i8 %88, 15
  %98 = zext i8 %97 to i32
  %99 = shl nuw nsw i32 %98, 8
  %100 = getelementptr inbounds [27 x i8], ptr %2, i32 0, i32 23
  %101 = load i8, ptr %100, align 1
  %102 = zext i8 %101 to i32
  %103 = or i32 %99, %102
  %104 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 23
  store i32 %103, ptr %104, align 4
  %105 = getelementptr inbounds [27 x i8], ptr %2, i32 0, i32 24
  %106 = load i8, ptr %105, align 1
  %107 = and i8 %106, -16
  %108 = zext i8 %107 to i32
  %109 = shl nuw nsw i32 %108, 4
  %110 = getelementptr inbounds [27 x i8], ptr %2, i32 0, i32 25
  %111 = load i8, ptr %110, align 1
  %112 = zext i8 %111 to i32
  %113 = or i32 %109, %112
  %114 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 24
  store i32 %113, ptr %114, align 4
  %115 = and i8 %106, 15
  %116 = zext i8 %115 to i32
  %117 = shl nuw nsw i32 %116, 8
  %118 = getelementptr inbounds [27 x i8], ptr %2, i32 0, i32 26
  %119 = load i8, ptr %118, align 1
  %120 = zext i8 %119 to i32
  %121 = or i32 %117, %120
  %122 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 25
  store i32 %121, ptr %122, align 4
  %123 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 32
  store i32 255, ptr %123, align 4
  call void @llvm.lifetime.end.p0(i64 27, ptr nonnull %2) #12
  %124 = icmp eq i8 %85, 3
  br i1 %124, label %127, label %125

125:                                              ; preds = %63
  %126 = zext i8 %85 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.19, i32 noundef %126) #13
  br label %132

127:                                              ; preds = %63
  %128 = call i32 @strlen(ptr noundef nonnull @product_id)
  %129 = call i32 @bcmp(ptr %64, ptr nonnull @product_id, i32 %128)
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %127
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.20, ptr noundef %64) #13
  br label %132

132:                                              ; preds = %131, %127, %125, %61, %46, %19, %1
  %133 = phi i32 [ -22, %125 ], [ -22, %131 ], [ %47, %46 ], [ %20, %19 ], [ 0, %127 ], [ -5, %1 ], [ %62, %61 ]
  ret i32 %133
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cyapa_gen3_irq_handler(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.cyapa_reg_data, align 1
  %3 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 27, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(27) %2, i8 0, i32 27, i1 false), !annotation !9
  %6 = call i32 @cyapa_read_block(ptr noundef %0, i8 noundef zeroext 3, ptr noundef nonnull %2)
  %7 = icmp eq i32 %6, 27
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.21, i32 noundef %6) #13
  br label %22

9:                                                ; preds = %1
  %10 = load i8, ptr %2, align 1
  %11 = zext i8 %10 to i32
  %12 = and i32 %11, 131
  %13 = icmp ne i32 %12, 131
  %14 = getelementptr inbounds %struct.cyapa_reg_data, ptr %2, i32 0, i32 1
  %15 = load i8, ptr %14, align 1
  %16 = and i8 %15, 8
  %17 = icmp eq i8 %16, 0
  %18 = select i1 %13, i1 true, i1 %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %9
  %20 = zext i8 %15 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.22, i32 noundef %11, i32 noundef %20) #13
  br label %22

21:                                               ; preds = %9
  call fastcc void @cyapa_gen3_event_process(ptr noundef %0, ptr noundef nonnull %2)
  br label %22

22:                                               ; preds = %21, %19, %8
  %23 = phi i32 [ -22, %8 ], [ -22, %19 ], [ 0, %21 ]
  call void @llvm.lifetime.end.p0(i64 27, ptr nonnull %2) #12
  ret i32 %23
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cyapa_gen3_irq_cmd_handler(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 21
  %3 = load i8, ptr %2, align 4
  %4 = icmp eq i8 %3, 3
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 2
  %7 = load i8, ptr %6, align 1, !range !8
  %8 = icmp ne i8 %7, 0
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i1 [ true, %1 ], [ %8, %5 ]
  ret i1 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @cyapa_gen3_empty_output_data(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #3 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cyapa_gen3_set_power_mode(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i16 noundef zeroext %2, i32 noundef %3) #0 {
  %5 = alloca %struct.cyapa_reg_data, align 1
  %6 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %0, align 4
  %9 = icmp eq i32 %8, 4
  br i1 %9, label %10, label %134

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 8
  %12 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 4
  %13 = load i8, ptr %11, align 1, !range !8
  %14 = icmp eq i8 %13, 0
  %15 = select i1 %14, i8 41, i8 3
  %16 = load ptr, ptr %12, align 4
  %17 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %16, i8 noundef zeroext %15) #12
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %48, label %19

19:                                               ; preds = %10
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #12
  %20 = load i8, ptr %11, align 1, !range !8
  %21 = icmp eq i8 %20, 0
  %22 = select i1 %21, i8 41, i8 3
  %23 = load ptr, ptr %12, align 4
  %24 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %23, i8 noundef zeroext %22) #12
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %48, label %26

26:                                               ; preds = %19
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #12
  %27 = load i8, ptr %11, align 1, !range !8
  %28 = icmp eq i8 %27, 0
  %29 = select i1 %28, i8 41, i8 3
  %30 = load ptr, ptr %12, align 4
  %31 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %30, i8 noundef zeroext %29) #12
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %48, label %33

33:                                               ; preds = %26
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #12
  %34 = load i8, ptr %11, align 1, !range !8
  %35 = icmp eq i8 %34, 0
  %36 = select i1 %35, i8 41, i8 3
  %37 = load ptr, ptr %12, align 4
  %38 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %37, i8 noundef zeroext %36) #12
  %39 = icmp sgt i32 %38, -1
  br i1 %39, label %48, label %40

40:                                               ; preds = %33
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #12
  %41 = load i8, ptr %11, align 1, !range !8
  %42 = icmp eq i8 %41, 0
  %43 = select i1 %42, i8 41, i8 3
  %44 = load ptr, ptr %12, align 4
  %45 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %44, i8 noundef zeroext %43) #12
  %46 = icmp sgt i32 %45, -1
  br i1 %46, label %48, label %47

47:                                               ; preds = %40
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #12
  br label %134

48:                                               ; preds = %40, %33, %26, %19, %10
  %49 = phi i32 [ %17, %10 ], [ %24, %19 ], [ %31, %26 ], [ %38, %33 ], [ %45, %40 ]
  %50 = and i32 %49, 252
  %51 = zext i8 %1 to i32
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %134, label %53

53:                                               ; preds = %48
  %54 = trunc i32 %50 to i8
  switch i8 %54, label %55 [
    i8 -4, label %59
    i8 4, label %59
    i8 0, label %59
  ]

55:                                               ; preds = %53
  %56 = tail call zeroext i16 @cyapa_pwr_cmd_to_sleep_time(i8 noundef zeroext %54) #12
  %57 = add i16 %56, 50
  %58 = zext i16 %57 to i32
  br label %59

59:                                               ; preds = %55, %53, %53, %53
  %60 = phi i32 [ %58, %55 ], [ 20, %53 ], [ 20, %53 ], [ 20, %53 ]
  %61 = and i32 %49, 3
  %62 = and i32 %51, 252
  %63 = or i32 %61, %62
  %64 = trunc i32 %63 to i8
  %65 = load i8, ptr %11, align 1, !range !8
  %66 = icmp eq i8 %65, 0
  %67 = select i1 %66, i8 41, i8 2
  %68 = load ptr, ptr %12, align 4
  %69 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %68, i8 noundef zeroext %67, i8 noundef zeroext %64) #12
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %100, label %71

71:                                               ; preds = %59
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #12
  %72 = load i8, ptr %11, align 1, !range !8
  %73 = icmp eq i8 %72, 0
  %74 = select i1 %73, i8 41, i8 2
  %75 = load ptr, ptr %12, align 4
  %76 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %75, i8 noundef zeroext %74, i8 noundef zeroext %64) #12
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %100, label %78

78:                                               ; preds = %71
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #12
  %79 = load i8, ptr %11, align 1, !range !8
  %80 = icmp eq i8 %79, 0
  %81 = select i1 %80, i8 41, i8 2
  %82 = load ptr, ptr %12, align 4
  %83 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %82, i8 noundef zeroext %81, i8 noundef zeroext %64) #12
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %100, label %85

85:                                               ; preds = %78
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #12
  %86 = load i8, ptr %11, align 1, !range !8
  %87 = icmp eq i8 %86, 0
  %88 = select i1 %87, i8 41, i8 2
  %89 = load ptr, ptr %12, align 4
  %90 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %89, i8 noundef zeroext %88, i8 noundef zeroext %64) #12
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %100, label %92

92:                                               ; preds = %85
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #12
  %93 = load i8, ptr %11, align 1, !range !8
  %94 = icmp eq i8 %93, 0
  %95 = select i1 %94, i8 41, i8 2
  %96 = load ptr, ptr %12, align 4
  %97 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %96, i8 noundef zeroext %95, i8 noundef zeroext %64) #12
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %92
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #12
  br label %100

100:                                              ; preds = %99, %92, %85, %78, %71, %59
  %101 = phi i32 [ 0, %59 ], [ 0, %71 ], [ 0, %78 ], [ 0, %85 ], [ 0, %92 ], [ %97, %99 ]
  %102 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 2
  %103 = load i8, ptr %102, align 1, !range !8
  %104 = icmp ne i8 %103, 0
  %105 = icmp ne ptr %7, null
  %106 = select i1 %104, i1 %105, i1 false
  br i1 %106, label %107, label %133

107:                                              ; preds = %100
  %108 = tail call zeroext i1 @input_device_enabled(ptr noundef nonnull %7) #12
  %109 = and i32 %3, -2
  %110 = icmp eq i32 %109, 4
  %111 = and i1 %110, %108
  br i1 %111, label %112, label %133

112:                                              ; preds = %107
  %113 = icmp eq i32 %60, 0
  br i1 %113, label %134, label %114

114:                                              ; preds = %112
  %115 = getelementptr inbounds %struct.cyapa_reg_data, ptr %5, i32 0, i32 1
  br label %116

116:                                              ; preds = %131, %114
  %117 = phi i32 [ %60, %114 ], [ %119, %131 ]
  %118 = call i32 @llvm.umin.i32(i32 %117, i32 8)
  call void @msleep(i32 noundef %118) #12
  %119 = add nsw i32 %117, -8
  call void @llvm.lifetime.start.p0(i64 27, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(27) %5, i8 0, i32 27, i1 false) #12, !annotation !9
  %120 = call i32 @cyapa_read_block(ptr noundef %0, i8 noundef zeroext 3, ptr noundef nonnull %5) #12
  %121 = icmp eq i32 %120, 27
  br i1 %121, label %122, label %131

122:                                              ; preds = %116
  %123 = load i8, ptr %5, align 1
  %124 = and i8 %123, -125
  %125 = icmp eq i8 %124, -125
  br i1 %125, label %126, label %131

126:                                              ; preds = %122
  %127 = load i8, ptr %115, align 1
  %128 = and i8 %127, 8
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %126
  call fastcc void @cyapa_gen3_event_process(ptr noundef %0, ptr noundef nonnull %5) #12
  br label %131

131:                                              ; preds = %130, %126, %122, %116
  call void @llvm.lifetime.end.p0(i64 27, ptr nonnull %5) #12
  %132 = icmp ugt i32 %117, 8
  br i1 %132, label %116, label %134

133:                                              ; preds = %107, %100
  tail call void @msleep(i32 noundef %60) #12
  br label %134

134:                                              ; preds = %133, %131, %112, %48, %47, %4
  %135 = phi i32 [ 0, %4 ], [ %45, %47 ], [ 0, %48 ], [ %101, %133 ], [ %101, %112 ], [ %101, %131 ]
  ret i32 %135
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @cyapa_gen3_set_proximity(ptr nocapture noundef readnone %0, i1 noundef zeroext %1) #3 {
  ret i32 -95
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cyapa_poll_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cyapa_gen3_write_blocks(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = alloca [17 x i8], align 1
  %6 = alloca %struct.gen3_write_block_cmd, align 1
  %7 = alloca [3 x i8], align 1
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %101, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, ptr %6, i32 76
  %11 = getelementptr inbounds %struct.gen3_write_block_cmd, ptr %6, i32 0, i32 1
  %12 = getelementptr inbounds %struct.gen3_write_block_cmd, ptr %6, i32 0, i32 2
  %13 = getelementptr inbounds %struct.gen3_write_block_cmd, ptr %6, i32 0, i32 3
  %14 = getelementptr inbounds %struct.gen3_write_block_cmd, ptr %6, i32 0, i32 4
  %15 = getelementptr inbounds %struct.gen3_write_block_cmd, ptr %6, i32 0, i32 6
  %16 = getelementptr inbounds [17 x i8], ptr %5, i32 0, i32 1
  %17 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 4
  %18 = getelementptr inbounds i8, ptr %6, i32 16
  %19 = getelementptr inbounds i8, ptr %6, i32 32
  %20 = getelementptr inbounds i8, ptr %6, i32 48
  %21 = getelementptr inbounds i8, ptr %6, i32 64
  %22 = getelementptr inbounds [3 x i8], ptr %7, i32 0, i32 1
  %23 = getelementptr inbounds [3 x i8], ptr %7, i32 0, i32 2
  br label %24

24:                                               ; preds = %98, %9
  %25 = phi i32 [ 0, %9 ], [ %99, %98 ]
  %26 = add i32 %25, %1
  %27 = shl i32 %25, 6
  %28 = getelementptr i8, ptr %3, i32 %27
  %29 = trunc i32 %26 to i16
  call void @llvm.lifetime.start.p0(i64 78, ptr nonnull %6) #12
  store i16 0, ptr %10, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %7) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %7, i8 0, i32 3, i1 false) #12, !annotation !9
  store i8 -1, ptr %6, align 1
  store i8 57, ptr %11, align 1
  store i64 506097522914230528, ptr %12, align 1
  %30 = call i16 @llvm.bswap.i16(i16 %29) #12
  store i16 %30, ptr %13, align 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(64) %14, ptr noundef align 1 dereferenceable(64) %28, i32 64, i1 false) #12
  br label %31

31:                                               ; preds = %31, %24
  %32 = phi i16 [ %37, %31 ], [ 0, %24 ]
  %33 = phi i32 [ %38, %31 ], [ 0, %24 ]
  %34 = getelementptr i8, ptr %14, i32 %33
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i16
  %37 = add i16 %32, %36
  %38 = add nuw nsw i32 %33, 1
  %39 = icmp eq i32 %38, 64
  br i1 %39, label %40, label %31

40:                                               ; preds = %31
  %41 = trunc i16 %37 to i8
  store i8 %41, ptr %10, align 1
  br label %42

42:                                               ; preds = %42, %40
  %43 = phi i32 [ 1, %40 ], [ %49, %42 ]
  %44 = phi i16 [ 255, %40 ], [ %48, %42 ]
  %45 = getelementptr i8, ptr %6, i32 %43
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i16
  %48 = add i16 %44, %47
  %49 = add nuw nsw i32 %43, 1
  %50 = icmp eq i32 %49, 77
  br i1 %50, label %51, label %42

51:                                               ; preds = %42
  %52 = trunc i16 %48 to i8
  store i8 %52, ptr %15, align 1
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %5) #12
  store i8 0, ptr %5, align 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %16, ptr noundef nonnull align 1 dereferenceable(16) %6, i32 16, i1 false) #12
  %53 = load ptr, ptr %17, align 4
  %54 = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %53, i8 noundef zeroext 0, i8 noundef zeroext 17, ptr noundef nonnull %5) #12
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %51
  store i8 16, ptr %5, align 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %16, ptr noundef align 1 dereferenceable(16) %18, i32 16, i1 false) #12
  %57 = load ptr, ptr %17, align 4
  %58 = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %57, i8 noundef zeroext 0, i8 noundef zeroext 17, ptr noundef nonnull %5) #12
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  store i8 32, ptr %5, align 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %16, ptr noundef align 1 dereferenceable(16) %19, i32 16, i1 false) #12
  %61 = load ptr, ptr %17, align 4
  %62 = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %61, i8 noundef zeroext 0, i8 noundef zeroext 17, ptr noundef nonnull %5) #12
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  store i8 48, ptr %5, align 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %16, ptr noundef align 1 dereferenceable(16) %20, i32 16, i1 false) #12
  %65 = load ptr, ptr %17, align 4
  %66 = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %65, i8 noundef zeroext 0, i8 noundef zeroext 17, ptr noundef nonnull %5) #12
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %64, %60, %56, %51
  %69 = phi i32 [ %66, %64 ], [ %62, %60 ], [ %58, %56 ], [ %54, %51 ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %5) #12
  br label %96

70:                                               ; preds = %64
  store i8 64, ptr %5, align 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(14) %16, ptr noundef align 1 dereferenceable(14) %21, i32 14, i1 false) #12
  %71 = load ptr, ptr %17, align 4
  %72 = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %71, i8 noundef zeroext 0, i8 noundef zeroext 15, ptr noundef nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %5) #12
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %96

74:                                               ; preds = %82, %70
  %75 = phi i32 [ %85, %82 ], [ 11, %70 ]
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #12
  %76 = load ptr, ptr %17, align 4
  %77 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %76, i8 noundef zeroext 0, i8 noundef zeroext 3, ptr noundef nonnull %7) #12
  %78 = icmp eq i32 %77, 3
  br i1 %78, label %82, label %79

79:                                               ; preds = %74
  %80 = icmp slt i32 %77, 0
  %81 = select i1 %80, i32 %77, i32 -5
  br label %96

82:                                               ; preds = %74
  %83 = load i8, ptr %22, align 1
  %84 = icmp sgt i8 %83, -1
  %85 = add nsw i32 %75, -1
  %86 = icmp eq i32 %85, 0
  %87 = select i1 %84, i1 true, i1 %86
  br i1 %87, label %88, label %74

88:                                               ; preds = %82
  br i1 %84, label %89, label %96

89:                                               ; preds = %88
  %90 = and i8 %83, -111
  %91 = load i8, ptr %23, align 1
  %92 = and i8 %91, -4
  %93 = icmp ne i8 %90, 16
  %94 = icmp ne i8 %92, 32
  %95 = select i1 %93, i1 true, i1 %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %89, %88, %79, %70, %68
  %97 = phi i32 [ %69, %68 ], [ %81, %79 ], [ -5, %89 ], [ %72, %70 ], [ -110, %88 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 78, ptr nonnull %6) #12
  br label %101

98:                                               ; preds = %89
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 78, ptr nonnull %6) #12
  %99 = add nuw i32 %25, 1
  %100 = icmp eq i32 %99, %2
  br i1 %100, label %101, label %24

101:                                              ; preds = %98, %96, %4
  %102 = phi i32 [ %97, %96 ], [ 0, %4 ], [ 0, %98 ]
  ret i32 %102
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cyapa_gen3_event_process(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.cyapa_reg_data, ptr %1, i32 0, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = icmp ult i8 %6, 16
  br i1 %7, label %40, label %8

8:                                                ; preds = %2
  %9 = lshr i8 %6, 4
  %10 = zext i8 %9 to i32
  br label %11

11:                                               ; preds = %11, %8
  %12 = phi i32 [ %38, %11 ], [ 0, %8 ]
  %13 = getelementptr %struct.cyapa_reg_data, ptr %1, i32 0, i32 2, i32 %12
  %14 = getelementptr %struct.cyapa_reg_data, ptr %1, i32 0, i32 2, i32 %12, i32 4
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = add nsw i32 %16, -1
  tail call void @input_event(ptr noundef %4, i32 noundef 3, i32 noundef 47, i32 noundef %17) #12
  %18 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %4, i32 noundef 0, i1 noundef zeroext true) #12
  %19 = load i8, ptr %13, align 1
  %20 = and i8 %19, -16
  %21 = zext i8 %20 to i32
  %22 = shl nuw nsw i32 %21, 4
  %23 = getelementptr %struct.cyapa_reg_data, ptr %1, i32 0, i32 2, i32 %12, i32 1
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = or i32 %22, %25
  tail call void @input_event(ptr noundef %4, i32 noundef 3, i32 noundef 53, i32 noundef %26) #12
  %27 = load i8, ptr %13, align 1
  %28 = and i8 %27, 15
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 8
  %31 = getelementptr %struct.cyapa_reg_data, ptr %1, i32 0, i32 2, i32 %12, i32 2
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = or i32 %30, %33
  tail call void @input_event(ptr noundef %4, i32 noundef 3, i32 noundef 54, i32 noundef %34) #12
  %35 = getelementptr %struct.cyapa_reg_data, ptr %1, i32 0, i32 2, i32 %12, i32 3
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  tail call void @input_event(ptr noundef %4, i32 noundef 3, i32 noundef 58, i32 noundef %37) #12
  %38 = add nuw nsw i32 %12, 1
  %39 = icmp eq i32 %38, %10
  br i1 %39, label %40, label %11

40:                                               ; preds = %11, %2
  tail call void @input_mt_sync_frame(ptr noundef %4) #12
  %41 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 20
  %42 = load i8, ptr %41, align 1
  %43 = and i8 %42, 8
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load i8, ptr %5, align 1
  %47 = and i8 %46, 1
  %48 = zext i8 %47 to i32
  tail call void @input_event(ptr noundef %4, i32 noundef 1, i32 noundef 272, i32 noundef %48) #12
  %49 = load i8, ptr %41, align 1
  br label %50

50:                                               ; preds = %45, %40
  %51 = phi i8 [ %49, %45 ], [ %42, %40 ]
  %52 = and i8 %51, 32
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %50
  %55 = load i8, ptr %5, align 1
  %56 = lshr i8 %55, 2
  %57 = and i8 %56, 1
  %58 = zext i8 %57 to i32
  tail call void @input_event(ptr noundef %4, i32 noundef 1, i32 noundef 274, i32 noundef %58) #12
  %59 = load i8, ptr %41, align 1
  br label %60

60:                                               ; preds = %54, %50
  %61 = phi i8 [ %59, %54 ], [ %51, %50 ]
  %62 = and i8 %61, 16
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %60
  %65 = load i8, ptr %5, align 1
  %66 = lshr i8 %65, 1
  %67 = and i8 %66, 1
  %68 = zext i8 %67 to i32
  tail call void @input_event(ptr noundef %4, i32 noundef 1, i32 noundef 273, i32 noundef %68) #12
  br label %69

69:                                               ; preds = %64, %60
  tail call void @input_event(ptr noundef %4, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_sync_frame(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_device_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @cyapa_pwr_cmd_to_sleep_time(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
