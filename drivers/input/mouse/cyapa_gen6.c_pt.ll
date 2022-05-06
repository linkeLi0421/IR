; ModuleID = '/llk/IR/drivers/input/mouse/cyapa_gen6.c_pt.bc'
source_filename = "../drivers/input/mouse/cyapa_gen6.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.retrieve_data_struct_cmd = type <{ %struct.pip_app_cmd_head, i16, i16, i8 }>
%struct.pip_app_cmd_head = type <{ i16, i16, i8, i8, i8 }>
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
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.gen6_set_interval_cmd = type <{ i16, i16, i8, i8, i8, i16, i16, i16 }>

@cyapa_gen6_ops = dso_local local_unnamed_addr constant %struct.cyapa_dev_ops { ptr @cyapa_pip_check_fw, ptr @cyapa_pip_bl_enter, ptr @cyapa_pip_bl_activate, ptr @cyapa_pip_bl_initiate, ptr @cyapa_pip_do_fw_update, ptr @cyapa_pip_bl_deactivate, ptr @cyapa_gen6_show_baseline, ptr @cyapa_pip_do_calibrate, ptr @cyapa_gen6_initialize, ptr @cyapa_pip_state_parse, ptr @cyapa_gen6_operational_check, ptr @cyapa_pip_irq_handler, ptr @cyapa_pip_irq_cmd_handler, ptr @cyapa_empty_pip_output_data, ptr @cyapa_gen6_set_power_mode, ptr @cyapa_gen6_set_proximity }, align 4
@pip_get_bl_info = internal global [13 x i8] c"\04\00\0B\00@\00\018\00\00p\9E\17", align 1
@pip_read_sys_info = external dso_local global [0 x i8], align 1
@.str = private unnamed_addr constant [19 x i8] c"%d %d %d %d %d %d \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"%s: failed to set power active mode.\0A\00", align 1
@__func__.cyapa_gen6_operational_check = private unnamed_addr constant [29 x i8] c"cyapa_gen6_operational_check\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"%s: failed to enable proximity.\0A\00", align 1
@product_id = external dso_local constant [0 x i8], align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"%s: unknown product ID (%s)\0A\00", align 1
@pip_bl_read_app_info = external dso_local global [0 x i8], align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"enter deep sleep fail: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"deep sleep wake fail: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"change to active fail: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"fail to button only mode: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"set power state to 0x%02x failed: %d\0A\00", align 1
@__const.cyapa_gen6_deep_sleep.ping = private unnamed_addr constant [7 x i8] c"\04\00\05\00/\00\00", align 1
@__const.cyapa_gen6_get_interval_setting.cmd = private unnamed_addr constant [7 x i8] c"\04\00\05\00/\00H", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cyapa_pip_state_parse(ptr noundef %0, ptr nocapture readnone %1, i32 %2) #0 {
  %4 = alloca [71 x i8], align 1
  %5 = alloca i32, align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca [32 x i8], align 1
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #10
  store i16 1, ptr %6, align 2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %7, i8 0, i32 32, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #10
  store i32 0, ptr %0, align 4
  %9 = tail call i32 @cyapa_pip_deep_sleep(ptr noundef %0, i8 noundef zeroext 0) #10
  %10 = tail call i32 @cyapa_empty_pip_output_data(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null) #10
  store i32 32, ptr %8, align 4
  %11 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 2, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef 300, ptr noundef nonnull @cyapa_sort_pip_hid_descriptor_data, i1 noundef zeroext false) #10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %61

13:                                               ; preds = %3
  %14 = getelementptr inbounds [32 x i8], ptr %7, i32 0, i32 2
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, -1
  switch i8 %15, label %61 [
    i8 -1, label %17
    i8 -9, label %17
  ]

17:                                               ; preds = %13, %13
  call void @llvm.lifetime.start.p0(i64 71, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(71) %4, i8 0, i32 71, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 71, ptr %5, align 4
  br i1 %16, label %18, label %26

18:                                               ; preds = %17
  %19 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %0, ptr noundef nonnull @pip_get_bl_info, i32 noundef 13, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 2000, ptr noundef nonnull @cyapa_sort_tsg_pip_bl_resp_data, i1 noundef zeroext false) #10
  %20 = icmp ne i32 %19, 0
  %21 = load i32, ptr %5, align 4
  %22 = icmp slt i32 %21, 19
  %23 = select i1 %20, i1 true, i1 %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %18
  %25 = select i1 %20, i32 %19, i32 -5
  br label %39

26:                                               ; preds = %17
  %27 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %0, ptr noundef nonnull @pip_read_sys_info, i32 noundef 7, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 2000, ptr noundef nonnull @cyapa_pip_sort_system_info_data, i1 noundef zeroext false) #10
  %28 = icmp ne i32 %27, 0
  %29 = load i32, ptr %5, align 4
  %30 = icmp slt i32 %29, 71
  %31 = select i1 %28, i1 true, i1 %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = select i1 %28, i32 %27, i32 -5
  br label %39

34:                                               ; preds = %26
  %35 = getelementptr inbounds [71 x i8], ptr %4, i32 0, i32 7
  %36 = load i16, ptr %35, align 1
  %37 = and i16 %36, -4096
  %38 = icmp eq i16 %37, 4096
  br i1 %38, label %41, label %39

39:                                               ; preds = %34, %32, %24
  %40 = phi i32 [ -22, %34 ], [ %25, %24 ], [ %33, %32 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 71, ptr nonnull %4) #10
  br label %61

41:                                               ; preds = %34, %18
  %42 = phi i32 [ 8, %18 ], [ 19, %34 ]
  %43 = phi i32 [ 11, %18 ], [ 22, %34 ]
  %44 = getelementptr inbounds [71 x i8], ptr %4, i32 0, i32 %42
  %45 = load i8, ptr %44, align 1
  %46 = getelementptr inbounds [71 x i8], ptr %4, i32 0, i32 %43
  %47 = load i8, ptr %46, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 71, ptr nonnull %4) #10
  %48 = icmp eq i8 %45, -101
  %49 = icmp eq i8 %47, 11
  %50 = select i1 %48, i1 %49, i1 false
  br i1 %50, label %51, label %54

51:                                               ; preds = %41
  %52 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 21
  store i8 6, ptr %52, align 4
  %53 = select i1 %16, i32 7, i32 8
  store i32 %53, ptr %0, align 4
  br label %61

