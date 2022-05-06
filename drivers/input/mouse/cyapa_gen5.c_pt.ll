; ModuleID = '/llk/IR/drivers/input/mouse/cyapa_gen5.c_pt.bc'
source_filename = "../drivers/input/mouse/cyapa_gen5.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
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
%struct.cyapa_pip_report_data = type { [7 x i8], [10 x %struct.cyapa_pip_touch_record] }
%struct.cyapa_pip_touch_record = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.pip_bl_cmd_head = type { i16, i16, i8, i8, %struct.pip_bl_packet_start, [0 x i8] }
%struct.pip_bl_packet_start = type { i8, i8, i16 }
%struct.firmware = type { i32, ptr, ptr }
%struct.cyapa_tsg_bin_image_data_record = type <{ i8, i16, i16, [128 x i8] }>
%struct.cyapa_tsg_bin_image_head = type { i8, i8, i8, i8, i8, [8 x i8], i8, i8, i8, i8, i8, i8 }
%struct.tsg_bl_metadata_row_params = type <{ i16, i16, i32, i16, i16, i32, i32, i16, i16, [36 x i8], i16 }>
%struct.tsg_bl_flash_row_head = type <{ i8, i16, [0 x i8] }>
%struct.pip_bl_packet_end = type <{ i16, i8 }>
%struct.pip_app_cmd_head = type <{ i16, i16, i8, i8, i8, [0 x i8] }>
%struct.gen5_app_set_parameter_data = type <{ i8, i8, i32 }>

@pip_read_sys_info = dso_local global [7 x i8] c"\04\00\05\00/\00\02", align 1
@pip_bl_read_app_info = dso_local global [13 x i8] c"\04\00\0B\00@\00\01<\00\00\B0B\17", align 1
@cyapa_pip_cmd_state_initialize.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [15 x i8] c"&pip->cmd_lock\00", align 1
@cyapa_pip_cmd_state_initialize.__key.1 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"&pip->pm_stage_lock\00", align 1
@__const.cyapa_pip_bl_exit.bl_gen5_bl_exit = private unnamed_addr constant [13 x i8] c"\04\00\0B\00@\00\01;\00\00 \C7\17", align 1
@__const.cyapa_pip_bl_enter.cmd = private unnamed_addr constant [7 x i8] c"\04\00\05\00/\00\01", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"%s: firmware image not match TP device.\0A\00", align 1
@__func__.cyapa_pip_check_fw = private unnamed_addr constant [19 x i8] c"cyapa_pip_check_fw\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"%s: invalid app_integrity data.\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"%s: invalid app_integrity crc.\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"%s: invalid image alignment.\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"%s: invalid firmware app crc check.\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"%s: Gen5 FW update aborted: %d\0A\00", align 1
@__func__.cyapa_pip_do_fw_update = private unnamed_addr constant [23 x i8] c"cyapa_pip_do_fw_update\00", align 1
@__const.cyapa_pip_resume_scanning.cmd = private unnamed_addr constant [7 x i8] c"\04\00\05\00/\00\04", align 1
@__const.cyapa_pip_suspend_scanning.cmd = private unnamed_addr constant [7 x i8] c"\04\00\05\00/\00\03", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"invalid device state, gen=%d, state=0x%02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"failed to read length bytes, (%d)\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"invalid report_len=%d. bytes: %02x %02x\0A\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"failed to read %d bytes report data, (%d)\0A\00", align 1
@cyapa_gen5_ops = dso_local local_unnamed_addr constant %struct.cyapa_dev_ops { ptr @cyapa_pip_check_fw, ptr @cyapa_pip_bl_enter, ptr @cyapa_pip_bl_activate, ptr @cyapa_pip_bl_initiate, ptr @cyapa_pip_do_fw_update, ptr @cyapa_pip_bl_deactivate, ptr @cyapa_gen5_show_baseline, ptr @cyapa_pip_do_calibrate, ptr @cyapa_pip_cmd_state_initialize, ptr @cyapa_gen5_state_parse, ptr @cyapa_gen5_do_operational_check, ptr @cyapa_pip_irq_handler, ptr @cyapa_pip_irq_cmd_handler, ptr @cyapa_empty_pip_output_data, ptr @cyapa_gen5_set_power_mode, ptr @cyapa_pip_set_proximity }, align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"invalid report_id=0x%02x\0A\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"invalid touch packet length=%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"invalid button packet length=%d\0A\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"invalid proximity data, length=%d\0A\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"%d %d %d %d %d %d %d %d %d %d %d \00", align 1
@.str.19 = private unnamed_addr constant [55 x i8] c"%d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"%s: failed to set power active mode.\0A\00", align 1
@__func__.cyapa_gen5_do_operational_check = private unnamed_addr constant [32 x i8] c"cyapa_gen5_do_operational_check\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"%s: failed to enable proximity.\0A\00", align 1
@product_id = external dso_local constant [0 x i8], align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"%s: unknown product ID (%s)\0A\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"enter deep sleep fail: %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"deep sleep wake fail: %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"change to active fail: %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"fail to button only mode: %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c"set power state to 0x%02x failed: %d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cyapa_pip_cmd_state_initialize(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 35
  %3 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 35, i32 0, i32 1
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 35, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %4, ptr noundef nonnull @.str.13, ptr noundef nonnull @init_completion.__key) #11
  %5 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 35, i32 0, i32 2
  store volatile i32 0, ptr %5, align 4
  tail call void @__mutex_init(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @cyapa_pip_cmd_state_initialize.__key) #11
  %6 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 35, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %6, ptr noundef nonnull @.str.2, ptr noundef nonnull @cyapa_pip_cmd_state_initialize.__key.1) #11
  %7 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 35, i32 0, i32 8
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 35, i32 0, i32 5
  store ptr null, ptr %8, align 4
  %9 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 35, i32 0, i32 3
  store i8 -1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 35, i32 0, i32 6
  store ptr null, ptr %10, align 4
  %11 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 35, i32 0, i32 7
  store ptr null, ptr %11, align 4
  %12 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 13
  store i8 -1, ptr %12, align 2
  %13 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 14
  store i16 -1, ptr %13, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cyapa_i2c_pip_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %3
  %6 = icmp eq ptr %1, null
  %7 = icmp ugt i32 %2, 256
  %8 = or i1 %6, %7
  br i1 %8, label %17, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %11, ptr noundef nonnull %1, i32 noundef %2, i16 noundef zeroext 1) #11
  %13 = icmp eq i32 %12, %2
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = icmp slt i32 %12, 0
  %16 = select i1 %15, i32 %12, i32 -5
  br label %17

17:                                               ; preds = %14, %9, %5, %3
  %18 = phi i32 [ %16, %14 ], [ 0, %3 ], [ -22, %5 ], [ %2, %9 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cyapa_i2c_pip_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ne ptr %1, null
  %5 = icmp ne i32 %2, 0
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %9, ptr noundef nonnull %1, i32 noundef %2, i16 noundef zeroext 0) #11
  %11 = icmp eq i32 %10, %2
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = icmp slt i32 %10, 0
  %14 = select i1 %13, i32 %10, i32 -5
  br label %15

15:                                               ; preds = %12, %7, %3
  %16 = phi i32 [ %14, %12 ], [ -22, %3 ], [ 0, %7 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cyapa_empty_pip_output_data(ptr noundef %0, ptr noundef writeonly %1, ptr noundef %2, ptr noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 35, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %7) #11
  %8 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 35, i32 0, i32 8
  %9 = load i32, ptr %8, align 4
  tail call void @mutex_unlock(ptr noundef %7) #11
  %10 = icmp eq ptr %2, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %4
  %12 = load i32, ptr %2, align 4
  %13 = tail call i32 @llvm.smin.i32(i32 %12, i32 256)
  store i32 0, ptr %2, align 4
  br label %14

14:                                               ; preds = %11, %4
  %15 = phi i32 [ %13, %11 ], [ 0, %4 ]
  %16 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 35, i32 0, i32 11
  %17 = icmp eq ptr %16, null
  %18 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 4
  %19 = icmp ne ptr %1, null
  %20 = icmp ne i32 %15, 0
  %21 = select i1 %19, i1 %20, i1 false
  %22 = icmp ne ptr %3, null
  %23 = and i1 %22, %21
  %24 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 2
  %25 = icmp ne ptr %6, null
  %26 = and i32 %9, -2
  %27 = icmp eq i32 %26, 4
  br label %28

28:                                               ; preds = %82, %14
  %29 = phi i32 [ 0, %14 ], [ %83, %82 ]
  %30 = phi i32 [ 8, %14 ], [ %85, %82 ]
  %31 = icmp sgt i32 %29, 5
  %32 = select i1 %31, i1 true, i1 %17
  br i1 %32, label %87, label %33

33:                                               ; preds = %28
  %34 = load ptr, ptr %18, align 4
  %35 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %34, ptr noundef nonnull %16, i32 noundef 2, i16 noundef zeroext 1) #11
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = icmp slt i32 %35, 0
  %39 = select i1 %38, i32 %35, i32 -5
  br label %89

40:                                               ; preds = %33
  %41 = load i16, ptr %16, align 1
  %42 = zext i16 %41 to i32
  %43 = icmp eq i16 %41, 2
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = add nsw i32 %29, 1
  br label %82

46:                                               ; preds = %40
  %47 = icmp ugt i16 %41, 256
  br i1 %47, label %89, label %48

48:                                               ; preds = %46
  %49 = icmp eq i16 %41, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %48
  br i1 %23, label %51, label %82

51:                                               ; preds = %50
  %52 = tail call zeroext i1 %3(ptr noundef %0, ptr noundef nonnull %16, i32 noundef 2) #11
  br i1 %52, label %53, label %82

53:                                               ; preds = %51
  %54 = tail call i32 @llvm.smin.i32(i32 %15, i32 2)
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %1, ptr nonnull align 4 %16, i32 %54, i1 false)
  store i32 %54, ptr %2, align 4
  br label %89

55:                                               ; preds = %48
  %56 = load ptr, ptr %18, align 4
  %57 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %56, ptr noundef nonnull %16, i32 noundef %42, i16 noundef zeroext 1) #11
  %58 = icmp eq i32 %57, %42
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = icmp slt i32 %57, 0
  %61 = select i1 %60, i32 %57, i32 -5
  br label %89

62:                                               ; preds = %55
  %63 = add i32 %30, -1
  %64 = load i16, ptr %16, align 1
  %65 = zext i16 %64 to i32
  %66 = icmp ult i16 %64, 3
  br i1 %66, label %82, label %67

67:                                               ; preds = %62
  br i1 %23, label %68, label %73

68:                                               ; preds = %67
  %69 = tail call zeroext i1 %3(ptr noundef %0, ptr noundef nonnull %16, i32 noundef %65) #11
  br i1 %69, label %70, label %73

70:                                               ; preds = %68
  %71 = zext i16 %64 to i32
  %72 = tail call i32 @llvm.smin.i32(i32 %15, i32 %71)
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %1, ptr nonnull align 4 %16, i32 %72, i1 false)
  store i32 %72, ptr %2, align 4
  br label %89

73:                                               ; preds = %68, %67
  %74 = load i8, ptr %24, align 1, !range !8
  %75 = icmp ne i8 %74, 0
  %76 = select i1 %75, i1 %25, i1 false
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = tail call zeroext i1 @input_device_enabled(ptr noundef nonnull %6) #11
  %79 = select i1 %78, i1 %27, i1 false
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = tail call fastcc i32 @cyapa_pip_event_process(ptr noundef %0, ptr noundef nonnull %16)
  br label %82

82:                                               ; preds = %80, %77, %73, %62, %51, %50, %44
  %83 = phi i32 [ %45, %44 ], [ %29, %51 ], [ %29, %50 ], [ 0, %80 ], [ 0, %77 ], [ 0, %73 ], [ 1, %62 ]
  %84 = phi i32 [ 2, %44 ], [ 2, %51 ], [ 2, %50 ], [ -22, %80 ], [ -22, %77 ], [ -22, %73 ], [ -22, %62 ]
  %85 = phi i32 [ %30, %44 ], [ %30, %51 ], [ %30, %50 ], [ %63, %80 ], [ %63, %77 ], [ %63, %73 ], [ %63, %62 ]
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %28

87:                                               ; preds = %28
  %88 = select i1 %31, i32 0, i32 -22
  br label %89

89:                                               ; preds = %87, %82, %70, %59, %53, %46, %37
  %90 = phi i32 [ 0, %53 ], [ 0, %70 ], [ %39, %37 ], [ %61, %59 ], [ %88, %87 ], [ -22, %46 ], [ %84, %82 ]
  ret i32 %90
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_device_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cyapa_pip_event_process(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  %6 = load i16, ptr %1, align 1
  %7 = zext i16 %6 to i32
  %8 = icmp eq i16 %6, 2
  br i1 %8, label %157, label %9

9:                                                ; preds = %2
  %10 = getelementptr [7 x i8], ptr %1, i32 0, i32 2
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp eq i8 %11, 4
  %14 = icmp eq i16 %6, 4
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %16, label %21

16:                                               ; preds = %9
  %17 = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #11
  %18 = tail call i64 @ktime_get_mono_fast_ns() #11
  %19 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4, i32 11, i32 22
  store volatile i64 %18, ptr %19, align 8
  %20 = tail call i32 @__pm_runtime_suspend(ptr noundef %5, i32 noundef 12) #11
  br label %157

21:                                               ; preds = %9
  switch i8 %11, label %22 [
    i8 7, label %23
    i8 6, label %23
    i8 5, label %23
    i8 3, label %23
    i8 1, label %23
  ]

22:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.14, i32 noundef %12) #12
  br label %157

23:                                               ; preds = %21, %21, %21, %21, %21
  %24 = icmp eq i8 %11, 1
  %25 = add i16 %6, -128
  %26 = icmp ult i16 %25, -121
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.15, i32 noundef %7) #12
  br label %157

29:                                               ; preds = %23
  switch i8 %11, label %34 [
    i8 6, label %30
    i8 5, label %30
    i8 3, label %30
  ]

30:                                               ; preds = %29, %29, %29
  %31 = add i16 %6, -15
  %32 = icmp ult i16 %31, -9
  br i1 %32, label %33, label %126

33:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.16, i32 noundef %7) #12
  br label %157

34:                                               ; preds = %29
  %35 = icmp eq i8 %11, 7
  %36 = icmp ne i16 %6, 6
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.17, i32 noundef %7) #12
  br label %157

39:                                               ; preds = %34
  br i1 %24, label %40, label %118

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 5
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr [7 x i8], ptr %1, i32 0, i32 5
  %44 = load i8, ptr %43, align 1
  %45 = and i8 %44, 31
  %46 = zext i8 %45 to i32
  %47 = icmp eq i8 %45, 0
  br i1 %47, label %117, label %48

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 26
  %50 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 22
  %51 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 27
  %52 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 23
  br label %53

53:                                               ; preds = %115, %48
  %54 = phi ptr [ %42, %48 ], [ %116, %115 ]
  %55 = phi i32 [ 0, %48 ], [ %113, %115 ]
  %56 = getelementptr %struct.cyapa_pip_report_data, ptr %1, i32 0, i32 1, i32 %55, i32 1
  %57 = load i8, ptr %56, align 1
  %58 = and i8 %57, 96
  %59 = icmp eq i8 %58, 96
  br i1 %59, label %112, label %60

60:                                               ; preds = %53
  %61 = and i8 %57, 31
  %62 = zext i8 %61 to i32
  tail call void @input_event(ptr noundef %54, i32 noundef 3, i32 noundef 47, i32 noundef %62) #11
  %63 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %54, i32 noundef 0, i1 noundef zeroext true) #11
  %64 = getelementptr %struct.cyapa_pip_report_data, ptr %1, i32 0, i32 1, i32 %55, i32 3
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %65 to i32
  %67 = shl nuw nsw i32 %66, 8
  %68 = getelementptr %struct.cyapa_pip_report_data, ptr %1, i32 0, i32 1, i32 %55, i32 2
  %69 = load i8, ptr %68, align 1
  %70 = zext i8 %69 to i32
  %71 = or i32 %67, %70
  %72 = load i8, ptr %49, align 4
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %60
  %75 = load i32, ptr %50, align 4
  %76 = sub i32 %75, %71
  br label %77

77:                                               ; preds = %74, %60
  %78 = phi i32 [ %76, %74 ], [ %71, %60 ]
  %79 = getelementptr %struct.cyapa_pip_report_data, ptr %1, i32 0, i32 1, i32 %55, i32 5
  %80 = load i8, ptr %79, align 1
  %81 = zext i8 %80 to i32
  %82 = shl nuw nsw i32 %81, 8
  %83 = getelementptr %struct.cyapa_pip_report_data, ptr %1, i32 0, i32 1, i32 %55, i32 4
  %84 = load i8, ptr %83, align 1
  %85 = zext i8 %84 to i32
  %86 = or i32 %82, %85
  %87 = load i8, ptr %51, align 1
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %77
  %90 = load i32, ptr %52, align 4
  %91 = sub i32 %90, %86
  br label %92

92:                                               ; preds = %89, %77
  %93 = phi i32 [ %91, %89 ], [ %86, %77 ]
  tail call void @input_event(ptr noundef %54, i32 noundef 3, i32 noundef 53, i32 noundef %78) #11
  tail call void @input_event(ptr noundef %54, i32 noundef 3, i32 noundef 54, i32 noundef %93) #11
  tail call void @input_event(ptr noundef %54, i32 noundef 3, i32 noundef 25, i32 noundef 0) #11
  %94 = getelementptr %struct.cyapa_pip_report_data, ptr %1, i32 0, i32 1, i32 %55, i32 6
  %95 = load i8, ptr %94, align 1
  %96 = zext i8 %95 to i32
  tail call void @input_event(ptr noundef %54, i32 noundef 3, i32 noundef 58, i32 noundef %96) #11
  %97 = getelementptr %struct.cyapa_pip_report_data, ptr %1, i32 0, i32 1, i32 %55, i32 7
  %98 = load i8, ptr %97, align 1
  %99 = zext i8 %98 to i32
  tail call void @input_event(ptr noundef %54, i32 noundef 3, i32 noundef 48, i32 noundef %99) #11
  %100 = getelementptr %struct.cyapa_pip_report_data, ptr %1, i32 0, i32 1, i32 %55, i32 8
  %101 = load i8, ptr %100, align 1
  %102 = zext i8 %101 to i32
  tail call void @input_event(ptr noundef %54, i32 noundef 3, i32 noundef 49, i32 noundef %102) #11
  %103 = getelementptr %struct.cyapa_pip_report_data, ptr %1, i32 0, i32 1, i32 %55, i32 9
  %104 = load i8, ptr %103, align 1
  %105 = zext i8 %104 to i32
  tail call void @input_event(ptr noundef %54, i32 noundef 3, i32 noundef 50, i32 noundef %105) #11
  %106 = getelementptr %struct.cyapa_pip_report_data, ptr %1, i32 0, i32 1, i32 %55, i32 10
  %107 = load i8, ptr %106, align 1
  %108 = zext i8 %107 to i32
  tail call void @input_event(ptr noundef %54, i32 noundef 3, i32 noundef 51, i32 noundef %108) #11
  %109 = getelementptr %struct.cyapa_pip_report_data, ptr %1, i32 0, i32 1, i32 %55, i32 11
  %110 = load i8, ptr %109, align 1
  %111 = zext i8 %110 to i32
  tail call void @input_event(ptr noundef %54, i32 noundef 3, i32 noundef 52, i32 noundef %111) #11
  br label %112

