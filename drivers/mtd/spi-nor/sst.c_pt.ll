; ModuleID = '/llk/IR/drivers/mtd/spi-nor/sst.c_pt.bc'
source_filename = "../drivers/mtd/spi-nor/sst.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.flash_info = type { ptr, [6 x i8], i8, i32, i16, i16, i16, i8, i16, i8, i8, i8, %struct.spi_nor_otp_organization, ptr }
%struct.spi_nor_otp_organization = type { i32, i64, i64, i32 }
%struct.spi_nor_fixups = type { ptr, ptr, ptr, ptr }
%struct.spi_nor_manufacturer = type { ptr, ptr, i32, ptr }
%struct.spi_nor_locking_ops = type { ptr, ptr, ptr }
%struct.spi_nor = type { %struct.mtd_info, %struct.mutex, ptr, ptr, ptr, i32, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i8, i32, i32, ptr, ptr, ptr, %struct.anon.70, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.64 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.64 = type { %struct.mtd_part, [16 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.70 = type { ptr, ptr }
%struct.spi_nor_flash_parameter = type { i64, i32, i32, i8, i8, %struct.spi_nor_hwcaps, [16 x %struct.spi_nor_read_command], [8 x %struct.spi_nor_pp_command], %struct.spi_nor_erase_map, %struct.spi_nor_otp, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_nor_hwcaps = type { i32 }
%struct.spi_nor_read_command = type { i8, i8, i8, i32 }
%struct.spi_nor_pp_command = type { i8, i32 }
%struct.spi_nor_erase_map = type { ptr, %struct.spi_nor_erase_region, [4 x %struct.spi_nor_erase_type], i8 }
%struct.spi_nor_erase_region = type { i64, i64 }
%struct.spi_nor_erase_type = type { i32, i32, i32, i8, i8 }
%struct.spi_nor_otp = type { ptr, ptr }

@.str = private unnamed_addr constant [4 x i8] c"sst\00", align 1
@sst_parts = internal constant [15 x %struct.flash_info] [%struct.flash_info { ptr @.str.1, [6 x i8] c"\BF%\8D\00\00\00", i8 3, i32 65536, i16 8, i16 256, i16 0, i8 0, i16 33, i8 2, i8 0, i8 1, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.2, [6 x i8] c"\BF%\8E\00\00\00", i8 3, i32 65536, i16 16, i16 256, i16 0, i8 0, i16 33, i8 2, i8 0, i8 1, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.3, [6 x i8] c"\BF%A\00\00\00", i8 3, i32 65536, i16 32, i16 256, i16 0, i8 0, i16 33, i8 2, i8 0, i8 1, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.4, [6 x i8] c"\BF%J\00\00\00", i8 3, i32 65536, i16 64, i16 256, i16 0, i8 0, i16 33, i8 2, i8 0, i8 1, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.5, [6 x i8] c"\BF%K\00\00\00", i8 3, i32 65536, i16 128, i16 256, i16 0, i8 0, i16 41, i8 2, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.6, [6 x i8] c"\BF%\01\00\00\00", i8 3, i32 65536, i16 1, i16 256, i16 0, i8 0, i16 33, i8 2, i8 0, i8 1, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.7, [6 x i8] c"\BF%\02\00\00\00", i8 3, i32 65536, i16 2, i16 256, i16 0, i8 0, i16 33, i8 2, i8 0, i8 1, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.8, [6 x i8] c"\BF%\03\00\00\00", i8 3, i32 65536, i16 4, i16 256, i16 0, i8 0, i16 33, i8 2, i8 0, i8 1, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.9, [6 x i8] c"b\16\12\00\00\00", i8 3, i32 65536, i16 4, i16 256, i16 0, i8 0, i16 1, i8 2, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.10, [6 x i8] c"b\16\13\00\00\00", i8 3, i32 65536, i16 8, i16 256, i16 0, i8 0, i16 1, i8 2, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.11, [6 x i8] c"\BF%\04\00\00\00", i8 3, i32 65536, i16 8, i16 256, i16 0, i8 0, i16 33, i8 2, i8 0, i8 1, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.12, [6 x i8] c"\BF%\05\00\00\00", i8 3, i32 65536, i16 16, i16 256, i16 0, i8 0, i16 33, i8 2, i8 0, i8 1, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.13, [6 x i8] c"\BF&Q\00\00\00", i8 3, i32 65536, i16 32, i16 256, i16 0, i8 0, i16 0, i8 26, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.14, [6 x i8] c"\BF&A\00\00\00", i8 3, i32 65536, i16 32, i16 256, i16 0, i8 0, i16 0, i8 10, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.15, [6 x i8] c"\BF&C\00\00\00", i8 3, i32 65536, i16 128, i16 256, i16 0, i8 0, i16 33, i8 26, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr @sst26vf_fixups }], align 8
@sst_fixups = internal constant %struct.spi_nor_fixups { ptr null, ptr null, ptr null, ptr @sst_late_init }, align 4
@spi_nor_sst = dso_local local_unnamed_addr constant %struct.spi_nor_manufacturer { ptr @.str, ptr @sst_parts, i32 15, ptr @sst_fixups }, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"sst25vf040b\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"sst25vf080b\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"sst25vf016b\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"sst25vf032b\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"sst25vf064c\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"sst25wf512\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"sst25wf010\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"sst25wf020\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"sst25wf020a\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"sst25wf040b\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"sst25wf040\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"sst25wf080\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"sst26wf016b\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"sst26vf016b\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"sst26vf064b\00", align 1
@sst26vf_fixups = internal constant %struct.spi_nor_fixups { ptr null, ptr null, ptr null, ptr @sst26vf_late_init }, align 4
@sst26vf_locking_ops = internal constant %struct.spi_nor_locking_ops { ptr @sst26vf_lock, ptr @sst26vf_unlock, ptr @sst26vf_is_locked }, align 4
@.str.16 = private unnamed_addr constant [26 x i8] c"drivers/mtd/spi-nor/sst.c\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"While writing 1 byte written %i bytes\0A\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"While writing 2 bytes written %i bytes\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @sst26vf_late_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 21
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %3, i32 0, i32 15
  store ptr @sst26vf_locking_ops, ptr %4, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @sst26vf_lock(ptr nocapture noundef readnone %0, i64 noundef %1, i64 noundef %2) #1 {
  ret i32 -95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sst26vf_unlock(ptr noundef %0, i64 noundef %1, i64 noundef %2) #2 {
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %5, label %22

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 21
  %7 = load ptr, ptr %6, align 4
  %8 = load i64, ptr %7, align 8
  %9 = icmp eq i64 %8, %2
  br i1 %9, label %10, label %22

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @spi_nor_read_cr(ptr noundef %0, ptr noundef %12) #4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = load ptr, ptr %11, align 4
  %17 = load i8, ptr %16, align 1
  %18 = and i8 %17, 8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = tail call i32 @spi_nor_global_block_unlock(ptr noundef %0) #4
  br label %22

22:                                               ; preds = %20, %15, %10, %5, %3
  %23 = phi i32 [ %21, %20 ], [ -22, %5 ], [ -22, %3 ], [ %13, %10 ], [ -22, %15 ]
  ret i32 %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @sst26vf_is_locked(ptr nocapture noundef readnone %0, i64 noundef %1, i64 noundef %2) #1 {
  ret i32 -95
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_read_cr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_global_block_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @sst_late_init(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.flash_info, ptr %3, i32 0, i32 11
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 25
  store ptr @sst_write, ptr %9, align 8
  br label %10

10:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sst_write(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4) #2 {
  %6 = tail call i32 @spi_nor_lock_and_prep(ptr noundef %0) #4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %82

8:                                                ; preds = %5
  %9 = tail call i32 @spi_nor_write_enable(ptr noundef %0) #4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %77

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 16
  store i8 0, ptr %12, align 8
  %13 = and i64 %1, 1
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 12
  store i8 2, ptr %16, align 8
  %17 = tail call i32 @spi_nor_write_data(ptr noundef %0, i64 noundef %1, i32 noundef 1, ptr noundef %4) #4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %77, label %19

19:                                               ; preds = %15
  %20 = icmp eq i32 %17, 1
  br i1 %20, label %22, label %21, !prof !8

21:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 147, i32 noundef 9, ptr noundef nonnull @.str.17, i32 noundef %17) #4
  br label %22

22:                                               ; preds = %21, %19
  %23 = tail call i32 @spi_nor_wait_till_ready(ptr noundef %0) #4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %77

25:                                               ; preds = %22
  %26 = add i64 %1, 1
  br label %27

27:                                               ; preds = %25, %11
  %28 = phi i32 [ 1, %25 ], [ 0, %11 ]
  %29 = phi i64 [ %26, %25 ], [ %1, %11 ]
  %30 = add i32 %2, -1
  %31 = icmp ult i32 %28, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 12
  br label %34

34:                                               ; preds = %46, %32
  %35 = phi i64 [ %29, %32 ], [ %47, %46 ]
  %36 = phi i32 [ %28, %32 ], [ %48, %46 ]
  store i8 -83, ptr %33, align 8
  %37 = getelementptr i8, ptr %4, i32 %36
  %38 = tail call i32 @spi_nor_write_data(ptr noundef %0, i64 noundef %35, i32 noundef 2, ptr noundef %37) #4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %77, label %40

40:                                               ; preds = %34
  %41 = icmp eq i32 %38, 2
  br i1 %41, label %43, label %42, !prof !8

42:                                               ; preds = %40
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 164, i32 noundef 9, ptr noundef nonnull @.str.18, i32 noundef %38) #4
  br label %43

43:                                               ; preds = %42, %40
  %44 = tail call i32 @spi_nor_wait_till_ready(ptr noundef %0) #4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %77

46:                                               ; preds = %43
  %47 = add i64 %35, 2
  store i8 1, ptr %12, align 8
  %48 = add i32 %36, 2
  %49 = icmp ult i32 %48, %30
  br i1 %49, label %34, label %50

50:                                               ; preds = %46, %27
  %51 = phi i32 [ %28, %27 ], [ %48, %46 ]
  %52 = phi i64 [ %29, %27 ], [ %47, %46 ]
  store i8 0, ptr %12, align 8
  %53 = tail call i32 @spi_nor_write_disable(ptr noundef %0) #4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %77

55:                                               ; preds = %50
  %56 = tail call i32 @spi_nor_wait_till_ready(ptr noundef %0) #4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %77

58:                                               ; preds = %55
  %59 = icmp eq i32 %51, %2
  br i1 %59, label %77, label %60

60:                                               ; preds = %58
  %61 = tail call i32 @spi_nor_write_enable(ptr noundef %0) #4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %77

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 12
  store i8 2, ptr %64, align 8
  %65 = getelementptr i8, ptr %4, i32 %51
  %66 = tail call i32 @spi_nor_write_data(ptr noundef %0, i64 noundef %52, i32 noundef 1, ptr noundef %65) #4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %63
  %69 = icmp eq i32 %66, 1
  br i1 %69, label %71, label %70, !prof !8

70:                                               ; preds = %68
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 191, i32 noundef 9, ptr noundef nonnull @.str.17, i32 noundef %66) #4
  br label %71

71:                                               ; preds = %70, %68
  %72 = tail call i32 @spi_nor_wait_till_ready(ptr noundef %0) #4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = add i32 %51, 1
  %76 = tail call i32 @spi_nor_write_disable(ptr noundef %0) #4
  br label %77

77:                                               ; preds = %74, %71, %63, %60, %58, %55, %50, %43, %34, %22, %15, %8
  %78 = phi i32 [ 0, %8 ], [ 0, %15 ], [ 0, %22 ], [ %51, %50 ], [ %51, %55 ], [ %51, %60 ], [ %51, %63 ], [ %51, %71 ], [ %75, %74 ], [ %2, %58 ], [ %36, %34 ], [ %36, %43 ]
  %79 = phi i32 [ %9, %8 ], [ %17, %15 ], [ %23, %22 ], [ %53, %50 ], [ %56, %55 ], [ %61, %60 ], [ %66, %63 ], [ %72, %71 ], [ %76, %74 ], [ 0, %58 ], [ %44, %43 ], [ %38, %34 ]
  %80 = load i32, ptr %3, align 4
  %81 = add i32 %80, %78
  store i32 %81, ptr %3, align 4
  tail call void @spi_nor_unlock_and_unprep(ptr noundef %0) #4
  br label %82

82:                                               ; preds = %77, %5
  %83 = phi i32 [ %79, %77 ], [ %6, %5 ]
  ret i32 %83
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_lock_and_prep(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_write_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_write_data(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_wait_till_ready(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_write_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_nor_unlock_and_unprep(ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