54:                                               ; preds = %41
  %55 = icmp eq i8 %45, -111
  %56 = icmp eq i8 %47, 2
  %57 = select i1 %55, i1 %56, i1 false
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 21
  store i8 5, ptr %59, align 4
  %60 = select i1 %16, i32 5, i32 6
  store i32 %60, ptr %0, align 4
  br label %61

61:                                               ; preds = %58, %54, %51, %39, %13, %3
  %62 = phi i32 [ %11, %3 ], [ 0, %54 ], [ 0, %58 ], [ 0, %51 ], [ -11, %13 ], [ %40, %39 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #10
  ret i32 %62
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cyapa_pip_deep_sleep(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cyapa_empty_pip_output_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cyapa_sort_pip_hid_descriptor_data(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2) #5 {
  %4 = icmp eq i32 %2, 32
  br i1 %4, label %5, label %11

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %1, i32 2
  %7 = load i8, ptr %6, align 1
  %8 = add i8 %7, 9
  %9 = and i8 %8, -9
  %10 = icmp eq i8 %9, 0
  br label %11

11:                                               ; preds = %5, %3
  %12 = phi i1 [ false, %3 ], [ %10, %5 ]
  ret i1 %12
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cyapa_pip_check_fw(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cyapa_pip_bl_enter(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cyapa_pip_bl_activate(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cyapa_pip_bl_initiate(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cyapa_pip_do_fw_update(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cyapa_pip_bl_deactivate(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cyapa_gen6_show_baseline(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = alloca %struct.retrieve_data_struct_cmd, align 2
  %5 = alloca [24 x i8], align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.retrieve_data_struct_cmd, align 2
  %8 = alloca [24 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca [14 x i8], align 1
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %10) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(14) %10, i8 0, i32 14, i1 false), !annotation !8
  %13 = tail call zeroext i1 @cyapa_is_pip_app_mode(ptr noundef %12) #10
  br i1 %13, label %14, label %146

14:                                               ; preds = %3
  %15 = tail call i32 @cyapa_pip_suspend_scanning(ptr noundef %12) #10
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %146

17:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(24) %8, i8 0, i32 24, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #10
  %18 = getelementptr inbounds i8, ptr %7, i32 4
  store i16 47, ptr %18, align 2
  store i16 4, ptr %7, align 2
  %19 = getelementptr inbounds %struct.pip_app_cmd_head, ptr %7, i32 0, i32 1
  store i16 10, ptr %19, align 2
  %20 = getelementptr inbounds %struct.pip_app_cmd_head, ptr %7, i32 0, i32 4
  store i8 36, ptr %20, align 2
  %21 = getelementptr inbounds %struct.retrieve_data_struct_cmd, ptr %7, i32 0, i32 1
  store i16 0, ptr %21, align 1
  %22 = getelementptr inbounds %struct.retrieve_data_struct_cmd, ptr %7, i32 0, i32 2
  store i16 14, ptr %22, align 1
  %23 = getelementptr inbounds %struct.retrieve_data_struct_cmd, ptr %7, i32 0, i32 3
  store i8 0, ptr %23, align 1
  store i32 24, ptr %9, align 4
  %24 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %12, ptr noundef nonnull %7, i32 noundef 12, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext true) #10
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds [24 x i8], ptr %8, i32 0, i32 5
  %27 = load i8, ptr %26, align 1
  %28 = icmp eq i8 %27, 0
  %29 = select i1 %25, i1 %28, i1 false
  br i1 %29, label %30, label %47

30:                                               ; preds = %17
  %31 = getelementptr inbounds [24 x i8], ptr %8, i32 0, i32 6
  %32 = load i8, ptr %31, align 1
  %33 = icmp eq i8 %32, 0
  %34 = getelementptr inbounds [24 x i8], ptr %8, i32 0, i32 2
  %35 = load i8, ptr %34, align 1
  %36 = icmp eq i8 %35, 31
  %37 = select i1 %33, i1 %36, i1 false
  %38 = getelementptr inbounds [24 x i8], ptr %8, i32 0, i32 3
  %39 = load i8, ptr %38, align 1
  %40 = icmp eq i8 %39, 0
  %41 = select i1 %37, i1 %40, i1 false
  br i1 %41, label %42, label %54

42:                                               ; preds = %30
  %43 = getelementptr inbounds [24 x i8], ptr %8, i32 0, i32 4
  %44 = load i8, ptr %43, align 1
  %45 = and i8 %44, 127
  %46 = icmp eq i8 %45, 36
  br i1 %46, label %50, label %54

47:                                               ; preds = %17
  %48 = icmp slt i32 %24, 0
  %49 = select i1 %48, i32 %24, i32 -11
  br label %54

50:                                               ; preds = %42
  %51 = getelementptr inbounds [24 x i8], ptr %8, i32 0, i32 7
  %52 = load i16, ptr %51, align 1
  %53 = icmp ugt i16 %52, 14
  br i1 %53, label %54, label %56

54:                                               ; preds = %50, %47, %42, %30
  %55 = phi i32 [ -105, %50 ], [ -11, %42 ], [ -11, %30 ], [ %49, %47 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  br label %137

56:                                               ; preds = %50
  %57 = zext i16 %52 to i32
  %58 = getelementptr inbounds [24 x i8], ptr %8, i32 0, i32 10
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %10, ptr align 1 %58, i32 %57, i1 false) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  %59 = load i8, ptr %10, align 1
  %60 = zext i8 %59 to i32
  %61 = getelementptr inbounds [14 x i8], ptr %10, i32 0, i32 1
  %62 = load i8, ptr %61, align 1
  %63 = zext i8 %62 to i32
  %64 = getelementptr inbounds [14 x i8], ptr %10, i32 0, i32 2
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %65 to i32
  %67 = getelementptr inbounds [14 x i8], ptr %10, i32 0, i32 3
  %68 = load i8, ptr %67, align 1
  %69 = zext i8 %68 to i32
  %70 = getelementptr inbounds [14 x i8], ptr %10, i32 0, i32 4
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i32
  %73 = getelementptr inbounds [14 x i8], ptr %10, i32 0, i32 5
  %74 = load i8, ptr %73, align 1
  %75 = zext i8 %74 to i32
  %76 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str, i32 noundef %60, i32 noundef %63, i32 noundef %66, i32 noundef %69, i32 noundef %72, i32 noundef %75) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(24) %5, i8 0, i32 24, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  %77 = getelementptr inbounds i8, ptr %4, i32 4
  store i16 47, ptr %77, align 2
  store i16 4, ptr %4, align 2
  %78 = getelementptr inbounds %struct.pip_app_cmd_head, ptr %4, i32 0, i32 1
  store i16 10, ptr %78, align 2
  %79 = getelementptr inbounds %struct.pip_app_cmd_head, ptr %4, i32 0, i32 4
  store i8 36, ptr %79, align 2
  %80 = getelementptr inbounds %struct.retrieve_data_struct_cmd, ptr %4, i32 0, i32 1
  store i16 0, ptr %80, align 1
  %81 = getelementptr inbounds %struct.retrieve_data_struct_cmd, ptr %4, i32 0, i32 2
  store i16 14, ptr %81, align 1
  %82 = getelementptr inbounds %struct.retrieve_data_struct_cmd, ptr %4, i32 0, i32 3
  store i8 18, ptr %82, align 1
  store i32 24, ptr %6, align 4
  %83 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %12, ptr noundef nonnull %4, i32 noundef 12, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext true) #10
  %84 = icmp eq i32 %83, 0
  %85 = getelementptr inbounds [24 x i8], ptr %5, i32 0, i32 5
  %86 = load i8, ptr %85, align 1
  %87 = icmp eq i8 %86, 0
  %88 = select i1 %84, i1 %87, i1 false
  br i1 %88, label %89, label %106

89:                                               ; preds = %56
  %90 = getelementptr inbounds [24 x i8], ptr %5, i32 0, i32 6
  %91 = load i8, ptr %90, align 1
  %92 = icmp eq i8 %91, 18
  %93 = getelementptr inbounds [24 x i8], ptr %5, i32 0, i32 2
  %94 = load i8, ptr %93, align 1
  %95 = icmp eq i8 %94, 31
  %96 = select i1 %92, i1 %95, i1 false
  %97 = getelementptr inbounds [24 x i8], ptr %5, i32 0, i32 3
  %98 = load i8, ptr %97, align 1
  %99 = icmp eq i8 %98, 0
  %100 = select i1 %96, i1 %99, i1 false
  br i1 %100, label %101, label %114

101:                                              ; preds = %89
  %102 = getelementptr inbounds [24 x i8], ptr %5, i32 0, i32 4
  %103 = load i8, ptr %102, align 1
  %104 = and i8 %103, 127
  %105 = icmp eq i8 %104, 36
  br i1 %105, label %109, label %114

106:                                              ; preds = %56
  %107 = icmp slt i32 %83, 0
  %108 = select i1 %107, i32 %83, i32 -11
  br label %114

109:                                              ; preds = %101
  %110 = getelementptr inbounds [24 x i8], ptr %5, i32 0, i32 7
  %111 = load i16, ptr %110, align 1
  %112 = zext i16 %111 to i32
  %113 = icmp ugt i16 %111, 14
  br i1 %113, label %114, label %116

114:                                              ; preds = %109, %106, %101, %89
  %115 = phi i32 [ -105, %109 ], [ -11, %101 ], [ -11, %89 ], [ %108, %106 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  br label %137

116:                                              ; preds = %109
  %117 = getelementptr inbounds [24 x i8], ptr %5, i32 0, i32 10
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %10, ptr align 1 %117, i32 %112, i1 false) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  %118 = icmp eq i16 %111, 0
  br i1 %118, label %131, label %119

119:                                              ; preds = %119, %116
  %120 = phi i32 [ %129, %119 ], [ 0, %116 ]
  %121 = phi i32 [ %128, %119 ], [ %76, %116 ]
  %122 = getelementptr i8, ptr %2, i32 %121
  %123 = sub i32 4096, %121
  %124 = getelementptr [14 x i8], ptr %10, i32 0, i32 %120
  %125 = load i8, ptr %124, align 1
  %126 = zext i8 %125 to i32
  %127 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %122, i32 noundef %123, ptr noundef nonnull @.str.1, i32 noundef %126) #10
  %128 = add i32 %127, %121
  %129 = add nuw nsw i32 %120, 1
  %130 = icmp eq i32 %129, %112
  br i1 %130, label %131, label %119

131:                                              ; preds = %119, %116
  %132 = phi i32 [ %76, %116 ], [ %128, %119 ]
  %133 = getelementptr i8, ptr %2, i32 %132
  %134 = sub i32 4096, %132
  %135 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %133, i32 noundef %134, ptr noundef nonnull @.str.2) #10
  %136 = add i32 %135, %132
  br label %137

137:                                              ; preds = %131, %114, %54
  %138 = phi i32 [ %136, %131 ], [ 0, %54 ], [ %76, %114 ]
  %139 = phi i32 [ 0, %131 ], [ %55, %54 ], [ %115, %114 ]
  %140 = call i32 @cyapa_pip_resume_scanning(ptr noundef %12) #10
  %141 = icmp ne i32 %140, 0
  %142 = icmp ne i32 %139, 0
  %143 = select i1 %141, i1 true, i1 %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %137
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(4096) %2, i8 0, i32 4096, i1 false)
  %145 = select i1 %141, i32 %140, i32 %139
  br label %146

146:                                              ; preds = %144, %137, %14, %3
  %147 = phi i32 [ %145, %144 ], [ -16, %3 ], [ %15, %14 ], [ %138, %137 ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %10) #10
  ret i32 %147
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cyapa_pip_do_calibrate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @cyapa_gen6_initialize(ptr nocapture noundef readnone %0) #6 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cyapa_gen6_operational_check(ptr noundef %0) #0 {
  %2 = alloca [71 x i8], align 1
  %3 = alloca i32, align 4
  %4 = alloca [30 x i8], align 1
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 21
  %10 = load i8, ptr %9, align 4
  %11 = icmp eq i8 %10, 6
  br i1 %11, label %12, label %164

12:                                               ; preds = %1
  %13 = load i32, ptr %0, align 4
  switch i32 %13, label %164 [
    i32 7, label %14
    i32 8, label %50
  ]

14:                                               ; preds = %12
  %15 = tail call i32 @cyapa_pip_bl_exit(ptr noundef %0) #10
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %49, label %17

17:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(30) %4, i8 0, i32 30, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 30, ptr %5, align 4
  %18 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %0, ptr noundef nonnull @pip_bl_read_app_info, i32 noundef 13, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_bl_resp_data, i1 noundef zeroext false) #10
  %19 = icmp eq i32 %18, 0
  %20 = load i32, ptr %5, align 4
  %21 = icmp sgt i32 %20, 29
  %22 = select i1 %19, i1 %21, i1 false
  %23 = getelementptr inbounds [30 x i8], ptr %4, i32 0, i32 5
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %24, 0
  %26 = select i1 %22, i1 %25, i1 false
  br i1 %26, label %27, label %48

27:                                               ; preds = %17
  %28 = getelementptr inbounds [30 x i8], ptr %4, i32 0, i32 8
  %29 = load i8, ptr %28, align 1
  %30 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 18
  store i8 %29, ptr %30, align 1
  %31 = getelementptr inbounds [30 x i8], ptr %4, i32 0, i32 9
  %32 = load i8, ptr %31, align 1
  %33 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 19
  store i8 %32, ptr %33, align 2
  %34 = getelementptr inbounds [30 x i8], ptr %4, i32 0, i32 12
  %35 = load i8, ptr %34, align 1
  %36 = lshr i8 %35, 4
  %37 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 17
  store i8 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 16
  %39 = getelementptr inbounds [30 x i8], ptr %4, i32 0, i32 13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(5) %38, ptr noundef align 1 dereferenceable(5) %39, i32 5, i1 false) #10
  %40 = getelementptr %struct.cyapa, ptr %0, i32 0, i32 16, i32 5
  store i8 45, ptr %40, align 1
  %41 = getelementptr %struct.cyapa, ptr %0, i32 0, i32 16, i32 6
  %42 = getelementptr inbounds [30 x i8], ptr %4, i32 0, i32 18
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %41, ptr noundef align 1 dereferenceable(6) %42, i32 6, i1 false) #10
  %43 = getelementptr %struct.cyapa, ptr %0, i32 0, i32 16, i32 12
  store i8 45, ptr %43, align 4
  %44 = getelementptr %struct.cyapa, ptr %0, i32 0, i32 16, i32 13
  %45 = getelementptr inbounds [30 x i8], ptr %4, i32 0, i32 24
  %46 = load i16, ptr %45, align 1
  store i16 %46, ptr %44, align 1
  %47 = getelementptr %struct.cyapa, ptr %0, i32 0, i32 16, i32 15
  store i8 0, ptr %47, align 1
  br label %48

