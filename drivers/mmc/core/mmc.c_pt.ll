; ModuleID = '/llk/IR/drivers/mmc/core/mmc.c_pt.bc'
source_filename = "../drivers/mmc/core/mmc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mmc_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.mmc_fixup = type { ptr, i64, i64, i32, i16, i16, i16, i32, ptr, ptr, i32 }
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
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [27 x i8] c"\013%s: %s failed, error %d\0A\00", align 1
@__func__.mmc_hs400_to_hs200 = private unnamed_addr constant [19 x i8] c"mmc_hs400_to_hs200\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"drivers/mmc/core/mmc.c\00", align 1
@mmc_ops = internal constant %struct.mmc_bus_ops { ptr @mmc_remove, ptr @mmc_detect, ptr null, ptr @mmc_suspend, ptr @mmc_resume, ptr @mmc_runtime_suspend, ptr @mmc_runtime_resume, ptr @mmc_alive, ptr @mmc_shutdown, ptr @_mmc_hw_reset, ptr null, ptr @_mmc_cache_enabled, ptr @_mmc_flush_cache }, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"\013%s: error %d whilst initialising MMC card\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"\013%s: switch to high-speed from hs200 failed, err:%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"\013%s: switch to bus width for hs400 failed, err:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"\013%s: switch to hs400 failed, err:%d\0A\00", align 1
@__func__.mmc_select_hs400 = private unnamed_addr constant [17 x i8] c"mmc_select_hs400\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"\013%s: Power Off Notification timed out, %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"\013%s: error %d doing aggressive suspend\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"\013%s: error %d doing runtime resume\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"\013%s: cache flush error %d\0A\00", align 1
@use_spi_crc = external dso_local local_unnamed_addr global i8, align 1
@mmc_type = internal global %struct.device_type { ptr null, ptr @mmc_std_groups, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.10 = private unnamed_addr constant [27 x i8] c"\014%s: Enabling HPI failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"\014%s: Cache is supported, but failed to turn on (%d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"\014%s: Enabling CMDQ failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"\016%s: Command Queue Engine enabled\0A\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"\016%s: Host Software Queue enabled\0A\00", align 1
@.str.15 = private unnamed_addr constant [47 x i8] c"\013%s: Host failed to negotiate down from 3.3V\0A\00", align 1
@mmc_std_groups = internal global [2 x ptr] [ptr @mmc_std_group, ptr null], align 4
@mmc_std_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @mmc_std_attrs, ptr null }, align 4
@mmc_std_attrs = internal global [26 x ptr] [ptr @dev_attr_cid, ptr @dev_attr_csd, ptr @dev_attr_date, ptr @dev_attr_erase_size, ptr @dev_attr_preferred_erase_size, ptr @dev_attr_fwrev, ptr @dev_attr_ffu_capable, ptr @dev_attr_hwrev, ptr @dev_attr_manfid, ptr @dev_attr_name, ptr @dev_attr_oemid, ptr @dev_attr_prv, ptr @dev_attr_rev, ptr @dev_attr_pre_eol_info, ptr @dev_attr_life_time, ptr @dev_attr_serial, ptr @dev_attr_enhanced_area_offset, ptr @dev_attr_enhanced_area_size, ptr @dev_attr_raw_rpmb_size_mult, ptr @dev_attr_enhanced_rpmb_supported, ptr @dev_attr_rel_sectors, ptr @dev_attr_ocr, ptr @dev_attr_rca, ptr @dev_attr_dsr, ptr @dev_attr_cmdq_en, ptr null], align 4
@dev_attr_cid = internal global %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292 }, ptr @mmc_cid_show, ptr null }, align 4
@dev_attr_csd = internal global %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292 }, ptr @mmc_csd_show, ptr null }, align 4
@dev_attr_date = internal global %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292 }, ptr @mmc_date_show, ptr null }, align 4
@dev_attr_erase_size = internal global %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292 }, ptr @mmc_erase_size_show, ptr null }, align 4
@dev_attr_preferred_erase_size = internal global %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292 }, ptr @mmc_preferred_erase_size_show, ptr null }, align 4
@dev_attr_fwrev = internal global %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292 }, ptr @mmc_fwrev_show, ptr null }, align 4
@dev_attr_ffu_capable = internal global %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292 }, ptr @mmc_ffu_capable_show, ptr null }, align 4
@dev_attr_hwrev = internal global %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292 }, ptr @mmc_hwrev_show, ptr null }, align 4
@dev_attr_manfid = internal global %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292 }, ptr @mmc_manfid_show, ptr null }, align 4
@dev_attr_name = internal global %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292 }, ptr @mmc_name_show, ptr null }, align 4
@dev_attr_oemid = internal global %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292 }, ptr @mmc_oemid_show, ptr null }, align 4
@dev_attr_prv = internal global %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292 }, ptr @mmc_prv_show, ptr null }, align 4
@dev_attr_rev = internal global %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292 }, ptr @mmc_rev_show, ptr null }, align 4
@dev_attr_pre_eol_info = internal global %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292 }, ptr @mmc_pre_eol_info_show, ptr null }, align 4
@dev_attr_life_time = internal global %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292 }, ptr @mmc_life_time_show, ptr null }, align 4
@dev_attr_serial = internal global %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 292 }, ptr @mmc_serial_show, ptr null }, align 4
@dev_attr_enhanced_area_offset = internal global %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292 }, ptr @mmc_enhanced_area_offset_show, ptr null }, align 4
@dev_attr_enhanced_area_size = internal global %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292 }, ptr @mmc_enhanced_area_size_show, ptr null }, align 4
@dev_attr_raw_rpmb_size_mult = internal global %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292 }, ptr @mmc_raw_rpmb_size_mult_show, ptr null }, align 4
@dev_attr_enhanced_rpmb_supported = internal global %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 292 }, ptr @mmc_enhanced_rpmb_supported_show, ptr null }, align 4
@dev_attr_rel_sectors = internal global %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292 }, ptr @mmc_rel_sectors_show, ptr null }, align 4
@dev_attr_ocr = internal global %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 292 }, ptr @mmc_ocr_show, ptr null }, align 4
@dev_attr_rca = internal global %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 292 }, ptr @mmc_rca_show, ptr null }, align 4
@dev_attr_dsr = internal global %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 292 }, ptr @mmc_dsr_show, ptr null }, align 4
@dev_attr_cmdq_en = internal global %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 292 }, ptr @mmc_cmdq_en_show, ptr null }, align 4
@.str.16 = private unnamed_addr constant [4 x i8] c"cid\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"%08x%08x%08x%08x\0A\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"csd\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"date\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"%02d/%04d\0A\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"erase_size\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"preferred_erase_size\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"fwrev\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"0x%x\0A\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"0x%*phN\0A\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"ffu_capable\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"hwrev\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"manfid\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"0x%06x\0A\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"oemid\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"0x%04x\0A\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"prv\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"rev\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"pre_eol_info\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"0x%02x\0A\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"life_time\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"0x%02x 0x%02x\0A\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"0x%08x\0A\00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c"enhanced_area_offset\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@.str.46 = private unnamed_addr constant [19 x i8] c"enhanced_area_size\00", align 1
@.str.47 = private unnamed_addr constant [19 x i8] c"raw_rpmb_size_mult\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"%#x\0A\00", align 1
@.str.49 = private unnamed_addr constant [24 x i8] c"enhanced_rpmb_supported\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"rel_sectors\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"ocr\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"rca\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"dsr\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"cmdq_en\00", align 1
@.str.55 = private unnamed_addr constant [45 x i8] c"\013%s: unrecognised CSD structure version %d\0A\00", align 1
@taac_exp = internal unnamed_addr constant [8 x i32] [i32 1, i32 10, i32 100, i32 1000, i32 10000, i32 100000, i32 1000000, i32 10000000], align 4
@taac_mant = internal unnamed_addr constant [16 x i32] [i32 0, i32 10, i32 12, i32 13, i32 15, i32 20, i32 25, i32 30, i32 35, i32 40, i32 45, i32 50, i32 55, i32 60, i32 70, i32 80], align 4
@tran_exp = internal unnamed_addr constant [8 x i32] [i32 10000, i32 100000, i32 1000000, i32 10000000, i32 0, i32 0, i32 0, i32 0], align 4
@tran_mant = internal unnamed_addr constant [16 x i8] c"\00\0A\0C\0D\0F\14\19\1E#(-27<FP", align 1
@.str.56 = private unnamed_addr constant [40 x i8] c"\013%s: card has unknown MMCA version %d\0A\00", align 1
@.str.57 = private unnamed_addr constant [86 x i8] c"\013%s: unable to read EXT_CSD on a possible high capacity card. Card will be ignored.\0A\00", align 1
@.str.58 = private unnamed_addr constant [56 x i8] c"\014%s: unable to read EXT_CSD, performance might suffer\0A\00", align 1
@.str.59 = private unnamed_addr constant [49 x i8] c"\013%s: unrecognised EXT_CSD structure version %d\0A\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"mmc-card\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"broken-hpi\00", align 1
@mmc_ext_csd_fixups = internal unnamed_addr constant [3 x %struct.mmc_fixup] [%struct.mmc_fixup { ptr null, i64 0, i64 -1, i32 144, i16 330, i16 -1, i16 -1, i32 5, ptr null, ptr @add_quirk, i32 8192 }, %struct.mmc_fixup { ptr null, i64 0, i64 -1, i32 254, i16 334, i16 -1, i16 -1, i32 6, ptr null, ptr @add_quirk, i32 8192 }, %struct.mmc_fixup zeroinitializer], align 8
@.str.62 = private unnamed_addr constant [7 x i8] c"boot%d\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"rpmb\00", align 1
@.str.64 = private unnamed_addr constant [64 x i8] c"\014%s: defines enhanced area without partition setting complete\0A\00", align 1
@.str.65 = private unnamed_addr constant [61 x i8] c"\014%s: has partition size defined without partition complete\0A\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"gp%d\00", align 1
@.str.67 = private unnamed_addr constant [47 x i8] c"\013%s: switch to 8bit bus width failed, err:%d\0A\00", align 1
@.str.68 = private unnamed_addr constant [47 x i8] c"\013%s: switch to hs for hs400es failed, err:%d\0A\00", align 1
@.str.69 = private unnamed_addr constant [54 x i8] c"\013%s: switch to bus width for hs400es failed, err:%d\0A\00", align 1
@.str.70 = private unnamed_addr constant [40 x i8] c"\013%s: switch to hs400es failed, err:%d\0A\00", align 1
@__func__.mmc_select_hs400es = private unnamed_addr constant [19 x i8] c"mmc_select_hs400es\00", align 1
@__func__.mmc_select_hs200 = private unnamed_addr constant [17 x i8] c"mmc_select_hs200\00", align 1
@.str.71 = private unnamed_addr constant [43 x i8] c"\014%s: switch to high-speed failed, err:%d\0A\00", align 1
@mmc_select_bus_width.ext_csd_bits = internal unnamed_addr constant [2 x i32] [i32 2, i32 1], align 4
@mmc_select_bus_width.bus_widths = internal unnamed_addr constant [2 x i32] [i32 3, i32 2], align 4
@.str.72 = private unnamed_addr constant [37 x i8] c"\014%s: switch to bus width %d failed\0A\00", align 1
@.str.73 = private unnamed_addr constant [41 x i8] c"\013%s: switch to bus width %d ddr failed\0A\00", align 1
@.str.74 = private unnamed_addr constant [59 x i8] c"\014%s: power class selection to bus width %d ddr %d failed\0A\00", align 1
@.str.75 = private unnamed_addr constant [51 x i8] c"\014%s: Voltage range not supported for power class\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_hs200_to_hs400(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @mmc_select_hs400(ptr noundef %0)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mmc_select_hs400(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 39
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 192
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %132, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.mmc_host, ptr %2, i32 0, i32 28, i32 6
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 3
  br i1 %10, label %11, label %132

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 14
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @__mmc_switch(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext -71, i8 noundef zeroext 1, i32 noundef %13, i8 noundef zeroext 0, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 3) #13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.mmc_host, ptr %2, i32 0, i32 1, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.mmc_host, ptr %2, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  br label %23

23:                                               ; preds = %20, %16
  %24 = phi ptr [ %22, %20 ], [ %18, %16 ]
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %24, i32 noundef %14) #14
  br label %132

26:                                               ; preds = %11
  %27 = getelementptr inbounds %struct.mmc_host, ptr %2, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.mmc_host_ops, ptr %28, i32 0, i32 16
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  tail call void %30(ptr noundef %2) #13
  br label %33

33:                                               ; preds = %32, %26
  tail call void @mmc_set_timing(ptr noundef %2, i32 noundef 1) #13
  %34 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 17
  %35 = load i32, ptr %34, align 8
  tail call void @mmc_set_clock(ptr noundef %2, i32 noundef %35) #13
  %36 = tail call i32 @mmc_switch_status(ptr noundef %0, i1 noundef zeroext true) #13
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %120

38:                                               ; preds = %33
  %39 = load ptr, ptr %27, align 4
  %40 = getelementptr inbounds %struct.mmc_host_ops, ptr %39, i32 0, i32 15
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  %44 = tail call i32 %41(ptr noundef %2) #13
  br label %45

45:                                               ; preds = %43, %38
  %46 = load i32, ptr %12, align 4
  %47 = tail call i32 @mmc_switch(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext -73, i8 noundef zeroext 6, i32 noundef %46) #13
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.mmc_host, ptr %2, i32 0, i32 1, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.mmc_host, ptr %2, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  br label %56

56:                                               ; preds = %53, %49
  %57 = phi ptr [ %55, %53 ], [ %51, %49 ]
  %58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %57, i32 noundef %47) #14
  br label %132

59:                                               ; preds = %45
  %60 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 40
  %61 = load i32, ptr %60, align 8
  %62 = trunc i32 %61 to i8
  %63 = shl i8 %62, 4
  %64 = or i8 %63, 3
  %65 = load i32, ptr %12, align 4
  %66 = tail call i32 @__mmc_switch(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext -71, i8 noundef zeroext %64, i32 noundef %65, i8 noundef zeroext 0, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 3) #13
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %78, label %68

68:                                               ; preds = %59
  %69 = getelementptr inbounds %struct.mmc_host, ptr %2, i32 0, i32 1, i32 3
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.mmc_host, ptr %2, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  br label %75

75:                                               ; preds = %72, %68
  %76 = phi ptr [ %74, %72 ], [ %70, %68 ]
  %77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %76, i32 noundef %66) #14
  br label %132

78:                                               ; preds = %59
  tail call void @mmc_set_timing(ptr noundef %2, i32 noundef 10) #13
  %79 = load ptr, ptr %0, align 8
  %80 = getelementptr inbounds %struct.mmc_host, ptr %79, i32 0, i32 28, i32 7
  %81 = load i8, ptr %80, align 4
  %82 = add i8 %81, -9
  %83 = icmp ult i8 %82, 2
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 18
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %94, label %97

88:                                               ; preds = %78
  %89 = add i8 %81, -3
  %90 = icmp ult i8 %89, -2
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = load i32, ptr %34, align 8
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %94, label %97

94:                                               ; preds = %91, %88, %84
  %95 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 7
  %96 = load i32, ptr %95, align 4
  br label %97

97:                                               ; preds = %94, %91, %84
  %98 = phi i32 [ %86, %84 ], [ %92, %91 ], [ %96, %94 ]
  tail call void @mmc_set_clock(ptr noundef %79, i32 noundef %98) #13
  %99 = load ptr, ptr %27, align 4
  %100 = getelementptr inbounds %struct.mmc_host_ops, ptr %99, i32 0, i32 14
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %111, label %103

103:                                              ; preds = %97
  tail call void @mmc_retune_disable(ptr noundef %2) #13
  %104 = load ptr, ptr %27, align 4
  %105 = getelementptr inbounds %struct.mmc_host_ops, ptr %104, i32 0, i32 14
  %106 = load ptr, ptr %105, align 4
  %107 = tail call i32 %106(ptr noundef %2, ptr noundef %0) #13
  tail call void @mmc_retune_enable(ptr noundef %2) #13
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %103
  %110 = load ptr, ptr %27, align 4
  br label %111

111:                                              ; preds = %109, %97
  %112 = phi ptr [ %110, %109 ], [ %99, %97 ]
  %113 = getelementptr inbounds %struct.mmc_host_ops, ptr %112, i32 0, i32 17
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %111
  tail call void %114(ptr noundef %2) #13
  br label %117

117:                                              ; preds = %116, %111
  %118 = tail call i32 @mmc_switch_status(ptr noundef %0, i1 noundef zeroext true) #13
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %132, label %120

120:                                              ; preds = %117, %103, %33
  %121 = phi i32 [ %36, %33 ], [ %107, %103 ], [ %118, %117 ]
  %122 = load ptr, ptr %0, align 8
  %123 = getelementptr inbounds %struct.mmc_host, ptr %122, i32 0, i32 1, i32 3
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %129

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.mmc_host, ptr %122, i32 0, i32 1
  %128 = load ptr, ptr %127, align 4
  br label %129

129:                                              ; preds = %126, %120
  %130 = phi ptr [ %128, %126 ], [ %124, %120 ]
  %131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %130, ptr noundef nonnull @__func__.mmc_select_hs400, i32 noundef %121) #14
  br label %132

