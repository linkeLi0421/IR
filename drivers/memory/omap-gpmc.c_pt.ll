; ModuleID = '/llk/IR/drivers/memory/omap-gpmc.c_pt.bc'
source_filename = "../drivers/memory/omap-gpmc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpmc_cs_request:\09\09\09\09\09"
module asm "\09.asciz \09\22gpmc_cs_request\22\09\09\09\09\09"
module asm "__kstrtabns_gpmc_cs_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpmc_cs_free:\09\09\09\09\09"
module asm "\09.asciz \09\22gpmc_cs_free\22\09\09\09\09\09"
module asm "__kstrtabns_gpmc_cs_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpmc_configure:\09\09\09\09\09"
module asm "\09.asciz \09\22gpmc_configure\22\09\09\09\09\09"
module asm "__kstrtabns_gpmc_configure:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpmc_omap_get_nand_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22gpmc_omap_get_nand_ops\22\09\09\09\09\09"
module asm "__kstrtabns_gpmc_omap_get_nand_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpmc_omap_onenand_set_timings:\09\09\09\09\09"
module asm "\09.asciz \09\22gpmc_omap_onenand_set_timings\22\09\09\09\09\09"
module asm "__kstrtabns_gpmc_omap_onenand_set_timings:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.gpmc_cs_data = type { ptr, i32, %struct.resource }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.gpmc_nand_ops = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gpmc_settings = type { i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32 }
%struct.gpmc_timings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gpmc_bool_timings }
%struct.gpmc_bool_timings = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.gpmc_nand_regs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [8 x ptr], [8 x ptr], [8 x ptr], [8 x ptr], [8 x ptr], [8 x ptr], [8 x ptr] }
%struct.gpmc_device_timings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.gpmc_onenand_info = type { i8, i8, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.gpmc_device = type { ptr, i32, %struct.irq_chip, %struct.gpio_chip, %struct.notifier_block, %struct.omap3_gpmc_regs, i32, i8, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.62, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%union.anon.62 = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.omap3_gpmc_regs = type { i32, i32, i32, i32, i32, i32, i32, [8 x %struct.gpmc_cs_config] }
%struct.gpmc_cs_config = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@gpmc_base = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [73 x i8] c"\013%s: waitmonitoringtime %3d ns too large for greatest gpmcfclkdivider.\0A\00", align 1
@__func__.gpmc_cs_set_timings = private unnamed_addr constant [20 x i8] c"gpmc_cs_set_timings\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"cs_on\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"cs_rd_off\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"cs_wr_off\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"adv_on\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"adv_rd_off\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"adv_wr_off\00", align 1
@gpmc_capability = internal unnamed_addr global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"adv_aad_mux_on\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"adv_aad_mux_rd_off\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"adv_aad_mux_wr_off\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"oe_on\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"oe_off\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"oe_aad_mux_on\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"oe_aad_mux_off\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"we_on\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"we_off\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"rd_cycle\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"wr_cycle\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"access\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"page_burst_access\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"bus_turnaround\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"cycle2cycle_delay\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"wr_data_mux_bus\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"wr_access\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"wait_monitoring\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"clk_activation\00", align 1
@gpmc_cs = internal global [8 x %struct.gpmc_cs_data] zeroinitializer, align 4
@gpmc_cs_num = internal global i32 8, align 4
@.str.27 = private unnamed_addr constant [41 x i8] c"\013%s: requested chip-select is disabled\0A\00", align 1
@__func__.gpmc_cs_request = private unnamed_addr constant [16 x i8] c"gpmc_cs_request\00", align 1
@gpmc_mem_lock = internal global %struct.spinlock zeroinitializer, align 4
@gpmc_mem_root = internal global %struct.resource zeroinitializer, align 4
@__kstrtab_gpmc_cs_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpmc_cs_request = external dso_local constant [0 x i8], align 1
@__ksymtab_gpmc_cs_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpmc_cs_request to i32), ptr @__kstrtab_gpmc_cs_request, ptr @__kstrtabns_gpmc_cs_request }, section "___ksymtab+gpmc_cs_request", align 4
@.str.28 = private unnamed_addr constant [27 x i8] c"drivers/memory/omap-gpmc.c\00", align 1
@.str.29 = private unnamed_addr constant [39 x i8] c"Trying to free non-reserved GPMC CS%d\0A\00", align 1
@__kstrtab_gpmc_cs_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpmc_cs_free = external dso_local constant [0 x i8], align 1
@__ksymtab_gpmc_cs_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpmc_cs_free to i32), ptr @__kstrtab_gpmc_cs_free, ptr @__kstrtabns_gpmc_cs_free }, section "___ksymtab+gpmc_cs_free", align 4
@.str.30 = private unnamed_addr constant [29 x i8] c"\013%s: command not supported\0A\00", align 1
@__func__.gpmc_configure = private unnamed_addr constant [15 x i8] c"gpmc_configure\00", align 1
@__kstrtab_gpmc_configure = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpmc_configure = external dso_local constant [0 x i8], align 1
@__ksymtab_gpmc_configure = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpmc_configure to i32), ptr @__kstrtab_gpmc_configure, ptr @__kstrtabns_gpmc_configure }, section "___ksymtab+gpmc_configure", align 4
@nand_ops = internal global %struct.gpmc_nand_ops { ptr @gpmc_nand_writebuffer_empty }, align 4
@__kstrtab_gpmc_omap_get_nand_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpmc_omap_get_nand_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_gpmc_omap_get_nand_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpmc_omap_get_nand_ops to i32), ptr @__kstrtab_gpmc_omap_get_nand_ops, ptr @__kstrtabns_gpmc_omap_get_nand_ops }, section "___ksymtab_gpl+gpmc_omap_get_nand_ops", align 4
@__kstrtab_gpmc_omap_onenand_set_timings = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpmc_omap_onenand_set_timings = external dso_local constant [0 x i8], align 1
@__ksymtab_gpmc_omap_onenand_set_timings = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpmc_omap_onenand_set_timings to i32), ptr @__kstrtab_gpmc_omap_onenand_set_timings, ptr @__kstrtabns_gpmc_omap_onenand_set_timings }, section "___ksymtab_gpl+gpmc_omap_onenand_set_timings", align 4
@gpmc_irq_domain = internal unnamed_addr global ptr null, align 4
@.str.31 = private unnamed_addr constant [46 x i8] c"\014%s called before GPMC IRQ domain available\0A\00", align 1
@__func__.gpmc_get_client_irq = private unnamed_addr constant [20 x i8] c"gpmc_get_client_irq\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"\013%s: invalid width %d!\00", align 1
@__func__.gpmc_cs_program_settings = private unnamed_addr constant [25 x i8] c"gpmc_cs_program_settings\00", align 1
@.str.33 = private unnamed_addr constant [30 x i8] c"\013%s: invalid configuration!\0A\00", align 1
@.str.34 = private unnamed_addr constant [40 x i8] c"\013%s: invalid multiplex configuration!\0A\00", align 1
@.str.35 = private unnamed_addr constant [38 x i8] c"\013%s: invalid page/burst-length (%d)\0A\00", align 1
@gpmc_nr_waitpins = internal global i32 0, align 4
@.str.36 = private unnamed_addr constant [29 x i8] c"\013%s: invalid wait-pin (%d)\0A\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"gpmc,sync-read\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"gpmc,sync-write\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"gpmc,device-width\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"gpmc,mux-add-data\00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c"gpmc,burst-length\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"gpmc,burst-wrap\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"gpmc,burst-read\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"gpmc,burst-write\00", align 1
@.str.45 = private unnamed_addr constant [43 x i8] c"\014%s: page/burst-length set but not used!\0A\00", align 1
@__func__.gpmc_read_settings_dt = private unnamed_addr constant [22 x i8] c"gpmc_read_settings_dt\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"gpmc,wait-pin\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"gpmc,wait-on-read\00", align 1
@.str.48 = private unnamed_addr constant [19 x i8] c"gpmc,wait-on-write\00", align 1
@__initcall__kmod_omap_gpmc__271_2661_gpmc_init2 = internal global ptr @gpmc_init, section ".initcall2.init", align 4
@gpmc_l3_clk = internal unnamed_addr global ptr null, align 4
@.str.49 = private unnamed_addr constant [48 x i8] c"\013%s: GPMC CS%d: %s %d ns, %d ticks > %d ticks\0A\00", align 1
@__func__.set_gpmc_timing_reg = private unnamed_addr constant [20 x i8] c"set_gpmc_timing_reg\00", align 1
@gpmc_driver = internal global %struct.platform_driver { ptr @gpmc_probe, ptr @gpmc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.50, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @gpmc_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpmc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.50 = private unnamed_addr constant [10 x i8] c"omap-gpmc\00", align 1
@gpmc_dt_ids = internal constant [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2420-gpmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2430-gpmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3430-gpmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4430-gpmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am3352-gpmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am64-gpmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@gpmc_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @gpmc_suspend, ptr @gpmc_resume, ptr @gpmc_suspend, ptr @gpmc_resume, ptr @gpmc_suspend, ptr @gpmc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.51 = private unnamed_addr constant [4 x i8] c"cfg\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.53 = private unnamed_addr constant [32 x i8] c"couldn't get data reg resource\0A\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"fck\00", align 1
@.str.55 = private unnamed_addr constant [24 x i8] c"Failed to get GPMC fck\0A\00", align 1
@.str.56 = private unnamed_addr constant [29 x i8] c"Invalid GPMC fck clock rate\0A\00", align 1
@.str.57 = private unnamed_addr constant [21 x i8] c"GPMC revision %d.%d\0A\00", align 1
@.str.58 = private unnamed_addr constant [23 x i8] c"gpmc_setup_irq failed\0A\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"gpmc,num-cs\00", align 1
@.str.60 = private unnamed_addr constant [42 x i8] c"\013%s: number of chip-selects not defined\0A\00", align 1
@__func__.gpmc_probe_dt = private unnamed_addr constant [14 x i8] c"gpmc_probe_dt\00", align 1
@.str.61 = private unnamed_addr constant [37 x i8] c"\013%s: all chip-selects are disabled\0A\00", align 1
@.str.62 = private unnamed_addr constant [55 x i8] c"\013%s: number of supported chip-selects cannot be > %d\0A\00", align 1
@.str.63 = private unnamed_addr constant [18 x i8] c"gpmc,num-waitpins\00", align 1
@.str.64 = private unnamed_addr constant [38 x i8] c"\013%s: number of wait pins not found!\0A\00", align 1
@.str.65 = private unnamed_addr constant [43 x i8] c"\014%s: disabling cs %d mapped at 0x%x-0x%x\0A\00", align 1
@__func__.gpmc_mem_init = private unnamed_addr constant [14 x i8] c"gpmc_mem_init\00", align 1
@.str.66 = private unnamed_addr constant [34 x i8] c"could not register gpio chip: %d\0A\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"gpmc\00", align 1
@gpmc_irq_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr @gpmc_irq_map, ptr null, ptr @irq_domain_xlate_twocell, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.68 = private unnamed_addr constant [23 x i8] c"IRQ domain add failed\0A\00", align 1
@.str.69 = private unnamed_addr constant [30 x i8] c"failed to request irq %d: %d\0A\00", align 1
@.str.70 = private unnamed_addr constant [41 x i8] c"spurious irq detected hwirq %d, virq %d\0A\00", align 1
@.str.71 = private unnamed_addr constant [38 x i8] c"failed to probe DT child '%pOFn': %d\0A\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.73 = private unnamed_addr constant [28 x i8] c"%pOF has no 'reg' property\0A\00", align 1
@.str.74 = private unnamed_addr constant [35 x i8] c"%pOF has malformed 'reg' property\0A\00", align 1
@.str.75 = private unnamed_addr constant [27 x i8] c"cannot request GPMC CS %d\0A\00", align 1
@.str.76 = private unnamed_addr constant [54 x i8] c"enable GPMC debug to configure .dts timings for CS%i\0A\00", align 1
@.str.78 = private unnamed_addr constant [32 x i8] c"cannot remap GPMC CS %d to %pa\0A\00", align 1
@.str.79 = private unnamed_addr constant [45 x i8] c"GPMC CS %d start cannot be lesser than 0x%x\0A\00", align 1
@.str.80 = private unnamed_addr constant [44 x i8] c"GPMC CS %d end cannot be greater than 0x%x\0A\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"nand\00", align 1
@.str.82 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@.str.83 = private unnamed_addr constant [43 x i8] c"Incompatible NAND node: missing compatible\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"onenand\00", align 1
@.str.85 = private unnamed_addr constant [46 x i8] c"Incompatible OneNAND node: missing compatible\00", align 1
@omap_nand_ids = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am64-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.86 = private unnamed_addr constant [15 x i8] c"nand-bus-width\00", align 1
@.str.87 = private unnamed_addr constant [33 x i8] c"%pOFn: invalid 'nand-bus-width'\0A\00", align 1
@.str.88 = private unnamed_addr constant [11 x i8] c"bank-width\00", align 1
@.str.89 = private unnamed_addr constant [42 x i8] c"%pOF has no 'gpmc,device-width' property\0A\00", align 1
@.str.90 = private unnamed_addr constant [8 x i8] c"WAITPIN\00", align 1
@.str.91 = private unnamed_addr constant [22 x i8] c"invalid wait-pin: %d\0A\00", align 1
@.str.93 = private unnamed_addr constant [39 x i8] c"failed to set gpmc timings for: %pOFn\0A\00", align 1
@of_default_bus_match_table = external dso_local constant [0 x %struct.of_device_id], align 4
@.str.94 = private unnamed_addr constant [35 x i8] c"failed to create gpmc child %pOFn\0A\00", align 1
@.str.95 = private unnamed_addr constant [17 x i8] c"gpmc,sync-clk-ps\00", align 1
@.str.96 = private unnamed_addr constant [14 x i8] c"gpmc,cs-on-ns\00", align 1
@.str.97 = private unnamed_addr constant [18 x i8] c"gpmc,cs-rd-off-ns\00", align 1
@.str.98 = private unnamed_addr constant [18 x i8] c"gpmc,cs-wr-off-ns\00", align 1
@.str.99 = private unnamed_addr constant [15 x i8] c"gpmc,adv-on-ns\00", align 1
@.str.100 = private unnamed_addr constant [19 x i8] c"gpmc,adv-rd-off-ns\00", align 1
@.str.101 = private unnamed_addr constant [19 x i8] c"gpmc,adv-wr-off-ns\00", align 1
@.str.102 = private unnamed_addr constant [23 x i8] c"gpmc,adv-aad-mux-on-ns\00", align 1
@.str.103 = private unnamed_addr constant [27 x i8] c"gpmc,adv-aad-mux-rd-off-ns\00", align 1
@.str.104 = private unnamed_addr constant [27 x i8] c"gpmc,adv-aad-mux-wr-off-ns\00", align 1
@.str.105 = private unnamed_addr constant [14 x i8] c"gpmc,we-on-ns\00", align 1
@.str.106 = private unnamed_addr constant [15 x i8] c"gpmc,we-off-ns\00", align 1
@.str.107 = private unnamed_addr constant [14 x i8] c"gpmc,oe-on-ns\00", align 1
@.str.108 = private unnamed_addr constant [15 x i8] c"gpmc,oe-off-ns\00", align 1
@.str.109 = private unnamed_addr constant [22 x i8] c"gpmc,oe-aad-mux-on-ns\00", align 1
@.str.110 = private unnamed_addr constant [23 x i8] c"gpmc,oe-aad-mux-off-ns\00", align 1
@.str.111 = private unnamed_addr constant [26 x i8] c"gpmc,page-burst-access-ns\00", align 1
@.str.112 = private unnamed_addr constant [15 x i8] c"gpmc,access-ns\00", align 1
@.str.113 = private unnamed_addr constant [17 x i8] c"gpmc,rd-cycle-ns\00", align 1
@.str.114 = private unnamed_addr constant [17 x i8] c"gpmc,wr-cycle-ns\00", align 1
@.str.115 = private unnamed_addr constant [23 x i8] c"gpmc,bus-turnaround-ns\00", align 1
@.str.116 = private unnamed_addr constant [26 x i8] c"gpmc,cycle2cycle-delay-ns\00", align 1
@.str.117 = private unnamed_addr constant [24 x i8] c"gpmc,wait-monitoring-ns\00", align 1
@.str.118 = private unnamed_addr constant [23 x i8] c"gpmc,clk-activation-ns\00", align 1
@.str.119 = private unnamed_addr constant [18 x i8] c"gpmc,wr-access-ns\00", align 1
@.str.120 = private unnamed_addr constant [24 x i8] c"gpmc,wr-data-mux-bus-ns\00", align 1
@.str.121 = private unnamed_addr constant [26 x i8] c"gpmc,cycle2cycle-diffcsen\00", align 1
@.str.122 = private unnamed_addr constant [26 x i8] c"gpmc,cycle2cycle-samecsen\00", align 1
@.str.123 = private unnamed_addr constant [20 x i8] c"gpmc,we-extra-delay\00", align 1
@.str.124 = private unnamed_addr constant [20 x i8] c"gpmc,oe-extra-delay\00", align 1
@.str.125 = private unnamed_addr constant [21 x i8] c"gpmc,adv-extra-delay\00", align 1
@.str.126 = private unnamed_addr constant [20 x i8] c"gpmc,cs-extra-delay\00", align 1
@.str.127 = private unnamed_addr constant [27 x i8] c"gpmc,time-para-granularity\00", align 1
@__func__.gpmc_cs_remap = private unnamed_addr constant [14 x i8] c"gpmc_cs_remap\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__initcall__kmod_omap_gpmc__271_2661_gpmc_init2, ptr @__ksymtab_gpmc_configure, ptr @__ksymtab_gpmc_cs_free, ptr @__ksymtab_gpmc_cs_request, ptr @__ksymtab_gpmc_omap_get_nand_ops, ptr @__ksymtab_gpmc_omap_onenand_set_timings], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gpmc_cs_write_reg(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @gpmc_base, align 4
  %5 = getelementptr i8, ptr %4, i32 96
  %6 = mul i32 %0, 48
  %7 = getelementptr i8, ptr %5, i32 %6
  %8 = getelementptr i8, ptr %7, i32 %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %2) #9, !srcloc !8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gpmc_ticks_to_ns(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gpmc_l3_clk, align 4
  %3 = tail call i32 @clk_get_rate(ptr noundef %2) #9
  %4 = udiv i32 %3, 1000
  %5 = udiv i32 1000000000, %4
  %6 = mul i32 %5, %0
  %7 = udiv i32 %6, 1000
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gpmc_calc_divider(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gpmc_l3_clk, align 4
  %3 = tail call i32 @clk_get_rate(ptr noundef %2) #9
  %4 = udiv i32 %3, 1000
  %5 = udiv i32 1000000000, %4
  %6 = add i32 %0, -1
  %7 = add i32 %6, %5
  %8 = udiv i32 %7, %5
  %9 = icmp ugt i32 %8, 4
  %10 = tail call i32 @llvm.smax.i32(i32 %8, i32 1)
  %11 = select i1 %9, i32 -1, i32 %10
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gpmc_cs_set_timings(i32 noundef %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %1, align 4
  %5 = load ptr, ptr @gpmc_l3_clk, align 4
  %6 = tail call i32 @clk_get_rate(ptr noundef %5) #9
  %7 = udiv i32 %6, 1000
  %8 = udiv i32 1000000000, %7
  %9 = add i32 %4, -1
  %10 = add i32 %9, %8
  %11 = udiv i32 %10, %8
  %12 = icmp ugt i32 %11, 4
  %13 = tail call i32 @llvm.smax.i32(i32 %11, i32 1) #9
  br i1 %12, label %738, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.gpmc_settings, ptr %2, i32 0, i32 4
  %16 = load i8, ptr %15, align 4, !range !9
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %48

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.gpmc_settings, ptr %2, i32 0, i32 5
  %20 = load i8, ptr %19, align 1, !range !9
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %48

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.gpmc_settings, ptr %2, i32 0, i32 6
  %24 = load i8, ptr %23, align 2, !range !9
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.gpmc_settings, ptr %2, i32 0, i32 7
  %28 = load i8, ptr %27, align 1, !range !9
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %48, label %30

30:                                               ; preds = %26, %22
  %31 = getelementptr inbounds %struct.gpmc_timings, ptr %1, i32 0, i32 22
  %32 = load i32, ptr %31, align 4
  %33 = load ptr, ptr @gpmc_l3_clk, align 4
  %34 = tail call i32 @clk_get_rate(ptr noundef %33) #9
  %35 = udiv i32 %34, 1000
  %36 = udiv i32 1000000000, %35
  %37 = mul i32 %32, 1000
  %38 = add i32 %37, -1
  %39 = add i32 %38, %36
  %40 = udiv i32 %39, %36
  %41 = add nuw nsw i32 %40, 1
  %42 = icmp ugt i32 %40, 8
  %43 = lshr i32 %41, 1
  %44 = tail call i32 @llvm.smax.i32(i32 %43, i32 1) #9
  br i1 %42, label %45, label %48

45:                                               ; preds = %30
  %46 = load i32, ptr %31, align 4
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.gpmc_cs_set_timings, i32 noundef %46) #10
  br label %738

48:                                               ; preds = %30, %26, %18, %14
  %49 = phi i32 [ %13, %14 ], [ %13, %18 ], [ %44, %30 ], [ %13, %26 ]
  %50 = getelementptr inbounds %struct.gpmc_timings, ptr %1, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %48
  %54 = load ptr, ptr @gpmc_l3_clk, align 4
  %55 = tail call i32 @clk_get_rate(ptr noundef %54) #9
  %56 = udiv i32 %55, 1000
  %57 = udiv i32 1000000000, %56
  %58 = mul i32 %51, 1000
  %59 = add i32 %58, -1
  %60 = add i32 %59, %57
  %61 = udiv i32 %60, %57
  %62 = icmp ugt i32 %61, 15
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.set_gpmc_timing_reg, i32 noundef %0, ptr noundef nonnull @.str.1, i32 noundef %51, i32 noundef %61, i32 noundef 15) #10
  br label %79

65:                                               ; preds = %53, %48
  %66 = phi i32 [ %61, %53 ], [ 0, %48 ]
  %67 = load ptr, ptr @gpmc_base, align 4
  %68 = getelementptr i8, ptr %67, i32 96
  %69 = mul i32 %0, 48
  %70 = getelementptr i8, ptr %68, i32 %69
  %71 = getelementptr i8, ptr %70, i32 4
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #9, !srcloc !10
  %73 = and i32 %72, -16
  %74 = or i32 %73, %66
  %75 = load ptr, ptr @gpmc_base, align 4
  %76 = getelementptr i8, ptr %75, i32 96
  %77 = getelementptr i8, ptr %76, i32 %69
  %78 = getelementptr i8, ptr %77, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %74) #9, !srcloc !8
  br label %79

79:                                               ; preds = %65, %63
  %80 = phi i32 [ -1, %63 ], [ 0, %65 ]
  %81 = getelementptr inbounds %struct.gpmc_timings, ptr %1, i32 0, i32 2
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %96, label %84

84:                                               ; preds = %79
  %85 = load ptr, ptr @gpmc_l3_clk, align 4
  %86 = tail call i32 @clk_get_rate(ptr noundef %85) #9
  %87 = udiv i32 %86, 1000
  %88 = udiv i32 1000000000, %87
  %89 = mul i32 %82, 1000
  %90 = add i32 %89, -1
  %91 = add i32 %90, %88
  %92 = udiv i32 %91, %88
  %93 = icmp ugt i32 %92, 31
  br i1 %93, label %94, label %96

94:                                               ; preds = %84
  %95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.set_gpmc_timing_reg, i32 noundef %0, ptr noundef nonnull @.str.2, i32 noundef %82, i32 noundef %92, i32 noundef 31) #10
  br label %111

96:                                               ; preds = %84, %79
  %97 = phi i32 [ %92, %84 ], [ 0, %79 ]
  %98 = load ptr, ptr @gpmc_base, align 4
  %99 = getelementptr i8, ptr %98, i32 96
  %100 = mul i32 %0, 48
  %101 = getelementptr i8, ptr %99, i32 %100
  %102 = getelementptr i8, ptr %101, i32 4
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %102) #9, !srcloc !10
  %104 = and i32 %103, -7937
  %105 = shl nuw nsw i32 %97, 8
  %106 = or i32 %104, %105
  %107 = load ptr, ptr @gpmc_base, align 4
  %108 = getelementptr i8, ptr %107, i32 96
  %109 = getelementptr i8, ptr %108, i32 %100
  %110 = getelementptr i8, ptr %109, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 %106) #9, !srcloc !8
  br label %111

111:                                              ; preds = %96, %94
  %112 = phi i32 [ -1, %94 ], [ 0, %96 ]
  %113 = or i32 %112, %80
  %114 = getelementptr inbounds %struct.gpmc_timings, ptr %1, i32 0, i32 3
  %115 = load i32, ptr %114, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %129, label %117

117:                                              ; preds = %111
  %118 = load ptr, ptr @gpmc_l3_clk, align 4
  %119 = tail call i32 @clk_get_rate(ptr noundef %118) #9
  %120 = udiv i32 %119, 1000
  %121 = udiv i32 1000000000, %120
  %122 = mul i32 %115, 1000
  %123 = add i32 %122, -1
  %124 = add i32 %123, %121
  %125 = udiv i32 %124, %121
  %126 = icmp ugt i32 %125, 31
  br i1 %126, label %127, label %129

127:                                              ; preds = %117
  %128 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.set_gpmc_timing_reg, i32 noundef %0, ptr noundef nonnull @.str.3, i32 noundef %115, i32 noundef %125, i32 noundef 31) #10
  br label %144

129:                                              ; preds = %117, %111
  %130 = phi i32 [ %125, %117 ], [ 0, %111 ]
  %131 = load ptr, ptr @gpmc_base, align 4
  %132 = getelementptr i8, ptr %131, i32 96
  %133 = mul i32 %0, 48
  %134 = getelementptr i8, ptr %132, i32 %133
  %135 = getelementptr i8, ptr %134, i32 4
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %135) #9, !srcloc !10
  %137 = and i32 %136, -2031617
  %138 = shl nuw nsw i32 %130, 16
  %139 = or i32 %137, %138
  %140 = load ptr, ptr @gpmc_base, align 4
  %141 = getelementptr i8, ptr %140, i32 96
  %142 = getelementptr i8, ptr %141, i32 %133
  %143 = getelementptr i8, ptr %142, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 %139) #9, !srcloc !8
  br label %144

144:                                              ; preds = %129, %127
  %145 = phi i32 [ -1, %127 ], [ 0, %129 ]
  %146 = or i32 %113, %145
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %738

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.gpmc_timings, ptr %1, i32 0, i32 4
  %150 = load i32, ptr %149, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %164, label %152

