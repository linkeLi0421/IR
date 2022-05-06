; ModuleID = '/llk/IR/drivers/mmc/core/sd.c_pt.bc'
source_filename = "../drivers/mmc/core/sd.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmc_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.mmc_card = type { ptr, %struct.device, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i8, [4 x i32], [4 x i32], [2 x i32], [16 x i32], %struct.mmc_cid, %struct.mmc_csd, %struct.mmc_ext_csd, %struct.sd_scr, %struct.sd_ssr, %struct.sd_switch_caps, %struct.sd_ext_reg, %struct.sd_ext_reg, i32, %struct.atomic_t, %struct.sdio_cccr, %struct.sdio_cis, [7 x ptr], ptr, i8, i8, i32, ptr, ptr, i32, i32, i32, ptr, [7 x %struct.mmc_part], i32, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.mmc_cid = type { i32, [8 x i8], i8, i32, i16, i16, i8, i8, i8 }
%struct.mmc_csd = type { i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.mmc_ext_csd = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i8, i8, i32, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, i32 }
%struct.sd_scr = type { i8, i8, i8, i8, i8, i8 }
%struct.sd_ssr = type { i32, i32, i32 }
%struct.sd_switch_caps = type { i32, i32, i32, i32, i32 }
%struct.sd_ext_reg = type { i8, i8, i16, i8, i8, i8 }
%struct.atomic_t = type { i32 }
%struct.sdio_cccr = type { i32, i32, i8 }
%struct.sdio_cis = type { i16, i16, i16, i32 }
%struct.mmc_part = type { i64, i32, [20 x i8], i8, i32 }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, [37 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mmc_supply = type { ptr, ptr }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sd_busy_data = type { ptr, ptr }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [52 x i8] c"\014%s: Problem switching card into high-speed mode!\0A\00", align 1
@sd_std_groups = internal global [2 x ptr] [ptr @sd_std_group, ptr null], align 4
@sd_type = dso_local global %struct.device_type { ptr null, ptr @sd_std_groups, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"\014%s: Skipping voltage switch\0A\00", align 1
@use_spi_crc = external dso_local local_unnamed_addr global i8, align 1
@.str.2 = private unnamed_addr constant [77 x i8] c"\014%s: host does not support reading read-only switch, assuming write-enable\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"drivers/mmc/core/sd.c\00", align 1
@mmc_sd_ops = internal constant %struct.mmc_bus_ops { ptr @mmc_sd_remove, ptr @mmc_sd_detect, ptr null, ptr @mmc_sd_suspend, ptr @mmc_sd_resume, ptr @mmc_sd_runtime_suspend, ptr @mmc_sd_runtime_resume, ptr @mmc_sd_alive, ptr @mmc_sd_suspend, ptr @mmc_sd_hw_reset, ptr null, ptr @sd_cache_enabled, ptr @sd_flush_cache }, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"\013%s: error %d whilst initialising SD card\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@sd_std_group = internal constant %struct.attribute_group { ptr null, ptr @sd_std_is_visible, ptr null, ptr @sd_std_attrs, ptr null }, align 4
@sd_std_attrs = internal global [24 x ptr] [ptr @dev_attr_vendor, ptr @dev_attr_device, ptr @dev_attr_revision, ptr @dev_attr_info1, ptr @dev_attr_info2, ptr @dev_attr_info3, ptr @dev_attr_info4, ptr @dev_attr_cid, ptr @dev_attr_csd, ptr @dev_attr_scr, ptr @dev_attr_ssr, ptr @dev_attr_date, ptr @dev_attr_erase_size, ptr @dev_attr_preferred_erase_size, ptr @dev_attr_fwrev, ptr @dev_attr_hwrev, ptr @dev_attr_manfid, ptr @dev_attr_name, ptr @dev_attr_oemid, ptr @dev_attr_serial, ptr @dev_attr_ocr, ptr @dev_attr_rca, ptr @dev_attr_dsr, ptr null], align 4
@dev_attr_vendor = internal global %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 292 }, ptr @mmc_vendor_show, ptr null }, align 4
@dev_attr_device = internal global %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292 }, ptr @mmc_device_show, ptr null }, align 4
@dev_attr_revision = internal global %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292 }, ptr @mmc_revision_show, ptr null }, align 4
@dev_attr_info1 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292 }, ptr @info1_show, ptr null }, align 4
@dev_attr_info2 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292 }, ptr @info2_show, ptr null }, align 4
@dev_attr_info3 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292 }, ptr @info3_show, ptr null }, align 4
@dev_attr_info4 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292 }, ptr @info4_show, ptr null }, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"vendor\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"0x%04x\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"revision\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"%u.%u\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"info1\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"info2\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"info3\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"info4\00", align 1
@dev_attr_cid = internal global %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292 }, ptr @mmc_cid_show, ptr null }, align 4
@dev_attr_csd = internal global %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292 }, ptr @mmc_csd_show, ptr null }, align 4
@dev_attr_scr = internal global %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292 }, ptr @mmc_scr_show, ptr null }, align 4
@dev_attr_ssr = internal global %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292 }, ptr @mmc_ssr_show, ptr null }, align 4
@dev_attr_date = internal global %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292 }, ptr @mmc_date_show, ptr null }, align 4
@dev_attr_erase_size = internal global %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292 }, ptr @mmc_erase_size_show, ptr null }, align 4
@dev_attr_preferred_erase_size = internal global %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292 }, ptr @mmc_preferred_erase_size_show, ptr null }, align 4
@dev_attr_fwrev = internal global %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292 }, ptr @mmc_fwrev_show, ptr null }, align 4
@dev_attr_hwrev = internal global %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292 }, ptr @mmc_hwrev_show, ptr null }, align 4
@dev_attr_manfid = internal global %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292 }, ptr @mmc_manfid_show, ptr null }, align 4
@dev_attr_name = internal global %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292 }, ptr @mmc_name_show, ptr null }, align 4
@dev_attr_oemid = internal global %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292 }, ptr @mmc_oemid_show, ptr null }, align 4
@dev_attr_serial = internal global %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292 }, ptr @mmc_serial_show, ptr null }, align 4
@dev_attr_ocr = internal global %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292 }, ptr @mmc_ocr_show, ptr null }, align 4
@dev_attr_rca = internal global %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292 }, ptr @mmc_rca_show, ptr null }, align 4
@dev_attr_dsr = internal global %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292 }, ptr @mmc_dsr_show, ptr null }, align 4
@.str.15 = private unnamed_addr constant [4 x i8] c"cid\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"%08x%08x%08x%08x\0A\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"csd\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"scr\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"%08x%08x\0A\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"ssr\00", align 1
@.str.21 = private unnamed_addr constant [66 x i8] c"%08x%08x%08x%08x%08x%08x%08x%08x%08x%08x%08x%08x%08x%08x%08x%08x\0A\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"date\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"%02d/%04d\0A\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"erase_size\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"preferred_erase_size\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"fwrev\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"0x%x\0A\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"hwrev\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"manfid\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"0x%06x\0A\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"oemid\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"0x%08x\0A\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"ocr\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"rca\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"dsr\00", align 1
@taac_exp = internal unnamed_addr constant [8 x i32] [i32 1, i32 10, i32 100, i32 1000, i32 10000, i32 100000, i32 1000000, i32 10000000], align 4
@taac_mant = internal unnamed_addr constant [16 x i32] [i32 0, i32 10, i32 12, i32 13, i32 15, i32 20, i32 25, i32 30, i32 35, i32 40, i32 45, i32 50, i32 55, i32 60, i32 70, i32 80], align 4
@tran_exp = internal unnamed_addr constant [8 x i32] [i32 10000, i32 100000, i32 1000000, i32 10000000, i32 0, i32 0, i32 0, i32 0], align 4
@tran_mant = internal unnamed_addr constant [16 x i8] c"\00\0A\0C\0D\0F\14\19\1E#(-27<FP", align 1
@.str.39 = private unnamed_addr constant [45 x i8] c"\013%s: unrecognised CSD structure version %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [45 x i8] c"\013%s: unrecognised SCR structure version %d\0A\00", align 1
@.str.41 = private unnamed_addr constant [25 x i8] c"\013%s: invalid bus width\0A\00", align 1
@.str.42 = private unnamed_addr constant [47 x i8] c"\014%s: card lacks mandatory SD Status function\0A\00", align 1
@.str.43 = private unnamed_addr constant [42 x i8] c"\014%s: problem reading SD Status register\0A\00", align 1
@sd_au_size = internal unnamed_addr constant [16 x i32] [i32 0, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096, i32 8192, i32 16384, i32 24576, i32 32768, i32 49152, i32 65536, i32 131072], align 4
@.str.44 = private unnamed_addr constant [47 x i8] c"\014%s: SD Status: Invalid Allocation Unit size\0A\00", align 1
@.str.45 = private unnamed_addr constant [70 x i8] c"\014%s: card lacks mandatory switch function, performance might suffer\0A\00", align 1
@.str.46 = private unnamed_addr constant [39 x i8] c"\014%s: problem reading Bus Speed modes\0A\00", align 1
@.str.47 = private unnamed_addr constant [45 x i8] c"\014%s: error %d writing Power Off Notify bit\0A\00", align 1
@.str.48 = private unnamed_addr constant [46 x i8] c"\014%s: error %d reading status reg of PM func\0A\00", align 1
@.str.49 = private unnamed_addr constant [41 x i8] c"\013%s: error %d doing aggressive suspend\0A\00", align 1
@.str.50 = private unnamed_addr constant [37 x i8] c"\013%s: error %d doing runtime resume\0A\00", align 1
@.str.51 = private unnamed_addr constant [40 x i8] c"\014%s: error %d writing Cache Flush bit\0A\00", align 1
@.str.52 = private unnamed_addr constant [40 x i8] c"\014%s: error %d reading Cache Flush bit\0A\00", align 1
@.str.53 = private unnamed_addr constant [35 x i8] c"\016%s: Host Software Queue enabled\0A\00", align 1
@.str.54 = private unnamed_addr constant [47 x i8] c"\013%s: Host failed to negotiate down from 3.3V\0A\00", align 1
@.str.55 = private unnamed_addr constant [27 x i8] c"\014%s: ddr50 tuning failed\0A\00", align 1
@.str.56 = private unnamed_addr constant [39 x i8] c"\014%s: Problem setting drive strength!\0A\00", align 1
@.str.57 = private unnamed_addr constant [38 x i8] c"\014%s: Problem setting current limit!\0A\00", align 1
@.str.58 = private unnamed_addr constant [39 x i8] c"\014%s: Problem setting bus speed mode!\0A\00", align 1
@.str.59 = private unnamed_addr constant [51 x i8] c"\014%s: error %d reading general info of SD ext reg\0A\00", align 1
@.str.60 = private unnamed_addr constant [39 x i8] c"\014%s: non-supported SD ext reg layout\0A\00", align 1
@.str.61 = private unnamed_addr constant [35 x i8] c"\014%s: error %d parsing SD ext reg\0A\00", align 1
@.str.62 = private unnamed_addr constant [43 x i8] c"\014%s: error %d reading PM func of ext reg\0A\00", align 1
@.str.63 = private unnamed_addr constant [45 x i8] c"\014%s: error %d reading PERF func of ext reg\0A\00", align 1
@.str.64 = private unnamed_addr constant [41 x i8] c"\014%s: error %d writing Cache Enable bit\0A\00", align 1
@switch.table.sd_set_bus_speed_mode = private unnamed_addr constant [5 x i32] [i32 25000000, i32 50000000, i32 100000000, i32 208000000, i32 50000000], align 4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @mmc_decode_cid(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 15
  %3 = load i32, ptr %2, align 4
  %4 = lshr i32 %3, 24
  %5 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 19
  store i32 %4, ptr %5, align 4
  %6 = lshr i32 %3, 8
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 19, i32 4
  store i16 %7, ptr %8, align 4
  %9 = trunc i32 %3 to i8
  %10 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 19, i32 1
  store i8 %9, ptr %10, align 4
  %11 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 15, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = lshr i32 %12, 24
  %14 = trunc i32 %13 to i8
  %15 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 19, i32 1, i32 1
  store i8 %14, ptr %15, align 1
  %16 = lshr i32 %12, 16
  %17 = trunc i32 %16 to i8
  %18 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 19, i32 1, i32 2
  store i8 %17, ptr %18, align 2
  %19 = lshr i32 %12, 8
  %20 = trunc i32 %19 to i8
  %21 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 19, i32 1, i32 3
  store i8 %20, ptr %21, align 1
  %22 = trunc i32 %12 to i8
  %23 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 19, i32 1, i32 4
  store i8 %22, ptr %23, align 4
  %24 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 15, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = lshr i32 %25, 28
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 19, i32 6
  store i8 %27, ptr %28, align 4
  %29 = lshr i32 %25, 24
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 15
  %32 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 19, i32 7
  store i8 %31, ptr %32, align 1
  %33 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 15, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %34, i32 8)
  %36 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 19, i32 3
  store i32 %35, ptr %36, align 4
  %37 = lshr i32 %34, 12
  %38 = trunc i32 %37 to i16
  %39 = and i16 %38, 255
  %40 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 19, i32 5
  %41 = lshr i32 %34, 8
  %42 = trunc i32 %41 to i8
  %43 = and i8 %42, 15
  %44 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 19, i32 8
  store i8 %43, ptr %44, align 2
  %45 = add nuw nsw i16 %39, 2000
  store i16 %45, ptr %40, align 2
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_sd_switch_hs(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 22
  %3 = load i8, ptr %2, align 8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %45, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 2
  %7 = load i16, ptr %6, align 2
  %8 = and i16 %7, 1024
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %45, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr %0, align 8
  %12 = getelementptr inbounds %struct.mmc_host, ptr %11, i32 0, i32 16
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %45, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 24
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %45, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %22 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3264, i32 noundef 64) #14
  %23 = icmp eq ptr %22, null
  br i1 %23, label %45, label %24