132:                                              ; preds = %129, %117, %75, %56, %23, %7, %1
  %133 = phi i32 [ %14, %23 ], [ %121, %129 ], [ %47, %56 ], [ %66, %75 ], [ 0, %7 ], [ 0, %1 ], [ 0, %117 ]
  ret i32 %133
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_hs400_to_hs200(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 17
  %4 = load i32, ptr %3, align 8
  tail call void @mmc_set_clock(ptr noundef %2, i32 noundef %4) #13
  %5 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 14
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 @__mmc_switch(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext -71, i8 noundef zeroext 1, i32 noundef %6, i8 noundef zeroext 0, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 3) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %66

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.mmc_host, ptr %2, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mmc_host_ops, ptr %11, i32 0, i32 16
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  tail call void %13(ptr noundef %2) #13
  br label %16

16:                                               ; preds = %15, %9
  tail call void @mmc_set_timing(ptr noundef %2, i32 noundef 8) #13
  %17 = tail call i32 @mmc_switch_status(ptr noundef %0, i1 noundef zeroext true) #13
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %66

19:                                               ; preds = %16
  %20 = load i32, ptr %5, align 4
  %21 = tail call i32 @__mmc_switch(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext -73, i8 noundef zeroext 2, i32 noundef %20, i8 noundef zeroext 0, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 3) #13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %66

23:                                               ; preds = %19
  tail call void @mmc_set_timing(ptr noundef %2, i32 noundef 1) #13
  %24 = tail call i32 @mmc_switch_status(ptr noundef %0, i1 noundef zeroext true) #13
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %66

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 40
  %28 = load i32, ptr %27, align 8
  %29 = trunc i32 %28 to i8
  %30 = shl i8 %29, 4
  %31 = or i8 %30, 2
  %32 = load i32, ptr %5, align 4
  %33 = tail call i32 @__mmc_switch(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext -71, i8 noundef zeroext %31, i32 noundef %32, i8 noundef zeroext 0, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 3) #13
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %66

35:                                               ; preds = %26
  tail call void @mmc_set_timing(ptr noundef %2, i32 noundef 9) #13
  %36 = tail call i32 @mmc_switch_status(ptr noundef %0, i1 noundef zeroext false) #13
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %66

38:                                               ; preds = %35
  %39 = load ptr, ptr %0, align 8
  %40 = getelementptr inbounds %struct.mmc_host, ptr %39, i32 0, i32 28, i32 7
  %41 = load i8, ptr %40, align 4
  %42 = add i8 %41, -9
  %43 = icmp ult i8 %42, 2
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 18
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %54, label %57

48:                                               ; preds = %38
  %49 = add i8 %41, -3
  %50 = icmp ult i8 %49, -2
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i32, ptr %3, align 8
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %57

54:                                               ; preds = %51, %48, %44
  %55 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 7
  %56 = load i32, ptr %55, align 4
  br label %57

57:                                               ; preds = %54, %51, %44
  %58 = phi i32 [ %46, %44 ], [ %52, %51 ], [ %56, %54 ]
  tail call void @mmc_set_clock(ptr noundef %39, i32 noundef %58) #13
  %59 = load ptr, ptr %10, align 4
  %60 = getelementptr inbounds %struct.mmc_host_ops, ptr %59, i32 0, i32 13
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %78, label %63

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.mmc_host, ptr %2, i32 0, i32 28
  %65 = tail call i32 %61(ptr noundef %2, ptr noundef %64) #13
  br label %78

66:                                               ; preds = %35, %26, %23, %19, %16, %1
  %67 = phi i32 [ %7, %1 ], [ %17, %16 ], [ %21, %19 ], [ %24, %23 ], [ %33, %26 ], [ %36, %35 ]
  %68 = load ptr, ptr %0, align 8
  %69 = getelementptr inbounds %struct.mmc_host, ptr %68, i32 0, i32 1, i32 3
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.mmc_host, ptr %68, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  br label %75

75:                                               ; preds = %72, %66
  %76 = phi ptr [ %74, %72 ], [ %70, %66 ]
  %77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %76, ptr noundef nonnull @__func__.mmc_hs400_to_hs200, i32 noundef %67) #14
  br label %78

78:                                               ; preds = %75, %63, %57
  %79 = phi i32 [ %67, %75 ], [ 0, %63 ], [ 0, %57 ]
  ret i32 %79
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_set_clock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mmc_switch(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_set_timing(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_switch_status(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_attach_mmc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 29
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, 2
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %8, !prof !9

7:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2260, i32 noundef 9, ptr noundef null) #13
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  tail call void @mmc_set_bus_mode(ptr noundef %0, i32 noundef 1) #13
  br label %14

14:                                               ; preds = %13, %8
  %15 = call i32 @mmc_send_op_cond(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #13
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %58

17:                                               ; preds = %14
  call void @mmc_attach_bus(ptr noundef %0, ptr noundef nonnull @mmc_ops) #13
  %18 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 11
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 8
  store i32 %19, ptr %22, align 8
  br label %23

23:                                               ; preds = %21, %17
  %24 = load i32, ptr %9, align 8
  %25 = and i32 %24, 16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = call i32 @mmc_spi_read_ocr(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %2) #13
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %27, %23
  %31 = load i32, ptr %2, align 4
  %32 = call i32 @mmc_select_voltage(ptr noundef %0, i32 noundef %31) #13
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %47, label %34

34:                                               ; preds = %30
  %35 = call fastcc i32 @mmc_init_card(ptr noundef %0, i32 noundef %32, ptr noundef null)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  call void @mmc_release_host(ptr noundef %0) #13
  %38 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 37
  %39 = load ptr, ptr %38, align 8
  %40 = call i32 @mmc_add_card(ptr noundef %39) #13
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = call i32 @__mmc_claim_host(ptr noundef %0, ptr noundef null, ptr noundef null) #13
  br label %58

44:                                               ; preds = %37
  %45 = load ptr, ptr %38, align 8
  call void @mmc_remove_card(ptr noundef %45) #13
  %46 = call i32 @__mmc_claim_host(ptr noundef %0, ptr noundef null, ptr noundef null) #13
  store ptr null, ptr %38, align 8
  br label %47

47:                                               ; preds = %44, %34, %30, %27
  %48 = phi i32 [ %28, %27 ], [ %35, %34 ], [ %40, %44 ], [ -22, %30 ]
  call void @mmc_detach_bus(ptr noundef %0) #13
  %49 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1, i32 3
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  br label %55

55:                                               ; preds = %52, %47
  %56 = phi ptr [ %54, %52 ], [ %50, %47 ]
  %57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %56, i32 noundef %48) #14
  br label %58

58:                                               ; preds = %55, %42, %14
  %59 = phi i32 [ %48, %55 ], [ 0, %42 ], [ %15, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_set_bus_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_op_cond(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_attach_bus(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_spi_read_ocr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_select_voltage(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mmc_init_card(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [4 x i32], align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 29
  %7 = load i16, ptr %6, align 8
  %8 = and i16 %7, 2
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %11, !prof !9

10:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1579, i32 noundef 9, ptr noundef null) #13
  br label %11

11:                                               ; preds = %10, %3
  %12 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  tail call void @mmc_set_bus_mode(ptr noundef %0, i32 noundef 1) #13
  br label %17

17:                                               ; preds = %16, %11
  %18 = tail call i32 @mmc_go_idle(ptr noundef %0) #13
  %19 = or i32 %1, 1073741824
  %20 = call i32 @mmc_send_op_cond(ptr noundef %0, i32 noundef %19, ptr noundef nonnull %5) #13
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %333

22:                                               ; preds = %17
  %23 = load i32, ptr %12, align 8
  %24 = and i32 %23, 16
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = load i8, ptr @use_spi_crc, align 1, !range !10
  %28 = zext i8 %27 to i32
  %29 = call i32 @mmc_spi_set_crc(ptr noundef %0, i32 noundef %28) #13
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %333

31:                                               ; preds = %26, %22
  %32 = call i32 @mmc_send_cid(ptr noundef %0, ptr noundef nonnull %4) #13
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %333

34:                                               ; preds = %31
  %35 = icmp eq ptr %2, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.mmc_card, ptr %2, i32 0, i32 15
  %38 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %4, ptr noundef dereferenceable(16) %37, i32 16)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %50, label %333

40:                                               ; preds = %34
  %41 = call ptr @mmc_alloc_card(ptr noundef %0, ptr noundef nonnull @mmc_type) #13
  %42 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = ptrtoint ptr %41 to i32
  br label %333

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.mmc_card, ptr %41, i32 0, i32 2
  store i32 %1, ptr %46, align 8
  %47 = getelementptr inbounds %struct.mmc_card, ptr %41, i32 0, i32 4
  store i32 0, ptr %47, align 8
  %48 = getelementptr inbounds %struct.mmc_card, ptr %41, i32 0, i32 3
  store i32 1, ptr %48, align 4
  %49 = getelementptr inbounds %struct.mmc_card, ptr %41, i32 0, i32 15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %49, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 16, i1 false)
  br label %50

50:                                               ; preds = %45, %36
  %51 = phi ptr [ %41, %45 ], [ %2, %36 ]
  %52 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.mmc_host_ops, ptr %53, i32 0, i32 9
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %50
  call void %55(ptr noundef %0, ptr noundef %51) #13
  br label %58

58:                                               ; preds = %57, %50
  %59 = load i32, ptr %12, align 8
  %60 = and i32 %59, 16
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = call i32 @mmc_set_relative_addr(ptr noundef %51) #13
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %329

65:                                               ; preds = %62
  call void @mmc_set_bus_mode(ptr noundef %0, i32 noundef 2) #13
  br label %66

66:                                               ; preds = %65, %58
  br i1 %35, label %67, label %77

67:                                               ; preds = %66
  %68 = getelementptr inbounds %struct.mmc_card, ptr %51, i32 0, i32 16
  %69 = call i32 @mmc_send_csd(ptr noundef %51, ptr noundef %68) #13
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %331

71:                                               ; preds = %67
  %72 = call fastcc i32 @mmc_decode_csd(ptr noundef %51)
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %331

74:                                               ; preds = %71
  %75 = call fastcc i32 @mmc_decode_cid(ptr noundef %51)
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %331

77:                                               ; preds = %74, %66
  %78 = getelementptr inbounds %struct.mmc_card, ptr %51, i32 0, i32 20, i32 12
  %79 = load i8, ptr %78, align 8
  %80 = and i8 %79, 16
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 59
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %82
  %87 = call i32 @mmc_set_dsr(ptr noundef %0) #13
  br label %88

88:                                               ; preds = %86, %82, %77
  %89 = load i32, ptr %12, align 8
  %90 = and i32 %89, 16
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = call i32 @mmc_select_card(ptr noundef %51) #13
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %329

95:                                               ; preds = %92, %88
  br i1 %35, label %96, label %117

96:                                               ; preds = %95
  %97 = call fastcc i32 @mmc_read_ext_csd(ptr noundef %51)
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %331

99:                                               ; preds = %96
  %100 = load i32, ptr %5, align 4
  %101 = and i32 %100, 1073741824
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.mmc_card, ptr %51, i32 0, i32 5
  %105 = load i32, ptr %104, align 4
  %106 = or i32 %105, 4
  store i32 %106, ptr %104, align 4
  br label %107

107:                                              ; preds = %103, %99
  %108 = getelementptr inbounds %struct.mmc_card, ptr %51, i32 0, i32 21, i32 1
  %109 = load i8, ptr %108, align 1
  %110 = and i8 %109, 1
  %111 = icmp eq i8 %110, 0
  %112 = getelementptr inbounds %struct.mmc_card, ptr %51, i32 0, i32 20, i32 8
  %113 = getelementptr inbounds %struct.mmc_card, ptr %51, i32 0, i32 21, i32 20
  %114 = select i1 %111, ptr %112, ptr %113
  %115 = load i32, ptr %114, align 4
  %116 = getelementptr inbounds %struct.mmc_card, ptr %51, i32 0, i32 9
  store i32 %115, ptr %116, align 4
  call void @mmc_init_erase(ptr noundef %51) #13
  br label %117

117:                                              ; preds = %107, %95
  %118 = getelementptr inbounds %struct.mmc_card, ptr %51, i32 0, i32 21
  %119 = load i8, ptr %118, align 8
  %120 = icmp ugt i8 %119, 2
  br i1 %120, label %121, label %133

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.mmc_card, ptr %51, i32 0, i32 21, i32 14
  %123 = load i32, ptr %122, align 4
  %124 = call i32 @mmc_switch(ptr noundef %51, i8 noundef zeroext 1, i8 noundef zeroext -81, i8 noundef zeroext 1, i32 noundef %123) #13
  switch i32 %124, label %329 [
    i32 0, label %128
    i32 -74, label %125
  ]

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.mmc_card, ptr %51, i32 0, i32 21, i32 26
  store i64 -22, ptr %126, align 8
  %127 = getelementptr inbounds %struct.mmc_card, ptr %51, i32 0, i32 21, i32 27
  store i32 -22, ptr %127, align 8
  br label %133

128:                                              ; preds = %121
  %129 = getelementptr inbounds %struct.mmc_card, ptr %51, i32 0, i32 21, i32 1
  store i8 1, ptr %129, align 1
  %130 = getelementptr inbounds %struct.mmc_card, ptr %51, i32 0, i32 21, i32 20
  %131 = load i32, ptr %130, align 4
  %132 = getelementptr inbounds %struct.mmc_card, ptr %51, i32 0, i32 9
  store i32 %131, ptr %132, align 4
  call void @mmc_init_erase(ptr noundef %51) #13
  br label %133

133:                                              ; preds = %128, %125, %117
  %134 = getelementptr inbounds %struct.mmc_card, ptr %51, i32 0, i32 21, i32 6
  %135 = load i8, ptr %134, align 2
  %136 = and i8 %135, 7
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %133
  %139 = and i8 %135, -8
  store i8 %139, ptr %134, align 2
  %140 = getelementptr inbounds %struct.mmc_card, ptr %51, i32 0, i32 21, i32 12
  %141 = load i32, ptr %140, align 4
  %142 = call i32 @mmc_switch(ptr noundef %51, i8 noundef zeroext 1, i8 noundef zeroext -77, i8 noundef zeroext %139, i32 noundef %141) #13
  switch i32 %142, label %329 [
    i32 -74, label %143
    i32 0, label %143
  ]

143:                                              ; preds = %138, %138, %133
  %144 = load i8, ptr %118, align 8
  %145 = icmp ugt i8 %144, 5
  br i1 %145, label %146, label %152

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct.mmc_card, ptr %51, i32 0, i32 21, i32 14
  %148 = load i32, ptr %147, align 4
  %149 = call i32 @mmc_switch(ptr noundef %51, i8 noundef zeroext 1, i8 noundef zeroext 34, i8 noundef zeroext 1, i32 noundef %148) #13
  switch i32 %149, label %329 [
    i32 0, label %150
    i32 -74, label %152
  ]

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.mmc_card, ptr %51, i32 0, i32 21, i32 16
  store i8 1, ptr %151, align 4
  br label %152

152:                                              ; preds = %150, %146, %143
  %153 = call i32 @mmc_can_discard(ptr noundef %51) #13
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %157, label %155

155:                                              ; preds = %152
  %156 = getelementptr inbounds %struct.mmc_card, ptr %51, i32 0, i32 13
  store i32 3, ptr %156, align 4
  br label %163

157:                                              ; preds = %152
  %158 = call i32 @mmc_can_trim(ptr noundef %51) #13
  %159 = icmp eq i32 %158, 0
  %160 = getelementptr inbounds %struct.mmc_card, ptr %51, i32 0, i32 13
  br i1 %159, label %162, label %161

161:                                              ; preds = %157
  store i32 1, ptr %160, align 4
  br label %163

162:                                              ; preds = %157
  store i32 0, ptr %160, align 4
  br label %163

163:                                              ; preds = %162, %161, %155
  %164 = call fastcc i32 @mmc_select_timing(ptr noundef %51)
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %329

166:                                              ; preds = %163
  %167 = load ptr, ptr %51, align 8
  %168 = getelementptr inbounds %struct.mmc_host, ptr %167, i32 0, i32 28, i32 7
  %169 = load i8, ptr %168, align 4
  %170 = icmp eq i8 %169, 9
  br i1 %170, label %171, label %184

171:                                              ; preds = %166
  %172 = load i16, ptr %6, align 8
  %173 = or i16 %172, 4
  store i16 %173, ptr %6, align 8
  %174 = call fastcc i32 @mmc_hs200_tuning(ptr noundef %51)
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %179, label %176

176:                                              ; preds = %171
  %177 = load i16, ptr %6, align 8
  %178 = and i16 %177, -5
  store i16 %178, ptr %6, align 8
  br label %329

179:                                              ; preds = %171
  %180 = call fastcc i32 @mmc_select_hs400(ptr noundef %51)
  %181 = load i16, ptr %6, align 8
  %182 = and i16 %181, -5
  store i16 %182, ptr %6, align 8
  %183 = icmp eq i32 %180, 0
  br i1 %183, label %200, label %329

184:                                              ; preds = %166
  %185 = getelementptr inbounds %struct.mmc_host, ptr %167, i32 0, i32 28, i32 10
  %186 = load i8, ptr %185, align 1, !range !10
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %188, label %200

188:                                              ; preds = %184
  %189 = call fastcc i32 @mmc_select_bus_width(ptr noundef %51)
  %190 = icmp sgt i32 %189, 0
  br i1 %190, label %191, label %200

191:                                              ; preds = %188
  %192 = load ptr, ptr %51, align 8
  %193 = getelementptr inbounds %struct.mmc_host, ptr %192, i32 0, i32 28, i32 7
  %194 = load i8, ptr %193, align 4
  %195 = add i8 %194, -3
  %196 = icmp ult i8 %195, -2
  br i1 %196, label %200, label %197

197:                                              ; preds = %191
  %198 = call fastcc i32 @mmc_select_hs_ddr(ptr noundef %51)
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %329

200:                                              ; preds = %197, %191, %188, %184, %179
  call fastcc void @mmc_select_powerclass(ptr noundef %51)
  %201 = getelementptr inbounds %struct.mmc_card, ptr %51, i32 0, i32 21, i32 30
  %202 = load i8, ptr %201, align 1, !range !10
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %222, label %204

204:                                              ; preds = %200
  %205 = getelementptr inbounds %struct.mmc_card, ptr %51, i32 0, i32 21, i32 14
  %206 = load i32, ptr %205, align 4
  %207 = call i32 @mmc_switch(ptr noundef %51, i8 noundef zeroext 1, i8 noundef zeroext -95, i8 noundef zeroext 1, i32 noundef %206) #13
  switch i32 %207, label %329 [
    i32 0, label %219
    i32 -74, label %208
  ]

208:                                              ; preds = %204
  %209 = load ptr, ptr %51, align 8
  %210 = getelementptr inbounds %struct.mmc_host, ptr %209, i32 0, i32 1, i32 3
  %211 = load ptr, ptr %210, align 4
  %212 = icmp eq ptr %211, null
  br i1 %212, label %213, label %216

213:                                              ; preds = %208
  %214 = getelementptr inbounds %struct.mmc_host, ptr %209, i32 0, i32 1
  %215 = load ptr, ptr %214, align 4
  br label %216

216:                                              ; preds = %213, %208
  %217 = phi ptr [ %215, %213 ], [ %211, %208 ]
  %218 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %217) #14
  br label %219

219:                                              ; preds = %216, %204
  %220 = phi i8 [ 0, %216 ], [ 1, %204 ]
  %221 = getelementptr inbounds %struct.mmc_card, ptr %51, i32 0, i32 21, i32 29
  store i8 %220, ptr %221, align 8
  br label %222

222:                                              ; preds = %219, %200
  %223 = getelementptr inbounds %struct.mmc_card, ptr %51, i32 0, i32 21, i32 28
  %224 = load i32, ptr %223, align 4
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %245, label %226

226:                                              ; preds = %222
  %227 = getelementptr inbounds %struct.mmc_card, ptr %51, i32 0, i32 21, i32 14
  %228 = load i32, ptr %227, align 4
  %229 = call i32 @llvm.umax.i32(i32 %228, i32 1600)
  %230 = call i32 @mmc_switch(ptr noundef %51, i8 noundef zeroext 1, i8 noundef zeroext 33, i8 noundef zeroext 1, i32 noundef %229) #13
  switch i32 %230, label %329 [
    i32 0, label %242
    i32 -74, label %231
  ]

231:                                              ; preds = %226
  %232 = load ptr, ptr %51, align 8
  %233 = getelementptr inbounds %struct.mmc_host, ptr %232, i32 0, i32 1, i32 3
  %234 = load ptr, ptr %233, align 4
  %235 = icmp eq ptr %234, null
  br i1 %235, label %236, label %239

236:                                              ; preds = %231
  %237 = getelementptr inbounds %struct.mmc_host, ptr %232, i32 0, i32 1
  %238 = load ptr, ptr %237, align 4
  br label %239

239:                                              ; preds = %236, %231
  %240 = phi ptr [ %238, %236 ], [ %234, %231 ]
  %241 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %240, i32 noundef -74) #14
  br label %242

242:                                              ; preds = %239, %226
  %243 = phi i8 [ 0, %239 ], [ 1, %226 ]
  %244 = getelementptr inbounds %struct.mmc_card, ptr %51, i32 0, i32 21, i32 7
  store i8 %243, ptr %244, align 1
  br label %245

245:                                              ; preds = %242, %222
  %246 = getelementptr inbounds %struct.mmc_card, ptr %51, i32 0, i32 21, i32 40
  store i8 0, ptr %246, align 2
  %247 = getelementptr inbounds %struct.mmc_card, ptr %51, i32 0, i32 21, i32 41
  %248 = load i8, ptr %247, align 1, !range !10
  %249 = icmp eq i8 %248, 0
  br i1 %249, label %269, label %250

250:                                              ; preds = %245
  %251 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 17
  %252 = load i32, ptr %251, align 4
  %253 = and i32 %252, 8388608
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %269, label %255

255:                                              ; preds = %250
  %256 = call i32 @mmc_cmdq_enable(ptr noundef %51) #13
  switch i32 %256, label %329 [
    i32 0, label %269
    i32 -74, label %257
  ]

257:                                              ; preds = %255
  %258 = load ptr, ptr %51, align 8
  %259 = getelementptr inbounds %struct.mmc_host, ptr %258, i32 0, i32 1, i32 3
  %260 = load ptr, ptr %259, align 4
  %261 = icmp eq ptr %260, null
  br i1 %261, label %262, label %265

262:                                              ; preds = %257
  %263 = getelementptr inbounds %struct.mmc_host, ptr %258, i32 0, i32 1
  %264 = load ptr, ptr %263, align 4
  br label %265

265:                                              ; preds = %262, %257
  %266 = phi ptr [ %264, %262 ], [ %260, %257 ]
  %267 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %266) #14
  store i8 0, ptr %247, align 1
  %268 = getelementptr inbounds %struct.mmc_card, ptr %51, i32 0, i32 21, i32 42
  store i32 0, ptr %268, align 4
  br label %269

269:                                              ; preds = %265, %255, %250, %245
  %270 = load i8, ptr %246, align 2, !range !10
  %271 = getelementptr inbounds %struct.mmc_card, ptr %51, i32 0, i32 8
  store i8 %270, ptr %271, align 8
  %272 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 61
  %273 = load ptr, ptr %272, align 4
  %274 = icmp eq ptr %273, null
  br i1 %274, label %307, label %275

275:                                              ; preds = %269
  %276 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 64
  %277 = load i8, ptr %276, align 8, !range !10
  %278 = icmp eq i8 %277, 0
  br i1 %278, label %279, label %307

279:                                              ; preds = %275
  %280 = load ptr, ptr %273, align 4
  %281 = call i32 %280(ptr noundef %0, ptr noundef %51) #13
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %307

283:                                              ; preds = %279
  store i8 1, ptr %276, align 8
  %284 = load i8, ptr %246, align 2, !range !10
  %285 = icmp eq i8 %284, 0
  br i1 %285, label %296, label %286

286:                                              ; preds = %283
  %287 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1, i32 3
  %288 = load ptr, ptr %287, align 4
  %289 = icmp eq ptr %288, null
  br i1 %289, label %290, label %293

290:                                              ; preds = %286
  %291 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1
  %292 = load ptr, ptr %291, align 4
  br label %293

293:                                              ; preds = %290, %286
  %294 = phi ptr [ %292, %290 ], [ %288, %286 ]
  %295 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %294) #14
  br label %307