152:                                              ; preds = %148
  %153 = load ptr, ptr @gpmc_l3_clk, align 4
  %154 = tail call i32 @clk_get_rate(ptr noundef %153) #9
  %155 = udiv i32 %154, 1000
  %156 = udiv i32 1000000000, %155
  %157 = mul i32 %150, 1000
  %158 = add i32 %157, -1
  %159 = add i32 %158, %156
  %160 = udiv i32 %159, %156
  %161 = icmp ugt i32 %160, 15
  br i1 %161, label %162, label %164

162:                                              ; preds = %152
  %163 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.set_gpmc_timing_reg, i32 noundef %0, ptr noundef nonnull @.str.4, i32 noundef %150, i32 noundef %160, i32 noundef 15) #10
  br label %178

164:                                              ; preds = %152, %148
  %165 = phi i32 [ %160, %152 ], [ 0, %148 ]
  %166 = load ptr, ptr @gpmc_base, align 4
  %167 = getelementptr i8, ptr %166, i32 96
  %168 = mul i32 %0, 48
  %169 = getelementptr i8, ptr %167, i32 %168
  %170 = getelementptr i8, ptr %169, i32 8
  %171 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %170) #9, !srcloc !10
  %172 = and i32 %171, -16
  %173 = or i32 %172, %165
  %174 = load ptr, ptr @gpmc_base, align 4
  %175 = getelementptr i8, ptr %174, i32 96
  %176 = getelementptr i8, ptr %175, i32 %168
  %177 = getelementptr i8, ptr %176, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %177, i32 %173) #9, !srcloc !8
  br label %178

178:                                              ; preds = %164, %162
  %179 = phi i32 [ -1, %162 ], [ 0, %164 ]
  %180 = getelementptr inbounds %struct.gpmc_timings, ptr %1, i32 0, i32 5
  %181 = load i32, ptr %180, align 4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %195, label %183

183:                                              ; preds = %178
  %184 = load ptr, ptr @gpmc_l3_clk, align 4
  %185 = tail call i32 @clk_get_rate(ptr noundef %184) #9
  %186 = udiv i32 %185, 1000
  %187 = udiv i32 1000000000, %186
  %188 = mul i32 %181, 1000
  %189 = add i32 %188, -1
  %190 = add i32 %189, %187
  %191 = udiv i32 %190, %187
  %192 = icmp ugt i32 %191, 31
  br i1 %192, label %193, label %195

193:                                              ; preds = %183
  %194 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.set_gpmc_timing_reg, i32 noundef %0, ptr noundef nonnull @.str.5, i32 noundef %181, i32 noundef %191, i32 noundef 31) #10
  br label %210

195:                                              ; preds = %183, %178
  %196 = phi i32 [ %191, %183 ], [ 0, %178 ]
  %197 = load ptr, ptr @gpmc_base, align 4
  %198 = getelementptr i8, ptr %197, i32 96
  %199 = mul i32 %0, 48
  %200 = getelementptr i8, ptr %198, i32 %199
  %201 = getelementptr i8, ptr %200, i32 8
  %202 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %201) #9, !srcloc !10
  %203 = and i32 %202, -7937
  %204 = shl nuw nsw i32 %196, 8
  %205 = or i32 %203, %204
  %206 = load ptr, ptr @gpmc_base, align 4
  %207 = getelementptr i8, ptr %206, i32 96
  %208 = getelementptr i8, ptr %207, i32 %199
  %209 = getelementptr i8, ptr %208, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %209, i32 %205) #9, !srcloc !8
  br label %210

210:                                              ; preds = %195, %193
  %211 = phi i32 [ -1, %193 ], [ 0, %195 ]
  %212 = or i32 %211, %179
  %213 = getelementptr inbounds %struct.gpmc_timings, ptr %1, i32 0, i32 6
  %214 = load i32, ptr %213, align 4
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %228, label %216

216:                                              ; preds = %210
  %217 = load ptr, ptr @gpmc_l3_clk, align 4
  %218 = tail call i32 @clk_get_rate(ptr noundef %217) #9
  %219 = udiv i32 %218, 1000
  %220 = udiv i32 1000000000, %219
  %221 = mul i32 %214, 1000
  %222 = add i32 %221, -1
  %223 = add i32 %222, %220
  %224 = udiv i32 %223, %220
  %225 = icmp ugt i32 %224, 31
  br i1 %225, label %226, label %228

226:                                              ; preds = %216
  %227 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.set_gpmc_timing_reg, i32 noundef %0, ptr noundef nonnull @.str.6, i32 noundef %214, i32 noundef %224, i32 noundef 31) #10
  br label %243

228:                                              ; preds = %216, %210
  %229 = phi i32 [ %224, %216 ], [ 0, %210 ]
  %230 = load ptr, ptr @gpmc_base, align 4
  %231 = getelementptr i8, ptr %230, i32 96
  %232 = mul i32 %0, 48
  %233 = getelementptr i8, ptr %231, i32 %232
  %234 = getelementptr i8, ptr %233, i32 8
  %235 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %234) #9, !srcloc !10
  %236 = and i32 %235, -2031617
  %237 = shl nuw nsw i32 %229, 16
  %238 = or i32 %236, %237
  %239 = load ptr, ptr @gpmc_base, align 4
  %240 = getelementptr i8, ptr %239, i32 96
  %241 = getelementptr i8, ptr %240, i32 %232
  %242 = getelementptr i8, ptr %241, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %242, i32 %238) #9, !srcloc !8
  br label %243

243:                                              ; preds = %228, %226
  %244 = phi i32 [ -1, %226 ], [ 0, %228 ]
  %245 = or i32 %212, %244
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %738

247:                                              ; preds = %243
  %248 = load i32, ptr @gpmc_capability, align 4
  %249 = and i32 %248, 4
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %351, label %251

251:                                              ; preds = %247
  %252 = getelementptr inbounds %struct.gpmc_timings, ptr %1, i32 0, i32 7
  %253 = load i32, ptr %252, align 4
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %267, label %255

255:                                              ; preds = %251
  %256 = load ptr, ptr @gpmc_l3_clk, align 4
  %257 = tail call i32 @clk_get_rate(ptr noundef %256) #9
  %258 = udiv i32 %257, 1000
  %259 = udiv i32 1000000000, %258
  %260 = mul i32 %253, 1000
  %261 = add i32 %260, -1
  %262 = add i32 %261, %259
  %263 = udiv i32 %262, %259
  %264 = icmp ugt i32 %263, 7
  br i1 %264, label %265, label %267

265:                                              ; preds = %255
  %266 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.set_gpmc_timing_reg, i32 noundef %0, ptr noundef nonnull @.str.7, i32 noundef %253, i32 noundef %263, i32 noundef 7) #10
  br label %282

267:                                              ; preds = %255, %251
  %268 = phi i32 [ %263, %255 ], [ 0, %251 ]
  %269 = load ptr, ptr @gpmc_base, align 4
  %270 = getelementptr i8, ptr %269, i32 96
  %271 = mul i32 %0, 48
  %272 = getelementptr i8, ptr %270, i32 %271
  %273 = getelementptr i8, ptr %272, i32 8
  %274 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %273) #9, !srcloc !10
  %275 = and i32 %274, -113
  %276 = shl nuw nsw i32 %268, 4
  %277 = or i32 %275, %276
  %278 = load ptr, ptr @gpmc_base, align 4
  %279 = getelementptr i8, ptr %278, i32 96
  %280 = getelementptr i8, ptr %279, i32 %271
  %281 = getelementptr i8, ptr %280, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %281, i32 %277) #9, !srcloc !8
  br label %282

282:                                              ; preds = %267, %265
  %283 = phi i32 [ -1, %265 ], [ 0, %267 ]
  %284 = getelementptr inbounds %struct.gpmc_timings, ptr %1, i32 0, i32 8
  %285 = load i32, ptr %284, align 4
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %299, label %287

287:                                              ; preds = %282
  %288 = load ptr, ptr @gpmc_l3_clk, align 4
  %289 = tail call i32 @clk_get_rate(ptr noundef %288) #9
  %290 = udiv i32 %289, 1000
  %291 = udiv i32 1000000000, %290
  %292 = mul i32 %285, 1000
  %293 = add i32 %292, -1
  %294 = add i32 %293, %291
  %295 = udiv i32 %294, %291
  %296 = icmp ugt i32 %295, 7
  br i1 %296, label %297, label %299

297:                                              ; preds = %287
  %298 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.set_gpmc_timing_reg, i32 noundef %0, ptr noundef nonnull @.str.8, i32 noundef %285, i32 noundef %295, i32 noundef 7) #10
  br label %314

299:                                              ; preds = %287, %282
  %300 = phi i32 [ %295, %287 ], [ 0, %282 ]
  %301 = load ptr, ptr @gpmc_base, align 4
  %302 = getelementptr i8, ptr %301, i32 96
  %303 = mul i32 %0, 48
  %304 = getelementptr i8, ptr %302, i32 %303
  %305 = getelementptr i8, ptr %304, i32 8
  %306 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %305) #9, !srcloc !10
  %307 = and i32 %306, -117440513
  %308 = shl nuw nsw i32 %300, 24
  %309 = or i32 %307, %308
  %310 = load ptr, ptr @gpmc_base, align 4
  %311 = getelementptr i8, ptr %310, i32 96
  %312 = getelementptr i8, ptr %311, i32 %303
  %313 = getelementptr i8, ptr %312, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %313, i32 %309) #9, !srcloc !8
  br label %314

314:                                              ; preds = %299, %297
  %315 = phi i32 [ -1, %297 ], [ 0, %299 ]
  %316 = or i32 %315, %283
  %317 = getelementptr inbounds %struct.gpmc_timings, ptr %1, i32 0, i32 9
  %318 = load i32, ptr %317, align 4
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %332, label %320

320:                                              ; preds = %314
  %321 = load ptr, ptr @gpmc_l3_clk, align 4
  %322 = tail call i32 @clk_get_rate(ptr noundef %321) #9
  %323 = udiv i32 %322, 1000
  %324 = udiv i32 1000000000, %323
  %325 = mul i32 %318, 1000
  %326 = add i32 %325, -1
  %327 = add i32 %326, %324
  %328 = udiv i32 %327, %324
  %329 = icmp ugt i32 %328, 7
  br i1 %329, label %330, label %332

330:                                              ; preds = %320
  %331 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.set_gpmc_timing_reg, i32 noundef %0, ptr noundef nonnull @.str.9, i32 noundef %318, i32 noundef %328, i32 noundef 7) #10
  br label %347

332:                                              ; preds = %320, %314
  %333 = phi i32 [ %328, %320 ], [ 0, %314 ]
  %334 = load ptr, ptr @gpmc_base, align 4
  %335 = getelementptr i8, ptr %334, i32 96
  %336 = mul i32 %0, 48
  %337 = getelementptr i8, ptr %335, i32 %336
  %338 = getelementptr i8, ptr %337, i32 8
  %339 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %338) #9, !srcloc !10
  %340 = and i32 %339, -1879048193
  %341 = shl nuw nsw i32 %333, 28
  %342 = or i32 %340, %341
  %343 = load ptr, ptr @gpmc_base, align 4
  %344 = getelementptr i8, ptr %343, i32 96
  %345 = getelementptr i8, ptr %344, i32 %336
  %346 = getelementptr i8, ptr %345, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %346, i32 %342) #9, !srcloc !8
  br label %347

347:                                              ; preds = %332, %330
  %348 = phi i32 [ -1, %330 ], [ 0, %332 ]
  %349 = or i32 %316, %348
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %351, label %738

351:                                              ; preds = %347, %247
  %352 = getelementptr inbounds %struct.gpmc_timings, ptr %1, i32 0, i32 12
  %353 = load i32, ptr %352, align 4
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %367, label %355

355:                                              ; preds = %351
  %356 = load ptr, ptr @gpmc_l3_clk, align 4
  %357 = tail call i32 @clk_get_rate(ptr noundef %356) #9
  %358 = udiv i32 %357, 1000
  %359 = udiv i32 1000000000, %358
  %360 = mul i32 %353, 1000
  %361 = add i32 %360, -1
  %362 = add i32 %361, %359
  %363 = udiv i32 %362, %359
  %364 = icmp ugt i32 %363, 15
  br i1 %364, label %365, label %367

365:                                              ; preds = %355
  %366 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.set_gpmc_timing_reg, i32 noundef %0, ptr noundef nonnull @.str.10, i32 noundef %353, i32 noundef %363, i32 noundef 15) #10
  br label %381

367:                                              ; preds = %355, %351
  %368 = phi i32 [ %363, %355 ], [ 0, %351 ]
  %369 = load ptr, ptr @gpmc_base, align 4
  %370 = getelementptr i8, ptr %369, i32 96
  %371 = mul i32 %0, 48
  %372 = getelementptr i8, ptr %370, i32 %371
  %373 = getelementptr i8, ptr %372, i32 12
  %374 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %373) #9, !srcloc !10
  %375 = and i32 %374, -16
  %376 = or i32 %375, %368
  %377 = load ptr, ptr @gpmc_base, align 4
  %378 = getelementptr i8, ptr %377, i32 96
  %379 = getelementptr i8, ptr %378, i32 %371
  %380 = getelementptr i8, ptr %379, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %380, i32 %376) #9, !srcloc !8
  br label %381

381:                                              ; preds = %367, %365
  %382 = phi i32 [ -1, %365 ], [ 0, %367 ]
  %383 = getelementptr inbounds %struct.gpmc_timings, ptr %1, i32 0, i32 13
  %384 = load i32, ptr %383, align 4
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %398, label %386

386:                                              ; preds = %381
  %387 = load ptr, ptr @gpmc_l3_clk, align 4
  %388 = tail call i32 @clk_get_rate(ptr noundef %387) #9
  %389 = udiv i32 %388, 1000
  %390 = udiv i32 1000000000, %389
  %391 = mul i32 %384, 1000
  %392 = add i32 %391, -1
  %393 = add i32 %392, %390
  %394 = udiv i32 %393, %390
  %395 = icmp ugt i32 %394, 31
  br i1 %395, label %396, label %398

396:                                              ; preds = %386
  %397 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.set_gpmc_timing_reg, i32 noundef %0, ptr noundef nonnull @.str.11, i32 noundef %384, i32 noundef %394, i32 noundef 31) #10
  br label %413

398:                                              ; preds = %386, %381
  %399 = phi i32 [ %394, %386 ], [ 0, %381 ]
  %400 = load ptr, ptr @gpmc_base, align 4
  %401 = getelementptr i8, ptr %400, i32 96
  %402 = mul i32 %0, 48
  %403 = getelementptr i8, ptr %401, i32 %402
  %404 = getelementptr i8, ptr %403, i32 12
  %405 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %404) #9, !srcloc !10
  %406 = and i32 %405, -7937
  %407 = shl nuw nsw i32 %399, 8
  %408 = or i32 %406, %407
  %409 = load ptr, ptr @gpmc_base, align 4
  %410 = getelementptr i8, ptr %409, i32 96
  %411 = getelementptr i8, ptr %410, i32 %402
  %412 = getelementptr i8, ptr %411, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %412, i32 %408) #9, !srcloc !8
  br label %413

413:                                              ; preds = %398, %396
  %414 = phi i32 [ -1, %396 ], [ 0, %398 ]
  %415 = or i32 %414, %382
  %416 = load i32, ptr @gpmc_capability, align 4
  %417 = and i32 %416, 4
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %486, label %419

419:                                              ; preds = %413
  %420 = getelementptr inbounds %struct.gpmc_timings, ptr %1, i32 0, i32 14
  %421 = load i32, ptr %420, align 4
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %435, label %423

423:                                              ; preds = %419
  %424 = load ptr, ptr @gpmc_l3_clk, align 4
  %425 = tail call i32 @clk_get_rate(ptr noundef %424) #9
  %426 = udiv i32 %425, 1000
  %427 = udiv i32 1000000000, %426
  %428 = mul i32 %421, 1000
  %429 = add i32 %428, -1
  %430 = add i32 %429, %427
  %431 = udiv i32 %430, %427
  %432 = icmp ugt i32 %431, 7
  br i1 %432, label %433, label %435

433:                                              ; preds = %423
  %434 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.set_gpmc_timing_reg, i32 noundef %0, ptr noundef nonnull @.str.12, i32 noundef %421, i32 noundef %431, i32 noundef 7) #10
  br label %450

435:                                              ; preds = %423, %419
  %436 = phi i32 [ %431, %423 ], [ 0, %419 ]
  %437 = load ptr, ptr @gpmc_base, align 4
  %438 = getelementptr i8, ptr %437, i32 96
  %439 = mul i32 %0, 48
  %440 = getelementptr i8, ptr %438, i32 %439
  %441 = getelementptr i8, ptr %440, i32 12
  %442 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %441) #9, !srcloc !10
  %443 = and i32 %442, -113
  %444 = shl nuw nsw i32 %436, 4
  %445 = or i32 %443, %444
  %446 = load ptr, ptr @gpmc_base, align 4
  %447 = getelementptr i8, ptr %446, i32 96
  %448 = getelementptr i8, ptr %447, i32 %439
  %449 = getelementptr i8, ptr %448, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %449, i32 %445) #9, !srcloc !8
  br label %450

450:                                              ; preds = %435, %433
  %451 = phi i32 [ -1, %433 ], [ 0, %435 ]
  %452 = or i32 %451, %415
  %453 = getelementptr inbounds %struct.gpmc_timings, ptr %1, i32 0, i32 15
  %454 = load i32, ptr %453, align 4
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %468, label %456

456:                                              ; preds = %450
  %457 = load ptr, ptr @gpmc_l3_clk, align 4
  %458 = tail call i32 @clk_get_rate(ptr noundef %457) #9
  %459 = udiv i32 %458, 1000
  %460 = udiv i32 1000000000, %459
  %461 = mul i32 %454, 1000
  %462 = add i32 %461, -1
  %463 = add i32 %462, %460
  %464 = udiv i32 %463, %460
  %465 = icmp ugt i32 %464, 7
  br i1 %465, label %466, label %468

466:                                              ; preds = %456
  %467 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.set_gpmc_timing_reg, i32 noundef %0, ptr noundef nonnull @.str.13, i32 noundef %454, i32 noundef %464, i32 noundef 7) #10
  br label %483

468:                                              ; preds = %456, %450
  %469 = phi i32 [ %464, %456 ], [ 0, %450 ]
  %470 = load ptr, ptr @gpmc_base, align 4
  %471 = getelementptr i8, ptr %470, i32 96
  %472 = mul i32 %0, 48
  %473 = getelementptr i8, ptr %471, i32 %472
  %474 = getelementptr i8, ptr %473, i32 12
  %475 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %474) #9, !srcloc !10
  %476 = and i32 %475, -57345
  %477 = shl nuw nsw i32 %469, 13
  %478 = or i32 %476, %477
  %479 = load ptr, ptr @gpmc_base, align 4
  %480 = getelementptr i8, ptr %479, i32 96
  %481 = getelementptr i8, ptr %480, i32 %472
  %482 = getelementptr i8, ptr %481, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %482, i32 %478) #9, !srcloc !8
  br label %483

483:                                              ; preds = %468, %466
  %484 = phi i32 [ -1, %466 ], [ 0, %468 ]
  %485 = or i32 %452, %484
  br label %486

486:                                              ; preds = %483, %413
  %487 = phi i32 [ %485, %483 ], [ %415, %413 ]
  %488 = getelementptr inbounds %struct.gpmc_timings, ptr %1, i32 0, i32 10
  %489 = load i32, ptr %488, align 4
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %503, label %491

491:                                              ; preds = %486
  %492 = load ptr, ptr @gpmc_l3_clk, align 4
  %493 = tail call i32 @clk_get_rate(ptr noundef %492) #9
  %494 = udiv i32 %493, 1000
  %495 = udiv i32 1000000000, %494
  %496 = mul i32 %489, 1000
  %497 = add i32 %496, -1
  %498 = add i32 %497, %495
  %499 = udiv i32 %498, %495
  %500 = icmp ugt i32 %499, 15
  br i1 %500, label %501, label %503

501:                                              ; preds = %491
  %502 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.set_gpmc_timing_reg, i32 noundef %0, ptr noundef nonnull @.str.14, i32 noundef %489, i32 noundef %499, i32 noundef 15) #10
  br label %518

503:                                              ; preds = %491, %486
  %504 = phi i32 [ %499, %491 ], [ 0, %486 ]
  %505 = load ptr, ptr @gpmc_base, align 4
  %506 = getelementptr i8, ptr %505, i32 96
  %507 = mul i32 %0, 48
  %508 = getelementptr i8, ptr %506, i32 %507
  %509 = getelementptr i8, ptr %508, i32 12
  %510 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %509) #9, !srcloc !10
  %511 = and i32 %510, -983041
  %512 = shl nuw nsw i32 %504, 16
  %513 = or i32 %511, %512
  %514 = load ptr, ptr @gpmc_base, align 4
  %515 = getelementptr i8, ptr %514, i32 96
  %516 = getelementptr i8, ptr %515, i32 %507
  %517 = getelementptr i8, ptr %516, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %517, i32 %513) #9, !srcloc !8
  br label %518

518:                                              ; preds = %503, %501
  %519 = phi i32 [ -1, %501 ], [ 0, %503 ]
  %520 = or i32 %519, %487
  %521 = getelementptr inbounds %struct.gpmc_timings, ptr %1, i32 0, i32 11
  %522 = load i32, ptr %521, align 4
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %536, label %524

524:                                              ; preds = %518
  %525 = load ptr, ptr @gpmc_l3_clk, align 4
  %526 = tail call i32 @clk_get_rate(ptr noundef %525) #9
  %527 = udiv i32 %526, 1000
  %528 = udiv i32 1000000000, %527
  %529 = mul i32 %522, 1000
  %530 = add i32 %529, -1
  %531 = add i32 %530, %528
  %532 = udiv i32 %531, %528
  %533 = icmp ugt i32 %532, 31
  br i1 %533, label %534, label %536

534:                                              ; preds = %524
  %535 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.set_gpmc_timing_reg, i32 noundef %0, ptr noundef nonnull @.str.15, i32 noundef %522, i32 noundef %532, i32 noundef 31) #10
  br label %551

536:                                              ; preds = %524, %518
  %537 = phi i32 [ %532, %524 ], [ 0, %518 ]
  %538 = load ptr, ptr @gpmc_base, align 4
  %539 = getelementptr i8, ptr %538, i32 96
  %540 = mul i32 %0, 48
  %541 = getelementptr i8, ptr %539, i32 %540
  %542 = getelementptr i8, ptr %541, i32 12
  %543 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %542) #9, !srcloc !10
  %544 = and i32 %543, -520093697
  %545 = shl nuw nsw i32 %537, 24
  %546 = or i32 %544, %545
  %547 = load ptr, ptr @gpmc_base, align 4
  %548 = getelementptr i8, ptr %547, i32 96
  %549 = getelementptr i8, ptr %548, i32 %540
  %550 = getelementptr i8, ptr %549, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %550, i32 %546) #9, !srcloc !8
  br label %551

551:                                              ; preds = %536, %534
  %552 = phi i32 [ -1, %534 ], [ 0, %536 ]
  %553 = or i32 %520, %552
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %555, label %738

555:                                              ; preds = %551
  %556 = getelementptr inbounds %struct.gpmc_timings, ptr %1, i32 0, i32 18
  %557 = load i32, ptr %556, align 4
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %571, label %559

559:                                              ; preds = %555
  %560 = load ptr, ptr @gpmc_l3_clk, align 4
  %561 = tail call i32 @clk_get_rate(ptr noundef %560) #9
  %562 = udiv i32 %561, 1000
  %563 = udiv i32 1000000000, %562
  %564 = mul i32 %557, 1000
  %565 = add i32 %564, -1
  %566 = add i32 %565, %563
  %567 = udiv i32 %566, %563
  %568 = icmp ugt i32 %567, 31
  br i1 %568, label %569, label %571

569:                                              ; preds = %559
  %570 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.set_gpmc_timing_reg, i32 noundef %0, ptr noundef nonnull @.str.16, i32 noundef %557, i32 noundef %567, i32 noundef 31) #10
  br label %585

571:                                              ; preds = %559, %555
  %572 = phi i32 [ %567, %559 ], [ 0, %555 ]
  %573 = load ptr, ptr @gpmc_base, align 4
  %574 = getelementptr i8, ptr %573, i32 96
  %575 = mul i32 %0, 48
  %576 = getelementptr i8, ptr %574, i32 %575
  %577 = getelementptr i8, ptr %576, i32 16
  %578 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %577) #9, !srcloc !10
  %579 = and i32 %578, -32
  %580 = or i32 %579, %572
  %581 = load ptr, ptr @gpmc_base, align 4
  %582 = getelementptr i8, ptr %581, i32 96
  %583 = getelementptr i8, ptr %582, i32 %575
  %584 = getelementptr i8, ptr %583, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %584, i32 %580) #9, !srcloc !8
  br label %585

585:                                              ; preds = %571, %569
  %586 = phi i32 [ -1, %569 ], [ 0, %571 ]
  %587 = getelementptr inbounds %struct.gpmc_timings, ptr %1, i32 0, i32 19
  %588 = load i32, ptr %587, align 4
  %589 = icmp eq i32 %588, 0
  br i1 %589, label %602, label %590

590:                                              ; preds = %585
  %591 = load ptr, ptr @gpmc_l3_clk, align 4
  %592 = tail call i32 @clk_get_rate(ptr noundef %591) #9
  %593 = udiv i32 %592, 1000
  %594 = udiv i32 1000000000, %593
  %595 = mul i32 %588, 1000
  %596 = add i32 %595, -1
  %597 = add i32 %596, %594
  %598 = udiv i32 %597, %594
  %599 = icmp ugt i32 %598, 31
  br i1 %599, label %600, label %602

600:                                              ; preds = %590
  %601 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.set_gpmc_timing_reg, i32 noundef %0, ptr noundef nonnull @.str.17, i32 noundef %588, i32 noundef %598, i32 noundef 31) #10
  br label %617

602:                                              ; preds = %590, %585
  %603 = phi i32 [ %598, %590 ], [ 0, %585 ]
  %604 = load ptr, ptr @gpmc_base, align 4
  %605 = getelementptr i8, ptr %604, i32 96
  %606 = mul i32 %0, 48
  %607 = getelementptr i8, ptr %605, i32 %606
  %608 = getelementptr i8, ptr %607, i32 16
  %609 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %608) #9, !srcloc !10
  %610 = and i32 %609, -7937
  %611 = shl nuw nsw i32 %603, 8
  %612 = or i32 %610, %611
  %613 = load ptr, ptr @gpmc_base, align 4
  %614 = getelementptr i8, ptr %613, i32 96
  %615 = getelementptr i8, ptr %614, i32 %606
  %616 = getelementptr i8, ptr %615, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %616, i32 %612) #9, !srcloc !8
  br label %617

