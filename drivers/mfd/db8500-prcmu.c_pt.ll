; ModuleID = '/llk/IR/drivers/mfd/db8500-prcmu.c_pt.bc'
source_filename = "../drivers/mfd/db8500-prcmu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_prcmu_configure_auto_pm:\09\09\09\09\09"
module asm "\09.asciz \09\22prcmu_configure_auto_pm\22\09\09\09\09\09"
module asm "__kstrtabns_prcmu_configure_auto_pm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_db8500_prcmu_config_hotmon:\09\09\09\09\09"
module asm "\09.asciz \09\22db8500_prcmu_config_hotmon\22\09\09\09\09\09"
module asm "__kstrtabns_db8500_prcmu_config_hotmon:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_db8500_prcmu_start_temp_sense:\09\09\09\09\09"
module asm "\09.asciz \09\22db8500_prcmu_start_temp_sense\22\09\09\09\09\09"
module asm "__kstrtabns_db8500_prcmu_start_temp_sense:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_db8500_prcmu_stop_temp_sense:\09\09\09\09\09"
module asm "\09.asciz \09\22db8500_prcmu_stop_temp_sense\22\09\09\09\09\09"
module asm "__kstrtabns_db8500_prcmu_stop_temp_sense:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_db8500_prcmu_config_a9wdog:\09\09\09\09\09"
module asm "\09.asciz \09\22db8500_prcmu_config_a9wdog\22\09\09\09\09\09"
module asm "__kstrtabns_db8500_prcmu_config_a9wdog:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_db8500_prcmu_enable_a9wdog:\09\09\09\09\09"
module asm "\09.asciz \09\22db8500_prcmu_enable_a9wdog\22\09\09\09\09\09"
module asm "__kstrtabns_db8500_prcmu_enable_a9wdog:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_db8500_prcmu_disable_a9wdog:\09\09\09\09\09"
module asm "\09.asciz \09\22db8500_prcmu_disable_a9wdog\22\09\09\09\09\09"
module asm "__kstrtabns_db8500_prcmu_disable_a9wdog:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_db8500_prcmu_kick_a9wdog:\09\09\09\09\09"
module asm "\09.asciz \09\22db8500_prcmu_kick_a9wdog\22\09\09\09\09\09"
module asm "__kstrtabns_db8500_prcmu_kick_a9wdog:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_db8500_prcmu_load_a9wdog:\09\09\09\09\09"
module asm "\09.asciz \09\22db8500_prcmu_load_a9wdog\22\09\09\09\09\09"
module asm "__kstrtabns_db8500_prcmu_load_a9wdog:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.anon = type { i8, %struct.prcmu_fw_version }
%struct.prcmu_fw_version = type { i32, i8, i8, i8, [20 x i8] }
%struct.anon.1 = type { %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.mutex, %struct.completion, %struct.anon.2 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.2 = type { i32, i32, i32 }
%struct.anon.3 = type { %struct.mutex, %struct.completion, i8, %struct.anon.4 }
%struct.anon.4 = type { i8, i8, i8, i8 }
%struct.anon.5 = type { %struct.mutex, %struct.completion, %struct.spinlock, i8, %struct.anon.6 }
%struct.anon.6 = type { i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.anon.7 = type { %struct.mutex, %struct.completion }
%struct.anon.8 = type { %struct.mutex, %struct.completion, %struct.anon.9 }
%struct.anon.9 = type { i8, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type {}
%struct.anon.81 = type { %struct.spinlock, %struct.mutex, %struct.completion }
%struct.clk_mgt = type { i32, i32, i32, i8 }
%struct.dsiclk = type { i32, i32, i32 }
%struct.dsiescclk = type { i32, i32, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.regulator_consumer_supply = type { ptr, ptr }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }
%struct.prcmu_auto_pm_config = type { i8, i8, i8, i8, i8, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@prcmu_base = internal unnamed_addr global ptr null, align 4
@prcmu_lock = internal global %struct.spinlock zeroinitializer, align 4
@fw_info = internal global %struct.anon zeroinitializer, align 4
@tcdm_base = internal unnamed_addr global ptr null, align 4
@prcmu_config_clkout.requests = internal unnamed_addr global [2 x i32] zeroinitializer, align 4
@clkout_lock = internal global %struct.spinlock zeroinitializer, align 4
@mb0_transfer = internal global %struct.anon.1 zeroinitializer, align 4
@mb1_transfer = internal global %struct.anon.3 zeroinitializer, align 4
@db8500_prcmu_request_ape_opp_100_voltage.requests = internal unnamed_addr global i32 0, align 4
@mb2_transfer = internal global %struct.anon.5 zeroinitializer, align 4
@.str = private unnamed_addr constant [51 x i8] c"\013prcmu: %s timed out (20 s) waiting for a reply.\0A\00", align 1
@__func__.db8500_prcmu_set_epod = private unnamed_addr constant [22 x i8] c"db8500_prcmu_set_epod\00", align 1
@__kstrtab_prcmu_configure_auto_pm = external dso_local constant [0 x i8], align 1
@__kstrtabns_prcmu_configure_auto_pm = external dso_local constant [0 x i8], align 1
@__ksymtab_prcmu_configure_auto_pm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @prcmu_configure_auto_pm to i32), ptr @__kstrtab_prcmu_configure_auto_pm, ptr @__kstrtabns_prcmu_configure_auto_pm }, section "___ksymtab+prcmu_configure_auto_pm", align 4
@mb4_transfer = internal global %struct.anon.7 zeroinitializer, align 4
@__kstrtab_db8500_prcmu_config_hotmon = external dso_local constant [0 x i8], align 1
@__kstrtabns_db8500_prcmu_config_hotmon = external dso_local constant [0 x i8], align 1
@__ksymtab_db8500_prcmu_config_hotmon = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @db8500_prcmu_config_hotmon to i32), ptr @__kstrtab_db8500_prcmu_config_hotmon, ptr @__kstrtabns_db8500_prcmu_config_hotmon }, section "___ksymtab_gpl+db8500_prcmu_config_hotmon", align 4
@__kstrtab_db8500_prcmu_start_temp_sense = external dso_local constant [0 x i8], align 1
@__kstrtabns_db8500_prcmu_start_temp_sense = external dso_local constant [0 x i8], align 1
@__ksymtab_db8500_prcmu_start_temp_sense = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @db8500_prcmu_start_temp_sense to i32), ptr @__kstrtab_db8500_prcmu_start_temp_sense, ptr @__kstrtabns_db8500_prcmu_start_temp_sense }, section "___ksymtab_gpl+db8500_prcmu_start_temp_sense", align 4
@__kstrtab_db8500_prcmu_stop_temp_sense = external dso_local constant [0 x i8], align 1
@__kstrtabns_db8500_prcmu_stop_temp_sense = external dso_local constant [0 x i8], align 1
@__ksymtab_db8500_prcmu_stop_temp_sense = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @db8500_prcmu_stop_temp_sense to i32), ptr @__kstrtab_db8500_prcmu_stop_temp_sense, ptr @__kstrtabns_db8500_prcmu_stop_temp_sense }, section "___ksymtab_gpl+db8500_prcmu_stop_temp_sense", align 4
@__kstrtab_db8500_prcmu_config_a9wdog = external dso_local constant [0 x i8], align 1
@__kstrtabns_db8500_prcmu_config_a9wdog = external dso_local constant [0 x i8], align 1
@__ksymtab_db8500_prcmu_config_a9wdog = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @db8500_prcmu_config_a9wdog to i32), ptr @__kstrtab_db8500_prcmu_config_a9wdog, ptr @__kstrtabns_db8500_prcmu_config_a9wdog }, section "___ksymtab+db8500_prcmu_config_a9wdog", align 4
@__kstrtab_db8500_prcmu_enable_a9wdog = external dso_local constant [0 x i8], align 1
@__kstrtabns_db8500_prcmu_enable_a9wdog = external dso_local constant [0 x i8], align 1
@__ksymtab_db8500_prcmu_enable_a9wdog = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @db8500_prcmu_enable_a9wdog to i32), ptr @__kstrtab_db8500_prcmu_enable_a9wdog, ptr @__kstrtabns_db8500_prcmu_enable_a9wdog }, section "___ksymtab+db8500_prcmu_enable_a9wdog", align 4
@__kstrtab_db8500_prcmu_disable_a9wdog = external dso_local constant [0 x i8], align 1
@__kstrtabns_db8500_prcmu_disable_a9wdog = external dso_local constant [0 x i8], align 1
@__ksymtab_db8500_prcmu_disable_a9wdog = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @db8500_prcmu_disable_a9wdog to i32), ptr @__kstrtab_db8500_prcmu_disable_a9wdog, ptr @__kstrtabns_db8500_prcmu_disable_a9wdog }, section "___ksymtab+db8500_prcmu_disable_a9wdog", align 4
@__kstrtab_db8500_prcmu_kick_a9wdog = external dso_local constant [0 x i8], align 1
@__kstrtabns_db8500_prcmu_kick_a9wdog = external dso_local constant [0 x i8], align 1
@__ksymtab_db8500_prcmu_kick_a9wdog = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @db8500_prcmu_kick_a9wdog to i32), ptr @__kstrtab_db8500_prcmu_kick_a9wdog, ptr @__kstrtabns_db8500_prcmu_kick_a9wdog }, section "___ksymtab+db8500_prcmu_kick_a9wdog", align 4
@__kstrtab_db8500_prcmu_load_a9wdog = external dso_local constant [0 x i8], align 1
@__kstrtabns_db8500_prcmu_load_a9wdog = external dso_local constant [0 x i8], align 1
@__ksymtab_db8500_prcmu_load_a9wdog = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @db8500_prcmu_load_a9wdog to i32), ptr @__kstrtab_db8500_prcmu_load_a9wdog, ptr @__kstrtabns_db8500_prcmu_load_a9wdog }, section "___ksymtab+db8500_prcmu_load_a9wdog", align 4
@mb5_transfer = internal global %struct.anon.8 zeroinitializer, align 4
@__func__.prcmu_abb_read = private unnamed_addr constant [15 x i8] c"prcmu_abb_read\00", align 1
@__func__.prcmu_abb_write_masked = private unnamed_addr constant [23 x i8] c"prcmu_abb_write_masked\00", align 1
@ac_wake_req_state = internal global %struct.atomic_t zeroinitializer, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"\012prcmu: %s timed out (5 s) waiting for a reply.\0A\00", align 1
@__func__.prcmu_ac_wake_req = private unnamed_addr constant [18 x i8] c"prcmu_ac_wake_req\00", align 1
@__func__.prcmu_ac_sleep_req = private unnamed_addr constant [19 x i8] c"prcmu_ac_sleep_req\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"stericsson,db8500-prcmu\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"\013%s: ioremap() of prcmu registers failed!\0A\00", align 1
@__func__.db8500_prcmu_early_init = private unnamed_addr constant [24 x i8] c"db8500_prcmu_early_init\00", align 1
@db8500_prcmu_early_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"&mb0_transfer.ac_wake_lock\00", align 1
@db8500_prcmu_early_init.__key.5 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"&mb1_transfer.lock\00", align 1
@db8500_prcmu_early_init.__key.7 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"&mb2_transfer.lock\00", align 1
@mb3_transfer = internal global %struct.anon.81 zeroinitializer, align 4
@db8500_prcmu_early_init.__key.9 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"&mb3_transfer.sysclk_lock\00", align 1
@db8500_prcmu_early_init.__key.11 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"&mb4_transfer.lock\00", align 1
@db8500_prcmu_early_init.__key.13 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"&mb5_transfer.lock\00", align 1
@__initcall__kmod_db8500_prcmu__259_3092_db8500_prcmu_init1 = internal global ptr @db8500_prcmu_init, section ".initcall1.init", align 4
@config_wakeups.last_dbb_events = internal unnamed_addr global i32 0, align 4
@config_wakeups.last_abb_events = internal unnamed_addr global i32 0, align 4
@clk_mgt_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.15 = private unnamed_addr constant [37 x i8] c"\013prcmu: Bad clock divider %d in %s\0A\00", align 1
@__func__.request_even_slower_clocks = private unnamed_addr constant [27 x i8] c"request_even_slower_clocks\00", align 1
@clk_mgt = internal unnamed_addr global [38 x %struct.clk_mgt] [%struct.clk_mgt zeroinitializer, %struct.clk_mgt zeroinitializer, %struct.clk_mgt zeroinitializer, %struct.clk_mgt zeroinitializer, %struct.clk_mgt { i32 20, i32 0, i32 2, i8 0 }, %struct.clk_mgt { i32 24, i32 0, i32 1, i8 1 }, %struct.clk_mgt { i32 28, i32 0, i32 1, i8 1 }, %struct.clk_mgt { i32 648, i32 0, i32 1, i8 1 }, %struct.clk_mgt { i32 32, i32 0, i32 1, i8 1 }, %struct.clk_mgt { i32 36, i32 0, i32 2, i8 1 }, %struct.clk_mgt { i32 40, i32 0, i32 1, i8 1 }, %struct.clk_mgt { i32 44, i32 0, i32 2, i8 1 }, %struct.clk_mgt { i32 48, i32 0, i32 2, i8 1 }, %struct.clk_mgt { i32 52, i32 0, i32 2, i8 1 }, %struct.clk_mgt { i32 56, i32 0, i32 2, i8 1 }, %struct.clk_mgt { i32 60, i32 0, i32 2, i8 1 }, %struct.clk_mgt { i32 64, i32 0, i32 2, i8 1 }, %struct.clk_mgt { i32 68, i32 0, i32 1, i8 1 }, %struct.clk_mgt { i32 76, i32 0, i32 2, i8 1 }, %struct.clk_mgt { i32 80, i32 0, i32 2, i8 1 }, %struct.clk_mgt { i32 84, i32 0, i32 2, i8 1 }, %struct.clk_mgt { i32 88, i32 0, i32 1, i8 0 }, %struct.clk_mgt { i32 92, i32 0, i32 2, i8 1 }, %struct.clk_mgt { i32 96, i32 0, i32 2, i8 1 }, %struct.clk_mgt { i32 100, i32 0, i32 2, i8 1 }, %struct.clk_mgt { i32 104, i32 0, i32 1, i8 1 }, %struct.clk_mgt { i32 108, i32 0, i32 1, i8 0 }, %struct.clk_mgt { i32 116, i32 0, i32 2, i8 1 }, %struct.clk_mgt { i32 120, i32 0, i32 2, i8 1 }, %struct.clk_mgt { i32 124, i32 0, i32 1, i8 1 }, %struct.clk_mgt zeroinitializer, %struct.clk_mgt { i32 640, i32 0, i32 1, i8 1 }, %struct.clk_mgt { i32 644, i32 0, i32 1, i8 1 }, %struct.clk_mgt { i32 636, i32 0, i32 1, i8 0 }, %struct.clk_mgt zeroinitializer, %struct.clk_mgt zeroinitializer, %struct.clk_mgt zeroinitializer, %struct.clk_mgt zeroinitializer], align 4
@dsiclk = internal unnamed_addr global [2 x %struct.dsiclk] [%struct.dsiclk { i32 7, i32 0, i32 1 }, %struct.dsiclk { i32 1792, i32 8, i32 1 }], align 4
@dsiescclk = internal unnamed_addr constant [3 x %struct.dsiescclk] [%struct.dsiescclk { i32 16777216, i32 255, i32 0 }, %struct.dsiescclk { i32 33554432, i32 65280, i32 8 }, %struct.dsiescclk { i32 67108864, i32 16711680, i32 16 }], align 4
@__func__.request_sysclk = private unnamed_addr constant [15 x i8] c"request_sysclk\00", align 1
@__const.set_armss_rate.opps = private unnamed_addr constant [4 x i8] c"\07\03\02\04", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"\013no prcmu tcpm mem region provided\0A\00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"\016PRCMU firmware: %s(%d), version %d.%d.%d\0A\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"U8500\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"U8400\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"U9500\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"U8500 MBB\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"U8500 C1\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"U8500 C2\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"U8500 C3\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"U8500 C4\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"U9500 MBL\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"U8500 Samsung 1\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"U8500 MBL2\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"U8520 MBL\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"U8420\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"U8500 Samsung 2\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"U8420-sysclk\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"U9540\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"A9420\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"L8540\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"L8580\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@db8500_prcmu_driver = internal global %struct.platform_driver { ptr @db8500_prcmu_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.39, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @db8500_prcmu_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.39 = private unnamed_addr constant [13 x i8] c"db8500-prcmu\00", align 1
@db8500_prcmu_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"stericsson,db8500-prcmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.40 = private unnamed_addr constant [6 x i8] c"prcmu\00", align 1
@.str.41 = private unnamed_addr constant [33 x i8] c"no prcmu memory region provided\0A\00", align 1
@.str.42 = private unnamed_addr constant [41 x i8] c"failed to ioremap prcmu register memory\0A\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"prcmu-tcdm\00", align 1
@.str.44 = private unnamed_addr constant [31 x i8] c"no prcmu tcdm region provided\0A\00", align 1
@.str.45 = private unnamed_addr constant [46 x i8] c"failed to ioremap prcmu-tcdm register memory\0A\00", align 1
@.str.46 = private unnamed_addr constant [48 x i8] c"\013prcmu: Failed to allocate IRQ_DB8500_PRCMU1.\0A\00", align 1
@common_prcmu_devs = internal constant [2 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.53, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.54, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], align 8
@db8500_irq_domain = internal unnamed_addr global ptr null, align 4
@.str.47 = private unnamed_addr constant [35 x i8] c"\013prcmu: Failed to add subdevices\0A\00", align 1
@.str.48 = private unnamed_addr constant [18 x i8] c"st-ericsson,u8540\00", align 1
@db8500_prcmu_devs = internal constant [2 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.55, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @db8500_regulators, i32 4560, ptr null, ptr @.str.56, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.57, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.58, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], align 8
@.str.49 = private unnamed_addr constant [41 x i8] c"\013prcmu: Failed to add ab8500 subdevice\0A\00", align 1
@.str.50 = private unnamed_addr constant [28 x i8] c"\016DB8500 PRCMU initialized\0A\00", align 1
@read_mailbox = internal unnamed_addr constant [8 x ptr] [ptr @read_mailbox_0, ptr @read_mailbox_1, ptr @read_mailbox_2, ptr @read_mailbox_3, ptr @read_mailbox_4, ptr @read_mailbox_5, ptr @read_mailbox_6, ptr @read_mailbox_7], align 4
@prcmu_irq_bit = internal unnamed_addr constant [23 x i32] [i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 131072, i32 1048576, i32 8388608, i32 16777216, i32 33554432, i32 67108864, i32 134217728, i32 268435456, i32 536870912, i32 1073741824, i32 -2147483648, i32 1024, i32 262144, i32 524288], align 4
@.str.51 = private unnamed_addr constant [52 x i8] c"\014prcmu: Unknown message header (%d) in mailbox %d\0A\00", align 1
@db8500_irq_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr @db8500_irq_map, ptr null, ptr @irq_domain_xlate_twocell, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.52 = private unnamed_addr constant [30 x i8] c"\013Failed to create irqdomain\0A\00", align 1
@prcmu_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.40, ptr null, ptr null, ptr null, ptr @prcmu_irq_mask, ptr @noop, ptr @prcmu_irq_mask, ptr null, ptr @prcmu_irq_unmask, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.53 = private unnamed_addr constant [11 x i8] c"db8500_wdt\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"db8500-cpuidle\00", align 1
@.str.55 = private unnamed_addr constant [24 x i8] c"db8500-prcmu-regulators\00", align 1
@.str.56 = private unnamed_addr constant [34 x i8] c"stericsson,db8500-prcmu-regulator\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"db8500-thermal\00", align 1
@.str.58 = private unnamed_addr constant [26 x i8] c"stericsson,db8500-thermal\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"db8500-vape\00", align 1
@db8500_vape_consumers = internal global [19 x %struct.regulator_consumer_supply] [%struct.regulator_consumer_supply { ptr null, ptr @.str.80 }, %struct.regulator_consumer_supply { ptr @.str.81, ptr @.str.82 }, %struct.regulator_consumer_supply { ptr @.str.83, ptr @.str.82 }, %struct.regulator_consumer_supply { ptr @.str.84, ptr @.str.82 }, %struct.regulator_consumer_supply { ptr @.str.85, ptr @.str.82 }, %struct.regulator_consumer_supply { ptr @.str.86, ptr @.str.82 }, %struct.regulator_consumer_supply { ptr @.str.87, ptr @.str.88 }, %struct.regulator_consumer_supply { ptr @.str.89, ptr @.str.88 }, %struct.regulator_consumer_supply { ptr @.str.90, ptr @.str.88 }, %struct.regulator_consumer_supply { ptr @.str.91, ptr @.str.88 }, %struct.regulator_consumer_supply { ptr @.str.92, ptr @.str.88 }, %struct.regulator_consumer_supply { ptr @.str.93, ptr @.str.94 }, %struct.regulator_consumer_supply { ptr @.str.95, ptr @.str.80 }, %struct.regulator_consumer_supply { ptr @.str.96, ptr @.str.88 }, %struct.regulator_consumer_supply { ptr @.str.97, ptr @.str.88 }, %struct.regulator_consumer_supply { ptr @.str.98, ptr @.str.88 }, %struct.regulator_consumer_supply { ptr @.str.99, ptr @.str.80 }, %struct.regulator_consumer_supply { ptr @.str.100, ptr @.str.101 }, %struct.regulator_consumer_supply { ptr @.str.102, ptr @.str.103 }], align 4
@.str.60 = private unnamed_addr constant [12 x i8] c"db8500-varm\00", align 1
@.str.61 = private unnamed_addr constant [14 x i8] c"db8500-vmodem\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"db8500-vpll\00", align 1
@.str.63 = private unnamed_addr constant [14 x i8] c"db8500-vsmps1\00", align 1
@.str.64 = private unnamed_addr constant [14 x i8] c"db8500-vsmps2\00", align 1
@db8500_vsmps2_consumers = internal global [2 x %struct.regulator_consumer_supply] [%struct.regulator_consumer_supply { ptr @.str.95, ptr @.str.104 }, %struct.regulator_consumer_supply { ptr @.str.105, ptr @.str.106 }], align 4
@.str.65 = private unnamed_addr constant [14 x i8] c"db8500-vsmps3\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"db8500-vrf1\00", align 1
@.str.67 = private unnamed_addr constant [17 x i8] c"db8500-sva-mmdsp\00", align 1
@db8500_svammdsp_consumers = internal global [1 x %struct.regulator_consumer_supply] [%struct.regulator_consumer_supply { ptr @.str.107, ptr @.str.108 }], align 4
@.str.68 = private unnamed_addr constant [21 x i8] c"db8500-sva-mmdsp-ret\00", align 1
@.str.69 = private unnamed_addr constant [16 x i8] c"db8500-sva-pipe\00", align 1
@db8500_svapipe_consumers = internal global [1 x %struct.regulator_consumer_supply] [%struct.regulator_consumer_supply { ptr @.str.107, ptr @.str.109 }], align 4
@.str.70 = private unnamed_addr constant [17 x i8] c"db8500-sia-mmdsp\00", align 1
@db8500_siammdsp_consumers = internal global [1 x %struct.regulator_consumer_supply] [%struct.regulator_consumer_supply { ptr @.str.107, ptr @.str.110 }], align 4
@.str.71 = private unnamed_addr constant [21 x i8] c"db8500-sia-mmdsp-ret\00", align 1
@.str.72 = private unnamed_addr constant [16 x i8] c"db8500-sia-pipe\00", align 1
@db8500_siapipe_consumers = internal global [1 x %struct.regulator_consumer_supply] [%struct.regulator_consumer_supply { ptr @.str.107, ptr @.str.111 }], align 4
@.str.73 = private unnamed_addr constant [11 x i8] c"db8500-sga\00", align 1
@db8500_sga_consumers = internal global [1 x %struct.regulator_consumer_supply] [%struct.regulator_consumer_supply { ptr null, ptr @.str.112 }], align 4
@.str.74 = private unnamed_addr constant [17 x i8] c"db8500-b2r2-mcde\00", align 1
@db8500_b2r2_mcde_consumers = internal global [2 x %struct.regulator_consumer_supply] [%struct.regulator_consumer_supply { ptr @.str.113, ptr @.str.114 }, %struct.regulator_consumer_supply { ptr @.str.115, ptr @.str.114 }], align 4
@.str.75 = private unnamed_addr constant [15 x i8] c"db8500-esram12\00", align 1
@db8500_esram12_consumers = internal global [1 x %struct.regulator_consumer_supply] [%struct.regulator_consumer_supply { ptr @.str.107, ptr @.str.116 }], align 4
@.str.76 = private unnamed_addr constant [19 x i8] c"db8500-esram12-ret\00", align 1
@.str.77 = private unnamed_addr constant [15 x i8] c"db8500-esram34\00", align 1
@db8500_esram34_consumers = internal global [3 x %struct.regulator_consumer_supply] [%struct.regulator_consumer_supply { ptr @.str.115, ptr @.str.117 }, %struct.regulator_consumer_supply { ptr @.str.107, ptr @.str.118 }, %struct.regulator_consumer_supply { ptr @.str.93, ptr @.str.119 }], align 4
@.str.78 = private unnamed_addr constant [19 x i8] c"db8500-esram34-ret\00", align 1
@db8500_regulators = internal global [20 x { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }] [{ ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.59, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 8, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 1, i8 0 }, i32 19, ptr @db8500_vape_consumers, ptr null, ptr null }, { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.60, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 8, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0 }, i32 0, ptr null, ptr null, ptr null }, { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.61, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 8, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0 }, i32 0, ptr null, ptr null, ptr null }, { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.62, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 8, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0 }, i32 0, ptr null, ptr null, ptr null }, { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 8, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0 }, i32 0, ptr null, ptr null, ptr null }, { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.64, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 8, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0 }, i32 2, ptr @db8500_vsmps2_consumers, ptr null, ptr null }, { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.65, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 8, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0 }, i32 0, ptr null, ptr null, ptr null }, { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.66, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 8, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0 }, i32 0, ptr null, ptr null, ptr null }, { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.67, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 8, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0 }, i32 1, ptr @db8500_svammdsp_consumers, ptr null, ptr null }, { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.68, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 8, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0 }, i32 0, ptr null, ptr null, ptr null }, { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.69, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 8, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0 }, i32 1, ptr @db8500_svapipe_consumers, ptr null, ptr null }, { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.70, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 8, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0 }, i32 1, ptr @db8500_siammdsp_consumers, ptr null, ptr null }, { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.71, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 8, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0 }, i32 0, ptr null, ptr null, ptr null }, { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.72, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 8, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0 }, i32 1, ptr @db8500_siapipe_consumers, ptr null, ptr null }, { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr @.str.59, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.73, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 8, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0 }, i32 1, ptr @db8500_sga_consumers, ptr null, ptr null }, { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr @.str.59, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.74, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 8, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0 }, i32 2, ptr @db8500_b2r2_mcde_consumers, ptr null, ptr null }, { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.75, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 8, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0 }, i32 1, ptr @db8500_esram12_consumers, ptr null, ptr null }, { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.76, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 8, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0 }, i32 0, ptr null, ptr null, ptr null }, { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.77, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 8, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0 }, i32 3, ptr @db8500_esram34_consumers, ptr null, ptr null }, { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.78, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 8, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0 }, i32 0, ptr null, ptr null, ptr null }], align 4
@.str.80 = private unnamed_addr constant [6 x i8] c"v-ape\00", align 1
@.str.81 = private unnamed_addr constant [10 x i8] c"nmk-i2c.0\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"v-i2c\00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"nmk-i2c.1\00", align 1
@.str.84 = private unnamed_addr constant [10 x i8] c"nmk-i2c.2\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"nmk-i2c.3\00", align 1
@.str.86 = private unnamed_addr constant [10 x i8] c"nmk-i2c.4\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"sdi0\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"vcore\00", align 1
@.str.89 = private unnamed_addr constant [5 x i8] c"sdi1\00", align 1
@.str.90 = private unnamed_addr constant [5 x i8] c"sdi2\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"sdi3\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"sdi4\00", align 1
@.str.93 = private unnamed_addr constant [8 x i8] c"dma40.0\00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"v-dma\00", align 1
@.str.95 = private unnamed_addr constant [13 x i8] c"ab8500-usb.0\00", align 1
@.str.96 = private unnamed_addr constant [6 x i8] c"uart0\00", align 1
@.str.97 = private unnamed_addr constant [6 x i8] c"uart1\00", align 1
@.str.98 = private unnamed_addr constant [6 x i8] c"uart2\00", align 1
@.str.99 = private unnamed_addr constant [17 x i8] c"nmk-ske-keypad.0\00", align 1
@.str.100 = private unnamed_addr constant [10 x i8] c"ste_hsi.0\00", align 1
@.str.101 = private unnamed_addr constant [6 x i8] c"v-hsi\00", align 1
@.str.102 = private unnamed_addr constant [11 x i8] c"smsc911x.0\00", align 1
@.str.103 = private unnamed_addr constant [9 x i8] c"vddvario\00", align 1
@.str.104 = private unnamed_addr constant [9 x i8] c"musb_1v8\00", align 1
@.str.105 = private unnamed_addr constant [7 x i8] c"0-0070\00", align 1
@.str.106 = private unnamed_addr constant [9 x i8] c"hdmi_1v8\00", align 1
@.str.107 = private unnamed_addr constant [11 x i8] c"cm_control\00", align 1
@.str.108 = private unnamed_addr constant [10 x i8] c"sva-mmdsp\00", align 1
@.str.109 = private unnamed_addr constant [9 x i8] c"sva-pipe\00", align 1
@.str.110 = private unnamed_addr constant [10 x i8] c"sia-mmdsp\00", align 1
@.str.111 = private unnamed_addr constant [9 x i8] c"sia-pipe\00", align 1
@.str.112 = private unnamed_addr constant [7 x i8] c"v-mali\00", align 1
@.str.113 = private unnamed_addr constant [9 x i8] c"b2r2_bus\00", align 1
@.str.114 = private unnamed_addr constant [8 x i8] c"vsupply\00", align 1
@.str.115 = private unnamed_addr constant [5 x i8] c"mcde\00", align 1
@.str.116 = private unnamed_addr constant [8 x i8] c"esram12\00", align 1
@.str.117 = private unnamed_addr constant [10 x i8] c"v-esram34\00", align 1
@.str.118 = private unnamed_addr constant [8 x i8] c"esram34\00", align 1
@.str.119 = private unnamed_addr constant [11 x i8] c"lcla_esram\00", align 1
@.str.120 = private unnamed_addr constant [12 x i8] c"ab8500-core\00", align 1
@.str.121 = private unnamed_addr constant [18 x i8] c"stericsson,ab8500\00", align 1
@.str.122 = private unnamed_addr constant [12 x i8] c"ab8505-core\00", align 1
@.str.123 = private unnamed_addr constant [18 x i8] c"stericsson,ab8505\00", align 1
@.str.124 = private unnamed_addr constant [47 x i8] c"could not find AB850X node in the device tree\0A\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__initcall__kmod_db8500_prcmu__259_3092_db8500_prcmu_init1, ptr @__ksymtab_db8500_prcmu_config_a9wdog, ptr @__ksymtab_db8500_prcmu_config_hotmon, ptr @__ksymtab_db8500_prcmu_disable_a9wdog, ptr @__ksymtab_db8500_prcmu_enable_a9wdog, ptr @__ksymtab_db8500_prcmu_kick_a9wdog, ptr @__ksymtab_db8500_prcmu_load_a9wdog, ptr @__ksymtab_db8500_prcmu_start_temp_sense, ptr @__ksymtab_db8500_prcmu_stop_temp_sense, ptr @__ksymtab_prcmu_configure_auto_pm], section "llvm.metadata"
@switch.table.prcmu_clock_rate = private unnamed_addr constant [3 x i32] [i32 1, i32 2, i32 4], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @db8500_prcmu_read(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @prcmu_base, align 4
  %3 = getelementptr i8, ptr %2, i32 %0
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  ret i32 %4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @db8500_prcmu_write(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @prcmu_lock) #11
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !10
  tail call void @arm_heavy_mb() #11
  %4 = load ptr, ptr @prcmu_base, align 4
  %5 = getelementptr i8, ptr %4, i32 %0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %1) #11, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @prcmu_lock, i32 noundef %3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @db8500_prcmu_write_masked(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @prcmu_lock) #11
  %5 = load ptr, ptr @prcmu_base, align 4
  %6 = getelementptr i8, ptr %5, i32 %0
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %8 = xor i32 %1, -1
  %9 = and i32 %7, %8
  %10 = and i32 %2, %1
  %11 = or i32 %9, %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !13
  tail call void @arm_heavy_mb() #11
  %12 = load ptr, ptr @prcmu_base, align 4
  %13 = getelementptr i8, ptr %12, i32 %0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #11, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @prcmu_lock, i32 noundef %4) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @prcmu_get_fw_version() local_unnamed_addr #3 {
  %1 = load i8, ptr @fw_info, align 4, !range !14
  %2 = icmp eq i8 %1, 0
  %3 = select i1 %2, ptr null, ptr getelementptr inbounds (%struct.anon, ptr @fw_info, i32 0, i32 1)
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @prcmu_has_arm_maxopp() local_unnamed_addr #0 {
  %1 = load ptr, ptr @tcdm_base, align 4
  %2 = getelementptr i8, ptr %1, i32 768
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %2) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !16
  %4 = icmp slt i8 %3, 0
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @prcmu_set_rc_a2p(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add i32 %0, -17
  %3 = icmp ult i32 %2, -8
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !17
  tail call void @arm_heavy_mb() #11
  %5 = trunc i32 %0 to i8
  %6 = load ptr, ptr @tcdm_base, align 4
  %7 = getelementptr i8, ptr %6, i32 4094
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 %5) #11, !srcloc !18
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i32 [ 0, %4 ], [ -22, %1 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @prcmu_get_rc_p2a() local_unnamed_addr #0 {
  %1 = load ptr, ptr @tcdm_base, align 4
  %2 = getelementptr i8, ptr %1, i32 4093
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %2) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !19
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @prcmu_get_xp70_current_state() local_unnamed_addr #0 {
  %1 = load ptr, ptr @tcdm_base, align 4
  %2 = getelementptr i8, ptr %1, i32 4092
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %2) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !20
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @prcmu_config_clkout(i8 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = zext i8 %0 to i32
  %5 = icmp ugt i8 %0, 1
  br i1 %5, label %6, label %7, !prof !21

6:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mfd/db8500-prcmu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 647, 0\0A.popsection", ""() #11, !srcloc !22
  unreachable

7:                                                ; preds = %3
  %8 = zext i8 %2 to i32
  %9 = icmp ugt i8 %2, 63
  br i1 %9, label %10, label %11, !prof !21

10:                                               ; preds = %7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mfd/db8500-prcmu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 648, 0\0A.popsection", ""() #11, !srcloc !23
  unreachable

11:                                               ; preds = %7
  %12 = icmp eq i8 %0, 0
  %13 = zext i8 %1 to i32
  %14 = icmp ugt i8 %1, 7
  %15 = and i1 %12, %14
  br i1 %15, label %16, label %17, !prof !21

16:                                               ; preds = %11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mfd/db8500-prcmu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 649, 0\0A.popsection", ""() #11, !srcloc !24
  unreachable

17:                                               ; preds = %11
  %18 = icmp eq i8 %2, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %17
  %20 = getelementptr [2 x i32], ptr @prcmu_config_clkout.requests, i32 0, i32 %4
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %59, label %23

23:                                               ; preds = %19, %17
  %24 = shl nuw nsw i32 %13, 6
  %25 = or i32 %24, %8
  %26 = shl nuw nsw i32 %13, 22
  %27 = shl nuw nsw i32 %8, 16
  %28 = or i32 %27, %26
  %29 = select i1 %12, i32 511, i32 301924352
  %30 = select i1 %12, i32 63, i32 4128768
  %31 = select i1 %12, i32 %25, i32 %28
  %32 = and i32 %31, %29
  %33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @clkout_lock) #11
  %34 = load ptr, ptr @prcmu_base, align 4
  %35 = getelementptr i8, ptr %34, i32 460
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !25
  %37 = and i32 %36, %30
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %23
  %40 = and i32 %36, %29
  br i1 %18, label %43, label %41