296:                                              ; preds = %283
  %297 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 66
  store i8 1, ptr %297, align 2
  %298 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1, i32 3
  %299 = load ptr, ptr %298, align 4
  %300 = icmp eq ptr %299, null
  br i1 %300, label %301, label %304

301:                                              ; preds = %296
  %302 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1
  %303 = load ptr, ptr %302, align 4
  br label %304

304:                                              ; preds = %301, %296
  %305 = phi ptr [ %303, %301 ], [ %299, %296 ]
  %306 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %305) #14
  br label %307

307:                                              ; preds = %304, %293, %279, %275, %269
  %308 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 17
  %309 = load i32, ptr %308, align 4
  %310 = and i32 %309, 33554432
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %326, label %312

312:                                              ; preds = %307
  %313 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28, i32 8
  %314 = load i8, ptr %313, align 1
  %315 = icmp eq i8 %314, 0
  br i1 %315, label %316, label %326

316:                                              ; preds = %312
  %317 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1, i32 3
  %318 = load ptr, ptr %317, align 4
  %319 = icmp eq ptr %318, null
  br i1 %319, label %320, label %323

320:                                              ; preds = %316
  %321 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1
  %322 = load ptr, ptr %321, align 4
  br label %323

323:                                              ; preds = %320, %316
  %324 = phi ptr [ %322, %320 ], [ %318, %316 ]
  %325 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %324) #14
  br label %329

326:                                              ; preds = %312, %307
  br i1 %35, label %327, label %333

327:                                              ; preds = %326
  %328 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 37
  store ptr %51, ptr %328, align 8
  br label %333

329:                                              ; preds = %323, %255, %226, %204, %197, %179, %176, %163, %146, %138, %121, %92, %62
  %330 = phi i32 [ %124, %121 ], [ %142, %138 ], [ %149, %146 ], [ %164, %163 ], [ %180, %179 ], [ %207, %204 ], [ %256, %255 ], [ -22, %323 ], [ %198, %197 ], [ %93, %92 ], [ %63, %62 ], [ %174, %176 ], [ %230, %226 ]
  br i1 %35, label %331, label %333

331:                                              ; preds = %329, %96, %74, %71, %67
  %332 = phi i32 [ %330, %329 ], [ %75, %74 ], [ %72, %71 ], [ %69, %67 ], [ %97, %96 ]
  call void @mmc_remove_card(ptr noundef %51) #13
  br label %333

