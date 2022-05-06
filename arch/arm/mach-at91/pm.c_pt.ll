; ModuleID = '/llk/IR/arch/arm/mach-at91/pm.c_pt.bc'
source_filename = "../arch/arm/mach-at91/pm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_at91_suspend_entering_slow_clock:\09\09\09\09\09"
module asm "\09.asciz \09\22at91_suspend_entering_slow_clock\22\09\09\09\09\09"
module asm "__kstrtabns_at91_suspend_entering_slow_clock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.at91_soc_pm = type { ptr, ptr, ptr, ptr, %struct.at91_pm_data, %struct.at91_pm_sfrbu_regs, ptr }
%struct.at91_pm_data = type { ptr, [2 x ptr], ptr, i32, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.at91_pm_sfrbu_regs = type { %struct.anon }
%struct.anon = type { i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.match_token = type { i32, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ramc_info = type { ptr, i32 }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_suspend_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pmc_info = type { i32, i32, i32 }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.outer_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wakeup_source_info = type { i32, i32, i8 }
%struct.substring_t = type { ptr, ptr }
%struct.gen_pool = type { %struct.spinlock, %struct.list_head, i32, ptr, ptr, ptr }
%struct.at91_pm_bu = type { i32, i32, i32, i32, [9 x i32] }

@soc_pm = internal global %struct.at91_soc_pm { ptr null, ptr null, ptr null, ptr null, %struct.at91_pm_data { ptr null, [2 x ptr] zeroinitializer, ptr null, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, i32 1, i32 0, i32 0 }, %struct.at91_pm_sfrbu_regs zeroinitializer, ptr null }, align 4
@__kstrtab_at91_suspend_entering_slow_clock = external dso_local constant [0 x i8], align 1
@__kstrtabns_at91_suspend_entering_slow_clock = external dso_local constant [0 x i8], align 1
@__ksymtab_at91_suspend_entering_slow_clock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @at91_suspend_entering_slow_clock to i32), ptr @__kstrtab_at91_suspend_entering_slow_clock, ptr @__kstrtabns_at91_suspend_entering_slow_clock }, section "___ksymtab+at91_suspend_entering_slow_clock", align 4
@sama5_pm_init.modes = internal constant [3 x i32] [i32 0, i32 1, i32 2], section ".init.rodata", align 4
@sama5d2_pm_init.modes = internal constant [5 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4], section ".init.rodata", align 4
@sama5d2_pm_init.iomaps = internal constant [5 x i32] [i32 0, i32 0, i32 0, i32 1, i32 3], section ".init.rodata", align 4
@sama5d2_ws_ids = internal constant [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-gem\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ws_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91rm9200-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ws_info, i64 12) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d3-udc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ws_info, i64 24) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91rm9200-ohci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ws_info, i64 24) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"usb-ohci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ws_info, i64 24) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9g45-ehci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ws_info, i64 24) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"usb-ehci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ws_info, i64 24) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ws_info, i64 36) }, %struct.of_device_id zeroinitializer], align 4
@sama7_pm_init.modes = internal constant [4 x i32] [i32 0, i32 1, i32 3, i32 4], section ".init.rodata", align 4
@sama7_pm_init.iomaps = internal constant [5 x i32] [i32 0, i32 2, i32 0, i32 3, i32 3], section ".init.rodata", align 4
@sama7g5_ws_ids = internal constant [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9x5-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ws_info, i64 12) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sama7g5-ohci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ws_info, i64 24) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"usb-ohci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ws_info, i64 24) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9g45-ehci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ws_info, i64 24) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"usb-ehci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ws_info, i64 24) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sama7g5-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ws_info, i64 36) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9260-rtt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ws_info, i64 48) }, %struct.of_device_id zeroinitializer], align 4
@__setup_str_at91_pm_modes_select = internal constant [15 x i8] c"atmel.pm_modes\00", section ".init.rodata", align 1
@__setup_at91_pm_modes_select = internal global %struct.obs_kernel_param { ptr @__setup_str_at91_pm_modes_select, ptr @at91_pm_modes_select, i32 1 }, section ".init.setup", align 4
@.str = private unnamed_addr constant [46 x i8] c"\014AT91: PM: %s mode not supported! Using %s.\0A\00", align 1
@pm_modes = internal constant [6 x %struct.match_token] [%struct.match_token { i32 0, ptr @.str.1 }, %struct.match_token { i32 1, ptr @.str.2 }, %struct.match_token { i32 2, ptr @.str.3 }, %struct.match_token { i32 3, ptr @.str.4 }, %struct.match_token { i32 4, ptr @.str.5 }, %struct.match_token { i32 -1, ptr null }], section ".init.rodata", align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"standby\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"ulp0\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"ulp0-fast\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"ulp1\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"backup\00", align 1
@ramc_ids = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91rm9200-sdramc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ramc_infos }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9260-sdramc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ramc_infos, i64 8) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9g45-ddramc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ramc_infos, i64 16) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d3-ddramc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ramc_infos, i64 24) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sama7g5-uddrc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"\013unable to map ramc[%d] cpu registers\0A\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"\013unable to find compatible ram controller node in dtb\0A\00", align 1
@ramc_phy_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sama7g5-ddr3phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@.str.8 = private unnamed_addr constant [40 x i8] c"\013unable to map ramc phy cpu registers\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"\013DDR PHY is mandatory!\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"\014ramc no standby function available\0A\00", align 1
@at91_cpuidle_device = internal global %struct.platform_device { ptr @.str.11, i32 0, i8 0, %struct.device zeroinitializer, i64 0, %struct.device_dma_parameters zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, align 8
@ramc_infos = internal constant [4 x %struct.ramc_info] [%struct.ramc_info { ptr @at91rm9200_standby, i32 0 }, %struct.ramc_info { ptr @at91sam9_sdram_standby, i32 1 }, %struct.ramc_info { ptr @at91_ddr_standby, i32 2 }, %struct.ramc_info { ptr @sama5d3_ddr_standby, i32 2 }], section ".init.rodata", align 4
@processor = external dso_local local_unnamed_addr global %struct.processor, align 4
@.str.11 = private unnamed_addr constant [13 x i8] c"cpuidle-at91\00", align 1
@atmel_pmc_ids = internal constant [14 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91rm9200-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pmc_infos }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9260-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @pmc_infos, i64 12) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9261-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @pmc_infos, i64 12) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9263-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @pmc_infos, i64 12) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9g45-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @pmc_infos, i64 24) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9n12-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @pmc_infos, i64 12) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9rl-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @pmc_infos, i64 36) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9x5-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @pmc_infos, i64 12) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d3-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @pmc_infos, i64 12) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d4-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @pmc_infos, i64 12) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @pmc_infos, i64 12) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sam9x60-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @pmc_infos, i64 48) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sama7g5-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @pmc_infos, i64 60) }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@.str.12 = private unnamed_addr constant [41 x i8] c"\013AT91: PM not supported, PMC not found\0A\00", align 1
@at91_suspend_sram_fn = internal unnamed_addr global ptr null, align 4
@at91_pm_ops = internal constant %struct.platform_suspend_ops { ptr @at91_pm_valid_state, ptr @at91_pm_begin, ptr null, ptr null, ptr @at91_pm_enter, ptr null, ptr null, ptr null, ptr @at91_pm_end, ptr null }, align 4
@.str.13 = private unnamed_addr constant [38 x i8] c"\016AT91: PM: standby: %s, suspend: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [52 x i8] c"\016AT91: PM not supported, due to no SRAM allocated\0A\00", align 1
@pmc_infos = internal constant [6 x %struct.pmc_info] [%struct.pmc_info { i32 18, i32 48, i32 1 }, %struct.pmc_info { i32 192, i32 48, i32 1 }, %struct.pmc_info { i32 64, i32 48, i32 1 }, %struct.pmc_info { i32 0, i32 48, i32 1 }, %struct.pmc_info { i32 192, i32 40, i32 2 }, %struct.pmc_info { i32 0, i32 40, i32 2 }], section ".init.rodata", align 4
@.str.15 = private unnamed_addr constant [10 x i8] c"mmio-sram\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"\014%s: failed to find sram device!\0A\00", align 1
@__func__.at91_pm_sram_init = private unnamed_addr constant [18 x i8] c"at91_pm_sram_init\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"\014%s: sram pool unavailable!\0A\00", align 1
@at91_pm_suspend_in_sram_sz = external dso_local local_unnamed_addr global i32, align 4
@.str.18 = private unnamed_addr constant [29 x i8] c"\014%s: unable to alloc sram!\0A\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"\014SRAM: Could not map\0A\00", align 1
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@.str.20 = private unnamed_addr constant [42 x i8] c"\013AT91: PM: no ULP1 wakeup sources found!\00", align 1
@.str.21 = private unnamed_addr constant [51 x i8] c"\013AT91: PM - Suspend-to-RAM with USB still active\0A\00", align 1
@.str.22 = private unnamed_addr constant [47 x i8] c"\013AT91: PM - Suspend-to-RAM with PCK%d src %d\0A\00", align 1
@outer_cache = external dso_local local_unnamed_addr global %struct.outer_cache_fns, align 4
@atmel_shdwc_ids = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-shdwc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sam9x60-shdwc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sama7g5-shdwc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.23 = private unnamed_addr constant [29 x i8] c"\014%s: failed to find shdwc!\0A\00", align 1
@__func__.at91_pm_modes_init = private unnamed_addr constant [19 x i8] c"at91_pm_modes_init\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"atmel,sama5d2-sfrbu\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"\014%s: failed to find sfrbu!\0A\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"atmel,sama5d2-securam\00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c"\014%s: failed to find securam device!\0A\00", align 1
@__func__.at91_pm_backup_init = private unnamed_addr constant [20 x i8] c"at91_pm_backup_init\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"\014%s: securam pool unavailable!\0A\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"\014%s: unable to alloc securam!\0A\00", align 1
@canary = internal global i32 -1515870811, align 4
@.str.30 = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@ws_info = internal constant [6 x %struct.wakeup_source_info] [%struct.wakeup_source_info { i32 1024, i32 0, i8 1 }, %struct.wakeup_source_info { i32 131072, i32 131072, i8 0 }, %struct.wakeup_source_info { i32 262144, i32 0, i8 0 }, %struct.wakeup_source_info { i32 524288, i32 0, i8 0 }, %struct.wakeup_source_info { i32 65536, i32 0, i8 0 }, %struct.wakeup_source_info { i32 16777216, i32 0, i8 0 }], align 4
@.str.33 = private unnamed_addr constant [2 x i8] c",\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_at91_suspend_entering_slow_clock, ptr @__setup_at91_pm_modes_select], section "llvm.metadata"
@switch.table.at91_pm_valid_state = private unnamed_addr constant [4 x i32] [i32 1, i32 0, i32 1, i32 1], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @at91_suspend_entering_slow_clock() #0 {
  %1 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 5), align 4
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync)
define dso_local void @at91rm9200_pm_init() local_unnamed_addr #1 section ".init.text" {
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync)
define dso_local void @sam9x60_pm_init() local_unnamed_addr #1 section ".init.text" {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync)
define dso_local void @at91sam9_pm_init() local_unnamed_addr #1 section ".init.text" {
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @sama5_pm_init() local_unnamed_addr #3 section ".init.text" {
  tail call fastcc void @at91_pm_modes_validate(ptr noundef nonnull @sama5_pm_init.modes, i32 noundef 3) #12
  %1 = tail call fastcc i32 @at91_dt_ramc(i1 noundef zeroext false) #12
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call fastcc void @at91_pm_init() #12
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @at91_pm_modes_validate(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 section ".init.text" {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %30

4:                                                ; preds = %2
  %5 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 8), align 4
  %6 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 9), align 4
  br label %7