41:                                               ; preds = %39
  %42 = icmp eq i32 %40, %32
  br i1 %42, label %47, label %57

43:                                               ; preds = %39
  %44 = xor i32 %30, -1
  %45 = and i32 %40, %44
  %46 = icmp eq i32 %45, %32
  br i1 %46, label %47, label %57

47:                                               ; preds = %43, %41, %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !26
  tail call void @arm_heavy_mb() #11
  %48 = xor i32 %29, -1
  %49 = and i32 %36, %48
  %50 = or i32 %49, %32
  %51 = load ptr, ptr @prcmu_base, align 4
  %52 = getelementptr i8, ptr %51, i32 460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #11, !srcloc !11
  %53 = select i1 %18, i32 -1, i32 1
  %54 = getelementptr [2 x i32], ptr @prcmu_config_clkout.requests, i32 0, i32 %4
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, %53
  store i32 %56, ptr %54, align 4
  br label %57

57:                                               ; preds = %47, %43, %41
  %58 = phi i32 [ 0, %47 ], [ -16, %41 ], [ -22, %43 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @clkout_lock, i32 noundef %33) #11
  br label %59

59:                                               ; preds = %57, %19
  %60 = phi i32 [ %58, %57 ], [ -22, %19 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @db8500_prcmu_set_power_state(i8 noundef zeroext %0, i1 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = add i8 %0, -8
  %5 = icmp ult i8 %4, -7
  br i1 %5, label %6, label %7, !prof !21

6:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mfd/db8500-prcmu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 697, 0\0A.popsection", ""() #11, !srcloc !27
  unreachable

7:                                                ; preds = %3
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @mb0_transfer) #11
  %9 = load ptr, ptr @prcmu_base, align 4
  %10 = getelementptr i8, ptr %9, i32 252
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !28
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %14, %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !29
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !30
  %15 = load ptr, ptr @prcmu_base, align 4
  %16 = getelementptr i8, ptr %15, i32 252
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !28
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %14

20:                                               ; preds = %14, %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !31
  tail call void @arm_heavy_mb() #11
  %21 = load ptr, ptr @tcdm_base, align 4
  %22 = getelementptr i8, ptr %21, i32 4072
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %22, i8 0) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !32
  tail call void @arm_heavy_mb() #11
  %23 = load ptr, ptr @tcdm_base, align 4
  %24 = getelementptr i8, ptr %23, i32 4060
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %24, i8 %0) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !33
  tail call void @arm_heavy_mb() #11
  %25 = zext i1 %2 to i8
  %26 = load ptr, ptr @tcdm_base, align 4
  %27 = getelementptr i8, ptr %26, i32 4061
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %27, i8 %25) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !34
  tail call void @arm_heavy_mb() #11
  %28 = zext i1 %1 to i8
  %29 = load ptr, ptr @tcdm_base, align 4
  %30 = getelementptr i8, ptr %29, i32 4062
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %30, i8 %28) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !35
  tail call void @arm_heavy_mb() #11
  %31 = load ptr, ptr @tcdm_base, align 4
  %32 = getelementptr i8, ptr %31, i32 4063
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %32, i8 0) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !36
  tail call void @arm_heavy_mb() #11
  %33 = load ptr, ptr @prcmu_base, align 4
  %34 = getelementptr i8, ptr %33, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 1) #11, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @mb0_transfer, i32 noundef %8) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @db8500_prcmu_get_power_state_result() local_unnamed_addr #0 {
  %1 = load ptr, ptr @tcdm_base, align 4
  %2 = getelementptr i8, ptr %1, i32 3592
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %2) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !37
  ret i8 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @db8500_prcmu_enable_wakeups(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ult i32 %0, 1024
  br i1 %2, label %3, label %18, !prof !38

3:                                                ; preds = %1
  %4 = and i32 %0, 31
  %5 = shl i32 %0, 1
  %6 = and i32 %5, 64
  %7 = or i32 %6, %4
  %8 = shl i32 %0, 1
  %9 = and i32 %8, 128
  %10 = or i32 %9, %7
  %11 = shl i32 %0, 1
  %12 = and i32 %11, 256
  %13 = or i32 %12, %10
  %14 = shl i32 %0, 9
  %15 = and i32 %14, 131072
  %16 = or i32 %15, %13
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @mb0_transfer) #11
  store i32 %16, ptr getelementptr inbounds (%struct.anon.1, ptr @mb0_transfer, i32 0, i32 5, i32 1), align 4
  tail call fastcc void @config_wakeups()
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @mb0_transfer, i32 noundef %17) #11
  ret void

18:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mfd/db8500-prcmu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 761, 0\0A.popsection", ""() #11, !srcloc !39
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @config_wakeups() unnamed_addr #0 {
  %1 = load i32, ptr getelementptr inbounds (%struct.anon.1, ptr @mb0_transfer, i32 0, i32 5), align 4
  %2 = load i32, ptr getelementptr inbounds (%struct.anon.1, ptr @mb0_transfer, i32 0, i32 5, i32 1), align 4
  %3 = or i32 %1, %2
  %4 = or i32 %3, 34816
  %5 = load i32, ptr getelementptr inbounds (%struct.anon.1, ptr @mb0_transfer, i32 0, i32 5, i32 2), align 4
  %6 = load i32, ptr @config_wakeups.last_dbb_events, align 4
  %7 = icmp eq i32 %4, %6
  %8 = load i32, ptr @config_wakeups.last_abb_events, align 4
  %9 = icmp eq i32 %5, %8
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %52, label %11

11:                                               ; preds = %0
  %12 = load ptr, ptr @prcmu_base, align 4
  %13 = getelementptr i8, ptr %12, i32 252
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !40
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %17, %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !41
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !42
  %18 = load ptr, ptr @prcmu_base, align 4
  %19 = getelementptr i8, ptr %18, i32 252
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !40
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %17

23:                                               ; preds = %17, %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !43
  tail call void @arm_heavy_mb() #11
  %24 = load ptr, ptr @tcdm_base, align 4
  %25 = getelementptr i8, ptr %24, i32 4064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %4) #11, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !44
  tail call void @arm_heavy_mb() #11
  %26 = load ptr, ptr @tcdm_base, align 4
  %27 = getelementptr i8, ptr %26, i32 4068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %5) #11, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !45
  tail call void @arm_heavy_mb() #11
  %28 = load ptr, ptr @tcdm_base, align 4
  %29 = getelementptr i8, ptr %28, i32 4072
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %29, i8 1) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !46
  tail call void @arm_heavy_mb() #11
  %30 = load ptr, ptr @prcmu_base, align 4
  %31 = getelementptr i8, ptr %30, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 1) #11, !srcloc !11
  %32 = load ptr, ptr @prcmu_base, align 4
  %33 = getelementptr i8, ptr %32, i32 252
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !40
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %37, %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !41
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !42
  %38 = load ptr, ptr @prcmu_base, align 4
  %39 = getelementptr i8, ptr %38, i32 252
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !40
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %37

43:                                               ; preds = %37, %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !43
  tail call void @arm_heavy_mb() #11
  %44 = load ptr, ptr @tcdm_base, align 4
  %45 = getelementptr i8, ptr %44, i32 4064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %4) #11, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !44
  tail call void @arm_heavy_mb() #11
  %46 = load ptr, ptr @tcdm_base, align 4
  %47 = getelementptr i8, ptr %46, i32 4068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %5) #11, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !45
  tail call void @arm_heavy_mb() #11
  %48 = load ptr, ptr @tcdm_base, align 4
  %49 = getelementptr i8, ptr %48, i32 4072
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %49, i8 4) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !46
  tail call void @arm_heavy_mb() #11
  %50 = load ptr, ptr @prcmu_base, align 4
  %51 = getelementptr i8, ptr %50, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 1) #11, !srcloc !11
  store i32 %4, ptr @config_wakeups.last_dbb_events, align 4
  store i32 %5, ptr @config_wakeups.last_abb_events, align 4
  br label %52

52:                                               ; preds = %43, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @db8500_prcmu_config_abb_event_readout(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @mb0_transfer) #11
  store i32 %0, ptr getelementptr inbounds (%struct.anon.1, ptr @mb0_transfer, i32 0, i32 5, i32 2), align 4
  tail call fastcc void @config_wakeups()
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @mb0_transfer, i32 noundef %2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @db8500_prcmu_get_abb_event_buffer(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @tcdm_base, align 4
  %3 = getelementptr i8, ptr %2, i32 3593
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !47
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  %7 = load ptr, ptr @tcdm_base, align 4
  %8 = select i1 %6, i32 3600, i32 3624
  %9 = getelementptr i8, ptr %7, i32 %8
  store ptr %9, ptr %0, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @db8500_prcmu_set_arm_opp(i8 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = add i8 %0, -8
  %3 = icmp ult i8 %2, -7
  br i1 %3, label %31, label %4

4:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @mb1_transfer) #11
  %5 = load ptr, ptr @prcmu_base, align 4
  %6 = getelementptr i8, ptr %5, i32 252
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !48
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %10, %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !49
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !50
  %11 = load ptr, ptr @prcmu_base, align 4
  %12 = getelementptr i8, ptr %11, i32 252
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !48
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %10

16:                                               ; preds = %10, %4
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !51
  tail call void @arm_heavy_mb() #11
  %17 = load ptr, ptr @tcdm_base, align 4
  %18 = getelementptr i8, ptr %17, i32 4073
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %18, i8 0) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !52
  tail call void @arm_heavy_mb() #11
  %19 = load ptr, ptr @tcdm_base, align 4
  %20 = getelementptr i8, ptr %19, i32 4048
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %20, i8 %0) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !53
  tail call void @arm_heavy_mb() #11
  %21 = load ptr, ptr @tcdm_base, align 4
  %22 = getelementptr i8, ptr %21, i32 4049
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %22, i8 1) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !54
  tail call void @arm_heavy_mb() #11
  %23 = load ptr, ptr @prcmu_base, align 4
  %24 = getelementptr i8, ptr %23, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 2) #11, !srcloc !11
  tail call void @wait_for_completion(ptr noundef getelementptr inbounds (%struct.anon.3, ptr @mb1_transfer, i32 0, i32 1)) #11
  %25 = load i8, ptr getelementptr inbounds (%struct.anon.3, ptr @mb1_transfer, i32 0, i32 3), align 1
  %26 = icmp eq i8 %25, 0
  %27 = load i8, ptr getelementptr inbounds (%struct.anon.3, ptr @mb1_transfer, i32 0, i32 3, i32 1), align 2
  %28 = icmp eq i8 %27, %0
  %29 = select i1 %26, i1 %28, i1 false
  %30 = select i1 %29, i32 0, i32 -5
  tail call void @mutex_unlock(ptr noundef nonnull @mb1_transfer) #11
  br label %31

31:                                               ; preds = %16, %1
  %32 = phi i32 [ %30, %16 ], [ -22, %1 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @db8500_prcmu_get_arm_opp() local_unnamed_addr #0 {
  %1 = load ptr, ptr @tcdm_base, align 4
  %2 = getelementptr i8, ptr %1, i32 3588
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %2) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !55
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @db8500_prcmu_get_ddr_opp() local_unnamed_addr #0 {
  %1 = load ptr, ptr @prcmu_base, align 4
  %2 = getelementptr i8, ptr %1, i32 1080
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %2) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !56
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @db8500_prcmu_set_ape_opp(i8 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr inbounds (%struct.anon.3, ptr @mb1_transfer, i32 0, i32 2), align 4
  %3 = icmp eq i8 %2, %0
  br i1 %3, label %52, label %4

4:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @mb1_transfer) #11
  %5 = load i8, ptr getelementptr inbounds (%struct.anon.3, ptr @mb1_transfer, i32 0, i32 2), align 4
  %6 = icmp eq i8 %5, -1
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  tail call fastcc void @request_even_slower_clocks(i1 noundef zeroext false)
  %8 = load i8, ptr getelementptr inbounds (%struct.anon.3, ptr @mb1_transfer, i32 0, i32 2), align 4
  br label %9

9:                                                ; preds = %7, %4
  %10 = phi i8 [ %8, %7 ], [ %5, %4 ]
  %11 = icmp ne i8 %0, 2
  %12 = icmp ne i8 %10, 2
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %42, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr @prcmu_base, align 4
  %16 = getelementptr i8, ptr %15, i32 252
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !57
  %18 = and i32 %17, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %20, %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !58
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !59
  %21 = load ptr, ptr @prcmu_base, align 4
  %22 = getelementptr i8, ptr %21, i32 252
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !57
  %24 = and i32 %23, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %20

26:                                               ; preds = %20, %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !60
  tail call void @arm_heavy_mb() #11
  %27 = load ptr, ptr @tcdm_base, align 4
  %28 = getelementptr i8, ptr %27, i32 4073
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %28, i8 0) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !61
  tail call void @arm_heavy_mb() #11
  %29 = load ptr, ptr @tcdm_base, align 4
  %30 = getelementptr i8, ptr %29, i32 4048
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %30, i8 1) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !62
  tail call void @arm_heavy_mb() #11
  %31 = icmp eq i8 %0, -1
  %32 = select i1 %31, i8 3, i8 %0
  %33 = load ptr, ptr @tcdm_base, align 4
  %34 = getelementptr i8, ptr %33, i32 4049
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %34, i8 %32) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !63
  tail call void @arm_heavy_mb() #11
  %35 = load ptr, ptr @prcmu_base, align 4
  %36 = getelementptr i8, ptr %35, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 2) #11, !srcloc !11
  tail call void @wait_for_completion(ptr noundef getelementptr inbounds (%struct.anon.3, ptr @mb1_transfer, i32 0, i32 1)) #11
  %37 = load i8, ptr getelementptr inbounds (%struct.anon.3, ptr @mb1_transfer, i32 0, i32 3), align 1
  %38 = icmp eq i8 %37, 0
  %39 = load i8, ptr getelementptr inbounds (%struct.anon.3, ptr @mb1_transfer, i32 0, i32 3, i32 2), align 1
  %40 = icmp eq i8 %39, %0
  %41 = select i1 %38, i1 %40, i1 false
  br i1 %41, label %42, label %45

42:                                               ; preds = %26, %9
  %43 = icmp eq i8 %0, -1
  br i1 %43, label %44, label %49

44:                                               ; preds = %42
  tail call fastcc void @request_even_slower_clocks(i1 noundef zeroext true)
  br label %49

45:                                               ; preds = %26
  %46 = load i8, ptr getelementptr inbounds (%struct.anon.3, ptr @mb1_transfer, i32 0, i32 2), align 4
  %47 = icmp eq i8 %46, -1
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  tail call fastcc void @request_even_slower_clocks(i1 noundef zeroext true)
  br label %50

