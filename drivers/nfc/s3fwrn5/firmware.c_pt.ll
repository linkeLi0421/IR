; ModuleID = '/llk/IR/drivers/nfc/s3fwrn5/firmware.c_pt.bc'
source_filename = "../drivers/nfc/s3fwrn5/firmware.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon.94 = type { [4 x i8], i32 }
%struct.lock_class_key = type {}
%struct.s3fwrn5_fw_info = type { ptr, %struct.s3fwrn5_fw_image, [33 x i8], ptr, i32, i32, i32, %struct.completion, ptr, i8 }
%struct.s3fwrn5_fw_image = type { ptr, [13 x i8], i32, ptr, i32, ptr, i32, ptr, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.nfc_dev = type { i32, i32, ptr, i32, i32, %struct.device, i8, i8, i8, i8, ptr, i8, %struct.nfc_genl_data, i32, %struct.list_head, i32, i32, %struct.timer_list, %struct.work_struct, i8, ptr, ptr, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.nfc_genl_data = type { i32, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.s3fwrn5_phy_ops = type { ptr, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon.67, %union.anon.70, %union.anon.71, [48 x i8], %union.anon.72, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.74, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.67 = type { %struct.anon.68 }
%struct.anon.68 = type { ptr, ptr, %union.anon.69 }
%union.anon.69 = type { ptr }
%union.anon.70 = type { ptr }
%union.anon.71 = type { i64 }
%union.anon.72 = type { %struct.anon.73 }
%struct.anon.73 = type { i32, ptr }
%union.anon.74 = type { %struct.anon.75 }
%struct.anon.75 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.76, i32, i32, i32, i16, i16, %union.anon.78, %union.anon.79, %union.anon.80, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.76 = type { i32 }
%union.anon.78 = type { i32 }
%union.anon.79 = type { i32 }
%union.anon.80 = type { i16 }
%struct.s3fwrn5_fw_header = type { i8, i8, i16 }
%struct.s3fwrn5_fw_version = type { i8, i8, i8, i8 }
%struct.crypto_shash = type { i32, [60 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.nci_dev = type { ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, %struct.atomic_t, i8, %struct.list_head, ptr, %struct.timer_list, %struct.timer_list, ptr, %struct.work_struct, ptr, %struct.work_struct, ptr, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.mutex, %struct.completion, i32, i32, ptr, i32, i32, [10 x %struct.nfc_target], i32, i8, i32, i8, [4 x i8], i8, i16, i8, i16, i8, i32, %struct.dest_spec_params, i8, ptr, [48 x i8], i8 }
%struct.sk_buff_head = type { %union.anon.87, i32, %struct.spinlock }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { ptr, ptr }
%struct.nfc_target = type { i32, i32, i16, i8, i8, [10 x i8], i8, [8 x i8], i8, [12 x i8], i8, [18 x i8], i8, i8, i8, i8, [8 x i8] }
%struct.dest_spec_params = type { i8, i8 }
%struct.s3fwrn5_info = type { ptr, ptr, ptr, ptr, %struct.s3fwrn5_fw_info, %struct.mutex }

@.str = private unnamed_addr constant [34 x i8] c"Failed to get bootinfo, ret=%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Unknown hardware version\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"sha1\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Cannot allocate shash (code=%pe)\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Cannot compute hash (code=%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Firmware update: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Unable to enter update mode\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Firmware update error (code=%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Unable to complete update mode\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Firmware update: success\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"drivers/nfc/s3fwrn5/firmware.c\00", align 1
@s3fwrn5_fw_get_base_addr.match = internal unnamed_addr constant [5 x %struct.anon.94] [%struct.anon.94 { [4 x i8] c"\05\00\00\00", i32 20480 }, %struct.anon.94 { [4 x i8] c"\05\00\00\01", i32 12288 }, %struct.anon.94 { [4 x i8] c"\05\00\00\02", i32 12288 }, %struct.anon.94 { [4 x i8] c"\05\00\00\03", i32 12288 }, %struct.anon.94 { [4 x i8] c"\05\00\00\05", i32 12288 }], align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@switch.table.s3fwrn5_fw_setup = private unnamed_addr constant [6 x i32] [i32 0, i32 1, i32 2, i32 3, i32 0, i32 4], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @s3fwrn5_fw_request_firmware(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %0, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nfc_dev, ptr %5, i32 0, i32 5
  %7 = tail call i32 @request_firmware(ptr noundef %2, ptr noundef %3, ptr noundef %6) #8
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %50, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 4
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %11, 44
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @release_firmware(ptr noundef %10) #8
  br label %50

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %0, i32 0, i32 1, i32 1
  %16 = getelementptr inbounds %struct.firmware, ptr %10, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %15, ptr noundef align 1 dereferenceable(12) %17, i32 12, i1 false)
  %18 = getelementptr %struct.s3fwrn5_fw_info, ptr %0, i32 0, i32 1, i32 1, i32 12
  store i8 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %0, i32 0, i32 1, i32 2
  %20 = load ptr, ptr %16, align 4
  %21 = getelementptr i8, ptr %20, i32 16
  %22 = load i32, ptr %21, align 1
  store i32 %22, ptr %19, align 4
  %23 = load ptr, ptr %16, align 4
  %24 = getelementptr i8, ptr %23, i32 20
  %25 = load i32, ptr %24, align 1
  %26 = getelementptr i8, ptr %23, i32 %25
  %27 = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %0, i32 0, i32 1, i32 3
  store ptr %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %0, i32 0, i32 1, i32 4
  %29 = load ptr, ptr %16, align 4
  %30 = getelementptr i8, ptr %29, i32 24
  %31 = load i32, ptr %30, align 1
  store i32 %31, ptr %28, align 4
  %32 = load ptr, ptr %16, align 4
  %33 = getelementptr i8, ptr %32, i32 28
  %34 = load i32, ptr %33, align 1
  %35 = getelementptr i8, ptr %32, i32 %34
  %36 = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %0, i32 0, i32 1, i32 5
  store ptr %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %0, i32 0, i32 1, i32 6
  %38 = load ptr, ptr %16, align 4
  %39 = getelementptr i8, ptr %38, i32 32
  %40 = load i32, ptr %39, align 1
  store i32 %40, ptr %37, align 4
  %41 = load ptr, ptr %16, align 4
  %42 = getelementptr i8, ptr %41, i32 36
  %43 = load i32, ptr %42, align 1
  %44 = getelementptr i8, ptr %41, i32 %43
  %45 = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %0, i32 0, i32 1, i32 7
  store ptr %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %0, i32 0, i32 1, i32 8
  %47 = load ptr, ptr %16, align 4
  %48 = getelementptr i8, ptr %47, i32 40
  %49 = load i32, ptr %48, align 1
  store i32 %49, ptr %46, align 4
  br label %50

50:                                               ; preds = %14, %13, %1
  %51 = phi i32 [ -22, %13 ], [ 0, %14 ], [ %7, %1 ]
  ret i32 %51
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @s3fwrn5_fw_setup(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nfc_dev, ptr %3, i32 0, i32 5
  %5 = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %0, i32 0, i32 9
  %6 = load i8, ptr %5, align 4
  %7 = xor i8 %6, -128
  store i8 %7, ptr %5, align 4
  %8 = tail call ptr @__alloc_skb(i32 noundef 4, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %43, label %10

10:                                               ; preds = %1
  %11 = tail call ptr @skb_put(ptr noundef nonnull %8, i32 noundef 4) #8
  store i8 %6, ptr %11, align 1
  %12 = getelementptr inbounds i8, ptr %11, i32 1
  store i8 1, ptr %12, align 1
  %13 = getelementptr inbounds i8, ptr %11, i32 2
  store i16 0, ptr %13, align 1
  %14 = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %0, i32 0, i32 7
  store i32 0, ptr %14, align 4
  %15 = getelementptr i8, ptr %0, i32 -4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.s3fwrn5_phy_ops, ptr %16, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %40, label %20

20:                                               ; preds = %10
  %21 = getelementptr i8, ptr %0, i32 -12
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 %18(ptr noundef %22, ptr noundef nonnull %8) #8
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %40, label %25

25:                                               ; preds = %20
  %26 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %14, i32 noundef 100) #8
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %25
  %29 = icmp eq i32 %26, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %0, i32 0, i32 8
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %30
  store ptr null, ptr %31, align 4
  tail call void @kfree_skb_reason(ptr noundef nonnull %8, i32 noundef 0) #8
  %35 = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 17
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.s3fwrn5_fw_header, ptr %36, i32 0, i32 1
  %38 = load i8, ptr %37, align 1
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %34, %30, %28, %25, %20, %10
  %41 = phi ptr [ %32, %34 ], [ %8, %10 ], [ %8, %30 ], [ %8, %28 ], [ %8, %25 ], [ %8, %20 ]
  %42 = phi i32 [ -22, %34 ], [ -95, %10 ], [ -22, %30 ], [ -6, %28 ], [ %26, %25 ], [ %23, %20 ]
  tail call void @kfree_skb_reason(ptr noundef nonnull %41, i32 noundef 0) #8
  br label %43

43:                                               ; preds = %40, %1
  %44 = phi i32 [ %42, %40 ], [ -12, %1 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str, i32 noundef %44) #9
  br label %86

45:                                               ; preds = %34
  %46 = getelementptr i8, ptr %36, i32 4
  %47 = load i8, ptr %46, align 1
  %48 = getelementptr i8, ptr %36, i32 5
  %49 = load i8, ptr %48, align 1
  %50 = getelementptr i8, ptr %36, i32 6
  %51 = load i8, ptr %50, align 1
  %52 = getelementptr i8, ptr %36, i32 7
  %53 = load i8, ptr %52, align 1
  %54 = getelementptr i8, ptr %36, i32 8
  %55 = load i16, ptr %54, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %32, i32 noundef 0) #8
  %56 = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %0, i32 0, i32 6
  %57 = icmp eq i8 %47, 5
  %58 = icmp eq i8 %49, 0
  %59 = select i1 %57, i1 %58, i1 false
  %60 = icmp ult i8 %53, 6
  %61 = select i1 %59, i1 %60, i1 false
  br i1 %61, label %63, label %62

62:                                               ; preds = %63, %45
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1) #9
  br label %86

63:                                               ; preds = %45
  %64 = lshr i8 47, %53
  %65 = and i8 %64, 1
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %62, label %67

67:                                               ; preds = %63
  %68 = sext i8 %53 to i32
  %69 = getelementptr inbounds [6 x i32], ptr @switch.table.s3fwrn5_fw_setup, i32 0, i32 %68
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr [5 x %struct.anon.94], ptr @s3fwrn5_fw_get_base_addr.match, i32 0, i32 %70, i32 1
  %72 = load i32, ptr %71, align 4
  store i32 %72, ptr %56, align 4
  %73 = zext i16 %55 to i32
  %74 = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %0, i32 0, i32 5
  store i32 %73, ptr %74, align 4
  %75 = icmp eq i8 %51, 0
  %76 = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %0, i32 0, i32 1, i32 8
  %77 = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %0, i32 0, i32 1, i32 4
  %78 = select i1 %75, ptr %77, ptr %76
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %0, i32 0, i32 4
  store i32 %79, ptr %80, align 4
  %81 = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %0, i32 0, i32 1, i32 7
  %82 = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %0, i32 0, i32 1, i32 3
  %83 = select i1 %75, ptr %82, ptr %81
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %0, i32 0, i32 3
  store ptr %84, ptr %85, align 4
  br label %90

86:                                               ; preds = %62, %43
  %87 = phi i32 [ %44, %43 ], [ -22, %62 ]
  %88 = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %0, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  tail call void @release_firmware(ptr noundef %89) #8
  br label %90

90:                                               ; preds = %86, %67
  %91 = phi i32 [ %87, %86 ], [ 0, %67 ]
  ret i32 %91
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @s3fwrn5_fw_check_version(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = lshr i32 %1, 16
  %4 = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %0, i32 0, i32 1, i32 2
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = and i32 %1, 255
  %8 = icmp ult i32 %7, %6
  br i1 %8, label %22, label %9

9:                                                ; preds = %2
  %10 = lshr i32 %1, 8
  %11 = getelementptr inbounds %struct.s3fwrn5_fw_version, ptr %4, i32 0, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = and i32 %10, 255
  %15 = icmp ult i32 %14, %13
  br i1 %15, label %22, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.s3fwrn5_fw_version, ptr %4, i32 0, i32 2
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = and i32 %3, 255
  %21 = icmp ult i32 %20, %19
  br label %22

22:                                               ; preds = %16, %9, %2
  %23 = phi i1 [ true, %2 ], [ true, %9 ], [ %21, %16 ]
  ret i1 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @s3fwrn5_fw_download(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 4
  %3 = alloca [20 x i8], align 1
  %4 = load ptr, ptr %0, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nfc_dev, ptr %5, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %0, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %0, i32 0, i32 1, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = mul i32 %10, %8
  %12 = tail call ptr @crypto_alloc_shash(ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef 0) #8
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.3, ptr noundef nonnull %12) #9
  %15 = ptrtoint ptr %12 to i32
  br label %261

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %0, i32 0, i32 1, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = call i32 @crypto_shash_tfm_digest(ptr noundef %12, ptr noundef %18, i32 noundef %11, ptr noundef nonnull %3) #8
  %20 = getelementptr inbounds %struct.crypto_shash, ptr %12, i32 0, i32 2
  call void @crypto_destroy_tfm(ptr noundef %12, ptr noundef %20) #8
  %21 = icmp eq i32 %19, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.4, i32 noundef %19) #9
  br label %261

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %0, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.5, ptr noundef %24) #9
  %25 = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %0, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %0, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = trunc i32 %28 to i16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  %30 = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %0, i32 0, i32 9
  %31 = load i8, ptr %30, align 4
  %32 = xor i8 %31, -128
  store i8 %32, ptr %30, align 4
  %33 = call ptr @__alloc_skb(i32 noundef 8, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %128, label %35

35:                                               ; preds = %23
  %36 = call ptr @skb_put(ptr noundef nonnull %33, i32 noundef 4) #8
  store i8 %31, ptr %36, align 1
  %37 = getelementptr inbounds i8, ptr %36, i32 1
  store i8 2, ptr %37, align 1
  %38 = getelementptr inbounds i8, ptr %36, i32 2
  store i16 4, ptr %38, align 1
  %39 = call ptr @skb_put(ptr noundef nonnull %33, i32 noundef 4) #8
  store i16 20, ptr %39, align 1
  %40 = getelementptr inbounds i8, ptr %39, i32 2
  store i16 %29, ptr %40, align 1
  %41 = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %0, i32 0, i32 7
  store i32 0, ptr %41, align 4
  %42 = getelementptr i8, ptr %0, i32 -4
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.s3fwrn5_phy_ops, ptr %43, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %125, label %47

47:                                               ; preds = %35
  %48 = getelementptr i8, ptr %0, i32 -12
  %49 = load ptr, ptr %48, align 4
  %50 = call i32 %45(ptr noundef %49, ptr noundef nonnull %33) #8
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %125, label %52

52:                                               ; preds = %47
  %53 = call i32 @wait_for_completion_interruptible_timeout(ptr noundef %41, i32 noundef 100) #8
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %125, label %55

55:                                               ; preds = %52
  %56 = icmp eq i32 %53, 0
  br i1 %56, label %125, label %57

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %0, i32 0, i32 8
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %125, label %61

61:                                               ; preds = %57
  store ptr null, ptr %58, align 4
  call void @kfree_skb_reason(ptr noundef nonnull %33, i32 noundef 0) #8
  %62 = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 17
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.s3fwrn5_fw_header, ptr %63, i32 0, i32 1
  %65 = load i8, ptr %64, align 1
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %130

67:                                               ; preds = %61
  call void @kfree_skb_reason(ptr noundef nonnull %59, i32 noundef 0) #8
  %68 = load i8, ptr %30, align 4
  %69 = xor i8 %68, -128
  store i8 %69, ptr %30, align 4
  %70 = call ptr @__alloc_skb(i32 noundef 24, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %71 = icmp eq ptr %70, null
  br i1 %71, label %128, label %72

72:                                               ; preds = %67
  %73 = or i8 %68, 2
  %74 = call ptr @skb_put(ptr noundef nonnull %70, i32 noundef 4) #8
  store i8 %73, ptr %74, align 1
  %75 = getelementptr inbounds i8, ptr %74, i32 1
  store i8 0, ptr %75, align 1
  %76 = getelementptr inbounds i8, ptr %74, i32 2
  store i16 20, ptr %76, align 1
  %77 = call ptr @skb_put(ptr noundef nonnull %70, i32 noundef 20) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(20) %77, ptr noundef nonnull align 1 dereferenceable(20) %3, i32 20, i1 false) #8
  store i32 0, ptr %41, align 4
  %78 = load ptr, ptr %42, align 4
  %79 = getelementptr inbounds %struct.s3fwrn5_phy_ops, ptr %78, i32 0, i32 3
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %125, label %82

82:                                               ; preds = %72
  %83 = load ptr, ptr %48, align 4
  %84 = call i32 %80(ptr noundef %83, ptr noundef nonnull %70) #8
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %125, label %86

86:                                               ; preds = %82
  %87 = call i32 @wait_for_completion_interruptible_timeout(ptr noundef %41, i32 noundef 100) #8
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %125, label %89

89:                                               ; preds = %86
  %90 = icmp eq i32 %87, 0
  br i1 %90, label %125, label %91

91:                                               ; preds = %89
  %92 = load ptr, ptr %58, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %125, label %94

94:                                               ; preds = %91
  store ptr %92, ptr %2, align 4
  store ptr null, ptr %58, align 4
  call void @kfree_skb_reason(ptr noundef nonnull %70, i32 noundef 0) #8
  %95 = getelementptr inbounds %struct.sk_buff, ptr %92, i32 0, i32 17
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.s3fwrn5_fw_header, ptr %96, i32 0, i32 1
  %98 = load i8, ptr %97, align 1
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %100, label %130

100:                                              ; preds = %94
  call void @kfree_skb_reason(ptr noundef nonnull %92, i32 noundef 0) #8
  %101 = load i8, ptr %30, align 4
  %102 = xor i8 %101, -128
  store i8 %102, ptr %30, align 4
  %103 = and i32 %28, 65535
  %104 = add nuw nsw i32 %103, 4
  %105 = call ptr @__alloc_skb(i32 noundef %104, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %106 = icmp eq ptr %105, null
  br i1 %106, label %128, label %107

107:                                              ; preds = %100
  %108 = or i8 %101, 2
  %109 = call ptr @skb_put(ptr noundef nonnull %105, i32 noundef 4) #8
  store i8 %108, ptr %109, align 1
  %110 = getelementptr inbounds i8, ptr %109, i32 1
  store i8 0, ptr %110, align 1
  %111 = getelementptr inbounds i8, ptr %109, i32 2
  store i16 %29, ptr %111, align 1
  %112 = icmp eq i16 %29, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %107
  %114 = call ptr @skb_put(ptr noundef nonnull %105, i32 noundef %103) #8
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %114, ptr align 1 %26, i32 %103, i1 false) #8
  br label %115

115:                                              ; preds = %113, %107
  %116 = call fastcc i32 @s3fwrn5_fw_send_msg(ptr noundef %0, ptr noundef nonnull %105, ptr noundef nonnull %2) #8
  call void @kfree_skb_reason(ptr noundef nonnull %105, i32 noundef 0) #8
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %128, label %118

118:                                              ; preds = %115
  %119 = load ptr, ptr %2, align 4
  %120 = getelementptr inbounds %struct.sk_buff, ptr %119, i32 0, i32 17
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr inbounds %struct.s3fwrn5_fw_header, ptr %121, i32 0, i32 1
  %123 = load i8, ptr %122, align 1
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %132, label %130

125:                                              ; preds = %91, %89, %86, %82, %72, %57, %55, %52, %47, %35
  %126 = phi ptr [ %33, %57 ], [ %33, %55 ], [ %33, %52 ], [ %33, %47 ], [ %33, %35 ], [ %70, %91 ], [ %70, %89 ], [ %70, %86 ], [ %70, %82 ], [ %70, %72 ]
  %127 = phi i32 [ -22, %57 ], [ -6, %55 ], [ %53, %52 ], [ %50, %47 ], [ -95, %35 ], [ -22, %91 ], [ -6, %89 ], [ %87, %86 ], [ %84, %82 ], [ -95, %72 ]
  call void @kfree_skb_reason(ptr noundef nonnull %126, i32 noundef 0) #8
  br label %128

128:                                              ; preds = %125, %115, %100, %67, %23
  %129 = phi i32 [ -12, %67 ], [ -12, %23 ], [ -12, %100 ], [ %116, %115 ], [ %127, %125 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %136

130:                                              ; preds = %118, %94, %61
  %131 = phi ptr [ %119, %118 ], [ %92, %94 ], [ %59, %61 ]
  call void @kfree_skb_reason(ptr noundef %131, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %136

132:                                              ; preds = %118
  call void @kfree_skb_reason(ptr noundef %119, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %133 = icmp eq i32 %11, 0
  br i1 %133, label %224, label %134

134:                                              ; preds = %132
  %135 = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %0, i32 0, i32 6
  br label %138

136:                                              ; preds = %130, %128
  %137 = phi i32 [ %129, %128 ], [ -71, %130 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.6) #9
  br label %261

138:                                              ; preds = %220, %134
  %139 = phi i32 [ 0, %134 ], [ %222, %220 ]
  %140 = load i32, ptr %135, align 4
  %141 = load ptr, ptr %17, align 4
  %142 = getelementptr i8, ptr %141, i32 %139
  %143 = load i8, ptr %30, align 4
  %144 = xor i8 %143, -128
  store i8 %144, ptr %30, align 4
  %145 = call ptr @__alloc_skb(i32 noundef 8, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %146 = icmp eq ptr %145, null
  br i1 %146, label %218, label %147

147:                                              ; preds = %138
  %148 = add i32 %140, %139
  %149 = call ptr @skb_put(ptr noundef nonnull %145, i32 noundef 4) #8
  store i8 %143, ptr %149, align 1
  %150 = getelementptr inbounds i8, ptr %149, i32 1
  store i8 4, ptr %150, align 1
  %151 = getelementptr inbounds i8, ptr %149, i32 2
  store i16 4, ptr %151, align 1
  %152 = call ptr @skb_put(ptr noundef nonnull %145, i32 noundef 4) #8
  store i32 %148, ptr %152, align 1
  store i32 0, ptr %41, align 4
  %153 = load ptr, ptr %42, align 4
  %154 = getelementptr inbounds %struct.s3fwrn5_phy_ops, ptr %153, i32 0, i32 3
  %155 = load ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %215, label %157

157:                                              ; preds = %147
  %158 = load ptr, ptr %48, align 4
  %159 = call i32 %155(ptr noundef %158, ptr noundef nonnull %145) #8
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %215, label %161

161:                                              ; preds = %157
  %162 = call i32 @wait_for_completion_interruptible_timeout(ptr noundef %41, i32 noundef 100) #8
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %215, label %164

164:                                              ; preds = %161
  %165 = icmp eq i32 %162, 0
  br i1 %165, label %215, label %166

166:                                              ; preds = %164
  %167 = load ptr, ptr %58, align 4
  %168 = icmp eq ptr %167, null
  br i1 %168, label %215, label %169

169:                                              ; preds = %166
  store ptr null, ptr %58, align 4
  call void @kfree_skb_reason(ptr noundef nonnull %145, i32 noundef 0) #8
  %170 = getelementptr inbounds %struct.sk_buff, ptr %167, i32 0, i32 17
  %171 = load ptr, ptr %170, align 4
  %172 = getelementptr inbounds %struct.s3fwrn5_fw_header, ptr %171, i32 0, i32 1
  %173 = load i8, ptr %172, align 1
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %175, label %215

175:                                              ; preds = %169
  call void @kfree_skb_reason(ptr noundef nonnull %167, i32 noundef 0) #8
  br label %176

176:                                              ; preds = %212, %175
  %177 = phi i32 [ 0, %175 ], [ %213, %212 ]
  %178 = load i8, ptr %30, align 4
  %179 = xor i8 %178, -128
  store i8 %179, ptr %30, align 4
  %180 = call ptr @__alloc_skb(i32 noundef 260, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %181 = icmp eq ptr %180, null
  br i1 %181, label %218, label %182

182:                                              ; preds = %176
  %183 = shl i32 %177, 8
  %184 = getelementptr i8, ptr %142, i32 %183
  %185 = or i8 %178, 2
  %186 = call ptr @skb_put(ptr noundef nonnull %180, i32 noundef 4) #8
  store i8 %185, ptr %186, align 1
  %187 = getelementptr inbounds i8, ptr %186, i32 1
  store i8 0, ptr %187, align 1
  %188 = getelementptr inbounds i8, ptr %186, i32 2
  store i16 256, ptr %188, align 1
  %189 = call ptr @skb_put(ptr noundef nonnull %180, i32 noundef 256) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(256) %189, ptr noundef align 1 dereferenceable(256) %184, i32 256, i1 false) #8
  store i32 0, ptr %41, align 4
  %190 = load ptr, ptr %42, align 4
  %191 = getelementptr inbounds %struct.s3fwrn5_phy_ops, ptr %190, i32 0, i32 3
  %192 = load ptr, ptr %191, align 4
  %193 = icmp eq ptr %192, null
  br i1 %193, label %215, label %194

194:                                              ; preds = %182
  %195 = load ptr, ptr %48, align 4
  %196 = call i32 %192(ptr noundef %195, ptr noundef nonnull %180) #8
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %215, label %198

198:                                              ; preds = %194
  %199 = call i32 @wait_for_completion_interruptible_timeout(ptr noundef %41, i32 noundef 100) #8
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %215, label %201

201:                                              ; preds = %198
  %202 = icmp eq i32 %199, 0
  br i1 %202, label %215, label %203

203:                                              ; preds = %201
  %204 = load ptr, ptr %58, align 4
  %205 = icmp eq ptr %204, null
  br i1 %205, label %215, label %206

206:                                              ; preds = %203
  store ptr null, ptr %58, align 4
  call void @kfree_skb_reason(ptr noundef nonnull %180, i32 noundef 0) #8
  %207 = getelementptr inbounds %struct.sk_buff, ptr %204, i32 0, i32 17
  %208 = load ptr, ptr %207, align 4
  %209 = getelementptr inbounds %struct.s3fwrn5_fw_header, ptr %208, i32 0, i32 1
  %210 = load i8, ptr %209, align 1
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %206
  call void @kfree_skb_reason(ptr noundef nonnull %204, i32 noundef 0) #8
  %213 = add nuw nsw i32 %177, 1
  %214 = icmp eq i32 %213, 16
  br i1 %214, label %220, label %176

215:                                              ; preds = %206, %203, %201, %198, %194, %182, %169, %166, %164, %161, %157, %147
  %216 = phi ptr [ %204, %206 ], [ %180, %182 ], [ %180, %203 ], [ %180, %201 ], [ %180, %198 ], [ %180, %194 ], [ %167, %169 ], [ %145, %147 ], [ %145, %166 ], [ %145, %164 ], [ %145, %161 ], [ %145, %157 ]
  %217 = phi i32 [ -71, %206 ], [ -95, %182 ], [ -22, %203 ], [ -6, %201 ], [ %199, %198 ], [ %196, %194 ], [ -71, %169 ], [ -95, %147 ], [ -22, %166 ], [ -6, %164 ], [ %162, %161 ], [ %159, %157 ]
  call void @kfree_skb_reason(ptr noundef nonnull %216, i32 noundef 0) #8
  br label %218

218:                                              ; preds = %215, %176, %138
  %219 = phi i32 [ %217, %215 ], [ -12, %176 ], [ -12, %138 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.7, i32 noundef %219) #9
  br label %261

220:                                              ; preds = %212
  %221 = load i32, ptr %7, align 4
  %222 = add i32 %221, %139
  %223 = icmp ult i32 %222, %11
  br i1 %223, label %138, label %224

224:                                              ; preds = %220, %132
  %225 = load i8, ptr %30, align 4
  %226 = xor i8 %225, -128
  store i8 %226, ptr %30, align 4
  %227 = call ptr @__alloc_skb(i32 noundef 4, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %228 = icmp eq ptr %227, null
  br i1 %228, label %258, label %229

229:                                              ; preds = %224
  %230 = call ptr @skb_put(ptr noundef nonnull %227, i32 noundef 4) #8
  store i8 %225, ptr %230, align 1
  %231 = getelementptr inbounds i8, ptr %230, i32 1
  store i8 5, ptr %231, align 1
  %232 = getelementptr inbounds i8, ptr %230, i32 2
  store i16 0, ptr %232, align 1
  store i32 0, ptr %41, align 4
  %233 = load ptr, ptr %42, align 4
  %234 = getelementptr inbounds %struct.s3fwrn5_phy_ops, ptr %233, i32 0, i32 3
  %235 = load ptr, ptr %234, align 4
  %236 = icmp eq ptr %235, null
  br i1 %236, label %255, label %237

237:                                              ; preds = %229
  %238 = load ptr, ptr %48, align 4
  %239 = call i32 %235(ptr noundef %238, ptr noundef nonnull %227) #8
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %255, label %241

241:                                              ; preds = %237
  %242 = call i32 @wait_for_completion_interruptible_timeout(ptr noundef %41, i32 noundef 100) #8
  %243 = icmp slt i32 %242, 0
  br i1 %243, label %255, label %244

244:                                              ; preds = %241
  %245 = icmp eq i32 %242, 0
  br i1 %245, label %255, label %246

246:                                              ; preds = %244
  %247 = load ptr, ptr %58, align 4
  %248 = icmp eq ptr %247, null
  br i1 %248, label %255, label %249

249:                                              ; preds = %246
  store ptr null, ptr %58, align 4
  call void @kfree_skb_reason(ptr noundef nonnull %227, i32 noundef 0) #8
  %250 = getelementptr inbounds %struct.sk_buff, ptr %247, i32 0, i32 17
  %251 = load ptr, ptr %250, align 4
  %252 = getelementptr inbounds %struct.s3fwrn5_fw_header, ptr %251, i32 0, i32 1
  %253 = load i8, ptr %252, align 1
  %254 = icmp eq i8 %253, 0
  br i1 %254, label %260, label %255

255:                                              ; preds = %249, %246, %244, %241, %237, %229
  %256 = phi ptr [ %227, %229 ], [ %227, %246 ], [ %227, %244 ], [ %227, %241 ], [ %227, %237 ], [ %247, %249 ]
  %257 = phi i32 [ -95, %229 ], [ -22, %246 ], [ -6, %244 ], [ %242, %241 ], [ %239, %237 ], [ -71, %249 ]
  call void @kfree_skb_reason(ptr noundef nonnull %256, i32 noundef 0) #8
  br label %258

258:                                              ; preds = %255, %224
  %259 = phi i32 [ %257, %255 ], [ -12, %224 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.8) #9
  br label %261

260:                                              ; preds = %249
  call void @kfree_skb_reason(ptr noundef nonnull %247, i32 noundef 0) #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.9) #9
  br label %261

261:                                              ; preds = %260, %258, %218, %136, %22, %14
  %262 = phi i32 [ %15, %14 ], [ %19, %22 ], [ %137, %136 ], [ %219, %218 ], [ %259, %258 ], [ 0, %260 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #8
  ret i32 %262
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_tfm_digest(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s3fwrn5_fw_init(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %0, i32 0, i32 9
  store i8 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %0, i32 0, i32 8
  store ptr null, ptr %4, align 4
  %5 = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %0, i32 0, i32 1
  store ptr null, ptr %5, align 4
  %6 = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %0, i32 0, i32 2
  %7 = tail call ptr @strcpy(ptr noundef %6, ptr noundef %1)
  %8 = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %0, i32 0, i32 7
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %0, i32 0, i32 7, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %9, ptr noundef nonnull @.str.11, ptr noundef nonnull @init_completion.__key) #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s3fwrn5_fw_cleanup(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void @release_firmware(ptr noundef %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @s3fwrn5_fw_recv_frame(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 26
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.s3fwrn5_info, ptr %4, i32 0, i32 4, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8, !prof !9

8:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 486, i32 noundef 9, ptr noundef null) #8
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #8
  br label %11

9:                                                ; preds = %2
  store ptr %1, ptr %5, align 4
  %10 = getelementptr inbounds %struct.s3fwrn5_info, ptr %4, i32 0, i32 4, i32 7
  tail call void @complete(ptr noundef %10) #8
  br label %11

11:                                               ; preds = %9, %8
  %12 = phi i32 [ -22, %8 ], [ 0, %9 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @s3fwrn5_fw_send_msg(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %0, i32 0, i32 7
  store i32 0, ptr %4, align 4
  %5 = getelementptr i8, ptr %0, i32 -4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.s3fwrn5_phy_ops, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %25, label %10

10:                                               ; preds = %3
  %11 = getelementptr i8, ptr %0, i32 -12
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %8(ptr noundef %12, ptr noundef %1) #8
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %10
  %16 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %4, i32 noundef 100) #8
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  %19 = icmp eq i32 %16, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %0, i32 0, i32 8
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store ptr %22, ptr %2, align 4
  store ptr null, ptr %21, align 4
  br label %25

25:                                               ; preds = %24, %20, %18, %15, %10, %3
  %26 = phi i32 [ 0, %24 ], [ %13, %10 ], [ %16, %15 ], [ -6, %18 ], [ -22, %20 ], [ -95, %3 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