112:                                              ; preds = %92, %53
  %113 = add nuw nsw i32 %55, 1
  %114 = icmp eq i32 %113, %46
  br i1 %114, label %117, label %115

115:                                              ; preds = %112
  %116 = load ptr, ptr %41, align 4
  br label %53

117:                                              ; preds = %112, %40
  tail call void @input_mt_sync_frame(ptr noundef %42) #11
  tail call void @input_event(ptr noundef %42, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  br label %157

118:                                              ; preds = %39
  br i1 %35, label %119, label %126

119:                                              ; preds = %118
  %120 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 5
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr [7 x i8], ptr %1, i32 0, i32 5
  %123 = load i8, ptr %122, align 1
  %124 = and i8 %123, 1
  %125 = zext i8 %124 to i32
  tail call void @input_event(ptr noundef %121, i32 noundef 3, i32 noundef 25, i32 noundef %125) #11
  tail call void @input_event(ptr noundef %121, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  br label %157

126:                                              ; preds = %118, %30
  %127 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 5
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr [7 x i8], ptr %1, i32 0, i32 5
  %130 = load i8, ptr %129, align 1
  %131 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 20
  %132 = load i8, ptr %131, align 1
  %133 = and i8 %132, 8
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %126
  %136 = and i8 %130, 1
  %137 = zext i8 %136 to i32
  tail call void @input_event(ptr noundef %128, i32 noundef 1, i32 noundef 272, i32 noundef %137) #11
  %138 = load i8, ptr %131, align 1
  br label %139

139:                                              ; preds = %135, %126
  %140 = phi i8 [ %138, %135 ], [ %132, %126 ]
  %141 = and i8 %140, 32
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %148, label %143

143:                                              ; preds = %139
  %144 = lshr i8 %130, 2
  %145 = and i8 %144, 1
  %146 = zext i8 %145 to i32
  tail call void @input_event(ptr noundef %128, i32 noundef 1, i32 noundef 274, i32 noundef %146) #11
  %147 = load i8, ptr %131, align 1
  br label %148

148:                                              ; preds = %143, %139
  %149 = phi i8 [ %147, %143 ], [ %140, %139 ]
  %150 = and i8 %149, 16
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %156, label %152

152:                                              ; preds = %148
  %153 = lshr i8 %130, 1
  %154 = and i8 %153, 1
  %155 = zext i8 %154 to i32
  tail call void @input_event(ptr noundef %128, i32 noundef 1, i32 noundef 273, i32 noundef %155) #11
  br label %156

156:                                              ; preds = %152, %148
  tail call void @input_event(ptr noundef %128, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  br label %157

157:                                              ; preds = %156, %119, %117, %38, %33, %28, %22, %16, %2
  %158 = phi i32 [ 0, %16 ], [ -22, %22 ], [ 0, %28 ], [ 0, %33 ], [ 0, %38 ], [ 0, %2 ], [ 0, %119 ], [ 0, %156 ], [ 0, %117 ]
  ret i32 %158
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i1 noundef zeroext %7) local_unnamed_addr #0 {
  %9 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 35
  %10 = icmp ne ptr %1, null
  %11 = icmp ne i32 %2, 0
  %12 = and i1 %10, %11
  br i1 %12, label %13, label %127

13:                                               ; preds = %8
  %14 = tail call i32 @mutex_lock_interruptible(ptr noundef %9) #11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %127

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 35, i32 0, i32 5
  store ptr %6, ptr %17, align 4
  %18 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 35, i32 0, i32 6
  store ptr %3, ptr %18, align 4
  %19 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 35, i32 0, i32 7
  store ptr %4, ptr %19, align 4
  %20 = icmp sgt i32 %2, 6
  br i1 %20, label %21, label %39

21:                                               ; preds = %16
  %22 = getelementptr i8, ptr %1, i32 4
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, 47
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = getelementptr i8, ptr %1, i32 6
  %27 = load i8, ptr %26, align 1
  %28 = and i8 %27, 127
  br label %36

29:                                               ; preds = %21
  %30 = icmp ugt i32 %2, 12
  %31 = icmp eq i8 %23, 64
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = getelementptr i8, ptr %1, i32 7
  %35 = load i8, ptr %34, align 1
  br label %36

36:                                               ; preds = %33, %25
  %37 = phi i8 [ %35, %33 ], [ %28, %25 ]
  %38 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 35, i32 0, i32 3
  store i8 %37, ptr %38, align 4
  br label %39

39:                                               ; preds = %36, %29, %16
  %40 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 35, i32 0, i32 4
  br i1 %7, label %41, label %80

41:                                               ; preds = %39
  store i8 1, ptr %40, align 1
  %42 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 35, i32 0, i32 1
  store i32 0, ptr %42, align 4
  %43 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 35, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %43, ptr noundef nonnull @.str.13, ptr noundef nonnull @init_completion.__key) #11
  %44 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 35, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %44) #11, !srcloc !9
  %45 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %44, ptr %44, i32 1, ptr elementtype(i32) %44) #11, !srcloc !10
  %46 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 4
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %47, ptr noundef nonnull %1, i32 noundef %2, i16 noundef zeroext 0) #11
  %49 = icmp eq i32 %48, %2
  br i1 %49, label %54, label %50

50:                                               ; preds = %41
  %51 = icmp slt i32 %48, 0
  %52 = select i1 %51, i32 %48, i32 -5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %44) #11, !srcloc !9
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %44, ptr %44, i32 1, ptr elementtype(i32) %44) #11, !srcloc !11
  br label %60

54:                                               ; preds = %41
  %55 = tail call i32 @__msecs_to_jiffies(i32 noundef %5) #11
  %56 = tail call i32 @wait_for_completion_timeout(ptr noundef %42, i32 noundef %55) #11
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %124

58:                                               ; preds = %54
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %44) #11, !srcloc !9
  %59 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %44, ptr %44, i32 1, ptr elementtype(i32) %44) #11, !srcloc !11
  br label %60

60:                                               ; preds = %58, %50
  %61 = phi i32 [ %52, %50 ], [ -110, %58 ]
  %62 = icmp eq i32 %61, -110
  %63 = icmp ne ptr %3, null
  %64 = and i1 %63, %62
  %65 = icmp ne ptr %4, null
  %66 = and i1 %65, %64
  br i1 %66, label %67, label %124

67:                                               ; preds = %60
  %68 = load i32, ptr %4, align 4
  %69 = icmp ne i32 %68, 0
  %70 = icmp ne ptr %6, null
  %71 = and i1 %70, %69
  br i1 %71, label %72, label %124

72:                                               ; preds = %67
  %73 = tail call i32 @cyapa_empty_pip_output_data(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %6)
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, ptr %4, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %124

78:                                               ; preds = %75, %72
  %79 = phi i32 [ -110, %75 ], [ %73, %72 ]
  br label %124

80:                                               ; preds = %39
  store i8 0, ptr %40, align 1
  %81 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 35, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %81) #11, !srcloc !9
  %82 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %81, ptr %81, i32 1, ptr elementtype(i32) %81) #11, !srcloc !10
  %83 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 4
  %84 = load ptr, ptr %83, align 4
  %85 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %84, ptr noundef nonnull %1, i32 noundef %2, i16 noundef zeroext 0) #11
  %86 = icmp eq i32 %85, %2
  br i1 %86, label %91, label %87

87:                                               ; preds = %80
  %88 = icmp slt i32 %85, 0
  %89 = select i1 %88, i32 %85, i32 -5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %81) #11, !srcloc !9
  %90 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %81, ptr %81, i32 1, ptr elementtype(i32) %81) #11, !srcloc !11
  br label %124

91:                                               ; preds = %80
  %92 = icmp eq ptr %4, null
  br i1 %92, label %121, label %93

93:                                               ; preds = %91
  %94 = load i32, ptr %4, align 4
  %95 = icmp ne ptr %3, null
  %96 = icmp ne i32 %94, 0
  %97 = select i1 %95, i1 %96, i1 false
  %98 = icmp ne ptr %6, null
  %99 = and i1 %98, %97
  br i1 %99, label %100, label %121

100:                                              ; preds = %93
  %101 = udiv i32 %5, 5
  br label %102

102:                                              ; preds = %115, %100
  %103 = phi i32 [ %101, %100 ], [ %116, %115 ]
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 5000, i32 noundef 2) #11
  store i32 %94, ptr %4, align 4
  %104 = tail call i32 @cyapa_empty_pip_output_data(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %6) #11
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %102
  %107 = load i32, ptr %4, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %106
  %110 = add i32 %103, -1
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %115, label %119

112:                                              ; preds = %102
  %113 = add nsw i32 %103, -1
  %114 = icmp sgt i32 %103, 1
  br i1 %114, label %115, label %119

115:                                              ; preds = %112, %109
  %116 = phi i32 [ %110, %109 ], [ %113, %112 ]
  br label %102

117:                                              ; preds = %106
  %118 = icmp eq i32 %103, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %117, %112, %109
  %120 = phi i32 [ -110, %117 ], [ -110, %109 ], [ %104, %112 ]
  br label %121

121:                                              ; preds = %119, %117, %93, %91
  %122 = phi i32 [ %120, %119 ], [ 0, %117 ], [ 0, %93 ], [ 0, %91 ]
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %81) #11, !srcloc !9
  %123 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %81, ptr %81, i32 1, ptr elementtype(i32) %81) #11, !srcloc !11
  br label %124

124:                                              ; preds = %121, %87, %78, %75, %67, %60, %54
  %125 = phi i32 [ %79, %78 ], [ 0, %75 ], [ -110, %67 ], [ %61, %60 ], [ %89, %87 ], [ %122, %121 ], [ 0, %54 ]
  store ptr null, ptr %17, align 4
  store ptr null, ptr %18, align 4
  store ptr null, ptr %19, align 4
  %126 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 35, i32 0, i32 3
  store i8 -1, ptr %126, align 4
  tail call void @mutex_unlock(ptr noundef %9) #11
  br label %127

127:                                              ; preds = %124, %13, %8
  %128 = phi i32 [ %125, %124 ], [ -22, %8 ], [ %14, %13 ]
  ret i32 %128
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @cyapa_sort_tsg_pip_bl_resp_data(ptr nocapture readnone %0, ptr noundef readonly %1, i32 noundef %2) #4 {
  %4 = icmp eq ptr %1, null
  %5 = icmp slt i32 %2, 11
  %6 = or i1 %4, %5
  br i1 %6, label %20, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %1, i32 2
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 48
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %1, i32 3
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = getelementptr i8, ptr %1, i32 4
  %17 = load i8, ptr %16, align 1
  %18 = icmp eq i8 %17, 1
  br i1 %18, label %20, label %19

19:                                               ; preds = %15, %11, %7
  br label %20

20:                                               ; preds = %19, %15, %3
  %21 = phi i1 [ false, %19 ], [ false, %3 ], [ true, %15 ]
  ret i1 %21
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @cyapa_sort_tsg_pip_app_resp_data(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) #4 {
  %4 = icmp eq ptr %1, null
  %5 = icmp slt i32 %2, 5
  %6 = or i1 %4, %5
  br i1 %6, label %36, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %1, i32 2
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 31
  br i1 %10, label %11, label %35

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %1, i32 3
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %11
  %16 = load i16, ptr %1, align 1
  %17 = getelementptr i8, ptr %1, i32 4
  %18 = load i8, ptr %17, align 1
  %19 = and i8 %18, 127
  %20 = icmp eq i8 %19, 0
  %21 = icmp eq i16 %16, 6
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %26, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 35, i32 0, i32 3
  %25 = load i8, ptr %24, align 4
  br label %32

26:                                               ; preds = %15
  %27 = getelementptr i8, ptr %1, i32 5
  %28 = load i8, ptr %27, align 1
  %29 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 35, i32 0, i32 3
  %30 = load i8, ptr %29, align 4
  %31 = icmp eq i8 %28, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %26, %23
  %33 = phi i8 [ %25, %23 ], [ %30, %26 ]
  %34 = icmp eq i8 %19, %33
  br i1 %34, label %36, label %35

35:                                               ; preds = %32, %11, %7
  br label %36

36:                                               ; preds = %35, %32, %26, %3
  %37 = phi i1 [ false, %35 ], [ false, %3 ], [ false, %26 ], [ true, %32 ]
  ret i1 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cyapa_pip_bl_initiate(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [256 x i8], align 2
  %4 = alloca [11 x i8], align 1
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %4, i8 0, i32 11, i1 false), !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  %6 = tail call i32 @cyapa_empty_pip_output_data(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null)
  %7 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(256) %7, i8 0, i32 252, i1 false)
  store i16 4, ptr %3, align 2
  %8 = getelementptr inbounds %struct.pip_bl_cmd_head, ptr %3, i32 0, i32 1
  store i16 147, ptr %8, align 2
  %9 = getelementptr inbounds %struct.pip_bl_cmd_head, ptr %3, i32 0, i32 2
  store i8 64, ptr %9, align 2
  %10 = getelementptr inbounds %struct.pip_bl_cmd_head, ptr %3, i32 0, i32 4
  store i8 1, ptr %10, align 2
  %11 = getelementptr inbounds %struct.pip_bl_cmd_head, ptr %3, i32 0, i32 4, i32 1
  store i8 72, ptr %11, align 1
  %12 = getelementptr inbounds %struct.pip_bl_cmd_head, ptr %3, i32 0, i32 4, i32 2
  store i16 136, ptr %12, align 2
  %13 = getelementptr inbounds %struct.pip_bl_cmd_head, ptr %3, i32 0, i32 5
  store i64 6556677003741888933, ptr %13, align 2
  %14 = getelementptr inbounds %struct.firmware, ptr %1, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = add nuw nsw i32 %17, 1
  %19 = load i32, ptr %1, align 4
  %20 = sub i32 %19, %18
  %21 = udiv i32 %20, 133
  %22 = getelementptr i8, ptr %15, i32 %18
  %23 = add nsw i32 %21, -1
  %24 = getelementptr %struct.cyapa_tsg_bin_image_data_record, ptr %22, i32 %23, i32 3
  %25 = getelementptr inbounds %struct.pip_bl_cmd_head, ptr %3, i32 1, i32 4, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(60) %25, ptr noundef align 1 dereferenceable(60) %24, i32 60, i1 false)
  %26 = call zeroext i16 @crc_itu_t(i16 noundef zeroext -1, ptr noundef %25, i32 noundef 60) #11
  %27 = getelementptr inbounds %struct.pip_bl_cmd_head, ptr %3, i32 7, i32 4, i32 2
  store i16 %26, ptr %27, align 2
  %28 = getelementptr inbounds %struct.pip_bl_cmd_head, ptr %3, i32 14, i32 4
  %29 = call zeroext i16 @crc_itu_t(i16 noundef zeroext -1, ptr noundef %10, i32 noundef 140) #11
  store i16 %29, ptr %28, align 2
  %30 = getelementptr inbounds %struct.pip_bl_cmd_head, ptr %3, i32 14, i32 4, i32 2
  store i8 23, ptr %30, align 2
  store i32 11, ptr %5, align 4
  %31 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 149, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 12000, ptr noundef nonnull @cyapa_sort_tsg_pip_bl_resp_data, i1 noundef zeroext true)
  %32 = icmp eq i32 %31, 0
  %33 = load i32, ptr %5, align 4
  %34 = icmp eq i32 %33, 11
  %35 = select i1 %32, i1 %34, i1 false
  %36 = getelementptr inbounds [11 x i8], ptr %4, i32 0, i32 2
  %37 = load i8, ptr %36, align 1
  %38 = icmp eq i8 %37, 48
  %39 = select i1 %35, i1 %38, i1 false
  %40 = getelementptr inbounds [11 x i8], ptr %4, i32 0, i32 5
  %41 = load i8, ptr %40, align 1
  %42 = icmp eq i8 %41, 0
  %43 = select i1 %39, i1 %42, i1 false
  %44 = select i1 %32, i32 -11, i32 %31
  %45 = select i1 %43, i32 0, i32 %44
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #11
  ret i32 %45
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc_itu_t(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cyapa_pip_bl_exit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [13 x i8], align 1
  %3 = alloca [11 x i8], align 1
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %2) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(13) %2, ptr noundef nonnull align 1 dereferenceable(13) @__const.cyapa_pip_bl_exit.bl_gen5_bl_exit, i32 13, i1 false)
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %3, i8 0, i32 11, i1 false), !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 11, ptr %4, align 4
  %5 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 13, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 5000, ptr noundef nonnull @cyapa_sort_pip_bl_exit_data, i1 noundef zeroext false)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = load i32, ptr %4, align 4
  %9 = icmp eq i32 %8, 11
  %10 = getelementptr inbounds [11 x i8], ptr %3, i32 0, i32 2
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 48
  %13 = select i1 %9, i1 true, i1 %12
  br i1 %13, label %22, label %14

14:                                               ; preds = %7
  %15 = load i8, ptr %3, align 1
  %16 = icmp eq i8 %15, 0
  %17 = getelementptr inbounds [11 x i8], ptr %3, i32 0, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, 0
  %20 = select i1 %16, i1 %19, i1 false
  %21 = select i1 %20, i32 0, i32 -19
  br label %22

22:                                               ; preds = %14, %7, %1
  %23 = phi i32 [ %5, %1 ], [ -11, %7 ], [ %21, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %2) #11
  ret i32 %23
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cyapa_sort_pip_bl_exit_data(ptr nocapture noundef readnone %0, ptr noundef readonly %1, i32 noundef %2) #4 {
  %4 = icmp eq ptr %1, null
  %5 = icmp slt i32 %2, 2
  %6 = or i1 %4, %5
  br i1 %6, label %33, label %7

7:                                                ; preds = %3
  %8 = load i8, ptr %1, align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = getelementptr i8, ptr %1, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %33, label %14

14:                                               ; preds = %10, %7
  %15 = icmp eq i32 %2, 11
  br i1 %15, label %16, label %32

16:                                               ; preds = %14
  %17 = getelementptr i8, ptr %1, i32 2
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, 48
  br i1 %19, label %20, label %32

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %1, i32 3
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = getelementptr i8, ptr %1, i32 4
  %26 = load i8, ptr %25, align 1
  %27 = icmp eq i8 %26, 1
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = getelementptr i8, ptr %1, i32 10
  %30 = load i8, ptr %29, align 1
  %31 = icmp eq i8 %30, 23
  br i1 %31, label %33, label %32

32:                                               ; preds = %28, %24, %20, %16, %14
  br label %33

