; ModuleID = '/llk/IR/drivers/mmc/core/host.c_pt.bc'
source_filename = "../drivers/mmc/core/host.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_retune_pause:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_retune_pause\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_retune_pause:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_retune_unpause:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_retune_unpause\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_retune_unpause:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_retune_timer_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_retune_timer_stop\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_retune_timer_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_retune_release:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_retune_release\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_retune_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_of_parse_clk_phase:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_of_parse_clk_phase\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_of_parse_clk_phase:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_of_parse:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_of_parse\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_of_parse:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_of_parse_voltage:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_of_parse_voltage\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_of_parse_voltage:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_alloc_host:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_alloc_host\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_alloc_host:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_add_host:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_add_host\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_add_host:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_remove_host:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_remove_host\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_remove_host:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_free_host:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_free_host\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_free_host:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type {}
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, [37 x i8], [0 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.mmc_supply = type { ptr, ptr }
%struct.mmc_clk_phase = type { i8, i16, i16 }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmc_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@mmc_register_host_class.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@mmc_host_class = internal global %struct.class { ptr @.str.63, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mmc_host_classdev_release, ptr @mmc_host_classdev_shutdown, ptr null, ptr null, ptr null, ptr @mmc_host_class_dev_pm_ops, ptr null }, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab_mmc_retune_pause = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_retune_pause = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_retune_pause = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_retune_pause to i32), ptr @__kstrtab_mmc_retune_pause, ptr @__kstrtabns_mmc_retune_pause }, section "___ksymtab+mmc_retune_pause", align 4
@__kstrtab_mmc_retune_unpause = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_retune_unpause = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_retune_unpause = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_retune_unpause to i32), ptr @__kstrtab_mmc_retune_unpause, ptr @__kstrtabns_mmc_retune_unpause }, section "___ksymtab+mmc_retune_unpause", align 4
@__kstrtab_mmc_retune_timer_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_retune_timer_stop = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_retune_timer_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_retune_timer_stop to i32), ptr @__kstrtab_mmc_retune_timer_stop, ptr @__kstrtabns_mmc_retune_timer_stop }, section "___ksymtab+mmc_retune_timer_stop", align 4
@.str = private unnamed_addr constant [24 x i8] c"drivers/mmc/core/host.c\00", align 1
@__kstrtab_mmc_retune_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_retune_release = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_retune_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_retune_release to i32), ptr @__kstrtab_mmc_retune_release, ptr @__kstrtabns_mmc_retune_release }, section "___ksymtab+mmc_retune_release", align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"clk-phase-legacy\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"clk-phase-mmc-hs\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"clk-phase-sd-hs\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"clk-phase-uhs-sdr12\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"clk-phase-uhs-sdr25\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"clk-phase-uhs-sdr50\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"clk-phase-uhs-sdr104\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"clk-phase-uhs-ddr50\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"clk-phase-mmc-ddr52\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"clk-phase-mmc-hs200\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"clk-phase-mmc-hs400\00", align 1
@__kstrtab_mmc_of_parse_clk_phase = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_of_parse_clk_phase = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_of_parse_clk_phase = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_of_parse_clk_phase to i32), ptr @__kstrtab_mmc_of_parse_clk_phase, ptr @__kstrtabns_mmc_of_parse_clk_phase }, section "___ksymtab+mmc_of_parse_clk_phase", align 4
@.str.12 = private unnamed_addr constant [10 x i8] c"bus-width\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"Invalid \22bus-width\22 value %u!\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"max-frequency\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"non-removable\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"cd-inverted\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"cd-debounce-delay-ms\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"broken-cd\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"cd\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"Got CD GPIO\0A\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"wp-inverted\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"wp\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"Got WP GPIO\0A\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"disable-wp\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"cap-sd-highspeed\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"cap-mmc-highspeed\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"sd-uhs-sdr12\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"sd-uhs-sdr25\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"sd-uhs-sdr50\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"sd-uhs-sdr104\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"sd-uhs-ddr50\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"cap-power-off-card\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"cap-mmc-hw-reset\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"cap-sdio-irq\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"full-pwr-cycle\00", align 1
@.str.36 = private unnamed_addr constant [26 x i8] c"full-pwr-cycle-in-suspend\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"keep-power-in-suspend\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"wakeup-source\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c"enable-sdio-wakeup\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"mmc-ddr-3_3v\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"mmc-ddr-1_8v\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"mmc-ddr-1_2v\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"mmc-hs200-1_8v\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"mmc-hs200-1_2v\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"mmc-hs400-1_8v\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"mmc-hs400-1_2v\00", align 1
@.str.47 = private unnamed_addr constant [26 x i8] c"mmc-hs400-enhanced-strobe\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"no-sdio\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"no-sd\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"no-mmc\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c"no-mmc-hs400\00", align 1
@.str.52 = private unnamed_addr constant [23 x i8] c"fixed-emmc-driver-type\00", align 1
@.str.53 = private unnamed_addr constant [49 x i8] c"can't use fixed driver type, media is removable\0A\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"dsr\00", align 1
@.str.55 = private unnamed_addr constant [60 x i8] c"device tree specified broken value for DSR: 0x%x, ignoring\0A\00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c"post-power-on-delay-ms\00", align 1
@__kstrtab_mmc_of_parse = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_of_parse = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_of_parse = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_of_parse to i32), ptr @__kstrtab_mmc_of_parse, ptr @__kstrtabns_mmc_of_parse }, section "___ksymtab+mmc_of_parse", align 4
@.str.57 = private unnamed_addr constant [15 x i8] c"voltage-ranges\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"%s empty\0A\00", align 1
@.str.59 = private unnamed_addr constant [28 x i8] c"range #%d in %s is invalid\0A\00", align 1
@__kstrtab_mmc_of_parse_voltage = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_of_parse_voltage = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_of_parse_voltage = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_of_parse_voltage to i32), ptr @__kstrtab_mmc_of_parse_voltage, ptr @__kstrtabns_mmc_of_parse_voltage }, section "___ksymtab+mmc_of_parse_voltage", align 4
@.str.60 = private unnamed_addr constant [4 x i8] c"mmc\00", align 1
@mmc_host_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@.str.61 = private unnamed_addr constant [6 x i8] c"mmc%d\00", align 1
@mmc_alloc_host.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"&host->wq\00", align 1
@__kstrtab_mmc_alloc_host = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_alloc_host = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_alloc_host = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_alloc_host to i32), ptr @__kstrtab_mmc_alloc_host, ptr @__kstrtabns_mmc_alloc_host }, section "___ksymtab+mmc_alloc_host", align 4
@__kstrtab_mmc_add_host = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_add_host = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_add_host = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_add_host to i32), ptr @__kstrtab_mmc_add_host, ptr @__kstrtabns_mmc_add_host }, section "___ksymtab+mmc_add_host", align 4
@__kstrtab_mmc_remove_host = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_remove_host = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_remove_host = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_remove_host to i32), ptr @__kstrtab_mmc_remove_host, ptr @__kstrtabns_mmc_remove_host }, section "___ksymtab+mmc_remove_host", align 4
@__kstrtab_mmc_free_host = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_free_host = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_free_host = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_free_host to i32), ptr @__kstrtab_mmc_free_host, ptr @__kstrtabns_mmc_free_host }, section "___ksymtab+mmc_free_host", align 4
@.str.63 = private unnamed_addr constant [9 x i8] c"mmc_host\00", align 1
@mmc_host_class_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr @mmc_host_class_prepare, ptr @mmc_host_class_complete, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@llvm.compiler.used = appending global [11 x ptr] [ptr @__ksymtab_mmc_add_host, ptr @__ksymtab_mmc_alloc_host, ptr @__ksymtab_mmc_free_host, ptr @__ksymtab_mmc_of_parse, ptr @__ksymtab_mmc_of_parse_clk_phase, ptr @__ksymtab_mmc_of_parse_voltage, ptr @__ksymtab_mmc_remove_host, ptr @__ksymtab_mmc_retune_pause, ptr @__ksymtab_mmc_retune_release, ptr @__ksymtab_mmc_retune_timer_stop, ptr @__ksymtab_mmc_retune_unpause], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_register_host_class() local_unnamed_addr #0 {
  %1 = tail call i32 @__class_register(ptr noundef nonnull @mmc_host_class, ptr noundef nonnull @mmc_register_host_class.__key) #7
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmc_unregister_host_class() local_unnamed_addr #0 {
  tail call void @class_unregister(ptr noundef nonnull @mmc_host_class) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmc_retune_enable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 29
  %3 = load i16, ptr %2, align 8
  %4 = or i16 %3, 8
  store i16 %4, ptr %2, align 8
  %5 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 34
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 35
  %10 = load volatile i32, ptr @jiffies, align 64
  %11 = mul i32 %6, 100
  %12 = add i32 %10, %11
  %13 = tail call i32 @mod_timer(ptr noundef %9, i32 noundef %12) #7
  br label %14

14:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @mmc_retune_pause(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 29
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 64
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %1
  %7 = or i16 %3, 64
  store i16 %7, ptr %2, align 8
  %8 = and i16 %3, 8
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 32
  store i32 1, ptr %11, align 4
  br label %12

12:                                               ; preds = %10, %6
  %13 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 33
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = or i16 %3, 96
  store i16 %17, ptr %2, align 8
  br label %18

18:                                               ; preds = %16, %12
  %19 = add i32 %14, 1
  store i32 %19, ptr %13, align 8
  br label %20

20:                                               ; preds = %18, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @mmc_retune_hold(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 33
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 29
  %7 = load i16, ptr %6, align 8
  %8 = or i16 %7, 32
  store i16 %8, ptr %6, align 8
  br label %9

9:                                                ; preds = %5, %1
  %10 = add i32 %3, 1
  store i32 %10, ptr %2, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmc_retune_unpause(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 29
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 64
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = and i16 %3, -65
  store i16 %7, ptr %2, align 8
  %8 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 33
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = add i32 %9, -1
  store i32 %12, ptr %8, align 8
  br label %14

13:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 175, i32 noundef 9, ptr noundef null) #7
  br label %14

14:                                               ; preds = %13, %11, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmc_retune_release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 33
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 8
  br label %8

7:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 175, i32 noundef 9, ptr noundef null) #7
  br label %8

8:                                                ; preds = %7, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmc_retune_disable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 29
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 64
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %1
  %7 = and i16 %3, -65
  store i16 %7, ptr %2, align 8
  %8 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 33
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = add i32 %9, -1
  store i32 %12, ptr %8, align 8
  br label %15

13:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 175, i32 noundef 9, ptr noundef null) #7
  %14 = load i16, ptr %2, align 8
  br label %15