48:                                               ; preds = %27, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %4) #10
  br label %164

49:                                               ; preds = %14
  store i32 8, ptr %0, align 4
  br label %50

50:                                               ; preds = %49, %12
  %51 = tail call i32 @cyapa_gen6_set_power_mode(ptr noundef %0, i8 noundef zeroext -4, i16 noundef zeroext 0, i32 noundef 1)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.cyapa_gen6_operational_check) #11
  br label %54

54:                                               ; preds = %53, %50
  %55 = tail call i32 @cyapa_pip_set_proximity(ptr noundef %0, i1 noundef zeroext true) #10
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.cyapa_gen6_operational_check) #11
  br label %58

58:                                               ; preds = %57, %54
  call void @llvm.lifetime.start.p0(i64 71, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(71) %2, i8 0, i32 71, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 71, ptr %3, align 4
  %59 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %0, ptr noundef nonnull @pip_read_sys_info, i32 noundef 7, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 2000, ptr noundef nonnull @cyapa_pip_sort_system_info_data, i1 noundef zeroext false) #10
  %60 = icmp ne i32 %59, 0
  %61 = load i32, ptr %3, align 4
  %62 = icmp ult i32 %61, 71
  %63 = select i1 %60, i1 true, i1 %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = select i1 %60, i32 %59, i32 -5
  br label %157

