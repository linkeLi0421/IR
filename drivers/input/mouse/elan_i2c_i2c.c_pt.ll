; ModuleID = '/llk/IR/drivers/input/mouse/elan_i2c_i2c.c_pt.bc'
source_filename = "../drivers/input/mouse/elan_i2c_i2c.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.elan_transport_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }

@elan_i2c_ops = dso_local local_unnamed_addr constant %struct.elan_transport_ops { ptr @elan_i2c_initialize, ptr @elan_i2c_sleep_control, ptr @elan_i2c_power_control, ptr @elan_i2c_set_mode, ptr @elan_i2c_calibrate, ptr @elan_i2c_calibrate_result, ptr @elan_i2c_get_baseline_data, ptr @elan_i2c_get_version, ptr @elan_i2c_get_sm_version, ptr @elan_i2c_get_checksum, ptr @elan_i2c_get_product_id, ptr @elan_i2c_get_max, ptr @elan_i2c_get_resolution, ptr @elan_i2c_get_num_traces, ptr @elan_i2c_iap_get_mode, ptr @elan_i2c_iap_reset, ptr @elan_i2c_prepare_fw_update, ptr @elan_i2c_write_fw_block, ptr @elan_i2c_finish_fw_update, ptr @elan_i2c_get_report_features, ptr @elan_i2c_get_report, ptr @elan_i2c_get_pressure_adjustment, ptr @elan_i2c_get_pattern }, align 4
@.str = private unnamed_addr constant [25 x i8] c"device reset failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to read reset response: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"cannot get device descriptor: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"fetching report descriptor failed.: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"writing cmd (0x%04x) failed: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"failed to read current power state: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"failed to write current power state: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"reading cmd (0x%04x) fail.\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"failed to get %s version: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"IAP\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"FW\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"failed to get ic type: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"failed to get SM version: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"failed to get %s checksum: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"failed to get product ID: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"failed to get X dimension: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"failed to get Y dimension: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"failed to get resolution: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"failed to get trace info: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"failed to read iap control register: %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"cannot reset IC: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"wrong mode: %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"cannot read iap password: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"wrong iap password: 0x%X\0A\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"cannot set flash key: %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"cannot write iap type: %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [38 x i8] c"failed to read iap type register: %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"cannot set iap type\0A\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"Failed to write page %d: %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [37 x i8] c"Failed to read IAP write result: %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"IAP reports failed write: %04hx\0A\00", align 1
@.str.31 = private unnamed_addr constant [53 x i8] c"failed to read I2C data after FW WDT reset: %d (%d)\0A\00", align 1
@.str.32 = private unnamed_addr constant [34 x i8] c"timeout waiting for device reset\0A\00", align 1
@.str.33 = private unnamed_addr constant [36 x i8] c"failed to read INT signal: %d (%d)\0A\00", align 1
@.str.34 = private unnamed_addr constant [32 x i8] c"failed to read report data: %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [41 x i8] c"wrong report length (%d vs %d expected)\0A\00", align 1
@.str.36 = private unnamed_addr constant [35 x i8] c"failed to get pressure format: %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [27 x i8] c"failed to get pattern: %d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @elan_i2c_initialize(ptr noundef %0) #0 {
  %2 = alloca [1 x i16], align 2
  %3 = alloca [2 x %struct.i2c_msg], align 4
  %4 = alloca [1 x i16], align 2
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [2 x i16], align 4
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca [256 x i8], align 1
  %9 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %8) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %8, i8 0, i32 256, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i16 5, ptr %6, align 4
  %10 = getelementptr inbounds i16, ptr %6, i32 1
  store i16 256, ptr %10, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  %11 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 4, ptr %11, align 4, !annotation !8
  %12 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %13 = load i16, ptr %12, align 2
  store i16 %13, ptr %7, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  %15 = load i16, ptr %0, align 8
  %16 = and i16 %15, 16
  store i16 %16, ptr %14, align 2
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 8
  %20 = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %7, i32 noundef 1) #9
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @msleep(i32 noundef 100) #9
  %23 = call i32 @i2c_transfer_buffer_flags(ptr noundef %0, ptr noundef nonnull %8, i32 noundef 2, i16 noundef zeroext 1) #9
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %28, label %29

25:                                               ; preds = %1
  %26 = icmp sgt i32 %20, -1
  %27 = select i1 %26, i32 -5, i32 %20
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.4, i32 noundef 5, i32 noundef %27) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str, i32 noundef %27) #10
  br label %65

28:                                               ; preds = %22
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.1, i32 noundef %23) #10
  br label %65

29:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #9
  store i16 1, ptr %4, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %30 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %30, i8 0, i32 16, i1 false) #9, !annotation !8
  %31 = load i16, ptr %12, align 2
  store i16 %31, ptr %5, align 4
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  %33 = load i16, ptr %0, align 8
  %34 = and i16 %33, 16
  store i16 %34, ptr %32, align 2
  store i16 2, ptr %30, align 4
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %35, align 4
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %31, ptr %36, align 4
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  %38 = or i16 %34, 1
  store i16 %38, ptr %37, align 2
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 30, ptr %39, align 4
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %8, ptr %40, align 4
  %41 = load ptr, ptr %18, align 8
  %42 = call i32 @i2c_transfer(ptr noundef %41, ptr noundef nonnull %5, i32 noundef 2) #9
  %43 = icmp eq i32 %42, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  br i1 %43, label %47, label %44

44:                                               ; preds = %29
  %45 = icmp slt i32 %42, 0
  %46 = select i1 %45, i32 %42, i32 -5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.2, i32 noundef %46) #10
  br label %65

47:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #9
  store i16 2, ptr %2, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  %48 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %48, i8 0, i32 16, i1 false) #9, !annotation !8
  %49 = load i16, ptr %12, align 2
  store i16 %49, ptr %3, align 4
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  %51 = load i16, ptr %0, align 8
  %52 = and i16 %51, 16
  store i16 %52, ptr %50, align 2
  store i16 2, ptr %48, align 4
  %53 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %53, align 4
  %54 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1
  store i16 %49, ptr %54, align 4
  %55 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 1
  %56 = or i16 %52, 1
  store i16 %56, ptr %55, align 2
  %57 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 2
  store i16 158, ptr %57, align 4
  %58 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 3
  store ptr %8, ptr %58, align 4
  %59 = load ptr, ptr %18, align 8
  %60 = call i32 @i2c_transfer(ptr noundef %59, ptr noundef nonnull %3, i32 noundef 2) #9
  %61 = icmp eq i32 %60, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #9
  br i1 %61, label %65, label %62

62:                                               ; preds = %47
  %63 = icmp slt i32 %60, 0
  %64 = select i1 %63, i32 %60, i32 -5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.3, i32 noundef %64) #10
  br label %65

