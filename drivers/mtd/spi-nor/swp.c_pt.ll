; ModuleID = '/llk/IR/drivers/mtd/spi-nor/swp.c_pt.bc'
source_filename = "../drivers/mtd/spi-nor/swp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.flash_info = type { ptr, [6 x i8], i8, i32, i16, i16, i16, i8, i16, i8, i8, i8, %struct.spi_nor_otp_organization, ptr }
%struct.spi_nor_otp_organization = type { i32, i64, i64, i32 }

@spi_nor_sr_locking_ops = internal constant %struct.spi_nor_locking_ops { ptr @spi_nor_sr_lock, ptr @spi_nor_sr_unlock, ptr @spi_nor_sr_is_locked }, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @spi_nor_init_default_locking_ops(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 21
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %3, i32 0, i32 15
  store ptr @spi_nor_sr_locking_ops, ptr %4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @spi_nor_try_unlock_all(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 17
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 256
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 21
  %8 = load ptr, ptr %7, align 4
  %9 = load i64, ptr %8, align 8
  %10 = tail call i32 @spi_nor_lock_and_prep(ptr noundef %0) #4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %6
  %13 = load ptr, ptr %7, align 4
  %14 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %13, i32 0, i32 15
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.spi_nor_locking_ops, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 %17(ptr noundef %0, i64 noundef 0, i64 noundef %9) #4
  tail call void @spi_nor_unlock_and_unprep(ptr noundef %0) #4
  br label %19

19:                                               ; preds = %12, %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_nor_unlock(ptr noundef %0, i64 noundef %1, i64 noundef %2) #1 {
  %4 = tail call i32 @spi_nor_lock_and_prep(ptr noundef %0) #4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 21
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %8, i32 0, i32 15
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.spi_nor_locking_ops, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %0, i64 noundef %1, i64 noundef %2) #4
  tail call void @spi_nor_unlock_and_unprep(ptr noundef %0) #4
  br label %14

14:                                               ; preds = %6, %3
  %15 = phi i32 [ %13, %6 ], [ %4, %3 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @spi_nor_set_mtd_locking_ops(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 21
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 38
  store ptr @spi_nor_lock, ptr %8, align 4
  %9 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 39
  store ptr @spi_nor_unlock, ptr %9, align 8
  %10 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 40
  store ptr @spi_nor_is_locked, ptr %10, align 4
  br label %11

11:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_nor_lock(ptr noundef %0, i64 noundef %1, i64 noundef %2) #1 {
  %4 = tail call i32 @spi_nor_lock_and_prep(ptr noundef %0) #4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 21
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %8, i32 0, i32 15
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %0, i64 noundef %1, i64 noundef %2) #4
  tail call void @spi_nor_unlock_and_unprep(ptr noundef %0) #4
  br label %13

13:                                               ; preds = %6, %3
  %14 = phi i32 [ %12, %6 ], [ %4, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_nor_is_locked(ptr noundef %0, i64 noundef %1, i64 noundef %2) #1 {
  %4 = tail call i32 @spi_nor_lock_and_prep(ptr noundef %0) #4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 21
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %8, i32 0, i32 15
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.spi_nor_locking_ops, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %0, i64 noundef %1, i64 noundef %2) #4
  tail call void @spi_nor_unlock_and_unprep(ptr noundef %0) #4
  br label %14

14:                                               ; preds = %6, %3
  %15 = phi i32 [ %13, %6 ], [ %4, %3 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_nor_sr_lock(ptr noundef %0, i64 noundef %1, i64 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 17
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 8192
  %7 = icmp eq i32 %6, 0
  %8 = and i32 %5, 4096
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i8 28, i8 60
  %11 = select i1 %7, i8 %10, i8 92
  %12 = and i32 %5, 2048
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i8 32, i8 64
  %15 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @spi_nor_read_sr(ptr noundef %0, ptr noundef %16) #4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %127

19:                                               ; preds = %3
  %20 = load ptr, ptr %15, align 4
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = tail call fastcc zeroext i1 @spi_nor_check_lock_status_sr(ptr noundef %0, i64 noundef %1, i64 noundef %2, i8 noundef zeroext %21, i1 noundef zeroext true) #4
  br i1 %23, label %127, label %24

24:                                               ; preds = %19
  %25 = tail call fastcc zeroext i1 @spi_nor_check_lock_status_sr(ptr noundef %0, i64 noundef 0, i64 noundef %1, i8 noundef zeroext %21, i1 noundef zeroext true) #4
  %26 = and i32 %5, 2
  %27 = icmp ne i32 %26, 0
  %28 = select i1 %25, i1 %27, i1 false
  %29 = add i64 %2, %1
  %30 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 2
  %31 = load i64, ptr %30, align 8
  %32 = sub i64 %31, %29
  %33 = tail call fastcc zeroext i1 @spi_nor_check_lock_status_sr(ptr noundef %0, i64 noundef %29, i64 noundef %32, i8 noundef zeroext %21, i1 noundef zeroext true) #4
  %34 = select i1 %28, i1 true, i1 %33
  br i1 %34, label %35, label %127

35:                                               ; preds = %24
  %36 = load i64, ptr %30, align 8
  %37 = sub i64 %36, %1
  %38 = select i1 %33, i64 %37, i64 %29
  %39 = icmp eq i64 %38, %36
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = zext i8 %11 to i32
  br label %106

42:                                               ; preds = %35
  %43 = load i32, ptr %4, align 4
  %44 = and i32 %43, 8192
  %45 = icmp eq i32 %44, 0
  %46 = and i32 %43, 4096
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %47, i32 28, i32 60
  %49 = select i1 %45, i32 %48, i32 92
  %50 = tail call i32 @__sw_hweight8(i32 noundef %49) #4
  %51 = shl nuw i32 1, %50
  %52 = add i32 %51, -2
  %53 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 6
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.flash_info, ptr %54, i32 0, i32 4
  %56 = load i16, ptr %55, align 8
  %57 = zext i16 %56 to i32
  %58 = icmp eq i16 %56, 0
  %59 = tail call i32 @llvm.ctlz.i32(i32 %57, i1 false) #4, !range !8
  %60 = sub nsw i32 31, %59
  %61 = select i1 %58, i32 -1, i32 %60
  %62 = getelementptr inbounds %struct.flash_info, ptr %54, i32 0, i32 3
  %63 = load i32, ptr %62, align 4
  %64 = call i32 @llvm.usub.sat.i32(i32 %61, i32 %52)
  %65 = shl i32 %63, %64
  %66 = lshr i64 %38, 32
  %67 = trunc i64 %66 to i32
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %42
  %70 = tail call i32 @llvm.ctlz.i32(i32 %67, i1 true) #4, !range !8
  %71 = sub nuw nsw i32 64, %70
  br label %78

72:                                               ; preds = %42
  %73 = trunc i64 %38 to i32
  %74 = icmp eq i32 %73, 0
  %75 = tail call i32 @llvm.ctlz.i32(i32 %73, i1 false) #4, !range !8
  %76 = sub nuw nsw i32 32, %75
  %77 = select i1 %74, i32 0, i32 %76
  br label %78

78:                                               ; preds = %72, %69
  %79 = phi i32 [ %71, %69 ], [ %77, %72 ]
  %80 = add nsw i32 %79, 63
  %81 = icmp eq i32 %65, 0
  %82 = tail call i32 @llvm.ctlz.i32(i32 %65, i1 false) #4, !range !8
  %83 = add nuw nsw i32 %82, 33
  %84 = select i1 %81, i32 1, i32 %83
  %85 = add nsw i32 %84, %80
  %86 = trunc i32 %85 to i8
  %87 = shl i8 %86, 2
  %88 = add i8 %87, 4
  %89 = load i32, ptr %4, align 4
  %90 = and i32 %89, 8192
  %91 = icmp eq i32 %90, 0
  %92 = and i8 %88, 32
  %93 = icmp eq i8 %92, 0
  %94 = select i1 %91, i1 true, i1 %93
  %95 = and i8 %88, -100
  %96 = or i8 %95, 64
  %97 = select i1 %94, i8 %88, i8 %96
  %98 = zext i8 %97 to i32
  %99 = zext i8 %11 to i32
  %100 = xor i32 %99, -1
  %101 = and i32 %98, %100
  %102 = icmp ne i32 %101, 0
  %103 = and i8 %97, %11
  %104 = icmp eq i8 %103, 0
  %105 = select i1 %102, i1 true, i1 %104
  br i1 %105, label %127, label %106

106:                                              ; preds = %78, %40
  %107 = phi i32 [ %41, %40 ], [ %98, %78 ]
  %108 = or i8 %11, %14
  %109 = zext i8 %108 to i32
  %110 = xor i32 %109, -1
  %111 = and i32 %22, %110
  %112 = zext i8 %14 to i32
  %113 = select i1 %33, i32 0, i32 %112
  %114 = or i32 %113, %111
  %115 = or i32 %114, %107
  %116 = or i32 %115, 128
  %117 = icmp eq i32 %116, %22
  br i1 %117, label %127, label %118

118:                                              ; preds = %106
  %119 = zext i8 %11 to i32
  %120 = and i32 %115, %119
  %121 = and i8 %21, %11
  %122 = zext i8 %121 to i32
  %123 = icmp ult i32 %120, %122
  br i1 %123, label %127, label %124

124:                                              ; preds = %118
  %125 = trunc i32 %116 to i8
  %126 = tail call i32 @spi_nor_write_sr_and_check(ptr noundef %0, i8 noundef zeroext %125) #4
  br label %127

127:                                              ; preds = %124, %118, %106, %78, %24, %19, %3
  %128 = phi i32 [ %126, %124 ], [ %17, %3 ], [ 0, %19 ], [ -22, %24 ], [ -22, %78 ], [ 0, %106 ], [ -22, %118 ]
  ret i32 %128
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_nor_sr_unlock(ptr noundef %0, i64 noundef %1, i64 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 17
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 8192
  %7 = icmp eq i32 %6, 0
  %8 = and i32 %5, 4096
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i8 28, i8 60
  %11 = select i1 %7, i8 %10, i8 92
  %12 = and i32 %5, 2048
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i8 32, i8 64
  %15 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @spi_nor_read_sr(ptr noundef %0, ptr noundef %16) #4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %126

19:                                               ; preds = %3
  %20 = load ptr, ptr %15, align 4
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = tail call fastcc zeroext i1 @spi_nor_check_lock_status_sr(ptr noundef %0, i64 noundef %1, i64 noundef %2, i8 noundef zeroext %21, i1 noundef zeroext false) #4
  br i1 %23, label %126, label %24

24:                                               ; preds = %19
  %25 = tail call fastcc zeroext i1 @spi_nor_check_lock_status_sr(ptr noundef %0, i64 noundef 0, i64 noundef %1, i8 noundef zeroext %21, i1 noundef zeroext false) #4
  %26 = add i64 %2, %1
  %27 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 2
  %28 = load i64, ptr %27, align 8
  %29 = sub i64 %28, %26
  %30 = tail call fastcc zeroext i1 @spi_nor_check_lock_status_sr(ptr noundef %0, i64 noundef %26, i64 noundef %29, i8 noundef zeroext %21, i1 noundef zeroext false) #4
  %31 = and i32 %5, 2
  %32 = icmp ne i32 %31, 0
  %33 = select i1 %30, i1 %32, i1 false
  %34 = select i1 %33, i1 true, i1 %25
  br i1 %34, label %35, label %126

35:                                               ; preds = %24
  br i1 %25, label %36, label %39

36:                                               ; preds = %35
  %37 = load i64, ptr %27, align 8
  %38 = sub i64 %37, %26
  br label %39

39:                                               ; preds = %36, %35
  %40 = phi i64 [ %38, %36 ], [ %1, %35 ]
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %103, label %42

42:                                               ; preds = %39
  %43 = load i32, ptr %4, align 4
  %44 = and i32 %43, 8192
  %45 = icmp eq i32 %44, 0
  %46 = and i32 %43, 4096
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %47, i32 28, i32 60
  %49 = select i1 %45, i32 %48, i32 92
  %50 = tail call i32 @__sw_hweight8(i32 noundef %49) #4
  %51 = shl nuw i32 1, %50
  %52 = add i32 %51, -2
  %53 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 6
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.flash_info, ptr %54, i32 0, i32 4
  %56 = load i16, ptr %55, align 8
  %57 = zext i16 %56 to i32
  %58 = icmp eq i16 %56, 0
  %59 = tail call i32 @llvm.ctlz.i32(i32 %57, i1 false) #4, !range !8
  %60 = sub nsw i32 31, %59
  %61 = select i1 %58, i32 -1, i32 %60
  %62 = getelementptr inbounds %struct.flash_info, ptr %54, i32 0, i32 3
  %63 = load i32, ptr %62, align 4
  %64 = call i32 @llvm.usub.sat.i32(i32 %61, i32 %52)
  %65 = shl i32 %63, %64
  %66 = lshr i64 %40, 32
  %67 = trunc i64 %66 to i32
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %42
  %70 = tail call i32 @llvm.ctlz.i32(i32 %67, i1 true) #4, !range !8
  %71 = sub nuw nsw i32 64, %70
  br label %78

72:                                               ; preds = %42
  %73 = trunc i64 %40 to i32
  %74 = icmp eq i32 %73, 0
  %75 = tail call i32 @llvm.ctlz.i32(i32 %73, i1 false) #4, !range !8
  %76 = sub nuw nsw i32 32, %75
  %77 = select i1 %74, i32 0, i32 %76
  br label %78

78:                                               ; preds = %72, %69
  %79 = phi i32 [ %71, %69 ], [ %77, %72 ]
  %80 = add nsw i32 %79, 63
  %81 = icmp eq i32 %65, 0
  %82 = tail call i32 @llvm.ctlz.i32(i32 %65, i1 false) #4, !range !8
  %83 = add nuw nsw i32 %82, 33
  %84 = select i1 %81, i32 1, i32 %83
  %85 = add nsw i32 %84, %80
  %86 = trunc i32 %85 to i8
  %87 = shl i8 %86, 2
  %88 = add i8 %87, 4
  %89 = load i32, ptr %4, align 4
  %90 = and i32 %89, 8192
  %91 = icmp eq i32 %90, 0
  %92 = and i8 %88, 32
  %93 = icmp eq i8 %92, 0
  %94 = select i1 %91, i1 true, i1 %93
  %95 = and i8 %88, -100
  %96 = or i8 %95, 64
  %97 = select i1 %94, i8 %88, i8 %96
  %98 = zext i8 %97 to i32
  %99 = zext i8 %11 to i32
  %100 = xor i32 %99, -1
  %101 = and i32 %98, %100
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %126

103:                                              ; preds = %78, %39
  %104 = phi i8 [ %97, %78 ], [ 0, %39 ]
  %105 = zext i8 %14 to i32
  %106 = or i8 %11, %14
  %107 = zext i8 %106 to i32
  %108 = xor i32 %107, -1
  %109 = and i32 %22, %108
  %110 = zext i8 %104 to i32
  %111 = or i32 %109, %110
  %112 = and i32 %111, 127
  %113 = select i1 %41, i32 %112, i32 %111
  %114 = select i1 %25, i32 0, i32 %105
  %115 = or i32 %113, %114
  %116 = icmp eq i32 %115, %22
  br i1 %116, label %126, label %117

117:                                              ; preds = %103
  %118 = zext i8 %11 to i32
  %119 = and i32 %115, %118
  %120 = and i8 %21, %11
  %121 = zext i8 %120 to i32
  %122 = icmp ugt i32 %119, %121
  br i1 %122, label %126, label %123

123:                                              ; preds = %117
  %124 = trunc i32 %115 to i8
  %125 = tail call i32 @spi_nor_write_sr_and_check(ptr noundef %0, i8 noundef zeroext %124) #4
  br label %126

126:                                              ; preds = %123, %117, %103, %78, %24, %19, %3
  %127 = phi i32 [ %125, %123 ], [ %17, %3 ], [ 0, %19 ], [ -22, %24 ], [ -22, %78 ], [ 0, %103 ], [ -22, %117 ]
  ret i32 %127
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_nor_sr_is_locked(ptr noundef %0, i64 noundef %1, i64 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @spi_nor_read_sr(ptr noundef %0, ptr noundef %5) #4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 4
  %10 = load i8, ptr %9, align 1
  %11 = tail call fastcc zeroext i1 @spi_nor_check_lock_status_sr(ptr noundef %0, i64 noundef %1, i64 noundef %2, i8 noundef zeroext %10, i1 noundef zeroext true) #4
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ %12, %8 ], [ %6, %3 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_read_sr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_write_sr_and_check(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @spi_nor_check_lock_status_sr(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, i8 noundef zeroext %3, i1 noundef zeroext %4) unnamed_addr #1 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %75, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 17
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 8192
  %11 = icmp eq i32 %10, 0
  %12 = and i32 %9, 4096
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i8 28, i8 60
  %15 = select i1 %11, i8 %14, i8 92
  %16 = and i8 %15, %3
  %17 = and i8 %16, 64
  %18 = icmp eq i8 %17, 0
  %19 = select i1 %11, i1 true, i1 %18
  %20 = and i8 %3, 28
  %21 = or i8 %20, 32
  %22 = select i1 %19, i8 %16, i8 %21
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %62, label %24

24:                                               ; preds = %7
  %25 = and i32 %9, 2048
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i8 32, i8 64
  %28 = lshr exact i8 %22, 2
  %29 = zext i8 %15 to i32
  %30 = tail call i32 @__sw_hweight8(i32 noundef %29) #4
  %31 = shl nuw i32 1, %30
  %32 = add i32 %31, -2
  %33 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 6
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.flash_info, ptr %34, i32 0, i32 4
  %36 = load i16, ptr %35, align 8
  %37 = zext i16 %36 to i32
  %38 = icmp eq i16 %36, 0
  %39 = tail call i32 @llvm.ctlz.i32(i32 %37, i1 false) #4, !range !8
  %40 = sub nsw i32 31, %39
  %41 = select i1 %38, i32 -1, i32 %40
  %42 = getelementptr inbounds %struct.flash_info, ptr %34, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = call i32 @llvm.usub.sat.i32(i32 %41, i32 %32)
  %45 = shl i32 %43, %44
  %46 = zext i32 %45 to i64
  %47 = zext i8 %28 to i32
  %48 = add nsw i32 %47, -1
  %49 = zext i32 %48 to i64
  %50 = shl i64 %46, %49
  %51 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 2
  %52 = load i64, ptr %51, align 8
  %53 = tail call i64 @llvm.umin.i64(i64 %50, i64 %52) #4
  %54 = load i32, ptr %8, align 4
  %55 = and i32 %54, 2
  %56 = icmp eq i32 %55, 0
  %57 = and i8 %27, %3
  %58 = icmp eq i8 %57, 0
  %59 = select i1 %56, i1 true, i1 %58
  %60 = sub i64 %52, %53
  %61 = select i1 %59, i64 %60, i64 0
  br label %62

62:                                               ; preds = %24, %7
  %63 = phi i64 [ 0, %7 ], [ %61, %24 ]
  %64 = phi i64 [ 0, %7 ], [ %53, %24 ]
  %65 = add i64 %64, %63
  %66 = add i64 %2, %1
  br i1 %4, label %67, label %71

67:                                               ; preds = %62
  %68 = icmp sle i64 %66, %65
  %69 = icmp sle i64 %63, %1
  %70 = and i1 %69, %68
  br label %75

71:                                               ; preds = %62
  %72 = icmp sle i64 %65, %1
  %73 = icmp sle i64 %66, %63
  %74 = or i1 %73, %72
  br label %75

75:                                               ; preds = %71, %67, %5
  %76 = phi i1 [ %70, %67 ], [ %74, %71 ], [ true, %5 ]
  ret i1 %76
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_lock_and_prep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_nor_unlock_and_unprep(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i32 0, i32 33}