66:                                               ; preds = %58
  %67 = getelementptr inbounds [71 x i8], ptr %2, i32 0, i32 7
  %68 = load i16, ptr %67, align 1
  %69 = and i16 %68, -4096
  %70 = icmp eq i16 %69, 4096
  br i1 %70, label %71, label %157

71:                                               ; preds = %66
  %72 = getelementptr inbounds [71 x i8], ptr %2, i32 0, i32 67
  %73 = load i8, ptr %72, align 1
  %74 = lshr i8 %73, 4
  %75 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 17
  store i8 %74, ptr %75, align 4
  %76 = getelementptr inbounds [71 x i8], ptr %2, i32 0, i32 9
  %77 = load i8, ptr %76, align 1
  %78 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 18
  store i8 %77, ptr %78, align 1
  %79 = getelementptr inbounds [71 x i8], ptr %2, i32 0, i32 10
  %80 = load i8, ptr %79, align 1
  %81 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 19
  store i8 %80, ptr %81, align 2
  %82 = getelementptr inbounds [71 x i8], ptr %2, i32 0, i32 33
  %83 = load i8, ptr %82, align 1
  %84 = zext i8 %83 to i32
  %85 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 28
  store i32 %84, ptr %85, align 4
  %86 = getelementptr inbounds [71 x i8], ptr %2, i32 0, i32 34
  %87 = load i8, ptr %86, align 1
  %88 = zext i8 %87 to i32
  %89 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 29
  store i32 %88, ptr %89, align 4
  %90 = getelementptr inbounds [71 x i8], ptr %2, i32 0, i32 35
  %91 = load i16, ptr %90, align 1
  %92 = udiv i16 %91, 100
  %93 = zext i16 %92 to i32
  %94 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 24
  store i32 %93, ptr %94, align 4
  %95 = getelementptr inbounds [71 x i8], ptr %2, i32 0, i32 37
  %96 = load i16, ptr %95, align 1
  %97 = udiv i16 %96, 100
  %98 = zext i16 %97 to i32
  %99 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 25
  store i32 %98, ptr %99, align 4
  %100 = getelementptr inbounds [71 x i8], ptr %2, i32 0, i32 39
  %101 = load i16, ptr %100, align 1
  %102 = zext i16 %101 to i32
  %103 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 22
  store i32 %102, ptr %103, align 4
  %104 = getelementptr inbounds [71 x i8], ptr %2, i32 0, i32 41
  %105 = load i16, ptr %104, align 1
  %106 = zext i16 %105 to i32
  %107 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 23
  store i32 %106, ptr %107, align 4
  %108 = getelementptr inbounds [71 x i8], ptr %2, i32 0, i32 43
  %109 = load i16, ptr %108, align 1
  %110 = zext i16 %109 to i32
  %111 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 32
  store i32 %110, ptr %111, align 4
  %112 = getelementptr inbounds [71 x i8], ptr %2, i32 0, i32 45
  %113 = load i8, ptr %112, align 1
  %114 = and i8 %113, 1
  %115 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 26
  store i8 %114, ptr %115, align 4
  %116 = getelementptr inbounds [71 x i8], ptr %2, i32 0, i32 46
  %117 = load i8, ptr %116, align 1
  %118 = and i8 %117, 1
  %119 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 27
  store i8 %118, ptr %119, align 1
  %120 = getelementptr inbounds [71 x i8], ptr %2, i32 0, i32 70
  %121 = load i8, ptr %120, align 1
  %122 = shl i8 %121, 3
  %123 = and i8 %122, 56
  %124 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 20
  store i8 %123, ptr %124, align 1
  %125 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 16
  %126 = getelementptr inbounds [71 x i8], ptr %2, i32 0, i32 51
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(5) %125, ptr noundef align 1 dereferenceable(5) %126, i32 5, i1 false) #10
  %127 = getelementptr %struct.cyapa, ptr %0, i32 0, i32 16, i32 5
  store i8 45, ptr %127, align 1
  %128 = getelementptr %struct.cyapa, ptr %0, i32 0, i32 16, i32 6
  %129 = getelementptr inbounds [71 x i8], ptr %2, i32 0, i32 56
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %128, ptr noundef align 1 dereferenceable(6) %129, i32 6, i1 false) #10
  %130 = getelementptr %struct.cyapa, ptr %0, i32 0, i32 16, i32 12
  store i8 45, ptr %130, align 4
  %131 = getelementptr %struct.cyapa, ptr %0, i32 0, i32 16, i32 13
  %132 = getelementptr inbounds [71 x i8], ptr %2, i32 0, i32 62
  %133 = load i16, ptr %132, align 1
  store i16 %133, ptr %131, align 1
  %134 = getelementptr %struct.cyapa, ptr %0, i32 0, i32 16, i32 15
  store i8 0, ptr %134, align 1
  %135 = getelementptr inbounds [71 x i8], ptr %2, i32 0, i32 68
  %136 = load i8, ptr %135, align 1
  %137 = icmp eq i8 %136, 0
  %138 = select i1 %137, ptr %85, ptr %89
  %139 = load i32, ptr %138, align 4
  %140 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 30
  store i32 %139, ptr %140, align 4
  %141 = add i32 %139, 3
  %142 = and i32 %141, -4
  %143 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 31
  store i32 %142, ptr %143, align 4
  %144 = icmp eq i8 %83, 0
  %145 = icmp eq i8 %87, 0
  %146 = select i1 %144, i1 true, i1 %145
  %147 = icmp ult i16 %91, 100
  %148 = select i1 %146, i1 true, i1 %147
  %149 = icmp ult i16 %96, 100
  %150 = select i1 %148, i1 true, i1 %149
  %151 = icmp eq i16 %101, 0
  %152 = select i1 %150, i1 true, i1 %151
  %153 = icmp eq i16 %105, 0
  %154 = select i1 %152, i1 true, i1 %153
  %155 = icmp eq i16 %109, 0
  %156 = select i1 %154, i1 true, i1 %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %71, %66, %64
  %158 = phi i32 [ -22, %71 ], [ -22, %66 ], [ %65, %64 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 71, ptr nonnull %2) #10
  br label %164