65:                                               ; preds = %62, %47, %44, %28, %25
  %66 = phi i32 [ %27, %25 ], [ %23, %28 ], [ %46, %44 ], [ %64, %62 ], [ 0, %47 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %8) #9
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @elan_i2c_sleep_control(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = alloca [2 x i16], align 4
  %4 = alloca %struct.i2c_msg, align 4
  %5 = select i1 %1, i16 2049, i16 2048
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i16 5, ptr %3, align 4
  %6 = getelementptr inbounds i16, ptr %3, i32 1
  store i16 %5, ptr %6, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %7 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 4, ptr %7, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %9 = load i16, ptr %8, align 2
  store i16 %9, ptr %4, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  %11 = load i16, ptr %0, align 8
  %12 = and i16 %11, 16
  store i16 %12, ptr %10, align 2
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 8
  %16 = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %4, i32 noundef 1) #9
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = icmp sgt i32 %16, -1
  %20 = select i1 %19, i32 -5, i32 %16
  %21 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.4, i32 noundef 5, i32 noundef %20) #10
  br label %22

22:                                               ; preds = %18, %2
  %23 = phi i32 [ %20, %18 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @elan_i2c_power_control(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = alloca [2 x i16], align 4
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [1 x i16], align 2
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #9
  store i16 0, ptr %7, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #9
  store i16 775, ptr %5, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #9
  %8 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 16, i1 false) #9, !annotation !8
  %9 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %10 = load i16, ptr %9, align 2
  store i16 %10, ptr %6, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  %12 = load i16, ptr %0, align 8
  %13 = and i16 %12, 16
  store i16 %13, ptr %11, align 2
  store i16 2, ptr %8, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  store i16 %10, ptr %15, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  %17 = or i16 %13, 1
  store i16 %17, ptr %16, align 2
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  store i16 2, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %7, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %21 = load ptr, ptr %20, align 8
  %22 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %6, i32 noundef 2) #9
  %23 = icmp eq i32 %22, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #9
  br i1 %23, label %28, label %24

24:                                               ; preds = %2
  %25 = icmp slt i32 %22, 0
  %26 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.7, i32 noundef 775) #10
  %27 = select i1 %25, i32 %22, i32 -5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.5, i32 noundef %27) #10
  br label %49

28:                                               ; preds = %2
  %29 = load i16, ptr %7, align 2
  %30 = and i16 %29, -2
  %31 = xor i1 %1, true
  %32 = zext i1 %31 to i16
  %33 = or i16 %30, %32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i16 775, ptr %3, align 4
  %34 = getelementptr inbounds i16, ptr %3, i32 1
  store i16 %33, ptr %34, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %35 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 4, ptr %35, align 4, !annotation !8
  %36 = load i16, ptr %9, align 2
  store i16 %36, ptr %4, align 4
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  %38 = load i16, ptr %0, align 8
  %39 = and i16 %38, 16
  store i16 %39, ptr %37, align 2
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %40, align 4
  %41 = load ptr, ptr %20, align 8
  %42 = call i32 @i2c_transfer(ptr noundef %41, ptr noundef nonnull %4, i32 noundef 1) #9
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %45

44:                                               ; preds = %28
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  br label %49

45:                                               ; preds = %28
  %46 = icmp sgt i32 %42, -1
  %47 = select i1 %46, i32 -5, i32 %42
  %48 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.4, i32 noundef 775, i32 noundef %47) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.6, i32 noundef %47) #10
  br label %49

49:                                               ; preds = %45, %44, %24
  %50 = phi i32 [ %27, %24 ], [ %47, %45 ], [ 0, %44 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #9
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @elan_i2c_set_mode(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = alloca [2 x i16], align 4
  %4 = alloca %struct.i2c_msg, align 4
  %5 = zext i8 %1 to i16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i16 768, ptr %3, align 4
  %6 = getelementptr inbounds i16, ptr %3, i32 1
  store i16 %5, ptr %6, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %7 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 4, ptr %7, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %9 = load i16, ptr %8, align 2
  store i16 %9, ptr %4, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  %11 = load i16, ptr %0, align 8
  %12 = and i16 %11, 16
  store i16 %12, ptr %10, align 2
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 8
  %16 = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %4, i32 noundef 1) #9
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = icmp sgt i32 %16, -1
  %20 = select i1 %19, i32 -5, i32 %16
  %21 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.4, i32 noundef 768, i32 noundef %20) #10
  br label %22

22:                                               ; preds = %18, %2
  %23 = phi i32 [ %20, %18 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @elan_i2c_calibrate(ptr noundef %0) #0 {
  %2 = alloca [2 x i16], align 4
  %3 = alloca %struct.i2c_msg, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i16 790, ptr %2, align 4
  %4 = getelementptr inbounds i16, ptr %2, i32 1
  store i16 1, ptr %4, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  %5 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 4, ptr %5, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %7 = load i16, ptr %6, align 2
  store i16 %7, ptr %3, align 4
  %8 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  %9 = load i16, ptr %0, align 8
  %10 = and i16 %9, 16
  store i16 %10, ptr %8, align 2
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %11, align 4
  %12 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 8
  %14 = call i32 @i2c_transfer(ptr noundef %13, ptr noundef nonnull %3, i32 noundef 1) #9
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = icmp sgt i32 %14, -1
  %18 = select i1 %17, i32 -5, i32 %14
  %19 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.4, i32 noundef 790, i32 noundef %18) #10
  br label %20

20:                                               ; preds = %16, %1
  %21 = phi i32 [ %18, %16 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @elan_i2c_calibrate_result(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca [1 x i16], align 2
  %4 = alloca [2 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i16 790, ptr %3, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  %5 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 16, i1 false) #9, !annotation !8
  %6 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %7 = load i16, ptr %6, align 2
  store i16 %7, ptr %4, align 4
  %8 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  %9 = load i16, ptr %0, align 8
  %10 = and i16 %9, 16
  store i16 %10, ptr %8, align 2
  store i16 2, ptr %5, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %11, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  store i16 %7, ptr %12, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  %14 = or i16 %10, 1
  store i16 %14, ptr %13, align 2
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 1, ptr %15, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %18 = load ptr, ptr %17, align 8
  %19 = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %4, i32 noundef 2) #9
  %20 = icmp eq i32 %19, 2
  %21 = icmp slt i32 %19, 0
  %22 = select i1 %21, i32 %19, i32 -5
  %23 = select i1 %20, i32 0, i32 %22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @elan_i2c_get_baseline_data(ptr noundef %0, i1 noundef zeroext %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca [1 x i16], align 2
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [3 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(3) %6, i8 0, i32 3, i1 false), !annotation !8
  %7 = select i1 %1, i16 791, i16 792
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #9
  store i16 %7, ptr %4, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %8 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 16, i1 false) #9, !annotation !8
  %9 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %10 = load i16, ptr %9, align 2
  store i16 %10, ptr %5, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  %12 = load i16, ptr %0, align 8
  %13 = and i16 %12, 16
  store i16 %13, ptr %11, align 2
  store i16 2, ptr %8, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %10, ptr %15, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  %17 = or i16 %13, 1
  store i16 %17, ptr %16, align 2
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 2, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %6, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %21 = load ptr, ptr %20, align 8
  %22 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %5, i32 noundef 2) #9
  %23 = icmp eq i32 %22, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  br i1 %23, label %29, label %24

24:                                               ; preds = %3
  %25 = icmp slt i32 %22, 0
  %26 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %27 = zext i16 %7 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.7, i32 noundef %27) #10
  %28 = select i1 %25, i32 %22, i32 -5
  br label %32

29:                                               ; preds = %3
  %30 = load i16, ptr %6, align 2
  %31 = trunc i16 %30 to i8
  store i8 %31, ptr %2, align 1
  br label %32