24:                                               ; preds = %20
  %25 = tail call i32 @mmc_sd_switch(ptr noundef %0, i32 noundef 1, i32 noundef 0, i8 noundef zeroext 1, ptr noundef nonnull %22) #15
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %24
  %28 = getelementptr i8, ptr %22, i32 16
  %29 = load i8, ptr %28, align 8
  %30 = and i8 %29, 15
  %31 = icmp eq i8 %30, 1
  br i1 %31, label %43, label %32

32:                                               ; preds = %27
  %33 = load ptr, ptr %0, align 8
  %34 = getelementptr inbounds %struct.mmc_host, ptr %33, i32 0, i32 1, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.mmc_host, ptr %33, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  br label %40

40:                                               ; preds = %37, %32
  %41 = phi ptr [ %39, %37 ], [ %35, %32 ]
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %41) #16
  br label %43

43:                                               ; preds = %40, %27, %24
  %44 = phi i32 [ %25, %24 ], [ 0, %40 ], [ 1, %27 ]
  tail call void @kfree(ptr noundef nonnull %22) #15
  br label %45

45:                                               ; preds = %43, %20, %16, %10, %5, %1
  %46 = phi i32 [ %44, %43 ], [ 0, %1 ], [ 0, %5 ], [ 0, %10 ], [ 0, %16 ], [ -12, %20 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_sd_switch(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_sd_get_cid(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1, i32 3
  %6 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1
  %7 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %8 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28, i32 1
  %9 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 13
  %10 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 14
  %11 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 15
  %12 = icmp ne ptr %3, null
  br label %13

13:                                               ; preds = %72, %4
  %14 = phi i32 [ %1, %4 ], [ %56, %72 ]
  %15 = phi i32 [ 10, %4 ], [ %73, %72 ]
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %13
  %18 = and i32 %14, -16777217
  %19 = load ptr, ptr %5, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load ptr, ptr %6, align 4
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi ptr [ %22, %21 ], [ %19, %17 ]
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %24) #16
  br label %26

26:                                               ; preds = %23, %13
  %27 = phi i32 [ %14, %13 ], [ %18, %23 ]
  %28 = tail call i32 @mmc_go_idle(ptr noundef %0) #15
  %29 = tail call i32 @mmc_send_if_cond(ptr noundef %0, i32 noundef %27) #15
  %30 = icmp eq i32 %29, 0
  %31 = or i32 %27, 1073741824
  %32 = select i1 %30, i32 %31, i32 %27
  br i1 %16, label %42, label %33

33:                                               ; preds = %26
  %34 = load i32, ptr %7, align 8
  %35 = and i32 %34, 2031616
  %36 = icmp eq i32 %35, 0
  %37 = and i32 %34, 1
  %38 = icmp eq i32 %37, 0
  %39 = or i1 %36, %38
  %40 = or i32 %32, 16777216
  %41 = select i1 %39, i32 %32, i32 %40
  br label %42

42:                                               ; preds = %33, %26
  %43 = phi i32 [ %32, %26 ], [ %41, %33 ]
  %44 = load i16, ptr %8, align 4
  %45 = zext i16 %44 to i32
  %46 = shl nuw i32 1, %45
  switch i32 %46, label %55 [
    i32 128, label %49
    i32 131072, label %47
    i32 262144, label %47
    i32 1048576, label %48
    i32 2097152, label %48
  ]

47:                                               ; preds = %42, %42
  br label %49

48:                                               ; preds = %42, %42
  br label %49

49:                                               ; preds = %48, %47, %42
  %50 = phi ptr [ %9, %48 ], [ %10, %47 ], [ %11, %42 ]
  %51 = load i32, ptr %50, align 4
  %52 = icmp ugt i32 %51, 150
  %53 = or i32 %43, 268435456
  %54 = select i1 %52, i32 %53, i32 %43
  br label %55

55:                                               ; preds = %49, %42
  %56 = phi i32 [ %43, %42 ], [ %54, %49 ]
  %57 = tail call i32 @mmc_send_app_op_cond(ptr noundef %0, i32 noundef %56, ptr noundef %3) #15
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %55
  %60 = load i32, ptr %7, align 8
  %61 = and i32 %60, 16
  %62 = icmp eq i32 %61, 0
  %63 = and i1 %12, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %59
  %65 = load i32, ptr %3, align 4
  %66 = and i32 %65, 16777216
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %64
  %69 = tail call i32 @mmc_set_uhs_voltage(ptr noundef %0, i32 noundef %1) #15
  switch i32 %69, label %72 [
    i32 -11, label %70
    i32 0, label %74
  ]

70:                                               ; preds = %68
  %71 = add i32 %15, -1
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %71, %70 ], [ 0, %68 ]
  br label %13

74:                                               ; preds = %68, %64, %59
  %75 = tail call i32 @mmc_send_cid(ptr noundef %0, ptr noundef %2) #15
  br label %76

76:                                               ; preds = %74, %55
  %77 = phi i32 [ %75, %74 ], [ %57, %55 ]
  ret i32 %77
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_go_idle(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_if_cond(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_app_op_cond(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_set_uhs_voltage(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_cid(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_sd_get_csd(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 16
  %3 = tail call i32 @mmc_send_csd(ptr noundef %0, ptr noundef %2) #15
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %167

5:                                                ; preds = %1
  %6 = load i32, ptr %2, align 4
  %7 = lshr i32 %6, 30
  switch i32 %7, label %148 [
    i32 0, label %8
    i32 1, label %103
  ]

8:                                                ; preds = %5
  %9 = lshr i32 %6, 19
  %10 = and i32 %9, 15
  %11 = lshr i32 %6, 16
  %12 = and i32 %11, 7
  %13 = getelementptr [8 x i32], ptr @taac_exp, i32 0, i32 %12
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr [16 x i32], ptr @taac_mant, i32 0, i32 %10
  %16 = load i32, ptr %15, align 4
  %17 = mul i32 %16, %14
  %18 = add i32 %17, 9
  %19 = udiv i32 %18, 10
  %20 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 4
  store i32 %19, ptr %20, align 4
  %21 = trunc i32 %6 to i16
  %22 = lshr i16 %21, 8
  %23 = mul nuw nsw i16 %22, 100
  %24 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 3
  store i16 %23, ptr %24, align 4
  %25 = lshr i32 %6, 3
  %26 = and i32 %25, 15
  %27 = and i32 %6, 7
  %28 = getelementptr [8 x i32], ptr @tran_exp, i32 0, i32 %27
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr [16 x i8], ptr @tran_mant, i32 0, i32 %26
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = mul i32 %29, %32
  %34 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 7
  store i32 %33, ptr %34, align 4
  %35 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 16, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = lshr i32 %36, 20
  %38 = trunc i32 %37 to i16
  %39 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 2
  store i16 %38, ptr %39, align 2
  %40 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 16, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = lshr i32 %41, 15
  %43 = and i32 %42, 7
  %44 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %41, i32 2) #15
  %45 = and i32 %44, 4095
  %46 = add nuw nsw i32 %45, 1
  %47 = add nuw nsw i32 %43, 2
  %48 = shl nuw nsw i32 %46, %47
  %49 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 11
  store i32 %48, ptr %49, align 4
  %50 = lshr i32 %36, 16
  %51 = and i32 %50, 15
  %52 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 9
  store i32 %51, ptr %52, align 4
  %53 = lshr i32 %36, 15
  %54 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 12
  %55 = trunc i32 %53 to i8
  %56 = and i8 %55, 1
  %57 = load i8, ptr %54, align 4
  %58 = and i8 %57, -32
  %59 = lshr i32 %36, 11
  %60 = trunc i32 %59 to i8
  %61 = and i8 %60, 8
  %62 = lshr i32 %36, 12
  %63 = trunc i32 %62 to i8
  %64 = and i8 %63, 2
  %65 = lshr i32 %36, 8
  %66 = trunc i32 %65 to i8
  %67 = and i8 %66, 16
  %68 = or i8 %61, %56
  %69 = or i8 %68, %64
  %70 = or i8 %69, %67
  %71 = or i8 %70, %58
  %72 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 16, i32 3
  %73 = load i32, ptr %72, align 4
  %74 = lshr i32 %73, 26
  %75 = and i32 %74, 7
  %76 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 6
  store i32 %75, ptr %76, align 4
  %77 = lshr i32 %73, 22
  %78 = and i32 %77, 15
  %79 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 10
  store i32 %78, ptr %79, align 4
  %80 = lshr i32 %73, 19
  %81 = trunc i32 %80 to i8
  %82 = and i8 %81, 4
  %83 = or i8 %71, %82
  store i8 %83, ptr %54, align 4
  %84 = and i32 %41, 16384
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %8
  %87 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 8
  store i32 1, ptr %87, align 4
  br label %97

88:                                               ; preds = %8
  %89 = icmp ugt i32 %78, 8
  br i1 %89, label %90, label %97

90:                                               ; preds = %88
  %91 = lshr i32 %41, 7
  %92 = and i32 %91, 127
  %93 = add nuw nsw i32 %92, 1
  %94 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 8
  %95 = add nsw i32 %78, -9
  %96 = shl nuw nsw i32 %93, %95
  store i32 %96, ptr %94, align 4
  br label %97

97:                                               ; preds = %90, %88, %86
  %98 = and i32 %73, 8192
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %163, label %100

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 5
  %102 = load i32, ptr %101, align 4
  br label %159

103:                                              ; preds = %5
  %104 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 5
  %105 = load i32, ptr %104, align 4
  %106 = or i32 %105, 4
  store i32 %106, ptr %104, align 4
  %107 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 4
  store i32 0, ptr %107, align 4
  %108 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 3
  store i16 0, ptr %108, align 4
  %109 = lshr i32 %6, 3
  %110 = and i32 %109, 15
  %111 = and i32 %6, 7
  %112 = getelementptr [8 x i32], ptr @tran_exp, i32 0, i32 %111
  %113 = load i32, ptr %112, align 4
  %114 = getelementptr [16 x i8], ptr @tran_mant, i32 0, i32 %110
  %115 = load i8, ptr %114, align 1
  %116 = zext i8 %115 to i32
  %117 = mul i32 %113, %116
  %118 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 7
  store i32 %117, ptr %118, align 4
  %119 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 16, i32 1
  %120 = load i32, ptr %119, align 4
  %121 = lshr i32 %120, 20
  %122 = trunc i32 %121 to i16
  %123 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 2
  store i16 %122, ptr %123, align 2
  %124 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 16, i32 2
  %125 = load i32, ptr %124, align 4
  %126 = tail call i32 @llvm.fshl.i32(i32 %120, i32 %125, i32 16) #15
  %127 = and i32 %126, 4194303
  %128 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 5
  store i32 %127, ptr %128, align 4
  %129 = icmp ugt i32 %127, 65534
  br i1 %129, label %130, label %132

130:                                              ; preds = %103
  %131 = or i32 %105, 12
  store i32 %131, ptr %104, align 4
  br label %132

132:                                              ; preds = %130, %103
  %133 = phi i32 [ %131, %130 ], [ %106, %103 ]
  %134 = shl i32 %126, 10
  %135 = add i32 %134, 1024
  %136 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 11
  store i32 %135, ptr %136, align 4
  %137 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 9
  store i32 9, ptr %137, align 4
  %138 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 12
  %139 = load i8, ptr %138, align 4
  %140 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 6
  store i32 4, ptr %140, align 4
  %141 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 10
  store i32 9, ptr %141, align 4
  %142 = and i8 %139, -16
  store i8 %142, ptr %138, align 4
  %143 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 8
  store i32 1, ptr %143, align 4
  %144 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 16, i32 3
  %145 = load i32, ptr %144, align 4
  %146 = and i32 %145, 8192
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %163, label %159

148:                                              ; preds = %5
  %149 = load ptr, ptr %0, align 8
  %150 = getelementptr inbounds %struct.mmc_host, ptr %149, i32 0, i32 1, i32 3
  %151 = load ptr, ptr %150, align 4
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %156

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct.mmc_host, ptr %149, i32 0, i32 1
  %155 = load ptr, ptr %154, align 4
  br label %156

156:                                              ; preds = %153, %148
  %157 = phi ptr [ %155, %153 ], [ %151, %148 ]
  %158 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %157, i32 noundef %7) #16
  br label %167

159:                                              ; preds = %132, %100
  %160 = phi i32 [ %102, %100 ], [ %133, %132 ]
  %161 = phi ptr [ %101, %100 ], [ %104, %132 ]
  %162 = or i32 %160, 2
  store i32 %162, ptr %161, align 4
  br label %163

163:                                              ; preds = %159, %132, %97
  %164 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 8
  %165 = load i32, ptr %164, align 4
  %166 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 9
  store i32 %165, ptr %166, align 4
  br label %167

167:                                              ; preds = %163, %156, %1
  %168 = phi i32 [ %3, %1 ], [ -22, %156 ], [ 0, %163 ]
  ret i32 %168
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_csd(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_sd_setup_card(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 {
  br i1 %2, label %242, label %4

4:                                                ; preds = %3
  %5 = tail call i32 @mmc_app_send_scr(ptr noundef %1) #15
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %288

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 17
  %9 = load i32, ptr %8, align 4
  %10 = icmp ult i32 %9, 268435456
  br i1 %10, label %23, label %11

11:                                               ; preds = %7
  %12 = lshr i32 %9, 28
  %13 = load ptr, ptr %1, align 8
  %14 = getelementptr inbounds %struct.mmc_host, ptr %13, i32 0, i32 1, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.mmc_host, ptr %13, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  br label %20

20:                                               ; preds = %17, %11
  %21 = phi ptr [ %19, %17 ], [ %15, %11 ]
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %21, i32 noundef %12) #16
  br label %288

23:                                               ; preds = %7
  %24 = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 22
  %25 = lshr i32 %9, 24
  %26 = trunc i32 %25 to i8
  store i8 %26, ptr %24, align 1
  %27 = lshr i32 %9, 16
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 15
  %30 = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 22, i32 4
  store i8 %29, ptr %30, align 1
  %31 = icmp eq i8 %26, 2
  br i1 %31, label %35, label %32

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 22, i32 1
  %34 = load i8, ptr %33, align 1
  br label %40

35:                                               ; preds = %23
  %36 = lshr i32 %9, 15
  %37 = trunc i32 %36 to i8
  %38 = and i8 %37, 1
  %39 = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 22, i32 1
  store i8 %38, ptr %39, align 1
  br label %40

40:                                               ; preds = %35, %32
  %41 = phi i8 [ %34, %32 ], [ %38, %35 ]
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %57, label %43

43:                                               ; preds = %40
  %44 = lshr i32 %9, 10
  %45 = trunc i32 %44 to i8
  %46 = and i8 %45, 1
  %47 = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 22, i32 2
  store i8 %46, ptr %47, align 1
  %48 = lshr i32 %9, 6
  %49 = trunc i32 %48 to i8
  %50 = and i8 %49, 15
  %51 = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 22, i32 3
  store i8 %50, ptr %51, align 1
  %52 = shl i32 %9, 8
  %53 = ashr i32 %52, 31
  %54 = trunc i32 %53 to i8
  %55 = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 14
  store i8 %54, ptr %55, align 8
  %56 = icmp ne i8 %46, 0
  br label %67

57:                                               ; preds = %40
  %58 = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 22, i32 2
  %59 = load i8, ptr %58, align 1
  %60 = shl i32 %9, 8
  %61 = ashr i32 %60, 31
  %62 = trunc i32 %61 to i8
  %63 = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 14
  store i8 %62, ptr %63, align 8
  %64 = icmp ne i8 %59, 0
  %65 = xor i1 %42, true
  %66 = select i1 %64, i1 true, i1 %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %57, %43
  %68 = phi i1 [ %56, %43 ], [ %64, %57 ]
  %69 = select i1 %68, i8 15, i8 3
  %70 = trunc i32 %9 to i8
  %71 = and i8 %69, %70
  %72 = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 22, i32 5
  store i8 %71, ptr %72, align 1
  br label %73

73:                                               ; preds = %67, %57
  %74 = and i32 %9, 327680
  %75 = icmp eq i32 %74, 327680
  br i1 %75, label %87, label %76

76:                                               ; preds = %73
  %77 = load ptr, ptr %1, align 8
  %78 = getelementptr inbounds %struct.mmc_host, ptr %77, i32 0, i32 1, i32 3
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.mmc_host, ptr %77, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  br label %84

84:                                               ; preds = %81, %76
  %85 = phi ptr [ %83, %81 ], [ %79, %76 ]
  %86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %85) #16
  br label %288

87:                                               ; preds = %73
  %88 = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 20, i32 2
  %89 = load i16, ptr %88, align 2
  %90 = and i16 %89, 256
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %87
  %93 = load ptr, ptr %1, align 8
  %94 = getelementptr inbounds %struct.mmc_host, ptr %93, i32 0, i32 1, i32 3
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.mmc_host, ptr %93, i32 0, i32 1
  %99 = load ptr, ptr %98, align 4
  br label %100

100:                                              ; preds = %97, %92
  %101 = phi ptr [ %99, %97 ], [ %95, %92 ]
  %102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %101) #16
  br label %239

103:                                              ; preds = %87
  %104 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %105 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %104, i32 noundef 3264, i32 noundef 64) #14
  %106 = icmp eq ptr %105, null
  br i1 %106, label %288, label %107

107:                                              ; preds = %103
  %108 = tail call i32 @mmc_app_sd_status(ptr noundef %1, ptr noundef nonnull %105) #15
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %178

110:                                              ; preds = %107
  %111 = load i32, ptr %105, align 8
  %112 = tail call i32 @llvm.bswap.i32(i32 %111) #15
  %113 = getelementptr %struct.mmc_card, ptr %1, i32 0, i32 18, i32 0
  store i32 %112, ptr %113, align 4
  %114 = getelementptr i32, ptr %105, i32 1
  %115 = load i32, ptr %114, align 4
  %116 = tail call i32 @llvm.bswap.i32(i32 %115) #15
  %117 = getelementptr %struct.mmc_card, ptr %1, i32 0, i32 18, i32 1
  store i32 %116, ptr %117, align 4
  %118 = getelementptr i32, ptr %105, i32 2
  %119 = load i32, ptr %118, align 8
  %120 = tail call i32 @llvm.bswap.i32(i32 %119) #15
  %121 = getelementptr %struct.mmc_card, ptr %1, i32 0, i32 18, i32 2
  store i32 %120, ptr %121, align 4
  %122 = getelementptr i32, ptr %105, i32 3
  %123 = load i32, ptr %122, align 4
  %124 = tail call i32 @llvm.bswap.i32(i32 %123) #15
  %125 = getelementptr %struct.mmc_card, ptr %1, i32 0, i32 18, i32 3
  store i32 %124, ptr %125, align 4
  %126 = getelementptr i32, ptr %105, i32 4
  %127 = load i32, ptr %126, align 8
  %128 = tail call i32 @llvm.bswap.i32(i32 %127) #15
  %129 = getelementptr %struct.mmc_card, ptr %1, i32 0, i32 18, i32 4
  store i32 %128, ptr %129, align 4
  %130 = getelementptr i32, ptr %105, i32 5
  %131 = load i32, ptr %130, align 4
  %132 = tail call i32 @llvm.bswap.i32(i32 %131) #15
  %133 = getelementptr %struct.mmc_card, ptr %1, i32 0, i32 18, i32 5
  store i32 %132, ptr %133, align 4
  %134 = getelementptr i32, ptr %105, i32 6
  %135 = load i32, ptr %134, align 8
  %136 = tail call i32 @llvm.bswap.i32(i32 %135) #15
  %137 = getelementptr %struct.mmc_card, ptr %1, i32 0, i32 18, i32 6
  store i32 %136, ptr %137, align 4
  %138 = getelementptr i32, ptr %105, i32 7
  %139 = load i32, ptr %138, align 4
  %140 = tail call i32 @llvm.bswap.i32(i32 %139) #15
  %141 = getelementptr %struct.mmc_card, ptr %1, i32 0, i32 18, i32 7
  store i32 %140, ptr %141, align 4
  %142 = getelementptr i32, ptr %105, i32 8
  %143 = load i32, ptr %142, align 8
  %144 = tail call i32 @llvm.bswap.i32(i32 %143) #15
  %145 = getelementptr %struct.mmc_card, ptr %1, i32 0, i32 18, i32 8
  store i32 %144, ptr %145, align 4
  %146 = getelementptr i32, ptr %105, i32 9
  %147 = load i32, ptr %146, align 4
  %148 = tail call i32 @llvm.bswap.i32(i32 %147) #15
  %149 = getelementptr %struct.mmc_card, ptr %1, i32 0, i32 18, i32 9
  store i32 %148, ptr %149, align 4
  %150 = getelementptr i32, ptr %105, i32 10
  %151 = load i32, ptr %150, align 8
  %152 = tail call i32 @llvm.bswap.i32(i32 %151) #15
  %153 = getelementptr %struct.mmc_card, ptr %1, i32 0, i32 18, i32 10
  store i32 %152, ptr %153, align 4
  %154 = getelementptr i32, ptr %105, i32 11
  %155 = load i32, ptr %154, align 4
  %156 = tail call i32 @llvm.bswap.i32(i32 %155) #15
  %157 = getelementptr %struct.mmc_card, ptr %1, i32 0, i32 18, i32 11
  store i32 %156, ptr %157, align 4
  %158 = getelementptr i32, ptr %105, i32 12
  %159 = load i32, ptr %158, align 8
  %160 = tail call i32 @llvm.bswap.i32(i32 %159) #15
  %161 = getelementptr %struct.mmc_card, ptr %1, i32 0, i32 18, i32 12
  store i32 %160, ptr %161, align 4
  %162 = getelementptr i32, ptr %105, i32 13
  %163 = load i32, ptr %162, align 4
  %164 = tail call i32 @llvm.bswap.i32(i32 %163) #15
  %165 = getelementptr %struct.mmc_card, ptr %1, i32 0, i32 18, i32 13
  store i32 %164, ptr %165, align 4
  %166 = getelementptr i32, ptr %105, i32 14
  %167 = load i32, ptr %166, align 8
  %168 = tail call i32 @llvm.bswap.i32(i32 %167) #15
  %169 = getelementptr %struct.mmc_card, ptr %1, i32 0, i32 18, i32 14
  store i32 %168, ptr %169, align 4
  %170 = getelementptr i32, ptr %105, i32 15
  %171 = load i32, ptr %170, align 4
  %172 = tail call i32 @llvm.bswap.i32(i32 %171) #15
  %173 = getelementptr %struct.mmc_card, ptr %1, i32 0, i32 18, i32 15
  store i32 %172, ptr %173, align 4
  tail call void @kfree(ptr noundef nonnull %105) #15
  %174 = load i32, ptr %121, align 4
  %175 = lshr i32 %174, 12
  %176 = and i32 %175, 15
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %229, label %189

178:                                              ; preds = %107
  %179 = load ptr, ptr %1, align 8
  %180 = getelementptr inbounds %struct.mmc_host, ptr %179, i32 0, i32 1, i32 3
  %181 = load ptr, ptr %180, align 4
  %182 = icmp eq ptr %181, null
  br i1 %182, label %183, label %186

183:                                              ; preds = %178
  %184 = getelementptr inbounds %struct.mmc_host, ptr %179, i32 0, i32 1
  %185 = load ptr, ptr %184, align 4
  br label %186

186:                                              ; preds = %183, %178
  %187 = phi ptr [ %185, %183 ], [ %181, %178 ]
  %188 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %187) #16
  tail call void @kfree(ptr noundef nonnull %105) #15
  br label %239

189:                                              ; preds = %110
  %190 = icmp ult i32 %176, 10
  br i1 %190, label %195, label %191

191:                                              ; preds = %189
  %192 = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 22, i32 1
  %193 = load i8, ptr %192, align 1
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %218, label %195

195:                                              ; preds = %191, %189
  %196 = getelementptr [16 x i32], ptr @sd_au_size, i32 0, i32 %176
  %197 = load i32, ptr %196, align 4
  %198 = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 23
  store i32 %197, ptr %198, align 8
  %199 = load i32, ptr %125, align 4
  %200 = tail call i32 @llvm.fshl.i32(i32 %174, i32 %199, i32 8) #15
  %201 = and i32 %200, 65535
  %202 = lshr i32 %199, 18
  %203 = and i32 %202, 63
  %204 = icmp ne i32 %201, 0
  %205 = icmp ne i32 %203, 0
  %206 = select i1 %204, i1 %205, i1 false
  br i1 %206, label %207, label %229

207:                                              ; preds = %195
  %208 = lshr i32 %199, 16
  %209 = and i32 %208, 3
  %210 = trunc i32 %203 to i16
  %211 = mul nuw i16 %210, 1000
  %212 = trunc i32 %200 to i16
  %213 = udiv i16 %211, %212
  %214 = zext i16 %213 to i32
  %215 = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 23, i32 1
  store i32 %214, ptr %215, align 4
  %216 = mul nuw nsw i32 %209, 1000
  %217 = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 23, i32 2
  store i32 %216, ptr %217, align 8
  br label %229

218:                                              ; preds = %191
  %219 = load ptr, ptr %1, align 8
  %220 = getelementptr inbounds %struct.mmc_host, ptr %219, i32 0, i32 1, i32 3
  %221 = load ptr, ptr %220, align 4
  %222 = icmp eq ptr %221, null
  br i1 %222, label %223, label %226

223:                                              ; preds = %218
  %224 = getelementptr inbounds %struct.mmc_host, ptr %219, i32 0, i32 1
  %225 = load ptr, ptr %224, align 4
  br label %226

226:                                              ; preds = %223, %218
  %227 = phi ptr [ %225, %223 ], [ %221, %218 ]
  %228 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %227) #16
  br label %229

229:                                              ; preds = %226, %207, %195, %110
  %230 = load i32, ptr %137, align 4
  %231 = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 22, i32 3
  %232 = load i8, ptr %231, align 1
  %233 = icmp ne i8 %232, 0
  %234 = and i32 %230, 33554432
  %235 = icmp ne i32 %234, 0
  %236 = select i1 %233, i1 %235, i1 false
  %237 = zext i1 %236 to i32
  %238 = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 13
  store i32 %237, ptr %238, align 4
  br label %239

239:                                              ; preds = %229, %186, %100
  tail call void @mmc_init_erase(ptr noundef %1) #15
  %240 = tail call fastcc i32 @mmc_read_switch(ptr noundef %1)
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %247, label %288

242:                                              ; preds = %3
  %243 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %244 = load i32, ptr %243, align 8
  %245 = and i32 %244, 16
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %288, label %252

247:                                              ; preds = %239
  %248 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %249 = load i32, ptr %248, align 8
  %250 = and i32 %249, 16
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %258, label %252

252:                                              ; preds = %247, %242
  %253 = load i8, ptr @use_spi_crc, align 1, !range !8
  %254 = zext i8 %253 to i32
  %255 = tail call i32 @mmc_spi_set_crc(ptr noundef %0, i32 noundef %254) #15
  %256 = icmp ne i32 %255, 0
  %257 = or i1 %256, %2
  br i1 %257, label %288, label %258

258:                                              ; preds = %252, %247
  %259 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 17
  %260 = load i32, ptr %259, align 4
  %261 = and i32 %260, 262144
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %288

263:                                              ; preds = %258
  %264 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 3
  %265 = load ptr, ptr %264, align 4
  %266 = getelementptr inbounds %struct.mmc_host_ops, ptr %265, i32 0, i32 5
  %267 = load ptr, ptr %266, align 4
  %268 = icmp eq ptr %267, null
  br i1 %268, label %272, label %269

269:                                              ; preds = %263
  %270 = tail call i32 %267(ptr noundef %0) #15
  %271 = icmp slt i32 %270, 0
  br i1 %271, label %272, label %282

272:                                              ; preds = %269, %263
  %273 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1, i32 3
  %274 = load ptr, ptr %273, align 4
  %275 = icmp eq ptr %274, null
  br i1 %275, label %276, label %279

276:                                              ; preds = %272
  %277 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1
  %278 = load ptr, ptr %277, align 4
  br label %279

279:                                              ; preds = %276, %272
  %280 = phi ptr [ %278, %276 ], [ %274, %272 ]
  %281 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %280) #16
  br label %288

282:                                              ; preds = %269
  %283 = icmp eq i32 %270, 0
  br i1 %283, label %288, label %284

284:                                              ; preds = %282
  %285 = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 5
  %286 = load i32, ptr %285, align 4
  %287 = or i32 %286, 2
  store i32 %287, ptr %285, align 4
  br label %288

288:                                              ; preds = %284, %282, %279, %258, %252, %242, %239, %103, %84, %20, %4
  %289 = phi i32 [ %5, %4 ], [ %240, %239 ], [ %255, %252 ], [ 0, %279 ], [ 0, %284 ], [ 0, %282 ], [ -12, %103 ], [ -22, %20 ], [ -22, %84 ], [ 0, %258 ], [ 0, %242 ]
  ret i32 %289
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_app_send_scr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_init_erase(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mmc_read_switch(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 22
  %3 = load i8, ptr %2, align 8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %67, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 2
  %7 = load i16, ptr %6, align 2
  %8 = and i16 %7, 1024
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %5
  %11 = load ptr, ptr %0, align 8
  %12 = getelementptr inbounds %struct.mmc_host, ptr %11, i32 0, i32 1, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.mmc_host, ptr %11, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  br label %18

18:                                               ; preds = %15, %10
  %19 = phi ptr [ %17, %15 ], [ %13, %10 ]
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %19) #16
  br label %67

21:                                               ; preds = %5
  %22 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %23 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3264, i32 noundef 64) #14
  %24 = icmp eq ptr %23, null
  br i1 %24, label %67, label %25

25:                                               ; preds = %21
  %26 = tail call i32 @mmc_sd_switch(ptr noundef %0, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull %23) #15
  switch i32 %26, label %65 [
    i32 0, label %38
    i32 -14, label %27
    i32 -22, label %27
    i32 -38, label %27
  ]

27:                                               ; preds = %25, %25, %25
  %28 = load ptr, ptr %0, align 8
  %29 = getelementptr inbounds %struct.mmc_host, ptr %28, i32 0, i32 1, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.mmc_host, ptr %28, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  br label %35

35:                                               ; preds = %32, %27
  %36 = phi ptr [ %34, %32 ], [ %30, %27 ]
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %36) #16
  br label %65