159:                                              ; preds = %71
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 71, ptr nonnull %2) #10
  %160 = call i32 @strlen(ptr noundef nonnull @product_id)
  %161 = call i32 @bcmp(ptr %125, ptr nonnull @product_id, i32 %160)
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %159
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.cyapa_gen6_operational_check, ptr noundef %125) #11
  br label %164

164:                                              ; preds = %163, %159, %157, %48, %12, %1
  %165 = phi i32 [ -19, %1 ], [ -22, %163 ], [ 0, %159 ], [ %15, %48 ], [ -22, %12 ], [ %158, %157 ]
  ret i32 %165
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cyapa_pip_irq_handler(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cyapa_pip_irq_cmd_handler(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cyapa_gen6_set_power_mode(ptr noundef %0, i8 noundef zeroext %1, i16 noundef zeroext %2, i32 noundef %3) #0 {
  %5 = alloca [7 x i8], align 1
  %6 = alloca [6 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca [8 x i8], align 8
  %9 = alloca [6 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca [8 x i8], align 8
  %12 = alloca [6 x i8], align 1
  %13 = alloca i32, align 4
  %14 = alloca [7 x i8], align 1
  %15 = alloca [11 x i8], align 1
  %16 = alloca i32, align 4
  %17 = alloca [8 x i8], align 8
  %18 = alloca [6 x i8], align 1
  %19 = alloca i32, align 4
  %20 = alloca [7 x i8], align 1
  %21 = alloca [6 x i8], align 1
  %22 = alloca i32, align 4
  %23 = alloca [7 x i8], align 1
  %24 = alloca [7 x i8], align 1
  %25 = alloca [6 x i8], align 1
  %26 = alloca i32, align 4
  %27 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 15
  %31 = load i32, ptr %0, align 4
  %32 = icmp eq i32 %31, 8
  br i1 %32, label %33, label %212

33:                                               ; preds = %4
  %34 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 13
  %35 = load i8, ptr %34, align 2
  %36 = icmp eq i8 %35, -1
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 14
  %39 = load i16, ptr %38, align 4
  %40 = icmp eq i16 %39, -1
  br i1 %40, label %44, label %47

41:                                               ; preds = %33
  store i8 0, ptr %34, align 2
  %42 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 14
  %43 = load i16, ptr %42, align 4
  br label %47

44:                                               ; preds = %37
  %45 = icmp eq i8 %35, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %44
  store i16 -1, ptr %38, align 4
  br label %47

47:                                               ; preds = %46, %44, %41, %37
  %48 = phi ptr [ %38, %46 ], [ %38, %44 ], [ %38, %37 ], [ %42, %41 ]
  %49 = phi i16 [ -1, %46 ], [ -1, %44 ], [ %39, %37 ], [ %43, %41 ]
  %50 = phi i8 [ %35, %46 ], [ 0, %44 ], [ %35, %37 ], [ 0, %41 ]
  %51 = icmp eq i8 %50, %1
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  switch i8 %1, label %53 [
    i8 -4, label %212
    i8 4, label %212
    i8 0, label %212
  ]

53:                                               ; preds = %52
  %54 = icmp eq i16 %49, %2
  br i1 %54, label %212, label %69

55:                                               ; preds = %47
  %56 = icmp eq i8 %1, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %24) #10
  store i8 4, ptr %24, align 1
  %58 = getelementptr inbounds i8, ptr %24, i32 1
  store i8 0, ptr %58, align 1
  %59 = getelementptr inbounds i8, ptr %24, i32 2
  store i8 5, ptr %59, align 1
  %60 = getelementptr inbounds i8, ptr %24, i32 3
  store i8 0, ptr %60, align 1
  %61 = getelementptr inbounds i8, ptr %24, i32 4
  store i8 47, ptr %61, align 1
  %62 = getelementptr inbounds i8, ptr %24, i32 5
  store i8 0, ptr %62, align 1
  %63 = getelementptr inbounds i8, ptr %24, i32 6
  store i8 66, ptr %63, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %25) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %25, i8 0, i32 6, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %26) #10
  store i32 6, ptr %26, align 4
  %64 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %0, ptr noundef nonnull %24, i32 noundef 7, ptr noundef nonnull %25, ptr noundef nonnull %26, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext false) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %26) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %25) #10
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %24) #10
  %65 = call i32 @cyapa_pip_deep_sleep(ptr noundef %0, i8 noundef zeroext 1) #10
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %57
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.6, i32 noundef %65) #11
  br label %212

