; ModuleID = '/llk/IR/drivers/platform/chrome/cros_ec_sensorhub_ring.c_pt.bc'
source_filename = "../drivers/platform/chrome/cros_ec_sensorhub_ring.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cros_ec_sensorhub_register_push_data:\09\09\09\09\09"
module asm "\09.asciz \09\22cros_ec_sensorhub_register_push_data\22\09\09\09\09\09"
module asm "__kstrtabns_cros_ec_sensorhub_register_push_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cros_ec_sensorhub_unregister_push_data:\09\09\09\09\09"
module asm "\09.asciz \09\22cros_ec_sensorhub_unregister_push_data\22\09\09\09\09\09"
module asm "__kstrtabns_cros_ec_sensorhub_unregister_push_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.cros_ec_sensorhub = type { ptr, ptr, i32, ptr, ptr, ptr, %struct.mutex, %struct.notifier_block, ptr, [2 x i64], ptr, i32, ptr, %struct.cros_ec_sensors_ec_overflow_state, %struct.cros_ec_sensors_ec_overflow_state, %struct.cros_ec_sensors_ts_filter_state, i32, i32, i64, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.cros_ec_sensors_ec_overflow_state = type { i64, i64 }
%struct.cros_ec_sensors_ts_filter_state = type { i64, i64, [64 x i64], [64 x i64], [64 x i64], i32, [64 x i64], i64, i64 }
%struct.cros_ec_sensorhub_sensor_push_data = type { ptr, ptr }
%struct.cros_ec_sensors_ts_batch_state = type { i64, i32, i64, i32, i64 }
%struct.ec_params_motion_sense = type <{ i8, %union.anon.6 }>
%union.anon.6 = type { %struct.anon.10, [4 x i8] }
%struct.anon.10 = type { i8, i8, i16, i32 }
%struct.cros_ec_command = type { i32, i32, i32, i32, i32, [0 x i8] }
%struct.cros_ec_dev = type { %struct.device, ptr, ptr, ptr, i8, i16, %struct.ec_response_get_features }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.ec_response_get_features = type { [2 x i32] }
%struct.cros_ec_device = type { ptr, ptr, i8, ptr, ptr, i16, i16, i16, i16, ptr, i32, ptr, ptr, i32, i32, i8, i8, ptr, ptr, %struct.mutex, i8, i8, %struct.blocking_notifier_head, %struct.ec_response_get_next_event_v1, i32, i32, i32, i64, %struct.notifier_block, ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ec_response_get_next_event_v1 = type <{ i8, %union.ec_response_get_next_data_v1 }>
%union.ec_response_get_next_data_v1 = type { i64, [8 x i8] }
%struct.anon.5 = type { [3 x i8], %struct.ec_response_motion_sense_fifo_info }
%struct.ec_response_motion_sense_fifo_info = type <{ i16, i16, i32, i16, [0 x i16] }>
%struct.cros_ec_sensors_ring_sample = type { i8, i8, [3 x i16], i64 }
%struct.ec_response_motion_sense_fifo_data = type { i32, [0 x %struct.ec_response_motion_sensor_data] }
%struct.ec_response_motion_sensor_data = type { i8, i8, %union.anon.19 }
%union.anon.19 = type { [3 x i16] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__kstrtab_cros_ec_sensorhub_register_push_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_cros_ec_sensorhub_register_push_data = external dso_local constant [0 x i8], align 1
@__ksymtab_cros_ec_sensorhub_register_push_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cros_ec_sensorhub_register_push_data to i32), ptr @__kstrtab_cros_ec_sensorhub_register_push_data, ptr @__kstrtabns_cros_ec_sensorhub_register_push_data }, section "___ksymtab_gpl+cros_ec_sensorhub_register_push_data", align 4
@__kstrtab_cros_ec_sensorhub_unregister_push_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_cros_ec_sensorhub_unregister_push_data = external dso_local constant [0 x i8], align 1
@__ksymtab_cros_ec_sensorhub_unregister_push_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cros_ec_sensorhub_unregister_push_data to i32), ptr @__kstrtab_cros_ec_sensorhub_unregister_push_data, ptr @__kstrtabns_cros_ec_sensorhub_unregister_push_data }, section "___ksymtab_gpl+cros_ec_sensorhub_unregister_push_data", align 4
@.str = private unnamed_addr constant [24 x i8] c"Invalid fifo info size\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Mismatch EC data: count %d, size %d - expected %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Fifo error: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"Invalid EC data: too many entry received: %d, expected %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [71 x i8] c"Too many samples: %d (%zd data) to %d entries for expected %d entries\0A\00", align 1
@cros_ec_sensorhub_ring_handler._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.cros_ec_sensorhub_ring_handler = private unnamed_addr constant [31 x i8] c"cros_ec_sensorhub_ring_handler\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Sensor %d: lost: %d out of %d\0A\00", align 1
@cros_ec_sensor_ring_process_event._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.cros_ec_sensor_ring_process_event = private unnamed_addr constant [34 x i8] c"cros_ec_sensor_ring_process_event\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"100 timestamps in the future, %lldns shaved on average\0A\00", align 1
@__tracepoint_cros_ec_sensorhub_filter = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_cros_ec_sensorhub_timestamp = external dso_local global %struct.tracepoint, align 4
@__tracepoint_cros_ec_sensorhub_data = external dso_local global %struct.tracepoint, align 4
@.str.8 = private unnamed_addr constant [43 x i8] c"Sensor %d: lost %d samples when spreading\0A\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_cros_ec_sensorhub_register_push_data, ptr @__ksymtab_cros_ec_sensorhub_unregister_push_data], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @cros_ec_sensorhub_register_push_data(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = zext i8 %1 to i32
  %6 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = icmp sgt i32 %7, %5
  br i1 %8, label %9, label %18

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %0, i32 0, i32 19
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr %struct.cros_ec_sensorhub_sensor_push_data, ptr %11, i32 %5
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  store ptr %2, ptr %12, align 4
  %16 = load ptr, ptr %10, align 8
  %17 = getelementptr %struct.cros_ec_sensorhub_sensor_push_data, ptr %16, i32 %5, i32 1
  store ptr %3, ptr %17, align 4
  br label %18