32:                                               ; preds = %29, %24
  %33 = phi i32 [ 0, %29 ], [ %28, %24 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %6) #9
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @elan_i2c_get_version(ptr noundef %0, i8 noundef zeroext %1, i1 noundef zeroext %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca [1 x i16], align 2
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %7) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %7, i8 0, i32 3, i1 false), !annotation !8
  %8 = icmp eq i8 %1, 0
  %9 = select i1 %8, i16 273, i16 272
  %10 = select i1 %2, i16 %9, i16 258
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #9
  store i16 %10, ptr %5, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #9
  %11 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %11, i8 0, i32 16, i1 false) #9, !annotation !8
  %12 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %13 = load i16, ptr %12, align 2
  store i16 %13, ptr %6, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  %15 = load i16, ptr %0, align 8
  %16 = and i16 %15, 16
  store i16 %16, ptr %14, align 2
  store i16 2, ptr %11, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  store i16 %13, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  %20 = or i16 %16, 1
  store i16 %20, ptr %19, align 2
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  store i16 2, ptr %21, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %7, ptr %22, align 4
  %23 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %24 = load ptr, ptr %23, align 8
  %25 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %6, i32 noundef 2) #9
  %26 = icmp eq i32 %25, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #9
  br i1 %26, label %33, label %27

27:                                               ; preds = %4
  %28 = icmp slt i32 %25, 0
  %29 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %30 = zext i16 %10 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.7, i32 noundef %30) #10
  %31 = select i1 %28, i32 %25, i32 -5
  %32 = select i1 %2, ptr @.str.9, ptr @.str.10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.8, ptr noundef nonnull %32, i32 noundef %31) #10
  br label %39

33:                                               ; preds = %4
  %34 = load i8, ptr %7, align 1
  %35 = getelementptr inbounds [3 x i8], ptr %7, i32 0, i32 1
  %36 = load i8, ptr %35, align 1
  %37 = select i1 %2, i8 %36, i8 %34
  %38 = select i1 %8, i8 %34, i8 %37
  store i8 %38, ptr %3, align 1
  br label %39

39:                                               ; preds = %33, %27
  %40 = phi i32 [ %31, %27 ], [ 0, %33 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %7) #9
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @elan_i2c_get_sm_version(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) #0 {
  %6 = alloca [1 x i16], align 2
  %7 = alloca [2 x %struct.i2c_msg], align 4
  %8 = alloca [1 x i16], align 2
  %9 = alloca [2 x %struct.i2c_msg], align 4
  %10 = alloca [1 x i16], align 2
  %11 = alloca [2 x %struct.i2c_msg], align 4
  %12 = alloca [1 x i16], align 2
  %13 = alloca [2 x %struct.i2c_msg], align 4
  %14 = alloca [1 x i16], align 2
  %15 = alloca [2 x %struct.i2c_msg], align 4
  %16 = alloca [3 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %16) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(3) %16, i8 0, i32 3, i1 false), !annotation !8
  %17 = icmp eq i8 %1, 0
  br i1 %17, label %63, label %18

18:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #9
  store i16 259, ptr %14, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #9
  %19 = getelementptr inbounds i8, ptr %15, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %19, i8 0, i32 16, i1 false) #9, !annotation !8
  %20 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %21 = load i16, ptr %20, align 2
  store i16 %21, ptr %15, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  %23 = load i16, ptr %0, align 8
  %24 = and i16 %23, 16
  store i16 %24, ptr %22, align 2
  store i16 2, ptr %19, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %25, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1
  store i16 %21, ptr %26, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 1
  %28 = or i16 %24, 1
  store i16 %28, ptr %27, align 2
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 2
  store i16 2, ptr %29, align 4
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 3
  store ptr %16, ptr %30, align 4
  %31 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %32 = load ptr, ptr %31, align 8
  %33 = call i32 @i2c_transfer(ptr noundef %32, ptr noundef nonnull %15, i32 noundef 2) #9
  %34 = icmp eq i32 %33, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #9
  br i1 %34, label %39, label %35

35:                                               ; preds = %18
  %36 = icmp slt i32 %33, 0
  %37 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.7, i32 noundef 259) #10
  %38 = select i1 %36, i32 %33, i32 -5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.11, i32 noundef %38) #10
  br label %128

39:                                               ; preds = %18
  %40 = load i16, ptr %16, align 2
  %41 = call i16 @llvm.bswap.i16(i16 %40) #9
  store i16 %41, ptr %2, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #9
  store i16 260, ptr %12, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #9
  %42 = getelementptr inbounds i8, ptr %13, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %42, i8 0, i32 16, i1 false) #9, !annotation !8
  %43 = load i16, ptr %20, align 2
  store i16 %43, ptr %13, align 4
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  %45 = load i16, ptr %0, align 8
  %46 = and i16 %45, 16
  store i16 %46, ptr %44, align 2
  store i16 2, ptr %42, align 4
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %47, align 4
  %48 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1
  store i16 %43, ptr %48, align 4
  %49 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 1
  %50 = or i16 %46, 1
  store i16 %50, ptr %49, align 2
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 2
  store i16 2, ptr %51, align 4
  %52 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 3
  store ptr %16, ptr %52, align 4
  %53 = load ptr, ptr %31, align 8
  %54 = call i32 @i2c_transfer(ptr noundef %53, ptr noundef nonnull %13, i32 noundef 2) #9
  %55 = icmp eq i32 %54, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #9
  br i1 %55, label %60, label %56

56:                                               ; preds = %39
  %57 = icmp slt i32 %54, 0
  %58 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.7, i32 noundef 260) #10
  %59 = select i1 %57, i32 %54, i32 -5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.12, i32 noundef %59) #10
  br label %128

60:                                               ; preds = %39
  %61 = getelementptr inbounds [3 x i8], ptr %16, i32 0, i32 1
  %62 = load i8, ptr %61, align 1
  store i8 %62, ptr %3, align 1
  br label %125

63:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #9
  store i16 259, ptr %10, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #9
  %64 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %64, i8 0, i32 16, i1 false) #9, !annotation !8
  %65 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %66 = load i16, ptr %65, align 2
  store i16 %66, ptr %11, align 4
  %67 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  %68 = load i16, ptr %0, align 8
  %69 = and i16 %68, 16
  store i16 %69, ptr %67, align 2
  store i16 2, ptr %64, align 4
  %70 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %70, align 4
  %71 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  store i16 %66, ptr %71, align 4
  %72 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  %73 = or i16 %69, 1
  store i16 %73, ptr %72, align 2
  %74 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  store i16 2, ptr %74, align 4
  %75 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr %16, ptr %75, align 4
  %76 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %77 = load ptr, ptr %76, align 8
  %78 = call i32 @i2c_transfer(ptr noundef %77, ptr noundef nonnull %11, i32 noundef 2) #9
  %79 = icmp eq i32 %78, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #9
  br i1 %79, label %84, label %80

80:                                               ; preds = %63
  %81 = icmp slt i32 %78, 0
  %82 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.7, i32 noundef 259) #10
  %83 = select i1 %81, i32 %78, i32 -5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.12, i32 noundef %83) #10
  br label %128