7:                                                ; preds = %15, %4
  %8 = phi i32 [ 0, %4 ], [ %26, %15 ]
  %9 = phi i8 [ 0, %4 ], [ %25, %15 ]
  %10 = phi i8 [ 0, %4 ], [ %24, %15 ]
  %11 = phi i8 [ 0, %4 ], [ %23, %15 ]
  %12 = icmp ne i8 %10, 0
  %13 = icmp ne i8 %11, 0
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %54, label %15

15:                                               ; preds = %7
  %16 = getelementptr i32, ptr %0, i32 %8
  %17 = load i32, ptr %16, align 4
  %18 = icmp ne i32 %17, %5
  %19 = select i1 %18, i1 true, i1 %12
  %20 = icmp ne i32 %17, %6
  %21 = select i1 %20, i1 true, i1 %13
  %22 = select i1 %21, i8 %11, i8 1
  %23 = select i1 %19, i8 %22, i8 %11
  %24 = select i1 %19, i8 %10, i8 1
  %25 = add i8 %9, 1
  %26 = zext i8 %25 to i32
  %27 = icmp slt i32 %26, %1
  br i1 %27, label %7, label %28

28:                                               ; preds = %15
  %29 = icmp eq i8 %24, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %28, %2
  %31 = phi i8 [ %23, %28 ], [ 0, %2 ]
  %32 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 9), align 4
  %33 = icmp eq i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 8), align 4
  %36 = getelementptr [6 x %struct.match_token], ptr @pm_modes, i32 0, i32 %35, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr [6 x %struct.match_token], ptr @pm_modes, i32 0, i32 %34, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %37, ptr noundef %39) #13
  store i32 %34, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 8), align 4
  br label %41

41:                                               ; preds = %30, %28
  %42 = phi i8 [ %31, %30 ], [ %23, %28 ]
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 8), align 4
  %46 = icmp ne i32 %45, 1
  %47 = zext i1 %46 to i32
  %48 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 9), align 4
  %49 = getelementptr [6 x %struct.match_token], ptr @pm_modes, i32 0, i32 %48, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr [6 x %struct.match_token], ptr @pm_modes, i32 0, i32 %47, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %50, ptr noundef %52) #13
  store i32 %47, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 9), align 4
  br label %54