18:                                               ; preds = %15, %9, %4
  %19 = phi i32 [ 0, %15 ], [ -22, %4 ], [ -22, %9 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @cros_ec_sensorhub_unregister_push_data(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 8
  %5 = zext i8 %1 to i32
  %6 = getelementptr %struct.cros_ec_sensorhub_sensor_push_data, ptr %4, i32 %5
  store ptr null, ptr %6, align 4
  %7 = load ptr, ptr %3, align 8
  %8 = getelementptr %struct.cros_ec_sensorhub_sensor_push_data, ptr %7, i32 %5, i32 1
  store ptr null, ptr %8, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cros_ec_sensorhub_ring_fifo_enable(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %0, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %0, i32 0, i32 16
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %0, i32 0, i32 12
  br label %13

13:                                               ; preds = %13, %11
  %14 = phi i32 [ 0, %11 ], [ %17, %13 ]
  %15 = load ptr, ptr %12, align 8
  %16 = getelementptr %struct.cros_ec_sensors_ts_batch_state, ptr %15, i32 %14, i32 3
  store i32 0, ptr %16, align 8
  %17 = add nuw nsw i32 %14, 1
  %18 = load i32, ptr %8, align 8
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %13, label %20

20:                                               ; preds = %13, %7, %2
  %21 = zext i1 %1 to i8
  %22 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %0, i32 0, i32 4
  %23 = load ptr, ptr %22, align 8
  store i8 15, ptr %23, align 1
  %24 = load ptr, ptr %22, align 8
  %25 = getelementptr inbounds %struct.ec_params_motion_sense, ptr %24, i32 0, i32 1
  store i8 %21, ptr %25, align 1
  %26 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %0, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.cros_ec_command, ptr %27, i32 0, i32 2
  store i32 13, ptr %28, align 4
  %29 = load ptr, ptr %26, align 4
  %30 = getelementptr inbounds %struct.cros_ec_command, ptr %29, i32 0, i32 3
  store i32 16, ptr %30, align 4
  %31 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %0, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.cros_ec_dev, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 8
  %35 = load ptr, ptr %26, align 4
  %36 = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %34, ptr noundef %35) #10
  tail call void @mutex_unlock(ptr noundef %3) #10
  %37 = tail call i32 @llvm.smin.i32(i32 %36, i32 0)
  ret i32 %37
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_cmd_xfer_status(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cros_ec_sensorhub_ring_allocate(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 8
  %4 = shl i32 %3, 1
  %5 = add i32 %4, 10
  %6 = load ptr, ptr %0, align 8
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef %5, i32 noundef 3520) #10
  %8 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %0, i32 0, i32 10
  store ptr %7, ptr %8, align 8
  %9 = icmp eq ptr %7, null
  br i1 %9, label %41, label %10

10:                                               ; preds = %1
  %11 = load i32, ptr %2, align 8
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %11, i32 8) #10
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %14, label %16, !prof !8

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %0, i32 0, i32 19
  store ptr null, ptr %15, align 8
  br label %41

16:                                               ; preds = %10
  %17 = load ptr, ptr %0, align 8
  %18 = extractvalue { i32, i1 } %12, 0
  %19 = tail call noalias ptr @devm_kmalloc(ptr noundef %17, i32 noundef %18, i32 noundef 3520) #10
  %20 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %0, i32 0, i32 19
  store ptr %19, ptr %20, align 8
  %21 = icmp eq ptr %19, null
  br i1 %21, label %41, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = tail call zeroext i1 @cros_ec_check_features(ptr noundef %24, i32 noundef 36) #10
  %26 = zext i1 %25 to i32
  %27 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %0, i32 0, i32 16
  store i32 %26, ptr %27, align 8
  br i1 %25, label %28, label %40

28:                                               ; preds = %22
  %29 = load i32, ptr %2, align 8
  %30 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %29, i32 40) #10
  %31 = extractvalue { i32, i1 } %30, 1
  br i1 %31, label %32, label %34, !prof !8

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %0, i32 0, i32 12
  store ptr null, ptr %33, align 8
  br label %41

34:                                               ; preds = %28
  %35 = load ptr, ptr %0, align 8
  %36 = extractvalue { i32, i1 } %30, 0
  %37 = tail call noalias ptr @devm_kmalloc(ptr noundef %35, i32 noundef %36, i32 noundef 3520) #10
  %38 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %0, i32 0, i32 12
  store ptr %37, ptr %38, align 8
  %39 = icmp eq ptr %37, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %34, %22
  br label %41

41:                                               ; preds = %40, %34, %32, %16, %14, %1
  %42 = phi i32 [ 0, %40 ], [ -12, %1 ], [ -12, %16 ], [ -12, %34 ], [ -12, %14 ], [ -12, %32 ]
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cros_ec_check_features(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cros_ec_sensorhub_ring_add(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = shl i32 %5, 1
  %7 = add i32 %6, 10
  %8 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  store i32 2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 8
  store i8 7, ptr %11, align 1
  %12 = load ptr, ptr %8, align 4
  %13 = getelementptr inbounds %struct.cros_ec_command, ptr %12, i32 0, i32 2
  store i32 1, ptr %13, align 4
  %14 = load ptr, ptr %8, align 4
  %15 = getelementptr inbounds %struct.cros_ec_command, ptr %14, i32 0, i32 3
  store i32 %7, ptr %15, align 4
  %16 = getelementptr inbounds %struct.cros_ec_dev, ptr %3, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  %18 = load ptr, ptr %8, align 4
  %19 = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %17, ptr noundef %18) #10
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %71, label %21

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %0, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = load i16, ptr %23, align 1
  %25 = zext i16 %24 to i32
  %26 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %0, i32 0, i32 11
  store i32 %25, ptr %26, align 4
  %27 = shl nuw nsw i32 %25, 4
  %28 = load ptr, ptr %0, align 8
  %29 = tail call noalias ptr @devm_kmalloc(ptr noundef %28, i32 noundef %27, i32 noundef 3520) #10
  %30 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %0, i32 0, i32 8
  store ptr %29, ptr %30, align 8
  %31 = icmp eq ptr %29, null
  br i1 %31, label %71, label %32

32:                                               ; preds = %21
  %33 = tail call i64 @ktime_get_with_offset(i32 noundef 1) #10
  %34 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %0, i32 0, i32 9
  store i64 %33, ptr %34, align 8
  %35 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %0, i32 0, i32 7
  store ptr @cros_ec_sensorhub_event, ptr %35, align 4
  %36 = load ptr, ptr %16, align 8
  %37 = getelementptr inbounds %struct.cros_ec_device, ptr %36, i32 0, i32 22
  %38 = tail call i32 @blocking_notifier_chain_register(ptr noundef %37, ptr noundef %35) #10
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %71, label %40

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %0, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %41) #10
  %42 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %0, i32 0, i32 16
  %43 = load i32, ptr %42, align 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %40
  %46 = load i32, ptr %4, align 8
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %0, i32 0, i32 12
  br label %50

50:                                               ; preds = %50, %48
  %51 = phi i32 [ 0, %48 ], [ %54, %50 ]
  %52 = load ptr, ptr %49, align 8
  %53 = getelementptr %struct.cros_ec_sensors_ts_batch_state, ptr %52, i32 %51, i32 3
  store i32 0, ptr %53, align 8
  %54 = add nuw nsw i32 %51, 1
  %55 = load i32, ptr %4, align 8
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %50, label %57

57:                                               ; preds = %50, %45, %40
  %58 = load ptr, ptr %10, align 8
  store i8 15, ptr %58, align 1
  %59 = load ptr, ptr %10, align 8
  %60 = getelementptr inbounds %struct.ec_params_motion_sense, ptr %59, i32 0, i32 1
  store i8 1, ptr %60, align 1
  %61 = load ptr, ptr %8, align 4
  %62 = getelementptr inbounds %struct.cros_ec_command, ptr %61, i32 0, i32 2
  store i32 13, ptr %62, align 4
  %63 = load ptr, ptr %8, align 4
  %64 = getelementptr inbounds %struct.cros_ec_command, ptr %63, i32 0, i32 3
  store i32 16, ptr %64, align 4
  %65 = load ptr, ptr %2, align 4
  %66 = getelementptr inbounds %struct.cros_ec_dev, ptr %65, i32 0, i32 1
  %67 = load ptr, ptr %66, align 8
  %68 = load ptr, ptr %8, align 4
  %69 = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %67, ptr noundef %68) #10
  tail call void @mutex_unlock(ptr noundef %41) #10
  %70 = tail call i32 @llvm.smin.i32(i32 %69, i32 0) #10
  br label %71

71:                                               ; preds = %57, %32, %21, %1
  %72 = phi i32 [ %70, %57 ], [ %19, %1 ], [ -12, %21 ], [ %38, %32 ]
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_ec_sensorhub_event(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #1 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = getelementptr i8, ptr %0, i32 -44
  %12 = getelementptr i8, ptr %0, i32 -40
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.cros_ec_dev, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.cros_ec_device, ptr %15, i32 0, i32 23
  %17 = load i8, ptr %16, align 4
  %18 = icmp eq i8 %17, 2
  br i1 %18, label %19, label %779

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.cros_ec_device, ptr %15, i32 0, i32 24
  %21 = load i32, ptr %20, align 8
  %22 = icmp eq i32 %21, 13
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.cros_ec_device, ptr %15, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str) #11
  br label %779

26:                                               ; preds = %19
  %27 = icmp eq i32 %1, 0
  br i1 %27, label %28, label %779

28:                                               ; preds = %26
  %29 = getelementptr i8, ptr %0, i32 36
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.cros_ec_device, ptr %15, i32 0, i32 23, i32 1
  %32 = getelementptr inbounds %struct.anon.5, ptr %31, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(10) %30, ptr noundef align 1 dereferenceable(10) %32, i32 10, i1 false)
  %33 = getelementptr inbounds %struct.cros_ec_device, ptr %15, i32 0, i32 27
  %34 = load i64, ptr %33, align 8
  %35 = getelementptr i8, ptr %0, i32 28
  store i64 %34, ptr %35, align 8
  %36 = load ptr, ptr %29, align 8
  %37 = load ptr, ptr %12, align 4
  %38 = getelementptr i8, ptr %0, i32 -20
  tail call void @mutex_lock(ptr noundef %38) #10
  %39 = getelementptr inbounds %struct.ec_response_motion_sense_fifo_info, ptr %36, i32 0, i32 3
  %40 = load i16, ptr %39, align 1
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %63, label %42

42:                                               ; preds = %28
  %43 = getelementptr i8, ptr %0, i32 -36
  %44 = load i32, ptr %43, align 8
  %45 = shl i32 %44, 1
  %46 = add i32 %45, 10
  %47 = getelementptr i8, ptr %0, i32 -28
  %48 = load ptr, ptr %47, align 8
  store i8 7, ptr %48, align 1
  %49 = getelementptr i8, ptr %0, i32 -32
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.cros_ec_command, ptr %50, i32 0, i32 2
  store i32 1, ptr %51, align 4
  %52 = load ptr, ptr %49, align 4
  %53 = getelementptr inbounds %struct.cros_ec_command, ptr %52, i32 0, i32 3
  store i32 %46, ptr %53, align 4
  %54 = getelementptr inbounds %struct.cros_ec_dev, ptr %37, i32 0, i32 1
  %55 = load ptr, ptr %54, align 8
  %56 = load ptr, ptr %49, align 4
  %57 = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %55, ptr noundef %56) #10
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %778, label %59

