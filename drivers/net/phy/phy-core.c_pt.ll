; ModuleID = '/llk/IR/drivers/net/phy/phy-core.c_pt.bc'
source_filename = "../drivers/net/phy/phy-core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_speed_to_str:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_speed_to_str\22\09\09\09\09\09"
module asm "__kstrtabns_phy_speed_to_str:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_duplex_to_str:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_duplex_to_str\22\09\09\09\09\09"
module asm "__kstrtabns_phy_duplex_to_str:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_lookup_setting:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_lookup_setting\22\09\09\09\09\09"
module asm "__kstrtabns_phy_lookup_setting:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_set_max_speed:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_set_max_speed\22\09\09\09\09\09"
module asm "__kstrtabns_phy_set_max_speed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_resolve_aneg_pause:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_resolve_aneg_pause\22\09\09\09\09\09"
module asm "__kstrtabns_phy_resolve_aneg_pause:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_resolve_aneg_linkmode:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_resolve_aneg_linkmode\22\09\09\09\09\09"
module asm "__kstrtabns_phy_resolve_aneg_linkmode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_check_downshift:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_check_downshift\22\09\09\09\09\09"
module asm "__kstrtabns_phy_check_downshift:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___phy_read_mmd:\09\09\09\09\09"
module asm "\09.asciz \09\22__phy_read_mmd\22\09\09\09\09\09"
module asm "__kstrtabns___phy_read_mmd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_read_mmd:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_read_mmd\22\09\09\09\09\09"
module asm "__kstrtabns_phy_read_mmd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___phy_write_mmd:\09\09\09\09\09"
module asm "\09.asciz \09\22__phy_write_mmd\22\09\09\09\09\09"
module asm "__kstrtabns___phy_write_mmd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_write_mmd:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_write_mmd\22\09\09\09\09\09"
module asm "__kstrtabns_phy_write_mmd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_modify_changed:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_modify_changed\22\09\09\09\09\09"
module asm "__kstrtabns_phy_modify_changed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___phy_modify:\09\09\09\09\09"
module asm "\09.asciz \09\22__phy_modify\22\09\09\09\09\09"
module asm "__kstrtabns___phy_modify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_modify:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_modify\22\09\09\09\09\09"
module asm "__kstrtabns_phy_modify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___phy_modify_mmd_changed:\09\09\09\09\09"
module asm "\09.asciz \09\22__phy_modify_mmd_changed\22\09\09\09\09\09"
module asm "__kstrtabns___phy_modify_mmd_changed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_modify_mmd_changed:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_modify_mmd_changed\22\09\09\09\09\09"
module asm "__kstrtabns_phy_modify_mmd_changed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___phy_modify_mmd:\09\09\09\09\09"
module asm "\09.asciz \09\22__phy_modify_mmd\22\09\09\09\09\09"
module asm "__kstrtabns___phy_modify_mmd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_modify_mmd:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_modify_mmd\22\09\09\09\09\09"
module asm "__kstrtabns_phy_modify_mmd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_save_page:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_save_page\22\09\09\09\09\09"
module asm "__kstrtabns_phy_save_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_select_page:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_select_page\22\09\09\09\09\09"
module asm "__kstrtabns_phy_select_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_restore_page:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_restore_page\22\09\09\09\09\09"
module asm "__kstrtabns_phy_restore_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_read_paged:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_read_paged\22\09\09\09\09\09"
module asm "__kstrtabns_phy_read_paged:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_write_paged:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_write_paged\22\09\09\09\09\09"
module asm "__kstrtabns_phy_write_paged:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_modify_paged_changed:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_modify_paged_changed\22\09\09\09\09\09"
module asm "__kstrtabns_phy_modify_paged_changed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_modify_paged:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_modify_paged\22\09\09\09\09\09"
module asm "__kstrtabns_phy_modify_paged:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.phy_setting = type { i32, i8, i8 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.phy_driver = type { %struct.mdio_driver_common, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"10Mbps\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"100Mbps\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"1Gbps\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"2.5Gbps\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"5Gbps\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"10Gbps\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"14Gbps\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"20Gbps\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"25Gbps\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"40Gbps\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"50Gbps\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"56Gbps\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"100Gbps\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"200Gbps\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"400Gbps\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"Unsupported (update phy-core.c)\00", align 1
@__kstrtab_phy_speed_to_str = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_speed_to_str = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_speed_to_str = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_speed_to_str to i32), ptr @__kstrtab_phy_speed_to_str, ptr @__kstrtabns_phy_speed_to_str }, section "___ksymtab_gpl+phy_speed_to_str", align 4
@.str.17 = private unnamed_addr constant [5 x i8] c"Half\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@__kstrtab_phy_duplex_to_str = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_duplex_to_str = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_duplex_to_str = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_duplex_to_str to i32), ptr @__kstrtab_phy_duplex_to_str, ptr @__kstrtabns_phy_duplex_to_str }, section "___ksymtab_gpl+phy_duplex_to_str", align 4
@settings = internal constant [79 x %struct.phy_setting] [%struct.phy_setting { i32 400000, i8 1, i8 73 }, %struct.phy_setting { i32 400000, i8 1, i8 69 }, %struct.phy_setting { i32 400000, i8 1, i8 71 }, %struct.phy_setting { i32 400000, i8 1, i8 72 }, %struct.phy_setting { i32 400000, i8 1, i8 70 }, %struct.phy_setting { i32 400000, i8 1, i8 89 }, %struct.phy_setting { i32 400000, i8 1, i8 85 }, %struct.phy_setting { i32 400000, i8 1, i8 87 }, %struct.phy_setting { i32 400000, i8 1, i8 88 }, %struct.phy_setting { i32 400000, i8 1, i8 86 }, %struct.phy_setting { i32 200000, i8 1, i8 66 }, %struct.phy_setting { i32 200000, i8 1, i8 62 }, %struct.phy_setting { i32 200000, i8 1, i8 64 }, %struct.phy_setting { i32 200000, i8 1, i8 65 }, %struct.phy_setting { i32 200000, i8 1, i8 63 }, %struct.phy_setting { i32 200000, i8 1, i8 84 }, %struct.phy_setting { i32 200000, i8 1, i8 80 }, %struct.phy_setting { i32 200000, i8 1, i8 82 }, %struct.phy_setting { i32 200000, i8 1, i8 83 }, %struct.phy_setting { i32 200000, i8 1, i8 81 }, %struct.phy_setting { i32 100000, i8 1, i8 38 }, %struct.phy_setting { i32 100000, i8 1, i8 36 }, %struct.phy_setting { i32 100000, i8 1, i8 39 }, %struct.phy_setting { i32 100000, i8 1, i8 37 }, %struct.phy_setting { i32 100000, i8 1, i8 59 }, %struct.phy_setting { i32 100000, i8 1, i8 57 }, %struct.phy_setting { i32 100000, i8 1, i8 60 }, %struct.phy_setting { i32 100000, i8 1, i8 61 }, %struct.phy_setting { i32 100000, i8 1, i8 58 }, %struct.phy_setting { i32 100000, i8 1, i8 78 }, %struct.phy_setting { i32 100000, i8 1, i8 75 }, %struct.phy_setting { i32 100000, i8 1, i8 77 }, %struct.phy_setting { i32 100000, i8 1, i8 79 }, %struct.phy_setting { i32 100000, i8 1, i8 76 }, %struct.phy_setting { i32 56000, i8 1, i8 28 }, %struct.phy_setting { i32 56000, i8 1, i8 27 }, %struct.phy_setting { i32 56000, i8 1, i8 30 }, %struct.phy_setting { i32 56000, i8 1, i8 29 }, %struct.phy_setting { i32 50000, i8 1, i8 34 }, %struct.phy_setting { i32 50000, i8 1, i8 35 }, %struct.phy_setting { i32 50000, i8 1, i8 40 }, %struct.phy_setting { i32 50000, i8 1, i8 54 }, %struct.phy_setting { i32 50000, i8 1, i8 52 }, %struct.phy_setting { i32 50000, i8 1, i8 55 }, %struct.phy_setting { i32 50000, i8 1, i8 56 }, %struct.phy_setting { i32 50000, i8 1, i8 53 }, %struct.phy_setting { i32 40000, i8 1, i8 24 }, %struct.phy_setting { i32 40000, i8 1, i8 23 }, %struct.phy_setting { i32 40000, i8 1, i8 26 }, %struct.phy_setting { i32 40000, i8 1, i8 25 }, %struct.phy_setting { i32 25000, i8 1, i8 31 }, %struct.phy_setting { i32 25000, i8 1, i8 32 }, %struct.phy_setting { i32 25000, i8 1, i8 33 }, %struct.phy_setting { i32 20000, i8 1, i8 22 }, %struct.phy_setting { i32 20000, i8 1, i8 21 }, %struct.phy_setting { i32 10000, i8 1, i8 42 }, %struct.phy_setting { i32 10000, i8 1, i8 46 }, %struct.phy_setting { i32 10000, i8 1, i8 19 }, %struct.phy_setting { i32 10000, i8 1, i8 18 }, %struct.phy_setting { i32 10000, i8 1, i8 44 }, %struct.phy_setting { i32 10000, i8 1, i8 45 }, %struct.phy_setting { i32 10000, i8 1, i8 20 }, %struct.phy_setting { i32 10000, i8 1, i8 43 }, %struct.phy_setting { i32 10000, i8 1, i8 12 }, %struct.phy_setting { i32 5000, i8 1, i8 48 }, %struct.phy_setting { i32 2500, i8 1, i8 47 }, %struct.phy_setting { i32 2500, i8 1, i8 15 }, %struct.phy_setting { i32 1000, i8 1, i8 5 }, %struct.phy_setting { i32 1000, i8 0, i8 4 }, %struct.phy_setting { i32 1000, i8 1, i8 68 }, %struct.phy_setting { i32 1000, i8 1, i8 41 }, %struct.phy_setting { i32 1000, i8 1, i8 17 }, %struct.phy_setting { i32 100, i8 1, i8 3 }, %struct.phy_setting { i32 100, i8 1, i8 67 }, %struct.phy_setting { i32 100, i8 0, i8 2 }, %struct.phy_setting { i32 100, i8 0, i8 90 }, %struct.phy_setting { i32 100, i8 1, i8 91 }, %struct.phy_setting { i32 10, i8 1, i8 1 }, %struct.phy_setting { i32 10, i8 0, i8 0 }], align 4
@__kstrtab_phy_lookup_setting = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_lookup_setting = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_lookup_setting = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_lookup_setting to i32), ptr @__kstrtab_phy_lookup_setting, ptr @__kstrtabns_phy_lookup_setting }, section "___ksymtab_gpl+phy_lookup_setting", align 4
@__kstrtab_phy_set_max_speed = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_set_max_speed = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_set_max_speed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_set_max_speed to i32), ptr @__kstrtab_phy_set_max_speed, ptr @__kstrtabns_phy_set_max_speed }, section "___ksymtab+phy_set_max_speed", align 4
@.str.19 = private unnamed_addr constant [10 x i8] c"max-speed\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"eee-broken-100tx\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"eee-broken-1000t\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"eee-broken-10gt\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"eee-broken-1000kx\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"eee-broken-10gkx4\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"eee-broken-10gkr\00", align 1
@__kstrtab_phy_resolve_aneg_pause = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_resolve_aneg_pause = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_resolve_aneg_pause = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_resolve_aneg_pause to i32), ptr @__kstrtab_phy_resolve_aneg_pause, ptr @__kstrtabns_phy_resolve_aneg_pause }, section "___ksymtab_gpl+phy_resolve_aneg_pause", align 4
@__kstrtab_phy_resolve_aneg_linkmode = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_resolve_aneg_linkmode = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_resolve_aneg_linkmode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_resolve_aneg_linkmode to i32), ptr @__kstrtab_phy_resolve_aneg_linkmode, ptr @__kstrtabns_phy_resolve_aneg_linkmode }, section "___ksymtab_gpl+phy_resolve_aneg_linkmode", align 4
@.str.26 = private unnamed_addr constant [80 x i8] c"Downshift occurred from negotiated speed %s to actual speed %s, check cabling!\0A\00", align 1
@__kstrtab_phy_check_downshift = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_check_downshift = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_check_downshift = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_check_downshift to i32), ptr @__kstrtab_phy_check_downshift, ptr @__kstrtabns_phy_check_downshift }, section "___ksymtab_gpl+phy_check_downshift", align 4
@__kstrtab___phy_read_mmd = external dso_local constant [0 x i8], align 1
@__kstrtabns___phy_read_mmd = external dso_local constant [0 x i8], align 1
@__ksymtab___phy_read_mmd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__phy_read_mmd to i32), ptr @__kstrtab___phy_read_mmd, ptr @__kstrtabns___phy_read_mmd }, section "___ksymtab+__phy_read_mmd", align 4
@__kstrtab_phy_read_mmd = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_read_mmd = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_read_mmd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_read_mmd to i32), ptr @__kstrtab_phy_read_mmd, ptr @__kstrtabns_phy_read_mmd }, section "___ksymtab+phy_read_mmd", align 4
@__kstrtab___phy_write_mmd = external dso_local constant [0 x i8], align 1
@__kstrtabns___phy_write_mmd = external dso_local constant [0 x i8], align 1
@__ksymtab___phy_write_mmd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__phy_write_mmd to i32), ptr @__kstrtab___phy_write_mmd, ptr @__kstrtabns___phy_write_mmd }, section "___ksymtab+__phy_write_mmd", align 4
@__kstrtab_phy_write_mmd = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_write_mmd = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_write_mmd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_write_mmd to i32), ptr @__kstrtab_phy_write_mmd, ptr @__kstrtabns_phy_write_mmd }, section "___ksymtab+phy_write_mmd", align 4
@__kstrtab_phy_modify_changed = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_modify_changed = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_modify_changed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_modify_changed to i32), ptr @__kstrtab_phy_modify_changed, ptr @__kstrtabns_phy_modify_changed }, section "___ksymtab_gpl+phy_modify_changed", align 4
@__kstrtab___phy_modify = external dso_local constant [0 x i8], align 1
@__kstrtabns___phy_modify = external dso_local constant [0 x i8], align 1
@__ksymtab___phy_modify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__phy_modify to i32), ptr @__kstrtab___phy_modify, ptr @__kstrtabns___phy_modify }, section "___ksymtab_gpl+__phy_modify", align 4
@__kstrtab_phy_modify = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_modify = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_modify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_modify to i32), ptr @__kstrtab_phy_modify, ptr @__kstrtabns_phy_modify }, section "___ksymtab_gpl+phy_modify", align 4
@__kstrtab___phy_modify_mmd_changed = external dso_local constant [0 x i8], align 1
@__kstrtabns___phy_modify_mmd_changed = external dso_local constant [0 x i8], align 1
@__ksymtab___phy_modify_mmd_changed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__phy_modify_mmd_changed to i32), ptr @__kstrtab___phy_modify_mmd_changed, ptr @__kstrtabns___phy_modify_mmd_changed }, section "___ksymtab_gpl+__phy_modify_mmd_changed", align 4
@__kstrtab_phy_modify_mmd_changed = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_modify_mmd_changed = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_modify_mmd_changed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_modify_mmd_changed to i32), ptr @__kstrtab_phy_modify_mmd_changed, ptr @__kstrtabns_phy_modify_mmd_changed }, section "___ksymtab_gpl+phy_modify_mmd_changed", align 4
@__kstrtab___phy_modify_mmd = external dso_local constant [0 x i8], align 1
@__kstrtabns___phy_modify_mmd = external dso_local constant [0 x i8], align 1
@__ksymtab___phy_modify_mmd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__phy_modify_mmd to i32), ptr @__kstrtab___phy_modify_mmd, ptr @__kstrtabns___phy_modify_mmd }, section "___ksymtab_gpl+__phy_modify_mmd", align 4
@__kstrtab_phy_modify_mmd = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_modify_mmd = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_modify_mmd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_modify_mmd to i32), ptr @__kstrtab_phy_modify_mmd, ptr @__kstrtabns_phy_modify_mmd }, section "___ksymtab_gpl+phy_modify_mmd", align 4
@__kstrtab_phy_save_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_save_page = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_save_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_save_page to i32), ptr @__kstrtab_phy_save_page, ptr @__kstrtabns_phy_save_page }, section "___ksymtab_gpl+phy_save_page", align 4
@__kstrtab_phy_select_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_select_page = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_select_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_select_page to i32), ptr @__kstrtab_phy_select_page, ptr @__kstrtabns_phy_select_page }, section "___ksymtab_gpl+phy_select_page", align 4
@__kstrtab_phy_restore_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_restore_page = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_restore_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_restore_page to i32), ptr @__kstrtab_phy_restore_page, ptr @__kstrtabns_phy_restore_page }, section "___ksymtab_gpl+phy_restore_page", align 4
@__kstrtab_phy_read_paged = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_read_paged = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_read_paged = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_read_paged to i32), ptr @__kstrtab_phy_read_paged, ptr @__kstrtabns_phy_read_paged }, section "___ksymtab+phy_read_paged", align 4
@__kstrtab_phy_write_paged = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_write_paged = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_write_paged = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_write_paged to i32), ptr @__kstrtab_phy_write_paged, ptr @__kstrtabns_phy_write_paged }, section "___ksymtab+phy_write_paged", align 4
@__kstrtab_phy_modify_paged_changed = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_modify_paged_changed = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_modify_paged_changed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_modify_paged_changed to i32), ptr @__kstrtab_phy_modify_paged_changed, ptr @__kstrtabns_phy_modify_paged_changed }, section "___ksymtab+phy_modify_paged_changed", align 4
@__kstrtab_phy_modify_paged = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_modify_paged = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_modify_paged = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_modify_paged to i32), ptr @__kstrtab_phy_modify_paged, ptr @__kstrtabns_phy_modify_paged }, section "___ksymtab+phy_modify_paged", align 4
@__phy_read_page.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"drivers/net/phy/phy-core.c\00", align 1
@.str.28 = private unnamed_addr constant [58 x i8] c"read_page callback not available, PHY driver not loaded?\0A\00", align 1
@__phy_write_page.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.29 = private unnamed_addr constant [59 x i8] c"write_page callback not available, PHY driver not loaded?\0A\00", align 1
@llvm.compiler.used = appending global [25 x ptr] [ptr @__ksymtab___phy_modify, ptr @__ksymtab___phy_modify_mmd, ptr @__ksymtab___phy_modify_mmd_changed, ptr @__ksymtab___phy_read_mmd, ptr @__ksymtab___phy_write_mmd, ptr @__ksymtab_phy_check_downshift, ptr @__ksymtab_phy_duplex_to_str, ptr @__ksymtab_phy_lookup_setting, ptr @__ksymtab_phy_modify, ptr @__ksymtab_phy_modify_changed, ptr @__ksymtab_phy_modify_mmd, ptr @__ksymtab_phy_modify_mmd_changed, ptr @__ksymtab_phy_modify_paged, ptr @__ksymtab_phy_modify_paged_changed, ptr @__ksymtab_phy_read_mmd, ptr @__ksymtab_phy_read_paged, ptr @__ksymtab_phy_resolve_aneg_linkmode, ptr @__ksymtab_phy_resolve_aneg_pause, ptr @__ksymtab_phy_restore_page, ptr @__ksymtab_phy_save_page, ptr @__ksymtab_phy_select_page, ptr @__ksymtab_phy_set_max_speed, ptr @__ksymtab_phy_speed_to_str, ptr @__ksymtab_phy_write_mmd, ptr @__ksymtab_phy_write_paged], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @phy_speed_to_str(i32 noundef %0) #0 {
  switch i32 %0, label %17 [
    i32 10, label %18
    i32 100, label %2
    i32 1000, label %3
    i32 2500, label %4
    i32 5000, label %5
    i32 10000, label %6
    i32 14000, label %7
    i32 20000, label %8
    i32 25000, label %9
    i32 40000, label %10
    i32 50000, label %11
    i32 56000, label %12
    i32 100000, label %13
    i32 200000, label %14
    i32 400000, label %15
    i32 -1, label %16
  ]