84:                                               ; preds = %63
  %85 = load i8, ptr %16, align 2
  store i8 %85, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #9
  store i16 272, ptr %8, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #9
  %86 = getelementptr inbounds i8, ptr %9, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %86, i8 0, i32 16, i1 false) #9, !annotation !8
  %87 = load i16, ptr %65, align 2
  store i16 %87, ptr %9, align 4
  %88 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  %89 = load i16, ptr %0, align 8
  %90 = and i16 %89, 16
  store i16 %90, ptr %88, align 2
  store i16 2, ptr %86, align 4
  %91 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %91, align 4
  %92 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1
  store i16 %87, ptr %92, align 4
  %93 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 1
  %94 = or i16 %90, 1
  store i16 %94, ptr %93, align 2
  %95 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 2
  store i16 2, ptr %95, align 4
  %96 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 3
  store ptr %16, ptr %96, align 4
  %97 = load ptr, ptr %76, align 8
  %98 = call i32 @i2c_transfer(ptr noundef %97, ptr noundef nonnull %9, i32 noundef 2) #9
  %99 = icmp eq i32 %98, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #9
  br i1 %99, label %104, label %100

100:                                              ; preds = %84
  %101 = icmp slt i32 %98, 0
  %102 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull @.str.7, i32 noundef 272) #10
  %103 = select i1 %101, i32 %98, i32 -5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull @.str.11, i32 noundef %103) #10
  br label %128

104:                                              ; preds = %84
  %105 = load i8, ptr %16, align 2
  %106 = zext i8 %105 to i16
  store i16 %106, ptr %2, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #9
  store i16 260, ptr %6, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #9
  %107 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %107, i8 0, i32 16, i1 false) #9, !annotation !8
  %108 = load i16, ptr %65, align 2
  store i16 %108, ptr %7, align 4
  %109 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  %110 = load i16, ptr %0, align 8
  %111 = and i16 %110, 16
  store i16 %111, ptr %109, align 2
  store i16 2, ptr %107, align 4
  %112 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %112, align 4
  %113 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1
  store i16 %108, ptr %113, align 4
  %114 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 1
  %115 = or i16 %111, 1
  store i16 %115, ptr %114, align 2
  %116 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 2
  store i16 2, ptr %116, align 4
  %117 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 3
  store ptr %16, ptr %117, align 4
  %118 = load ptr, ptr %76, align 8
  %119 = call i32 @i2c_transfer(ptr noundef %118, ptr noundef nonnull %7, i32 noundef 2) #9
  %120 = icmp eq i32 %119, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #9
  br i1 %120, label %125, label %121

121:                                              ; preds = %104
  %122 = icmp slt i32 %119, 0
  %123 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %123, ptr noundef nonnull @.str.7, i32 noundef 260) #10
  %124 = select i1 %122, i32 %119, i32 -5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %123, ptr noundef nonnull @.str.12, i32 noundef %124) #10
  br label %128

125:                                              ; preds = %104, %60
  %126 = load i8, ptr %16, align 2
  %127 = and i8 %126, 16
  store i8 %127, ptr %4, align 1
  br label %128

128:                                              ; preds = %125, %121, %100, %80, %56, %35
  %129 = phi i32 [ %38, %35 ], [ %59, %56 ], [ 0, %125 ], [ %83, %80 ], [ %103, %100 ], [ %124, %121 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %16) #9
  ret i32 %129
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @elan_i2c_get_checksum(ptr noundef %0, i1 noundef zeroext %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca [1 x i16], align 2
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [3 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(3) %6, i8 0, i32 3, i1 false), !annotation !8
  %7 = select i1 %1, i16 789, i16 783
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #9
  store i16 %7, ptr %4, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %8 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 16, i1 false) #9, !annotation !8
  %9 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %10 = load i16, ptr %9, align 2
  store i16 %10, ptr %5, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  %12 = load i16, ptr %0, align 8
  %13 = and i16 %12, 16
  store i16 %13, ptr %11, align 2
  store i16 2, ptr %8, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %10, ptr %15, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  %17 = or i16 %13, 1
  store i16 %17, ptr %16, align 2
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 2, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %6, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %21 = load ptr, ptr %20, align 8
  %22 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %5, i32 noundef 2) #9
  %23 = icmp eq i32 %22, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  br i1 %23, label %30, label %24

24:                                               ; preds = %3
  %25 = icmp slt i32 %22, 0
  %26 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %27 = zext i16 %7 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.7, i32 noundef %27) #10
  %28 = select i1 %25, i32 %22, i32 -5
  %29 = select i1 %1, ptr @.str.9, ptr @.str.10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.13, ptr noundef nonnull %29, i32 noundef %28) #10
  br label %32

30:                                               ; preds = %3
  %31 = load i16, ptr %6, align 2
  store i16 %31, ptr %2, align 2
  br label %32

32:                                               ; preds = %30, %24
  %33 = phi i32 [ %28, %24 ], [ 0, %30 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %6) #9
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @elan_i2c_get_product_id(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i16], align 2
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca [3 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(3) %5, i8 0, i32 3, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i16 257, ptr %3, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  %6 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 16, i1 false) #9, !annotation !8
  %7 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %8 = load i16, ptr %7, align 2
  store i16 %8, ptr %4, align 4
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  %10 = load i16, ptr %0, align 8
  %11 = and i16 %10, 16
  store i16 %11, ptr %9, align 2
  store i16 2, ptr %6, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %12, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  store i16 %8, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  %15 = or i16 %11, 1
  store i16 %15, ptr %14, align 2
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 2, ptr %16, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %5, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 8
  %20 = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %4, i32 noundef 2) #9
  %21 = icmp eq i32 %20, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = icmp slt i32 %20, 0
  %24 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.7, i32 noundef 257) #10
  %25 = select i1 %23, i32 %20, i32 -5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.14, i32 noundef %25) #10
  br label %28

26:                                               ; preds = %2
  %27 = load i16, ptr %5, align 2
  store i16 %27, ptr %1, align 2
  br label %28

28:                                               ; preds = %26, %22
  %29 = phi i32 [ %25, %22 ], [ 0, %26 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #9
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @elan_i2c_get_max(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca [1 x i16], align 2
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [1 x i16], align 2
  %7 = alloca [2 x %struct.i2c_msg], align 4
  %8 = alloca [3 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %8) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(3) %8, i8 0, i32 3, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #9
  store i16 262, ptr %6, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #9
  %9 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %9, i8 0, i32 16, i1 false) #9, !annotation !8
  %10 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %11 = load i16, ptr %10, align 2
  store i16 %11, ptr %7, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  %13 = load i16, ptr %0, align 8
  %14 = and i16 %13, 16
  store i16 %14, ptr %12, align 2
  store i16 2, ptr %9, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %15, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1
  store i16 %11, ptr %16, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 1
  %18 = or i16 %14, 1
  store i16 %18, ptr %17, align 2
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 2
  store i16 2, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 3
  store ptr %8, ptr %20, align 4
  %21 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %22 = load ptr, ptr %21, align 8
  %23 = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %7, i32 noundef 2) #9
  %24 = icmp eq i32 %23, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #9
  br i1 %24, label %29, label %25

25:                                               ; preds = %3
  %26 = icmp slt i32 %23, 0
  %27 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.7, i32 noundef 262) #10
  %28 = select i1 %26, i32 %23, i32 -5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.15, i32 noundef %28) #10
  br label %53