59:                                               ; preds = %42
  %60 = getelementptr i8, ptr %0, i32 -24
  %61 = load ptr, ptr %60, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %36, ptr align 1 %61, i32 %46, i1 false) #10
  %62 = tail call i64 @ktime_get_with_offset(i32 noundef 1) #10
  br label %65

63:                                               ; preds = %28
  %64 = load i64, ptr %35, align 8
  br label %65

65:                                               ; preds = %63, %59
  %66 = phi i64 [ %64, %63 ], [ %62, %59 ]
  %67 = getelementptr inbounds %struct.ec_response_motion_sense_fifo_info, ptr %36, i32 0, i32 1
  %68 = load i16, ptr %67, align 1
  %69 = zext i16 %68 to i32
  %70 = getelementptr i8, ptr %0, i32 40
  %71 = load i32, ptr %70, align 4
  %72 = icmp sge i32 %71, %69
  %73 = load i16, ptr %36, align 1
  %74 = zext i16 %73 to i32
  %75 = icmp eq i32 %71, %74
  %76 = select i1 %72, i1 %75, i1 false
  br i1 %76, label %79, label %77

77:                                               ; preds = %65
  %78 = load ptr, ptr %11, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %78, ptr noundef nonnull @.str.1, i32 noundef %69, i32 noundef %74, i32 noundef %71) #11
  br label %778

79:                                               ; preds = %65
  %80 = getelementptr i8, ptr %0, i32 20
  %81 = load i64, ptr %80, align 8
  %82 = getelementptr i8, ptr %0, i32 12
  %83 = load ptr, ptr %82, align 8
  %84 = icmp eq i16 %68, 0
  br i1 %84, label %463, label %85

85:                                               ; preds = %79
  %86 = getelementptr i8, ptr %0, i32 -28
  %87 = getelementptr i8, ptr %0, i32 -32
  %88 = getelementptr inbounds %struct.cros_ec_dev, ptr %37, i32 0, i32 1
  %89 = getelementptr i8, ptr %0, i32 -24
  %90 = getelementptr inbounds %struct.ec_response_motion_sense_fifo_info, ptr %36, i32 0, i32 2
  %91 = getelementptr i8, ptr %0, i32 52
  %92 = getelementptr i8, ptr %0, i32 60
  %93 = getelementptr i8, ptr %0, i32 68
  %94 = getelementptr i8, ptr %0, i32 76
  %95 = getelementptr i8, ptr %0, i32 2172
  %96 = getelementptr i8, ptr %0, i32 84
  %97 = getelementptr i8, ptr %0, i32 1644
  %98 = getelementptr i8, ptr %0, i32 100
  %99 = getelementptr i8, ptr %0, i32 612
  %100 = getelementptr i8, ptr %0, i32 92
  %101 = getelementptr i8, ptr %0, i32 1636
  %102 = getelementptr i8, ptr %0, i32 1124
  %103 = getelementptr i8, ptr %0, i32 2156
  %104 = getelementptr i8, ptr %0, i32 2164
  %105 = getelementptr i8, ptr %0, i32 44
  %106 = getelementptr i8, ptr %0, i32 2180
  %107 = getelementptr i8, ptr %0, i32 2176
  br label %108

108:                                              ; preds = %456, %85
  %109 = phi ptr [ %83, %85 ], [ %460, %456 ]
  %110 = phi i32 [ 0, %85 ], [ %459, %456 ]
  %111 = phi i32 [ 0, %85 ], [ %461, %456 ]
  %112 = phi i64 [ %81, %85 ], [ %458, %456 ]
  %113 = load ptr, ptr %86, align 8
  store i8 9, ptr %113, align 1
  %114 = load i16, ptr %67, align 1
  %115 = zext i16 %114 to i32
  %116 = sub i32 %115, %111
  %117 = load ptr, ptr %86, align 8
  %118 = getelementptr inbounds %struct.ec_params_motion_sense, ptr %117, i32 0, i32 1
  store i32 %116, ptr %118, align 1
  %119 = load ptr, ptr %87, align 4
  %120 = getelementptr inbounds %struct.cros_ec_command, ptr %119, i32 0, i32 2
  store i32 13, ptr %120, align 4
  %121 = load ptr, ptr %86, align 8
  %122 = getelementptr inbounds %struct.ec_params_motion_sense, ptr %121, i32 0, i32 1
  %123 = load i32, ptr %122, align 1
  %124 = shl i32 %123, 3
  %125 = or i32 %124, 4
  %126 = load ptr, ptr %87, align 4
  %127 = getelementptr inbounds %struct.cros_ec_command, ptr %126, i32 0, i32 3
  store i32 %125, ptr %127, align 4
  %128 = load ptr, ptr %88, align 8
  %129 = load ptr, ptr %87, align 4
  %130 = call i32 @cros_ec_cmd_xfer_status(ptr noundef %128, ptr noundef %129) #10
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %108
  %133 = load ptr, ptr %11, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %133, ptr noundef nonnull @.str.2, i32 noundef %130) #11
  br label %463

134:                                              ; preds = %108
  %135 = load ptr, ptr %89, align 4
  %136 = load i32, ptr %135, align 1
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %463, label %138

138:                                              ; preds = %134
  %139 = load i16, ptr %67, align 1
  %140 = zext i16 %139 to i32
  %141 = sub i32 %140, %111
  %142 = icmp sgt i32 %136, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %138
  %144 = load ptr, ptr %11, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %144, ptr noundef nonnull @.str.3, i32 noundef %136, i32 noundef %141) #11
  br label %463

145:                                              ; preds = %138
  %146 = getelementptr %struct.cros_ec_sensors_ring_sample, ptr %109, i32 %136
  %147 = load ptr, ptr %82, align 8
  %148 = getelementptr %struct.cros_ec_sensors_ring_sample, ptr %147, i32 %140
  %149 = icmp ugt ptr %146, %148
  br i1 %149, label %150, label %158

150:                                              ; preds = %145
  %151 = zext i16 %139 to i32
  %152 = load ptr, ptr %11, align 8
  %153 = ptrtoint ptr %109 to i32
  %154 = ptrtoint ptr %147 to i32
  %155 = sub i32 %153, %154
  %156 = ashr exact i32 %155, 4
  %157 = add i32 %136, %111
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %152, ptr noundef nonnull @.str.4, i32 noundef %111, i32 noundef %156, i32 noundef %157, i32 noundef %151) #11
  br label %463

158:                                              ; preds = %145
  %159 = icmp sgt i32 %136, 0
  br i1 %159, label %160, label %456

160:                                              ; preds = %158
  %161 = getelementptr inbounds %struct.ec_response_motion_sense_fifo_data, ptr %135, i32 0, i32 1
  br label %162

162:                                              ; preds = %447, %160
  %163 = phi ptr [ %449, %447 ], [ %109, %160 ]
  %164 = phi ptr [ %451, %447 ], [ %161, %160 ]
  %165 = phi i32 [ %448, %447 ], [ %110, %160 ]
  %166 = phi i32 [ %450, %447 ], [ 0, %160 ]
  %167 = phi i64 [ %340, %447 ], [ %112, %160 ]
  %168 = call i64 @ktime_get_with_offset(i32 noundef 1) #10
  %169 = load i8, ptr %164, align 1
  %170 = and i8 %169, 19
  %171 = icmp eq i8 %170, 2
  br i1 %171, label %172, label %339

172:                                              ; preds = %162
  %173 = getelementptr inbounds %struct.ec_response_motion_sensor_data, ptr %164, i32 0, i32 2, i32 0, i32 1
  %174 = load i32, ptr %173, align 1
  %175 = zext i32 %174 to i64
  %176 = load i32, ptr %90, align 1
  %177 = zext i32 %176 to i64
  %178 = load i64, ptr %91, align 8
  %179 = add i64 %178, %175
  %180 = load i64, ptr %92, align 8
  %181 = sub i64 %180, %179
  %182 = call i64 @llvm.abs.i64(i64 %181, i1 false) #10
  %183 = icmp sgt i64 %182, 2147483648
  br i1 %183, label %184, label %189

184:                                              ; preds = %172
  %185 = icmp sgt i64 %180, %179
  %186 = select i1 %185, i64 4294967296, i64 -4294967296
  %187 = add i64 %186, %178
  store i64 %187, ptr %91, align 8
  %188 = add i64 %186, %179
  br label %189

189:                                              ; preds = %184, %172
  %190 = phi i64 [ %188, %184 ], [ %179, %172 ]
  store i64 %190, ptr %92, align 8
  %191 = load i64, ptr %93, align 8
  %192 = add i64 %191, %177
  %193 = load i64, ptr %94, align 8
  %194 = sub i64 %193, %192
  %195 = call i64 @llvm.abs.i64(i64 %194, i1 false) #10
  %196 = icmp sgt i64 %195, 2147483648
  br i1 %196, label %197, label %202