68:                                               ; preds = %57
  store i8 0, ptr %34, align 2
  br label %212

69:                                               ; preds = %55, %53
  %70 = icmp eq i8 %50, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %23) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %23, ptr noundef nonnull align 1 dereferenceable(7) @__const.cyapa_gen6_deep_sleep.ping, i32 7, i1 false) #10
  %72 = call i32 @cyapa_i2c_pip_write(ptr noundef %0, ptr noundef nonnull %23, i32 noundef 7) #10
  %73 = call i32 @cyapa_pip_deep_sleep(ptr noundef %0, i8 noundef zeroext 0) #10
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %23) #10
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.7, i32 noundef %73) #11
  br label %212

76:                                               ; preds = %71, %69
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %20) #10
  store i8 4, ptr %20, align 1
  %77 = getelementptr inbounds i8, ptr %20, i32 1
  store i8 0, ptr %77, align 1
  %78 = getelementptr inbounds i8, ptr %20, i32 2
  store i8 5, ptr %78, align 1
  %79 = getelementptr inbounds i8, ptr %20, i32 3
  store i8 0, ptr %79, align 1
  %80 = getelementptr inbounds i8, ptr %20, i32 4
  store i8 47, ptr %80, align 1
  %81 = getelementptr inbounds i8, ptr %20, i32 5
  store i8 0, ptr %81, align 1
  %82 = getelementptr inbounds i8, ptr %20, i32 6
  store i8 66, ptr %82, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %21) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %21, i8 0, i32 6, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22) #10
  store i32 6, ptr %22, align 4
  %83 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %0, ptr noundef nonnull %20, i32 noundef 7, ptr noundef nonnull %21, ptr noundef nonnull %22, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext false) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %21) #10
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %20) #10
  switch i8 %1, label %161 [
    i8 -4, label %84
    i8 4, label %135
  ]

84:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #10
  store i64 91761044271529988, ptr %17, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %18) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %18, i8 0, i32 6, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #10
  store i32 6, ptr %19, align 4
  %85 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %0, ptr noundef nonnull %17, i32 noundef 8, ptr noundef nonnull %18, ptr noundef nonnull %19, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext false) #10
  %86 = icmp eq i32 %85, 0
  %87 = getelementptr inbounds [6 x i8], ptr %18, i32 0, i32 2
  %88 = load i8, ptr %87, align 1
  %89 = icmp eq i8 %88, 31
  %90 = select i1 %86, i1 %89, i1 false
  %91 = getelementptr inbounds [6 x i8], ptr %18, i32 0, i32 3
  %92 = load i8, ptr %91, align 1
  %93 = icmp eq i8 %92, 0
  %94 = select i1 %90, i1 %93, i1 false
  br i1 %94, label %95, label %100

95:                                               ; preds = %84
  %96 = getelementptr inbounds [6 x i8], ptr %18, i32 0, i32 4
  %97 = load i8, ptr %96, align 1
  %98 = and i8 %97, 127
  %99 = icmp eq i8 %98, 70
  br i1 %99, label %103, label %107

100:                                              ; preds = %84
  %101 = icmp slt i32 %85, 0
  %102 = select i1 %101, i32 %85, i32 -22
  br label %107

103:                                              ; preds = %95
  %104 = getelementptr inbounds [6 x i8], ptr %18, i32 0, i32 5
  %105 = load i8, ptr %104, align 1
  %106 = icmp eq i8 %105, 1
  br i1 %106, label %109, label %107

107:                                              ; preds = %103, %100, %95
  %108 = phi i32 [ -11, %103 ], [ -22, %95 ], [ %102, %100 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %18) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.8, i32 noundef %108) #11
  br label %203

109:                                              ; preds = %103
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %18) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #10
  store i8 -4, ptr %34, align 2
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %14) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %14, ptr noundef nonnull align 1 dereferenceable(7) @__const.cyapa_gen6_get_interval_setting.cmd, i32 7, i1 false) #10
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %15) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %15, i8 0, i32 11, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #10
  store i32 11, ptr %16, align 4
  %110 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %0, ptr noundef nonnull %14, i32 noundef 7, ptr noundef nonnull %15, ptr noundef nonnull %16, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext false) #10
  %111 = icmp eq i32 %110, 0
  %112 = getelementptr inbounds [11 x i8], ptr %15, i32 0, i32 2
  %113 = load i8, ptr %112, align 1
  %114 = icmp eq i8 %113, 31
  %115 = select i1 %111, i1 %114, i1 false
  %116 = getelementptr inbounds [11 x i8], ptr %15, i32 0, i32 3
  %117 = load i8, ptr %116, align 1
  %118 = icmp eq i8 %117, 0
  %119 = select i1 %115, i1 %118, i1 false
  br i1 %119, label %120, label %134