29:                                               ; preds = %3
  %30 = load i16, ptr %8, align 2
  %31 = zext i16 %30 to i32
  store i32 %31, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #9
  store i16 263, ptr %4, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %32 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %32, i8 0, i32 16, i1 false) #9, !annotation !8
  %33 = load i16, ptr %10, align 2
  store i16 %33, ptr %5, align 4
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  %35 = load i16, ptr %0, align 8
  %36 = and i16 %35, 16
  store i16 %36, ptr %34, align 2
  store i16 2, ptr %32, align 4
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %37, align 4
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %33, ptr %38, align 4
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  %40 = or i16 %36, 1
  store i16 %40, ptr %39, align 2
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 2, ptr %41, align 4
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %8, ptr %42, align 4
  %43 = load ptr, ptr %21, align 8
  %44 = call i32 @i2c_transfer(ptr noundef %43, ptr noundef nonnull %5, i32 noundef 2) #9
  %45 = icmp eq i32 %44, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  br i1 %45, label %50, label %46

46:                                               ; preds = %29
  %47 = icmp slt i32 %44, 0
  %48 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.7, i32 noundef 263) #10
  %49 = select i1 %47, i32 %44, i32 -5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.16, i32 noundef %49) #10
  br label %53

50:                                               ; preds = %29
  %51 = load i16, ptr %8, align 2
  %52 = zext i16 %51 to i32
  store i32 %52, ptr %2, align 4
  br label %53

53:                                               ; preds = %50, %46, %25
  %54 = phi i32 [ %28, %25 ], [ %49, %46 ], [ 0, %50 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %8) #9
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @elan_i2c_get_resolution(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca [1 x i16], align 2
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %6, i8 0, i32 3, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #9
  store i16 264, ptr %4, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %7 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 16, i1 false) #9, !annotation !8
  %8 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %9 = load i16, ptr %8, align 2
  store i16 %9, ptr %5, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  %11 = load i16, ptr %0, align 8
  %12 = and i16 %11, 16
  store i16 %12, ptr %10, align 2
  store i16 2, ptr %7, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %9, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  %16 = or i16 %12, 1
  store i16 %16, ptr %15, align 2
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 2, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %6, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %20 = load ptr, ptr %19, align 8
  %21 = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %5, i32 noundef 2) #9
  %22 = icmp eq i32 %21, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  br i1 %22, label %27, label %23

23:                                               ; preds = %3
  %24 = icmp slt i32 %21, 0
  %25 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.7, i32 noundef 264) #10
  %26 = select i1 %24, i32 %21, i32 -5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.17, i32 noundef %26) #10
  br label %31

27:                                               ; preds = %3
  %28 = load i8, ptr %6, align 1
  store i8 %28, ptr %1, align 1
  %29 = getelementptr inbounds [3 x i8], ptr %6, i32 0, i32 1
  %30 = load i8, ptr %29, align 1
  store i8 %30, ptr %2, align 1
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi i32 [ %26, %23 ], [ 0, %27 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %6) #9
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @elan_i2c_get_num_traces(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca [1 x i16], align 2
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %6, i8 0, i32 3, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #9
  store i16 261, ptr %4, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %7 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 16, i1 false) #9, !annotation !8
  %8 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %9 = load i16, ptr %8, align 2
  store i16 %9, ptr %5, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  %11 = load i16, ptr %0, align 8
  %12 = and i16 %11, 16
  store i16 %12, ptr %10, align 2
  store i16 2, ptr %7, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %9, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  %16 = or i16 %12, 1
  store i16 %16, ptr %15, align 2
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 2, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %6, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %20 = load ptr, ptr %19, align 8
  %21 = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %5, i32 noundef 2) #9
  %22 = icmp eq i32 %21, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  br i1 %22, label %27, label %23

23:                                               ; preds = %3
  %24 = icmp slt i32 %21, 0
  %25 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.7, i32 noundef 261) #10
  %26 = select i1 %24, i32 %21, i32 -5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.18, i32 noundef %26) #10
  br label %33

27:                                               ; preds = %3
  %28 = load i8, ptr %6, align 1
  %29 = zext i8 %28 to i32
  store i32 %29, ptr %1, align 4
  %30 = getelementptr inbounds [3 x i8], ptr %6, i32 0, i32 1
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  store i32 %32, ptr %2, align 4
  br label %33

33:                                               ; preds = %27, %23
  %34 = phi i32 [ %26, %23 ], [ 0, %27 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %6) #9
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @elan_i2c_iap_get_mode(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i16], align 2
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca [3 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(3) %5, i8 0, i32 3, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i16 784, ptr %3, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  %6 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 16, i1 false) #9, !annotation !8
  %7 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %8 = load i16, ptr %7, align 2
  store i16 %8, ptr %4, align 4
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  %10 = load i16, ptr %0, align 8
  %11 = and i16 %10, 16
  store i16 %11, ptr %9, align 2
  store i16 2, ptr %6, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %12, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  store i16 %8, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  %15 = or i16 %11, 1
  store i16 %15, ptr %14, align 2
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 2, ptr %16, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %5, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 8
  %20 = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %4, i32 noundef 2) #9
  %21 = icmp eq i32 %20, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = icmp slt i32 %20, 0
  %24 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.7, i32 noundef 784) #10
  %25 = select i1 %23, i32 %20, i32 -5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.19, i32 noundef %25) #10
  br label %31

26:                                               ; preds = %2
  %27 = load i16, ptr %5, align 2
  %28 = and i16 %27, 512
  %29 = icmp eq i16 %28, 0
  %30 = select i1 %29, i32 1, i32 2
  store i32 %30, ptr %1, align 4
  br label %31

31:                                               ; preds = %26, %22
  %32 = phi i32 [ %25, %22 ], [ 0, %26 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #9
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @elan_i2c_iap_reset(ptr noundef %0) #0 {
  %2 = alloca [2 x i16], align 4
  %3 = alloca %struct.i2c_msg, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i16 788, ptr %2, align 4
  %4 = getelementptr inbounds i16, ptr %2, i32 1
  store i16 -3856, ptr %4, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  %5 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 4, ptr %5, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %7 = load i16, ptr %6, align 2
  store i16 %7, ptr %3, align 4
  %8 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  %9 = load i16, ptr %0, align 8
  %10 = and i16 %9, 16
  store i16 %10, ptr %8, align 2
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %11, align 4
  %12 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 8
  %14 = call i32 @i2c_transfer(ptr noundef %13, ptr noundef nonnull %3, i32 noundef 1) #9
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  br label %21

17:                                               ; preds = %1
  %18 = icmp sgt i32 %14, -1
  %19 = select i1 %18, i32 -5, i32 %14
  %20 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.4, i32 noundef 788, i32 noundef %19) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.20, i32 noundef %19) #10
  br label %21

21:                                               ; preds = %17, %16
  %22 = phi i32 [ %19, %17 ], [ 0, %16 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @elan_i2c_prepare_fw_update(ptr noundef %0, i16 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext %3) #0 {
  %5 = alloca [2 x i16], align 4
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [2 x i16], align 4
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [2 x i16], align 4
  %10 = alloca %struct.i2c_msg, align 4
  %11 = alloca i32, align 4
  %12 = alloca [3 x i8], align 2
  %13 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #9
  store i32 0, ptr %11, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %12) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(3) %12, i8 0, i32 3, i1 false), !annotation !8
  %14 = call i32 @elan_i2c_iap_get_mode(ptr noundef %0, ptr noundef nonnull %11)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %91