15:                                               ; preds = %13, %11, %1
  %16 = phi i16 [ %3, %1 ], [ %7, %11 ], [ %14, %13 ]
  %17 = and i16 %16, -9
  store i16 %17, ptr %2, align 8
  %18 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 35
  %19 = tail call i32 @del_timer_sync(ptr noundef %18) #7
  %20 = load i16, ptr %2, align 8
  %21 = and i16 %20, -33
  store i16 %21, ptr %2, align 8
  %22 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 32
  store i32 0, ptr %22, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmc_retune_timer_stop(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 35
  %3 = tail call i32 @del_timer_sync(ptr noundef %2) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_retune(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 29
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 32
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %41, label %6

6:                                                ; preds = %1
  %7 = and i16 %3, -33
  store i16 %7, ptr %2, align 8
  %8 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 32
  %9 = load i32, ptr %8, align 4
  %10 = icmp ne i32 %9, 0
  %11 = and i16 %3, 16
  %12 = icmp eq i16 %11, 0
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %41

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 37
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %41, label %18

18:                                               ; preds = %14
  store i32 0, ptr %8, align 4
  %19 = or i16 %7, 16
  store i16 %19, ptr %2, align 8
  %20 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28, i32 7
  %21 = load i8, ptr %20, align 4
  %22 = icmp eq i8 %21, 10
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = tail call i32 @mmc_hs400_to_hs200(ptr noundef nonnull %16) #7
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = load ptr, ptr %15, align 8
  br label %28

28:                                               ; preds = %26, %18
  %29 = phi ptr [ %27, %26 ], [ %16, %18 ]
  %30 = tail call i32 @mmc_execute_tuning(ptr noundef %29) #7
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %22, true
  %33 = select i1 %31, i1 true, i1 %32
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load ptr, ptr %15, align 8
  %36 = tail call i32 @mmc_hs200_to_hs400(ptr noundef %35) #7
  br label %37

37:                                               ; preds = %34, %28, %23
  %38 = phi i32 [ %24, %23 ], [ %30, %28 ], [ %36, %34 ]
  %39 = load i16, ptr %2, align 8
  %40 = and i16 %39, -17
  store i16 %40, ptr %2, align 8
  br label %41

41:                                               ; preds = %37, %14, %6, %1
  %42 = phi i32 [ %38, %37 ], [ 0, %1 ], [ 0, %14 ], [ 0, %6 ]
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_hs400_to_hs200(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_execute_tuning(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_hs200_to_hs400(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmc_of_parse_clk_phase(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [2 x i32], align 8
  %4 = alloca [2 x i32], align 8
  %5 = alloca [2 x i32], align 8
  %6 = alloca [2 x i32], align 8
  %7 = alloca [2 x i32], align 8
  %8 = alloca [2 x i32], align 8
  %9 = alloca [2 x i32], align 8
  %10 = alloca [2 x i32], align 8
  %11 = alloca [2 x i32], align 8
  %12 = alloca [2 x i32], align 8
  %13 = alloca [2 x i32], align 8
  %14 = load ptr, ptr %0, align 64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #7
  store i64 0, ptr %13, align 8
  %15 = call i32 @device_property_read_u32_array(ptr noundef %14, ptr noundef nonnull @.str.1, ptr noundef nonnull %13, i32 noundef 2) #7
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i8
  store i8 %17, ptr %1, align 2
  br i1 %16, label %18, label %26

18:                                               ; preds = %2
  %19 = load i32, ptr %13, align 8
  %20 = trunc i32 %19 to i16
  %21 = getelementptr inbounds %struct.mmc_clk_phase, ptr %1, i32 0, i32 1
  store i16 %20, ptr %21, align 2
  %22 = getelementptr inbounds [2 x i32], ptr %13, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = trunc i32 %23 to i16
  %25 = getelementptr inbounds %struct.mmc_clk_phase, ptr %1, i32 0, i32 2
  store i16 %24, ptr %25, align 2
  br label %26

26:                                               ; preds = %18, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #7
  %27 = getelementptr [11 x %struct.mmc_clk_phase], ptr %1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #7
  store i64 0, ptr %12, align 8
  %28 = call i32 @device_property_read_u32_array(ptr noundef %14, ptr noundef nonnull @.str.2, ptr noundef nonnull %12, i32 noundef 2) #7
  %29 = icmp eq i32 %28, 0
  %30 = zext i1 %29 to i8
  store i8 %30, ptr %27, align 2
  br i1 %29, label %31, label %39

31:                                               ; preds = %26
  %32 = load i32, ptr %12, align 8
  %33 = trunc i32 %32 to i16
  %34 = getelementptr [11 x %struct.mmc_clk_phase], ptr %1, i32 0, i32 1, i32 1
  store i16 %33, ptr %34, align 2
  %35 = getelementptr inbounds [2 x i32], ptr %12, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = trunc i32 %36 to i16
  %38 = getelementptr [11 x %struct.mmc_clk_phase], ptr %1, i32 0, i32 1, i32 2
  store i16 %37, ptr %38, align 2
  br label %39

39:                                               ; preds = %31, %26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #7
  %40 = getelementptr [11 x %struct.mmc_clk_phase], ptr %1, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #7
  store i64 0, ptr %11, align 8
  %41 = call i32 @device_property_read_u32_array(ptr noundef %14, ptr noundef nonnull @.str.3, ptr noundef nonnull %11, i32 noundef 2) #7
  %42 = icmp eq i32 %41, 0
  %43 = zext i1 %42 to i8
  store i8 %43, ptr %40, align 2
  br i1 %42, label %44, label %52

44:                                               ; preds = %39
  %45 = load i32, ptr %11, align 8
  %46 = trunc i32 %45 to i16
  %47 = getelementptr [11 x %struct.mmc_clk_phase], ptr %1, i32 0, i32 2, i32 1
  store i16 %46, ptr %47, align 2
  %48 = getelementptr inbounds [2 x i32], ptr %11, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = trunc i32 %49 to i16
  %51 = getelementptr [11 x %struct.mmc_clk_phase], ptr %1, i32 0, i32 2, i32 2
  store i16 %50, ptr %51, align 2
  br label %52

52:                                               ; preds = %44, %39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #7
  %53 = getelementptr [11 x %struct.mmc_clk_phase], ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #7
  store i64 0, ptr %10, align 8
  %54 = call i32 @device_property_read_u32_array(ptr noundef %14, ptr noundef nonnull @.str.4, ptr noundef nonnull %10, i32 noundef 2) #7
  %55 = icmp eq i32 %54, 0
  %56 = zext i1 %55 to i8
  store i8 %56, ptr %53, align 2
  br i1 %55, label %57, label %65

57:                                               ; preds = %52
  %58 = load i32, ptr %10, align 8
  %59 = trunc i32 %58 to i16
  %60 = getelementptr [11 x %struct.mmc_clk_phase], ptr %1, i32 0, i32 3, i32 1
  store i16 %59, ptr %60, align 2
  %61 = getelementptr inbounds [2 x i32], ptr %10, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = trunc i32 %62 to i16
  %64 = getelementptr [11 x %struct.mmc_clk_phase], ptr %1, i32 0, i32 3, i32 2
  store i16 %63, ptr %64, align 2
  br label %65

65:                                               ; preds = %57, %52
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #7
  %66 = getelementptr [11 x %struct.mmc_clk_phase], ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #7
  store i64 0, ptr %9, align 8
  %67 = call i32 @device_property_read_u32_array(ptr noundef %14, ptr noundef nonnull @.str.5, ptr noundef nonnull %9, i32 noundef 2) #7
  %68 = icmp eq i32 %67, 0
  %69 = zext i1 %68 to i8
  store i8 %69, ptr %66, align 2
  br i1 %68, label %70, label %78

70:                                               ; preds = %65
  %71 = load i32, ptr %9, align 8
  %72 = trunc i32 %71 to i16
  %73 = getelementptr [11 x %struct.mmc_clk_phase], ptr %1, i32 0, i32 4, i32 1
  store i16 %72, ptr %73, align 2
  %74 = getelementptr inbounds [2 x i32], ptr %9, i32 0, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = trunc i32 %75 to i16
  %77 = getelementptr [11 x %struct.mmc_clk_phase], ptr %1, i32 0, i32 4, i32 2
  store i16 %76, ptr %77, align 2
  br label %78

78:                                               ; preds = %70, %65
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #7
  %79 = getelementptr [11 x %struct.mmc_clk_phase], ptr %1, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #7
  store i64 0, ptr %8, align 8
  %80 = call i32 @device_property_read_u32_array(ptr noundef %14, ptr noundef nonnull @.str.6, ptr noundef nonnull %8, i32 noundef 2) #7
  %81 = icmp eq i32 %80, 0
  %82 = zext i1 %81 to i8
  store i8 %82, ptr %79, align 2
  br i1 %81, label %83, label %91

83:                                               ; preds = %78
  %84 = load i32, ptr %8, align 8
  %85 = trunc i32 %84 to i16
  %86 = getelementptr [11 x %struct.mmc_clk_phase], ptr %1, i32 0, i32 5, i32 1
  store i16 %85, ptr %86, align 2
  %87 = getelementptr inbounds [2 x i32], ptr %8, i32 0, i32 1
  %88 = load i32, ptr %87, align 4
  %89 = trunc i32 %88 to i16
  %90 = getelementptr [11 x %struct.mmc_clk_phase], ptr %1, i32 0, i32 5, i32 2
  store i16 %89, ptr %90, align 2
  br label %91

91:                                               ; preds = %83, %78
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #7
  %92 = getelementptr [11 x %struct.mmc_clk_phase], ptr %1, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7
  store i64 0, ptr %7, align 8
  %93 = call i32 @device_property_read_u32_array(ptr noundef %14, ptr noundef nonnull @.str.7, ptr noundef nonnull %7, i32 noundef 2) #7
  %94 = icmp eq i32 %93, 0
  %95 = zext i1 %94 to i8
  store i8 %95, ptr %92, align 2
  br i1 %94, label %96, label %104

96:                                               ; preds = %91
  %97 = load i32, ptr %7, align 8
  %98 = trunc i32 %97 to i16
  %99 = getelementptr [11 x %struct.mmc_clk_phase], ptr %1, i32 0, i32 6, i32 1
  store i16 %98, ptr %99, align 2
  %100 = getelementptr inbounds [2 x i32], ptr %7, i32 0, i32 1
  %101 = load i32, ptr %100, align 4
  %102 = trunc i32 %101 to i16
  %103 = getelementptr [11 x %struct.mmc_clk_phase], ptr %1, i32 0, i32 6, i32 2
  store i16 %102, ptr %103, align 2
  br label %104

104:                                              ; preds = %96, %91
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  %105 = getelementptr [11 x %struct.mmc_clk_phase], ptr %1, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  store i64 0, ptr %6, align 8
  %106 = call i32 @device_property_read_u32_array(ptr noundef %14, ptr noundef nonnull @.str.8, ptr noundef nonnull %6, i32 noundef 2) #7
  %107 = icmp eq i32 %106, 0
  %108 = zext i1 %107 to i8
  store i8 %108, ptr %105, align 2
  br i1 %107, label %109, label %117

109:                                              ; preds = %104
  %110 = load i32, ptr %6, align 8
  %111 = trunc i32 %110 to i16
  %112 = getelementptr [11 x %struct.mmc_clk_phase], ptr %1, i32 0, i32 7, i32 1
  store i16 %111, ptr %112, align 2
  %113 = getelementptr inbounds [2 x i32], ptr %6, i32 0, i32 1
  %114 = load i32, ptr %113, align 4
  %115 = trunc i32 %114 to i16
  %116 = getelementptr [11 x %struct.mmc_clk_phase], ptr %1, i32 0, i32 7, i32 2
  store i16 %115, ptr %116, align 2
  br label %117

117:                                              ; preds = %109, %104
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  %118 = getelementptr [11 x %struct.mmc_clk_phase], ptr %1, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  store i64 0, ptr %5, align 8
  %119 = call i32 @device_property_read_u32_array(ptr noundef %14, ptr noundef nonnull @.str.9, ptr noundef nonnull %5, i32 noundef 2) #7
  %120 = icmp eq i32 %119, 0
  %121 = zext i1 %120 to i8
  store i8 %121, ptr %118, align 2
  br i1 %120, label %122, label %130

122:                                              ; preds = %117
  %123 = load i32, ptr %5, align 8
  %124 = trunc i32 %123 to i16
  %125 = getelementptr [11 x %struct.mmc_clk_phase], ptr %1, i32 0, i32 8, i32 1
  store i16 %124, ptr %125, align 2
  %126 = getelementptr inbounds [2 x i32], ptr %5, i32 0, i32 1
  %127 = load i32, ptr %126, align 4
  %128 = trunc i32 %127 to i16
  %129 = getelementptr [11 x %struct.mmc_clk_phase], ptr %1, i32 0, i32 8, i32 2
  store i16 %128, ptr %129, align 2
  br label %130

130:                                              ; preds = %122, %117
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  %131 = getelementptr [11 x %struct.mmc_clk_phase], ptr %1, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  store i64 0, ptr %4, align 8
  %132 = call i32 @device_property_read_u32_array(ptr noundef %14, ptr noundef nonnull @.str.10, ptr noundef nonnull %4, i32 noundef 2) #7
  %133 = icmp eq i32 %132, 0
  %134 = zext i1 %133 to i8
  store i8 %134, ptr %131, align 2
  br i1 %133, label %135, label %143

135:                                              ; preds = %130
  %136 = load i32, ptr %4, align 8
  %137 = trunc i32 %136 to i16
  %138 = getelementptr [11 x %struct.mmc_clk_phase], ptr %1, i32 0, i32 9, i32 1
  store i16 %137, ptr %138, align 2
  %139 = getelementptr inbounds [2 x i32], ptr %4, i32 0, i32 1
  %140 = load i32, ptr %139, align 4
  %141 = trunc i32 %140 to i16
  %142 = getelementptr [11 x %struct.mmc_clk_phase], ptr %1, i32 0, i32 9, i32 2
  store i16 %141, ptr %142, align 2
  br label %143

143:                                              ; preds = %135, %130
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  %144 = getelementptr [11 x %struct.mmc_clk_phase], ptr %1, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  store i64 0, ptr %3, align 8
  %145 = call i32 @device_property_read_u32_array(ptr noundef %14, ptr noundef nonnull @.str.11, ptr noundef nonnull %3, i32 noundef 2) #7
  %146 = icmp eq i32 %145, 0
  %147 = zext i1 %146 to i8
  store i8 %147, ptr %144, align 2
  br i1 %146, label %148, label %156

148:                                              ; preds = %143
  %149 = load i32, ptr %3, align 8
  %150 = trunc i32 %149 to i16
  %151 = getelementptr [11 x %struct.mmc_clk_phase], ptr %1, i32 0, i32 10, i32 1
  store i16 %150, ptr %151, align 2
  %152 = getelementptr inbounds [2 x i32], ptr %3, i32 0, i32 1
  %153 = load i32, ptr %152, align 4
  %154 = trunc i32 %153 to i16
  %155 = getelementptr [11 x %struct.mmc_clk_phase], ptr %1, i32 0, i32 10, i32 2
  store i16 %154, ptr %155, align 2
  br label %156

156:                                              ; preds = %148, %143
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_of_parse(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load ptr, ptr %0, align 64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %261, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @dev_fwnode(ptr noundef nonnull %5) #7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %261, label %10

10:                                               ; preds = %7
  %11 = call i32 @device_property_read_u32_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.12, ptr noundef nonnull %2, i32 noundef 1) #7
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 1, ptr %2, align 4
  br label %29

14:                                               ; preds = %10
  %15 = load i32, ptr %2, align 4
  switch i32 %15, label %27 [
    i32 8, label %19
    i32 4, label %16
    i32 1, label %29
  ]

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %18 = load i32, ptr %17, align 8
  br label %23

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %21 = load i32, ptr %20, align 8
  %22 = or i32 %21, 64
  br label %23

23:                                               ; preds = %19, %16
  %24 = phi i32 [ %18, %16 ], [ %22, %19 ]
  %25 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %26 = or i32 %24, 1
  store i32 %26, ptr %25, align 8
  br label %29

27:                                               ; preds = %14
  %28 = load ptr, ptr %0, align 64
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.13, i32 noundef %15) #8
  br label %261

29:                                               ; preds = %23, %14, %13
  %30 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 6
  %31 = call i32 @device_property_read_u32_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.14, ptr noundef %30, i32 noundef 1) #7
  %32 = call zeroext i1 @device_property_present(ptr noundef nonnull %5, ptr noundef nonnull @.str.15) #7
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %35 = load i32, ptr %34, align 8
  %36 = or i32 %35, 256
  store i32 %36, ptr %34, align 8
  br label %59

37:                                               ; preds = %29
  %38 = call zeroext i1 @device_property_present(ptr noundef nonnull %5, ptr noundef nonnull @.str.16) #7
  br i1 %38, label %39, label %43

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 17
  %41 = load i32, ptr %40, align 4
  %42 = or i32 %41, 1024
  store i32 %42, ptr %40, align 4
  br label %43

43:                                               ; preds = %39, %37
  %44 = call i32 @device_property_read_u32_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.17, ptr noundef nonnull %4, i32 noundef 1) #7
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  store i32 200, ptr %4, align 4
  br label %47

47:                                               ; preds = %46, %43
  %48 = call zeroext i1 @device_property_present(ptr noundef nonnull %5, ptr noundef nonnull @.str.18) #7
  br i1 %48, label %49, label %53

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %51 = load i32, ptr %50, align 8
  %52 = or i32 %51, 32
  store i32 %52, ptr %50, align 8
  br label %53

53:                                               ; preds = %49, %47
  %54 = load i32, ptr %4, align 4
  %55 = mul i32 %54, 1000
  %56 = call i32 @mmc_gpiod_request_cd(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef 0, i1 noundef zeroext false, i32 noundef %55) #7
  switch i32 %56, label %261 [
    i32 0, label %57
    i32 -2, label %59
    i32 -38, label %59
  ]

57:                                               ; preds = %53
  %58 = load ptr, ptr %0, align 64
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %58, ptr noundef nonnull @.str.20) #8
  br label %59

59:                                               ; preds = %57, %53, %53, %33
  %60 = call zeroext i1 @device_property_present(ptr noundef nonnull %5, ptr noundef nonnull @.str.21) #7
  br i1 %60, label %61, label %65

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 17
  %63 = load i32, ptr %62, align 4
  %64 = or i32 %63, 2048
  store i32 %64, ptr %62, align 4
  br label %65

65:                                               ; preds = %61, %59
  %66 = call i32 @mmc_gpiod_request_ro(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef 0, i32 noundef 0) #7
  switch i32 %66, label %261 [
    i32 0, label %67
    i32 -2, label %69
    i32 -38, label %69
  ]

67:                                               ; preds = %65
  %68 = load ptr, ptr %0, align 64
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %68, ptr noundef nonnull @.str.23) #8
  br label %69

69:                                               ; preds = %67, %65, %65
  %70 = call zeroext i1 @device_property_present(ptr noundef nonnull %5, ptr noundef nonnull @.str.24) #7
  br i1 %70, label %71, label %75

71:                                               ; preds = %69
  %72 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 17
  %73 = load i32, ptr %72, align 4
  %74 = or i32 %73, 262144
  store i32 %74, ptr %72, align 4
  br label %75

75:                                               ; preds = %71, %69
  %76 = call zeroext i1 @device_property_present(ptr noundef nonnull %5, ptr noundef nonnull @.str.25) #7
  br i1 %76, label %77, label %81

77:                                               ; preds = %75
  %78 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %79 = load i32, ptr %78, align 8
  %80 = or i32 %79, 4
  store i32 %80, ptr %78, align 8
  br label %81

81:                                               ; preds = %77, %75
  %82 = call zeroext i1 @device_property_present(ptr noundef nonnull %5, ptr noundef nonnull @.str.26) #7
  br i1 %82, label %83, label %87

83:                                               ; preds = %81
  %84 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %85 = load i32, ptr %84, align 8
  %86 = or i32 %85, 2
  store i32 %86, ptr %84, align 8
  br label %87

87:                                               ; preds = %83, %81
  %88 = call zeroext i1 @device_property_present(ptr noundef nonnull %5, ptr noundef nonnull @.str.27) #7
  br i1 %88, label %89, label %93

89:                                               ; preds = %87
  %90 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %91 = load i32, ptr %90, align 8
  %92 = or i32 %91, 65536
  store i32 %92, ptr %90, align 8
  br label %93

93:                                               ; preds = %89, %87
  %94 = call zeroext i1 @device_property_present(ptr noundef nonnull %5, ptr noundef nonnull @.str.28) #7
  br i1 %94, label %95, label %99

95:                                               ; preds = %93
  %96 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %97 = load i32, ptr %96, align 8
  %98 = or i32 %97, 131072
  store i32 %98, ptr %96, align 8
  br label %99

99:                                               ; preds = %95, %93
  %100 = call zeroext i1 @device_property_present(ptr noundef nonnull %5, ptr noundef nonnull @.str.29) #7
  br i1 %100, label %101, label %105

101:                                              ; preds = %99
  %102 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %103 = load i32, ptr %102, align 8
  %104 = or i32 %103, 262144
  store i32 %104, ptr %102, align 8
  br label %105

105:                                              ; preds = %101, %99
  %106 = call zeroext i1 @device_property_present(ptr noundef nonnull %5, ptr noundef nonnull @.str.30) #7
  br i1 %106, label %107, label %111

107:                                              ; preds = %105
  %108 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %109 = load i32, ptr %108, align 8
  %110 = or i32 %109, 524288
  store i32 %110, ptr %108, align 8
  br label %111

111:                                              ; preds = %107, %105
  %112 = call zeroext i1 @device_property_present(ptr noundef nonnull %5, ptr noundef nonnull @.str.31) #7
  br i1 %112, label %113, label %117

113:                                              ; preds = %111
  %114 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %115 = load i32, ptr %114, align 8
  %116 = or i32 %115, 1048576
  store i32 %116, ptr %114, align 8
  br label %117

117:                                              ; preds = %113, %111
  %118 = call zeroext i1 @device_property_present(ptr noundef nonnull %5, ptr noundef nonnull @.str.32) #7
  br i1 %118, label %119, label %123

119:                                              ; preds = %117
  %120 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %121 = load i32, ptr %120, align 8
  %122 = or i32 %121, 16384
  store i32 %122, ptr %120, align 8
  br label %123

123:                                              ; preds = %119, %117
  %124 = call zeroext i1 @device_property_present(ptr noundef nonnull %5, ptr noundef nonnull @.str.33) #7
  br i1 %124, label %125, label %129

125:                                              ; preds = %123
  %126 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %127 = load i32, ptr %126, align 8
  %128 = or i32 %127, -2147483648
  store i32 %128, ptr %126, align 8
  br label %129

129:                                              ; preds = %125, %123
  %130 = call zeroext i1 @device_property_present(ptr noundef nonnull %5, ptr noundef nonnull @.str.34) #7
  br i1 %130, label %131, label %135

131:                                              ; preds = %129
  %132 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %133 = load i32, ptr %132, align 8
  %134 = or i32 %133, 8
  store i32 %134, ptr %132, align 8
  br label %135

135:                                              ; preds = %131, %129
  %136 = call zeroext i1 @device_property_present(ptr noundef nonnull %5, ptr noundef nonnull @.str.35) #7
  br i1 %136, label %137, label %141

137:                                              ; preds = %135
  %138 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 17
  %139 = load i32, ptr %138, align 4
  %140 = or i32 %139, 4
  store i32 %140, ptr %138, align 4
  br label %141

141:                                              ; preds = %137, %135
  %142 = call zeroext i1 @device_property_present(ptr noundef nonnull %5, ptr noundef nonnull @.str.36) #7
  br i1 %142, label %143, label %147

143:                                              ; preds = %141
  %144 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 17
  %145 = load i32, ptr %144, align 4
  %146 = or i32 %145, 8
  store i32 %146, ptr %144, align 4
  br label %147

147:                                              ; preds = %143, %141
  %148 = call zeroext i1 @device_property_present(ptr noundef nonnull %5, ptr noundef nonnull @.str.37) #7
  br i1 %148, label %149, label %153

149:                                              ; preds = %147
  %150 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 19
  %151 = load i32, ptr %150, align 4
  %152 = or i32 %151, 1
  store i32 %152, ptr %150, align 4
  br label %153

153:                                              ; preds = %149, %147
  %154 = call zeroext i1 @device_property_present(ptr noundef nonnull %5, ptr noundef nonnull @.str.38) #7
  br i1 %154, label %157, label %155

155:                                              ; preds = %153
  %156 = call zeroext i1 @device_property_present(ptr noundef nonnull %5, ptr noundef nonnull @.str.39) #7
  br i1 %156, label %157, label %161

157:                                              ; preds = %155, %153
  %158 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 19
  %159 = load i32, ptr %158, align 4
  %160 = or i32 %159, 2
  store i32 %160, ptr %158, align 4
  br label %161

161:                                              ; preds = %157, %155
  %162 = call zeroext i1 @device_property_present(ptr noundef nonnull %5, ptr noundef nonnull @.str.40) #7
  br i1 %162, label %163, label %167

163:                                              ; preds = %161
  %164 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %165 = load i32, ptr %164, align 8
  %166 = or i32 %165, 2048
  store i32 %166, ptr %164, align 8
  br label %167

167:                                              ; preds = %163, %161
  %168 = call zeroext i1 @device_property_present(ptr noundef nonnull %5, ptr noundef nonnull @.str.41) #7
  br i1 %168, label %169, label %173

169:                                              ; preds = %167
  %170 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %171 = load i32, ptr %170, align 8
  %172 = or i32 %171, 4096
  store i32 %172, ptr %170, align 8
  br label %173

173:                                              ; preds = %169, %167
  %174 = call zeroext i1 @device_property_present(ptr noundef nonnull %5, ptr noundef nonnull @.str.42) #7
  br i1 %174, label %175, label %179

175:                                              ; preds = %173
  %176 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %177 = load i32, ptr %176, align 8
  %178 = or i32 %177, 8192
  store i32 %178, ptr %176, align 8
  br label %179

179:                                              ; preds = %175, %173
  %180 = call zeroext i1 @device_property_present(ptr noundef nonnull %5, ptr noundef nonnull @.str.43) #7
  br i1 %180, label %181, label %185

181:                                              ; preds = %179
  %182 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 17
  %183 = load i32, ptr %182, align 4
  %184 = or i32 %183, 32
  store i32 %184, ptr %182, align 4
  br label %185

185:                                              ; preds = %181, %179
  %186 = call zeroext i1 @device_property_present(ptr noundef nonnull %5, ptr noundef nonnull @.str.44) #7
  br i1 %186, label %187, label %191

187:                                              ; preds = %185
  %188 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 17
  %189 = load i32, ptr %188, align 4
  %190 = or i32 %189, 64
  store i32 %190, ptr %188, align 4
  br label %191

191:                                              ; preds = %187, %185
  %192 = call zeroext i1 @device_property_present(ptr noundef nonnull %5, ptr noundef nonnull @.str.45) #7
  br i1 %192, label %193, label %197

193:                                              ; preds = %191
  %194 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 17
  %195 = load i32, ptr %194, align 4
  %196 = or i32 %195, 32800
  store i32 %196, ptr %194, align 4
  br label %197

197:                                              ; preds = %193, %191
  %198 = call zeroext i1 @device_property_present(ptr noundef nonnull %5, ptr noundef nonnull @.str.46) #7
  br i1 %198, label %199, label %203

199:                                              ; preds = %197
  %200 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 17
  %201 = load i32, ptr %200, align 4
  %202 = or i32 %201, 65600
  store i32 %202, ptr %200, align 4
  br label %203

203:                                              ; preds = %199, %197
  %204 = call zeroext i1 @device_property_present(ptr noundef nonnull %5, ptr noundef nonnull @.str.47) #7
  br i1 %204, label %205, label %209

205:                                              ; preds = %203
  %206 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 17
  %207 = load i32, ptr %206, align 4
  %208 = or i32 %207, 1048576
  store i32 %208, ptr %206, align 4
  br label %209

209:                                              ; preds = %205, %203
  %210 = call zeroext i1 @device_property_present(ptr noundef nonnull %5, ptr noundef nonnull @.str.48) #7
  br i1 %210, label %211, label %215

211:                                              ; preds = %209
  %212 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 17
  %213 = load i32, ptr %212, align 4
  %214 = or i32 %213, 524288
  store i32 %214, ptr %212, align 4
  br label %215

215:                                              ; preds = %211, %209
  %216 = call zeroext i1 @device_property_present(ptr noundef nonnull %5, ptr noundef nonnull @.str.49) #7
  br i1 %216, label %217, label %221

217:                                              ; preds = %215
  %218 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 17
  %219 = load i32, ptr %218, align 4
  %220 = or i32 %219, 2097152
  store i32 %220, ptr %218, align 4
  br label %221

221:                                              ; preds = %217, %215
  %222 = call zeroext i1 @device_property_present(ptr noundef nonnull %5, ptr noundef nonnull @.str.50) #7
  br i1 %222, label %223, label %227

223:                                              ; preds = %221
  %224 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 17
  %225 = load i32, ptr %224, align 4
  %226 = or i32 %225, 4194304
  store i32 %226, ptr %224, align 4
  br label %227

227:                                              ; preds = %223, %221
  %228 = call zeroext i1 @device_property_present(ptr noundef nonnull %5, ptr noundef nonnull @.str.51) #7
  br i1 %228, label %229, label %233

229:                                              ; preds = %227
  %230 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 17
  %231 = load i32, ptr %230, align 4
  %232 = and i32 %231, -1146881
  store i32 %232, ptr %230, align 4
  br label %233

233:                                              ; preds = %229, %227
  %234 = call i32 @device_property_read_u32_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.52, ptr noundef nonnull %3, i32 noundef 1) #7
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %246

