; ModuleID = '/llk/IR/drivers/mtd/spi-nor/spansion.c_pt.bc'
source_filename = "../drivers/mtd/spi-nor/spansion.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.flash_info = type { ptr, [6 x i8], i8, i32, i16, i16, i16, i8, i16, i8, i8, i8, %struct.spi_nor_otp_organization, ptr }
%struct.spi_nor_otp_organization = type { i32, i64, i64, i32 }
%struct.spi_nor_fixups = type { ptr, ptr, ptr, ptr }
%struct.spi_nor_manufacturer = type { ptr, ptr, i32, ptr }
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
%struct.spi_mem_op = type { %struct.anon.65, %struct.anon.66, %struct.anon.67, %struct.anon.68 }
%struct.anon.65 = type { i8, i8, i8, i16 }
%struct.anon.66 = type { i8, i8, i8, i64 }
%struct.anon.67 = type { i8, i8, i8 }
%struct.anon.68 = type { i8, i8, i32, i32, %union.anon.69 }
%union.anon.69 = type { ptr }

@.str = private unnamed_addr constant [9 x i8] c"spansion\00", align 1
@spansion_parts = internal constant [34 x %struct.flash_info] [%struct.flash_info { ptr @.str.1, [6 x i8] c"\01\02\15M\00\00", i8 5, i32 65536, i16 64, i16 256, i16 0, i8 0, i16 0, i8 24, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.2, [6 x i8] c"\01\02\16M\00\00", i8 5, i32 65536, i16 128, i16 256, i16 0, i8 0, i16 0, i8 24, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.3, [6 x i8] c"\01 \18M\00\80", i8 6, i32 262144, i16 64, i16 256, i16 0, i8 0, i16 512, i8 24, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.4, [6 x i8] c"\01 \18M\01\80", i8 6, i32 65536, i16 256, i16 256, i16 0, i8 0, i16 512, i8 24, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.5, [6 x i8] c"\01\02\19M\00\80", i8 6, i32 262144, i16 128, i16 256, i16 0, i8 0, i16 512, i8 25, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.6, [6 x i8] c"\01\02\19M\01\80", i8 6, i32 65536, i16 512, i16 256, i16 0, i8 0, i16 512, i8 24, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.7, [6 x i8] c"\01\02 M\00\80", i8 6, i32 262144, i16 256, i16 256, i16 0, i8 0, i16 513, i8 24, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.8, [6 x i8] c"\01 \18M\01\81", i8 6, i32 65536, i16 256, i16 256, i16 0, i8 0, i16 512, i8 24, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr @s25fs_s_fixups }, %struct.flash_info { ptr @.str.9, [6 x i8] c"\01\02\19M\00\81", i8 6, i32 262144, i16 128, i16 256, i16 0, i8 0, i16 512, i8 24, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.10, [6 x i8] c"\01\02\19M\01\81", i8 6, i32 65536, i16 512, i16 256, i16 0, i8 0, i16 512, i8 24, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.11, [6 x i8] c"\01\02 M\00\81", i8 6, i32 262144, i16 256, i16 256, i16 0, i8 0, i16 512, i8 24, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr @s25fs_s_fixups }, %struct.flash_info { ptr @.str.12, [6 x i8] c"\01 \18\03\00\00", i8 5, i32 262144, i16 64, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.13, [6 x i8] c"\01 \18\03\01\00", i8 5, i32 65536, i16 256, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.14, [6 x i8] c"\01 \18M\00\00", i8 5, i32 262144, i16 64, i16 256, i16 0, i8 0, i16 512, i8 24, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.15, [6 x i8] c"\01 \18M\01\00", i8 5, i32 65536, i16 256, i16 256, i16 0, i8 0, i16 512, i8 24, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.16, [6 x i8] c"\01\02\12\00\00\00", i8 3, i32 65536, i16 8, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.17, [6 x i8] c"\01\02\13\00\00\00", i8 3, i32 65536, i16 16, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.18, [6 x i8] c"\01\02\14\00\00\00", i8 3, i32 65536, i16 32, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.19, [6 x i8] c"\01\02\15\00\00\00", i8 3, i32 65536, i16 64, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.20, [6 x i8] c"\01\02\16\00\00\00", i8 3, i32 65536, i16 128, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.21, [6 x i8] c"\EF@\13\00\00\00", i8 3, i32 65536, i16 8, i16 256, i16 0, i8 0, i16 0, i8 26, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.22, [6 x i8] c"\EF@\14\00\00\00", i8 3, i32 65536, i16 16, i16 256, i16 0, i8 0, i16 0, i8 26, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.23, [6 x i8] c"\EF@\15\00\00\00", i8 3, i32 65536, i16 32, i16 256, i16 0, i8 0, i16 0, i8 26, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.24, [6 x i8] c"\EF@\17\00\00\00", i8 3, i32 65536, i16 128, i16 256, i16 0, i8 0, i16 0, i8 26, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.25, [6 x i8] c"\01@\15\00\00\00", i8 3, i32 65536, i16 32, i16 256, i16 0, i8 0, i16 0, i8 26, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.26, [6 x i8] c"\01@\16\00\00\00", i8 3, i32 65536, i16 64, i16 256, i16 0, i8 0, i16 0, i8 2, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.27, [6 x i8] c"\01@\17\00\00\00", i8 3, i32 65536, i16 128, i16 256, i16 0, i8 0, i16 0, i8 2, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.28, [6 x i8] c"\01@\13\00\00\00", i8 3, i32 65536, i16 8, i16 256, i16 0, i8 0, i16 0, i8 10, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.29, [6 x i8] c"\01@\14\00\00\00", i8 3, i32 65536, i16 16, i16 256, i16 0, i8 0, i16 0, i8 10, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.30, [6 x i8] c"\01`\17\00\00\00", i8 3, i32 65536, i16 128, i16 256, i16 0, i8 0, i16 0, i8 26, i8 1, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.31, [6 x i8] c"\01`\18\00\00\00", i8 3, i32 65536, i16 256, i16 256, i16 0, i8 0, i16 0, i8 26, i8 1, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.32, [6 x i8] c"\01`\19\00\00\00", i8 3, i32 65536, i16 512, i16 256, i16 0, i8 0, i16 0, i8 26, i8 1, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.33, [6 x i8] c"\04,\C2\7F\7F\7F", i8 6, i32 524288, i16 1, i16 256, i16 0, i8 0, i16 64, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.34, [6 x i8] c"4[\1A\00\00\00", i8 3, i32 262144, i16 256, i16 256, i16 0, i8 0, i16 0, i8 -62, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr @s28hs512t_fixups }], align 8
@spansion_fixups = internal constant %struct.spi_nor_fixups { ptr null, ptr null, ptr null, ptr @spansion_late_init }, align 4
@spi_nor_spansion = dso_local local_unnamed_addr constant %struct.spi_nor_manufacturer { ptr @.str, ptr @spansion_parts, i32 34, ptr @spansion_fixups }, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"s25sl032p\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"s25sl064p\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"s25fl128s0\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"s25fl128s1\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"s25fl256s0\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"s25fl256s1\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"s25fl512s\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"s25fs128s1\00", align 1
@s25fs_s_fixups = internal constant %struct.spi_nor_fixups { ptr null, ptr @s25fs_s_post_bfpt_fixups, ptr null, ptr null }, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"s25fs256s0\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"s25fs256s1\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"s25fs512s\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"s25sl12800\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"s25sl12801\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"s25fl129p0\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"s25fl129p1\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"s25sl004a\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"s25sl008a\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"s25sl016a\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"s25sl032a\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"s25sl064a\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"s25fl004k\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"s25fl008k\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"s25fl016k\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"s25fl064k\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"s25fl116k\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"s25fl132k\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"s25fl164k\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"s25fl204k\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"s25fl208k\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"s25fl064l\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"s25fl128l\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"s25fl256l\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"cy15x104q\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"s28hs512t\00", align 1
@s28hs512t_fixups = internal constant %struct.spi_nor_fixups { ptr @s28hs512t_default_init, ptr @s28hs512t_post_bfpt_fixup, ptr @s28hs512t_post_sfdp_fixup, ptr null }, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @s25fs_s_post_bfpt_fixups(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 21
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %5, i32 0, i32 2
  store i32 256, ptr %6, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @s28hs512t_default_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 21
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %3, i32 0, i32 10
  store ptr @spi_nor_cypress_octal_dtr_enable, ptr %4, align 8
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %5, i32 0, i32 1
  store i32 16, ptr %6, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s28hs512t_post_bfpt_fixup(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #1 {
  %4 = alloca %struct.spi_mem_op, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i32 48, i1 false), !annotation !8
  store i8 1, ptr %4, align 8
  %5 = getelementptr inbounds %struct.anon.65, ptr %4, i32 0, i32 1
  store i8 1, ptr %5, align 1
  %6 = getelementptr inbounds %struct.anon.65, ptr %4, i32 0, i32 3
  store i16 101, ptr %6, align 4
  %7 = getelementptr inbounds %struct.spi_mem_op, ptr %4, i32 0, i32 1
  store i8 3, ptr %7, align 8
  %8 = getelementptr inbounds %struct.spi_mem_op, ptr %4, i32 0, i32 1, i32 1
  store i8 1, ptr %8, align 1
  %9 = getelementptr inbounds %struct.spi_mem_op, ptr %4, i32 0, i32 1, i32 3
  store i64 8388612, ptr %9, align 8
  %10 = getelementptr inbounds %struct.spi_mem_op, ptr %4, i32 0, i32 2, i32 1
  store i8 0, ptr %10, align 1
  %11 = getelementptr inbounds %struct.spi_mem_op, ptr %4, i32 0, i32 3
  store i8 1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.spi_mem_op, ptr %4, i32 0, i32 3, i32 2
  store i32 1, ptr %12, align 8
  %13 = getelementptr inbounds %struct.spi_mem_op, ptr %4, i32 0, i32 3, i32 3
  store i32 1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.spi_mem_op, ptr %4, i32 0, i32 3, i32 4
  %15 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  store ptr %16, ptr %14, align 8
  %17 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 3
  %18 = load ptr, ptr %17, align 8
  %19 = call i32 @spi_mem_exec_op(ptr noundef %18, ptr noundef nonnull %4) #6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %3
  %22 = load ptr, ptr %15, align 4
  %23 = load i8, ptr %22, align 1
  %24 = and i8 %23, 16
  %25 = icmp eq i8 %24, 0
  %26 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 21
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %27, i32 0, i32 2
  %29 = select i1 %25, i32 256, i32 512
  store i32 %29, ptr %28, align 4
  br label %30

30:                                               ; preds = %21, %3
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #6
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s28hs512t_post_sfdp_fixup(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 21
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr %struct.spi_nor_flash_parameter, ptr %3, i32 0, i32 6, i32 15, i32 2
  %5 = load i8, ptr %4, align 2
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  store i8 -18, ptr %4, align 2
  %8 = load ptr, ptr %2, align 4
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi ptr [ %8, %7 ], [ %3, %1 ]
  %11 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %10, i32 0, i32 7
  tail call void @spi_nor_set_pp_settings(ptr noundef %11, i8 noundef zeroext 18, i32 noundef 65793) #6
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr %struct.spi_nor_flash_parameter, ptr %12, i32 0, i32 7, i32 7
  tail call void @spi_nor_set_pp_settings(ptr noundef %13, i8 noundef zeroext 18, i32 noundef 17303560) #6
  %14 = load ptr, ptr %2, align 4
  %15 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %14, i32 0, i32 4
  store i8 4, ptr %15, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_nor_cypress_octal_dtr_enable(ptr noundef %0, i1 noundef zeroext %1) #1 {
  %3 = alloca %struct.spi_mem_op, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i32 48, i1 false), !annotation !8
  %4 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @spi_nor_write_enable(ptr noundef %0) #6
  %7 = icmp eq i32 %6, 0
  br i1 %1, label %8, label %36

8:                                                ; preds = %2
  br i1 %7, label %9, label %89

9:                                                ; preds = %8
  store i8 11, ptr %5, align 1
  store i8 1, ptr %3, align 8
  %10 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 1, ptr %10, align 1
  %11 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 0, ptr %11, align 2
  %12 = getelementptr inbounds i8, ptr %3, i32 4
  store i16 113, ptr %12, align 4
  %13 = getelementptr inbounds i8, ptr %3, i32 8
  store i8 3, ptr %13, align 8
  %14 = getelementptr inbounds i8, ptr %3, i32 9
  store i8 1, ptr %14, align 1
  %15 = getelementptr inbounds i8, ptr %3, i32 10
  store i8 0, ptr %15, align 2
  %16 = getelementptr inbounds i8, ptr %3, i32 16
  store i64 8388611, ptr %16, align 8
  %17 = getelementptr inbounds i8, ptr %3, i32 24
  store i8 0, ptr %17, align 8
  %18 = getelementptr inbounds i8, ptr %3, i32 25
  store i8 0, ptr %18, align 1
  %19 = getelementptr inbounds i8, ptr %3, i32 26
  store i8 0, ptr %19, align 2
  %20 = getelementptr inbounds i8, ptr %3, i32 28
  store i8 1, ptr %20, align 4
  %21 = getelementptr inbounds i8, ptr %3, i32 29
  store i8 0, ptr %21, align 1
  %22 = getelementptr inbounds i8, ptr %3, i32 32
  store i32 2, ptr %22, align 8
  %23 = getelementptr inbounds i8, ptr %3, i32 36
  store i32 1, ptr %23, align 4
  %24 = getelementptr inbounds i8, ptr %3, i32 40
  store ptr %5, ptr %24, align 8
  %25 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 3
  %26 = load ptr, ptr %25, align 8
  %27 = call i32 @spi_mem_exec_op(ptr noundef %26, ptr noundef nonnull %3) #6
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %89

29:                                               ; preds = %9
  %30 = call i32 @spi_nor_wait_till_ready(ptr noundef %0) #6
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %89

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 11
  store i8 24, ptr %33, align 1
  %34 = call i32 @spi_nor_write_enable(ptr noundef %0) #6
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %89

36:                                               ; preds = %2
  br i1 %7, label %38, label %89

37:                                               ; preds = %32
  store i8 3, ptr %5, align 1
  br label %40

38:                                               ; preds = %36
  store i8 0, ptr %5, align 1
  %39 = getelementptr i8, ptr %5, i32 1
  store i8 0, ptr %39, align 1
  br label %40

40:                                               ; preds = %38, %37
  %41 = phi i32 [ 2, %38 ], [ 1, %37 ]
  %42 = phi i8 [ 4, %38 ], [ 3, %37 ]
  store i8 1, ptr %3, align 8
  %43 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 1, ptr %43, align 1
  %44 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 0, ptr %44, align 2
  %45 = getelementptr inbounds i8, ptr %3, i32 4
  store i16 113, ptr %45, align 4
  %46 = getelementptr inbounds i8, ptr %3, i32 8
  store i8 %42, ptr %46, align 8
  %47 = getelementptr inbounds i8, ptr %3, i32 9
  store i8 1, ptr %47, align 1
  %48 = getelementptr inbounds i8, ptr %3, i32 10
  store i8 0, ptr %48, align 2
  %49 = getelementptr inbounds i8, ptr %3, i32 16
  store i64 8388614, ptr %49, align 8
  %50 = getelementptr inbounds i8, ptr %3, i32 24
  store i8 0, ptr %50, align 8
  %51 = getelementptr inbounds i8, ptr %3, i32 25
  store i8 0, ptr %51, align 1
  %52 = getelementptr inbounds i8, ptr %3, i32 26
  store i8 0, ptr %52, align 2
  %53 = getelementptr inbounds i8, ptr %3, i32 28
  store i8 1, ptr %53, align 4
  %54 = getelementptr inbounds i8, ptr %3, i32 29
  store i8 0, ptr %54, align 1
  %55 = getelementptr inbounds i8, ptr %3, i32 32
  store i32 2, ptr %55, align 8
  %56 = getelementptr inbounds i8, ptr %3, i32 36
  store i32 %41, ptr %56, align 4
  %57 = getelementptr inbounds i8, ptr %3, i32 40
  store ptr %5, ptr %57, align 8
  br i1 %1, label %59, label %58

58:                                               ; preds = %40
  call void @spi_nor_spimem_setup_op(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 17303560) #6
  br label %59

59:                                               ; preds = %58, %40
  %60 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 3
  %61 = load ptr, ptr %60, align 8
  %62 = call i32 @spi_mem_exec_op(ptr noundef %61, ptr noundef nonnull %3) #6
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %89

64:                                               ; preds = %59
  %65 = select i1 %1, i8 4, i8 0
  %66 = select i1 %1, i8 3, i8 0
  %67 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 6
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.flash_info, ptr %68, i32 0, i32 2
  %70 = load i8, ptr %69, align 2
  %71 = zext i8 %70 to i32
  %72 = add nsw i32 %71, -1
  %73 = or i32 %72, 1
  %74 = add nsw i32 %73, 1
  store i8 1, ptr %3, align 8
  store i8 1, ptr %43, align 1
  store i8 0, ptr %44, align 2
  store i16 159, ptr %45, align 4
  store i8 %65, ptr %46, align 8
  store i8 1, ptr %47, align 1
  store i8 0, ptr %48, align 2
  store i64 0, ptr %49, align 8
  store i8 %66, ptr %50, align 8
  store i8 1, ptr %51, align 1
  store i8 0, ptr %52, align 2
  store i8 1, ptr %53, align 4
  store i8 0, ptr %54, align 1
  store i32 1, ptr %55, align 8
  store i32 %74, ptr %56, align 4
  store ptr %5, ptr %57, align 8
  br i1 %1, label %75, label %76

75:                                               ; preds = %64
  call void @spi_nor_spimem_setup_op(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 17303560) #6
  br label %76

76:                                               ; preds = %75, %64
  %77 = load ptr, ptr %60, align 8
  %78 = call i32 @spi_mem_exec_op(ptr noundef %77, ptr noundef nonnull %3) #6
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %76
  %81 = load ptr, ptr %67, align 4
  %82 = getelementptr inbounds %struct.flash_info, ptr %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.flash_info, ptr %81, i32 0, i32 2
  %84 = load i8, ptr %83, align 2
  %85 = zext i8 %84 to i32
  %86 = call i32 @bcmp(ptr %5, ptr %82, i32 %85)
  %87 = icmp eq i32 %86, 0
  %88 = select i1 %87, i32 0, i32 -22
  br label %89

89:                                               ; preds = %80, %76, %59, %36, %32, %29, %9, %8
  %90 = phi i32 [ %6, %8 ], [ %27, %9 ], [ %30, %29 ], [ %34, %32 ], [ %62, %59 ], [ %78, %76 ], [ %88, %80 ], [ %6, %36 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #6
  ret i32 %90
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_write_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_mem_exec_op(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_wait_till_ready(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_nor_spimem_setup_op(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_nor_set_pp_settings(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @spansion_late_init(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 21
  %3 = load ptr, ptr %2, align 4
  %4 = load i64, ptr %3, align 8
  %5 = icmp ult i64 %4, 16777217
  br i1 %5, label %16, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 17
  %8 = load i32, ptr %7, align 4
  %9 = or i32 %8, 64
  store i32 %9, ptr %7, align 4
  %10 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 9
  store i8 -40, ptr %10, align 1
  %11 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.flash_info, ptr %12, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 3
  store i32 %14, ptr %15, align 8
  br label %16

16:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }

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