33:                                               ; preds = %32, %28, %10, %3
  %34 = phi i1 [ false, %32 ], [ false, %3 ], [ true, %10 ], [ true, %28 ]
  ret i1 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cyapa_pip_bl_enter(ptr noundef %0) #0 {
  %2 = alloca [7 x i8], align 1
  %3 = alloca [2 x i8], align 2
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %2) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %2, ptr noundef nonnull align 1 dereferenceable(7) @__const.cyapa_pip_bl_enter.cmd, i32 7, i1 false)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  %5 = tail call i32 @cyapa_poll_state(ptr noundef %0, i32 noundef 500) #11
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %31, label %7

7:                                                ; preds = %1
  %8 = tail call zeroext i1 @cyapa_is_pip_bl_mode(ptr noundef %0) #11
  br i1 %8, label %31, label %9

9:                                                ; preds = %7
  %10 = tail call zeroext i1 @cyapa_is_pip_app_mode(ptr noundef %0) #11
  br i1 %10, label %11, label %31

11:                                               ; preds = %9
  %12 = tail call i32 @cyapa_empty_pip_output_data(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null)
  store i32 2, ptr %4, align 4
  store i16 0, ptr %3, align 2
  %13 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 7, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 5000, ptr noundef nonnull @cyapa_sort_pip_application_launch_data, i1 noundef zeroext true)
  %14 = icmp ne i32 %13, 0
  %15 = load i8, ptr %3, align 2
  %16 = icmp ne i8 %15, 0
  %17 = select i1 %14, i1 true, i1 %16
  %18 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  %19 = load i8, ptr %18, align 1
  %20 = icmp ne i8 %19, 0
  %21 = select i1 %17, i1 true, i1 %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %11
  %23 = icmp slt i32 %13, 0
  %24 = select i1 %23, i32 %13, i32 -11
  br label %31

25:                                               ; preds = %11
  %26 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 2
  store i8 0, ptr %26, align 1
  %27 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 21
  %28 = load i8, ptr %27, align 4
  switch i8 %28, label %31 [
    i8 5, label %29
    i8 6, label %30
  ]

29:                                               ; preds = %25
  store i32 5, ptr %0, align 4
  br label %31

30:                                               ; preds = %25
  store i32 7, ptr %0, align 4
  br label %31

31:                                               ; preds = %30, %29, %25, %22, %9, %7, %1
  %32 = phi i32 [ %24, %22 ], [ %5, %1 ], [ 0, %7 ], [ -22, %9 ], [ 0, %25 ], [ 0, %30 ], [ 0, %29 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %2) #11
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cyapa_poll_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cyapa_is_pip_bl_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cyapa_is_pip_app_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cyapa_sort_pip_application_launch_data(ptr nocapture noundef readnone %0, ptr noundef readonly %1, i32 noundef %2) #4 {
  %4 = icmp eq ptr %1, null
  %5 = icmp slt i32 %2, 2
  %6 = or i1 %4, %5
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = load i8, ptr %1, align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = getelementptr i8, ptr %1, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10, %7
  br label %15

15:                                               ; preds = %14, %10, %3
  %16 = phi i1 [ false, %14 ], [ false, %3 ], [ true, %10 ]
  ret i1 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cyapa_pip_check_fw(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  %6 = getelementptr inbounds %struct.firmware, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load i8, ptr %7, align 1
  switch i8 %8, label %93 [
    i8 12, label %9
    i8 18, label %9
  ]

9:                                                ; preds = %2, %2
  %10 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 21
  %11 = load i8, ptr %10, align 4
  switch i8 %11, label %93 [
    i8 6, label %12
    i8 5, label %20
  ]

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.cyapa_tsg_bin_image_head, ptr %7, i32 0, i32 9
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %14, -101
  br i1 %15, label %16, label %93

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.cyapa_tsg_bin_image_head, ptr %7, i32 0, i32 6
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, 11
  br i1 %19, label %34, label %93

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 17
  %22 = load i8, ptr %21, align 4
  %23 = icmp ult i8 %22, 2
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = icmp eq i8 %8, 12
  br i1 %25, label %34, label %93

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.cyapa_tsg_bin_image_head, ptr %7, i32 0, i32 9
  %28 = load i8, ptr %27, align 1
  %29 = icmp eq i8 %28, -111
  br i1 %29, label %30, label %93

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.cyapa_tsg_bin_image_head, ptr %7, i32 0, i32 6
  %32 = load i8, ptr %31, align 1
  %33 = icmp eq i8 %32, 2
  br i1 %33, label %34, label %93

34:                                               ; preds = %30, %24, %16
  %35 = zext i8 %8 to i32
  %36 = add nuw nsw i32 %35, 1
  %37 = load i32, ptr %1, align 4
  %38 = sub i32 %37, %36
  %39 = udiv i32 %38, 133
  %40 = getelementptr i8, ptr %7, i32 %36
  %41 = add nsw i32 %39, -1
  %42 = getelementptr %struct.cyapa_tsg_bin_image_data_record, ptr %40, i32 %41
  %43 = load i8, ptr %42, align 1
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %93

45:                                               ; preds = %34
  %46 = getelementptr %struct.cyapa_tsg_bin_image_data_record, ptr %40, i32 %41, i32 1
  %47 = load i16, ptr %46, align 1
  %48 = icmp eq i16 %47, -255
  br i1 %48, label %49, label %93

49:                                               ; preds = %45
  %50 = getelementptr %struct.cyapa_tsg_bin_image_data_record, ptr %40, i32 %41, i32 3
  %51 = tail call zeroext i16 @crc_itu_t(i16 noundef zeroext -1, ptr noundef %50, i32 noundef 60) #11
  %52 = getelementptr inbounds %struct.tsg_bl_metadata_row_params, ptr %50, i32 0, i32 10
  %53 = load i16, ptr %52, align 1
  %54 = icmp eq i16 %51, %53
  br i1 %54, label %55, label %93

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.tsg_bl_metadata_row_params, ptr %50, i32 0, i32 2
  %57 = load i32, ptr %56, align 1
  %58 = and i32 %57, 127
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %93

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.tsg_bl_metadata_row_params, ptr %50, i32 0, i32 7
  %62 = load i16, ptr %61, align 1
  %63 = getelementptr inbounds %struct.tsg_bl_metadata_row_params, ptr %50, i32 0, i32 6
  %64 = load i32, ptr %63, align 1
  %65 = getelementptr inbounds %struct.tsg_bl_metadata_row_params, ptr %50, i32 0, i32 3
  %66 = load i16, ptr %65, align 1
  %67 = zext i16 %66 to i32
  %68 = and i32 %67, 127
  %69 = icmp eq i32 %68, 0
  %70 = and i32 %64, 127
  %71 = icmp eq i32 %70, 0
  %72 = select i1 %69, i1 %71, i1 false
  %73 = and i16 %62, 127
  %74 = icmp eq i16 %73, 0
  %75 = select i1 %72, i1 %74, i1 false
  br i1 %75, label %76, label %93

76:                                               ; preds = %60
  %77 = icmp ult i16 %66, 128
  br i1 %77, label %88, label %78

78:                                               ; preds = %76
  %79 = lshr i32 %67, 7
  %80 = call i32 @llvm.umax.i32(i32 %79, i32 1)
  br label %81

81:                                               ; preds = %81, %78
  %82 = phi i32 [ %86, %81 ], [ 0, %78 ]
  %83 = phi i16 [ %85, %81 ], [ -1, %78 ]
  %84 = getelementptr %struct.cyapa_tsg_bin_image_data_record, ptr %40, i32 %82, i32 3
  %85 = tail call zeroext i16 @crc_itu_t(i16 noundef zeroext %83, ptr noundef %84, i32 noundef 128) #11
  %86 = add nuw nsw i32 %82, 1
  %87 = icmp eq i32 %86, %80
  br i1 %87, label %88, label %81

88:                                               ; preds = %81, %76
  %89 = phi i16 [ -1, %76 ], [ %85, %81 ]
  %90 = getelementptr inbounds %struct.tsg_bl_metadata_row_params, ptr %50, i32 0, i32 4
  %91 = load i16, ptr %90, align 1
  %92 = icmp eq i16 %89, %91
  br i1 %92, label %95, label %93

93:                                               ; preds = %88, %60, %55, %49, %45, %34, %30, %26, %24, %16, %12, %9, %2
  %94 = phi ptr [ @.str.3, %2 ], [ @.str.3, %16 ], [ @.str.3, %12 ], [ @.str.3, %24 ], [ @.str.3, %30 ], [ @.str.3, %26 ], [ @.str.3, %9 ], [ @.str.4, %34 ], [ @.str.4, %45 ], [ @.str.5, %49 ], [ @.str.6, %55 ], [ @.str.6, %60 ], [ @.str.7, %88 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull %94, ptr noundef nonnull @__func__.cyapa_pip_check_fw) #12
  br label %95

95:                                               ; preds = %93, %88
  %96 = phi i32 [ 0, %88 ], [ -22, %93 ]
  ret i32 %96
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cyapa_pip_do_fw_update(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [256 x i8], align 2
  %4 = alloca [11 x i8], align 1
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  %9 = tail call i32 @cyapa_empty_pip_output_data(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null)
  %10 = getelementptr inbounds %struct.firmware, ptr %1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = add nuw nsw i32 %13, 1
  %15 = load i32, ptr %1, align 4
  %16 = sub i32 %15, %14
  %17 = getelementptr i8, ptr %11, i32 %14
  %18 = icmp ugt i32 %16, 265
  br i1 %18, label %19, label %67

19:                                               ; preds = %2
  %20 = udiv i32 %16, 133
  %21 = getelementptr inbounds i8, ptr %3, i32 4
  %22 = getelementptr inbounds %struct.pip_bl_cmd_head, ptr %3, i32 0, i32 4
  %23 = getelementptr inbounds %struct.pip_bl_cmd_head, ptr %3, i32 0, i32 1
  %24 = getelementptr inbounds %struct.pip_bl_cmd_head, ptr %3, i32 0, i32 4, i32 1
  %25 = getelementptr inbounds %struct.pip_bl_cmd_head, ptr %3, i32 0, i32 4, i32 2
  %26 = getelementptr inbounds %struct.pip_bl_cmd_head, ptr %3, i32 0, i32 5
  %27 = getelementptr inbounds %struct.tsg_bl_flash_row_head, ptr %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.tsg_bl_flash_row_head, ptr %26, i32 0, i32 2
  %29 = getelementptr inbounds [11 x i8], ptr %4, i32 0, i32 2
  %30 = getelementptr inbounds [11 x i8], ptr %4, i32 0, i32 5
  %31 = add nsw i32 %20, -2
  br label %35

32:                                               ; preds = %35
  %33 = add nuw nsw i32 %36, 1
  %34 = icmp eq i32 %36, %31
  br i1 %34, label %67, label %35

35:                                               ; preds = %32, %19
  %36 = phi i32 [ 0, %19 ], [ %33, %32 ]
  %37 = getelementptr %struct.cyapa_tsg_bin_image_data_record, ptr %17, i32 %36
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %4, i8 0, i32 11, i1 false) #11, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  %38 = load i8, ptr %37, align 1
  %39 = getelementptr inbounds %struct.cyapa_tsg_bin_image_data_record, ptr %37, i32 0, i32 1
  %40 = load i16, ptr %39, align 1
  %41 = call i16 @llvm.bswap.i16(i16 %40) #11
  %42 = getelementptr inbounds %struct.cyapa_tsg_bin_image_data_record, ptr %37, i32 0, i32 2
  %43 = load i16, ptr %42, align 1
  %44 = call i16 @llvm.bswap.i16(i16 %43) #11
  %45 = getelementptr inbounds %struct.cyapa_tsg_bin_image_data_record, ptr %37, i32 0, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(256) %21, i8 0, i32 252, i1 false) #11
  store i16 4, ptr %3, align 2
  store i16 142, ptr %23, align 2
  store i8 64, ptr %21, align 2
  store i8 1, ptr %22, align 2
  store i8 57, ptr %24, align 1
  %46 = zext i16 %44 to i32
  %47 = add i16 %44, 3
  store i16 %47, ptr %25, align 2
  store i8 %38, ptr %26, align 2
  store i16 %41, ptr %27, align 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %28, ptr align 1 %45, i32 %46, i1 false) #11
  %48 = zext i16 %47 to i32
  %49 = getelementptr i8, ptr %26, i32 %48
  %50 = add nuw nsw i32 %48, 4
  %51 = call zeroext i16 @crc_itu_t(i16 noundef zeroext -1, ptr noundef %22, i32 noundef %50) #11
  store i16 %51, ptr %49, align 1
  %52 = getelementptr inbounds %struct.pip_bl_packet_end, ptr %49, i32 0, i32 1
  store i8 23, ptr %52, align 1
  store i32 11, ptr %5, align 4
  %53 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 144, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_bl_resp_data, i1 noundef zeroext true) #11
  %54 = icmp eq i32 %53, 0
  %55 = load i32, ptr %5, align 4
  %56 = icmp eq i32 %55, 11
  %57 = select i1 %54, i1 %56, i1 false
  %58 = load i8, ptr %29, align 1
  %59 = icmp eq i8 %58, 48
  %60 = select i1 %57, i1 %59, i1 false
  %61 = load i8, ptr %30, align 1
  %62 = icmp eq i8 %61, 0
  %63 = select i1 %60, i1 %62, i1 false
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #11
  br i1 %63, label %32, label %64

64:                                               ; preds = %35
  %65 = icmp slt i32 %53, 0
  %66 = select i1 %65, i32 %53, i32 -11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.cyapa_pip_do_fw_update, i32 noundef %66) #12
  br label %67

67:                                               ; preds = %64, %32, %2
  %68 = phi i32 [ %66, %64 ], [ 0, %2 ], [ 0, %32 ]
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cyapa_pip_set_proximity(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = alloca [8 x i8], align 8
  %4 = alloca [6 x i8], align 1
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store i64 20547875163734020, ptr %3, align 8, !annotation !12
  %6 = getelementptr inbounds i8, ptr %3, i32 7
  %7 = zext i1 %1 to i8
  store i8 %7, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %4, i8 0, i32 6, i1 false), !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 6, ptr %5, align 4
  %8 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 8, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext false)
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 2
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 31
  %13 = select i1 %9, i1 %12, i1 false
  %14 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 3
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 0
  %17 = select i1 %13, i1 %16, i1 false
  br i1 %17, label %18, label %27

18:                                               ; preds = %2
  %19 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 4
  %20 = load i8, ptr %19, align 1
  %21 = and i8 %20, 127
  %22 = icmp eq i8 %21, 73
  %23 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 5
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %24, 0
  %26 = select i1 %22, i1 %25, i1 false
  br i1 %26, label %32, label %27

27:                                               ; preds = %18, %2
  %28 = icmp eq i32 %8, -110
  %29 = select i1 %28, i32 -95, i32 %8
  %30 = icmp slt i32 %29, 0
  %31 = select i1 %30, i32 %29, i32 -22
  br label %32

32:                                               ; preds = %27, %18
  %33 = phi i32 [ %31, %27 ], [ 0, %18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cyapa_pip_deep_sleep(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca [4 x i8], align 4
  %4 = alloca [5 x i8], align 1
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 134217733, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %4, i8 0, i32 5, i1 false), !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  %6 = and i8 %1, 3
  %7 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 2
  store i8 %6, ptr %7, align 2
  store i32 5, ptr %5, align 4
  %8 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 4, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 500, ptr noundef nonnull @cyapa_sort_pip_deep_sleep_data, i1 noundef zeroext false)
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds [5 x i8], ptr %4, i32 0, i32 3
  %11 = load i8, ptr %10, align 1
  %12 = and i8 %11, 3
  %13 = icmp eq i8 %12, %1
  %14 = select i1 %9, i1 %13, i1 false
  %15 = select i1 %14, i32 0, i32 -22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %15
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cyapa_sort_pip_deep_sleep_data(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2) #4 {
  %4 = icmp eq i32 %2, 5
  br i1 %4, label %5, label %14

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %1, i32 2
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, -16
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %1, i32 4
  %11 = load i8, ptr %10, align 1
  %12 = and i8 %11, 15
  %13 = icmp eq i8 %12, 8
  br i1 %13, label %15, label %14

14:                                               ; preds = %9, %5, %3
  br label %15

15:                                               ; preds = %14, %9
  %16 = phi i1 [ false, %14 ], [ true, %9 ]
  ret i1 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cyapa_pip_resume_scanning(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [7 x i8], align 1
  %3 = alloca [6 x i8], align 1
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %2) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %2, ptr noundef nonnull align 1 dereferenceable(7) @__const.cyapa_pip_resume_scanning.cmd, i32 7, i1 false)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false), !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  %5 = tail call i32 @cyapa_empty_pip_output_data(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null)
  store i32 6, ptr %4, align 4
  %6 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 7, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext true)
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 2
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 31
  %11 = select i1 %7, i1 %10, i1 false
  %12 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 3
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 0
  %15 = select i1 %11, i1 %14, i1 false
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 4
  %18 = load i8, ptr %17, align 1
  %19 = and i8 %18, 127
  %20 = icmp eq i8 %19, 4
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = call i32 @cyapa_empty_pip_output_data(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %23

23:                                               ; preds = %21, %16, %1
  %24 = phi i32 [ 0, %21 ], [ -22, %16 ], [ -22, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %2) #11
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cyapa_pip_suspend_scanning(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [7 x i8], align 1
  %3 = alloca [6 x i8], align 1
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %2) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %2, ptr noundef nonnull align 1 dereferenceable(7) @__const.cyapa_pip_suspend_scanning.cmd, i32 7, i1 false)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false), !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  %5 = tail call i32 @cyapa_empty_pip_output_data(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null)
  store i32 6, ptr %4, align 4
  %6 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 7, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext true)
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 2
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 31
  %11 = select i1 %7, i1 %10, i1 false
  %12 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 3
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 0
  %15 = select i1 %11, i1 %14, i1 false
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 4
  %18 = load i8, ptr %17, align 1
  %19 = and i8 %18, 127
  %20 = icmp eq i8 %19, 3
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = call i32 @cyapa_empty_pip_output_data(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %23

23:                                               ; preds = %21, %16, %1
  %24 = phi i32 [ 0, %21 ], [ -22, %16 ], [ -22, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %2) #11
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cyapa_pip_do_calibrate(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture readnone %2, i32 noundef %3) #0 {
  %5 = alloca [8 x i8], align 8
  %6 = alloca [6 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca [8 x i8], align 8
  %9 = alloca [6 x i8], align 1
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  %13 = tail call i32 @cyapa_pip_suspend_scanning(ptr noundef %12)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %75

15:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %9) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %9, i8 0, i32 6, i1 false) #11, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  %16 = tail call i32 @cyapa_empty_pip_output_data(ptr noundef %12, ptr noundef null, ptr noundef null, ptr noundef null) #11
  store i64 11259200932282372, ptr %8, align 8
  store i32 6, ptr %10, align 4
  %17 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %12, ptr noundef nonnull %8, i32 noundef 8, ptr noundef nonnull %9, ptr noundef nonnull %10, i32 noundef 5000, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext true) #11
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 2
  %20 = load i8, ptr %19, align 1
  %21 = icmp eq i8 %20, 31
  %22 = select i1 %18, i1 %21, i1 false
  %23 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 3
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %24, 0
  %26 = select i1 %22, i1 %25, i1 false
  br i1 %26, label %27, label %36