236:                                              ; preds = %233
  %237 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %238 = load i32, ptr %237, align 8
  %239 = and i32 %238, 256
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %244, label %241

241:                                              ; preds = %236
  %242 = load i32, ptr %3, align 4
  %243 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 18
  store i32 %242, ptr %243, align 32
  br label %246

244:                                              ; preds = %236
  %245 = load ptr, ptr %0, align 64
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %245, ptr noundef nonnull @.str.53) #8
  br label %246

246:                                              ; preds = %244, %241, %233
  %247 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 60
  %248 = call i32 @device_property_read_u32_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.54, ptr noundef %247, i32 noundef 1) #7
  %249 = icmp eq i32 %248, 0
  %250 = zext i1 %249 to i32
  %251 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 59
  store i32 %250, ptr %251, align 4
  br i1 %249, label %252, label %257

252:                                              ; preds = %246
  %253 = load i32, ptr %247, align 8
  %254 = icmp ult i32 %253, 65536
  br i1 %254, label %257, label %255

255:                                              ; preds = %252
  %256 = load ptr, ptr %0, align 64
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %256, ptr noundef nonnull @.str.55, i32 noundef %253) #8
  store i32 0, ptr %251, align 4
  br label %257

257:                                              ; preds = %255, %252, %246
  %258 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28, i32 2
  %259 = call i32 @device_property_read_u32_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.56, ptr noundef %258, i32 noundef 1) #7
  %260 = call i32 @mmc_pwrseq_alloc(ptr noundef %0) #7
  br label %261