2:                                                ; preds = %1
  br label %18

3:                                                ; preds = %1
  br label %18

4:                                                ; preds = %1
  br label %18

5:                                                ; preds = %1
  br label %18

6:                                                ; preds = %1
  br label %18

7:                                                ; preds = %1
  br label %18

8:                                                ; preds = %1
  br label %18

9:                                                ; preds = %1
  br label %18

10:                                               ; preds = %1
  br label %18

11:                                               ; preds = %1
  br label %18

12:                                               ; preds = %1
  br label %18

13:                                               ; preds = %1
  br label %18

14:                                               ; preds = %1
  br label %18

15:                                               ; preds = %1
  br label %18

16:                                               ; preds = %1
  br label %18

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3, %2, %1
  %19 = phi ptr [ @.str.16, %17 ], [ @.str.15, %16 ], [ @.str.14, %15 ], [ @.str.13, %14 ], [ @.str.12, %13 ], [ @.str.11, %12 ], [ @.str.10, %11 ], [ @.str.9, %10 ], [ @.str.8, %9 ], [ @.str.7, %8 ], [ @.str.6, %7 ], [ @.str.5, %6 ], [ @.str.4, %5 ], [ @.str.3, %4 ], [ @.str.2, %3 ], [ @.str.1, %2 ], [ @.str, %1 ]
  ret ptr %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @phy_duplex_to_str(i32 noundef %0) #0 {
  switch i32 %0, label %4 [
    i32 0, label %5
    i32 1, label %2
    i32 255, label %3
  ]