27:                                               ; preds = %15
  %28 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 4
  %29 = load i8, ptr %28, align 1
  %30 = and i8 %29, 127
  %31 = icmp eq i8 %30, 40
  %32 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 5
  %33 = load i8, ptr %32, align 1
  %34 = icmp eq i8 %33, 0
  %35 = select i1 %31, i1 %34, i1 false
  br i1 %35, label %41, label %39

36:                                               ; preds = %15
  %37 = icmp slt i32 %17, 0
  %38 = select i1 %37, i32 %17, i32 -11
  br label %39

39:                                               ; preds = %36, %27
  %40 = phi i32 [ -11, %27 ], [ %38, %36 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  br label %67

41:                                               ; preds = %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %6, i8 0, i32 6, i1 false) #11, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  %42 = call i32 @cyapa_empty_pip_output_data(ptr noundef %12, ptr noundef null, ptr noundef null, ptr noundef null) #11
  store i64 155374389008138244, ptr %5, align 8
  store i32 6, ptr %7, align 4
  %43 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %12, ptr noundef nonnull %5, i32 noundef 8, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 5000, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext true) #11
  %44 = icmp eq i32 %43, 0
  %45 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 2
  %46 = load i8, ptr %45, align 1
  %47 = icmp eq i8 %46, 31
  %48 = select i1 %44, i1 %47, i1 false
  %49 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 3
  %50 = load i8, ptr %49, align 1
  %51 = icmp eq i8 %50, 0
  %52 = select i1 %48, i1 %51, i1 false
  br i1 %52, label %53, label %62

53:                                               ; preds = %41
  %54 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 4
  %55 = load i8, ptr %54, align 1
  %56 = and i8 %55, 127
  %57 = icmp eq i8 %56, 40
  %58 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 5
  %59 = load i8, ptr %58, align 1
  %60 = icmp eq i8 %59, 0
  %61 = select i1 %57, i1 %60, i1 false
  br i1 %61, label %65, label %62

62:                                               ; preds = %53, %41
  %63 = icmp slt i32 %43, 0
  %64 = select i1 %63, i32 %43, i32 -11
  br label %65

65:                                               ; preds = %62, %53
  %66 = phi i32 [ %64, %62 ], [ 0, %53 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %67

67:                                               ; preds = %65, %39
  %68 = phi i32 [ %66, %65 ], [ %40, %39 ]
  %69 = call i32 @cyapa_pip_resume_scanning(ptr noundef %12)
  %70 = icmp ne i32 %69, 0
  %71 = icmp ne i32 %68, 0
  %72 = select i1 %70, i1 true, i1 %71
  %73 = select i1 %70, i32 %69, i32 %68
  %74 = select i1 %72, i32 %73, i32 %3
  br label %75

75:                                               ; preds = %67, %4
  %76 = phi i32 [ %13, %4 ], [ %74, %67 ]
  ret i32 %76
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @cyapa_pip_sort_system_info_data(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, i32 %2) #4 {
  %4 = getelementptr i8, ptr %1, i32 2
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 31
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %1, i32 3
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %1, i32 4
  %13 = load i8, ptr %12, align 1
  %14 = and i8 %13, 127
  %15 = icmp eq i8 %14, 2
  br i1 %15, label %17, label %16

16:                                               ; preds = %11, %7, %3
  br label %17

17:                                               ; preds = %16, %11
  %18 = phi i1 [ false, %16 ], [ true, %11 ]
  ret i1 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @cyapa_pip_irq_cmd_handler(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  %3 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 35, i32 0, i32 2
  %4 = load volatile i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %71, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 35, i32 0, i32 4
  %8 = load i8, ptr %7, align 1, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %71, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 35, i32 0, i32 10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %15, ptr noundef nonnull %11, i32 noundef 2, i16 noundef zeroext 1) #11
  br label %17

17:                                               ; preds = %13, %10
  %18 = load i16, ptr %11, align 1
  %19 = tail call i16 @llvm.umax.i16(i16 %18, i16 2)
  %20 = zext i16 %19 to i32
  %21 = icmp ult i16 %18, 3
  %22 = icmp ugt i16 %19, 256
  %23 = or i1 %12, %22
  %24 = select i1 %21, i1 true, i1 %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %27, ptr noundef nonnull %11, i32 noundef %20, i16 noundef zeroext 1) #11
  br label %29

29:                                               ; preds = %25, %17
  %30 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 35, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = tail call zeroext i1 %31(ptr noundef %0, ptr noundef %11, i32 noundef %20) #11
  br i1 %34, label %54, label %35

35:                                               ; preds = %33, %29
  store i32 0, ptr %2, align 4
  %36 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 35, i32 0, i32 7
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = load i32, ptr %37, align 4
  store i32 %40, ptr %2, align 4
  br label %41

41:                                               ; preds = %39, %35
  %42 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 35, i32 0, i32 6
  %43 = load ptr, ptr %42, align 4
  %44 = load ptr, ptr %30, align 4
  %45 = call i32 @cyapa_empty_pip_output_data(ptr noundef %0, ptr noundef %43, ptr noundef nonnull %2, ptr noundef %44)
  %46 = load ptr, ptr %36, align 4
  %47 = icmp ne ptr %46, null
  %48 = load i32, ptr %2, align 4
  %49 = icmp ne i32 %48, 0
  %50 = select i1 %47, i1 %49, i1 false
  br i1 %50, label %51, label %71

51:                                               ; preds = %41
  store i32 %48, ptr %46, align 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #11, !srcloc !9
  %52 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #11, !srcloc !11
  %53 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 35, i32 0, i32 1
  call void @complete(ptr noundef %53) #11
  br label %71

54:                                               ; preds = %33
  %55 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 35, i32 0, i32 6
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %68, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 35, i32 0, i32 7
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %68, label %62

62:                                               ; preds = %58
  %63 = load i32, ptr %60, align 4
  %64 = tail call i32 @llvm.smin.i32(i32 %63, i32 %20)
  store i32 %64, ptr %60, align 4
  %65 = load ptr, ptr %55, align 4
  %66 = load ptr, ptr %59, align 4
  %67 = load i32, ptr %66, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %65, ptr align 4 %11, i32 %67, i1 false)
  br label %68

68:                                               ; preds = %62, %58, %54
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #11, !srcloc !9
  %69 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #11, !srcloc !11
  %70 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 35, i32 0, i32 1
  tail call void @complete(ptr noundef %70) #11
  br label %71

71:                                               ; preds = %68, %51, %41, %6, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret i1 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cyapa_pip_irq_handler(ptr noundef %0) #0 {
  %2 = alloca %struct.cyapa_pip_report_data, align 2
  %3 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 127, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(127) %2, i8 0, i32 127, i1 false), !annotation !12
  %6 = tail call zeroext i1 @cyapa_is_pip_app_mode(ptr noundef %0) #11
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 21
  %9 = load i8, ptr %8, align 4
  %10 = zext i8 %9 to i32
  %11 = load i32, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.9, i32 noundef %10, i32 noundef %11) #12
  br label %43

12:                                               ; preds = %1
  %13 = load ptr, ptr %3, align 4
  %14 = call i32 @i2c_transfer_buffer_flags(ptr noundef %13, ptr noundef nonnull %2, i32 noundef 2, i16 noundef zeroext 1) #11
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = icmp slt i32 %14, 0
  %18 = select i1 %17, i32 %14, i32 -5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.10, i32 noundef %18) #12
  br label %43

19:                                               ; preds = %12
  %20 = load i16, ptr %2, align 2
  %21 = zext i16 %20 to i32
  %22 = icmp ult i16 %20, 2
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = lshr i16 %20, 8
  %25 = zext i16 %24 to i32
  %26 = zext i16 %20 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.11, i32 noundef %21, i32 noundef %26, i32 noundef %25) #12
  br label %43

27:                                               ; preds = %19
  %28 = icmp eq i16 %20, 2
  br i1 %28, label %43, label %29

29:                                               ; preds = %27
  %30 = icmp ugt i16 %20, 256
  br i1 %30, label %39, label %31

31:                                               ; preds = %29
  %32 = load ptr, ptr %3, align 4
  %33 = call i32 @i2c_transfer_buffer_flags(ptr noundef %32, ptr noundef nonnull %2, i32 noundef %21, i16 noundef zeroext 1) #11
  %34 = icmp eq i32 %33, %21
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = icmp slt i32 %33, 0
  %37 = select i1 %36, i32 %33, i32 -5
  %38 = icmp eq i32 %37, %21
  br i1 %38, label %41, label %39

39:                                               ; preds = %35, %29
  %40 = phi i32 [ %37, %35 ], [ -22, %29 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.12, i32 noundef %21, i32 noundef %40) #12
  br label %43

41:                                               ; preds = %35, %31
  %42 = call fastcc i32 @cyapa_pip_event_process(ptr noundef %0, ptr noundef nonnull %2)
  br label %43

43:                                               ; preds = %41, %39, %27, %23, %16, %7
  %44 = phi i32 [ -22, %16 ], [ -22, %23 ], [ -22, %39 ], [ %42, %41 ], [ -22, %7 ], [ 0, %27 ]
  call void @llvm.lifetime.end.p0(i64 127, ptr nonnull %2) #11
  ret i32 %44
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @cyapa_pip_bl_activate(ptr nocapture readnone %0) #7 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @cyapa_pip_bl_deactivate(ptr nocapture readnone %0) #7 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cyapa_gen5_show_baseline(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = alloca [7 x i8], align 2
  %5 = alloca [6 x i8], align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %37 = load ptr, ptr %36, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  store i32 0, ptr %9, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  store i32 0, ptr %10, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #11
  store i32 0, ptr %11, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #11
  store i32 0, ptr %12, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #11
  store i32 0, ptr %13, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #11
  store i32 0, ptr %14, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #11
  store i32 0, ptr %15, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #11
  store i32 0, ptr %16, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #11
  store i32 0, ptr %17, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #11
  store i32 0, ptr %18, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #11
  store i32 0, ptr %19, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #11
  store i32 0, ptr %20, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #11
  store i32 0, ptr %21, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22) #11
  store i32 0, ptr %22, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %23) #11
  store i32 0, ptr %23, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %24) #11
  store i32 0, ptr %24, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %25) #11
  store i32 0, ptr %25, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %26) #11
  store i32 0, ptr %26, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %27) #11
  store i32 0, ptr %27, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %28) #11
  store i32 0, ptr %28, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %29) #11
  store i32 0, ptr %29, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %30) #11
  store i32 0, ptr %30, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %31) #11
  store i32 0, ptr %31, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %32) #11
  store i32 0, ptr %32, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %33) #11
  store i32 0, ptr %33, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %34) #11
  store i32 0, ptr %34, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %35) #11
  store i32 0, ptr %35, align 4, !annotation !12
  %38 = tail call zeroext i1 @cyapa_is_pip_app_mode(ptr noundef %37) #11
  br i1 %38, label %39, label %166

39:                                               ; preds = %3
  %40 = tail call i32 @cyapa_pip_suspend_scanning(ptr noundef %37)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %166

42:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  store i32 0, ptr %11, align 4
  store i32 0, ptr %10, align 4
  store i32 0, ptr %9, align 4
  store i32 0, ptr %14, align 4
  store i32 0, ptr %13, align 4
  store i32 0, ptr %12, align 4
  store i32 0, ptr %8, align 4
  %43 = call fastcc i32 @cyapa_gen5_read_idac_data(ptr noundef %37, i8 noundef zeroext 0, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11) #11
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  br label %123

46:                                               ; preds = %42
  %47 = call fastcc i32 @cyapa_gen5_read_idac_data(ptr noundef %37, i8 noundef zeroext 0, ptr noundef nonnull %8, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %123

49:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  store i32 0, ptr %17, align 4
  store i32 0, ptr %16, align 4
  store i32 0, ptr %15, align 4
  store i32 0, ptr %7, align 4
  %50 = call fastcc i32 @cyapa_gen5_read_idac_data(ptr noundef %37, i8 noundef zeroext 1, ptr noundef nonnull %7, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %17) #11
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  br label %123

53:                                               ; preds = %49
  %54 = load i32, ptr %15, align 4
  %55 = load i32, ptr %16, align 4
  %56 = call fastcc i32 @cyapa_gen5_read_idac_data(ptr noundef %37, i8 noundef zeroext 1, ptr noundef nonnull %7, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %17) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %123

58:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %5, i8 0, i32 6, i1 false) #11, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  %59 = getelementptr inbounds i8, ptr %4, i32 4
  store i16 47, ptr %59, align 2
  store i16 4, ptr %4, align 2
  %60 = getelementptr inbounds %struct.pip_app_cmd_head, ptr %4, i32 0, i32 1
  store i16 5, ptr %60, align 2
  %61 = getelementptr inbounds %struct.pip_app_cmd_head, ptr %4, i32 0, i32 4
  store i8 42, ptr %61, align 2
  store i32 6, ptr %6, align 4
  %62 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %37, ptr noundef nonnull %4, i32 noundef 7, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext true) #11
  %63 = icmp eq i32 %62, 0
  %64 = load i32, ptr %6, align 4
  %65 = icmp eq i32 %64, 6
  %66 = select i1 %63, i1 %65, i1 false
  %67 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 2
  %68 = load i8, ptr %67, align 1
  %69 = icmp eq i8 %68, 31
  %70 = select i1 %66, i1 %69, i1 false
  %71 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 3
  %72 = load i8, ptr %71, align 1
  %73 = icmp eq i8 %72, 0
  %74 = select i1 %70, i1 %73, i1 false
  br i1 %74, label %75, label %84

75:                                               ; preds = %58
  %76 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 4
  %77 = load i8, ptr %76, align 1
  %78 = and i8 %77, 127
  %79 = icmp eq i8 %78, 42
  %80 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 5
  %81 = load i8, ptr %80, align 1
  %82 = icmp eq i8 %81, 0
  %83 = select i1 %79, i1 %82, i1 false
  br i1 %83, label %86, label %84

84:                                               ; preds = %75, %58
  %85 = select i1 %63, i32 -11, i32 %62
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %4) #11
  br label %123

86:                                               ; preds = %75
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %4) #11
  %87 = getelementptr inbounds %struct.cyapa, ptr %37, i32 0, i32 28
  %88 = load i32, ptr %87, align 4
  %89 = getelementptr inbounds %struct.cyapa, ptr %37, i32 0, i32 29
  %90 = load i32, ptr %89, align 4
  %91 = mul i32 %90, %88
  %92 = call fastcc i32 @cyapa_gen5_read_panel_scan_raw_data(ptr noundef %37, i8 noundef zeroext 0, i32 noundef %91, ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef nonnull %20)
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %123

94:                                               ; preds = %86
  %95 = load i32, ptr %87, align 4
  %96 = load i32, ptr %89, align 4
  %97 = add i32 %96, %95
  %98 = call fastcc i32 @cyapa_gen5_read_panel_scan_raw_data(ptr noundef %37, i8 noundef zeroext 3, i32 noundef %97, ptr noundef nonnull %21, ptr noundef nonnull %22, ptr noundef nonnull %23)
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %123

100:                                              ; preds = %94
  %101 = load i32, ptr %87, align 4
  %102 = load i32, ptr %89, align 4
  %103 = mul i32 %102, %101
  %104 = call fastcc i32 @cyapa_gen5_read_panel_scan_raw_data(ptr noundef %37, i8 noundef zeroext 2, i32 noundef %103, ptr noundef nonnull %24, ptr noundef nonnull %25, ptr noundef nonnull %26)
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %123

106:                                              ; preds = %100
  %107 = load i32, ptr %87, align 4
  %108 = load i32, ptr %89, align 4
  %109 = add i32 %108, %107
  %110 = call fastcc i32 @cyapa_gen5_read_panel_scan_raw_data(ptr noundef %37, i8 noundef zeroext 5, i32 noundef %109, ptr noundef nonnull %27, ptr noundef nonnull %28, ptr noundef nonnull %29)
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %106
  %113 = load i32, ptr %87, align 4
  %114 = load i32, ptr %89, align 4
  %115 = mul i32 %114, %113
  %116 = call fastcc i32 @cyapa_gen5_read_panel_scan_raw_data(ptr noundef %37, i8 noundef zeroext 1, i32 noundef %115, ptr noundef nonnull %30, ptr noundef nonnull %31, ptr noundef nonnull %32)
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %112
  %119 = load i32, ptr %87, align 4
  %120 = load i32, ptr %89, align 4
  %121 = add i32 %120, %119
  %122 = call fastcc i32 @cyapa_gen5_read_panel_scan_raw_data(ptr noundef %37, i8 noundef zeroext 4, i32 noundef %121, ptr noundef nonnull %33, ptr noundef nonnull %34, ptr noundef nonnull %35)
  br label %123

123:                                              ; preds = %118, %112, %106, %100, %94, %86, %84, %53, %52, %46, %45
  %124 = phi i32 [ %54, %118 ], [ %54, %112 ], [ %54, %106 ], [ %54, %100 ], [ %54, %94 ], [ %54, %86 ], [ %54, %53 ], [ 0, %46 ], [ 0, %45 ], [ 0, %52 ], [ %54, %84 ]
  %125 = phi i32 [ %55, %118 ], [ %55, %112 ], [ %55, %106 ], [ %55, %100 ], [ %55, %94 ], [ %55, %86 ], [ %55, %53 ], [ 0, %46 ], [ 0, %45 ], [ 0, %52 ], [ %55, %84 ]
  %126 = phi i32 [ %122, %118 ], [ %116, %112 ], [ %110, %106 ], [ %104, %100 ], [ %98, %94 ], [ %92, %86 ], [ %56, %53 ], [ %47, %46 ], [ %43, %45 ], [ %50, %52 ], [ %85, %84 ]
  %127 = call i32 @cyapa_pip_resume_scanning(ptr noundef %37)
  %128 = icmp ne i32 %127, 0
  %129 = icmp ne i32 %126, 0
  %130 = select i1 %128, i1 true, i1 %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %123
  %132 = select i1 %128, i32 %127, i32 %126
  br label %166