54:                                               ; preds = %44, %41, %7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @at91_dt_ramc(i1 noundef zeroext %0) unnamed_addr #3 section ".init.text" {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store ptr null, ptr %2, align 4, !annotation !8
  %3 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @ramc_ids, ptr noundef nonnull %2) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %34, label %5

5:                                                ; preds = %27, %1
  %6 = phi ptr [ %30, %27 ], [ %3, %1 ]
  %7 = phi i32 [ %29, %27 ], [ 0, %1 ]
  %8 = phi ptr [ %28, %27 ], [ null, %1 ]
  %9 = call ptr @of_iomap(ptr noundef nonnull %6, i32 noundef 0) #14
  %10 = getelementptr %struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 1, i32 %7
  store ptr %9, ptr %10, align 4
  %11 = icmp eq ptr %9, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %5
  %13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %7) #13
  call void @of_node_put(ptr noundef nonnull %6) #14
  br label %60

14:                                               ; preds = %5
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr inbounds %struct.of_device_id, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %14
  %20 = icmp eq ptr %8, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %19
  %22 = load ptr, ptr %17, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi ptr [ %8, %19 ], [ %22, %21 ]
  %25 = getelementptr inbounds %struct.ramc_info, ptr %17, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  store i32 %26, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 4), align 4
  br label %27

27:                                               ; preds = %23, %14
  %28 = phi ptr [ %24, %23 ], [ %8, %14 ]
  %29 = add i32 %7, 1
  %30 = call ptr @of_find_matching_node_and_match(ptr noundef nonnull %6, ptr noundef nonnull @ramc_ids, ptr noundef nonnull %2) #14
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %5

32:                                               ; preds = %27
  %33 = icmp eq i32 %29, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %32, %1
  %35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #13
  br label %70

36:                                               ; preds = %32
  %37 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @ramc_phy_ids, ptr noundef nonnull %2) #14
  %38 = icmp eq ptr %37, null
  br i1 %38, label %48, label %39

39:                                               ; preds = %45, %36
  %40 = phi ptr [ %46, %45 ], [ %37, %36 ]
  %41 = call ptr @of_iomap(ptr noundef nonnull %40, i32 noundef 0) #14
  store ptr %41, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 2), align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #13
  call void @of_node_put(ptr noundef nonnull %40) #14
  br label %60

45:                                               ; preds = %39
  %46 = call ptr @of_find_matching_node_and_match(ptr noundef nonnull %40, ptr noundef nonnull @ramc_phy_ids, ptr noundef nonnull %2) #14
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %39

48:                                               ; preds = %45, %36
  %49 = xor i1 %0, true
  %50 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 2), align 4
  %51 = icmp ne ptr %50, null
  %52 = select i1 %49, i1 true, i1 %51
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #13
  br label %60

55:                                               ; preds = %48
  %56 = icmp eq ptr %28, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %55
  %58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #13
  br label %70

59:                                               ; preds = %55
  store ptr %28, ptr getelementptr inbounds (%struct.platform_device, ptr @at91_cpuidle_device, i32 0, i32 3, i32 7), align 4
  br label %70

60:                                               ; preds = %53, %43, %12
  %61 = phi i32 [ %7, %12 ], [ %29, %43 ], [ %29, %53 ]
  %62 = phi i32 [ -12, %12 ], [ -12, %43 ], [ -19, %53 ]
  %63 = icmp eq i32 %61, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %64, %60
  %65 = phi i32 [ %66, %64 ], [ %61, %60 ]
  %66 = add i32 %65, -1
  %67 = getelementptr %struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 1, i32 %66
  %68 = load ptr, ptr %67, align 4
  call void @iounmap(ptr noundef %68) #14
  %69 = icmp eq i32 %66, 0
  br i1 %69, label %70, label %64

70:                                               ; preds = %64, %60, %59, %57, %34
  %71 = phi i32 [ 0, %59 ], [ 0, %57 ], [ %62, %60 ], [ -19, %34 ], [ %62, %64 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  ret i32 %71
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @at91_pm_init() unnamed_addr #3 section ".init.text" {
  %1 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #14
  store ptr null, ptr %1, align 4, !annotation !8
  %2 = load ptr, ptr getelementptr inbounds (%struct.platform_device, ptr @at91_cpuidle_device, i32 0, i32 3, i32 7), align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = tail call i32 @platform_device_register(ptr noundef nonnull @at91_cpuidle_device) #14
  br label %6

6:                                                ; preds = %4, %0
  %7 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @atmel_pmc_ids, ptr noundef nonnull %1) #14
  %8 = call ptr @of_iomap(ptr noundef %7, i32 noundef 0) #14
  store ptr %8, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4), align 4
  call void @of_node_put(ptr noundef %7) #14
  %9 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4), align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #13
  br label %34

13:                                               ; preds = %6
  %14 = load ptr, ptr %1, align 4
  %15 = getelementptr inbounds %struct.of_device_id, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = load i32, ptr %16, align 4
  store i32 %17, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 3), align 4
  %18 = getelementptr inbounds %struct.pmc_info, ptr %16, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  store i32 %19, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 10), align 4
  %20 = getelementptr inbounds %struct.pmc_info, ptr %16, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  store i32 %21, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 11), align 4
  call fastcc void @at91_pm_sram_init() #12
  %22 = load ptr, ptr @at91_suspend_sram_fn, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %13
  call void @suspend_set_ops(ptr noundef nonnull @at91_pm_ops) #14
  %25 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 8), align 4
  %26 = getelementptr [6 x %struct.match_token], ptr @pm_modes, i32 0, i32 %25, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 9), align 4
  %29 = getelementptr [6 x %struct.match_token], ptr @pm_modes, i32 0, i32 %28, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %27, ptr noundef %30) #13
  br label %34

32:                                               ; preds = %13
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #13
  br label %34

34:                                               ; preds = %32, %24, %11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #14
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @sama5d2_pm_init() local_unnamed_addr #3 section ".init.text" {
  tail call fastcc void @at91_pm_modes_validate(ptr noundef nonnull @sama5d2_pm_init.modes, i32 noundef 5) #12
  tail call fastcc void @at91_pm_modes_init(ptr noundef nonnull @sama5d2_pm_init.iomaps) #12
  %1 = tail call fastcc i32 @at91_dt_ramc(i1 noundef zeroext false) #12
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call fastcc void @at91_pm_init() #12
  store ptr @sama5d2_ws_ids, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 2), align 4
  store ptr @at91_sama5d2_config_shdwc_ws, ptr @soc_pm, align 4
  store ptr @at91_sama5d2_config_pmc_ws, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 1), align 4
  store i32 1272056832, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 5), align 4
  store i32 1, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 5, i32 0, i32 1), align 4
  store i32 2, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 5, i32 0, i32 3), align 4
  store i32 8, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 5, i32 0, i32 2), align 4
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @at91_pm_modes_init(ptr nocapture noundef readonly %0) unnamed_addr #3 section ".init.text" {
  %2 = tail call fastcc i32 @at91_pm_backup_init() #12
  %3 = icmp eq i32 %2, 0
  %4 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 8), align 4
  br i1 %3, label %13, label %5