333:                                              ; preds = %331, %329, %327, %326, %43, %36, %31, %26, %17
  %334 = phi i32 [ 0, %327 ], [ 0, %326 ], [ %20, %17 ], [ %29, %26 ], [ %32, %31 ], [ %330, %329 ], [ %332, %331 ], [ %44, %43 ], [ -2, %36 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  ret i32 %334
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_release_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_card(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_card(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_detach_bus(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_switch(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_retune_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_retune_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mmc_remove(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 37
  %3 = load ptr, ptr %2, align 8
  tail call void @mmc_remove_card(ptr noundef %3) #13
  store ptr null, ptr %2, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mmc_detect(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 37
  %3 = load ptr, ptr %2, align 8
  tail call void @mmc_get_card(ptr noundef %3, ptr noundef null) #13
  %4 = tail call i32 @_mmc_detect_card_removed(ptr noundef %0) #13
  %5 = load ptr, ptr %2, align 8
  tail call void @mmc_put_card(ptr noundef %5, ptr noundef null) #13
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8
  tail call void @mmc_remove_card(ptr noundef %8) #13
  store ptr null, ptr %2, align 8
  %9 = tail call i32 @__mmc_claim_host(ptr noundef %0, ptr noundef null, ptr noundef null) #13
  tail call void @mmc_detach_bus(ptr noundef %0) #13
  tail call void @mmc_power_off(ptr noundef %0) #13
  tail call void @mmc_release_host(ptr noundef %0) #13
  br label %10

10:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_suspend(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @_mmc_suspend(ptr noundef %0, i1 noundef zeroext true)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 37
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.mmc_card, ptr %6, i32 0, i32 1
  tail call void @__pm_runtime_disable(ptr noundef %7, i1 noundef zeroext true) #13
  %8 = load ptr, ptr %5, align 8
  %9 = getelementptr inbounds %struct.mmc_card, ptr %8, i32 0, i32 1
  %10 = tail call i32 @__pm_runtime_set_status(ptr noundef %9, i32 noundef 2) #13
  br label %11

11:                                               ; preds = %4, %1
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 37
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 1
  tail call void @pm_runtime_enable(ptr noundef %4) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_runtime_suspend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 128
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @_mmc_suspend(ptr noundef %0, i1 noundef zeroext true)
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
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %17, i32 noundef %7) #14
  br label %19

19:                                               ; preds = %16, %6, %1
  %20 = phi i32 [ 0, %1 ], [ %7, %16 ], [ 0, %6 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_runtime_resume(ptr noundef %0) #0 {
  %2 = tail call i32 @__mmc_claim_host(ptr noundef %0, ptr noundef null, ptr noundef null) #13
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 37
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.mmc_card, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  tail call void @mmc_release_host(ptr noundef %0) #13
  br label %31

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.mmc_card, ptr %4, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  tail call void @mmc_power_up(ptr noundef %0, i32 noundef %12) #13
  %13 = load ptr, ptr %3, align 8
  %14 = getelementptr inbounds %struct.mmc_card, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = tail call fastcc i32 @mmc_init_card(ptr noundef %0, i32 noundef %15, ptr noundef %13) #13
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds %struct.mmc_card, ptr %17, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, -33
  store i32 %20, ptr %18, align 4
  tail call void @mmc_release_host(ptr noundef %0) #13
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
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %29, i32 noundef %16) #14
  br label %31

31:                                               ; preds = %28, %10, %10, %9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_alive(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 37
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @mmc_send_status(ptr noundef %3, ptr noundef null) #13
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_shutdown(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 37
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %38, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 4
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %38

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 21, i32 16
  %11 = load i8, ptr %10, align 4
  %12 = icmp eq i8 %11, 1
  br i1 %12, label %13, label %38

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 17
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %13
  %19 = tail call i32 @__mmc_claim_host(ptr noundef %0, ptr noundef null, ptr noundef null) #13
  %20 = load ptr, ptr %2, align 8
  %21 = getelementptr inbounds %struct.mmc_card, ptr %20, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  tail call void @mmc_release_host(ptr noundef %0) #13
  br label %38

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.mmc_card, ptr %20, i32 0, i32 2
  %28 = load i32, ptr %27, align 8
  tail call void @mmc_power_up(ptr noundef %0, i32 noundef %28) #13
  %29 = load ptr, ptr %2, align 8
  %30 = getelementptr inbounds %struct.mmc_card, ptr %29, i32 0, i32 2
  %31 = load i32, ptr %30, align 8
  %32 = tail call fastcc i32 @mmc_init_card(ptr noundef %0, i32 noundef %31, ptr noundef %29) #13
  %33 = load ptr, ptr %2, align 8
  %34 = getelementptr inbounds %struct.mmc_card, ptr %33, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, -33
  store i32 %36, ptr %34, align 4
  tail call void @mmc_release_host(ptr noundef %0) #13
  %37 = icmp eq i32 %32, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %26, %25, %13, %9, %5, %1
  %39 = tail call fastcc i32 @_mmc_suspend(ptr noundef %0, i1 noundef zeroext false)
  br label %40

40:                                               ; preds = %38, %26
  %41 = phi i32 [ %32, %26 ], [ %39, %38 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_mmc_hw_reset(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 37
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 21, i32 28
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %25, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 21, i32 7
  %9 = load i8, ptr %8, align 1
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %7
  %13 = tail call i32 @mmc_switch(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 32, i8 noundef zeroext 1, i32 noundef 30000) #13
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  br label %22

22:                                               ; preds = %19, %15
  %23 = phi ptr [ %21, %19 ], [ %17, %15 ]
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %23, i32 noundef %13) #14
  br label %25

25:                                               ; preds = %22, %12, %7, %1
  %26 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %27 = load i32, ptr %26, align 8
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %46, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.mmc_host_ops, ptr %31, i32 0, i32 20
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 21, i32 8
  %37 = load i8, ptr %36, align 8
  %38 = and i8 %37, 3
  %39 = icmp eq i8 %38, 1
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 7
  %42 = load i32, ptr %41, align 4
  tail call void @mmc_set_clock(ptr noundef %0, i32 noundef %42) #13
  %43 = load ptr, ptr %30, align 4
  %44 = getelementptr inbounds %struct.mmc_host_ops, ptr %43, i32 0, i32 20
  %45 = load ptr, ptr %44, align 4
  tail call void %45(ptr noundef %0) #13
  tail call void @mmc_set_initial_state(ptr noundef %0) #13
  br label %49

46:                                               ; preds = %35, %29, %25
  %47 = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 2
  %48 = load i32, ptr %47, align 8
  tail call void @mmc_power_cycle(ptr noundef %0, i32 noundef %48) #13
  tail call void @mmc_pwrseq_reset(ptr noundef %0) #13
  br label %49

49:                                               ; preds = %46, %40
  %50 = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 2
  %51 = load i32, ptr %50, align 8
  %52 = tail call fastcc i32 @mmc_init_card(ptr noundef %0, i32 noundef %51, ptr noundef %3)
  ret i32 %52
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @_mmc_cache_enabled(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 37
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 21, i32 28
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 21, i32 7
  %9 = load i8, ptr %8, align 1
  %10 = and i8 %9, 1
  %11 = icmp ne i8 %10, 0
  br label %12

12:                                               ; preds = %7, %1
  %13 = phi i1 [ false, %1 ], [ %11, %7 ]
  ret i1 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_mmc_flush_cache(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 37
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 21, i32 28
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %25, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 21, i32 7
  %9 = load i8, ptr %8, align 1
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %7
  %13 = tail call i32 @mmc_switch(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 32, i8 noundef zeroext 1, i32 noundef 30000) #13
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  br label %22

22:                                               ; preds = %19, %15
  %23 = phi ptr [ %21, %19 ], [ %17, %15 ]
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %23, i32 noundef %13) #14
  br label %25

25:                                               ; preds = %22, %12, %7, %1
  %26 = phi i32 [ %13, %22 ], [ 0, %12 ], [ 0, %7 ], [ 0, %1 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_get_card(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_mmc_detect_card_removed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_put_card(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_power_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_mmc_suspend(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca %struct.mmc_command, align 4
  %4 = tail call i32 @__mmc_claim_host(ptr noundef %0, ptr noundef null, ptr noundef null) #13
  %5 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 37
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.mmc_card, ptr %6, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %133

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.mmc_card, ptr %6, i32 0, i32 21, i32 28
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %35, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.mmc_card, ptr %6, i32 0, i32 21, i32 7
  %17 = load i8, ptr %16, align 1
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %15
  %21 = tail call i32 @mmc_switch(ptr noundef %6, i8 noundef zeroext 1, i8 noundef zeroext 32, i8 noundef zeroext 1, i32 noundef 30000) #13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load ptr, ptr %5, align 8
  br label %35

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  br label %32

32:                                               ; preds = %29, %25
  %33 = phi ptr [ %31, %29 ], [ %27, %25 ]
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %33, i32 noundef %21) #14
  br label %133

35:                                               ; preds = %23, %15, %11
  %36 = phi ptr [ %24, %23 ], [ %6, %15 ], [ %6, %11 ]
  %37 = icmp eq ptr %36, null
  br i1 %37, label %75, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.mmc_card, ptr %36, i32 0, i32 4
  %40 = load i32, ptr %39, align 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %75

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.mmc_card, ptr %36, i32 0, i32 21, i32 16
  %44 = load i8, ptr %43, align 4
  %45 = icmp eq i8 %44, 1
  br i1 %45, label %46, label %75

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 17
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 4
  %50 = icmp eq i32 %49, 0
  %51 = and i1 %50, %1
  %52 = and i32 %48, 8
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %51, i1 %53, i1 false
  br i1 %54, label %75, label %55

55:                                               ; preds = %46
  %56 = getelementptr inbounds %struct.mmc_card, ptr %36, i32 0, i32 21, i32 14
  %57 = getelementptr inbounds %struct.mmc_card, ptr %36, i32 0, i32 21, i32 15
  %58 = select i1 %1, ptr %56, ptr %57
  %59 = load i32, ptr %58, align 4
  %60 = select i1 %1, i8 2, i8 3
  %61 = tail call i32 @__mmc_switch(ptr noundef nonnull %36, i8 noundef zeroext 1, i8 noundef zeroext 34, i8 noundef zeroext %60, i32 noundef %59, i8 noundef zeroext 0, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 3) #13
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %55
  %64 = load ptr, ptr %36, align 8
  %65 = getelementptr inbounds %struct.mmc_host, ptr %64, i32 0, i32 1, i32 3
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.mmc_host, ptr %64, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  br label %71

71:                                               ; preds = %68, %63
  %72 = phi ptr [ %70, %68 ], [ %66, %63 ]
  %73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %72, i32 noundef %59) #14
  br label %74

74:                                               ; preds = %71, %55
  store i8 0, ptr %43, align 4
  br label %125

75:                                               ; preds = %46, %42, %38, %35
  %76 = getelementptr inbounds %struct.mmc_card, ptr %36, i32 0, i32 21
  %77 = load i8, ptr %76, align 8
  %78 = icmp ult i8 %77, 3
  br i1 %78, label %118, label %79

79:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %3, i8 0, i32 48, i1 false) #13
  %80 = getelementptr inbounds %struct.mmc_card, ptr %36, i32 0, i32 21, i32 13
  %81 = load i32, ptr %80, align 8
  %82 = add i32 %81, 9999
  %83 = udiv i32 %82, 10000
  tail call void @mmc_retune_hold(ptr noundef %0) #13
  %84 = tail call i32 @mmc_deselect_cards(ptr noundef %0) #13
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %116

86:                                               ; preds = %79
  store i32 5, ptr %3, align 4
  %87 = getelementptr inbounds %struct.mmc_card, ptr %36, i32 0, i32 3
  %88 = load i32, ptr %87, align 4
  %89 = shl i32 %88, 16
  %90 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 1
  %91 = or i32 %89, 32768
  store i32 %91, ptr %90, align 4
  %92 = call zeroext i1 @mmc_prepare_busy_cmd(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %83) #13
  %93 = call i32 @mmc_wait_for_cmd(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 0) #13
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %116

95:                                               ; preds = %86
  %96 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %97 = load i32, ptr %96, align 8
  %98 = and i32 %97, 512
  %99 = icmp eq i32 %98, 0
  %100 = xor i1 %92, true
  %101 = select i1 %99, i1 true, i1 %100
  br i1 %101, label %102, label %116

102:                                              ; preds = %95
  %103 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 3
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.mmc_host_ops, ptr %104, i32 0, i32 11
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %114

108:                                              ; preds = %102
  %109 = icmp ult i32 %82, 210000
  br i1 %109, label %110, label %113

110:                                              ; preds = %108
  %111 = mul nuw nsw i32 %83, 1000
  %112 = mul nuw nsw i32 %83, 1250
  call void @usleep_range_state(i32 noundef %111, i32 noundef %112, i32 noundef 2) #13
  br label %116

113:                                              ; preds = %108
  call void @msleep(i32 noundef %83) #13
  br label %116

114:                                              ; preds = %102
  %115 = call i32 @__mmc_poll_for_busy(ptr noundef %0, i32 noundef 0, i32 noundef %83, ptr noundef nonnull @mmc_sleep_busy_cb, ptr noundef %0) #13
  br label %116

116:                                              ; preds = %114, %113, %110, %95, %86, %79
  %117 = phi i32 [ %84, %79 ], [ %93, %86 ], [ %115, %114 ], [ 0, %95 ], [ 0, %110 ], [ 0, %113 ]
  call void @mmc_retune_release(ptr noundef %0) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #13
  br label %125

118:                                              ; preds = %75
  %119 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %120 = load i32, ptr %119, align 8
  %121 = and i32 %120, 16
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %118
  %124 = tail call i32 @mmc_deselect_cards(ptr noundef %0) #13
  br label %125

125:                                              ; preds = %123, %116, %74
  %126 = phi i32 [ %61, %74 ], [ %117, %116 ], [ %124, %123 ]
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %125, %118
  call void @mmc_power_off(ptr noundef %0) #13
  %129 = load ptr, ptr %5, align 8
  %130 = getelementptr inbounds %struct.mmc_card, ptr %129, i32 0, i32 5
  %131 = load i32, ptr %130, align 4
  %132 = or i32 %131, 32
  store i32 %132, ptr %130, align 4
  br label %133

133:                                              ; preds = %128, %125, %32, %2
  %134 = phi i32 [ 0, %2 ], [ %21, %32 ], [ %126, %125 ], [ 0, %128 ]
  call void @mmc_release_host(ptr noundef %0) #13
  ret i32 %134
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_deselect_cards(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_retune_hold(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mmc_prepare_busy_cmd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_wait_for_cmd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mmc_poll_for_busy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_sleep_busy_cb(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mmc_host_ops, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %0) #13
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i8
  store i8 %9, ptr %1, align 1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_retune_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_power_up(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_set_initial_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_power_cycle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_pwrseq_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_go_idle(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_spi_set_crc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_cid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_alloc_card(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_set_relative_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_csd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mmc_decode_csd(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20
  %3 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 16
  %4 = load i32, ptr %3, align 4
  %5 = lshr i32 %4, 30
  %6 = trunc i32 %5 to i8
  store i8 %6, ptr %2, align 4
  %7 = icmp ult i32 %4, 1073741824
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds %struct.mmc_host, ptr %9, i32 0, i32 1, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.mmc_host, ptr %9, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %8
  %17 = phi ptr [ %15, %13 ], [ %11, %8 ]
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %17, i32 noundef %5) #14
  br label %111

19:                                               ; preds = %1
  %20 = lshr i32 %4, 26
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 15
  %23 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 1
  store i8 %22, ptr %23, align 1
  %24 = lshr i32 %4, 19
  %25 = and i32 %24, 15
  %26 = lshr i32 %4, 16
  %27 = and i32 %26, 7
  %28 = getelementptr [8 x i32], ptr @taac_exp, i32 0, i32 %27
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr [16 x i32], ptr @taac_mant, i32 0, i32 %25
  %31 = load i32, ptr %30, align 4
  %32 = mul i32 %31, %29
  %33 = add i32 %32, 9
  %34 = udiv i32 %33, 10
  %35 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 4
  store i32 %34, ptr %35, align 4
  %36 = trunc i32 %4 to i16
  %37 = lshr i16 %36, 8
  %38 = mul nuw nsw i16 %37, 100
  %39 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 3
  store i16 %38, ptr %39, align 4
  %40 = lshr i32 %4, 3
  %41 = and i32 %40, 15
  %42 = and i32 %4, 7
  %43 = getelementptr [8 x i32], ptr @tran_exp, i32 0, i32 %42
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr [16 x i8], ptr @tran_mant, i32 0, i32 %41
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  %48 = mul i32 %44, %47
  %49 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 7
  store i32 %48, ptr %49, align 4
  %50 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 16, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = lshr i32 %51, 20
  %53 = trunc i32 %52 to i16
  %54 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 2
  store i16 %53, ptr %54, align 2
  %55 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 16, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = lshr i32 %56, 15
  %58 = and i32 %57, 7
  %59 = tail call i32 @llvm.fshl.i32(i32 %51, i32 %56, i32 2)
  %60 = and i32 %59, 4095
  %61 = add nuw nsw i32 %60, 1
  %62 = add nuw nsw i32 %58, 2
  %63 = shl nuw nsw i32 %61, %62
  %64 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 11
  store i32 %63, ptr %64, align 4
  %65 = lshr i32 %51, 16
  %66 = and i32 %65, 15
  %67 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 9
  store i32 %66, ptr %67, align 4
  %68 = lshr i32 %51, 15
  %69 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 12
  %70 = trunc i32 %68 to i8
  %71 = and i8 %70, 1
  %72 = load i8, ptr %69, align 4
  %73 = and i8 %72, -32
  %74 = lshr i32 %51, 11
  %75 = trunc i32 %74 to i8
  %76 = and i8 %75, 8
  %77 = lshr i32 %51, 12
  %78 = trunc i32 %77 to i8
  %79 = and i8 %78, 2
  %80 = lshr i32 %51, 8
  %81 = trunc i32 %80 to i8
  %82 = and i8 %81, 16
  %83 = or i8 %76, %71
  %84 = or i8 %83, %79
  %85 = or i8 %84, %82
  %86 = or i8 %85, %73
  %87 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 16, i32 3
  %88 = load i32, ptr %87, align 4
  %89 = lshr i32 %88, 26
  %90 = and i32 %89, 7
  %91 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 6
  store i32 %90, ptr %91, align 4
  %92 = lshr i32 %88, 22
  %93 = and i32 %92, 15
  %94 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 10
  store i32 %93, ptr %94, align 4
  %95 = lshr i32 %88, 19
  %96 = trunc i32 %95 to i8
  %97 = and i8 %96, 4
  %98 = or i8 %86, %97
  store i8 %98, ptr %69, align 4
  %99 = icmp ugt i32 %93, 8
  br i1 %99, label %100, label %111

100:                                              ; preds = %19
  %101 = lshr i32 %56, 10
  %102 = and i32 %101, 31
  %103 = lshr i32 %56, 5
  %104 = and i32 %103, 31
  %105 = add nuw nsw i32 %102, 1
  %106 = add nuw nsw i32 %104, 1
  %107 = mul nuw nsw i32 %105, %106
  %108 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 8
  %109 = add nsw i32 %93, -9
  %110 = shl nuw nsw i32 %107, %109
  store i32 %110, ptr %108, align 4
  br label %111

111:                                              ; preds = %100, %19, %16
  %112 = phi i32 [ -22, %16 ], [ 0, %100 ], [ 0, %19 ]
  ret i32 %112
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mmc_decode_cid(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 15
  %3 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 1
  %4 = load i8, ptr %3, align 1
  switch i8 %4, label %97 [
    i8 0, label %5
    i8 1, label %5
    i8 2, label %54
    i8 3, label %54
    i8 4, label %54
  ]

5:                                                ; preds = %1, %1
  %6 = load i32, ptr %2, align 4
  %7 = lshr i32 %6, 8
  %8 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 19
  store i32 %7, ptr %8, align 4
  %9 = trunc i32 %6 to i8
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
  %26 = lshr i32 %25, 24
  %27 = trunc i32 %26 to i8
  %28 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 19, i32 1, i32 5
  store i8 %27, ptr %28, align 1
  %29 = lshr i32 %25, 16
  %30 = trunc i32 %29 to i8
  %31 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 19, i32 1, i32 6
  store i8 %30, ptr %31, align 2
  %32 = lshr i32 %25, 12
  %33 = trunc i32 %32 to i8
  %34 = and i8 %33, 15
  %35 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 19, i32 6
  store i8 %34, ptr %35, align 4
  %36 = lshr i32 %25, 8
  %37 = trunc i32 %36 to i8
  %38 = and i8 %37, 15
  %39 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 19, i32 7
  store i8 %38, ptr %39, align 1
  %40 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 15, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %41, i32 16)
  %43 = and i32 %42, 16777215
  %44 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 19, i32 3
  store i32 %43, ptr %44, align 4
  %45 = lshr i32 %41, 12
  %46 = trunc i32 %45 to i8
  %47 = and i8 %46, 15
  %48 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 19, i32 8
  store i8 %47, ptr %48, align 2
  %49 = trunc i32 %41 to i16
  %50 = lshr i16 %49, 8
  %51 = and i16 %50, 15
  %52 = add nuw nsw i16 %51, 1997
  %53 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 19, i32 5
  store i16 %52, ptr %53, align 2
  br label %109

54:                                               ; preds = %1, %1, %1
  %55 = load i32, ptr %2, align 4
  %56 = lshr i32 %55, 24
  %57 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 19
  store i32 %56, ptr %57, align 4
  %58 = lshr i32 %55, 8
  %59 = trunc i32 %58 to i16
  %60 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 19, i32 4
  store i16 %59, ptr %60, align 4
  %61 = trunc i32 %55 to i8
  %62 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 19, i32 1
  store i8 %61, ptr %62, align 4
  %63 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 15, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = lshr i32 %64, 24
  %66 = trunc i32 %65 to i8
  %67 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 19, i32 1, i32 1
  store i8 %66, ptr %67, align 1
  %68 = lshr i32 %64, 16
  %69 = trunc i32 %68 to i8
  %70 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 19, i32 1, i32 2
  store i8 %69, ptr %70, align 2
  %71 = lshr i32 %64, 8
  %72 = trunc i32 %71 to i8
  %73 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 19, i32 1, i32 3
  store i8 %72, ptr %73, align 1
  %74 = trunc i32 %64 to i8
  %75 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 19, i32 1, i32 4
  store i8 %74, ptr %75, align 4
  %76 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 15, i32 2
  %77 = load i32, ptr %76, align 4
  %78 = lshr i32 %77, 24
  %79 = trunc i32 %78 to i8
  %80 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 19, i32 1, i32 5
  store i8 %79, ptr %80, align 1
  %81 = lshr i32 %77, 16
  %82 = trunc i32 %81 to i8
  %83 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 19, i32 2
  store i8 %82, ptr %83, align 4
  %84 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 15, i32 3
  %85 = load i32, ptr %84, align 4
  %86 = tail call i32 @llvm.fshl.i32(i32 %77, i32 %85, i32 16)
  %87 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 19, i32 3
  store i32 %86, ptr %87, align 4
  %88 = lshr i32 %85, 12
  %89 = trunc i32 %88 to i8
  %90 = and i8 %89, 15
  %91 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 19, i32 8
  store i8 %90, ptr %91, align 2
  %92 = trunc i32 %85 to i16
  %93 = lshr i16 %92, 8
  %94 = and i16 %93, 15
  %95 = add nuw nsw i16 %94, 1997
  %96 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 19, i32 5
  store i16 %95, ptr %96, align 2
  br label %109

97:                                               ; preds = %1
  %98 = load ptr, ptr %0, align 8
  %99 = getelementptr inbounds %struct.mmc_host, ptr %98, i32 0, i32 1, i32 3
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.mmc_host, ptr %98, i32 0, i32 1
  %104 = load ptr, ptr %103, align 4
  br label %105

105:                                              ; preds = %102, %97
  %106 = phi ptr [ %104, %102 ], [ %100, %97 ]
  %107 = zext i8 %4 to i32
  %108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %106, i32 noundef %107) #14
  br label %109

109:                                              ; preds = %105, %54, %5
  %110 = phi i32 [ -22, %105 ], [ 0, %54 ], [ 0, %5 ]
  ret i32 %110
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_set_dsr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_select_card(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mmc_read_ext_csd(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  store ptr null, ptr %2, align 4, !annotation !8
  %3 = tail call i32 @mmc_can_ext_csd(ptr noundef %0) #13
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %813, label %5

5:                                                ; preds = %1
  %6 = call i32 @mmc_get_ext_csd(ptr noundef %0, ptr noundef nonnull %2) #13
  switch i32 %6, label %813 [
    i32 0, label %29
    i32 -14, label %7
    i32 -22, label %7
    i32 -38, label %7
  ]

7:                                                ; preds = %5, %5, %5
  %8 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 11
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 2097152
  %11 = load ptr, ptr %0, align 8
  %12 = getelementptr inbounds %struct.mmc_host, ptr %11, i32 0, i32 1, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %10, label %15, label %22

15:                                               ; preds = %7
  br i1 %14, label %16, label %19

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.mmc_host, ptr %11, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %15
  %20 = phi ptr [ %18, %16 ], [ %13, %15 ]
  %21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %20) #14
  br label %813

22:                                               ; preds = %7
  br i1 %14, label %23, label %26

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.mmc_host, ptr %11, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  br label %26

26:                                               ; preds = %23, %22
  %27 = phi ptr [ %25, %23 ], [ %13, %22 ]
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %27) #14
  br label %813

29:                                               ; preds = %5
  %30 = load ptr, ptr %2, align 4
  %31 = getelementptr i8, ptr %30, i32 194
  %32 = load i8, ptr %31, align 1
  %33 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21
  %34 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 49
  store i8 %32, ptr %34, align 1
  %35 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20
  %36 = load i8, ptr %35, align 8
  %37 = icmp eq i8 %36, 3
  %38 = icmp ugt i8 %32, 2
  %39 = select i1 %37, i1 %38, i1 false
  %40 = load ptr, ptr %0, align 8
  br i1 %39, label %41, label %52

41:                                               ; preds = %29
  %42 = getelementptr inbounds %struct.mmc_host, ptr %40, i32 0, i32 1, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.mmc_host, ptr %40, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  br label %48

48:                                               ; preds = %45, %41
  %49 = phi ptr [ %47, %45 ], [ %43, %41 ]
  %50 = zext i8 %32 to i32
  %51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %49, i32 noundef %50) #14
  br label %810

52:                                               ; preds = %29
  %53 = call ptr @mmc_of_find_child_device(ptr noundef %40, i32 noundef 0) #13
  %54 = icmp eq ptr %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %52
  %56 = call i32 @of_device_is_compatible(ptr noundef nonnull %53, ptr noundef nonnull @.str.60) #13
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = call ptr @of_find_property(ptr noundef nonnull %53, ptr noundef nonnull @.str.61, ptr noundef null) #13
  %60 = icmp ne ptr %59, null
  br label %61

61:                                               ; preds = %58, %55, %52
  %62 = phi i1 [ %60, %58 ], [ false, %55 ], [ false, %52 ]
  call void @of_node_put(ptr noundef %53) #13
  %63 = getelementptr i8, ptr %30, i32 192
  %64 = load i8, ptr %63, align 1
  store i8 %64, ptr %33, align 8
  %65 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 19
  %66 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 19, i32 6
  %67 = load i8, ptr %66, align 4
  %68 = zext i8 %67 to i64
  %69 = shl nuw nsw i64 %68, 40
  %70 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 19, i32 7
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i64
  %73 = shl nuw nsw i64 %72, 32
  %74 = or i64 %73, %69
  %75 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 19, i32 5
  %76 = load i16, ptr %75, align 2
  %77 = zext i16 %76 to i64
  %78 = shl nuw nsw i64 %77, 16
  %79 = or i64 %74, %78
  %80 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 19, i32 8
  %81 = load i8, ptr %80, align 2
  %82 = zext i8 %81 to i64
  %83 = or i64 %79, %82
  %84 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 19, i32 4
  %85 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 19, i32 1
  %86 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 30
  %87 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 30, i32 1
  br label %88

88:                                               ; preds = %166, %61
  %89 = phi ptr [ getelementptr inbounds ([3 x %struct.mmc_fixup], ptr @mmc_ext_csd_fixups, i32 0, i32 0, i32 9), %61 ], [ %168, %166 ]
  %90 = phi ptr [ @mmc_ext_csd_fixups, %61 ], [ %167, %166 ]
  %91 = getelementptr inbounds %struct.mmc_fixup, ptr %90, i32 0, i32 3
  %92 = load i32, ptr %91, align 8
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %97, label %94

94:                                               ; preds = %88
  %95 = load i32, ptr %65, align 4
  %96 = icmp eq i32 %92, %95
  br i1 %96, label %97, label %166

97:                                               ; preds = %94, %88
  %98 = getelementptr inbounds %struct.mmc_fixup, ptr %90, i32 0, i32 4
  %99 = load i16, ptr %98, align 4
  %100 = icmp eq i16 %99, -1
  br i1 %100, label %104, label %101

101:                                              ; preds = %97
  %102 = load i16, ptr %84, align 4
  %103 = icmp eq i16 %99, %102
  br i1 %103, label %104, label %166

104:                                              ; preds = %101, %97
  %105 = load ptr, ptr %90, align 8
  %106 = icmp eq ptr %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = call i32 @strncmp(ptr noundef nonnull %105, ptr noundef %85, i32 noundef 8) #13
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %166

110:                                              ; preds = %107, %104
  %111 = getelementptr inbounds %struct.mmc_fixup, ptr %90, i32 0, i32 5
  %112 = load i16, ptr %111, align 2
  %113 = icmp eq i16 %112, -1
  br i1 %113, label %117, label %114

114:                                              ; preds = %110
  %115 = load i16, ptr %86, align 4
  %116 = icmp eq i16 %112, %115
  br i1 %116, label %117, label %166

117:                                              ; preds = %114, %110
  %118 = getelementptr inbounds %struct.mmc_fixup, ptr %90, i32 0, i32 6
  %119 = load i16, ptr %118, align 8
  %120 = icmp eq i16 %119, -1
  br i1 %120, label %124, label %121

121:                                              ; preds = %117
  %122 = load i16, ptr %87, align 2
  %123 = icmp eq i16 %119, %122
  br i1 %123, label %124, label %166

124:                                              ; preds = %121, %117
  %125 = getelementptr inbounds %struct.mmc_fixup, ptr %90, i32 0, i32 7
  %126 = load i32, ptr %125, align 4
  %127 = icmp eq i32 %126, -1
  br i1 %127, label %132, label %128

128:                                              ; preds = %124
  %129 = load i8, ptr %33, align 8
  %130 = zext i8 %129 to i32
  %131 = icmp eq i32 %126, %130
  br i1 %131, label %132, label %166

132:                                              ; preds = %128, %124
  %133 = getelementptr inbounds %struct.mmc_fixup, ptr %90, i32 0, i32 1
  %134 = load i64, ptr %133, align 8
  %135 = icmp ult i64 %83, %134
  br i1 %135, label %166, label %136

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.mmc_fixup, ptr %90, i32 0, i32 2
  %138 = load i64, ptr %137, align 8
  %139 = icmp ugt i64 %83, %138
  br i1 %139, label %166, label %140

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.mmc_fixup, ptr %90, i32 0, i32 8
  %142 = load ptr, ptr %141, align 8
  %143 = icmp eq ptr %142, null
  br i1 %143, label %162, label %144

144:                                              ; preds = %140
  %145 = load ptr, ptr %0, align 8
  %146 = load ptr, ptr %145, align 64
  %147 = getelementptr inbounds %struct.device, ptr %146, i32 0, i32 25
  %148 = load ptr, ptr %147, align 8
  %149 = call ptr @of_get_next_child(ptr noundef %148, ptr noundef null) #13
  %150 = icmp eq ptr %149, null
  br i1 %150, label %166, label %151

151:                                              ; preds = %155, %144
  %152 = phi ptr [ %160, %155 ], [ %149, %144 ]
  %153 = call i32 @of_device_is_compatible(ptr noundef nonnull %152, ptr noundef nonnull %142) #13
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %151
  %156 = load ptr, ptr %0, align 8
  %157 = load ptr, ptr %156, align 64
  %158 = getelementptr inbounds %struct.device, ptr %157, i32 0, i32 25
  %159 = load ptr, ptr %158, align 8
  %160 = call ptr @of_get_next_child(ptr noundef %159, ptr noundef nonnull %152) #13
  %161 = icmp eq ptr %160, null
  br i1 %161, label %166, label %151

162:                                              ; preds = %151, %140
  %163 = load ptr, ptr %89, align 4
  %164 = getelementptr inbounds %struct.mmc_fixup, ptr %90, i32 0, i32 10
  %165 = load i32, ptr %164, align 8
  call void %163(ptr noundef %0, i32 noundef %165) #13
  br label %166

166:                                              ; preds = %162, %155, %144, %136, %132, %128, %121, %114, %107, %101, %94
  %167 = getelementptr %struct.mmc_fixup, ptr %90, i32 1
  %168 = getelementptr %struct.mmc_fixup, ptr %90, i32 1, i32 9
  %169 = load ptr, ptr %168, align 4
  %170 = icmp eq ptr %169, null
  br i1 %170, label %171, label %88

171:                                              ; preds = %166
  %172 = getelementptr i8, ptr %30, i32 212
  %173 = load i8, ptr %172, align 1
  %174 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 72
  store i8 %173, ptr %174, align 4
  %175 = getelementptr i8, ptr %30, i32 213
  %176 = load i8, ptr %175, align 1
  %177 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 21, i32 72, i32 1
  store i8 %176, ptr %177, align 1
  %178 = getelementptr i8, ptr %30, i32 214
  %179 = load i8, ptr %178, align 1
  %180 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 21, i32 72, i32 2
  store i8 %179, ptr %180, align 2
  %181 = getelementptr i8, ptr %30, i32 215
  %182 = load i8, ptr %181, align 1
  %183 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 21, i32 72, i32 3
  store i8 %182, ptr %183, align 1
  %184 = load i8, ptr %33, align 8
  %185 = icmp ugt i8 %184, 1
  br i1 %185, label %186, label %207

186:                                              ; preds = %171
  %187 = load i8, ptr %172, align 1
  %188 = zext i8 %187 to i32
  %189 = load i8, ptr %175, align 1
  %190 = zext i8 %189 to i32
  %191 = shl nuw nsw i32 %190, 8
  %192 = or i32 %191, %188
  %193 = load i8, ptr %178, align 1
  %194 = zext i8 %193 to i32
  %195 = shl nuw nsw i32 %194, 16
  %196 = or i32 %192, %195
  %197 = load i8, ptr %181, align 1
  %198 = zext i8 %197 to i32
  %199 = shl nuw i32 %198, 24
  %200 = or i32 %196, %199
  %201 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 19
  store i32 %200, ptr %201, align 8
  %202 = icmp ugt i32 %200, 4194304
  br i1 %202, label %203, label %207

203:                                              ; preds = %186
  %204 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 5
  %205 = load i32, ptr %204, align 4
  %206 = or i32 %205, 4
  store i32 %206, ptr %204, align 4
  br label %207

207:                                              ; preds = %203, %186, %171
  %208 = getelementptr i8, ptr %30, i32 184
  %209 = load i8, ptr %208, align 1
  %210 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 48
  store i8 %209, ptr %210, align 4
  %211 = getelementptr i8, ptr %30, i32 196
  %212 = load i8, ptr %211, align 1
  %213 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 50
  store i8 %212, ptr %213, align 2
  %214 = load ptr, ptr %0, align 8
  %215 = getelementptr inbounds %struct.mmc_host, ptr %214, i32 0, i32 16
  %216 = load i32, ptr %215, align 8
  %217 = getelementptr inbounds %struct.mmc_host, ptr %214, i32 0, i32 17
  %218 = load i32, ptr %217, align 4
  %219 = and i32 %216, 2
  %220 = icmp eq i32 %219, 0
  %221 = and i8 %212, 1
  %222 = icmp eq i8 %221, 0
  %223 = select i1 %220, i1 true, i1 %222
  %224 = xor i1 %223, true
  %225 = zext i1 %224 to i32
  %226 = and i8 %212, 2
  %227 = icmp eq i8 %226, 0
  %228 = select i1 %220, i1 true, i1 %227
  %229 = or i32 %225, 2
  %230 = select i1 %228, i32 %225, i32 %229
  %231 = and i32 %216, 6144
  %232 = icmp eq i32 %231, 0
  %233 = and i8 %212, 4
  %234 = icmp eq i8 %233, 0
  %235 = select i1 %232, i1 true, i1 %234
  %236 = or i32 %230, 4
  %237 = select i1 %235, i32 %230, i32 %236
  %238 = and i32 %216, 8192
  %239 = icmp eq i32 %238, 0
  %240 = and i8 %212, 8
  %241 = icmp eq i8 %240, 0
  %242 = select i1 %239, i1 true, i1 %241
  %243 = or i32 %237, 8
  %244 = select i1 %242, i32 %237, i32 %243
  %245 = and i32 %218, 32
  %246 = icmp eq i32 %245, 0
  %247 = and i8 %212, 16
  %248 = icmp eq i8 %247, 0
  %249 = select i1 %246, i1 true, i1 %248
  %250 = or i32 %244, 16
  %251 = select i1 %249, i32 %244, i32 %250
  %252 = and i32 %218, 64
  %253 = icmp eq i32 %252, 0
  %254 = and i8 %212, 32
  %255 = icmp eq i8 %254, 0
  %256 = select i1 %253, i1 true, i1 %255
  %257 = or i32 %251, 32
  %258 = select i1 %256, i32 %251, i32 %257
  %259 = and i32 %218, 32768
  %260 = icmp eq i32 %259, 0
  %261 = and i8 %212, 64
  %262 = icmp eq i8 %261, 0
  %263 = select i1 %260, i1 true, i1 %262
  %264 = or i32 %258, 64
  %265 = select i1 %263, i32 %258, i32 %264
  %266 = and i32 %218, 65536
  %267 = icmp eq i32 %266, 0
  %268 = icmp sgt i8 %212, -1
  %269 = select i1 %267, i1 true, i1 %268
  %270 = or i32 %265, 128
  %271 = select i1 %269, i32 %265, i32 %270
  %272 = and i32 %218, 1048576
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %281, label %274

274:                                              ; preds = %207
  %275 = icmp eq i8 %209, 0
  %276 = and i32 %271, 192
  %277 = icmp eq i32 %276, 0
  %278 = select i1 %275, i1 true, i1 %277
  %279 = or i32 %271, 256
  %280 = select i1 %278, i32 %271, i32 %279
  br label %281

281:                                              ; preds = %274, %207
  %282 = phi i32 [ %271, %207 ], [ %280, %274 ]
  %283 = select i1 %269, i1 %263, i1 false
  %284 = select i1 %283, i1 %256, i1 false
  %285 = select i1 %284, i1 %249, i1 false
  %286 = select i1 %285, i32 0, i32 200000000
  %287 = select i1 %223, i32 0, i32 26000000
  %288 = select i1 %242, i1 %235, i1 false
  %289 = select i1 %288, i1 %228, i1 false
  %290 = select i1 %289, i32 %287, i32 52000000
  %291 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 17
  store i32 %290, ptr %291, align 8
  %292 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 18
  store i32 %286, ptr %292, align 4
  %293 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 39
  store i32 %282, ptr %293, align 4
  %294 = getelementptr i8, ptr %30, i32 217
  %295 = load i8, ptr %294, align 1
  %296 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 57
  store i8 %295, ptr %296, align 1
  %297 = getelementptr i8, ptr %30, i32 223
  %298 = load i8, ptr %297, align 1
  %299 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 59
  store i8 %298, ptr %299, align 1
  %300 = getelementptr i8, ptr %30, i32 224
  %301 = load i8, ptr %300, align 1
  %302 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 60
  store i8 %301, ptr %302, align 8
  %303 = getelementptr i8, ptr %30, i32 226
  %304 = load i8, ptr %303, align 1
  %305 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 61
  store i8 %304, ptr %305, align 1
  %306 = icmp ugt i8 %184, 2
  br i1 %306, label %307, label %378

307:                                              ; preds = %281
  %308 = load i8, ptr %294, align 1
  %309 = getelementptr i8, ptr %30, i32 179
  %310 = load i8, ptr %309, align 1
  %311 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 6
  store i8 %310, ptr %311, align 2
  %312 = getelementptr i8, ptr %30, i32 199
  %313 = load i8, ptr %312, align 1
  %314 = zext i8 %313 to i32
  %315 = mul nuw nsw i32 %314, 10
  %316 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 12
  store i32 %315, ptr %316, align 4
  %317 = add i8 %308, -1
  %318 = icmp ult i8 %317, 23
  br i1 %318, label %319, label %324

319:                                              ; preds = %307
  %320 = load i8, ptr %294, align 1
  %321 = zext i8 %320 to i32
  %322 = shl nuw i32 1, %321
  %323 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 13
  store i32 %322, ptr %323, align 8
  br label %324

324:                                              ; preds = %319, %307
  %325 = getelementptr i8, ptr %30, i32 175
  %326 = load i8, ptr %325, align 1
  %327 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 1
  store i8 %326, ptr %327, align 1
  %328 = load i8, ptr %297, align 1
  %329 = zext i8 %328 to i32
  %330 = mul nuw nsw i32 %329, 300
  %331 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 21
  store i32 %330, ptr %331, align 8
  %332 = load i8, ptr %300, align 1
  %333 = zext i8 %332 to i32
  %334 = shl nuw nsw i32 %333, 10
  %335 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 20
  store i32 %334, ptr %335, align 4
  %336 = getelementptr i8, ptr %30, i32 222
  %337 = load i8, ptr %336, align 1
  %338 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 3
  store i8 %337, ptr %338, align 1
  %339 = load i8, ptr %303, align 1
  %340 = icmp eq i8 %339, 0
  br i1 %340, label %378, label %341

341:                                              ; preds = %324
  %342 = load i32, ptr %217, align 4
  %343 = and i32 %342, 1
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %378

345:                                              ; preds = %341
  %346 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 43
  %347 = zext i8 %339 to i32
  %348 = shl nuw nsw i32 %347, 17
  %349 = zext i32 %348 to i64
  %350 = load i32, ptr %346, align 8
  %351 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 42, i32 %350
  store i64 %349, ptr %351, align 8
  %352 = load i32, ptr %346, align 8
  %353 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 42, i32 %352, i32 1
  store i32 1, ptr %353, align 8
  %354 = load i32, ptr %346, align 8
  %355 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 42, i32 %354, i32 2
  %356 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %355, ptr noundef nonnull @.str.62, i32 noundef 0) #13
  %357 = load i32, ptr %346, align 8
  %358 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 42, i32 %357, i32 3
  store i8 1, ptr %358, align 8
  %359 = load i32, ptr %346, align 8
  %360 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 42, i32 %359, i32 4
  store i32 2, ptr %360, align 4
  %361 = add i32 %359, 1
  store i32 %361, ptr %346, align 8
  %362 = load i8, ptr %303, align 1
  %363 = zext i8 %362 to i32
  %364 = shl nuw nsw i32 %363, 17
  %365 = zext i32 %364 to i64
  %366 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 42, i32 %361
  store i64 %365, ptr %366, align 8
  %367 = load i32, ptr %346, align 8
  %368 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 42, i32 %367, i32 1
  store i32 2, ptr %368, align 8
  %369 = load i32, ptr %346, align 8
  %370 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 42, i32 %369, i32 2
  %371 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %370, ptr noundef nonnull @.str.62, i32 noundef 1) #13
  %372 = load i32, ptr %346, align 8
  %373 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 42, i32 %372, i32 3
  store i8 1, ptr %373, align 8
  %374 = load i32, ptr %346, align 8
  %375 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 42, i32 %374, i32 4
  store i32 2, ptr %375, align 4
  %376 = add i32 %374, 1
  store i32 %376, ptr %346, align 8
  %377 = load i8, ptr %33, align 8
  br label %378

378:                                              ; preds = %345, %341, %324, %281
  %379 = phi i8 [ %377, %345 ], [ %184, %324 ], [ %184, %341 ], [ %184, %281 ]
  %380 = getelementptr i8, ptr %30, i32 221
  %381 = load i8, ptr %380, align 1
  %382 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 58
  store i8 %381, ptr %382, align 2
  %383 = getelementptr i8, ptr %30, i32 229
  %384 = load i8, ptr %383, align 1
  %385 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 62
  store i8 %384, ptr %385, align 2
  %386 = getelementptr i8, ptr %30, i32 230
  %387 = load i8, ptr %386, align 1
  %388 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 63
  store i8 %387, ptr %388, align 1
  %389 = getelementptr i8, ptr %30, i32 231
  %390 = load i8, ptr %389, align 1
  %391 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 64
  store i8 %390, ptr %391, align 4
  %392 = getelementptr i8, ptr %30, i32 232
  %393 = load i8, ptr %392, align 1
  %394 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 65
  store i8 %393, ptr %394, align 1
  %395 = getelementptr i8, ptr %30, i32 160
  %396 = load i8, ptr %395, align 1
  %397 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 45
  store i8 %396, ptr %397, align 1
  %398 = getelementptr i8, ptr %30, i32 197
  %399 = load i8, ptr %398, align 1
  %400 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 51
  store i8 %399, ptr %400, align 1
  %401 = icmp ugt i8 %379, 3
  br i1 %401, label %402, label %682

402:                                              ; preds = %378
  %403 = getelementptr i8, ptr %30, i32 155
  %404 = load i8, ptr %403, align 1
  %405 = and i8 %404, 1
  %406 = icmp eq i8 %405, 0
  %407 = xor i1 %406, true
  %408 = zext i1 %407 to i8
  %409 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 25
  store i8 %408, ptr %409, align 8
  %410 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 26
  store i64 -22, ptr %410, align 8
  %411 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 27
  store i32 -22, ptr %411, align 8
  %412 = load i8, ptr %395, align 1
  %413 = and i8 %412, 2
  %414 = icmp eq i8 %413, 0
  br i1 %414, label %478, label %415

415:                                              ; preds = %402
  %416 = getelementptr i8, ptr %30, i32 156
  %417 = load i8, ptr %416, align 1
  %418 = and i8 %417, 1
  %419 = icmp eq i8 %418, 0
  br i1 %419, label %478, label %420

420:                                              ; preds = %415
  br i1 %406, label %467, label %421

421:                                              ; preds = %420
  %422 = load i8, ptr %300, align 1
  %423 = load i8, ptr %380, align 1
  %424 = getelementptr i8, ptr %30, i32 139
  %425 = load i8, ptr %424, align 1
  %426 = zext i8 %425 to i64
  %427 = shl nuw nsw i64 %426, 24
  %428 = getelementptr i8, ptr %30, i32 138
  %429 = load i8, ptr %428, align 1
  %430 = zext i8 %429 to i64
  %431 = shl nuw nsw i64 %430, 16
  %432 = or i64 %431, %427
  %433 = getelementptr i8, ptr %30, i32 137
  %434 = load i8, ptr %433, align 1
  %435 = zext i8 %434 to i64
  %436 = shl nuw nsw i64 %435, 8
  %437 = or i64 %432, %436
  %438 = getelementptr i8, ptr %30, i32 136
  %439 = load i8, ptr %438, align 1
  %440 = zext i8 %439 to i64
  %441 = or i64 %437, %440
  store i64 %441, ptr %410, align 8
  %442 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 5
  %443 = load i32, ptr %442, align 4
  %444 = and i32 %443, 4
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %448, label %446

446:                                              ; preds = %421
  %447 = shl nuw nsw i64 %441, 9
  store i64 %447, ptr %410, align 8
  br label %448

448:                                              ; preds = %446, %421
  %449 = getelementptr i8, ptr %30, i32 142
  %450 = load i8, ptr %449, align 1
  %451 = zext i8 %450 to i32
  %452 = shl nuw nsw i32 %451, 16
  %453 = getelementptr i8, ptr %30, i32 141
  %454 = load i8, ptr %453, align 1
  %455 = zext i8 %454 to i32
  %456 = shl nuw nsw i32 %455, 8
  %457 = or i32 %456, %452
  %458 = getelementptr i8, ptr %30, i32 140
  %459 = load i8, ptr %458, align 1
  %460 = zext i8 %459 to i32
  %461 = or i32 %457, %460
  %462 = zext i8 %422 to i32
  %463 = zext i8 %423 to i32
  %464 = shl nuw nsw i32 %462, 9
  %465 = mul nuw nsw i32 %464, %463
  %466 = mul i32 %465, %461
  store i32 %466, ptr %411, align 8
  br label %478

467:                                              ; preds = %420
  %468 = load ptr, ptr %0, align 8
  %469 = getelementptr inbounds %struct.mmc_host, ptr %468, i32 0, i32 1, i32 3
  %470 = load ptr, ptr %469, align 4
  %471 = icmp eq ptr %470, null
  br i1 %471, label %472, label %475

472:                                              ; preds = %467
  %473 = getelementptr inbounds %struct.mmc_host, ptr %468, i32 0, i32 1
  %474 = load ptr, ptr %473, align 4
  br label %475

475:                                              ; preds = %472, %467
  %476 = phi ptr [ %474, %472 ], [ %470, %467 ]
  %477 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %476) #14
  br label %478

478:                                              ; preds = %475, %448, %415, %402
  %479 = load i8, ptr %395, align 1
  %480 = and i8 %479, 1
  %481 = icmp eq i8 %480, 0
  br i1 %481, label %554, label %482

482:                                              ; preds = %478
  %483 = load i8, ptr %300, align 1
  %484 = load i8, ptr %380, align 1
  %485 = zext i8 %483 to i32
  %486 = zext i8 %484 to i32
  %487 = mul nuw nsw i32 %486, %485
  %488 = zext i32 %487 to i64
  %489 = shl nuw nsw i64 %488, 19
  %490 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 43
  br label %491

491:                                              ; preds = %551, %482
  %492 = phi i32 [ 0, %482 ], [ %552, %551 ]
  %493 = mul nuw nsw i32 %492, 3
  %494 = add nuw nsw i32 %493, 143
  %495 = getelementptr i8, ptr %30, i32 %494
  %496 = load i8, ptr %495, align 1
  %497 = icmp eq i8 %496, 0
  br i1 %497, label %498, label %508

498:                                              ; preds = %491
  %499 = add nuw nsw i32 %493, 144
  %500 = getelementptr i8, ptr %30, i32 %499
  %501 = load i8, ptr %500, align 1
  %502 = icmp eq i8 %501, 0
  br i1 %502, label %503, label %508

503:                                              ; preds = %498
  %504 = add nuw nsw i32 %493, 145
  %505 = getelementptr i8, ptr %30, i32 %504
  %506 = load i8, ptr %505, align 1
  %507 = icmp eq i8 %506, 0
  br i1 %507, label %551, label %508

508:                                              ; preds = %503, %498, %491
  %509 = load i8, ptr %409, align 8, !range !10
  %510 = icmp eq i8 %509, 0
  br i1 %510, label %511, label %522

511:                                              ; preds = %508
  %512 = load ptr, ptr %0, align 8
  %513 = getelementptr inbounds %struct.mmc_host, ptr %512, i32 0, i32 1, i32 3
  %514 = load ptr, ptr %513, align 4
  %515 = icmp eq ptr %514, null
  br i1 %515, label %516, label %519

516:                                              ; preds = %511
  %517 = getelementptr inbounds %struct.mmc_host, ptr %512, i32 0, i32 1
  %518 = load ptr, ptr %517, align 4
  br label %519

519:                                              ; preds = %516, %511
  %520 = phi ptr [ %518, %516 ], [ %514, %511 ]
  %521 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %520) #14
  br label %554

522:                                              ; preds = %508
  %523 = add nuw nsw i32 %493, 145
  %524 = getelementptr i8, ptr %30, i32 %523
  %525 = load i8, ptr %524, align 1
  %526 = zext i8 %525 to i32
  %527 = shl nuw nsw i32 %526, 16
  %528 = add nuw nsw i32 %493, 144
  %529 = getelementptr i8, ptr %30, i32 %528
  %530 = load i8, ptr %529, align 1
  %531 = zext i8 %530 to i32
  %532 = shl nuw nsw i32 %531, 8
  %533 = zext i8 %496 to i32
  %534 = or i32 %527, %533
  %535 = or i32 %534, %532
  %536 = zext i32 %535 to i64
  %537 = mul nuw nsw i64 %489, %536
  %538 = add nuw nsw i32 %492, 4
  %539 = load i32, ptr %490, align 8
  %540 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 42, i32 %539
  store i64 %537, ptr %540, align 8
  %541 = load i32, ptr %490, align 8
  %542 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 42, i32 %541, i32 1
  store i32 %538, ptr %542, align 8
  %543 = load i32, ptr %490, align 8
  %544 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 42, i32 %543, i32 2
  %545 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %544, ptr noundef nonnull @.str.66, i32 noundef %492) #13
  %546 = load i32, ptr %490, align 8
  %547 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 42, i32 %546, i32 3
  store i8 0, ptr %547, align 8
  %548 = load i32, ptr %490, align 8
  %549 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 42, i32 %548, i32 4
  store i32 4, ptr %549, align 4
  %550 = add i32 %548, 1
  store i32 %550, ptr %490, align 8
  br label %551

551:                                              ; preds = %522, %503
  %552 = add nuw nsw i32 %492, 1
  %553 = icmp eq i32 %552, 4
  br i1 %553, label %554, label %491

554:                                              ; preds = %551, %519, %478
  %555 = load i8, ptr %383, align 1
  %556 = zext i8 %555 to i32
  %557 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 22
  store i32 %556, ptr %557, align 4
  %558 = load i8, ptr %386, align 1
  %559 = zext i8 %558 to i32
  %560 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 23
  store i32 %559, ptr %560, align 8
  %561 = load i8, ptr %389, align 1
  %562 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 2
  store i8 %561, ptr %562, align 2
  %563 = load i8, ptr %392, align 1
  %564 = zext i8 %563 to i32
  %565 = mul nuw nsw i32 %564, 300
  %566 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 24
  store i32 %565, ptr %566, align 4
  %567 = getelementptr i8, ptr %30, i32 173
  %568 = load i8, ptr %567, align 1
  %569 = zext i8 %568 to i32
  %570 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 37
  store i32 %569, ptr %570, align 4
  %571 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 38
  store i8 1, ptr %571, align 8
  %572 = getelementptr i8, ptr %30, i32 200
  %573 = load i8, ptr %572, align 1
  %574 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 53
  store i8 %573, ptr %574, align 1
  %575 = getelementptr i8, ptr %30, i32 201
  %576 = load i8, ptr %575, align 1
  %577 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 54
  store i8 %576, ptr %577, align 2
  %578 = getelementptr i8, ptr %30, i32 202
  %579 = load i8, ptr %578, align 1
  %580 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 55
  store i8 %579, ptr %580, align 1
  %581 = getelementptr i8, ptr %30, i32 203
  %582 = load i8, ptr %581, align 1
  %583 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 56
  store i8 %582, ptr %583, align 4
  %584 = getelementptr i8, ptr %30, i32 236
  %585 = load i8, ptr %584, align 1
  %586 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 66
  store i8 %585, ptr %586, align 2
  %587 = getelementptr i8, ptr %30, i32 237
  %588 = load i8, ptr %587, align 1
  %589 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 67
  store i8 %588, ptr %589, align 1
  %590 = getelementptr i8, ptr %30, i32 238
  %591 = load i8, ptr %590, align 1
  %592 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 68
  store i8 %591, ptr %592, align 8
  %593 = getelementptr i8, ptr %30, i32 239
  %594 = load i8, ptr %593, align 1
  %595 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 69
  store i8 %594, ptr %595, align 1
  %596 = getelementptr i8, ptr %30, i32 253
  %597 = load i8, ptr %596, align 1
  %598 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 70
  store i8 %597, ptr %598, align 2
  %599 = load i8, ptr %33, align 8
  %600 = icmp ugt i8 %599, 4
  br i1 %600, label %601, label %682

601:                                              ; preds = %554
  %602 = load i16, ptr %75, align 2
  %603 = icmp ult i16 %602, 2010
  br i1 %603, label %604, label %606

604:                                              ; preds = %601
  %605 = add nuw nsw i16 %602, 16
  store i16 %605, ptr %75, align 2
  br label %606

606:                                              ; preds = %604, %601
  %607 = getelementptr i8, ptr %30, i32 502
  %608 = load i8, ptr %607, align 1
  %609 = and i8 %608, 1
  %610 = icmp eq i8 %609, 0
  br i1 %610, label %624, label %611

611:                                              ; preds = %606
  %612 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 32
  store i8 1, ptr %612, align 8
  %613 = getelementptr i8, ptr %30, i32 163
  %614 = load i8, ptr %613, align 1
  %615 = and i8 %614, 1
  %616 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 33
  store i8 %615, ptr %616, align 1
  %617 = getelementptr i8, ptr %30, i32 246
  %618 = load i8, ptr %617, align 1
  %619 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 71
  store i8 %618, ptr %619, align 1
  %620 = load i8, ptr %613, align 1
  %621 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 34
  %622 = lshr i8 %620, 1
  %623 = and i8 %622, 1
  store i8 %623, ptr %621, align 2
  br label %624

624:                                              ; preds = %611, %606
  %625 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 6
  %626 = load i32, ptr %625, align 8
  %627 = and i32 %626, 8192
  %628 = icmp ne i32 %627, 0
  %629 = select i1 %628, i1 true, i1 %62
  br i1 %629, label %646, label %630

630:                                              ; preds = %624
  %631 = getelementptr i8, ptr %30, i32 503
  %632 = load i8, ptr %631, align 1
  %633 = and i8 %632, 1
  %634 = icmp eq i8 %633, 0
  br i1 %634, label %646, label %635

635:                                              ; preds = %630
  %636 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 30
  store i8 1, ptr %636, align 1
  %637 = load i8, ptr %631, align 1
  %638 = and i8 %637, 2
  %639 = icmp eq i8 %638, 0
  %640 = select i1 %639, i32 13, i32 12
  %641 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 31
  store i32 %640, ptr %641, align 4
  %642 = getelementptr i8, ptr %30, i32 198
  %643 = load i8, ptr %642, align 1
  %644 = mul i8 %643, 10
  %645 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 52
  store i8 %644, ptr %645, align 8
  br label %646

646:                                              ; preds = %635, %630, %624
  %647 = getelementptr i8, ptr %30, i32 166
  %648 = load i8, ptr %647, align 1
  %649 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 4
  store i8 %648, ptr %649, align 4
  %650 = getelementptr i8, ptr %30, i32 162
  %651 = load i8, ptr %650, align 1
  %652 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 8
  store i8 %651, ptr %652, align 8
  %653 = getelementptr i8, ptr %30, i32 168
  %654 = load i8, ptr %653, align 1
  %655 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 46
  store i8 %654, ptr %655, align 2
  %656 = load i8, ptr %653, align 1
  %657 = icmp eq i8 %656, 0
  br i1 %657, label %682, label %658

658:                                              ; preds = %646
  %659 = load ptr, ptr %0, align 8
  %660 = getelementptr inbounds %struct.mmc_host, ptr %659, i32 0, i32 16
  %661 = load i32, ptr %660, align 8
  %662 = and i32 %661, 1073741824
  %663 = icmp eq i32 %662, 0
  br i1 %663, label %682, label %664

664:                                              ; preds = %658
  %665 = zext i8 %656 to i32
  %666 = shl nuw nsw i32 %665, 17
  %667 = zext i32 %666 to i64
  %668 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 43
  %669 = load i32, ptr %668, align 8
  %670 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 42, i32 %669
  store i64 %667, ptr %670, align 8
  %671 = load i32, ptr %668, align 8
  %672 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 42, i32 %671, i32 1
  store i32 3, ptr %672, align 8
  %673 = load i32, ptr %668, align 8
  %674 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 42, i32 %673, i32 2
  %675 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %674, ptr noundef nonnull @.str.63, i32 noundef 0) #13
  %676 = load i32, ptr %668, align 8
  %677 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 42, i32 %676, i32 3
  store i8 0, ptr %677, align 8
  %678 = load i32, ptr %668, align 8
  %679 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 42, i32 %678, i32 4
  store i32 8, ptr %679, align 4
  %680 = add i32 %678, 1
  store i32 %680, ptr %668, align 8
  %681 = load i8, ptr %33, align 8
  br label %682

682:                                              ; preds = %664, %658, %646, %554, %378
  %683 = phi i8 [ %681, %664 ], [ %599, %658 ], [ %599, %646 ], [ %599, %554 ], [ %379, %378 ]
  %684 = getelementptr i8, ptr %30, i32 181
  %685 = load i8, ptr %684, align 1
  %686 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 47
  store i8 %685, ptr %686, align 1
  %687 = load i8, ptr %684, align 1
  %688 = icmp ne i8 %687, 0
  %689 = sext i1 %688 to i8
  %690 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 14
  store i8 %689, ptr %690, align 8
  %691 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 14
  store i32 500, ptr %691, align 4
  %692 = icmp ugt i8 %683, 5
  br i1 %692, label %693, label %750

693:                                              ; preds = %682
  %694 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 76
  %695 = load i32, ptr %694, align 4
  %696 = or i32 %695, 1
  store i32 %696, ptr %694, align 4
  %697 = getelementptr i8, ptr %30, i32 248
  %698 = load i8, ptr %697, align 1
  %699 = zext i8 %698 to i32
  %700 = mul nuw nsw i32 %699, 10
  store i32 %700, ptr %691, align 4
  %701 = getelementptr i8, ptr %30, i32 247
  %702 = load i8, ptr %701, align 1
  %703 = zext i8 %702 to i32
  %704 = mul nuw nsw i32 %703, 10
  %705 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 15
  store i32 %704, ptr %705, align 8
  %706 = getelementptr i8, ptr %30, i32 249
  %707 = load i8, ptr %706, align 1
  %708 = zext i8 %707 to i32
  %709 = getelementptr i8, ptr %30, i32 250
  %710 = load i8, ptr %709, align 1
  %711 = zext i8 %710 to i32
  %712 = shl nuw nsw i32 %711, 8
  %713 = or i32 %712, %708
  %714 = getelementptr i8, ptr %30, i32 251
  %715 = load i8, ptr %714, align 1
  %716 = zext i8 %715 to i32
  %717 = shl nuw nsw i32 %716, 16
  %718 = or i32 %713, %717
  %719 = getelementptr i8, ptr %30, i32 252
  %720 = load i8, ptr %719, align 1
  %721 = zext i8 %720 to i32
  %722 = shl nuw i32 %721, 24
  %723 = or i32 %718, %722
  %724 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 28
  store i32 %723, ptr %724, align 4
  %725 = getelementptr i8, ptr %30, i32 61
  %726 = load i8, ptr %725, align 1
  %727 = icmp eq i8 %726, 1
  %728 = select i1 %727, i32 4096, i32 512
  %729 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 35
  store i32 %728, ptr %729, align 4
  %730 = getelementptr i8, ptr %30, i32 499
  %731 = load i8, ptr %730, align 1
  %732 = and i8 %731, 1
  %733 = icmp eq i8 %732, 0
  br i1 %733, label %741, label %734

734:                                              ; preds = %693
  %735 = getelementptr i8, ptr %30, i32 498
  %736 = load i8, ptr %735, align 1
  %737 = icmp ult i8 %736, 9
  br i1 %737, label %738, label %741

738:                                              ; preds = %734
  %739 = zext i8 %736 to i32
  %740 = shl nuw nsw i32 %728, %739
  br label %741

741:                                              ; preds = %738, %734, %693
  %742 = phi i32 [ %740, %738 ], [ 0, %734 ], [ 0, %693 ]
  %743 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 36
  store i32 %742, ptr %743, align 8
  %744 = getelementptr i8, ptr %30, i32 500
  %745 = load i8, ptr %744, align 1
  %746 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 9
  store i8 %745, ptr %746, align 1
  %747 = getelementptr i8, ptr %30, i32 501
  %748 = load i8, ptr %747, align 1
  %749 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 10
  store i8 %748, ptr %749, align 2
  br label %752

750:                                              ; preds = %682
  %751 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 35
  store i32 512, ptr %751, align 4
  br label %752

752:                                              ; preds = %750, %741
  %753 = phi i32 [ 500, %750 ], [ %700, %741 ]
  %754 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 12
  %755 = load i32, ptr %754, align 4
  %756 = icmp eq i32 %755, 0
  %757 = select i1 %756, i32 %753, i32 %755
  %758 = icmp ult i32 %757, 300
  %759 = or i1 %756, %758
  br i1 %759, label %760, label %762

760:                                              ; preds = %752
  %761 = call i32 @llvm.umax.i32(i32 %757, i32 300) #13
  store i32 %761, ptr %754, align 4
  br label %762

762:                                              ; preds = %760, %752
  %763 = icmp ugt i8 %683, 6
  br i1 %763, label %764, label %810

764:                                              ; preds = %762
  %765 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 43
  %766 = getelementptr i8, ptr %30, i32 254
  %767 = load i64, ptr %766, align 1
  store i64 %767, ptr %765, align 8
  %768 = getelementptr i8, ptr %30, i32 493
  %769 = load i8, ptr %768, align 1
  %770 = and i8 %769, 1
  %771 = icmp eq i8 %770, 0
  br i1 %771, label %777, label %772

772:                                              ; preds = %764
  %773 = getelementptr i8, ptr %30, i32 169
  %774 = load i8, ptr %773, align 1
  %775 = and i8 %774, 1
  %776 = icmp eq i8 %775, 0
  br label %777

777:                                              ; preds = %772, %764
  %778 = phi i1 [ false, %764 ], [ %776, %772 ]
  %779 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 39
  %780 = zext i1 %778 to i8
  store i8 %780, ptr %779, align 1
  %781 = getelementptr i8, ptr %30, i32 267
  %782 = load i8, ptr %781, align 1
  %783 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 73
  store i8 %782, ptr %783, align 8
  %784 = getelementptr i8, ptr %30, i32 268
  %785 = load i8, ptr %784, align 1
  %786 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 74
  store i8 %785, ptr %786, align 1
  %787 = getelementptr i8, ptr %30, i32 269
  %788 = load i8, ptr %787, align 1
  %789 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 75
  store i8 %788, ptr %789, align 2
  %790 = icmp ugt i8 %683, 7
  br i1 %790, label %791, label %810

791:                                              ; preds = %777
  %792 = getelementptr i8, ptr %30, i32 308
  %793 = load i8, ptr %792, align 1
  %794 = and i8 %793, 1
  %795 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 41
  store i8 %794, ptr %795, align 1
  %796 = getelementptr i8, ptr %30, i32 307
  %797 = load i8, ptr %796, align 1
  %798 = and i8 %797, 31
  %799 = add nuw nsw i8 %798, 1
  %800 = zext i8 %799 to i32
  %801 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 42
  store i32 %800, ptr %801, align 4
  %802 = icmp ult i8 %798, 2
  br i1 %802, label %803, label %804

803:                                              ; preds = %791
  store i8 0, ptr %795, align 1
  store i32 0, ptr %801, align 4
  br label %804

804:                                              ; preds = %803, %791
  %805 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 4
  %806 = load i8, ptr %805, align 4
  %807 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 5
  %808 = lshr i8 %806, 4
  %809 = and i8 %808, 1
  store i8 %809, ptr %807, align 1
  br label %810

810:                                              ; preds = %804, %777, %762, %48
  %811 = phi i32 [ -22, %48 ], [ 0, %804 ], [ 0, %777 ], [ 0, %762 ]
  %812 = load ptr, ptr %2, align 4
  call void @kfree(ptr noundef %812) #13
  br label %813

813:                                              ; preds = %810, %26, %19, %5, %1
  %814 = phi i32 [ %811, %810 ], [ 0, %1 ], [ %6, %19 ], [ 0, %26 ], [ %6, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  ret i32 %814
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_can_discard(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_can_trim(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mmc_select_timing(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = tail call i32 @mmc_can_ext_csd(ptr noundef %0) #13
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %256, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 39
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %149, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr inbounds %struct.mmc_host, ptr %12, i32 0, i32 16
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 64
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %137, label %17

17:                                               ; preds = %11
  %18 = and i32 %8, 128
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = tail call i32 @mmc_set_signal_voltage(ptr noundef %12, i32 noundef 2) #13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %20
  %24 = load i32, ptr %7, align 4
  br label %25

25:                                               ; preds = %23, %17
  %26 = phi i32 [ %24, %23 ], [ %8, %17 ]
  %27 = phi i32 [ %21, %23 ], [ -22, %17 ]
  %28 = and i32 %26, 64
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %137, label %30

30:                                               ; preds = %25
  %31 = tail call i32 @mmc_set_signal_voltage(ptr noundef %12, i32 noundef 1) #13
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %137

33:                                               ; preds = %30, %20
  %34 = tail call fastcc i32 @mmc_select_bus_width(ptr noundef %0) #13
  %35 = icmp eq i32 %34, 3
  br i1 %35, label %48, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.mmc_host, ptr %12, i32 0, i32 1, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.mmc_host, ptr %12, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  br label %43

43:                                               ; preds = %40, %36
  %44 = phi ptr [ %42, %40 ], [ %38, %36 ]
  %45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %44, i32 noundef %34) #14
  %46 = icmp slt i32 %34, 0
  %47 = select i1 %46, i32 %34, i32 -524
  br label %137

48:                                               ; preds = %33
  %49 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 14
  %50 = load i32, ptr %49, align 4
  %51 = tail call i32 @__mmc_switch(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext -71, i8 noundef zeroext 1, i32 noundef %50, i8 noundef zeroext 0, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 3) #13
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.mmc_host, ptr %12, i32 0, i32 1, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.mmc_host, ptr %12, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  br label %60

60:                                               ; preds = %57, %53
  %61 = phi ptr [ %59, %57 ], [ %55, %53 ]
  %62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %61, i32 noundef %51) #14
  br label %137

63:                                               ; preds = %48
  tail call void @mmc_set_timing(ptr noundef %12, i32 noundef 1) #13
  %64 = tail call i32 @mmc_switch_status(ptr noundef %0, i1 noundef zeroext true) #13
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %137

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 17
  %68 = load i32, ptr %67, align 8
  tail call void @mmc_set_clock(ptr noundef %12, i32 noundef %68) #13
  %69 = load i32, ptr %49, align 4
  %70 = tail call i32 @mmc_switch(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext -73, i8 noundef zeroext -122, i32 noundef %69) #13
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.mmc_host, ptr %12, i32 0, i32 1, i32 3
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.mmc_host, ptr %12, i32 0, i32 1
  %78 = load ptr, ptr %77, align 4
  br label %79

79:                                               ; preds = %76, %72
  %80 = phi ptr [ %78, %76 ], [ %74, %72 ]
  %81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %80, i32 noundef %70) #14
  br label %137

82:                                               ; preds = %66
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4
  %83 = load ptr, ptr %0, align 8
  %84 = getelementptr inbounds %struct.mmc_host, ptr %83, i32 0, i32 18
  %85 = load i32, ptr %84, align 32
  %86 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 51
  %87 = load i8, ptr %86, align 1
  %88 = or i8 %87, 1
  %89 = zext i8 %88 to i32
  %90 = icmp sgt i32 %85, -1
  br i1 %90, label %91, label %97

91:                                               ; preds = %82
  %92 = shl nuw i32 1, %85
  %93 = and i32 %92, %89
  %94 = icmp eq i32 %93, 0
  %95 = select i1 %94, i32 0, i32 %85
  %96 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 40
  store i32 %95, ptr %96, align 8
  br label %107

97:                                               ; preds = %82
  %98 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 18
  %99 = load i32, ptr %98, align 4
  %100 = call i32 @mmc_select_drive_strength(ptr noundef %0, i32 noundef %99, i32 noundef %89, ptr noundef nonnull %3) #13
  %101 = load i32, ptr %3, align 4
  %102 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 40
  store i32 %100, ptr %102, align 8
  %103 = icmp eq i32 %101, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %97
  %105 = load ptr, ptr %0, align 8
  call void @mmc_set_driver_type(ptr noundef %105, i32 noundef %101) #13
  %106 = load i32, ptr %102, align 8
  br label %107

107:                                              ; preds = %104, %97, %91
  %108 = phi i32 [ %95, %91 ], [ %100, %97 ], [ %106, %104 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  %109 = trunc i32 %108 to i8
  %110 = shl i8 %109, 4
  %111 = or i8 %110, 3
  %112 = load i32, ptr %49, align 4
  %113 = call i32 @__mmc_switch(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext -71, i8 noundef zeroext %111, i32 noundef %112, i8 noundef zeroext 0, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 3) #13
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %125, label %115

115:                                              ; preds = %107
  %116 = getelementptr inbounds %struct.mmc_host, ptr %12, i32 0, i32 1, i32 3
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.mmc_host, ptr %12, i32 0, i32 1
  %121 = load ptr, ptr %120, align 4
  br label %122

122:                                              ; preds = %119, %115
  %123 = phi ptr [ %121, %119 ], [ %117, %115 ]
  %124 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %123, i32 noundef %113) #14
  br label %137

125:                                              ; preds = %107
  call void @mmc_set_timing(ptr noundef %12, i32 noundef 10) #13
  %126 = getelementptr inbounds %struct.mmc_host, ptr %12, i32 0, i32 28, i32 10
  store i8 1, ptr %126, align 1
  %127 = getelementptr inbounds %struct.mmc_host, ptr %12, i32 0, i32 3
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr inbounds %struct.mmc_host_ops, ptr %128, i32 0, i32 18
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %134, label %132

132:                                              ; preds = %125
  %133 = getelementptr inbounds %struct.mmc_host, ptr %12, i32 0, i32 28
  call void %130(ptr noundef %12, ptr noundef %133) #13
  br label %134

134:                                              ; preds = %132, %125
  %135 = call i32 @mmc_switch_status(ptr noundef %0, i1 noundef zeroext true) #13
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %256, label %137

137:                                              ; preds = %134, %122, %79, %63, %60, %43, %30, %25, %11
  %138 = phi i32 [ %31, %30 ], [ %47, %43 ], [ %51, %60 ], [ %64, %63 ], [ %70, %79 ], [ %113, %122 ], [ %135, %134 ], [ -524, %11 ], [ %27, %25 ]
  %139 = load ptr, ptr %0, align 8
  %140 = getelementptr inbounds %struct.mmc_host, ptr %139, i32 0, i32 1, i32 3
  %141 = load ptr, ptr %140, align 4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %146

143:                                              ; preds = %137
  %144 = getelementptr inbounds %struct.mmc_host, ptr %139, i32 0, i32 1
  %145 = load ptr, ptr %144, align 4
  br label %146

146:                                              ; preds = %143, %137
  %147 = phi ptr [ %145, %143 ], [ %141, %137 ]
  %148 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %147, ptr noundef nonnull @__func__.mmc_select_hs400es, i32 noundef %138) #14
  br label %253

149:                                              ; preds = %6
  %150 = and i32 %8, 48
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %234, label %152

152:                                              ; preds = %149
  %153 = load ptr, ptr %0, align 8
  %154 = getelementptr inbounds %struct.mmc_host, ptr %153, i32 0, i32 28, i32 8
  %155 = load i8, ptr %154, align 1
  %156 = zext i8 %155 to i32
  %157 = and i32 %8, 32
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %164, label %159

159:                                              ; preds = %152
  %160 = tail call i32 @mmc_set_signal_voltage(ptr noundef %153, i32 noundef 2) #13
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %172, label %162

162:                                              ; preds = %159
  %163 = load i32, ptr %7, align 4
  br label %164

164:                                              ; preds = %162, %152
  %165 = phi i32 [ %163, %162 ], [ %8, %152 ]
  %166 = phi i32 [ %160, %162 ], [ -22, %152 ]
  %167 = and i32 %165, 16
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %253, label %169

169:                                              ; preds = %164
  %170 = tail call i32 @mmc_set_signal_voltage(ptr noundef %153, i32 noundef 1) #13
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %253

172:                                              ; preds = %169, %159
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  store i32 0, ptr %2, align 4
  %173 = load ptr, ptr %0, align 8
  %174 = getelementptr inbounds %struct.mmc_host, ptr %173, i32 0, i32 18
  %175 = load i32, ptr %174, align 32
  %176 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 51
  %177 = load i8, ptr %176, align 1
  %178 = or i8 %177, 1
  %179 = zext i8 %178 to i32
  %180 = icmp sgt i32 %175, -1
  br i1 %180, label %181, label %187

181:                                              ; preds = %172
  %182 = shl nuw i32 1, %175
  %183 = and i32 %182, %179
  %184 = icmp eq i32 %183, 0
  %185 = select i1 %184, i32 0, i32 %175
  %186 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 40
  store i32 %185, ptr %186, align 8
  br label %196

187:                                              ; preds = %172
  %188 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 18
  %189 = load i32, ptr %188, align 4
  %190 = call i32 @mmc_select_drive_strength(ptr noundef %0, i32 noundef %189, i32 noundef %179, ptr noundef nonnull %2) #13
  %191 = load i32, ptr %2, align 4
  %192 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 40
  store i32 %190, ptr %192, align 8
  %193 = icmp eq i32 %191, 0
  br i1 %193, label %196, label %194

194:                                              ; preds = %187
  %195 = load ptr, ptr %0, align 8
  call void @mmc_set_driver_type(ptr noundef %195, i32 noundef %191) #13
  br label %196

196:                                              ; preds = %194, %187, %181
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  %197 = call fastcc i32 @mmc_select_bus_width(ptr noundef %0) #13
  %198 = icmp sgt i32 %197, 0
  br i1 %198, label %199, label %216

199:                                              ; preds = %196
  %200 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 40
  %201 = load i32, ptr %200, align 8
  %202 = trunc i32 %201 to i8
  %203 = shl i8 %202, 4
  %204 = or i8 %203, 2
  %205 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 14
  %206 = load i32, ptr %205, align 4
  %207 = call i32 @__mmc_switch(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext -71, i8 noundef zeroext %204, i32 noundef %206, i8 noundef zeroext 0, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 3) #13
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %219

209:                                              ; preds = %199
  %210 = getelementptr inbounds %struct.mmc_host, ptr %153, i32 0, i32 28, i32 7
  %211 = load i8, ptr %210, align 4
  call void @mmc_set_timing(ptr noundef %153, i32 noundef 9) #13
  %212 = call i32 @mmc_switch_status(ptr noundef %0, i1 noundef zeroext false) #13
  %213 = icmp eq i32 %212, -74
  br i1 %213, label %214, label %216

214:                                              ; preds = %209
  %215 = zext i8 %211 to i32
  call void @mmc_set_timing(ptr noundef %153, i32 noundef %215) #13
  br label %219

216:                                              ; preds = %209, %196
  %217 = phi i32 [ %212, %209 ], [ %197, %196 ]
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %256, label %219

219:                                              ; preds = %216, %214, %199
  %220 = phi i32 [ %217, %216 ], [ -74, %214 ], [ %207, %199 ]
  %221 = call i32 @mmc_set_signal_voltage(ptr noundef %153, i32 noundef %156) #13
  %222 = icmp eq i32 %221, 0
  %223 = select i1 %222, i32 %220, i32 -5
  %224 = load ptr, ptr %0, align 8
  %225 = getelementptr inbounds %struct.mmc_host, ptr %224, i32 0, i32 1, i32 3
  %226 = load ptr, ptr %225, align 4
  %227 = icmp eq ptr %226, null
  br i1 %227, label %228, label %231

228:                                              ; preds = %219
  %229 = getelementptr inbounds %struct.mmc_host, ptr %224, i32 0, i32 1
  %230 = load ptr, ptr %229, align 4
  br label %231

231:                                              ; preds = %228, %219
  %232 = phi ptr [ %230, %228 ], [ %226, %219 ]
  %233 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %232, ptr noundef nonnull @__func__.mmc_select_hs200, i32 noundef %223) #14
  br label %253

234:                                              ; preds = %149
  %235 = and i32 %8, 3
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %256, label %237

237:                                              ; preds = %234
  %238 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 14
  %239 = load i32, ptr %238, align 4
  %240 = tail call i32 @__mmc_switch(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext -71, i8 noundef zeroext 1, i32 noundef %239, i8 noundef zeroext 1, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef 3) #13
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %256, label %242

242:                                              ; preds = %237
  %243 = load ptr, ptr %0, align 8
  %244 = getelementptr inbounds %struct.mmc_host, ptr %243, i32 0, i32 1, i32 3
  %245 = load ptr, ptr %244, align 4
  %246 = icmp eq ptr %245, null
  br i1 %246, label %247, label %250

247:                                              ; preds = %242
  %248 = getelementptr inbounds %struct.mmc_host, ptr %243, i32 0, i32 1
  %249 = load ptr, ptr %248, align 4
  br label %250

250:                                              ; preds = %247, %242
  %251 = phi ptr [ %249, %247 ], [ %245, %242 ]
  %252 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %251, i32 noundef %240) #14
  br label %253

253:                                              ; preds = %250, %231, %169, %164, %146
  %254 = phi i32 [ %138, %146 ], [ %170, %169 ], [ %223, %231 ], [ %166, %164 ], [ %240, %250 ]
  %255 = icmp eq i32 %254, -74
  br i1 %255, label %256, label %278

256:                                              ; preds = %253, %237, %234, %216, %134, %1
  %257 = load ptr, ptr %0, align 8
  %258 = getelementptr inbounds %struct.mmc_host, ptr %257, i32 0, i32 28, i32 7
  %259 = load i8, ptr %258, align 4
  %260 = add i8 %259, -9
  %261 = icmp ult i8 %260, 2
  br i1 %261, label %262, label %266

262:                                              ; preds = %256
  %263 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 18
  %264 = load i32, ptr %263, align 4
  %265 = icmp eq i32 %264, -1
  br i1 %265, label %273, label %276

266:                                              ; preds = %256
  %267 = add i8 %259, -3
  %268 = icmp ult i8 %267, -2
  br i1 %268, label %273, label %269

269:                                              ; preds = %266
  %270 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 17
  %271 = load i32, ptr %270, align 8
  %272 = icmp eq i32 %271, -1
  br i1 %272, label %273, label %276

273:                                              ; preds = %269, %266, %262
  %274 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 7
  %275 = load i32, ptr %274, align 4
  br label %276

276:                                              ; preds = %273, %269, %262
  %277 = phi i32 [ %264, %262 ], [ %271, %269 ], [ %275, %273 ]
  call void @mmc_set_clock(ptr noundef %257, i32 noundef %277) #13
  br label %278

278:                                              ; preds = %276, %253
  %279 = phi i32 [ 0, %276 ], [ %254, %253 ]
  ret i32 %279
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mmc_hs200_tuning(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 39
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 192
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.mmc_host, ptr %2, i32 0, i32 28
  %9 = getelementptr inbounds %struct.mmc_host, ptr %2, i32 0, i32 28, i32 6
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 3
  br i1 %11, label %12, label %20

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.mmc_host, ptr %2, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.mmc_host_ops, ptr %14, i32 0, i32 13
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = tail call i32 %16(ptr noundef %2, ptr noundef %8) #13
  br label %20

20:                                               ; preds = %18, %12, %7, %1
  %21 = tail call i32 @mmc_execute_tuning(ptr noundef %0) #13
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mmc_select_bus_width(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 4
  %3 = load ptr, ptr %0, align 8
  %4 = tail call i32 @mmc_can_ext_csd(ptr noundef %0) #13
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %215, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 16
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %215, label %11

11:                                               ; preds = %6
  %12 = lshr i32 %8, 6
  %13 = and i32 %12, 1
  %14 = xor i32 %13, 1
  %15 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 14
  %16 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21
  %17 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 45
  %18 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 47
  %19 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 49
  %20 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 50
  %21 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 57
  %22 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 58
  %23 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 59
  %24 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 60
  %25 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 62
  %26 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 63
  %27 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 64
  %28 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 65
  %29 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 72
  %30 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 21, i32 72, i32 1
  %31 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 21, i32 72, i32 2
  %32 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 21, i32 72, i32 3
  %33 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 53
  %34 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 54
  %35 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 55
  %36 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 56
  %37 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 66
  %38 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 67
  %39 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 68
  %40 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 69
  %41 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 70
  %42 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 1, i32 3
  %43 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 1
  br label %44

44:                                               ; preds = %212, %11
  %45 = phi i32 [ %14, %11 ], [ 1, %212 ]
  %46 = getelementptr [2 x i32], ptr @mmc_select_bus_width.ext_csd_bits, i32 0, i32 %45
  %47 = load i32, ptr %46, align 4
  %48 = trunc i32 %47 to i8
  %49 = load i32, ptr %15, align 4
  %50 = call i32 @mmc_switch(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext -73, i8 noundef zeroext %48, i32 noundef %49) #13
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %212

52:                                               ; preds = %44
  %53 = getelementptr [2 x i32], ptr @mmc_select_bus_width.bus_widths, i32 0, i32 %45
  %54 = load i32, ptr %53, align 4
  call void @mmc_set_bus_width(ptr noundef %3, i32 noundef %54) #13
  %55 = load i32, ptr %7, align 8
  %56 = and i32 %55, 32768
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %197

58:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  store ptr null, ptr %2, align 4, !annotation !8
  %59 = call i32 @mmc_get_ext_csd(ptr noundef %0, ptr noundef nonnull %2) #13
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %195

61:                                               ; preds = %58
  %62 = load i8, ptr %17, align 1
  %63 = load ptr, ptr %2, align 4
  %64 = getelementptr i8, ptr %63, i32 160
  %65 = load i8, ptr %64, align 1
  %66 = icmp eq i8 %62, %65
  br i1 %66, label %67, label %193

67:                                               ; preds = %61
  %68 = load i8, ptr %18, align 1
  %69 = getelementptr i8, ptr %63, i32 181
  %70 = load i8, ptr %69, align 1
  %71 = icmp eq i8 %68, %70
  br i1 %71, label %72, label %193

72:                                               ; preds = %67
  %73 = load i8, ptr %16, align 8
  %74 = getelementptr i8, ptr %63, i32 192
  %75 = load i8, ptr %74, align 1
  %76 = icmp eq i8 %73, %75
  br i1 %76, label %77, label %193

77:                                               ; preds = %72
  %78 = load i8, ptr %19, align 1
  %79 = getelementptr i8, ptr %63, i32 194
  %80 = load i8, ptr %79, align 1
  %81 = icmp eq i8 %78, %80
  br i1 %81, label %82, label %193

82:                                               ; preds = %77
  %83 = load i8, ptr %20, align 2
  %84 = getelementptr i8, ptr %63, i32 196
  %85 = load i8, ptr %84, align 1
  %86 = icmp eq i8 %83, %85
  br i1 %86, label %87, label %193

87:                                               ; preds = %82
  %88 = load i8, ptr %21, align 1
  %89 = getelementptr i8, ptr %63, i32 217
  %90 = load i8, ptr %89, align 1
  %91 = icmp eq i8 %88, %90
  br i1 %91, label %92, label %193

92:                                               ; preds = %87
  %93 = load i8, ptr %22, align 2
  %94 = getelementptr i8, ptr %63, i32 221
  %95 = load i8, ptr %94, align 1
  %96 = icmp eq i8 %93, %95
  br i1 %96, label %97, label %193

97:                                               ; preds = %92
  %98 = load i8, ptr %23, align 1
  %99 = getelementptr i8, ptr %63, i32 223
  %100 = load i8, ptr %99, align 1
  %101 = icmp eq i8 %98, %100
  br i1 %101, label %102, label %193

102:                                              ; preds = %97
  %103 = load i8, ptr %24, align 8
  %104 = getelementptr i8, ptr %63, i32 224
  %105 = load i8, ptr %104, align 1
  %106 = icmp eq i8 %103, %105
  br i1 %106, label %107, label %193

107:                                              ; preds = %102
  %108 = load i8, ptr %25, align 2
  %109 = getelementptr i8, ptr %63, i32 229
  %110 = load i8, ptr %109, align 1
  %111 = icmp eq i8 %108, %110
  br i1 %111, label %112, label %193

112:                                              ; preds = %107
  %113 = load i8, ptr %26, align 1
  %114 = getelementptr i8, ptr %63, i32 230
  %115 = load i8, ptr %114, align 1
  %116 = icmp eq i8 %113, %115
  br i1 %116, label %117, label %193

117:                                              ; preds = %112
  %118 = load i8, ptr %27, align 4
  %119 = getelementptr i8, ptr %63, i32 231
  %120 = load i8, ptr %119, align 1
  %121 = icmp eq i8 %118, %120
  br i1 %121, label %122, label %193

122:                                              ; preds = %117
  %123 = load i8, ptr %28, align 1
  %124 = getelementptr i8, ptr %63, i32 232
  %125 = load i8, ptr %124, align 1
  %126 = icmp eq i8 %123, %125
  br i1 %126, label %127, label %193

127:                                              ; preds = %122
  %128 = load i8, ptr %29, align 4
  %129 = getelementptr i8, ptr %63, i32 212
  %130 = load i8, ptr %129, align 1
  %131 = icmp eq i8 %128, %130
  br i1 %131, label %132, label %193

132:                                              ; preds = %127
  %133 = load i8, ptr %30, align 1
  %134 = getelementptr i8, ptr %63, i32 213
  %135 = load i8, ptr %134, align 1
  %136 = icmp eq i8 %133, %135
  br i1 %136, label %137, label %193

137:                                              ; preds = %132
  %138 = load i8, ptr %31, align 2
  %139 = getelementptr i8, ptr %63, i32 214
  %140 = load i8, ptr %139, align 1
  %141 = icmp eq i8 %138, %140
  br i1 %141, label %142, label %193

142:                                              ; preds = %137
  %143 = load i8, ptr %32, align 1
  %144 = getelementptr i8, ptr %63, i32 215
  %145 = load i8, ptr %144, align 1
  %146 = icmp eq i8 %143, %145
  br i1 %146, label %147, label %193

147:                                              ; preds = %142
  %148 = load i8, ptr %33, align 1
  %149 = getelementptr i8, ptr %63, i32 200
  %150 = load i8, ptr %149, align 1
  %151 = icmp eq i8 %148, %150
  br i1 %151, label %152, label %193

152:                                              ; preds = %147
  %153 = load i8, ptr %34, align 2
  %154 = getelementptr i8, ptr %63, i32 201
  %155 = load i8, ptr %154, align 1
  %156 = icmp eq i8 %153, %155
  br i1 %156, label %157, label %193

157:                                              ; preds = %152
  %158 = load i8, ptr %35, align 1
  %159 = getelementptr i8, ptr %63, i32 202
  %160 = load i8, ptr %159, align 1
  %161 = icmp eq i8 %158, %160
  br i1 %161, label %162, label %193

162:                                              ; preds = %157
  %163 = load i8, ptr %36, align 4
  %164 = getelementptr i8, ptr %63, i32 203
  %165 = load i8, ptr %164, align 1
  %166 = icmp eq i8 %163, %165
  br i1 %166, label %167, label %193

167:                                              ; preds = %162
  %168 = load i8, ptr %37, align 2
  %169 = getelementptr i8, ptr %63, i32 236
  %170 = load i8, ptr %169, align 1
  %171 = icmp eq i8 %168, %170
  br i1 %171, label %172, label %193

172:                                              ; preds = %167
  %173 = load i8, ptr %38, align 1
  %174 = getelementptr i8, ptr %63, i32 237
  %175 = load i8, ptr %174, align 1
  %176 = icmp eq i8 %173, %175
  br i1 %176, label %177, label %193

177:                                              ; preds = %172
  %178 = load i8, ptr %39, align 8
  %179 = getelementptr i8, ptr %63, i32 238
  %180 = load i8, ptr %179, align 1
  %181 = icmp eq i8 %178, %180
  br i1 %181, label %182, label %193

182:                                              ; preds = %177
  %183 = load i8, ptr %40, align 1
  %184 = getelementptr i8, ptr %63, i32 239
  %185 = load i8, ptr %184, align 1
  %186 = icmp eq i8 %183, %185
  br i1 %186, label %187, label %193

187:                                              ; preds = %182
  %188 = load i8, ptr %41, align 2
  %189 = getelementptr i8, ptr %63, i32 253
  %190 = load i8, ptr %189, align 1
  %191 = icmp eq i8 %188, %190
  %192 = select i1 %191, i32 0, i32 -22
  br label %193

193:                                              ; preds = %187, %182, %177, %172, %167, %162, %157, %152, %147, %142, %137, %132, %127, %122, %117, %112, %107, %102, %97, %92, %87, %82, %77, %72, %67, %61
  %194 = phi i32 [ -22, %182 ], [ -22, %177 ], [ -22, %172 ], [ -22, %167 ], [ -22, %162 ], [ -22, %157 ], [ -22, %152 ], [ -22, %147 ], [ -22, %142 ], [ -22, %137 ], [ -22, %132 ], [ -22, %127 ], [ -22, %122 ], [ -22, %117 ], [ -22, %112 ], [ -22, %107 ], [ -22, %102 ], [ -22, %97 ], [ -22, %92 ], [ -22, %87 ], [ -22, %82 ], [ -22, %77 ], [ -22, %72 ], [ -22, %67 ], [ -22, %61 ], [ %192, %187 ]
  call void @kfree(ptr noundef %63) #13
  br label %195

195:                                              ; preds = %193, %58
  %196 = phi i32 [ %194, %193 ], [ %59, %58 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  br label %200

197:                                              ; preds = %52
  %198 = trunc i32 %54 to i8
  %199 = call i32 @mmc_bus_test(ptr noundef %0, i8 noundef zeroext %198) #13
  br label %200

200:                                              ; preds = %197, %195
  %201 = phi i32 [ %199, %197 ], [ %196, %195 ]
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %215, label %203

203:                                              ; preds = %200
  %204 = load ptr, ptr %42, align 4
  %205 = icmp eq ptr %204, null
  br i1 %205, label %206, label %208

206:                                              ; preds = %203
  %207 = load ptr, ptr %43, align 4
  br label %208

208:                                              ; preds = %206, %203
  %209 = phi ptr [ %207, %206 ], [ %204, %203 ]
  %210 = shl nuw i32 1, %54
  %211 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %209, i32 noundef %210) #14
  br label %212

212:                                              ; preds = %208, %44
  %213 = phi i32 [ %50, %44 ], [ %201, %208 ]
  %214 = icmp eq i32 %45, 0
  br i1 %214, label %44, label %215

215:                                              ; preds = %212, %200, %6, %1
  %216 = phi i32 [ 0, %6 ], [ 0, %1 ], [ %54, %200 ], [ %213, %212 ]
  ret i32 %216
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mmc_select_hs_ddr(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 39
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 12
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %56, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.mmc_host, ptr %2, i32 0, i32 28, i32 6
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp eq i8 %9, 0
  br i1 %11, label %56, label %12

12:                                               ; preds = %7
  %13 = icmp eq i8 %9, 3
  %14 = select i1 %13, i8 6, i8 5
  %15 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 14
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 @__mmc_switch(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext -73, i8 noundef zeroext %14, i32 noundef %16, i8 noundef zeroext 8, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef 3) #13
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.mmc_host, ptr %2, i32 0, i32 1, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.mmc_host, ptr %2, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  br label %26

26:                                               ; preds = %23, %19
  %27 = phi ptr [ %25, %23 ], [ %21, %19 ]
  %28 = shl nuw i32 1, %10
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %27, i32 noundef %28) #14
  br label %56

30:                                               ; preds = %12
  %31 = load i32, ptr %3, align 4
  %32 = and i32 %31, 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = tail call i32 @mmc_set_signal_voltage(ptr noundef %2, i32 noundef 2) #13
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %56, label %37

37:                                               ; preds = %34
  %38 = load i32, ptr %3, align 4
  br label %39

39:                                               ; preds = %37, %30
  %40 = phi i32 [ %38, %37 ], [ %31, %30 ]
  %41 = phi i32 [ %35, %37 ], [ 0, %30 ]
  %42 = and i32 %40, 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.mmc_host, ptr %2, i32 0, i32 16
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 4096
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = tail call i32 @mmc_set_signal_voltage(ptr noundef %2, i32 noundef 1) #13
  br label %51

51:                                               ; preds = %49, %44, %39
  %52 = phi i32 [ %50, %49 ], [ %41, %44 ], [ %41, %39 ]
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = tail call i32 @mmc_set_signal_voltage(ptr noundef %2, i32 noundef 0) #13
  br label %56

56:                                               ; preds = %54, %51, %34, %26, %7, %1
  %57 = phi i32 [ %17, %26 ], [ 0, %1 ], [ 0, %7 ], [ 0, %34 ], [ %55, %54 ], [ 0, %51 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mmc_select_powerclass(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = tail call i32 @mmc_can_ext_csd(ptr noundef %0) #13
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %100, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mmc_host, ptr %2, i32 0, i32 28, i32 6
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = icmp eq i8 %7, 0
  br i1 %9, label %100, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 39
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 12
  %14 = icmp eq i32 %13, 0
  %15 = icmp eq i8 %7, 3
  %16 = select i1 %15, i32 6, i32 5
  %17 = select i1 %15, i32 2, i32 1
  %18 = select i1 %14, i32 %17, i32 %16
  %19 = load ptr, ptr %0, align 8
  %20 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 0, i32 28
  %21 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 0, i32 28, i32 1
  %22 = load i16, ptr %21, align 4
  %23 = zext i16 %22 to i32
  %24 = shl nuw i32 1, %23
  switch i32 %24, label %64 [
    i32 128, label %25
    i32 32768, label %43
    i32 65536, label %43
    i32 131072, label %43
    i32 262144, label %43
    i32 524288, label %43
    i32 1048576, label %43
    i32 2097152, label %43
    i32 4194304, label %43
    i32 8388608, label %43
  ]

25:                                               ; preds = %10
  %26 = load i32, ptr %20, align 4
  %27 = icmp ult i32 %26, 26000001
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 54
  %30 = load i8, ptr %29, align 2
  br label %74

31:                                               ; preds = %25
  %32 = icmp ult i32 %26, 52000001
  br i1 %32, label %33, label %38

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 53
  %35 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 68
  %36 = select i1 %14, ptr %34, ptr %35
  %37 = load i8, ptr %36, align 1
  br label %74

38:                                               ; preds = %31
  %39 = icmp ult i32 %26, 200000001
  br i1 %39, label %40, label %74

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 66
  %42 = load i8, ptr %41, align 2
  br label %74

43:                                               ; preds = %10, %10, %10, %10, %10, %10, %10, %10, %10
  %44 = load i32, ptr %20, align 4
  %45 = icmp ult i32 %44, 26000001
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 56
  %48 = load i8, ptr %47, align 4
  br label %74

49:                                               ; preds = %43
  %50 = icmp ult i32 %44, 52000001
  br i1 %50, label %51, label %56

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 55
  %53 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 69
  %54 = select i1 %14, ptr %52, ptr %53
  %55 = load i8, ptr %54, align 1
  br label %74

56:                                               ; preds = %49
  %57 = icmp ult i32 %44, 200000001
  br i1 %57, label %58, label %74

58:                                               ; preds = %56
  %59 = icmp eq i32 %18, 6
  %60 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 70
  %61 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 67
  %62 = select i1 %59, ptr %60, ptr %61
  %63 = load i8, ptr %62, align 1
  br label %74

64:                                               ; preds = %10
  %65 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 0, i32 1, i32 3
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  br label %71

71:                                               ; preds = %68, %64
  %72 = phi ptr [ %70, %68 ], [ %66, %64 ]
  %73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %72) #14
  br label %89

74:                                               ; preds = %58, %56, %51, %46, %40, %38, %33, %28
  %75 = phi i8 [ %48, %46 ], [ %55, %51 ], [ %63, %58 ], [ 0, %56 ], [ %30, %28 ], [ %37, %33 ], [ %42, %40 ], [ 0, %38 ]
  %76 = zext i8 %75 to i32
  %77 = and i32 %18, 6
  %78 = icmp eq i32 %77, 0
  %79 = lshr i32 %76, 4
  %80 = select i1 %78, i32 %76, i32 %79
  %81 = and i32 %80, 15
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %100, label %83

83:                                               ; preds = %74
  %84 = trunc i32 %81 to i8
  %85 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 14
  %86 = load i32, ptr %85, align 4
  %87 = tail call i32 @mmc_switch(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext -69, i8 noundef zeroext %84, i32 noundef %86) #13
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %100, label %89

89:                                               ; preds = %83, %71
  %90 = getelementptr inbounds %struct.mmc_host, ptr %2, i32 0, i32 1, i32 3
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.mmc_host, ptr %2, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  br label %96

96:                                               ; preds = %93, %89
  %97 = phi ptr [ %95, %93 ], [ %91, %89 ]
  %98 = shl nuw i32 1, %8
  %99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %97, i32 noundef %98, i32 noundef %13) #14
  br label %100

100:                                              ; preds = %96, %83, %74, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_cmdq_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_cid_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 524
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 528
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr i8, ptr %0, i32 532
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %0, i32 536
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.17, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11)
  ret i32 %12
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_csd_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 540
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 544
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr i8, ptr %0, i32 548
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %0, i32 552
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.17, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11)
  ret i32 %12
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_date_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 654
  %5 = load i8, ptr %4, align 2
  %6 = zext i8 %5 to i32
  %7 = getelementptr i8, ptr %0, i32 650
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.20, i32 noundef %6, i32 noundef %9)
  ret i32 %10
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_erase_size_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 500
  %5 = load i32, ptr %4, align 4
  %6 = shl i32 %5, 9
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.22, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_preferred_erase_size_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 508
  %5 = load i32, ptr %4, align 4
  %6 = shl i32 %5, 9
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.22, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_fwrev_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 704
  %5 = load i8, ptr %4, align 8
  %6 = icmp ult i8 %5, 7
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 653
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.25, i32 noundef %10)
  br label %15

12:                                               ; preds = %3
  %13 = getelementptr i8, ptr %0, i32 824
  %14 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.26, i32 noundef 8, ptr noundef %13)
  br label %15

15:                                               ; preds = %12, %7
  %16 = phi i32 [ %11, %7 ], [ %14, %12 ]
  ret i32 %16
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_ffu_capable_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 817
  %5 = load i8, ptr %4, align 1, !range !10
  %6 = zext i8 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.28, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_hwrev_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 652
  %5 = load i8, ptr %4, align 4
  %6 = zext i8 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.25, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_manfid_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 628
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.31, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_name_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 632
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.33, ptr noundef %4)
  ret i32 %5
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_oemid_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 648
  %5 = load i16, ptr %4, align 4
  %6 = zext i16 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.35, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_prv_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 640
  %5 = load i8, ptr %4, align 4
  %6 = zext i8 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.25, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_rev_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 704
  %5 = load i8, ptr %4, align 8
  %6 = zext i8 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.25, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_pre_eol_info_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 864
  %5 = load i8, ptr %4, align 8
  %6 = zext i8 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.39, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_life_time_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 865
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr i8, ptr %0, i32 866
  %8 = load i8, ptr %7, align 2
  %9 = zext i8 %8 to i32
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.41, i32 noundef %6, i32 noundef %9)
  ret i32 %10
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_serial_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 644
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.43, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_enhanced_area_offset_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 776
  %5 = load i64, ptr %4, align 8
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.45, i64 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_enhanced_area_size_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 784
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.22, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_raw_rpmb_size_mult_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 834
  %5 = load i8, ptr %4, align 2
  %6 = zext i8 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.48, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_enhanced_rpmb_supported_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 709
  %5 = load i8, ptr %4, align 1, !range !10
  %6 = zext i8 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.48, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_rel_sectors_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 707
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.48, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_ocr_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 472
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.43, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_rca_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 476
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.35, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_dsr_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
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
  %19 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.25, i32 noundef %18)
  ret i32 %19
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_cmdq_en_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 818
  %5 = load i8, ptr %4, align 2, !range !10
  %6 = zext i8 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.28, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_can_ext_csd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_get_ext_csd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_of_find_child_device(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @add_quirk(ptr nocapture noundef %0, i32 noundef %1) #10 {
  %3 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 6
  %4 = load i32, ptr %3, align 8
  %5 = or i32 %4, %1
  store i32 %5, ptr %3, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_init_erase(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_set_signal_voltage(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_select_drive_strength(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_set_driver_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_execute_tuning(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_set_bus_width(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_bus_test(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mmc_claim_host(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i8 0, i8 2}