133:                                              ; preds = %123
  %134 = load i32, ptr %10, align 4
  %135 = load i32, ptr %9, align 4
  %136 = load i32, ptr %11, align 4
  %137 = load i32, ptr %13, align 4
  %138 = load i32, ptr %12, align 4
  %139 = load i32, ptr %14, align 4
  %140 = load i32, ptr %16, align 4
  %141 = load i32, ptr %15, align 4
  %142 = load i32, ptr %17, align 4
  %143 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.18, i32 noundef %134, i32 noundef %135, i32 noundef %136, i32 noundef %137, i32 noundef %138, i32 noundef %139, i32 noundef %124, i32 noundef %125, i32 noundef %140, i32 noundef %141, i32 noundef %142) #11
  %144 = getelementptr i8, ptr %2, i32 %143
  %145 = sub i32 4096, %143
  %146 = load i32, ptr %19, align 4
  %147 = load i32, ptr %18, align 4
  %148 = load i32, ptr %20, align 4
  %149 = load i32, ptr %22, align 4
  %150 = load i32, ptr %21, align 4
  %151 = load i32, ptr %23, align 4
  %152 = load i32, ptr %25, align 4
  %153 = load i32, ptr %24, align 4
  %154 = load i32, ptr %26, align 4
  %155 = load i32, ptr %28, align 4
  %156 = load i32, ptr %27, align 4
  %157 = load i32, ptr %29, align 4
  %158 = load i32, ptr %31, align 4
  %159 = load i32, ptr %30, align 4
  %160 = load i32, ptr %32, align 4
  %161 = load i32, ptr %34, align 4
  %162 = load i32, ptr %33, align 4
  %163 = load i32, ptr %35, align 4
  %164 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %144, i32 noundef %145, ptr noundef nonnull @.str.19, i32 noundef %146, i32 noundef %147, i32 noundef %148, i32 noundef %149, i32 noundef %150, i32 noundef %151, i32 noundef %152, i32 noundef %153, i32 noundef %154, i32 noundef %155, i32 noundef %156, i32 noundef %157, i32 noundef %158, i32 noundef %159, i32 noundef %160, i32 noundef %161, i32 noundef %162, i32 noundef %163) #11
  %165 = add i32 %164, %143
  br label %166

166:                                              ; preds = %133, %131, %39, %3
  %167 = phi i32 [ %132, %131 ], [ %165, %133 ], [ -16, %3 ], [ %40, %39 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %35) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %34) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %33) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %32) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %31) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %30) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %29) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %28) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %27) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %26) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %25) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %24) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %23) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  ret i32 %167
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cyapa_gen5_state_parse(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca [32 x i8], align 2
  %5 = alloca [32 x i8], align 2
  %6 = alloca i32, align 4
  %7 = alloca [2 x i8], align 2
  %8 = icmp eq ptr %1, null
  %9 = icmp slt i32 %2, 3
  %10 = or i1 %8, %9
  br i1 %10, label %174, label %11

11:                                               ; preds = %3
  store i32 0, ptr %0, align 4
  %12 = load i16, ptr %1, align 1
  %13 = and i16 %12, -3
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %51

15:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #11
  store i16 1, ptr %7, align 2, !annotation !12
  %16 = tail call i32 @cyapa_empty_pip_output_data(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(32) %5, i8 0, i32 32, i1 false) #11
  %17 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = call i32 @i2c_transfer_buffer_flags(ptr noundef %18, ptr noundef nonnull %5, i32 noundef 3, i16 noundef zeroext 1) #11
  %20 = icmp eq i32 %19, 3
  %21 = load i16, ptr %5, align 2
  %22 = icmp eq i16 %21, 2
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %50

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 21
  store i8 5, ptr %25, align 4
  %26 = call i32 @cyapa_empty_pip_output_data(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null) #11
  store i32 32, ptr %6, align 4
  %27 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %0, ptr noundef nonnull %7, i32 noundef 2, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 300, ptr noundef nonnull @cyapa_sort_gen5_hid_descriptor_data, i1 noundef zeroext false) #11
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %24
  %30 = load i16, ptr %5, align 2
  %31 = getelementptr inbounds [32 x i8], ptr %5, i32 0, i32 16
  %32 = load i16, ptr %31, align 2
  %33 = icmp eq i16 %30, 32
  %34 = icmp eq i16 %30, 2
  %35 = or i1 %33, %34
  %36 = getelementptr inbounds [32 x i8], ptr %5, i32 0, i32 2
  %37 = load i8, ptr %36, align 2
  %38 = icmp eq i8 %37, -1
  %39 = select i1 %35, i1 %38, i1 false
  %40 = icmp eq i16 %32, 256
  %41 = select i1 %39, i1 %40, i1 false
  br i1 %41, label %48, label %42

42:                                               ; preds = %29
  %43 = icmp eq i8 %37, -9
  %44 = select i1 %35, i1 %43, i1 false
  %45 = icmp eq i16 %32, 254
  %46 = select i1 %44, i1 %45, i1 false
  %47 = select i1 %46, i32 6, i32 0
  br label %48

48:                                               ; preds = %42, %29
  %49 = phi i32 [ 5, %29 ], [ %47, %42 ]
  store i32 %49, ptr %0, align 4
  br label %50

50:                                               ; preds = %48, %24, %15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #11
  br label %164

51:                                               ; preds = %11
  switch i16 %12, label %52 [
    i16 32, label %55
    i16 250, label %93
    i16 238, label %93
    i16 29, label %99
  ]

52:                                               ; preds = %51
  %53 = getelementptr i8, ptr %1, i32 2
  %54 = load i8, ptr %53, align 1
  br label %105

55:                                               ; preds = %51
  %56 = getelementptr i8, ptr %1, i32 2
  %57 = load i8, ptr %56, align 1
  switch i8 %57, label %105 [
    i8 -1, label %58
    i8 -9, label %58
  ]

58:                                               ; preds = %55, %55
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(32) %4, i8 0, i32 32, i1 false) #11, !annotation !12
  %59 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 4
  %60 = load ptr, ptr %59, align 4
  %61 = call i32 @i2c_transfer_buffer_flags(ptr noundef %60, ptr noundef nonnull %4, i32 noundef 32, i16 noundef zeroext 1) #11
  %62 = icmp eq i32 %61, 32
  br i1 %62, label %63, label %92

63:                                               ; preds = %58
  %64 = load i16, ptr %4, align 2
  %65 = getelementptr inbounds [32 x i8], ptr %4, i32 0, i32 16
  %66 = load i16, ptr %65, align 2
  %67 = icmp eq i16 %64, 2
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load i8, ptr %56, align 1
  %70 = icmp eq i8 %69, -1
  %71 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 21
  store i8 5, ptr %71, align 4
  %72 = select i1 %70, i32 5, i32 6
  br label %90

73:                                               ; preds = %63
  %74 = icmp eq i16 %64, 32
  %75 = getelementptr inbounds [32 x i8], ptr %4, i32 0, i32 2
  %76 = load i8, ptr %75, align 2
  %77 = icmp eq i8 %76, -1
  %78 = select i1 %74, i1 %77, i1 false
  %79 = icmp eq i16 %66, 256
  %80 = select i1 %78, i1 %79, i1 false
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 21
  store i8 5, ptr %82, align 4
  br label %90

83:                                               ; preds = %73
  %84 = icmp eq i8 %76, -9
  %85 = select i1 %74, i1 %84, i1 false
  %86 = icmp eq i16 %66, 254
  %87 = select i1 %85, i1 %86, i1 false
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 21
  store i8 5, ptr %89, align 4
  br label %90

90:                                               ; preds = %88, %83, %81, %68
  %91 = phi i32 [ 6, %88 ], [ 5, %81 ], [ %72, %68 ], [ 0, %83 ]
  store i32 %91, ptr %0, align 4
  br label %92

92:                                               ; preds = %90, %58
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #11
  br label %164

93:                                               ; preds = %51, %51
  %94 = getelementptr i8, ptr %1, i32 2
  %95 = load i8, ptr %94, align 1
  %96 = icmp eq i8 %95, -10
  br i1 %96, label %97, label %105

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 21
  store i8 5, ptr %98, align 4
  store i32 6, ptr %0, align 4
  br label %164

99:                                               ; preds = %51
  %100 = getelementptr i8, ptr %1, i32 2
  %101 = load i8, ptr %100, align 1
  %102 = icmp eq i8 %101, -2
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 21
  store i8 5, ptr %104, align 4
  store i32 5, ptr %0, align 4
  br label %164

105:                                              ; preds = %99, %93, %55, %52
  %106 = phi i8 [ %54, %52 ], [ %95, %93 ], [ %57, %55 ], [ %101, %99 ]
  %107 = getelementptr i8, ptr %1, i32 2
  switch i8 %106, label %164 [
    i8 31, label %118
    i8 48, label %118
    i8 1, label %108
    i8 3, label %111
    i8 5, label %111
    i8 6, label %111
    i8 4, label %114
  ]

108:                                              ; preds = %105
  %109 = add i16 %12, -128
  %110 = icmp ult i16 %109, -121
  br i1 %110, label %164, label %116

111:                                              ; preds = %105, %105, %105
  %112 = add i16 %12, -15
  %113 = icmp ult i16 %112, -9
  br i1 %113, label %164, label %116

114:                                              ; preds = %105
  %115 = icmp eq i16 %12, 4
  br i1 %115, label %116, label %164

116:                                              ; preds = %114, %111, %108
  %117 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 21
  store i8 5, ptr %117, align 4
  store i32 6, ptr %0, align 4
  br label %164

118:                                              ; preds = %105, %105
  %119 = zext i16 %12 to i32
  %120 = icmp ugt i16 %12, 256
  br i1 %120, label %164, label %121

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 35, i32 0, i32 11
  %123 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 4
  %124 = load ptr, ptr %123, align 4
  %125 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %124, ptr noundef nonnull %122, i32 noundef %119, i16 noundef zeroext 1) #11
  %126 = icmp eq i32 %125, %119
  br i1 %126, label %131, label %127

127:                                              ; preds = %121
  %128 = icmp slt i32 %125, 0
  %129 = select i1 %128, i32 %125, i32 -5
  %130 = icmp eq i32 %129, %119
  br i1 %130, label %131, label %164

131:                                              ; preds = %127, %121
  %132 = icmp eq i16 %12, 2
  br i1 %132, label %133, label %138

133:                                              ; preds = %131
  %134 = load i8, ptr %107, align 1
  %135 = icmp eq i8 %134, 48
  %136 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 21
  store i8 5, ptr %136, align 4
  %137 = select i1 %135, i32 5, i32 6
  br label %162

138:                                              ; preds = %131
  %139 = getelementptr %struct.cyapa, ptr %0, i32 0, i32 35, i32 0, i32 11, i32 2
  %140 = load i8, ptr %139, align 2
  switch i8 %140, label %162 [
    i8 48, label %141
    i8 31, label %156
  ]

141:                                              ; preds = %138
  %142 = getelementptr %struct.cyapa, ptr %0, i32 0, i32 35, i32 0, i32 11, i32 3
  %143 = load i8, ptr %142, align 1
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %145, label %162

145:                                              ; preds = %141
  %146 = getelementptr %struct.cyapa, ptr %0, i32 0, i32 35, i32 0, i32 11, i32 4
  %147 = load i8, ptr %146, align 4
  %148 = icmp eq i8 %147, 1
  br i1 %148, label %149, label %162

149:                                              ; preds = %145
  %150 = add nsw i32 %119, -1
  %151 = getelementptr %struct.cyapa, ptr %0, i32 0, i32 35, i32 0, i32 11, i32 %150
  %152 = load i8, ptr %151, align 1
  %153 = icmp eq i8 %152, 23
  br i1 %153, label %154, label %162

154:                                              ; preds = %149
  %155 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 21
  store i8 5, ptr %155, align 4
  br label %162

156:                                              ; preds = %138
  %157 = getelementptr %struct.cyapa, ptr %0, i32 0, i32 35, i32 0, i32 11, i32 3
  %158 = load i8, ptr %157, align 1
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 21
  store i8 5, ptr %161, align 4
  br label %162

162:                                              ; preds = %160, %156, %154, %149, %145, %141, %138, %133
  %163 = phi i32 [ 6, %160 ], [ 5, %154 ], [ %137, %133 ], [ 0, %138 ], [ 0, %141 ], [ 0, %145 ], [ 0, %149 ], [ 0, %156 ]
  store i32 %163, ptr %0, align 4
  br label %164

164:                                              ; preds = %162, %127, %118, %116, %114, %111, %108, %105, %103, %97, %92, %50
  %165 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 21
  %166 = load i8, ptr %165, align 4
  %167 = icmp eq i8 %166, 5
  br i1 %167, label %168, label %173

168:                                              ; preds = %164
  %169 = call i32 @cyapa_empty_pip_output_data(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null)
  %170 = load i32, ptr %0, align 4
  %171 = add i32 %170, -5
  %172 = icmp ult i32 %171, 2
  br i1 %172, label %174, label %173

173:                                              ; preds = %168, %164
  br label %174

174:                                              ; preds = %173, %168, %3
  %175 = phi i32 [ -11, %173 ], [ -22, %3 ], [ 0, %168 ]
  ret i32 %175
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cyapa_gen5_do_operational_check(ptr noundef %0) #0 {
  %2 = alloca [71 x i8], align 1
  %3 = alloca i32, align 4
  %4 = alloca [8 x i8], align 8
  %5 = alloca [6 x i8], align 1
  %6 = alloca i32, align 4
  %7 = alloca [30 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca [13 x i8], align 1
  %10 = alloca [11 x i8], align 1
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 21
  %16 = load i8, ptr %15, align 4
  %17 = icmp eq i8 %16, 5
  br i1 %17, label %18, label %203

18:                                               ; preds = %1
  %19 = load i32, ptr %0, align 4
  switch i32 %19, label %203 [
    i32 5, label %20
    i32 6, label %71
  ]

20:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %9) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(13) %9, ptr noundef nonnull align 1 dereferenceable(13) @__const.cyapa_pip_bl_exit.bl_gen5_bl_exit, i32 13, i1 false) #11
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %10) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %10, i8 0, i32 11, i1 false) #11, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #11
  store i32 11, ptr %11, align 4
  %21 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %0, ptr noundef nonnull %9, i32 noundef 13, ptr noundef nonnull %10, ptr noundef nonnull %11, i32 noundef 5000, ptr noundef nonnull @cyapa_sort_pip_bl_exit_data, i1 noundef zeroext false) #11
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %20
  %24 = load i32, ptr %11, align 4
  %25 = icmp eq i32 %24, 11
  %26 = getelementptr inbounds [11 x i8], ptr %10, i32 0, i32 2
  %27 = load i8, ptr %26, align 1
  %28 = icmp eq i8 %27, 48
  %29 = select i1 %25, i1 true, i1 %28
  br i1 %29, label %37, label %30

30:                                               ; preds = %23
  %31 = load i8, ptr %10, align 1
  %32 = icmp eq i8 %31, 0
  %33 = getelementptr inbounds [11 x i8], ptr %10, i32 0, i32 1
  %34 = load i8, ptr %33, align 1
  %35 = icmp eq i8 %34, 0
  %36 = select i1 %32, i1 %35, i1 false
  br i1 %36, label %70, label %37

37:                                               ; preds = %30, %23, %20
  %38 = phi i32 [ -19, %30 ], [ -11, %23 ], [ %21, %20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %7) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(30) %7, i8 0, i32 30, i1 false) #11, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  store i32 30, ptr %8, align 4
  %39 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %0, ptr noundef nonnull @pip_bl_read_app_info, i32 noundef 13, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_bl_resp_data, i1 noundef zeroext false) #11
  %40 = icmp eq i32 %39, 0
  %41 = load i32, ptr %8, align 4
  %42 = icmp sgt i32 %41, 29
  %43 = select i1 %40, i1 %42, i1 false
  %44 = getelementptr inbounds [30 x i8], ptr %7, i32 0, i32 5
  %45 = load i8, ptr %44, align 1
  %46 = icmp eq i8 %45, 0
  %47 = select i1 %43, i1 %46, i1 false
  br i1 %47, label %48, label %69

48:                                               ; preds = %37
  %49 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 16
  %50 = getelementptr inbounds [30 x i8], ptr %7, i32 0, i32 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(5) %49, ptr noundef align 1 dereferenceable(5) %50, i32 5, i1 false) #11
  %51 = getelementptr %struct.cyapa, ptr %0, i32 0, i32 16, i32 5
  store i8 45, ptr %51, align 1
  %52 = getelementptr %struct.cyapa, ptr %0, i32 0, i32 16, i32 6
  %53 = getelementptr inbounds [30 x i8], ptr %7, i32 0, i32 13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %52, ptr noundef align 1 dereferenceable(6) %53, i32 6, i1 false) #11
  %54 = getelementptr %struct.cyapa, ptr %0, i32 0, i32 16, i32 12
  store i8 45, ptr %54, align 4
  %55 = getelementptr %struct.cyapa, ptr %0, i32 0, i32 16, i32 13
  %56 = getelementptr inbounds [30 x i8], ptr %7, i32 0, i32 19
  %57 = load i16, ptr %56, align 1
  store i16 %57, ptr %55, align 1
  %58 = getelementptr %struct.cyapa, ptr %0, i32 0, i32 16, i32 15
  store i8 0, ptr %58, align 1
  %59 = getelementptr inbounds [30 x i8], ptr %7, i32 0, i32 22
  %60 = load i8, ptr %59, align 1
  %61 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 18
  store i8 %60, ptr %61, align 1
  %62 = getelementptr inbounds [30 x i8], ptr %7, i32 0, i32 23
  %63 = load i8, ptr %62, align 1
  %64 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 19
  store i8 %63, ptr %64, align 2
  %65 = getelementptr inbounds [30 x i8], ptr %7, i32 0, i32 26
  %66 = load i8, ptr %65, align 1
  %67 = lshr i8 %66, 4
  %68 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 17
  store i8 %67, ptr %68, align 4
  br label %69

69:                                               ; preds = %48, %37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %7) #11
  br label %203

70:                                               ; preds = %30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %9) #11
  store i32 6, ptr %0, align 4
  br label %71

71:                                               ; preds = %70, %18
  %72 = call i32 @cyapa_gen5_set_power_mode(ptr noundef %0, i8 noundef zeroext -4, i16 noundef zeroext 0, i32 noundef 1)
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.cyapa_gen5_do_operational_check) #12
  br label %75

75:                                               ; preds = %74, %71
  %76 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 17
  %77 = load i8, ptr %76, align 4
  %78 = icmp ugt i8 %77, 1
  br i1 %78, label %79, label %101

79:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  store i64 92605469201661956, ptr %4, align 8, !annotation !12
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %5, i8 0, i32 6, i1 false) #11, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 6, ptr %6, align 4
  %80 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 8, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext false) #11
  %81 = icmp eq i32 %80, 0
  %82 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 2
  %83 = load i8, ptr %82, align 1
  %84 = icmp eq i8 %83, 31
  %85 = select i1 %81, i1 %84, i1 false
  %86 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 3
  %87 = load i8, ptr %86, align 1
  %88 = icmp eq i8 %87, 0
  %89 = select i1 %85, i1 %88, i1 false
  br i1 %89, label %90, label %100

90:                                               ; preds = %79
  %91 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 4
  %92 = load i8, ptr %91, align 1
  %93 = and i8 %92, 127
  %94 = icmp eq i8 %93, 73
  %95 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 5
  %96 = load i8, ptr %95, align 1
  %97 = icmp eq i8 %96, 0
  %98 = select i1 %94, i1 %97, i1 false
  br i1 %98, label %99, label %100

99:                                               ; preds = %90
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %101

100:                                              ; preds = %90, %79
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.cyapa_gen5_do_operational_check) #12
  br label %101