49:                                               ; preds = %44, %42
  store i8 %0, ptr getelementptr inbounds (%struct.anon.3, ptr @mb1_transfer, i32 0, i32 2), align 4
  br label %50

50:                                               ; preds = %49, %48, %45
  %51 = phi i32 [ 0, %49 ], [ -5, %48 ], [ -5, %45 ]
  tail call void @mutex_unlock(ptr noundef nonnull @mb1_transfer) #11
  br label %52

52:                                               ; preds = %50, %1
  %53 = phi i32 [ %51, %50 ], [ 0, %1 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @request_even_slower_clocks(i1 noundef zeroext %0) unnamed_addr #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @clk_mgt_lock) #11
  %3 = load ptr, ptr @prcmu_base, align 4
  %4 = getelementptr i8, ptr %3, i32 1024
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !64
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %13, %1
  %9 = load ptr, ptr @prcmu_base, align 4
  %10 = getelementptr i8, ptr %9, i32 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !65
  %12 = and i32 %11, 31
  br i1 %0, label %19, label %27

13:                                               ; preds = %13, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !66
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !67
  %14 = load ptr, ptr @prcmu_base, align 4
  %15 = getelementptr i8, ptr %14, i32 1024
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !64
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %8, label %13

19:                                               ; preds = %8
  %20 = add nsw i32 %12, -16
  %21 = icmp ult i32 %20, -14
  br i1 %21, label %22, label %25

22:                                               ; preds = %45, %19
  %23 = phi i32 [ %12, %19 ], [ %40, %45 ]
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %23, ptr noundef nonnull @__func__.request_even_slower_clocks) #12
  br label %56

25:                                               ; preds = %19
  %26 = shl nuw nsw i32 %12, 1
  br label %31

27:                                               ; preds = %8
  %28 = icmp ult i32 %12, 3
  br i1 %28, label %56, label %29

29:                                               ; preds = %27
  %30 = lshr i32 %12, 1
  br label %31

31:                                               ; preds = %29, %25
  %32 = phi i32 [ %26, %25 ], [ %30, %29 ]
  %33 = and i32 %11, -32
  %34 = or i32 %32, %33
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !68
  tail call void @arm_heavy_mb() #11
  %35 = load ptr, ptr @prcmu_base, align 4
  %36 = getelementptr i8, ptr %35, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #11, !srcloc !11
  %37 = load ptr, ptr @prcmu_base, align 4
  %38 = getelementptr i8, ptr %37, i32 116
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !65
  %40 = and i32 %39, 31
  br i1 %0, label %45, label %41

41:                                               ; preds = %31
  %42 = icmp ult i32 %40, 3
  br i1 %42, label %56, label %43

43:                                               ; preds = %41
  %44 = lshr i32 %40, 1
  br label %50

45:                                               ; preds = %31
  %46 = add nsw i32 %40, -16
  %47 = icmp ult i32 %46, -14
  br i1 %47, label %22, label %48

48:                                               ; preds = %45
  %49 = shl nuw nsw i32 %40, 1
  br label %50

50:                                               ; preds = %48, %43
  %51 = phi i32 [ %49, %48 ], [ %44, %43 ]
  %52 = and i32 %39, -32
  %53 = or i32 %51, %52
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !68
  tail call void @arm_heavy_mb() #11
  %54 = load ptr, ptr @prcmu_base, align 4
  %55 = getelementptr i8, ptr %54, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #11, !srcloc !11
  br label %56

56:                                               ; preds = %50, %41, %27, %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !69
  tail call void @arm_heavy_mb() #11
  %57 = load ptr, ptr @prcmu_base, align 4
  %58 = getelementptr i8, ptr %57, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 0) #11, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @clk_mgt_lock, i32 noundef %2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @db8500_prcmu_get_ape_opp() local_unnamed_addr #0 {
  %1 = load ptr, ptr @tcdm_base, align 4
  %2 = getelementptr i8, ptr %1, i32 3589
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %2) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !70
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @db8500_prcmu_request_ape_opp_100_voltage(i1 noundef zeroext %0) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @mb1_transfer) #11
  %2 = load i32, ptr @db8500_prcmu_request_ape_opp_100_voltage.requests, align 4
  br i1 %0, label %3, label %6

3:                                                ; preds = %1
  %4 = add i32 %2, 1
  store i32 %4, ptr @db8500_prcmu_request_ape_opp_100_voltage.requests, align 4
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %11, label %36

6:                                                ; preds = %1
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %36, label %8

8:                                                ; preds = %6
  %9 = add i32 %2, -1
  store i32 %9, ptr @db8500_prcmu_request_ape_opp_100_voltage.requests, align 4
  %10 = icmp eq i32 %2, 1
  br i1 %10, label %11, label %36

11:                                               ; preds = %8, %3
  %12 = phi i8 [ 3, %3 ], [ 4, %8 ]
  %13 = load ptr, ptr @prcmu_base, align 4
  %14 = getelementptr i8, ptr %13, i32 252
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !71
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %18, %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !72
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !73
  %19 = load ptr, ptr @prcmu_base, align 4
  %20 = getelementptr i8, ptr %19, i32 252
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !71
  %22 = and i32 %21, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %18

24:                                               ; preds = %18, %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !74
  tail call void @arm_heavy_mb() #11
  %25 = load ptr, ptr @tcdm_base, align 4
  %26 = getelementptr i8, ptr %25, i32 4073
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %26, i8 %12) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !75
  tail call void @arm_heavy_mb() #11
  %27 = load ptr, ptr @prcmu_base, align 4
  %28 = getelementptr i8, ptr %27, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 2) #11, !srcloc !11
  tail call void @wait_for_completion(ptr noundef getelementptr inbounds (%struct.anon.3, ptr @mb1_transfer, i32 0, i32 1)) #11
  %29 = load i8, ptr getelementptr inbounds (%struct.anon.3, ptr @mb1_transfer, i32 0, i32 3), align 1
  %30 = icmp eq i8 %29, %12
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load i8, ptr getelementptr inbounds (%struct.anon.3, ptr @mb1_transfer, i32 0, i32 3, i32 3), align 4
  %33 = and i8 %32, 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31, %24
  br label %36

36:                                               ; preds = %35, %31, %8, %6, %3
  %37 = phi i32 [ 0, %3 ], [ -5, %35 ], [ 0, %31 ], [ 0, %8 ], [ -5, %6 ]
  tail call void @mutex_unlock(ptr noundef nonnull @mb1_transfer) #11
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @prcmu_release_usb_wakeup_state() local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @mb1_transfer) #11
  %1 = load ptr, ptr @prcmu_base, align 4
  %2 = getelementptr i8, ptr %1, i32 252
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !76
  %4 = and i32 %3, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %6, %0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !77
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !78
  %7 = load ptr, ptr @prcmu_base, align 4
  %8 = getelementptr i8, ptr %7, i32 252
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !76
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %6

12:                                               ; preds = %6, %0
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !79
  tail call void @arm_heavy_mb() #11
  %13 = load ptr, ptr @tcdm_base, align 4
  %14 = getelementptr i8, ptr %13, i32 4073
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %14, i8 5) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !80
  tail call void @arm_heavy_mb() #11
  %15 = load ptr, ptr @prcmu_base, align 4
  %16 = getelementptr i8, ptr %15, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 2) #11, !srcloc !11
  tail call void @wait_for_completion(ptr noundef getelementptr inbounds (%struct.anon.3, ptr @mb1_transfer, i32 0, i32 1)) #11
  %17 = load i8, ptr getelementptr inbounds (%struct.anon.3, ptr @mb1_transfer, i32 0, i32 3), align 1
  %18 = icmp eq i8 %17, 5
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = load i8, ptr getelementptr inbounds (%struct.anon.3, ptr @mb1_transfer, i32 0, i32 3, i32 3), align 4
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19, %12
  br label %24

24:                                               ; preds = %23, %19
  %25 = phi i32 [ -5, %23 ], [ 0, %19 ]
  tail call void @mutex_unlock(ptr noundef nonnull @mb1_transfer) #11
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @db8500_prcmu_set_epod(i16 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = zext i16 %0 to i32
  %4 = icmp ugt i16 %0, 7
  br i1 %4, label %5, label %6, !prof !21

5:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mfd/db8500-prcmu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1078, 0\0A.popsection", ""() #11, !srcloc !81
  unreachable

6:                                                ; preds = %2
  %7 = icmp ugt i8 %1, 4
  br i1 %7, label %8, label %9, !prof !21

8:                                                ; preds = %6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mfd/db8500-prcmu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1091, 0\0A.popsection", ""() #11, !srcloc !82
  unreachable

9:                                                ; preds = %6
  %10 = trunc i16 %0 to i8
  %11 = lshr i8 58, %10
  %12 = and i8 %11, 1
  %13 = icmp ne i8 %12, 0
  %14 = icmp eq i8 %1, 2
  %15 = and i1 %14, %13
  br i1 %15, label %16, label %17, !prof !21

16:                                               ; preds = %9
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mfd/db8500-prcmu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1092, 0\0A.popsection", ""() #11, !srcloc !83
  unreachable

17:                                               ; preds = %9
  tail call void @mutex_lock(ptr noundef nonnull @mb2_transfer) #11
  %18 = load ptr, ptr @prcmu_base, align 4
  %19 = getelementptr i8, ptr %18, i32 252
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !84
  %21 = and i32 %20, 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %49

23:                                               ; preds = %49, %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !85
  tail call void @arm_heavy_mb() #11
  %24 = load ptr, ptr @tcdm_base, align 4
  %25 = getelementptr i8, ptr %24, i32 4032
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %25, i8 0) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !85
  tail call void @arm_heavy_mb() #11
  %26 = load ptr, ptr @tcdm_base, align 4
  %27 = getelementptr i8, ptr %26, i32 4033
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %27, i8 0) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !85
  tail call void @arm_heavy_mb() #11
  %28 = load ptr, ptr @tcdm_base, align 4
  %29 = getelementptr i8, ptr %28, i32 4034
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %29, i8 0) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !85
  tail call void @arm_heavy_mb() #11
  %30 = load ptr, ptr @tcdm_base, align 4
  %31 = getelementptr i8, ptr %30, i32 4035
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %31, i8 0) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !85
  tail call void @arm_heavy_mb() #11
  %32 = load ptr, ptr @tcdm_base, align 4
  %33 = getelementptr i8, ptr %32, i32 4036
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %33, i8 0) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !85
  tail call void @arm_heavy_mb() #11
  %34 = load ptr, ptr @tcdm_base, align 4
  %35 = getelementptr i8, ptr %34, i32 4037
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %35, i8 0) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !85
  tail call void @arm_heavy_mb() #11
  %36 = load ptr, ptr @tcdm_base, align 4
  %37 = getelementptr i8, ptr %36, i32 4038
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %37, i8 0) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !85
  tail call void @arm_heavy_mb() #11
  %38 = load ptr, ptr @tcdm_base, align 4
  %39 = getelementptr i8, ptr %38, i32 4039
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %39, i8 0) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !86
  tail call void @arm_heavy_mb() #11
  %40 = load ptr, ptr @tcdm_base, align 4
  %41 = getelementptr i8, ptr %40, i32 4032
  %42 = getelementptr i8, ptr %41, i32 %3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %42, i8 %1) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !87
  tail call void @arm_heavy_mb() #11
  %43 = load ptr, ptr @tcdm_base, align 4
  %44 = getelementptr i8, ptr %43, i32 4074
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %44, i8 0) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !88
  tail call void @arm_heavy_mb() #11
  %45 = load ptr, ptr @prcmu_base, align 4
  %46 = getelementptr i8, ptr %45, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 4) #11, !srcloc !11
  %47 = tail call i32 @wait_for_completion_timeout(ptr noundef getelementptr inbounds (%struct.anon.5, ptr @mb2_transfer, i32 0, i32 1), i32 noundef 2000) #11
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %55, label %57

49:                                               ; preds = %49, %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !89
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !90
  %50 = load ptr, ptr @prcmu_base, align 4
  %51 = getelementptr i8, ptr %50, i32 252
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !84
  %53 = and i32 %52, 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %23, label %49

55:                                               ; preds = %23
  %56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.db8500_prcmu_set_epod) #12
  br label %61

57:                                               ; preds = %23
  %58 = load i8, ptr getelementptr inbounds (%struct.anon.5, ptr @mb2_transfer, i32 0, i32 4), align 1
  %59 = icmp eq i8 %58, -2
  %60 = select i1 %59, i32 0, i32 -5
  br label %61

61:                                               ; preds = %57, %55
  %62 = phi i32 [ -5, %55 ], [ %60, %57 ]
  tail call void @mutex_unlock(ptr noundef nonnull @mb2_transfer) #11
  ret i32 %62
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @prcmu_configure_auto_pm(ptr noundef readonly %0, ptr noundef readonly %1) #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %6, label %7, !prof !21

6:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mfd/db8500-prcmu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1143, 0\0A.popsection", ""() #11, !srcloc !91
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.prcmu_auto_pm_config, ptr %0, i32 0, i32 3
  %9 = load i8, ptr %8, align 1
  %10 = shl i8 %9, 4
  %11 = load i8, ptr %0, align 1
  %12 = and i8 %11, 15
  %13 = or i8 %12, %10
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds %struct.prcmu_auto_pm_config, ptr %0, i32 0, i32 4
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 %14, 16
  %19 = shl nuw nsw i32 %17, 8
  %20 = or i32 %18, %19
  %21 = getelementptr inbounds %struct.prcmu_auto_pm_config, ptr %0, i32 0, i32 1
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = or i32 %20, %23
  %25 = getelementptr inbounds %struct.prcmu_auto_pm_config, ptr %0, i32 0, i32 5
  %26 = load i8, ptr %25, align 1
  %27 = shl nuw i32 %24, 8
  %28 = shl i8 %26, 4
  %29 = zext i8 %28 to i32
  %30 = or i32 %27, %29
  %31 = getelementptr inbounds %struct.prcmu_auto_pm_config, ptr %0, i32 0, i32 2
  %32 = load i8, ptr %31, align 1
  %33 = and i8 %32, 15
  %34 = zext i8 %33 to i32
  %35 = or i32 %30, %34
  %36 = getelementptr inbounds %struct.prcmu_auto_pm_config, ptr %1, i32 0, i32 3
  %37 = load i8, ptr %36, align 1
  %38 = shl i8 %37, 4
  %39 = load i8, ptr %1, align 1
  %40 = and i8 %39, 15
  %41 = or i8 %40, %38
  %42 = zext i8 %41 to i32
  %43 = getelementptr inbounds %struct.prcmu_auto_pm_config, ptr %1, i32 0, i32 4
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  %46 = shl nuw nsw i32 %42, 16
  %47 = shl nuw nsw i32 %45, 8
  %48 = or i32 %46, %47
  %49 = getelementptr inbounds %struct.prcmu_auto_pm_config, ptr %1, i32 0, i32 1
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  %52 = or i32 %48, %51
  %53 = getelementptr inbounds %struct.prcmu_auto_pm_config, ptr %1, i32 0, i32 5
  %54 = load i8, ptr %53, align 1
  %55 = shl nuw i32 %52, 8
  %56 = shl i8 %54, 4
  %57 = zext i8 %56 to i32
  %58 = or i32 %55, %57
  %59 = getelementptr inbounds %struct.prcmu_auto_pm_config, ptr %1, i32 0, i32 2
  %60 = load i8, ptr %59, align 1
  %61 = and i8 %60, 15
  %62 = zext i8 %61 to i32
  %63 = or i32 %58, %62
  %64 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds (%struct.anon.5, ptr @mb2_transfer, i32 0, i32 2)) #11
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !92
  tail call void @arm_heavy_mb() #11
  %65 = load ptr, ptr @tcdm_base, align 4
  %66 = getelementptr i8, ptr %65, i32 4040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %35) #11, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !93
  tail call void @arm_heavy_mb() #11
  %67 = load ptr, ptr @tcdm_base, align 4
  %68 = getelementptr i8, ptr %67, i32 4044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %63) #11, !srcloc !11
  %69 = load i8, ptr %8, align 1
  %70 = icmp eq i8 %69, 1
  br i1 %70, label %80, label %71

71:                                               ; preds = %7
  %72 = load i8, ptr %0, align 1
  %73 = icmp eq i8 %72, 1
  br i1 %73, label %80, label %74

74:                                               ; preds = %71
  %75 = load i8, ptr %36, align 1
  %76 = icmp eq i8 %75, 1
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load i8, ptr %1, align 1
  %79 = icmp eq i8 %78, 1
  br label %80

80:                                               ; preds = %77, %74, %71, %7
  %81 = phi i1 [ true, %74 ], [ true, %71 ], [ true, %7 ], [ %79, %77 ]
  %82 = zext i1 %81 to i8
  store i8 %82, ptr getelementptr inbounds (%struct.anon.5, ptr @mb2_transfer, i32 0, i32 3), align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds (%struct.anon.5, ptr @mb2_transfer, i32 0, i32 2), i32 noundef %64) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @prcmu_is_auto_pm_enabled() local_unnamed_addr #3 {
  %1 = load i8, ptr getelementptr inbounds (%struct.anon.5, ptr @mb2_transfer, i32 0, i32 3), align 4, !range !14
  %2 = icmp ne i8 %1, 0
  ret i1 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @db8500_prcmu_request_clock(i8 noundef zeroext %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp eq i8 %0, 4
  br i1 %3, label %4, label %19

4:                                                ; preds = %2
  br i1 %1, label %5, label %12

5:                                                ; preds = %4
  %6 = load ptr, ptr @prcmu_base, align 4
  %7 = getelementptr i8, ptr %6, i32 308
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !94
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !95
  tail call void @arm_heavy_mb() #11
  %9 = or i32 %8, 64
  %10 = load ptr, ptr @prcmu_base, align 4
  %11 = getelementptr i8, ptr %10, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #11, !srcloc !11
  tail call fastcc void @request_clock(i8 noundef zeroext 4, i1 noundef zeroext true) #11
  br label %83

12:                                               ; preds = %4
  tail call fastcc void @request_clock(i8 noundef zeroext 4, i1 noundef zeroext false) #11
  %13 = load ptr, ptr @prcmu_base, align 4
  %14 = getelementptr i8, ptr %13, i32 308
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !96
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !97
  tail call void @arm_heavy_mb() #11
  %16 = and i32 %15, -65
  %17 = load ptr, ptr @prcmu_base, align 4
  %18 = getelementptr i8, ptr %17, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #11, !srcloc !11
  br label %83

19:                                               ; preds = %2
  %20 = icmp ult i8 %0, 38
  br i1 %20, label %21, label %22

21:                                               ; preds = %19
  tail call fastcc void @request_clock(i8 noundef zeroext %0, i1 noundef zeroext %1)
  br label %83

22:                                               ; preds = %19
  %23 = icmp eq i8 %0, 41
  br i1 %23, label %24, label %34

24:                                               ; preds = %22
  %25 = load i8, ptr @fw_info, align 4, !range !14
  %26 = icmp ne i8 %25, 0
  %27 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @fw_info, i32 0, i32 1), align 4
  %28 = icmp eq i32 %27, 17
  %29 = select i1 %26, i1 %28, i1 false
  %30 = select i1 %29, i32 0, i32 131327
  %31 = select i1 %1, i32 %30, i32 196863
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !98
  tail call void @arm_heavy_mb() #11
  %32 = load ptr, ptr @prcmu_base, align 4
  %33 = getelementptr i8, ptr %32, i32 456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #11, !srcloc !11
  br label %83

34:                                               ; preds = %22
  %35 = add i8 %0, -47
  %36 = icmp ult i8 %35, 2
  br i1 %36, label %37, label %57

37:                                               ; preds = %34
  %38 = load ptr, ptr @prcmu_base, align 4
  %39 = getelementptr i8, ptr %38, i32 1328
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !99
  %41 = zext i8 %35 to i32
  %42 = getelementptr [2 x %struct.dsiclk], ptr @dsiclk, i32 0, i32 %41
  %43 = load i32, ptr %42, align 4
  br i1 %1, label %44, label %47

44:                                               ; preds = %37
  %45 = getelementptr [2 x %struct.dsiclk], ptr @dsiclk, i32 0, i32 %41, i32 2
  %46 = load i32, ptr %45, align 4
  br label %47

47:                                               ; preds = %44, %37
  %48 = phi i32 [ %46, %44 ], [ 0, %37 ]
  %49 = xor i32 %43, -1
  %50 = and i32 %40, %49
  %51 = getelementptr [2 x %struct.dsiclk], ptr @dsiclk, i32 0, i32 %41, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = shl i32 %48, %52
  %54 = or i32 %53, %50
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !100
  tail call void @arm_heavy_mb() #11
  %55 = load ptr, ptr @prcmu_base, align 4
  %56 = getelementptr i8, ptr %55, i32 1328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #11, !srcloc !11
  br label %83

57:                                               ; preds = %34
  %58 = add i8 %0, -49
  %59 = icmp ult i8 %58, 3
  br i1 %59, label %60, label %73

60:                                               ; preds = %57
  %61 = load ptr, ptr @prcmu_base, align 4
  %62 = getelementptr i8, ptr %61, i32 1324
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !101
  %64 = zext i8 %58 to i32
  %65 = getelementptr [3 x %struct.dsiescclk], ptr @dsiescclk, i32 0, i32 %64
  %66 = load i32, ptr %65, align 4
  %67 = or i32 %66, %63
  %68 = xor i32 %66, -1
  %69 = and i32 %63, %68
  %70 = select i1 %1, i32 %67, i32 %69
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !102
  tail call void @arm_heavy_mb() #11
  %71 = load ptr, ptr @prcmu_base, align 4
  %72 = getelementptr i8, ptr %71, i32 1324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %70) #11, !srcloc !11
  br label %83

73:                                               ; preds = %57
  switch i8 %0, label %78 [
    i8 46, label %74
    i8 39, label %76
  ]

74:                                               ; preds = %73
  %75 = tail call fastcc i32 @request_plldsi(i1 noundef zeroext %1)
  br label %83

76:                                               ; preds = %73
  %77 = tail call fastcc i32 @request_sysclk(i1 noundef zeroext %1)
  br label %83

78:                                               ; preds = %73
  %79 = and i8 %0, -2
  %80 = icmp eq i8 %79, 42
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = tail call fastcc i32 @request_pll(i8 noundef zeroext %0, i1 noundef zeroext %1)
  br label %83

83:                                               ; preds = %81, %78, %76, %74, %60, %47, %24, %21, %12, %5
  %84 = phi i32 [ 0, %21 ], [ 0, %24 ], [ 0, %47 ], [ 0, %60 ], [ %75, %74 ], [ %77, %76 ], [ %82, %81 ], [ -22, %78 ], [ 0, %5 ], [ 0, %12 ]
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @request_clock(i8 noundef zeroext %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @clk_mgt_lock) #11
  %4 = load ptr, ptr @prcmu_base, align 4
  %5 = getelementptr i8, ptr %4, i32 1024
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !103
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %9, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !104
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !105
  %10 = load ptr, ptr @prcmu_base, align 4
  %11 = getelementptr i8, ptr %10, i32 1024
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !103
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %9

15:                                               ; preds = %9, %2
  %16 = load ptr, ptr @prcmu_base, align 4
  %17 = zext i8 %0 to i32
  %18 = getelementptr [38 x %struct.clk_mgt], ptr @clk_mgt, i32 0, i32 %17
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr i8, ptr %16, i32 %19
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !106
  br i1 %1, label %22, label %27

22:                                               ; preds = %15
  %23 = getelementptr [38 x %struct.clk_mgt], ptr @clk_mgt, i32 0, i32 %17, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = or i32 %21, %24
  %26 = or i32 %25, 256
  br label %31

27:                                               ; preds = %15
  %28 = and i32 %21, 224
  %29 = getelementptr [38 x %struct.clk_mgt], ptr @clk_mgt, i32 0, i32 %17, i32 1
  store i32 %28, ptr %29, align 4
  %30 = and i32 %21, -481
  br label %31

31:                                               ; preds = %27, %22
  %32 = phi i32 [ %26, %22 ], [ %30, %27 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !107
  tail call void @arm_heavy_mb() #11
  %33 = load ptr, ptr @prcmu_base, align 4
  %34 = load i32, ptr %18, align 4
  %35 = getelementptr i8, ptr %33, i32 %34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %32) #11, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !108
  tail call void @arm_heavy_mb() #11
  %36 = load ptr, ptr @prcmu_base, align 4
  %37 = getelementptr i8, ptr %36, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 0) #11, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @clk_mgt_lock, i32 noundef %3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @request_plldsi(i1 noundef zeroext %0) unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !109
  tail call void @arm_heavy_mb() #11
  %2 = load ptr, ptr @prcmu_base, align 4
  %3 = select i1 %0, i32 1060, i32 1056
  %4 = getelementptr i8, ptr %2, i32 %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 4196352) #11, !srcloc !11
  %5 = load ptr, ptr @prcmu_base, align 4
  %6 = getelementptr i8, ptr %5, i32 1284
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !110
  %8 = and i32 %7, -2
  %9 = zext i1 %0 to i32
  %10 = or i32 %8, %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !111
  tail call void @arm_heavy_mb() #11
  %11 = load ptr, ptr @prcmu_base, align 4
  %12 = getelementptr i8, ptr %11, i32 1284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #11, !srcloc !11
  br i1 %0, label %13, label %40

13:                                               ; preds = %1
  %14 = load ptr, ptr @prcmu_base, align 4
  %15 = getelementptr i8, ptr %14, i32 1288
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !112
  %17 = and i32 %16, 3
  %18 = icmp eq i32 %17, 3
  br i1 %18, label %32, label %19