38:                                               ; preds = %25
  %39 = getelementptr i8, ptr %23, i32 13
  %40 = load i8, ptr %39, align 1
  %41 = and i8 %40, 2
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 24
  store i32 50000000, ptr %44, align 4
  br label %45

45:                                               ; preds = %43, %38
  %46 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 22, i32 1
  %47 = load i8, ptr %46, align 1
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %65, label %49

49:                                               ; preds = %45
  %50 = zext i8 %40 to i32
  %51 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 24, i32 2
  store i32 %50, ptr %51, align 4
  %52 = getelementptr i8, ptr %23, i32 9
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i32
  %55 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 24, i32 3
  store i32 %54, ptr %55, align 4
  %56 = getelementptr i8, ptr %23, i32 7
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i32
  %59 = getelementptr i8, ptr %23, i32 6
  %60 = load i8, ptr %59, align 2
  %61 = zext i8 %60 to i32
  %62 = shl nuw nsw i32 %61, 8
  %63 = or i32 %62, %58
  %64 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 24, i32 4
  store i32 %63, ptr %64, align 4
  br label %65

65:                                               ; preds = %49, %45, %35, %25
  %66 = phi i32 [ 0, %35 ], [ 0, %49 ], [ 0, %45 ], [ %26, %25 ]
  tail call void @kfree(ptr noundef nonnull %23) #15
  br label %67

