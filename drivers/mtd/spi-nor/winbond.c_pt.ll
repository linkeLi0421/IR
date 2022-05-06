; ModuleID = '/llk/IR/drivers/mtd/spi-nor/winbond.c_pt.bc'
source_filename = "../drivers/mtd/spi-nor/winbond.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.flash_info = type { ptr, [6 x i8], i8, i32, i16, i16, i16, i8, i16, i8, i8, i8, %struct.spi_nor_otp_organization, ptr }
%struct.spi_nor_otp_organization = type { i32, i64, i64, i32 }
%struct.spi_nor_fixups = type { ptr, ptr, ptr, ptr }
%struct.spi_nor_manufacturer = type { ptr, ptr, i32, ptr }
%struct.spi_nor_otp_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.sfdp_parameter_header = type { i8, i8, i8, i8, [3 x i8], i8 }
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

@.str = private unnamed_addr constant [8 x i8] c"winbond\00", align 1
@winbond_parts = internal constant [33 x %struct.flash_info] [%struct.flash_info { ptr @.str.1, [6 x i8] c"\EF0\10\00\00\00", i8 3, i32 65536, i16 1, i16 256, i16 0, i8 0, i16 0, i8 2, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.2, [6 x i8] c"\EF0\11\00\00\00", i8 3, i32 65536, i16 2, i16 256, i16 0, i8 0, i16 0, i8 2, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.3, [6 x i8] c"\EF0\12\00\00\00", i8 3, i32 65536, i16 4, i16 256, i16 0, i8 0, i16 0, i8 2, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.4, [6 x i8] c"\EF0\13\00\00\00", i8 3, i32 65536, i16 8, i16 256, i16 0, i8 0, i16 0, i8 2, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.5, [6 x i8] c"\EF0\14\00\00\00", i8 3, i32 65536, i16 16, i16 256, i16 0, i8 0, i16 0, i8 2, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.6, [6 x i8] c"\EF0\15\00\00\00", i8 3, i32 65536, i16 32, i16 256, i16 0, i8 0, i16 0, i8 2, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.7, [6 x i8] c"\EF`\15\00\00\00", i8 3, i32 65536, i16 32, i16 256, i16 0, i8 0, i16 3, i8 26, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.8, [6 x i8] c"\EF0\16\00\00\00", i8 3, i32 65536, i16 64, i16 256, i16 0, i8 0, i16 0, i8 2, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.9, [6 x i8] c"\EFp\15\00\00\00", i8 3, i32 65536, i16 32, i16 256, i16 0, i8 0, i16 3, i8 26, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.10, [6 x i8] c"\EF@\12\00\00\00", i8 3, i32 65536, i16 4, i16 256, i16 0, i8 0, i16 0, i8 2, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.11, [6 x i8] c"\EFP\12\00\00\00", i8 3, i32 65536, i16 4, i16 256, i16 0, i8 0, i16 0, i8 2, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.12, [6 x i8] c"\EF`\12\00\00\00", i8 3, i32 65536, i16 4, i16 256, i16 0, i8 0, i16 0, i8 2, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.13, [6 x i8] c"\EF@\16\00\00\00", i8 3, i32 65536, i16 64, i16 256, i16 0, i8 0, i16 0, i8 2, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.14, [6 x i8] c"\EF`\16\00\00\00", i8 3, i32 65536, i16 64, i16 256, i16 0, i8 0, i16 3, i8 26, i8 0, i8 0, %struct.spi_nor_otp_organization { i32 256, i64 4096, i64 4096, i32 3 }, ptr null }, %struct.flash_info { ptr @.str.15, [6 x i8] c"\EFp\16\00\00\00", i8 3, i32 65536, i16 64, i16 256, i16 0, i8 0, i16 3, i8 26, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.16, [6 x i8] c"\EF\80\16\00\00\00", i8 3, i32 65536, i16 64, i16 256, i16 0, i8 0, i16 3, i8 26, i8 0, i8 0, %struct.spi_nor_otp_organization { i32 256, i64 4096, i64 4096, i32 3 }, ptr null }, %struct.flash_info { ptr @.str.17, [6 x i8] c"\EF\80\17\00\00\00", i8 3, i32 65536, i16 128, i16 256, i16 0, i8 0, i16 3, i8 26, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.18, [6 x i8] c"\EF\80\18\00\00\00", i8 3, i32 65536, i16 256, i16 256, i16 0, i8 0, i16 3, i8 26, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.19, [6 x i8] c"\EF\80\19\00\00\00", i8 3, i32 65536, i16 512, i16 256, i16 0, i8 0, i16 3, i8 26, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.20, [6 x i8] c"\EF0\17\00\00\00", i8 3, i32 65536, i16 128, i16 256, i16 0, i8 0, i16 0, i8 2, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.21, [6 x i8] c"\EF@\17\00\00\00", i8 3, i32 65536, i16 128, i16 256, i16 0, i8 0, i16 0, i8 26, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.22, [6 x i8] c"\EF`\17\00\00\00", i8 3, i32 65536, i16 128, i16 256, i16 0, i8 0, i16 3, i8 26, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.23, [6 x i8] c"\EFp\17\00\00\00", i8 3, i32 65536, i16 128, i16 256, i16 0, i8 0, i16 0, i8 2, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.24, [6 x i8] c"\EF`\18\00\00\00", i8 3, i32 65536, i16 256, i16 256, i16 0, i8 0, i16 3, i8 26, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.25, [6 x i8] c"\EFp\18\00\00\00", i8 3, i32 65536, i16 256, i16 256, i16 0, i8 0, i16 3, i8 26, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.26, [6 x i8] c"\EFP\14\00\00\00", i8 3, i32 65536, i16 16, i16 256, i16 0, i8 0, i16 0, i8 2, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.27, [6 x i8] c"\EF@\14\00\00\00", i8 3, i32 65536, i16 16, i16 256, i16 0, i8 0, i16 0, i8 2, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.28, [6 x i8] c"\EF@\18\00\00\00", i8 3, i32 65536, i16 256, i16 256, i16 0, i8 0, i16 0, i8 2, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.29, [6 x i8] c"\EF@\19\00\00\00", i8 3, i32 65536, i16 512, i16 256, i16 0, i8 0, i16 0, i8 26, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr @w25q256_fixups }, %struct.flash_info { ptr @.str.30, [6 x i8] c"\EFp\19\00\00\00", i8 3, i32 65536, i16 512, i16 256, i16 0, i8 1, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.31, [6 x i8] c"\EF`\19\00\00\00", i8 3, i32 65536, i16 512, i16 256, i16 0, i8 0, i16 0, i8 26, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.32, [6 x i8] c"\EFq\19\00\00\00", i8 3, i32 65536, i16 1024, i16 256, i16 0, i8 0, i16 0, i8 26, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.33, [6 x i8] c"\EF@ \00\00\00", i8 3, i32 65536, i16 1024, i16 256, i16 0, i8 0, i16 0, i8 26, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }], align 8
@winbond_fixups = internal constant %struct.spi_nor_fixups { ptr @winbond_default_init, ptr null, ptr null, ptr @winbond_late_init }, align 4
@spi_nor_winbond = dso_local local_unnamed_addr constant %struct.spi_nor_manufacturer { ptr @.str, ptr @winbond_parts, i32 33, ptr @winbond_fixups }, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"w25x05\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"w25x10\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"w25x20\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"w25x40\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"w25x80\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"w25x16\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"w25q16dw\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"w25x32\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"w25q16jv-im/jm\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"w25q20cl\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"w25q20bw\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"w25q20ew\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"w25q32\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"w25q32dw\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"w25q32jv\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"w25q32jwm\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"w25q64jwm\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"w25q128jwm\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"w25q256jwm\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"w25x64\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"w25q64\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"w25q64dw\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"w25q64jvm\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"w25q128fw\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"w25q128jv\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"w25q80\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"w25q80bl\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"w25q128\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"w25q256\00", align 1
@w25q256_fixups = internal constant %struct.spi_nor_fixups { ptr null, ptr @w25q256_post_bfpt_fixups, ptr null, ptr null }, align 4
@.str.30 = private unnamed_addr constant [11 x i8] c"w25q256jvm\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"w25q256jw\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"w25m512jv\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"w25q512jvq\00", align 1
@winbond_otp_ops = internal constant %struct.spi_nor_otp_ops { ptr @spi_nor_otp_read_secr, ptr @spi_nor_otp_write_secr, ptr @spi_nor_otp_lock_sr2, ptr @spi_nor_otp_erase_secr, ptr @spi_nor_otp_is_locked_sr2 }, align 4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @w25q256_post_bfpt_fixups(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.sfdp_parameter_header, ptr %1, i32 0, i32 2
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 1
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.sfdp_parameter_header, ptr %1, i32 0, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 5
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 17
  %13 = load i32, ptr %12, align 4
  %14 = or i32 %13, 64
  store i32 %14, ptr %12, align 4
  br label %15

15:                                               ; preds = %11, %7, %3
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @winbond_default_init(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 21
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %3, i32 0, i32 12
  store ptr @winbond_set_4byte_addr_mode, ptr %4, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @winbond_late_init(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 21
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.spi_nor_otp_organization, ptr %5, i32 0, i32 3
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %3, i32 0, i32 9, i32 1
  store ptr @winbond_otp_ops, ptr %10, align 4
  br label %11

11:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @winbond_set_4byte_addr_mode(ptr noundef %0, i1 noundef zeroext %1) #2 {
  %3 = tail call i32 @spi_nor_set_4byte_addr_mode(ptr noundef %0, i1 noundef zeroext %1) #4
  %4 = icmp ne i32 %3, 0
  %5 = or i1 %4, %1
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @spi_nor_write_enable(ptr noundef %0) #4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = tail call i32 @spi_nor_write_ear(ptr noundef %0, i8 noundef zeroext 0) #4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = tail call i32 @spi_nor_write_disable(ptr noundef %0) #4
  br label %14

14:                                               ; preds = %12, %9, %6, %2
  %15 = phi i32 [ %13, %12 ], [ %3, %2 ], [ %7, %6 ], [ %10, %9 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_set_4byte_addr_mode(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_write_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_write_ear(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_write_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_otp_read_secr(ptr noundef, i64 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_otp_write_secr(ptr noundef, i64 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_otp_lock_sr2(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_otp_erase_secr(ptr noundef, i64 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_otp_is_locked_sr2(ptr noundef, i32 noundef) #3

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