197:                                              ; preds = %189
  %198 = icmp sgt i64 %193, %192
  %199 = select i1 %198, i64 4294967296, i64 -4294967296
  %200 = add i64 %199, %191
  store i64 %200, ptr %93, align 8
  %201 = add i64 %199, %192
  br label %202

202:                                              ; preds = %197, %189
  %203 = phi i64 [ %201, %197 ], [ %192, %189 ]
  store i64 %203, ptr %94, align 8
  %204 = load i32, ptr %95, align 8
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %312, label %206

206:                                              ; preds = %202
  %207 = mul i64 %203, -1000
  %208 = add i64 %207, %66
  %209 = load i64, ptr %98, align 8
  %210 = load i64, ptr %96, align 8
  %211 = add i64 %210, %209
  %212 = sub i64 %211, %203
  %213 = icmp eq i64 %211, %203
  br i1 %213, label %300, label %214

214:                                              ; preds = %206
  %215 = load i64, ptr %99, align 8
  %216 = load i64, ptr %100, align 8
  %217 = sub i64 %215, %208
  %218 = add i64 %217, %216
  %219 = shl i64 %218, 23
  %220 = call i64 @div64_s64(i64 noundef %219, i64 noundef %212) #10
  %221 = add i64 %212, -1
  %222 = icmp slt i64 %221, -500001
  br i1 %222, label %223, label %224

223:                                              ; preds = %214
  store i32 0, ptr %101, align 8
  br label %248

224:                                              ; preds = %214
  %225 = load i32, ptr %101, align 8
  %226 = add i32 %225, -1
  %227 = icmp sgt i32 %226, 0
  br i1 %227, label %228, label %248

228:                                              ; preds = %228, %224
  %229 = phi i32 [ %244, %228 ], [ %226, %224 ]
  %230 = phi i32 [ %229, %228 ], [ %225, %224 ]
  %231 = add i32 %230, -2
  %232 = getelementptr %struct.cros_ec_sensorhub, ptr %11, i32 0, i32 15, i32 2, i32 %231
  %233 = load i64, ptr %232, align 8
  %234 = add i64 %233, %212
  %235 = getelementptr %struct.cros_ec_sensorhub, ptr %11, i32 0, i32 15, i32 2, i32 %229
  store i64 %234, ptr %235, align 8
  %236 = getelementptr %struct.cros_ec_sensorhub, ptr %11, i32 0, i32 15, i32 3, i32 %231
  %237 = load i64, ptr %236, align 8
  %238 = add i64 %237, %218
  %239 = getelementptr %struct.cros_ec_sensorhub, ptr %11, i32 0, i32 15, i32 3, i32 %229
  store i64 %238, ptr %239, align 8
  %240 = getelementptr %struct.cros_ec_sensorhub, ptr %11, i32 0, i32 15, i32 4, i32 %231
  %241 = load i64, ptr %240, align 8
  %242 = getelementptr %struct.cros_ec_sensorhub, ptr %11, i32 0, i32 15, i32 4, i32 %229
  store i64 %241, ptr %242, align 8
  %243 = getelementptr i64, ptr %97, i32 %229
  store i64 %241, ptr %243, align 8
  %244 = add nsw i32 %229, -1
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %228

246:                                              ; preds = %228
  %247 = load i32, ptr %101, align 8
  br label %248

248:                                              ; preds = %246, %224, %223
  %249 = phi i32 [ %247, %246 ], [ %225, %224 ], [ 0, %223 ]
  store i64 %203, ptr %96, align 8
  store i64 %208, ptr %100, align 8
  store i64 0, ptr %98, align 8
  store i64 0, ptr %99, align 8
  store i64 %220, ptr %102, align 8
  store i64 %220, ptr %97, align 8
  %250 = icmp slt i32 %249, 64
  br i1 %250, label %251, label %254

251:                                              ; preds = %248
  %252 = add nsw i32 %249, 1
  store i32 %252, ptr %101, align 8
  %253 = icmp sgt i32 %249, 7
  br i1 %253, label %254, label %283

254:                                              ; preds = %251, %248
  %255 = phi i32 [ %252, %251 ], [ %249, %248 ]
  %256 = add nsw i32 %255, -1
  call void @sort(ptr noundef %97, i32 noundef %256, i32 noundef 8, ptr noundef nonnull @cros_ec_sensor_ring_median_cmp, ptr noundef null) #10
  %257 = lshr i32 %256, 1
  %258 = getelementptr i64, ptr %97, i32 %257
  %259 = load i64, ptr %258, align 8
  store i64 %259, ptr %103, align 8
  %260 = load i32, ptr %101, align 8
  %261 = icmp sgt i32 %260, 0
  br i1 %261, label %262, label %278

262:                                              ; preds = %276, %254
  %263 = phi i64 [ %277, %276 ], [ %259, %254 ]
  %264 = phi i32 [ %273, %276 ], [ 0, %254 ]
  %265 = getelementptr %struct.cros_ec_sensorhub, ptr %11, i32 0, i32 15, i32 3, i32 %264
  %266 = load i64, ptr %265, align 8
  %267 = getelementptr %struct.cros_ec_sensorhub, ptr %11, i32 0, i32 15, i32 2, i32 %264
  %268 = load i64, ptr %267, align 8
  %269 = mul i64 %268, %263
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #10
  store i32 0, ptr %10, align 4, !annotation !9
  %270 = call i64 @div_s64_rem(i64 noundef %269, i32 noundef 8388608, ptr noundef nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #10
  %271 = sub i64 %266, %270
  %272 = getelementptr i64, ptr %97, i32 %264
  store i64 %271, ptr %272, align 8
  %273 = add nuw nsw i32 %264, 1
  %274 = load i32, ptr %101, align 8
  %275 = icmp slt i32 %273, %274
  br i1 %275, label %276, label %278

276:                                              ; preds = %262
  %277 = load i64, ptr %103, align 8
  br label %262

278:                                              ; preds = %262, %254
  %279 = phi i32 [ %260, %254 ], [ %274, %262 ]
  call void @sort(ptr noundef %97, i32 noundef %279, i32 noundef 8, ptr noundef nonnull @cros_ec_sensor_ring_median_cmp, ptr noundef null) #10
  %280 = lshr i32 %279, 1
  %281 = getelementptr i64, ptr %97, i32 %280
  %282 = load i64, ptr %281, align 8
  store i64 %282, ptr %104, align 8
  br label %284

283:                                              ; preds = %251
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %103, i8 0, i64 16, i1 false) #10
  br label %284

284:                                              ; preds = %283, %278
  %285 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cros_ec_sensorhub_filter, i32 0, i32 1), align 4
  %286 = icmp sgt i32 %285, 0
  br i1 %286, label %287, label %300

287:                                              ; preds = %284
  %288 = tail call ptr @llvm.thread.pointer() #10
  %289 = getelementptr inbounds %struct.thread_info, ptr %288, i32 0, i32 2
  %290 = load i32, ptr %289, align 8
  %291 = lshr i32 %290, 5
  %292 = getelementptr i32, ptr @__cpu_online_mask, i32 %291
  %293 = load volatile i32, ptr %292, align 4
  %294 = and i32 %290, 31
  %295 = shl nuw i32 1, %294
  %296 = and i32 %295, %293
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %300, label %298

298:                                              ; preds = %287
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !10
  %299 = call i32 @__traceiter_cros_ec_sensorhub_filter(ptr noundef null, ptr noundef %96, i64 noundef %212, i64 noundef %218) #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  br label %300

300:                                              ; preds = %298, %287, %284, %206
  %301 = load i64, ptr %103, align 8
  %302 = load i64, ptr %96, align 8
  %303 = sub i64 %190, %302
  %304 = mul i64 %303, %301
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #10
  store i32 0, ptr %9, align 4, !annotation !9
  %305 = call i64 @div_s64_rem(i64 noundef %304, i32 noundef 8388608, ptr noundef nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #10
  %306 = load i64, ptr %104, align 8
  %307 = load i64, ptr %100, align 8
  %308 = mul i64 %190, 1000
  %309 = add i64 %305, %308
  %310 = add i64 %309, %306
  %311 = add i64 %310, %307
  br label %318

312:                                              ; preds = %202
  %313 = sub i64 %190, %203
  %314 = mul i64 %313, 1000
  %315 = add i64 %314, %66
  %316 = sub i64 %315, %167
  %317 = icmp sgt i64 %316, 0
  br i1 %317, label %318, label %320

318:                                              ; preds = %312, %300
  %319 = phi i64 [ %311, %300 ], [ %315, %312 ]
  br label %320

320:                                              ; preds = %318, %312
  %321 = phi i64 [ %319, %318 ], [ %167, %312 ]
  %322 = load i32, ptr %173, align 1
  %323 = load i32, ptr %90, align 1
  %324 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cros_ec_sensorhub_timestamp, i32 0, i32 1), align 4
  %325 = icmp sgt i32 %324, 0
  br i1 %325, label %326, label %339