67:                                               ; preds = %65, %21, %18, %1
  %68 = phi i32 [ %66, %65 ], [ 0, %18 ], [ 0, %1 ], [ -12, %21 ]
  ret i32 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_spi_set_crc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @mmc_sd_get_max_clock(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.mmc_host, ptr %2, i32 0, i32 28, i32 7
  %4 = load i8, ptr %3, align 4
  %5 = add i8 %4, -3
  %6 = icmp ult i8 %5, -2
  %7 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 24
  %8 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 7
  %9 = select i1 %6, ptr %8, ptr %7
  %10 = load i32, ptr %9, align 4
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_attach_sd(ptr noundef %0) local_unnamed_addr #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  store i32 0, ptr %2, align 4, !annotation !9
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 29
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, 2
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %8, !prof !10

7:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1816, i32 noundef 9, ptr noundef null) #15
  br label %8

8:                                                ; preds = %7, %1
  %9 = call i32 @mmc_send_app_op_cond(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %55

11:                                               ; preds = %8
  call void @mmc_attach_bus(ptr noundef %0, ptr noundef nonnull @mmc_sd_ops) #15
  %12 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 10
  %13 = load i32, ptr %12, align 64
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 8
  store i32 %13, ptr %16, align 8
  br label %17

17:                                               ; preds = %15, %11
  %18 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = call i32 @mmc_go_idle(ptr noundef %0) #15
  %24 = call i32 @mmc_spi_read_ocr(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #15
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %22, %17
  %27 = load i32, ptr %2, align 4
  %28 = and i32 %27, -32768
  store i32 %28, ptr %2, align 4
  %29 = call i32 @mmc_select_voltage(ptr noundef %0, i32 noundef %28) #15
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %26
  %32 = call fastcc i32 @mmc_sd_init_card(ptr noundef %0, i32 noundef %29, ptr noundef null)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  call void @mmc_release_host(ptr noundef %0) #15
  %35 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 37
  %36 = load ptr, ptr %35, align 8
  %37 = call i32 @mmc_add_card(ptr noundef %36) #15
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = call i32 @__mmc_claim_host(ptr noundef %0, ptr noundef null, ptr noundef null) #15
  br label %55

41:                                               ; preds = %34
  %42 = load ptr, ptr %35, align 8
  call void @mmc_remove_card(ptr noundef %42) #15
  store ptr null, ptr %35, align 8
  %43 = call i32 @__mmc_claim_host(ptr noundef %0, ptr noundef null, ptr noundef null) #15
  br label %44

44:                                               ; preds = %41, %31, %26, %22
  %45 = phi i32 [ %24, %22 ], [ %32, %31 ], [ %37, %41 ], [ -22, %26 ]
  call void @mmc_detach_bus(ptr noundef %0) #15
  %46 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  br label %52

52:                                               ; preds = %49, %44
  %53 = phi ptr [ %51, %49 ], [ %47, %44 ]
  %54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %53, i32 noundef %45) #16
  br label %55

55:                                               ; preds = %52, %39, %8
  %56 = phi i32 [ %45, %52 ], [ 0, %39 ], [ %9, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  ret i32 %56
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_attach_bus(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_spi_read_ocr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_select_voltage(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mmc_sd_init_card(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #2 {
  %4 = alloca [4 x i32], align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 29
  %7 = load i16, ptr %6, align 8
  %8 = and i16 %7, 2
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %11, !prof !10

10:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1399, i32 noundef 9, ptr noundef null) #15
  br label %11

11:                                               ; preds = %10, %3
  %12 = call i32 @mmc_sd_get_cid(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %525

14:                                               ; preds = %11
  %15 = icmp ne ptr %2, null
  %16 = getelementptr inbounds %struct.mmc_card, ptr %2, i32 0, i32 15
  %17 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 3
  %18 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %19 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 59
  %20 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28, i32 8
  br label %21

21:                                               ; preds = %154, %14
  %22 = phi i1 [ false, %14 ], [ true, %154 ]
  br i1 %15, label %23, label %26

23:                                               ; preds = %21
  %24 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %4, ptr noundef dereferenceable(16) %16, i32 16)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %35, label %525

26:                                               ; preds = %21
  %27 = call ptr @mmc_alloc_card(ptr noundef %0, ptr noundef nonnull @sd_type) #15
  %28 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = ptrtoint ptr %27 to i32
  br label %525

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.mmc_card, ptr %27, i32 0, i32 2
  store i32 %1, ptr %32, align 8
  %33 = getelementptr inbounds %struct.mmc_card, ptr %27, i32 0, i32 4
  store i32 1, ptr %33, align 8
  %34 = getelementptr inbounds %struct.mmc_card, ptr %27, i32 0, i32 15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %34, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 16, i1 false)
  br label %35

35:                                               ; preds = %31, %23
  %36 = phi ptr [ %27, %31 ], [ %2, %23 ]
  %37 = load ptr, ptr %17, align 4
  %38 = getelementptr inbounds %struct.mmc_host_ops, ptr %37, i32 0, i32 9
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  call void %39(ptr noundef %0, ptr noundef %36) #15
  br label %42

42:                                               ; preds = %41, %35
  %43 = load i32, ptr %18, align 8
  %44 = and i32 %43, 16
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.mmc_card, ptr %36, i32 0, i32 3
  %48 = call i32 @mmc_send_relative_addr(ptr noundef %0, ptr noundef %47) #15
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %521

50:                                               ; preds = %46, %42
  br i1 %15, label %99, label %51

51:                                               ; preds = %50
  %52 = call i32 @mmc_sd_get_csd(ptr noundef %36)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %523

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.mmc_card, ptr %36, i32 0, i32 15
  %56 = load i32, ptr %55, align 4
  %57 = lshr i32 %56, 24
  %58 = getelementptr inbounds %struct.mmc_card, ptr %36, i32 0, i32 19
  store i32 %57, ptr %58, align 4
  %59 = lshr i32 %56, 8
  %60 = trunc i32 %59 to i16
  %61 = getelementptr inbounds %struct.mmc_card, ptr %36, i32 0, i32 19, i32 4
  store i16 %60, ptr %61, align 4
  %62 = trunc i32 %56 to i8
  %63 = getelementptr inbounds %struct.mmc_card, ptr %36, i32 0, i32 19, i32 1
  store i8 %62, ptr %63, align 4
  %64 = getelementptr %struct.mmc_card, ptr %36, i32 0, i32 15, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = lshr i32 %65, 24
  %67 = trunc i32 %66 to i8
  %68 = getelementptr %struct.mmc_card, ptr %36, i32 0, i32 19, i32 1, i32 1
  store i8 %67, ptr %68, align 1
  %69 = lshr i32 %65, 16
  %70 = trunc i32 %69 to i8
  %71 = getelementptr %struct.mmc_card, ptr %36, i32 0, i32 19, i32 1, i32 2
  store i8 %70, ptr %71, align 2
  %72 = lshr i32 %65, 8
  %73 = trunc i32 %72 to i8
  %74 = getelementptr %struct.mmc_card, ptr %36, i32 0, i32 19, i32 1, i32 3
  store i8 %73, ptr %74, align 1
  %75 = trunc i32 %65 to i8
  %76 = getelementptr %struct.mmc_card, ptr %36, i32 0, i32 19, i32 1, i32 4
  store i8 %75, ptr %76, align 4
  %77 = getelementptr %struct.mmc_card, ptr %36, i32 0, i32 15, i32 2
  %78 = load i32, ptr %77, align 4
  %79 = lshr i32 %78, 28
  %80 = trunc i32 %79 to i8
  %81 = getelementptr inbounds %struct.mmc_card, ptr %36, i32 0, i32 19, i32 6
  store i8 %80, ptr %81, align 4
  %82 = lshr i32 %78, 24
  %83 = trunc i32 %82 to i8
  %84 = and i8 %83, 15
  %85 = getelementptr inbounds %struct.mmc_card, ptr %36, i32 0, i32 19, i32 7
  store i8 %84, ptr %85, align 1
  %86 = getelementptr %struct.mmc_card, ptr %36, i32 0, i32 15, i32 3
  %87 = load i32, ptr %86, align 4
  %88 = call i32 @llvm.fshl.i32(i32 %78, i32 %87, i32 8) #15
  %89 = getelementptr inbounds %struct.mmc_card, ptr %36, i32 0, i32 19, i32 3
  store i32 %88, ptr %89, align 4
  %90 = lshr i32 %87, 12
  %91 = trunc i32 %90 to i16
  %92 = and i16 %91, 255
  %93 = getelementptr inbounds %struct.mmc_card, ptr %36, i32 0, i32 19, i32 5
  %94 = lshr i32 %87, 8
  %95 = trunc i32 %94 to i8
  %96 = and i8 %95, 15
  %97 = getelementptr inbounds %struct.mmc_card, ptr %36, i32 0, i32 19, i32 8
  store i8 %96, ptr %97, align 2
  %98 = add nuw nsw i16 %92, 2000
  store i16 %98, ptr %93, align 2
  br label %99

99:                                               ; preds = %54, %50
  %100 = getelementptr inbounds %struct.mmc_card, ptr %36, i32 0, i32 20, i32 12
  %101 = load i8, ptr %100, align 8
  %102 = and i8 %101, 16
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %99
  %105 = load i32, ptr %19, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %104
  %108 = call i32 @mmc_set_dsr(ptr noundef %0) #15
  br label %109

109:                                              ; preds = %107, %104, %99
  %110 = load i32, ptr %18, align 8
  %111 = and i32 %110, 16
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = call i32 @mmc_select_card(ptr noundef %36) #15
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %521

116:                                              ; preds = %113, %109
  %117 = call i32 @mmc_sd_setup_card(ptr noundef %0, ptr noundef %36, i1 noundef zeroext %15)
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %521

119:                                              ; preds = %116
  br i1 %22, label %157, label %120

120:                                              ; preds = %119
  %121 = load i32, ptr %18, align 8
  %122 = and i32 %121, 16
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %157

124:                                              ; preds = %120
  %125 = and i32 %121, 2031616
  %126 = icmp eq i32 %125, 0
  %127 = and i32 %121, 1
  %128 = icmp eq i32 %127, 0
  %129 = or i1 %126, %128
  br i1 %129, label %157, label %130

130:                                              ; preds = %124
  %131 = getelementptr inbounds %struct.mmc_card, ptr %36, i32 0, i32 24, i32 2
  %132 = load i32, ptr %131, align 4
  %133 = and i32 %132, 28
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %157, label %135

135:                                              ; preds = %130
  %136 = load i8, ptr %20, align 1
  %137 = icmp eq i8 %136, 1
  br i1 %137, label %157, label %138

138:                                              ; preds = %135
  br i1 %15, label %139, label %146

139:                                              ; preds = %138
  %140 = call fastcc i32 @mmc_read_switch(ptr noundef %36)
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %525

142:                                              ; preds = %139
  %143 = load i32, ptr %131, align 4
  %144 = and i32 %143, 28
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %157, label %146

146:                                              ; preds = %142, %138
  %147 = call i32 @mmc_host_set_uhs_voltage(ptr noundef %0) #15
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = call fastcc i32 @mmc_sd_init_uhs_card(ptr noundef %36)
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %519, label %152

152:                                              ; preds = %149, %146
  call void @mmc_power_cycle(ptr noundef %0, i32 noundef %1) #15
  br i1 %15, label %154, label %153

153:                                              ; preds = %152
  call void @mmc_remove_card(ptr noundef %36) #15
  br label %154

154:                                              ; preds = %153, %152
  %155 = call i32 @mmc_sd_get_cid(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %21, label %525

157:                                              ; preds = %142, %135, %130, %124, %120, %119
  %158 = load i32, ptr %5, align 4
  %159 = and i32 %158, 16777216
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %171, label %161

161:                                              ; preds = %157
  %162 = load i32, ptr %18, align 8
  %163 = and i32 %162, 2031616
  %164 = icmp eq i32 %163, 0
  %165 = and i32 %162, 1
  %166 = icmp eq i32 %165, 0
  %167 = or i1 %164, %166
  br i1 %167, label %171, label %168

168:                                              ; preds = %161
  %169 = call fastcc i32 @mmc_sd_init_uhs_card(ptr noundef %36)
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %200, label %521

171:                                              ; preds = %161, %157
  %172 = call i32 @mmc_sd_switch_hs(ptr noundef %36)
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %171
  %175 = load ptr, ptr %36, align 8
  call void @mmc_set_timing(ptr noundef %175, i32 noundef 2) #15
  br label %178

176:                                              ; preds = %171
  %177 = icmp eq i32 %172, 0
  br i1 %177, label %178, label %521

178:                                              ; preds = %176, %174
  %179 = load ptr, ptr %36, align 8
  %180 = getelementptr inbounds %struct.mmc_host, ptr %179, i32 0, i32 28, i32 7
  %181 = load i8, ptr %180, align 4
  %182 = add i8 %181, -3
  %183 = icmp ult i8 %182, -2
  %184 = getelementptr inbounds %struct.mmc_card, ptr %36, i32 0, i32 24
  %185 = getelementptr inbounds %struct.mmc_card, ptr %36, i32 0, i32 20, i32 7
  %186 = select i1 %183, ptr %185, ptr %184
  %187 = load i32, ptr %186, align 4
  call void @mmc_set_clock(ptr noundef %0, i32 noundef %187) #15
  %188 = load i32, ptr %18, align 8
  %189 = and i32 %188, 1
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %200, label %191

191:                                              ; preds = %178
  %192 = getelementptr inbounds %struct.mmc_card, ptr %36, i32 0, i32 22, i32 4
  %193 = load i8, ptr %192, align 4
  %194 = and i8 %193, 4
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %200, label %196

196:                                              ; preds = %191
  %197 = call i32 @mmc_app_set_bus_width(ptr noundef %36, i32 noundef 2) #15
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %521

199:                                              ; preds = %196
  call void @mmc_set_bus_width(ptr noundef %0, i32 noundef 2) #15
  br label %200

200:                                              ; preds = %199, %191, %178, %168
  br i1 %15, label %437, label %201

201:                                              ; preds = %200
  %202 = load ptr, ptr %36, align 8
  %203 = getelementptr inbounds %struct.mmc_host, ptr %202, i32 0, i32 16
  %204 = load i32, ptr %203, align 8
  %205 = and i32 %204, 16
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %437

207:                                              ; preds = %201
  %208 = getelementptr inbounds %struct.mmc_card, ptr %36, i32 0, i32 22, i32 5
  %209 = load i8, ptr %208, align 1
  %210 = and i8 %209, 4
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %437, label %212

212:                                              ; preds = %207
  %213 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %214 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %213, i32 noundef 3520, i32 noundef 512) #14
  %215 = icmp eq ptr %214, null
  br i1 %215, label %523, label %216

216:                                              ; preds = %212
  %217 = load ptr, ptr %36, align 8
  %218 = call i32 @mmc_send_adtc_data(ptr noundef %36, ptr noundef %217, i32 noundef 48, i32 noundef 511, ptr noundef nonnull %214, i32 noundef 512) #15
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %231, label %220

220:                                              ; preds = %216
  %221 = load ptr, ptr %36, align 8
  %222 = getelementptr inbounds %struct.mmc_host, ptr %221, i32 0, i32 1, i32 3
  %223 = load ptr, ptr %222, align 4
  %224 = icmp eq ptr %223, null
  br i1 %224, label %225, label %228

225:                                              ; preds = %220
  %226 = getelementptr inbounds %struct.mmc_host, ptr %221, i32 0, i32 1
  %227 = load ptr, ptr %226, align 4
  br label %228

228:                                              ; preds = %225, %220
  %229 = phi ptr [ %227, %225 ], [ %223, %220 ]
  %230 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %229, i32 noundef %218) #16
  br label %435

231:                                              ; preds = %216
  %232 = load i16, ptr %214, align 8
  %233 = getelementptr i8, ptr %214, i32 2
  %234 = load i16, ptr %233, align 2
  %235 = icmp ne i16 %232, 0
  %236 = icmp ugt i16 %234, 512
  %237 = select i1 %235, i1 true, i1 %236
  br i1 %237, label %254, label %238

238:                                              ; preds = %231
  %239 = getelementptr i8, ptr %214, i32 4
  %240 = load i8, ptr %239, align 4
  %241 = zext i8 %240 to i32
  %242 = icmp eq i8 %240, 0
  br i1 %242, label %434, label %243

243:                                              ; preds = %238
  %244 = getelementptr inbounds %struct.mmc_card, ptr %36, i32 0, i32 26
  %245 = getelementptr inbounds %struct.mmc_card, ptr %36, i32 0, i32 26, i32 3
  %246 = getelementptr inbounds %struct.mmc_card, ptr %36, i32 0, i32 26, i32 5
  %247 = getelementptr inbounds %struct.mmc_card, ptr %36, i32 0, i32 26, i32 1
  %248 = getelementptr inbounds %struct.mmc_card, ptr %36, i32 0, i32 26, i32 2
  %249 = getelementptr inbounds %struct.mmc_card, ptr %36, i32 0, i32 25
  %250 = getelementptr inbounds %struct.mmc_card, ptr %36, i32 0, i32 25, i32 3
  %251 = getelementptr inbounds %struct.mmc_card, ptr %36, i32 0, i32 25, i32 5
  %252 = getelementptr inbounds %struct.mmc_card, ptr %36, i32 0, i32 25, i32 1
  %253 = getelementptr inbounds %struct.mmc_card, ptr %36, i32 0, i32 25, i32 2
  br label %265

254:                                              ; preds = %231
  %255 = load ptr, ptr %36, align 8
  %256 = getelementptr inbounds %struct.mmc_host, ptr %255, i32 0, i32 1, i32 3
  %257 = load ptr, ptr %256, align 4
  %258 = icmp eq ptr %257, null
  br i1 %258, label %259, label %262

259:                                              ; preds = %254
  %260 = getelementptr inbounds %struct.mmc_host, ptr %255, i32 0, i32 1
  %261 = load ptr, ptr %260, align 4
  br label %262

262:                                              ; preds = %259, %254
  %263 = phi ptr [ %261, %259 ], [ %257, %254 ]
  %264 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %263) #16
  br label %434

265:                                              ; preds = %431, %243
  %266 = phi i32 [ 0, %243 ], [ %432, %431 ]
  %267 = phi i16 [ 16, %243 ], [ %273, %431 ]
  %268 = zext i16 %267 to i32
  %269 = icmp ugt i16 %267, 464
  br i1 %269, label %419, label %270

270:                                              ; preds = %265
  %271 = add nuw nsw i32 %268, 40
  %272 = getelementptr i8, ptr %214, i32 %271
  %273 = load i16, ptr %272, align 1
  %274 = add nuw nsw i32 %268, 42
  %275 = getelementptr i8, ptr %214, i32 %274
  %276 = load i8, ptr %275, align 1
  %277 = icmp eq i8 %276, 1
  br i1 %277, label %278, label %431

278:                                              ; preds = %270
  %279 = getelementptr i8, ptr %214, i32 %268
  %280 = load i16, ptr %279, align 1
  %281 = add nuw nsw i32 %268, 44
  %282 = getelementptr i8, ptr %214, i32 %281
  %283 = load i32, ptr %282, align 1
  %284 = trunc i32 %283 to i16
  %285 = and i16 %284, 511
  %286 = lshr i32 %283, 9
  %287 = trunc i32 %286 to i8
  %288 = lshr i32 %283, 18
  %289 = trunc i32 %288 to i8
  %290 = and i8 %289, 15
  switch i16 %280, label %431 [
    i16 1, label %291
    i16 2, label %338
  ]

291:                                              ; preds = %278
  %292 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %293 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %292, i32 noundef 3520, i32 noundef 512) #14
  %294 = icmp eq ptr %293, null
  br i1 %294, label %419, label %295