2:                                                ; preds = %1
  br label %5

3:                                                ; preds = %1
  br label %5

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %4, %3, %2, %1
  %6 = phi ptr [ @.str.18, %2 ], [ @.str.15, %3 ], [ @.str.16, %4 ], [ @.str.17, %1 ]
  ret ptr %6
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @phy_lookup_setting(i32 noundef %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) #1 {
  br label %5

5:                                                ; preds = %37, %4
  %6 = phi i32 [ 0, %4 ], [ %40, %37 ]
  %7 = phi ptr [ null, %4 ], [ %39, %37 ]
  %8 = phi ptr [ null, %4 ], [ %38, %37 ]
  %9 = phi ptr [ @settings, %4 ], [ %41, %37 ]
  %10 = getelementptr inbounds %struct.phy_setting, ptr %9, i32 0, i32 2
  %11 = load i8, ptr %10, align 1
  %12 = icmp ult i8 %11, 92
  br i1 %12, label %13, label %37

13:                                               ; preds = %5
  %14 = zext i8 %11 to i32
  %15 = lshr i32 %14, 5
  %16 = getelementptr i32, ptr %2, i32 %15
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %14, 31
  %19 = shl nuw i32 1, %18
  %20 = and i32 %17, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %13
  %23 = load i32, ptr %9, align 4
  %24 = icmp eq i32 %23, %0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.phy_setting, ptr %9, i32 0, i32 1
  %27 = load i8, ptr %26, align 4
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %28, %1
  br i1 %29, label %43, label %30