326:                                              ; preds = %320
  %327 = tail call ptr @llvm.thread.pointer() #10
  %328 = getelementptr inbounds %struct.thread_info, ptr %327, i32 0, i32 2
  %329 = load i32, ptr %328, align 8
  %330 = lshr i32 %329, 5
  %331 = getelementptr i32, ptr @__cpu_online_mask, i32 %330
  %332 = load volatile i32, ptr %331, align 4
  %333 = and i32 %329, 31
  %334 = shl nuw i32 1, %333
  %335 = and i32 %334, %332
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %339, label %337

337:                                              ; preds = %326
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %338 = call i32 @__traceiter_cros_ec_sensorhub_timestamp(ptr noundef null, i32 noundef %322, i32 noundef %323, i64 noundef %66, i64 noundef %321, i64 noundef %168) #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  br label %339

339:                                              ; preds = %337, %326, %320, %162
  %340 = phi i64 [ %321, %326 ], [ %321, %337 ], [ %321, %320 ], [ %167, %162 ]
  %341 = load i8, ptr %164, align 1
  %342 = zext i8 %341 to i32
  %343 = and i32 %342, 16
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %358, label %345

345:                                              ; preds = %339
  %346 = load i32, ptr %95, align 8
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %447, label %348

348:                                              ; preds = %345
  %349 = load ptr, ptr %105, align 8
  %350 = getelementptr inbounds %struct.ec_response_motion_sensor_data, ptr %164, i32 0, i32 1
  %351 = load i8, ptr %350, align 1
  %352 = zext i8 %351 to i32
  %353 = getelementptr %struct.cros_ec_sensors_ts_batch_state, ptr %349, i32 %352, i32 3
  store i32 0, ptr %353, align 8
  %354 = load ptr, ptr %105, align 8
  %355 = load i8, ptr %350, align 1
  %356 = zext i8 %355 to i32
  %357 = getelementptr %struct.cros_ec_sensors_ts_batch_state, ptr %354, i32 %356, i32 1
  store i32 0, ptr %357, align 8
  br label %447

358:                                              ; preds = %339
  %359 = and i32 %342, 1
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %373, label %361

361:                                              ; preds = %358
  %362 = getelementptr inbounds %struct.ec_response_motion_sensor_data, ptr %164, i32 0, i32 1
  %363 = load i8, ptr %362, align 1
  store i8 %363, ptr %163, align 1
  %364 = getelementptr inbounds %struct.cros_ec_sensors_ring_sample, ptr %163, i32 0, i32 3
  store i64 %340, ptr %364, align 1
  %365 = load i8, ptr %164, align 1
  %366 = getelementptr inbounds %struct.cros_ec_sensors_ring_sample, ptr %163, i32 0, i32 1
  store i8 %365, ptr %366, align 1
  %367 = load i32, ptr %95, align 8
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %440, label %369

369:                                              ; preds = %361
  %370 = load ptr, ptr %105, align 8
  %371 = zext i8 %363 to i32
  %372 = getelementptr %struct.cros_ec_sensors_ts_batch_state, ptr %370, i32 %371, i32 3
  store i32 0, ptr %372, align 8
  br label %440

373:                                              ; preds = %358
  %374 = and i32 %342, 2
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %376, label %447

376:                                              ; preds = %373
  %377 = getelementptr inbounds %struct.ec_response_motion_sensor_data, ptr %164, i32 0, i32 1
  %378 = load i8, ptr %377, align 1
  store i8 %378, ptr %163, align 1
  %379 = load i8, ptr %377, align 1
  %380 = zext i8 %379 to i32
  %381 = load i32, ptr %90, align 1
  %382 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cros_ec_sensorhub_data, i32 0, i32 1), align 4
  %383 = icmp sgt i32 %382, 0
  br i1 %383, label %384, label %397

384:                                              ; preds = %376
  %385 = tail call ptr @llvm.thread.pointer() #10
  %386 = getelementptr inbounds %struct.thread_info, ptr %385, i32 0, i32 2
  %387 = load i32, ptr %386, align 8
  %388 = lshr i32 %387, 5
  %389 = getelementptr i32, ptr @__cpu_online_mask, i32 %388
  %390 = load volatile i32, ptr %389, align 4
  %391 = and i32 %387, 31
  %392 = shl nuw i32 1, %391
  %393 = and i32 %392, %390
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %397, label %395

395:                                              ; preds = %384
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  %396 = call i32 @__traceiter_cros_ec_sensorhub_data(ptr noundef null, i32 noundef %380, i32 noundef %381, i64 noundef %66, i64 noundef %340, i64 noundef %168) #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  br label %397

397:                                              ; preds = %395, %384, %376
  %398 = sub i64 %340, %168
  %399 = icmp sgt i64 %398, 0
  br i1 %399, label %400, label %413

400:                                              ; preds = %397
  %401 = load i64, ptr %106, align 8
  %402 = add i64 %401, %398
  store i64 %402, ptr %106, align 8
  %403 = load i32, ptr %107, align 4
  %404 = add i32 %403, 1
  store i32 %404, ptr %107, align 4
  %405 = icmp eq i32 %404, 100
  br i1 %405, label %406, label %413

406:                                              ; preds = %400
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #10
  store i32 0, ptr %8, align 4, !annotation !9
  %407 = call i64 @div_s64_rem(i64 noundef %402, i32 noundef 100, ptr noundef nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  %408 = call i32 @___ratelimit(ptr noundef nonnull @cros_ec_sensor_ring_process_event._rs, ptr noundef nonnull @__func__.cros_ec_sensor_ring_process_event) #10
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %412, label %410

410:                                              ; preds = %406
  %411 = load ptr, ptr %11, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %411, ptr noundef nonnull @.str.6, i64 noundef %407) #11
  br label %412

412:                                              ; preds = %410, %406
  store i32 0, ptr %107, align 4
  store i64 0, ptr %106, align 8
  br label %413

413:                                              ; preds = %412, %400, %397
  %414 = phi i64 [ %168, %412 ], [ %168, %400 ], [ %340, %397 ]
  %415 = getelementptr inbounds %struct.cros_ec_sensors_ring_sample, ptr %163, i32 0, i32 3
  store i64 %414, ptr %415, align 1
  %416 = load i8, ptr %164, align 1
  %417 = getelementptr inbounds %struct.cros_ec_sensors_ring_sample, ptr %163, i32 0, i32 1
  store i8 %416, ptr %417, align 1
  %418 = getelementptr inbounds %struct.ec_response_motion_sensor_data, ptr %164, i32 0, i32 2
  %419 = load i16, ptr %418, align 1
  %420 = getelementptr %struct.cros_ec_sensors_ring_sample, ptr %163, i32 0, i32 2, i32 0
  store i16 %419, ptr %420, align 1
  %421 = getelementptr %struct.ec_response_motion_sensor_data, ptr %164, i32 0, i32 2, i32 0, i32 1
  %422 = load i16, ptr %421, align 1
  %423 = getelementptr %struct.cros_ec_sensors_ring_sample, ptr %163, i32 0, i32 2, i32 1
  store i16 %422, ptr %423, align 1
  %424 = getelementptr %struct.ec_response_motion_sensor_data, ptr %164, i32 0, i32 2, i32 0, i32 2
  %425 = load i16, ptr %424, align 1
  %426 = getelementptr %struct.cros_ec_sensors_ring_sample, ptr %163, i32 0, i32 2, i32 2
  store i16 %425, ptr %426, align 1
  %427 = load i32, ptr %95, align 8
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %440, label %429

429:                                              ; preds = %413
  %430 = load i8, ptr %163, align 1
  %431 = load ptr, ptr %105, align 8
  %432 = zext i8 %430 to i32
  %433 = getelementptr %struct.cros_ec_sensors_ts_batch_state, ptr %431, i32 %432, i32 4
  %434 = load i64, ptr %433, align 8
  %435 = icmp sgt i64 %434, %414
  br i1 %435, label %436, label %439

436:                                              ; preds = %429
  %437 = getelementptr %struct.cros_ec_sensors_ts_batch_state, ptr %431, i32 %432, i32 2
  %438 = load i64, ptr %437, align 8
  store i64 %438, ptr %415, align 1
  br label %440

439:                                              ; preds = %429
  store i64 %414, ptr %433, align 8
  br label %440

440:                                              ; preds = %439, %436, %413, %369, %361
  %441 = getelementptr inbounds %struct.ec_response_motion_sensor_data, ptr %164, i32 0, i32 1
  %442 = load i8, ptr %441, align 1
  %443 = zext i8 %442 to i32
  %444 = shl nuw i32 1, %443
  %445 = or i32 %444, %165
  %446 = getelementptr %struct.cros_ec_sensors_ring_sample, ptr %163, i32 1
  br label %447