617:                                              ; preds = %602, %600
  %618 = phi i32 [ -1, %600 ], [ 0, %602 ]
  %619 = or i32 %618, %586
  %620 = getelementptr inbounds %struct.gpmc_timings, ptr %1, i32 0, i32 17
  %621 = load i32, ptr %620, align 4
  %622 = icmp eq i32 %621, 0
  br i1 %622, label %635, label %623

623:                                              ; preds = %617
  %624 = load ptr, ptr @gpmc_l3_clk, align 4
  %625 = tail call i32 @clk_get_rate(ptr noundef %624) #9
  %626 = udiv i32 %625, 1000
  %627 = udiv i32 1000000000, %626
  %628 = mul i32 %621, 1000
  %629 = add i32 %628, -1
  %630 = add i32 %629, %627
  %631 = udiv i32 %630, %627
  %632 = icmp ugt i32 %631, 31
  br i1 %632, label %633, label %635

633:                                              ; preds = %623
  %634 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.set_gpmc_timing_reg, i32 noundef %0, ptr noundef nonnull @.str.18, i32 noundef %621, i32 noundef %631, i32 noundef 31) #10
  br label %650

635:                                              ; preds = %623, %617
  %636 = phi i32 [ %631, %623 ], [ 0, %617 ]
  %637 = load ptr, ptr @gpmc_base, align 4
  %638 = getelementptr i8, ptr %637, i32 96
  %639 = mul i32 %0, 48
  %640 = getelementptr i8, ptr %638, i32 %639
  %641 = getelementptr i8, ptr %640, i32 16
  %642 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %641) #9, !srcloc !10
  %643 = and i32 %642, -2031617
  %644 = shl nuw nsw i32 %636, 16
  %645 = or i32 %643, %644
  %646 = load ptr, ptr @gpmc_base, align 4
  %647 = getelementptr i8, ptr %646, i32 96
  %648 = getelementptr i8, ptr %647, i32 %639
  %649 = getelementptr i8, ptr %648, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %649, i32 %645) #9, !srcloc !8
  br label %650

650:                                              ; preds = %635, %633
  %651 = phi i32 [ -1, %633 ], [ 0, %635 ]
  %652 = or i32 %619, %651
  %653 = getelementptr inbounds %struct.gpmc_timings, ptr %1, i32 0, i32 16
  %654 = load i32, ptr %653, align 4
  %655 = icmp eq i32 %654, 0
  br i1 %655, label %668, label %656

656:                                              ; preds = %650
  %657 = load ptr, ptr @gpmc_l3_clk, align 4
  %658 = tail call i32 @clk_get_rate(ptr noundef %657) #9
  %659 = udiv i32 %658, 1000
  %660 = udiv i32 1000000000, %659
  %661 = mul i32 %654, 1000
  %662 = add i32 %661, -1
  %663 = add i32 %662, %660
  %664 = udiv i32 %663, %660
  %665 = icmp ugt i32 %664, 15
  br i1 %665, label %666, label %668

666:                                              ; preds = %656
  %667 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.set_gpmc_timing_reg, i32 noundef %0, ptr noundef nonnull @.str.19, i32 noundef %654, i32 noundef %664, i32 noundef 15) #10
  br label %683

668:                                              ; preds = %656, %650
  %669 = phi i32 [ %664, %656 ], [ 0, %650 ]
  %670 = load ptr, ptr @gpmc_base, align 4
  %671 = getelementptr i8, ptr %670, i32 96
  %672 = mul i32 %0, 48
  %673 = getelementptr i8, ptr %671, i32 %672
  %674 = getelementptr i8, ptr %673, i32 16
  %675 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %674) #9, !srcloc !10
  %676 = and i32 %675, -251658241
  %677 = shl nuw nsw i32 %669, 24
  %678 = or i32 %676, %677
  %679 = load ptr, ptr @gpmc_base, align 4
  %680 = getelementptr i8, ptr %679, i32 96
  %681 = getelementptr i8, ptr %680, i32 %672
  %682 = getelementptr i8, ptr %681, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %682, i32 %678) #9, !srcloc !8
  br label %683

683:                                              ; preds = %668, %666
  %684 = phi i32 [ -1, %666 ], [ 0, %668 ]
  %685 = or i32 %652, %684
  %686 = icmp eq i32 %685, 0
  br i1 %686, label %687, label %738

687:                                              ; preds = %683
  %688 = getelementptr inbounds %struct.gpmc_timings, ptr %1, i32 0, i32 20
  %689 = load i32, ptr %688, align 4
  %690 = tail call fastcc i32 @set_gpmc_timing_reg(i32 noundef %0, i32 noundef 20, i32 noundef 0, i32 noundef 3, i32 noundef 0, i32 noundef %689, i32 noundef 0, ptr noundef nonnull @.str.20)
  %691 = getelementptr inbounds %struct.gpmc_timings, ptr %1, i32 0, i32 21
  %692 = load i32, ptr %691, align 4
  %693 = tail call fastcc i32 @set_gpmc_timing_reg(i32 noundef %0, i32 noundef 20, i32 noundef 8, i32 noundef 11, i32 noundef 0, i32 noundef %692, i32 noundef 0, ptr noundef nonnull @.str.21)
  %694 = or i32 %693, %690
  %695 = icmp eq i32 %694, 0
  br i1 %695, label %696, label %738

696:                                              ; preds = %687
  %697 = load i32, ptr @gpmc_capability, align 4
  %698 = and i32 %697, 2
  %699 = icmp eq i32 %698, 0
  br i1 %699, label %707, label %700

700:                                              ; preds = %696
  %701 = getelementptr inbounds %struct.gpmc_timings, ptr %1, i32 0, i32 25
  %702 = load i32, ptr %701, align 4
  %703 = tail call fastcc i32 @set_gpmc_timing_reg(i32 noundef %0, i32 noundef 20, i32 noundef 16, i32 noundef 19, i32 noundef 0, i32 noundef %702, i32 noundef 0, ptr noundef nonnull @.str.22)
  %704 = icmp eq i32 %703, 0
  br i1 %704, label %705, label %738

705:                                              ; preds = %700
  %706 = load i32, ptr @gpmc_capability, align 4
  br label %707

707:                                              ; preds = %705, %696
  %708 = phi i32 [ %706, %705 ], [ %697, %696 ]
  %709 = and i32 %708, 1
  %710 = icmp eq i32 %709, 0
  br i1 %710, label %716, label %711

711:                                              ; preds = %707
  %712 = getelementptr inbounds %struct.gpmc_timings, ptr %1, i32 0, i32 24
  %713 = load i32, ptr %712, align 4
  %714 = tail call fastcc i32 @set_gpmc_timing_reg(i32 noundef %0, i32 noundef 20, i32 noundef 24, i32 noundef 28, i32 noundef 0, i32 noundef %713, i32 noundef 0, ptr noundef nonnull @.str.23)
  %715 = icmp eq i32 %714, 0
  br i1 %715, label %716, label %738

716:                                              ; preds = %711, %707
  %717 = load ptr, ptr @gpmc_base, align 4
  %718 = getelementptr i8, ptr %717, i32 96
  %719 = mul i32 %0, 48
  %720 = getelementptr i8, ptr %718, i32 %719
  %721 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %720) #9, !srcloc !10
  %722 = and i32 %721, -4
  %723 = add nsw i32 %49, -1
  %724 = or i32 %722, %723
  %725 = load ptr, ptr @gpmc_base, align 4
  %726 = getelementptr i8, ptr %725, i32 96
  %727 = getelementptr i8, ptr %726, i32 %719
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %727, i32 %724) #9, !srcloc !8
  %728 = getelementptr inbounds %struct.gpmc_timings, ptr %1, i32 0, i32 22
  %729 = load i32, ptr %728, align 4
  %730 = tail call fastcc i32 @set_gpmc_timing_reg(i32 noundef %0, i32 noundef 0, i32 noundef 18, i32 noundef 19, i32 noundef 2, i32 noundef %729, i32 noundef 1, ptr noundef nonnull @.str.24)
  %731 = getelementptr inbounds %struct.gpmc_timings, ptr %1, i32 0, i32 23
  %732 = load i32, ptr %731, align 4
  %733 = tail call fastcc i32 @set_gpmc_timing_reg(i32 noundef %0, i32 noundef 0, i32 noundef 25, i32 noundef 26, i32 noundef 2, i32 noundef %732, i32 noundef 0, ptr noundef nonnull @.str.25)
  %734 = or i32 %733, %730
  %735 = icmp eq i32 %734, 0
  br i1 %735, label %736, label %738

736:                                              ; preds = %716
  %737 = getelementptr inbounds %struct.gpmc_timings, ptr %1, i32 0, i32 26
  tail call fastcc void @gpmc_cs_bool_timings(i32 noundef %0, ptr noundef %737)
  br label %738

738:                                              ; preds = %736, %716, %711, %700, %687, %683, %551, %347, %243, %144, %45, %3
  %739 = phi i32 [ 0, %736 ], [ -6, %45 ], [ -22, %3 ], [ -6, %144 ], [ -6, %243 ], [ -6, %347 ], [ -6, %551 ], [ -6, %683 ], [ -6, %687 ], [ -6, %700 ], [ -6, %711 ], [ -6, %716 ]
  ret i32 %739
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @set_gpmc_timing_reg(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) unnamed_addr #0 {
  %9 = icmp eq i32 %5, 0
  br i1 %9, label %31, label %10

10:                                               ; preds = %8
  %11 = load ptr, ptr @gpmc_l3_clk, align 4
  %12 = tail call i32 @clk_get_rate(ptr noundef %11) #9
  %13 = udiv i32 %12, 1000
  %14 = udiv i32 1000000000, %13
  %15 = icmp eq i32 %6, 1
  br i1 %15, label %16, label %25

16:                                               ; preds = %10
  %17 = load ptr, ptr @gpmc_base, align 4
  %18 = getelementptr i8, ptr %17, i32 96
  %19 = mul i32 %0, 48
  %20 = getelementptr i8, ptr %18, i32 %19
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #9, !srcloc !10
  %22 = and i32 %21, 3
  %23 = add nuw nsw i32 %22, 1
  %24 = mul nuw i32 %23, %14
  br label %25

25:                                               ; preds = %16, %10
  %26 = phi i32 [ %24, %16 ], [ %14, %10 ]
  %27 = mul i32 %5, 1000
  %28 = add i32 %27, -1
  %29 = add i32 %28, %26
  %30 = udiv i32 %29, %26
  br label %31

31:                                               ; preds = %25, %8
  %32 = phi i32 [ %30, %25 ], [ 0, %8 ]
  %33 = sub i32 1, %2
  %34 = add i32 %33, %3
  %35 = shl nsw i32 -1, %34
  %36 = xor i32 %35, -1
  %37 = icmp eq i32 %4, 0
  %38 = select i1 %37, i32 %36, i32 %4
  %39 = icmp sgt i32 %32, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.set_gpmc_timing_reg, i32 noundef %0, ptr noundef %7, i32 noundef %5, i32 noundef %32, i32 noundef %38) #10
  br label %58

42:                                               ; preds = %31
  %43 = load ptr, ptr @gpmc_base, align 4
  %44 = getelementptr i8, ptr %43, i32 96
  %45 = mul i32 %0, 48
  %46 = getelementptr i8, ptr %44, i32 %45
  %47 = getelementptr i8, ptr %46, i32 %1
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #9, !srcloc !10
  %49 = shl i32 %36, %2
  %50 = xor i32 %49, -1
  %51 = and i32 %48, %50
  %52 = shl i32 %32, %2
  %53 = or i32 %51, %52
  %54 = load ptr, ptr @gpmc_base, align 4
  %55 = getelementptr i8, ptr %54, i32 96
  %56 = getelementptr i8, ptr %55, i32 %45
  %57 = getelementptr i8, ptr %56, i32 %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %53) #9, !srcloc !8
  br label %58

58:                                               ; preds = %42, %40
  %59 = phi i32 [ -1, %40 ], [ 0, %42 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gpmc_cs_bool_timings(i32 noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gpmc_bool_timings, ptr %1, i32 0, i32 6
  %4 = load i8, ptr %3, align 1, !range !9
  %5 = icmp eq i8 %4, 0
  %6 = load ptr, ptr @gpmc_base, align 4
  %7 = getelementptr i8, ptr %6, i32 96
  %8 = mul i32 %0, 48
  %9 = getelementptr i8, ptr %7, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #9, !srcloc !10
  %11 = and i32 %10, -17
  %12 = select i1 %5, i32 0, i32 16
  %13 = or i32 %11, %12
  %14 = load ptr, ptr @gpmc_base, align 4
  %15 = getelementptr i8, ptr %14, i32 96
  %16 = getelementptr i8, ptr %15, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %13) #9, !srcloc !8
  %17 = getelementptr inbounds %struct.gpmc_bool_timings, ptr %1, i32 0, i32 5
  %18 = load i8, ptr %17, align 1, !range !9
  %19 = icmp eq i8 %18, 0
  %20 = load ptr, ptr @gpmc_base, align 4
  %21 = getelementptr i8, ptr %20, i32 96
  %22 = getelementptr i8, ptr %21, i32 %8
  %23 = getelementptr i8, ptr %22, i32 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #9, !srcloc !10
  %25 = and i32 %24, -129
  %26 = select i1 %19, i32 0, i32 128
  %27 = or i32 %25, %26
  %28 = load ptr, ptr @gpmc_base, align 4
  %29 = getelementptr i8, ptr %28, i32 96
  %30 = getelementptr i8, ptr %29, i32 %8
  %31 = getelementptr i8, ptr %30, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %27) #9, !srcloc !8
  %32 = getelementptr inbounds %struct.gpmc_bool_timings, ptr %1, i32 0, i32 4
  %33 = load i8, ptr %32, align 1, !range !9
  %34 = icmp eq i8 %33, 0
  %35 = load ptr, ptr @gpmc_base, align 4
  %36 = getelementptr i8, ptr %35, i32 96
  %37 = getelementptr i8, ptr %36, i32 %8
  %38 = getelementptr i8, ptr %37, i32 8
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #9, !srcloc !10
  %40 = and i32 %39, -129
  %41 = select i1 %34, i32 0, i32 128
  %42 = or i32 %40, %41
  %43 = load ptr, ptr @gpmc_base, align 4
  %44 = getelementptr i8, ptr %43, i32 96
  %45 = getelementptr i8, ptr %44, i32 %8
  %46 = getelementptr i8, ptr %45, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %42) #9, !srcloc !8
  %47 = getelementptr inbounds %struct.gpmc_bool_timings, ptr %1, i32 0, i32 3
  %48 = load i8, ptr %47, align 1, !range !9
  %49 = icmp eq i8 %48, 0
  %50 = load ptr, ptr @gpmc_base, align 4
  %51 = getelementptr i8, ptr %50, i32 96
  %52 = getelementptr i8, ptr %51, i32 %8
  %53 = getelementptr i8, ptr %52, i32 12
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #9, !srcloc !10
  %55 = and i32 %54, -129
  %56 = select i1 %49, i32 0, i32 128
  %57 = or i32 %55, %56
  %58 = load ptr, ptr @gpmc_base, align 4
  %59 = getelementptr i8, ptr %58, i32 96
  %60 = getelementptr i8, ptr %59, i32 %8
  %61 = getelementptr i8, ptr %60, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %57) #9, !srcloc !8
  %62 = getelementptr inbounds %struct.gpmc_bool_timings, ptr %1, i32 0, i32 2
  %63 = load i8, ptr %62, align 1, !range !9
  %64 = icmp eq i8 %63, 0
  %65 = load ptr, ptr @gpmc_base, align 4
  %66 = getelementptr i8, ptr %65, i32 96
  %67 = getelementptr i8, ptr %66, i32 %8
  %68 = getelementptr i8, ptr %67, i32 12
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #9, !srcloc !10
  %70 = and i32 %69, -8388609
  %71 = select i1 %64, i32 0, i32 8388608
  %72 = or i32 %70, %71
  %73 = load ptr, ptr @gpmc_base, align 4
  %74 = getelementptr i8, ptr %73, i32 96
  %75 = getelementptr i8, ptr %74, i32 %8
  %76 = getelementptr i8, ptr %75, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %72) #9, !srcloc !8
  %77 = getelementptr inbounds %struct.gpmc_bool_timings, ptr %1, i32 0, i32 1
  %78 = load i8, ptr %77, align 1, !range !9
  %79 = icmp eq i8 %78, 0
  %80 = load ptr, ptr @gpmc_base, align 4
  %81 = getelementptr i8, ptr %80, i32 96
  %82 = getelementptr i8, ptr %81, i32 %8
  %83 = getelementptr i8, ptr %82, i32 20
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #9, !srcloc !10
  %85 = and i32 %84, -129
  %86 = select i1 %79, i32 0, i32 128
  %87 = or i32 %85, %86
  %88 = load ptr, ptr @gpmc_base, align 4
  %89 = getelementptr i8, ptr %88, i32 96
  %90 = getelementptr i8, ptr %89, i32 %8
  %91 = getelementptr i8, ptr %90, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %87) #9, !srcloc !8
  %92 = load i8, ptr %1, align 1, !range !9
  %93 = icmp eq i8 %92, 0
  %94 = load ptr, ptr @gpmc_base, align 4
  %95 = getelementptr i8, ptr %94, i32 96
  %96 = getelementptr i8, ptr %95, i32 %8
  %97 = getelementptr i8, ptr %96, i32 20
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #9, !srcloc !10
  %99 = and i32 %98, -65
  %100 = select i1 %93, i32 0, i32 64
  %101 = or i32 %99, %100
  %102 = load ptr, ptr @gpmc_base, align 4
  %103 = getelementptr i8, ptr %102, i32 96
  %104 = getelementptr i8, ptr %103, i32 %8
  %105 = getelementptr i8, ptr %104, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %101) #9, !srcloc !8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gpmc_cs_request(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr [8 x %struct.gpmc_cs_data], ptr @gpmc_cs, i32 0, i32 %0, i32 2
  %5 = load i32, ptr @gpmc_cs_num, align 4
  %6 = icmp ugt i32 %5, %0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.gpmc_cs_request) #10
  br label %101

9:                                                ; preds = %3
  %10 = add i32 %1, -1
  %11 = lshr i32 %10, 23
  br label %12

12:                                               ; preds = %12, %9
  %13 = phi i32 [ %11, %9 ], [ %15, %12 ]
  %14 = phi i32 [ 23, %9 ], [ %16, %12 ]
  %15 = lshr i32 %13, 1
  %16 = add nuw nsw i32 %14, 1
  %17 = icmp ult i32 %13, 2
  br i1 %17, label %18, label %12

18:                                               ; preds = %12
  %19 = shl i32 2, %14
  %20 = icmp ugt i32 %19, 268435456
  br i1 %20, label %101, label %21

21:                                               ; preds = %18
  tail call void @_raw_spin_lock(ptr noundef nonnull @gpmc_mem_lock) #9
  %22 = getelementptr [8 x %struct.gpmc_cs_data], ptr @gpmc_cs, i32 0, i32 %0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %97

26:                                               ; preds = %21
  %27 = load ptr, ptr @gpmc_base, align 4
  %28 = getelementptr i8, ptr %27, i32 96
  %29 = mul i32 %0, 48
  %30 = getelementptr i8, ptr %28, i32 %29
  %31 = getelementptr i8, ptr %30, i32 24
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #9, !srcloc !10
  %33 = and i32 %32, 64
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %26
  %36 = load i32, ptr %4, align 4
  %37 = sub nsw i32 0, %19
  %38 = and i32 %36, %37
  %39 = tail call i32 @adjust_resource(ptr noundef %4, i32 noundef %38, i32 noundef %19) #9
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35, %26
  %42 = tail call i32 @allocate_resource(ptr noundef nonnull @gpmc_mem_root, ptr noundef %4, i32 noundef %19, i32 noundef 0, i32 noundef -1, i32 noundef %19, ptr noundef null, ptr noundef null) #9
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %97, label %44

44:                                               ; preds = %41, %35
  %45 = load ptr, ptr @gpmc_base, align 4
  %46 = getelementptr i8, ptr %45, i32 96
  %47 = getelementptr i8, ptr %46, i32 %29
  %48 = getelementptr i8, ptr %47, i32 24
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #9, !srcloc !10
  %50 = and i32 %49, -65
  %51 = load ptr, ptr @gpmc_base, align 4
  %52 = getelementptr i8, ptr %51, i32 96
  %53 = getelementptr i8, ptr %52, i32 %29
  %54 = getelementptr i8, ptr %53, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %50) #9, !srcloc !8
  %55 = load i32, ptr %4, align 4
  %56 = getelementptr [8 x %struct.gpmc_cs_data], ptr @gpmc_cs, i32 0, i32 %0, i32 2, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = sub i32 1, %55
  %59 = add i32 %58, %57
  %60 = add i32 %59, -1
  %61 = and i32 %60, %55
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %44
  %64 = tail call i32 @release_resource(ptr noundef %4) #9
  br label %97

65:                                               ; preds = %44
  %66 = lshr i32 %55, 24
  %67 = sub i32 0, %59
  %68 = lshr i32 %67, 16
  %69 = load ptr, ptr @gpmc_base, align 4
  %70 = getelementptr i8, ptr %69, i32 96
  %71 = getelementptr i8, ptr %70, i32 %29
  %72 = getelementptr i8, ptr %71, i32 24
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #9, !srcloc !10
  %74 = and i32 %73, -3968
  %75 = and i32 %66, 63
  %76 = and i32 %68, 3840
  %77 = or i32 %75, %76
  %78 = or i32 %77, %74
  %79 = or i32 %78, 64
  %80 = load ptr, ptr @gpmc_base, align 4
  %81 = getelementptr i8, ptr %80, i32 96
  %82 = getelementptr i8, ptr %81, i32 %29
  %83 = getelementptr i8, ptr %82, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %79) #9, !srcloc !8
  %84 = load ptr, ptr @gpmc_base, align 4
  %85 = getelementptr i8, ptr %84, i32 96
  %86 = getelementptr i8, ptr %85, i32 %29
  %87 = getelementptr i8, ptr %86, i32 24
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #9, !srcloc !10
  %89 = or i32 %88, 64
  %90 = load ptr, ptr @gpmc_base, align 4
  %91 = getelementptr i8, ptr %90, i32 96
  %92 = getelementptr i8, ptr %91, i32 %29
  %93 = getelementptr i8, ptr %92, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 %89) #9, !srcloc !8
  %94 = load i32, ptr %4, align 4
  store i32 %94, ptr %2, align 4
  %95 = load i32, ptr %22, align 4
  %96 = or i32 %95, 1
  store i32 %96, ptr %22, align 4
  br label %97