101:                                              ; preds = %100, %99, %75
  call void @llvm.lifetime.start.p0(i64 71, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(71) %2, i8 0, i32 71, i1 false) #11, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 71, ptr %3, align 4
  %102 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %0, ptr noundef nonnull @pip_read_sys_info, i32 noundef 7, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 2000, ptr noundef nonnull @cyapa_pip_sort_system_info_data, i1 noundef zeroext false) #11
  %103 = icmp ne i32 %102, 0
  %104 = load i32, ptr %3, align 4
  %105 = icmp ult i32 %104, 71
  %106 = select i1 %103, i1 true, i1 %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = select i1 %103, i32 %102, i32 -5
  br label %196

109:                                              ; preds = %101
  %110 = getelementptr inbounds [71 x i8], ptr %2, i32 0, i32 7
  %111 = load i16, ptr %110, align 1
  %112 = and i16 %111, -4096
  %113 = icmp eq i16 %112, 4096
  br i1 %113, label %114, label %196

114:                                              ; preds = %109
  %115 = getelementptr inbounds [71 x i8], ptr %2, i32 0, i32 49
  %116 = load i8, ptr %115, align 1
  %117 = lshr i8 %116, 4
  store i8 %117, ptr %76, align 4
  %118 = load i8, ptr %15, align 4
  %119 = icmp eq i8 %118, 5
  %120 = icmp ult i8 %116, 32
  %121 = select i1 %119, i1 %120, i1 false
  %122 = select i1 %121, i32 15, i32 9
  %123 = select i1 %121, i32 16, i32 10
  %124 = getelementptr inbounds [71 x i8], ptr %2, i32 0, i32 %122
  %125 = load i8, ptr %124, align 1
  %126 = getelementptr inbounds [71 x i8], ptr %2, i32 0, i32 %123
  %127 = load i8, ptr %126, align 1
  %128 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 18
  store i8 %125, ptr %128, align 1
  %129 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 19
  store i8 %127, ptr %129, align 2
  %130 = getelementptr inbounds [71 x i8], ptr %2, i32 0, i32 52
  %131 = load i8, ptr %130, align 1
  %132 = zext i8 %131 to i32
  %133 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 28
  store i32 %132, ptr %133, align 4
  %134 = getelementptr inbounds [71 x i8], ptr %2, i32 0, i32 53
  %135 = load i8, ptr %134, align 1
  %136 = zext i8 %135 to i32
  %137 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 29
  store i32 %136, ptr %137, align 4
  %138 = getelementptr inbounds [71 x i8], ptr %2, i32 0, i32 54
  %139 = load i16, ptr %138, align 1
  %140 = udiv i16 %139, 100
  %141 = zext i16 %140 to i32
  %142 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 24
  store i32 %141, ptr %142, align 4
  %143 = getelementptr inbounds [71 x i8], ptr %2, i32 0, i32 56
  %144 = load i16, ptr %143, align 1
  %145 = udiv i16 %144, 100
  %146 = zext i16 %145 to i32
  %147 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 25
  store i32 %146, ptr %147, align 4
  %148 = getelementptr inbounds [71 x i8], ptr %2, i32 0, i32 58
  %149 = load i16, ptr %148, align 1
  %150 = zext i16 %149 to i32
  %151 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 22
  store i32 %150, ptr %151, align 4
  %152 = getelementptr inbounds [71 x i8], ptr %2, i32 0, i32 60
  %153 = load i16, ptr %152, align 1
  %154 = zext i16 %153 to i32
  %155 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 23
  store i32 %154, ptr %155, align 4
  %156 = getelementptr inbounds [71 x i8], ptr %2, i32 0, i32 62
  %157 = load i16, ptr %156, align 1
  %158 = zext i16 %157 to i32
  %159 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 32
  store i32 %158, ptr %159, align 4
  %160 = getelementptr inbounds [71 x i8], ptr %2, i32 0, i32 64
  %161 = load i8, ptr %160, align 1
  %162 = and i8 %161, 1
  %163 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 26
  store i8 %162, ptr %163, align 4
  %164 = getelementptr inbounds [71 x i8], ptr %2, i32 0, i32 65
  %165 = load i8, ptr %164, align 1
  %166 = and i8 %165, 1
  %167 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 27
  store i8 %166, ptr %167, align 1
  %168 = getelementptr inbounds [71 x i8], ptr %2, i32 0, i32 70
  %169 = load i8, ptr %168, align 1
  %170 = shl i8 %169, 3
  %171 = and i8 %170, 56
  %172 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 20
  store i8 %171, ptr %172, align 1
  %173 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 16
  %174 = getelementptr inbounds [71 x i8], ptr %2, i32 0, i32 33
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(5) %173, ptr noundef align 1 dereferenceable(5) %174, i32 5, i1 false) #11
  %175 = getelementptr %struct.cyapa, ptr %0, i32 0, i32 16, i32 5
  store i8 45, ptr %175, align 1
  %176 = getelementptr %struct.cyapa, ptr %0, i32 0, i32 16, i32 6
  %177 = getelementptr inbounds [71 x i8], ptr %2, i32 0, i32 38
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %176, ptr noundef align 1 dereferenceable(6) %177, i32 6, i1 false) #11
  %178 = getelementptr %struct.cyapa, ptr %0, i32 0, i32 16, i32 12
  store i8 45, ptr %178, align 4
  %179 = getelementptr %struct.cyapa, ptr %0, i32 0, i32 16, i32 13
  %180 = getelementptr inbounds [71 x i8], ptr %2, i32 0, i32 44
  %181 = load i16, ptr %180, align 1
  store i16 %181, ptr %179, align 1
  %182 = getelementptr %struct.cyapa, ptr %0, i32 0, i32 16, i32 15
  store i8 0, ptr %182, align 1
  %183 = icmp eq i8 %131, 0
  %184 = icmp eq i8 %135, 0
  %185 = select i1 %183, i1 true, i1 %184
  %186 = icmp ult i16 %139, 100
  %187 = select i1 %185, i1 true, i1 %186
  %188 = icmp ult i16 %144, 100
  %189 = select i1 %187, i1 true, i1 %188
  %190 = icmp eq i16 %149, 0
  %191 = select i1 %189, i1 true, i1 %190
  %192 = icmp eq i16 %153, 0
  %193 = select i1 %191, i1 true, i1 %192
  %194 = icmp eq i16 %157, 0
  %195 = select i1 %193, i1 true, i1 %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %114, %109, %107
  %197 = phi i32 [ -22, %114 ], [ -22, %109 ], [ %108, %107 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 71, ptr nonnull %2) #11
  br label %203

198:                                              ; preds = %114
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 71, ptr nonnull %2) #11
  %199 = call i32 @strlen(ptr noundef nonnull @product_id)
  %200 = call i32 @bcmp(ptr %173, ptr nonnull @product_id, i32 %199)
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %203, label %202

202:                                              ; preds = %198
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.cyapa_gen5_do_operational_check, ptr noundef %173) #12
  br label %203

203:                                              ; preds = %202, %198, %196, %69, %18, %1
  %204 = phi i32 [ -19, %1 ], [ -22, %202 ], [ 0, %198 ], [ %38, %69 ], [ -22, %18 ], [ %197, %196 ]
  ret i32 %204
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cyapa_gen5_set_power_mode(ptr noundef %0, i8 noundef zeroext %1, i16 noundef zeroext %2, i32 noundef %3) #0 {
  %5 = alloca [10 x i8], align 2
  %6 = alloca [7 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca [8 x i8], align 8
  %9 = alloca [6 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca [256 x i8], align 2
  %12 = alloca [7 x i8], align 1
  %13 = alloca i32, align 4
  %14 = alloca [8 x i8], align 8
  %15 = alloca [6 x i8], align 1
  %16 = alloca i32, align 4
  %17 = alloca [8 x i8], align 8
  %18 = alloca [6 x i8], align 1
  %19 = alloca i32, align 4
  %20 = alloca [4 x i8], align 4
  %21 = alloca [5 x i8], align 1
  %22 = alloca i32, align 4
  %23 = alloca [4 x i8], align 4
  %24 = alloca [5 x i8], align 1
  %25 = alloca i32, align 4
  %26 = alloca [256 x i8], align 2
  %27 = alloca [11 x i8], align 1
  %28 = alloca i32, align 4
  %29 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.i2c_client, ptr %30, i32 0, i32 4
  %32 = load i32, ptr %0, align 4
  %33 = icmp eq i32 %32, 6
  br i1 %33, label %34, label %251

34:                                               ; preds = %4
  %35 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 35, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %35) #11
  %36 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 35, i32 0, i32 8
  store i32 %3, ptr %36, align 4
  tail call void @mutex_unlock(ptr noundef %35) #11
  %37 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 13
  %38 = load i8, ptr %37, align 2
  %39 = icmp eq i8 %38, -1
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 14
  %42 = load i16, ptr %41, align 4
  %43 = icmp eq i16 %42, -1
  br i1 %43, label %48, label %82

44:                                               ; preds = %34
  store i8 0, ptr %37, align 2
  %45 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 14
  %46 = load i16, ptr %45, align 4
  %47 = icmp eq i16 %46, -1
  br i1 %47, label %86, label %82

48:                                               ; preds = %40
  %49 = icmp eq i8 %38, 0
  br i1 %49, label %86, label %50

50:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %26) #11
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %27) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %27, i8 0, i32 11, i1 false) #11, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %28) #11
  %51 = getelementptr inbounds i8, ptr %26, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(256) %51, i8 0, i32 252, i1 false) #11
  %52 = getelementptr inbounds %struct.pip_app_cmd_head, ptr %26, i32 0, i32 5
  store i16 0, ptr %41, align 2
  store i16 4, ptr %26, align 2
  %53 = getelementptr inbounds %struct.pip_app_cmd_head, ptr %26, i32 0, i32 1
  store i16 6, ptr %53, align 2
  store i8 47, ptr %51, align 2
  %54 = getelementptr inbounds %struct.pip_app_cmd_head, ptr %26, i32 0, i32 4
  store i8 5, ptr %54, align 2
  store i8 76, ptr %52, align 1
  store i32 11, ptr %28, align 4
  %55 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %0, ptr noundef nonnull %26, i32 noundef 8, ptr noundef nonnull %27, ptr noundef nonnull %28, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext false) #11
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %81

57:                                               ; preds = %50
  %58 = getelementptr inbounds [11 x i8], ptr %27, i32 0, i32 5
  %59 = load i8, ptr %58, align 1
  %60 = icmp eq i8 %59, 76
  %61 = getelementptr inbounds [11 x i8], ptr %27, i32 0, i32 6
  %62 = load i8, ptr %61, align 1
  %63 = icmp ne i8 %62, 0
  %64 = select i1 %60, i1 %63, i1 false
  %65 = getelementptr inbounds [11 x i8], ptr %27, i32 0, i32 2
  %66 = load i8, ptr %65, align 1
  %67 = icmp eq i8 %66, 31
  %68 = select i1 %64, i1 %67, i1 false
  %69 = getelementptr inbounds [11 x i8], ptr %27, i32 0, i32 3
  %70 = load i8, ptr %69, align 1
  %71 = icmp eq i8 %70, 0
  %72 = select i1 %68, i1 %71, i1 false
  br i1 %72, label %73, label %81

73:                                               ; preds = %57
  %74 = getelementptr inbounds [11 x i8], ptr %27, i32 0, i32 4
  %75 = load i8, ptr %74, align 1
  %76 = and i8 %75, 127
  %77 = icmp eq i8 %76, 5
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = getelementptr inbounds [11 x i8], ptr %27, i32 0, i32 7
  %80 = load i16, ptr %79, align 1
  store i16 %80, ptr %41, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %28) #11
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %27) #11
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %26) #11
  br label %82

81:                                               ; preds = %73, %57, %50
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %28) #11
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %27) #11
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %26) #11
  store i16 -1, ptr %41, align 4
  br label %82

82:                                               ; preds = %81, %78, %44, %40
  %83 = phi ptr [ %41, %40 ], [ %41, %81 ], [ %41, %78 ], [ %45, %44 ]
  %84 = phi i16 [ %42, %40 ], [ -1, %81 ], [ %80, %78 ], [ %46, %44 ]
  %85 = load i8, ptr %37, align 2
  br label %86

86:                                               ; preds = %82, %48, %44
  %87 = phi ptr [ %83, %82 ], [ %41, %48 ], [ %45, %44 ]
  %88 = phi i16 [ %84, %82 ], [ -1, %48 ], [ -1, %44 ]
  %89 = phi i8 [ %85, %82 ], [ 0, %48 ], [ 0, %44 ]
  %90 = icmp eq i8 %89, %1
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  switch i8 %1, label %92 [
    i8 -4, label %249
    i8 4, label %249
    i8 0, label %249
  ]

92:                                               ; preds = %91
  %93 = icmp eq i16 %88, %2
  br i1 %93, label %249, label %106

94:                                               ; preds = %86
  %95 = icmp eq i8 %1, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %94
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %23) #11
  store i32 134283269, ptr %23, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %24) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %24, i8 0, i32 5, i1 false) #11, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %25) #11
  store i32 5, ptr %25, align 4
  %97 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %0, ptr noundef nonnull %23, i32 noundef 4, ptr noundef nonnull %24, ptr noundef nonnull %25, i32 noundef 500, ptr noundef nonnull @cyapa_sort_pip_deep_sleep_data, i1 noundef zeroext false) #11
  %98 = icmp eq i32 %97, 0
  %99 = getelementptr inbounds [5 x i8], ptr %24, i32 0, i32 3
  %100 = load i8, ptr %99, align 1
  %101 = and i8 %100, 3
  %102 = icmp eq i8 %101, 1
  %103 = select i1 %98, i1 %102, i1 false
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %25) #11
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %24) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %23) #11
  br i1 %103, label %105, label %104

104:                                              ; preds = %96
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.23, i32 noundef -22) #12
  br label %249

105:                                              ; preds = %96
  store i8 0, ptr %37, align 2
  br label %249

106:                                              ; preds = %94, %92
  %107 = icmp eq i8 %89, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %106
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #11
  store i32 134217733, ptr %20, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %21) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %21, i8 0, i32 5, i1 false) #11, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22) #11
  store i32 5, ptr %22, align 4
  %109 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %0, ptr noundef nonnull %20, i32 noundef 4, ptr noundef nonnull %21, ptr noundef nonnull %22, i32 noundef 500, ptr noundef nonnull @cyapa_sort_pip_deep_sleep_data, i1 noundef zeroext false) #11
  %110 = icmp eq i32 %109, 0
  %111 = getelementptr inbounds [5 x i8], ptr %21, i32 0, i32 3
  %112 = load i8, ptr %111, align 1
  %113 = and i8 %112, 3
  %114 = icmp eq i8 %113, 0
  %115 = select i1 %110, i1 %114, i1 false
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #11
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %21) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #11
  br i1 %115, label %117, label %116

116:                                              ; preds = %108
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.24, i32 noundef -22) #12
  br label %249

117:                                              ; preds = %108, %106
  switch i8 %1, label %170 [
    i8 -4, label %118
    i8 4, label %144
  ]

118:                                              ; preds = %117
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #11
  store i64 74309595715469316, ptr %17, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %18) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %18, i8 0, i32 6, i1 false) #11, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #11
  store i32 6, ptr %19, align 4
  %119 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %0, ptr noundef nonnull %17, i32 noundef 8, ptr noundef nonnull %18, ptr noundef nonnull %19, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext false) #11
  %120 = icmp eq i32 %119, 0
  %121 = getelementptr inbounds [6 x i8], ptr %18, i32 0, i32 2
  %122 = load i8, ptr %121, align 1
  %123 = icmp eq i8 %122, 31
  %124 = select i1 %120, i1 %123, i1 false
  %125 = getelementptr inbounds [6 x i8], ptr %18, i32 0, i32 3
  %126 = load i8, ptr %125, align 1
  %127 = icmp eq i8 %126, 0
  %128 = select i1 %124, i1 %127, i1 false
  br i1 %128, label %129, label %138

129:                                              ; preds = %118
  %130 = getelementptr inbounds [6 x i8], ptr %18, i32 0, i32 4
  %131 = load i8, ptr %130, align 1
  %132 = and i8 %131, 127
  %133 = icmp eq i8 %132, 8
  %134 = getelementptr inbounds [6 x i8], ptr %18, i32 0, i32 5
  %135 = load i8, ptr %134, align 1
  %136 = icmp eq i8 %135, 0
  %137 = select i1 %133, i1 %136, i1 false
  br i1 %137, label %143, label %141

138:                                              ; preds = %118
  %139 = icmp slt i32 %119, 0
  %140 = select i1 %139, i32 %119, i32 -22
  br label %141

141:                                              ; preds = %138, %129
  %142 = phi i32 [ -22, %129 ], [ %140, %138 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %18) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.25, i32 noundef %142) #12
  br label %249

143:                                              ; preds = %129
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %18) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #11
  store i8 -4, ptr %37, align 2
  br label %249

144:                                              ; preds = %117
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #11
  store i64 362539971867181060, ptr %14, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %15) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %15, i8 0, i32 6, i1 false) #11, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #11
  store i32 6, ptr %16, align 4
  %145 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %0, ptr noundef nonnull %14, i32 noundef 8, ptr noundef nonnull %15, ptr noundef nonnull %16, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext false) #11
  %146 = icmp eq i32 %145, 0
  %147 = getelementptr inbounds [6 x i8], ptr %15, i32 0, i32 2
  %148 = load i8, ptr %147, align 1
  %149 = icmp eq i8 %148, 31
  %150 = select i1 %146, i1 %149, i1 false
  %151 = getelementptr inbounds [6 x i8], ptr %15, i32 0, i32 3
  %152 = load i8, ptr %151, align 1
  %153 = icmp eq i8 %152, 0
  %154 = select i1 %150, i1 %153, i1 false
  br i1 %154, label %155, label %164

155:                                              ; preds = %144
  %156 = getelementptr inbounds [6 x i8], ptr %15, i32 0, i32 4
  %157 = load i8, ptr %156, align 1
  %158 = and i8 %157, 127
  %159 = icmp eq i8 %158, 8
  %160 = getelementptr inbounds [6 x i8], ptr %15, i32 0, i32 5
  %161 = load i8, ptr %160, align 1
  %162 = icmp eq i8 %161, 0
  %163 = select i1 %159, i1 %162, i1 false
  br i1 %163, label %169, label %167

164:                                              ; preds = %144
  %165 = icmp slt i32 %145, 0
  %166 = select i1 %165, i32 %145, i32 -22
  br label %167

167:                                              ; preds = %164, %155
  %168 = phi i32 [ -22, %155 ], [ %166, %164 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.26, i32 noundef %168) #12
  br label %249

169:                                              ; preds = %155
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #11
  store i8 4, ptr %37, align 2
  br label %249

170:                                              ; preds = %117
  %171 = load i16, ptr %87, align 4
  %172 = icmp ne i16 %171, -1
  %173 = icmp eq i16 %171, %2
  %174 = and i1 %172, %173
  br i1 %174, label %208, label %175