447:                                              ; preds = %440, %373, %348, %345
  %448 = phi i32 [ %445, %440 ], [ %165, %345 ], [ %165, %348 ], [ %165, %373 ]
  %449 = phi ptr [ %446, %440 ], [ %163, %345 ], [ %163, %348 ], [ %163, %373 ]
  %450 = add nuw nsw i32 %166, 1
  %451 = getelementptr %struct.ec_response_motion_sensor_data, ptr %164, i32 1
  %452 = icmp eq i32 %450, %136
  br i1 %452, label %453, label %162

453:                                              ; preds = %447
  %454 = load i16, ptr %67, align 1
  %455 = zext i16 %454 to i32
  br label %456

456:                                              ; preds = %453, %158
  %457 = phi i32 [ %455, %453 ], [ %140, %158 ]
  %458 = phi i64 [ %340, %453 ], [ %112, %158 ]
  %459 = phi i32 [ %448, %453 ], [ %110, %158 ]
  %460 = phi ptr [ %449, %453 ], [ %109, %158 ]
  %461 = add i32 %136, %111
  %462 = icmp slt i32 %461, %457
  br i1 %462, label %108, label %463

463:                                              ; preds = %456, %150, %143, %134, %132, %79
  %464 = phi i64 [ %112, %150 ], [ %112, %143 ], [ %112, %132 ], [ %81, %79 ], [ %112, %134 ], [ %458, %456 ]
  %465 = phi i32 [ %110, %150 ], [ %110, %143 ], [ %110, %132 ], [ 0, %79 ], [ %110, %134 ], [ %459, %456 ]
  %466 = phi ptr [ %109, %150 ], [ %109, %143 ], [ %109, %132 ], [ %83, %79 ], [ %109, %134 ], [ %460, %456 ]
  call void @mutex_unlock(ptr noundef %38) #10
  %467 = load ptr, ptr %82, align 8
  %468 = icmp eq ptr %466, %467
  br i1 %468, label %776, label %469

469:                                              ; preds = %463
  %470 = getelementptr i8, ptr %0, i32 2172
  %471 = load i32, ptr %470, align 8
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %473, label %478

473:                                              ; preds = %469
  %474 = getelementptr %struct.cros_ec_sensors_ring_sample, ptr %466, i32 -1, i32 3
  %475 = load i64, ptr %474, align 1
  %476 = icmp eq i64 %475, %464
  %477 = select i1 %476, i64 %66, i64 %464
  br label %478

478:                                              ; preds = %473, %469
  %479 = phi i64 [ %464, %469 ], [ %477, %473 ]
  %480 = load i16, ptr %39, align 1
  %481 = icmp eq i16 %480, 0
  br i1 %481, label %514, label %482

482:                                              ; preds = %478
  %483 = getelementptr i8, ptr %0, i32 -36
  %484 = load i32, ptr %483, align 8
  %485 = icmp sgt i32 %484, 0
  br i1 %485, label %486, label %514

486:                                              ; preds = %482
  %487 = getelementptr i8, ptr %0, i32 44
  br label %488

488:                                              ; preds = %508, %486
  %489 = phi i32 [ 0, %486 ], [ %509, %508 ]
  %490 = getelementptr %struct.ec_response_motion_sense_fifo_info, ptr %36, i32 0, i32 4, i32 %489
  %491 = load i16, ptr %490, align 1
  %492 = icmp eq i16 %491, 0
  br i1 %492, label %508, label %493

493:                                              ; preds = %488
  %494 = call i32 @___ratelimit(ptr noundef nonnull @cros_ec_sensorhub_ring_handler._rs, ptr noundef nonnull @__func__.cros_ec_sensorhub_ring_handler) #10
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %502, label %496

496:                                              ; preds = %493
  %497 = load ptr, ptr %11, align 8
  %498 = load i16, ptr %490, align 1
  %499 = zext i16 %498 to i32
  %500 = load i16, ptr %39, align 1
  %501 = zext i16 %500 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %497, ptr noundef nonnull @.str.5, i32 noundef %489, i32 noundef %499, i32 noundef %501) #11
  br label %502

502:                                              ; preds = %496, %493
  %503 = load i32, ptr %470, align 8
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %508, label %505

505:                                              ; preds = %502
  %506 = load ptr, ptr %487, align 8
  %507 = getelementptr %struct.cros_ec_sensors_ts_batch_state, ptr %506, i32 %489, i32 3
  store i32 0, ptr %507, align 8
  br label %508

508:                                              ; preds = %505, %502, %488
  %509 = add nuw nsw i32 %489, 1
  %510 = load i32, ptr %483, align 8
  %511 = icmp slt i32 %509, %510
  br i1 %511, label %488, label %512

512:                                              ; preds = %508
  %513 = load i32, ptr %470, align 8
  br label %514

514:                                              ; preds = %512, %482, %478
  %515 = phi i32 [ %513, %512 ], [ %471, %482 ], [ %471, %478 ]
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %677, label %517

517:                                              ; preds = %514
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i32 %465, ptr %7, align 4
  %518 = getelementptr i8, ptr %0, i32 -36
  %519 = load i32, ptr %518, align 8
  %520 = call i32 @_find_next_bit_le(ptr noundef nonnull %7, i32 noundef %519, i32 noundef 0) #10
  %521 = load i32, ptr %518, align 8
  %522 = icmp slt i32 %520, %521
  br i1 %522, label %523, label %676

523:                                              ; preds = %517
  %524 = getelementptr i8, ptr %0, i32 44
  %525 = getelementptr i8, ptr %0, i32 2188
  br label %526

526:                                              ; preds = %670, %523
  %527 = phi i32 [ %521, %523 ], [ %674, %670 ]
  %528 = phi i32 [ %520, %523 ], [ %673, %670 ]
  %529 = load ptr, ptr %82, align 8
  %530 = icmp ult ptr %529, %466
  br i1 %530, label %531, label %670

531:                                              ; preds = %664, %526
  %532 = phi ptr [ %666, %664 ], [ %529, %526 ]
  %533 = getelementptr inbounds %struct.cros_ec_sensors_ring_sample, ptr %532, i32 0, i32 3
  %534 = load i64, ptr %533, align 1
  %535 = load i8, ptr %532, align 1
  %536 = zext i8 %535 to i32
  %537 = icmp eq i32 %528, %536
  br i1 %537, label %538, label %664

538:                                              ; preds = %531
  %539 = getelementptr inbounds %struct.cros_ec_sensors_ring_sample, ptr %532, i32 0, i32 1
  %540 = load i8, ptr %539, align 1
  %541 = and i8 %540, 1
  %542 = icmp eq i8 %541, 0
  br i1 %542, label %543, label %664

543:                                              ; preds = %538
  %544 = load ptr, ptr %524, align 8
  %545 = getelementptr %struct.cros_ec_sensors_ts_batch_state, ptr %544, i32 %528, i32 2
  %546 = load i64, ptr %545, align 8
  %547 = icmp sgt i64 %534, %546
  br i1 %547, label %557, label %548

548:                                              ; preds = %543
  %549 = getelementptr %struct.cros_ec_sensors_ts_batch_state, ptr %544, i32 %528
  %550 = getelementptr %struct.cros_ec_sensors_ts_batch_state, ptr %544, i32 %528, i32 3
  %551 = load i32, ptr %550, align 8
  %552 = load i64, ptr %549, align 8
  store i64 %552, ptr %545, align 8
  %553 = load ptr, ptr %524, align 8
  %554 = getelementptr %struct.cros_ec_sensors_ts_batch_state, ptr %553, i32 %528, i32 1
  %555 = load i32, ptr %554, align 8
  %556 = getelementptr %struct.cros_ec_sensors_ts_batch_state, ptr %553, i32 %528, i32 3
  store i32 %555, ptr %556, align 8
  br label %572

557:                                              ; preds = %543
  %558 = load i32, ptr %518, align 8
  %559 = icmp sgt i32 %558, %528
  br i1 %559, label %560, label %570

560:                                              ; preds = %557
  %561 = load ptr, ptr %525, align 8
  %562 = getelementptr %struct.cros_ec_sensorhub_sensor_push_data, ptr %561, i32 %528, i32 1
  %563 = load ptr, ptr %562, align 4
  %564 = icmp eq ptr %563, null
  br i1 %564, label %570, label %565

565:                                              ; preds = %560
  %566 = getelementptr %struct.cros_ec_sensorhub_sensor_push_data, ptr %561, i32 %528
  %567 = load ptr, ptr %566, align 4
  %568 = getelementptr inbounds %struct.cros_ec_sensors_ring_sample, ptr %532, i32 0, i32 2
  %569 = call i32 %563(ptr noundef %567, ptr noundef %568, i64 noundef %534) #10
  br label %570

570:                                              ; preds = %565, %560, %557
  %571 = getelementptr %struct.cros_ec_sensors_ring_sample, ptr %532, i32 1
  br label %572

