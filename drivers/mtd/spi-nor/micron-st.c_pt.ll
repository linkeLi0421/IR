; ModuleID = '/llk/IR/drivers/mtd/spi-nor/micron-st.c_pt.bc'
source_filename = "../drivers/mtd/spi-nor/micron-st.c"
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

@.str = private unnamed_addr constant [7 x i8] c"micron\00", align 1
@micron_parts = internal constant [2 x %struct.flash_info] [%struct.flash_info { ptr @.str.2, [6 x i8] c",[\1A\00\00\00", i8 3, i32 131072, i16 512, i16 256, i16 0, i8 0, i16 1024, i8 -30, i8 3, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr @mt35xu512aba_fixups }, %struct.flash_info { ptr @.str.3, [6 x i8] c",[\1C\00\00\00", i8 3, i32 131072, i16 2048, i16 256, i16 0, i8 0, i16 1024, i8 34, i8 1, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }], align 8
@micron_st_fixups = internal constant %struct.spi_nor_fixups { ptr @micron_st_default_init, ptr null, ptr null, ptr null }, align 4
@spi_nor_micron = dso_local local_unnamed_addr constant %struct.spi_nor_manufacturer { ptr @.str, ptr @micron_parts, i32 2, ptr @micron_st_fixups }, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"st\00", align 1
@st_parts = internal constant [49 x %struct.flash_info] [%struct.flash_info { ptr @.str.4, [6 x i8] c" \BB\15\00\00\00", i8 3, i32 65536, i16 32, i16 256, i16 0, i8 0, i16 0, i8 18, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.5, [6 x i8] c" \BA\16\00\00\00", i8 3, i32 65536, i16 64, i16 256, i16 0, i8 0, i16 0, i8 16, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.6, [6 x i8] c" \BB\16\00\00\00", i8 3, i32 65536, i16 64, i16 256, i16 0, i8 0, i16 0, i8 16, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.7, [6 x i8] c" \BA\17\00\00\00", i8 3, i32 65536, i16 128, i16 256, i16 0, i8 0, i16 0, i8 18, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.8, [6 x i8] c" \BB\17\00\00\00", i8 3, i32 65536, i16 128, i16 256, i16 0, i8 0, i16 0, i8 18, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.9, [6 x i8] c" \BB\18\00\00\00", i8 3, i32 65536, i16 256, i16 256, i16 0, i8 0, i16 1051, i8 18, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.10, [6 x i8] c" \BA\18\00\00\00", i8 3, i32 65536, i16 256, i16 256, i16 0, i8 0, i16 1051, i8 18, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.11, [6 x i8] c" \BA\19\10D\00", i8 6, i32 65536, i16 512, i16 256, i16 0, i8 0, i16 1024, i8 26, i8 1, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.12, [6 x i8] c" \BA\19\00\00\00", i8 3, i32 65536, i16 512, i16 256, i16 0, i8 0, i16 1024, i8 26, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.13, [6 x i8] c" \BB\19\10D\00", i8 6, i32 65536, i16 512, i16 256, i16 0, i8 0, i16 1024, i8 26, i8 1, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.14, [6 x i8] c" \BB\19\00\00\00", i8 3, i32 65536, i16 512, i16 256, i16 0, i8 0, i16 1024, i8 18, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.15, [6 x i8] c" \BA \10D\00", i8 6, i32 65536, i16 1024, i16 256, i16 0, i8 0, i16 1024, i8 26, i8 1, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.16, [6 x i8] c" \BA \00\00\00", i8 3, i32 65536, i16 1024, i16 256, i16 0, i8 0, i16 1051, i8 18, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.17, [6 x i8] c" \BB \10D\00", i8 6, i32 65536, i16 1024, i16 256, i16 0, i8 0, i16 1024, i8 26, i8 1, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.18, [6 x i8] c" \BB \00\00\00", i8 3, i32 65536, i16 1024, i16 256, i16 0, i8 0, i16 1051, i8 18, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.19, [6 x i8] c" \BA!\00\00\00", i8 3, i32 65536, i16 2048, i16 256, i16 0, i8 0, i16 1179, i8 18, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.20, [6 x i8] c" \BB!\00\00\00", i8 3, i32 65536, i16 2048, i16 256, i16 0, i8 0, i16 1152, i8 18, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.21, [6 x i8] c" \BA\22\00\00\00", i8 3, i32 65536, i16 4096, i16 256, i16 0, i8 0, i16 1152, i8 18, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.22, [6 x i8] c" \BB\22\00\00\00", i8 3, i32 65536, i16 4096, i16 256, i16 0, i8 0, i16 1152, i8 26, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.23, [6 x i8] c"  \10\00\00\00", i8 3, i32 32768, i16 2, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.24, [6 x i8] c"  \11\00\00\00", i8 3, i32 32768, i16 4, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.25, [6 x i8] c"  \12\00\00\00", i8 3, i32 65536, i16 4, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.26, [6 x i8] c"  \13\00\00\00", i8 3, i32 65536, i16 8, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.27, [6 x i8] c"  \14\00\00\00", i8 3, i32 65536, i16 16, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.28, [6 x i8] c"  \15\00\00\00", i8 3, i32 65536, i16 32, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.29, [6 x i8] c"  \16\00\00\00", i8 3, i32 65536, i16 64, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.30, [6 x i8] c"  \17\00\00\00", i8 3, i32 65536, i16 128, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.31, [6 x i8] c"  \18\00\00\00", i8 3, i32 262144, i16 64, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.32, [6 x i8] zeroinitializer, i8 0, i32 32768, i16 2, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.33, [6 x i8] zeroinitializer, i8 0, i32 32768, i16 4, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.34, [6 x i8] zeroinitializer, i8 0, i32 65536, i16 4, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.35, [6 x i8] zeroinitializer, i8 0, i32 65536, i16 8, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.36, [6 x i8] zeroinitializer, i8 0, i32 65536, i16 16, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.37, [6 x i8] zeroinitializer, i8 0, i32 65536, i16 32, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.38, [6 x i8] zeroinitializer, i8 0, i32 65536, i16 64, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.39, [6 x i8] zeroinitializer, i8 0, i32 65536, i16 128, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.40, [6 x i8] zeroinitializer, i8 0, i32 262144, i16 64, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.41, [6 x i8] c" @\11\00\00\00", i8 3, i32 65536, i16 2, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.42, [6 x i8] c" @\14\00\00\00", i8 3, i32 65536, i16 16, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.43, [6 x i8] c" @\15\00\00\00", i8 3, i32 65536, i16 32, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.44, [6 x i8] c" \80\12\00\00\00", i8 3, i32 65536, i16 4, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.45, [6 x i8] c" \80\14\00\00\00", i8 3, i32 65536, i16 16, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.46, [6 x i8] c" \80\15\00\00\00", i8 3, i32 65536, i16 32, i16 256, i16 0, i8 0, i16 0, i8 2, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.47, [6 x i8] c" q\15\00\00\00", i8 3, i32 65536, i16 32, i16 256, i16 0, i8 0, i16 0, i8 2, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.48, [6 x i8] c" q\16\00\00\00", i8 3, i32 65536, i16 64, i16 256, i16 0, i8 0, i16 0, i8 2, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.49, [6 x i8] c" s\16\00\00\00", i8 3, i32 65536, i16 64, i16 256, i16 0, i8 0, i16 0, i8 2, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.50, [6 x i8] c" c\16\00\00\00", i8 3, i32 65536, i16 64, i16 256, i16 0, i8 0, i16 0, i8 2, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.51, [6 x i8] c" q\17\00\00\00", i8 3, i32 65536, i16 128, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.52, [6 x i8] c" q\14\00\00\00", i8 3, i32 65536, i16 16, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }], align 8
@spi_nor_st = dso_local local_unnamed_addr constant %struct.spi_nor_manufacturer { ptr @.str.1, ptr @st_parts, i32 49, ptr @micron_st_fixups }, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"mt35xu512aba\00", align 1
@mt35xu512aba_fixups = internal constant %struct.spi_nor_fixups { ptr @mt35xu512aba_default_init, ptr null, ptr @mt35xu512aba_post_sfdp_fixup, ptr null }, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"mt35xu02g\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"n25q016a\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"n25q032\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"n25q032a\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"n25q064\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"n25q064a\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"n25q128a11\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"n25q128a13\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"mt25ql256a\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"n25q256a\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"mt25qu256a\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"n25q256ax1\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"mt25ql512a\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"n25q512ax3\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"mt25qu512a\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"n25q512a\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"n25q00\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"n25q00a\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"mt25ql02g\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"mt25qu02g\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"m25p05\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"m25p10\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"m25p20\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"m25p40\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"m25p80\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"m25p16\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"m25p32\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"m25p64\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"m25p128\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"m25p05-nonjedec\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"m25p10-nonjedec\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"m25p20-nonjedec\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"m25p40-nonjedec\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"m25p80-nonjedec\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"m25p16-nonjedec\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"m25p32-nonjedec\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"m25p64-nonjedec\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"m25p128-nonjedec\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"m45pe10\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"m45pe80\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"m45pe16\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"m25pe20\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"m25pe80\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"m25pe16\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"m25px16\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"m25px32\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"m25px32-s0\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"m25px32-s1\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"m25px64\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"m25px80\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @mt35xu512aba_default_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 21
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %3, i32 0, i32 10
  store ptr @spi_nor_micron_octal_dtr_enable, ptr %4, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mt35xu512aba_post_sfdp_fixup(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 21
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %3, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = or i32 %5, 32768
  store i32 %6, ptr %4, align 4
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr %struct.spi_nor_flash_parameter, ptr %7, i32 0, i32 6, i32 15
  tail call void @spi_nor_set_read_settings(ptr noundef %8, i8 noundef zeroext 0, i8 noundef zeroext 20, i8 noundef zeroext -3, i32 noundef 17303560) #6
  %9 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 18
  store i32 1, ptr %9, align 8
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %10, i32 0, i32 3
  store i8 8, ptr %11, align 8
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %12, i32 0, i32 4
  store i8 0, ptr %13, align 1
  %14 = load ptr, ptr %2, align 4
  %15 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %14, i32 0, i32 11
  store ptr null, ptr %15, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_nor_micron_octal_dtr_enable(ptr noundef %0, i1 noundef zeroext %1) #1 {
  %3 = alloca %struct.spi_mem_op, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i32 48, i1 false), !annotation !8
  %4 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @spi_nor_write_enable(ptr noundef %0) #6
  %7 = icmp eq i32 %6, 0
  br i1 %1, label %8, label %35