97:                                               ; preds = %65, %63, %41, %21
  %98 = phi i32 [ %42, %41 ], [ -22, %63 ], [ 0, %65 ], [ -16, %21 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  %99 = load i16, ptr @gpmc_mem_lock, align 4
  %100 = add i16 %99, 1
  store i16 %100, ptr @gpmc_mem_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %101

101:                                              ; preds = %97, %18, %7
  %102 = phi i32 [ -19, %7 ], [ %98, %97 ], [ -12, %18 ]
  ret i32 %102
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adjust_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @allocate_resource(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @release_resource(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gpmc_cs_free(i32 noundef %0) #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @gpmc_mem_lock) #9
  %2 = load i32, ptr @gpmc_cs_num, align 4
  %3 = icmp ule i32 %2, %0
  %4 = icmp slt i32 %0, 0
  %5 = or i1 %4, %3
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = getelementptr [8 x %struct.gpmc_cs_data], ptr @gpmc_cs, i32 0, i32 %0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %6, %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 1022, i32 noundef 9, ptr noundef nonnull @.str.29, i32 noundef %0) #9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  %12 = load i16, ptr @gpmc_mem_lock, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr @gpmc_mem_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %37

14:                                               ; preds = %6
  %15 = load ptr, ptr @gpmc_base, align 4
  %16 = getelementptr i8, ptr %15, i32 96
  %17 = mul i32 %0, 48
  %18 = getelementptr i8, ptr %16, i32 %17
  %19 = getelementptr i8, ptr %18, i32 24
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #9, !srcloc !10
  %21 = and i32 %20, -65
  %22 = load ptr, ptr @gpmc_base, align 4
  %23 = getelementptr i8, ptr %22, i32 96
  %24 = getelementptr i8, ptr %23, i32 %17
  %25 = getelementptr i8, ptr %24, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %21) #9, !srcloc !8
  %26 = getelementptr [8 x %struct.gpmc_cs_data], ptr @gpmc_cs, i32 0, i32 %0, i32 2, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %14
  %30 = getelementptr [8 x %struct.gpmc_cs_data], ptr @gpmc_cs, i32 0, i32 %0, i32 2
  %31 = tail call i32 @release_resource(ptr noundef %30) #9
  br label %32

32:                                               ; preds = %29, %14
  %33 = load i32, ptr %7, align 4
  %34 = or i32 %33, 1
  store i32 %34, ptr %7, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  %35 = load i16, ptr @gpmc_mem_lock, align 4
  %36 = add i16 %35, 1
  store i16 %36, ptr @gpmc_mem_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %37

37:                                               ; preds = %32, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gpmc_configure(i32 noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %0, 5
  br i1 %3, label %4, label %14

4:                                                ; preds = %2
  %5 = load ptr, ptr @gpmc_base, align 4
  %6 = getelementptr i8, ptr %5, i32 80
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !10
  %8 = icmp eq i32 %1, 0
  %9 = and i32 %7, -17
  %10 = select i1 %8, i32 16, i32 0
  %11 = or i32 %9, %10
  %12 = load ptr, ptr @gpmc_base, align 4
  %13 = getelementptr i8, ptr %12, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #9, !srcloc !8
  br label %16

14:                                               ; preds = %2
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.gpmc_configure) #10
  br label %16

16:                                               ; preds = %14, %4
  %17 = phi i32 [ 0, %4 ], [ -22, %14 ]
  ret i32 %17
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @gpmc_omap_get_nand_ops(ptr nocapture noundef writeonly %0, i32 noundef %1) #4 {
  %3 = load i32, ptr @gpmc_cs_num, align 4
  %4 = icmp ugt i32 %3, %1
  br i1 %4, label %5, label %144

5:                                                ; preds = %2
  %6 = load ptr, ptr @gpmc_base, align 4
  %7 = getelementptr i8, ptr %6, i32 124
  %8 = mul i32 %1, 48
  %9 = getelementptr i8, ptr %7, i32 %8
  store ptr %9, ptr %0, align 4
  %10 = getelementptr i8, ptr %6, i32 128
  %11 = getelementptr i8, ptr %10, i32 %8
  %12 = getelementptr inbounds %struct.gpmc_nand_regs, ptr %0, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  %13 = getelementptr i8, ptr %6, i32 132
  %14 = getelementptr i8, ptr %13, i32 %8
  %15 = getelementptr inbounds %struct.gpmc_nand_regs, ptr %0, i32 0, i32 2
  store ptr %14, ptr %15, align 4
  %16 = getelementptr i8, ptr %6, i32 480
  %17 = getelementptr inbounds %struct.gpmc_nand_regs, ptr %0, i32 0, i32 3
  store ptr %16, ptr %17, align 4
  %18 = getelementptr i8, ptr %6, i32 484
  %19 = getelementptr inbounds %struct.gpmc_nand_regs, ptr %0, i32 0, i32 4
  store ptr %18, ptr %19, align 4
  %20 = getelementptr i8, ptr %6, i32 492
  %21 = getelementptr inbounds %struct.gpmc_nand_regs, ptr %0, i32 0, i32 5
  store ptr %20, ptr %21, align 4
  %22 = getelementptr i8, ptr %6, i32 496
  %23 = getelementptr inbounds %struct.gpmc_nand_regs, ptr %0, i32 0, i32 6
  store ptr %22, ptr %23, align 4
  %24 = getelementptr i8, ptr %6, i32 500
  %25 = getelementptr inbounds %struct.gpmc_nand_regs, ptr %0, i32 0, i32 7
  store ptr %24, ptr %25, align 4
  %26 = getelementptr i8, ptr %6, i32 504
  %27 = getelementptr inbounds %struct.gpmc_nand_regs, ptr %0, i32 0, i32 8
  store ptr %26, ptr %27, align 4
  %28 = getelementptr i8, ptr %6, i32 508
  %29 = getelementptr inbounds %struct.gpmc_nand_regs, ptr %0, i32 0, i32 9
  store ptr %28, ptr %29, align 4
  %30 = getelementptr i8, ptr %6, i32 512
  %31 = getelementptr inbounds %struct.gpmc_nand_regs, ptr %0, i32 0, i32 10
  store ptr %30, ptr %31, align 4
  %32 = getelementptr i8, ptr %6, i32 576
  %33 = getelementptr i8, ptr %6, i32 580
  %34 = getelementptr i8, ptr %6, i32 584
  %35 = getelementptr i8, ptr %6, i32 588
  %36 = getelementptr i8, ptr %6, i32 768
  %37 = getelementptr i8, ptr %6, i32 772
  %38 = getelementptr i8, ptr %6, i32 776
  %39 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 11, i32 0
  store ptr %32, ptr %39, align 4
  %40 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 12, i32 0
  store ptr %33, ptr %40, align 4
  %41 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 13, i32 0
  store ptr %34, ptr %41, align 4
  %42 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 14, i32 0
  store ptr %35, ptr %42, align 4
  %43 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 15, i32 0
  store ptr %36, ptr %43, align 4
  %44 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 16, i32 0
  store ptr %37, ptr %44, align 4
  %45 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 17, i32 0
  store ptr %38, ptr %45, align 4
  %46 = getelementptr i8, ptr %6, i32 592
  %47 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 11, i32 1
  store ptr %46, ptr %47, align 4
  %48 = getelementptr i8, ptr %6, i32 596
  %49 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 12, i32 1
  store ptr %48, ptr %49, align 4
  %50 = getelementptr i8, ptr %6, i32 600
  %51 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 13, i32 1
  store ptr %50, ptr %51, align 4
  %52 = getelementptr i8, ptr %6, i32 604
  %53 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 14, i32 1
  store ptr %52, ptr %53, align 4
  %54 = getelementptr i8, ptr %6, i32 784
  %55 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 15, i32 1
  store ptr %54, ptr %55, align 4
  %56 = getelementptr i8, ptr %6, i32 788
  %57 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 16, i32 1
  store ptr %56, ptr %57, align 4
  %58 = getelementptr i8, ptr %6, i32 792
  %59 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 17, i32 1
  store ptr %58, ptr %59, align 4
  %60 = getelementptr i8, ptr %6, i32 608
  %61 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 11, i32 2
  store ptr %60, ptr %61, align 4
  %62 = getelementptr i8, ptr %6, i32 612
  %63 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 12, i32 2
  store ptr %62, ptr %63, align 4
  %64 = getelementptr i8, ptr %6, i32 616
  %65 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 13, i32 2
  store ptr %64, ptr %65, align 4
  %66 = getelementptr i8, ptr %6, i32 620
  %67 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 14, i32 2
  store ptr %66, ptr %67, align 4
  %68 = getelementptr i8, ptr %6, i32 800
  %69 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 15, i32 2
  store ptr %68, ptr %69, align 4
  %70 = getelementptr i8, ptr %6, i32 804
  %71 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 16, i32 2
  store ptr %70, ptr %71, align 4
  %72 = getelementptr i8, ptr %6, i32 808
  %73 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 17, i32 2
  store ptr %72, ptr %73, align 4
  %74 = getelementptr i8, ptr %6, i32 624
  %75 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 11, i32 3
  store ptr %74, ptr %75, align 4
  %76 = getelementptr i8, ptr %6, i32 628
  %77 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 12, i32 3
  store ptr %76, ptr %77, align 4
  %78 = getelementptr i8, ptr %6, i32 632
  %79 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 13, i32 3
  store ptr %78, ptr %79, align 4
  %80 = getelementptr i8, ptr %6, i32 636
  %81 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 14, i32 3
  store ptr %80, ptr %81, align 4
  %82 = getelementptr i8, ptr %6, i32 816
  %83 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 15, i32 3
  store ptr %82, ptr %83, align 4
  %84 = getelementptr i8, ptr %6, i32 820
  %85 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 16, i32 3
  store ptr %84, ptr %85, align 4
  %86 = getelementptr i8, ptr %6, i32 824
  %87 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 17, i32 3
  store ptr %86, ptr %87, align 4
  %88 = getelementptr i8, ptr %6, i32 640
  %89 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 11, i32 4
  store ptr %88, ptr %89, align 4
  %90 = getelementptr i8, ptr %6, i32 644
  %91 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 12, i32 4
  store ptr %90, ptr %91, align 4
  %92 = getelementptr i8, ptr %6, i32 648
  %93 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 13, i32 4
  store ptr %92, ptr %93, align 4
  %94 = getelementptr i8, ptr %6, i32 652
  %95 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 14, i32 4
  store ptr %94, ptr %95, align 4
  %96 = getelementptr i8, ptr %6, i32 832
  %97 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 15, i32 4
  store ptr %96, ptr %97, align 4
  %98 = getelementptr i8, ptr %6, i32 836
  %99 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 16, i32 4
  store ptr %98, ptr %99, align 4
  %100 = getelementptr i8, ptr %6, i32 840
  %101 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 17, i32 4
  store ptr %100, ptr %101, align 4
  %102 = getelementptr i8, ptr %6, i32 656
  %103 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 11, i32 5
  store ptr %102, ptr %103, align 4
  %104 = getelementptr i8, ptr %6, i32 660
  %105 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 12, i32 5
  store ptr %104, ptr %105, align 4
  %106 = getelementptr i8, ptr %6, i32 664
  %107 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 13, i32 5
  store ptr %106, ptr %107, align 4
  %108 = getelementptr i8, ptr %6, i32 668
  %109 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 14, i32 5
  store ptr %108, ptr %109, align 4
  %110 = getelementptr i8, ptr %6, i32 848
  %111 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 15, i32 5
  store ptr %110, ptr %111, align 4
  %112 = getelementptr i8, ptr %6, i32 852
  %113 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 16, i32 5
  store ptr %112, ptr %113, align 4
  %114 = getelementptr i8, ptr %6, i32 856
  %115 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 17, i32 5
  store ptr %114, ptr %115, align 4
  %116 = getelementptr i8, ptr %6, i32 672
  %117 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 11, i32 6
  store ptr %116, ptr %117, align 4
  %118 = getelementptr i8, ptr %6, i32 676
  %119 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 12, i32 6
  store ptr %118, ptr %119, align 4
  %120 = getelementptr i8, ptr %6, i32 680
  %121 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 13, i32 6
  store ptr %120, ptr %121, align 4
  %122 = getelementptr i8, ptr %6, i32 684
  %123 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 14, i32 6
  store ptr %122, ptr %123, align 4
  %124 = getelementptr i8, ptr %6, i32 864
  %125 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 15, i32 6
  store ptr %124, ptr %125, align 4
  %126 = getelementptr i8, ptr %6, i32 868
  %127 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 16, i32 6
  store ptr %126, ptr %127, align 4
  %128 = getelementptr i8, ptr %6, i32 872
  %129 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 17, i32 6
  store ptr %128, ptr %129, align 4
  %130 = getelementptr i8, ptr %6, i32 688
  %131 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 11, i32 7
  store ptr %130, ptr %131, align 4
  %132 = getelementptr i8, ptr %6, i32 692
  %133 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 12, i32 7
  store ptr %132, ptr %133, align 4
  %134 = getelementptr i8, ptr %6, i32 696
  %135 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 13, i32 7
  store ptr %134, ptr %135, align 4
  %136 = getelementptr i8, ptr %6, i32 700
  %137 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 14, i32 7
  store ptr %136, ptr %137, align 4
  %138 = getelementptr i8, ptr %6, i32 880
  %139 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 15, i32 7
  store ptr %138, ptr %139, align 4
  %140 = getelementptr i8, ptr %6, i32 884
  %141 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 16, i32 7
  store ptr %140, ptr %141, align 4
  %142 = getelementptr i8, ptr %6, i32 888
  %143 = getelementptr %struct.gpmc_nand_regs, ptr %0, i32 0, i32 17, i32 7
  store ptr %142, ptr %143, align 4
  br label %144

144:                                              ; preds = %5, %2
  %145 = phi ptr [ null, %2 ], [ @nand_ops, %5 ]
  ret ptr %145
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gpmc_omap_onenand_set_timings(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #0 {
  %6 = alloca %struct.gpmc_device_timings, align 4
  %7 = alloca %struct.gpmc_timings, align 4
  %8 = alloca %struct.gpmc_settings, align 4
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %7) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(112) %7, i8 0, i32 112, i1 false), !annotation !15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 24, i1 false), !annotation !15
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %10 = load ptr, ptr %9, align 8
  call void @gpmc_read_settings_dt(ptr noundef %10, ptr noundef nonnull %8)
  %11 = getelementptr inbounds %struct.gpmc_settings, ptr %8, i32 0, i32 4
  %12 = load i8, ptr %11, align 4, !range !9
  store i8 %12, ptr %4, align 4
  %13 = getelementptr inbounds %struct.gpmc_settings, ptr %8, i32 0, i32 5
  %14 = load i8, ptr %13, align 1, !range !9
  %15 = getelementptr inbounds %struct.gpmc_onenand_info, ptr %4, i32 0, i32 1
  store i8 %14, ptr %15, align 1
  %16 = getelementptr inbounds %struct.gpmc_settings, ptr %8, i32 0, i32 8
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.gpmc_onenand_info, ptr %4, i32 0, i32 2
  store i32 %17, ptr %18, align 4
  %19 = icmp eq i8 %12, 0
  %20 = icmp eq i8 %14, 0
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %59, label %22

22:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %6) #9
  switch i32 %2, label %25 [
    i32 104, label %26
    i32 83, label %23
    i32 66, label %24
  ]

23:                                               ; preds = %22
  br label %26

24:                                               ; preds = %22
  br label %26

25:                                               ; preds = %22
  br label %26

26:                                               ; preds = %25, %24, %23, %22
  %27 = phi i32 [ 7000, %25 ], [ 2000, %24 ], [ 2000, %23 ], [ 2000, %22 ]
  %28 = phi i32 [ 9000, %25 ], [ 6000, %24 ], [ 6000, %23 ], [ 3000, %22 ]
  %29 = phi i32 [ 7000, %25 ], [ 6000, %24 ], [ 6000, %23 ], [ 6000, %22 ]
  %30 = phi i32 [ 15000, %25 ], [ 11000, %24 ], [ 9000, %23 ], [ 6000, %22 ]
  %31 = phi i32 [ 7000, %25 ], [ 5000, %24 ], [ 4000, %23 ], [ 4000, %22 ]
  %32 = phi i32 [ 7000, %25 ], [ 6000, %24 ], [ 5000, %23 ], [ 3000, %22 ]
  %33 = phi i32 [ 18500, %25 ], [ 15000, %24 ], [ 12000, %23 ], [ 9600, %22 ]
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(120) %6, i8 0, i32 112, i1 false) #9
  br i1 %20, label %34, label %39

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.gpmc_device_timings, ptr %6, i32 0, i32 3
  store i32 15000, ptr %35, align 4
  %36 = getelementptr inbounds %struct.gpmc_device_timings, ptr %6, i32 0, i32 15
  store i32 40000, ptr %36, align 4
  %37 = getelementptr inbounds %struct.gpmc_device_timings, ptr %6, i32 0, i32 16
  store i32 30000, ptr %37, align 4
  %38 = getelementptr inbounds %struct.gpmc_device_timings, ptr %6, i32 0, i32 4
  store i32 %29, ptr %38, align 4
  br label %39

39:                                               ; preds = %34, %26
  %40 = getelementptr inbounds %struct.gpmc_device_timings, ptr %6, i32 0, i32 32
  %41 = getelementptr inbounds %struct.gpmc_device_timings, ptr %6, i32 0, i32 18
  store i32 16843009, ptr %40, align 4
  store i32 %33, ptr %41, align 4
  %42 = getelementptr inbounds %struct.gpmc_device_timings, ptr %6, i32 0, i32 19
  store i32 %33, ptr %42, align 4
  %43 = getelementptr inbounds %struct.gpmc_device_timings, ptr %6, i32 0, i32 20
  store i32 %32, ptr %43, align 4
  %44 = getelementptr inbounds %struct.gpmc_device_timings, ptr %6, i32 0, i32 21
  store i32 %31, ptr %44, align 4
  %45 = getelementptr inbounds %struct.gpmc_device_timings, ptr %6, i32 0, i32 22
  store i32 %27, ptr %45, align 4
  %46 = getelementptr inbounds %struct.gpmc_device_timings, ptr %6, i32 0, i32 23
  store i32 %28, ptr %46, align 4
  %47 = add i32 %3, 1
  %48 = getelementptr inbounds %struct.gpmc_device_timings, ptr %6, i32 0, i32 31
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.gpmc_device_timings, ptr %6, i32 0, i32 11
  store i32 20000, ptr %49, align 4
  %50 = getelementptr inbounds %struct.gpmc_device_timings, ptr %6, i32 0, i32 12
  store i32 20000, ptr %50, align 4
  %51 = getelementptr inbounds %struct.gpmc_device_timings, ptr %6, i32 0, i32 27
  store i8 1, ptr %51, align 4
  %52 = add nuw nsw i32 %33, %30
  %53 = getelementptr inbounds %struct.gpmc_device_timings, ptr %6, i32 0, i32 24
  store i32 %52, ptr %53, align 4
  %54 = call i32 @gpmc_calc_timings(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %6) #9
  %55 = call i32 @gpmc_cs_program_settings(i32 noundef %1, ptr noundef nonnull %8)
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %39
  %58 = call i32 @gpmc_cs_set_timings(i32 noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %8)
  br label %59

59:                                               ; preds = %57, %39, %5
  %60 = phi i32 [ %58, %57 ], [ 0, %5 ], [ %55, %39 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %7) #9
  ret i32 %60
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gpmc_read_settings_dt(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(24) %1, i8 0, i32 24, i1 false)
  %3 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.37, ptr noundef null) #9
  %4 = icmp ne ptr %3, null
  %5 = getelementptr inbounds %struct.gpmc_settings, ptr %1, i32 0, i32 4
  %6 = zext i1 %4 to i8
  store i8 %6, ptr %5, align 4
  %7 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.38, ptr noundef null) #9
  %8 = icmp ne ptr %7, null
  %9 = getelementptr inbounds %struct.gpmc_settings, ptr %1, i32 0, i32 5
  %10 = zext i1 %8 to i8
  store i8 %10, ptr %9, align 1
  %11 = getelementptr inbounds %struct.gpmc_settings, ptr %1, i32 0, i32 9
  %12 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.39, ptr noundef %11, i32 noundef 1, i32 noundef 0) #9
  %13 = getelementptr inbounds %struct.gpmc_settings, ptr %1, i32 0, i32 10
  %14 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.40, ptr noundef %13, i32 noundef 1, i32 noundef 0) #9
  %15 = getelementptr inbounds %struct.gpmc_settings, ptr %1, i32 0, i32 8
  %16 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.41, ptr noundef %15, i32 noundef 1, i32 noundef 0) #9
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %18, label %35

18:                                               ; preds = %2
  %19 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.42, ptr noundef null) #9
  %20 = icmp ne ptr %19, null
  %21 = zext i1 %20 to i8
  store i8 %21, ptr %1, align 4
  %22 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.43, ptr noundef null) #9
  %23 = icmp ne ptr %22, null
  %24 = getelementptr inbounds %struct.gpmc_settings, ptr %1, i32 0, i32 1
  %25 = zext i1 %23 to i8
  store i8 %25, ptr %24, align 1
  %26 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.44, ptr noundef null) #9
  %27 = icmp ne ptr %26, null
  %28 = getelementptr inbounds %struct.gpmc_settings, ptr %1, i32 0, i32 2
  %29 = zext i1 %27 to i8
  store i8 %29, ptr %28, align 2
  %30 = load i8, ptr %24, align 1, !range !9
  %31 = icmp ne i8 %30, 0
  %32 = select i1 %31, i1 true, i1 %27
  br i1 %32, label %35, label %33

33:                                               ; preds = %18
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.gpmc_read_settings_dt) #10
  br label %35

35:                                               ; preds = %33, %18, %2
  %36 = getelementptr inbounds %struct.gpmc_settings, ptr %1, i32 0, i32 11
  %37 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.46, ptr noundef %36, i32 noundef 1, i32 noundef 0) #9
  %38 = icmp sgt i32 %37, -1
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.47, ptr noundef null) #9
  %41 = icmp ne ptr %40, null
  %42 = getelementptr inbounds %struct.gpmc_settings, ptr %1, i32 0, i32 6
  %43 = zext i1 %41 to i8
  store i8 %43, ptr %42, align 2
  %44 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.48, ptr noundef null) #9
  %45 = icmp ne ptr %44, null
  %46 = getelementptr inbounds %struct.gpmc_settings, ptr %1, i32 0, i32 7
  %47 = zext i1 %45 to i8
  store i8 %47, ptr %46, align 1
  br label %48

48:                                               ; preds = %39, %35
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gpmc_cs_program_settings(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gpmc_settings, ptr %1, i32 0, i32 9
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, -3
  %6 = icmp ult i32 %5, -2
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.gpmc_cs_program_settings, i32 noundef %4) #10
  br label %110

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.gpmc_settings, ptr %1, i32 0, i32 3
  %11 = load i8, ptr %10, align 1, !range !9
  %12 = icmp eq i8 %11, 0
  %13 = getelementptr inbounds %struct.gpmc_settings, ptr %1, i32 0, i32 10
  %14 = load i32, ptr %13, align 4
  br i1 %12, label %19, label %15

15:                                               ; preds = %9
  %16 = icmp eq i32 %14, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %15
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.gpmc_cs_program_settings) #10
  br label %110

19:                                               ; preds = %9
  %20 = icmp ugt i32 %14, 2
  br i1 %20, label %27, label %21

21:                                               ; preds = %19
  %22 = icmp eq i32 %14, 1
  br i1 %22, label %23, label %29

23:                                               ; preds = %21
  %24 = load i32, ptr @gpmc_capability, align 4
  %25 = and i32 %24, 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %19
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.gpmc_cs_program_settings) #10
  br label %110

29:                                               ; preds = %23, %21, %15
  %30 = phi i32 [ 1, %23 ], [ %14, %21 ], [ 0, %15 ]
  %31 = getelementptr inbounds %struct.gpmc_settings, ptr %1, i32 0, i32 1
  %32 = load i8, ptr %31, align 1, !range !9
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.gpmc_settings, ptr %1, i32 0, i32 2
  %36 = load i8, ptr %35, align 2, !range !9
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %34, %29
  %39 = getelementptr inbounds %struct.gpmc_settings, ptr %1, i32 0, i32 8
  %40 = load i32, ptr %39, align 4
  switch i32 %40, label %41 [
    i32 4, label %43
    i32 8, label %43
    i32 16, label %43
  ]

41:                                               ; preds = %38
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.gpmc_cs_program_settings, i32 noundef %40) #10
  br label %110

43:                                               ; preds = %38, %38, %38, %34
  %44 = getelementptr inbounds %struct.gpmc_settings, ptr %1, i32 0, i32 11
  %45 = load i32, ptr %44, align 4
  %46 = load i32, ptr @gpmc_nr_waitpins, align 4
  %47 = icmp ugt i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.gpmc_cs_program_settings, i32 noundef %45) #10
  br label %110

50:                                               ; preds = %43
  %51 = shl nuw nsw i32 %4, 12
  %52 = add nuw nsw i32 %51, 12288
  %53 = and i32 %52, 12288
  %54 = getelementptr inbounds %struct.gpmc_settings, ptr %1, i32 0, i32 4
  %55 = load i8, ptr %54, align 4, !range !9
  %56 = icmp eq i8 %55, 0
  %57 = or i32 %53, 536870912
  %58 = select i1 %56, i32 %53, i32 %57
  %59 = getelementptr inbounds %struct.gpmc_settings, ptr %1, i32 0, i32 5
  %60 = load i8, ptr %59, align 1, !range !9
  %61 = icmp eq i8 %60, 0
  %62 = or i32 %58, 134217728
  %63 = select i1 %61, i32 %58, i32 %62
  %64 = getelementptr inbounds %struct.gpmc_settings, ptr %1, i32 0, i32 6
  %65 = load i8, ptr %64, align 2, !range !9
  %66 = icmp eq i8 %65, 0
  %67 = or i32 %63, 4194304
  %68 = select i1 %66, i32 %63, i32 %67
  %69 = getelementptr inbounds %struct.gpmc_settings, ptr %1, i32 0, i32 7
  %70 = load i8, ptr %69, align 1, !range !9
  %71 = icmp eq i8 %70, 0
  %72 = or i32 %68, 2097152
  %73 = select i1 %71, i32 %68, i32 %72
  %74 = select i1 %66, i1 %71, i1 false
  %75 = shl i32 %45, 16
  %76 = and i32 %75, 196608
  %77 = or i32 %73, %76
  %78 = select i1 %74, i32 %68, i32 %77
  %79 = or i32 %78, 2048
  %80 = select i1 %12, i32 %78, i32 %79
  %81 = icmp eq i32 %30, 0
  %82 = shl nuw nsw i32 %30, 8
  %83 = and i32 %82, 768
  %84 = select i1 %81, i32 0, i32 %83
  %85 = or i32 %80, %84
  %86 = or i32 %85, 1073741824
  %87 = select i1 %33, i32 %85, i32 %86
  %88 = getelementptr inbounds %struct.gpmc_settings, ptr %1, i32 0, i32 2
  %89 = load i8, ptr %88, align 2, !range !9
  %90 = icmp eq i8 %89, 0
  %91 = select i1 %33, i1 %90, i1 false
  br i1 %91, label %104, label %92

92:                                               ; preds = %50
  %93 = or i32 %87, 268435456
  %94 = select i1 %90, i32 %87, i32 %93
  %95 = getelementptr inbounds %struct.gpmc_settings, ptr %1, i32 0, i32 8
  %96 = load i32, ptr %95, align 4
  %97 = shl i32 %96, 20
  %98 = and i32 %97, 25165824
  %99 = or i32 %98, %94
  %100 = load i8, ptr %1, align 4, !range !9
  %101 = icmp eq i8 %100, 0
  %102 = select i1 %101, i32 0, i32 -2147483648
  %103 = or i32 %99, %102
  br label %104

104:                                              ; preds = %92, %50
  %105 = phi i32 [ %103, %92 ], [ %87, %50 ]
  %106 = load ptr, ptr @gpmc_base, align 4
  %107 = getelementptr i8, ptr %106, i32 96
  %108 = mul i32 %0, 48
  %109 = getelementptr i8, ptr %107, i32 %108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 %105) #9, !srcloc !8
  br label %110

110:                                              ; preds = %104, %48, %41, %27, %17, %7
  %111 = phi i32 [ -22, %7 ], [ -22, %17 ], [ -22, %27 ], [ -22, %41 ], [ -22, %48 ], [ 0, %104 ]
  ret i32 %111
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gpmc_get_client_irq(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gpmc_irq_domain, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.gpmc_get_client_irq) #10
  br label %10

6:                                                ; preds = %1
  %7 = icmp ugt i32 %0, 1
  br i1 %7, label %10, label %8

8:                                                ; preds = %6
  %9 = tail call i32 @irq_create_mapping_affinity(ptr noundef nonnull %2, i32 noundef %0, ptr noundef null) #9
  br label %10