261:                                              ; preds = %257, %65, %53, %27, %7, %1
  %262 = phi i32 [ -22, %27 ], [ %260, %257 ], [ 0, %7 ], [ 0, %1 ], [ %56, %53 ], [ %66, %65 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %262
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpiod_request_cd(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpiod_request_ro(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_pwrseq_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_of_parse_voltage(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = load ptr, ptr %0, align 64
  %4 = tail call zeroext i1 @device_property_present(ptr noundef %3, ptr noundef nonnull @.str.57) #7
  br i1 %4, label %5, label %43

5:                                                ; preds = %2
  %6 = tail call i32 @device_property_read_u32_array(ptr noundef %3, ptr noundef nonnull @.str.57, ptr noundef null, i32 noundef 0) #7
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %43, label %8

8:                                                ; preds = %5
  %9 = lshr i32 %6, 1
  %10 = icmp ult i32 %6, 2
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.57) #8
  br label %43

12:                                               ; preds = %8
  %13 = and i32 %6, -2
  %14 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %13, i32 4) #7
  %15 = extractvalue { i32, i1 } %14, 1
  br i1 %15, label %43, label %16, !prof !9

16:                                               ; preds = %12
  %17 = extractvalue { i32, i1 } %14, 0
  %18 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %17, i32 noundef 3520) #9
  %19 = icmp eq ptr %18, null
  br i1 %19, label %43, label %20

20:                                               ; preds = %16
  %21 = tail call i32 @device_property_read_u32_array(ptr noundef %3, ptr noundef nonnull @.str.57, ptr noundef nonnull %18, i32 noundef %13) #7
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 @llvm.umax.i32(i32 %9, i32 1)
  br label %26

25:                                               ; preds = %20
  tail call void @kfree(ptr noundef nonnull %18) #7
  br label %43

26:                                               ; preds = %37, %23
  %27 = phi i32 [ %40, %37 ], [ 0, %23 ]
  %28 = shl nuw i32 %27, 1
  %29 = getelementptr i32, ptr %18, i32 %28
  %30 = load i32, ptr %29, align 8
  %31 = or i32 %28, 1
  %32 = getelementptr i32, ptr %18, i32 %31
  %33 = load i32, ptr %32, align 4
  %34 = tail call i32 @mmc_vddrange_to_ocrmask(i32 noundef %30, i32 noundef %33) #7
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.59, i32 noundef %27, ptr noundef nonnull @.str.57) #8
  tail call void @kfree(ptr noundef nonnull %18) #7
  br label %43