8:                                                ; preds = %2
  br i1 %7, label %9, label %87

9:                                                ; preds = %8
  store i8 20, ptr %5, align 1
  store i8 1, ptr %3, align 8
  %10 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 1, ptr %10, align 1
  %11 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 0, ptr %11, align 2
  %12 = getelementptr inbounds i8, ptr %3, i32 4
  store i16 129, ptr %12, align 4
  %13 = getelementptr inbounds i8, ptr %3, i32 8
  store i8 3, ptr %13, align 8
  %14 = getelementptr inbounds i8, ptr %3, i32 9
  store i8 1, ptr %14, align 1
  %15 = getelementptr inbounds i8, ptr %3, i32 10
  store i8 0, ptr %15, align 2
  %16 = getelementptr inbounds i8, ptr %3, i32 16
  store i64 1, ptr %16, align 8
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
  br i1 %28, label %29, label %87

29:                                               ; preds = %9
  %30 = call i32 @spi_nor_wait_till_ready(ptr noundef %0) #6
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %87

32:                                               ; preds = %29
  %33 = call i32 @spi_nor_write_enable(ptr noundef %0) #6
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %87

35:                                               ; preds = %2
  br i1 %7, label %37, label %87

36:                                               ; preds = %32
  store i8 -25, ptr %5, align 1
  br label %39