10:                                               ; preds = %8, %6, %4
  %11 = phi i32 [ %9, %8 ], [ 0, %4 ], [ 0, %6 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gpmc_calc_timings(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.gpmc_settings, ptr %1, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = icmp ne i32 %7, 0
  %9 = getelementptr inbounds %struct.gpmc_settings, ptr %1, i32 0, i32 4
  %10 = load i8, ptr %9, align 4, !range !9
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.gpmc_settings, ptr %1, i32 0, i32 5
  %14 = load i8, ptr %13, align 1, !range !9
  %15 = icmp ne i8 %14, 0
  br label %16

16:                                               ; preds = %12, %5, %3
  %17 = phi i1 [ false, %3 ], [ %8, %12 ], [ %8, %5 ]
  %18 = phi i1 [ false, %3 ], [ %15, %12 ], [ true, %5 ]
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(112) %0, i8 0, i32 112, i1 false)
  %19 = load i32, ptr %2, align 4
  %20 = load ptr, ptr @gpmc_l3_clk, align 4
  %21 = tail call i32 @clk_get_rate(ptr noundef %20) #9
  %22 = udiv i32 %21, 1000
  %23 = udiv i32 1000000000, %22
  %24 = add i32 %19, -1
  %25 = add i32 %24, %23
  %26 = udiv i32 %25, %23
  %27 = load ptr, ptr @gpmc_l3_clk, align 4
  %28 = tail call i32 @clk_get_rate(ptr noundef %27) #9
  %29 = udiv i32 %28, 1000
  %30 = udiv i32 1000000000, %29
  %31 = mul i32 %30, %26
  %32 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 1
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.gpmc_device_timings, ptr %2, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.gpmc_device_timings, ptr %2, i32 0, i32 26
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  %38 = add i32 %36, %31
  %39 = tail call i32 @llvm.umax.i32(i32 %34, i32 %38) #9
  %40 = select i1 %37, i32 %34, i32 %39
  %41 = load ptr, ptr @gpmc_l3_clk, align 4
  %42 = tail call i32 @clk_get_rate(ptr noundef %41) #9
  %43 = udiv i32 %42, 1000
  %44 = udiv i32 1000000000, %43
  %45 = add i32 %40, -1
  %46 = add i32 %45, %44
  %47 = udiv i32 %46, %44
  %48 = load ptr, ptr @gpmc_l3_clk, align 4
  %49 = tail call i32 @clk_get_rate(ptr noundef %48) #9
  %50 = udiv i32 %49, 1000
  %51 = udiv i32 1000000000, %50
  %52 = mul i32 %51, %47
  %53 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 4
  store i32 %52, ptr %53, align 4
  br i1 %18, label %54, label %152

54:                                               ; preds = %16
  %55 = getelementptr inbounds %struct.gpmc_device_timings, ptr %2, i32 0, i32 18
  %56 = load i32, ptr %55, align 4
  %57 = load ptr, ptr @gpmc_l3_clk, align 4
  %58 = tail call i32 @clk_get_rate(ptr noundef %57) #9
  %59 = udiv i32 %58, 1000
  %60 = udiv i32 1000000000, %59
  %61 = add i32 %56, -1
  %62 = add i32 %61, %60
  %63 = udiv i32 %62, %60
  %64 = icmp ugt i32 %63, 4
  %65 = tail call i32 @llvm.smax.i32(i32 %63, i32 1) #9
  %66 = select i1 %64, i32 -1, i32 %65
  %67 = load ptr, ptr @gpmc_l3_clk, align 4
  %68 = tail call i32 @clk_get_rate(ptr noundef %67) #9
  %69 = udiv i32 %68, 1000
  %70 = udiv i32 1000000000, %69
  %71 = mul i32 %70, %66
  store i32 %71, ptr %0, align 4
  %72 = getelementptr inbounds %struct.gpmc_device_timings, ptr %2, i32 0, i32 19
  %73 = load i32, ptr %72, align 4
  %74 = load ptr, ptr @gpmc_l3_clk, align 4
  %75 = tail call i32 @clk_get_rate(ptr noundef %74) #9
  %76 = udiv i32 %75, 1000
  %77 = udiv i32 1000000000, %76
  %78 = add i32 %71, -1
  %79 = add i32 %78, %77
  %80 = udiv i32 %79, %77
  %81 = icmp ugt i32 %80, 4
  %82 = tail call i32 @llvm.smax.i32(i32 %80, i32 1) #9
  %83 = select i1 %81, i32 -1, i32 %82
  %84 = load ptr, ptr @gpmc_l3_clk, align 4
  %85 = tail call i32 @clk_get_rate(ptr noundef %84) #9
  %86 = udiv i32 %85, 1000
  %87 = udiv i32 1000000000, %86
  %88 = add i32 %73, -1
  %89 = add i32 %88, %87
  %90 = udiv i32 %89, %87
  %91 = add nsw i32 %83, -1
  %92 = add nsw i32 %91, %90
  %93 = urem i32 %92, %83
  %94 = sub i32 %92, %93
  %95 = load ptr, ptr @gpmc_l3_clk, align 4
  %96 = tail call i32 @clk_get_rate(ptr noundef %95) #9
  %97 = udiv i32 %96, 1000
  %98 = udiv i32 1000000000, %97
  %99 = mul i32 %98, %94
  %100 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 16
  store i32 %99, ptr %100, align 4
  %101 = getelementptr inbounds %struct.gpmc_device_timings, ptr %2, i32 0, i32 20
  %102 = load i32, ptr %101, align 4
  %103 = getelementptr inbounds %struct.gpmc_device_timings, ptr %2, i32 0, i32 21
  %104 = load i32, ptr %103, align 4
  %105 = tail call i32 @llvm.umax.i32(i32 %102, i32 %104) #9
  %106 = load ptr, ptr @gpmc_l3_clk, align 4
  %107 = tail call i32 @clk_get_rate(ptr noundef %106) #9
  %108 = udiv i32 %107, 1000
  %109 = udiv i32 1000000000, %108
  %110 = add i32 %105, -1
  %111 = add i32 %110, %109
  %112 = udiv i32 %111, %109
  %113 = load ptr, ptr @gpmc_l3_clk, align 4
  %114 = tail call i32 @clk_get_rate(ptr noundef %113) #9
  %115 = udiv i32 %114, 1000
  %116 = udiv i32 1000000000, %115
  %117 = mul i32 %116, %112
  %118 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 23
  store i32 %117, ptr %118, align 4
  %119 = load i32, ptr %0, align 4
  %120 = load ptr, ptr @gpmc_l3_clk, align 4
  %121 = tail call i32 @clk_get_rate(ptr noundef %120) #9
  %122 = udiv i32 %121, 1000
  %123 = udiv i32 1000000000, %122
  %124 = add i32 %119, -1
  %125 = add i32 %124, %123
  %126 = udiv i32 %125, %123
  %127 = icmp ult i32 %126, 2
  br i1 %127, label %128, label %152

128:                                              ; preds = %54
  %129 = getelementptr inbounds %struct.gpmc_device_timings, ptr %2, i32 0, i32 32
  %130 = load i8, ptr %129, align 4, !range !9
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 26, i32 5
  store i8 1, ptr %133, align 1
  br label %134

134:                                              ; preds = %132, %128
  %135 = getelementptr inbounds %struct.gpmc_device_timings, ptr %2, i32 0, i32 33
  %136 = load i8, ptr %135, align 1, !range !9
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 26, i32 4
  store i8 1, ptr %139, align 4
  br label %140

140:                                              ; preds = %138, %134
  %141 = getelementptr inbounds %struct.gpmc_device_timings, ptr %2, i32 0, i32 34
  %142 = load i8, ptr %141, align 2, !range !9
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 26, i32 3
  store i8 1, ptr %145, align 1
  br label %146

146:                                              ; preds = %144, %140
  %147 = getelementptr inbounds %struct.gpmc_device_timings, ptr %2, i32 0, i32 35
  %148 = load i8, ptr %147, align 1, !range !9
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 26, i32 2
  store i8 1, ptr %151, align 2
  br label %152

152:                                              ; preds = %150, %146, %54, %16
  br i1 %4, label %504, label %153

153:                                              ; preds = %152
  %154 = getelementptr inbounds %struct.gpmc_settings, ptr %1, i32 0, i32 4
  %155 = load i8, ptr %154, align 4, !range !9
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %323, label %157

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.gpmc_device_timings, ptr %2, i32 0, i32 2
  %159 = load i32, ptr %158, align 4
  br i1 %17, label %160, label %174

160:                                              ; preds = %157
  %161 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 23
  %162 = load i32, ptr %161, align 4
  %163 = getelementptr inbounds %struct.gpmc_device_timings, ptr %2, i32 0, i32 22
  %164 = load i32, ptr %163, align 4
  %165 = add i32 %164, %162
  %166 = tail call i32 @llvm.umax.i32(i32 %159, i32 %165) #9
  %167 = load i32, ptr %53, align 4
  %168 = load ptr, ptr @gpmc_l3_clk, align 4
  %169 = tail call i32 @clk_get_rate(ptr noundef %168) #9
  %170 = udiv i32 %169, 1000
  %171 = udiv i32 1000000000, %170
  %172 = add i32 %171, %167
  %173 = tail call i32 @llvm.umax.i32(i32 %172, i32 %166) #9
  br label %174

174:                                              ; preds = %160, %157
  %175 = phi i32 [ %173, %160 ], [ %159, %157 ]
  %176 = load ptr, ptr @gpmc_l3_clk, align 4
  %177 = tail call i32 @clk_get_rate(ptr noundef %176) #9
  %178 = udiv i32 %177, 1000
  %179 = udiv i32 1000000000, %178
  %180 = add i32 %175, -1
  %181 = add i32 %180, %179
  %182 = udiv i32 %181, %179
  %183 = load ptr, ptr @gpmc_l3_clk, align 4
  %184 = tail call i32 @clk_get_rate(ptr noundef %183) #9
  %185 = udiv i32 %184, 1000
  %186 = udiv i32 1000000000, %185
  %187 = mul i32 %186, %182
  %188 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 5
  store i32 %187, ptr %188, align 4
  %189 = getelementptr inbounds %struct.gpmc_device_timings, ptr %2, i32 0, i32 5
  %190 = load i32, ptr %189, align 4
  br i1 %17, label %191, label %208

191:                                              ; preds = %174
  %192 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 23
  %193 = load i32, ptr %192, align 4
  %194 = getelementptr inbounds %struct.gpmc_device_timings, ptr %2, i32 0, i32 23
  %195 = load i32, ptr %194, align 4
  %196 = add i32 %195, %193
  %197 = tail call i32 @llvm.umax.i32(i32 %190, i32 %196) #9
  %198 = getelementptr inbounds %struct.gpmc_device_timings, ptr %2, i32 0, i32 27
  %199 = load i8, ptr %198, align 4
  %200 = zext i8 %199 to i32
  %201 = load ptr, ptr @gpmc_l3_clk, align 4
  %202 = tail call i32 @clk_get_rate(ptr noundef %201) #9
  %203 = udiv i32 %202, 1000
  %204 = udiv i32 1000000000, %203
  %205 = mul i32 %204, %200
  %206 = add i32 %205, %187
  %207 = tail call i32 @llvm.umax.i32(i32 %197, i32 %206) #9
  br label %208

208:                                              ; preds = %191, %174
  %209 = phi i32 [ %207, %191 ], [ %190, %174 ]
  %210 = load ptr, ptr @gpmc_l3_clk, align 4
  %211 = tail call i32 @clk_get_rate(ptr noundef %210) #9
  %212 = udiv i32 %211, 1000
  %213 = udiv i32 1000000000, %212
  %214 = add i32 %209, -1
  %215 = add i32 %214, %213
  %216 = udiv i32 %215, %213
  %217 = load ptr, ptr @gpmc_l3_clk, align 4
  %218 = tail call i32 @clk_get_rate(ptr noundef %217) #9
  %219 = udiv i32 %218, 1000
  %220 = udiv i32 1000000000, %219
  %221 = mul i32 %220, %216
  %222 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 12
  store i32 %221, ptr %222, align 4
  %223 = getelementptr inbounds %struct.gpmc_device_timings, ptr %2, i32 0, i32 7
  %224 = load i32, ptr %223, align 4
  %225 = getelementptr inbounds %struct.gpmc_device_timings, ptr %2, i32 0, i32 31
  %226 = load i32, ptr %225, align 4
  %227 = load i32, ptr %0, align 4
  %228 = mul i32 %227, %226
  %229 = tail call i32 @llvm.umax.i32(i32 %224, i32 %228) #9
  %230 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 23
  %231 = load i32, ptr %230, align 4
  %232 = add i32 %229, %231
  %233 = getelementptr inbounds %struct.gpmc_device_timings, ptr %2, i32 0, i32 29
  %234 = load i8, ptr %233, align 2
  %235 = icmp eq i8 %234, 0
  br i1 %235, label %245, label %236

236:                                              ; preds = %208
  %237 = zext i8 %234 to i32
  %238 = load ptr, ptr @gpmc_l3_clk, align 4
  %239 = tail call i32 @clk_get_rate(ptr noundef %238) #9
  %240 = udiv i32 %239, 1000
  %241 = udiv i32 1000000000, %240
  %242 = mul i32 %241, %237
  %243 = add i32 %242, %221
  %244 = tail call i32 @llvm.umax.i32(i32 %232, i32 %243) #9
  br label %245

245:                                              ; preds = %236, %208
  %246 = phi i32 [ %244, %236 ], [ %232, %208 ]
  %247 = load ptr, ptr @gpmc_l3_clk, align 4
  %248 = tail call i32 @clk_get_rate(ptr noundef %247) #9
  %249 = udiv i32 %248, 1000
  %250 = udiv i32 1000000000, %249
  %251 = add i32 %246, -1
  %252 = add i32 %251, %250
  %253 = udiv i32 %252, %250
  %254 = load ptr, ptr @gpmc_l3_clk, align 4
  %255 = tail call i32 @clk_get_rate(ptr noundef %254) #9
  %256 = udiv i32 %255, 1000
  %257 = udiv i32 1000000000, %256
  %258 = mul i32 %257, %253
  %259 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 17
  store i32 %258, ptr %259, align 4
  %260 = load ptr, ptr @gpmc_l3_clk, align 4
  %261 = tail call i32 @clk_get_rate(ptr noundef %260) #9
  %262 = udiv i32 %261, 1000
  %263 = udiv i32 1000000000, %262
  %264 = add i32 %263, %258
  %265 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 13
  store i32 %264, ptr %265, align 4
  %266 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 2
  store i32 %264, ptr %266, align 4
  %267 = getelementptr inbounds %struct.gpmc_device_timings, ptr %2, i32 0, i32 11
  %268 = load i32, ptr %267, align 4
  %269 = getelementptr inbounds %struct.gpmc_device_timings, ptr %2, i32 0, i32 13
  %270 = load i32, ptr %269, align 4
  %271 = tail call i32 @llvm.umax.i32(i32 %268, i32 %270) #9
  %272 = load i32, ptr %0, align 4
  %273 = load ptr, ptr @gpmc_l3_clk, align 4
  %274 = tail call i32 @clk_get_rate(ptr noundef %273) #9
  %275 = udiv i32 %274, 1000
  %276 = udiv i32 1000000000, %275
  %277 = add i32 %272, -1
  %278 = add i32 %277, %276
  %279 = udiv i32 %278, %276
  %280 = icmp ugt i32 %279, 4
  %281 = tail call i32 @llvm.smax.i32(i32 %279, i32 1) #9
  %282 = select i1 %280, i32 -1, i32 %281
  %283 = load ptr, ptr @gpmc_l3_clk, align 4
  %284 = tail call i32 @clk_get_rate(ptr noundef %283) #9
  %285 = udiv i32 %284, 1000
  %286 = udiv i32 1000000000, %285
  %287 = add i32 %271, -1
  %288 = add i32 %287, %286
  %289 = udiv i32 %288, %286
  %290 = add nsw i32 %282, -1
  %291 = add nsw i32 %290, %289
  %292 = urem i32 %291, %282
  %293 = sub i32 %291, %292
  %294 = load ptr, ptr @gpmc_l3_clk, align 4
  %295 = tail call i32 @clk_get_rate(ptr noundef %294) #9
  %296 = udiv i32 %295, 1000
  %297 = udiv i32 1000000000, %296
  %298 = mul i32 %297, %293
  %299 = load i32, ptr %259, align 4
  %300 = add i32 %298, %299
  %301 = getelementptr inbounds %struct.gpmc_device_timings, ptr %2, i32 0, i32 25
  %302 = load i32, ptr %301, align 4
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %308, label %304

304:                                              ; preds = %245
  %305 = load i32, ptr %266, align 4
  %306 = add i32 %305, %302
  %307 = tail call i32 @llvm.umax.i32(i32 %300, i32 %306) #9
  br label %308

308:                                              ; preds = %304, %245
  %309 = phi i32 [ %307, %304 ], [ %300, %245 ]
  %310 = load ptr, ptr @gpmc_l3_clk, align 4
  %311 = tail call i32 @clk_get_rate(ptr noundef %310) #9
  %312 = udiv i32 %311, 1000
  %313 = udiv i32 1000000000, %312
  %314 = add i32 %309, -1
  %315 = add i32 %314, %313
  %316 = udiv i32 %315, %313
  %317 = load ptr, ptr @gpmc_l3_clk, align 4
  %318 = tail call i32 @clk_get_rate(ptr noundef %317) #9
  %319 = udiv i32 %318, 1000
  %320 = udiv i32 1000000000, %319
  %321 = mul i32 %320, %316
  %322 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 18
  store i32 %321, ptr %322, align 4
  br label %324

323:                                              ; preds = %153
  tail call fastcc void @gpmc_calc_async_read_timings(ptr noundef %0, ptr noundef %2, i1 noundef zeroext %17)
  br label %324

324:                                              ; preds = %323, %308
  %325 = getelementptr inbounds %struct.gpmc_settings, ptr %1, i32 0, i32 5
  %326 = load i8, ptr %325, align 1, !range !9
  %327 = icmp eq i8 %326, 0
  br i1 %327, label %505, label %328

328:                                              ; preds = %324
  %329 = getelementptr inbounds %struct.gpmc_device_timings, ptr %2, i32 0, i32 3
  %330 = load i32, ptr %329, align 4
  br i1 %17, label %331, label %345

331:                                              ; preds = %328
  %332 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 23
  %333 = load i32, ptr %332, align 4
  %334 = getelementptr inbounds %struct.gpmc_device_timings, ptr %2, i32 0, i32 22
  %335 = load i32, ptr %334, align 4
  %336 = add i32 %335, %333
  %337 = tail call i32 @llvm.umax.i32(i32 %330, i32 %336) #9
  %338 = load i32, ptr %53, align 4
  %339 = load ptr, ptr @gpmc_l3_clk, align 4
  %340 = tail call i32 @clk_get_rate(ptr noundef %339) #9
  %341 = udiv i32 %340, 1000
  %342 = udiv i32 1000000000, %341
  %343 = add i32 %342, %338
  %344 = tail call i32 @llvm.umax.i32(i32 %343, i32 %337) #9
  br label %345

345:                                              ; preds = %331, %328
  %346 = phi i32 [ %344, %331 ], [ %330, %328 ]
  %347 = load ptr, ptr @gpmc_l3_clk, align 4
  %348 = tail call i32 @clk_get_rate(ptr noundef %347) #9
  %349 = udiv i32 %348, 1000
  %350 = udiv i32 1000000000, %349
  %351 = add i32 %346, -1
  %352 = add i32 %351, %350
  %353 = udiv i32 %352, %350
  %354 = load ptr, ptr @gpmc_l3_clk, align 4
  %355 = tail call i32 @clk_get_rate(ptr noundef %354) #9
  %356 = udiv i32 %355, 1000
  %357 = udiv i32 1000000000, %356
  %358 = mul i32 %357, %353
  %359 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 6
  store i32 %358, ptr %359, align 4
  %360 = getelementptr inbounds %struct.gpmc_device_timings, ptr %2, i32 0, i32 14
  %361 = load i32, ptr %360, align 4
  %362 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 23
  %363 = load i32, ptr %362, align 4
  %364 = getelementptr inbounds %struct.gpmc_device_timings, ptr %2, i32 0, i32 24
  %365 = load i32, ptr %364, align 4
  %366 = add i32 %365, %363
  %367 = tail call i32 @llvm.umax.i32(i32 %361, i32 %366) #9
  br i1 %17, label %368, label %383

368:                                              ; preds = %345
  %369 = getelementptr inbounds %struct.gpmc_device_timings, ptr %2, i32 0, i32 4
  %370 = load i32, ptr %369, align 4
  %371 = add i32 %370, %358
  %372 = tail call i32 @llvm.umax.i32(i32 %367, i32 %371) #9
  %373 = getelementptr inbounds %struct.gpmc_device_timings, ptr %2, i32 0, i32 28
  %374 = load i8, ptr %373, align 1
  %375 = zext i8 %374 to i32
  %376 = load ptr, ptr @gpmc_l3_clk, align 4
  %377 = tail call i32 @clk_get_rate(ptr noundef %376) #9
  %378 = udiv i32 %377, 1000
  %379 = udiv i32 1000000000, %378
  %380 = mul i32 %379, %375
  %381 = add i32 %380, %358
  %382 = tail call i32 @llvm.umax.i32(i32 %372, i32 %381) #9
  br label %383

383:                                              ; preds = %368, %345
  %384 = phi i32 [ %382, %368 ], [ %367, %345 ]
  %385 = load ptr, ptr @gpmc_l3_clk, align 4
  %386 = tail call i32 @clk_get_rate(ptr noundef %385) #9
  %387 = udiv i32 %386, 1000
  %388 = udiv i32 1000000000, %387
  %389 = add i32 %384, -1
  %390 = add i32 %389, %388
  %391 = udiv i32 %390, %388
  %392 = load ptr, ptr @gpmc_l3_clk, align 4
  %393 = tail call i32 @clk_get_rate(ptr noundef %392) #9
  %394 = udiv i32 %393, 1000
  %395 = udiv i32 1000000000, %394
  %396 = mul i32 %395, %391
  %397 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 25
  store i32 %396, ptr %397, align 4
  %398 = load i32, ptr @gpmc_capability, align 4
  %399 = and i32 %398, 2
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %415, label %401

401:                                              ; preds = %383
  %402 = load i32, ptr %360, align 4
  %403 = load ptr, ptr @gpmc_l3_clk, align 4
  %404 = tail call i32 @clk_get_rate(ptr noundef %403) #9
  %405 = udiv i32 %404, 1000
  %406 = udiv i32 1000000000, %405
  %407 = add i32 %402, -1
  %408 = add i32 %407, %406
  %409 = udiv i32 %408, %406
  %410 = load ptr, ptr @gpmc_l3_clk, align 4
  %411 = tail call i32 @clk_get_rate(ptr noundef %410) #9
  %412 = udiv i32 %411, 1000
  %413 = udiv i32 1000000000, %412
  %414 = mul i32 %413, %409
  br label %415

415:                                              ; preds = %401, %383
  %416 = phi i32 [ %414, %401 ], [ %396, %383 ]
  %417 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 10
  store i32 %416, ptr %417, align 4
  %418 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 17
  %419 = load i32, ptr %418, align 4
  %420 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 24
  store i32 %419, ptr %420, align 4
  %421 = getelementptr inbounds %struct.gpmc_device_timings, ptr %2, i32 0, i32 15
  %422 = load i32, ptr %421, align 4
  %423 = add i32 %422, %416
  %424 = load ptr, ptr @gpmc_l3_clk, align 4
  %425 = tail call i32 @clk_get_rate(ptr noundef %424) #9
  %426 = udiv i32 %425, 1000
  %427 = udiv i32 1000000000, %426
  %428 = add i32 %427, %419
  %429 = tail call i32 @llvm.umax.i32(i32 %423, i32 %428) #9
  %430 = load i32, ptr %417, align 4
  %431 = getelementptr inbounds %struct.gpmc_device_timings, ptr %2, i32 0, i32 30
  %432 = load i8, ptr %431, align 1
  %433 = zext i8 %432 to i32
  %434 = load ptr, ptr @gpmc_l3_clk, align 4
  %435 = tail call i32 @clk_get_rate(ptr noundef %434) #9
  %436 = udiv i32 %435, 1000
  %437 = udiv i32 1000000000, %436
  %438 = mul i32 %437, %433
  %439 = add i32 %438, %430
  %440 = tail call i32 @llvm.umax.i32(i32 %429, i32 %439) #9
  %441 = load ptr, ptr @gpmc_l3_clk, align 4
  %442 = tail call i32 @clk_get_rate(ptr noundef %441) #9
  %443 = udiv i32 %442, 1000
  %444 = udiv i32 1000000000, %443
  %445 = add i32 %440, -1
  %446 = add i32 %445, %444
  %447 = udiv i32 %446, %444
  %448 = load ptr, ptr @gpmc_l3_clk, align 4
  %449 = tail call i32 @clk_get_rate(ptr noundef %448) #9
  %450 = udiv i32 %449, 1000
  %451 = udiv i32 1000000000, %450
  %452 = mul i32 %451, %447
  %453 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 11
  store i32 %452, ptr %453, align 4
  %454 = getelementptr inbounds %struct.gpmc_device_timings, ptr %2, i32 0, i32 16
  %455 = load i32, ptr %454, align 4
  %456 = load ptr, ptr @gpmc_l3_clk, align 4
  %457 = tail call i32 @clk_get_rate(ptr noundef %456) #9
  %458 = udiv i32 %457, 1000
  %459 = udiv i32 1000000000, %458
  %460 = add i32 %452, -1
  %461 = add i32 %460, %455
  %462 = add i32 %461, %459
  %463 = udiv i32 %462, %459
  %464 = load ptr, ptr @gpmc_l3_clk, align 4
  %465 = tail call i32 @clk_get_rate(ptr noundef %464) #9
  %466 = udiv i32 %465, 1000
  %467 = udiv i32 1000000000, %466
  %468 = mul i32 %467, %463
  %469 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 3
  store i32 %468, ptr %469, align 4
  %470 = getelementptr inbounds %struct.gpmc_device_timings, ptr %2, i32 0, i32 12
  %471 = load i32, ptr %470, align 4
  %472 = load i32, ptr %0, align 4
  %473 = load ptr, ptr @gpmc_l3_clk, align 4
  %474 = tail call i32 @clk_get_rate(ptr noundef %473) #9
  %475 = udiv i32 %474, 1000
  %476 = udiv i32 1000000000, %475
  %477 = add i32 %472, -1
  %478 = add i32 %477, %476
  %479 = udiv i32 %478, %476
  %480 = icmp ugt i32 %479, 4
  %481 = tail call i32 @llvm.smax.i32(i32 %479, i32 1) #9
  %482 = select i1 %480, i32 -1, i32 %481
  %483 = load ptr, ptr @gpmc_l3_clk, align 4
  %484 = tail call i32 @clk_get_rate(ptr noundef %483) #9
  %485 = udiv i32 %484, 1000
  %486 = udiv i32 1000000000, %485
  %487 = add i32 %471, -1
  %488 = add i32 %487, %486
  %489 = udiv i32 %488, %486
  %490 = add nsw i32 %482, -1
  %491 = add nsw i32 %490, %489
  %492 = urem i32 %491, %482
  %493 = sub i32 %491, %492
  %494 = load ptr, ptr @gpmc_l3_clk, align 4
  %495 = tail call i32 @clk_get_rate(ptr noundef %494) #9
  %496 = udiv i32 %495, 1000
  %497 = udiv i32 1000000000, %496
  %498 = mul i32 %497, %493
  %499 = load i32, ptr %420, align 4
  %500 = add i32 %498, %499
  %501 = getelementptr inbounds %struct.gpmc_device_timings, ptr %2, i32 0, i32 25
  %502 = load i32, ptr %501, align 4
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %625, label %618

504:                                              ; preds = %152
  tail call fastcc void @gpmc_calc_async_read_timings(ptr noundef %0, ptr noundef %2, i1 noundef zeroext %17)
  br label %505

505:                                              ; preds = %504, %324
  %506 = getelementptr inbounds %struct.gpmc_device_timings, ptr %2, i32 0, i32 3
  %507 = load i32, ptr %506, align 4
  br i1 %17, label %508, label %516

508:                                              ; preds = %505
  %509 = load i32, ptr %53, align 4
  %510 = load ptr, ptr @gpmc_l3_clk, align 4
  %511 = tail call i32 @clk_get_rate(ptr noundef %510) #9
  %512 = udiv i32 %511, 1000
  %513 = udiv i32 1000000000, %512
  %514 = add i32 %513, %509
  %515 = tail call i32 @llvm.umax.i32(i32 %514, i32 %507) #9
  br label %516

516:                                              ; preds = %508, %505
  %517 = phi i32 [ %515, %508 ], [ %507, %505 ]
  %518 = load ptr, ptr @gpmc_l3_clk, align 4
  %519 = tail call i32 @clk_get_rate(ptr noundef %518) #9
  %520 = udiv i32 %519, 1000
  %521 = udiv i32 1000000000, %520
  %522 = add i32 %517, -1
  %523 = add i32 %522, %521
  %524 = udiv i32 %523, %521
  %525 = load ptr, ptr @gpmc_l3_clk, align 4
  %526 = tail call i32 @clk_get_rate(ptr noundef %525) #9
  %527 = udiv i32 %526, 1000
  %528 = udiv i32 1000000000, %527
  %529 = mul i32 %528, %524
  %530 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 6
  store i32 %529, ptr %530, align 4
  %531 = getelementptr inbounds %struct.gpmc_device_timings, ptr %2, i32 0, i32 14
  %532 = load i32, ptr %531, align 4
  br i1 %17, label %533, label %548

533:                                              ; preds = %516
  %534 = getelementptr inbounds %struct.gpmc_device_timings, ptr %2, i32 0, i32 4
  %535 = load i32, ptr %534, align 4
  %536 = add i32 %535, %529
  %537 = tail call i32 @llvm.umax.i32(i32 %532, i32 %536) #9
  %538 = getelementptr inbounds %struct.gpmc_device_timings, ptr %2, i32 0, i32 28
  %539 = load i8, ptr %538, align 1
  %540 = zext i8 %539 to i32
  %541 = load ptr, ptr @gpmc_l3_clk, align 4
  %542 = tail call i32 @clk_get_rate(ptr noundef %541) #9
  %543 = udiv i32 %542, 1000
  %544 = udiv i32 1000000000, %543
  %545 = mul i32 %544, %540
  %546 = add i32 %545, %529
  %547 = tail call i32 @llvm.umax.i32(i32 %537, i32 %546) #9
  br label %548

548:                                              ; preds = %533, %516
  %549 = phi i32 [ %547, %533 ], [ %532, %516 ]
  %550 = load ptr, ptr @gpmc_l3_clk, align 4
  %551 = tail call i32 @clk_get_rate(ptr noundef %550) #9
  %552 = udiv i32 %551, 1000
  %553 = udiv i32 1000000000, %552
  %554 = add i32 %549, -1
  %555 = add i32 %554, %553
  %556 = udiv i32 %555, %553
  %557 = load ptr, ptr @gpmc_l3_clk, align 4
  %558 = tail call i32 @clk_get_rate(ptr noundef %557) #9
  %559 = udiv i32 %558, 1000
  %560 = udiv i32 1000000000, %559
  %561 = mul i32 %560, %556
  %562 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 25
  store i32 %561, ptr %562, align 4
  %563 = load i32, ptr @gpmc_capability, align 4
  %564 = and i32 %563, 2
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %580, label %566

566:                                              ; preds = %548
  %567 = load i32, ptr %531, align 4
  %568 = load ptr, ptr @gpmc_l3_clk, align 4
  %569 = tail call i32 @clk_get_rate(ptr noundef %568) #9
  %570 = udiv i32 %569, 1000
  %571 = udiv i32 1000000000, %570
  %572 = add i32 %567, -1
  %573 = add i32 %572, %571
  %574 = udiv i32 %573, %571
  %575 = load ptr, ptr @gpmc_l3_clk, align 4
  %576 = tail call i32 @clk_get_rate(ptr noundef %575) #9
  %577 = udiv i32 %576, 1000
  %578 = udiv i32 1000000000, %577
  %579 = mul i32 %578, %574
  br label %580

580:                                              ; preds = %566, %548
  %581 = phi i32 [ %579, %566 ], [ %561, %548 ]
  %582 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 10
  store i32 %581, ptr %582, align 4
  %583 = getelementptr inbounds %struct.gpmc_device_timings, ptr %2, i32 0, i32 15
  %584 = load i32, ptr %583, align 4
  %585 = load ptr, ptr @gpmc_l3_clk, align 4
  %586 = tail call i32 @clk_get_rate(ptr noundef %585) #9
  %587 = udiv i32 %586, 1000
  %588 = udiv i32 1000000000, %587
  %589 = add i32 %581, -1
  %590 = add i32 %589, %584
  %591 = add i32 %590, %588
  %592 = udiv i32 %591, %588
  %593 = load ptr, ptr @gpmc_l3_clk, align 4
  %594 = tail call i32 @clk_get_rate(ptr noundef %593) #9
  %595 = udiv i32 %594, 1000
  %596 = udiv i32 1000000000, %595
  %597 = mul i32 %596, %592
  %598 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 11
  store i32 %597, ptr %598, align 4
  %599 = getelementptr inbounds %struct.gpmc_device_timings, ptr %2, i32 0, i32 16
  %600 = load i32, ptr %599, align 4
  %601 = load ptr, ptr @gpmc_l3_clk, align 4
  %602 = tail call i32 @clk_get_rate(ptr noundef %601) #9
  %603 = udiv i32 %602, 1000
  %604 = udiv i32 1000000000, %603
  %605 = add i32 %597, -1
  %606 = add i32 %605, %600
  %607 = add i32 %606, %604
  %608 = udiv i32 %607, %604
  %609 = load ptr, ptr @gpmc_l3_clk, align 4
  %610 = tail call i32 @clk_get_rate(ptr noundef %609) #9
  %611 = udiv i32 %610, 1000
  %612 = udiv i32 1000000000, %611
  %613 = mul i32 %612, %608
  %614 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 3
  store i32 %613, ptr %614, align 4
  %615 = getelementptr inbounds %struct.gpmc_device_timings, ptr %2, i32 0, i32 17
  %616 = load i32, ptr %615, align 4
  %617 = getelementptr inbounds %struct.gpmc_device_timings, ptr %2, i32 0, i32 12
  br label %618

618:                                              ; preds = %580, %415
  %619 = phi ptr [ %617, %580 ], [ %469, %415 ]
  %620 = phi i32 [ %613, %580 ], [ %502, %415 ]
  %621 = phi i32 [ %616, %580 ], [ %500, %415 ]
  %622 = load i32, ptr %619, align 4
  %623 = add i32 %622, %620
  %624 = tail call i32 @llvm.umax.i32(i32 %621, i32 %623) #9
  br label %625

625:                                              ; preds = %618, %415
  %626 = phi i32 [ %500, %415 ], [ %624, %618 ]
  %627 = load ptr, ptr @gpmc_l3_clk, align 4
  %628 = tail call i32 @clk_get_rate(ptr noundef %627) #9
  %629 = udiv i32 %628, 1000
  %630 = udiv i32 1000000000, %629
  %631 = add i32 %626, -1
  %632 = add i32 %631, %630
  %633 = udiv i32 %632, %630
  %634 = load ptr, ptr @gpmc_l3_clk, align 4
  %635 = tail call i32 @clk_get_rate(ptr noundef %634) #9
  %636 = udiv i32 %635, 1000
  %637 = udiv i32 1000000000, %636
  %638 = mul i32 %637, %633
  %639 = load i32, ptr %32, align 4
  %640 = udiv i32 %639, 1000
  store i32 %640, ptr %32, align 4
  %641 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 2
  %642 = load i32, ptr %641, align 4
  %643 = udiv i32 %642, 1000
  store i32 %643, ptr %641, align 4
  %644 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 3
  %645 = load i32, ptr %644, align 4
  %646 = udiv i32 %645, 1000
  store i32 %646, ptr %644, align 4
  %647 = load i32, ptr %53, align 4
  %648 = udiv i32 %647, 1000
  store i32 %648, ptr %53, align 4
  %649 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 5
  %650 = load i32, ptr %649, align 4
  %651 = udiv i32 %650, 1000
  store i32 %651, ptr %649, align 4
  %652 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 6
  %653 = load i32, ptr %652, align 4
  %654 = udiv i32 %653, 1000
  store i32 %654, ptr %652, align 4
  %655 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 10
  %656 = load i32, ptr %655, align 4
  %657 = udiv i32 %656, 1000
  store i32 %657, ptr %655, align 4
  %658 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 11
  %659 = load i32, ptr %658, align 4
  %660 = udiv i32 %659, 1000
  store i32 %660, ptr %658, align 4
  %661 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 12
  %662 = load i32, ptr %661, align 4
  %663 = udiv i32 %662, 1000
  store i32 %663, ptr %661, align 4
  %664 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 13
  %665 = load i32, ptr %664, align 4
  %666 = udiv i32 %665, 1000
  store i32 %666, ptr %664, align 4
  %667 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 16
  %668 = load i32, ptr %667, align 4
  %669 = udiv i32 %668, 1000
  store i32 %669, ptr %667, align 4
  %670 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 17
  %671 = load i32, ptr %670, align 4
  %672 = udiv i32 %671, 1000
  store i32 %672, ptr %670, align 4
  %673 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 18
  %674 = load i32, ptr %673, align 4
  %675 = udiv i32 %674, 1000
  store i32 %675, ptr %673, align 4
  %676 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 19
  %677 = udiv i32 %638, 1000
  store i32 %677, ptr %676, align 4
  %678 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 20
  %679 = load i32, ptr %678, align 4
  %680 = udiv i32 %679, 1000
  store i32 %680, ptr %678, align 4
  %681 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 21
  %682 = load i32, ptr %681, align 4
  %683 = udiv i32 %682, 1000
  store i32 %683, ptr %681, align 4
  %684 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 22
  %685 = load i32, ptr %684, align 4
  %686 = udiv i32 %685, 1000
  store i32 %686, ptr %684, align 4
  %687 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 23
  %688 = load i32, ptr %687, align 4
  %689 = udiv i32 %688, 1000
  store i32 %689, ptr %687, align 4
  %690 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 24
  %691 = load i32, ptr %690, align 4
  %692 = udiv i32 %691, 1000
  store i32 %692, ptr %690, align 4
  %693 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 25
  %694 = load i32, ptr %693, align 4
  %695 = udiv i32 %694, 1000
  store i32 %695, ptr %693, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gpmc_calc_async_read_timings(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.gpmc_device_timings, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  br i1 %2, label %6, label %15

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = load ptr, ptr @gpmc_l3_clk, align 4
  %10 = tail call i32 @clk_get_rate(ptr noundef %9) #9
  %11 = udiv i32 %10, 1000
  %12 = udiv i32 1000000000, %11
  %13 = add i32 %12, %8
  %14 = tail call i32 @llvm.umax.i32(i32 %13, i32 %5)
  br label %15

15:                                               ; preds = %6, %3
  %16 = phi i32 [ %14, %6 ], [ %5, %3 ]
  %17 = load ptr, ptr @gpmc_l3_clk, align 4
  %18 = tail call i32 @clk_get_rate(ptr noundef %17) #9
  %19 = udiv i32 %18, 1000
  %20 = udiv i32 1000000000, %19
  %21 = add i32 %16, -1
  %22 = add i32 %21, %20
  %23 = udiv i32 %22, %20
  %24 = load ptr, ptr @gpmc_l3_clk, align 4
  %25 = tail call i32 @clk_get_rate(ptr noundef %24) #9
  %26 = udiv i32 %25, 1000
  %27 = udiv i32 1000000000, %26
  %28 = mul i32 %27, %23
  %29 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 5
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.gpmc_device_timings, ptr %1, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  br i1 %2, label %32, label %37

32:                                               ; preds = %15
  %33 = getelementptr inbounds %struct.gpmc_device_timings, ptr %1, i32 0, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, %28
  %36 = tail call i32 @llvm.umax.i32(i32 %31, i32 %35)
  br label %37

37:                                               ; preds = %32, %15
  %38 = phi i32 [ %36, %32 ], [ %31, %15 ]
  %39 = load ptr, ptr @gpmc_l3_clk, align 4
  %40 = tail call i32 @clk_get_rate(ptr noundef %39) #9
  %41 = udiv i32 %40, 1000
  %42 = udiv i32 1000000000, %41
  %43 = add i32 %38, -1
  %44 = add i32 %43, %42
  %45 = udiv i32 %44, %42
  %46 = load ptr, ptr @gpmc_l3_clk, align 4
  %47 = tail call i32 @clk_get_rate(ptr noundef %46) #9
  %48 = udiv i32 %47, 1000
  %49 = udiv i32 1000000000, %48
  %50 = mul i32 %49, %45
  %51 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 12
  store i32 %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.gpmc_device_timings, ptr %1, i32 0, i32 7
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.gpmc_device_timings, ptr %1, i32 0, i32 8
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, %50
  %57 = tail call i32 @llvm.umax.i32(i32 %53, i32 %56)
  %58 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.gpmc_device_timings, ptr %1, i32 0, i32 9
  %61 = load i32, ptr %60, align 4
  %62 = add i32 %61, %59
  %63 = tail call i32 @llvm.umax.i32(i32 %57, i32 %62)
  %64 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 4
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr inbounds %struct.gpmc_device_timings, ptr %1, i32 0, i32 6
  %67 = load i32, ptr %66, align 4
  %68 = add i32 %67, %65
  %69 = tail call i32 @llvm.umax.i32(i32 %63, i32 %68)
  %70 = load ptr, ptr @gpmc_l3_clk, align 4
  %71 = tail call i32 @clk_get_rate(ptr noundef %70) #9
  %72 = udiv i32 %71, 1000
  %73 = udiv i32 1000000000, %72
  %74 = add i32 %69, -1
  %75 = add i32 %74, %73
  %76 = udiv i32 %75, %73
  %77 = load ptr, ptr @gpmc_l3_clk, align 4
  %78 = tail call i32 @clk_get_rate(ptr noundef %77) #9
  %79 = udiv i32 %78, 1000
  %80 = udiv i32 1000000000, %79
  %81 = mul i32 %80, %76
  %82 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 17
  store i32 %81, ptr %82, align 4
  %83 = load ptr, ptr @gpmc_l3_clk, align 4
  %84 = tail call i32 @clk_get_rate(ptr noundef %83) #9
  %85 = udiv i32 %84, 1000
  %86 = udiv i32 1000000000, %85
  %87 = add i32 %86, %81
  %88 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 13
  store i32 %87, ptr %88, align 4
  %89 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 2
  store i32 %87, ptr %89, align 4
  %90 = getelementptr inbounds %struct.gpmc_device_timings, ptr %1, i32 0, i32 10
  %91 = load i32, ptr %90, align 4
  %92 = getelementptr inbounds %struct.gpmc_device_timings, ptr %1, i32 0, i32 11
  %93 = load i32, ptr %92, align 4
  %94 = add i32 %93, %87
  %95 = tail call i32 @llvm.umax.i32(i32 %91, i32 %94)
  %96 = getelementptr inbounds %struct.gpmc_device_timings, ptr %1, i32 0, i32 13
  %97 = load i32, ptr %96, align 4
  %98 = add i32 %97, %87
  %99 = tail call i32 @llvm.umax.i32(i32 %95, i32 %98)
  %100 = load ptr, ptr @gpmc_l3_clk, align 4
  %101 = tail call i32 @clk_get_rate(ptr noundef %100) #9
  %102 = udiv i32 %101, 1000
  %103 = udiv i32 1000000000, %102
  %104 = add i32 %99, -1
  %105 = add i32 %104, %103
  %106 = udiv i32 %105, %103
  %107 = load ptr, ptr @gpmc_l3_clk, align 4
  %108 = tail call i32 @clk_get_rate(ptr noundef %107) #9
  %109 = udiv i32 %108, 1000
  %110 = udiv i32 1000000000, %109
  %111 = mul i32 %110, %106
  %112 = getelementptr inbounds %struct.gpmc_timings, ptr %0, i32 0, i32 18
  store i32 %111, ptr %112, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @gpmc_init() #6 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @gpmc_driver, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @gpmc_nand_writebuffer_empty() #0 {
  %1 = load ptr, ptr @gpmc_base, align 4
  %2 = getelementptr i8, ptr %1, i32 84
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #9, !srcloc !10
  %4 = and i32 %3, 1
  %5 = icmp ne i32 %4, 0
  ret i1 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpmc_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 756, i32 noundef 3520) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %97, label %5

5:                                                ; preds = %1
  store ptr %2, ptr %3, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %6, align 8
  %7 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.51) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #9
  store ptr %10, ptr @gpmc_base, align 4
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = ptrtoint ptr %10 to i32
  br label %97