120:                                              ; preds = %109
  %121 = getelementptr inbounds [11 x i8], ptr %15, i32 0, i32 4
  %122 = load i8, ptr %121, align 1
  %123 = and i8 %122, 127
  %124 = icmp eq i8 %123, 72
  br i1 %124, label %125, label %134

125:                                              ; preds = %120
  %126 = getelementptr inbounds [11 x i8], ptr %15, i32 0, i32 5
  %127 = load i16, ptr %126, align 1
  store i16 %127, ptr %30, align 2
  %128 = getelementptr inbounds [11 x i8], ptr %15, i32 0, i32 7
  %129 = load i16, ptr %128, align 1
  %130 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 15, i32 1
  store i16 %129, ptr %130, align 2
  %131 = getelementptr inbounds [11 x i8], ptr %15, i32 0, i32 9
  %132 = load i16, ptr %131, align 1
  %133 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 15, i32 2
  store i16 %132, ptr %133, align 2
  br label %134

134:                                              ; preds = %125, %120, %109
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #10
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %14) #10
  br label %203

135:                                              ; preds = %76
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #10
  store i64 307933826385313796, ptr %11, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %12) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %12, i8 0, i32 6, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #10
  store i32 6, ptr %13, align 4
  %136 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %0, ptr noundef nonnull %11, i32 noundef 8, ptr noundef nonnull %12, ptr noundef nonnull %13, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext false) #10
  %137 = icmp eq i32 %136, 0
  %138 = getelementptr inbounds [6 x i8], ptr %12, i32 0, i32 2
  %139 = load i8, ptr %138, align 1
  %140 = icmp eq i8 %139, 31
  %141 = select i1 %137, i1 %140, i1 false
  %142 = getelementptr inbounds [6 x i8], ptr %12, i32 0, i32 3
  %143 = load i8, ptr %142, align 1
  %144 = icmp eq i8 %143, 0
  %145 = select i1 %141, i1 %144, i1 false
  br i1 %145, label %146, label %151

146:                                              ; preds = %135
  %147 = getelementptr inbounds [6 x i8], ptr %12, i32 0, i32 4
  %148 = load i8, ptr %147, align 1
  %149 = and i8 %148, 127
  %150 = icmp eq i8 %149, 70
  br i1 %150, label %154, label %158

151:                                              ; preds = %135
  %152 = icmp slt i32 %136, 0
  %153 = select i1 %152, i32 %136, i32 -22
  br label %158

154:                                              ; preds = %146
  %155 = getelementptr inbounds [6 x i8], ptr %12, i32 0, i32 5
  %156 = load i8, ptr %155, align 1
  %157 = icmp eq i8 %156, 4
  br i1 %157, label %160, label %158

158:                                              ; preds = %154, %151, %146
  %159 = phi i32 [ -11, %154 ], [ -22, %146 ], [ %153, %151 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.9, i32 noundef %159) #11
  br label %203

160:                                              ; preds = %154
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #10
  store i8 4, ptr %34, align 2
  br label %203

161:                                              ; preds = %76
  %162 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 15, i32 1
  %163 = load i16, ptr %162, align 2
  %164 = icmp eq i16 %163, %2
  br i1 %164, label %173, label %165

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 15, i32 2
  %167 = load i16, ptr %166, align 2
  %168 = icmp eq i16 %167, %2
  br i1 %168, label %173, label %169

169:                                              ; preds = %165
  %170 = icmp eq i16 %163, 0
  %171 = select i1 %170, ptr %162, ptr %166
  %172 = select i1 %170, i8 2, i8 3
  store i16 %2, ptr %171, align 2
  call fastcc void @cyapa_gen6_set_interval_setting(ptr noundef %0, ptr noundef %30)
  br label %173

173:                                              ; preds = %169, %165, %161
  %174 = phi i8 [ %172, %169 ], [ 2, %161 ], [ 3, %165 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  store i64 19703450233602052, ptr %8, align 8, !annotation !8
  %175 = getelementptr inbounds i8, ptr %8, i32 7
  store i8 %174, ptr %175, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %9) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %9, i8 0, i32 6, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #10
  store i32 6, ptr %10, align 4
  %176 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %0, ptr noundef nonnull %8, i32 noundef 8, ptr noundef nonnull %9, ptr noundef nonnull %10, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext false) #10
  %177 = icmp eq i32 %176, 0
  %178 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 2
  %179 = load i8, ptr %178, align 1
  %180 = icmp eq i8 %179, 31
  %181 = select i1 %177, i1 %180, i1 false
  %182 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 3
  %183 = load i8, ptr %182, align 1
  %184 = icmp eq i8 %183, 0
  %185 = select i1 %181, i1 %184, i1 false
  br i1 %185, label %186, label %191

186:                                              ; preds = %173
  %187 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 4
  %188 = load i8, ptr %187, align 1
  %189 = and i8 %188, 127
  %190 = icmp eq i8 %189, 70
  br i1 %190, label %194, label %198

191:                                              ; preds = %173
  %192 = icmp slt i32 %176, 0
  %193 = select i1 %192, i32 %176, i32 -22
  br label %198

194:                                              ; preds = %186
  %195 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 5
  %196 = load i8, ptr %195, align 1
  %197 = icmp eq i8 %196, %174
  br i1 %197, label %201, label %198

198:                                              ; preds = %194, %191, %186
  %199 = phi i32 [ -11, %194 ], [ -22, %186 ], [ %193, %191 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  %200 = zext i8 %174 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.10, i32 noundef %200, i32 noundef %199) #11
  br label %203

201:                                              ; preds = %194
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  store i16 %2, ptr %48, align 4
  %202 = call zeroext i8 @cyapa_sleep_time_to_pwr_cmd(i16 noundef zeroext %2) #10
  store i8 %202, ptr %34, align 2
  br label %203