30:                                               ; preds = %25, %22
  br i1 %3, label %37, label %31

31:                                               ; preds = %30
  %32 = icmp eq ptr %8, null
  %33 = icmp ugt i32 %23, %0
  %34 = select i1 %33, ptr null, ptr %9
  %35 = select i1 %32, ptr %34, ptr %8
  %36 = icmp ult i32 %23, %0
  br i1 %36, label %43, label %37

37:                                               ; preds = %31, %30, %13, %5
  %38 = phi ptr [ %8, %30 ], [ %35, %31 ], [ %8, %13 ], [ %8, %5 ]
  %39 = phi ptr [ %9, %30 ], [ %9, %31 ], [ %7, %13 ], [ %7, %5 ]
  %40 = add nuw nsw i32 %6, 1
  %41 = getelementptr %struct.phy_setting, ptr %9, i32 1
  %42 = icmp eq i32 %40, 79
  br i1 %42, label %43, label %5

43:                                               ; preds = %37, %31, %25
  %44 = phi ptr [ %35, %31 ], [ %38, %37 ], [ %9, %25 ]
  %45 = phi ptr [ %9, %31 ], [ %39, %37 ], [ %9, %25 ]
  %46 = icmp eq ptr %44, null
  %47 = select i1 %3, ptr null, ptr %45
  %48 = select i1 %46, ptr %47, ptr %44
  ret ptr %48
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_speeds(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #3 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %39, label %5

5:                                                ; preds = %33, %3
  %6 = phi i32 [ %35, %33 ], [ 0, %3 ]
  %7 = phi i32 [ %34, %33 ], [ 0, %3 ]
  %8 = getelementptr [79 x %struct.phy_setting], ptr @settings, i32 0, i32 %6
  %9 = getelementptr [79 x %struct.phy_setting], ptr @settings, i32 0, i32 %6, i32 2
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = lshr i32 %11, 5
  %13 = getelementptr i32, ptr %2, i32 %12
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %11, 31
  %16 = shl nuw i32 1, %15
  %17 = and i32 %16, %14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %33, label %19

19:                                               ; preds = %5
  %20 = icmp eq i32 %7, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %19
  %22 = load i32, ptr %8, align 4
  br label %29

23:                                               ; preds = %19
  %24 = add i32 %7, -1
  %25 = getelementptr i32, ptr %0, i32 %24
  %26 = load i32, ptr %25, align 4
  %27 = load i32, ptr %8, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %23, %21
  %30 = phi i32 [ %22, %21 ], [ %27, %23 ]
  %31 = add i32 %7, 1
  %32 = getelementptr i32, ptr %0, i32 %7
  store i32 %30, ptr %32, align 4
  br label %33

33:                                               ; preds = %29, %23, %5
  %34 = phi i32 [ %31, %29 ], [ %7, %23 ], [ %7, %5 ]
  %35 = add nuw nsw i32 %6, 1
  %36 = icmp ult i32 %6, 78
  %37 = icmp ult i32 %34, %1
  %38 = select i1 %36, i1 %37, i1 false
  br i1 %38, label %5, label %39

39:                                               ; preds = %33, %3
  %40 = phi i32 [ 0, %3 ], [ %34, %33 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_set_max_speed(ptr noundef %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 16
  br label %4

4:                                                ; preds = %9, %2
  %5 = phi i32 [ 0, %2 ], [ %20, %9 ]
  %6 = phi ptr [ @settings, %2 ], [ %21, %9 ]
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %9, label %23

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.phy_setting, ptr %6, i32 0, i32 2
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = and i32 %12, 31
  %14 = shl nuw i32 1, %13
  %15 = lshr i32 %12, 5
  %16 = getelementptr i32, ptr %3, i32 %15
  %17 = xor i32 %14, -1
  %18 = load i32, ptr %16, align 4
  %19 = and i32 %18, %17
  store i32 %19, ptr %16, align 4
  %20 = add nuw nsw i32 %5, 1
  %21 = getelementptr %struct.phy_setting, ptr %6, i32 1
  %22 = icmp eq i32 %20, 79
  br i1 %22, label %23, label %4

23:                                               ; preds = %9, %4
  tail call void @phy_advertise_supported(ptr noundef %0) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_advertise_supported(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @of_set_phy_supported(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !annotation !8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %31, label %6

6:                                                ; preds = %1
  %7 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %4, ptr noundef nonnull @.str.19, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #10
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %9, label %31

9:                                                ; preds = %6
  %10 = load i32, ptr %2, align 4
  %11 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 16
  br label %12

12:                                               ; preds = %17, %9
  %13 = phi i32 [ 0, %9 ], [ %28, %17 ]
  %14 = phi ptr [ @settings, %9 ], [ %29, %17 ]
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, %10
  br i1 %16, label %17, label %31

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.phy_setting, ptr %14, i32 0, i32 2
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = and i32 %20, 31
  %22 = shl nuw i32 1, %21
  %23 = lshr i32 %20, 5
  %24 = getelementptr i32, ptr %11, i32 %23
  %25 = xor i32 %22, -1
  %26 = load i32, ptr %24, align 4
  %27 = and i32 %26, %25
  store i32 %27, ptr %24, align 4
  %28 = add nuw nsw i32 %13, 1
  %29 = getelementptr %struct.phy_setting, ptr %14, i32 1
  %30 = icmp eq i32 %28, 79
  br i1 %30, label %31, label %12

31:                                               ; preds = %17, %12, %6, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @of_set_phy_eee_broken(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %30, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @of_find_property(ptr noundef nonnull %3, ptr noundef nonnull @.str.20, ptr noundef null) #10
  %7 = icmp eq ptr %6, null
  %8 = select i1 %7, i32 0, i32 2
  %9 = tail call ptr @of_find_property(ptr noundef nonnull %3, ptr noundef nonnull @.str.21, ptr noundef null) #10
  %10 = icmp eq ptr %9, null
  %11 = or i32 %8, 4
  %12 = select i1 %10, i32 %8, i32 %11
  %13 = tail call ptr @of_find_property(ptr noundef nonnull %3, ptr noundef nonnull @.str.22, ptr noundef null) #10
  %14 = icmp eq ptr %13, null
  %15 = or i32 %12, 8
  %16 = select i1 %14, i32 %12, i32 %15
  %17 = tail call ptr @of_find_property(ptr noundef nonnull %3, ptr noundef nonnull @.str.23, ptr noundef null) #10
  %18 = icmp eq ptr %17, null
  %19 = or i32 %16, 16
  %20 = select i1 %18, i32 %16, i32 %19
  %21 = tail call ptr @of_find_property(ptr noundef nonnull %3, ptr noundef nonnull @.str.24, ptr noundef null) #10
  %22 = icmp eq ptr %21, null
  %23 = or i32 %20, 32
  %24 = select i1 %22, i32 %20, i32 %23
  %25 = tail call ptr @of_find_property(ptr noundef nonnull %3, ptr noundef nonnull @.str.25, ptr noundef null) #10
  %26 = icmp eq ptr %25, null
  %27 = or i32 %24, 64
  %28 = select i1 %26, i32 %24, i32 %27
  %29 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 20
  store i32 %28, ptr %29, align 8
  br label %30

30:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @phy_resolve_aneg_pause(ptr noundef %0) #6 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 9
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 18
  %7 = load volatile i32, ptr %6, align 4
  %8 = lshr i32 %7, 13
  %9 = and i32 %8, 1
  %10 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 11
  store i32 %9, ptr %10, align 4
  %11 = load volatile i32, ptr %6, align 4
  %12 = lshr i32 %11, 14
  %13 = and i32 %12, 1
  %14 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 12
  store i32 %13, ptr %14, align 8
  br label %15

15:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @phy_resolve_aneg_linkmode(ptr noundef %0) #4 {
  %2 = alloca [3 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false), !annotation !8
  %3 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 18
  %4 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 17
  %5 = call i32 @__bitmap_and(ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, i32 noundef 92) #10
  br label %6

6:                                                ; preds = %26, %1
  %7 = phi i32 [ 0, %1 ], [ %27, %26 ]
  %8 = getelementptr [79 x %struct.phy_setting], ptr @settings, i32 0, i32 %7, i32 2
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = lshr i32 %10, 5
  %12 = getelementptr i32, ptr %2, i32 %11
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %10, 31
  %15 = shl nuw i32 1, %14
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %6
  %19 = getelementptr [79 x %struct.phy_setting], ptr @settings, i32 0, i32 %7
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 8
  store i32 %20, ptr %21, align 8
  %22 = getelementptr [79 x %struct.phy_setting], ptr @settings, i32 0, i32 %7, i32 1
  %23 = load i8, ptr %22, align 4
  %24 = zext i8 %23 to i32
  %25 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 9
  store i32 %24, ptr %25, align 4
  br label %32

26:                                               ; preds = %6
  %27 = add nuw nsw i32 %7, 1
  %28 = icmp eq i32 %27, 79
  br i1 %28, label %29, label %6

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 9
  %31 = load i32, ptr %30, align 4
  br label %32

32:                                               ; preds = %29, %18
  %33 = phi i32 [ %31, %29 ], [ %24, %18 ]
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load volatile i32, ptr %3, align 4
  %37 = lshr i32 %36, 13
  %38 = and i32 %37, 1
  %39 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 11
  store i32 %38, ptr %39, align 4
  %40 = load volatile i32, ptr %3, align 4
  %41 = lshr i32 %40, 14
  %42 = and i32 %41, 1
  %43 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 12
  store i32 %42, ptr %43, align 8
  br label %44

44:                                               ; preds = %35, %32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #10
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @phy_check_downshift(ptr noundef %0) #4 {
  %2 = alloca [3 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false), !annotation !8
  %3 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, -513
  store i16 %5, ptr %3, align 8
  %6 = and i16 %4, 4096
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %43, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 8
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %43, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 18
  %14 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 17
  %15 = call i32 @__bitmap_and(ptr noundef nonnull %2, ptr noundef %13, ptr noundef %14, i32 noundef 92) #10
  br label %16

16:                                               ; preds = %28, %12
  %17 = phi i32 [ 0, %12 ], [ %29, %28 ]
  %18 = getelementptr [79 x %struct.phy_setting], ptr @settings, i32 0, i32 %17, i32 2
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = lshr i32 %20, 5
  %22 = getelementptr i32, ptr %2, i32 %21
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %20, 31
  %25 = shl nuw i32 1, %24
  %26 = and i32 %25, %23
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %16
  %29 = add nuw nsw i32 %17, 1
  %30 = icmp eq i32 %29, 79
  br i1 %30, label %43, label %16

31:                                               ; preds = %16
  %32 = getelementptr [79 x %struct.phy_setting], ptr @settings, i32 0, i32 %17
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %43, label %35

35:                                               ; preds = %31
  %36 = load i32, ptr %9, align 8
  %37 = icmp slt i32 %36, %33
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = call ptr @phy_speed_to_str(i32 noundef %33)
  %40 = call ptr @phy_speed_to_str(i32 noundef %36)
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull %39, ptr noundef nonnull %40) #11
  %41 = load i16, ptr %3, align 8
  %42 = or i16 %41, 512
  store i16 %42, ptr %3, align 8
  br label %43

43:                                               ; preds = %38, %35, %31, %28, %8, %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_speed_down_core(ptr noundef %0) local_unnamed_addr #4 {
  %2 = alloca [3 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false) #10, !annotation !8
  %3 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 18
  %4 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 17
  %5 = call i32 @__bitmap_and(ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, i32 noundef 92) #10
  br label %6

6:                                                ; preds = %22, %1
  %7 = phi i32 [ 78, %1 ], [ %23, %22 ]
  %8 = getelementptr [79 x %struct.phy_setting], ptr @settings, i32 0, i32 %7, i32 2
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = lshr i32 %10, 5
  %12 = getelementptr i32, ptr %2, i32 %11
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %10, 31
  %15 = shl nuw i32 1, %14
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %6
  %19 = getelementptr [79 x %struct.phy_setting], ptr @settings, i32 0, i32 %7, i32 1
  %20 = load i8, ptr %19, align 4
  %21 = icmp eq i8 %20, 1
  br i1 %21, label %26, label %22

22:                                               ; preds = %18, %6
  %23 = add nsw i32 %7, -1
  %24 = icmp eq i32 %7, 0
  br i1 %24, label %25, label %6

25:                                               ; preds = %22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #10
  br label %49

26:                                               ; preds = %18
  %27 = getelementptr [79 x %struct.phy_setting], ptr @settings, i32 0, i32 %7
  %28 = load i32, ptr %27, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #10
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %49, label %30

30:                                               ; preds = %35, %26
  %31 = phi i32 [ %46, %35 ], [ 0, %26 ]
  %32 = phi ptr [ %47, %35 ], [ @settings, %26 ]
  %33 = load i32, ptr %32, align 4
  %34 = icmp ugt i32 %33, %28
  br i1 %34, label %35, label %49

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.phy_setting, ptr %32, i32 0, i32 2
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = and i32 %38, 31
  %40 = shl nuw i32 1, %39
  %41 = lshr i32 %38, 5
  %42 = getelementptr i32, ptr %4, i32 %41
  %43 = xor i32 %40, -1
  %44 = load i32, ptr %42, align 4
  %45 = and i32 %44, %43
  store i32 %45, ptr %42, align 4
  %46 = add nuw nsw i32 %31, 1
  %47 = getelementptr %struct.phy_setting, ptr %32, i32 1
  %48 = icmp eq i32 %46, 79
  br i1 %48, label %49, label %30

49:                                               ; preds = %35, %30, %26, %25
  %50 = phi i32 [ -22, %26 ], [ -22, %25 ], [ 0, %30 ], [ 0, %35 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__phy_read_mmd(ptr noundef %0, i32 noundef %1, i32 noundef %2) #4 {
  %4 = icmp ugt i32 %2, 65535
  %5 = icmp sgt i32 %1, 32
  %6 = or i1 %5, %4
  br i1 %6, label %40, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.phy_driver, ptr %9, i32 0, i32 23
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = trunc i32 %2 to i16
  %17 = tail call i32 %13(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %16) #10
  br label %40

18:                                               ; preds = %11, %7
  %19 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %20 = load i16, ptr %19, align 8
  %21 = and i16 %20, 1
  %22 = icmp eq i16 %21, 0
  %23 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %26 = load i32, ptr %25, align 8
  br i1 %22, label %32, label %27

27:                                               ; preds = %18
  %28 = shl i32 %1, 16
  %29 = or i32 %28, %2
  %30 = or i32 %29, 1073741824
  %31 = tail call i32 @__mdiobus_read(ptr noundef %24, i32 noundef %26, i32 noundef %30) #10
  br label %40

32:                                               ; preds = %18
  %33 = trunc i32 %2 to i16
  %34 = trunc i32 %1 to i16
  %35 = tail call i32 @__mdiobus_write(ptr noundef %24, i32 noundef %26, i32 noundef 13, i16 noundef zeroext %34) #10
  %36 = tail call i32 @__mdiobus_write(ptr noundef %24, i32 noundef %26, i32 noundef 14, i16 noundef zeroext %33) #10
  %37 = or i16 %34, 16384
  %38 = tail call i32 @__mdiobus_write(ptr noundef %24, i32 noundef %26, i32 noundef 13, i16 noundef zeroext %37) #10
  %39 = tail call i32 @__mdiobus_read(ptr noundef %24, i32 noundef %26, i32 noundef 14) #10
  br label %40

40:                                               ; preds = %32, %27, %15, %3
  %41 = phi i32 [ -22, %3 ], [ %17, %15 ], [ %31, %27 ], [ %39, %32 ]
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_read_mmd(ptr noundef %0, i32 noundef %1, i32 noundef %2) #4 {
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mii_bus, ptr %5, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %6) #10
  %7 = tail call i32 @__phy_read_mmd(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  %8 = load ptr, ptr %4, align 8
  %9 = getelementptr inbounds %struct.mii_bus, ptr %8, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %9) #10
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__phy_write_mmd(ptr noundef %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3) #4 {
  %5 = icmp ugt i32 %2, 65535
  %6 = icmp sgt i32 %1, 32
  %7 = or i1 %6, %5
  br i1 %7, label %41, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.phy_driver, ptr %10, i32 0, i32 24
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = trunc i32 %2 to i16
  %18 = tail call i32 %14(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %17, i16 noundef zeroext %3) #10
  br label %41

19:                                               ; preds = %12, %8
  %20 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %21 = load i16, ptr %20, align 8
  %22 = and i16 %21, 1
  %23 = icmp eq i16 %22, 0
  %24 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %27 = load i32, ptr %26, align 8
  br i1 %23, label %33, label %28

28:                                               ; preds = %19
  %29 = shl i32 %1, 16
  %30 = or i32 %29, %2
  %31 = or i32 %30, 1073741824
  %32 = tail call i32 @__mdiobus_write(ptr noundef %25, i32 noundef %27, i32 noundef %31, i16 noundef zeroext %3) #10
  br label %41

33:                                               ; preds = %19
  %34 = trunc i32 %2 to i16
  %35 = trunc i32 %1 to i16
  %36 = tail call i32 @__mdiobus_write(ptr noundef %25, i32 noundef %27, i32 noundef 13, i16 noundef zeroext %35) #10
  %37 = tail call i32 @__mdiobus_write(ptr noundef %25, i32 noundef %27, i32 noundef 14, i16 noundef zeroext %34) #10
  %38 = or i16 %35, 16384
  %39 = tail call i32 @__mdiobus_write(ptr noundef %25, i32 noundef %27, i32 noundef 13, i16 noundef zeroext %38) #10
  %40 = tail call i32 @__mdiobus_write(ptr noundef %25, i32 noundef %27, i32 noundef 14, i16 noundef zeroext %3) #10
  br label %41

41:                                               ; preds = %33, %28, %16, %4
  %42 = phi i32 [ -22, %4 ], [ %18, %16 ], [ %32, %28 ], [ 0, %33 ]
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_write_mmd(ptr noundef %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3) #4 {
  %5 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.mii_bus, ptr %6, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %7) #10
  %8 = tail call i32 @__phy_write_mmd(ptr noundef %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3)
  %9 = load ptr, ptr %5, align 8
  %10 = getelementptr inbounds %struct.mii_bus, ptr %9, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %10) #10
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_modify_changed(ptr nocapture noundef readonly %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #4 {
  %5 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.mii_bus, ptr %6, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %7) #10
  %8 = load ptr, ptr %5, align 8
  %9 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %10 = load i32, ptr %9, align 8
  %11 = tail call i32 @__mdiobus_modify_changed(ptr noundef %8, i32 noundef %10, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #10
  %12 = load ptr, ptr %5, align 8
  %13 = getelementptr inbounds %struct.mii_bus, ptr %12, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %13) #10
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__phy_modify(ptr nocapture noundef readonly %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #4 {
  %5 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 8
  %9 = tail call i32 @__mdiobus_modify_changed(ptr noundef %6, i32 noundef %8, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #10
  %10 = tail call i32 @llvm.smin.i32(i32 %9, i32 0)
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_modify(ptr nocapture noundef readonly %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #4 {
  %5 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.mii_bus, ptr %6, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %7) #10
  %8 = load ptr, ptr %5, align 8
  %9 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %10 = load i32, ptr %9, align 8
  %11 = tail call i32 @__mdiobus_modify_changed(ptr noundef %8, i32 noundef %10, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #10
  %12 = tail call i32 @llvm.smin.i32(i32 %11, i32 0) #10
  %13 = load ptr, ptr %5, align 8
  %14 = getelementptr inbounds %struct.mii_bus, ptr %13, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %14) #10
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__phy_modify_mmd_changed(ptr noundef %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3, i16 noundef zeroext %4) #4 {
  %6 = tail call i32 @__phy_read_mmd(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %5
  %9 = zext i16 %3 to i32
  %10 = xor i32 %9, -1
  %11 = and i32 %6, %10
  %12 = zext i16 %4 to i32
  %13 = or i32 %11, %12
  %14 = icmp eq i32 %13, %6
  br i1 %14, label %20, label %15

15:                                               ; preds = %8
  %16 = trunc i32 %13 to i16
  %17 = tail call i32 @__phy_write_mmd(ptr noundef %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %16)
  %18 = icmp slt i32 %17, 0
  %19 = select i1 %18, i32 %17, i32 1
  br label %20

20:                                               ; preds = %15, %8, %5
  %21 = phi i32 [ %19, %15 ], [ %6, %5 ], [ 0, %8 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_modify_mmd_changed(ptr noundef %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3, i16 noundef zeroext %4) #4 {
  %6 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.mii_bus, ptr %7, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %8) #10
  %9 = tail call i32 @__phy_read_mmd(ptr noundef %0, i32 noundef %1, i32 noundef %2) #10
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %5
  %12 = zext i16 %3 to i32
  %13 = xor i32 %12, -1
  %14 = and i32 %9, %13
  %15 = zext i16 %4 to i32
  %16 = or i32 %14, %15
  %17 = icmp eq i32 %16, %9
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = trunc i32 %16 to i16
  %20 = tail call i32 @__phy_write_mmd(ptr noundef %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %19) #10
  %21 = icmp slt i32 %20, 0
  %22 = select i1 %21, i32 %20, i32 1
  br label %23

23:                                               ; preds = %18, %11, %5
  %24 = phi i32 [ %22, %18 ], [ %9, %5 ], [ 0, %11 ]
  %25 = load ptr, ptr %6, align 8
  %26 = getelementptr inbounds %struct.mii_bus, ptr %25, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %26) #10
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__phy_modify_mmd(ptr noundef %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3, i16 noundef zeroext %4) #4 {
  %6 = tail call i32 @__phy_read_mmd(ptr noundef %0, i32 noundef %1, i32 noundef %2) #10
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %5
  %9 = zext i16 %3 to i32
  %10 = xor i32 %9, -1
  %11 = and i32 %6, %10
  %12 = zext i16 %4 to i32
  %13 = or i32 %11, %12
  %14 = icmp eq i32 %13, %6
  br i1 %14, label %20, label %15

15:                                               ; preds = %8
  %16 = trunc i32 %13 to i16
  %17 = tail call i32 @__phy_write_mmd(ptr noundef %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %16) #10
  %18 = icmp slt i32 %17, 0
  %19 = select i1 %18, i32 %17, i32 1
  br label %20

20:                                               ; preds = %15, %8, %5
  %21 = phi i32 [ %19, %15 ], [ %6, %5 ], [ 0, %8 ]
  %22 = tail call i32 @llvm.smin.i32(i32 %21, i32 0)
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_modify_mmd(ptr noundef %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3, i16 noundef zeroext %4) #4 {
  %6 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.mii_bus, ptr %7, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %8) #10
  %9 = tail call i32 @__phy_read_mmd(ptr noundef %0, i32 noundef %1, i32 noundef %2) #10
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %5
  %12 = zext i16 %3 to i32
  %13 = xor i32 %12, -1
  %14 = and i32 %9, %13
  %15 = zext i16 %4 to i32
  %16 = or i32 %14, %15
  %17 = icmp eq i32 %16, %9
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = trunc i32 %16 to i16
  %20 = tail call i32 @__phy_write_mmd(ptr noundef %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %19) #10
  %21 = icmp slt i32 %20, 0
  %22 = select i1 %21, i32 %20, i32 1
  br label %23

23:                                               ; preds = %18, %11, %5
  %24 = phi i32 [ %22, %18 ], [ %9, %5 ], [ 0, %11 ]
  %25 = tail call i32 @llvm.smin.i32(i32 %24, i32 0) #10
  %26 = load ptr, ptr %6, align 8
  %27 = getelementptr inbounds %struct.mii_bus, ptr %26, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %27) #10
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_save_page(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %4) #10
  %5 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.phy_driver, ptr %6, i32 0, i32 25
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  %10 = load i1, ptr @__phy_read_page.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !9

13:                                               ; preds = %1
  store i1 true, ptr @__phy_read_page.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 752, i32 noundef 9, ptr noundef nonnull @.str.28) #10
  br label %14

14:                                               ; preds = %13, %1
  br i1 %9, label %20, label %15

15:                                               ; preds = %14
  %16 = load ptr, ptr %5, align 8
  %17 = getelementptr inbounds %struct.phy_driver, ptr %16, i32 0, i32 25
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 %18(ptr noundef %0) #10
  br label %20

20:                                               ; preds = %15, %14
  %21 = phi i32 [ %19, %15 ], [ -95, %14 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_select_page(ptr noundef %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.mii_bus, ptr %4, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %5) #10
  %6 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.phy_driver, ptr %7, i32 0, i32 25
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  %11 = load i1, ptr @__phy_read_page.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %15, !prof !9

14:                                               ; preds = %2
  store i1 true, ptr @__phy_read_page.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 752, i32 noundef 9, ptr noundef nonnull @.str.28) #10
  br label %15

15:                                               ; preds = %14, %2
  br i1 %10, label %41, label %16

16:                                               ; preds = %15
  %17 = load ptr, ptr %6, align 8
  %18 = getelementptr inbounds %struct.phy_driver, ptr %17, i32 0, i32 25
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 %19(ptr noundef %0) #10
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %41, label %22

22:                                               ; preds = %16
  %23 = icmp eq i32 %20, %1
  br i1 %23, label %40, label %24

24:                                               ; preds = %22
  %25 = load ptr, ptr %6, align 8
  %26 = getelementptr inbounds %struct.phy_driver, ptr %25, i32 0, i32 26
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  %29 = load i1, ptr @__phy_write_page.__already_done, align 1
  %30 = xor i1 %29, true
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %32, label %33, !prof !9

32:                                               ; preds = %24
  store i1 true, ptr @__phy_write_page.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 760, i32 noundef 9, ptr noundef nonnull @.str.29) #10
  br label %33

33:                                               ; preds = %32, %24
  br i1 %28, label %41, label %34

34:                                               ; preds = %33
  %35 = load ptr, ptr %6, align 8
  %36 = getelementptr inbounds %struct.phy_driver, ptr %35, i32 0, i32 26
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 %37(ptr noundef %0, i32 noundef %1) #10
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %34, %22
  br label %41

41:                                               ; preds = %40, %34, %33, %16, %15
  %42 = phi i32 [ %20, %40 ], [ %20, %16 ], [ %38, %34 ], [ -95, %15 ], [ -95, %33 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_restore_page(ptr noundef %0, i32 noundef %1, i32 noundef %2) #4 {
  %4 = icmp sgt i32 %1, -1
  br i1 %4, label %5, label %27

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.phy_driver, ptr %7, i32 0, i32 26
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  %11 = load i1, ptr @__phy_write_page.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %15, !prof !9

14:                                               ; preds = %5
  store i1 true, ptr @__phy_write_page.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 760, i32 noundef 9, ptr noundef nonnull @.str.29) #10
  br label %15

15:                                               ; preds = %14, %5
  br i1 %10, label %21, label %16

16:                                               ; preds = %15
  %17 = load ptr, ptr %6, align 8
  %18 = getelementptr inbounds %struct.phy_driver, ptr %17, i32 0, i32 26
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 %19(ptr noundef %0, i32 noundef %1) #10
  br label %21

21:                                               ; preds = %16, %15
  %22 = phi i32 [ %20, %16 ], [ -95, %15 ]
  %23 = icmp sgt i32 %2, -1
  %24 = icmp slt i32 %22, 0
  %25 = select i1 %23, i1 %24, i1 false
  %26 = select i1 %25, i32 %22, i32 %2
  br label %27

27:                                               ; preds = %21, %3
  %28 = phi i32 [ %26, %21 ], [ %1, %3 ]
  %29 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.mii_bus, ptr %30, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %31) #10
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_read_paged(ptr noundef %0, i32 noundef %1, i32 noundef %2) #4 {
  %4 = tail call i32 @phy_select_page(ptr noundef %0, i32 noundef %1)
  %5 = icmp sgt i32 %4, -1
  br i1 %5, label %6, label %33

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %10 = load i32, ptr %9, align 8
  %11 = tail call i32 @__mdiobus_read(ptr noundef %8, i32 noundef %10, i32 noundef %2) #10
  %12 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.phy_driver, ptr %13, i32 0, i32 26
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  %17 = load i1, ptr @__phy_write_page.__already_done, align 1
  %18 = xor i1 %17, true
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %21, !prof !9