16:                                               ; preds = %4
  %17 = load i32, ptr %11, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %36

19:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #9
  store i16 788, ptr %9, align 4
  %20 = getelementptr inbounds i16, ptr %9, i32 1
  store i16 -3856, ptr %20, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #9
  %21 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 4, ptr %21, align 4, !annotation !8
  %22 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %23 = load i16, ptr %22, align 2
  store i16 %23, ptr %10, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  %25 = load i16, ptr %0, align 8
  %26 = and i16 %25, 16
  store i16 %26, ptr %24, align 2
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %9, ptr %27, align 4
  %28 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %29 = load ptr, ptr %28, align 8
  %30 = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %10, i32 noundef 1) #9
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #9
  call void @msleep(i32 noundef 30) #9
  br label %36

33:                                               ; preds = %19
  %34 = icmp sgt i32 %30, -1
  %35 = select i1 %34, i32 -5, i32 %30
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.4, i32 noundef 788, i32 noundef %35) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.20, i32 noundef %35) #10
  br label %91

36:                                               ; preds = %32, %16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store i16 785, ptr %7, align 4
  %37 = getelementptr inbounds i16, ptr %7, i32 1
  store i16 7845, ptr %37, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #9
  %38 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 4, ptr %38, align 4, !annotation !8
  %39 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %40 = load i16, ptr %39, align 2
  store i16 %40, ptr %8, align 4
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  %42 = load i16, ptr %0, align 8
  %43 = and i16 %42, 16
  store i16 %43, ptr %41, align 2
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %44, align 4
  %45 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %46 = load ptr, ptr %45, align 8
  %47 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %8, i32 noundef 1) #9
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %54

49:                                               ; preds = %36
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  %50 = icmp eq i32 %17, 2
  %51 = select i1 %50, i32 100, i32 30
  call void @msleep(i32 noundef %51) #9
  %52 = call i32 @elan_i2c_iap_get_mode(ptr noundef %0, ptr noundef nonnull %11)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %91

54:                                               ; preds = %36
  %55 = icmp sgt i32 %47, -1
  %56 = select i1 %55, i32 -5, i32 %47
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.4, i32 noundef 785, i32 noundef %56) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.24, i32 noundef %56) #10
  br label %91

57:                                               ; preds = %49
  %58 = load i32, ptr %11, align 4
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.21, i32 noundef 2) #10
  br label %91

61:                                               ; preds = %57
  %62 = icmp ugt i16 %1, 12
  %63 = icmp ne i8 %2, 0
  %64 = and i1 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = call fastcc i32 @elan_read_write_iap_type(ptr noundef %0, i16 noundef zeroext %3)
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %91

68:                                               ; preds = %65, %61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i16 785, ptr %5, align 4
  %69 = getelementptr inbounds i16, ptr %5, i32 1
  store i16 7845, ptr %69, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  %70 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 4, ptr %70, align 4, !annotation !8
  %71 = load i16, ptr %39, align 2
  store i16 %71, ptr %6, align 4
  %72 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  %73 = load i16, ptr %0, align 8
  %74 = and i16 %73, 16
  store i16 %74, ptr %72, align 2
  %75 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %75, align 4
  %76 = load ptr, ptr %45, align 8
  %77 = call i32 @i2c_transfer(ptr noundef %76, ptr noundef nonnull %6, i32 noundef 1) #9
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %82

79:                                               ; preds = %68
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @msleep(i32 noundef 30) #9
  %80 = call fastcc i32 @elan_i2c_read_cmd(ptr noundef %0, i16 noundef zeroext 785, ptr noundef nonnull %12)
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %86, label %85

82:                                               ; preds = %68
  %83 = icmp sgt i32 %77, -1
  %84 = select i1 %83, i32 -5, i32 %77
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.4, i32 noundef 785, i32 noundef %84) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.24, i32 noundef %84) #10
  br label %91

85:                                               ; preds = %79
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.22, i32 noundef %80) #10
  br label %91

86:                                               ; preds = %79
  %87 = load i16, ptr %12, align 2
  %88 = icmp eq i16 %87, 7845
  br i1 %88, label %91, label %89

89:                                               ; preds = %86
  %90 = zext i16 %87 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.23, i32 noundef %90) #10
  br label %91

91:                                               ; preds = %89, %86, %85, %82, %65, %60, %54, %49, %33, %4
  %92 = phi i32 [ -5, %60 ], [ %80, %85 ], [ -5, %89 ], [ %14, %4 ], [ %35, %33 ], [ %56, %54 ], [ %52, %49 ], [ %66, %65 ], [ %84, %82 ], [ 0, %86 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #9
  ret i32 %92
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @elan_i2c_write_fw_block(ptr noundef %0, i16 noundef zeroext %1, ptr nocapture noundef readonly %2, i16 noundef zeroext %3, i32 noundef %4) #0 {
  %6 = alloca [1 x i16], align 2
  %7 = alloca [2 x %struct.i2c_msg], align 4
  %8 = alloca [3 x i8], align 2
  %9 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %8) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(3) %8, i8 0, i32 3, i1 false), !annotation !8
  %10 = zext i16 %1 to i32
  %11 = add nuw nsw i32 %10, 4
  %12 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %11, i32 noundef 3264) #11
  %13 = icmp eq ptr %12, null
  br i1 %13, label %54, label %14

14:                                               ; preds = %5
  store i8 1, ptr %12, align 64
  %15 = getelementptr i8, ptr %12, i32 1
  store i8 6, ptr %15, align 1
  %16 = getelementptr i8, ptr %12, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %16, ptr align 1 %2, i32 %10, i1 false)
  %17 = add nuw nsw i32 %10, 2
  %18 = getelementptr i8, ptr %12, i32 %17
  store i16 %3, ptr %18, align 1
  %19 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %0, ptr noundef nonnull %12, i32 noundef %11, i16 noundef zeroext 0) #9
  %20 = icmp eq i32 %19, %11
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = icmp slt i32 %19, 0
  %23 = select i1 %22, i32 %19, i32 -5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.28, i32 noundef %4, i32 noundef %23) #10
  br label %52

24:                                               ; preds = %14
  %25 = icmp eq i16 %1, 512
  %26 = select i1 %25, i32 50, i32 35
  tail call void @msleep(i32 noundef %26) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #9
  store i16 784, ptr %6, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #9
  %27 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %27, i8 0, i32 16, i1 false) #9, !annotation !8
  %28 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %29 = load i16, ptr %28, align 2
  store i16 %29, ptr %7, align 4
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  %31 = load i16, ptr %0, align 8
  %32 = and i16 %31, 16
  store i16 %32, ptr %30, align 2
  store i16 2, ptr %27, align 4
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %33, align 4
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1
  store i16 %29, ptr %34, align 4
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 1
  %36 = or i16 %32, 1
  store i16 %36, ptr %35, align 2
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 2
  store i16 2, ptr %37, align 4
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 3
  store ptr %8, ptr %38, align 4
  %39 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %40 = load ptr, ptr %39, align 8
  %41 = call i32 @i2c_transfer(ptr noundef %40, ptr noundef nonnull %7, i32 noundef 2) #9
  %42 = icmp eq i32 %41, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #9
  br i1 %42, label %46, label %43