19:                                               ; preds = %19, %13
  %20 = phi i32 [ %25, %19 ], [ 10, %13 ]
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 21474800) #11
  %22 = load ptr, ptr @prcmu_base, align 4
  %23 = getelementptr i8, ptr %22, i32 1288
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !112
  %25 = add nsw i32 %20, -1
  %26 = and i32 %24, 3
  %27 = icmp eq i32 %26, 3
  %28 = icmp ne i32 %25, 0
  %29 = xor i1 %27, true
  %30 = select i1 %29, i1 %28, i1 false
  br i1 %30, label %19, label %31

31:                                               ; preds = %19
  br i1 %27, label %32, label %35

32:                                               ; preds = %31, %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %33 = load ptr, ptr @prcmu_base, align 4
  %34 = getelementptr i8, ptr %33, i32 484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 16384) #11, !srcloc !11
  br label %43

35:                                               ; preds = %31
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !114
  tail call void @arm_heavy_mb() #11
  %36 = load ptr, ptr @prcmu_base, align 4
  %37 = getelementptr i8, ptr %36, i32 1056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 4196352) #11, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !115
  tail call void @arm_heavy_mb() #11
  %38 = load ptr, ptr @prcmu_base, align 4
  %39 = getelementptr i8, ptr %38, i32 1284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %8) #11, !srcloc !11
  br label %43

40:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !116
  tail call void @arm_heavy_mb() #11
  %41 = load ptr, ptr @prcmu_base, align 4
  %42 = getelementptr i8, ptr %41, i32 488
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 16384) #11, !srcloc !11
  br label %43

43:                                               ; preds = %40, %35, %32
  %44 = phi i32 [ 0, %40 ], [ 0, %32 ], [ -11, %35 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @request_sysclk(i1 noundef zeroext %0) unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef getelementptr inbounds (%struct.anon.81, ptr @mb3_transfer, i32 0, i32 1)) #11
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @mb3_transfer) #11
  %3 = load ptr, ptr @prcmu_base, align 4
  %4 = getelementptr i8, ptr %3, i32 252
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !117
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %8, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !118
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !119
  %9 = load ptr, ptr @prcmu_base, align 4
  %10 = getelementptr i8, ptr %9, i32 252
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !117
  %12 = and i32 %11, 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %8

14:                                               ; preds = %8, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !120
  tail call void @arm_heavy_mb() #11
  %15 = zext i1 %0 to i8
  %16 = load ptr, ptr @tcdm_base, align 4
  %17 = getelementptr i8, ptr %16, i32 4024
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %17, i8 %15) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !121
  tail call void @arm_heavy_mb() #11
  %18 = load ptr, ptr @tcdm_base, align 4
  %19 = getelementptr i8, ptr %18, i32 4075
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %19, i8 14) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !122
  tail call void @arm_heavy_mb() #11
  %20 = load ptr, ptr @prcmu_base, align 4
  %21 = getelementptr i8, ptr %20, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 8) #11, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @mb3_transfer, i32 noundef %2) #11
  br i1 %0, label %22, label %27

22:                                               ; preds = %14
  %23 = tail call i32 @wait_for_completion_timeout(ptr noundef getelementptr inbounds (%struct.anon.81, ptr @mb3_transfer, i32 0, i32 2), i32 noundef 2000) #11
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.request_sysclk) #12
  br label %27

27:                                               ; preds = %25, %22, %14
  %28 = phi i32 [ 0, %22 ], [ -5, %25 ], [ 0, %14 ]
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.anon.81, ptr @mb3_transfer, i32 0, i32 1)) #11
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @request_pll(i8 noundef zeroext %0, i1 noundef zeroext %1) unnamed_addr #0 {
  switch i8 %0, label %30 [
    i8 42, label %3
    i8 43, label %5
  ]

3:                                                ; preds = %2
  %4 = select i1 %1, i8 2, i8 1
  br label %7

5:                                                ; preds = %2
  %6 = select i1 %1, i8 8, i8 4
  br label %7

7:                                                ; preds = %5, %3
  %8 = phi i8 [ %4, %3 ], [ %6, %5 ]
  tail call void @mutex_lock(ptr noundef nonnull @mb1_transfer) #11
  %9 = load ptr, ptr @prcmu_base, align 4
  %10 = getelementptr i8, ptr %9, i32 252
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !123
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %14, %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !124
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !125
  %15 = load ptr, ptr @prcmu_base, align 4
  %16 = getelementptr i8, ptr %15, i32 252
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !123
  %18 = and i32 %17, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %14

20:                                               ; preds = %14, %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !126
  tail call void @arm_heavy_mb() #11
  %21 = load ptr, ptr @tcdm_base, align 4
  %22 = getelementptr i8, ptr %21, i32 4073
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %22, i8 6) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !127
  tail call void @arm_heavy_mb() #11
  %23 = load ptr, ptr @tcdm_base, align 4
  %24 = getelementptr i8, ptr %23, i32 4052
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %24, i8 %8) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !128
  tail call void @arm_heavy_mb() #11
  %25 = load ptr, ptr @prcmu_base, align 4
  %26 = getelementptr i8, ptr %25, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 2) #11, !srcloc !11
  tail call void @wait_for_completion(ptr noundef getelementptr inbounds (%struct.anon.3, ptr @mb1_transfer, i32 0, i32 1)) #11
  %27 = load i8, ptr getelementptr inbounds (%struct.anon.3, ptr @mb1_transfer, i32 0, i32 3), align 1
  %28 = icmp eq i8 %27, 6
  %29 = select i1 %28, i32 0, i32 -5
  tail call void @mutex_unlock(ptr noundef nonnull @mb1_transfer) #11
  br label %30

30:                                               ; preds = %20, %2
  %31 = phi i32 [ %29, %20 ], [ -22, %2 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @prcmu_clock_rate(i8 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = icmp ult i8 %0, 38
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @clock_rate(i8 noundef zeroext %0)
  br label %256

5:                                                ; preds = %1
  switch i8 %0, label %196 [
    i8 41, label %6
    i8 39, label %256
    i8 42, label %13
    i8 43, label %38
    i8 44, label %63
    i8 45, label %144
    i8 46, label %169
  ]

6:                                                ; preds = %5
  %7 = load i8, ptr @fw_info, align 4, !range !14
  %8 = icmp ne i8 %7, 0
  %9 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @fw_info, i32 0, i32 1), align 4
  %10 = icmp eq i32 %9, 17
  %11 = select i1 %8, i1 %10, i1 false
  %12 = select i1 %11, i32 32768, i32 2400000
  br label %256

13:                                               ; preds = %5
  %14 = load ptr, ptr @prcmu_base, align 4
  %15 = getelementptr i8, ptr %14, i32 128
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !129
  %17 = and i32 %16, 255
  %18 = zext i32 %17 to i64
  %19 = mul nuw nsw i64 %18, 38400000
  %20 = lshr i32 %16, 8
  %21 = and i32 %20, 63
  %22 = tail call i32 @llvm.umax.i32(i32 %21, i32 1) #11
  %23 = lshr i32 %16, 16
  %24 = and i32 %23, 7
  %25 = tail call i32 @llvm.umax.i32(i32 %24, i32 1) #11
  %26 = mul nuw nsw i32 %22, %25
  %27 = lshr i32 %16, 24
  %28 = and i32 %27, 1
  %29 = shl nuw nsw i32 %26, %28
  %30 = icmp ult i64 %19, 4294967296
  br i1 %30, label %31, label %34, !prof !38

31:                                               ; preds = %13
  %32 = trunc i64 %19 to i32
  %33 = udiv i32 %32, %29
  br label %256

34:                                               ; preds = %13
  %35 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %29, i64 %19) #13, !srcloc !130
  %36 = extractvalue { i64, i64 } %35, 1
  %37 = trunc i64 %36 to i32
  br label %256

38:                                               ; preds = %5
  %39 = load ptr, ptr @prcmu_base, align 4
  %40 = getelementptr i8, ptr %39, i32 132
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !129
  %42 = and i32 %41, 255
  %43 = zext i32 %42 to i64
  %44 = mul nuw nsw i64 %43, 38400000
  %45 = lshr i32 %41, 8
  %46 = and i32 %45, 63
  %47 = tail call i32 @llvm.umax.i32(i32 %46, i32 1) #11
  %48 = lshr i32 %41, 16
  %49 = and i32 %48, 7
  %50 = tail call i32 @llvm.umax.i32(i32 %49, i32 1) #11
  %51 = mul nuw nsw i32 %47, %50
  %52 = lshr i32 %41, 24
  %53 = and i32 %52, 1
  %54 = shl nuw nsw i32 %51, %53
  %55 = icmp ult i64 %44, 4294967296
  br i1 %55, label %56, label %59, !prof !38

56:                                               ; preds = %38
  %57 = trunc i64 %44 to i32
  %58 = udiv i32 %57, %54
  br label %256

59:                                               ; preds = %38
  %60 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %54, i64 %44) #13, !srcloc !130
  %61 = extractvalue { i64, i64 } %60, 1
  %62 = trunc i64 %61 to i32
  br label %256

63:                                               ; preds = %5
  %64 = load ptr, ptr @prcmu_base, align 4
  %65 = getelementptr i8, ptr %64, i32 276
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !131
  %67 = and i32 %66, 1
  %68 = icmp eq i32 %67, 0
  %69 = load ptr, ptr @prcmu_base, align 4
  br i1 %68, label %105, label %70

70:                                               ; preds = %63
  %71 = getelementptr i8, ptr %69, i32 140
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !129
  %73 = and i32 %72, 255
  %74 = zext i32 %73 to i64
  %75 = mul nuw nsw i64 %74, 38400000
  %76 = lshr i32 %72, 8
  %77 = and i32 %76, 63
  %78 = tail call i32 @llvm.umax.i32(i32 %77, i32 1) #11
  %79 = lshr i32 %72, 16
  %80 = and i32 %79, 7
  %81 = tail call i32 @llvm.umax.i32(i32 %80, i32 1) #11
  %82 = mul nuw nsw i32 %78, %81
  %83 = lshr i32 %72, 24
  %84 = and i32 %83, 1
  %85 = shl nuw nsw i32 %82, %84
  %86 = shl nuw nsw i32 %85, 1
  %87 = icmp ult i64 %75, 4294967296
  br i1 %87, label %88, label %91, !prof !38

88:                                               ; preds = %70
  %89 = trunc i64 %75 to i32
  %90 = udiv i32 %89, %86
  br label %95

91:                                               ; preds = %70
  %92 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %86, i64 %75) #13, !srcloc !130
  %93 = extractvalue { i64, i64 } %92, 1
  %94 = trunc i64 %93 to i32
  br label %95

95:                                               ; preds = %91, %88
  %96 = phi i32 [ %90, %88 ], [ %94, %91 ]
  %97 = lshr i32 %66, 16
  %98 = and i32 %97, 1
  %99 = xor i32 %98, 1
  %100 = lshr i32 %96, %99
  %101 = load ptr, ptr @prcmu_base, align 4
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !132
  %103 = and i32 %102, 31
  %104 = udiv i32 %100, %103
  br label %256

105:                                              ; preds = %63
  %106 = getelementptr i8, ptr %69, i32 136
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !129
  %108 = and i32 %107, 255
  %109 = zext i32 %108 to i64
  %110 = mul nuw nsw i64 %109, 38400000
  %111 = lshr i32 %107, 8
  %112 = and i32 %111, 63
  %113 = tail call i32 @llvm.umax.i32(i32 %112, i32 1) #11
  %114 = lshr i32 %107, 16
  %115 = and i32 %114, 7
  %116 = tail call i32 @llvm.umax.i32(i32 %115, i32 1) #11
  %117 = mul nuw nsw i32 %113, %116
  %118 = lshr i32 %107, 24
  %119 = and i32 %118, 1
  %120 = shl nuw nsw i32 %117, %119
  %121 = and i32 %107, 33554432
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %134, label %123

123:                                              ; preds = %105
  %124 = load ptr, ptr @prcmu_base, align 4
  %125 = getelementptr i8, ptr %124, i32 128
  %126 = icmp eq ptr %125, %106
  %127 = icmp eq ptr %124, %69
  %128 = or i1 %127, %126
  %129 = getelementptr i8, ptr %124, i32 140
  %130 = icmp eq ptr %129, %106
  %131 = or i1 %130, %128
  %132 = zext i1 %131 to i32
  %133 = shl nuw nsw i32 %120, %132
  br label %134

134:                                              ; preds = %123, %105
  %135 = phi i32 [ %120, %105 ], [ %133, %123 ]
  %136 = icmp ult i64 %110, 4294967296
  br i1 %136, label %137, label %140, !prof !38

137:                                              ; preds = %134
  %138 = trunc i64 %110 to i32
  %139 = udiv i32 %138, %135
  br label %256

140:                                              ; preds = %134
  %141 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %135, i64 %110) #13, !srcloc !130
  %142 = extractvalue { i64, i64 } %141, 1
  %143 = trunc i64 %142 to i32
  br label %256

144:                                              ; preds = %5
  %145 = load ptr, ptr @prcmu_base, align 4
  %146 = getelementptr i8, ptr %145, i32 140
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %146) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !129
  %148 = and i32 %147, 255
  %149 = zext i32 %148 to i64
  %150 = mul nuw nsw i64 %149, 38400000
  %151 = lshr i32 %147, 8
  %152 = and i32 %151, 63
  %153 = tail call i32 @llvm.umax.i32(i32 %152, i32 1) #11
  %154 = lshr i32 %147, 16
  %155 = and i32 %154, 7
  %156 = tail call i32 @llvm.umax.i32(i32 %155, i32 1) #11
  %157 = mul nuw nsw i32 %153, %156
  %158 = lshr i32 %147, 24
  %159 = and i32 %158, 1
  %160 = shl nuw nsw i32 %157, %159
  %161 = icmp ult i64 %150, 4294967296
  br i1 %161, label %162, label %165, !prof !38

162:                                              ; preds = %144
  %163 = trunc i64 %150 to i32
  %164 = udiv i32 %163, %160
  br label %256

165:                                              ; preds = %144
  %166 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %160, i64 %150) #13, !srcloc !130
  %167 = extractvalue { i64, i64 } %166, 1
  %168 = trunc i64 %167 to i32
  br label %256

169:                                              ; preds = %5
  %170 = load ptr, ptr @prcmu_base, align 4
  %171 = getelementptr i8, ptr %170, i32 1280
  %172 = tail call fastcc i32 @clock_rate(i8 noundef zeroext 21)
  %173 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %171) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !129
  %174 = zext i32 %172 to i64
  %175 = and i32 %173, 255
  %176 = zext i32 %175 to i64
  %177 = mul nuw nsw i64 %176, %174
  %178 = lshr i32 %173, 8
  %179 = and i32 %178, 63
  %180 = tail call i32 @llvm.umax.i32(i32 %179, i32 1) #11
  %181 = lshr i32 %173, 16
  %182 = and i32 %181, 7
  %183 = tail call i32 @llvm.umax.i32(i32 %182, i32 1) #11
  %184 = mul nuw nsw i32 %180, %183
  %185 = lshr i32 %173, 24
  %186 = and i32 %185, 1
  %187 = shl nuw nsw i32 %184, %186
  %188 = icmp ult i64 %177, 4294967296
  br i1 %188, label %189, label %192, !prof !38

189:                                              ; preds = %169
  %190 = trunc i64 %177 to i32
  %191 = udiv i32 %190, %187
  br label %256

192:                                              ; preds = %169
  %193 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %187, i64 %177) #13, !srcloc !130
  %194 = extractvalue { i64, i64 } %193, 1
  %195 = trunc i64 %194 to i32
  br label %256

196:                                              ; preds = %5
  %197 = add i8 %0, -47
  %198 = icmp ult i8 %197, 2
  br i1 %198, label %199, label %251

199:                                              ; preds = %196
  %200 = load ptr, ptr @prcmu_base, align 4
  %201 = getelementptr i8, ptr %200, i32 1328
  %202 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %201) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !133
  %203 = zext i8 %197 to i32
  %204 = getelementptr [2 x %struct.dsiclk], ptr @dsiclk, i32 0, i32 %203
  %205 = load i32, ptr %204, align 4
  %206 = and i32 %205, %202
  %207 = getelementptr [2 x %struct.dsiclk], ptr @dsiclk, i32 0, i32 %203, i32 1
  %208 = load i32, ptr %207, align 4
  %209 = lshr i32 %206, %208
  %210 = icmp eq i32 %209, 0
  %211 = getelementptr [2 x %struct.dsiclk], ptr @dsiclk, i32 0, i32 %203, i32 2
  br i1 %210, label %212, label %214

212:                                              ; preds = %199
  %213 = load i32, ptr %211, align 4
  br label %215

214:                                              ; preds = %199
  store i32 %209, ptr %211, align 4
  br label %215

215:                                              ; preds = %214, %212
  %216 = phi i32 [ %213, %212 ], [ %209, %214 ]
  %217 = add i32 %216, -1
  %218 = icmp ult i32 %217, 3
  br i1 %218, label %219, label %256

219:                                              ; preds = %215
  %220 = getelementptr inbounds [3 x i32], ptr @switch.table.prcmu_clock_rate, i32 0, i32 %217
  %221 = load i32, ptr %220, align 4
  %222 = load ptr, ptr @prcmu_base, align 4
  %223 = getelementptr i8, ptr %222, i32 1280
  %224 = tail call fastcc i32 @clock_rate(i8 noundef zeroext 21) #11
  %225 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %223) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !129
  %226 = zext i32 %224 to i64
  %227 = and i32 %225, 255
  %228 = zext i32 %227 to i64
  %229 = mul nuw nsw i64 %228, %226
  %230 = lshr i32 %225, 8
  %231 = and i32 %230, 63
  %232 = tail call i32 @llvm.umax.i32(i32 %231, i32 1) #11
  %233 = lshr i32 %225, 16
  %234 = and i32 %233, 7
  %235 = tail call i32 @llvm.umax.i32(i32 %234, i32 1) #11
  %236 = mul nuw nsw i32 %232, %235
  %237 = lshr i32 %225, 24
  %238 = and i32 %237, 1
  %239 = shl nuw nsw i32 %236, %238
  %240 = icmp ult i64 %229, 4294967296
  br i1 %240, label %241, label %244, !prof !38

241:                                              ; preds = %219
  %242 = trunc i64 %229 to i32
  %243 = udiv i32 %242, %239
  br label %248

244:                                              ; preds = %219
  %245 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %239, i64 %229) #13, !srcloc !130
  %246 = extractvalue { i64, i64 } %245, 1
  %247 = trunc i64 %246 to i32
  br label %248

248:                                              ; preds = %244, %241
  %249 = phi i32 [ %243, %241 ], [ %247, %244 ]
  %250 = udiv i32 %249, %221
  br label %256

251:                                              ; preds = %196
  %252 = add i8 %0, -49
  %253 = icmp ult i8 %252, 3
  br i1 %253, label %254, label %256

254:                                              ; preds = %251
  %255 = tail call fastcc i32 @dsiescclk_rate(i8 noundef zeroext %252)
  br label %256

256:                                              ; preds = %254, %251, %248, %215, %192, %189, %165, %162, %140, %137, %95, %59, %56, %34, %31, %6, %5, %3
  %257 = phi i32 [ %4, %3 ], [ %12, %6 ], [ %255, %254 ], [ 38400000, %5 ], [ 0, %251 ], [ %33, %31 ], [ %37, %34 ], [ %58, %56 ], [ %62, %59 ], [ %104, %95 ], [ %139, %137 ], [ %143, %140 ], [ %164, %162 ], [ %168, %165 ], [ %191, %189 ], [ %195, %192 ], [ %250, %248 ], [ 0, %215 ]
  ret i32 %257
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clock_rate(i8 noundef zeroext %0) unnamed_addr #0 {
  %2 = load ptr, ptr @prcmu_base, align 4
  %3 = zext i8 %0 to i32
  %4 = getelementptr [38 x %struct.clk_mgt], ptr @clk_mgt, i32 0, i32 %3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr i8, ptr %2, i32 %5
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !134
  %8 = and i32 %7, 512
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %1
  %11 = getelementptr [38 x %struct.clk_mgt], ptr @clk_mgt, i32 0, i32 %3, i32 3
  %12 = load i8, ptr %11, align 4, !range !14
  %13 = icmp eq i8 %12, 0
  %14 = and i32 %7, 2048
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %13, i1 true, i1 %15
  %17 = select i1 %16, i32 38400000, i32 19200000
  br label %175

18:                                               ; preds = %1
  %19 = getelementptr [38 x %struct.clk_mgt], ptr @clk_mgt, i32 0, i32 %3, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = or i32 %20, %7
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, -32
  switch i8 %23, label %175 [
    i8 32, label %24
    i8 64, label %67
    i8 -128, label %111
  ]

24:                                               ; preds = %18
  %25 = load ptr, ptr @prcmu_base, align 4
  %26 = getelementptr i8, ptr %25, i32 128
  %27 = getelementptr [38 x %struct.clk_mgt], ptr @clk_mgt, i32 0, i32 %3, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !129
  %30 = and i32 %29, 255
  %31 = zext i32 %30 to i64
  %32 = mul nuw nsw i64 %31, 38400000
  %33 = lshr i32 %29, 8
  %34 = and i32 %33, 63
  %35 = tail call i32 @llvm.umax.i32(i32 %34, i32 1) #11
  %36 = lshr i32 %29, 16
  %37 = and i32 %36, 7
  %38 = tail call i32 @llvm.umax.i32(i32 %37, i32 1) #11
  %39 = mul nuw nsw i32 %35, %38
  %40 = lshr i32 %29, 24
  %41 = and i32 %40, 1
  %42 = shl nuw nsw i32 %39, %41
  switch i32 %28, label %57 [
    i32 1, label %55
    i32 2, label %43
  ]

43:                                               ; preds = %24
  %44 = and i32 %29, 33554432
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr @prcmu_base, align 4
  %48 = icmp eq ptr %47, %25
  %49 = getelementptr i8, ptr %47, i32 136
  %50 = icmp eq ptr %49, %26
  %51 = or i1 %48, %50
  %52 = getelementptr i8, ptr %47, i32 140
  %53 = icmp eq ptr %52, %26
  %54 = or i1 %53, %51
  br i1 %54, label %55, label %57

55:                                               ; preds = %46, %24
  %56 = shl nuw nsw i32 %42, 1
  br label %57

57:                                               ; preds = %55, %46, %43, %24
  %58 = phi i32 [ %56, %55 ], [ %42, %43 ], [ %42, %24 ], [ %42, %46 ]
  %59 = icmp ult i64 %32, 4294967296
  br i1 %59, label %60, label %63, !prof !38

60:                                               ; preds = %57
  %61 = trunc i64 %32 to i32
  %62 = udiv i32 %61, %58
  br label %154

63:                                               ; preds = %57
  %64 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %58, i64 %32) #13, !srcloc !130
  %65 = extractvalue { i64, i64 } %64, 1
  %66 = trunc i64 %65 to i32
  br label %154

67:                                               ; preds = %18
  %68 = load ptr, ptr @prcmu_base, align 4
  %69 = getelementptr i8, ptr %68, i32 132
  %70 = getelementptr [38 x %struct.clk_mgt], ptr @clk_mgt, i32 0, i32 %3, i32 2
  %71 = load i32, ptr %70, align 4
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !129
  %73 = and i32 %72, 255
  %74 = zext i32 %73 to i64
  %75 = mul nuw nsw i64 %74, 38400000
  %76 = lshr i32 %72, 8
  %77 = and i32 %76, 63
  %78 = tail call i32 @llvm.umax.i32(i32 %77, i32 1) #11
  %79 = lshr i32 %72, 16
  %80 = and i32 %79, 7
  %81 = tail call i32 @llvm.umax.i32(i32 %80, i32 1) #11
  %82 = mul nuw nsw i32 %78, %81
  %83 = lshr i32 %72, 24
  %84 = and i32 %83, 1
  %85 = shl nuw nsw i32 %82, %84
  switch i32 %71, label %101 [
    i32 1, label %99
    i32 2, label %86
  ]

86:                                               ; preds = %67
  %87 = and i32 %72, 33554432
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %101, label %89

89:                                               ; preds = %86
  %90 = load ptr, ptr @prcmu_base, align 4
  %91 = getelementptr i8, ptr %90, i32 128
  %92 = icmp eq ptr %91, %69
  %93 = getelementptr i8, ptr %90, i32 136
  %94 = icmp eq ptr %93, %69
  %95 = or i1 %92, %94
  %96 = getelementptr i8, ptr %90, i32 140
  %97 = icmp eq ptr %96, %69
  %98 = select i1 %95, i1 true, i1 %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %89, %67
  %100 = shl nuw nsw i32 %85, 1
  br label %101

101:                                              ; preds = %99, %89, %86, %67
  %102 = phi i32 [ %100, %99 ], [ %85, %86 ], [ %85, %67 ], [ %85, %89 ]
  %103 = icmp ult i64 %75, 4294967296
  br i1 %103, label %104, label %107, !prof !38

104:                                              ; preds = %101
  %105 = trunc i64 %75 to i32
  %106 = udiv i32 %105, %102
  br label %154

107:                                              ; preds = %101
  %108 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %102, i64 %75) #13, !srcloc !130
  %109 = extractvalue { i64, i64 } %108, 1
  %110 = trunc i64 %109 to i32
  br label %154