295:                                              ; preds = %291
  %296 = zext i8 %290 to i32
  %297 = shl nuw nsw i32 %296, 27
  %298 = shl i32 %286, 18
  %299 = and i32 %298, 66846720
  %300 = or i32 %297, %299
  %301 = zext i16 %285 to i32
  %302 = shl nuw nsw i32 %301, 9
  %303 = or i32 %300, %302
  %304 = or i32 %303, 511
  %305 = load ptr, ptr %36, align 8
  %306 = call i32 @mmc_send_adtc_data(ptr noundef %36, ptr noundef %305, i32 noundef 48, i32 noundef %304, ptr noundef nonnull %293, i32 noundef 512) #15
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %319, label %308

308:                                              ; preds = %295
  %309 = load ptr, ptr %36, align 8
  %310 = getelementptr inbounds %struct.mmc_host, ptr %309, i32 0, i32 1, i32 3
  %311 = load ptr, ptr %310, align 4
  %312 = icmp eq ptr %311, null
  br i1 %312, label %313, label %316

313:                                              ; preds = %308
  %314 = getelementptr inbounds %struct.mmc_host, ptr %309, i32 0, i32 1
  %315 = load ptr, ptr %314, align 4
  br label %316

316:                                              ; preds = %313, %308
  %317 = phi ptr [ %315, %313 ], [ %311, %308 ]
  %318 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %317, i32 noundef %306) #16
  br label %416

319:                                              ; preds = %295
  %320 = load i8, ptr %293, align 8
  %321 = and i8 %320, 15
  store i8 %321, ptr %250, align 4
  %322 = getelementptr i8, ptr %293, i32 1
  %323 = load i8, ptr %322, align 1
  %324 = and i8 %323, 16
  %325 = icmp eq i8 %324, 0
  br i1 %325, label %329, label %326

326:                                              ; preds = %319
  %327 = load i8, ptr %251, align 2
  %328 = or i8 %327, 1
  store i8 %328, ptr %251, align 2
  br label %329

329:                                              ; preds = %326, %319
  %330 = and i8 %323, 32
  %331 = icmp eq i8 %330, 0
  br i1 %331, label %335, label %332

332:                                              ; preds = %329
  %333 = load i8, ptr %251, align 2
  %334 = or i8 %333, 2
  store i8 %334, ptr %251, align 2
  br label %335

335:                                              ; preds = %332, %329
  %336 = and i8 %323, 64
  %337 = icmp eq i8 %336, 0
  br i1 %337, label %411, label %402

338:                                              ; preds = %278
  %339 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %340 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %339, i32 noundef 3520, i32 noundef 512) #14
  %341 = icmp eq ptr %340, null
  br i1 %341, label %419, label %342

342:                                              ; preds = %338
  %343 = zext i8 %290 to i32
  %344 = shl nuw nsw i32 %343, 27
  %345 = shl i32 %286, 18
  %346 = and i32 %345, 66846720
  %347 = or i32 %344, %346
  %348 = zext i16 %285 to i32
  %349 = shl nuw nsw i32 %348, 9
  %350 = or i32 %347, %349
  %351 = or i32 %350, 511
  %352 = load ptr, ptr %36, align 8
  %353 = call i32 @mmc_send_adtc_data(ptr noundef %36, ptr noundef %352, i32 noundef 48, i32 noundef %351, ptr noundef nonnull %340, i32 noundef 512) #15
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %366, label %355

355:                                              ; preds = %342
  %356 = load ptr, ptr %36, align 8
  %357 = getelementptr inbounds %struct.mmc_host, ptr %356, i32 0, i32 1, i32 3
  %358 = load ptr, ptr %357, align 4
  %359 = icmp eq ptr %358, null
  br i1 %359, label %360, label %363

360:                                              ; preds = %355
  %361 = getelementptr inbounds %struct.mmc_host, ptr %356, i32 0, i32 1
  %362 = load ptr, ptr %361, align 4
  br label %363

363:                                              ; preds = %360, %355
  %364 = phi ptr [ %362, %360 ], [ %358, %355 ]
  %365 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %364, i32 noundef %353) #16
  br label %416

366:                                              ; preds = %342
  %367 = load i8, ptr %340, align 8
  store i8 %367, ptr %245, align 4
  %368 = getelementptr i8, ptr %340, i32 1
  %369 = load i8, ptr %368, align 1
  %370 = and i8 %369, 1
  %371 = icmp eq i8 %370, 0
  br i1 %371, label %375, label %372

372:                                              ; preds = %366
  %373 = load i8, ptr %246, align 2
  %374 = or i8 %373, 1
  store i8 %374, ptr %246, align 2
  br label %375

375:                                              ; preds = %372, %366
  %376 = getelementptr i8, ptr %340, i32 2
  %377 = load i8, ptr %376, align 2
  %378 = and i8 %377, 1
  %379 = icmp eq i8 %378, 0
  br i1 %379, label %383, label %380

380:                                              ; preds = %375
  %381 = load i8, ptr %246, align 2
  %382 = or i8 %381, 2
  store i8 %382, ptr %246, align 2
  br label %383