20:                                               ; preds = %6
  store i1 true, ptr @__phy_write_page.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 760, i32 noundef 9, ptr noundef nonnull @.str.29) #10
  br label %21

21:                                               ; preds = %20, %6
  br i1 %16, label %27, label %22

22:                                               ; preds = %21
  %23 = load ptr, ptr %12, align 8
  %24 = getelementptr inbounds %struct.phy_driver, ptr %23, i32 0, i32 26
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 %25(ptr noundef %0, i32 noundef %4) #10
  br label %27

27:                                               ; preds = %22, %21
  %28 = phi i32 [ %26, %22 ], [ -95, %21 ]
  %29 = icmp sgt i32 %11, -1
  %30 = icmp slt i32 %28, 0
  %31 = select i1 %29, i1 %30, i1 false
  %32 = select i1 %31, i32 %28, i32 %11
  br label %33

33:                                               ; preds = %27, %3
  %34 = phi i32 [ %32, %27 ], [ %4, %3 ]
  %35 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.mii_bus, ptr %36, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %37) #10
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_write_paged(ptr noundef %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3) #4 {
  %5 = tail call i32 @phy_select_page(ptr noundef %0, i32 noundef %1)
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %34

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %11 = load i32, ptr %10, align 8
  %12 = tail call i32 @__mdiobus_write(ptr noundef %9, i32 noundef %11, i32 noundef %2, i16 noundef zeroext %3) #10
  %13 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.phy_driver, ptr %14, i32 0, i32 26
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  %18 = load i1, ptr @__phy_write_page.__already_done, align 1
  %19 = xor i1 %18, true
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %22, !prof !9