37:                                               ; preds = %26
  %38 = load i32, ptr %1, align 4
  %39 = or i32 %38, %34
  store i32 %39, ptr %1, align 4
  %40 = add nuw nsw i32 %27, 1
  %41 = icmp eq i32 %40, %24
  br i1 %41, label %42, label %26

42:                                               ; preds = %37
  tail call void @kfree(ptr noundef nonnull %18) #7
  br label %43

43:                                               ; preds = %42, %36, %25, %16, %12, %11, %5, %2
  %44 = phi i32 [ %21, %25 ], [ 1, %42 ], [ -22, %11 ], [ 0, %2 ], [ %6, %5 ], [ -12, %16 ], [ -22, %36 ], [ -12, %12 ]
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_vddrange_to_ocrmask(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mmc_alloc_host(i32 noundef %0, ptr noundef %1) #0 {
  %3 = add i32 %0, 896
  %4 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %3, i32 noundef 3520) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %68, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 30
  store i32 1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 25
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @of_alias_get_id(ptr noundef %9, ptr noundef nonnull @.str.60) #7
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %20, label %12

12:                                               ; preds = %6
  %13 = tail call i32 @of_alias_get_highest_id(ptr noundef nonnull @.str.60) #7
  %14 = icmp slt i32 %13, 0
  %15 = add i32 %13, 1
  %16 = select i1 %14, i32 0, i32 %15
  %17 = tail call i32 @ida_alloc_range(ptr noundef nonnull @mmc_host_ida, i32 noundef %16, i32 noundef -1, i32 noundef 3264) #7
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  tail call void @kfree(ptr noundef nonnull %4) #7
  br label %68