5:                                                ; preds = %1
  %6 = icmp eq i32 %4, 4
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  store i32 1, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 8), align 4
  br label %8

8:                                                ; preds = %7, %5
  %9 = phi i32 [ 1, %7 ], [ %4, %5 ]
  %10 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 9), align 4
  %11 = icmp eq i32 %10, 4
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 1, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 9), align 4
  br label %13

13:                                               ; preds = %12, %8, %1
  %14 = phi i32 [ %9, %8 ], [ %9, %12 ], [ %4, %1 ]
  %15 = getelementptr i32, ptr %0, i32 %14
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 9), align 4
  %21 = getelementptr i32, ptr %0, i32 %20
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %51, label %25

25:                                               ; preds = %19, %13
  %26 = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @atmel_shdwc_ids, ptr noundef null) #14
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %48

28:                                               ; preds = %25
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.at91_pm_modes_init) #13
  %30 = getelementptr i32, ptr %0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 1
  %33 = xor i32 %32, 1
  %34 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 8), align 4
  %35 = getelementptr i32, ptr %0, i32 %34
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %28
  store i32 %33, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 8), align 4
  br label %40

40:                                               ; preds = %39, %28
  %41 = phi i32 [ %33, %39 ], [ %34, %28 ]
  %42 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 9), align 4
  %43 = getelementptr i32, ptr %0, i32 %42
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %40
  store i32 %33, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 9), align 4
  br label %51

48:                                               ; preds = %25
  %49 = tail call ptr @of_iomap(ptr noundef nonnull %26, i32 noundef 0) #14
  store ptr %49, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 6), align 4
  tail call void @of_node_put(ptr noundef nonnull %26) #14
  %50 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 8), align 4
  br label %51

51:                                               ; preds = %48, %47, %40, %19
  %52 = phi i32 [ %50, %48 ], [ %41, %47 ], [ %41, %40 ], [ %14, %19 ]
  %53 = getelementptr i32, ptr %0, i32 %52
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, 2
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 9), align 4
  %59 = getelementptr i32, ptr %0, i32 %58
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, 2
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %91, label %63

63:                                               ; preds = %57, %51
  %64 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.24) #14
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %89

66:                                               ; preds = %63
  %67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.at91_pm_modes_init) #13
  %68 = getelementptr i32, ptr %0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  %72 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 6), align 4
  %73 = icmp ne ptr %72, null
  %74 = select i1 %71, i1 true, i1 %73
  %75 = zext i1 %74 to i32
  %76 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 8), align 4
  %77 = getelementptr i32, ptr %0, i32 %76
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, 2
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %66
  store i32 %75, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 8), align 4
  br label %82

82:                                               ; preds = %81, %66
  %83 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 9), align 4
  %84 = getelementptr i32, ptr %0, i32 %83
  %85 = load i32, ptr %84, align 4
  %86 = and i32 %85, 2
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %82
  store i32 %75, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 9), align 4
  br label %91

89:                                               ; preds = %63
  %90 = tail call ptr @of_iomap(ptr noundef nonnull %64, i32 noundef 0) #14
  store ptr %90, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 7), align 4
  tail call void @of_node_put(ptr noundef nonnull %64) #14
  br label %91

91:                                               ; preds = %89, %88, %82, %57
  %92 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 6), align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %107, label %94

94:                                               ; preds = %91
  %95 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 8), align 4
  %96 = getelementptr i32, ptr %0, i32 %95
  %97 = load i32, ptr %96, align 4
  %98 = and i32 %97, 1
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %94
  %101 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 9), align 4
  %102 = getelementptr i32, ptr %0, i32 %101
  %103 = load i32, ptr %102, align 4
  %104 = and i32 %103, 1
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  tail call void @iounmap(ptr noundef nonnull %92) #14
  store ptr null, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 6), align 4
  br label %107

107:                                              ; preds = %106, %100, %94, %91
  %108 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 7), align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %123, label %110

110:                                              ; preds = %107
  %111 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 8), align 4
  %112 = getelementptr i32, ptr %0, i32 %111
  %113 = load i32, ptr %112, align 4
  %114 = and i32 %113, 2
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %110
  %117 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 9), align 4
  %118 = getelementptr i32, ptr %0, i32 %117
  %119 = load i32, ptr %118, align 4
  %120 = and i32 %119, 2
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  tail call void @iounmap(ptr noundef nonnull %108) #14
  store ptr null, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 7), align 4
  br label %123

123:                                              ; preds = %122, %116, %110, %107
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_sama5d2_config_shdwc_ws(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 12
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #14, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !10
  %6 = and i32 %5, 1023
  %7 = load i32, ptr %1, align 4
  %8 = or i32 %7, %6
  store i32 %8, ptr %1, align 4
  %9 = lshr i32 %5, 16
  %10 = and i32 %9, 1023
  %11 = load i32, ptr %2, align 4
  %12 = or i32 %11, %10
  store i32 %12, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_sama5d2_config_pmc_ws(ptr noundef %0, i32 noundef %1, i32 noundef %2) #4 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !11
  tail call void @arm_heavy_mb() #14
  %4 = getelementptr i8, ptr %0, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %1) #14, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !13
  tail call void @arm_heavy_mb() #14
  %5 = getelementptr i8, ptr %0, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %2) #14, !srcloc !12
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @sama7_pm_init() local_unnamed_addr #3 section ".init.text" {
  tail call fastcc void @at91_pm_modes_validate(ptr noundef nonnull @sama7_pm_init.modes, i32 noundef 4) #12
  %1 = tail call fastcc i32 @at91_dt_ramc(i1 noundef zeroext true) #12
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call fastcc void @at91_pm_modes_init(ptr noundef nonnull @sama7_pm_init.iomaps) #12
  tail call fastcc void @at91_pm_init() #12
  store ptr @sama7g5_ws_ids, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 2), align 4
  store ptr @at91_sam9x60_config_pmc_ws, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 1), align 4
  store i32 1272056832, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 5), align 4
  store i32 1, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 5, i32 0, i32 1), align 4
  store i32 2, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 5, i32 0, i32 3), align 4
  store i32 4, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 5, i32 0, i32 2), align 4
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_sam9x60_config_pmc_ws(ptr noundef %0, i32 noundef %1, i32 noundef %2) #4 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !14
  tail call void @arm_heavy_mb() #14
  %4 = getelementptr i8, ptr %0, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %1) #14, !srcloc !12
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @at91_pm_modes_select(ptr noundef %0) #3 section ".init.text" {
  %2 = alloca ptr, align 4
  %3 = alloca [3 x %struct.substring_t], align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = call ptr @strsep(ptr noundef nonnull %2, ptr noundef nonnull @.str.33) #14
  %7 = call i32 @match_token(ptr noundef %6, ptr noundef nonnull @pm_modes, ptr noundef nonnull %3) #14
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %2, align 4
  %11 = call i32 @match_token(ptr noundef %10, ptr noundef nonnull @pm_modes, ptr noundef nonnull %3) #14
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  store i32 %7, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 8), align 4
  store i32 %11, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 9), align 4
  br label %14