21:                                               ; preds = %7
  store i1 true, ptr @__phy_write_page.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 760, i32 noundef 9, ptr noundef nonnull @.str.29) #10
  br label %22

22:                                               ; preds = %21, %7
  br i1 %17, label %28, label %23

23:                                               ; preds = %22
  %24 = load ptr, ptr %13, align 8
  %25 = getelementptr inbounds %struct.phy_driver, ptr %24, i32 0, i32 26
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 %26(ptr noundef %0, i32 noundef %5) #10
  br label %28

28:                                               ; preds = %23, %22
  %29 = phi i32 [ %27, %23 ], [ -95, %22 ]
  %30 = icmp sgt i32 %12, -1
  %31 = icmp slt i32 %29, 0
  %32 = select i1 %30, i1 %31, i1 false
  %33 = select i1 %32, i32 %29, i32 %12
  br label %34

34:                                               ; preds = %28, %4
  %35 = phi i32 [ %33, %28 ], [ %5, %4 ]
  %36 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.mii_bus, ptr %37, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %38) #10
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_modify_paged_changed(ptr noundef %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3, i16 noundef zeroext %4) #4 {
  %6 = tail call i32 @phy_select_page(ptr noundef %0, i32 noundef %1)
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %35

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %12 = load i32, ptr %11, align 8
  %13 = tail call i32 @__mdiobus_modify_changed(ptr noundef %10, i32 noundef %12, i32 noundef %2, i16 noundef zeroext %3, i16 noundef zeroext %4) #10
  %14 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.phy_driver, ptr %15, i32 0, i32 26
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  %19 = load i1, ptr @__phy_write_page.__already_done, align 1
  %20 = xor i1 %19, true
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %23, !prof !9