111:                                              ; preds = %18
  %112 = load ptr, ptr @prcmu_base, align 4
  %113 = getelementptr i8, ptr %112, i32 140
  %114 = getelementptr [38 x %struct.clk_mgt], ptr @clk_mgt, i32 0, i32 %3, i32 2
  %115 = load i32, ptr %114, align 4
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %113) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !129
  %117 = and i32 %116, 255
  %118 = zext i32 %117 to i64
  %119 = mul nuw nsw i64 %118, 38400000
  %120 = lshr i32 %116, 8
  %121 = and i32 %120, 63
  %122 = tail call i32 @llvm.umax.i32(i32 %121, i32 1) #11
  %123 = lshr i32 %116, 16
  %124 = and i32 %123, 7
  %125 = tail call i32 @llvm.umax.i32(i32 %124, i32 1) #11
  %126 = mul nuw nsw i32 %122, %125
  %127 = lshr i32 %116, 24
  %128 = and i32 %127, 1
  %129 = shl nuw nsw i32 %126, %128
  switch i32 %115, label %144 [
    i32 1, label %142
    i32 2, label %130
  ]

130:                                              ; preds = %111
  %131 = and i32 %116, 33554432
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %144, label %133

133:                                              ; preds = %130
  %134 = load ptr, ptr @prcmu_base, align 4
  %135 = getelementptr i8, ptr %134, i32 128
  %136 = icmp eq ptr %135, %113
  %137 = getelementptr i8, ptr %134, i32 136
  %138 = icmp eq ptr %137, %113
  %139 = or i1 %136, %138
  %140 = icmp eq ptr %134, %112
  %141 = select i1 %139, i1 true, i1 %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %133, %111
  %143 = shl nuw nsw i32 %129, 1
  br label %144

144:                                              ; preds = %142, %133, %130, %111
  %145 = phi i32 [ %143, %142 ], [ %129, %130 ], [ %129, %111 ], [ %129, %133 ]
  %146 = icmp ult i64 %119, 4294967296
  br i1 %146, label %147, label %150, !prof !38

147:                                              ; preds = %144
  %148 = trunc i64 %119 to i32
  %149 = udiv i32 %148, %145
  br label %154

150:                                              ; preds = %144
  %151 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %145, i64 %119) #13, !srcloc !130
  %152 = extractvalue { i64, i64 } %151, 1
  %153 = trunc i64 %152 to i32
  br label %154

154:                                              ; preds = %150, %147, %107, %104, %63, %60
  %155 = phi i32 [ %62, %60 ], [ %66, %63 ], [ %106, %104 ], [ %110, %107 ], [ %149, %147 ], [ %153, %150 ]
  %156 = icmp ne i8 %0, 4
  %157 = and i32 %21, 4096
  %158 = icmp eq i32 %157, 0
  %159 = select i1 %156, i1 true, i1 %158
  br i1 %159, label %170, label %160

160:                                              ; preds = %154
  %161 = mul i32 %155, 10
  %162 = zext i32 %161 to i64
  %163 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %162, i32 0) #13, !srcloc !135
  %164 = extractvalue { i64, i32 } %163, 0
  %165 = extractvalue { i64, i32 } %163, 1
  %166 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %162, i64 %164, i32 %165) #13, !srcloc !136
  %167 = extractvalue { i64, i32 } %166, 0
  %168 = lshr i64 %167, 4
  %169 = trunc i64 %168 to i32
  br label %175

170:                                              ; preds = %154
  %171 = and i32 %21, 31
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %175, label %173

173:                                              ; preds = %170
  %174 = udiv i32 %155, %171
  br label %175

175:                                              ; preds = %173, %170, %160, %18, %10
  %176 = phi i32 [ %17, %10 ], [ %174, %173 ], [ 0, %18 ], [ %169, %160 ], [ 0, %170 ]
  ret i32 %176
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dsiescclk_rate(i8 noundef zeroext %0) unnamed_addr #0 {
  %2 = load ptr, ptr @prcmu_base, align 4
  %3 = getelementptr i8, ptr %2, i32 1324
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !137
  %5 = zext i8 %0 to i32
  %6 = getelementptr [3 x %struct.dsiescclk], ptr @dsiescclk, i32 0, i32 %5, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, %4
  %9 = getelementptr [3 x %struct.dsiescclk], ptr @dsiescclk, i32 0, i32 %5, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = lshr i32 %8, %10
  %12 = tail call fastcc i32 @clock_rate(i8 noundef zeroext 29)
  %13 = icmp eq i32 %11, 0
  %14 = select i1 %13, i32 1, i32 %11
  %15 = udiv i32 %12, %14
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @prcmu_round_clock_rate(i8 noundef zeroext %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ult i8 %0, 38
  br i1 %3, label %4, label %54

4:                                                ; preds = %2
  %5 = load ptr, ptr @prcmu_base, align 4
  %6 = zext i8 %0 to i32
  %7 = getelementptr [38 x %struct.clk_mgt], ptr @clk_mgt, i32 0, i32 %6
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr i8, ptr %5, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !138
  %11 = getelementptr [38 x %struct.clk_mgt], ptr @clk_mgt, i32 0, i32 %6, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %12, %10
  %14 = getelementptr [38 x %struct.clk_mgt], ptr @clk_mgt, i32 0, i32 %6, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = tail call fastcc i32 @clock_source_rate(i32 noundef %13, i32 noundef %15) #11
  %17 = icmp ult i32 %16, %1
  br i1 %17, label %24, label %18

18:                                               ; preds = %4
  %19 = udiv i32 %16, %1
  %20 = udiv i32 %16, %19
  %21 = icmp ugt i32 %20, %1
  %22 = zext i1 %21 to i32
  %23 = add i32 %19, %22
  br label %24

24:                                               ; preds = %18, %4
  %25 = phi i32 [ %23, %18 ], [ 1, %4 ]
  %26 = and i32 %10, 512
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = getelementptr [38 x %struct.clk_mgt], ptr @clk_mgt, i32 0, i32 %6, i32 3
  %30 = load i8, ptr %29, align 4, !range !14
  %31 = icmp eq i8 %30, 0
  %32 = tail call i32 @llvm.umin.i32(i32 %25, i32 2) #11
  %33 = select i1 %31, i32 1, i32 %32
  br label %50

34:                                               ; preds = %24
  %35 = icmp eq i8 %0, 4
  %36 = icmp eq i32 %25, 3
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %38, label %50

38:                                               ; preds = %34
  %39 = mul i32 %16, 10
  %40 = zext i32 %39 to i64
  %41 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %40, i32 0) #13, !srcloc !135
  %42 = extractvalue { i64, i32 } %41, 0
  %43 = extractvalue { i64, i32 } %41, 1
  %44 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %40, i64 %42, i32 %43) #13, !srcloc !136
  %45 = extractvalue { i64, i32 } %44, 0
  %46 = lshr i64 %45, 4
  %47 = zext i32 %1 to i64
  %48 = icmp ugt i64 %46, %47
  %49 = trunc i64 %46 to i32
  br i1 %48, label %50, label %181

50:                                               ; preds = %38, %34, %28
  %51 = phi i32 [ 3, %38 ], [ %25, %34 ], [ %33, %28 ]
  %52 = tail call i32 @llvm.umin.i32(i32 %51, i32 31) #11
  %53 = udiv i32 %16, %52
  br label %181

54:                                               ; preds = %2
  switch i8 %0, label %119 [
    i8 44, label %55
    i8 46, label %65
  ]

55:                                               ; preds = %54
  %56 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @fw_info, i32 0, i32 1), align 4
  %57 = icmp eq i32 %56, 13
  %58 = icmp ugt i32 %1, 199680000
  br i1 %58, label %59, label %181

59:                                               ; preds = %55
  %60 = icmp ugt i32 %1, 399360000
  br i1 %60, label %61, label %181

61:                                               ; preds = %59
  %62 = icmp ugt i32 %1, 798720000
  %63 = select i1 %57, i32 1152000000, i32 998400000
  %64 = select i1 %62, i32 %63, i32 798720000
  br label %181

65:                                               ; preds = %54
  %66 = tail call fastcc i32 @clock_rate(i8 noundef zeroext 21) #11
  %67 = icmp eq i32 %1, 0
  br i1 %67, label %181, label %68

68:                                               ; preds = %65
  %69 = zext i32 %66 to i64
  %70 = zext i32 %1 to i64
  br label %71

71:                                               ; preds = %112, %68
  %72 = phi i32 [ 0, %68 ], [ %114, %112 ]
  %73 = phi i32 [ %1, %68 ], [ %113, %112 ]
  %74 = phi i32 [ 7, %68 ], [ %115, %112 ]
  %75 = mul i32 %74, %1
  %76 = udiv i32 %75, %66
  %77 = call i32 @llvm.umin.i32(i32 %76, i32 255)
  %78 = call i32 @llvm.umax.i32(i32 %77, i32 6)
  %79 = zext i32 %78 to i64
  %80 = mul nuw nsw i64 %79, %69
  %81 = shl nuw nsw i64 %80, 1
  %82 = zext i32 %74 to i64
  %83 = mul nuw nsw i64 %82, 600000000
  %84 = icmp ult i64 %81, %83
  %85 = mul nuw nsw i64 %82, 1680640000
  %86 = icmp ult i64 %85, %81
  %87 = select i1 %84, i1 true, i1 %86
  br i1 %87, label %112, label %88

88:                                               ; preds = %71
  %89 = icmp ult i64 %80, 4294967296
  br i1 %89, label %90, label %94, !prof !38

90:                                               ; preds = %88
  %91 = trunc i64 %80 to i32
  %92 = udiv i32 %91, %74
  %93 = zext i32 %92 to i64
  br label %97

94:                                               ; preds = %88
  %95 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %74, i64 %80) #13, !srcloc !130
  %96 = extractvalue { i64, i64 } %95, 1
  br label %97

97:                                               ; preds = %94, %90
  %98 = phi i64 [ %93, %90 ], [ %96, %94 ]
  %99 = icmp ugt i64 %98, %70
  br i1 %99, label %108, label %100

100:                                              ; preds = %97
  %101 = sub i64 %70, %98
  %102 = zext i32 %73 to i64
  %103 = icmp ult i64 %101, %102
  %104 = trunc i64 %101 to i32
  %105 = trunc i64 %98 to i32
  %106 = select i1 %103, i32 %104, i32 %73
  %107 = select i1 %103, i32 %105, i32 %72
  br label %112

108:                                              ; preds = %97
  %109 = icmp eq i32 %72, 0
  %110 = trunc i64 %98 to i32
  %111 = select i1 %109, i32 %110, i32 %72
  br label %181

112:                                              ; preds = %100, %71
  %113 = phi i32 [ %73, %71 ], [ %106, %100 ]
  %114 = phi i32 [ %72, %71 ], [ %107, %100 ]
  %115 = add nsw i32 %74, -1
  %116 = icmp ne i32 %113, 0
  %117 = icmp ne i32 %115, 0
  %118 = select i1 %116, i1 %117, i1 false
  br i1 %118, label %71, label %181

119:                                              ; preds = %54
  %120 = add i8 %0, -47
  %121 = icmp ult i8 %120, 2
  br i1 %121, label %122, label %163

122:                                              ; preds = %119
  %123 = load ptr, ptr @prcmu_base, align 4
  %124 = getelementptr i8, ptr %123, i32 1280
  %125 = tail call fastcc i32 @clock_rate(i8 noundef zeroext 21) #11
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %124) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !129
  %127 = zext i32 %125 to i64
  %128 = and i32 %126, 255
  %129 = zext i32 %128 to i64
  %130 = mul nuw nsw i64 %129, %127
  %131 = lshr i32 %126, 8
  %132 = and i32 %131, 63
  %133 = tail call i32 @llvm.umax.i32(i32 %132, i32 1) #11
  %134 = lshr i32 %126, 16
  %135 = and i32 %134, 7
  %136 = tail call i32 @llvm.umax.i32(i32 %135, i32 1) #11
  %137 = mul nuw nsw i32 %133, %136
  %138 = lshr i32 %126, 24
  %139 = and i32 %138, 1
  %140 = shl nuw nsw i32 %137, %139
  %141 = icmp ult i64 %130, 4294967296
  br i1 %141, label %142, label %145, !prof !38

142:                                              ; preds = %122
  %143 = trunc i64 %130 to i32
  %144 = udiv i32 %143, %140
  br label %149

145:                                              ; preds = %122
  %146 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %140, i64 %130) #13, !srcloc !130
  %147 = extractvalue { i64, i64 } %146, 1
  %148 = trunc i64 %147 to i32
  br label %149

149:                                              ; preds = %145, %142
  %150 = phi i32 [ %144, %142 ], [ %148, %145 ]
  %151 = icmp ult i32 %150, %1
  br i1 %151, label %160, label %152

152:                                              ; preds = %149
  %153 = udiv i32 %150, %1
  %154 = udiv i32 %150, %153
  %155 = icmp ugt i32 %154, %1
  %156 = zext i1 %155 to i32
  %157 = add i32 %153, %156
  %158 = icmp ugt i32 %157, 2
  %159 = select i1 %158, i32 4, i32 %157
  br label %160

160:                                              ; preds = %152, %149
  %161 = phi i32 [ 1, %149 ], [ %159, %152 ]
  %162 = udiv i32 %150, %161
  br label %181

163:                                              ; preds = %119
  %164 = add i8 %0, -49
  %165 = icmp ult i8 %164, 3
  br i1 %165, label %166, label %179

166:                                              ; preds = %163
  %167 = tail call fastcc i32 @clock_rate(i8 noundef zeroext 29) #11
  %168 = icmp ult i32 %167, %1
  br i1 %168, label %175, label %169

169:                                              ; preds = %166
  %170 = udiv i32 %167, %1
  %171 = udiv i32 %167, %170
  %172 = icmp ugt i32 %171, %1
  %173 = zext i1 %172 to i32
  %174 = add i32 %170, %173
  br label %175

175:                                              ; preds = %169, %166
  %176 = phi i32 [ %174, %169 ], [ 1, %166 ]
  %177 = tail call i32 @llvm.umin.i32(i32 %176, i32 255) #11
  %178 = udiv i32 %167, %177
  br label %181

179:                                              ; preds = %163
  %180 = tail call i32 @prcmu_clock_rate(i8 noundef zeroext %0)
  br label %181

181:                                              ; preds = %179, %175, %160, %112, %108, %65, %61, %59, %55, %50, %38
  %182 = phi i32 [ %162, %160 ], [ %178, %175 ], [ %180, %179 ], [ %53, %50 ], [ %49, %38 ], [ 199680000, %55 ], [ 399360000, %59 ], [ %64, %61 ], [ %111, %108 ], [ 0, %65 ], [ %114, %112 ]
  ret i32 %182
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @prcmu_set_clock_rate(i8 noundef zeroext %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ult i8 %0, 38
  br i1 %3, label %4, label %86

4:                                                ; preds = %2
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @clk_mgt_lock) #11
  %6 = load ptr, ptr @prcmu_base, align 4
  %7 = getelementptr i8, ptr %6, i32 1024
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !139
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %11, %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !140
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !141
  %12 = load ptr, ptr @prcmu_base, align 4
  %13 = getelementptr i8, ptr %12, i32 1024
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !139
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %11

17:                                               ; preds = %11, %4
  %18 = load ptr, ptr @prcmu_base, align 4
  %19 = zext i8 %0 to i32
  %20 = getelementptr [38 x %struct.clk_mgt], ptr @clk_mgt, i32 0, i32 %19
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr i8, ptr %18, i32 %21
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !142
  %24 = getelementptr [38 x %struct.clk_mgt], ptr @clk_mgt, i32 0, i32 %19, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = or i32 %25, %23
  %27 = getelementptr [38 x %struct.clk_mgt], ptr @clk_mgt, i32 0, i32 %19, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = tail call fastcc i32 @clock_source_rate(i32 noundef %26, i32 noundef %28) #11
  %30 = icmp ult i32 %29, %1
  br i1 %30, label %37, label %31

31:                                               ; preds = %17
  %32 = udiv i32 %29, %1
  %33 = udiv i32 %29, %32
  %34 = icmp ugt i32 %33, %1
  %35 = zext i1 %34 to i32
  %36 = add i32 %32, %35
  br label %37

37:                                               ; preds = %31, %17
  %38 = phi i32 [ %36, %31 ], [ 1, %17 ]
  %39 = and i32 %23, 512
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %37
  %42 = getelementptr [38 x %struct.clk_mgt], ptr @clk_mgt, i32 0, i32 %19, i32 3
  %43 = load i8, ptr %42, align 4, !range !14
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %79, label %45

45:                                               ; preds = %41
  %46 = icmp ugt i32 %38, 1
  br i1 %46, label %47, label %49

47:                                               ; preds = %45
  %48 = or i32 %23, 2048
  br label %79

49:                                               ; preds = %45
  %50 = and i32 %23, -2049
  br label %79

51:                                               ; preds = %37
  %52 = icmp eq i8 %0, 4
  br i1 %52, label %53, label %75

53:                                               ; preds = %51
  %54 = and i32 %23, -4128
  %55 = icmp eq i32 %38, 3
  br i1 %55, label %56, label %70

56:                                               ; preds = %53
  %57 = mul i32 %29, 10
  %58 = zext i32 %57 to i64
  %59 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %58, i32 0) #13, !srcloc !135
  %60 = extractvalue { i64, i32 } %59, 0
  %61 = extractvalue { i64, i32 } %59, 1
  %62 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %58, i64 %60, i32 %61) #13, !srcloc !136
  %63 = extractvalue { i64, i32 } %62, 0
  %64 = lshr i64 %63, 4
  %65 = zext i32 %1 to i64
  %66 = icmp ugt i64 %64, %65
  %67 = or i32 %54, 4096
  %68 = select i1 %66, i32 3, i32 0
  %69 = select i1 %66, i32 %54, i32 %67
  br label %70

70:                                               ; preds = %56, %53
  %71 = phi i32 [ %68, %56 ], [ %38, %53 ]
  %72 = phi i32 [ %69, %56 ], [ %54, %53 ]
  %73 = tail call i32 @llvm.umin.i32(i32 %71, i32 31) #11
  %74 = or i32 %72, %73
  br label %79

75:                                               ; preds = %51
  %76 = and i32 %23, -32
  %77 = tail call i32 @llvm.umin.i32(i32 %38, i32 31) #11
  %78 = or i32 %77, %76
  br label %79

79:                                               ; preds = %75, %70, %49, %47, %41
  %80 = phi i32 [ %48, %47 ], [ %50, %49 ], [ %23, %41 ], [ %74, %70 ], [ %78, %75 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !143
  tail call void @arm_heavy_mb() #11
  %81 = load ptr, ptr @prcmu_base, align 4
  %82 = load i32, ptr %20, align 4
  %83 = getelementptr i8, ptr %81, i32 %82
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %80) #11, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !144
  tail call void @arm_heavy_mb() #11
  %84 = load ptr, ptr @prcmu_base, align 4
  %85 = getelementptr i8, ptr %84, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 0) #11, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @clk_mgt_lock, i32 noundef %5) #11
  br label %253

86:                                               ; preds = %2
  switch i8 %0, label %163 [
    i8 44, label %87
    i8 46, label %100
  ]

87:                                               ; preds = %86
  switch i32 %1, label %88 [
    i32 199680000, label %95
    i32 399360000, label %93
    i32 798720000, label %94
  ]

88:                                               ; preds = %87
  %89 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @fw_info, i32 0, i32 1), align 4
  %90 = icmp eq i32 %89, 13
  %91 = select i1 %90, i32 1152000000, i32 998400000
  %92 = icmp eq i32 %91, %1
  br i1 %92, label %95, label %253

93:                                               ; preds = %87
  br label %95

94:                                               ; preds = %87
  br label %95

95:                                               ; preds = %94, %93, %88, %87
  %96 = phi i32 [ 3, %88 ], [ 0, %87 ], [ 1, %93 ], [ 2, %94 ]
  %97 = getelementptr [4 x i8], ptr @__const.set_armss_rate.opps, i32 0, i32 %96
  %98 = load i8, ptr %97, align 1
  %99 = tail call i32 @db8500_prcmu_set_arm_opp(i8 noundef zeroext %98) #11
  br label %253

100:                                              ; preds = %86
  %101 = tail call fastcc i32 @clock_rate(i8 noundef zeroext 21) #11
  %102 = icmp eq i32 %1, 0
  br i1 %102, label %253, label %103

103:                                              ; preds = %100
  %104 = zext i32 %101 to i64
  %105 = zext i32 %1 to i64
  br label %106

106:                                              ; preds = %149, %103
  %107 = phi i32 [ %1, %103 ], [ %151, %149 ]
  %108 = phi i32 [ 0, %103 ], [ %150, %149 ]
  %109 = phi i32 [ 7, %103 ], [ %152, %149 ]
  %110 = mul i32 %109, %1
  %111 = udiv i32 %110, %101
  %112 = call i32 @llvm.umin.i32(i32 %111, i32 255)
  %113 = call i32 @llvm.umax.i32(i32 %112, i32 6)
  %114 = zext i32 %113 to i64
  %115 = mul nuw nsw i64 %114, %104
  %116 = shl nuw nsw i64 %115, 1
  %117 = zext i32 %109 to i64
  %118 = mul nuw nsw i64 %117, 600000000
  %119 = icmp ult i64 %116, %118
  %120 = mul nuw nsw i64 %117, 1680640000
  %121 = icmp ult i64 %120, %116
  %122 = select i1 %119, i1 true, i1 %121
  br i1 %122, label %149, label %123

123:                                              ; preds = %106
  %124 = icmp ult i64 %115, 4294967296
  br i1 %124, label %125, label %129, !prof !38

125:                                              ; preds = %123
  %126 = trunc i64 %115 to i32
  %127 = udiv i32 %126, %109
  %128 = zext i32 %127 to i64
  br label %132

129:                                              ; preds = %123
  %130 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %109, i64 %115) #13, !srcloc !130
  %131 = extractvalue { i64, i64 } %130, 1
  br label %132

132:                                              ; preds = %129, %125
  %133 = phi i64 [ %128, %125 ], [ %131, %129 ]
  %134 = icmp ugt i64 %133, %105
  br i1 %134, label %144, label %135

135:                                              ; preds = %132
  %136 = sub i64 %105, %133
  %137 = zext i32 %107 to i64
  %138 = icmp ult i64 %136, %137
  %139 = trunc i64 %136 to i32
  %140 = shl i32 %109, 16
  %141 = or i32 %140, %113
  %142 = select i1 %138, i32 %141, i32 %108
  %143 = select i1 %138, i32 %139, i32 %107
  br label %149

144:                                              ; preds = %132
  %145 = icmp eq i32 %108, 0
  %146 = shl i32 %109, 16
  %147 = or i32 %146, %113
  %148 = select i1 %145, i32 %147, i32 %108
  br label %158

149:                                              ; preds = %135, %106
  %150 = phi i32 [ %108, %106 ], [ %142, %135 ]
  %151 = phi i32 [ %107, %106 ], [ %143, %135 ]
  %152 = add nsw i32 %109, -1
  %153 = icmp ne i32 %151, 0
  %154 = icmp ne i32 %152, 0
  %155 = select i1 %153, i1 %154, i1 false
  br i1 %155, label %106, label %156

156:                                              ; preds = %149
  %157 = icmp eq i32 %150, 0
  br i1 %157, label %253, label %158

158:                                              ; preds = %156, %144
  %159 = phi i32 [ %150, %156 ], [ %148, %144 ]
  %160 = or i32 %159, 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !145
  tail call void @arm_heavy_mb() #11
  %161 = load ptr, ptr @prcmu_base, align 4
  %162 = getelementptr i8, ptr %161, i32 1280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %162, i32 %160) #11, !srcloc !11
  br label %253

163:                                              ; preds = %86
  %164 = add i8 %0, -47
  %165 = icmp ult i8 %164, 2
  br i1 %165, label %166, label %224

166:                                              ; preds = %163
  %167 = load ptr, ptr @prcmu_base, align 4
  %168 = getelementptr i8, ptr %167, i32 1280
  %169 = tail call fastcc i32 @clock_rate(i8 noundef zeroext 21) #11
  %170 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %168) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !129
  %171 = zext i32 %169 to i64
  %172 = and i32 %170, 255
  %173 = zext i32 %172 to i64
  %174 = mul nuw nsw i64 %173, %171
  %175 = lshr i32 %170, 8
  %176 = and i32 %175, 63
  %177 = tail call i32 @llvm.umax.i32(i32 %176, i32 1) #11
  %178 = lshr i32 %170, 16
  %179 = and i32 %178, 7
  %180 = tail call i32 @llvm.umax.i32(i32 %179, i32 1) #11
  %181 = mul nuw nsw i32 %177, %180
  %182 = lshr i32 %170, 24
  %183 = and i32 %182, 1
  %184 = shl nuw nsw i32 %181, %183
  %185 = icmp ult i64 %174, 4294967296
  br i1 %185, label %186, label %189, !prof !38

186:                                              ; preds = %166
  %187 = trunc i64 %174 to i32
  %188 = udiv i32 %187, %184
  br label %193

189:                                              ; preds = %166
  %190 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %184, i64 %174) #13, !srcloc !130
  %191 = extractvalue { i64, i64 } %190, 1
  %192 = trunc i64 %191 to i32
  br label %193

193:                                              ; preds = %189, %186
  %194 = phi i32 [ %188, %186 ], [ %192, %189 ]
  %195 = icmp ult i32 %194, %1
  br i1 %195, label %206, label %196