14:                                               ; preds = %13, %9, %5, %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @at91rm9200_standby() #4 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 1), align 4
  tail call void asm sideeffect "b    1f\0A\09.align    5\0A\091:  mcr    p15, 0, $0, c7, c10, 4\0A\09    str    $2, [$1, $3]\0A\09    mcr    p15, 0, $0, c7, c0, 4\0A\09", "r,r,r,r"(i32 0, ptr %1, i32 1, i32 156) #14, !srcloc !15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @at91sam9_sdram_standby() #4 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 1, i32 1), align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %0
  %4 = getelementptr i8, ptr %1, i32 16
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #14, !srcloc !9
  %6 = and i32 %5, -4
  %7 = or i32 %6, 1
  br label %8

8:                                                ; preds = %3, %0
  %9 = phi i32 [ %7, %3 ], [ 0, %0 ]
  %10 = phi i32 [ %5, %3 ], [ 0, %0 ]
  %11 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 1), align 4
  %12 = getelementptr i8, ptr %11, i32 16
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #14, !srcloc !9
  %14 = and i32 %13, -4
  %15 = or i32 %14, 1
  %16 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 1), align 4
  %17 = getelementptr i8, ptr %16, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #14, !srcloc !12
  %18 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 1, i32 1), align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %8
  %21 = getelementptr i8, ptr %18, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %9) #14, !srcloc !12
  br label %22

22:                                               ; preds = %20, %8
  %23 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 6), align 4
  %24 = tail call i32 %23() #14
  %25 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 1), align 4
  %26 = getelementptr i8, ptr %25, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %13) #14, !srcloc !12
  %27 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 1, i32 1), align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %22
  %30 = getelementptr i8, ptr %27, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %10) #14, !srcloc !12
  br label %31

31:                                               ; preds = %29, %22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @at91_ddr_standby() #4 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 1), align 4
  %2 = getelementptr i8, ptr %1, i32 32
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #14, !srcloc !9
  %4 = and i32 %3, 7
  %5 = icmp eq i32 %4, 3
  br i1 %5, label %6, label %11

6:                                                ; preds = %0
  %7 = and i32 %3, -8
  %8 = or i32 %7, 6
  %9 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 1), align 4
  %10 = getelementptr i8, ptr %9, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #14, !srcloc !12
  br label %11

11:                                               ; preds = %6, %0
  %12 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 1, i32 1), align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %29, label %14

14:                                               ; preds = %11
  %15 = getelementptr i8, ptr %12, i32 28
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #14, !srcloc !9
  %17 = and i32 %16, -4
  %18 = or i32 %17, 1
  %19 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 1, i32 1), align 4
  %20 = getelementptr i8, ptr %19, i32 32
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #14, !srcloc !9
  %22 = and i32 %21, 7
  %23 = icmp eq i32 %22, 3
  br i1 %23, label %24, label %29

24:                                               ; preds = %14
  %25 = and i32 %21, -8
  %26 = or i32 %25, 6
  %27 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 1, i32 1), align 4
  %28 = getelementptr i8, ptr %27, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #14, !srcloc !12
  br label %29

29:                                               ; preds = %24, %14, %11
  %30 = phi i32 [ %18, %24 ], [ %18, %14 ], [ 0, %11 ]
  %31 = phi i32 [ %21, %24 ], [ %21, %14 ], [ 0, %11 ]
  %32 = phi i32 [ %16, %24 ], [ %16, %14 ], [ 0, %11 ]
  %33 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 1), align 4
  %34 = getelementptr i8, ptr %33, i32 28
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #14, !srcloc !9
  %36 = and i32 %35, -4
  %37 = or i32 %36, 1
  %38 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 1), align 4
  %39 = getelementptr i8, ptr %38, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #14, !srcloc !12
  %40 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 1, i32 1), align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %29
  %43 = getelementptr i8, ptr %40, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %30) #14, !srcloc !12
  br label %44

44:                                               ; preds = %42, %29
  %45 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 6), align 4
  %46 = tail call i32 %45() #14
  %47 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 1), align 4
  %48 = getelementptr i8, ptr %47, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %3) #14, !srcloc !12
  %49 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 1), align 4
  %50 = getelementptr i8, ptr %49, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %35) #14, !srcloc !12
  %51 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 1, i32 1), align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %44
  %54 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 1), align 4
  %55 = getelementptr i8, ptr %54, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %31) #14, !srcloc !12
  %56 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 1, i32 1), align 4
  %57 = getelementptr i8, ptr %56, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %32) #14, !srcloc !12
  br label %58

58:                                               ; preds = %53, %44
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sama5d3_ddr_standby() #4 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 1), align 4
  %2 = getelementptr i8, ptr %1, i32 28
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #14, !srcloc !9
  %4 = and i32 %3, -4
  %5 = or i32 %4, 2
  %6 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 1), align 4
  %7 = getelementptr i8, ptr %6, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #14, !srcloc !12
  %8 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 6), align 4
  %9 = tail call i32 %8() #14
  %10 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 1), align 4
  %11 = getelementptr i8, ptr %10, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %3) #14, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_register(ptr noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @at91_pm_sram_init() unnamed_addr #3 section ".init.text" {
  %1 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.15) #14
  %2 = icmp eq ptr %1, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %7, %0
  %4 = phi ptr [ %8, %7 ], [ %1, %0 ]
  %5 = tail call ptr @of_find_device_by_node(ptr noundef nonnull %4) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = tail call ptr @of_find_compatible_node(ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull @.str.15) #14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %3

10:                                               ; preds = %7, %0
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.at91_pm_sram_init) #13
  br label %57

12:                                               ; preds = %3
  tail call void @of_node_put(ptr noundef nonnull %4) #14
  %13 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %14 = tail call ptr @gen_pool_get(ptr noundef %13, ptr noundef null) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.at91_pm_sram_init) #13
  br label %56

18:                                               ; preds = %12
  %19 = load i32, ptr @at91_pm_suspend_in_sram_sz, align 4
  %20 = getelementptr inbounds %struct.gen_pool, ptr %14, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.gen_pool, ptr %14, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @gen_pool_alloc_algo_owner(ptr noundef nonnull %14, i32 noundef %19, ptr noundef %21, ptr noundef %23, ptr noundef null) #14
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.at91_pm_sram_init) #13
  br label %56

28:                                               ; preds = %18
  %29 = tail call i32 @gen_pool_virt_to_phys(ptr noundef nonnull %14, i32 noundef %24) #14
  %30 = load i32, ptr @at91_pm_suspend_in_sram_sz, align 4
  %31 = tail call ptr @__arm_ioremap_exec(i32 noundef %29, i32 noundef %30, i1 noundef zeroext false) #14
  store ptr %31, ptr @at91_suspend_sram_fn, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #13
  br label %56

35:                                               ; preds = %28
  %36 = tail call i32 asm "", "=r,0"(ptr nonnull @at91_pm_suspend_in_sram) #15, !srcloc !16
  %37 = ptrtoint ptr %31 to i32
  %38 = and i32 %37, 7
  %39 = icmp ne i32 %38, 0
  %40 = and i32 %36, 6
  %41 = icmp ne i32 %40, 0
  %42 = select i1 %39, i1 true, i1 %41, !prof !17
  br i1 %42, label %43, label %44, !prof !17