572:                                              ; preds = %570, %548
  %573 = phi ptr [ %532, %548 ], [ %571, %570 ]
  %574 = phi i32 [ %551, %548 ], [ 1, %570 ]
  %575 = phi i64 [ %546, %548 ], [ %534, %570 ]
  %576 = icmp ult ptr %573, %466
  br i1 %576, label %577, label %600

577:                                              ; preds = %595, %572
  %578 = phi ptr [ %598, %595 ], [ %573, %572 ]
  %579 = phi ptr [ %597, %595 ], [ %532, %572 ]
  %580 = phi i32 [ %596, %595 ], [ %574, %572 ]
  %581 = load i8, ptr %578, align 1
  %582 = zext i8 %581 to i32
  %583 = icmp eq i32 %528, %582
  br i1 %583, label %584, label %595

584:                                              ; preds = %577
  %585 = getelementptr inbounds %struct.cros_ec_sensors_ring_sample, ptr %578, i32 0, i32 3
  %586 = load i64, ptr %585, align 1
  %587 = icmp eq i64 %586, %575
  br i1 %587, label %588, label %600

588:                                              ; preds = %584
  %589 = getelementptr inbounds %struct.cros_ec_sensors_ring_sample, ptr %578, i32 0, i32 1
  %590 = load i8, ptr %589, align 1
  %591 = and i8 %590, 1
  %592 = icmp eq i8 %591, 0
  br i1 %592, label %593, label %600

593:                                              ; preds = %588
  %594 = add i32 %580, 1
  br label %595

595:                                              ; preds = %593, %577
  %596 = phi i32 [ %580, %577 ], [ %594, %593 ]
  %597 = phi ptr [ %579, %577 ], [ %578, %593 ]
  %598 = getelementptr %struct.cros_ec_sensors_ring_sample, ptr %578, i32 1
  %599 = icmp ult ptr %598, %466
  br i1 %599, label %577, label %600

600:                                              ; preds = %595, %588, %584, %572
  %601 = phi i32 [ %574, %572 ], [ %580, %588 ], [ %580, %584 ], [ %596, %595 ]
  %602 = phi ptr [ %532, %572 ], [ %579, %588 ], [ %579, %584 ], [ %597, %595 ]
  %603 = icmp eq i32 %601, 1
  br i1 %603, label %651, label %604

604:                                              ; preds = %600
  %605 = load ptr, ptr %524, align 8
  %606 = getelementptr %struct.cros_ec_sensors_ts_batch_state, ptr %605, i32 %528, i32 3
  %607 = load i32, ptr %606, align 8
  %608 = icmp eq i32 %607, 0
  br i1 %608, label %609, label %612

609:                                              ; preds = %604
  %610 = load ptr, ptr %11, align 8
  %611 = add i32 %601, -1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %610, ptr noundef nonnull @.str.8, i32 noundef %528, i32 noundef %611) #11
  br label %651