383:                                              ; preds = %380, %375
  %384 = and i8 %377, 2
  %385 = icmp eq i8 %384, 0
  br i1 %385, label %389, label %386

386:                                              ; preds = %383
  %387 = load i8, ptr %246, align 2
  %388 = or i8 %387, 4
  store i8 %388, ptr %246, align 2
  br label %389

389:                                              ; preds = %386, %383
  %390 = getelementptr i8, ptr %340, i32 4
  %391 = load i8, ptr %390, align 4
  %392 = and i8 %391, 1
  %393 = icmp eq i8 %392, 0
  br i1 %393, label %397, label %394

394:                                              ; preds = %389
  %395 = load i8, ptr %246, align 2
  %396 = or i8 %395, 8
  store i8 %396, ptr %246, align 2
  br label %397

397:                                              ; preds = %394, %389
  %398 = getelementptr i8, ptr %340, i32 6
  %399 = load i8, ptr %398, align 2
  %400 = and i8 %399, 31
  %401 = icmp eq i8 %400, 0
  br i1 %401, label %411, label %402

402:                                              ; preds = %397, %335
  %403 = phi ptr [ %251, %335 ], [ %246, %397 ]
  %404 = phi i8 [ 4, %335 ], [ 16, %397 ]
  %405 = phi ptr [ %249, %335 ], [ %244, %397 ]
  %406 = phi ptr [ %252, %335 ], [ %247, %397 ]
  %407 = phi ptr [ %253, %335 ], [ %248, %397 ]
  %408 = phi ptr [ %293, %335 ], [ %340, %397 ]
  %409 = load i8, ptr %403, align 2
  %410 = or i8 %409, %404
  store i8 %410, ptr %403, align 2
  br label %411

411:                                              ; preds = %402, %397, %335
  %412 = phi ptr [ %249, %335 ], [ %244, %397 ], [ %405, %402 ]
  %413 = phi ptr [ %252, %335 ], [ %247, %397 ], [ %406, %402 ]
  %414 = phi ptr [ %253, %335 ], [ %248, %397 ], [ %407, %402 ]
  %415 = phi ptr [ %293, %335 ], [ %340, %397 ], [ %408, %402 ]
  store i8 %290, ptr %412, align 8
  store i8 %287, ptr %413, align 1
  store i16 %285, ptr %414, align 2
  call void @kfree(ptr noundef nonnull %415) #15
  br label %431

416:                                              ; preds = %363, %316
  %417 = phi ptr [ %293, %316 ], [ %340, %363 ]
  %418 = phi i32 [ %306, %316 ], [ %353, %363 ]
  call void @kfree(ptr noundef nonnull %417) #15
  br label %419

419:                                              ; preds = %416, %338, %291, %265
  %420 = phi i32 [ %418, %416 ], [ -12, %338 ], [ -12, %291 ], [ -14, %265 ]
  %421 = load ptr, ptr %36, align 8
  %422 = getelementptr inbounds %struct.mmc_host, ptr %421, i32 0, i32 1, i32 3
  %423 = load ptr, ptr %422, align 4
  %424 = icmp eq ptr %423, null
  br i1 %424, label %425, label %428

425:                                              ; preds = %419
  %426 = getelementptr inbounds %struct.mmc_host, ptr %421, i32 0, i32 1
  %427 = load ptr, ptr %426, align 4
  br label %428

428:                                              ; preds = %425, %419
  %429 = phi ptr [ %427, %425 ], [ %423, %419 ]
  %430 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %429, i32 noundef %420) #16
  br label %435

431:                                              ; preds = %411, %278, %270
  %432 = add nuw nsw i32 %266, 1
  %433 = icmp eq i32 %432, %241
  br i1 %433, label %434, label %265

434:                                              ; preds = %431, %262, %238
  call void @kfree(ptr noundef nonnull %214) #15
  br label %437

435:                                              ; preds = %428, %228
  %436 = phi i32 [ %218, %228 ], [ %420, %428 ]
  call void @kfree(ptr noundef nonnull %214) #15
  br label %521

437:                                              ; preds = %434, %207, %201, %200
  %438 = getelementptr inbounds %struct.mmc_card, ptr %36, i32 0, i32 26, i32 5
  %439 = load i8, ptr %438, align 2
  %440 = and i8 %439, 8
  %441 = icmp eq i8 %440, 0
  br i1 %441, label %478, label %442

442:                                              ; preds = %437
  %443 = getelementptr inbounds %struct.mmc_card, ptr %36, i32 0, i32 26, i32 4
  %444 = load i8, ptr %443, align 1
  %445 = and i8 %444, -9
  store i8 %445, ptr %443, align 1
  %446 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %447 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %446, i32 noundef 3520, i32 noundef 512) #14
  %448 = icmp eq ptr %447, null
  br i1 %448, label %521, label %449

449:                                              ; preds = %442
  %450 = getelementptr inbounds %struct.mmc_card, ptr %36, i32 0, i32 26
  %451 = load i8, ptr %450, align 8
  %452 = getelementptr inbounds %struct.mmc_card, ptr %36, i32 0, i32 26, i32 1
  %453 = load i8, ptr %452, align 1
  %454 = getelementptr inbounds %struct.mmc_card, ptr %36, i32 0, i32 26, i32 2
  %455 = load i16, ptr %454, align 2
  %456 = add i16 %455, 260
  %457 = call fastcc i32 @sd_write_ext_reg(ptr noundef %36, i8 noundef zeroext %451, i8 noundef zeroext %453, i16 noundef zeroext %456) #15
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %470, label %459

459:                                              ; preds = %449
  %460 = load ptr, ptr %36, align 8
  %461 = getelementptr inbounds %struct.mmc_host, ptr %460, i32 0, i32 1, i32 3
  %462 = load ptr, ptr %461, align 4
  %463 = icmp eq ptr %462, null
  br i1 %463, label %464, label %467

464:                                              ; preds = %459
  %465 = getelementptr inbounds %struct.mmc_host, ptr %460, i32 0, i32 1
  %466 = load ptr, ptr %465, align 4
  br label %467

467:                                              ; preds = %464, %459
  %468 = phi ptr [ %466, %464 ], [ %462, %459 ]
  %469 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %468, i32 noundef %457) #16
  br label %473

470:                                              ; preds = %449
  %471 = call i32 @mmc_poll_for_busy(ptr noundef %36, i32 noundef 1000, i1 noundef zeroext false, i32 noundef 3) #15
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %475, label %473

473:                                              ; preds = %470, %467
  %474 = phi i32 [ %471, %470 ], [ %457, %467 ]
  call void @kfree(ptr noundef nonnull %447) #15
  br label %521

475:                                              ; preds = %470
  %476 = load i8, ptr %443, align 1
  %477 = or i8 %476, 8
  store i8 %477, ptr %443, align 1
  call void @kfree(ptr noundef nonnull %447) #15
  br label %478

478:                                              ; preds = %475, %437
  %479 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 61
  %480 = load ptr, ptr %479, align 4
  %481 = icmp eq ptr %480, null
  br i1 %481, label %501, label %482

482:                                              ; preds = %478
  %483 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 64
  %484 = load i8, ptr %483, align 8, !range !8
  %485 = icmp eq i8 %484, 0
  br i1 %485, label %486, label %501

486:                                              ; preds = %482
  %487 = load ptr, ptr %480, align 4
  %488 = call i32 %487(ptr noundef %0, ptr noundef %36) #15
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %490, label %501

490:                                              ; preds = %486
  store i8 1, ptr %483, align 8
  %491 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 66
  store i8 1, ptr %491, align 2
  %492 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1, i32 3
  %493 = load ptr, ptr %492, align 4
  %494 = icmp eq ptr %493, null
  br i1 %494, label %495, label %498

495:                                              ; preds = %490
  %496 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1
  %497 = load ptr, ptr %496, align 4
  br label %498

498:                                              ; preds = %495, %490
  %499 = phi ptr [ %497, %495 ], [ %493, %490 ]
  %500 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %499) #16
  br label %501

501:                                              ; preds = %498, %486, %482, %478
  %502 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 17
  %503 = load i32, ptr %502, align 4
  %504 = and i32 %503, 33554432
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %519, label %506

506:                                              ; preds = %501
  %507 = load i8, ptr %20, align 1
  %508 = icmp eq i8 %507, 0
  br i1 %508, label %509, label %519

509:                                              ; preds = %506
  %510 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1, i32 3
  %511 = load ptr, ptr %510, align 4
  %512 = icmp eq ptr %511, null
  br i1 %512, label %513, label %516

513:                                              ; preds = %509
  %514 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1
  %515 = load ptr, ptr %514, align 4
  br label %516

516:                                              ; preds = %513, %509
  %517 = phi ptr [ %515, %513 ], [ %511, %509 ]
  %518 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %517) #16
  br label %521

519:                                              ; preds = %506, %501, %149
  %520 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 37
  store ptr %36, ptr %520, align 8
  br label %525

521:                                              ; preds = %516, %473, %442, %435, %196, %176, %168, %116, %113, %46
  %522 = phi i32 [ %169, %168 ], [ -22, %516 ], [ %436, %435 ], [ %197, %196 ], [ %172, %176 ], [ %474, %473 ], [ -12, %442 ], [ %48, %46 ], [ %114, %113 ], [ %117, %116 ]
  br i1 %15, label %525, label %523

523:                                              ; preds = %521, %212, %51
  %524 = phi i32 [ %522, %521 ], [ -12, %212 ], [ %52, %51 ]
  call void @mmc_remove_card(ptr noundef %36) #15
  br label %525

525:                                              ; preds = %523, %521, %519, %154, %139, %29, %23, %11
  %526 = phi i32 [ 0, %519 ], [ %30, %29 ], [ %524, %523 ], [ %522, %521 ], [ %12, %11 ], [ %155, %154 ], [ -2, %23 ], [ %140, %139 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  ret i32 %526
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_release_host(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_card(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_card(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_detach_bus(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i16 @sd_std_is_visible(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) #7 {
  %4 = icmp eq ptr %1, @dev_attr_vendor
  %5 = icmp eq ptr %1, @dev_attr_device
  %6 = or i1 %4, %5
  %7 = icmp eq ptr %1, @dev_attr_revision
  %8 = or i1 %7, %6
  %9 = icmp eq ptr %1, @dev_attr_info1
  %10 = or i1 %9, %8
  %11 = icmp eq ptr %1, @dev_attr_info2
  %12 = or i1 %11, %10
  %13 = icmp eq ptr %1, @dev_attr_info3
  %14 = or i1 %13, %12
  %15 = icmp eq ptr %1, @dev_attr_info4
  %16 = or i1 %15, %14
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = getelementptr i8, ptr %0, i32 480
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %19, 3
  br i1 %20, label %21, label %24

21:                                               ; preds = %17, %3
  %22 = getelementptr inbounds %struct.attribute, ptr %1, i32 0, i32 1
  %23 = load i16, ptr %22, align 4
  br label %24

24:                                               ; preds = %21, %17
  %25 = phi i16 [ %23, %21 ], [ 0, %17 ]
  ret i16 %25
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_vendor_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr i8, ptr %0, i32 948
  %5 = load i16, ptr %4, align 4
  %6 = zext i16 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_device_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr i8, ptr %0, i32 950
  %5 = load i16, ptr %4, align 2
  %6 = zext i16 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_revision_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr i8, ptr %0, i32 992
  %5 = load i8, ptr %4, align 8
  %6 = zext i8 %5 to i32
  %7 = getelementptr i8, ptr %0, i32 993
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.9, i32 noundef %6, i32 noundef %9)
  ret i32 %10
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @info1_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr i8, ptr %0, i32 996
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 1000
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %9, align 4
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.11, ptr noundef %10)
  br label %15

15:                                               ; preds = %13, %7, %3
  %16 = phi i32 [ %14, %13 ], [ -61, %3 ], [ 0, %7 ]
  ret i32 %16
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @info2_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr i8, ptr %0, i32 996
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 1000
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr ptr, ptr %9, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %7
  %15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.11, ptr noundef %11)
  br label %16

16:                                               ; preds = %14, %7, %3
  %17 = phi i32 [ %15, %14 ], [ -61, %3 ], [ 0, %7 ]
  ret i32 %17
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @info3_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr i8, ptr %0, i32 996
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %5, 3
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 1000
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr ptr, ptr %9, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %7
  %15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.11, ptr noundef %11)
  br label %16

16:                                               ; preds = %14, %7, %3
  %17 = phi i32 [ %15, %14 ], [ -61, %3 ], [ 0, %7 ]
  ret i32 %17
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @info4_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr i8, ptr %0, i32 996
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 1000
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr ptr, ptr %9, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %7
  %15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.11, ptr noundef %11)
  br label %16

16:                                               ; preds = %14, %7, %3
  %17 = phi i32 [ %15, %14 ], [ -61, %3 ], [ 0, %7 ]
  ret i32 %17
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_cid_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr i8, ptr %0, i32 524
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 528
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr i8, ptr %0, i32 532
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %0, i32 536
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11)
  ret i32 %12
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_csd_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr i8, ptr %0, i32 540
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 544
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr i8, ptr %0, i32 548
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %0, i32 552
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11)
  ret i32 %12
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_scr_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr i8, ptr %0, i32 556
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 560
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef %5, i32 noundef %7)
  ret i32 %8
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_ssr_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr i8, ptr %0, i32 564
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 568
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr i8, ptr %0, i32 572
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %0, i32 576
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i8, ptr %0, i32 580
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr i8, ptr %0, i32 584
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr i8, ptr %0, i32 588
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr i8, ptr %0, i32 592
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr i8, ptr %0, i32 596
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr i8, ptr %0, i32 600
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr i8, ptr %0, i32 604
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr i8, ptr %0, i32 608
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr i8, ptr %0, i32 612
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr i8, ptr %0, i32 616
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr i8, ptr %0, i32 620
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr i8, ptr %0, i32 624
  %35 = load i32, ptr %34, align 4
  %36 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.21, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35)
  ret i32 %36
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_date_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr i8, ptr %0, i32 654
  %5 = load i8, ptr %4, align 2
  %6 = zext i8 %5 to i32
  %7 = getelementptr i8, ptr %0, i32 650
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.23, i32 noundef %6, i32 noundef %9)
  ret i32 %10
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_erase_size_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr i8, ptr %0, i32 500
  %5 = load i32, ptr %4, align 4
  %6 = shl i32 %5, 9
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.25, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_preferred_erase_size_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr i8, ptr %0, i32 508
  %5 = load i32, ptr %4, align 4
  %6 = shl i32 %5, 9
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.25, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_fwrev_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr i8, ptr %0, i32 653
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.28, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_hwrev_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr i8, ptr %0, i32 652
  %5 = load i8, ptr %4, align 4
  %6 = zext i8 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.28, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_manfid_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr i8, ptr %0, i32 628
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.31, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_name_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr i8, ptr %0, i32 632
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.11, ptr noundef %4)
  ret i32 %5
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_oemid_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr i8, ptr %0, i32 648
  %5 = load i16, ptr %4, align 4
  %6 = zext i16 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_serial_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr i8, ptr %0, i32 644
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.35, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_ocr_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr i8, ptr %0, i32 472
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.35, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_rca_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr i8, ptr %0, i32 476
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_dsr_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %0, i32 696
  %7 = load i8, ptr %6, align 8
  %8 = and i8 %7, 16
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 59
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 60
  %16 = load i32, ptr %15, align 8
  br label %17