37:                                               ; preds = %35
  store i8 -1, ptr %5, align 1
  %38 = getelementptr i8, ptr %5, i32 1
  store i8 31, ptr %38, align 1
  br label %39

39:                                               ; preds = %37, %36
  %40 = phi i32 [ 2, %37 ], [ 1, %36 ]
  %41 = phi i8 [ 4, %37 ], [ 3, %36 ]
  store i8 1, ptr %3, align 8
  %42 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 1, ptr %42, align 1
  %43 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 0, ptr %43, align 2
  %44 = getelementptr inbounds i8, ptr %3, i32 4
  store i16 129, ptr %44, align 4
  %45 = getelementptr inbounds i8, ptr %3, i32 8
  store i8 %41, ptr %45, align 8
  %46 = getelementptr inbounds i8, ptr %3, i32 9
  store i8 1, ptr %46, align 1
  %47 = getelementptr inbounds i8, ptr %3, i32 10
  store i8 0, ptr %47, align 2
  %48 = getelementptr inbounds i8, ptr %3, i32 16
  %49 = getelementptr inbounds i8, ptr %3, i32 24
  %50 = getelementptr inbounds i8, ptr %3, i32 25
  %51 = getelementptr inbounds i8, ptr %3, i32 26
  %52 = getelementptr inbounds i8, ptr %3, i32 28
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(11) %48, i8 0, i64 11, i1 false)
  store i8 1, ptr %52, align 4
  %53 = getelementptr inbounds i8, ptr %3, i32 29
  store i8 0, ptr %53, align 1
  %54 = getelementptr inbounds i8, ptr %3, i32 32
  store i32 2, ptr %54, align 8
  %55 = getelementptr inbounds i8, ptr %3, i32 36
  store i32 %40, ptr %55, align 4
  %56 = getelementptr inbounds i8, ptr %3, i32 40
  store ptr %5, ptr %56, align 8
  br i1 %1, label %58, label %57