14:                                               ; preds = %5
  %15 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef nonnull %7) #9
  store ptr %15, ptr @gpmc_base, align 4
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = ptrtoint ptr %15 to i32
  br label %97

19:                                               ; preds = %14
  %20 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.52) #9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.53) #10
  br label %97

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.gpmc_device, ptr %3, i32 0, i32 8
  store ptr %20, ptr %24, align 4
  br label %25

25:                                               ; preds = %23, %9
  %26 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #9
  %27 = getelementptr inbounds %struct.gpmc_device, ptr %3, i32 0, i32 1
  store i32 %26, ptr %27, align 4
  %28 = icmp slt i32 %26, 0
  br i1 %28, label %97, label %29

29:                                               ; preds = %25
  %30 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.54) #9
  store ptr %30, ptr @gpmc_l3_clk, align 4
  %31 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.55) #10
  %33 = load ptr, ptr @gpmc_l3_clk, align 4
  %34 = ptrtoint ptr %33 to i32
  br label %97

35:                                               ; preds = %29
  %36 = tail call i32 @clk_get_rate(ptr noundef %30) #9
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.56) #10
  br label %97

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %41 = load ptr, ptr %40, align 8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %67, label %43

43:                                               ; preds = %39
  %44 = tail call ptr @of_match_device(ptr noundef nonnull @gpmc_dt_ids, ptr noundef %2) #9
  %45 = icmp eq ptr %44, null
  br i1 %45, label %68, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr %40, align 8
  %48 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %47, ptr noundef nonnull @.str.59, ptr noundef nonnull @gpmc_cs_num, i32 noundef 1, i32 noundef 0) #9
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @__func__.gpmc_probe_dt) #10
  br label %97

52:                                               ; preds = %46
  %53 = load i32, ptr @gpmc_cs_num, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @__func__.gpmc_probe_dt) #10
  br label %97

57:                                               ; preds = %52
  %58 = icmp ugt i32 %53, 8
  br i1 %58, label %59, label %61

59:                                               ; preds = %57
  %60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @__func__.gpmc_probe_dt, i32 noundef 8) #10
  br label %97

61:                                               ; preds = %57
  %62 = load ptr, ptr %40, align 8
  %63 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %62, ptr noundef nonnull @.str.63, ptr noundef nonnull @gpmc_nr_waitpins, i32 noundef 1, i32 noundef 0) #9
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @__func__.gpmc_probe_dt) #10
  br label %97

67:                                               ; preds = %39
  store i32 8, ptr @gpmc_cs_num, align 4
  store i32 4, ptr @gpmc_nr_waitpins, align 4
  br label %68

68:                                               ; preds = %67, %61, %43
  tail call void @pm_runtime_enable(ptr noundef %2) #9
  %69 = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 4) #9
  %70 = load ptr, ptr @gpmc_base, align 4
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #9, !srcloc !10
  %72 = lshr i32 %71, 4
  %73 = and i32 %72, 15
  %74 = icmp ugt i32 %73, 4
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = icmp eq i32 %73, 5
  %77 = select i1 %76, i32 3, i32 7
  store i32 %77, ptr @gpmc_capability, align 4
  br label %78

78:                                               ; preds = %75, %68
  %79 = load ptr, ptr %3, align 4
  %80 = and i32 %71, 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %79, ptr noundef nonnull @.str.57, i32 noundef %73, i32 noundef %80) #10
  tail call fastcc void @gpmc_mem_init(ptr noundef nonnull %3)
  %81 = tail call fastcc i32 @gpmc_gpio_init(ptr noundef nonnull %3)
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %78
  %84 = load i32, ptr @gpmc_nr_waitpins, align 4
  %85 = add i32 %84, 2
  %86 = getelementptr inbounds %struct.gpmc_device, ptr %3, i32 0, i32 6
  store i32 %85, ptr %86, align 4
  %87 = tail call fastcc i32 @gpmc_setup_irq(ptr noundef nonnull %3)
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %83
  %90 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.58) #10
  br label %94

91:                                               ; preds = %83
  tail call fastcc void @gpmc_probe_dt_children(ptr noundef %0)
  %92 = getelementptr inbounds %struct.gpmc_device, ptr %3, i32 0, i32 4
  store ptr @omap_gpmc_context_notifier, ptr %92, align 4
  %93 = tail call i32 @cpu_pm_register_notifier(ptr noundef %92) #9
  br label %97

94:                                               ; preds = %89, %78
  %95 = phi i32 [ %81, %78 ], [ %87, %89 ]
  tail call fastcc void @gpmc_mem_exit()
  %96 = tail call i32 @__pm_runtime_idle(ptr noundef %2, i32 noundef 4) #9
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #9
  br label %97

97:                                               ; preds = %94, %91, %65, %59, %55, %50, %38, %32, %25, %22, %17, %12, %1
  %98 = phi i32 [ %18, %17 ], [ %34, %32 ], [ %95, %94 ], [ 0, %91 ], [ -22, %38 ], [ -2, %22 ], [ %13, %12 ], [ -12, %1 ], [ %26, %25 ], [ %63, %65 ], [ -22, %59 ], [ -22, %55 ], [ %48, %50 ]
  ret i32 %98
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpmc_remove(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.gpmc_device, ptr %4, i32 0, i32 4
  %6 = tail call i32 @cpu_pm_unregister_notifier(ptr noundef %5) #9
  %7 = getelementptr inbounds %struct.gpmc_device, ptr %4, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = tail call ptr @free_irq(i32 noundef %8, ptr noundef %4) #9
  %10 = getelementptr inbounds %struct.gpmc_device, ptr %4, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %13, %1
  %14 = phi i32 [ %20, %13 ], [ 0, %1 ]
  %15 = load ptr, ptr @gpmc_irq_domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !15
  %16 = call ptr @__irq_resolve_mapping(ptr noundef %15, i32 noundef %14, ptr noundef nonnull %2) #9
  %17 = icmp eq ptr %16, null
  %18 = load i32, ptr %2, align 4
  %19 = select i1 %17, i32 0, i32 %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  call void @irq_dispose_mapping(i32 noundef %19) #9
  %20 = add nuw nsw i32 %14, 1
  %21 = load i32, ptr %10, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %13, label %23

23:                                               ; preds = %13, %1
  %24 = load ptr, ptr @gpmc_irq_domain, align 4
  call void @irq_domain_remove(ptr noundef %24) #9
  store ptr null, ptr @gpmc_irq_domain, align 4
  %25 = load i32, ptr @gpmc_cs_num, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %46, label %27

27:                                               ; preds = %42, %23
  %28 = phi i32 [ %43, %42 ], [ 0, %23 ]
  %29 = load ptr, ptr @gpmc_base, align 4
  %30 = mul i32 %28, 48
  %31 = getelementptr i8, ptr %29, i32 120
  %32 = getelementptr i8, ptr %31, i32 %30
  %33 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #9, !srcloc !10
  %34 = and i32 %33, 64
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %27
  %37 = getelementptr [8 x %struct.gpmc_cs_data], ptr @gpmc_cs, i32 0, i32 %28, i32 2
  call void @_raw_spin_lock(ptr noundef nonnull @gpmc_mem_lock) #9
  %38 = call i32 @release_resource(ptr noundef %37) #9
  store i32 0, ptr %37, align 4
  %39 = getelementptr [8 x %struct.gpmc_cs_data], ptr @gpmc_cs, i32 0, i32 %28, i32 2, i32 1
  store i32 0, ptr %39, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  %40 = load i16, ptr @gpmc_mem_lock, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr @gpmc_mem_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %42

42:                                               ; preds = %36, %27
  %43 = add nuw i32 %28, 1
  %44 = load i32, ptr @gpmc_cs_num, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %27, label %46

46:                                               ; preds = %42, %23
  %47 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %48 = call i32 @__pm_runtime_idle(ptr noundef %47, i32 noundef 4) #9
  call void @__pm_runtime_disable(ptr noundef %47, i1 noundef zeroext true) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gpmc_mem_init(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gpmc_device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i32 16777216, ptr @gpmc_mem_root, align 4
  br label %10

6:                                                ; preds = %1
  %7 = load i32, ptr %3, align 4
  store i32 %7, ptr @gpmc_mem_root, align 4
  %8 = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  br label %10

10:                                               ; preds = %6, %5
  %11 = phi i32 [ 1073741823, %5 ], [ %9, %6 ]
  store i32 %11, ptr getelementptr inbounds (%struct.resource, ptr @gpmc_mem_root, i32 0, i32 1), align 4
  %12 = load i32, ptr @gpmc_cs_num, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %66, label %14

14:                                               ; preds = %62, %10
  %15 = phi i32 [ %63, %62 ], [ 0, %10 ]
  %16 = load ptr, ptr @gpmc_base, align 4
  %17 = mul i32 %15, 48
  %18 = getelementptr i8, ptr %16, i32 120
  %19 = getelementptr i8, ptr %18, i32 %17
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #9, !srcloc !10
  %21 = and i32 %20, 64
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %62, label %23

23:                                               ; preds = %14
  %24 = load ptr, ptr @gpmc_base, align 4
  %25 = getelementptr i8, ptr %24, i32 120
  %26 = getelementptr i8, ptr %25, i32 %17
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #9, !srcloc !10
  %28 = shl i32 %27, 24
  %29 = shl i32 %27, 16
  %30 = and i32 %29, 251658240
  %31 = lshr exact i32 %30, 23
  %32 = xor i32 %31, 31
  br label %33

33:                                               ; preds = %33, %23
  %34 = phi i32 [ %32, %23 ], [ %36, %33 ]
  %35 = phi i32 [ 23, %23 ], [ %37, %33 ]
  %36 = lshr i32 %34, 1
  %37 = add nuw nsw i32 %35, 1
  %38 = icmp ult i32 %34, 2
  br i1 %38, label %39, label %33

39:                                               ; preds = %33
  %40 = and i32 %28, 1056964608
  %41 = getelementptr [8 x %struct.gpmc_cs_data], ptr @gpmc_cs, i32 0, i32 %15, i32 2
  %42 = shl i32 2, %35
  tail call void @_raw_spin_lock(ptr noundef nonnull @gpmc_mem_lock) #9
  store i32 %40, ptr %41, align 4
  %43 = add nsw i32 %40, -1
  %44 = add i32 %43, %42
  %45 = getelementptr [8 x %struct.gpmc_cs_data], ptr @gpmc_cs, i32 0, i32 %15, i32 2, i32 1
  store i32 %44, ptr %45, align 4
  %46 = tail call i32 @request_resource(ptr noundef nonnull @gpmc_mem_root, ptr noundef %41) #9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  %47 = load i16, ptr @gpmc_mem_lock, align 4
  %48 = add i16 %47, 1
  store i16 %48, ptr @gpmc_mem_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %49 = icmp eq i32 %46, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %39
  %51 = sub nuw nsw i32 268435456, %30
  %52 = add nuw nsw i32 %51, %40
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @__func__.gpmc_mem_init, i32 noundef %15, i32 noundef %40, i32 noundef %52) #10
  %54 = load ptr, ptr @gpmc_base, align 4
  %55 = getelementptr i8, ptr %54, i32 120
  %56 = getelementptr i8, ptr %55, i32 %17
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #9, !srcloc !10
  %58 = and i32 %57, -65
  %59 = load ptr, ptr @gpmc_base, align 4
  %60 = getelementptr i8, ptr %59, i32 120
  %61 = getelementptr i8, ptr %60, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %58) #9, !srcloc !8
  br label %62