43:                                               ; preds = %35
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-at91/pm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 759, 0\0A.popsection", ""() #14, !srcloc !18
  unreachable

44:                                               ; preds = %35
  %45 = and i32 %36, -2
  %46 = inttoptr i32 %45 to ptr
  %47 = load i32, ptr @at91_pm_suspend_in_sram_sz, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %31, ptr align 2 %46, i32 %47, i1 false)
  %48 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5), align 4
  %49 = load i32, ptr @at91_pm_suspend_in_sram_sz, align 4
  %50 = add i32 %49, %37
  tail call void %48(i32 noundef %37, i32 noundef %50) #14
  %51 = load ptr, ptr @at91_suspend_sram_fn, align 4
  %52 = ptrtoint ptr %51 to i32
  %53 = and i32 %36, 1
  %54 = or i32 %53, %52
  %55 = tail call ptr asm "", "=r,0"(i32 %54) #15, !srcloc !19
  store ptr %55, ptr @at91_suspend_sram_fn, align 4
  br label %57

56:                                               ; preds = %33, %26, %16
  tail call void @put_device(ptr noundef %13) #14
  br label %57

57:                                               ; preds = %56, %44, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @suspend_set_ops(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gen_pool_get(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_virt_to_phys(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__arm_ioremap_exec(i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @at91_pm_suspend_in_sram(ptr noundef) #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_alloc_algo_owner(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @at91_pm_valid_state(i32 noundef %0) #8 {
  %2 = icmp ult i32 %0, 4
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = getelementptr inbounds [4 x i32], ptr @switch.table.at91_pm_valid_state, i32 0, i32 %0
  %5 = load i32, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i32 [ %5, %3 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_pm_begin(i32 noundef %0) #4 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  switch i32 %0, label %6 [
    i32 3, label %7
    i32 2, label %5
  ]

5:                                                ; preds = %1
  br label %7

6:                                                ; preds = %1
  store i32 -1, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 5), align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  br label %87

7:                                                ; preds = %5, %1
  %8 = phi ptr [ getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 8), %5 ], [ getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 9), %1 ]
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 5), align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store ptr null, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4
  %10 = icmp eq i32 %9, 3
  br i1 %10, label %11, label %87

11:                                               ; preds = %7
  %12 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4), align 4
  %13 = icmp ne ptr %12, null
  %14 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 6), align 4
  %15 = icmp ne ptr %14, null
  %16 = select i1 %13, i1 %15, i1 false
  %17 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 2), align 4
  %18 = icmp ne ptr %17, null
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %21, label %20

20:                                               ; preds = %11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  br label %102

21:                                               ; preds = %11
  %22 = load ptr, ptr @soc_pm, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = call i32 %22(ptr noundef nonnull %14, ptr noundef nonnull %3, ptr noundef nonnull %4) #14
  %26 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 6), align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi ptr [ %26, %24 ], [ %14, %21 ]
  %29 = getelementptr i8, ptr %28, i32 4
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #14, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !20
  %31 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 2), align 4
  %32 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef %31, ptr noundef nonnull %2) #14
  %33 = icmp eq ptr %32, null
  br i1 %33, label %74, label %34

34:                                               ; preds = %70, %27
  %35 = phi ptr [ %72, %70 ], [ %32, %27 ]
  %36 = call ptr @of_find_device_by_node(ptr noundef nonnull %35) #14
  %37 = icmp eq ptr %36, null
  br i1 %37, label %70, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.platform_device, ptr %36, i32 0, i32 3
  %40 = getelementptr inbounds %struct.platform_device, ptr %36, i32 0, i32 3, i32 11, i32 1
  %41 = load i16, ptr %40, align 4
  %42 = and i16 %41, 1
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %69, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.platform_device, ptr %36, i32 0, i32 3, i32 11, i32 6
  %46 = load ptr, ptr %45, align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %69, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %2, align 4
  %50 = getelementptr inbounds %struct.of_device_id, ptr %49, i32 0, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.wakeup_source_info, ptr %51, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = icmp ne i32 %53, 0
  %55 = and i32 %53, %30
  %56 = icmp eq i32 %55, 0
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %69, label %58

58:                                               ; preds = %48
  %59 = load i32, ptr %51, align 4
  %60 = load i32, ptr %3, align 4
  %61 = or i32 %60, %59
  store i32 %61, ptr %3, align 4
  %62 = getelementptr inbounds %struct.wakeup_source_info, ptr %51, i32 0, i32 2
  %63 = load i8, ptr %62, align 4, !range !21
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %58
  %66 = load i32, ptr %51, align 4
  %67 = load i32, ptr %4, align 4
  %68 = or i32 %67, %66
  store i32 %68, ptr %4, align 4
  br label %69

69:                                               ; preds = %65, %58, %48, %44, %38
  call void @put_device(ptr noundef %39) #14
  br label %70

70:                                               ; preds = %69, %34
  %71 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 2), align 4
  %72 = call ptr @of_find_matching_node_and_match(ptr noundef nonnull %35, ptr noundef %71, ptr noundef nonnull %2) #14
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %34

74:                                               ; preds = %70, %27
  %75 = load i32, ptr %3, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %74
  %78 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 1), align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  br label %92

81:                                               ; preds = %77
  %82 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4), align 4
  %83 = load i32, ptr %4, align 4
  %84 = call i32 %78(ptr noundef %82, i32 noundef %75, i32 noundef %83) #14
  br label %89

85:                                               ; preds = %74
  %86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #13
  br label %89

87:                                               ; preds = %7, %6
  %88 = phi i32 [ %9, %7 ], [ -1, %6 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  br label %94

89:                                               ; preds = %85, %81
  %90 = load i32, ptr %3, align 4
  %91 = icmp eq i32 %90, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  br i1 %91, label %102, label %92

92:                                               ; preds = %89, %80
  %93 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 5), align 4
  br label %94

94:                                               ; preds = %92, %87
  %95 = phi i32 [ %93, %92 ], [ %88, %87 ]
  %96 = icmp eq i32 %95, 4
  %97 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 3), align 4
  br i1 %96, label %98, label %99

98:                                               ; preds = %94
  store i32 1, ptr %97, align 4
  br label %102

99:                                               ; preds = %94
  %100 = icmp eq ptr %97, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %99
  store i32 0, ptr %97, align 4
  br label %102

102:                                              ; preds = %101, %99, %98, %89, %20
  %103 = phi i32 [ -1, %89 ], [ 0, %99 ], [ 0, %101 ], [ 0, %98 ], [ -1, %20 ]
  ret i32 %103
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_pm_enter(i32 noundef %0) #4 {
  tail call void @at91_pinctrl_gpio_suspend() #14
  switch i32 %0, label %118 [
    i32 3, label %2
    i32 2, label %2
    i32 0, label %115
  ]

2:                                                ; preds = %1, %1
  %3 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 5), align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %108, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4), align 4
  %7 = getelementptr i8, ptr %6, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #14, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !22
  %9 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 3), align 4
  %10 = and i32 %9, %8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %5
  %13 = and i32 %8, 256
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %27, label %17