196:                                              ; preds = %193
  %197 = udiv i32 %194, %1
  %198 = udiv i32 %194, %197
  %199 = icmp ugt i32 %198, %1
  %200 = zext i1 %199 to i32
  %201 = add i32 %197, %200
  %202 = icmp eq i32 %201, 1
  %203 = select i1 %202, i32 1, i32 3
  %204 = icmp eq i32 %201, 2
  %205 = select i1 %204, i32 2, i32 %203
  br label %206

206:                                              ; preds = %196, %193
  %207 = phi i32 [ %205, %196 ], [ 1, %193 ]
  %208 = zext i8 %164 to i32
  %209 = getelementptr [2 x %struct.dsiclk], ptr @dsiclk, i32 0, i32 %208
  %210 = getelementptr [2 x %struct.dsiclk], ptr @dsiclk, i32 0, i32 %208, i32 2
  store i32 %207, ptr %210, align 4
  %211 = load ptr, ptr @prcmu_base, align 4
  %212 = getelementptr i8, ptr %211, i32 1328
  %213 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %212) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !146
  %214 = load i32, ptr %209, align 4
  %215 = xor i32 %214, -1
  %216 = and i32 %213, %215
  %217 = load i32, ptr %210, align 4
  %218 = getelementptr [2 x %struct.dsiclk], ptr @dsiclk, i32 0, i32 %208, i32 1
  %219 = load i32, ptr %218, align 4
  %220 = shl i32 %217, %219
  %221 = or i32 %220, %216
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !147
  tail call void @arm_heavy_mb() #11
  %222 = load ptr, ptr @prcmu_base, align 4
  %223 = getelementptr i8, ptr %222, i32 1328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %223, i32 %221) #11, !srcloc !11
  br label %253

224:                                              ; preds = %163
  %225 = add i8 %0, -49
  %226 = icmp ult i8 %225, 3
  br i1 %226, label %227, label %253

227:                                              ; preds = %224
  %228 = tail call fastcc i32 @clock_rate(i8 noundef zeroext 29) #11
  %229 = icmp ult i32 %228, %1
  br i1 %229, label %236, label %230

230:                                              ; preds = %227
  %231 = udiv i32 %228, %1
  %232 = udiv i32 %228, %231
  %233 = icmp ugt i32 %232, %1
  %234 = zext i1 %233 to i32
  %235 = add i32 %231, %234
  br label %236

236:                                              ; preds = %230, %227
  %237 = phi i32 [ %235, %230 ], [ 1, %227 ]
  %238 = load ptr, ptr @prcmu_base, align 4
  %239 = getelementptr i8, ptr %238, i32 1324
  %240 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %239) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !148
  %241 = zext i8 %225 to i32
  %242 = getelementptr [3 x %struct.dsiescclk], ptr @dsiescclk, i32 0, i32 %241, i32 1
  %243 = load i32, ptr %242, align 4
  %244 = xor i32 %243, -1
  %245 = and i32 %240, %244
  %246 = tail call i32 @llvm.umin.i32(i32 %237, i32 255) #11
  %247 = getelementptr [3 x %struct.dsiescclk], ptr @dsiescclk, i32 0, i32 %241, i32 2
  %248 = load i32, ptr %247, align 4
  %249 = shl i32 %246, %248
  %250 = or i32 %249, %245
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !149
  tail call void @arm_heavy_mb() #11
  %251 = load ptr, ptr @prcmu_base, align 4
  %252 = getelementptr i8, ptr %251, i32 1324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %252, i32 %250) #11, !srcloc !11
  br label %253

253:                                              ; preds = %236, %224, %206, %158, %156, %100, %95, %88, %79
  %254 = phi i32 [ 0, %206 ], [ 0, %236 ], [ 0, %224 ], [ 0, %79 ], [ %99, %95 ], [ -22, %88 ], [ 0, %158 ], [ -22, %156 ], [ -22, %100 ]
  ret i32 %254
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @db8500_prcmu_config_esram0_deep_sleep(i8 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = add i8 %0, -3
  %3 = icmp ult i8 %2, -2
  br i1 %3, label %27, label %4

4:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @mb4_transfer) #11
  %5 = load ptr, ptr @prcmu_base, align 4
  %6 = getelementptr i8, ptr %5, i32 252
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !150
  %8 = and i32 %7, 16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %10, %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !151
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !152
  %11 = load ptr, ptr @prcmu_base, align 4
  %12 = getelementptr i8, ptr %11, i32 252
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !150
  %14 = and i32 %13, 16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %10

16:                                               ; preds = %10, %4
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !153
  tail call void @arm_heavy_mb() #11
  %17 = load ptr, ptr @tcdm_base, align 4
  %18 = getelementptr i8, ptr %17, i32 4076
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %18, i8 1) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !154
  tail call void @arm_heavy_mb() #11
  %19 = load ptr, ptr @tcdm_base, align 4
  %20 = getelementptr i8, ptr %19, i32 3656
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %20, i8 49) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !155
  tail call void @arm_heavy_mb() #11
  %21 = load ptr, ptr @tcdm_base, align 4
  %22 = getelementptr i8, ptr %21, i32 3657
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %22, i8 1) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !156
  tail call void @arm_heavy_mb() #11
  %23 = load ptr, ptr @tcdm_base, align 4
  %24 = getelementptr i8, ptr %23, i32 3659
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %24, i8 %0) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !157
  tail call void @arm_heavy_mb() #11
  %25 = load ptr, ptr @prcmu_base, align 4
  %26 = getelementptr i8, ptr %25, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 16) #11, !srcloc !11
  tail call void @wait_for_completion(ptr noundef getelementptr inbounds (%struct.anon.7, ptr @mb4_transfer, i32 0, i32 1)) #11
  tail call void @mutex_unlock(ptr noundef nonnull @mb4_transfer) #11
  br label %27

27:                                               ; preds = %16, %1
  %28 = phi i32 [ 0, %16 ], [ -22, %1 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @db8500_prcmu_config_hotdog(i8 noundef zeroext %0) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @mb4_transfer) #11
  %2 = load ptr, ptr @prcmu_base, align 4
  %3 = getelementptr i8, ptr %2, i32 252
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !158
  %5 = and i32 %4, 16
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %7, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !159
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !160
  %8 = load ptr, ptr @prcmu_base, align 4
  %9 = getelementptr i8, ptr %8, i32 252
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !158
  %11 = and i32 %10, 16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %7

13:                                               ; preds = %7, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !161
  tail call void @arm_heavy_mb() #11
  %14 = load ptr, ptr @tcdm_base, align 4
  %15 = getelementptr i8, ptr %14, i32 3656
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %15, i8 %0) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !162
  tail call void @arm_heavy_mb() #11
  %16 = load ptr, ptr @tcdm_base, align 4
  %17 = getelementptr i8, ptr %16, i32 4076
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %17, i8 18) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !163
  tail call void @arm_heavy_mb() #11
  %18 = load ptr, ptr @prcmu_base, align 4
  %19 = getelementptr i8, ptr %18, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 16) #11, !srcloc !11
  tail call void @wait_for_completion(ptr noundef getelementptr inbounds (%struct.anon.7, ptr @mb4_transfer, i32 0, i32 1)) #11
  tail call void @mutex_unlock(ptr noundef nonnull @mb4_transfer) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @db8500_prcmu_config_hotmon(i8 noundef zeroext %0, i8 noundef zeroext %1) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @mb4_transfer) #11
  %3 = load ptr, ptr @prcmu_base, align 4
  %4 = getelementptr i8, ptr %3, i32 252
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !164
  %6 = and i32 %5, 16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %8, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !165
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !166
  %9 = load ptr, ptr @prcmu_base, align 4
  %10 = getelementptr i8, ptr %9, i32 252
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !164
  %12 = and i32 %11, 16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %8

14:                                               ; preds = %8, %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !167
  tail call void @arm_heavy_mb() #11
  %15 = load ptr, ptr @tcdm_base, align 4
  %16 = getelementptr i8, ptr %15, i32 3656
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %16, i8 %0) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !168
  tail call void @arm_heavy_mb() #11
  %17 = load ptr, ptr @tcdm_base, align 4
  %18 = getelementptr i8, ptr %17, i32 3657
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %18, i8 %1) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !169
  tail call void @arm_heavy_mb() #11
  %19 = load ptr, ptr @tcdm_base, align 4
  %20 = getelementptr i8, ptr %19, i32 3658
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %20, i8 3) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !170
  tail call void @arm_heavy_mb() #11
  %21 = load ptr, ptr @tcdm_base, align 4
  %22 = getelementptr i8, ptr %21, i32 4076
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %22, i8 19) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !171
  tail call void @arm_heavy_mb() #11
  %23 = load ptr, ptr @prcmu_base, align 4
  %24 = getelementptr i8, ptr %23, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 16) #11, !srcloc !11
  tail call void @wait_for_completion(ptr noundef getelementptr inbounds (%struct.anon.7, ptr @mb4_transfer, i32 0, i32 1)) #11
  tail call void @mutex_unlock(ptr noundef nonnull @mb4_transfer) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @db8500_prcmu_start_temp_sense(i16 noundef zeroext %0) #0 {
  %2 = icmp eq i16 %0, -1
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call fastcc void @config_hot_period(i16 noundef zeroext %0)
  br label %4

4:                                                ; preds = %3, %1
  %5 = phi i32 [ 0, %3 ], [ -22, %1 ]
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @config_hot_period(i16 noundef zeroext %0) unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @mb4_transfer) #11
  %2 = load ptr, ptr @prcmu_base, align 4
  %3 = getelementptr i8, ptr %2, i32 252
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !172
  %5 = and i32 %4, 16
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %7, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !173
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !174
  %8 = load ptr, ptr @prcmu_base, align 4
  %9 = getelementptr i8, ptr %8, i32 252
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !172
  %11 = and i32 %10, 16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %7

13:                                               ; preds = %7, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !175
  tail call void @arm_heavy_mb() #11
  %14 = load ptr, ptr @tcdm_base, align 4
  %15 = getelementptr i8, ptr %14, i32 3656
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %15, i16 %0) #11, !srcloc !176
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !177
  tail call void @arm_heavy_mb() #11
  %16 = load ptr, ptr @tcdm_base, align 4
  %17 = getelementptr i8, ptr %16, i32 4076
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %17, i8 20) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !178
  tail call void @arm_heavy_mb() #11
  %18 = load ptr, ptr @prcmu_base, align 4
  %19 = getelementptr i8, ptr %18, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 16) #11, !srcloc !11
  tail call void @wait_for_completion(ptr noundef getelementptr inbounds (%struct.anon.7, ptr @mb4_transfer, i32 0, i32 1)) #11
  tail call void @mutex_unlock(ptr noundef nonnull @mb4_transfer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @db8500_prcmu_stop_temp_sense() #0 {
  tail call fastcc void @config_hot_period(i16 noundef zeroext -1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @db8500_prcmu_config_a9wdog(i8 noundef zeroext %0, i1 noundef zeroext %1) #0 {
  %3 = add i8 %0, -16
  %4 = icmp ult i8 %3, -15
  br i1 %4, label %5, label %6, !prof !21

5:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mfd/db8500-prcmu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2043, 0\0A.popsection", ""() #11, !srcloc !179
  unreachable

6:                                                ; preds = %2
  %7 = select i1 %1, i8 -128, i8 0
  tail call fastcc void @prcmu_a9wdog(i8 noundef zeroext 22, i8 noundef zeroext %0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext %7)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @prcmu_a9wdog(i8 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @mb4_transfer) #11
  %6 = load ptr, ptr @prcmu_base, align 4
  %7 = getelementptr i8, ptr %6, i32 252
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !180
  %9 = and i32 %8, 16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %11, %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !181
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !182
  %12 = load ptr, ptr @prcmu_base, align 4
  %13 = getelementptr i8, ptr %12, i32 252
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !180
  %15 = and i32 %14, 16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %11

17:                                               ; preds = %11, %5
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !183
  tail call void @arm_heavy_mb() #11
  %18 = load ptr, ptr @tcdm_base, align 4
  %19 = getelementptr i8, ptr %18, i32 3656
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %19, i8 %1) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !184
  tail call void @arm_heavy_mb() #11
  %20 = load ptr, ptr @tcdm_base, align 4
  %21 = getelementptr i8, ptr %20, i32 3657
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %21, i8 %2) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !185
  tail call void @arm_heavy_mb() #11
  %22 = load ptr, ptr @tcdm_base, align 4
  %23 = getelementptr i8, ptr %22, i32 3658
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %23, i8 %3) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !186
  tail call void @arm_heavy_mb() #11
  %24 = load ptr, ptr @tcdm_base, align 4
  %25 = getelementptr i8, ptr %24, i32 3659
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %25, i8 %4) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !187
  tail call void @arm_heavy_mb() #11
  %26 = load ptr, ptr @tcdm_base, align 4
  %27 = getelementptr i8, ptr %26, i32 4076
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %27, i8 %0) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !188
  tail call void @arm_heavy_mb() #11
  %28 = load ptr, ptr @prcmu_base, align 4
  %29 = getelementptr i8, ptr %28, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 16) #11, !srcloc !11
  tail call void @wait_for_completion(ptr noundef getelementptr inbounds (%struct.anon.7, ptr @mb4_transfer, i32 0, i32 1)) #11
  tail call void @mutex_unlock(ptr noundef nonnull @mb4_transfer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @db8500_prcmu_enable_a9wdog(i8 noundef zeroext %0) #0 {
  tail call fastcc void @prcmu_a9wdog(i8 noundef zeroext 23, i8 noundef zeroext %0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @db8500_prcmu_disable_a9wdog(i8 noundef zeroext %0) #0 {
  tail call fastcc void @prcmu_a9wdog(i8 noundef zeroext 24, i8 noundef zeroext %0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @db8500_prcmu_kick_a9wdog(i8 noundef zeroext %0) #0 {
  tail call fastcc void @prcmu_a9wdog(i8 noundef zeroext 32, i8 noundef zeroext %0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @db8500_prcmu_load_a9wdog(i8 noundef zeroext %0, i32 noundef %1) #0 {
  %3 = and i8 %0, 15
  %4 = trunc i32 %1 to i8
  %5 = shl i8 %4, 4
  %6 = or i8 %5, %3
  %7 = lshr i32 %1, 4
  %8 = trunc i32 %7 to i8
  %9 = lshr i32 %1, 12
  %10 = trunc i32 %9 to i8
  %11 = lshr i32 %1, 20
  %12 = trunc i32 %11 to i8
  tail call fastcc void @prcmu_a9wdog(i8 noundef zeroext 25, i8 noundef zeroext %6, i8 noundef zeroext %8, i8 noundef zeroext %10, i8 noundef zeroext %12)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @prcmu_abb_read(i8 noundef zeroext %0, i8 noundef zeroext %1, ptr nocapture noundef writeonly %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = icmp eq i8 %3, 1
  br i1 %5, label %6, label %44

6:                                                ; preds = %4
  tail call void @mutex_lock(ptr noundef nonnull @mb5_transfer) #11
  %7 = load ptr, ptr @prcmu_base, align 4
  %8 = getelementptr i8, ptr %7, i32 252
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !189
  %10 = and i32 %9, 32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %12, %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !190
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !191
  %13 = load ptr, ptr @prcmu_base, align 4
  %14 = getelementptr i8, ptr %13, i32 252
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !189
  %16 = and i32 %15, 32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %12

18:                                               ; preds = %12, %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !192
  tail call void @arm_heavy_mb() #11
  %19 = load ptr, ptr @tcdm_base, align 4
  %20 = getelementptr i8, ptr %19, i32 4077
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %20, i8 0) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !193
  tail call void @arm_heavy_mb() #11
  %21 = shl i8 %0, 1
  %22 = or i8 %21, 65
  %23 = load ptr, ptr @tcdm_base, align 4
  %24 = getelementptr i8, ptr %23, i32 3652
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %24, i8 %22) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !194
  tail call void @arm_heavy_mb() #11
  %25 = load ptr, ptr @tcdm_base, align 4
  %26 = getelementptr i8, ptr %25, i32 3653
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %26, i8 8) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !195
  tail call void @arm_heavy_mb() #11
  %27 = load ptr, ptr @tcdm_base, align 4
  %28 = getelementptr i8, ptr %27, i32 3654
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %28, i8 %1) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !196
  tail call void @arm_heavy_mb() #11
  %29 = load ptr, ptr @tcdm_base, align 4
  %30 = getelementptr i8, ptr %29, i32 3655
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %30, i8 0) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !197
  tail call void @arm_heavy_mb() #11
  %31 = load ptr, ptr @prcmu_base, align 4
  %32 = getelementptr i8, ptr %31, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 32) #11, !srcloc !11
  %33 = tail call i32 @wait_for_completion_timeout(ptr noundef getelementptr inbounds (%struct.anon.8, ptr @mb5_transfer, i32 0, i32 1), i32 noundef 2000) #11
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %18
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.prcmu_abb_read) #12
  br label %42

37:                                               ; preds = %18
  %38 = load i8, ptr getelementptr inbounds (%struct.anon.8, ptr @mb5_transfer, i32 0, i32 2), align 4
  %39 = icmp eq i8 %38, 2
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i8, ptr getelementptr inbounds (%struct.anon.8, ptr @mb5_transfer, i32 0, i32 2, i32 1), align 1
  store i8 %41, ptr %2, align 1
  br label %42

42:                                               ; preds = %40, %37, %35
  %43 = phi i32 [ 0, %40 ], [ -5, %37 ], [ -5, %35 ]
  tail call void @mutex_unlock(ptr noundef nonnull @mb5_transfer) #11
  br label %44

44:                                               ; preds = %42, %4
  %45 = phi i32 [ %43, %42 ], [ -22, %4 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @prcmu_abb_write_masked(i8 noundef zeroext %0, i8 noundef zeroext %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = icmp eq i8 %4, 1
  br i1 %6, label %7, label %47

7:                                                ; preds = %5
  tail call void @mutex_lock(ptr noundef nonnull @mb5_transfer) #11
  %8 = load ptr, ptr @prcmu_base, align 4
  %9 = getelementptr i8, ptr %8, i32 252
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !198
  %11 = and i32 %10, 32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %13, %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !199
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !200
  %14 = load ptr, ptr @prcmu_base, align 4
  %15 = getelementptr i8, ptr %14, i32 252
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !198
  %17 = and i32 %16, 32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %13

19:                                               ; preds = %13, %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !201
  tail call void @arm_heavy_mb() #11
  %20 = load i8, ptr %3, align 1
  %21 = xor i8 %20, -1
  %22 = load ptr, ptr @tcdm_base, align 4
  %23 = getelementptr i8, ptr %22, i32 4077
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %23, i8 %21) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !202
  tail call void @arm_heavy_mb() #11
  %24 = shl i8 %0, 1
  %25 = or i8 %24, 64
  %26 = load ptr, ptr @tcdm_base, align 4
  %27 = getelementptr i8, ptr %26, i32 3652
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %27, i8 %25) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !203
  tail call void @arm_heavy_mb() #11
  %28 = load ptr, ptr @tcdm_base, align 4
  %29 = getelementptr i8, ptr %28, i32 3653
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %29, i8 8) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !204
  tail call void @arm_heavy_mb() #11
  %30 = load ptr, ptr @tcdm_base, align 4
  %31 = getelementptr i8, ptr %30, i32 3654
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %31, i8 %1) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !205
  tail call void @arm_heavy_mb() #11
  %32 = load i8, ptr %2, align 1
  %33 = load ptr, ptr @tcdm_base, align 4
  %34 = getelementptr i8, ptr %33, i32 3655
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %34, i8 %32) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !206
  tail call void @arm_heavy_mb() #11
  %35 = load ptr, ptr @prcmu_base, align 4
  %36 = getelementptr i8, ptr %35, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 32) #11, !srcloc !11
  %37 = tail call i32 @wait_for_completion_timeout(ptr noundef getelementptr inbounds (%struct.anon.8, ptr @mb5_transfer, i32 0, i32 1), i32 noundef 2000) #11
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %19
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.prcmu_abb_write_masked) #12
  br label %45

41:                                               ; preds = %19
  %42 = load i8, ptr getelementptr inbounds (%struct.anon.8, ptr @mb5_transfer, i32 0, i32 2), align 4
  %43 = icmp eq i8 %42, 1
  %44 = select i1 %43, i32 0, i32 -5
  br label %45

45:                                               ; preds = %41, %39
  %46 = phi i32 [ %44, %41 ], [ -5, %39 ]
  tail call void @mutex_unlock(ptr noundef nonnull @mb5_transfer) #11
  br label %47

47:                                               ; preds = %45, %5
  %48 = phi i32 [ %46, %45 ], [ -22, %5 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @prcmu_abb_write(i8 noundef zeroext %0, i8 noundef zeroext %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #11
  store i8 -1, ptr %5, align 1
  %6 = call i32 @prcmu_abb_write_masked(i8 noundef zeroext %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef nonnull %5, i8 noundef zeroext %3)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #11
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @prcmu_ac_wake_req() local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef getelementptr inbounds (%struct.anon.1, ptr @mb0_transfer, i32 0, i32 3)) #11
  %1 = load ptr, ptr @prcmu_base, align 4
  %2 = getelementptr i8, ptr %1, i32 820
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !207
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %0
  store volatile i32 1, ptr @ac_wake_req_state, align 4
  %7 = or i32 %3, 65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !208
  tail call void @arm_heavy_mb() #11
  %8 = load ptr, ptr @prcmu_base, align 4
  %9 = getelementptr i8, ptr %8, i32 820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #11, !srcloc !11
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 6657188) #11
  %11 = or i32 %3, 65537
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !209
  tail call void @arm_heavy_mb() #11
  %12 = load ptr, ptr @prcmu_base, align 4
  %13 = getelementptr i8, ptr %12, i32 820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #11, !srcloc !11
  %14 = tail call i32 @wait_for_completion_timeout(ptr noundef getelementptr inbounds (%struct.anon.1, ptr @mb0_transfer, i32 0, i32 4), i32 noundef 500) #11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %6
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.prcmu_ac_wake_req) #12
  br label %18

18:                                               ; preds = %16, %6, %0
  %19 = phi i32 [ 0, %0 ], [ 0, %6 ], [ -14, %16 ]
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.anon.1, ptr @mb0_transfer, i32 0, i32 3)) #11
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @prcmu_ac_sleep_req() local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef getelementptr inbounds (%struct.anon.1, ptr @mb0_transfer, i32 0, i32 3)) #11
  %1 = load ptr, ptr @prcmu_base, align 4
  %2 = getelementptr i8, ptr %1, i32 820
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !210
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %0
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !211
  tail call void @arm_heavy_mb() #11
  %7 = and i32 %3, -2
  %8 = load ptr, ptr @prcmu_base, align 4
  %9 = getelementptr i8, ptr %8, i32 820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #11, !srcloc !11
  %10 = tail call i32 @wait_for_completion_timeout(ptr noundef getelementptr inbounds (%struct.anon.1, ptr @mb0_transfer, i32 0, i32 4), i32 noundef 500) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.prcmu_ac_sleep_req) #12
  br label %14

14:                                               ; preds = %12, %6
  store volatile i32 0, ptr @ac_wake_req_state, align 4
  br label %15

15:                                               ; preds = %14, %0
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.anon.1, ptr @mb0_transfer, i32 0, i32 3)) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @db8500_prcmu_is_ac_wake_requested() local_unnamed_addr #5 {
  %1 = load volatile i32, ptr @ac_wake_req_state, align 4
  %2 = icmp ne i32 %1, 0
  ret i1 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @db8500_prcmu_system_reset(i16 noundef zeroext %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !212
  tail call void @arm_heavy_mb() #11
  %2 = load ptr, ptr @tcdm_base, align 4
  %3 = getelementptr i8, ptr %2, i32 4088
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %3, i16 %0) #11, !srcloc !176
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !213
  tail call void @arm_heavy_mb() #11
  %4 = load ptr, ptr @prcmu_base, align 4
  %5 = getelementptr i8, ptr %4, i32 552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 1) #11, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @db8500_prcmu_get_reset_code() local_unnamed_addr #0 {
  %1 = load ptr, ptr @tcdm_base, align 4
  %2 = getelementptr i8, ptr %1, i32 4088
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %2) #11, !srcloc !214
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !215
  ret i16 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @db8500_prcmu_modem_reset() local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @mb1_transfer) #11
  %1 = load ptr, ptr @prcmu_base, align 4
  %2 = getelementptr i8, ptr %1, i32 252
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !216
  %4 = and i32 %3, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %6, %0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !217
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !218
  %7 = load ptr, ptr @prcmu_base, align 4
  %8 = getelementptr i8, ptr %7, i32 252
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !216
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %6

12:                                               ; preds = %6, %0
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !219
  tail call void @arm_heavy_mb() #11
  %13 = load ptr, ptr @tcdm_base, align 4
  %14 = getelementptr i8, ptr %13, i32 4073
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %14, i8 2) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !220
  tail call void @arm_heavy_mb() #11
  %15 = load ptr, ptr @prcmu_base, align 4
  %16 = getelementptr i8, ptr %15, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 2) #11, !srcloc !11
  tail call void @wait_for_completion(ptr noundef getelementptr inbounds (%struct.anon.3, ptr @mb1_transfer, i32 0, i32 1)) #11
  tail call void @mutex_unlock(ptr noundef nonnull @mb1_transfer) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @db8500_prcmu_early_init() local_unnamed_addr #6 section ".init.text" {
  %1 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.2) #11
  %2 = tail call ptr @of_iomap(ptr noundef %1, i32 noundef 0) #11
  store ptr %2, ptr @prcmu_base, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  tail call void @of_node_put(ptr noundef %1) #11
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.db8500_prcmu_early_init) #12
  br label %48