62:                                               ; preds = %50, %39, %14
  %63 = add nuw i32 %15, 1
  %64 = load i32, ptr @gpmc_cs_num, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %14, label %66

66:                                               ; preds = %62, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gpmc_gpio_init(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.gpmc_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.gpmc_device, ptr %0, i32 0, i32 3, i32 2
  store ptr %2, ptr %4, align 4
  %5 = getelementptr inbounds %struct.gpmc_device, ptr %0, i32 0, i32 3, i32 4
  store ptr null, ptr %5, align 4
  store ptr @.str.50, ptr %3, align 4
  %6 = load i32, ptr @gpmc_nr_waitpins, align 4
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.gpmc_device, ptr %0, i32 0, i32 3, i32 20
  store i16 %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.gpmc_device, ptr %0, i32 0, i32 3, i32 7
  store ptr @gpmc_gpio_get_direction, ptr %9, align 4
  %10 = getelementptr inbounds %struct.gpmc_device, ptr %0, i32 0, i32 3, i32 8
  store ptr @gpmc_gpio_direction_input, ptr %10, align 4
  %11 = getelementptr inbounds %struct.gpmc_device, ptr %0, i32 0, i32 3, i32 9
  store ptr @gpmc_gpio_direction_output, ptr %11, align 4
  %12 = getelementptr inbounds %struct.gpmc_device, ptr %0, i32 0, i32 3, i32 12
  store ptr @gpmc_gpio_set, ptr %12, align 4
  %13 = getelementptr inbounds %struct.gpmc_device, ptr %0, i32 0, i32 3, i32 10
  store ptr @gpmc_gpio_get, ptr %13, align 4
  %14 = getelementptr inbounds %struct.gpmc_device, ptr %0, i32 0, i32 3, i32 19
  store i32 -1, ptr %14, align 4
  %15 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %2, ptr noundef %3, ptr noundef null, ptr noundef null, ptr noundef null) #9
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.66, i32 noundef %15) #10
  br label %19

19:                                               ; preds = %17, %1
  %20 = phi i32 [ %15, %17 ], [ 0, %1 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gpmc_setup_irq(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @gpmc_base, align 4
  %3 = getelementptr i8, ptr %2, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #9, !srcloc !8
  %4 = load ptr, ptr @gpmc_base, align 4
  %5 = getelementptr i8, ptr %4, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !10
  %7 = load ptr, ptr @gpmc_base, align 4
  %8 = getelementptr i8, ptr %7, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #9, !srcloc !8
  %9 = getelementptr inbounds %struct.gpmc_device, ptr %0, i32 0, i32 2, i32 1
  store ptr @.str.67, ptr %9, align 4
  %10 = getelementptr inbounds %struct.gpmc_device, ptr %0, i32 0, i32 2, i32 4
  store ptr @gpmc_irq_enable, ptr %10, align 4
  %11 = getelementptr inbounds %struct.gpmc_device, ptr %0, i32 0, i32 2, i32 5
  store ptr @gpmc_irq_disable, ptr %11, align 4
  %12 = getelementptr inbounds %struct.gpmc_device, ptr %0, i32 0, i32 2, i32 6
  store ptr @gpmc_irq_ack, ptr %12, align 4
  %13 = getelementptr inbounds %struct.gpmc_device, ptr %0, i32 0, i32 2, i32 7
  store ptr @gpmc_irq_mask, ptr %13, align 4
  %14 = getelementptr inbounds %struct.gpmc_device, ptr %0, i32 0, i32 2, i32 9
  store ptr @gpmc_irq_unmask, ptr %14, align 4
  %15 = getelementptr inbounds %struct.gpmc_device, ptr %0, i32 0, i32 2, i32 13
  store ptr @gpmc_irq_set_type, ptr %15, align 4
  %16 = load ptr, ptr %0, align 4
  %17 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 25
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.gpmc_device, ptr %0, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq ptr %18, null
  %22 = getelementptr inbounds %struct.device_node, ptr %18, i32 0, i32 3
  %23 = select i1 %21, ptr null, ptr %22
  %24 = tail call ptr @__irq_domain_add(ptr noundef %23, i32 noundef %20, i32 noundef %20, i32 noundef 0, ptr noundef nonnull @gpmc_irq_domain_ops, ptr noundef %0) #9
  store ptr %24, ptr @gpmc_irq_domain, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.68) #10
  br label %37

28:                                               ; preds = %1
  %29 = getelementptr inbounds %struct.gpmc_device, ptr %0, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = tail call i32 @request_threaded_irq(i32 noundef %30, ptr noundef nonnull @gpmc_handle_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.67, ptr noundef %0) #9
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = load ptr, ptr %0, align 4
  %35 = load i32, ptr %29, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.69, i32 noundef %35, i32 noundef %31) #10
  %36 = load ptr, ptr @gpmc_irq_domain, align 4
  tail call void @irq_domain_remove(ptr noundef %36) #9
  store ptr null, ptr @gpmc_irq_domain, align 4
  br label %37

37:                                               ; preds = %33, %28, %26
  %38 = phi i32 [ -19, %26 ], [ %31, %33 ], [ 0, %28 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gpmc_probe_dt_children(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.gpmc_settings, align 4
  %3 = alloca %struct.gpmc_timings, align 4
  %4 = alloca %struct.resource, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %10 = load ptr, ptr %9, align 8
  %11 = tail call ptr @of_get_next_available_child(ptr noundef %10, ptr noundef null) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %324, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %15 = getelementptr inbounds %struct.resource, ptr %4, i32 0, i32 1
  %16 = getelementptr inbounds %struct.gpmc_timings, ptr %3, i32 0, i32 1
  %17 = getelementptr inbounds %struct.gpmc_timings, ptr %3, i32 0, i32 2
  %18 = getelementptr inbounds %struct.gpmc_timings, ptr %3, i32 0, i32 3
  %19 = getelementptr inbounds %struct.gpmc_timings, ptr %3, i32 0, i32 4
  %20 = getelementptr inbounds %struct.gpmc_timings, ptr %3, i32 0, i32 5
  %21 = getelementptr inbounds %struct.gpmc_timings, ptr %3, i32 0, i32 6
  %22 = getelementptr inbounds %struct.gpmc_timings, ptr %3, i32 0, i32 7
  %23 = getelementptr inbounds %struct.gpmc_timings, ptr %3, i32 0, i32 8
  %24 = getelementptr inbounds %struct.gpmc_timings, ptr %3, i32 0, i32 9
  %25 = getelementptr inbounds %struct.gpmc_timings, ptr %3, i32 0, i32 10
  %26 = getelementptr inbounds %struct.gpmc_timings, ptr %3, i32 0, i32 11
  %27 = getelementptr inbounds %struct.gpmc_timings, ptr %3, i32 0, i32 12
  %28 = getelementptr inbounds %struct.gpmc_timings, ptr %3, i32 0, i32 13
  %29 = getelementptr inbounds %struct.gpmc_timings, ptr %3, i32 0, i32 14
  %30 = getelementptr inbounds %struct.gpmc_timings, ptr %3, i32 0, i32 15
  %31 = getelementptr inbounds %struct.gpmc_timings, ptr %3, i32 0, i32 16
  %32 = getelementptr inbounds %struct.gpmc_timings, ptr %3, i32 0, i32 17
  %33 = getelementptr inbounds %struct.gpmc_timings, ptr %3, i32 0, i32 18
  %34 = getelementptr inbounds %struct.gpmc_timings, ptr %3, i32 0, i32 19
  %35 = getelementptr inbounds %struct.gpmc_timings, ptr %3, i32 0, i32 20
  %36 = getelementptr inbounds %struct.gpmc_timings, ptr %3, i32 0, i32 21
  %37 = getelementptr inbounds %struct.gpmc_timings, ptr %3, i32 0, i32 22
  %38 = getelementptr inbounds %struct.gpmc_timings, ptr %3, i32 0, i32 23
  %39 = getelementptr inbounds %struct.gpmc_timings, ptr %3, i32 0, i32 24
  %40 = getelementptr inbounds %struct.gpmc_timings, ptr %3, i32 0, i32 25
  %41 = getelementptr inbounds %struct.gpmc_timings, ptr %3, i32 0, i32 26
  %42 = getelementptr inbounds %struct.gpmc_timings, ptr %3, i32 0, i32 26, i32 1
  %43 = getelementptr inbounds %struct.gpmc_timings, ptr %3, i32 0, i32 26, i32 2
  %44 = getelementptr inbounds %struct.gpmc_timings, ptr %3, i32 0, i32 26, i32 3
  %45 = getelementptr inbounds %struct.gpmc_timings, ptr %3, i32 0, i32 26, i32 4
  %46 = getelementptr inbounds %struct.gpmc_timings, ptr %3, i32 0, i32 26, i32 5
  %47 = getelementptr inbounds %struct.gpmc_timings, ptr %3, i32 0, i32 26, i32 6
  %48 = getelementptr inbounds %struct.gpmc_settings, ptr %2, i32 0, i32 9
  %49 = getelementptr inbounds %struct.gpmc_settings, ptr %2, i32 0, i32 3
  %50 = getelementptr inbounds %struct.gpmc_settings, ptr %2, i32 0, i32 6
  %51 = getelementptr inbounds %struct.gpmc_settings, ptr %2, i32 0, i32 7
  %52 = getelementptr inbounds %struct.gpmc_settings, ptr %2, i32 0, i32 11
  br label %53

53:                                               ; preds = %320, %13
  %54 = phi ptr [ %11, %13 ], [ %322, %320 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %2, i8 0, i32 24, i1 false) #9, !annotation !15
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(112) %3, i8 0, i32 112, i1 false) #9, !annotation !15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %4, i8 0, i32 32, i1 false) #9, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store i32 0, ptr %7, align 4, !annotation !15
  %55 = load ptr, ptr %14, align 8
  %56 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %54, ptr noundef nonnull @.str.72, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 0) #9
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.73, ptr noundef nonnull %54) #10
  br label %309

59:                                               ; preds = %53
  %60 = call i32 @of_address_to_resource(ptr noundef nonnull %54, i32 noundef 0, ptr noundef nonnull %4) #9
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.74, ptr noundef nonnull %54) #10
  br label %309

63:                                               ; preds = %59
  %64 = load i32, ptr %6, align 4
  %65 = getelementptr [8 x %struct.gpmc_cs_data], ptr @gpmc_cs, i32 0, i32 %64
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %63
  %69 = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %54, ptr noundef nonnull %66) #9
  br i1 %69, label %292, label %70

70:                                               ; preds = %68
  %71 = load i32, ptr %6, align 4
  br label %72

72:                                               ; preds = %70, %63
  %73 = phi i32 [ %71, %70 ], [ %64, %63 ]
  %74 = load i32, ptr %15, align 4
  %75 = load i32, ptr %4, align 4
  %76 = add i32 %74, 1
  %77 = sub i32 %76, %75
  %78 = call i32 @gpmc_cs_request(i32 noundef %73, i32 noundef %77, ptr noundef nonnull %5) #9
  %79 = icmp slt i32 %78, 0
  %80 = load i32, ptr %6, align 4
  br i1 %79, label %81, label %82

81:                                               ; preds = %72
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.75, i32 noundef %80) #10
  br label %309

82:                                               ; preds = %72
  %83 = getelementptr inbounds %struct.device_node, ptr %54, i32 0, i32 2
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr [8 x %struct.gpmc_cs_data], ptr @gpmc_cs, i32 0, i32 %80
  store ptr %84, ptr %85, align 4
  call void @gpmc_read_settings_dt(ptr noundef nonnull %54, ptr noundef nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(112) %3, i8 0, i32 112, i1 false) #9
  %86 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %54, ptr noundef nonnull @.str.95, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #9
  %87 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %54, ptr noundef nonnull @.str.96, ptr noundef %16, i32 noundef 1, i32 noundef 0) #9
  %88 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %54, ptr noundef nonnull @.str.97, ptr noundef %17, i32 noundef 1, i32 noundef 0) #9
  %89 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %54, ptr noundef nonnull @.str.98, ptr noundef %18, i32 noundef 1, i32 noundef 0) #9
  %90 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %54, ptr noundef nonnull @.str.99, ptr noundef %19, i32 noundef 1, i32 noundef 0) #9
  %91 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %54, ptr noundef nonnull @.str.100, ptr noundef %20, i32 noundef 1, i32 noundef 0) #9
  %92 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %54, ptr noundef nonnull @.str.101, ptr noundef %21, i32 noundef 1, i32 noundef 0) #9
  %93 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %54, ptr noundef nonnull @.str.102, ptr noundef %22, i32 noundef 1, i32 noundef 0) #9
  %94 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %54, ptr noundef nonnull @.str.103, ptr noundef %23, i32 noundef 1, i32 noundef 0) #9
  %95 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %54, ptr noundef nonnull @.str.104, ptr noundef %24, i32 noundef 1, i32 noundef 0) #9
  %96 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %54, ptr noundef nonnull @.str.105, ptr noundef %25, i32 noundef 1, i32 noundef 0) #9
  %97 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %54, ptr noundef nonnull @.str.106, ptr noundef %26, i32 noundef 1, i32 noundef 0) #9
  %98 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %54, ptr noundef nonnull @.str.107, ptr noundef %27, i32 noundef 1, i32 noundef 0) #9
  %99 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %54, ptr noundef nonnull @.str.108, ptr noundef %28, i32 noundef 1, i32 noundef 0) #9
  %100 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %54, ptr noundef nonnull @.str.109, ptr noundef %29, i32 noundef 1, i32 noundef 0) #9
  %101 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %54, ptr noundef nonnull @.str.110, ptr noundef %30, i32 noundef 1, i32 noundef 0) #9
  %102 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %54, ptr noundef nonnull @.str.111, ptr noundef %31, i32 noundef 1, i32 noundef 0) #9
  %103 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %54, ptr noundef nonnull @.str.112, ptr noundef %32, i32 noundef 1, i32 noundef 0) #9
  %104 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %54, ptr noundef nonnull @.str.113, ptr noundef %33, i32 noundef 1, i32 noundef 0) #9
  %105 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %54, ptr noundef nonnull @.str.114, ptr noundef %34, i32 noundef 1, i32 noundef 0) #9
  %106 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %54, ptr noundef nonnull @.str.115, ptr noundef %35, i32 noundef 1, i32 noundef 0) #9
  %107 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %54, ptr noundef nonnull @.str.116, ptr noundef %36, i32 noundef 1, i32 noundef 0) #9
  %108 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %54, ptr noundef nonnull @.str.117, ptr noundef %37, i32 noundef 1, i32 noundef 0) #9
  %109 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %54, ptr noundef nonnull @.str.118, ptr noundef %38, i32 noundef 1, i32 noundef 0) #9
  %110 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %54, ptr noundef nonnull @.str.119, ptr noundef %39, i32 noundef 1, i32 noundef 0) #9
  %111 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %54, ptr noundef nonnull @.str.120, ptr noundef %40, i32 noundef 1, i32 noundef 0) #9
  %112 = call ptr @of_find_property(ptr noundef nonnull %54, ptr noundef nonnull @.str.121, ptr noundef null) #9
  %113 = icmp ne ptr %112, null
  %114 = zext i1 %113 to i8
  store i8 %114, ptr %41, align 4
  %115 = call ptr @of_find_property(ptr noundef nonnull %54, ptr noundef nonnull @.str.122, ptr noundef null) #9
  %116 = icmp ne ptr %115, null
  %117 = zext i1 %116 to i8
  store i8 %117, ptr %42, align 1
  %118 = call ptr @of_find_property(ptr noundef nonnull %54, ptr noundef nonnull @.str.123, ptr noundef null) #9
  %119 = icmp ne ptr %118, null
  %120 = zext i1 %119 to i8
  store i8 %120, ptr %43, align 2
  %121 = call ptr @of_find_property(ptr noundef nonnull %54, ptr noundef nonnull @.str.124, ptr noundef null) #9
  %122 = icmp ne ptr %121, null
  %123 = zext i1 %122 to i8
  store i8 %123, ptr %44, align 1
  %124 = call ptr @of_find_property(ptr noundef nonnull %54, ptr noundef nonnull @.str.125, ptr noundef null) #9
  %125 = icmp ne ptr %124, null
  %126 = zext i1 %125 to i8
  store i8 %126, ptr %45, align 4
  %127 = call ptr @of_find_property(ptr noundef nonnull %54, ptr noundef nonnull @.str.126, ptr noundef null) #9
  %128 = icmp ne ptr %127, null
  %129 = zext i1 %128 to i8
  store i8 %129, ptr %46, align 1
  %130 = call ptr @of_find_property(ptr noundef nonnull %54, ptr noundef nonnull @.str.127, ptr noundef null) #9
  %131 = icmp ne ptr %130, null
  %132 = zext i1 %131 to i8
  store i8 %132, ptr %47, align 2
  %133 = load i32, ptr %17, align 4
  %134 = icmp eq i32 %133, 0
  %135 = load i32, ptr %6, align 4
  br i1 %134, label %136, label %137

136:                                              ; preds = %82
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 2133, i32 noundef 9, ptr noundef nonnull @.str.76, i32 noundef %135) #9
  br label %292

137:                                              ; preds = %82
  %138 = load ptr, ptr @gpmc_base, align 4
  %139 = mul i32 %135, 48
  %140 = getelementptr i8, ptr %138, i32 120
  %141 = getelementptr i8, ptr %140, i32 %139
  %142 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %141) #9, !srcloc !10
  %143 = and i32 %142, -65
  %144 = load ptr, ptr @gpmc_base, align 4
  %145 = getelementptr i8, ptr %144, i32 120
  %146 = getelementptr i8, ptr %145, i32 %139
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %146, i32 %143) #9, !srcloc !8
  %147 = load i32, ptr %6, align 4
  %148 = load i32, ptr %4, align 4
  %149 = load i32, ptr @gpmc_cs_num, align 4
  %150 = icmp ugt i32 %149, %147
  br i1 %150, label %153, label %151

151:                                              ; preds = %137
  %152 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.gpmc_cs_remap) #10
  br label %207

153:                                              ; preds = %137
  %154 = and i32 %148, -16777216
  %155 = load ptr, ptr @gpmc_base, align 4
  %156 = mul i32 %147, 48
  %157 = getelementptr i8, ptr %155, i32 120
  %158 = getelementptr i8, ptr %157, i32 %156
  %159 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %158) #9, !srcloc !10
  %160 = shl i32 %159, 24
  %161 = and i32 %160, 1056964608
  %162 = shl i32 %159, 16
  %163 = and i32 %162, 251658240
  %164 = icmp eq i32 %154, %161
  br i1 %164, label %219, label %165

165:                                              ; preds = %153
  %166 = getelementptr [8 x %struct.gpmc_cs_data], ptr @gpmc_cs, i32 0, i32 %147, i32 2
  call void @_raw_spin_lock(ptr noundef nonnull @gpmc_mem_lock) #9
  %167 = call i32 @release_resource(ptr noundef %166) #9
  store i32 0, ptr %166, align 4
  %168 = getelementptr [8 x %struct.gpmc_cs_data], ptr @gpmc_cs, i32 0, i32 %147, i32 2, i32 1
  store i32 0, ptr %168, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  %169 = load i16, ptr @gpmc_mem_lock, align 4
  %170 = add i16 %169, 1
  store i16 %170, ptr @gpmc_mem_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %171 = icmp slt i32 %167, 0
  br i1 %171, label %207, label %172

172:                                              ; preds = %165
  %173 = xor i32 %163, 268435455
  %174 = lshr i32 %173, 23
  br label %175

175:                                              ; preds = %175, %172
  %176 = phi i32 [ %174, %172 ], [ %178, %175 ]
  %177 = phi i32 [ 23, %172 ], [ %179, %175 ]
  %178 = lshr i32 %176, 1
  %179 = add nuw nsw i32 %177, 1
  %180 = icmp ult i32 %176, 2
  br i1 %180, label %181, label %175

181:                                              ; preds = %175
  %182 = shl i32 2, %177
  call void @_raw_spin_lock(ptr noundef nonnull @gpmc_mem_lock) #9
  store i32 %154, ptr %166, align 4
  %183 = add i32 %154, -1
  %184 = add i32 %183, %182
  store i32 %184, ptr %168, align 4
  %185 = call i32 @request_resource(ptr noundef nonnull @gpmc_mem_root, ptr noundef %166) #9
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  %186 = load i16, ptr @gpmc_mem_lock, align 4
  %187 = add i16 %186, 1
  store i16 %187, ptr @gpmc_mem_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %188 = icmp slt i32 %185, 0
  br i1 %188, label %207, label %189

189:                                              ; preds = %181
  %190 = and i32 %173, %154
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %207

192:                                              ; preds = %189
  %193 = lshr i32 %148, 24
  %194 = load ptr, ptr @gpmc_base, align 4
  %195 = getelementptr i8, ptr %194, i32 120
  %196 = getelementptr i8, ptr %195, i32 %156
  %197 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %196) #9, !srcloc !10
  %198 = and i32 %197, -3968
  %199 = and i32 %193, 63
  %200 = and i32 %159, 3840
  %201 = or i32 %199, %200
  %202 = or i32 %201, %198
  %203 = or i32 %202, 64
  %204 = load ptr, ptr @gpmc_base, align 4
  %205 = getelementptr i8, ptr %204, i32 120
  %206 = getelementptr i8, ptr %205, i32 %156
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %206, i32 %203) #9, !srcloc !8
  br label %219

207:                                              ; preds = %189, %181, %165, %151
  %208 = phi i32 [ -22, %189 ], [ %185, %181 ], [ %167, %165 ], [ -19, %151 ]
  %209 = load i32, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.78, i32 noundef %209, ptr noundef nonnull %4) #10
  %210 = load i32, ptr %4, align 4
  %211 = icmp ult i32 %210, 16777216
  br i1 %211, label %212, label %214

212:                                              ; preds = %207
  %213 = load i32, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.79, i32 noundef %213, i32 noundef 16777216) #10
  br label %312

214:                                              ; preds = %207
  %215 = load i32, ptr %15, align 4
  %216 = icmp ugt i32 %215, 1073741823
  br i1 %216, label %217, label %312

217:                                              ; preds = %214
  %218 = load i32, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.80, i32 noundef %218, i32 noundef 1073741823) #10
  br label %312

219:                                              ; preds = %192, %153
  %220 = call zeroext i1 @of_node_name_eq(ptr noundef %54, ptr noundef nonnull @.str.81) #9
  br i1 %220, label %221, label %225

221:                                              ; preds = %219
  %222 = call ptr @of_find_property(ptr noundef %54, ptr noundef nonnull @.str.82, ptr noundef null) #9
  %223 = icmp eq ptr %222, null
  br i1 %223, label %224, label %225

224:                                              ; preds = %221
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.83) #10
  br label %312

225:                                              ; preds = %221, %219
  %226 = call zeroext i1 @of_node_name_eq(ptr noundef %54, ptr noundef nonnull @.str.84) #9
  br i1 %226, label %227, label %231

227:                                              ; preds = %225
  %228 = call ptr @of_find_property(ptr noundef %54, ptr noundef nonnull @.str.82, ptr noundef null) #9
  %229 = icmp eq ptr %228, null
  br i1 %229, label %230, label %231

230:                                              ; preds = %227
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.85) #10
  br label %312

231:                                              ; preds = %227, %225
  %232 = call ptr @of_match_node(ptr noundef nonnull @omap_nand_ids, ptr noundef %54) #9
  %233 = icmp eq ptr %232, null
  br i1 %233, label %247, label %234

234:                                              ; preds = %231
  store i32 8, ptr %7, align 4
  %235 = call i32 @of_property_read_variable_u32_array(ptr noundef %54, ptr noundef nonnull @.str.86, ptr noundef nonnull %7, i32 noundef 1, i32 noundef 0) #9
  %236 = load i32, ptr %7, align 4
  switch i32 %236, label %238 [
    i32 8, label %239
    i32 16, label %237
  ]

237:                                              ; preds = %234
  br label %239

238:                                              ; preds = %234
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.87, ptr noundef %54) #10
  br label %312

239:                                              ; preds = %237, %234
  %240 = phi i32 [ 2, %237 ], [ 1, %234 ]
  store i32 %240, ptr %48, align 4
  %241 = load ptr, ptr @gpmc_base, align 4
  %242 = getelementptr i8, ptr %241, i32 80
  %243 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %242) #9, !srcloc !10
  %244 = or i32 %243, 16
  %245 = load ptr, ptr @gpmc_base, align 4
  %246 = getelementptr i8, ptr %245, i32 80
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %246, i32 %244) #9, !srcloc !8
  store i8 1, ptr %49, align 1
  br label %255

247:                                              ; preds = %231
  %248 = call i32 @of_property_read_variable_u32_array(ptr noundef %54, ptr noundef nonnull @.str.88, ptr noundef %48, i32 noundef 1, i32 noundef 0) #9
  %249 = call i32 @llvm.smin.i32(i32 %248, i32 0) #9
  %250 = icmp sgt i32 %249, -1
  %251 = load i32, ptr %48, align 4
  %252 = icmp ne i32 %251, 0
  %253 = select i1 %250, i1 true, i1 %252
  br i1 %253, label %255, label %254

254:                                              ; preds = %247
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.89, ptr noundef %54) #10
  br label %312