175:                                              ; preds = %170
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %12) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %12, i8 0, i32 7, i1 false) #11, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #11
  %176 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(256) %176, i8 0, i32 252, i1 false) #11
  %177 = getelementptr inbounds %struct.pip_app_cmd_head, ptr %11, i32 0, i32 5
  store i16 4, ptr %11, align 2
  %178 = getelementptr inbounds %struct.pip_app_cmd_head, ptr %11, i32 0, i32 1
  store i16 9, ptr %178, align 2
  store i8 47, ptr %176, align 2
  %179 = getelementptr inbounds %struct.pip_app_cmd_head, ptr %11, i32 0, i32 4
  store i8 6, ptr %179, align 2
  store i8 76, ptr %177, align 1
  %180 = getelementptr inbounds %struct.gen5_app_set_parameter_data, ptr %177, i32 0, i32 1
  store i8 2, ptr %180, align 2
  %181 = zext i16 %2 to i32
  %182 = getelementptr inbounds %struct.pip_app_cmd_head, ptr %11, i32 1, i32 1
  store i32 %181, ptr %182, align 1
  store i32 7, ptr %13, align 4
  %183 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %0, ptr noundef nonnull %11, i32 noundef 13, ptr noundef nonnull %12, ptr noundef nonnull %13, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext false) #11
  %184 = icmp eq i32 %183, 0
  %185 = getelementptr inbounds [7 x i8], ptr %12, i32 0, i32 5
  %186 = load i8, ptr %185, align 1
  %187 = icmp eq i8 %186, 76
  %188 = select i1 %184, i1 %187, i1 false
  br i1 %188, label %189, label %206

189:                                              ; preds = %175
  %190 = getelementptr inbounds [7 x i8], ptr %12, i32 0, i32 6
  %191 = load i8, ptr %190, align 1
  %192 = icmp eq i8 %191, 2
  %193 = getelementptr inbounds [7 x i8], ptr %12, i32 0, i32 2
  %194 = load i8, ptr %193, align 1
  %195 = icmp eq i8 %194, 31
  %196 = select i1 %192, i1 %195, i1 false
  %197 = getelementptr inbounds [7 x i8], ptr %12, i32 0, i32 3
  %198 = load i8, ptr %197, align 1
  %199 = icmp eq i8 %198, 0
  %200 = select i1 %196, i1 %199, i1 false
  br i1 %200, label %201, label %206

201:                                              ; preds = %189
  %202 = getelementptr inbounds [7 x i8], ptr %12, i32 0, i32 4
  %203 = load i8, ptr %202, align 1
  %204 = and i8 %203, 127
  %205 = icmp eq i8 %204, 6
  br i1 %205, label %207, label %206

206:                                              ; preds = %201, %189, %175
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %11) #11
  br label %208

207:                                              ; preds = %201
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %11) #11
  store i16 %2, ptr %87, align 4
  br label %208

208:                                              ; preds = %207, %206, %170
  %209 = icmp ult i16 %2, 51
  %210 = select i1 %209, i8 3, i8 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  store i64 74309595715469316, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %9) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %9, i8 0, i32 6, i1 false) #11, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  %211 = getelementptr inbounds [8 x i8], ptr %8, i32 0, i32 7
  store i8 %210, ptr %211, align 1
  store i32 6, ptr %10, align 4
  %212 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %0, ptr noundef nonnull %8, i32 noundef 8, ptr noundef nonnull %9, ptr noundef nonnull %10, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext false) #11
  %213 = icmp eq i32 %212, 0
  %214 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 2
  %215 = load i8, ptr %214, align 1
  %216 = icmp eq i8 %215, 31
  %217 = select i1 %213, i1 %216, i1 false
  %218 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 3
  %219 = load i8, ptr %218, align 1
  %220 = icmp eq i8 %219, 0
  %221 = select i1 %217, i1 %220, i1 false
  br i1 %221, label %222, label %231

222:                                              ; preds = %208
  %223 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 4
  %224 = load i8, ptr %223, align 1
  %225 = and i8 %224, 127
  %226 = icmp eq i8 %225, 8
  %227 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 5
  %228 = load i8, ptr %227, align 1
  %229 = icmp eq i8 %228, 0
  %230 = select i1 %226, i1 %229, i1 false
  br i1 %230, label %237, label %234

231:                                              ; preds = %208
  %232 = icmp slt i32 %212, 0
  %233 = select i1 %232, i32 %212, i32 -22
  br label %234

234:                                              ; preds = %231, %222
  %235 = phi i32 [ -22, %222 ], [ %233, %231 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  %236 = zext i8 %210 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.27, i32 noundef %236, i32 noundef %235) #12
  br label %249

237:                                              ; preds = %222
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  %238 = icmp eq i32 %3, 2
  br i1 %238, label %239, label %247

239:                                              ; preds = %237
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %6) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %6, i8 0, i32 7, i1 false) #11, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  %240 = getelementptr inbounds i8, ptr %5, i32 4
  store i16 47, ptr %240, align 2
  store i16 4, ptr %5, align 2
  %241 = getelementptr inbounds %struct.pip_app_cmd_head, ptr %5, i32 0, i32 1
  store i16 8, ptr %241, align 2
  %242 = getelementptr inbounds %struct.pip_app_cmd_head, ptr %5, i32 0, i32 4
  store i8 6, ptr %242, align 2
  %243 = getelementptr inbounds %struct.pip_app_cmd_head, ptr %5, i32 0, i32 5
  store i8 8, ptr %243, align 1
  %244 = getelementptr inbounds [0 x i8], ptr %243, i32 0, i32 1
  store i8 1, ptr %244, align 2
  %245 = getelementptr inbounds %struct.pip_app_cmd_head, ptr %5, i32 1, i32 1
  store i8 1, ptr %245, align 1
  store i32 7, ptr %7, align 4
  %246 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 10, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext false) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %5) #11
  br label %247

247:                                              ; preds = %239, %237
  %248 = call zeroext i8 @cyapa_sleep_time_to_pwr_cmd(i16 noundef zeroext %2) #11
  store i8 %248, ptr %37, align 2
  br label %249

249:                                              ; preds = %247, %234, %169, %167, %143, %141, %116, %105, %104, %92, %91, %91, %91
  %250 = phi i32 [ 0, %91 ], [ 0, %92 ], [ -22, %104 ], [ 0, %105 ], [ -22, %116 ], [ %142, %141 ], [ 0, %143 ], [ %168, %167 ], [ 0, %169 ], [ %235, %234 ], [ 0, %247 ], [ 0, %91 ], [ 0, %91 ]
  call void @mutex_lock(ptr noundef %35) #11
  store i32 0, ptr %36, align 4
  call void @mutex_unlock(ptr noundef %35) #11
  br label %251

251:                                              ; preds = %249, %4
  %252 = phi i32 [ %250, %249 ], [ 0, %4 ]
  ret i32 %252
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_sync_frame(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cyapa_gen5_read_panel_scan_raw_data(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef writeonly %5) unnamed_addr #0 {
  %7 = alloca [12 x i8], align 2
  %8 = alloca [256 x i8], align 1
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #11
  %10 = getelementptr inbounds i8, ptr %7, i32 4
  store i16 0, ptr %10, align 2, !annotation !12
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %8) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %8, i8 0, i32 256, i1 false), !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  %11 = icmp ne ptr %3, null
  %12 = icmp ne ptr %4, null
  %13 = and i1 %11, %12
  %14 = icmp ne ptr %5, null
  %15 = and i1 %13, %14
  br i1 %15, label %16, label %136

16:                                               ; preds = %6
  store i32 -2147483648, ptr %3, align 4
  store i32 2147483647, ptr %4, align 4
  store i16 4, ptr %7, align 2
  %17 = getelementptr inbounds %struct.pip_app_cmd_head, ptr %7, i32 0, i32 1
  store i16 10, ptr %17, align 2
  %18 = getelementptr inbounds %struct.pip_app_cmd_head, ptr %7, i32 0, i32 2
  store i8 47, ptr %18, align 2
  %19 = getelementptr inbounds %struct.pip_app_cmd_head, ptr %7, i32 0, i32 4
  store i8 43, ptr %19, align 2
  %20 = getelementptr inbounds %struct.pip_app_cmd_head, ptr %7, i32 0, i32 5
  %21 = getelementptr inbounds %struct.pip_app_cmd_head, ptr %7, i32 1, i32 1
  %22 = getelementptr inbounds %struct.pip_app_cmd_head, ptr %7, i32 1, i32 2
  %23 = getelementptr inbounds [256 x i8], ptr %8, i32 0, i32 2
  %24 = getelementptr inbounds [256 x i8], ptr %8, i32 0, i32 3
  %25 = getelementptr inbounds [256 x i8], ptr %8, i32 0, i32 4
  %26 = getelementptr inbounds [256 x i8], ptr %8, i32 0, i32 5
  %27 = getelementptr inbounds [256 x i8], ptr %8, i32 0, i32 6
  %28 = getelementptr inbounds [256 x i8], ptr %8, i32 0, i32 7
  %29 = getelementptr inbounds [256 x i8], ptr %8, i32 0, i32 9
  br label %30

30:                                               ; preds = %125, %16
  %31 = phi i32 [ 0, %16 ], [ %122, %125 ]
  %32 = phi i32 [ 0, %16 ], [ %123, %125 ]
  %33 = phi i16 [ 0, %16 ], [ %69, %125 ]
  %34 = phi i32 [ 244, %16 ], [ %127, %125 ]
  %35 = phi i32 [ 61, %16 ], [ %126, %125 ]
  store i16 %33, ptr %20, align 1
  %36 = trunc i32 %35 to i16
  store i16 %36, ptr %21, align 1
  store i8 %1, ptr %22, align 1
  %37 = add nuw nsw i32 %34, 10
  store i32 %37, ptr %9, align 4
  %38 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %0, ptr noundef nonnull %7, i32 noundef 12, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext true)
  %39 = icmp eq i32 %38, 0
  %40 = load i32, ptr %9, align 4
  %41 = icmp sgt i32 %40, 9
  %42 = select i1 %39, i1 %41, i1 false
  %43 = load i8, ptr %23, align 1
  %44 = icmp eq i8 %43, 31
  %45 = select i1 %42, i1 %44, i1 false
  %46 = load i8, ptr %24, align 1
  %47 = icmp eq i8 %46, 0
  %48 = select i1 %45, i1 %47, i1 false
  br i1 %48, label %49, label %59

49:                                               ; preds = %30
  %50 = load i8, ptr %25, align 1
  %51 = and i8 %50, 127
  %52 = icmp eq i8 %51, 43
  %53 = load i8, ptr %26, align 1
  %54 = icmp eq i8 %53, 0
  %55 = select i1 %52, i1 %54, i1 false
  %56 = load i8, ptr %27, align 1
  %57 = icmp eq i8 %56, %1
  %58 = select i1 %55, i1 %57, i1 false
  br i1 %58, label %61, label %60

59:                                               ; preds = %30
  br i1 %39, label %60, label %136

60:                                               ; preds = %59, %49
  br label %136

61:                                               ; preds = %49
  %62 = load i16, ptr %28, align 1
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %128, label %64

64:                                               ; preds = %61
  %65 = zext i16 %62 to i32
  %66 = load i8, ptr %29, align 1
  %67 = and i8 %66, 7
  %68 = zext i8 %67 to i32
  %69 = add i16 %62, %33
  %70 = mul nuw nsw i32 %68, %65
  %71 = add nuw nsw i32 %70, 10
  %72 = icmp eq i32 %70, 0
  br i1 %72, label %121, label %73

73:                                               ; preds = %64
  %74 = zext i8 %66 to i32
  %75 = and i32 %74, 7
  %76 = and i32 %74, 16
  %77 = icmp eq i32 %76, 0
  %78 = and i32 %74, 32
  %79 = icmp eq i32 %78, 0
  %80 = icmp ugt i32 %75, %68
  %81 = shl nuw nsw i32 %75, 3
  %82 = add nsw i32 %81, -1
  %83 = shl nsw i32 -1, %81
  br label %84

84:                                               ; preds = %111, %73
  %85 = phi i32 [ 10, %73 ], [ %119, %111 ]
  %86 = phi i32 [ %32, %73 ], [ %118, %111 ]
  %87 = phi i32 [ %31, %73 ], [ %117, %111 ]
  %88 = getelementptr [256 x i8], ptr %8, i32 0, i32 %85
  br i1 %80, label %111, label %89

89:                                               ; preds = %84
  switch i32 %75, label %104 [
    i32 1, label %90
    i32 2, label %93
    i32 4, label %100
  ]

90:                                               ; preds = %89
  %91 = load i8, ptr %88, align 1
  %92 = zext i8 %91 to i32
  br label %104

93:                                               ; preds = %89
  %94 = load i16, ptr %88, align 1
  br i1 %77, label %95, label %98

95:                                               ; preds = %93
  %96 = call i16 @llvm.bswap.i16(i16 %94) #11
  %97 = zext i16 %96 to i32
  br label %104

98:                                               ; preds = %93
  %99 = zext i16 %94 to i32
  br label %104

100:                                              ; preds = %89
  %101 = load i32, ptr %88, align 1
  %102 = call i32 @llvm.bswap.i32(i32 %101) #11
  %103 = select i1 %77, i32 %102, i32 %101
  br label %104

104:                                              ; preds = %100, %98, %95, %90, %89
  %105 = phi i32 [ %97, %95 ], [ %99, %98 ], [ %92, %90 ], [ 0, %89 ], [ %103, %100 ]
  br i1 %79, label %111, label %106

106:                                              ; preds = %104
  %107 = ashr i32 %105, %82
  %108 = icmp eq i32 %107, 0
  %109 = select i1 %108, i32 0, i32 %83
  %110 = or i32 %109, %105
  br label %111

111:                                              ; preds = %106, %104, %84
  %112 = phi i32 [ 0, %84 ], [ %105, %104 ], [ %110, %106 ]
  %113 = load i32, ptr %4, align 4
  %114 = call i32 @llvm.smin.i32(i32 %112, i32 %113)
  store i32 %114, ptr %4, align 4
  %115 = load i32, ptr %3, align 4
  %116 = call i32 @llvm.smax.i32(i32 %112, i32 %115)
  store i32 %116, ptr %3, align 4
  %117 = add i32 %112, %87
  %118 = add i32 %86, 1
  %119 = add i32 %85, %68
  %120 = icmp slt i32 %119, %71
  br i1 %120, label %84, label %121

121:                                              ; preds = %111, %64
  %122 = phi i32 [ %31, %64 ], [ %117, %111 ]
  %123 = phi i32 [ %32, %64 ], [ %118, %111 ]
  %124 = icmp slt i32 %123, %2
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = udiv i32 246, %68
  %127 = mul nuw nsw i32 %126, %68
  br label %30

128:                                              ; preds = %121, %61
  %129 = phi i32 [ %31, %61 ], [ %122, %121 ]
  %130 = phi i32 [ %32, %61 ], [ %123, %121 ]
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %128
  %133 = sdiv i32 %129, %130
  br label %134

134:                                              ; preds = %132, %128
  %135 = phi i32 [ %133, %132 ], [ 0, %128 ]
  store i32 %135, ptr %5, align 4
  br label %136

136:                                              ; preds = %134, %60, %59, %6
  %137 = phi i32 [ 0, %134 ], [ -22, %6 ], [ -11, %60 ], [ %38, %59 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  ret i32 %137
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cyapa_gen5_read_idac_data(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef writeonly %5) unnamed_addr #0 {
  %7 = alloca [12 x i8], align 2
  %8 = alloca [256 x i8], align 1
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %8) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %8, i8 0, i32 256, i1 false), !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  %10 = icmp ult i8 %1, 2
  %11 = icmp ne ptr %2, null
  %12 = and i1 %10, %11
  %13 = icmp ne ptr %3, null
  %14 = and i1 %12, %13
  %15 = icmp ne ptr %4, null
  %16 = and i1 %14, %15
  %17 = icmp ne ptr %5, null
  %18 = and i1 %16, %17
  br i1 %18, label %19, label %351

19:                                               ; preds = %6
  store i32 -2147483648, ptr %3, align 4
  store i32 2147483647, ptr %4, align 4
  %20 = load i32, ptr %2, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %57

22:                                               ; preds = %19
  store i32 4, ptr %2, align 4
  %23 = icmp eq i8 %1, 0
  br i1 %23, label %24, label %89

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 31
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %50

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 30
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  %32 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 28
  %33 = load i32, ptr %32, align 4
  br i1 %31, label %39, label %34

34:                                               ; preds = %28
  %35 = icmp eq i32 %33, %30
  br i1 %35, label %36, label %44

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 29
  %38 = load i32, ptr %37, align 4
  br label %44

39:                                               ; preds = %28
  %40 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 29
  %41 = load i32, ptr %40, align 4
  %42 = tail call i32 @llvm.smin.i32(i32 %33, i32 %41) #11
  %43 = tail call i32 @llvm.smax.i32(i32 %33, i32 %41) #11
  br label %44

44:                                               ; preds = %39, %36, %34
  %45 = phi i32 [ %43, %39 ], [ %30, %36 ], [ %30, %34 ]
  %46 = phi i32 [ %42, %39 ], [ %38, %36 ], [ %33, %34 ]
  %47 = add i32 %45, 3
  %48 = and i32 %47, -4
  store i32 %48, ptr %25, align 4
  %49 = load i32, ptr %2, align 4
  br label %50

50:                                               ; preds = %44, %24
  %51 = phi i32 [ %49, %44 ], [ 4, %24 ]
  %52 = phi i32 [ %48, %44 ], [ %26, %24 ]
  %53 = phi i32 [ %45, %44 ], [ 0, %24 ]
  %54 = phi i32 [ %46, %44 ], [ 0, %24 ]
  %55 = add i32 %52, 7
  %56 = and i32 %55, -8
  br label %89

57:                                               ; preds = %19
  %58 = icmp sgt i32 %20, 4
  br i1 %58, label %59, label %60

59:                                               ; preds = %57
  store i32 4, ptr %2, align 4
  br label %60

60:                                               ; preds = %59, %57
  %61 = phi i32 [ 4, %59 ], [ %20, %57 ]
  %62 = icmp eq i8 %1, 0
  br i1 %62, label %63, label %81

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 31
  %65 = load i32, ptr %64, align 4
  %66 = mul i32 %61, %65
  %67 = trunc i32 %66 to i16
  %68 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 30
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 28
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %63
  %74 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 29
  %75 = load i32, ptr %74, align 4
  br label %76

76:                                               ; preds = %73, %63
  %77 = phi i32 [ %75, %73 ], [ %71, %63 ]
  %78 = add i32 %65, 7
  %79 = and i32 %78, -8
  %80 = mul i32 %77, %79
  br label %89

81:                                               ; preds = %60
  %82 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 28
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 29
  %85 = load i32, ptr %84, align 4
  %86 = add i32 %83, 3
  %87 = add i32 %86, %85
  %88 = and i32 %87, -4
  br label %89