57:                                               ; preds = %39
  call void @spi_nor_spimem_setup_op(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 17303560) #6
  br label %58

58:                                               ; preds = %57, %39
  %59 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 3
  %60 = load ptr, ptr %59, align 8
  %61 = call i32 @spi_mem_exec_op(ptr noundef %60, ptr noundef nonnull %3) #6
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %87

63:                                               ; preds = %58
  %64 = select i1 %1, i8 8, i8 0
  %65 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 6
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.flash_info, ptr %66, i32 0, i32 2
  %68 = load i8, ptr %67, align 2
  %69 = zext i8 %68 to i32
  %70 = add nsw i32 %69, -1
  %71 = or i32 %70, 1
  %72 = add nsw i32 %71, 1
  store i8 1, ptr %3, align 8
  store i8 1, ptr %42, align 1
  store i8 0, ptr %43, align 2
  store i16 159, ptr %44, align 4
  store i8 0, ptr %45, align 8
  store i8 0, ptr %46, align 1
  store i8 0, ptr %47, align 2
  store i64 0, ptr %48, align 8
  store i8 %64, ptr %49, align 8
  store i8 1, ptr %50, align 1
  store i8 0, ptr %51, align 2
  store i8 1, ptr %52, align 4
  store i8 0, ptr %53, align 1
  store i32 1, ptr %54, align 8
  store i32 %72, ptr %55, align 4
  store ptr %5, ptr %56, align 8
  br i1 %1, label %73, label %74

73:                                               ; preds = %63
  call void @spi_nor_spimem_setup_op(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 17303560) #6
  br label %74

74:                                               ; preds = %73, %63
  %75 = load ptr, ptr %59, align 8
  %76 = call i32 @spi_mem_exec_op(ptr noundef %75, ptr noundef nonnull %3) #6
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %74
  %79 = load ptr, ptr %65, align 4
  %80 = getelementptr inbounds %struct.flash_info, ptr %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.flash_info, ptr %79, i32 0, i32 2
  %82 = load i8, ptr %81, align 2
  %83 = zext i8 %82 to i32
  %84 = call i32 @bcmp(ptr %5, ptr %80, i32 %83)
  %85 = icmp eq i32 %84, 0
  %86 = select i1 %85, i32 0, i32 -22
  br label %87

87:                                               ; preds = %78, %74, %58, %35, %32, %29, %9, %8
  %88 = phi i32 [ %6, %8 ], [ %27, %9 ], [ %30, %29 ], [ %33, %32 ], [ %61, %58 ], [ %76, %74 ], [ %86, %78 ], [ %6, %35 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #6
  ret i32 %88
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
declare dso_local void @spi_nor_set_read_settings(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @micron_st_default_init(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 17
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, -769
  %5 = or i32 %4, 256
  store i32 %5, ptr %2, align 4
  %6 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 21
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %7, i32 0, i32 11
  store ptr null, ptr %8, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %9, i32 0, i32 12
  store ptr @st_micron_set_4byte_addr_mode, ptr %10, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_micron_set_4byte_addr_mode(ptr noundef %0, i1 noundef zeroext %1) #1 {
  %3 = tail call i32 @spi_nor_write_enable(ptr noundef %0) #6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = tail call i32 @spi_nor_set_4byte_addr_mode(ptr noundef %0, i1 noundef zeroext %1) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call i32 @spi_nor_write_disable(ptr noundef %0) #6
  br label %10

10:                                               ; preds = %8, %5, %2
  %11 = phi i32 [ %9, %8 ], [ %3, %2 ], [ %6, %5 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_set_4byte_addr_mode(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_write_disable(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

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