6:                                                ; preds = %0
  %7 = tail call ptr @of_iomap(ptr noundef %1, i32 noundef 1) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #12
  br label %47

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %7, i32 164
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !221
  %14 = and i32 %13, 255
  store i32 %14, ptr getelementptr inbounds (%struct.anon, ptr @fw_info, i32 0, i32 1), align 4
  %15 = lshr i32 %13, 8
  %16 = trunc i32 %15 to i8
  store i8 %16, ptr getelementptr inbounds (%struct.anon, ptr @fw_info, i32 0, i32 1, i32 1), align 4
  %17 = lshr i32 %13, 16
  %18 = trunc i32 %17 to i8
  store i8 %18, ptr getelementptr inbounds (%struct.anon, ptr @fw_info, i32 0, i32 1, i32 2), align 1
  %19 = lshr i32 %13, 24
  %20 = trunc i32 %19 to i8
  store i8 %20, ptr getelementptr inbounds (%struct.anon, ptr @fw_info, i32 0, i32 1, i32 3), align 2
  %21 = trunc i32 %13 to i8
  switch i8 %21, label %40 [
    i8 2, label %41
    i8 3, label %22
    i8 4, label %23
    i8 5, label %24
    i8 6, label %25
    i8 7, label %26
    i8 8, label %27
    i8 9, label %28
    i8 10, label %29
    i8 11, label %30
    i8 12, label %31
    i8 13, label %32
    i8 14, label %33
    i8 15, label %34
    i8 17, label %35
    i8 32, label %36
    i8 20, label %37
    i8 64, label %38
    i8 96, label %39
  ]

22:                                               ; preds = %11
  br label %41

23:                                               ; preds = %11
  br label %41

24:                                               ; preds = %11
  br label %41

25:                                               ; preds = %11
  br label %41

26:                                               ; preds = %11
  br label %41

27:                                               ; preds = %11
  br label %41

28:                                               ; preds = %11
  br label %41

29:                                               ; preds = %11
  br label %41

30:                                               ; preds = %11
  br label %41

31:                                               ; preds = %11
  br label %41

32:                                               ; preds = %11
  br label %41

33:                                               ; preds = %11
  br label %41

34:                                               ; preds = %11
  br label %41

35:                                               ; preds = %11
  br label %41

36:                                               ; preds = %11
  br label %41

37:                                               ; preds = %11
  br label %41

38:                                               ; preds = %11
  br label %41

39:                                               ; preds = %11
  br label %41

40:                                               ; preds = %11
  br label %41

41:                                               ; preds = %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %11
  %42 = phi ptr [ @.str.37, %40 ], [ @.str.36, %39 ], [ @.str.35, %38 ], [ @.str.34, %37 ], [ @.str.33, %36 ], [ @.str.32, %35 ], [ @.str.31, %34 ], [ @.str.30, %33 ], [ @.str.29, %32 ], [ @.str.28, %31 ], [ @.str.27, %30 ], [ @.str.26, %29 ], [ @.str.25, %28 ], [ @.str.24, %27 ], [ @.str.23, %26 ], [ @.str.22, %25 ], [ @.str.21, %24 ], [ @.str.20, %23 ], [ @.str.19, %22 ], [ @.str.18, %11 ]
  %43 = tail call ptr @strncpy(ptr noundef getelementptr inbounds (%struct.anon, ptr @fw_info, i32 0, i32 1, i32 4), ptr noundef nonnull %42, i32 noundef 20) #11
  store i8 1, ptr @fw_info, align 4
  %44 = and i32 %15, 255
  %45 = and i32 %17, 255
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef getelementptr inbounds (%struct.anon, ptr @fw_info, i32 0, i32 1, i32 4), i32 noundef %14, i32 noundef %44, i32 noundef %45, i32 noundef %19) #12
  tail call void @iounmap(ptr noundef nonnull %7) #11
  br label %47

47:                                               ; preds = %41, %9
  tail call void @of_node_put(ptr noundef %1) #11
  store i32 0, ptr @mb0_transfer, align 4
  store i32 0, ptr getelementptr inbounds (%struct.anon.1, ptr @mb0_transfer, i32 0, i32 1), align 4
  tail call void @__mutex_init(ptr noundef getelementptr inbounds (%struct.anon.1, ptr @mb0_transfer, i32 0, i32 3), ptr noundef nonnull @.str.4, ptr noundef nonnull @db8500_prcmu_early_init.__key) #11
  store i32 0, ptr getelementptr inbounds (%struct.anon.1, ptr @mb0_transfer, i32 0, i32 4), align 4
  tail call void @__init_swait_queue_head(ptr noundef getelementptr inbounds (%struct.anon.1, ptr @mb0_transfer, i32 0, i32 4, i32 1), ptr noundef nonnull @.str.38, ptr noundef nonnull @init_completion.__key) #11
  tail call void @__mutex_init(ptr noundef nonnull @mb1_transfer, ptr noundef nonnull @.str.6, ptr noundef nonnull @db8500_prcmu_early_init.__key.5) #11
  store i32 0, ptr getelementptr inbounds (%struct.anon.3, ptr @mb1_transfer, i32 0, i32 1), align 4
  tail call void @__init_swait_queue_head(ptr noundef getelementptr inbounds (%struct.anon.3, ptr @mb1_transfer, i32 0, i32 1, i32 1), ptr noundef nonnull @.str.38, ptr noundef nonnull @init_completion.__key) #11
  store i8 1, ptr getelementptr inbounds (%struct.anon.3, ptr @mb1_transfer, i32 0, i32 2), align 4
  tail call void @__mutex_init(ptr noundef nonnull @mb2_transfer, ptr noundef nonnull @.str.8, ptr noundef nonnull @db8500_prcmu_early_init.__key.7) #11
  store i32 0, ptr getelementptr inbounds (%struct.anon.5, ptr @mb2_transfer, i32 0, i32 1), align 4
  tail call void @__init_swait_queue_head(ptr noundef getelementptr inbounds (%struct.anon.5, ptr @mb2_transfer, i32 0, i32 1, i32 1), ptr noundef nonnull @.str.38, ptr noundef nonnull @init_completion.__key) #11
  store i32 0, ptr getelementptr inbounds (%struct.anon.5, ptr @mb2_transfer, i32 0, i32 2), align 4
  store i32 0, ptr @mb3_transfer, align 4
  tail call void @__mutex_init(ptr noundef getelementptr inbounds (%struct.anon.81, ptr @mb3_transfer, i32 0, i32 1), ptr noundef nonnull @.str.10, ptr noundef nonnull @db8500_prcmu_early_init.__key.9) #11
  store i32 0, ptr getelementptr inbounds (%struct.anon.81, ptr @mb3_transfer, i32 0, i32 2), align 4
  tail call void @__init_swait_queue_head(ptr noundef getelementptr inbounds (%struct.anon.81, ptr @mb3_transfer, i32 0, i32 2, i32 1), ptr noundef nonnull @.str.38, ptr noundef nonnull @init_completion.__key) #11
  tail call void @__mutex_init(ptr noundef nonnull @mb4_transfer, ptr noundef nonnull @.str.12, ptr noundef nonnull @db8500_prcmu_early_init.__key.11) #11
  store i32 0, ptr getelementptr inbounds (%struct.anon.7, ptr @mb4_transfer, i32 0, i32 1), align 4
  tail call void @__init_swait_queue_head(ptr noundef getelementptr inbounds (%struct.anon.7, ptr @mb4_transfer, i32 0, i32 1, i32 1), ptr noundef nonnull @.str.38, ptr noundef nonnull @init_completion.__key) #11
  tail call void @__mutex_init(ptr noundef nonnull @mb5_transfer, ptr noundef nonnull @.str.14, ptr noundef nonnull @db8500_prcmu_early_init.__key.13) #11
  store i32 0, ptr getelementptr inbounds (%struct.anon.8, ptr @mb5_transfer, i32 0, i32 1), align 4
  tail call void @__init_swait_queue_head(ptr noundef getelementptr inbounds (%struct.anon.8, ptr @mb5_transfer, i32 0, i32 1, i32 1), ptr noundef nonnull @.str.38, ptr noundef nonnull @init_completion.__key) #11
  store i32 -32, ptr getelementptr inbounds (%struct.anon.1, ptr @mb0_transfer, i32 0, i32 2), align 4
  store volatile ptr getelementptr inbounds (%struct.anon.1, ptr @mb0_transfer, i32 0, i32 2, i32 1), ptr getelementptr inbounds (%struct.anon.1, ptr @mb0_transfer, i32 0, i32 2, i32 1), align 4
  store ptr getelementptr inbounds (%struct.anon.1, ptr @mb0_transfer, i32 0, i32 2, i32 1), ptr getelementptr inbounds (%struct.anon.1, ptr @mb0_transfer, i32 0, i32 2, i32 1, i32 1), align 4
  store ptr @prcmu_mask_work, ptr getelementptr inbounds (%struct.anon.1, ptr @mb0_transfer, i32 0, i32 2, i32 2), align 4
  br label %48

48:                                               ; preds = %47, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @prcmu_mask_work(ptr nocapture noundef readnone %0) #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @mb0_transfer) #11
  tail call fastcc void @config_wakeups()
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @mb0_transfer, i32 noundef %2) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @db8500_prcmu_init() #6 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @db8500_prcmu_driver, ptr noundef null) #11
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clock_source_rate(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = and i32 %0, 512
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %132

5:                                                ; preds = %2
  %6 = trunc i32 %0 to i8
  %7 = and i8 %6, -32
  switch i8 %7, label %132 [
    i8 32, label %8
    i8 64, label %49
    i8 -128, label %91
  ]

8:                                                ; preds = %5
  %9 = load ptr, ptr @prcmu_base, align 4
  %10 = getelementptr i8, ptr %9, i32 128
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !129
  %12 = and i32 %11, 255
  %13 = zext i32 %12 to i64
  %14 = mul nuw nsw i64 %13, 38400000
  %15 = lshr i32 %11, 8
  %16 = and i32 %15, 63
  %17 = tail call i32 @llvm.umax.i32(i32 %16, i32 1) #11
  %18 = lshr i32 %11, 16
  %19 = and i32 %18, 7
  %20 = tail call i32 @llvm.umax.i32(i32 %19, i32 1) #11
  %21 = mul nuw nsw i32 %17, %20
  %22 = lshr i32 %11, 24
  %23 = and i32 %22, 1
  %24 = shl nuw nsw i32 %21, %23
  switch i32 %1, label %39 [
    i32 1, label %37
    i32 2, label %25
  ]

25:                                               ; preds = %8
  %26 = and i32 %11, 33554432
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr @prcmu_base, align 4
  %30 = icmp eq ptr %29, %9
  %31 = getelementptr i8, ptr %29, i32 136
  %32 = icmp eq ptr %31, %10
  %33 = or i1 %30, %32
  %34 = getelementptr i8, ptr %29, i32 140
  %35 = icmp eq ptr %34, %10
  %36 = or i1 %35, %33
  br i1 %36, label %37, label %39

37:                                               ; preds = %28, %8
  %38 = shl nuw nsw i32 %24, 1
  br label %39

39:                                               ; preds = %37, %28, %25, %8
  %40 = phi i32 [ %38, %37 ], [ %24, %25 ], [ %24, %8 ], [ %24, %28 ]
  %41 = icmp ult i64 %14, 4294967296
  br i1 %41, label %42, label %45, !prof !38

42:                                               ; preds = %39
  %43 = trunc i64 %14 to i32
  %44 = udiv i32 %43, %40
  br label %132

45:                                               ; preds = %39
  %46 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %40, i64 %14) #13, !srcloc !130
  %47 = extractvalue { i64, i64 } %46, 1
  %48 = trunc i64 %47 to i32
  br label %132

49:                                               ; preds = %5
  %50 = load ptr, ptr @prcmu_base, align 4
  %51 = getelementptr i8, ptr %50, i32 132
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !129
  %53 = and i32 %52, 255
  %54 = zext i32 %53 to i64
  %55 = mul nuw nsw i64 %54, 38400000
  %56 = lshr i32 %52, 8
  %57 = and i32 %56, 63
  %58 = tail call i32 @llvm.umax.i32(i32 %57, i32 1) #11
  %59 = lshr i32 %52, 16
  %60 = and i32 %59, 7
  %61 = tail call i32 @llvm.umax.i32(i32 %60, i32 1) #11
  %62 = mul nuw nsw i32 %58, %61
  %63 = lshr i32 %52, 24
  %64 = and i32 %63, 1
  %65 = shl nuw nsw i32 %62, %64
  switch i32 %1, label %81 [
    i32 1, label %79
    i32 2, label %66
  ]

66:                                               ; preds = %49
  %67 = and i32 %52, 33554432
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %81, label %69

69:                                               ; preds = %66
  %70 = load ptr, ptr @prcmu_base, align 4
  %71 = getelementptr i8, ptr %70, i32 128
  %72 = icmp eq ptr %71, %51
  %73 = getelementptr i8, ptr %70, i32 136
  %74 = icmp eq ptr %73, %51
  %75 = or i1 %72, %74
  %76 = getelementptr i8, ptr %70, i32 140
  %77 = icmp eq ptr %76, %51
  %78 = select i1 %75, i1 true, i1 %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %69, %49
  %80 = shl nuw nsw i32 %65, 1
  br label %81

81:                                               ; preds = %79, %69, %66, %49
  %82 = phi i32 [ %80, %79 ], [ %65, %66 ], [ %65, %49 ], [ %65, %69 ]
  %83 = icmp ult i64 %55, 4294967296
  br i1 %83, label %84, label %87, !prof !38

84:                                               ; preds = %81
  %85 = trunc i64 %55 to i32
  %86 = udiv i32 %85, %82
  br label %132

87:                                               ; preds = %81
  %88 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %82, i64 %55) #13, !srcloc !130
  %89 = extractvalue { i64, i64 } %88, 1
  %90 = trunc i64 %89 to i32
  br label %132

91:                                               ; preds = %5
  %92 = load ptr, ptr @prcmu_base, align 4
  %93 = getelementptr i8, ptr %92, i32 140
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %93) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !129
  %95 = and i32 %94, 255
  %96 = zext i32 %95 to i64
  %97 = mul nuw nsw i64 %96, 38400000
  %98 = lshr i32 %94, 8
  %99 = and i32 %98, 63
  %100 = tail call i32 @llvm.umax.i32(i32 %99, i32 1) #11
  %101 = lshr i32 %94, 16
  %102 = and i32 %101, 7
  %103 = tail call i32 @llvm.umax.i32(i32 %102, i32 1) #11
  %104 = mul nuw nsw i32 %100, %103
  %105 = lshr i32 %94, 24
  %106 = and i32 %105, 1
  %107 = shl nuw nsw i32 %104, %106
  switch i32 %1, label %122 [
    i32 1, label %120
    i32 2, label %108
  ]

108:                                              ; preds = %91
  %109 = and i32 %94, 33554432
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %122, label %111

111:                                              ; preds = %108
  %112 = load ptr, ptr @prcmu_base, align 4
  %113 = getelementptr i8, ptr %112, i32 128
  %114 = icmp eq ptr %113, %93
  %115 = getelementptr i8, ptr %112, i32 136
  %116 = icmp eq ptr %115, %93
  %117 = or i1 %114, %116
  %118 = icmp eq ptr %112, %92
  %119 = select i1 %117, i1 true, i1 %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %111, %91
  %121 = shl nuw nsw i32 %107, 1
  br label %122

122:                                              ; preds = %120, %111, %108, %91
  %123 = phi i32 [ %121, %120 ], [ %107, %108 ], [ %107, %91 ], [ %107, %111 ]
  %124 = icmp ult i64 %97, 4294967296
  br i1 %124, label %125, label %128, !prof !38

125:                                              ; preds = %122
  %126 = trunc i64 %97 to i32
  %127 = udiv i32 %126, %123
  br label %132

128:                                              ; preds = %122
  %129 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %123, i64 %97) #13, !srcloc !130
  %130 = extractvalue { i64, i64 } %129, 1
  %131 = trunc i64 %130 to i32
  br label %132

132:                                              ; preds = %128, %125, %87, %84, %45, %42, %5, %2
  %133 = phi i32 [ 38400000, %2 ], [ 0, %5 ], [ %44, %42 ], [ %48, %45 ], [ %86, %84 ], [ %90, %87 ], [ %127, %125 ], [ %131, %128 ]
  ret i32 %133
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @db8500_prcmu_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.40) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.41) #12
  br label %122

8:                                                ; preds = %1
  %9 = load i32, ptr %5, align 4
  %10 = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = sub i32 1, %9
  %13 = add i32 %12, %11
  %14 = tail call ptr @devm_ioremap(ptr noundef %2, i32 noundef %9, i32 noundef %13) #11
  store ptr %14, ptr @prcmu_base, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.42) #12
  br label %122

17:                                               ; preds = %8
  %18 = getelementptr i8, ptr %14, i32 412
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !222
  %20 = and i32 %19, -4
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !223
  tail call void @arm_heavy_mb() #11
  %21 = load ptr, ptr @prcmu_base, align 4
  %22 = getelementptr i8, ptr %21, i32 412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #11, !srcloc !11
  %23 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.43) #11
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.44) #12
  br label %122

26:                                               ; preds = %17
  %27 = load i32, ptr %23, align 4
  %28 = getelementptr inbounds %struct.resource, ptr %23, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = sub i32 1, %27
  %31 = add i32 %30, %29
  %32 = tail call ptr @devm_ioremap(ptr noundef %2, i32 noundef %27, i32 noundef %31) #11
  store ptr %32, ptr @tcdm_base, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.45) #12
  br label %122

35:                                               ; preds = %26
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !224
  tail call void @arm_heavy_mb() #11
  %36 = load ptr, ptr @prcmu_base, align 4
  %37 = getelementptr i8, ptr %36, i32 1164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 255) #11, !srcloc !11
  %38 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #11
  %39 = icmp slt i32 %38, 1
  br i1 %39, label %122, label %40

40:                                               ; preds = %35
  %41 = tail call i32 @request_threaded_irq(i32 noundef %38, ptr noundef nonnull @prcmu_irq_handler, ptr noundef nonnull @prcmu_irq_thread_fn, i32 noundef 16384, ptr noundef nonnull @.str.40, ptr noundef null) #11
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #12
  br label %122

45:                                               ; preds = %40
  %46 = icmp eq ptr %4, null
  %47 = getelementptr inbounds %struct.device_node, ptr %4, i32 0, i32 3
  %48 = select i1 %46, ptr null, ptr %47
  %49 = tail call ptr @irq_domain_create_simple(ptr noundef %48, i32 noundef 23, i32 noundef 0, ptr noundef nonnull @db8500_irq_ops, ptr noundef null) #11
  store ptr %49, ptr @db8500_irq_domain, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %97, label %51

51:                                               ; preds = %45
  %52 = tail call i32 @irq_create_mapping_affinity(ptr noundef nonnull %49, i32 noundef 0, ptr noundef null) #11
  %53 = load ptr, ptr @db8500_irq_domain, align 4
  %54 = tail call i32 @irq_create_mapping_affinity(ptr noundef %53, i32 noundef 1, ptr noundef null) #11
  %55 = load ptr, ptr @db8500_irq_domain, align 4
  %56 = tail call i32 @irq_create_mapping_affinity(ptr noundef %55, i32 noundef 2, ptr noundef null) #11
  %57 = load ptr, ptr @db8500_irq_domain, align 4
  %58 = tail call i32 @irq_create_mapping_affinity(ptr noundef %57, i32 noundef 3, ptr noundef null) #11
  %59 = load ptr, ptr @db8500_irq_domain, align 4
  %60 = tail call i32 @irq_create_mapping_affinity(ptr noundef %59, i32 noundef 4, ptr noundef null) #11
  %61 = load ptr, ptr @db8500_irq_domain, align 4
  %62 = tail call i32 @irq_create_mapping_affinity(ptr noundef %61, i32 noundef 5, ptr noundef null) #11
  %63 = load ptr, ptr @db8500_irq_domain, align 4
  %64 = tail call i32 @irq_create_mapping_affinity(ptr noundef %63, i32 noundef 6, ptr noundef null) #11
  %65 = load ptr, ptr @db8500_irq_domain, align 4
  %66 = tail call i32 @irq_create_mapping_affinity(ptr noundef %65, i32 noundef 7, ptr noundef null) #11
  %67 = load ptr, ptr @db8500_irq_domain, align 4
  %68 = tail call i32 @irq_create_mapping_affinity(ptr noundef %67, i32 noundef 8, ptr noundef null) #11
  %69 = load ptr, ptr @db8500_irq_domain, align 4
  %70 = tail call i32 @irq_create_mapping_affinity(ptr noundef %69, i32 noundef 9, ptr noundef null) #11
  %71 = load ptr, ptr @db8500_irq_domain, align 4
  %72 = tail call i32 @irq_create_mapping_affinity(ptr noundef %71, i32 noundef 10, ptr noundef null) #11
  %73 = load ptr, ptr @db8500_irq_domain, align 4
  %74 = tail call i32 @irq_create_mapping_affinity(ptr noundef %73, i32 noundef 11, ptr noundef null) #11
  %75 = load ptr, ptr @db8500_irq_domain, align 4
  %76 = tail call i32 @irq_create_mapping_affinity(ptr noundef %75, i32 noundef 12, ptr noundef null) #11
  %77 = load ptr, ptr @db8500_irq_domain, align 4
  %78 = tail call i32 @irq_create_mapping_affinity(ptr noundef %77, i32 noundef 13, ptr noundef null) #11
  %79 = load ptr, ptr @db8500_irq_domain, align 4
  %80 = tail call i32 @irq_create_mapping_affinity(ptr noundef %79, i32 noundef 14, ptr noundef null) #11
  %81 = load ptr, ptr @db8500_irq_domain, align 4
  %82 = tail call i32 @irq_create_mapping_affinity(ptr noundef %81, i32 noundef 15, ptr noundef null) #11
  %83 = load ptr, ptr @db8500_irq_domain, align 4
  %84 = tail call i32 @irq_create_mapping_affinity(ptr noundef %83, i32 noundef 16, ptr noundef null) #11
  %85 = load ptr, ptr @db8500_irq_domain, align 4
  %86 = tail call i32 @irq_create_mapping_affinity(ptr noundef %85, i32 noundef 17, ptr noundef null) #11
  %87 = load ptr, ptr @db8500_irq_domain, align 4
  %88 = tail call i32 @irq_create_mapping_affinity(ptr noundef %87, i32 noundef 18, ptr noundef null) #11
  %89 = load ptr, ptr @db8500_irq_domain, align 4
  %90 = tail call i32 @irq_create_mapping_affinity(ptr noundef %89, i32 noundef 19, ptr noundef null) #11
  %91 = load ptr, ptr @db8500_irq_domain, align 4
  %92 = tail call i32 @irq_create_mapping_affinity(ptr noundef %91, i32 noundef 20, ptr noundef null) #11
  %93 = load ptr, ptr @db8500_irq_domain, align 4
  %94 = tail call i32 @irq_create_mapping_affinity(ptr noundef %93, i32 noundef 21, ptr noundef null) #11
  %95 = load ptr, ptr @db8500_irq_domain, align 4
  %96 = tail call i32 @irq_create_mapping_affinity(ptr noundef %95, i32 noundef 22, ptr noundef null) #11
  br label %99

97:                                               ; preds = %45
  %98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #12
  br label %99

99:                                               ; preds = %97, %51
  %100 = tail call i32 @db8500_prcmu_config_esram0_deep_sleep(i8 noundef zeroext 2) #11
  %101 = load ptr, ptr @db8500_irq_domain, align 4
  %102 = tail call i32 @mfd_add_devices(ptr noundef %2, i32 noundef 0, ptr noundef nonnull @common_prcmu_devs, i32 noundef 2, ptr noundef null, i32 noundef 0, ptr noundef %101) #11
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %99
  %105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #12
  br label %122

106:                                              ; preds = %99
  %107 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.48) #11
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %106
  %110 = load ptr, ptr @db8500_irq_domain, align 4
  %111 = tail call i32 @mfd_add_devices(ptr noundef %2, i32 noundef 0, ptr noundef nonnull @db8500_prcmu_devs, i32 noundef 2, ptr noundef null, i32 noundef 0, ptr noundef %110) #11
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %109
  tail call void @mfd_remove_devices(ptr noundef %2) #11
  %114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #12
  br label %122

115:                                              ; preds = %109, %106
  %116 = tail call fastcc i32 @db8500_prcmu_register_ab8500(ptr noundef %2)
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %115
  tail call void @mfd_remove_devices(ptr noundef %2) #11
  %119 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #12
  br label %122

120:                                              ; preds = %115
  %121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #12
  br label %122