22:                                               ; preds = %8
  store i1 true, ptr @__phy_write_page.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 760, i32 noundef 9, ptr noundef nonnull @.str.29) #10
  br label %23

23:                                               ; preds = %22, %8
  br i1 %18, label %29, label %24

24:                                               ; preds = %23
  %25 = load ptr, ptr %14, align 8
  %26 = getelementptr inbounds %struct.phy_driver, ptr %25, i32 0, i32 26
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 %27(ptr noundef %0, i32 noundef %6) #10
  br label %29

29:                                               ; preds = %24, %23
  %30 = phi i32 [ %28, %24 ], [ -95, %23 ]
  %31 = icmp sgt i32 %13, -1
  %32 = icmp slt i32 %30, 0
  %33 = select i1 %31, i1 %32, i1 false
  %34 = select i1 %33, i32 %30, i32 %13
  br label %35

35:                                               ; preds = %29, %5
  %36 = phi i32 [ %34, %29 ], [ %6, %5 ]
  %37 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.mii_bus, ptr %38, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %39) #10
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_modify_paged(ptr noundef %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3, i16 noundef zeroext %4) #4 {
  %6 = tail call i32 @phy_modify_paged_changed(ptr noundef %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3, i16 noundef zeroext %4)
  %7 = tail call i32 @llvm.smin.i32(i32 %6, i32 0)
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_modify_changed(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

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