17:                                               ; preds = %14, %10, %3
  %18 = phi i32 [ %16, %14 ], [ 1028, %10 ], [ 1028, %3 ]
  %19 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.28, i32 noundef %18)
  ret i32 %19
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_app_sd_status(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mmc_sd_remove(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 37
  %3 = load ptr, ptr %2, align 8
  tail call void @mmc_remove_card(ptr noundef %3) #15
  store ptr null, ptr %2, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mmc_sd_detect(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 37
  %3 = load ptr, ptr %2, align 8
  tail call void @mmc_get_card(ptr noundef %3, ptr noundef null) #15
  %4 = tail call i32 @_mmc_detect_card_removed(ptr noundef %0) #15
  %5 = load ptr, ptr %2, align 8
  tail call void @mmc_put_card(ptr noundef %5, ptr noundef null) #15
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8
  tail call void @mmc_remove_card(ptr noundef %8) #15
  store ptr null, ptr %2, align 8
  %9 = tail call i32 @__mmc_claim_host(ptr noundef %0, ptr noundef null, ptr noundef null) #15
  tail call void @mmc_detach_bus(ptr noundef %0) #15
  tail call void @mmc_power_off(ptr noundef %0) #15
  tail call void @mmc_release_host(ptr noundef %0) #15
  br label %10

10:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_sd_suspend(ptr noundef %0) #2 {
  %2 = tail call fastcc i32 @_mmc_sd_suspend(ptr noundef %0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 37
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.mmc_card, ptr %6, i32 0, i32 1
  tail call void @__pm_runtime_disable(ptr noundef %7, i1 noundef zeroext true) #15
  %8 = load ptr, ptr %5, align 8
  %9 = getelementptr inbounds %struct.mmc_card, ptr %8, i32 0, i32 1
  %10 = tail call i32 @__pm_runtime_set_status(ptr noundef %9, i32 noundef 2) #15
  br label %11

11:                                               ; preds = %4, %1
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_sd_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 37
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 1
  tail call void @pm_runtime_enable(ptr noundef %4) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_sd_runtime_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 128
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @_mmc_sd_suspend(ptr noundef %0)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi ptr [ %15, %13 ], [ %11, %9 ]
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %17, i32 noundef %7) #16
  br label %19

19:                                               ; preds = %16, %6, %1
  %20 = phi i32 [ 0, %1 ], [ %7, %16 ], [ 0, %6 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_sd_runtime_resume(ptr noundef %0) #2 {
  %2 = tail call i32 @__mmc_claim_host(ptr noundef %0, ptr noundef null, ptr noundef null) #15
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 37
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.mmc_card, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  tail call void @mmc_release_host(ptr noundef %0) #15
  br label %31

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.mmc_card, ptr %4, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  tail call void @mmc_power_up(ptr noundef %0, i32 noundef %12) #15
  %13 = load ptr, ptr %3, align 8
  %14 = getelementptr inbounds %struct.mmc_card, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = tail call fastcc i32 @mmc_sd_init_card(ptr noundef %0, i32 noundef %15, ptr noundef %13) #15
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds %struct.mmc_card, ptr %17, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, -33
  store i32 %20, ptr %18, align 4
  tail call void @mmc_release_host(ptr noundef %0) #15
  switch i32 %16, label %21 [
    i32 -123, label %31
    i32 0, label %31
  ]

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  br label %28

28:                                               ; preds = %25, %21
  %29 = phi ptr [ %27, %25 ], [ %23, %21 ]
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %29, i32 noundef %16) #16
  br label %31

31:                                               ; preds = %28, %10, %10, %9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_sd_alive(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 37
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @mmc_send_status(ptr noundef %3, ptr noundef null) #15
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_sd_hw_reset(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 37
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 8
  tail call void @mmc_power_cycle(ptr noundef %0, i32 noundef %5) #15
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds %struct.mmc_card, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = tail call fastcc i32 @mmc_sd_init_card(ptr noundef %0, i32 noundef %8, ptr noundef %6)
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @sd_cache_enabled(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 37
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 26, i32 4
  %5 = load i8, ptr %4, align 1
  %6 = and i8 %5, 8
  %7 = icmp ne i8 %6, 0
  ret i1 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sd_flush_cache(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 37
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 26, i32 4
  %5 = load i8, ptr %4, align 1
  %6 = and i8 %5, 8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %64, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 512) #14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %64, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 26
  %14 = load i8, ptr %13, align 8
  %15 = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 26, i32 1
  %16 = load i8, ptr %15, align 1
  %17 = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 26, i32 2
  %18 = load i16, ptr %17, align 2
  %19 = add i16 %18, 261
  %20 = tail call fastcc i32 @sd_write_ext_reg(ptr noundef %3, i8 noundef zeroext %14, i8 noundef zeroext %16, i16 noundef zeroext %19)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi ptr [ %28, %26 ], [ %24, %22 ]
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %30, i32 noundef %20) #16
  br label %62

32:                                               ; preds = %12
  %33 = tail call i32 @mmc_poll_for_busy(ptr noundef %3, i32 noundef 1000, i1 noundef zeroext false, i32 noundef 3) #15
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %62

35:                                               ; preds = %32
  %36 = zext i8 %14 to i32
  %37 = shl i32 %36, 27
  %38 = zext i8 %16 to i32
  %39 = shl nuw nsw i32 %38, 18
  %40 = or i32 %39, %37
  %41 = zext i16 %19 to i32
  %42 = shl nuw nsw i32 %41, 9
  %43 = or i32 %40, %42
  %44 = load ptr, ptr %3, align 8
  %45 = tail call i32 @mmc_send_adtc_data(ptr noundef %3, ptr noundef %44, i32 noundef 48, i32 noundef %43, ptr noundef nonnull %10, i32 noundef 512) #15
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %35
  %48 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  br label %54

54:                                               ; preds = %51, %47
  %55 = phi ptr [ %53, %51 ], [ %49, %47 ]
  %56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %55, i32 noundef %45) #16
  br label %62

57:                                               ; preds = %35
  %58 = load i8, ptr %10, align 8
  %59 = and i8 %58, 1
  %60 = icmp eq i8 %59, 0
  %61 = select i1 %60, i32 0, i32 -110
  br label %62

62:                                               ; preds = %57, %54, %32, %29
  %63 = phi i32 [ %20, %29 ], [ %33, %32 ], [ %45, %54 ], [ %61, %57 ]
  tail call void @kfree(ptr noundef nonnull %10) #15
  br label %64

64:                                               ; preds = %62, %8, %1
  %65 = phi i32 [ %63, %62 ], [ 0, %1 ], [ -12, %8 ]
  ret i32 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_get_card(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_mmc_detect_card_removed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_put_card(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_power_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_mmc_sd_suspend(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.sd_busy_data, align 8
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 37
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @__mmc_claim_host(ptr noundef %0, ptr noundef null, ptr noundef null) #15
  %6 = getelementptr inbounds %struct.mmc_card, ptr %4, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %64

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.mmc_card, ptr %4, i32 0, i32 25, i32 5
  %12 = load i8, ptr %11, align 2
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %51, label %15

15:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  store i64 0, ptr %2, align 8, !annotation !9
  %16 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 512) #14
  %18 = icmp eq ptr %17, null
  br i1 %18, label %49, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.mmc_card, ptr %4, i32 0, i32 25
  %21 = load i8, ptr %20, align 8
  %22 = getelementptr inbounds %struct.mmc_card, ptr %4, i32 0, i32 25, i32 1
  %23 = load i8, ptr %22, align 1
  %24 = getelementptr inbounds %struct.mmc_card, ptr %4, i32 0, i32 25, i32 2
  %25 = load i16, ptr %24, align 2
  %26 = add i16 %25, 2
  %27 = tail call fastcc i32 @sd_write_ext_reg(ptr noundef %4, i8 noundef zeroext %21, i8 noundef zeroext %23, i16 noundef zeroext %26) #15
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %19
  %30 = load ptr, ptr %4, align 8
  %31 = getelementptr inbounds %struct.mmc_host, ptr %30, i32 0, i32 1, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.mmc_host, ptr %30, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  br label %37

37:                                               ; preds = %34, %29
  %38 = phi ptr [ %36, %34 ], [ %32, %29 ]
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %38, i32 noundef %27) #16
  br label %47

40:                                               ; preds = %19
  %41 = tail call i32 @mmc_poll_for_busy(ptr noundef %4, i32 noundef 1000, i1 noundef zeroext false, i32 noundef 3) #15
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  store ptr %4, ptr %2, align 8
  %44 = getelementptr inbounds %struct.sd_busy_data, ptr %2, i32 0, i32 1
  store ptr %17, ptr %44, align 4
  %45 = load ptr, ptr %4, align 8
  %46 = call i32 @__mmc_poll_for_busy(ptr noundef %45, i32 noundef 0, i32 noundef 1000, ptr noundef nonnull @sd_busy_poweroff_notify_cb, ptr noundef nonnull %2) #15
  br label %47

47:                                               ; preds = %43, %40, %37
  %48 = phi i32 [ %27, %37 ], [ %41, %40 ], [ %46, %43 ]
  call void @kfree(ptr noundef nonnull %17) #15
  br label %49

49:                                               ; preds = %47, %15
  %50 = phi i32 [ %48, %47 ], [ -12, %15 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  br label %58

51:                                               ; preds = %10
  %52 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 16
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = tail call i32 @mmc_deselect_cards(ptr noundef %0) #15
  br label %58

58:                                               ; preds = %56, %49
  %59 = phi i32 [ %50, %49 ], [ %57, %56 ]
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58, %51
  call void @mmc_power_off(ptr noundef %0) #15
  %62 = load i32, ptr %6, align 4
  %63 = or i32 %62, 32
  store i32 %63, ptr %6, align 4
  br label %64

64:                                               ; preds = %61, %58, %1
  %65 = phi i32 [ 0, %1 ], [ %59, %58 ], [ 0, %61 ]
  call void @mmc_release_host(ptr noundef %0) #15
  ret i32 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_deselect_cards(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sd_write_ext_reg(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext %3) unnamed_addr #2 {
  %5 = alloca %struct.mmc_request, align 4
  %6 = alloca %struct.mmc_command, align 4
  %7 = alloca %struct.mmc_data, align 4
  %8 = alloca %struct.scatterlist, align 4
  %9 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %5) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %5, i8 0, i32 68, i1 false)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %6, i8 0, i32 48, i1 false)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %7, i8 0, i32 56, i1 false)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %8) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %8, i8 0, i32 20, i1 false), !annotation !9
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 512) #14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %37, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.mmc_request, ptr %5, i32 0, i32 1
  store ptr %6, ptr %14, align 4
  %15 = getelementptr inbounds %struct.mmc_request, ptr %5, i32 0, i32 2
  store ptr %7, ptr %15, align 4
  %16 = zext i8 %1 to i32
  %17 = shl i32 %16, 27
  %18 = zext i8 %2 to i32
  %19 = shl nuw nsw i32 %18, 18
  %20 = or i32 %19, %17
  %21 = zext i16 %3 to i32
  %22 = shl nuw nsw i32 %21, 9
  %23 = or i32 %20, %22
  %24 = getelementptr inbounds %struct.mmc_command, ptr %6, i32 0, i32 1
  store i32 %23, ptr %24, align 4
  store i8 1, ptr %11, align 8
  %25 = getelementptr inbounds %struct.mmc_data, ptr %7, i32 0, i32 6
  store i32 256, ptr %25, align 4
  %26 = getelementptr inbounds %struct.mmc_data, ptr %7, i32 0, i32 2
  store i32 512, ptr %26, align 4
  %27 = getelementptr inbounds %struct.mmc_data, ptr %7, i32 0, i32 3
  store i32 1, ptr %27, align 4
  %28 = getelementptr inbounds %struct.mmc_data, ptr %7, i32 0, i32 12
  store ptr %8, ptr %28, align 4
  %29 = getelementptr inbounds %struct.mmc_data, ptr %7, i32 0, i32 10
  store i32 1, ptr %29, align 4
  call void @sg_init_one(ptr noundef nonnull %8, ptr noundef nonnull %11, i32 noundef 512) #15
  store i32 49, ptr %6, align 4
  %30 = getelementptr inbounds %struct.mmc_command, ptr %6, i32 0, i32 3
  store i32 53, ptr %30, align 4
  call void @mmc_set_data_timeout(ptr noundef nonnull %7, ptr noundef %0) #15
  call void @mmc_wait_for_req(ptr noundef %9, ptr noundef nonnull %5) #15
  call void @kfree(ptr noundef nonnull %11) #15
  %31 = getelementptr inbounds %struct.mmc_command, ptr %6, i32 0, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %13
  %35 = getelementptr inbounds %struct.mmc_data, ptr %7, i32 0, i32 5
  %36 = load i32, ptr %35, align 4
  br label %37