89:                                               ; preds = %81, %76, %50, %22
  %90 = phi i32 [ %51, %50 ], [ 4, %22 ], [ %61, %76 ], [ %61, %81 ]
  %91 = phi i32 [ %53, %50 ], [ 0, %22 ], [ 0, %76 ], [ 0, %81 ]
  %92 = phi i32 [ %54, %50 ], [ 0, %22 ], [ %77, %76 ], [ 0, %81 ]
  %93 = phi i32 [ 2147483647, %50 ], [ 2147483647, %22 ], [ 0, %76 ], [ 0, %81 ]
  %94 = phi i32 [ -2147483648, %50 ], [ -2147483648, %22 ], [ 0, %76 ], [ 0, %81 ]
  %95 = phi i32 [ %56, %50 ], [ 2, %22 ], [ %80, %76 ], [ %88, %81 ]
  %96 = phi i16 [ 0, %50 ], [ 0, %22 ], [ %67, %76 ], [ 2, %81 ]
  %97 = getelementptr inbounds i8, ptr %7, i32 4
  store i16 0, ptr %97, align 2
  store i16 4, ptr %7, align 2
  %98 = getelementptr inbounds %struct.pip_app_cmd_head, ptr %7, i32 0, i32 1
  store i16 10, ptr %98, align 2
  %99 = getelementptr inbounds %struct.pip_app_cmd_head, ptr %7, i32 0, i32 2
  store i8 47, ptr %99, align 2
  %100 = getelementptr inbounds %struct.pip_app_cmd_head, ptr %7, i32 0, i32 4
  store i8 36, ptr %100, align 2
  %101 = getelementptr inbounds %struct.pip_app_cmd_head, ptr %7, i32 0, i32 5
  %102 = getelementptr inbounds %struct.pip_app_cmd_head, ptr %7, i32 1, i32 1
  %103 = getelementptr inbounds %struct.pip_app_cmd_head, ptr %7, i32 1, i32 2
  %104 = getelementptr inbounds [256 x i8], ptr %8, i32 0, i32 2
  %105 = getelementptr inbounds [256 x i8], ptr %8, i32 0, i32 3
  %106 = getelementptr inbounds [256 x i8], ptr %8, i32 0, i32 4
  %107 = getelementptr inbounds [256 x i8], ptr %8, i32 0, i32 5
  %108 = getelementptr inbounds [256 x i8], ptr %8, i32 0, i32 6
  %109 = getelementptr inbounds [256 x i8], ptr %8, i32 0, i32 7
  %110 = getelementptr inbounds [256 x i8], ptr %8, i32 0, i32 9
  %111 = icmp eq i8 %1, 1
  %112 = and i1 %111, %21
  %113 = icmp eq i8 %1, 0
  %114 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 31
  br label %115

115:                                              ; preds = %308, %89
  %116 = phi i32 [ %90, %89 ], [ %309, %308 ]
  %117 = phi i32 [ 0, %89 ], [ %300, %308 ]
  %118 = phi i32 [ 0, %89 ], [ %301, %308 ]
  %119 = phi i32 [ 0, %89 ], [ %302, %308 ]
  %120 = phi i32 [ %93, %89 ], [ %303, %308 ]
  %121 = phi i32 [ %94, %89 ], [ %304, %308 ]
  %122 = phi i32 [ 0, %89 ], [ %306, %308 ]
  %123 = phi i32 [ 0, %89 ], [ %305, %308 ]
  %124 = phi i16 [ %96, %89 ], [ %233, %308 ]
  %125 = sdiv i32 246, %116
  %126 = sub i32 %95, %122
  %127 = call i32 @llvm.smin.i32(i32 %125, i32 %126)
  %128 = mul i32 %127, %116
  store i16 %124, ptr %101, align 1
  %129 = trunc i32 %128 to i16
  store i16 %129, ptr %102, align 1
  store i8 %1, ptr %103, align 1
  %130 = add i32 %128, 10
  store i32 %130, ptr %9, align 4
  %131 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %0, ptr noundef nonnull %7, i32 noundef 12, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext true)
  %132 = icmp eq i32 %131, 0
  %133 = load i32, ptr %9, align 4
  %134 = icmp sgt i32 %133, 9
  %135 = select i1 %132, i1 %134, i1 false
  %136 = load i8, ptr %104, align 1
  %137 = icmp eq i8 %136, 31
  %138 = select i1 %135, i1 %137, i1 false
  %139 = load i8, ptr %105, align 1
  %140 = icmp eq i8 %139, 0
  %141 = select i1 %138, i1 %140, i1 false
  br i1 %141, label %142, label %152

142:                                              ; preds = %115
  %143 = load i8, ptr %106, align 1
  %144 = and i8 %143, 127
  %145 = icmp eq i8 %144, 36
  %146 = load i8, ptr %107, align 1
  %147 = icmp eq i8 %146, 0
  %148 = select i1 %145, i1 %147, i1 false
  %149 = load i8, ptr %108, align 1
  %150 = icmp eq i8 %149, %1
  %151 = select i1 %148, i1 %150, i1 false
  br i1 %151, label %155, label %351

152:                                              ; preds = %115
  %153 = icmp slt i32 %131, 0
  %154 = select i1 %153, i32 %131, i32 -11
  br label %351

155:                                              ; preds = %142
  %156 = load i16, ptr %109, align 1
  %157 = zext i16 %156 to i32
  %158 = icmp eq i16 %156, 0
  br i1 %158, label %315, label %159

159:                                              ; preds = %155
  %160 = load i8, ptr %110, align 1
  %161 = and i8 %160, 7
  %162 = zext i8 %161 to i32
  store i32 %162, ptr %2, align 4
  %163 = icmp ult i32 %157, %162
  br i1 %163, label %351, label %164

164:                                              ; preds = %159
  br i1 %112, label %165, label %232

165:                                              ; preds = %164
  %166 = getelementptr inbounds [256 x i8], ptr %8, i32 0, i32 10
  %167 = zext i8 %160 to i32
  %168 = and i32 %167, 7
  %169 = and i32 %167, 16
  %170 = icmp eq i32 %169, 0
  %171 = and i32 %167, 32
  %172 = icmp eq i32 %171, 0
  %173 = icmp ugt i32 %168, %162
  br i1 %173, label %199, label %174

174:                                              ; preds = %165
  switch i32 %168, label %189 [
    i32 1, label %175
    i32 2, label %178
    i32 4, label %185
  ]

175:                                              ; preds = %174
  %176 = load i8, ptr %166, align 1
  %177 = zext i8 %176 to i32
  br label %189

178:                                              ; preds = %174
  %179 = load i16, ptr %166, align 1
  br i1 %170, label %180, label %183

180:                                              ; preds = %178
  %181 = call i16 @llvm.bswap.i16(i16 %179) #11
  %182 = zext i16 %181 to i32
  br label %189

183:                                              ; preds = %178
  %184 = zext i16 %179 to i32
  br label %189

185:                                              ; preds = %174
  %186 = load i32, ptr %166, align 1
  %187 = call i32 @llvm.bswap.i32(i32 %186) #11
  %188 = select i1 %170, i32 %187, i32 %186
  br label %189

189:                                              ; preds = %185, %183, %180, %175, %174
  %190 = phi i32 [ %182, %180 ], [ %184, %183 ], [ %177, %175 ], [ 0, %174 ], [ %188, %185 ]
  br i1 %172, label %199, label %191

191:                                              ; preds = %189
  %192 = shl nuw nsw i32 %168, 3
  %193 = add nsw i32 %192, -1
  %194 = ashr i32 %190, %193
  %195 = icmp eq i32 %194, 0
  %196 = shl nsw i32 -1, %192
  %197 = select i1 %195, i32 0, i32 %196
  %198 = or i32 %197, %190
  br label %199

199:                                              ; preds = %191, %189, %165
  %200 = phi i32 [ 0, %165 ], [ %190, %189 ], [ %198, %191 ]
  store i32 %200, ptr %3, align 4
  %201 = load i32, ptr %2, align 4
  %202 = add i32 %201, 10
  %203 = getelementptr [256 x i8], ptr %8, i32 0, i32 %202
  %204 = icmp sgt i32 %168, %201
  br i1 %204, label %230, label %205

205:                                              ; preds = %199
  switch i32 %168, label %220 [
    i32 1, label %206
    i32 2, label %209
    i32 4, label %216
  ]

206:                                              ; preds = %205
  %207 = load i8, ptr %203, align 1
  %208 = zext i8 %207 to i32
  br label %220

209:                                              ; preds = %205
  %210 = load i16, ptr %203, align 1
  br i1 %170, label %211, label %214

211:                                              ; preds = %209
  %212 = call i16 @llvm.bswap.i16(i16 %210) #11
  %213 = zext i16 %212 to i32
  br label %220

214:                                              ; preds = %209
  %215 = zext i16 %210 to i32
  br label %220

216:                                              ; preds = %205
  %217 = load i32, ptr %203, align 1
  %218 = call i32 @llvm.bswap.i32(i32 %217) #11
  %219 = select i1 %170, i32 %218, i32 %217
  br label %220

220:                                              ; preds = %216, %214, %211, %206, %205
  %221 = phi i32 [ %213, %211 ], [ %215, %214 ], [ %208, %206 ], [ 0, %205 ], [ %219, %216 ]
  br i1 %172, label %230, label %222

222:                                              ; preds = %220
  %223 = shl nuw nsw i32 %168, 3
  %224 = add nsw i32 %223, -1
  %225 = ashr i32 %221, %224
  %226 = icmp eq i32 %225, 0
  %227 = shl nsw i32 -1, %223
  %228 = select i1 %226, i32 0, i32 %227
  %229 = or i32 %228, %221
  br label %230

230:                                              ; preds = %222, %220, %199
  %231 = phi i32 [ 0, %199 ], [ %221, %220 ], [ %229, %222 ]
  store i32 %231, ptr %4, align 4
  br label %349

232:                                              ; preds = %164
  %233 = add i16 %156, %124
  %234 = add nuw nsw i32 %157, 10
  %235 = zext i8 %160 to i32
  %236 = and i32 %235, 7
  %237 = and i32 %235, 16
  %238 = icmp eq i32 %237, 0
  %239 = and i32 %235, 32
  %240 = icmp eq i32 %239, 0
  %241 = shl nuw nsw i32 %236, 3
  %242 = add nsw i32 %241, -1
  %243 = shl nsw i32 -1, %241
  br label %244

244:                                              ; preds = %308, %232
  %245 = phi i32 [ %162, %232 ], [ %309, %308 ]
  %246 = phi i32 [ %123, %232 ], [ %305, %308 ]
  %247 = phi i32 [ %122, %232 ], [ %306, %308 ]
  %248 = phi i32 [ %121, %232 ], [ %304, %308 ]
  %249 = phi i32 [ %120, %232 ], [ %303, %308 ]
  %250 = phi i32 [ %119, %232 ], [ %302, %308 ]
  %251 = phi i32 [ %118, %232 ], [ %301, %308 ]
  %252 = phi i32 [ %117, %232 ], [ %300, %308 ]
  %253 = phi i32 [ 10, %232 ], [ %310, %308 ]
  %254 = getelementptr [256 x i8], ptr %8, i32 0, i32 %253
  %255 = icmp sgt i32 %236, %245
  br i1 %255, label %278, label %256

256:                                              ; preds = %244
  switch i32 %236, label %271 [
    i32 1, label %257
    i32 2, label %260
    i32 4, label %267
  ]

257:                                              ; preds = %256
  %258 = load i8, ptr %254, align 1
  %259 = zext i8 %258 to i32
  br label %271

260:                                              ; preds = %256
  %261 = load i16, ptr %254, align 1
  br i1 %238, label %262, label %265

262:                                              ; preds = %260
  %263 = call i16 @llvm.bswap.i16(i16 %261) #11
  %264 = zext i16 %263 to i32
  br label %271

265:                                              ; preds = %260
  %266 = zext i16 %261 to i32
  br label %271

267:                                              ; preds = %256
  %268 = load i32, ptr %254, align 1
  %269 = call i32 @llvm.bswap.i32(i32 %268) #11
  %270 = select i1 %238, i32 %269, i32 %268
  br label %271

271:                                              ; preds = %267, %265, %262, %257, %256
  %272 = phi i32 [ %264, %262 ], [ %266, %265 ], [ %259, %257 ], [ 0, %256 ], [ %270, %267 ]
  br i1 %240, label %278, label %273

273:                                              ; preds = %271
  %274 = ashr i32 %272, %242
  %275 = icmp eq i32 %274, 0
  %276 = select i1 %275, i32 0, i32 %243
  %277 = or i32 %276, %272
  br label %278

278:                                              ; preds = %273, %271, %244
  %279 = phi i32 [ 0, %244 ], [ %272, %271 ], [ %277, %273 ]
  %280 = load i32, ptr %4, align 4
  %281 = call i32 @llvm.smin.i32(i32 %279, i32 %280)
  store i32 %281, ptr %4, align 4
  %282 = load i32, ptr %3, align 4
  %283 = call i32 @llvm.smax.i32(i32 %279, i32 %282)
  store i32 %283, ptr %3, align 4
  br i1 %113, label %284, label %299

284:                                              ; preds = %278
  %285 = load i32, ptr %114, align 4
  %286 = icmp slt i32 %252, %285
  br i1 %286, label %287, label %299

287:                                              ; preds = %284
  br i1 %21, label %288, label %299

288:                                              ; preds = %287
  %289 = icmp eq i32 %250, 0
  %290 = sdiv i32 %250, 2
  %291 = icmp sgt i32 %279, %290
  %292 = select i1 %289, i1 true, i1 %291
  br i1 %292, label %293, label %299

293:                                              ; preds = %288
  %294 = call i32 @llvm.smin.i32(i32 %279, i32 %249)
  %295 = call i32 @llvm.smax.i32(i32 %279, i32 %248)
  %296 = add i32 %279, %251
  %297 = add nsw i32 %252, 1
  %298 = sdiv i32 %296, %297
  br label %299

299:                                              ; preds = %293, %288, %287, %284, %278
  %300 = phi i32 [ %297, %293 ], [ %252, %287 ], [ %252, %284 ], [ %252, %278 ], [ %252, %288 ]
  %301 = phi i32 [ %296, %293 ], [ %251, %287 ], [ %251, %284 ], [ %251, %278 ], [ %251, %288 ]
  %302 = phi i32 [ %298, %293 ], [ %250, %287 ], [ %250, %284 ], [ %250, %278 ], [ %250, %288 ]
  %303 = phi i32 [ %294, %293 ], [ %249, %287 ], [ %249, %284 ], [ %249, %278 ], [ %249, %288 ]
  %304 = phi i32 [ %295, %293 ], [ %248, %287 ], [ %248, %284 ], [ %248, %278 ], [ %248, %288 ]
  %305 = add i32 %279, %246
  %306 = add i32 %247, 1
  %307 = icmp slt i32 %306, %95
  br i1 %307, label %308, label %312

308:                                              ; preds = %299
  %309 = load i32, ptr %2, align 4
  %310 = add i32 %309, %253
  %311 = icmp slt i32 %310, %234
  br i1 %311, label %244, label %115

312:                                              ; preds = %299
  %313 = add nsw i32 %122, 1
  %314 = call i32 @llvm.smax.i32(i32 %95, i32 %313)
  br label %315

315:                                              ; preds = %312, %155
  %316 = phi i32 [ %300, %312 ], [ %117, %155 ]
  %317 = phi i32 [ %302, %312 ], [ %119, %155 ]
  %318 = phi i32 [ %303, %312 ], [ %120, %155 ]
  %319 = phi i32 [ %304, %312 ], [ %121, %155 ]
  %320 = phi i32 [ %314, %312 ], [ %122, %155 ]
  %321 = phi i32 [ %305, %312 ], [ %123, %155 ]
  %322 = icmp eq i32 %320, 0
  br i1 %322, label %325, label %323

323:                                              ; preds = %315
  %324 = sdiv i32 %321, %320
  br label %325

325:                                              ; preds = %323, %315
  %326 = phi i32 [ %324, %323 ], [ 0, %315 ]
  store i32 %326, ptr %5, align 4
  %327 = and i1 %113, %21
  %328 = xor i1 %327, true
  %329 = icmp eq i32 %316, 0
  %330 = select i1 %328, i1 true, i1 %329
  br i1 %330, label %351, label %331

331:                                              ; preds = %325
  %332 = load i32, ptr %114, align 4
  %333 = icmp eq i32 %316, %332
  br i1 %333, label %334, label %339

334:                                              ; preds = %331
  %335 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 30
  %336 = load i32, ptr %335, align 4
  %337 = icmp eq i32 %336, 0
  %338 = select i1 %337, i32 %91, i32 %336
  store i32 %338, ptr %335, align 4
  br label %348

339:                                              ; preds = %331
  %340 = icmp eq i32 %316, %91
  %341 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 30
  %342 = load i32, ptr %341, align 4
  %343 = icmp eq i32 %342, 0
  br i1 %340, label %344, label %346

344:                                              ; preds = %339
  %345 = select i1 %343, i32 %91, i32 %342
  store i32 %345, ptr %341, align 4
  store i32 %91, ptr %114, align 4
  br label %348

346:                                              ; preds = %339
  %347 = select i1 %343, i32 %92, i32 %342
  store i32 %347, ptr %341, align 4
  store i32 %316, ptr %114, align 4
  br label %348

348:                                              ; preds = %346, %344, %334
  store i32 %318, ptr %4, align 4
  store i32 %319, ptr %3, align 4
  br label %349

349:                                              ; preds = %348, %230
  %350 = phi i32 [ 0, %230 ], [ %317, %348 ]
  store i32 %350, ptr %5, align 4
  br label %351

351:                                              ; preds = %349, %325, %159, %152, %142, %6
  %352 = phi i32 [ -22, %6 ], [ 0, %325 ], [ %154, %152 ], [ 0, %349 ], [ -11, %142 ], [ -22, %159 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  ret i32 %352
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cyapa_sort_gen5_hid_descriptor_data(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2) #4 {
  %4 = icmp eq i32 %2, 32
  br i1 %4, label %5, label %21

5:                                                ; preds = %3
  %6 = load i16, ptr %1, align 1
  %7 = getelementptr i8, ptr %1, i32 16
  %8 = load i16, ptr %7, align 1
  %9 = icmp eq i16 %6, 32
  br i1 %9, label %10, label %20

10:                                               ; preds = %5
  %11 = getelementptr i8, ptr %1, i32 2
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, -1
  %14 = icmp eq i16 %8, 256
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %21, label %16

16:                                               ; preds = %10
  %17 = icmp eq i8 %12, -9
  %18 = icmp eq i16 %8, 254
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %21, label %20

20:                                               ; preds = %16, %5
  br label %21

21:                                               ; preds = %20, %16, %10, %3
  %22 = phi i1 [ false, %20 ], [ false, %3 ], [ true, %10 ], [ true, %16 ]
  ret i1 %22
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @cyapa_sleep_time_to_pwr_cmd(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }

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
!9 = !{i64 472842, i64 2147962813, i64 2147962839, i64 2147962886, i64 2147962908, i64 2147962936, i64 2147962956}
!10 = !{i64 2147975025, i64 2147975051, i64 2147975080, i64 2147975114, i64 2147975145, i64 2147975168}
!11 = !{i64 2147977382, i64 2147977408, i64 2147977437, i64 2147977471, i64 2147977502, i64 2147977525}
!12 = !{!"auto-init"}