15:                                               ; preds = %5
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #13
  br label %118

17:                                               ; preds = %12
  %18 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4), align 4
  %19 = getelementptr i8, ptr %18, i32 64
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #14, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !23
  %21 = and i32 %20, 3
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %48, %39, %30, %17
  %24 = phi i32 [ 0, %17 ], [ 1, %30 ], [ 2, %39 ], [ 3, %48 ]
  %25 = phi i32 [ %21, %17 ], [ %34, %30 ], [ %43, %39 ], [ %52, %48 ]
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %24, i32 noundef %25) #13
  br label %118

27:                                               ; preds = %17, %12
  %28 = and i32 %8, 512
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4), align 4
  %32 = getelementptr i8, ptr %31, i32 68
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #14, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !23
  %34 = and i32 %33, 3
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %23

36:                                               ; preds = %30, %27
  %37 = and i32 %8, 1024
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4), align 4
  %41 = getelementptr i8, ptr %40, i32 72
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #14, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !23
  %43 = and i32 %42, 3
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %23

45:                                               ; preds = %39, %36
  %46 = and i32 %8, 2048
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %45
  %49 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4), align 4
  %50 = getelementptr i8, ptr %49, i32 76
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #14, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !23
  %52 = and i32 %51, 3
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %23

54:                                               ; preds = %48, %45
  %55 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 5), align 4
  %56 = icmp eq i32 %55, 4
  br i1 %56, label %57, label %108

57:                                               ; preds = %54
  %58 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 7), align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %85, label %60

60:                                               ; preds = %57
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %58) #14, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !24
  %62 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 5, i32 0, i32 2), align 4
  %63 = and i32 %62, %61
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %85, label %65

65:                                               ; preds = %60
  %66 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 5, i32 0, i32 3), align 4
  %67 = xor i32 %66, -1
  %68 = and i32 %61, %67
  %69 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 5), align 4
  %70 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 5, i32 0, i32 1), align 4
  %71 = or i32 %68, %69
  %72 = or i32 %71, %70
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !25
  tail call void @arm_heavy_mb() #14
  %73 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 7), align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %72) #14, !srcloc !12
  %74 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 7), align 4
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #14, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !26
  %76 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 5, i32 0, i32 2), align 4
  %77 = and i32 %76, %75
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %79, %65
  %80 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 7), align 4
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #14, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !27
  %82 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 5, i32 0, i32 2), align 4
  %83 = and i32 %82, %81
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %79

85:                                               ; preds = %79, %65, %60, %57
  %86 = tail call i32 @cpu_suspend(i32 noundef 0, ptr noundef nonnull @at91_suspend_finish) #14
  %87 = tail call i32 asm "", "=r,0"(ptr nonnull @at91_pm_suspend_in_sram) #15, !srcloc !28
  %88 = load ptr, ptr @at91_suspend_sram_fn, align 4
  %89 = ptrtoint ptr %88 to i32
  %90 = and i32 %89, 7
  %91 = icmp ne i32 %90, 0
  %92 = and i32 %87, 6
  %93 = icmp ne i32 %92, 0
  %94 = select i1 %91, i1 true, i1 %93, !prof !17
  br i1 %94, label %95, label %96, !prof !17

95:                                               ; preds = %85
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-at91/pm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 409, 0\0A.popsection", ""() #14, !srcloc !29
  unreachable

96:                                               ; preds = %85
  %97 = and i32 %87, -2
  %98 = inttoptr i32 %97 to ptr
  %99 = load i32, ptr @at91_pm_suspend_in_sram_sz, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %88, ptr align 2 %98, i32 %99, i1 false) #14
  %100 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5), align 4
  %101 = load i32, ptr @at91_pm_suspend_in_sram_sz, align 4
  %102 = add i32 %101, %89
  tail call void %100(i32 noundef %89, i32 noundef %102) #14
  %103 = load ptr, ptr @at91_suspend_sram_fn, align 4
  %104 = ptrtoint ptr %103 to i32
  %105 = and i32 %87, 1
  %106 = or i32 %105, %104
  %107 = tail call ptr asm "", "=r,0"(i32 %106) #15, !srcloc !30
  store ptr %107, ptr @at91_suspend_sram_fn, align 4
  br label %111

108:                                              ; preds = %54, %2
  %109 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %109() #14
  tail call void @outer_disable() #14
  %110 = load ptr, ptr @at91_suspend_sram_fn, align 4
  tail call void %110(ptr noundef getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4)) #14
  br label %111

111:                                              ; preds = %108, %96
  %112 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 6), align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %118, label %114

114:                                              ; preds = %111
  tail call void %112() #14
  br label %118

115:                                              ; preds = %1
  %116 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 6), align 4
  %117 = tail call i32 %116() #14
  br label %118

118:                                              ; preds = %115, %114, %111, %23, %15, %1
  tail call void @at91_pinctrl_gpio_resume() #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @at91_pm_end() #4 {
  %1 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 5), align 4
  %2 = icmp eq i32 %1, 3
  br i1 %2, label %3, label %15

3:                                                ; preds = %0
  %4 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4), align 4
  %5 = icmp ne ptr %4, null
  %6 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 6), align 4
  %7 = icmp ne ptr %6, null
  %8 = select i1 %5, i1 %7, i1 false
  %9 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 2), align 4
  %10 = icmp ne ptr %9, null
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !31
  tail call void @arm_heavy_mb() #14
  %13 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4), align 4
  %14 = getelementptr i8, ptr %13, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 0) #14, !srcloc !12
  br label %15

15:                                               ; preds = %12, %3, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @at91_pinctrl_gpio_suspend() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @at91_pinctrl_gpio_resume() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_suspend(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_suspend_finish(i32 noundef %0) #4 {
  %2 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 5), align 4
  %3 = icmp eq i32 %2, 4
  %4 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 2), align 4
  %5 = icmp ne ptr %4, null
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %7, label %47

7:                                                ; preds = %1
  %8 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 6), align 4
  %9 = load i32, ptr %8, align 4
  %10 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 3), align 4
  %11 = getelementptr %struct.at91_pm_bu, ptr %10, i32 0, i32 4, i32 1
  store i32 %9, ptr %11, align 4
  %12 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 6), align 4
  %13 = getelementptr i32, ptr %12, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 3), align 4
  %16 = getelementptr %struct.at91_pm_bu, ptr %15, i32 0, i32 4, i32 2
  store i32 %14, ptr %16, align 4
  %17 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 6), align 4
  %18 = getelementptr i32, ptr %17, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 3), align 4
  %21 = getelementptr %struct.at91_pm_bu, ptr %20, i32 0, i32 4, i32 3
  store i32 %19, ptr %21, align 4
  %22 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 6), align 4
  %23 = getelementptr i32, ptr %22, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 3), align 4
  %26 = getelementptr %struct.at91_pm_bu, ptr %25, i32 0, i32 4, i32 4
  store i32 %24, ptr %26, align 4
  %27 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 6), align 4
  %28 = getelementptr i32, ptr %27, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 3), align 4
  %31 = getelementptr %struct.at91_pm_bu, ptr %30, i32 0, i32 4, i32 5
  store i32 %29, ptr %31, align 4
  %32 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 6), align 4
  %33 = getelementptr i32, ptr %32, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 3), align 4
  %36 = getelementptr %struct.at91_pm_bu, ptr %35, i32 0, i32 4, i32 6
  store i32 %34, ptr %36, align 4
  %37 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 6), align 4
  %38 = getelementptr i32, ptr %37, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 3), align 4
  %41 = getelementptr %struct.at91_pm_bu, ptr %40, i32 0, i32 4, i32 7
  store i32 %39, ptr %41, align 4
  %42 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 6), align 4
  %43 = getelementptr i32, ptr %42, i32 7
  %44 = load i32, ptr %43, align 4
  %45 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 3), align 4
  %46 = getelementptr %struct.at91_pm_bu, ptr %45, i32 0, i32 4, i32 8
  store i32 %44, ptr %46, align 4
  br label %47