255:                                              ; preds = %247, %239
  %256 = load i8, ptr %50, align 2, !range !9
  %257 = icmp eq i8 %256, 0
  %258 = load i8, ptr %51, align 1
  %259 = icmp eq i8 %258, 0
  %260 = select i1 %257, i1 %259, i1 false
  br i1 %260, label %266, label %261

261:                                              ; preds = %255
  %262 = load i32, ptr %52, align 4
  %263 = getelementptr inbounds %struct.gpmc_device, ptr %55, i32 0, i32 3
  %264 = call ptr @gpiochip_request_own_desc(ptr noundef %263, i32 noundef %262, ptr noundef nonnull @.str.90, i32 noundef 0, i32 noundef 1) #9
  %265 = icmp ugt ptr %264, inttoptr (i32 -4096 to ptr)
  br i1 %265, label %315, label %266

266:                                              ; preds = %261, %255
  %267 = phi ptr [ null, %255 ], [ %264, %261 ]
  %268 = load i32, ptr %6, align 4
  %269 = call i32 @gpmc_cs_program_settings(i32 noundef %268, ptr noundef nonnull %2) #9
  %270 = icmp slt i32 %269, 0
  br i1 %270, label %306, label %271

271:                                              ; preds = %266
  %272 = load i32, ptr %6, align 4
  %273 = call i32 @gpmc_cs_set_timings(i32 noundef %272, ptr noundef nonnull %3, ptr noundef nonnull %2) #9
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %275, label %302

275:                                              ; preds = %271
  %276 = load ptr, ptr @gpmc_base, align 4
  %277 = getelementptr i8, ptr %276, i32 80
  %278 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %277) #9, !srcloc !10
  %279 = and i32 %278, -3
  store i32 %279, ptr %7, align 4
  %280 = load ptr, ptr @gpmc_base, align 4
  %281 = getelementptr i8, ptr %280, i32 80
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %281, i32 %279) #9, !srcloc !8
  %282 = load i32, ptr %6, align 4
  %283 = load ptr, ptr @gpmc_base, align 4
  %284 = mul i32 %282, 48
  %285 = getelementptr i8, ptr %283, i32 120
  %286 = getelementptr i8, ptr %285, i32 %284
  %287 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %286) #9, !srcloc !10
  %288 = or i32 %287, 64
  %289 = load ptr, ptr @gpmc_base, align 4
  %290 = getelementptr i8, ptr %289, i32 120
  %291 = getelementptr i8, ptr %290, i32 %284
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %291, i32 %288) #9, !srcloc !8
  br label %292

292:                                              ; preds = %275, %136, %68
  %293 = phi ptr [ null, %68 ], [ %267, %275 ], [ null, %136 ]
  %294 = call ptr @of_platform_device_create(ptr noundef %54, ptr noundef null, ptr noundef %8) #9
  %295 = icmp eq ptr %294, null
  br i1 %295, label %302, label %296

296:                                              ; preds = %292
  %297 = call ptr @of_match_node(ptr noundef nonnull @of_default_bus_match_table, ptr noundef %54) #9
  %298 = icmp eq ptr %297, null
  br i1 %298, label %311, label %299

299:                                              ; preds = %296
  %300 = call i32 @of_platform_default_populate(ptr noundef %54, ptr noundef null, ptr noundef %8) #9
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %311, label %302

302:                                              ; preds = %299, %292, %271
  %303 = phi ptr [ @.str.93, %271 ], [ @.str.94, %299 ], [ @.str.94, %292 ]
  %304 = phi i32 [ %273, %271 ], [ -19, %299 ], [ -19, %292 ]
  %305 = phi ptr [ %267, %271 ], [ %293, %299 ], [ %293, %292 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull %303, ptr noundef %54) #10
  br label %306

306:                                              ; preds = %302, %266
  %307 = phi i32 [ %269, %266 ], [ %304, %302 ]
  %308 = phi ptr [ %267, %266 ], [ %305, %302 ]
  call void @gpiochip_free_own_desc(ptr noundef %308) #9
  br label %312

309:                                              ; preds = %81, %62, %58
  %310 = phi i32 [ %78, %81 ], [ -19, %62 ], [ -19, %58 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #9
  br label %318

311:                                              ; preds = %299, %296
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #9
  br label %320

312:                                              ; preds = %306, %254, %238, %230, %224, %217, %214, %212
  %313 = phi i32 [ -22, %224 ], [ -22, %230 ], [ %249, %254 ], [ -22, %238 ], [ %208, %214 ], [ %208, %217 ], [ %208, %212 ], [ %307, %306 ]
  %314 = load i32, ptr %6, align 4
  call void @gpmc_cs_free(i32 noundef %314) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #9
  br label %318

315:                                              ; preds = %261
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.91, i32 noundef %262) #10
  %316 = ptrtoint ptr %264 to i32
  %317 = load i32, ptr %6, align 4
  call void @gpmc_cs_free(i32 noundef %317) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #9
  br label %318

318:                                              ; preds = %315, %312, %309
  %319 = phi i32 [ %310, %309 ], [ %316, %315 ], [ %313, %312 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.71, ptr noundef nonnull %54, i32 noundef %319) #10
  br label %320

320:                                              ; preds = %318, %311
  %321 = load ptr, ptr %9, align 8
  %322 = call ptr @of_get_next_available_child(ptr noundef %321, ptr noundef nonnull %54) #9
  %323 = icmp eq ptr %322, null
  br i1 %323, label %324, label %53

324:                                              ; preds = %320, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_gpmc_context_notifier(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -448
  %5 = getelementptr i8, ptr %0, i32 300
  %6 = load i8, ptr %5, align 4
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %3
  %10 = load ptr, ptr %4, align 4
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 11, i32 18
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 11, i32 15
  %16 = load i16, ptr %15, align 8
  %17 = and i16 %16, 7
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14, %9
  switch i32 %1, label %22 [
    i32 3, label %20
    i32 5, label %21
  ]

20:                                               ; preds = %19
  tail call fastcc void @omap3_gpmc_save_context(ptr noundef %4)
  br label %22

21:                                               ; preds = %19
  tail call fastcc void @omap3_gpmc_restore_context(ptr noundef %4)
  br label %22

22:                                               ; preds = %21, %20, %19, %14, %3
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_register_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gpmc_mem_exit() unnamed_addr #0 {
  %1 = load i32, ptr @gpmc_cs_num, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %22, label %3

3:                                                ; preds = %18, %0
  %4 = phi i32 [ %19, %18 ], [ 0, %0 ]
  %5 = load ptr, ptr @gpmc_base, align 4
  %6 = mul i32 %4, 48
  %7 = getelementptr i8, ptr %5, i32 120
  %8 = getelementptr i8, ptr %7, i32 %6
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !10
  %10 = and i32 %9, 64
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = getelementptr [8 x %struct.gpmc_cs_data], ptr @gpmc_cs, i32 0, i32 %4, i32 2
  tail call void @_raw_spin_lock(ptr noundef nonnull @gpmc_mem_lock) #9
  %14 = tail call i32 @release_resource(ptr noundef %13) #9
  store i32 0, ptr %13, align 4
  %15 = getelementptr [8 x %struct.gpmc_cs_data], ptr @gpmc_cs, i32 0, i32 %4, i32 2, i32 1
  store i32 0, ptr %15, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  %16 = load i16, ptr @gpmc_mem_lock, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr @gpmc_mem_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %18

18:                                               ; preds = %12, %3
  %19 = add nuw i32 %4, 1
  %20 = load i32, ptr @gpmc_cs_num, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %3, label %22

22:                                               ; preds = %18, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_resource(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @gpmc_gpio_get_direction(ptr nocapture noundef readnone %0, i32 noundef %1) #7 {
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @gpmc_gpio_direction_input(ptr nocapture noundef readnone %0, i32 noundef %1) #7 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @gpmc_gpio_direction_output(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) #7 {
  ret i32 -22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @gpmc_gpio_set(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #7 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpmc_gpio_get(ptr nocapture noundef readnone %0, i32 noundef %1) #0 {
  %3 = add i32 %1, 8
  %4 = load ptr, ptr @gpmc_base, align 4
  %5 = getelementptr i8, ptr %4, i32 84
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !10
  %7 = lshr i32 %6, %3
  %8 = and i32 %7, 1
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gpmc_irq_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = icmp ugt i32 %3, 1
  %5 = add i32 %3, 6
  %6 = select i1 %4, i32 %5, i32 %3
  %7 = load ptr, ptr @gpmc_base, align 4
  %8 = getelementptr i8, ptr %7, i32 28
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !10
  %10 = shl nuw i32 1, %6
  %11 = or i32 %10, %9
  %12 = load ptr, ptr @gpmc_base, align 4
  %13 = getelementptr i8, ptr %12, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #9, !srcloc !8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gpmc_irq_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = icmp ugt i32 %3, 1
  %5 = add i32 %3, 6
  %6 = select i1 %4, i32 %5, i32 %3
  %7 = load ptr, ptr @gpmc_base, align 4
  %8 = getelementptr i8, ptr %7, i32 28
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !10
  %10 = shl nuw i32 1, %6
  %11 = xor i32 %10, -1
  %12 = and i32 %9, %11
  %13 = load ptr, ptr @gpmc_base, align 4
  %14 = getelementptr i8, ptr %13, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #9, !srcloc !8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gpmc_irq_ack(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = icmp ugt i32 %3, 1
  %5 = add i32 %3, 6
  %6 = select i1 %4, i32 %5, i32 %3
  %7 = shl nuw i32 1, %6
  %8 = load ptr, ptr @gpmc_base, align 4
  %9 = getelementptr i8, ptr %8, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #9, !srcloc !8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gpmc_irq_mask(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = icmp ugt i32 %3, 1
  %5 = add i32 %3, 6
  %6 = select i1 %4, i32 %5, i32 %3
  %7 = load ptr, ptr @gpmc_base, align 4
  %8 = getelementptr i8, ptr %7, i32 28
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !10
  %10 = shl nuw i32 1, %6
  %11 = xor i32 %10, -1
  %12 = and i32 %9, %11
  %13 = load ptr, ptr @gpmc_base, align 4
  %14 = getelementptr i8, ptr %13, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #9, !srcloc !8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gpmc_irq_unmask(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = icmp ugt i32 %3, 1
  %5 = add i32 %3, 6
  %6 = select i1 %4, i32 %5, i32 %3
  %7 = load ptr, ptr @gpmc_base, align 4
  %8 = getelementptr i8, ptr %7, i32 28
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !10
  %10 = shl nuw i32 1, %6
  %11 = or i32 %10, %9
  %12 = load ptr, ptr @gpmc_base, align 4
  %13 = getelementptr i8, ptr %12, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #9, !srcloc !8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpmc_irq_set_type(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %26, label %6

6:                                                ; preds = %2
  switch i32 %1, label %26 [
    i32 2, label %7
    i32 1, label %16
  ]

7:                                                ; preds = %6
  %8 = add i32 %4, 6
  %9 = load ptr, ptr @gpmc_base, align 4
  %10 = getelementptr i8, ptr %9, i32 80
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #9, !srcloc !10
  %12 = shl nuw i32 1, %8
  %13 = or i32 %11, %12
  %14 = load ptr, ptr @gpmc_base, align 4
  %15 = getelementptr i8, ptr %14, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #9, !srcloc !8
  br label %26

16:                                               ; preds = %6
  %17 = add i32 %4, 6
  %18 = load ptr, ptr @gpmc_base, align 4
  %19 = getelementptr i8, ptr %18, i32 80
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #9, !srcloc !10
  %21 = shl nuw i32 1, %17
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  %24 = load ptr, ptr @gpmc_base, align 4
  %25 = getelementptr i8, ptr %24, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #9, !srcloc !8
  br label %26

26:                                               ; preds = %16, %7, %6, %2
  %27 = phi i32 [ -22, %2 ], [ -22, %6 ], [ 0, %16 ], [ 0, %7 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpmc_handle_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = load ptr, ptr @gpmc_base, align 4
  %5 = getelementptr i8, ptr %4, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !10
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %41, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.gpmc_device, ptr %1, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %38

12:                                               ; preds = %34, %8
  %13 = phi i32 [ %35, %34 ], [ %10, %8 ]
  %14 = phi i32 [ %18, %34 ], [ %6, %8 ]
  %15 = phi i32 [ %36, %34 ], [ 0, %8 ]
  %16 = icmp eq i32 %15, 2
  %17 = lshr i32 %14, 6
  %18 = select i1 %16, i32 %17, i32 %14
  %19 = shl nuw i32 1, %15
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %12
  %23 = load ptr, ptr @gpmc_irq_domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !15
  %24 = call ptr @__irq_resolve_mapping(ptr noundef %23, i32 noundef %15, ptr noundef nonnull %3) #9
  %25 = icmp eq ptr %24, null
  %26 = load i32, ptr %3, align 4
  %27 = select i1 %25, i32 0, i32 %26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %30, ptr noundef nonnull @.str.70, i32 noundef %15, i32 noundef 0) #10
  br label %31

31:                                               ; preds = %29, %22
  %32 = call i32 @generic_handle_irq(i32 noundef %27) #9
  %33 = load i32, ptr %9, align 4
  br label %34

34:                                               ; preds = %31, %12
  %35 = phi i32 [ %13, %12 ], [ %33, %31 ]
  %36 = add nuw nsw i32 %15, 1
  %37 = icmp slt i32 %36, %35
  br i1 %37, label %12, label %38

38:                                               ; preds = %34, %8
  %39 = load ptr, ptr @gpmc_base, align 4
  %40 = getelementptr i8, ptr %39, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %6) #9, !srcloc !8
  br label %41

41:                                               ; preds = %38, %2
  %42 = phi i32 [ 1, %38 ], [ 0, %2 ]
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpmc_irq_map(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @irq_set_chip_data(i32 noundef %1, ptr noundef %5) #9
  %7 = icmp ult i32 %2, 2
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @irq_modify_status(i32 noundef %1, i32 noundef 2048, i32 noundef 4096) #9
  br label %9

9:                                                ; preds = %8, %3
  %10 = phi ptr [ @handle_simple_irq, %8 ], [ @handle_edge_irq, %3 ]
  %11 = getelementptr inbounds %struct.gpmc_device, ptr %5, i32 0, i32 2
  tail call void @irq_set_chip_and_handler_name(i32 noundef %1, ptr noundef %11, ptr noundef nonnull %10, ptr noundef null) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_twocell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_request_own_desc(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_platform_device_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_default_populate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_free_own_desc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @omap3_gpmc_save_context(ptr noundef writeonly %0) unnamed_addr #0 {
  %2 = icmp ne ptr %0, null
  %3 = load ptr, ptr @gpmc_base, align 4
  %4 = icmp ne ptr %3, null
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %86

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.gpmc_device, ptr %0, i32 0, i32 5
  %8 = getelementptr i8, ptr %3, i32 16
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !10
  store i32 %9, ptr %7, align 4
  %10 = load ptr, ptr @gpmc_base, align 4
  %11 = getelementptr i8, ptr %10, i32 28
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #9, !srcloc !10
  %13 = getelementptr inbounds %struct.gpmc_device, ptr %0, i32 0, i32 5, i32 1
  store i32 %12, ptr %13, align 4
  %14 = load ptr, ptr @gpmc_base, align 4
  %15 = getelementptr i8, ptr %14, i32 64
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #9, !srcloc !10
  %17 = getelementptr inbounds %struct.gpmc_device, ptr %0, i32 0, i32 5, i32 2
  store i32 %16, ptr %17, align 4
  %18 = load ptr, ptr @gpmc_base, align 4
  %19 = getelementptr i8, ptr %18, i32 80
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #9, !srcloc !10
  %21 = getelementptr inbounds %struct.gpmc_device, ptr %0, i32 0, i32 5, i32 3
  store i32 %20, ptr %21, align 4
  %22 = load ptr, ptr @gpmc_base, align 4
  %23 = getelementptr i8, ptr %22, i32 480
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #9, !srcloc !10
  %25 = getelementptr inbounds %struct.gpmc_device, ptr %0, i32 0, i32 5, i32 4
  store i32 %24, ptr %25, align 4
  %26 = load ptr, ptr @gpmc_base, align 4
  %27 = getelementptr i8, ptr %26, i32 484
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #9, !srcloc !10
  %29 = getelementptr inbounds %struct.gpmc_device, ptr %0, i32 0, i32 5, i32 5
  store i32 %28, ptr %29, align 4
  %30 = load ptr, ptr @gpmc_base, align 4
  %31 = getelementptr i8, ptr %30, i32 492
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #9, !srcloc !10
  %33 = getelementptr inbounds %struct.gpmc_device, ptr %0, i32 0, i32 5, i32 6
  store i32 %32, ptr %33, align 4
  %34 = load i32, ptr @gpmc_cs_num, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %86, label %36

36:                                               ; preds = %82, %6
  %37 = phi i32 [ %83, %82 ], [ 0, %6 ]
  %38 = load ptr, ptr @gpmc_base, align 4
  %39 = mul i32 %37, 48
  %40 = getelementptr i8, ptr %38, i32 120
  %41 = getelementptr i8, ptr %40, i32 %39
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #9, !srcloc !10
  %43 = and i32 %42, 64
  %44 = getelementptr %struct.gpmc_device, ptr %0, i32 0, i32 5, i32 7, i32 %37, i32 7
  store i32 %43, ptr %44, align 4
  %45 = icmp eq i32 %43, 0
  br i1 %45, label %82, label %46

46:                                               ; preds = %36
  %47 = getelementptr %struct.gpmc_device, ptr %0, i32 0, i32 5, i32 7, i32 %37
  %48 = load ptr, ptr @gpmc_base, align 4
  %49 = getelementptr i8, ptr %48, i32 96
  %50 = getelementptr i8, ptr %49, i32 %39
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #9, !srcloc !10
  store i32 %51, ptr %47, align 4
  %52 = load ptr, ptr @gpmc_base, align 4
  %53 = getelementptr i8, ptr %52, i32 100
  %54 = getelementptr i8, ptr %53, i32 %39
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #9, !srcloc !10
  %56 = getelementptr %struct.gpmc_device, ptr %0, i32 0, i32 5, i32 7, i32 %37, i32 1
  store i32 %55, ptr %56, align 4
  %57 = load ptr, ptr @gpmc_base, align 4
  %58 = getelementptr i8, ptr %57, i32 104
  %59 = getelementptr i8, ptr %58, i32 %39
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #9, !srcloc !10
  %61 = getelementptr %struct.gpmc_device, ptr %0, i32 0, i32 5, i32 7, i32 %37, i32 2
  store i32 %60, ptr %61, align 4
  %62 = load ptr, ptr @gpmc_base, align 4
  %63 = getelementptr i8, ptr %62, i32 108
  %64 = getelementptr i8, ptr %63, i32 %39
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #9, !srcloc !10
  %66 = getelementptr %struct.gpmc_device, ptr %0, i32 0, i32 5, i32 7, i32 %37, i32 3
  store i32 %65, ptr %66, align 4
  %67 = load ptr, ptr @gpmc_base, align 4
  %68 = getelementptr i8, ptr %67, i32 112
  %69 = getelementptr i8, ptr %68, i32 %39
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #9, !srcloc !10
  %71 = getelementptr %struct.gpmc_device, ptr %0, i32 0, i32 5, i32 7, i32 %37, i32 4
  store i32 %70, ptr %71, align 4
  %72 = load ptr, ptr @gpmc_base, align 4
  %73 = getelementptr i8, ptr %72, i32 116
  %74 = getelementptr i8, ptr %73, i32 %39
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #9, !srcloc !10
  %76 = getelementptr %struct.gpmc_device, ptr %0, i32 0, i32 5, i32 7, i32 %37, i32 5
  store i32 %75, ptr %76, align 4
  %77 = load ptr, ptr @gpmc_base, align 4
  %78 = getelementptr i8, ptr %77, i32 120
  %79 = getelementptr i8, ptr %78, i32 %39
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #9, !srcloc !10
  %81 = getelementptr %struct.gpmc_device, ptr %0, i32 0, i32 5, i32 7, i32 %37, i32 6
  store i32 %80, ptr %81, align 4
  br label %82

82:                                               ; preds = %46, %36
  %83 = add nuw i32 %37, 1
  %84 = load i32, ptr @gpmc_cs_num, align 4
  %85 = icmp ult i32 %83, %84
  br i1 %85, label %36, label %86

86:                                               ; preds = %82, %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @omap3_gpmc_restore_context(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = icmp ne ptr %0, null
  %3 = load ptr, ptr @gpmc_base, align 4
  %4 = icmp ne ptr %3, null
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %87

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.gpmc_device, ptr %0, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr i8, ptr %3, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %8) #9, !srcloc !8
  %10 = getelementptr inbounds %struct.gpmc_device, ptr %0, i32 0, i32 5, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = load ptr, ptr @gpmc_base, align 4
  %13 = getelementptr i8, ptr %12, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #9, !srcloc !8
  %14 = getelementptr inbounds %struct.gpmc_device, ptr %0, i32 0, i32 5, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr @gpmc_base, align 4
  %17 = getelementptr i8, ptr %16, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #9, !srcloc !8
  %18 = getelementptr inbounds %struct.gpmc_device, ptr %0, i32 0, i32 5, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = load ptr, ptr @gpmc_base, align 4
  %21 = getelementptr i8, ptr %20, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #9, !srcloc !8
  %22 = getelementptr inbounds %struct.gpmc_device, ptr %0, i32 0, i32 5, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = load ptr, ptr @gpmc_base, align 4
  %25 = getelementptr i8, ptr %24, i32 480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #9, !srcloc !8
  %26 = getelementptr inbounds %struct.gpmc_device, ptr %0, i32 0, i32 5, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = load ptr, ptr @gpmc_base, align 4
  %29 = getelementptr i8, ptr %28, i32 484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #9, !srcloc !8
  %30 = getelementptr inbounds %struct.gpmc_device, ptr %0, i32 0, i32 5, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = load ptr, ptr @gpmc_base, align 4
  %33 = getelementptr i8, ptr %32, i32 492
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #9, !srcloc !8
  %34 = load i32, ptr @gpmc_cs_num, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %87, label %36

36:                                               ; preds = %83, %6
  %37 = phi i32 [ %84, %83 ], [ 0, %6 ]
  %38 = getelementptr %struct.gpmc_device, ptr %0, i32 0, i32 5, i32 7, i32 %37, i32 7
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %78, label %41

41:                                               ; preds = %36
  %42 = getelementptr %struct.gpmc_device, ptr %0, i32 0, i32 5, i32 7, i32 %37
  %43 = load i32, ptr %42, align 4
  %44 = load ptr, ptr @gpmc_base, align 4
  %45 = getelementptr i8, ptr %44, i32 96
  %46 = mul i32 %37, 48
  %47 = getelementptr i8, ptr %45, i32 %46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %43) #9, !srcloc !8
  %48 = getelementptr %struct.gpmc_device, ptr %0, i32 0, i32 5, i32 7, i32 %37, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = load ptr, ptr @gpmc_base, align 4
  %51 = getelementptr i8, ptr %50, i32 100
  %52 = getelementptr i8, ptr %51, i32 %46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %49) #9, !srcloc !8
  %53 = getelementptr %struct.gpmc_device, ptr %0, i32 0, i32 5, i32 7, i32 %37, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = load ptr, ptr @gpmc_base, align 4
  %56 = getelementptr i8, ptr %55, i32 104
  %57 = getelementptr i8, ptr %56, i32 %46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %54) #9, !srcloc !8
  %58 = getelementptr %struct.gpmc_device, ptr %0, i32 0, i32 5, i32 7, i32 %37, i32 3
  %59 = load i32, ptr %58, align 4
  %60 = load ptr, ptr @gpmc_base, align 4
  %61 = getelementptr i8, ptr %60, i32 108
  %62 = getelementptr i8, ptr %61, i32 %46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %59) #9, !srcloc !8
  %63 = getelementptr %struct.gpmc_device, ptr %0, i32 0, i32 5, i32 7, i32 %37, i32 4
  %64 = load i32, ptr %63, align 4
  %65 = load ptr, ptr @gpmc_base, align 4
  %66 = getelementptr i8, ptr %65, i32 112
  %67 = getelementptr i8, ptr %66, i32 %46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %64) #9, !srcloc !8
  %68 = getelementptr %struct.gpmc_device, ptr %0, i32 0, i32 5, i32 7, i32 %37, i32 5
  %69 = load i32, ptr %68, align 4
  %70 = load ptr, ptr @gpmc_base, align 4
  %71 = getelementptr i8, ptr %70, i32 116
  %72 = getelementptr i8, ptr %71, i32 %46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %69) #9, !srcloc !8
  %73 = getelementptr %struct.gpmc_device, ptr %0, i32 0, i32 5, i32 7, i32 %37, i32 6
  %74 = load i32, ptr %73, align 4
  %75 = load ptr, ptr @gpmc_base, align 4
  %76 = getelementptr i8, ptr %75, i32 120
  %77 = getelementptr i8, ptr %76, i32 %46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %74) #9, !srcloc !8
  br label %83

78:                                               ; preds = %36
  %79 = load ptr, ptr @gpmc_base, align 4
  %80 = mul i32 %37, 48
  %81 = getelementptr i8, ptr %79, i32 120
  %82 = getelementptr i8, ptr %81, i32 %80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 0) #9, !srcloc !8
  br label %83

83:                                               ; preds = %78, %41
  %84 = add nuw i32 %37, 1
  %85 = load i32, ptr @gpmc_cs_num, align 4
  %86 = icmp ult i32 %84, %85
  br i1 %86, label %36, label %87

87:                                               ; preds = %83, %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_unregister_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpmc_suspend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call fastcc void @omap3_gpmc_save_context(ptr noundef %3)
  %4 = tail call i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef 4) #9
  %5 = getelementptr inbounds %struct.gpmc_device, ptr %3, i32 0, i32 7
  %6 = load i8, ptr %5, align 4
  %7 = or i8 %6, 1
  store i8 %7, ptr %5, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpmc_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #9
  tail call fastcc void @omap3_gpmc_restore_context(ptr noundef %3)
  %5 = getelementptr inbounds %struct.gpmc_device, ptr %3, i32 0, i32 7
  %6 = load i8, ptr %5, align 4
  %7 = and i8 %6, -2
  store i8 %7, ptr %5, align 4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!8 = !{i64 2531596}
!9 = !{i8 0, i8 2}
!10 = !{i64 2532014}
!11 = !{i64 2148922926}
!12 = !{i64 2148918750}
!13 = !{i64 2148918825, i64 2148918852, i64 2148918899, i64 2148918921, i64 2148918949, i64 2148918969}
!14 = !{i64 2148945929}
!15 = !{!"auto-init"}