37:                                               ; preds = %34, %13, %4
  %38 = phi i32 [ -12, %4 ], [ %32, %13 ], [ %36, %34 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %5) #15
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_poll_for_busy(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mmc_poll_for_busy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sd_busy_poweroff_notify_cb(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 25
  %5 = load i8, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 25, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 25, i32 2
  %9 = load i16, ptr %8, align 2
  %10 = add i16 %9, 1
  %11 = getelementptr inbounds %struct.sd_busy_data, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = zext i8 %5 to i32
  %14 = shl i32 %13, 27
  %15 = zext i8 %7 to i32
  %16 = shl nuw nsw i32 %15, 18
  %17 = or i32 %16, %14
  %18 = zext i16 %10 to i32
  %19 = shl nuw nsw i32 %18, 9
  %20 = or i32 %17, %19
  %21 = load ptr, ptr %3, align 8
  %22 = tail call i32 @mmc_send_adtc_data(ptr noundef %3, ptr noundef %21, i32 noundef 48, i32 noundef %20, ptr noundef %12, i32 noundef 512) #15
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %2
  %25 = load ptr, ptr %3, align 8
  %26 = getelementptr inbounds %struct.mmc_host, ptr %25, i32 0, i32 1, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.mmc_host, ptr %25, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  br label %32

32:                                               ; preds = %29, %24
  %33 = phi ptr [ %31, %29 ], [ %27, %24 ]
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %33, i32 noundef %22) #16
  br label %40

35:                                               ; preds = %2
  %36 = load ptr, ptr %11, align 4
  %37 = load i8, ptr %36, align 1
  %38 = and i8 %37, 1
  %39 = xor i8 %38, 1
  store i8 %39, ptr %1, align 1
  br label %40

40:                                               ; preds = %35, %32
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_set_data_timeout(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_wait_for_req(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_adtc_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_power_up(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_status(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_power_cycle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_alloc_card(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_relative_addr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_set_dsr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_select_card(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_host_set_uhs_voltage(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mmc_sd_init_uhs_card(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 2
  %4 = load i16, ptr %3, align 2
  %5 = and i16 %4, 1024
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %213, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 64) #14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %213, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @mmc_app_set_bus_width(ptr noundef %0, i32 noundef 2) #15
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %211

14:                                               ; preds = %11
  %15 = load ptr, ptr %0, align 8
  tail call void @mmc_set_bus_width(ptr noundef %15, i32 noundef 2) #15
  %16 = load ptr, ptr %0, align 8
  %17 = getelementptr inbounds %struct.mmc_host, ptr %16, i32 0, i32 16
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 2031616
  %20 = icmp eq i32 %19, 0
  %21 = and i32 %18, 1
  %22 = icmp eq i32 %21, 0
  %23 = or i1 %20, %22
  br i1 %23, label %64, label %24

24:                                               ; preds = %14
  %25 = and i32 %18, 524288
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 24, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %64

32:                                               ; preds = %27, %24
  %33 = and i32 %18, 1048576
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 24, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 16
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %64

40:                                               ; preds = %35, %32
  %41 = and i32 %18, 786432
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 24, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %43, %40
  %49 = and i32 %18, 917504
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 24, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, 2
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %51, %48
  %57 = and i32 %18, 983040
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 24, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %59, %51, %43, %35, %27, %14
  %65 = phi i32 [ 0, %14 ], [ 3, %27 ], [ 4, %35 ], [ 2, %43 ], [ 1, %51 ], [ 0, %59 ]
  %66 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 38
  store i32 %65, ptr %66, align 8
  br label %67

67:                                               ; preds = %64, %59, %56
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  store i32 0, ptr %2, align 4, !annotation !9
  %68 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 40
  store i32 0, ptr %68, align 8
  %69 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 24, i32 3
  %70 = load i32, ptr %69, align 4
  %71 = or i32 %70, 1
  %72 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 24, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = call i32 @mmc_select_drive_strength(ptr noundef %0, i32 noundef %73, i32 noundef %71, ptr noundef nonnull %2) #15
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %98, label %76

76:                                               ; preds = %67
  %77 = trunc i32 %74 to i8
  %78 = call i32 @mmc_sd_switch(ptr noundef %0, i32 noundef 1, i32 noundef 2, i8 noundef zeroext %77, ptr noundef nonnull %9) #15
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %103

80:                                               ; preds = %76
  %81 = getelementptr i8, ptr %9, i32 15
  %82 = load i8, ptr %81, align 1
  %83 = and i8 %82, 15
  %84 = zext i8 %83 to i32
  %85 = icmp eq i32 %74, %84
  br i1 %85, label %97, label %86

86:                                               ; preds = %80
  %87 = load ptr, ptr %0, align 8
  %88 = getelementptr inbounds %struct.mmc_host, ptr %87, i32 0, i32 1, i32 3
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.mmc_host, ptr %87, i32 0, i32 1
  %93 = load ptr, ptr %92, align 4
  br label %94

94:                                               ; preds = %91, %86
  %95 = phi ptr [ %93, %91 ], [ %89, %86 ]
  %96 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %95) #16
  br label %104

97:                                               ; preds = %80
  store i32 %74, ptr %68, align 8
  br label %98

98:                                               ; preds = %97, %67
  %99 = load i32, ptr %2, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = load ptr, ptr %0, align 8
  call void @mmc_set_driver_type(ptr noundef %102, i32 noundef %99) #15
  br label %104

103:                                              ; preds = %76
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  br label %211

104:                                              ; preds = %101, %98, %94
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  %105 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 38
  %106 = load i32, ptr %105, align 8
  %107 = add i32 %106, -2
  %108 = icmp ult i32 %107, 3
  br i1 %108, label %109, label %179

109:                                              ; preds = %104
  %110 = load ptr, ptr %0, align 8
  %111 = getelementptr inbounds %struct.mmc_host, ptr %110, i32 0, i32 28, i32 1
  %112 = load i16, ptr %111, align 4
  %113 = zext i16 %112 to i32
  %114 = shl nuw i32 1, %113
  switch i32 %114, label %179 [
    i32 128, label %115
    i32 131072, label %117
    i32 262144, label %117
    i32 1048576, label %119
    i32 2097152, label %119
  ]

115:                                              ; preds = %109
  %116 = getelementptr inbounds %struct.mmc_host, ptr %110, i32 0, i32 15
  br label %121

117:                                              ; preds = %109, %109
  %118 = getelementptr inbounds %struct.mmc_host, ptr %110, i32 0, i32 14
  br label %121

119:                                              ; preds = %109, %109
  %120 = getelementptr inbounds %struct.mmc_host, ptr %110, i32 0, i32 13
  br label %121

121:                                              ; preds = %119, %117, %115
  %122 = phi ptr [ %120, %119 ], [ %118, %117 ], [ %116, %115 ]
  %123 = load i32, ptr %122, align 4
  %124 = icmp ugt i32 %123, 799
  br i1 %124, label %125, label %130

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 24, i32 4
  %127 = load i32, ptr %126, align 4
  %128 = and i32 %127, 8
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %135, label %157

130:                                              ; preds = %121
  %131 = icmp ugt i32 %123, 599
  br i1 %131, label %132, label %139

132:                                              ; preds = %130
  %133 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 24, i32 4
  %134 = load i32, ptr %133, align 4
  br label %135

135:                                              ; preds = %132, %125
  %136 = phi i32 [ %134, %132 ], [ %127, %125 ]
  %137 = and i32 %136, 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %144, label %157

139:                                              ; preds = %130
  %140 = icmp ugt i32 %123, 399
  br i1 %140, label %141, label %148

141:                                              ; preds = %139
  %142 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 24, i32 4
  %143 = load i32, ptr %142, align 4
  br label %144

144:                                              ; preds = %141, %135
  %145 = phi i32 [ %143, %141 ], [ %136, %135 ]
  %146 = and i32 %145, 2
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %153, label %157

148:                                              ; preds = %139
  %149 = icmp ugt i32 %123, 199
  br i1 %149, label %150, label %179

150:                                              ; preds = %148
  %151 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 24, i32 4
  %152 = load i32, ptr %151, align 4
  br label %153

153:                                              ; preds = %150, %144
  %154 = phi i32 [ %152, %150 ], [ %145, %144 ]
  %155 = and i32 %154, 1
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %179, label %157

157:                                              ; preds = %153, %144, %135, %125
  %158 = phi i32 [ 0, %153 ], [ 1, %144 ], [ 2, %135 ], [ 3, %125 ]
  %159 = trunc i32 %158 to i8
  %160 = call i32 @mmc_sd_switch(ptr noundef %0, i32 noundef 1, i32 noundef 3, i8 noundef zeroext %159, ptr noundef nonnull %9) #15
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %211

162:                                              ; preds = %157
  %163 = getelementptr i8, ptr %9, i32 15
  %164 = load i8, ptr %163, align 1
  %165 = lshr i8 %164, 4
  %166 = zext i8 %165 to i32
  %167 = icmp eq i32 %158, %166
  br i1 %167, label %179, label %168

168:                                              ; preds = %162
  %169 = load ptr, ptr %0, align 8
  %170 = getelementptr inbounds %struct.mmc_host, ptr %169, i32 0, i32 1, i32 3
  %171 = load ptr, ptr %170, align 4
  %172 = icmp eq ptr %171, null
  br i1 %172, label %173, label %176

173:                                              ; preds = %168
  %174 = getelementptr inbounds %struct.mmc_host, ptr %169, i32 0, i32 1
  %175 = load ptr, ptr %174, align 4
  br label %176

176:                                              ; preds = %173, %168
  %177 = phi ptr [ %175, %173 ], [ %171, %168 ]
  %178 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %177) #16
  br label %179

179:                                              ; preds = %176, %162, %153, %148, %109, %104
  %180 = call fastcc i32 @sd_set_bus_speed_mode(ptr noundef %0, ptr noundef nonnull %9)
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %211

182:                                              ; preds = %179
  %183 = load ptr, ptr %0, align 8
  %184 = getelementptr inbounds %struct.mmc_host, ptr %183, i32 0, i32 16
  %185 = load i32, ptr %184, align 8
  %186 = and i32 %185, 16
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %211

188:                                              ; preds = %182
  %189 = getelementptr inbounds %struct.mmc_host, ptr %183, i32 0, i32 28, i32 7
  %190 = load i8, ptr %189, align 4
  %191 = add i8 %190, -5
  %192 = icmp ult i8 %191, 3
  br i1 %192, label %193, label %211

193:                                              ; preds = %188
  %194 = call i32 @mmc_execute_tuning(ptr noundef %0) #15
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %211, label %196

196:                                              ; preds = %193
  %197 = load ptr, ptr %0, align 8
  %198 = getelementptr inbounds %struct.mmc_host, ptr %197, i32 0, i32 28, i32 7
  %199 = load i8, ptr %198, align 4
  %200 = icmp eq i8 %199, 7
  br i1 %200, label %201, label %211

201:                                              ; preds = %196
  %202 = getelementptr inbounds %struct.mmc_host, ptr %197, i32 0, i32 1, i32 3
  %203 = load ptr, ptr %202, align 4
  %204 = icmp eq ptr %203, null
  br i1 %204, label %205, label %208

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.mmc_host, ptr %197, i32 0, i32 1
  %207 = load ptr, ptr %206, align 4
  br label %208

208:                                              ; preds = %205, %201
  %209 = phi ptr [ %207, %205 ], [ %203, %201 ]
  %210 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %209) #16
  br label %211

211:                                              ; preds = %208, %196, %193, %188, %182, %179, %157, %103, %11
  %212 = phi i32 [ %12, %11 ], [ %78, %103 ], [ %180, %179 ], [ 0, %182 ], [ 0, %208 ], [ %194, %196 ], [ 0, %193 ], [ 0, %188 ], [ %160, %157 ]
  call void @kfree(ptr noundef nonnull %9) #15
  br label %213

213:                                              ; preds = %211, %7, %1
  %214 = phi i32 [ %212, %211 ], [ 0, %1 ], [ -12, %7 ]
  ret i32 %214
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_set_timing(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_set_clock(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_app_set_bus_width(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_set_bus_width(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sd_set_bus_speed_mode(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 38
  %4 = load i32, ptr %3, align 8
  %5 = icmp ult i32 %4, 5
  br i1 %5, label %6, label %36

6:                                                ; preds = %2
  %7 = getelementptr inbounds [5 x i32], ptr @switch.table.sd_set_bus_speed_mode, i32 0, i32 %4
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %4, 3
  %10 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 24, i32 1
  store i32 %8, ptr %10, align 4
  %11 = trunc i32 %4 to i8
  %12 = tail call i32 @mmc_sd_switch(ptr noundef %0, i32 noundef 1, i32 noundef 0, i8 noundef zeroext %11, ptr noundef %1) #15
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %36

14:                                               ; preds = %6
  %15 = getelementptr i8, ptr %1, i32 16
  %16 = load i8, ptr %15, align 1
  %17 = and i8 %16, 15
  %18 = zext i8 %17 to i32
  %19 = load i32, ptr %3, align 8
  %20 = icmp eq i32 %19, %18
  %21 = load ptr, ptr %0, align 8
  br i1 %20, label %32, label %22

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.mmc_host, ptr %21, i32 0, i32 1, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.mmc_host, ptr %21, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi ptr [ %28, %26 ], [ %24, %22 ]
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %30) #16
  br label %36

32:                                               ; preds = %14
  tail call void @mmc_set_timing(ptr noundef %21, i32 noundef %9) #15
  %33 = load ptr, ptr %0, align 8
  %34 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 24, i32 1
  %35 = load i32, ptr %34, align 4
  tail call void @mmc_set_clock(ptr noundef %33, i32 noundef %35) #15
  br label %36

36:                                               ; preds = %32, %29, %6, %2
  %37 = phi i32 [ 0, %2 ], [ %12, %6 ], [ 0, %32 ], [ 0, %29 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_execute_tuning(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_select_drive_strength(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_set_driver_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mmc_claim_host(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #11

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { argmemonly nofree nounwind willreturn }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind }
attributes #16 = { cold nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 1, i32 2000}