43:                                               ; preds = %24
  %44 = icmp slt i32 %41, 0
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.7, i32 noundef 784) #10
  %45 = select i1 %44, i32 %41, i32 -5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.29, i32 noundef %45) #10
  br label %52

46:                                               ; preds = %24
  %47 = load i16, ptr %8, align 2
  %48 = zext i16 %47 to i32
  %49 = and i32 %48, 48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.30, i32 noundef %48) #10
  br label %52

52:                                               ; preds = %51, %46, %43, %21
  %53 = phi i32 [ %23, %21 ], [ %45, %43 ], [ -5, %51 ], [ 0, %46 ]
  call void @kfree(ptr noundef nonnull %12) #9
  br label %54

54:                                               ; preds = %52, %5
  %55 = phi i32 [ %53, %52 ], [ -12, %5 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %8) #9
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @elan_i2c_finish_fw_update(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [2 x i16], align 4
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [39 x i8], align 1
  %6 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 39, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(39) %5, i8 0, i32 39, i1 false), !annotation !8
  %7 = call i32 @i2c_transfer_buffer_flags(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 39, i16 noundef zeroext 1) #9
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = icmp eq i32 %7, 0
  %11 = select i1 %10, i32 -5, i32 %7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.31, i32 noundef %11, i32 noundef %7) #10
  br label %12

12:                                               ; preds = %9, %2
  store i32 0, ptr %1, align 4
  %13 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  call void @enable_irq(i32 noundef %14) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i16 5, ptr %3, align 4
  %15 = getelementptr inbounds i16, ptr %3, i32 1
  store i16 256, ptr %15, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %16 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 4, ptr %16, align 4, !annotation !8
  %17 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %18 = load i16, ptr %17, align 2
  store i16 %18, ptr %4, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  %20 = load i16, ptr %0, align 8
  %21 = and i16 %20, 16
  store i16 %21, ptr %19, align 2
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %22, align 4
  %23 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %24 = load ptr, ptr %23, align 8
  %25 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %4, i32 noundef 1) #9
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %30

27:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  %28 = call i32 @wait_for_completion_timeout(ptr noundef %1, i32 noundef 30) #9
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %37

30:                                               ; preds = %12
  %31 = icmp sgt i32 %25, -1
  %32 = select i1 %31, i32 -5, i32 %25
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.4, i32 noundef 5, i32 noundef %32) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str, i32 noundef %32) #10
  br label %34

33:                                               ; preds = %27
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.32) #10
  br label %34

34:                                               ; preds = %33, %30
  %35 = phi i32 [ -110, %33 ], [ %32, %30 ]
  %36 = load i32, ptr %13, align 4
  call void @disable_irq(i32 noundef %36) #9
  br label %44

37:                                               ; preds = %27
  %38 = load i32, ptr %13, align 4
  call void @disable_irq(i32 noundef %38) #9
  %39 = call i32 @i2c_transfer_buffer_flags(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 2, i16 noundef zeroext 1) #9
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = icmp slt i32 %39, 0
  %43 = select i1 %42, i32 %39, i32 -5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.33, i32 noundef %43, i32 noundef %39) #10
  br label %44

44:                                               ; preds = %41, %37, %34
  %45 = phi i32 [ %43, %41 ], [ 0, %37 ], [ %35, %34 ]
  call void @llvm.lifetime.end.p0(i64 39, ptr nonnull %5) #9
  ret i32 %45
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @elan_i2c_get_report_features(ptr nocapture noundef readnone %0, i8 noundef zeroext %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #1 {
  store i32 1, ptr %2, align 4
  %5 = icmp ult i8 %1, 2
  %6 = select i1 %5, i32 34, i32 39
  store i32 %6, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @elan_i2c_get_report(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext 1) #9
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.34, i32 noundef %4) #10
  br label %12

8:                                                ; preds = %3
  %9 = icmp eq i32 %4, %2
  br i1 %9, label %12, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.35, i32 noundef %4, i32 noundef %2) #10
  br label %12

12:                                               ; preds = %10, %8, %6
  %13 = phi i32 [ %4, %6 ], [ -5, %10 ], [ 0, %8 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @elan_i2c_get_pressure_adjustment(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i16], align 2
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %5, i8 0, i32 3, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i16 266, ptr %3, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  %6 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 16, i1 false) #9, !annotation !8
  %7 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %8 = load i16, ptr %7, align 2
  store i16 %8, ptr %4, align 4
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  %10 = load i16, ptr %0, align 8
  %11 = and i16 %10, 16
  store i16 %11, ptr %9, align 2
  store i16 2, ptr %6, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %12, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  store i16 %8, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  %15 = or i16 %11, 1
  store i16 %15, ptr %14, align 2
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 2, ptr %16, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %5, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 8
  %20 = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %4, i32 noundef 2) #9
  %21 = icmp eq i32 %20, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = icmp slt i32 %20, 0
  %24 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.7, i32 noundef 266) #10
  %25 = select i1 %23, i32 %20, i32 -5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.36, i32 noundef %25) #10
  br label %31

26:                                               ; preds = %2
  %27 = load i8, ptr %5, align 1
  %28 = and i8 %27, 16
  %29 = icmp eq i8 %28, 0
  %30 = select i1 %29, i32 25, i32 0
  store i32 %30, ptr %1, align 4
  br label %31

31:                                               ; preds = %26, %22
  %32 = phi i32 [ %25, %22 ], [ 0, %26 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #9
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @elan_i2c_get_pattern(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i16], align 2
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %5, i8 0, i32 3, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i16 256, ptr %3, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  %6 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 16, i1 false) #9, !annotation !8
  %7 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %8 = load i16, ptr %7, align 2
  store i16 %8, ptr %4, align 4
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  %10 = load i16, ptr %0, align 8
  %11 = and i16 %10, 16
  store i16 %11, ptr %9, align 2
  store i16 2, ptr %6, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %12, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  store i16 %8, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  %15 = or i16 %11, 1
  store i16 %15, ptr %14, align 2
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 2, ptr %16, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %5, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 8
  %20 = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %4, i32 noundef 2) #9
  %21 = icmp eq i32 %20, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = icmp slt i32 %20, 0
  %24 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.7, i32 noundef 256) #10
  %25 = select i1 %23, i32 %20, i32 -5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.37, i32 noundef %25) #10
  br label %34

26:                                               ; preds = %2
  %27 = load i8, ptr %5, align 1
  %28 = icmp eq i8 %27, -1
  %29 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 1
  %30 = load i8, ptr %29, align 1
  %31 = icmp eq i8 %30, -1
  %32 = select i1 %28, i1 %31, i1 false
  %33 = select i1 %32, i8 0, i8 %30
  store i8 %33, ptr %1, align 1
  br label %34