203:                                              ; preds = %201, %198, %160, %158, %134, %107
  %204 = phi i32 [ %108, %107 ], [ 0, %134 ], [ %159, %158 ], [ 0, %160 ], [ %199, %198 ], [ 0, %201 ]
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %5) #10
  store i8 4, ptr %5, align 1
  %205 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 0, ptr %205, align 1
  %206 = getelementptr inbounds i8, ptr %5, i32 2
  store i8 5, ptr %206, align 1
  %207 = getelementptr inbounds i8, ptr %5, i32 3
  store i8 0, ptr %207, align 1
  %208 = getelementptr inbounds i8, ptr %5, i32 4
  store i8 47, ptr %208, align 1
  %209 = getelementptr inbounds i8, ptr %5, i32 5
  store i8 0, ptr %209, align 1
  %210 = getelementptr inbounds i8, ptr %5, i32 6
  store i8 65, ptr %210, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %6, i8 0, i32 6, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i32 6, ptr %7, align 4
  %211 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 7, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext false) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %5) #10
  br label %212

212:                                              ; preds = %203, %75, %68, %67, %53, %52, %52, %52, %4
  %213 = phi i32 [ %65, %67 ], [ 0, %68 ], [ %73, %75 ], [ %204, %203 ], [ 0, %4 ], [ 0, %52 ], [ 0, %52 ], [ 0, %52 ], [ 0, %53 ]
  ret i32 %213
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cyapa_gen6_set_proximity(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = alloca [7 x i8], align 1
  %4 = alloca [6 x i8], align 1
  %5 = alloca i32, align 4
  %6 = alloca [7 x i8], align 1
  %7 = alloca [6 x i8], align 1
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %6) #10
  store i8 4, ptr %6, align 1
  %9 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 0, ptr %9, align 1
  %10 = getelementptr inbounds i8, ptr %6, i32 2
  store i8 5, ptr %10, align 1
  %11 = getelementptr inbounds i8, ptr %6, i32 3
  store i8 0, ptr %11, align 1
  %12 = getelementptr inbounds i8, ptr %6, i32 4
  store i8 47, ptr %12, align 1
  %13 = getelementptr inbounds i8, ptr %6, i32 5
  store i8 0, ptr %13, align 1
  %14 = getelementptr inbounds i8, ptr %6, i32 6
  store i8 66, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %7) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %7, i8 0, i32 6, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #10
  store i32 6, ptr %8, align 4
  %15 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 7, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext false) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %6) #10
  %16 = call i32 @cyapa_pip_set_proximity(ptr noundef %0, i1 noundef zeroext %1) #10
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %3) #10
  store i8 4, ptr %3, align 1
  %17 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 0, ptr %17, align 1
  %18 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 5, ptr %18, align 1
  %19 = getelementptr inbounds i8, ptr %3, i32 3
  store i8 0, ptr %19, align 1
  %20 = getelementptr inbounds i8, ptr %3, i32 4
  store i8 47, ptr %20, align 1
  %21 = getelementptr inbounds i8, ptr %3, i32 5
  store i8 0, ptr %21, align 1
  %22 = getelementptr inbounds i8, ptr %3, i32 6
  store i8 65, ptr %22, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %4, i8 0, i32 6, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 6, ptr %5, align 4
  %23 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 7, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext false) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %3) #10
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cyapa_sort_tsg_pip_bl_resp_data(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cyapa_pip_sort_system_info_data(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cyapa_is_pip_app_mode(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cyapa_pip_suspend_scanning(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cyapa_pip_resume_scanning(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cyapa_sort_tsg_pip_app_resp_data(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cyapa_pip_bl_exit(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cyapa_pip_set_proximity(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cyapa_gen6_set_interval_setting(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.gen6_set_interval_cmd, align 2
  %4 = alloca [11 x i8], align 1
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %4, i8 0, i32 11, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  %6 = getelementptr inbounds i8, ptr %3, i32 4
  store i16 0, ptr %6, align 2
  store i16 4, ptr %3, align 2
  %7 = getelementptr inbounds %struct.gen6_set_interval_cmd, ptr %3, i32 0, i32 1
  store i16 11, ptr %7, align 2
  %8 = getelementptr inbounds %struct.gen6_set_interval_cmd, ptr %3, i32 0, i32 2
  store i8 47, ptr %8, align 2
  %9 = getelementptr inbounds %struct.gen6_set_interval_cmd, ptr %3, i32 0, i32 4
  store i8 71, ptr %9, align 2
  %10 = load i16, ptr %1, align 2
  %11 = getelementptr inbounds %struct.gen6_set_interval_cmd, ptr %3, i32 0, i32 5
  store i16 %10, ptr %11, align 1
  %12 = getelementptr inbounds %struct.gen6_interval_setting, ptr %1, i32 0, i32 1
  %13 = load i16, ptr %12, align 2
  %14 = getelementptr inbounds %struct.gen6_set_interval_cmd, ptr %3, i32 0, i32 6
  store i16 %13, ptr %14, align 1
  %15 = getelementptr inbounds %struct.gen6_interval_setting, ptr %1, i32 0, i32 2
  %16 = load i16, ptr %15, align 2
  %17 = getelementptr inbounds %struct.gen6_set_interval_cmd, ptr %3, i32 0, i32 7
  store i16 %16, ptr %17, align 1
  store i32 11, ptr %5, align 4
  %18 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 13, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext false) #10
  %19 = icmp eq i32 %18, 0
  %20 = getelementptr inbounds [11 x i8], ptr %4, i32 0, i32 2
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 31
  %23 = select i1 %19, i1 %22, i1 false
  %24 = getelementptr inbounds [11 x i8], ptr %4, i32 0, i32 3
  %25 = load i8, ptr %24, align 1
  %26 = icmp eq i8 %25, 0
  %27 = select i1 %23, i1 %26, i1 false
  br i1 %27, label %28, label %40

28:                                               ; preds = %2
  %29 = getelementptr inbounds [11 x i8], ptr %4, i32 0, i32 4
  %30 = load i8, ptr %29, align 1
  %31 = and i8 %30, 127
  %32 = icmp eq i8 %31, 71
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = getelementptr inbounds [11 x i8], ptr %4, i32 0, i32 5
  %35 = load i16, ptr %34, align 1
  store i16 %35, ptr %1, align 2
  %36 = getelementptr inbounds [11 x i8], ptr %4, i32 0, i32 7
  %37 = load i16, ptr %36, align 1
  store i16 %37, ptr %12, align 2
  %38 = getelementptr inbounds [11 x i8], ptr %4, i32 0, i32 9
  %39 = load i16, ptr %38, align 1
  store i16 %39, ptr %15, align 2
  br label %40

40:                                               ; preds = %33, %28, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @cyapa_sleep_time_to_pwr_cmd(i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cyapa_i2c_pip_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

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