122:                                              ; preds = %120, %118, %113, %104, %43, %35, %34, %25, %16, %7
  %123 = phi i32 [ %41, %43 ], [ %102, %104 ], [ %116, %118 ], [ 0, %120 ], [ %111, %113 ], [ -12, %34 ], [ -22, %25 ], [ -12, %16 ], [ -22, %7 ], [ %38, %35 ]
  ret i32 %123
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @prcmu_irq_handler(i32 noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = load ptr, ptr @prcmu_base, align 4
  %4 = getelementptr i8, ptr %3, i32 1172
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !225
  %6 = and i32 %5, 255
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %27, label %8, !prof !21

8:                                                ; preds = %22, %2
  %9 = phi i32 [ %24, %22 ], [ %6, %2 ]
  %10 = phi i8 [ %25, %22 ], [ 0, %2 ]
  %11 = phi i32 [ %23, %22 ], [ 1, %2 ]
  %12 = zext i8 %10 to i32
  %13 = shl nuw i32 1, %12
  %14 = and i32 %13, %9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %8
  %17 = sub i32 %9, %13
  %18 = getelementptr [8 x ptr], ptr @read_mailbox, i32 0, i32 %12
  %19 = load ptr, ptr %18, align 4
  %20 = tail call zeroext i1 %19() #11
  %21 = select i1 %20, i32 2, i32 %11
  br label %22

22:                                               ; preds = %16, %8
  %23 = phi i32 [ %11, %8 ], [ %21, %16 ]
  %24 = phi i32 [ %9, %8 ], [ %17, %16 ]
  %25 = add i8 %10, 1
  %26 = icmp eq i32 %24, 0
  br i1 %26, label %27, label %8

27:                                               ; preds = %22, %2
  %28 = phi i32 [ 0, %2 ], [ %23, %22 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @prcmu_irq_thread_fn(i32 noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @mb0_transfer) #11
  %4 = load ptr, ptr @prcmu_base, align 4
  %5 = getelementptr i8, ptr %4, i32 252
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !226
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %9, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !227
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !228
  %10 = load ptr, ptr @prcmu_base, align 4
  %11 = getelementptr i8, ptr %10, i32 252
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !226
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %9

15:                                               ; preds = %9, %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !229
  tail call void @arm_heavy_mb() #11
  %16 = load ptr, ptr @tcdm_base, align 4
  %17 = getelementptr i8, ptr %16, i32 4072
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %17, i8 3) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !230
  tail call void @arm_heavy_mb() #11
  %18 = load ptr, ptr @prcmu_base, align 4
  %19 = getelementptr i8, ptr %18, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 1) #11, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @mb0_transfer, i32 noundef %3) #11
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mfd_remove_devices(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @db8500_prcmu_register_ab8500(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.resource, align 4
  %3 = alloca %struct.mfd_cell, align 8
  %4 = alloca %struct.mfd_cell, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !231
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #11
  %5 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(80) %5, i8 0, i64 80, i1 false)
  store ptr @.str.120, ptr %3, align 8
  %6 = getelementptr inbounds %struct.mfd_cell, ptr %3, i32 0, i32 1
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.mfd_cell, ptr %3, i32 0, i32 10
  store ptr @.str.121, ptr %7, align 8
  %8 = getelementptr inbounds %struct.mfd_cell, ptr %3, i32 0, i32 14
  store i32 1, ptr %8, align 8
  %9 = getelementptr inbounds %struct.mfd_cell, ptr %3, i32 0, i32 15
  store ptr %2, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #11
  %10 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(80) %10, i8 0, i64 80, i1 false)
  store ptr @.str.122, ptr %4, align 8
  %11 = getelementptr inbounds %struct.mfd_cell, ptr %4, i32 0, i32 1
  store i32 1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.mfd_cell, ptr %4, i32 0, i32 10
  store ptr @.str.123, ptr %12, align 8
  %13 = getelementptr inbounds %struct.mfd_cell, ptr %4, i32 0, i32 14
  store i32 1, ptr %13, align 8
  %14 = getelementptr inbounds %struct.mfd_cell, ptr %4, i32 0, i32 15
  store ptr %2, ptr %14, align 4
  %15 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %37, label %18

18:                                               ; preds = %1
  %19 = call ptr @of_get_next_child(ptr noundef nonnull %16, ptr noundef null) #11
  %20 = icmp eq ptr %19, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %28, %18
  %22 = phi ptr [ %30, %28 ], [ %19, %18 ]
  %23 = call i32 @of_device_is_compatible(ptr noundef nonnull %22, ptr noundef nonnull @.str.121) #11
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = call i32 @of_device_is_compatible(ptr noundef nonnull %22, ptr noundef nonnull @.str.123) #11
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load ptr, ptr %15, align 8
  %30 = call ptr @of_get_next_child(ptr noundef %29, ptr noundef nonnull %22) #11
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %21

32:                                               ; preds = %28, %18
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.124) #12
  br label %37

33:                                               ; preds = %25, %21
  %34 = phi ptr [ %4, %25 ], [ %3, %21 ]
  %35 = call i32 @of_irq_to_resource_table(ptr noundef nonnull %22, ptr noundef nonnull %2, i32 noundef 1) #11
  %36 = call i32 @mfd_add_devices(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %34, i32 noundef 1, ptr noundef null, i32 noundef 0, ptr noundef null) #11
  br label %37

37:                                               ; preds = %33, %32, %1
  %38 = phi i32 [ %36, %33 ], [ -19, %32 ], [ -19, %1 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #11
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @read_mailbox_0() #0 {
  %1 = load ptr, ptr @tcdm_base, align 4
  %2 = getelementptr i8, ptr %1, i32 4080
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %2) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !232
  switch i8 %3, label %41 [
    i8 2, label %4
    i8 5, label %4
  ]

4:                                                ; preds = %0, %0
  %5 = load ptr, ptr @tcdm_base, align 4
  %6 = getelementptr i8, ptr %5, i32 3593
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %6) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !233
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  %10 = load ptr, ptr @tcdm_base, align 4
  br i1 %9, label %14, label %11

11:                                               ; preds = %4
  %12 = getelementptr i8, ptr %10, i32 3620
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !234
  br label %17

14:                                               ; preds = %4
  %15 = getelementptr i8, ptr %10, i32 3596
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !235
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi i32 [ %13, %11 ], [ %16, %14 ]
  %19 = and i32 %18, 34816
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @complete(ptr noundef getelementptr inbounds (%struct.anon.1, ptr @mb0_transfer, i32 0, i32 4)) #11
  br label %22

22:                                               ; preds = %21, %17
  %23 = and i32 %18, 512
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void @complete(ptr noundef getelementptr inbounds (%struct.anon.81, ptr @mb3_transfer, i32 0, i32 2)) #11
  br label %26

26:                                               ; preds = %25, %22
  %27 = load i32, ptr getelementptr inbounds (%struct.anon.1, ptr @mb0_transfer, i32 0, i32 5), align 4
  %28 = and i32 %27, %18
  br label %29

29:                                               ; preds = %38, %26
  %30 = phi i32 [ 0, %26 ], [ %39, %38 ]
  %31 = getelementptr [23 x i32], ptr @prcmu_irq_bit, i32 0, i32 %30
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %28, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load ptr, ptr @db8500_irq_domain, align 4
  %37 = tail call i32 @generic_handle_domain_irq(ptr noundef %36, i32 noundef %30) #11
  br label %38

38:                                               ; preds = %35, %29
  %39 = add nuw nsw i32 %30, 1
  %40 = icmp eq i32 %39, 23
  br i1 %40, label %44, label %29

41:                                               ; preds = %0
  %42 = zext i8 %3 to i32
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %42, i32 noundef 0) #12
  br label %44

44:                                               ; preds = %41, %38
  %45 = phi i1 [ false, %41 ], [ true, %38 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !236
  tail call void @arm_heavy_mb() #11
  %46 = load ptr, ptr @prcmu_base, align 4
  %47 = getelementptr i8, ptr %46, i32 1164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 1) #11, !srcloc !11
  ret i1 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @read_mailbox_1() #0 {
  %1 = load ptr, ptr @tcdm_base, align 4
  %2 = getelementptr i8, ptr %1, i32 4073
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %2) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !237
  store i8 %3, ptr getelementptr inbounds (%struct.anon.3, ptr @mb1_transfer, i32 0, i32 3), align 1
  %4 = load ptr, ptr @tcdm_base, align 4
  %5 = getelementptr i8, ptr %4, i32 3588
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %5) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !238
  store i8 %6, ptr getelementptr inbounds (%struct.anon.3, ptr @mb1_transfer, i32 0, i32 3, i32 1), align 2
  %7 = load ptr, ptr @tcdm_base, align 4
  %8 = getelementptr i8, ptr %7, i32 3589
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %8) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !239
  store i8 %9, ptr getelementptr inbounds (%struct.anon.3, ptr @mb1_transfer, i32 0, i32 3, i32 2), align 1
  %10 = load ptr, ptr @tcdm_base, align 4
  %11 = getelementptr i8, ptr %10, i32 3590
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %11) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !240
  store i8 %12, ptr getelementptr inbounds (%struct.anon.3, ptr @mb1_transfer, i32 0, i32 3, i32 3), align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !241
  tail call void @arm_heavy_mb() #11
  %13 = load ptr, ptr @prcmu_base, align 4
  %14 = getelementptr i8, ptr %13, i32 1164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 2) #11, !srcloc !11
  tail call void @complete(ptr noundef getelementptr inbounds (%struct.anon.3, ptr @mb1_transfer, i32 0, i32 1)) #11
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @read_mailbox_2() #0 {
  %1 = load ptr, ptr @tcdm_base, align 4
  %2 = getelementptr i8, ptr %1, i32 3584
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %2) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !242
  store i8 %3, ptr getelementptr inbounds (%struct.anon.5, ptr @mb2_transfer, i32 0, i32 4), align 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !243
  tail call void @arm_heavy_mb() #11
  %4 = load ptr, ptr @prcmu_base, align 4
  %5 = getelementptr i8, ptr %4, i32 1164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 4) #11, !srcloc !11
  tail call void @complete(ptr noundef getelementptr inbounds (%struct.anon.5, ptr @mb2_transfer, i32 0, i32 1)) #11
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @read_mailbox_3() #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !244
  tail call void @arm_heavy_mb() #11
  %1 = load ptr, ptr @prcmu_base, align 4
  %2 = getelementptr i8, ptr %1, i32 1164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 8) #11, !srcloc !11
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @read_mailbox_4() #0 {
  %1 = load ptr, ptr @tcdm_base, align 4
  %2 = getelementptr i8, ptr %1, i32 4076
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %2) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !245
  switch i8 %3, label %4 [
    i8 1, label %9
    i8 18, label %9
    i8 19, label %9
    i8 20, label %9
    i8 22, label %9
    i8 23, label %9
    i8 24, label %9
    i8 25, label %9
    i8 32, label %9
  ]

4:                                                ; preds = %0
  %5 = zext i8 %3 to i32
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %5, i32 noundef 4) #12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !246
  tail call void @arm_heavy_mb() #11
  %7 = load ptr, ptr @prcmu_base, align 4
  %8 = getelementptr i8, ptr %7, i32 1164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 16) #11, !srcloc !11
  br label %12

9:                                                ; preds = %0, %0, %0, %0, %0, %0, %0, %0, %0
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !246
  tail call void @arm_heavy_mb() #11
  %10 = load ptr, ptr @prcmu_base, align 4
  %11 = getelementptr i8, ptr %10, i32 1164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 16) #11, !srcloc !11
  tail call void @complete(ptr noundef getelementptr inbounds (%struct.anon.7, ptr @mb4_transfer, i32 0, i32 1)) #11
  br label %12

12:                                               ; preds = %9, %4
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @read_mailbox_5() #0 {
  %1 = load ptr, ptr @tcdm_base, align 4
  %2 = getelementptr i8, ptr %1, i32 3573
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %2) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !247
  store i8 %3, ptr getelementptr inbounds (%struct.anon.8, ptr @mb5_transfer, i32 0, i32 2), align 4
  %4 = load ptr, ptr @tcdm_base, align 4
  %5 = getelementptr i8, ptr %4, i32 3575
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %5) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !248
  store i8 %6, ptr getelementptr inbounds (%struct.anon.8, ptr @mb5_transfer, i32 0, i32 2, i32 1), align 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !249
  tail call void @arm_heavy_mb() #11
  %7 = load ptr, ptr @prcmu_base, align 4
  %8 = getelementptr i8, ptr %7, i32 1164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 32) #11, !srcloc !11
  tail call void @complete(ptr noundef getelementptr inbounds (%struct.anon.8, ptr @mb5_transfer, i32 0, i32 1)) #11
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @read_mailbox_6() #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !250
  tail call void @arm_heavy_mb() #11
  %1 = load ptr, ptr @prcmu_base, align 4
  %2 = getelementptr i8, ptr %1, i32 1164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 64) #11, !srcloc !11
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @read_mailbox_7() #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !251
  tail call void @arm_heavy_mb() #11
  %1 = load ptr, ptr @prcmu_base, align 4
  %2 = getelementptr i8, ptr %1, i32 1164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 128) #11, !srcloc !11
  ret i1 false
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_simple(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @db8500_irq_map(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  tail call void @irq_set_chip_and_handler_name(i32 noundef %1, ptr noundef nonnull @prcmu_irq_chip, ptr noundef nonnull @handle_simple_irq, ptr noundef null) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_twocell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @prcmu_irq_mask(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds (%struct.anon.1, ptr @mb0_transfer, i32 0, i32 1)) #11
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr [23 x i32], ptr @prcmu_irq_bit, i32 0, i32 %4
  %6 = load i32, ptr %5, align 4
  %7 = xor i32 %6, -1
  %8 = load i32, ptr getelementptr inbounds (%struct.anon.1, ptr @mb0_transfer, i32 0, i32 5), align 4
  %9 = and i32 %8, %7
  store i32 %9, ptr getelementptr inbounds (%struct.anon.1, ptr @mb0_transfer, i32 0, i32 5), align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds (%struct.anon.1, ptr @mb0_transfer, i32 0, i32 1), i32 noundef %2) #11
  %10 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 20
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load ptr, ptr @system_wq, align 4
  %15 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %14, ptr noundef getelementptr inbounds (%struct.anon.1, ptr @mb0_transfer, i32 0, i32 2)) #11
  br label %16

16:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @noop(ptr nocapture noundef %0) #8 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @prcmu_irq_unmask(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds (%struct.anon.1, ptr @mb0_transfer, i32 0, i32 1)) #11
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr [23 x i32], ptr @prcmu_irq_bit, i32 0, i32 %4
  %6 = load i32, ptr %5, align 4
  %7 = load i32, ptr getelementptr inbounds (%struct.anon.1, ptr @mb0_transfer, i32 0, i32 5), align 4
  %8 = or i32 %7, %6
  store i32 %8, ptr getelementptr inbounds (%struct.anon.1, ptr @mb0_transfer, i32 0, i32 5), align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds (%struct.anon.1, ptr @mb0_transfer, i32 0, i32 1), i32 noundef %2) #11
  %9 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 20
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load ptr, ptr @system_wq, align 4
  %14 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %13, ptr noundef getelementptr inbounds (%struct.anon.1, ptr @mb0_transfer, i32 0, i32 2)) #11
  br label %15

15:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_to_resource_table(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

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
!8 = !{i64 2462099}
!9 = !{i64 2153712428}
!10 = !{i64 2153712970}
!11 = !{i64 2461681}
!12 = !{i64 2153713789}
!13 = !{i64 2153713975}
!14 = !{i8 0, i8 2}
!15 = !{i64 2461879}
!16 = !{i64 2153714369}
!17 = !{i64 2153714628}
!18 = !{i64 2461484}
!19 = !{i64 2153714895}
!20 = !{i64 2153715104}
!21 = !{!"branch_weights", i32 1, i32 2000}
!22 = !{i64 2153715421, i64 2153715912, i64 2153715458, i64 2153715514, i64 2153715548, i64 2153715572, i64 2153715613, i64 2153715634, i64 2153715662, i64 2153715696}
!23 = !{i64 2153716450, i64 2153716941, i64 2153716487, i64 2153716543, i64 2153716577, i64 2153716601, i64 2153716642, i64 2153716663, i64 2153716691, i64 2153716725}
!24 = !{i64 2153717534, i64 2153718025, i64 2153717571, i64 2153717627, i64 2153717661, i64 2153717685, i64 2153717726, i64 2153717747, i64 2153717775, i64 2153717809}
!25 = !{i64 2153720783}
!26 = !{i64 2153721017}
!27 = !{i64 2153721596, i64 2153722087, i64 2153721633, i64 2153721689, i64 2153721723, i64 2153721747, i64 2153721788, i64 2153721809, i64 2153721837, i64 2153721871}
!28 = !{i64 2153723044}
!29 = !{i64 2153723369}
!30 = !{i64 2153723211}
!31 = !{i64 2153723601}
!32 = !{i64 2153723892}
!33 = !{i64 2153724203}
!34 = !{i64 2153724531}
!35 = !{i64 2153724839}
!36 = !{i64 2153725216}
!37 = !{i64 2153725644}
!38 = !{!"branch_weights", i32 2000, i32 1}
!39 = !{i64 2153728673, i64 2153729164, i64 2153728710, i64 2153728766, i64 2153728800, i64 2153728824, i64 2153728865, i64 2153728886, i64 2153728914, i64 2153728948}
!40 = !{i64 2153726180}
!41 = !{i64 2153726505}
!42 = !{i64 2153726347}
!43 = !{i64 2153726739}
!44 = !{i64 2153727125}
!45 = !{i64 2153727515}
!46 = !{i64 2153727900}
!47 = !{i64 2153730448}
!48 = !{i64 2153730870}
!49 = !{i64 2153731195}
!50 = !{i64 2153731037}
!51 = !{i64 2153731431}
!52 = !{i64 2153731722}
!53 = !{i64 2153732023}
!54 = !{i64 2153732412}
!55 = !{i64 2153732846}
!56 = !{i64 2153733076}
!57 = !{i64 2153737239}
!58 = !{i64 2153737564}
!59 = !{i64 2153737406}
!60 = !{i64 2153737800}
!61 = !{i64 2153738101}
!62 = !{i64 2153738449}
!63 = !{i64 2153738875}
!64 = !{i64 2153733814}
!65 = !{i64 2153734862}
!66 = !{i64 2153734142}
!67 = !{i64 2153733984}
!68 = !{i64 2153736403}
!69 = !{i64 2153736747}
!70 = !{i64 2153739309}
!71 = !{i64 2153739683}
!72 = !{i64 2153740008}
!73 = !{i64 2153739850}
!74 = !{i64 2153740243}
!75 = !{i64 2153740625}
!76 = !{i64 2153741246}
!77 = !{i64 2153741571}
!78 = !{i64 2153741413}
!79 = !{i64 2153741807}
!80 = !{i64 2153742186}
!81 = !{i64 2153744582, i64 2153745074, i64 2153744619, i64 2153744675, i64 2153744709, i64 2153744733, i64 2153744774, i64 2153744795, i64 2153744823, i64 2153744857}
!82 = !{i64 2153745645, i64 2153746137, i64 2153745682, i64 2153745738, i64 2153745772, i64 2153745796, i64 2153745837, i64 2153745858, i64 2153745886, i64 2153745920}
!83 = !{i64 2153746738, i64 2153747230, i64 2153746775, i64 2153746831, i64 2153746865, i64 2153746889, i64 2153746930, i64 2153746951, i64 2153746979, i64 2153747013}
!84 = !{i64 2153747819}
!85 = !{i64 2153748352}
!86 = !{i64 2153748624}
!87 = !{i64 2153748931}
!88 = !{i64 2153749310}
!89 = !{i64 2153748144}
!90 = !{i64 2153747986}
!91 = !{i64 2153750477, i64 2153750969, i64 2153750514, i64 2153750570, i64 2153750604, i64 2153750628, i64 2153750669, i64 2153750690, i64 2153750718, i64 2153750752}
!92 = !{i64 2153751808}
!93 = !{i64 2153752190}
!94 = !{i64 2153760836}
!95 = !{i64 2153761157}
!96 = !{i64 2153761713}
!97 = !{i64 2153762036}
!98 = !{i64 2153757491}
!99 = !{i64 2153767769}
!100 = !{i64 2153767980}
!101 = !{i64 2153768476}
!102 = !{i64 2153768685}
!103 = !{i64 2153758345}
!104 = !{i64 2153758673}
!105 = !{i64 2153758515}
!106 = !{i64 2153759061}
!107 = !{i64 2153759991}
!108 = !{i64 2153760344}
!109 = !{i64 2153763586}
!110 = !{i64 2153764237}
!111 = !{i64 2153764610}
!112 = !{i64 2153762765}
!113 = !{i64 2153765608}
!114 = !{i64 2153766227}
!115 = !{i64 2153766770}
!116 = !{i64 2153767223}
!117 = !{i64 2153754458}
!118 = !{i64 2153754783}
!119 = !{i64 2153754625}
!120 = !{i64 2153755030}
!121 = !{i64 2153755348}
!122 = !{i64 2153755727}
!123 = !{i64 2153742836}
!124 = !{i64 2153743161}
!125 = !{i64 2153743003}
!126 = !{i64 2153743397}
!127 = !{i64 2153743690}
!128 = !{i64 2153744071}
!129 = !{i64 2153769150}
!130 = !{i64 2148416477, i64 2148416757, i64 2148417091, i64 2148417425}
!131 = !{i64 2153782229}
!132 = !{i64 2153782781}
!133 = !{i64 2153783457}
!134 = !{i64 2153775712}
!135 = !{i64 930933, i64 930960, i64 930982, i64 931010}
!136 = !{i64 931341, i64 931368, i64 931401, i64 931422, i64 931449, i64 931475}
!137 = !{i64 2153783919}
!138 = !{i64 2153786483}
!139 = !{i64 2153810025}
!140 = !{i64 2153810353}
!141 = !{i64 2153810195}
!142 = !{i64 2153810741}
!143 = !{i64 2153819567}
!144 = !{i64 2153819920}
!145 = !{i64 2153831855}
!146 = !{i64 2153832391}
!147 = !{i64 2153832600}
!148 = !{i64 2153833099}
!149 = !{i64 2153834627}
!150 = !{i64 2153835157}
!151 = !{i64 2153835482}
!152 = !{i64 2153835324}
!153 = !{i64 2153835718}
!154 = !{i64 2153836058}
!155 = !{i64 2153836411}
!156 = !{i64 2153836717}
!157 = !{i64 2153837098}
!158 = !{i64 2153837642}
!159 = !{i64 2153837967}
!160 = !{i64 2153837809}
!161 = !{i64 2153838200}
!162 = !{i64 2153838508}
!163 = !{i64 2153838888}
!164 = !{i64 2153839432}
!165 = !{i64 2153839757}
!166 = !{i64 2153839599}
!167 = !{i64 2153839984}
!168 = !{i64 2153840276}
!169 = !{i64 2153840790}
!170 = !{i64 2153841150}
!171 = !{i64 2153841530}
!172 = !{i64 2153843541}
!173 = !{i64 2153843866}
!174 = !{i64 2153843708}
!175 = !{i64 2153844093}
!176 = !{i64 2461061}
!177 = !{i64 2153844469}
!178 = !{i64 2153844849}
!179 = !{i64 2153851053, i64 2153851545, i64 2153851090, i64 2153851146, i64 2153851180, i64 2153851204, i64 2153851245, i64 2153851266, i64 2153851294, i64 2153851328}
!180 = !{i64 2153848440}
!181 = !{i64 2153848765}
!182 = !{i64 2153848607}
!183 = !{i64 2153848991}
!184 = !{i64 2153849280}
!185 = !{i64 2153849569}
!186 = !{i64 2153849858}
!187 = !{i64 2153850153}
!188 = !{i64 2153850532}
!189 = !{i64 2153859399}
!190 = !{i64 2153859724}
!191 = !{i64 2153859566}
!192 = !{i64 2153859954}
!193 = !{i64 2153860510}
!194 = !{i64 2153860983}
!195 = !{i64 2153861298}
!196 = !{i64 2153861587}
!197 = !{i64 2153861964}
!198 = !{i64 2153863076}
!199 = !{i64 2153863401}
!200 = !{i64 2153863243}
!201 = !{i64 2153863636}
!202 = !{i64 2153864083}
!203 = !{i64 2153864526}
!204 = !{i64 2153864841}
!205 = !{i64 2153865135}
!206 = !{i64 2153865517}
!207 = !{i64 2153866626}
!208 = !{i64 2153866923}
!209 = !{i64 2153867810}
!210 = !{i64 2153868862}
!211 = !{i64 2153869090}
!212 = !{i64 2153869998}
!213 = !{i64 2153870351}
!214 = !{i64 2461261}
!215 = !{i64 2153870819}
!216 = !{i64 2153871183}
!217 = !{i64 2153871508}
!218 = !{i64 2153871350}
!219 = !{i64 2153871744}
!220 = !{i64 2153872123}
!221 = !{i64 2153885497}
!222 = !{i64 2153891036}
!223 = !{i64 2153891413}
!224 = !{i64 2153905803}
!225 = !{i64 2153882765}
!226 = !{i64 2153873035}
!227 = !{i64 2153873360}
!228 = !{i64 2153873202}
!229 = !{i64 2153873592}
!230 = !{i64 2153873969}
!231 = !{!"auto-init"}
!232 = !{i64 2153875140}
!233 = !{i64 2153875392}
!234 = !{i64 2153875784}
!235 = !{i64 2153876172}
!236 = !{i64 2153876737}
!237 = !{i64 2153877170}
!238 = !{i64 2153877418}
!239 = !{i64 2153877666}
!240 = !{i64 2153877914}
!241 = !{i64 2153878226}
!242 = !{i64 2153878654}
!243 = !{i64 2153878966}
!244 = !{i64 2153879458}
!245 = !{i64 2153879891}
!246 = !{i64 2153880247}
!247 = !{i64 2153880675}
!248 = !{i64 2153880923}
!249 = !{i64 2153881235}
!250 = !{i64 2153881727}
!251 = !{i64 2153882219}