47:                                               ; preds = %7, %1
  %48 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %48() #14
  tail call void @outer_disable() #14
  %49 = load ptr, ptr @at91_suspend_sram_fn, align 4
  tail call void %49(ptr noundef getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4)) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @outer_disable() local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @at91_pm_backup_init() unnamed_addr #3 section ".init.text" {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #14
  store i32 0, ptr %1, align 4
  %2 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 8), align 4
  %3 = icmp eq i32 %2, 4
  %4 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 9), align 4
  %5 = icmp eq i32 %4, 4
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %7, label %52

7:                                                ; preds = %0
  %8 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.26) #14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %52, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @of_find_device_by_node(ptr noundef nonnull %8) #14
  tail call void @of_node_put(ptr noundef nonnull %8) #14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.at91_pm_backup_init) #13
  br label %52

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  %17 = tail call ptr @gen_pool_get(ptr noundef %16, ptr noundef null) #14
  %18 = icmp eq ptr %17, null
  br i1 %18, label %46, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.gen_pool, ptr %17, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.gen_pool, ptr %17, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @gen_pool_alloc_algo_owner(ptr noundef nonnull %17, i32 noundef 52, ptr noundef %21, ptr noundef %23, ptr noundef null) #14
  %25 = inttoptr i32 %24 to ptr
  store ptr %25, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 3), align 4
  %26 = icmp eq i32 %24, 0
  br i1 %26, label %46, label %27

27:                                               ; preds = %19
  store i32 0, ptr %25, align 4
  %28 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @canary to i32), i32 -2130706432, i32 8454144) #15, !srcloc !32
  %29 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 3), align 4
  %30 = getelementptr inbounds %struct.at91_pm_bu, ptr %29, i32 0, i32 2
  store i32 %28, ptr %30, align 4
  %31 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @cpu_resume to i32), i32 -2130706432, i32 8454144) #15, !srcloc !32
  %32 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 3), align 4
  %33 = getelementptr inbounds %struct.at91_pm_bu, ptr %32, i32 0, i32 3
  store i32 %31, ptr %33, align 4
  %34 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 2), align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %52, label %36

36:                                               ; preds = %27
  %37 = call i32 @of_scan_flat_dt(ptr noundef nonnull @at91_pm_backup_scan_memcs, ptr noundef nonnull %1) #14
  %38 = load i32, ptr %1, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 2), align 4
  %42 = getelementptr i8, ptr %41, i32 392
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #14, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !33
  %44 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 3), align 4
  %45 = getelementptr inbounds %struct.at91_pm_bu, ptr %44, i32 0, i32 4
  store i32 %43, ptr %45, align 4
  br label %52

46:                                               ; preds = %19, %15
  %47 = phi ptr [ @.str.28, %15 ], [ @.str.29, %19 ]
  %48 = phi i32 [ -19, %15 ], [ -12, %19 ]
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %47, ptr noundef nonnull @__func__.at91_pm_backup_init) #13
  br label %50

50:                                               ; preds = %46, %36
  %51 = phi i32 [ -19, %36 ], [ %48, %46 ]
  call void @put_device(ptr noundef %16) #14
  br label %52

52:                                               ; preds = %50, %40, %27, %13, %7, %0
  %53 = phi i32 [ %51, %50 ], [ -19, %13 ], [ 0, %0 ], [ -19, %7 ], [ 0, %40 ], [ 0, %27 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #14
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_resume() #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_scan_flat_dt(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @at91_pm_backup_scan_memcs(i32 noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr nocapture noundef %3) #3 section ".init.text" {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = load i32, ptr %3, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %4
  %9 = tail call ptr @of_get_flat_dt_prop(i32 noundef %0, ptr noundef nonnull @.str.30, ptr noundef null) #14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %8
  %12 = tail call i32 @strcmp(ptr noundef nonnull %9, ptr noundef nonnull dereferenceable(7) @.str.31)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = call ptr @of_get_flat_dt_prop(i32 noundef %0, ptr noundef nonnull @.str.32, ptr noundef nonnull %5) #14
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = load i32, ptr %15, align 4
  %19 = call i32 @llvm.bswap.i32(i32 %18)
  %20 = call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %19, i32 -2130706432, i32 8454144) #15, !srcloc !34
  %21 = inttoptr i32 %20 to ptr
  store ptr %21, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 6), align 4
  store i32 1, ptr %3, align 4
  br label %22

22:                                               ; preds = %17, %14, %11, %8, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_flat_dt_prop(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { cold }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind }
attributes #15 = { nounwind readnone }

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
!9 = !{i64 845418}
!10 = !{i64 2153600223}
!11 = !{i64 2153600407}
!12 = !{i64 845000}
!13 = !{i64 2153600719}
!14 = !{i64 2153601035}
!15 = !{i64 12897, i64 12907, i64 12927, i64 12969, i64 13001, i64 13042}
!16 = !{i64 2153617509}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i64 2153618792, i64 2153619280, i64 2153618829, i64 2153618885, i64 2153618919, i64 2153618943, i64 2153618984, i64 2153619005, i64 2153619033, i64 2153619067}
!19 = !{i64 2153618004}
!20 = !{i64 2153599221}
!21 = !{i8 0, i8 2}
!22 = !{i64 2153601578}
!23 = !{i64 2153602536}
!24 = !{i64 2153605208}
!25 = !{i64 2153605402}
!26 = !{i64 2153605901}
!27 = !{i64 2153606262}
!28 = !{i64 2153606392}
!29 = !{i64 2153607675, i64 2153608163, i64 2153607712, i64 2153607768, i64 2153607802, i64 2153607826, i64 2153607867, i64 2153607888, i64 2153607916, i64 2153607950}
!30 = !{i64 2153606887}
!31 = !{i64 2153598730}
!32 = !{i64 2148388662, i64 2148388685, i64 2148388717, i64 2148388749, i64 2148388787, i64 2148388817}
!33 = !{i64 2153624688}
!34 = !{i64 2148389448, i64 2148389471, i64 2148389503, i64 2148389535, i64 2148389573, i64 2148389603}