20:                                               ; preds = %12, %6
  %21 = phi i32 [ %17, %12 ], [ %10, %6 ]
  %22 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 2
  store i32 %21, ptr %22, align 32
  %23 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 1
  %24 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %23, ptr noundef nonnull @.str.61, i32 noundef %21) #7
  %25 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 1, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load ptr, ptr %23, align 8
  br label %30

30:                                               ; preds = %28, %20
  %31 = phi ptr [ %29, %28 ], [ %26, %20 ]
  %32 = tail call ptr @wakeup_source_register(ptr noundef null, ptr noundef %31) #7
  %33 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 12
  store ptr %32, ptr %33, align 8
  store ptr %1, ptr %4, align 64
  %34 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 1, i32 1
  store ptr %1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 1, i32 31
  store ptr @mmc_host_class, ptr %35, align 4
  tail call void @device_initialize(ptr noundef %23) #7
  %36 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 1, i32 11, i32 1
  %37 = load i16, ptr %36, align 4
  %38 = and i16 %37, 8
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = or i16 %37, 2
  store i16 %41, ptr %36, align 4
  br label %42

42:                                               ; preds = %40, %30
  %43 = tail call i32 @mmc_gpio_alloc(ptr noundef nonnull %4) #7
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  tail call void @put_device(ptr noundef %23) #7
  br label %68

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 27
  store i32 0, ptr %47, align 64
  %48 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 38
  tail call void @__init_waitqueue_head(ptr noundef %48, ptr noundef nonnull @.str.62, ptr noundef nonnull @mmc_alloc_host.__key) #7
  %49 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 42
  store i32 -32, ptr %49, align 4
  %50 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 42, i32 0, i32 1
  store volatile ptr %50, ptr %50, align 8
  %51 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 42, i32 0, i32 1, i32 1
  store ptr %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 42, i32 0, i32 2
  store ptr @mmc_rescan, ptr %52, align 16
  %53 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 42, i32 1
  tail call void @init_timer_key(ptr noundef %53, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #7
  %54 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 48
  store i32 -32, ptr %54, align 4
  %55 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 48, i32 0, i32 1
  store volatile ptr %55, ptr %55, align 16
  %56 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 48, i32 0, i32 1, i32 1
  store ptr %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 48, i32 0, i32 2
  store ptr @sdio_irq_work, ptr %57, align 8
  %58 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 48, i32 1
  tail call void @init_timer_key(ptr noundef %58, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #7
  %59 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 35
  tail call void @init_timer_key(ptr noundef %59, ptr noundef nonnull @mmc_retune_timer, i32 noundef 0, ptr noundef null, ptr noundef null) #7
  %60 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 21
  store i16 1, ptr %60, align 4
  %61 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 20
  store i32 4096, ptr %61, align 8
  %62 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 23
  store i32 4096, ptr %62, align 16
  %63 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 24
  store i32 512, ptr %63, align 4
  %64 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 25
  store i32 8, ptr %64, align 8
  %65 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 18
  store i32 -22, ptr %65, align 32
  %66 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 28, i32 2
  store i32 10, ptr %66, align 4
  %67 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 28, i32 5
  store i8 3, ptr %67, align 2
  br label %68

68:                                               ; preds = %46, %45, %19, %2
  %69 = phi ptr [ null, %45 ], [ %4, %46 ], [ null, %19 ], [ null, %2 ]
  ret ptr %69
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wakeup_source_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_rescan(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_irq_work(ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @mmc_retune_timer(ptr nocapture noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -24
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 8
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -12
  store i32 1, ptr %7, align 4
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_add_host(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.mmc_host_ops, ptr %8, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13, !prof !9

12:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 604, i32 noundef 9, ptr noundef null) #7
  br label %13

13:                                               ; preds = %12, %6, %1
  %14 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1
  %15 = tail call i32 @device_add(ptr noundef %14) #7
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load ptr, ptr %14, align 4
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi ptr [ %22, %21 ], [ %19, %17 ]
  %25 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 52
  tail call void @led_trigger_register_simple(ptr noundef %24, ptr noundef %25) #7
  tail call void @mmc_add_host_debugfs(ptr noundef %0) #7
  tail call void @mmc_start_host(ptr noundef %0) #7
  br label %26

26:                                               ; preds = %23, %13
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_register_simple(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_add_host_debugfs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_start_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmc_remove_host(ptr noundef %0) #0 {
  tail call void @mmc_stop_host(ptr noundef %0) #7
  tail call void @mmc_remove_host_debugfs(ptr noundef %0) #7
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1
  tail call void @device_del(ptr noundef %2) #7
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 52
  %4 = load ptr, ptr %3, align 4
  tail call void @led_trigger_unregister_simple(ptr noundef %4) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_stop_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_host_debugfs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_unregister_simple(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmc_free_host(ptr noundef %0) #0 {
  tail call void @mmc_pwrseq_free(ptr noundef %0) #7
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1
  tail call void @put_device(ptr noundef %2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_pwrseq_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mmc_host_classdev_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = getelementptr i8, ptr %0, i32 512
  %4 = load ptr, ptr %3, align 8
  tail call void @wakeup_source_unregister(ptr noundef %4) #7
  %5 = load ptr, ptr %2, align 64
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @of_alias_get_id(ptr noundef %7, ptr noundef nonnull @.str.60) #7
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %0, i32 472
  %12 = load i32, ptr %11, align 32
  tail call void @ida_free(ptr noundef nonnull @mmc_host_ida, i32 noundef %12) #7
  br label %13

13:                                               ; preds = %10, %1
  tail call void @kfree(ptr noundef %2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_host_classdev_shutdown(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  tail call void @__mmc_stop_host(ptr noundef %2) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wakeup_source_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmc_stop_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_host_class_prepare(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = getelementptr i8, ptr %0, i32 728
  %4 = load ptr, ptr %3, align 32
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mmc_bus_ops, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i32 %8(ptr noundef %2) #7
  br label %12

12:                                               ; preds = %10, %6, %1
  %13 = phi i32 [ %11, %10 ], [ 0, %1 ], [ 0, %6 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mmc_host_class_complete(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  tail call void @_mmc_detect_change(ptr noundef %2, i32 noundef 0, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mmc_detect_change(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_highest_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(0) }

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