34:                                               ; preds = %26, %22
  %35 = phi i32 [ %25, %22 ], [ 0, %26 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #9
  ret i32 %35
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @elan_i2c_read_cmd(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [1 x i16], align 2
  %5 = alloca [2 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #9
  store i16 %1, ptr %4, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %6 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 16, i1 false) #9, !annotation !8
  %7 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %8 = load i16, ptr %7, align 2
  store i16 %8, ptr %5, align 4
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  %10 = load i16, ptr %0, align 8
  %11 = and i16 %10, 16
  store i16 %11, ptr %9, align 2
  store i16 2, ptr %6, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %12, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %8, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  %15 = or i16 %11, 1
  store i16 %15, ptr %14, align 2
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 2, ptr %16, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %2, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 8
  %20 = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %5, i32 noundef 2) #9
  %21 = icmp eq i32 %20, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  br i1 %21, label %27, label %22

22:                                               ; preds = %3
  %23 = icmp slt i32 %20, 0
  %24 = select i1 %23, i32 %20, i32 -5
  %25 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %26 = zext i16 %1 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.7, i32 noundef %26) #10
  br label %27

27:                                               ; preds = %22, %3
  %28 = phi i32 [ %24, %22 ], [ 0, %3 ]
  ret i32 %28
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @elan_read_write_iap_type(ptr noundef %0, i16 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca [1 x i16], align 2
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca [2 x i16], align 4
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [3 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %7) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(3) %7, i8 0, i32 3, i1 false), !annotation !8
  %8 = lshr i16 %1, 1
  %9 = getelementptr inbounds i16, ptr %5, i32 1
  %10 = getelementptr inbounds i8, ptr %6, i32 4
  %11 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  %14 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %15 = getelementptr inbounds i8, ptr %4, i32 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i16 772, ptr %5, align 4
  store i16 %8, ptr %9, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  store i32 4, ptr %10, align 4, !annotation !8
  %22 = load i16, ptr %11, align 2
  store i16 %22, ptr %6, align 4
  %23 = load i16, ptr %0, align 8
  %24 = and i16 %23, 16
  store i16 %24, ptr %12, align 2
  store ptr %5, ptr %13, align 4
  %25 = load ptr, ptr %14, align 8
  %26 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %6, i32 noundef 1) #9
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %36

28:                                               ; preds = %2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i16 772, ptr %3, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %15, i8 0, i32 16, i1 false) #9, !annotation !8
  %29 = load i16, ptr %11, align 2
  store i16 %29, ptr %4, align 4
  %30 = load i16, ptr %0, align 8
  %31 = and i16 %30, 16
  store i16 %31, ptr %16, align 2
  store i16 2, ptr %15, align 4
  store ptr %3, ptr %17, align 4
  store i16 %29, ptr %18, align 4
  %32 = or i16 %31, 1
  store i16 %32, ptr %19, align 2
  store i16 2, ptr %20, align 4
  store ptr %7, ptr %21, align 4
  %33 = load ptr, ptr %14, align 8
  %34 = call i32 @i2c_transfer(ptr noundef %33, ptr noundef nonnull %4, i32 noundef 2) #9
  %35 = icmp eq i32 %34, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  br i1 %35, label %46, label %41

36:                                               ; preds = %67, %49, %2
  %37 = phi i32 [ %26, %2 ], [ %54, %49 ], [ %72, %67 ]
  %38 = icmp sgt i32 %37, -1
  %39 = select i1 %38, i32 -5, i32 %37
  %40 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.4, i32 noundef 772, i32 noundef %39) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.25, i32 noundef %39) #10
  br label %87

41:                                               ; preds = %74, %56, %28
  %42 = phi i32 [ %34, %28 ], [ %62, %56 ], [ %80, %74 ]
  %43 = icmp slt i32 %42, 0
  %44 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.7, i32 noundef 772) #10
  %45 = select i1 %43, i32 %42, i32 -5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.26, i32 noundef %45) #10
  br label %87

46:                                               ; preds = %28
  %47 = load i16, ptr %7, align 2
  %48 = icmp eq i16 %47, %8
  br i1 %48, label %87, label %49

49:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i16 772, ptr %5, align 4
  store i16 %8, ptr %9, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  store i32 4, ptr %10, align 4, !annotation !8
  %50 = load i16, ptr %11, align 2
  store i16 %50, ptr %6, align 4
  %51 = load i16, ptr %0, align 8
  %52 = and i16 %51, 16
  store i16 %52, ptr %12, align 2
  store ptr %5, ptr %13, align 4
  %53 = load ptr, ptr %14, align 8
  %54 = call i32 @i2c_transfer(ptr noundef %53, ptr noundef nonnull %6, i32 noundef 1) #9
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %36

56:                                               ; preds = %49
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i16 772, ptr %3, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %15, i8 0, i32 16, i1 false) #9, !annotation !8
  %57 = load i16, ptr %11, align 2
  store i16 %57, ptr %4, align 4
  %58 = load i16, ptr %0, align 8
  %59 = and i16 %58, 16
  store i16 %59, ptr %16, align 2
  store i16 2, ptr %15, align 4
  store ptr %3, ptr %17, align 4
  store i16 %57, ptr %18, align 4
  %60 = or i16 %59, 1
  store i16 %60, ptr %19, align 2
  store i16 2, ptr %20, align 4
  store ptr %7, ptr %21, align 4
  %61 = load ptr, ptr %14, align 8
  %62 = call i32 @i2c_transfer(ptr noundef %61, ptr noundef nonnull %4, i32 noundef 2) #9
  %63 = icmp eq i32 %62, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  br i1 %63, label %64, label %41

64:                                               ; preds = %56
  %65 = load i16, ptr %7, align 2
  %66 = icmp eq i16 %65, %8
  br i1 %66, label %87, label %67

67:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i16 772, ptr %5, align 4
  store i16 %8, ptr %9, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  store i32 4, ptr %10, align 4, !annotation !8
  %68 = load i16, ptr %11, align 2
  store i16 %68, ptr %6, align 4
  %69 = load i16, ptr %0, align 8
  %70 = and i16 %69, 16
  store i16 %70, ptr %12, align 2
  store ptr %5, ptr %13, align 4
  %71 = load ptr, ptr %14, align 8
  %72 = call i32 @i2c_transfer(ptr noundef %71, ptr noundef nonnull %6, i32 noundef 1) #9
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %36

74:                                               ; preds = %67
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i16 772, ptr %3, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %15, i8 0, i32 16, i1 false) #9, !annotation !8
  %75 = load i16, ptr %11, align 2
  store i16 %75, ptr %4, align 4
  %76 = load i16, ptr %0, align 8
  %77 = and i16 %76, 16
  store i16 %77, ptr %16, align 2
  store i16 2, ptr %15, align 4
  store ptr %3, ptr %17, align 4
  store i16 %75, ptr %18, align 4
  %78 = or i16 %77, 1
  store i16 %78, ptr %19, align 2
  store i16 2, ptr %20, align 4
  store ptr %7, ptr %21, align 4
  %79 = load ptr, ptr %14, align 8
  %80 = call i32 @i2c_transfer(ptr noundef %79, ptr noundef nonnull %4, i32 noundef 2) #9
  %81 = icmp eq i32 %80, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  br i1 %81, label %82, label %41

82:                                               ; preds = %74
  %83 = load i16, ptr %7, align 2
  %84 = icmp eq i16 %83, %8
  br i1 %84, label %87, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.27) #10
  br label %87

87:                                               ; preds = %85, %82, %64, %46, %41, %36
  %88 = phi i32 [ %39, %36 ], [ %45, %41 ], [ -5, %85 ], [ 0, %82 ], [ 0, %64 ], [ 0, %46 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %7) #9
  ret i32 %88
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

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
