; ModuleID = '/llk/IR/drivers/mtd/spi-nor/otp.c_pt.bc'
source_filename = "../drivers/mtd/spi-nor/otp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.spi_nor_otp_organization = type { i32, i64, i64, i32 }
%struct.spi_nor_otp_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.otp_info = type { i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"drivers/mtd/spi-nor/otp.c\00", align 1
@spi_nor_otp_lock_bit_cr.lock_bits = internal unnamed_addr constant [3 x i32] [i32 8, i32 16, i32 32], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spi_nor_otp_read_secr(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 10
  %6 = load i8, ptr %5, align 2
  %7 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 8
  %8 = load i8, ptr %7, align 4
  %9 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 11
  %10 = load i8, ptr %9, align 1
  %11 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 13
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 22
  %14 = load ptr, ptr %13, align 8
  store i8 72, ptr %5, align 2
  store i8 8, ptr %9, align 1
  store i32 65793, ptr %11, align 4
  store ptr null, ptr %13, align 8
  %15 = tail call i32 @spi_nor_read_data(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) #3
  store i8 %6, ptr %5, align 2
  store i8 %8, ptr %7, align 4
  store i8 %10, ptr %9, align 1
  store i32 %12, ptr %11, align 4
  store ptr %14, ptr %13, align 8
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_read_data(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spi_nor_otp_write_secr(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 12
  %6 = load i8, ptr %5, align 8
  %7 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 8
  %8 = load i8, ptr %7, align 4
  %9 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 14
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 22, i32 1
  %12 = load ptr, ptr %11, align 4
  store i8 66, ptr %5, align 8
  store i32 65793, ptr %9, align 8
  store ptr null, ptr %11, align 4
  %13 = tail call i32 @spi_nor_write_enable(ptr noundef %0) #3
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store i8 %6, ptr %5, align 8
  store i8 %8, ptr %7, align 4
  store i32 %10, ptr %9, align 8
  store ptr %12, ptr %11, align 4
  br label %24

16:                                               ; preds = %4
  %17 = tail call i32 @spi_nor_write_data(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) #3
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i8 %6, ptr %5, align 8
  store i8 %8, ptr %7, align 4
  store i32 %10, ptr %9, align 8
  store ptr %12, ptr %11, align 4
  br label %23

20:                                               ; preds = %16
  %21 = tail call i32 @spi_nor_wait_till_ready(ptr noundef %0) #3
  store i8 %6, ptr %5, align 8
  store i8 %8, ptr %7, align 4
  store i32 %10, ptr %9, align 8
  store ptr %12, ptr %11, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %19
  br label %24

24:                                               ; preds = %23, %20, %15
  %25 = phi i32 [ %17, %23 ], [ %21, %20 ], [ %13, %15 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_write_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_write_data(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_wait_till_ready(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spi_nor_otp_erase_secr(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 9
  %4 = load i8, ptr %3, align 1
  %5 = tail call i32 @spi_nor_write_enable(ptr noundef %0) #3
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  store i8 68, ptr %3, align 1
  %8 = trunc i64 %1 to i32
  %9 = tail call i32 @spi_nor_erase_sector(ptr noundef %0, i32 noundef %8) #3
  store i8 %4, ptr %3, align 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = tail call i32 @spi_nor_wait_till_ready(ptr noundef %0) #3
  br label %13

13:                                               ; preds = %11, %7, %2
  %14 = phi i32 [ %12, %11 ], [ %5, %2 ], [ %9, %7 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_erase_sector(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spi_nor_otp_lock_sr2(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp ugt i32 %1, 2
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = getelementptr [3 x i32], ptr @spi_nor_otp_lock_bit_cr.lock_bits, i32 0, i32 %1
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 @spi_nor_read_cr(ptr noundef %0, ptr noundef %4) #3
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %6
  %12 = load i8, ptr %4, align 1
  %13 = zext i8 %12 to i32
  %14 = and i32 %8, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = trunc i32 %8 to i8
  %18 = or i8 %12, %17
  store i8 %18, ptr %4, align 1
  %19 = tail call i32 @spi_nor_write_16bit_cr_and_check(ptr noundef %0, i8 noundef zeroext %18) #3
  br label %20

20:                                               ; preds = %16, %11, %6, %2
  %21 = phi i32 [ %19, %16 ], [ %9, %6 ], [ 0, %11 ], [ -22, %2 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_read_cr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_write_16bit_cr_and_check(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spi_nor_otp_is_locked_sr2(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp ugt i32 %1, 2
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr [3 x i32], ptr @spi_nor_otp_lock_bit_cr.lock_bits, i32 0, i32 %1
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 @spi_nor_read_cr(ptr noundef %0, ptr noundef %4) #3
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = load i8, ptr %4, align 1
  %13 = zext i8 %12 to i32
  %14 = and i32 %8, %13
  br label %15

15:                                               ; preds = %11, %6, %2
  %16 = phi i32 [ %14, %11 ], [ %9, %6 ], [ -22, %2 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @spi_nor_set_mtd_otp_ops(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 21
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %3, i32 0, i32 9, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %3, i32 0, i32 9
  %9 = load ptr, ptr %8, align 8
  %10 = load i32, ptr %9, align 8
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10) #3, !range !8
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %14, label %13, !prof !9

13:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 490, i32 noundef 9, ptr noundef null) #3
  br label %20

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 31
  store ptr @spi_nor_mtd_otp_info, ptr %15, align 8
  %16 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 32
  store ptr @spi_nor_mtd_otp_read, ptr %16, align 4
  %17 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 33
  store ptr @spi_nor_mtd_otp_write, ptr %17, align 8
  %18 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 34
  store ptr @spi_nor_mtd_otp_lock, ptr %18, align 4
  %19 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 35
  store ptr @spi_nor_mtd_otp_erase, ptr %19, align 8
  br label %20

20:                                               ; preds = %14, %13, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_nor_mtd_otp_info(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 21
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %6, i32 0, i32 9, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %7, align 8
  %11 = getelementptr inbounds %struct.spi_nor_otp_organization, ptr %10, i32 0, i32 3
  %12 = load i32, ptr %11, align 8
  %13 = mul i32 %12, 12
  %14 = icmp ugt i32 %13, %1
  br i1 %14, label %48, label %15

15:                                               ; preds = %4
  %16 = tail call i32 @spi_nor_lock_and_prep(ptr noundef %0) #3
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %48

18:                                               ; preds = %15
  %19 = icmp eq i32 %12, 0
  br i1 %19, label %45, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.spi_nor_otp_ops, ptr %9, i32 0, i32 4
  br label %22

22:                                               ; preds = %38, %20
  %23 = phi i32 [ 0, %20 ], [ %43, %38 ]
  %24 = phi ptr [ %3, %20 ], [ %42, %38 ]
  %25 = load ptr, ptr %5, align 4
  %26 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %25, i32 0, i32 9
  %27 = load ptr, ptr %26, align 8
  %28 = load i32, ptr %27, align 8
  %29 = mul i32 %28, %23
  store i32 %29, ptr %24, align 4
  %30 = load ptr, ptr %5, align 4
  %31 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %30, i32 0, i32 9
  %32 = load ptr, ptr %31, align 8
  %33 = load i32, ptr %32, align 8
  %34 = getelementptr inbounds %struct.otp_info, ptr %24, i32 0, i32 1
  store i32 %33, ptr %34, align 4
  %35 = load ptr, ptr %21, align 4
  %36 = tail call i32 %35(ptr noundef %0, i32 noundef %23) #3
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %22
  %39 = icmp ne i32 %36, 0
  %40 = zext i1 %39 to i32
  %41 = getelementptr inbounds %struct.otp_info, ptr %24, i32 0, i32 2
  store i32 %40, ptr %41, align 4
  %42 = getelementptr %struct.otp_info, ptr %24, i32 1
  %43 = add nuw i32 %23, 1
  %44 = icmp eq i32 %43, %12
  br i1 %44, label %45, label %22

45:                                               ; preds = %38, %18
  store i32 %13, ptr %2, align 4
  br label %46

46:                                               ; preds = %45, %22
  %47 = phi i32 [ 0, %45 ], [ %36, %22 ]
  tail call void @spi_nor_unlock_and_unprep(ptr noundef %0) #3
  br label %48

48:                                               ; preds = %46, %15, %4
  %49 = phi i32 [ %47, %46 ], [ -28, %4 ], [ %16, %15 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_nor_mtd_otp_read(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4) #0 {
  %6 = tail call fastcc i32 @spi_nor_mtd_otp_read_write(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext false)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_nor_mtd_otp_write(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4) #0 {
  %6 = tail call fastcc i32 @spi_nor_mtd_otp_read_write(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext true)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_nor_mtd_otp_lock(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 21
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %5, i32 0, i32 9
  %7 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %5, i32 0, i32 9, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 8
  %10 = load i32, ptr %9, align 8
  %11 = icmp slt i64 %1, 0
  br i1 %11, label %55, label %12

12:                                               ; preds = %3
  %13 = zext i32 %2 to i64
  %14 = add nuw i64 %13, %1
  %15 = getelementptr inbounds %struct.spi_nor_otp_organization, ptr %9, i32 0, i32 3
  %16 = load i32, ptr %15, align 8
  %17 = mul i32 %16, %10
  %18 = zext i32 %17 to i64
  %19 = icmp sgt i64 %14, %18
  br i1 %19, label %55, label %20

20:                                               ; preds = %12
  %21 = add i32 %10, -1
  %22 = and i32 %21, %2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %55

24:                                               ; preds = %20
  %25 = zext i32 %10 to i64
  %26 = add nsw i64 %25, -1
  %27 = and i64 %26, %1
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %24
  %30 = tail call i32 @spi_nor_lock_and_prep(ptr noundef %0) #3
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %29
  %33 = icmp eq i32 %2, 0
  br i1 %33, label %53, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.spi_nor_otp_ops, ptr %8, i32 0, i32 2
  br label %36

36:                                               ; preds = %49, %34
  %37 = phi i32 [ %2, %34 ], [ %50, %49 ]
  %38 = phi i64 [ %1, %34 ], [ %51, %49 ]
  %39 = load ptr, ptr %4, align 4
  %40 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %39, i32 0, i32 9
  %41 = load ptr, ptr %40, align 8
  %42 = load i32, ptr %41, align 8
  %43 = zext i32 %42 to i64
  %44 = tail call i64 @div64_u64(i64 noundef %38, i64 noundef %43) #3
  %45 = trunc i64 %44 to i32
  %46 = load ptr, ptr %35, align 4
  %47 = tail call i32 %46(ptr noundef %0, i32 noundef %45) #3
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %36
  %50 = sub i32 %37, %10
  %51 = add i64 %38, %25
  %52 = icmp eq i32 %50, 0
  br i1 %52, label %53, label %36

53:                                               ; preds = %49, %36, %32
  %54 = phi i32 [ 0, %32 ], [ 0, %49 ], [ %47, %36 ]
  tail call void @spi_nor_unlock_and_unprep(ptr noundef %0) #3
  br label %55

55:                                               ; preds = %53, %29, %24, %20, %12, %3
  %56 = phi i32 [ %54, %53 ], [ -22, %12 ], [ -22, %3 ], [ -22, %24 ], [ -22, %20 ], [ %30, %29 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_nor_mtd_otp_erase(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 21
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %5, i32 0, i32 9
  %7 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %5, i32 0, i32 9, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 8
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.spi_nor_otp_ops, ptr %8, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %71, label %14

14:                                               ; preds = %3
  %15 = icmp eq i32 %2, 0
  br i1 %15, label %71, label %16

16:                                               ; preds = %14
  %17 = icmp slt i64 %1, 0
  br i1 %17, label %71, label %18

18:                                               ; preds = %16
  %19 = zext i32 %2 to i64
  %20 = add nuw i64 %19, %1
  %21 = getelementptr inbounds %struct.spi_nor_otp_organization, ptr %9, i32 0, i32 3
  %22 = load i32, ptr %21, align 8
  %23 = mul i32 %22, %10
  %24 = zext i32 %23 to i64
  %25 = icmp sgt i64 %20, %24
  br i1 %25, label %71, label %26

26:                                               ; preds = %18
  %27 = add i32 %10, -1
  %28 = and i32 %27, %2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %71

30:                                               ; preds = %26
  %31 = zext i32 %10 to i64
  %32 = add nsw i64 %31, -1
  %33 = and i64 %32, %1
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %71

35:                                               ; preds = %30
  %36 = tail call i32 @spi_nor_lock_and_prep(ptr noundef %0) #3
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %71

38:                                               ; preds = %35
  %39 = tail call fastcc i32 @spi_nor_mtd_otp_range_is_locked(ptr noundef %0, i64 noundef %1, i32 noundef %2)
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %69, label %41

41:                                               ; preds = %38
  %42 = icmp eq i32 %39, 0
  br i1 %42, label %43, label %69

43:                                               ; preds = %65, %41
  %44 = phi i32 [ %66, %65 ], [ %2, %41 ]
  %45 = phi i64 [ %67, %65 ], [ %1, %41 ]
  %46 = load ptr, ptr %4, align 4
  %47 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %46, i32 0, i32 9
  %48 = load ptr, ptr %47, align 8
  %49 = load i32, ptr %48, align 8
  %50 = zext i32 %49 to i64
  %51 = tail call i64 @div64_u64(i64 noundef %45, i64 noundef %50) #3
  %52 = load ptr, ptr %4, align 4
  %53 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %52, i32 0, i32 9
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %struct.spi_nor_otp_organization, ptr %54, i32 0, i32 1
  %56 = load i64, ptr %55, align 8
  %57 = and i64 %51, 4294967295
  %58 = getelementptr inbounds %struct.spi_nor_otp_organization, ptr %54, i32 0, i32 2
  %59 = load i64, ptr %58, align 8
  %60 = mul i64 %59, %57
  %61 = add i64 %60, %56
  %62 = load ptr, ptr %11, align 4
  %63 = tail call i32 %62(ptr noundef %0, i64 noundef %61) #3
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %43
  %66 = sub i32 %44, %10
  %67 = add i64 %45, %31
  %68 = icmp eq i32 %66, 0
  br i1 %68, label %69, label %43

69:                                               ; preds = %65, %43, %41, %38
  %70 = phi i32 [ %39, %38 ], [ -30, %41 ], [ %63, %43 ], [ 0, %65 ]
  tail call void @spi_nor_unlock_and_unprep(ptr noundef %0) #3
  br label %71

71:                                               ; preds = %69, %35, %30, %26, %18, %16, %14, %3
  %72 = phi i32 [ %70, %69 ], [ -95, %3 ], [ 0, %14 ], [ -22, %18 ], [ -22, %16 ], [ -22, %30 ], [ -22, %26 ], [ %36, %35 ]
  ret i32 %72
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_lock_and_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_nor_unlock_and_unprep(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @spi_nor_mtd_otp_read_write(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4, i1 noundef zeroext %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 21
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %8, i32 0, i32 9
  %10 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %8, i32 0, i32 9, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %9, align 8
  %13 = load i32, ptr %12, align 8
  %14 = icmp slt i64 %1, 0
  br i1 %14, label %115, label %15

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.spi_nor_otp_organization, ptr %12, i32 0, i32 3
  %17 = load i32, ptr %16, align 8
  %18 = mul i32 %17, %13
  %19 = zext i32 %18 to i64
  %20 = icmp ugt i64 %19, %1
  br i1 %20, label %21, label %115

21:                                               ; preds = %15
  %22 = trunc i64 %1 to i32
  %23 = sub i32 %18, %22
  %24 = tail call i32 @llvm.umin.i32(i32 %23, i32 %2)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %115, label %26

26:                                               ; preds = %21
  %27 = tail call i32 @spi_nor_lock_and_prep(ptr noundef %0) #3
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %115

29:                                               ; preds = %26
  br i1 %5, label %30, label %70

30:                                               ; preds = %29
  %31 = load ptr, ptr %7, align 4
  %32 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %31, i32 0, i32 9, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %31, i32 0, i32 9
  %35 = load ptr, ptr %34, align 8
  %36 = load i32, ptr %35, align 8
  %37 = zext i32 %36 to i64
  %38 = tail call i64 @div64_u64(i64 noundef %1, i64 noundef %37) #3
  %39 = trunc i64 %38 to i32
  %40 = getelementptr inbounds %struct.spi_nor_otp_ops, ptr %33, i32 0, i32 4
  %41 = zext i32 %24 to i64
  %42 = add nsw i64 %1, -1
  %43 = add i64 %42, %41
  %44 = load ptr, ptr %7, align 4
  %45 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %44, i32 0, i32 9
  %46 = load ptr, ptr %45, align 8
  %47 = load i32, ptr %46, align 8
  %48 = zext i32 %47 to i64
  %49 = tail call i64 @div64_u64(i64 noundef %43, i64 noundef %48) #3
  %50 = trunc i64 %49 to i32
  %51 = icmp ugt i32 %39, %50
  br i1 %51, label %70, label %62

52:                                               ; preds = %62
  %53 = add i32 %63, 1
  %54 = load ptr, ptr %7, align 4
  %55 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %54, i32 0, i32 9
  %56 = load ptr, ptr %55, align 8
  %57 = load i32, ptr %56, align 8
  %58 = zext i32 %57 to i64
  %59 = tail call i64 @div64_u64(i64 noundef %43, i64 noundef %58) #3
  %60 = trunc i64 %59 to i32
  %61 = icmp ugt i32 %53, %60
  br i1 %61, label %70, label %62

62:                                               ; preds = %52, %30
  %63 = phi i32 [ %53, %52 ], [ %39, %30 ]
  %64 = load ptr, ptr %40, align 4
  %65 = tail call i32 %64(ptr noundef %0, i32 noundef %63) #3
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %52, label %67

67:                                               ; preds = %62
  %68 = icmp slt i32 %65, 0
  %69 = select i1 %68, i32 %65, i32 -30
  br label %113

70:                                               ; preds = %52, %30, %29
  %71 = add i32 %13, -1
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.spi_nor_otp_ops, ptr %11, i32 0, i32 1
  %74 = select i1 %5, ptr %73, ptr %11
  br label %75

75:                                               ; preds = %105, %70
  %76 = phi i64 [ %1, %70 ], [ %109, %105 ]
  %77 = phi i32 [ %24, %70 ], [ %111, %105 ]
  %78 = phi ptr [ %4, %70 ], [ %110, %105 ]
  %79 = load ptr, ptr %7, align 4
  %80 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %79, i32 0, i32 9
  %81 = load ptr, ptr %80, align 8
  %82 = load i32, ptr %81, align 8
  %83 = zext i32 %82 to i64
  %84 = tail call i64 @div64_u64(i64 noundef %76, i64 noundef %83) #3
  %85 = load ptr, ptr %7, align 4
  %86 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %85, i32 0, i32 9
  %87 = load ptr, ptr %86, align 8
  %88 = getelementptr inbounds %struct.spi_nor_otp_organization, ptr %87, i32 0, i32 1
  %89 = load i64, ptr %88, align 8
  %90 = and i64 %84, 4294967295
  %91 = getelementptr inbounds %struct.spi_nor_otp_organization, ptr %87, i32 0, i32 2
  %92 = load i64, ptr %91, align 8
  %93 = mul i64 %92, %90
  %94 = add i64 %93, %89
  %95 = and i64 %76, %72
  %96 = trunc i64 %95 to i32
  %97 = sub i32 %13, %96
  %98 = tail call i32 @llvm.umin.i32(i32 %77, i32 %97)
  %99 = load ptr, ptr %74, align 4
  %100 = add i64 %94, %95
  %101 = tail call i32 %99(ptr noundef %0, i64 noundef %100, i32 noundef %98, ptr noundef %78) #3
  %102 = icmp eq i32 %101, 0
  %103 = select i1 %102, i32 -5, i32 %101
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %113, label %105

105:                                              ; preds = %75
  %106 = load i32, ptr %3, align 4
  %107 = add i32 %106, %103
  store i32 %107, ptr %3, align 4
  %108 = zext i32 %103 to i64
  %109 = add i64 %76, %108
  %110 = getelementptr i8, ptr %78, i32 %103
  %111 = sub i32 %77, %103
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %75

113:                                              ; preds = %105, %75, %67
  %114 = phi i32 [ %69, %67 ], [ %103, %75 ], [ 0, %105 ]
  tail call void @spi_nor_unlock_and_unprep(ptr noundef %0) #3
  br label %115

115:                                              ; preds = %113, %26, %21, %15, %6
  %116 = phi i32 [ %114, %113 ], [ 0, %15 ], [ 0, %6 ], [ 0, %21 ], [ %27, %26 ]
  ret i32 %116
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @spi_nor_mtd_otp_range_is_locked(ptr noundef %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 21
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %5, i32 0, i32 9, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %5, i32 0, i32 9
  %9 = load ptr, ptr %8, align 8
  %10 = load i32, ptr %9, align 8
  %11 = zext i32 %10 to i64
  %12 = tail call i64 @div64_u64(i64 noundef %1, i64 noundef %11) #3
  %13 = trunc i64 %12 to i32
  %14 = getelementptr inbounds %struct.spi_nor_otp_ops, ptr %7, i32 0, i32 4
  %15 = zext i32 %2 to i64
  %16 = add i64 %1, -1
  %17 = add i64 %16, %15
  %18 = load ptr, ptr %4, align 4
  %19 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %18, i32 0, i32 9
  %20 = load ptr, ptr %19, align 8
  %21 = load i32, ptr %20, align 8
  %22 = zext i32 %21 to i64
  %23 = tail call i64 @div64_u64(i64 noundef %17, i64 noundef %22) #3
  %24 = trunc i64 %23 to i32
  %25 = icmp ugt i32 %13, %24
  br i1 %25, label %41, label %36

26:                                               ; preds = %36
  %27 = add i32 %37, 1
  %28 = load ptr, ptr %4, align 4
  %29 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %28, i32 0, i32 9
  %30 = load ptr, ptr %29, align 8
  %31 = load i32, ptr %30, align 8
  %32 = zext i32 %31 to i64
  %33 = tail call i64 @div64_u64(i64 noundef %17, i64 noundef %32) #3
  %34 = trunc i64 %33 to i32
  %35 = icmp ugt i32 %27, %34
  br i1 %35, label %41, label %36

36:                                               ; preds = %26, %3
  %37 = phi i32 [ %27, %26 ], [ %13, %3 ]
  %38 = load ptr, ptr %14, align 4
  %39 = tail call i32 %38(ptr noundef %0, i32 noundef %37) #3
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %26, label %41

41:                                               ; preds = %36, %26, %3
  %42 = phi i32 [ 0, %3 ], [ 0, %26 ], [ %39, %36 ]
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

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
!8 = !{i32 0, i32 33}
!9 = !{!"branch_weights", i32 -102759400, i32 4193255}