612:                                              ; preds = %604
  %613 = getelementptr %struct.cros_ec_sensors_ts_batch_state, ptr %605, i32 %528, i32 2
  %614 = load i64, ptr %613, align 8
  %615 = sub i64 %575, %614
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4, !annotation !9
  %616 = call i64 @div_s64_rem(i64 noundef %615, i32 noundef %607, ptr noundef nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  %617 = icmp ugt ptr %573, %602
  br i1 %617, label %651, label %618

618:                                              ; preds = %647, %612
  %619 = phi ptr [ %649, %647 ], [ %573, %612 ]
  %620 = phi i32 [ %648, %647 ], [ %574, %612 ]
  %621 = load i8, ptr %619, align 1
  %622 = zext i8 %621 to i32
  %623 = icmp eq i32 %528, %622
  br i1 %623, label %624, label %647

624:                                              ; preds = %618
  %625 = sext i32 %620 to i64
  %626 = mul i64 %616, %625
  %627 = add i64 %626, %575
  %628 = getelementptr inbounds %struct.cros_ec_sensors_ring_sample, ptr %619, i32 0, i32 3
  store i64 %627, ptr %628, align 1
  %629 = add i32 %620, 1
  %630 = load i32, ptr %518, align 8
  %631 = icmp sgt i32 %630, %528
  br i1 %631, label %632, label %647

632:                                              ; preds = %624
  %633 = load ptr, ptr %525, align 8
  %634 = getelementptr %struct.cros_ec_sensorhub_sensor_push_data, ptr %633, i32 %528, i32 1
  %635 = load ptr, ptr %634, align 4
  %636 = icmp eq ptr %635, null
  br i1 %636, label %647, label %637

637:                                              ; preds = %632
  %638 = getelementptr inbounds %struct.cros_ec_sensors_ring_sample, ptr %619, i32 0, i32 1
  %639 = load i8, ptr %638, align 1
  %640 = and i8 %639, 1
  %641 = icmp eq i8 %640, 0
  br i1 %641, label %642, label %647

642:                                              ; preds = %637
  %643 = getelementptr %struct.cros_ec_sensorhub_sensor_push_data, ptr %633, i32 %528
  %644 = load ptr, ptr %643, align 4
  %645 = getelementptr inbounds %struct.cros_ec_sensors_ring_sample, ptr %619, i32 0, i32 2
  %646 = call i32 %635(ptr noundef %644, ptr noundef %645, i64 noundef %627) #10
  br label %647

647:                                              ; preds = %642, %637, %632, %624, %618
  %648 = phi i32 [ %620, %618 ], [ %629, %624 ], [ %629, %632 ], [ %629, %637 ], [ %629, %642 ]
  %649 = getelementptr %struct.cros_ec_sensors_ring_sample, ptr %619, i32 1
  %650 = icmp ugt ptr %649, %602
  br i1 %650, label %651, label %618

651:                                              ; preds = %647, %612, %609, %600
  %652 = load ptr, ptr %524, align 8
  %653 = getelementptr %struct.cros_ec_sensors_ts_batch_state, ptr %652, i32 %528
  %654 = getelementptr %struct.cros_ec_sensors_ts_batch_state, ptr %652, i32 %528, i32 2
  %655 = load i64, ptr %654, align 8
  store i64 %655, ptr %653, align 8
  %656 = load ptr, ptr %524, align 8
  %657 = getelementptr %struct.cros_ec_sensors_ts_batch_state, ptr %656, i32 %528, i32 3
  %658 = load i32, ptr %657, align 8
  %659 = getelementptr %struct.cros_ec_sensors_ts_batch_state, ptr %656, i32 %528, i32 1
  store i32 %658, ptr %659, align 8
  %660 = load ptr, ptr %524, align 8
  %661 = getelementptr %struct.cros_ec_sensors_ts_batch_state, ptr %660, i32 %528, i32 2
  store i64 %575, ptr %661, align 8
  %662 = load ptr, ptr %524, align 8
  %663 = getelementptr %struct.cros_ec_sensors_ts_batch_state, ptr %662, i32 %528, i32 3
  store i32 %601, ptr %663, align 8
  br label %664

664:                                              ; preds = %651, %538, %531
  %665 = phi ptr [ %602, %651 ], [ %532, %531 ], [ %532, %538 ]
  %666 = getelementptr %struct.cros_ec_sensors_ring_sample, ptr %665, i32 1
  %667 = icmp ult ptr %666, %466
  br i1 %667, label %531, label %668

668:                                              ; preds = %664
  %669 = load i32, ptr %518, align 8
  br label %670

670:                                              ; preds = %668, %526
  %671 = phi i32 [ %669, %668 ], [ %527, %526 ]
  %672 = add i32 %528, 1
  %673 = call i32 @_find_next_bit_le(ptr noundef nonnull %7, i32 noundef %671, i32 noundef %672) #10
  %674 = load i32, ptr %518, align 8
  %675 = icmp slt i32 %673, %674
  br i1 %675, label %526, label %676

676:                                              ; preds = %670, %517
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  br label %776

677:                                              ; preds = %514
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 %465, ptr %5, align 4
  %678 = getelementptr i8, ptr %0, i32 -36
  %679 = load i32, ptr %678, align 8
  %680 = call i32 @_find_next_bit_le(ptr noundef nonnull %5, i32 noundef %679, i32 noundef 0) #10
  %681 = load i32, ptr %678, align 8
  %682 = icmp slt i32 %680, %681
  br i1 %682, label %683, label %741

683:                                              ; preds = %735, %677
  %684 = phi i32 [ %738, %735 ], [ %680, %677 ]
  %685 = load ptr, ptr %82, align 8
  %686 = icmp ult ptr %685, %466
  br i1 %686, label %687, label %699

687:                                              ; preds = %696, %683
  %688 = phi ptr [ %697, %696 ], [ %685, %683 ]
  %689 = load i8, ptr %688, align 1
  %690 = zext i8 %689 to i32
  %691 = icmp eq i32 %684, %690
  br i1 %691, label %692, label %696

692:                                              ; preds = %687
  %693 = getelementptr inbounds %struct.cros_ec_sensors_ring_sample, ptr %688, i32 0, i32 3
  %694 = load i64, ptr %693, align 1
  %695 = getelementptr %struct.cros_ec_sensors_ring_sample, ptr %688, i32 1
  br label %699

696:                                              ; preds = %687
  %697 = getelementptr %struct.cros_ec_sensors_ring_sample, ptr %688, i32 1
  %698 = icmp ult ptr %697, %466
  br i1 %698, label %687, label %699

699:                                              ; preds = %696, %692, %683
  %700 = phi ptr [ %695, %692 ], [ %685, %683 ], [ %697, %696 ]
  %701 = phi i64 [ %694, %692 ], [ 0, %683 ], [ 0, %696 ]
  %702 = phi i32 [ 1, %692 ], [ 0, %683 ], [ 0, %696 ]
  %703 = icmp ult ptr %700, %466
  br i1 %703, label %704, label %714

704:                                              ; preds = %704, %699
  %705 = phi i32 [ %711, %704 ], [ %702, %699 ]
  %706 = phi ptr [ %712, %704 ], [ %700, %699 ]
  %707 = load i8, ptr %706, align 1
  %708 = zext i8 %707 to i32
  %709 = icmp eq i32 %684, %708
  %710 = zext i1 %709 to i32
  %711 = add i32 %705, %710
  %712 = getelementptr %struct.cros_ec_sensors_ring_sample, ptr %706, i32 1
  %713 = icmp ult ptr %712, %466
  br i1 %713, label %704, label %714

714:                                              ; preds = %704, %699
  %715 = phi i32 [ %702, %699 ], [ %711, %704 ]
  %716 = icmp eq i32 %715, 0
  br i1 %716, label %735, label %717

717:                                              ; preds = %714
  %718 = sub i64 %479, %701
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !9
  %719 = call i64 @div_s64_rem(i64 noundef %718, i32 noundef %715, ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  %720 = load ptr, ptr %82, align 8
  %721 = icmp ult ptr %720, %466
  br i1 %721, label %722, label %735

722:                                              ; preds = %731, %717
  %723 = phi i64 [ %732, %731 ], [ %701, %717 ]
  %724 = phi ptr [ %733, %731 ], [ %720, %717 ]
  %725 = load i8, ptr %724, align 1
  %726 = zext i8 %725 to i32
  %727 = icmp eq i32 %684, %726
  br i1 %727, label %728, label %731

728:                                              ; preds = %722
  %729 = add i64 %723, %719
  %730 = getelementptr inbounds %struct.cros_ec_sensors_ring_sample, ptr %724, i32 0, i32 3
  store i64 %729, ptr %730, align 1
  br label %731

731:                                              ; preds = %728, %722
  %732 = phi i64 [ %723, %722 ], [ %729, %728 ]
  %733 = getelementptr %struct.cros_ec_sensors_ring_sample, ptr %724, i32 1
  %734 = icmp ult ptr %733, %466
  br i1 %734, label %722, label %735

735:                                              ; preds = %731, %717, %714
  %736 = load i32, ptr %678, align 8
  %737 = add i32 %684, 1
  %738 = call i32 @_find_next_bit_le(ptr noundef nonnull %5, i32 noundef %736, i32 noundef %737) #10
  %739 = load i32, ptr %678, align 8
  %740 = icmp slt i32 %738, %739
  br i1 %740, label %683, label %741

741:                                              ; preds = %735, %677
  %742 = phi i32 [ %681, %677 ], [ %739, %735 ]
  %743 = load ptr, ptr %82, align 8
  %744 = icmp ult ptr %743, %466
  br i1 %744, label %745, label %775

745:                                              ; preds = %741
  %746 = getelementptr i8, ptr %0, i32 2188
  br label %747

747:                                              ; preds = %773, %745
  %748 = phi i32 [ %742, %745 ], [ %774, %773 ]
  %749 = phi ptr [ %743, %745 ], [ %771, %773 ]
  %750 = load i8, ptr %749, align 1
  %751 = zext i8 %750 to i32
  %752 = icmp sgt i32 %748, %751
  br i1 %752, label %753, label %770

753:                                              ; preds = %747
  %754 = load ptr, ptr %746, align 8
  %755 = getelementptr %struct.cros_ec_sensorhub_sensor_push_data, ptr %754, i32 %751, i32 1
  %756 = load ptr, ptr %755, align 4
  %757 = icmp eq ptr %756, null
  br i1 %757, label %770, label %758

758:                                              ; preds = %753
  %759 = getelementptr inbounds %struct.cros_ec_sensors_ring_sample, ptr %749, i32 0, i32 1
  %760 = load i8, ptr %759, align 1
  %761 = and i8 %760, 1
  %762 = icmp eq i8 %761, 0
  br i1 %762, label %763, label %770

763:                                              ; preds = %758
  %764 = getelementptr %struct.cros_ec_sensorhub_sensor_push_data, ptr %754, i32 %751
  %765 = load ptr, ptr %764, align 4
  %766 = getelementptr inbounds %struct.cros_ec_sensors_ring_sample, ptr %749, i32 0, i32 2
  %767 = getelementptr inbounds %struct.cros_ec_sensors_ring_sample, ptr %749, i32 0, i32 3
  %768 = load i64, ptr %767, align 1
  %769 = call i32 %756(ptr noundef %765, ptr noundef %766, i64 noundef %768) #10
  br label %770

770:                                              ; preds = %763, %758, %753, %747
  %771 = getelementptr %struct.cros_ec_sensors_ring_sample, ptr %749, i32 1
  %772 = icmp ult ptr %771, %466
  br i1 %772, label %773, label %775

773:                                              ; preds = %770
  %774 = load i32, ptr %678, align 8
  br label %747

775:                                              ; preds = %770, %741
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  br label %776

776:                                              ; preds = %775, %676, %463
  %777 = phi i64 [ %464, %463 ], [ %479, %775 ], [ %479, %676 ]
  store i64 %777, ptr %80, align 8
  br label %779

778:                                              ; preds = %77, %42
  tail call void @mutex_unlock(ptr noundef %38) #10
  br label %779

779:                                              ; preds = %778, %776, %26, %23, %3
  %780 = phi i32 [ 0, %23 ], [ 0, %3 ], [ 1, %26 ], [ 1, %776 ], [ 1, %778 ]
  ret i32 %780
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cros_ec_sensorhub_ring_remove(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.cros_ec_dev, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %0, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %6) #10
  %7 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %0, i32 0, i32 16
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %0, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %0, i32 0, i32 12
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi i32 [ 0, %14 ], [ %20, %16 ]
  %18 = load ptr, ptr %15, align 8
  %19 = getelementptr %struct.cros_ec_sensors_ts_batch_state, ptr %18, i32 %17, i32 3
  store i32 0, ptr %19, align 8
  %20 = add nuw nsw i32 %17, 1
  %21 = load i32, ptr %11, align 8
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %16, label %23

23:                                               ; preds = %16, %10, %1
  %24 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %0, i32 0, i32 4
  %25 = load ptr, ptr %24, align 8
  store i8 15, ptr %25, align 1
  %26 = load ptr, ptr %24, align 8
  %27 = getelementptr inbounds %struct.ec_params_motion_sense, ptr %26, i32 0, i32 1
  store i8 0, ptr %27, align 1
  %28 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %0, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.cros_ec_command, ptr %29, i32 0, i32 2
  store i32 13, ptr %30, align 4
  %31 = load ptr, ptr %28, align 4
  %32 = getelementptr inbounds %struct.cros_ec_command, ptr %31, i32 0, i32 3
  store i32 16, ptr %32, align 4
  %33 = load ptr, ptr %2, align 4
  %34 = getelementptr inbounds %struct.cros_ec_dev, ptr %33, i32 0, i32 1
  %35 = load ptr, ptr %34, align 8
  %36 = load ptr, ptr %28, align 4
  %37 = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %35, ptr noundef %36) #10
  tail call void @mutex_unlock(ptr noundef %6) #10
  %38 = getelementptr inbounds %struct.cros_ec_device, ptr %5, i32 0, i32 22
  %39 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %0, i32 0, i32 7
  %40 = tail call i32 @blocking_notifier_chain_unregister(ptr noundef %38, ptr noundef %39) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_s64(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @cros_ec_sensor_ring_median_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 {
  %3 = load i64, ptr %0, align 8
  %4 = load i64, ptr %1, align 8
  %5 = icmp sgt i64 %3, %4
  %6 = icmp slt i64 %3, %4
  %7 = sext i1 %6 to i32
  %8 = select i1 %5, i32 1, i32 %7
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cros_ec_sensorhub_filter(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cros_ec_sensorhub_timestamp(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cros_ec_sensorhub_data(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
!10 = !{i64 2151750246}
!11 = !{i64 2151750432}
!12 = !{i64 2151720622}
!13 = !{i64 2151720966}
!14 = !{i64 2151736154}
!15 = !{i64 2151736472}
