; ModuleID = '/llk/IR/drivers/dma/ste_dma40.c_pt.bc'
source_filename = "../drivers/dma/ste_dma40.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stedma40_filter:\09\09\09\09\09"
module asm "\09.asciz \09\22stedma40_filter\22\09\09\09\09\09"
module asm "__kstrtabns_stedma40_filter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.stedma40_chan_cfg = type { i32, i8, i8, i32, i32, i32, %struct.stedma40_half_channel_info, %struct.stedma40_half_channel_info, i8, i32 }
%struct.stedma40_half_channel_info = type { i8, i32, i32, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.d40_interrupt_lookup = type { i32, i32, i8, i32 }
%struct.d40_reg_val = type { i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
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
%struct.d40_base = type { %struct.spinlock, %struct.spinlock, ptr, ptr, i8, ptr, i32, i32, i32, i32, i32, i32, %struct.dma_device, %struct.dma_device, %struct.dma_device, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.d40_lcla_pool, ptr, i32, i32, ptr, [6 x i32], [20 x i32], ptr, ptr, i16, %struct.d40_gen_dmac }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.d40_lcla_pool = type { ptr, i32, ptr, i32, %struct.spinlock, ptr }
%struct.d40_gen_dmac = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.stedma40_platform_data = type { [32 x i32], ptr, i32, i8, i32, i32 }
%struct.d40_phy_res = type { %struct.spinlock, i8, i32, i32, i32, i8 }
%struct.d40_chan = type { %struct.spinlock, i32, i32, i8, ptr, %struct.dma_chan, %struct.tasklet_struct, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.stedma40_chan_cfg, %struct.dma_slave_config, i8, ptr, i32, i32, %struct.d40_def_lcsp, ptr, i32, i32 }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.d40_def_lcsp = type { i32, i32 }
%struct.page = type { i32, %union.anon.1, %union.anon.66, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }
%struct.d40_log_lli_full = type { i32, i32, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.d40_phy_lli_bidir = type { ptr, ptr }
%struct.d40_phy_lli = type { i32, i32, i32, i32 }
%struct.d40_desc = type { %struct.d40_phy_lli_bidir, %struct.d40_log_lli_bidir, %struct.d40_lli_pool, i32, i32, i32, %struct.dma_async_tx_descriptor, %struct.list_head, i8, i8 }
%struct.d40_log_lli_bidir = type { ptr, ptr }
%struct.d40_lli_pool = type { ptr, i32, i32, [48 x i8] }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.d40_log_lli = type { i32, i32 }
%struct.dmaengine_result = type { i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }

@__kstrtab_stedma40_filter = external dso_local constant [0 x i8], align 1
@__kstrtabns_stedma40_filter = external dso_local constant [0 x i8], align 1
@__ksymtab_stedma40_filter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stedma40_filter to i32), ptr @__kstrtab_stedma40_filter, ptr @__kstrtabns_stedma40_filter }, section "___ksymtab+stedma40_filter", align 4
@__initcall__kmod_ste_dma40__260_3724_stedma40_init4 = internal global ptr @stedma40_init, section ".initcall4.init", align 4
@.str = private unnamed_addr constant [25 x i8] c"[%s] Invalid direction.\0A\00", align 1
@__func__.d40_validate_conf = private unnamed_addr constant [18 x i8] c"d40_validate_conf\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"[%s] Invalid device type (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"[%s] periph to periph not supported\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"[%s] src (burst x width) != dst (burst x width)\0A\00", align 1
@dma40_memcpy_conf_log = internal unnamed_addr constant %struct.stedma40_chan_cfg { i32 0, i8 0, i8 0, i32 0, i32 0, i32 0, %struct.stedma40_half_channel_info { i8 0, i32 1, i32 0, i32 0 }, %struct.stedma40_half_channel_info { i8 0, i32 1, i32 0, i32 0 }, i8 0, i32 0 }, align 4
@dma40_memcpy_channels = internal global [6 x i32] [i32 51, i32 56, i32 57, i32 58, i32 59, i32 60], align 4
@dma40_memcpy_conf_phy = internal unnamed_addr constant %struct.stedma40_chan_cfg { i32 0, i8 0, i8 0, i32 1, i32 0, i32 0, %struct.stedma40_half_channel_info { i8 0, i32 1, i32 4, i32 0 }, %struct.stedma40_half_channel_info { i8 0, i32 1, i32 4, i32 0 }, i8 0, i32 0 }, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"[%s] No memcpy\0A\00", align 1
@__func__.d40_config_memcpy = private unnamed_addr constant [18 x i8] c"d40_config_memcpy\00", align 1
@d40_driver = internal global %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.5, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @d40_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dma40_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"dma40\00", align 1
@d40_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"stericsson,dma40\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@dma40_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dma40_suspend, ptr @dma40_resume, ptr @dma40_suspend, ptr @dma40_resume, ptr @dma40_suspend, ptr @dma40_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dma40_runtime_suspend, ptr @dma40_runtime_resume, ptr null }, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"[%s] No pdata or Device Tree provided\0A\00", align 1
@__func__.d40_probe = private unnamed_addr constant [10 x i8] c"d40_probe\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"lcpa\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"[%s] No \22lcpa\22 memory resource\0A\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"dma40 I/O lcpa\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"[%s] Failed to request LCPA region %pR\0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"[%s] Mismatch LCPA dma 0x%x, def %pa\0A\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"[%s] Failed to ioremap LCPA region\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"lcla_esram\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"[%s] No \22lcla_esram\22 memory resource\0A\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"[%s] Failed to ioremap LCLA region\0A\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"[%s] Failed to allocate LCLA area\0A\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"[%s] No IRQ defined\0A\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"[%s] Failed to get lcpa_regulator\0A\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"[%s] Failed to enable lcpa_regulator\0A\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"[%s] Failed to set dma max seg size\0A\00", align 1
@.str.21 = private unnamed_addr constant [38 x i8] c"could not register of_dma_controller\0A\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"initialized\0A\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"[%s] probe failed\0A\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"dma-channels\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"memcpy-channels\00", align 1
@.str.26 = private unnamed_addr constant [55 x i8] c"[%s] Invalid number of memcpy channels specified (%d)\0A\00", align 1
@__func__.d40_of_probe = private unnamed_addr constant [13 x i8] c"d40_of_probe\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"disabled-channels\00", align 1
@.str.28 = private unnamed_addr constant [57 x i8] c"[%s] Invalid number of disabled channels specified (%d)\0A\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"[%s] No matching clock found\0A\00", align 1
@__func__.d40_hw_detect_init = private unnamed_addr constant [19 x i8] c"d40_hw_detect_init\00", align 1
@.str.30 = private unnamed_addr constant [37 x i8] c"[%s] Failed to prepare/enable clock\0A\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"dma40 I/O base\00", align 1
@.str.33 = private unnamed_addr constant [40 x i8] c"[%s] Unknown hardware! No PrimeCell ID\0A\00", align 1
@.str.34 = private unnamed_addr constant [41 x i8] c"[%s] Unknown designer! Got %x wanted %x\0A\00", align 1
@.str.35 = private unnamed_addr constant [44 x i8] c"[%s] hardware revision: %d is not supported\00", align 1
@.str.36 = private unnamed_addr constant [65 x i8] c"hardware rev: %d @ %pa with %d physical and %d logical channels\0A\00", align 1
@d40_backup_regs_v4b = internal global [20 x i32] [i32 512, i32 516, i32 520, i32 524, i32 528, i32 544, i32 548, i32 552, i32 556, i32 560, i32 576, i32 580, i32 584, i32 588, i32 592, i32 608, i32 612, i32 616, i32 620, i32 624], align 4
@il_v4b = internal global [12 x %struct.d40_interrupt_lookup] [%struct.d40_interrupt_lookup { i32 832, i32 800, i8 0, i32 0 }, %struct.d40_interrupt_lookup { i32 836, i32 804, i8 0, i32 32 }, %struct.d40_interrupt_lookup { i32 840, i32 808, i8 0, i32 64 }, %struct.d40_interrupt_lookup { i32 844, i32 812, i8 0, i32 96 }, %struct.d40_interrupt_lookup { i32 848, i32 816, i8 0, i32 128 }, %struct.d40_interrupt_lookup { i32 864, i32 800, i8 1, i32 0 }, %struct.d40_interrupt_lookup { i32 868, i32 804, i8 1, i32 32 }, %struct.d40_interrupt_lookup { i32 872, i32 808, i8 1, i32 64 }, %struct.d40_interrupt_lookup { i32 876, i32 812, i8 1, i32 96 }, %struct.d40_interrupt_lookup { i32 880, i32 816, i8 1, i32 128 }, %struct.d40_interrupt_lookup { i32 904, i32 900, i8 0, i32 -1 }, %struct.d40_interrupt_lookup { i32 908, i32 900, i8 1, i32 -1 }], align 4
@dma_init_reg_v4b = internal global [16 x %struct.d40_reg_val] [%struct.d40_reg_val { i32 0, i32 261889 }, %struct.d40_reg_val { i32 768, i32 -1 }, %struct.d40_reg_val { i32 772, i32 -1 }, %struct.d40_reg_val { i32 776, i32 -1 }, %struct.d40_reg_val { i32 780, i32 -1 }, %struct.d40_reg_val { i32 784, i32 -1 }, %struct.d40_reg_val { i32 800, i32 -1 }, %struct.d40_reg_val { i32 804, i32 -1 }, %struct.d40_reg_val { i32 808, i32 -1 }, %struct.d40_reg_val { i32 812, i32 -1 }, %struct.d40_reg_val { i32 816, i32 -1 }, %struct.d40_reg_val { i32 832, i32 -1 }, %struct.d40_reg_val { i32 836, i32 -1 }, %struct.d40_reg_val { i32 840, i32 -1 }, %struct.d40_reg_val { i32 844, i32 -1 }, %struct.d40_reg_val { i32 848, i32 -1 }], section ".init.data", align 4
@d40_backup_regs_v4a = internal global [16 x i32] [i32 272, i32 276, i32 280, i32 284, i32 288, i32 292, i32 296, i32 300, i32 304, i32 308, i32 312, i32 316, i32 320, i32 324, i32 328, i32 332], align 4
@il_v4a = internal global [10 x %struct.d40_interrupt_lookup] [%struct.d40_interrupt_lookup { i32 160, i32 144, i8 0, i32 0 }, %struct.d40_interrupt_lookup { i32 164, i32 148, i8 0, i32 32 }, %struct.d40_interrupt_lookup { i32 168, i32 152, i8 0, i32 64 }, %struct.d40_interrupt_lookup { i32 172, i32 156, i8 0, i32 96 }, %struct.d40_interrupt_lookup { i32 176, i32 144, i8 1, i32 0 }, %struct.d40_interrupt_lookup { i32 180, i32 148, i8 1, i32 32 }, %struct.d40_interrupt_lookup { i32 184, i32 152, i8 1, i32 64 }, %struct.d40_interrupt_lookup { i32 188, i32 156, i8 1, i32 96 }, %struct.d40_interrupt_lookup { i32 104, i32 100, i8 0, i32 -1 }, %struct.d40_interrupt_lookup { i32 108, i32 100, i8 1, i32 -1 }], align 4
@dma_init_reg_v4a = internal global [13 x %struct.d40_reg_val] [%struct.d40_reg_val { i32 0, i32 261889 }, %struct.d40_reg_val { i32 128, i32 -1 }, %struct.d40_reg_val { i32 132, i32 -1 }, %struct.d40_reg_val { i32 136, i32 -1 }, %struct.d40_reg_val { i32 140, i32 -1 }, %struct.d40_reg_val { i32 144, i32 -1 }, %struct.d40_reg_val { i32 148, i32 -1 }, %struct.d40_reg_val { i32 152, i32 -1 }, %struct.d40_reg_val { i32 156, i32 -1 }, %struct.d40_reg_val { i32 160, i32 -1 }, %struct.d40_reg_val { i32 164, i32 -1 }, %struct.d40_reg_val { i32 168, i32 -1 }, %struct.d40_reg_val { i32 172, i32 -1 }], section ".init.data", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.37 = private unnamed_addr constant [42 x i8] c"%d of %d physical DMA channels available\0A\00", align 1
@.str.38 = private unnamed_addr constant [45 x i8] c"[%s] INFO: channel %d is misconfigured (%d)\0A\00", align 1
@__func__.d40_phy_res_init = private unnamed_addr constant [17 x i8] c"d40_phy_res_init\00", align 1
@.str.39 = private unnamed_addr constant [35 x i8] c"[%s] Failed to allocate %d pages.\0A\00", align 1
@__func__.d40_lcla_allocate = private unnamed_addr constant [18 x i8] c"d40_lcla_allocate\00", align 1
@.str.40 = private unnamed_addr constant [45 x i8] c"[%s] Failed to get %d pages @ 18 bit align.\0A\00", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.41 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.42 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.43 = private unnamed_addr constant [37 x i8] c"[%s] IRQ chan: %ld offset %d idx %d\0A\00", align 1
@__func__.d40_handle_interrupt = private unnamed_addr constant [21 x i8] c"d40_handle_interrupt\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.44 = private unnamed_addr constant [62 x i8] c"[%s] unable to stop the event_line chl %d (log: %d)status %x\0A\00", align 1
@__func__.__d40_config_set_event = private unnamed_addr constant [23 x i8] c"__d40_config_set_event\00", align 1
@.str.45 = private unnamed_addr constant [24 x i8] c"drivers/dma/ste_dma40.c\00", align 1
@.str.46 = private unnamed_addr constant [55 x i8] c"[%s] unable to suspend the chl %d (log: %d) status %x\0A\00", align 1
@__func__.__d40_execute_command_phy = private unnamed_addr constant [26 x i8] c"__d40_execute_command_phy\00", align 1
@.str.47 = private unnamed_addr constant [40 x i8] c"[%s] Failed to register slave channels\0A\00", align 1
@__func__.d40_dmaengine_init = private unnamed_addr constant [19 x i8] c"d40_dmaengine_init\00", align 1
@.str.48 = private unnamed_addr constant [46 x i8] c"[%s] Failed to register memcpy only channels\0A\00", align 1
@.str.49 = private unnamed_addr constant [63 x i8] c"[%s] Failed to register logical and physical capable channels\0A\00", align 1
@.str.50 = private unnamed_addr constant [41 x i8] c"[%s] Cannot prepare unallocated channel\0A\00", align 1
@__func__.d40_prep_sg = private unnamed_addr constant [12 x i8] c"d40_prep_sg\00", align 1
@.str.51 = private unnamed_addr constant [38 x i8] c"[%s] Failed to prepare %s sg job: %d\0A\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@.str.54 = private unnamed_addr constant [32 x i8] c"[%s] Channel is not allocated!\0A\00", align 1
@.str.55 = private unnamed_addr constant [35 x i8] c"unrecognized channel direction %d\0A\00", align 1
@.str.56 = private unnamed_addr constant [21 x i8] c"no address supplied\0A\00", align 1
@.str.57 = private unnamed_addr constant [49 x i8] c"src/dst width/maxburst mismatch: %d*%d != %d*%d\0A\00", align 1
@.str.58 = private unnamed_addr constant [21 x i8] c"[%s] Unaligned size\0A\00", align 1
@__func__.d40_prep_desc = private unnamed_addr constant [14 x i8] c"d40_prep_desc\00", align 1
@.str.59 = private unnamed_addr constant [29 x i8] c"[%s] Could not allocate lli\0A\00", align 1
@.str.60 = private unnamed_addr constant [41 x i8] c"[%s] Failed to configure memcpy channel\0A\00", align 1
@__func__.d40_alloc_chan_resources = private unnamed_addr constant [25 x i8] c"d40_alloc_chan_resources\00", align 1
@.str.61 = private unnamed_addr constant [33 x i8] c"[%s] Failed to allocate channel\0A\00", align 1
@.str.62 = private unnamed_addr constant [30 x i8] c"invalid fixed phy channel %d\0A\00", align 1
@.str.63 = private unnamed_addr constant [41 x i8] c"could not allocate fixed phy channel %d\0A\00", align 1
@d40_get_prmo.phy_map = internal unnamed_addr constant [3 x i32] [i32 1, i32 2, i32 3], align 4
@d40_get_prmo.log_map = internal unnamed_addr constant [5 x i32] [i32 3, i32 0, i32 0, i32 1, i32 2], align 4
@.str.64 = private unnamed_addr constant [38 x i8] c"[%s] Cannot free unallocated channel\0A\00", align 1
@__func__.d40_free_chan_resources = private unnamed_addr constant [24 x i8] c"d40_free_chan_resources\00", align 1
@.str.65 = private unnamed_addr constant [29 x i8] c"[%s] Failed to free channel\0A\00", align 1
@.str.66 = private unnamed_addr constant [18 x i8] c"[%s] phy == null\0A\00", align 1
@__func__.d40_free_dma = private unnamed_addr constant [13 x i8] c"d40_free_dma\00", align 1
@.str.67 = private unnamed_addr constant [27 x i8] c"[%s] channel already free\0A\00", align 1
@.str.68 = private unnamed_addr constant [24 x i8] c"[%s] Unknown direction\0A\00", align 1
@.str.69 = private unnamed_addr constant [18 x i8] c"[%s] stop failed\0A\00", align 1
@__func__.d40_issue_pending = private unnamed_addr constant [18 x i8] c"d40_issue_pending\00", align 1
@.str.70 = private unnamed_addr constant [48 x i8] c"[%s] Cannot read status of unallocated channel\0A\00", align 1
@__func__.d40_tx_status = private unnamed_addr constant [14 x i8] c"d40_tx_status\00", align 1
@__func__.d40_is_paused = private unnamed_addr constant [14 x i8] c"d40_is_paused\00", align 1
@__func__.d40_pause = private unnamed_addr constant [10 x i8] c"d40_pause\00", align 1
@__func__.d40_resume = private unnamed_addr constant [11 x i8] c"d40_resume\00", align 1
@__func__.d40_terminate_all = private unnamed_addr constant [18 x i8] c"d40_terminate_all\00", align 1
@.str.71 = private unnamed_addr constant [29 x i8] c"[%s] Failed to stop channel\0A\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__initcall__kmod_ste_dma40__260_3724_stedma40_init4, ptr @__ksymtab_stedma40_filter], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @stedma40_filter(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = icmp eq ptr %1, null
  br i1 %4, label %98, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %1, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  %9 = load i32, ptr %1, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %5
  %12 = getelementptr i8, ptr %0, i32 20
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dma_chan_dev, ptr %13, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.d40_validate_conf) #12
  br label %15

15:                                               ; preds = %11, %5
  %16 = phi i32 [ 0, %5 ], [ -22, %11 ]
  %17 = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %1, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr i8, ptr %0, i32 248
  %20 = load ptr, ptr %19, align 4
  br i1 %8, label %21, label %27

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.d40_base, ptr %20, i32 0, i32 11
  %23 = load i32, ptr %22, align 4
  %24 = icmp sgt i32 %18, %23
  %25 = icmp slt i32 %18, 0
  %26 = or i1 %25, %24
  br i1 %26, label %33, label %37

27:                                               ; preds = %15
  %28 = getelementptr inbounds %struct.d40_base, ptr %20, i32 0, i32 10
  %29 = load i32, ptr %28, align 4
  %30 = icmp sgt i32 %18, %29
  %31 = icmp slt i32 %18, 0
  %32 = or i1 %31, %30
  br i1 %32, label %33, label %37

33:                                               ; preds = %27, %21
  %34 = getelementptr i8, ptr %0, i32 20
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.dma_chan_dev, ptr %35, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.d40_validate_conf, i32 noundef %18) #12
  br label %37

37:                                               ; preds = %33, %27, %21
  %38 = phi i32 [ -22, %33 ], [ %16, %27 ], [ %16, %21 ]
  %39 = load i32, ptr %1, align 4
  %40 = icmp eq i32 %39, 3
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = getelementptr i8, ptr %0, i32 20
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.dma_chan_dev, ptr %43, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.d40_validate_conf) #12
  br label %45

45:                                               ; preds = %41, %37
  %46 = phi i32 [ -22, %41 ], [ %38, %37 ]
  %47 = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %1, i32 0, i32 6, i32 2
  %48 = load i32, ptr %47, align 4
  br i1 %8, label %49, label %59

49:                                               ; preds = %45
  %50 = icmp eq i32 %48, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %49
  %52 = shl i32 2, %48
  %53 = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %1, i32 0, i32 6, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = mul i32 %54, %52
  br label %69

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %1, i32 0, i32 6, i32 1
  %58 = load i32, ptr %57, align 4
  br label %69

59:                                               ; preds = %45
  %60 = icmp eq i32 %48, 4
  br i1 %60, label %61, label %64

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %1, i32 0, i32 6, i32 1
  %63 = load i32, ptr %62, align 4
  br label %74

64:                                               ; preds = %59
  %65 = shl i32 2, %48
  %66 = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %1, i32 0, i32 6, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = mul i32 %67, %65
  br label %74

69:                                               ; preds = %56, %51
  %70 = phi i32 [ %58, %56 ], [ %55, %51 ]
  %71 = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %1, i32 0, i32 7, i32 2
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %83, label %79

74:                                               ; preds = %64, %61
  %75 = phi i32 [ %63, %61 ], [ %68, %64 ]
  %76 = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %1, i32 0, i32 7, i32 2
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 4
  br i1 %78, label %83, label %79

79:                                               ; preds = %74, %69
  %80 = phi i32 [ %77, %74 ], [ %72, %69 ]
  %81 = phi i32 [ %75, %74 ], [ %70, %69 ]
  %82 = shl i32 2, %80
  br label %83

83:                                               ; preds = %79, %74, %69
  %84 = phi i32 [ %81, %79 ], [ %70, %69 ], [ %75, %74 ]
  %85 = phi i32 [ %82, %79 ], [ 1, %69 ], [ 1, %74 ]
  %86 = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %1, i32 0, i32 7, i32 1
  %87 = load i32, ptr %86, align 4
  %88 = mul i32 %87, %85
  %89 = icmp eq i32 %84, %88
  br i1 %89, label %94, label %90

90:                                               ; preds = %83
  %91 = getelementptr i8, ptr %0, i32 20
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.dma_chan_dev, ptr %92, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.d40_validate_conf) #12
  br label %141

94:                                               ; preds = %83
  %95 = icmp eq i32 %46, 0
  br i1 %95, label %96, label %141

96:                                               ; preds = %94
  %97 = getelementptr i8, ptr %0, i32 136
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(60) %97, ptr noundef nonnull align 4 dereferenceable(60) %1, i32 60, i1 false)
  br label %139

98:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  %99 = load ptr, ptr %0, align 4
  %100 = getelementptr inbounds %struct.dma_device, ptr %99, i32 0, i32 6
  %101 = load i32, ptr %100, align 4
  store i32 %101, ptr %3, align 4
  %102 = load volatile i32, ptr %3, align 4
  %103 = and i32 %102, 1
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %118, label %105

105:                                              ; preds = %98
  %106 = load volatile i32, ptr %3, align 4
  %107 = and i32 %106, 2048
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %105
  %110 = getelementptr i8, ptr %0, i32 136
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(60) %110, ptr noundef nonnull align 4 dereferenceable(60) @dma40_memcpy_conf_log, i32 60, i1 false) #13
  %111 = getelementptr i8, ptr %0, i32 16
  %112 = load i32, ptr %111, align 4
  %113 = getelementptr [6 x i32], ptr @dma40_memcpy_channels, i32 0, i32 %112
  %114 = load i32, ptr %113, align 4
  %115 = getelementptr i8, ptr %0, i32 152
  store i32 %114, ptr %115, align 4
  %116 = getelementptr i8, ptr %0, i32 260
  %117 = getelementptr i8, ptr %0, i32 264
  tail call void @d40_log_cfg(ptr noundef %110, ptr noundef %117, ptr noundef %116) #13
  br label %134

118:                                              ; preds = %105, %98
  %119 = load volatile i32, ptr %3, align 4
  %120 = and i32 %119, 1
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %135, label %122

122:                                              ; preds = %118
  %123 = load volatile i32, ptr %3, align 4
  %124 = and i32 %123, 2048
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %135, label %126

126:                                              ; preds = %122
  %127 = getelementptr i8, ptr %0, i32 136
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(60) %127, ptr noundef nonnull align 4 dereferenceable(60) @dma40_memcpy_conf_phy, i32 60, i1 false) #13
  %128 = getelementptr i8, ptr %0, i32 256
  %129 = load i32, ptr %128, align 4
  %130 = getelementptr i8, ptr %0, i32 252
  %131 = load i32, ptr %130, align 4
  %132 = or i32 %131, 8192
  store i32 %132, ptr %130, align 4
  %133 = or i32 %129, 24576
  store i32 %133, ptr %128, align 4
  br label %134

134:                                              ; preds = %126, %109
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  br label %139

135:                                              ; preds = %122, %118
  %136 = getelementptr i8, ptr %0, i32 20
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.dma_chan_dev, ptr %137, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %138, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.d40_config_memcpy) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  br label %141

139:                                              ; preds = %134, %96
  %140 = getelementptr i8, ptr %0, i32 244
  store i8 1, ptr %140, align 4
  br label %141

141:                                              ; preds = %139, %135, %94, %90
  %142 = phi i1 [ true, %139 ], [ false, %135 ], [ false, %94 ], [ false, %90 ]
  ret i1 %142
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @stedma40_init() #3 section ".init.text" {
  %1 = tail call i32 @__platform_driver_probe(ptr noundef nonnull @d40_driver, ptr noundef nonnull @d40_probe, ptr noundef null) #13
  ret i32 %1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @d40_log_cfg(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @d40_probe(ptr noundef %0) #3 section ".init.text" {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %4, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = icmp eq ptr %6, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %8
  %11 = tail call fastcc i32 @d40_of_probe(ptr noundef %0, ptr noundef nonnull %6) #14
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %228

13:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.d40_probe) #12
  br label %228

14:                                               ; preds = %10, %1
  %15 = tail call fastcc ptr @d40_hw_detect_init(ptr noundef %0) #14
  %16 = icmp eq ptr %15, null
  br i1 %16, label %228, label %17

17:                                               ; preds = %14
  %18 = tail call fastcc i32 @d40_phy_res_init(ptr noundef nonnull %15) #14
  %19 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %15, ptr %19, align 8
  store i32 0, ptr %15, align 4
  %20 = getelementptr inbounds %struct.d40_base, ptr %15, i32 0, i32 1
  store i32 0, ptr %20, align 4
  %21 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.7) #13
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.d40_probe) #12
  br label %145

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.resource, ptr %21, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = load i32, ptr %21, align 4
  %28 = add i32 %26, 1
  %29 = sub i32 %28, %27
  %30 = getelementptr inbounds %struct.d40_base, ptr %15, i32 0, i32 25
  store i32 %29, ptr %30, align 4
  %31 = load i32, ptr %21, align 4
  %32 = getelementptr inbounds %struct.d40_base, ptr %15, i32 0, i32 24
  store i32 %31, ptr %32, align 4
  %33 = load i32, ptr %21, align 4
  %34 = load i32, ptr %25, align 4
  %35 = sub i32 1, %33
  %36 = add i32 %35, %34
  %37 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %33, i32 noundef %36, ptr noundef nonnull @.str.9, i32 noundef 0) #13
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.d40_probe, ptr noundef nonnull %21) #12
  br label %145

40:                                               ; preds = %24
  %41 = getelementptr inbounds %struct.d40_base, ptr %15, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr i8, ptr %42, i32 32
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %45 = load i32, ptr %21, align 4
  %46 = icmp ne i32 %45, %44
  %47 = icmp ne i32 %44, 0
  %48 = and i1 %47, %46
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.d40_probe, i32 noundef %44, ptr noundef nonnull %21) #12
  br label %54

50:                                               ; preds = %40
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %51 = load i32, ptr %21, align 4
  %52 = load ptr, ptr %41, align 4
  %53 = getelementptr i8, ptr %52, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #13, !srcloc !11
  br label %54

54:                                               ; preds = %50, %49
  %55 = load i32, ptr %21, align 4
  %56 = load i32, ptr %25, align 4
  %57 = sub i32 1, %55
  %58 = add i32 %57, %56
  %59 = tail call ptr @ioremap(i32 noundef %55, i32 noundef %58) #13
  %60 = getelementptr inbounds %struct.d40_base, ptr %15, i32 0, i32 23
  store ptr %59, ptr %60, align 4
  %61 = icmp eq ptr %59, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.d40_probe) #12
  br label %145

63:                                               ; preds = %54
  %64 = getelementptr inbounds %struct.d40_base, ptr %15, i32 0, i32 19
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.stedma40_platform_data, ptr %65, i32 0, i32 3
  %67 = load i8, ptr %66, align 4, !range !12
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %87, label %69

69:                                               ; preds = %63
  %70 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.13) #13
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.d40_probe) #12
  br label %145

73:                                               ; preds = %69
  %74 = load i32, ptr %70, align 4
  %75 = getelementptr inbounds %struct.resource, ptr %70, i32 0, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = sub i32 1, %74
  %78 = add i32 %77, %76
  %79 = tail call ptr @ioremap(i32 noundef %74, i32 noundef %78) #13
  %80 = getelementptr inbounds %struct.d40_base, ptr %15, i32 0, i32 22
  store ptr %79, ptr %80, align 4
  %81 = icmp eq ptr %79, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %73
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.d40_probe) #12
  br label %145

83:                                               ; preds = %73
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !13
  tail call void @arm_heavy_mb() #13
  %84 = load i32, ptr %70, align 4
  %85 = load ptr, ptr %41, align 4
  %86 = getelementptr i8, ptr %85, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %84) #13, !srcloc !11
  br label %91

87:                                               ; preds = %63
  %88 = tail call fastcc i32 @d40_lcla_allocate(ptr noundef nonnull %15) #14
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %87
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.d40_probe) #12
  br label %145

91:                                               ; preds = %87, %83
  %92 = getelementptr inbounds %struct.d40_base, ptr %15, i32 0, i32 22, i32 4
  store i32 0, ptr %92, align 4
  %93 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #13
  %94 = getelementptr inbounds %struct.d40_base, ptr %15, i32 0, i32 8
  store i32 %93, ptr %94, align 4
  %95 = tail call i32 @request_threaded_irq(i32 noundef %93, ptr noundef nonnull @d40_handle_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull %15) #13
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %91
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.d40_probe) #12
  br label %145

98:                                               ; preds = %91
  %99 = load ptr, ptr %64, align 4
  %100 = getelementptr inbounds %struct.stedma40_platform_data, ptr %99, i32 0, i32 3
  %101 = load i8, ptr %100, align 4, !range !12
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %117, label %103

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.d40_base, ptr %15, i32 0, i32 2
  %105 = load ptr, ptr %104, align 4
  %106 = tail call ptr @regulator_get(ptr noundef %105, ptr noundef nonnull @.str.13) #13
  %107 = getelementptr inbounds %struct.d40_base, ptr %15, i32 0, i32 20
  store ptr %106, ptr %107, align 4
  %108 = icmp ugt ptr %106, inttoptr (i32 -4096 to ptr)
  br i1 %108, label %109, label %112

109:                                              ; preds = %103
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.d40_probe) #12
  %110 = load ptr, ptr %107, align 4
  %111 = ptrtoint ptr %110 to i32
  store ptr null, ptr %107, align 4
  br label %145

112:                                              ; preds = %103
  %113 = tail call i32 @regulator_enable(ptr noundef %106) #13
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %112
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.d40_probe) #12
  %116 = load ptr, ptr %107, align 4
  tail call void @regulator_put(ptr noundef %116) #13
  store ptr null, ptr %107, align 4
  br label %145

117:                                              ; preds = %112, %98
  %118 = load ptr, ptr %41, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 261889) #13, !srcloc !11
  %119 = getelementptr inbounds %struct.d40_base, ptr %15, i32 0, i32 2
  %120 = load ptr, ptr %119, align 4
  tail call void @pm_runtime_irq_safe(ptr noundef %120) #13
  %121 = load ptr, ptr %119, align 4
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %121, i32 noundef 100) #13
  %122 = load ptr, ptr %119, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %122, i1 noundef zeroext true) #13
  %123 = load ptr, ptr %119, align 4
  %124 = tail call i64 @ktime_get_mono_fast_ns() #13
  %125 = getelementptr inbounds %struct.device, ptr %123, i32 0, i32 11, i32 22
  store volatile i64 %124, ptr %125, align 8
  %126 = load ptr, ptr %119, align 4
  %127 = tail call i32 @__pm_runtime_set_status(ptr noundef %126, i32 noundef 0) #13
  %128 = load ptr, ptr %119, align 4
  tail call void @pm_runtime_enable(ptr noundef %128) #13
  %129 = tail call fastcc i32 @d40_dmaengine_init(ptr noundef nonnull %15, i32 noundef %18) #14
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %145

131:                                              ; preds = %117
  %132 = load ptr, ptr %119, align 4
  %133 = getelementptr inbounds %struct.device, ptr %132, i32 0, i32 20
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.d40_probe) #12
  br label %145

137:                                              ; preds = %131
  store i32 65535, ptr %134, align 4
  tail call fastcc void @d40_hw_init(ptr noundef nonnull %15) #14
  %138 = icmp eq ptr %6, null
  br i1 %138, label %143, label %139

139:                                              ; preds = %137
  %140 = tail call i32 @of_dma_controller_register(ptr noundef nonnull %6, ptr noundef nonnull @d40_xlate, ptr noundef null) #13
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %139
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.21) #12
  br label %143

143:                                              ; preds = %142, %139, %137
  %144 = load ptr, ptr %119, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %144, ptr noundef nonnull @.str.22) #12
  br label %230

145:                                              ; preds = %136, %117, %115, %109, %97, %90, %82, %72, %62, %39, %23
  %146 = phi i32 [ -16, %39 ], [ %95, %97 ], [ %111, %109 ], [ %113, %115 ], [ %129, %117 ], [ -5, %136 ], [ -12, %82 ], [ -2, %72 ], [ %88, %90 ], [ -12, %62 ], [ -2, %23 ]
  %147 = getelementptr inbounds %struct.d40_base, ptr %15, i32 0, i32 26
  %148 = load ptr, ptr %147, align 4
  tail call void @kmem_cache_destroy(ptr noundef %148) #13
  %149 = getelementptr inbounds %struct.d40_base, ptr %15, i32 0, i32 3
  %150 = load ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %153, label %152

152:                                              ; preds = %145
  tail call void @iounmap(ptr noundef nonnull %150) #13
  br label %153

153:                                              ; preds = %152, %145
  %154 = getelementptr inbounds %struct.d40_base, ptr %15, i32 0, i32 22
  %155 = load ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %164, label %157

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.d40_base, ptr %15, i32 0, i32 19
  %159 = load ptr, ptr %158, align 4
  %160 = getelementptr inbounds %struct.stedma40_platform_data, ptr %159, i32 0, i32 3
  %161 = load i8, ptr %160, align 4, !range !12
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %157
  tail call void @iounmap(ptr noundef nonnull %155) #13
  store ptr null, ptr %154, align 4
  br label %164

164:                                              ; preds = %163, %157, %153
  %165 = getelementptr inbounds %struct.d40_base, ptr %15, i32 0, i32 22, i32 1
  %166 = load i32, ptr %165, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %174, label %168

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.d40_base, ptr %15, i32 0, i32 2
  %170 = load ptr, ptr %169, align 4
  %171 = getelementptr inbounds %struct.d40_base, ptr %15, i32 0, i32 10
  %172 = load i32, ptr %171, align 4
  %173 = shl i32 %172, 10
  tail call void @dma_unmap_page_attrs(ptr noundef %170, i32 noundef %166, i32 noundef %173, i32 noundef 1, i32 noundef 0) #13
  br label %174

174:                                              ; preds = %168, %164
  %175 = getelementptr inbounds %struct.d40_base, ptr %15, i32 0, i32 22, i32 2
  %176 = load ptr, ptr %175, align 4
  %177 = icmp eq ptr %176, null
  br i1 %177, label %178, label %186

178:                                              ; preds = %174
  %179 = load ptr, ptr %154, align 4
  %180 = icmp eq ptr %179, null
  br i1 %180, label %186, label %181

181:                                              ; preds = %178
  %182 = ptrtoint ptr %179 to i32
  %183 = getelementptr inbounds %struct.d40_base, ptr %15, i32 0, i32 22, i32 3
  %184 = load i32, ptr %183, align 4
  tail call void @free_pages(i32 noundef %182, i32 noundef %184) #13
  %185 = load ptr, ptr %175, align 4
  br label %186

186:                                              ; preds = %181, %178, %174
  %187 = phi ptr [ %185, %181 ], [ null, %178 ], [ %176, %174 ]
  tail call void @kfree(ptr noundef %187) #13
  %188 = getelementptr inbounds %struct.d40_base, ptr %15, i32 0, i32 23
  %189 = load ptr, ptr %188, align 4
  %190 = icmp eq ptr %189, null
  br i1 %190, label %192, label %191

191:                                              ; preds = %186
  tail call void @iounmap(ptr noundef nonnull %189) #13
  br label %192

192:                                              ; preds = %191, %186
  %193 = getelementptr inbounds %struct.d40_base, ptr %15, i32 0, i32 24
  %194 = load i32, ptr %193, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %199, label %196

196:                                              ; preds = %192
  %197 = getelementptr inbounds %struct.d40_base, ptr %15, i32 0, i32 25
  %198 = load i32, ptr %197, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %194, i32 noundef %198) #13
  br label %199

199:                                              ; preds = %196, %192
  %200 = getelementptr inbounds %struct.d40_base, ptr %15, i32 0, i32 6
  %201 = load i32, ptr %200, align 4
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %206, label %203

203:                                              ; preds = %199
  %204 = getelementptr inbounds %struct.d40_base, ptr %15, i32 0, i32 7
  %205 = load i32, ptr %204, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %201, i32 noundef %205) #13
  br label %206

206:                                              ; preds = %203, %199
  %207 = getelementptr inbounds %struct.d40_base, ptr %15, i32 0, i32 5
  %208 = load ptr, ptr %207, align 4
  %209 = icmp eq ptr %208, null
  br i1 %209, label %212, label %210

210:                                              ; preds = %206
  tail call void @clk_disable(ptr noundef nonnull %208) #13
  tail call void @clk_unprepare(ptr noundef nonnull %208) #13
  %211 = load ptr, ptr %207, align 4
  tail call void @clk_put(ptr noundef %211) #13
  br label %212

212:                                              ; preds = %210, %206
  %213 = getelementptr inbounds %struct.d40_base, ptr %15, i32 0, i32 20
  %214 = load ptr, ptr %213, align 4
  %215 = icmp eq ptr %214, null
  br i1 %215, label %219, label %216

216:                                              ; preds = %212
  %217 = tail call i32 @regulator_disable(ptr noundef nonnull %214) #13
  %218 = load ptr, ptr %213, align 4
  tail call void @regulator_put(ptr noundef %218) #13
  br label %219

219:                                              ; preds = %216, %212
  %220 = getelementptr inbounds %struct.d40_base, ptr %15, i32 0, i32 22, i32 5
  %221 = load ptr, ptr %220, align 4
  tail call void @kfree(ptr noundef %221) #13
  %222 = getelementptr inbounds %struct.d40_base, ptr %15, i32 0, i32 17
  %223 = load ptr, ptr %222, align 4
  tail call void @kfree(ptr noundef %223) #13
  %224 = getelementptr inbounds %struct.d40_base, ptr %15, i32 0, i32 18
  %225 = load ptr, ptr %224, align 4
  tail call void @kfree(ptr noundef %225) #13
  %226 = getelementptr inbounds %struct.d40_base, ptr %15, i32 0, i32 21
  %227 = load ptr, ptr %226, align 4
  tail call void @kfree(ptr noundef %227) #13
  tail call void @kfree(ptr noundef nonnull %15) #13
  br label %228

228:                                              ; preds = %219, %14, %13, %10
  %229 = phi i32 [ %146, %219 ], [ -2, %14 ], [ -2, %13 ], [ -12, %10 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.d40_probe) #12
  br label %230

230:                                              ; preds = %228, %143
  %231 = phi i32 [ %229, %228 ], [ 0, %143 ]
  ret i32 %231
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dma40_suspend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @pm_runtime_force_suspend(ptr noundef %0) #13
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.d40_base, ptr %3, i32 0, i32 20
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @regulator_disable(ptr noundef nonnull %8) #13
  br label %12

12:                                               ; preds = %10, %6, %1
  %13 = phi i32 [ %4, %1 ], [ %11, %10 ], [ 0, %6 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dma40_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.d40_base, ptr %3, i32 0, i32 20
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @regulator_enable(ptr noundef nonnull %5) #13
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7, %1
  %11 = tail call i32 @pm_runtime_force_resume(ptr noundef %0) #13
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi i32 [ %11, %10 ], [ %8, %7 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dma40_runtime_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call fastcc void @d40_save_restore_registers(ptr noundef %3, i1 noundef zeroext true)
  %4 = getelementptr inbounds %struct.d40_base, ptr %3, i32 0, i32 4
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 15
  %7 = icmp eq i8 %6, 1
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.d40_base, ptr %3, i32 0, i32 31
  %10 = load i16, ptr %9, align 4
  %11 = zext i16 %10 to i32
  %12 = getelementptr inbounds %struct.d40_base, ptr %3, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #13, !srcloc !11
  br label %14

14:                                               ; preds = %8, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dma40_runtime_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call fastcc void @d40_save_restore_registers(ptr noundef %3, i1 noundef zeroext false)
  %4 = getelementptr inbounds %struct.d40_base, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 261889) #13, !srcloc !11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @d40_save_restore_registers(ptr nocapture noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.d40_base, ptr %0, i32 0, i32 10
  %4 = load i32, ptr %3, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %77

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.d40_base, ptr %0, i32 0, i32 21
  %8 = getelementptr inbounds %struct.d40_base, ptr %0, i32 0, i32 3
  %9 = getelementptr inbounds %struct.d40_base, ptr %0, i32 0, i32 29
  br label %10

10:                                               ; preds = %73, %6
  %11 = phi i32 [ %4, %6 ], [ %74, %73 ]
  %12 = phi i32 [ 0, %6 ], [ %75, %73 ]
  %13 = load ptr, ptr %7, align 4
  %14 = getelementptr %struct.d40_phy_res, ptr %13, i32 %12, i32 1
  %15 = load i8, ptr %14, align 4, !range !12
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %73

17:                                               ; preds = %10
  %18 = load ptr, ptr %8, align 4
  %19 = getelementptr i8, ptr %18, i32 1024
  %20 = shl i32 %12, 5
  %21 = getelementptr i8, ptr %19, i32 %20
  %22 = shl i32 %12, 3
  %23 = load ptr, ptr %9, align 4
  %24 = getelementptr i32, ptr %23, i32 %22
  br i1 %1, label %48, label %25

25:                                               ; preds = %17
  %26 = load i32, ptr %24, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %26) #13, !srcloc !11
  %27 = getelementptr i8, ptr %21, i32 4
  %28 = getelementptr i32, ptr %24, i32 1
  %29 = load i32, ptr %28, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %29) #13, !srcloc !11
  %30 = getelementptr i8, ptr %21, i32 8
  %31 = getelementptr i32, ptr %24, i32 2
  %32 = load i32, ptr %31, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %32) #13, !srcloc !11
  %33 = getelementptr i8, ptr %21, i32 12
  %34 = getelementptr i32, ptr %24, i32 3
  %35 = load i32, ptr %34, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %35) #13, !srcloc !11
  %36 = getelementptr i8, ptr %21, i32 16
  %37 = getelementptr i32, ptr %24, i32 4
  %38 = load i32, ptr %37, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %38) #13, !srcloc !11
  %39 = getelementptr i8, ptr %21, i32 20
  %40 = getelementptr i32, ptr %24, i32 5
  %41 = load i32, ptr %40, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %41) #13, !srcloc !11
  %42 = getelementptr i8, ptr %21, i32 24
  %43 = getelementptr i32, ptr %24, i32 6
  %44 = load i32, ptr %43, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %44) #13, !srcloc !11
  %45 = getelementptr i8, ptr %21, i32 28
  %46 = getelementptr i32, ptr %24, i32 7
  %47 = load i32, ptr %46, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %47) #13, !srcloc !11
  br label %71

48:                                               ; preds = %17
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #13, !srcloc !8
  store i32 %49, ptr %24, align 4
  %50 = getelementptr i8, ptr %21, i32 4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #13, !srcloc !8
  %52 = getelementptr i32, ptr %24, i32 1
  store i32 %51, ptr %52, align 4
  %53 = getelementptr i8, ptr %21, i32 8
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #13, !srcloc !8
  %55 = getelementptr i32, ptr %24, i32 2
  store i32 %54, ptr %55, align 4
  %56 = getelementptr i8, ptr %21, i32 12
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #13, !srcloc !8
  %58 = getelementptr i32, ptr %24, i32 3
  store i32 %57, ptr %58, align 4
  %59 = getelementptr i8, ptr %21, i32 16
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #13, !srcloc !8
  %61 = getelementptr i32, ptr %24, i32 4
  store i32 %60, ptr %61, align 4
  %62 = getelementptr i8, ptr %21, i32 20
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #13, !srcloc !8
  %64 = getelementptr i32, ptr %24, i32 5
  store i32 %63, ptr %64, align 4
  %65 = getelementptr i8, ptr %21, i32 24
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #13, !srcloc !8
  %67 = getelementptr i32, ptr %24, i32 6
  store i32 %66, ptr %67, align 4
  %68 = getelementptr i8, ptr %21, i32 28
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #13, !srcloc !8
  %70 = getelementptr i32, ptr %24, i32 7
  store i32 %69, ptr %70, align 4
  br label %71

71:                                               ; preds = %48, %25
  %72 = load i32, ptr %3, align 4
  br label %73

73:                                               ; preds = %71, %10
  %74 = phi i32 [ %72, %71 ], [ %11, %10 ]
  %75 = add nuw nsw i32 %12, 1
  %76 = icmp slt i32 %75, %74
  br i1 %76, label %10, label %77

77:                                               ; preds = %73, %2
  %78 = getelementptr inbounds %struct.d40_base, ptr %0, i32 0, i32 3
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.d40_base, ptr %0, i32 0, i32 27
  %81 = getelementptr i8, ptr %79, i32 32
  br i1 %1, label %99, label %82

82:                                               ; preds = %77
  %83 = load i32, ptr %80, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %83) #13, !srcloc !11
  %84 = getelementptr i8, ptr %79, i32 36
  %85 = getelementptr %struct.d40_base, ptr %0, i32 0, i32 27, i32 1
  %86 = load i32, ptr %85, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %86) #13, !srcloc !11
  %87 = getelementptr i8, ptr %79, i32 16
  %88 = getelementptr %struct.d40_base, ptr %0, i32 0, i32 27, i32 2
  %89 = load i32, ptr %88, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %89) #13, !srcloc !11
  %90 = getelementptr i8, ptr %79, i32 20
  %91 = getelementptr %struct.d40_base, ptr %0, i32 0, i32 27, i32 3
  %92 = load i32, ptr %91, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %92) #13, !srcloc !11
  %93 = getelementptr i8, ptr %79, i32 24
  %94 = getelementptr %struct.d40_base, ptr %0, i32 0, i32 27, i32 4
  %95 = load i32, ptr %94, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 %95) #13, !srcloc !11
  %96 = getelementptr i8, ptr %79, i32 28
  %97 = getelementptr %struct.d40_base, ptr %0, i32 0, i32 27, i32 5
  %98 = load i32, ptr %97, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %98) #13, !srcloc !11
  br label %116

99:                                               ; preds = %77
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #13, !srcloc !8
  store i32 %100, ptr %80, align 4
  %101 = getelementptr i8, ptr %79, i32 36
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #13, !srcloc !8
  %103 = getelementptr %struct.d40_base, ptr %0, i32 0, i32 27, i32 1
  store i32 %102, ptr %103, align 4
  %104 = getelementptr i8, ptr %79, i32 16
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %104) #13, !srcloc !8
  %106 = getelementptr %struct.d40_base, ptr %0, i32 0, i32 27, i32 2
  store i32 %105, ptr %106, align 4
  %107 = getelementptr i8, ptr %79, i32 20
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %107) #13, !srcloc !8
  %109 = getelementptr %struct.d40_base, ptr %0, i32 0, i32 27, i32 3
  store i32 %108, ptr %109, align 4
  %110 = getelementptr i8, ptr %79, i32 24
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %110) #13, !srcloc !8
  %112 = getelementptr %struct.d40_base, ptr %0, i32 0, i32 27, i32 4
  store i32 %111, ptr %112, align 4
  %113 = getelementptr i8, ptr %79, i32 28
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %113) #13, !srcloc !8
  %115 = getelementptr %struct.d40_base, ptr %0, i32 0, i32 27, i32 5
  store i32 %114, ptr %115, align 4
  br label %116

116:                                              ; preds = %99, %82
  %117 = getelementptr inbounds %struct.d40_base, ptr %0, i32 0, i32 32
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %140, label %120

120:                                              ; preds = %116
  %121 = load ptr, ptr %78, align 4
  %122 = getelementptr inbounds %struct.d40_base, ptr %0, i32 0, i32 28
  %123 = getelementptr inbounds %struct.d40_base, ptr %0, i32 0, i32 32, i32 1
  %124 = load i32, ptr %123, align 4
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %140

126:                                              ; preds = %137, %120
  %127 = phi i32 [ %138, %137 ], [ 0, %120 ]
  %128 = getelementptr i32, ptr %118, i32 %127
  %129 = load i32, ptr %128, align 4
  %130 = getelementptr i8, ptr %121, i32 %129
  br i1 %1, label %131, label %134

131:                                              ; preds = %126
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %130) #13, !srcloc !8
  %133 = getelementptr i32, ptr %122, i32 %127
  store i32 %132, ptr %133, align 4
  br label %137

134:                                              ; preds = %126
  %135 = getelementptr i32, ptr %122, i32 %127
  %136 = load i32, ptr %135, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %136) #13, !srcloc !11
  br label %137

137:                                              ; preds = %134, %131
  %138 = add nuw nsw i32 %127, 1
  %139 = icmp eq i32 %138, %124
  br i1 %139, label %140, label %126

140:                                              ; preds = %137, %120, %116
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @d40_of_probe(ptr noundef %0, ptr noundef %1) unnamed_addr #3 section ".init.text" {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 148, i32 noundef 3520) #13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %35, label %9

9:                                                ; preds = %2
  %10 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.24, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #13
  %11 = load i32, ptr %3, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.stedma40_platform_data, ptr %7, i32 0, i32 5
  store i32 %11, ptr %14, align 4
  br label %15

15:                                               ; preds = %13, %9
  %16 = call ptr @of_get_property(ptr noundef %1, ptr noundef nonnull @.str.25, ptr noundef nonnull %4) #13
  %17 = load i32, ptr %4, align 4
  %18 = lshr i32 %17, 2
  store i32 %18, ptr %4, align 4
  %19 = add i32 %17, -36
  %20 = icmp ult i32 %19, -32
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.d40_of_probe, i32 noundef %18) #12
  br label %35

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.stedma40_platform_data, ptr %7, i32 0, i32 4
  store i32 %18, ptr %23, align 4
  %24 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.25, ptr noundef nonnull @dma40_memcpy_channels, i32 noundef %18, i32 noundef 0) #13
  %25 = call ptr @of_get_property(ptr noundef %1, ptr noundef nonnull @.str.27, ptr noundef nonnull %5) #13
  %26 = load i32, ptr %5, align 4
  %27 = lshr i32 %26, 2
  store i32 %27, ptr %5, align 4
  %28 = icmp ugt i32 %26, 127
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.d40_of_probe, i32 noundef %27) #12
  br label %35

30:                                               ; preds = %22
  %31 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.27, ptr noundef nonnull %7, i32 noundef %27, i32 noundef 0) #13
  %32 = load i32, ptr %5, align 4
  %33 = getelementptr [32 x i32], ptr %7, i32 0, i32 %32
  store i32 -1, ptr %33, align 4
  %34 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  store ptr %7, ptr %34, align 4
  br label %35

35:                                               ; preds = %30, %29, %21, %2
  %36 = phi i32 [ -22, %21 ], [ -22, %29 ], [ 0, %30 ], [ -12, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret i32 %36
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @d40_hw_detect_init(ptr noundef %0) unnamed_addr #3 section ".init.text" {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @clk_get(ptr noundef %2, ptr noundef null) #13
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.d40_hw_detect_init) #12
  br label %255

8:                                                ; preds = %1
  %9 = tail call i32 @clk_prepare(ptr noundef %5) #13
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = tail call i32 @clk_enable(ptr noundef %5) #13
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  tail call void @clk_unprepare(ptr noundef %5) #13
  br label %15

15:                                               ; preds = %14, %8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.d40_hw_detect_init) #12
  br label %254

16:                                               ; preds = %11
  %17 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.31) #13
  %18 = icmp eq ptr %17, null
  br i1 %18, label %254, label %19

19:                                               ; preds = %16
  %20 = load i32, ptr %17, align 4
  %21 = getelementptr inbounds %struct.resource, ptr %17, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = sub i32 1, %20
  %24 = add i32 %23, %22
  %25 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %20, i32 noundef %24, ptr noundef nonnull @.str.32, i32 noundef 0) #13
  %26 = icmp eq ptr %25, null
  br i1 %26, label %249, label %27

27:                                               ; preds = %19
  %28 = load i32, ptr %17, align 4
  %29 = load i32, ptr %21, align 4
  %30 = sub i32 1, %28
  %31 = add i32 %30, %29
  %32 = tail call ptr @ioremap(i32 noundef %28, i32 noundef %31) #13
  %33 = icmp eq ptr %32, null
  br i1 %33, label %249, label %34

34:                                               ; preds = %27
  %35 = getelementptr i8, ptr %32, i32 -32
  br label %38

36:                                               ; preds = %38
  %37 = getelementptr i8, ptr %32, i32 -16
  br label %55

38:                                               ; preds = %38, %34
  %39 = phi i32 [ %53, %38 ], [ 0, %34 ]
  %40 = phi i32 [ %52, %38 ], [ 0, %34 ]
  %41 = load i32, ptr %21, align 4
  %42 = load i32, ptr %17, align 4
  %43 = add i32 %41, 1
  %44 = sub i32 %43, %42
  %45 = getelementptr i8, ptr %35, i32 %44
  %46 = shl i32 %39, 2
  %47 = getelementptr i8, ptr %45, i32 %46
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !14
  %49 = and i32 %48, 255
  %50 = shl i32 %39, 3
  %51 = shl i32 %49, %50
  %52 = or i32 %51, %40
  %53 = add nuw nsw i32 %39, 1
  %54 = icmp eq i32 %53, 4
  br i1 %54, label %36, label %38

55:                                               ; preds = %55, %36
  %56 = phi i32 [ 0, %36 ], [ %70, %55 ]
  %57 = phi i32 [ 0, %36 ], [ %69, %55 ]
  %58 = load i32, ptr %21, align 4
  %59 = load i32, ptr %17, align 4
  %60 = add i32 %58, 1
  %61 = sub i32 %60, %59
  %62 = getelementptr i8, ptr %37, i32 %61
  %63 = shl i32 %56, 2
  %64 = getelementptr i8, ptr %62, i32 %63
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !15
  %66 = and i32 %65, 255
  %67 = shl i32 %56, 3
  %68 = shl i32 %66, %67
  %69 = or i32 %68, %57
  %70 = add nuw nsw i32 %56, 1
  %71 = icmp eq i32 %70, 4
  br i1 %71, label %72, label %55

72:                                               ; preds = %55
  %73 = icmp eq i32 %69, -1325010931
  br i1 %73, label %75, label %74

74:                                               ; preds = %72
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.d40_hw_detect_init) #12
  br label %248

75:                                               ; preds = %72
  %76 = lshr i32 %52, 12
  %77 = and i32 %76, 255
  %78 = icmp eq i32 %77, 128
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.d40_hw_detect_init, i32 noundef %77, i32 noundef 128) #12
  br label %248

80:                                               ; preds = %75
  %81 = lshr i32 %52, 20
  %82 = trunc i32 %81 to i8
  %83 = and i8 %82, 15
  %84 = zext i8 %83 to i32
  %85 = icmp ult i8 %83, 2
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.d40_hw_detect_init, i32 noundef %84) #12
  br label %248

87:                                               ; preds = %80
  %88 = getelementptr inbounds %struct.stedma40_platform_data, ptr %4, i32 0, i32 5
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %87
  %92 = getelementptr i8, ptr %32, i32 4044
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !16
  %94 = shl i32 %93, 2
  %95 = and i32 %94, 28
  %96 = add nuw nsw i32 %95, 4
  br label %97

97:                                               ; preds = %91, %87
  %98 = phi i32 [ %96, %91 ], [ %89, %87 ]
  %99 = getelementptr inbounds %struct.stedma40_platform_data, ptr %4, i32 0, i32 4
  %100 = load i32, ptr %99, align 4
  %101 = icmp eq i32 %100, 0
  %102 = select i1 %101, i32 6, i32 %100
  %103 = shl i32 %98, 5
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.36, i32 noundef %84, ptr noundef nonnull %17, i32 noundef %98, i32 noundef %103) #12
  %104 = mul i32 %98, 33
  %105 = add i32 %102, %104
  %106 = mul i32 %105, 300
  %107 = add i32 %106, 1036
  %108 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %107, i32 noundef 3520) #15
  %109 = icmp eq ptr %108, null
  br i1 %109, label %248, label %110

110:                                              ; preds = %97
  %111 = getelementptr inbounds %struct.d40_base, ptr %108, i32 0, i32 4
  %112 = load i8, ptr %111, align 16
  %113 = and i8 %112, -16
  %114 = or i8 %113, %83
  store i8 %114, ptr %111, align 16
  %115 = getelementptr inbounds %struct.d40_base, ptr %108, i32 0, i32 5
  store ptr %5, ptr %115, align 4
  %116 = getelementptr inbounds %struct.d40_base, ptr %108, i32 0, i32 9
  store i32 %102, ptr %116, align 4
  %117 = getelementptr inbounds %struct.d40_base, ptr %108, i32 0, i32 10
  store i32 %98, ptr %117, align 8
  %118 = getelementptr inbounds %struct.d40_base, ptr %108, i32 0, i32 11
  store i32 %103, ptr %118, align 4
  %119 = load i32, ptr %17, align 4
  %120 = getelementptr inbounds %struct.d40_base, ptr %108, i32 0, i32 6
  store i32 %119, ptr %120, align 8
  %121 = load i32, ptr %21, align 4
  %122 = load i32, ptr %17, align 4
  %123 = add i32 %121, 1
  %124 = sub i32 %123, %122
  %125 = getelementptr inbounds %struct.d40_base, ptr %108, i32 0, i32 7
  store i32 %124, ptr %125, align 4
  %126 = getelementptr inbounds %struct.d40_base, ptr %108, i32 0, i32 3
  store ptr %32, ptr %126, align 4
  %127 = getelementptr inbounds %struct.d40_base, ptr %108, i32 0, i32 19
  store ptr %4, ptr %127, align 4
  %128 = getelementptr inbounds %struct.d40_base, ptr %108, i32 0, i32 2
  store ptr %2, ptr %128, align 8
  %129 = getelementptr i8, ptr %108, i32 1036
  %130 = getelementptr inbounds %struct.d40_base, ptr %108, i32 0, i32 15
  store ptr %129, ptr %130, align 4
  %131 = getelementptr %struct.d40_chan, ptr %129, i32 %98
  %132 = getelementptr inbounds %struct.d40_base, ptr %108, i32 0, i32 16
  store ptr %131, ptr %132, align 8
  %133 = load i32, ptr %88, align 4
  %134 = icmp eq i32 %133, 14
  br i1 %134, label %137, label %135

135:                                              ; preds = %110
  %136 = icmp ugt i8 %83, 2
  br i1 %136, label %137, label %152

137:                                              ; preds = %135, %110
  %138 = phi ptr [ @d40_backup_regs_v4b, %110 ], [ @d40_backup_regs_v4a, %135 ]
  %139 = phi i32 [ 20, %110 ], [ 16, %135 ]
  %140 = phi i32 [ 896, %110 ], [ 96, %135 ]
  %141 = phi i32 [ 900, %110 ], [ 100, %135 ]
  %142 = phi i32 [ 576, %110 ], [ 304, %135 ]
  %143 = phi i32 [ 608, %110 ], [ 320, %135 ]
  %144 = phi i32 [ 512, %110 ], [ 272, %135 ]
  %145 = phi i32 [ 544, %110 ], [ 288, %135 ]
  %146 = phi ptr [ @il_v4b, %110 ], [ @il_v4a, %135 ]
  %147 = phi i32 [ 12, %110 ], [ 10, %135 ]
  %148 = phi ptr [ @dma_init_reg_v4b, %110 ], [ @dma_init_reg_v4a, %135 ]
  %149 = phi i32 [ 16, %110 ], [ 13, %135 ]
  %150 = getelementptr inbounds %struct.d40_base, ptr %108, i32 0, i32 32
  store ptr %138, ptr %150, align 4
  %151 = getelementptr inbounds %struct.d40_base, ptr %108, i32 0, i32 32, i32 1
  store i32 %139, ptr %151, align 32
  br label %152

152:                                              ; preds = %137, %135
  %153 = phi i32 [ 96, %135 ], [ %140, %137 ]
  %154 = phi i32 [ 100, %135 ], [ %141, %137 ]
  %155 = phi i32 [ 304, %135 ], [ %142, %137 ]
  %156 = phi i32 [ 320, %135 ], [ %143, %137 ]
  %157 = phi i32 [ 272, %135 ], [ %144, %137 ]
  %158 = phi i32 [ 288, %135 ], [ %145, %137 ]
  %159 = phi ptr [ @il_v4a, %135 ], [ %146, %137 ]
  %160 = phi i32 [ 10, %135 ], [ %147, %137 ]
  %161 = phi ptr [ @dma_init_reg_v4a, %135 ], [ %148, %137 ]
  %162 = phi i32 [ 13, %135 ], [ %149, %137 ]
  %163 = getelementptr inbounds %struct.d40_base, ptr %108, i32 0, i32 32, i32 6
  store i32 %153, ptr %163, align 4
  %164 = getelementptr inbounds %struct.d40_base, ptr %108, i32 0, i32 32, i32 7
  store i32 %154, ptr %164, align 8
  %165 = getelementptr inbounds %struct.d40_base, ptr %108, i32 0, i32 32, i32 2
  store i32 %155, ptr %165, align 4
  %166 = getelementptr inbounds %struct.d40_base, ptr %108, i32 0, i32 32, i32 3
  store i32 %156, ptr %166, align 8
  %167 = getelementptr inbounds %struct.d40_base, ptr %108, i32 0, i32 32, i32 4
  store i32 %157, ptr %167, align 4
  %168 = getelementptr inbounds %struct.d40_base, ptr %108, i32 0, i32 32, i32 5
  store i32 %158, ptr %168, align 16
  %169 = getelementptr inbounds %struct.d40_base, ptr %108, i32 0, i32 32, i32 8
  store ptr %159, ptr %169, align 4
  %170 = getelementptr inbounds %struct.d40_base, ptr %108, i32 0, i32 32, i32 9
  store i32 %160, ptr %170, align 64
  %171 = getelementptr inbounds %struct.d40_base, ptr %108, i32 0, i32 32, i32 10
  store ptr %161, ptr %171, align 4
  %172 = getelementptr inbounds %struct.d40_base, ptr %108, i32 0, i32 32, i32 11
  store i32 %162, ptr %172, align 8
  %173 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %98, i32 24) #13
  %174 = extractvalue { i32, i1 } %173, 1
  br i1 %174, label %175, label %177, !prof !17

175:                                              ; preds = %152
  %176 = getelementptr inbounds %struct.d40_base, ptr %108, i32 0, i32 21
  store ptr null, ptr %176, align 4
  br label %247

177:                                              ; preds = %152
  %178 = extractvalue { i32, i1 } %173, 0
  %179 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %178, i32 noundef 3520) #15
  %180 = getelementptr inbounds %struct.d40_base, ptr %108, i32 0, i32 21
  store ptr %179, ptr %180, align 4
  %181 = icmp eq ptr %179, null
  br i1 %181, label %247, label %182

182:                                              ; preds = %177
  %183 = shl nuw nsw i32 %98, 2
  %184 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %183, i32 noundef 3520) #15
  %185 = getelementptr inbounds %struct.d40_base, ptr %108, i32 0, i32 18
  store ptr %184, ptr %185, align 16
  %186 = icmp eq ptr %184, null
  br i1 %186, label %245, label %187

187:                                              ; preds = %182
  %188 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %103, i32 4) #13
  %189 = extractvalue { i32, i1 } %188, 1
  br i1 %189, label %190, label %192, !prof !17

190:                                              ; preds = %187
  %191 = getelementptr inbounds %struct.d40_base, ptr %108, i32 0, i32 17
  store ptr null, ptr %191, align 4
  br label %243

192:                                              ; preds = %187
  %193 = extractvalue { i32, i1 } %188, 0
  %194 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %193, i32 noundef 3520) #15
  %195 = getelementptr inbounds %struct.d40_base, ptr %108, i32 0, i32 17
  store ptr %194, ptr %195, align 4
  %196 = icmp eq ptr %194, null
  br i1 %196, label %243, label %197

197:                                              ; preds = %192
  %198 = load i32, ptr %117, align 8
  %199 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %198, i32 32) #13
  %200 = extractvalue { i32, i1 } %199, 1
  br i1 %200, label %201, label %203, !prof !17

201:                                              ; preds = %197
  %202 = getelementptr inbounds %struct.d40_base, ptr %108, i32 0, i32 29
  store ptr null, ptr %202, align 16
  br label %241

203:                                              ; preds = %197
  %204 = extractvalue { i32, i1 } %199, 0
  %205 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %204, i32 noundef 3264) #15
  %206 = getelementptr inbounds %struct.d40_base, ptr %108, i32 0, i32 29
  store ptr %205, ptr %206, align 16
  %207 = icmp eq ptr %205, null
  br i1 %207, label %241, label %208

208:                                              ; preds = %203
  %209 = shl i32 %98, 7
  %210 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %209, i32 4) #13
  %211 = extractvalue { i32, i1 } %210, 1
  br i1 %211, label %212, label %214, !prof !17

212:                                              ; preds = %208
  %213 = getelementptr inbounds %struct.d40_base, ptr %108, i32 0, i32 22, i32 5
  store ptr null, ptr %213, align 4
  br label %239

214:                                              ; preds = %208
  %215 = extractvalue { i32, i1 } %210, 0
  %216 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %215, i32 noundef 3520) #15
  %217 = getelementptr inbounds %struct.d40_base, ptr %108, i32 0, i32 22, i32 5
  store ptr %216, ptr %217, align 4
  %218 = icmp eq ptr %216, null
  br i1 %218, label %239, label %219

219:                                              ; preds = %214
  %220 = getelementptr inbounds %struct.d40_base, ptr %108, i32 0, i32 32, i32 9
  %221 = load i32, ptr %220, align 64
  %222 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %221, i32 4) #13
  %223 = extractvalue { i32, i1 } %222, 1
  br i1 %223, label %224, label %226, !prof !17

224:                                              ; preds = %219
  %225 = getelementptr inbounds %struct.d40_base, ptr %108, i32 0, i32 30
  store ptr null, ptr %225, align 4
  br label %237

226:                                              ; preds = %219
  %227 = extractvalue { i32, i1 } %222, 0
  %228 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %227, i32 noundef 3264) #15
  %229 = getelementptr inbounds %struct.d40_base, ptr %108, i32 0, i32 30
  store ptr %228, ptr %229, align 4
  %230 = icmp eq ptr %228, null
  br i1 %230, label %237, label %231

231:                                              ; preds = %226
  %232 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.5, i32 noundef 160, i32 noundef 0, i32 noundef 8192, ptr noundef null) #13
  %233 = getelementptr inbounds %struct.d40_base, ptr %108, i32 0, i32 26
  store ptr %232, ptr %233, align 4
  %234 = icmp eq ptr %232, null
  br i1 %234, label %235, label %255

235:                                              ; preds = %231
  %236 = load ptr, ptr %229, align 4
  tail call void @kfree(ptr noundef %236) #13
  br label %237

237:                                              ; preds = %235, %226, %224
  %238 = load ptr, ptr %217, align 4
  tail call void @kfree(ptr noundef %238) #13
  br label %239

239:                                              ; preds = %237, %214, %212
  %240 = load ptr, ptr %206, align 16
  tail call void @kfree(ptr noundef %240) #13
  br label %241

241:                                              ; preds = %239, %203, %201
  %242 = load ptr, ptr %195, align 4
  tail call void @kfree(ptr noundef %242) #13
  br label %243

243:                                              ; preds = %241, %192, %190
  %244 = load ptr, ptr %185, align 16
  tail call void @kfree(ptr noundef %244) #13
  br label %245

245:                                              ; preds = %243, %182
  %246 = load ptr, ptr %180, align 4
  tail call void @kfree(ptr noundef %246) #13
  br label %247

247:                                              ; preds = %245, %177, %175
  tail call void @kfree(ptr noundef nonnull %108) #13
  br label %248

248:                                              ; preds = %247, %97, %86, %79, %74
  tail call void @iounmap(ptr noundef nonnull %32) #13
  br label %249

249:                                              ; preds = %248, %27, %19
  %250 = load i32, ptr %17, align 4
  %251 = load i32, ptr %21, align 4
  %252 = sub i32 1, %250
  %253 = add i32 %252, %251
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %250, i32 noundef %253) #13
  br label %254

254:                                              ; preds = %249, %16, %15
  tail call void @clk_disable(ptr noundef %5) #13
  tail call void @clk_unprepare(ptr noundef %5) #13
  tail call void @clk_put(ptr noundef %5) #13
  br label %255

255:                                              ; preds = %254, %231, %7
  %256 = phi ptr [ %108, %231 ], [ null, %254 ], [ null, %7 ]
  ret ptr %256
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @d40_phy_res_init(ptr nocapture noundef %0) unnamed_addr #3 section ".init.text" {
  %2 = alloca [2 x i32], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  %3 = getelementptr inbounds %struct.d40_base, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !18
  store i32 %6, ptr %2, align 8
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr i8, ptr %7, i32 12
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !19
  %10 = getelementptr inbounds [2 x i32], ptr %2, i32 0, i32 1
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.d40_base, ptr %0, i32 0, i32 10
  %12 = load i32, ptr %11, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.d40_base, ptr %0, i32 0, i32 21
  br label %25

16:                                               ; preds = %61, %1
  %17 = phi i32 [ 1, %1 ], [ %62, %61 ]
  %18 = phi i32 [ 0, %1 ], [ %63, %61 ]
  %19 = getelementptr inbounds %struct.d40_base, ptr %0, i32 0, i32 19
  %20 = load ptr, ptr %19, align 4
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %69, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.d40_base, ptr %0, i32 0, i32 21
  br label %78

25:                                               ; preds = %61, %14
  %26 = phi i32 [ 0, %14 ], [ %66, %61 ]
  %27 = phi i32 [ 0, %14 ], [ %63, %61 ]
  %28 = phi i32 [ -2, %14 ], [ %35, %61 ]
  %29 = phi i32 [ 1, %14 ], [ %62, %61 ]
  %30 = load ptr, ptr %15, align 4
  %31 = getelementptr %struct.d40_phy_res, ptr %30, i32 %26, i32 2
  store i32 %26, ptr %31, align 4
  %32 = and i32 %26, 1
  %33 = shl nuw nsw i32 %32, 1
  %34 = xor i32 %33, 2
  %35 = add i32 %34, %28
  %36 = getelementptr [2 x i32], ptr %2, i32 0, i32 %32
  %37 = load i32, ptr %36, align 4
  %38 = lshr i32 %37, %35
  %39 = and i32 %38, 3
  %40 = icmp eq i32 %39, 1
  %41 = load ptr, ptr %15, align 4
  %42 = getelementptr %struct.d40_phy_res, ptr %41, i32 %26, i32 3
  br i1 %40, label %43, label %55

43:                                               ; preds = %25
  store i32 1073741824, ptr %42, align 4
  %44 = load ptr, ptr %15, align 4
  %45 = getelementptr %struct.d40_phy_res, ptr %44, i32 %26, i32 4
  store i32 1073741824, ptr %45, align 4
  %46 = load ptr, ptr %15, align 4
  %47 = getelementptr %struct.d40_phy_res, ptr %46, i32 %26, i32 1
  store i8 1, ptr %47, align 4
  %48 = and i32 %26, 6
  %49 = or i32 %48, 8
  %50 = shl nuw i32 1, %49
  %51 = or i32 %50, %29
  %52 = or i32 %48, 9
  %53 = shl nuw i32 1, %52
  %54 = or i32 %51, %53
  br label %61

55:                                               ; preds = %25
  store i32 -2147483648, ptr %42, align 4
  %56 = load ptr, ptr %15, align 4
  %57 = getelementptr %struct.d40_phy_res, ptr %56, i32 %26, i32 4
  store i32 -2147483648, ptr %57, align 4
  %58 = load ptr, ptr %15, align 4
  %59 = getelementptr %struct.d40_phy_res, ptr %58, i32 %26, i32 1
  store i8 0, ptr %59, align 4
  %60 = add i32 %27, 1
  br label %61

61:                                               ; preds = %55, %43
  %62 = phi i32 [ %54, %43 ], [ %29, %55 ]
  %63 = phi i32 [ %27, %43 ], [ %60, %55 ]
  %64 = load ptr, ptr %15, align 4
  %65 = getelementptr %struct.d40_phy_res, ptr %64, i32 %26
  store i32 0, ptr %65, align 4
  %66 = add nuw nsw i32 %26, 1
  %67 = load i32, ptr %11, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %25, label %16

69:                                               ; preds = %78, %16
  %70 = phi ptr [ %20, %16 ], [ %98, %78 ]
  %71 = phi i32 [ %17, %16 ], [ %95, %78 ]
  %72 = phi i32 [ %18, %16 ], [ %96, %78 ]
  %73 = getelementptr inbounds %struct.stedma40_platform_data, ptr %70, i32 0, i32 2
  %74 = load i32, ptr %73, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %116

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.d40_base, ptr %0, i32 0, i32 21
  br label %102

78:                                               ; preds = %78, %23
  %79 = phi i32 [ %21, %23 ], [ %100, %78 ]
  %80 = phi i32 [ 0, %23 ], [ %97, %78 ]
  %81 = phi i32 [ %18, %23 ], [ %96, %78 ]
  %82 = phi i32 [ %17, %23 ], [ %95, %78 ]
  %83 = load ptr, ptr %24, align 4
  %84 = getelementptr %struct.d40_phy_res, ptr %83, i32 %79, i32 3
  store i32 1073741824, ptr %84, align 4
  %85 = load ptr, ptr %24, align 4
  %86 = getelementptr %struct.d40_phy_res, ptr %85, i32 %79, i32 4
  store i32 1073741824, ptr %86, align 4
  %87 = load ptr, ptr %24, align 4
  %88 = getelementptr %struct.d40_phy_res, ptr %87, i32 %79, i32 1
  store i8 1, ptr %88, align 4
  %89 = and i32 %79, 6
  %90 = or i32 %89, 8
  %91 = shl nuw i32 1, %90
  %92 = or i32 %91, %82
  %93 = or i32 %89, 9
  %94 = shl nuw i32 1, %93
  %95 = or i32 %92, %94
  %96 = add i32 %81, -1
  %97 = add i32 %80, 1
  %98 = load ptr, ptr %19, align 4
  %99 = getelementptr [32 x i32], ptr %98, i32 0, i32 %97
  %100 = load i32, ptr %99, align 4
  %101 = icmp eq i32 %100, -1
  br i1 %101, label %69, label %78

102:                                              ; preds = %102, %76
  %103 = phi ptr [ %70, %76 ], [ %112, %102 ]
  %104 = phi i32 [ 0, %76 ], [ %111, %102 ]
  %105 = getelementptr inbounds %struct.stedma40_platform_data, ptr %103, i32 0, i32 1
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr i32, ptr %106, i32 %104
  %108 = load i32, ptr %107, align 4
  %109 = load ptr, ptr %77, align 4
  %110 = getelementptr %struct.d40_phy_res, ptr %109, i32 %108, i32 5
  store i8 1, ptr %110, align 4
  %111 = add nuw nsw i32 %104, 1
  %112 = load ptr, ptr %19, align 4
  %113 = getelementptr inbounds %struct.stedma40_platform_data, ptr %112, i32 0, i32 2
  %114 = load i32, ptr %113, align 4
  %115 = icmp slt i32 %111, %114
  br i1 %115, label %102, label %116

116:                                              ; preds = %102, %69
  %117 = getelementptr inbounds %struct.d40_base, ptr %0, i32 0, i32 2
  %118 = load ptr, ptr %117, align 4
  %119 = load i32, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %118, ptr noundef nonnull @.str.37, i32 noundef %72, i32 noundef %119) #12
  %120 = load ptr, ptr %3, align 4
  %121 = getelementptr i8, ptr %120, i32 4
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %121) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !20
  %123 = load i32, ptr %11, align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %146

125:                                              ; preds = %116
  %126 = getelementptr inbounds %struct.d40_base, ptr %0, i32 0, i32 21
  br label %127

127:                                              ; preds = %141, %125
  %128 = phi i32 [ %123, %125 ], [ %142, %141 ]
  %129 = phi i32 [ 0, %125 ], [ %144, %141 ]
  %130 = phi i32 [ %122, %125 ], [ %143, %141 ]
  %131 = load ptr, ptr %126, align 4
  %132 = getelementptr %struct.d40_phy_res, ptr %131, i32 %129, i32 3
  %133 = load i32, ptr %132, align 4
  %134 = icmp eq i32 %133, -2147483648
  br i1 %134, label %135, label %141

135:                                              ; preds = %127
  %136 = and i32 %130, 3
  %137 = icmp eq i32 %136, 1
  br i1 %137, label %141, label %138

138:                                              ; preds = %135
  %139 = load ptr, ptr %117, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %139, ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.d40_phy_res_init, i32 noundef %129, i32 noundef %136) #12
  %140 = load i32, ptr %11, align 4
  br label %141

141:                                              ; preds = %138, %135, %127
  %142 = phi i32 [ %140, %138 ], [ %128, %135 ], [ %128, %127 ]
  %143 = lshr i32 %130, 2
  %144 = add nuw nsw i32 %129, 1
  %145 = icmp slt i32 %144, %142
  br i1 %145, label %127, label %146

146:                                              ; preds = %141, %116
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !21
  tail call void @arm_heavy_mb() #13
  %147 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %147, i32 261889) #13, !srcloc !11
  %148 = trunc i32 %71 to i16
  %149 = getelementptr inbounds %struct.d40_base, ptr %0, i32 0, i32 31
  store i16 %148, ptr %149, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  ret i32 %72
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @d40_lcla_allocate(ptr nocapture noundef %0) unnamed_addr #3 section ".init.text" {
  %2 = getelementptr inbounds %struct.d40_base, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 1024) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %118, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.d40_base, ptr %0, i32 0, i32 10
  %8 = load i32, ptr %7, align 4
  %9 = lshr i32 %8, 2
  %10 = and i32 %9, 1048575
  %11 = getelementptr inbounds %struct.d40_base, ptr %0, i32 0, i32 22, i32 3
  store i32 %10, ptr %11, align 4
  %12 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef %10) #13
  store i32 %12, ptr %4, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %38, %6
  %15 = phi i32 [ 0, %6 ], [ %35, %38 ]
  %16 = getelementptr inbounds %struct.d40_base, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = load i32, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.d40_lcla_allocate, i32 noundef %18) #12
  %19 = icmp eq i32 %15, 0
  br i1 %19, label %116, label %20

20:                                               ; preds = %20, %14
  %21 = phi i32 [ %25, %20 ], [ 0, %14 ]
  %22 = getelementptr i32, ptr %4, i32 %21
  %23 = load i32, ptr %22, align 4
  %24 = load i32, ptr %11, align 4
  tail call void @free_pages(i32 noundef %23, i32 noundef %24) #13
  %25 = add nuw nsw i32 %21, 1
  %26 = icmp eq i32 %25, %15
  br i1 %26, label %116, label %20

27:                                               ; preds = %38, %6
  %28 = phi i32 [ %40, %38 ], [ %12, %6 ]
  %29 = phi i32 [ %35, %38 ], [ 0, %6 ]
  %30 = phi i1 [ %36, %38 ], [ true, %6 ]
  %31 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %28, i32 -2130706432, i32 8454144) #17, !srcloc !22
  %32 = and i32 %31, 262143
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %27
  %35 = add nuw nsw i32 %29, 1
  %36 = icmp ult i32 %29, 255
  %37 = icmp eq i32 %35, 256
  br i1 %37, label %45, label %38

38:                                               ; preds = %34
  %39 = load i32, ptr %11, align 4
  %40 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef %39) #13
  %41 = getelementptr i32, ptr %4, i32 %35
  store i32 %40, ptr %41, align 4
  %42 = icmp eq i32 %40, 0
  br i1 %42, label %14, label %27

43:                                               ; preds = %27
  %44 = icmp eq i32 %29, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %43, %34
  %46 = phi i1 [ %30, %43 ], [ %36, %34 ]
  %47 = phi i32 [ %29, %43 ], [ 256, %34 ]
  br label %48

48:                                               ; preds = %48, %45
  %49 = phi i32 [ %53, %48 ], [ 0, %45 ]
  %50 = getelementptr i32, ptr %4, i32 %49
  %51 = load i32, ptr %50, align 4
  %52 = load i32, ptr %11, align 4
  tail call void @free_pages(i32 noundef %51, i32 noundef %52) #13
  %53 = add nuw nsw i32 %49, 1
  %54 = icmp eq i32 %53, %47
  br i1 %54, label %55, label %48

55:                                               ; preds = %48, %43
  %56 = phi i1 [ %30, %43 ], [ %46, %48 ]
  %57 = phi i32 [ 0, %43 ], [ %47, %48 ]
  br i1 %56, label %58, label %61

58:                                               ; preds = %55
  %59 = getelementptr i32, ptr %4, i32 %57
  %60 = load i32, ptr %59, align 4
  br label %75

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.d40_base, ptr %0, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = load i32, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %63, ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.d40_lcla_allocate, i32 noundef %64) #12
  %65 = load i32, ptr %7, align 4
  %66 = shl i32 %65, 10
  %67 = add i32 %66, 262144
  %68 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %67, i32 noundef 3264) #15
  %69 = getelementptr inbounds %struct.d40_base, ptr %0, i32 0, i32 22, i32 2
  store ptr %68, ptr %69, align 4
  %70 = icmp eq ptr %68, null
  br i1 %70, label %116, label %71

71:                                               ; preds = %61
  %72 = ptrtoint ptr %68 to i32
  %73 = add i32 %72, 262143
  %74 = and i32 %73, -262144
  br label %75

75:                                               ; preds = %71, %58
  %76 = phi i32 [ %74, %71 ], [ %60, %58 ]
  %77 = inttoptr i32 %76 to ptr
  store ptr %77, ptr %2, align 4
  %78 = getelementptr inbounds %struct.d40_base, ptr %0, i32 0, i32 2
  %79 = load ptr, ptr %78, align 4
  %80 = load i32, ptr %7, align 4
  %81 = shl i32 %80, 10
  %82 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %77) #13
  %83 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %84 = xor i1 %83, true
  %85 = select i1 %82, i1 %84, i1 false
  br i1 %85, label %86, label %95, !prof !17

86:                                               ; preds = %75
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %87 = tail call ptr @dev_driver_string(ptr noundef %79) #13
  %88 = getelementptr inbounds %struct.device, ptr %79, i32 0, i32 3
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load ptr, ptr %79, align 4
  br label %93

93:                                               ; preds = %91, %86
  %94 = phi ptr [ %92, %91 ], [ %89, %86 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.42, ptr noundef %87, ptr noundef %94) #13
  br label %95

95:                                               ; preds = %93, %75
  br i1 %82, label %96, label %98

96:                                               ; preds = %95
  %97 = getelementptr inbounds %struct.d40_base, ptr %0, i32 0, i32 22, i32 1
  br label %107

98:                                               ; preds = %95
  %99 = load ptr, ptr @mem_map, align 4
  %100 = add i32 %76, 1073741824
  %101 = lshr i32 %100, 12
  %102 = getelementptr %struct.page, ptr %99, i32 %101
  %103 = and i32 %76, 4095
  %104 = tail call i32 @dma_map_page_attrs(ptr noundef %79, ptr noundef %102, i32 noundef %103, i32 noundef %81, i32 noundef 1, i32 noundef 0) #13
  %105 = getelementptr inbounds %struct.d40_base, ptr %0, i32 0, i32 22, i32 1
  store i32 %104, ptr %105, align 4
  %106 = icmp eq i32 %104, -1
  br i1 %106, label %107, label %109

107:                                              ; preds = %98, %96
  %108 = phi ptr [ %97, %96 ], [ %105, %98 ]
  store i32 0, ptr %108, align 4
  br label %116

109:                                              ; preds = %98
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !23
  tail call void @arm_heavy_mb() #13
  %110 = load ptr, ptr %2, align 4
  %111 = ptrtoint ptr %110 to i32
  %112 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %111, i32 -2130706432, i32 8454144) #17, !srcloc !22
  %113 = getelementptr inbounds %struct.d40_base, ptr %0, i32 0, i32 3
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr i8, ptr %114, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 %112) #13, !srcloc !11
  br label %116

116:                                              ; preds = %109, %107, %61, %20, %14
  %117 = phi i32 [ -12, %107 ], [ 0, %109 ], [ -12, %61 ], [ -12, %14 ], [ -12, %20 ]
  tail call void @kfree(ptr noundef nonnull %4) #13
  br label %118

118:                                              ; preds = %116, %1
  %119 = phi i32 [ %117, %116 ], [ -12, %1 ]
  ret i32 %119
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @d40_handle_interrupt(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.d40_base, ptr %1, i32 0, i32 30
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.d40_base, ptr %1, i32 0, i32 32, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.d40_base, ptr %1, i32 0, i32 32, i32 9
  %8 = load i32, ptr %7, align 4
  tail call void @_raw_spin_lock(ptr noundef %1) #13
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.d40_base, ptr %1, i32 0, i32 3
  br label %21

12:                                               ; preds = %21, %2
  %13 = shl i32 %8, 5
  %14 = tail call i32 @_find_next_bit_le(ptr noundef %4, i32 noundef %13, i32 noundef 0) #13
  %15 = icmp eq i32 %14, %13
  br i1 %15, label %285, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.d40_base, ptr %1, i32 0, i32 17
  %18 = getelementptr inbounds %struct.d40_base, ptr %1, i32 0, i32 18
  %19 = getelementptr inbounds %struct.d40_base, ptr %1, i32 0, i32 3
  %20 = getelementptr inbounds %struct.d40_base, ptr %1, i32 0, i32 2
  br label %31

21:                                               ; preds = %21, %10
  %22 = phi i32 [ 0, %10 ], [ %29, %21 ]
  %23 = load ptr, ptr %11, align 4
  %24 = getelementptr %struct.d40_interrupt_lookup, ptr %6, i32 %22
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr i8, ptr %23, i32 %25
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !24
  %28 = getelementptr i32, ptr %4, i32 %22
  store i32 %27, ptr %28, align 4
  %29 = add nuw i32 %22, 1
  %30 = icmp eq i32 %29, %8
  br i1 %30, label %12, label %21

31:                                               ; preds = %281, %16
  %32 = phi i32 [ %14, %16 ], [ %283, %281 ]
  %33 = sdiv i32 %32, 32
  %34 = and i32 %32, 31
  %35 = getelementptr %struct.d40_interrupt_lookup, ptr %6, i32 %33, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load ptr, ptr %18, align 4
  %40 = getelementptr ptr, ptr %39, i32 %34
  br label %45

41:                                               ; preds = %31
  %42 = load ptr, ptr %17, align 4
  %43 = add i32 %36, %34
  %44 = getelementptr ptr, ptr %42, i32 %43
  br label %45

45:                                               ; preds = %41, %38
  %46 = phi ptr [ %40, %38 ], [ %44, %41 ]
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %281, label %49

49:                                               ; preds = %45
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !25
  tail call void @arm_heavy_mb() #13
  %50 = shl nuw i32 1, %34
  %51 = load ptr, ptr %19, align 4
  %52 = getelementptr %struct.d40_interrupt_lookup, ptr %6, i32 %33, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr i8, ptr %51, i32 %53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %50) #13, !srcloc !11
  tail call void @_raw_spin_lock(ptr noundef nonnull %47) #13
  %55 = getelementptr %struct.d40_interrupt_lookup, ptr %6, i32 %33, i32 2
  %56 = load i8, ptr %55, align 4, !range !12
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %275

58:                                               ; preds = %49
  %59 = getelementptr inbounds %struct.d40_chan, ptr %47, i32 0, i32 9
  %60 = load volatile ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, %59
  %62 = getelementptr i8, ptr %60, i32 -148
  %63 = icmp eq ptr %62, null
  %64 = or i1 %61, %63
  br i1 %64, label %278, label %65

65:                                               ; preds = %58
  %66 = getelementptr i8, ptr %60, i32 9
  %67 = load i8, ptr %66, align 1, !range !12
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %173, label %69

69:                                               ; preds = %65
  %70 = getelementptr i8, ptr %60, i32 -68
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr i8, ptr %60, i32 -72
  %73 = load i32, ptr %72, align 4
  %74 = icmp slt i32 %71, %73
  br i1 %74, label %75, label %266

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.d40_chan, ptr %47, i32 0, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %86, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.d40_chan, ptr %47, i32 0, i32 20
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.d40_log_lli_full, ptr %81, i32 0, i32 3
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !26
  %84 = and i32 %83, 254
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %100, label %266

86:                                               ; preds = %75
  %87 = getelementptr inbounds %struct.d40_chan, ptr %47, i32 0, i32 16
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.d40_base, ptr %88, i32 0, i32 3
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.d40_chan, ptr %47, i32 0, i32 4
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.d40_phy_res, ptr %92, i32 0, i32 2
  %94 = load i32, ptr %93, align 4
  %95 = shl i32 %94, 5
  %96 = getelementptr i8, ptr %90, i32 1052
  %97 = getelementptr i8, ptr %96, i32 %95
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !27
  %99 = icmp ugt i32 %98, 7
  br i1 %99, label %266, label %100

100:                                              ; preds = %86, %79
  %101 = load i32, ptr %76, align 4
  %102 = icmp eq i32 %101, -1
  br i1 %102, label %109, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.d40_chan, ptr %47, i32 0, i32 20
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.d40_log_lli_full, ptr %105, i32 0, i32 2
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !28
  %108 = and i32 %107, -65536
  br label %122

109:                                              ; preds = %100
  %110 = getelementptr inbounds %struct.d40_chan, ptr %47, i32 0, i32 16
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr inbounds %struct.d40_base, ptr %111, i32 0, i32 3
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.d40_chan, ptr %47, i32 0, i32 4
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr inbounds %struct.d40_phy_res, ptr %115, i32 0, i32 2
  %117 = load i32, ptr %116, align 4
  %118 = shl i32 %117, 5
  %119 = getelementptr i8, ptr %113, i32 1044
  %120 = getelementptr i8, ptr %119, i32 %118
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %120) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !29
  br label %122

122:                                              ; preds = %109, %103
  %123 = phi i32 [ %108, %103 ], [ %121, %109 ]
  %124 = lshr i32 %123, 16
  %125 = getelementptr inbounds %struct.d40_chan, ptr %47, i32 0, i32 13, i32 7, i32 1
  %126 = load i32, ptr %125, align 4
  %127 = mul i32 %124, %126
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %266

129:                                              ; preds = %122
  %130 = load i32, ptr %76, align 4
  %131 = icmp eq i32 %130, -1
  br i1 %131, label %167, label %132

132:                                              ; preds = %129
  %133 = getelementptr inbounds %struct.d40_chan, ptr %47, i32 0, i32 16
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr inbounds %struct.d40_base, ptr %134, i32 0, i32 22, i32 4
  %136 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %135) #13
  %137 = getelementptr inbounds %struct.d40_chan, ptr %47, i32 0, i32 4
  %138 = getelementptr i8, ptr %60, i32 -64
  br label %139

139:                                              ; preds = %162, %132
  %140 = phi i32 [ 1, %132 ], [ %163, %162 ]
  %141 = load ptr, ptr %137, align 4
  %142 = getelementptr inbounds %struct.d40_phy_res, ptr %141, i32 0, i32 2
  %143 = load i32, ptr %142, align 4
  %144 = shl i32 %143, 7
  %145 = add nuw i32 %144, %140
  %146 = load ptr, ptr %133, align 4
  %147 = getelementptr inbounds %struct.d40_base, ptr %146, i32 0, i32 22, i32 5
  %148 = load ptr, ptr %147, align 4
  %149 = getelementptr ptr, ptr %148, i32 %145
  %150 = load ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, %62
  br i1 %151, label %152, label %160

152:                                              ; preds = %139
  store ptr null, ptr %149, align 4
  %153 = load i32, ptr %138, align 4
  %154 = add i32 %153, -1
  store i32 %154, ptr %138, align 4
  %155 = icmp ne i32 %154, 0
  %156 = icmp ult i32 %140, 63
  %157 = select i1 %155, i1 %156, i1 false
  br i1 %157, label %162, label %158

158:                                              ; preds = %152
  %159 = load ptr, ptr %133, align 4
  br label %164

160:                                              ; preds = %139
  %161 = icmp ult i32 %140, 63
  br i1 %161, label %162, label %164

162:                                              ; preds = %160, %152
  %163 = add nuw nsw i32 %140, 1
  br label %139

164:                                              ; preds = %160, %158
  %165 = phi ptr [ %159, %158 ], [ %146, %160 ]
  %166 = getelementptr inbounds %struct.d40_base, ptr %165, i32 0, i32 22, i32 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %166, i32 noundef %136) #13
  br label %167

167:                                              ; preds = %164, %129
  tail call fastcc void @d40_desc_load(ptr noundef %47, ptr noundef nonnull %62) #13
  %168 = tail call fastcc i32 @d40_channel_execute_command(ptr noundef %47, i32 noundef 1) #13
  %169 = load i32, ptr %70, align 4
  %170 = load i32, ptr %72, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %266

172:                                              ; preds = %167
  store i32 0, ptr %70, align 4
  br label %266

173:                                              ; preds = %65
  %174 = getelementptr inbounds %struct.d40_chan, ptr %47, i32 0, i32 1
  %175 = load i32, ptr %174, align 4
  %176 = icmp eq i32 %175, -1
  br i1 %176, label %212, label %177

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.d40_chan, ptr %47, i32 0, i32 16
  %179 = load ptr, ptr %178, align 4
  %180 = getelementptr inbounds %struct.d40_base, ptr %179, i32 0, i32 22, i32 4
  %181 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %180) #13
  %182 = getelementptr inbounds %struct.d40_chan, ptr %47, i32 0, i32 4
  %183 = getelementptr i8, ptr %60, i32 -64
  br label %184

184:                                              ; preds = %207, %177
  %185 = phi i32 [ 1, %177 ], [ %208, %207 ]
  %186 = load ptr, ptr %182, align 4
  %187 = getelementptr inbounds %struct.d40_phy_res, ptr %186, i32 0, i32 2
  %188 = load i32, ptr %187, align 4
  %189 = shl i32 %188, 7
  %190 = add nuw i32 %189, %185
  %191 = load ptr, ptr %178, align 4
  %192 = getelementptr inbounds %struct.d40_base, ptr %191, i32 0, i32 22, i32 5
  %193 = load ptr, ptr %192, align 4
  %194 = getelementptr ptr, ptr %193, i32 %190
  %195 = load ptr, ptr %194, align 4
  %196 = icmp eq ptr %195, %62
  br i1 %196, label %197, label %205

197:                                              ; preds = %184
  store ptr null, ptr %194, align 4
  %198 = load i32, ptr %183, align 4
  %199 = add i32 %198, -1
  store i32 %199, ptr %183, align 4
  %200 = icmp ne i32 %199, 0
  %201 = icmp ult i32 %185, 63
  %202 = select i1 %200, i1 %201, i1 false
  br i1 %202, label %207, label %203

203:                                              ; preds = %197
  %204 = load ptr, ptr %178, align 4
  br label %209

205:                                              ; preds = %184
  %206 = icmp ult i32 %185, 63
  br i1 %206, label %207, label %209

207:                                              ; preds = %205, %197
  %208 = add nuw nsw i32 %185, 1
  br label %184

209:                                              ; preds = %205, %203
  %210 = phi ptr [ %204, %203 ], [ %191, %205 ]
  %211 = getelementptr inbounds %struct.d40_base, ptr %210, i32 0, i32 22, i32 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %211, i32 noundef %181) #13
  br label %212

212:                                              ; preds = %209, %173
  %213 = getelementptr i8, ptr %60, i32 -68
  %214 = load i32, ptr %213, align 4
  %215 = getelementptr i8, ptr %60, i32 -72
  %216 = load i32, ptr %215, align 4
  %217 = icmp slt i32 %214, %216
  br i1 %217, label %218, label %220

218:                                              ; preds = %212
  tail call fastcc void @d40_desc_load(ptr noundef %47, ptr noundef nonnull %62) #13
  %219 = tail call fastcc i32 @d40_channel_execute_command(ptr noundef %47, i32 noundef 1) #13
  br label %278

220:                                              ; preds = %212
  %221 = getelementptr inbounds %struct.d40_chan, ptr %47, i32 0, i32 11
  %222 = load volatile ptr, ptr %221, align 4
  %223 = icmp eq ptr %222, %221
  %224 = getelementptr i8, ptr %222, i32 -148
  %225 = icmp eq ptr %224, null
  %226 = or i1 %223, %225
  br i1 %226, label %246, label %227

227:                                              ; preds = %220
  %228 = getelementptr inbounds %struct.d40_chan, ptr %47, i32 0, i32 3
  %229 = load i8, ptr %228, align 4, !range !12
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %231, label %237

231:                                              ; preds = %227
  store i8 1, ptr %228, align 4
  %232 = getelementptr inbounds %struct.d40_chan, ptr %47, i32 0, i32 16
  %233 = load ptr, ptr %232, align 4
  %234 = getelementptr inbounds %struct.d40_base, ptr %233, i32 0, i32 2
  %235 = load ptr, ptr %234, align 4
  %236 = tail call i32 @__pm_runtime_resume(ptr noundef %235, i32 noundef 4) #13
  br label %237

237:                                              ; preds = %231, %227
  %238 = getelementptr i8, ptr %222, i32 4
  %239 = load ptr, ptr %238, align 4
  %240 = load ptr, ptr %222, align 4
  %241 = getelementptr inbounds %struct.list_head, ptr %240, i32 0, i32 1
  store ptr %239, ptr %241, align 4
  store volatile ptr %240, ptr %239, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %222, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %238, align 4
  %242 = getelementptr inbounds %struct.d40_chan, ptr %47, i32 0, i32 9, i32 1
  %243 = load ptr, ptr %242, align 4
  store ptr %222, ptr %242, align 4
  store ptr %59, ptr %222, align 4
  store ptr %243, ptr %238, align 4
  store volatile ptr %222, ptr %243, align 4
  tail call fastcc void @d40_desc_load(ptr noundef %47, ptr noundef nonnull %224) #13
  %244 = tail call fastcc i32 @d40_channel_execute_command(ptr noundef %47, i32 noundef 1) #13
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %258, label %246

246:                                              ; preds = %237, %220
  %247 = getelementptr inbounds %struct.d40_chan, ptr %47, i32 0, i32 3
  store i8 0, ptr %247, align 4
  %248 = getelementptr inbounds %struct.d40_chan, ptr %47, i32 0, i32 16
  %249 = load ptr, ptr %248, align 4
  %250 = getelementptr inbounds %struct.d40_base, ptr %249, i32 0, i32 2
  %251 = load ptr, ptr %250, align 4
  %252 = tail call i64 @ktime_get_mono_fast_ns() #13
  %253 = getelementptr inbounds %struct.device, ptr %251, i32 0, i32 11, i32 22
  store volatile i64 %252, ptr %253, align 8
  %254 = load ptr, ptr %248, align 4
  %255 = getelementptr inbounds %struct.d40_base, ptr %254, i32 0, i32 2
  %256 = load ptr, ptr %255, align 4
  %257 = tail call i32 @__pm_runtime_suspend(ptr noundef %256, i32 noundef 13) #13
  br label %258

258:                                              ; preds = %246, %237
  %259 = getelementptr i8, ptr %60, i32 4
  %260 = load ptr, ptr %259, align 4
  %261 = load ptr, ptr %60, align 4
  %262 = getelementptr inbounds %struct.list_head, ptr %261, i32 0, i32 1
  store ptr %260, ptr %262, align 4
  store volatile ptr %261, ptr %260, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %60, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %259, align 4
  %263 = getelementptr inbounds %struct.d40_chan, ptr %47, i32 0, i32 10
  %264 = getelementptr inbounds %struct.d40_chan, ptr %47, i32 0, i32 10, i32 1
  %265 = load ptr, ptr %264, align 4
  store ptr %60, ptr %264, align 4
  store ptr %263, ptr %60, align 4
  store ptr %265, ptr %259, align 4
  store volatile ptr %60, ptr %265, align 4
  br label %266

266:                                              ; preds = %258, %172, %167, %122, %86, %79, %69
  %267 = getelementptr inbounds %struct.d40_chan, ptr %47, i32 0, i32 2
  %268 = load i32, ptr %267, align 4
  %269 = add i32 %268, 1
  store i32 %269, ptr %267, align 4
  %270 = getelementptr inbounds %struct.d40_chan, ptr %47, i32 0, i32 6, i32 1
  %271 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %270) #13
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %278

273:                                              ; preds = %266
  %274 = getelementptr inbounds %struct.d40_chan, ptr %47, i32 0, i32 6
  tail call void @__tasklet_schedule(ptr noundef %274) #13
  br label %278

275:                                              ; preds = %49
  %276 = load ptr, ptr %20, align 4
  %277 = load i32, ptr %35, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %276, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.d40_handle_interrupt, i32 noundef %32, i32 noundef %277, i32 noundef %34) #12
  br label %278

278:                                              ; preds = %275, %273, %266, %218, %58
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !30
  %279 = load i16, ptr %47, align 4
  %280 = add i16 %279, 1
  store i16 %280, ptr %47, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !31
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !32
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !33
  br label %281

281:                                              ; preds = %278, %45
  %282 = add i32 %32, 1
  %283 = tail call i32 @_find_next_bit_le(ptr noundef %4, i32 noundef %13, i32 noundef %282) #13
  %284 = icmp eq i32 %283, %13
  br i1 %284, label %285, label %31

285:                                              ; preds = %281, %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !30
  %286 = load i16, ptr %1, align 4
  %287 = add i16 %286, 1
  store i16 %287, ptr %1, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !31
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !32
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !33
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulator_put(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_irq_safe(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @d40_dmaengine_init(ptr noundef %0, i32 noundef %1) unnamed_addr #3 section ".init.text" {
  %3 = getelementptr inbounds %struct.d40_base, ptr %0, i32 0, i32 13
  %4 = getelementptr inbounds %struct.d40_base, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.d40_base, ptr %0, i32 0, i32 11
  %7 = load i32, ptr %6, align 4
  tail call fastcc void @d40_chan_init(ptr noundef %0, ptr noundef %3, ptr noundef %5, i32 noundef 0, i32 noundef %7) #14
  %8 = getelementptr inbounds %struct.d40_base, ptr %0, i32 0, i32 13, i32 6
  store i32 0, ptr %8, align 4
  tail call void @_set_bit(i32 noundef 11, ptr noundef %8) #13
  tail call void @_set_bit(i32 noundef 12, ptr noundef %8) #13
  tail call fastcc void @d40_ops_init(ptr noundef %0, ptr noundef %3)
  %9 = tail call i32 @dmaenginem_async_device_register(ptr noundef %3) #13
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.d40_base, ptr %0, i32 0, i32 14
  %13 = load ptr, ptr %4, align 4
  %14 = load i32, ptr %6, align 4
  %15 = getelementptr inbounds %struct.d40_base, ptr %0, i32 0, i32 9
  %16 = load i32, ptr %15, align 4
  tail call fastcc void @d40_chan_init(ptr noundef %0, ptr noundef %12, ptr noundef %13, i32 noundef %14, i32 noundef %16) #14
  %17 = getelementptr inbounds %struct.d40_base, ptr %0, i32 0, i32 14, i32 6
  store i32 0, ptr %17, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %17) #13
  tail call fastcc void @d40_ops_init(ptr noundef %0, ptr noundef %12)
  %18 = tail call i32 @dmaenginem_async_device_register(ptr noundef %12) #13
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.d40_base, ptr %0, i32 0, i32 12
  %22 = getelementptr inbounds %struct.d40_base, ptr %0, i32 0, i32 15
  %23 = load ptr, ptr %22, align 4
  tail call fastcc void @d40_chan_init(ptr noundef %0, ptr noundef %21, ptr noundef %23, i32 noundef 0, i32 noundef %1) #14
  %24 = getelementptr inbounds %struct.d40_base, ptr %0, i32 0, i32 12, i32 6
  store i32 0, ptr %24, align 4
  tail call void @_set_bit(i32 noundef 11, ptr noundef %24) #13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %24) #13
  tail call void @_set_bit(i32 noundef 12, ptr noundef %8) #13
  tail call fastcc void @d40_ops_init(ptr noundef %0, ptr noundef %21)
  %25 = tail call i32 @dmaenginem_async_device_register(ptr noundef %21) #13
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %20, %11, %2
  %28 = phi ptr [ @.str.47, %2 ], [ @.str.48, %11 ], [ @.str.49, %20 ]
  %29 = phi i32 [ %9, %2 ], [ %18, %11 ], [ %25, %20 ]
  %30 = getelementptr inbounds %struct.d40_base, ptr %0, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull %28, ptr noundef nonnull @__func__.d40_dmaengine_init) #12
  br label %32

32:                                               ; preds = %27, %20
  %33 = phi i32 [ 0, %20 ], [ %29, %27 ]
  ret i32 %33
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @d40_hw_init(ptr nocapture noundef %0) unnamed_addr #3 section ".init.text" {
  %2 = alloca [2 x i32], align 8
  %3 = alloca [2 x i32], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  store i64 0, ptr %2, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  store i64 -1, ptr %3, align 8
  %4 = getelementptr inbounds %struct.d40_base, ptr %0, i32 0, i32 32, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.d40_base, ptr %0, i32 0, i32 32, i32 11
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.d40_base, ptr %0, i32 0, i32 3
  br label %18

11:                                               ; preds = %18, %1
  %12 = getelementptr inbounds %struct.d40_base, ptr %0, i32 0, i32 10
  %13 = load i32, ptr %12, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %64

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.d40_base, ptr %0, i32 0, i32 21
  %17 = load ptr, ptr %16, align 4
  br label %28

18:                                               ; preds = %18, %9
  %19 = phi i32 [ 0, %9 ], [ %26, %18 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !34
  tail call void @arm_heavy_mb() #13
  %20 = getelementptr %struct.d40_reg_val, ptr %5, i32 %19
  %21 = getelementptr %struct.d40_reg_val, ptr %5, i32 %19, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = load ptr, ptr %10, align 4
  %24 = load i32, ptr %20, align 4
  %25 = getelementptr i8, ptr %23, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %22) #13, !srcloc !11
  %26 = add nuw i32 %19, 1
  %27 = icmp eq i32 %26, %7
  br i1 %27, label %11, label %18

28:                                               ; preds = %52, %15
  %29 = phi i32 [ 0, %15 ], [ %54, %52 ]
  %30 = phi i32 [ 0, %15 ], [ %53, %52 ]
  %31 = phi i32 [ 0, %15 ], [ %55, %52 ]
  %32 = and i32 %31, 1
  %33 = getelementptr [2 x i32], ptr %3, i32 0, i32 %32
  %34 = load i32, ptr %33, align 4
  %35 = shl i32 %34, 2
  store i32 %35, ptr %33, align 4
  %36 = xor i32 %31, -1
  %37 = add i32 %13, %36
  %38 = getelementptr %struct.d40_phy_res, ptr %17, i32 %37, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 1073741824
  br i1 %40, label %41, label %43

41:                                               ; preds = %28
  %42 = or i32 %35, 3
  store i32 %42, ptr %33, align 4
  br label %52

43:                                               ; preds = %28
  %44 = shl i32 %30, 1
  %45 = or i32 %44, 1
  %46 = shl i32 %29, 1
  %47 = or i32 %46, 1
  %48 = getelementptr [2 x i32], ptr %2, i32 0, i32 %32
  %49 = load i32, ptr %48, align 4
  %50 = shl i32 %49, 2
  %51 = or i32 %50, 1
  store i32 %51, ptr %48, align 4
  br label %52

52:                                               ; preds = %43, %41
  %53 = phi i32 [ %30, %41 ], [ %45, %43 ]
  %54 = phi i32 [ %29, %41 ], [ %47, %43 ]
  %55 = add nuw nsw i32 %31, 1
  %56 = icmp eq i32 %55, %13
  br i1 %56, label %57, label %28

57:                                               ; preds = %52
  %58 = getelementptr inbounds [2 x i32], ptr %2, i32 0, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = load i32, ptr %2, align 8
  %61 = getelementptr inbounds [2 x i32], ptr %3, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = load i32, ptr %3, align 8
  br label %64

64:                                               ; preds = %57, %11
  %65 = phi i32 [ -1, %11 ], [ %63, %57 ]
  %66 = phi i32 [ -1, %11 ], [ %62, %57 ]
  %67 = phi i32 [ 0, %11 ], [ %60, %57 ]
  %68 = phi i32 [ 0, %11 ], [ %59, %57 ]
  %69 = phi i32 [ 0, %11 ], [ %53, %57 ]
  %70 = phi i32 [ 0, %11 ], [ %54, %57 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !35
  tail call void @arm_heavy_mb() #13
  %71 = getelementptr inbounds %struct.d40_base, ptr %0, i32 0, i32 3
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr i8, ptr %72, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %68) #13, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !36
  tail call void @arm_heavy_mb() #13
  %74 = load ptr, ptr %71, align 4
  %75 = getelementptr i8, ptr %74, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %67) #13, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !37
  tail call void @arm_heavy_mb() #13
  %76 = load ptr, ptr %71, align 4
  %77 = getelementptr i8, ptr %76, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %66) #13, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !38
  tail call void @arm_heavy_mb() #13
  %78 = load ptr, ptr %71, align 4
  %79 = getelementptr i8, ptr %78, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %65) #13, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !39
  tail call void @arm_heavy_mb() #13
  %80 = load ptr, ptr %71, align 4
  %81 = getelementptr inbounds %struct.d40_base, ptr %0, i32 0, i32 32, i32 6
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr i8, ptr %80, i32 %82
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %69) #13, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !40
  tail call void @arm_heavy_mb() #13
  %84 = load ptr, ptr %71, align 4
  %85 = getelementptr inbounds %struct.d40_base, ptr %0, i32 0, i32 32, i32 7
  %86 = load i32, ptr %85, align 4
  %87 = getelementptr i8, ptr %84, i32 %86
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %70) #13, !srcloc !11
  store ptr null, ptr %4, align 4
  store i32 0, ptr %6, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @d40_xlate(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca %struct.stedma40_chan_cfg, align 4
  %4 = alloca %struct.dma_cap_mask_t, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(60) %3, i8 0, i32 60, i1 false)
  store i32 0, ptr %4, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %4) #13
  %5 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %3, i32 0, i32 5
  store i32 %6, ptr %7, align 4
  %8 = getelementptr %struct.of_phandle_args, ptr %0, i32 0, i32 2, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %3, i32 0, i32 3
  store i32 %10, ptr %11, align 4
  %12 = and i32 %9, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  store i32 1, ptr %3, align 4
  %15 = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %3, i32 0, i32 7
  br label %18

16:                                               ; preds = %2
  store i32 2, ptr %3, align 4
  %17 = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %3, i32 0, i32 6
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi ptr [ %17, %16 ], [ %15, %14 ]
  %20 = trunc i32 %9 to i8
  %21 = lshr i8 %20, 2
  %22 = and i8 %21, 1
  store i8 %22, ptr %19, align 4
  %23 = and i32 %9, 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %18
  %26 = getelementptr %struct.of_phandle_args, ptr %0, i32 0, i32 2, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %3, i32 0, i32 9
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %3, i32 0, i32 8
  store i8 1, ptr %29, align 4
  br label %30

30:                                               ; preds = %25, %18
  %31 = and i32 %9, 16
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %3, i32 0, i32 1
  store i8 1, ptr %34, align 4
  br label %35

35:                                               ; preds = %33, %30
  %36 = call ptr @__dma_request_channel(ptr noundef nonnull %4, ptr noundef nonnull @stedma40_filter, ptr noundef nonnull %3, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %3) #13
  ret ptr %36
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @d40_desc_load(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.d40_chan, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %45

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.d40_phy_lli_bidir, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %1, align 4
  %10 = getelementptr inbounds %struct.d40_chan, ptr %0, i32 0, i32 16
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.d40_base, ptr %11, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 1024
  %15 = getelementptr inbounds %struct.d40_chan, ptr %0, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.d40_phy_res, ptr %16, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = shl i32 %18, 5
  %20 = getelementptr i8, ptr %14, i32 %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !41
  tail call void @arm_heavy_mb() #13
  %21 = load i32, ptr %9, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %21) #13, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !42
  tail call void @arm_heavy_mb() #13
  %22 = getelementptr inbounds %struct.d40_phy_lli, ptr %9, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr i8, ptr %20, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %23) #13, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !43
  tail call void @arm_heavy_mb() #13
  %25 = getelementptr inbounds %struct.d40_phy_lli, ptr %9, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr i8, ptr %20, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %26) #13, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !44
  tail call void @arm_heavy_mb() #13
  %28 = getelementptr inbounds %struct.d40_phy_lli, ptr %9, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr i8, ptr %20, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %29) #13, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !45
  tail call void @arm_heavy_mb() #13
  %31 = load i32, ptr %8, align 4
  %32 = getelementptr i8, ptr %20, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %31) #13, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !46
  tail call void @arm_heavy_mb() #13
  %33 = getelementptr inbounds %struct.d40_phy_lli, ptr %8, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr i8, ptr %20, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %34) #13, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !47
  tail call void @arm_heavy_mb() #13
  %36 = getelementptr inbounds %struct.d40_phy_lli, ptr %8, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr i8, ptr %20, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %37) #13, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !48
  tail call void @arm_heavy_mb() #13
  %39 = getelementptr inbounds %struct.d40_phy_lli, ptr %8, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr i8, ptr %20, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %40) #13, !srcloc !11
  %42 = getelementptr inbounds %struct.d40_desc, ptr %1, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.d40_desc, ptr %1, i32 0, i32 4
  store i32 %43, ptr %44, align 4
  br label %211

45:                                               ; preds = %2
  %46 = getelementptr inbounds %struct.d40_chan, ptr %0, i32 0, i32 16
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.d40_base, ptr %47, i32 0, i32 22
  %49 = getelementptr inbounds %struct.d40_desc, ptr %1, i32 0, i32 1
  %50 = getelementptr inbounds %struct.d40_desc, ptr %1, i32 0, i32 4
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.d40_desc, ptr %1, i32 0, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.d40_desc, ptr %1, i32 0, i32 9
  %55 = load i8, ptr %54, align 1, !range !12
  %56 = icmp ne i8 %55, 0
  %57 = getelementptr inbounds %struct.d40_base, ptr %47, i32 0, i32 19
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.stedma40_platform_data, ptr %58, i32 0, i32 3
  %60 = load i8, ptr %59, align 4, !range !12
  %61 = icmp eq i8 %60, 0
  %62 = icmp eq i32 %51, 0
  %63 = select i1 %56, i1 %62, i1 false
  %64 = sub i32 %53, %51
  %65 = icmp sgt i32 %64, 1
  %66 = select i1 %63, i1 true, i1 %65
  br i1 %66, label %67, label %110

67:                                               ; preds = %45
  %68 = getelementptr inbounds %struct.d40_chan, ptr %0, i32 0, i32 4
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.d40_phy_res, ptr %69, i32 0, i32 5
  %71 = load i8, ptr %70, align 4, !range !12
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.d40_chan, ptr %0, i32 0, i32 13
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 2
  br i1 %76, label %110, label %77

77:                                               ; preds = %73, %67
  %78 = getelementptr inbounds %struct.d40_base, ptr %47, i32 0, i32 22, i32 4
  %79 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %78) #13
  %80 = load ptr, ptr %68, align 4
  %81 = getelementptr inbounds %struct.d40_phy_res, ptr %80, i32 0, i32 2
  %82 = load i32, ptr %81, align 4
  %83 = shl i32 %82, 7
  %84 = load ptr, ptr %46, align 4
  %85 = getelementptr inbounds %struct.d40_base, ptr %84, i32 0, i32 22, i32 5
  %86 = load ptr, ptr %85, align 4
  br label %87

87:                                               ; preds = %99, %77
  %88 = phi i32 [ 1, %77 ], [ %100, %99 ]
  %89 = add nuw nsw i32 %88, %83
  %90 = getelementptr ptr, ptr %86, i32 %89
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = getelementptr ptr, ptr %86, i32 %89
  store ptr %1, ptr %94, align 4
  %95 = getelementptr inbounds %struct.d40_desc, ptr %1, i32 0, i32 5
  %96 = load i32, ptr %95, align 4
  %97 = add i32 %96, 1
  store i32 %97, ptr %95, align 4
  %98 = load ptr, ptr %46, align 4
  br label %102

99:                                               ; preds = %87
  %100 = add nuw nsw i32 %88, 1
  %101 = icmp eq i32 %100, 64
  br i1 %101, label %102, label %87

102:                                              ; preds = %99, %93
  %103 = phi ptr [ %98, %93 ], [ %84, %99 ]
  %104 = phi i32 [ %88, %93 ], [ -22, %99 ]
  %105 = getelementptr inbounds %struct.d40_base, ptr %103, i32 0, i32 22, i32 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %105, i32 noundef %79) #13
  %106 = xor i1 %63, true
  %107 = icmp eq i32 %104, -22
  %108 = select i1 %106, i1 true, i1 %107
  br i1 %108, label %109, label %124

109:                                              ; preds = %102
  br i1 %107, label %110, label %112

110:                                              ; preds = %109, %73, %45
  %111 = phi i32 [ -22, %109 ], [ -22, %73 ], [ 0, %45 ]
  br label %112

112:                                              ; preds = %110, %109
  %113 = phi i32 [ -22, %110 ], [ %104, %109 ]
  %114 = phi i32 [ %111, %110 ], [ %104, %109 ]
  %115 = phi i32 [ 2, %110 ], [ 0, %109 ]
  %116 = getelementptr inbounds %struct.d40_chan, ptr %0, i32 0, i32 20
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.d40_desc, ptr %1, i32 0, i32 1, i32 1
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr %struct.d40_log_lli, ptr %119, i32 %51
  %121 = load ptr, ptr %49, align 4
  %122 = getelementptr %struct.d40_log_lli, ptr %121, i32 %51
  tail call void @d40_log_lli_lcpa_write(ptr noundef %117, ptr noundef %120, ptr noundef %122, i32 noundef %113, i32 noundef %115) #13
  %123 = add i32 %51, 1
  br label %124

124:                                              ; preds = %112, %102
  %125 = phi i32 [ %114, %112 ], [ %104, %102 ]
  %126 = phi i32 [ %113, %112 ], [ %104, %102 ]
  %127 = phi i32 [ %123, %112 ], [ %51, %102 ]
  %128 = icmp sgt i32 %126, -1
  %129 = icmp slt i32 %127, %53
  %130 = select i1 %128, i1 %129, i1 false
  br i1 %130, label %131, label %209

131:                                              ; preds = %124
  %132 = getelementptr inbounds %struct.d40_chan, ptr %0, i32 0, i32 4
  %133 = select i1 %63, i32 %125, i32 -22
  %134 = getelementptr inbounds %struct.d40_desc, ptr %1, i32 0, i32 5
  %135 = getelementptr inbounds %struct.d40_chan, ptr %0, i32 0, i32 20
  %136 = getelementptr inbounds %struct.d40_desc, ptr %1, i32 0, i32 1, i32 1
  %137 = getelementptr inbounds %struct.d40_base, ptr %47, i32 0, i32 22, i32 1
  br label %138

138:                                              ; preds = %207, %131
  %139 = phi i32 [ %126, %131 ], [ %181, %207 ]
  %140 = phi i32 [ %127, %131 ], [ %149, %207 ]
  %141 = load ptr, ptr %132, align 4
  %142 = getelementptr inbounds %struct.d40_phy_res, ptr %141, i32 0, i32 2
  %143 = load i32, ptr %142, align 4
  %144 = shl i32 %143, 10
  %145 = shl i32 %139, 4
  %146 = add i32 %144, %145
  %147 = load ptr, ptr %48, align 4
  %148 = getelementptr i8, ptr %147, i32 %146
  %149 = add nsw i32 %140, 1
  %150 = icmp slt i32 %149, %53
  br i1 %150, label %151, label %180

151:                                              ; preds = %138
  %152 = load ptr, ptr %46, align 4
  %153 = getelementptr inbounds %struct.d40_base, ptr %152, i32 0, i32 22, i32 4
  %154 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %153) #13
  %155 = load ptr, ptr %132, align 4
  %156 = getelementptr inbounds %struct.d40_phy_res, ptr %155, i32 0, i32 2
  %157 = load i32, ptr %156, align 4
  %158 = shl i32 %157, 7
  %159 = load ptr, ptr %46, align 4
  %160 = getelementptr inbounds %struct.d40_base, ptr %159, i32 0, i32 22, i32 5
  %161 = load ptr, ptr %160, align 4
  br label %162

162:                                              ; preds = %173, %151
  %163 = phi i32 [ 1, %151 ], [ %174, %173 ]
  %164 = add nuw nsw i32 %163, %158
  %165 = getelementptr ptr, ptr %161, i32 %164
  %166 = load ptr, ptr %165, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %168, label %173

168:                                              ; preds = %162
  %169 = getelementptr ptr, ptr %161, i32 %164
  store ptr %1, ptr %169, align 4
  %170 = load i32, ptr %134, align 4
  %171 = add i32 %170, 1
  store i32 %171, ptr %134, align 4
  %172 = load ptr, ptr %46, align 4
  br label %176

173:                                              ; preds = %162
  %174 = add nuw nsw i32 %163, 1
  %175 = icmp eq i32 %174, 64
  br i1 %175, label %176, label %162

176:                                              ; preds = %173, %168
  %177 = phi ptr [ %172, %168 ], [ %159, %173 ]
  %178 = phi i32 [ %163, %168 ], [ -22, %173 ]
  %179 = getelementptr inbounds %struct.d40_base, ptr %177, i32 0, i32 22, i32 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %179, i32 noundef %154) #13
  br label %180

180:                                              ; preds = %176, %138
  %181 = phi i32 [ %178, %176 ], [ %133, %138 ]
  %182 = icmp eq i32 %181, -22
  %183 = select i1 %56, i1 true, i1 %182
  %184 = select i1 %183, i32 2, i32 0
  %185 = icmp eq i32 %139, %125
  %186 = select i1 %63, i1 %185, i1 false
  br i1 %186, label %187, label %193

187:                                              ; preds = %180
  %188 = load ptr, ptr %135, align 4
  %189 = load ptr, ptr %136, align 4
  %190 = getelementptr %struct.d40_log_lli, ptr %189, i32 %140
  %191 = load ptr, ptr %49, align 4
  %192 = getelementptr %struct.d40_log_lli, ptr %191, i32 %140
  tail call void @d40_log_lli_lcpa_write(ptr noundef %188, ptr noundef %190, ptr noundef %192, i32 noundef %181, i32 noundef %184) #13
  br label %193

193:                                              ; preds = %187, %180
  %194 = load ptr, ptr %136, align 4
  %195 = getelementptr %struct.d40_log_lli, ptr %194, i32 %140
  %196 = load ptr, ptr %49, align 4
  %197 = getelementptr %struct.d40_log_lli, ptr %196, i32 %140
  tail call void @d40_log_lli_lcla_write(ptr noundef %148, ptr noundef %195, ptr noundef %197, i32 noundef %181, i32 noundef %184) #13
  br i1 %61, label %198, label %204

198:                                              ; preds = %193
  %199 = load ptr, ptr %46, align 4
  %200 = getelementptr inbounds %struct.d40_base, ptr %199, i32 0, i32 2
  %201 = load ptr, ptr %200, align 4
  %202 = load i32, ptr %137, align 4
  %203 = add i32 %202, %146
  tail call void @dma_sync_single_for_device(ptr noundef %201, i32 noundef %203, i32 noundef 16, i32 noundef 1) #13
  br label %204

204:                                              ; preds = %198, %193
  %205 = icmp eq i32 %181, %125
  %206 = select i1 %182, i1 true, i1 %205
  br i1 %206, label %209, label %207

207:                                              ; preds = %204
  %208 = icmp eq i32 %149, %53
  br i1 %208, label %209, label %138

209:                                              ; preds = %207, %204, %124
  %210 = phi i32 [ %127, %124 ], [ %149, %204 ], [ %53, %207 ]
  store i32 %210, ptr %50, align 4
  br label %211

211:                                              ; preds = %209, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @d40_log_lli_lcpa_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @d40_log_lli_lcla_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @d40_channel_execute_command(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.d40_chan, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %188, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.d40_chan, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.d40_phy_res, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.d40_chan, ptr %0, i32 0, i32 16
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.d40_base, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #13
  switch i32 %1, label %185 [
    i32 0, label %16
    i32 2, label %16
    i32 1, label %94
  ]

16:                                               ; preds = %6, %6
  %17 = and i32 %10, 1
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 80, i32 84
  %20 = getelementptr i8, ptr %14, i32 %19
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !49
  %22 = load ptr, ptr %7, align 4
  %23 = getelementptr inbounds %struct.d40_phy_res, ptr %22, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = sdiv i32 %24, 2
  %26 = shl nsw i32 %25, 1
  %27 = shl i32 3, %26
  %28 = and i32 %27, %21
  %29 = lshr i32 %28, %26
  %30 = icmp eq i32 %29, 1
  %31 = getelementptr inbounds %struct.d40_chan, ptr %0, i32 0, i32 13
  %32 = getelementptr inbounds %struct.d40_chan, ptr %0, i32 0, i32 13, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = srem i32 %33, 16
  %35 = load i32, ptr %31, align 4
  %36 = and i32 %35, -2
  %37 = icmp eq i32 %36, 2
  br i1 %30, label %38, label %43

38:                                               ; preds = %16
  br i1 %37, label %39, label %42

39:                                               ; preds = %38
  tail call fastcc void @__d40_config_set_event(ptr noundef %0, i32 noundef 2, i32 noundef %34, i32 noundef 12) #13
  %40 = load i32, ptr %31, align 4
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %75, label %42

42:                                               ; preds = %39, %38
  tail call fastcc void @__d40_config_set_event(ptr noundef %0, i32 noundef 2, i32 noundef %34, i32 noundef 28) #13
  br label %75

43:                                               ; preds = %16
  br i1 %37, label %48, label %44

44:                                               ; preds = %43
  %45 = shl nsw i32 %34, 1
  %46 = shl i32 3, %45
  %47 = xor i32 %46, -1
  br label %65

48:                                               ; preds = %43
  %49 = load ptr, ptr %11, align 4
  %50 = getelementptr inbounds %struct.d40_base, ptr %49, i32 0, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr i8, ptr %51, i32 1024
  %53 = shl i32 %24, 5
  %54 = getelementptr i8, ptr %52, i32 %53
  %55 = getelementptr i8, ptr %54, i32 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !50
  tail call void @arm_heavy_mb() #13
  %56 = shl nsw i32 %34, 1
  %57 = shl i32 3, %56
  %58 = xor i32 %57, -1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %58) #13, !srcloc !11
  %59 = load i32, ptr %31, align 4
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %75, label %61

61:                                               ; preds = %48
  %62 = load ptr, ptr %7, align 4
  %63 = getelementptr inbounds %struct.d40_phy_res, ptr %62, i32 0, i32 2
  %64 = load i32, ptr %63, align 4
  br label %65

65:                                               ; preds = %61, %44
  %66 = phi i32 [ %47, %44 ], [ %58, %61 ]
  %67 = phi i32 [ %24, %44 ], [ %64, %61 ]
  %68 = load ptr, ptr %11, align 4
  %69 = getelementptr inbounds %struct.d40_base, ptr %68, i32 0, i32 3
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr i8, ptr %70, i32 1024
  %72 = shl i32 %67, 5
  %73 = getelementptr i8, ptr %71, i32 %72
  %74 = getelementptr i8, ptr %73, i32 28
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !50
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %66) #13, !srcloc !11
  br label %75

75:                                               ; preds = %65, %48, %42, %39
  %76 = load ptr, ptr %11, align 4
  %77 = getelementptr inbounds %struct.d40_base, ptr %76, i32 0, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr i8, ptr %78, i32 1024
  %80 = load ptr, ptr %7, align 4
  %81 = getelementptr inbounds %struct.d40_phy_res, ptr %80, i32 0, i32 2
  %82 = load i32, ptr %81, align 4
  %83 = shl i32 %82, 5
  %84 = getelementptr i8, ptr %79, i32 %83
  %85 = getelementptr i8, ptr %84, i32 12
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !51
  %87 = getelementptr i8, ptr %84, i32 28
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !52
  %89 = or i32 %86, %1
  %90 = or i32 %89, %88
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %185

92:                                               ; preds = %75
  %93 = tail call fastcc i32 @__d40_execute_command_phy(ptr noundef %0, i32 noundef 0) #13
  br label %185

94:                                               ; preds = %6
  %95 = getelementptr inbounds %struct.d40_chan, ptr %0, i32 0, i32 13
  %96 = getelementptr inbounds %struct.d40_chan, ptr %0, i32 0, i32 13, i32 5
  %97 = load i32, ptr %96, align 4
  %98 = srem i32 %97, 16
  %99 = load i32, ptr %95, align 4
  %100 = and i32 %99, -2
  %101 = icmp eq i32 %100, 2
  br i1 %101, label %108, label %102

102:                                              ; preds = %94
  %103 = shl nsw i32 %98, 1
  %104 = shl nuw i32 1, %103
  %105 = shl i32 3, %103
  %106 = xor i32 %105, -1
  %107 = or i32 %104, %106
  br label %136

108:                                              ; preds = %94
  %109 = load ptr, ptr %11, align 4
  %110 = getelementptr inbounds %struct.d40_base, ptr %109, i32 0, i32 3
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr i8, ptr %111, i32 1024
  %113 = load ptr, ptr %7, align 4
  %114 = getelementptr inbounds %struct.d40_phy_res, ptr %113, i32 0, i32 2
  %115 = load i32, ptr %114, align 4
  %116 = shl i32 %115, 5
  %117 = getelementptr i8, ptr %112, i32 %116
  %118 = getelementptr i8, ptr %117, i32 12
  %119 = shl nsw i32 %98, 1
  %120 = shl nuw i32 1, %119
  %121 = shl i32 3, %119
  %122 = xor i32 %121, -1
  %123 = or i32 %120, %122
  br label %124

124:                                              ; preds = %128, %108
  %125 = phi i32 [ %126, %128 ], [ 100, %108 ]
  %126 = add nsw i32 %125, -1
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %124
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !53
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 %123) #13, !srcloc !11
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %118) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !54
  %130 = and i32 %129, %121
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %124, label %133

132:                                              ; preds = %124
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 1228, i32 noundef 9, ptr noundef null) #13
  br label %133

133:                                              ; preds = %132, %128
  %134 = load i32, ptr %95, align 4
  %135 = icmp eq i32 %134, 2
  br i1 %135, label %158, label %136

136:                                              ; preds = %133, %102
  %137 = phi i32 [ %107, %102 ], [ %123, %133 ]
  %138 = phi i32 [ %105, %102 ], [ %121, %133 ]
  %139 = load ptr, ptr %11, align 4
  %140 = getelementptr inbounds %struct.d40_base, ptr %139, i32 0, i32 3
  %141 = load ptr, ptr %140, align 4
  %142 = getelementptr i8, ptr %141, i32 1024
  %143 = load ptr, ptr %7, align 4
  %144 = getelementptr inbounds %struct.d40_phy_res, ptr %143, i32 0, i32 2
  %145 = load i32, ptr %144, align 4
  %146 = shl i32 %145, 5
  %147 = getelementptr i8, ptr %142, i32 %146
  %148 = getelementptr i8, ptr %147, i32 28
  br label %149

149:                                              ; preds = %153, %136
  %150 = phi i32 [ %151, %153 ], [ 100, %136 ]
  %151 = add nsw i32 %150, -1
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %157, label %153

153:                                              ; preds = %149
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !53
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %148, i32 %137) #13, !srcloc !11
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %148) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !54
  %155 = and i32 %154, %138
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %149, label %158

157:                                              ; preds = %149
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 1228, i32 noundef 9, ptr noundef null) #13
  br label %158

158:                                              ; preds = %157, %153, %133
  %159 = load ptr, ptr %11, align 4
  %160 = getelementptr inbounds %struct.d40_base, ptr %159, i32 0, i32 1
  %161 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %160) #13
  %162 = load ptr, ptr %7, align 4
  %163 = getelementptr inbounds %struct.d40_phy_res, ptr %162, i32 0, i32 2
  %164 = load i32, ptr %163, align 4
  %165 = and i32 %164, 1
  %166 = icmp eq i32 %165, 0
  %167 = load ptr, ptr %11, align 4
  %168 = getelementptr inbounds %struct.d40_base, ptr %167, i32 0, i32 3
  %169 = load ptr, ptr %168, align 4
  %170 = select i1 %166, i32 80, i32 84
  %171 = getelementptr i8, ptr %169, i32 %170
  %172 = sdiv i32 %164, 2
  %173 = shl nsw i32 %172, 1
  %174 = shl i32 3, %173
  %175 = xor i32 %174, -1
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !55
  tail call void @arm_heavy_mb() #13
  %176 = load ptr, ptr %7, align 4
  %177 = getelementptr inbounds %struct.d40_phy_res, ptr %176, i32 0, i32 2
  %178 = load i32, ptr %177, align 4
  %179 = sdiv i32 %178, 2
  %180 = shl nsw i32 %179, 1
  %181 = shl nuw i32 1, %180
  %182 = or i32 %181, %175
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %171, i32 %182) #13, !srcloc !11
  %183 = load ptr, ptr %11, align 4
  %184 = getelementptr inbounds %struct.d40_base, ptr %183, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %184, i32 noundef %161) #13
  br label %185

185:                                              ; preds = %158, %92, %75, %6
  %186 = phi i32 [ 0, %6 ], [ 0, %158 ], [ %93, %92 ], [ 0, %75 ]
  %187 = load ptr, ptr %7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %187, i32 noundef %15) #13
  br label %190

188:                                              ; preds = %2
  %189 = tail call fastcc i32 @__d40_execute_command_phy(ptr noundef %0, i32 noundef %1)
  br label %190

190:                                              ; preds = %188, %185
  %191 = phi i32 [ %186, %185 ], [ %189, %188 ]
  ret i32 %191
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__d40_execute_command_phy(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = tail call fastcc i32 @__d40_execute_command_phy(ptr noundef %0, i32 noundef 2)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %76

7:                                                ; preds = %4, %2
  %8 = getelementptr inbounds %struct.d40_chan, ptr %0, i32 0, i32 16
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.d40_base, ptr %9, i32 0, i32 1
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #13
  %12 = getelementptr inbounds %struct.d40_chan, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.d40_phy_res, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  %18 = load ptr, ptr %8, align 4
  %19 = getelementptr inbounds %struct.d40_base, ptr %18, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = select i1 %17, i32 80, i32 84
  %22 = getelementptr i8, ptr %20, i32 %21
  %23 = icmp eq i32 %1, 2
  br i1 %23, label %28, label %24

24:                                               ; preds = %7
  %25 = sdiv i32 %15, 2
  %26 = shl nsw i32 %25, 1
  %27 = shl i32 3, %26
  br label %38

28:                                               ; preds = %7
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !56
  %30 = load ptr, ptr %12, align 4
  %31 = getelementptr inbounds %struct.d40_phy_res, ptr %30, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = sdiv i32 %32, 2
  %34 = shl nsw i32 %33, 1
  %35 = shl i32 3, %34
  %36 = and i32 %35, %29
  %37 = lshr i32 %36, %34
  switch i32 %37, label %38 [
    i32 3, label %72
    i32 0, label %72
  ]

38:                                               ; preds = %28, %24
  %39 = phi i32 [ %27, %24 ], [ %35, %28 ]
  %40 = xor i32 %39, -1
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !55
  tail call void @arm_heavy_mb() #13
  %41 = load ptr, ptr %12, align 4
  %42 = getelementptr inbounds %struct.d40_phy_res, ptr %41, i32 0, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = sdiv i32 %43, 2
  %45 = shl nsw i32 %44, 1
  %46 = shl i32 %1, %45
  %47 = or i32 %46, %40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %47) #13, !srcloc !11
  br i1 %23, label %48, label %72

48:                                               ; preds = %60, %38
  %49 = phi i32 [ %61, %60 ], [ 0, %38 ]
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !57
  %51 = load ptr, ptr %12, align 4
  %52 = getelementptr inbounds %struct.d40_phy_res, ptr %51, i32 0, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = sdiv i32 %53, 2
  %55 = shl nsw i32 %54, 1
  %56 = shl i32 3, %55
  %57 = and i32 %56, %50
  %58 = lshr i32 %57, %55
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !58
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !59
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 644244) #13
  switch i32 %58, label %60 [
    i32 3, label %72
    i32 0, label %72
  ]

60:                                               ; preds = %48
  %61 = add nuw nsw i32 %49, 1
  %62 = icmp eq i32 %61, 500
  br i1 %62, label %63, label %48

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.d40_chan, ptr %0, i32 0, i32 5, i32 5
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.dma_chan_dev, ptr %65, i32 0, i32 1
  %67 = load ptr, ptr %12, align 4
  %68 = getelementptr inbounds %struct.d40_phy_res, ptr %67, i32 0, i32 2
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.d40_chan, ptr %0, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__.__d40_execute_command_phy, i32 noundef %69, i32 noundef %71, i32 noundef %58) #12
  tail call void @dump_stack() #12
  br label %72

72:                                               ; preds = %63, %48, %48, %38, %28, %28
  %73 = phi i32 [ 0, %28 ], [ -16, %63 ], [ 0, %38 ], [ 0, %28 ], [ 0, %48 ], [ 0, %48 ]
  %74 = load ptr, ptr %8, align 4
  %75 = getelementptr inbounds %struct.d40_base, ptr %74, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %75, i32 noundef %11) #13
  br label %76

76:                                               ; preds = %72, %4
  %77 = phi i32 [ %73, %72 ], [ %5, %4 ]
  ret i32 %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__d40_config_set_event(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.d40_chan, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.d40_base, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 1024
  %10 = getelementptr inbounds %struct.d40_chan, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.d40_phy_res, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = shl i32 %13, 5
  %15 = getelementptr i8, ptr %9, i32 %14
  %16 = getelementptr i8, ptr %15, i32 %3
  switch i32 %1, label %67 [
    i32 0, label %23
    i32 2, label %27
    i32 1, label %17
  ]

17:                                               ; preds = %4
  %18 = shl i32 %2, 1
  %19 = shl nuw i32 1, %18
  %20 = shl i32 3, %18
  %21 = xor i32 %20, -1
  %22 = or i32 %19, %21
  br label %58

23:                                               ; preds = %4
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !50
  tail call void @arm_heavy_mb() #13
  %24 = shl i32 %2, 1
  %25 = shl i32 3, %24
  %26 = xor i32 %25, -1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %26) #13, !srcloc !11
  br label %67

27:                                               ; preds = %4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !60
  %29 = shl i32 %2, 1
  %30 = shl i32 3, %29
  %31 = and i32 %28, %30
  %32 = shl i32 -3, %29
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %67, label %35

35:                                               ; preds = %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !61
  tail call void @arm_heavy_mb() #13
  %36 = shl i32 2, %29
  %37 = xor i32 %30, -1
  %38 = or i32 %36, %37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %38) #13, !srcloc !11
  br label %39

39:                                               ; preds = %46, %35
  %40 = phi i32 [ 0, %35 ], [ %47, %46 ]
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !62
  %42 = and i32 %41, %30
  %43 = lshr i32 %42, %29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !63
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !64
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 644244) #13
  %45 = icmp eq i32 %43, 0
  br i1 %45, label %67, label %46

46:                                               ; preds = %39
  %47 = add nuw nsw i32 %40, 1
  %48 = icmp eq i32 %47, 500
  br i1 %48, label %49, label %39

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.d40_chan, ptr %0, i32 0, i32 5, i32 5
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.dma_chan_dev, ptr %51, i32 0, i32 1
  %53 = load ptr, ptr %10, align 4
  %54 = getelementptr inbounds %struct.d40_phy_res, ptr %53, i32 0, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.d40_chan, ptr %0, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.__d40_config_set_event, i32 noundef %55, i32 noundef %57, i32 noundef %43) #12
  br label %67

58:                                               ; preds = %62, %17
  %59 = phi i32 [ %60, %62 ], [ 100, %17 ]
  %60 = add nsw i32 %59, -1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !53
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %22) #13, !srcloc !11
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !54
  %64 = and i32 %63, %20
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %58, label %67

66:                                               ; preds = %58
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 1228, i32 noundef 9, ptr noundef null) #13
  br label %67

67:                                               ; preds = %66, %62, %49, %39, %27, %23, %4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @d40_chan_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #3 section ".init.text" {
  %6 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 3
  store volatile ptr %6, ptr %6, align 4
  %7 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 3, i32 1
  store ptr %6, ptr %7, align 4
  %8 = add i32 %4, %3
  %9 = icmp sgt i32 %8, %3
  br i1 %9, label %10, label %34

10:                                               ; preds = %10, %5
  %11 = phi i32 [ %32, %10 ], [ %3, %5 ]
  %12 = getelementptr %struct.d40_chan, ptr %2, i32 %11
  %13 = getelementptr %struct.d40_chan, ptr %2, i32 %11, i32 16
  store ptr %0, ptr %13, align 4
  %14 = getelementptr %struct.d40_chan, ptr %2, i32 %11, i32 5
  store ptr %1, ptr %14, align 4
  store i32 0, ptr %12, align 4
  %15 = getelementptr %struct.d40_chan, ptr %2, i32 %11, i32 1
  store i32 -1, ptr %15, align 4
  %16 = getelementptr %struct.d40_chan, ptr %2, i32 %11, i32 10
  store volatile ptr %16, ptr %16, align 4
  %17 = getelementptr %struct.d40_chan, ptr %2, i32 %11, i32 10, i32 1
  store ptr %16, ptr %17, align 4
  %18 = getelementptr %struct.d40_chan, ptr %2, i32 %11, i32 9
  store volatile ptr %18, ptr %18, align 4
  %19 = getelementptr %struct.d40_chan, ptr %2, i32 %11, i32 9, i32 1
  store ptr %18, ptr %19, align 4
  %20 = getelementptr %struct.d40_chan, ptr %2, i32 %11, i32 11
  store volatile ptr %20, ptr %20, align 4
  %21 = getelementptr %struct.d40_chan, ptr %2, i32 %11, i32 11, i32 1
  store ptr %20, ptr %21, align 4
  %22 = getelementptr %struct.d40_chan, ptr %2, i32 %11, i32 8
  store volatile ptr %22, ptr %22, align 4
  %23 = getelementptr %struct.d40_chan, ptr %2, i32 %11, i32 8, i32 1
  store ptr %22, ptr %23, align 4
  %24 = getelementptr %struct.d40_chan, ptr %2, i32 %11, i32 7
  store volatile ptr %24, ptr %24, align 4
  %25 = getelementptr %struct.d40_chan, ptr %2, i32 %11, i32 7, i32 1
  store ptr %24, ptr %25, align 4
  %26 = getelementptr %struct.d40_chan, ptr %2, i32 %11, i32 12
  store volatile ptr %26, ptr %26, align 4
  %27 = getelementptr %struct.d40_chan, ptr %2, i32 %11, i32 12, i32 1
  store ptr %26, ptr %27, align 4
  %28 = getelementptr %struct.d40_chan, ptr %2, i32 %11, i32 6
  tail call void @tasklet_setup(ptr noundef %28, ptr noundef nonnull @dma_tasklet) #13
  %29 = getelementptr %struct.d40_chan, ptr %2, i32 %11, i32 5, i32 8
  %30 = load ptr, ptr %7, align 4
  store ptr %29, ptr %7, align 4
  store ptr %6, ptr %29, align 4
  %31 = getelementptr %struct.d40_chan, ptr %2, i32 %11, i32 5, i32 8, i32 1
  store ptr %30, ptr %31, align 4
  store volatile ptr %29, ptr %30, align 4
  %32 = add i32 %11, 1
  %33 = icmp eq i32 %32, %8
  br i1 %33, label %34, label %10

34:                                               ; preds = %10, %5
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc void @d40_ops_init(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 6
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 2048
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 39
  store ptr @d40_prep_slave_sg, ptr %8, align 4
  %9 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 21
  store i32 6, ptr %9, align 4
  br label %10

10:                                               ; preds = %7, %2
  %11 = load volatile i32, ptr %3, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 30
  store ptr @d40_prep_memcpy, ptr %15, align 4
  %16 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 21
  store i32 1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 10
  store i32 2, ptr %17, align 4
  br label %18

18:                                               ; preds = %14, %10
  %19 = load volatile i32, ptr %3, align 4
  %20 = and i32 %19, 4096
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 40
  store ptr @dma40_prep_dma_cyclic, ptr %23, align 4
  br label %24

24:                                               ; preds = %22, %18
  %25 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 27
  store ptr @d40_alloc_chan_resources, ptr %25, align 4
  %26 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 29
  store ptr @d40_free_chan_resources, ptr %26, align 4
  %27 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 50
  store ptr @d40_issue_pending, ptr %27, align 4
  %28 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 49
  store ptr @d40_tx_status, ptr %28, align 4
  %29 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 44
  store ptr @d40_set_runtime_config, ptr %29, align 4
  %30 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 45
  store ptr @d40_pause, ptr %30, align 4
  %31 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 46
  store ptr @d40_resume, ptr %31, align 4
  %32 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 47
  store ptr @d40_terminate_all, ptr %32, align 4
  %33 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 26
  store i32 2, ptr %33, align 4
  %34 = getelementptr inbounds %struct.d40_base, ptr %0, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  store ptr %35, ptr %36, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmaenginem_async_device_register(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dma_tasklet(ptr noundef %0) #0 {
  %2 = alloca %struct.dmaengine_result, align 8
  %3 = getelementptr i8, ptr %0, i32 -84
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #13
  %5 = getelementptr i8, ptr %0, i32 48
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  %8 = getelementptr i8, ptr %6, i32 -148
  %9 = icmp eq ptr %8, null
  %10 = or i1 %7, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = getelementptr i8, ptr %0, i32 40
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  %15 = getelementptr i8, ptr %13, i32 -148
  %16 = icmp eq ptr %15, null
  %17 = or i1 %14, %16
  br i1 %17, label %132, label %18

18:                                               ; preds = %11
  %19 = getelementptr i8, ptr %13, i32 9
  %20 = load i8, ptr %19, align 1, !range !12
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %132, label %22

22:                                               ; preds = %18, %1
  %23 = phi ptr [ %15, %18 ], [ %8, %1 ]
  %24 = getelementptr inbounds %struct.d40_desc, ptr %23, i32 0, i32 9
  %25 = load i8, ptr %24, align 1, !range !12
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.d40_desc, ptr %23, i32 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = icmp slt i32 %29, 1
  br i1 %30, label %31, label %32, !prof !17

31:                                               ; preds = %27
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #13, !srcloc !65
  unreachable

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.d40_desc, ptr %23, i32 0, i32 6, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.dma_chan, ptr %34, i32 0, i32 3
  store i32 %29, ptr %35, align 4
  store i32 0, ptr %28, align 4
  br label %36

36:                                               ; preds = %32, %22
  %37 = getelementptr i8, ptr %0, i32 -76
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #13
  br label %139

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.d40_desc, ptr %23, i32 0, i32 6, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  %46 = getelementptr inbounds %struct.d40_desc, ptr %23, i32 0, i32 6, i32 6
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.d40_desc, ptr %23, i32 0, i32 6, i32 7
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.d40_desc, ptr %23, i32 0, i32 6, i32 8
  %51 = load ptr, ptr %50, align 4
  %52 = load i8, ptr %24, align 1, !range !12
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %115

54:                                               ; preds = %41
  %55 = and i32 %43, 2
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.d40_desc, ptr %23, i32 0, i32 7
  %59 = getelementptr inbounds %struct.d40_desc, ptr %23, i32 0, i32 7, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = load ptr, ptr %58, align 4
  %62 = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  store ptr %60, ptr %62, align 4
  store volatile ptr %61, ptr %60, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %58, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %59, align 4
  tail call fastcc void @d40_desc_free(ptr noundef %3, ptr noundef nonnull %23)
  br label %115

63:                                               ; preds = %54
  %64 = getelementptr inbounds %struct.d40_desc, ptr %23, i32 0, i32 8
  %65 = load i8, ptr %64, align 4, !range !12
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %115

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.d40_desc, ptr %23, i32 0, i32 7
  %69 = getelementptr inbounds %struct.d40_desc, ptr %23, i32 0, i32 7, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = load ptr, ptr %68, align 4
  %72 = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  store ptr %70, ptr %72, align 4
  store volatile ptr %71, ptr %70, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %68, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %69, align 4
  %73 = getelementptr i8, ptr %0, i32 -80
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %111, label %76

76:                                               ; preds = %67
  %77 = getelementptr i8, ptr %0, i32 184
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.d40_base, ptr %78, i32 0, i32 22, i32 4
  %80 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %79) #13
  %81 = getelementptr i8, ptr %0, i32 -68
  %82 = getelementptr inbounds %struct.d40_desc, ptr %23, i32 0, i32 5
  br label %83

83:                                               ; preds = %106, %76
  %84 = phi i32 [ 1, %76 ], [ %107, %106 ]
  %85 = load ptr, ptr %81, align 4
  %86 = getelementptr inbounds %struct.d40_phy_res, ptr %85, i32 0, i32 2
  %87 = load i32, ptr %86, align 4
  %88 = shl i32 %87, 7
  %89 = add nuw i32 %88, %84
  %90 = load ptr, ptr %77, align 4
  %91 = getelementptr inbounds %struct.d40_base, ptr %90, i32 0, i32 22, i32 5
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr ptr, ptr %92, i32 %89
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, %23
  br i1 %95, label %96, label %104

96:                                               ; preds = %83
  store ptr null, ptr %93, align 4
  %97 = load i32, ptr %82, align 4
  %98 = add i32 %97, -1
  store i32 %98, ptr %82, align 4
  %99 = icmp ne i32 %98, 0
  %100 = icmp ult i32 %84, 63
  %101 = select i1 %99, i1 %100, i1 false
  br i1 %101, label %106, label %102

102:                                              ; preds = %96
  %103 = load ptr, ptr %77, align 4
  br label %108

104:                                              ; preds = %83
  %105 = icmp ult i32 %84, 63
  br i1 %105, label %106, label %108

106:                                              ; preds = %104, %96
  %107 = add nuw nsw i32 %84, 1
  br label %83

108:                                              ; preds = %104, %102
  %109 = phi ptr [ %103, %102 ], [ %90, %104 ]
  %110 = getelementptr inbounds %struct.d40_base, ptr %109, i32 0, i32 22, i32 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %110, i32 noundef %80) #13
  br label %111

111:                                              ; preds = %108, %67
  %112 = getelementptr i8, ptr %0, i32 24
  %113 = getelementptr i8, ptr %0, i32 28
  %114 = load ptr, ptr %113, align 4
  store ptr %68, ptr %113, align 4
  store ptr %112, ptr %68, align 4
  store ptr %114, ptr %69, align 4
  store volatile ptr %68, ptr %114, align 4
  store i8 1, ptr %64, align 4
  br label %115

115:                                              ; preds = %111, %63, %57, %41
  %116 = load i32, ptr %37, align 4
  %117 = add i32 %116, -1
  store i32 %117, ptr %37, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.tasklet_struct, ptr %0, i32 0, i32 1
  %121 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %120) #13
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  tail call void @__tasklet_schedule(ptr noundef %0) #13
  br label %124

124:                                              ; preds = %123, %119, %115
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #13
  br i1 %45, label %139, label %125

125:                                              ; preds = %124
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  store i64 0, ptr %2, align 8
  %126 = icmp eq ptr %49, null
  br i1 %126, label %128, label %127

127:                                              ; preds = %125
  call void %49(ptr noundef %51, ptr noundef nonnull %2) #13
  br label %131

128:                                              ; preds = %125
  %129 = icmp eq ptr %47, null
  br i1 %129, label %131, label %130

130:                                              ; preds = %128
  tail call void %47(ptr noundef %51) #13
  br label %131

131:                                              ; preds = %130, %128, %127
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  br label %139

132:                                              ; preds = %18, %11
  %133 = getelementptr i8, ptr %0, i32 -76
  %134 = load i32, ptr %133, align 4
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %132
  %137 = add nsw i32 %134, -1
  store i32 %137, ptr %133, align 4
  br label %138

138:                                              ; preds = %136, %132
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #13
  br label %139

139:                                              ; preds = %138, %131, %124, %40
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @d40_desc_free(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.d40_desc, ptr %1, i32 0, i32 2, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.d40_chan, ptr %0, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.d40_base, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.d40_desc, ptr %1, i32 0, i32 2, i32 1
  %12 = load i32, ptr %11, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %10, i32 noundef %4, i32 noundef %12, i32 noundef 1, i32 noundef 0) #13
  br label %13

13:                                               ; preds = %6, %2
  %14 = getelementptr inbounds %struct.d40_desc, ptr %1, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  tail call void @kfree(ptr noundef %15) #13
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %1, i8 0, i64 24, i1 false) #13
  %16 = getelementptr inbounds %struct.d40_chan, ptr %0, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %54, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.d40_chan, ptr %0, i32 0, i32 16
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.d40_base, ptr %21, i32 0, i32 22, i32 4
  %23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %22) #13
  %24 = getelementptr inbounds %struct.d40_chan, ptr %0, i32 0, i32 4
  %25 = getelementptr inbounds %struct.d40_desc, ptr %1, i32 0, i32 5
  br label %26

26:                                               ; preds = %49, %19
  %27 = phi i32 [ 1, %19 ], [ %50, %49 ]
  %28 = load ptr, ptr %24, align 4
  %29 = getelementptr inbounds %struct.d40_phy_res, ptr %28, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = shl i32 %30, 7
  %32 = add nuw i32 %31, %27
  %33 = load ptr, ptr %20, align 4
  %34 = getelementptr inbounds %struct.d40_base, ptr %33, i32 0, i32 22, i32 5
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr ptr, ptr %35, i32 %32
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %1
  br i1 %38, label %39, label %47

39:                                               ; preds = %26
  store ptr null, ptr %36, align 4
  %40 = load i32, ptr %25, align 4
  %41 = add i32 %40, -1
  store i32 %41, ptr %25, align 4
  %42 = icmp ne i32 %41, 0
  %43 = icmp ult i32 %27, 63
  %44 = select i1 %42, i1 %43, i1 false
  br i1 %44, label %49, label %45

45:                                               ; preds = %39
  %46 = load ptr, ptr %20, align 4
  br label %51

47:                                               ; preds = %26
  %48 = icmp ult i32 %27, 63
  br i1 %48, label %49, label %51

49:                                               ; preds = %47, %39
  %50 = add nuw nsw i32 %27, 1
  br label %26

51:                                               ; preds = %47, %45
  %52 = phi ptr [ %46, %45 ], [ %33, %47 ]
  %53 = getelementptr inbounds %struct.d40_base, ptr %52, i32 0, i32 22, i32 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %53, i32 noundef %23) #13
  br label %54

54:                                               ; preds = %51, %13
  %55 = getelementptr inbounds %struct.d40_chan, ptr %0, i32 0, i32 16
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.d40_base, ptr %56, i32 0, i32 26
  %58 = load ptr, ptr %57, align 4
  tail call void @kmem_cache_free(ptr noundef %58, ptr noundef %1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @d40_prep_slave_sg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readnone %5) #0 {
  %7 = add i32 %3, -1
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @d40_prep_sg(ptr noundef %0, ptr noundef %1, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi ptr [ %10, %9 ], [ null, %6 ]
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @d40_prep_memcpy(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.scatterlist, align 4
  %7 = alloca %struct.scatterlist, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 20, i1 false), !annotation !66
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %7, i8 0, i32 20, i1 false), !annotation !66
  call void @sg_init_table(ptr noundef nonnull %6, i32 noundef 1) #13
  call void @sg_init_table(ptr noundef nonnull %7, i32 noundef 1) #13
  %8 = getelementptr inbounds %struct.scatterlist, ptr %6, i32 0, i32 3
  store i32 %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.scatterlist, ptr %7, i32 0, i32 3
  store i32 %2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.scatterlist, ptr %6, i32 0, i32 4
  store i32 %3, ptr %10, align 4
  %11 = getelementptr inbounds %struct.scatterlist, ptr %7, i32 0, i32 4
  store i32 %3, ptr %11, align 4
  %12 = call fastcc ptr @d40_prep_sg(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 0, i32 noundef %4)
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #13
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @dma40_prep_dma_cyclic(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = udiv i32 %2, %3
  %8 = add i32 %7, 1
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %8, i32 20) #13
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %34, label %11, !prof !17

11:                                               ; preds = %6
  %12 = extractvalue { i32, i1 } %9, 0
  %13 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %12, i32 noundef 2304) #15
  %14 = icmp eq ptr %13, null
  br i1 %14, label %34, label %15

15:                                               ; preds = %11
  %16 = icmp ugt i32 %3, %2
  br i1 %16, label %27, label %17

17:                                               ; preds = %15
  %18 = call i32 @llvm.umax.i32(i32 %7, i32 1)
  br label %19

19:                                               ; preds = %19, %17
  %20 = phi i32 [ %25, %19 ], [ 0, %17 ]
  %21 = phi i32 [ %24, %19 ], [ %1, %17 ]
  %22 = getelementptr %struct.scatterlist, ptr %13, i32 %20, i32 3
  store i32 %21, ptr %22, align 4
  %23 = getelementptr %struct.scatterlist, ptr %13, i32 %20, i32 4
  store i32 %3, ptr %23, align 4
  %24 = add i32 %21, %3
  %25 = add nuw i32 %20, 1
  %26 = icmp eq i32 %25, %18
  br i1 %26, label %27, label %19

27:                                               ; preds = %19, %15
  %28 = getelementptr %struct.scatterlist, ptr %13, i32 %7
  %29 = getelementptr %struct.scatterlist, ptr %13, i32 %7, i32 1
  store i32 0, ptr %29, align 4
  %30 = getelementptr %struct.scatterlist, ptr %13, i32 %7, i32 2
  store i32 0, ptr %30, align 4
  %31 = ptrtoint ptr %13 to i32
  %32 = or i32 %31, 1
  store i32 %32, ptr %28, align 4
  %33 = tail call fastcc ptr @d40_prep_sg(ptr noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %13, i32 noundef %7, i32 noundef %4, i32 noundef 1)
  tail call void @kfree(ptr noundef nonnull %13) #13
  br label %34

34:                                               ; preds = %27, %11, %6
  %35 = phi ptr [ %33, %27 ], [ null, %11 ], [ null, %6 ]
  ret ptr %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @d40_alloc_chan_resources(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 -20
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #13
  %5 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 2
  store i32 1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 3
  store i32 1, ptr %6, align 4
  %7 = getelementptr i8, ptr %0, i32 244
  %8 = load i8, ptr %7, align 4, !range !12
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %53

10:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2)
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.dma_device, ptr %11, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  store i32 %13, ptr %2, align 4
  %14 = load volatile i32, ptr %2, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %10
  %18 = load volatile i32, ptr %2, align 4
  %19 = and i32 %18, 2048
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = getelementptr i8, ptr %0, i32 136
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(60) %22, ptr noundef nonnull align 4 dereferenceable(60) @dma40_memcpy_conf_log, i32 60, i1 false) #13
  %23 = getelementptr i8, ptr %0, i32 16
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr [6 x i32], ptr @dma40_memcpy_channels, i32 0, i32 %24
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr i8, ptr %0, i32 152
  store i32 %26, ptr %27, align 4
  %28 = getelementptr i8, ptr %0, i32 260
  %29 = getelementptr i8, ptr %0, i32 264
  tail call void @d40_log_cfg(ptr noundef %22, ptr noundef %29, ptr noundef %28) #13
  br label %46

30:                                               ; preds = %17, %10
  %31 = load volatile i32, ptr %2, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %47, label %34

34:                                               ; preds = %30
  %35 = load volatile i32, ptr %2, align 4
  %36 = and i32 %35, 2048
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %34
  %39 = getelementptr i8, ptr %0, i32 136
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(60) %39, ptr noundef nonnull align 4 dereferenceable(60) @dma40_memcpy_conf_phy, i32 60, i1 false) #13
  %40 = getelementptr i8, ptr %0, i32 256
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr i8, ptr %0, i32 252
  %43 = load i32, ptr %42, align 4
  %44 = or i32 %43, 8192
  store i32 %44, ptr %42, align 4
  %45 = or i32 %41, 24576
  store i32 %45, ptr %40, align 4
  br label %46

46:                                               ; preds = %38, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  br label %53

47:                                               ; preds = %34, %30
  %48 = getelementptr i8, ptr %0, i32 20
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.dma_chan_dev, ptr %49, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.d40_config_memcpy) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  %51 = load ptr, ptr %48, align 4
  %52 = getelementptr inbounds %struct.dma_chan_dev, ptr %51, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.60, ptr noundef nonnull @__func__.d40_alloc_chan_resources) #12
  br label %485

53:                                               ; preds = %46, %1
  %54 = getelementptr i8, ptr %0, i32 136
  %55 = getelementptr i8, ptr %0, i32 152
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr i8, ptr %0, i32 144
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  %60 = getelementptr i8, ptr %0, i32 248
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.d40_base, ptr %61, i32 0, i32 21
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.d40_base, ptr %61, i32 0, i32 10
  %65 = load i32, ptr %64, align 4
  %66 = load i32, ptr %54, align 4
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %74, label %68

68:                                               ; preds = %53
  %69 = icmp ult i32 %66, 2
  br i1 %69, label %70, label %313

70:                                               ; preds = %68
  %71 = shl i32 %56, 1
  %72 = or i32 %71, 1
  %73 = sdiv i32 %56, 16
  br i1 %59, label %166, label %77

74:                                               ; preds = %53
  %75 = shl i32 %56, 1
  %76 = sdiv i32 %56, 16
  br i1 %59, label %166, label %79

77:                                               ; preds = %70
  %78 = icmp eq i32 %66, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %77, %74
  %80 = phi i32 [ %73, %77 ], [ %76, %74 ]
  %81 = icmp sgt i32 %65, 0
  br i1 %81, label %82, label %313

82:                                               ; preds = %79
  %83 = shl nsw i32 %80, 1
  br label %122

84:                                               ; preds = %77
  %85 = getelementptr i8, ptr %0, i32 188
  %86 = load i8, ptr %85, align 4, !range !12
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = icmp sgt i32 %65, 0
  br i1 %89, label %107, label %313

90:                                               ; preds = %84
  %91 = getelementptr i8, ptr %0, i32 192
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr %struct.d40_phy_res, ptr %63, i32 %92
  %94 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %93) #13
  %95 = getelementptr %struct.d40_phy_res, ptr %63, i32 %92, i32 3
  %96 = load i32, ptr %95, align 4
  %97 = getelementptr %struct.d40_phy_res, ptr %63, i32 %92, i32 4
  %98 = load i32, ptr %97, align 4
  %99 = icmp eq i32 %96, -2147483648
  %100 = icmp eq i32 %98, -2147483648
  %101 = select i1 %99, i1 %100, i1 false
  br i1 %101, label %103, label %102

102:                                              ; preds = %90
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %93, i32 noundef %94) #13
  br label %313

103:                                              ; preds = %90
  store i32 1073741824, ptr %97, align 4
  store i32 1073741824, ptr %95, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %93, i32 noundef %94) #13
  %104 = getelementptr i8, ptr %0, i32 -4
  store ptr %93, ptr %104, align 4
  %105 = getelementptr i8, ptr %0, i32 -16
  store i32 -1, ptr %105, align 4
  %106 = load ptr, ptr %60, align 4
  br label %304

107:                                              ; preds = %119, %88
  %108 = phi i32 [ %120, %119 ], [ 0, %88 ]
  %109 = getelementptr %struct.d40_phy_res, ptr %63, i32 %108
  %110 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %109) #13
  %111 = getelementptr %struct.d40_phy_res, ptr %63, i32 %108, i32 3
  %112 = load i32, ptr %111, align 4
  %113 = getelementptr %struct.d40_phy_res, ptr %63, i32 %108, i32 4
  %114 = load i32, ptr %113, align 4
  %115 = icmp eq i32 %112, -2147483648
  %116 = icmp eq i32 %114, -2147483648
  %117 = select i1 %115, i1 %116, i1 false
  br i1 %117, label %118, label %119

118:                                              ; preds = %107
  store i32 1073741824, ptr %113, align 4
  store i32 1073741824, ptr %111, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %109, i32 noundef %110) #13
  br label %290

119:                                              ; preds = %107
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %109, i32 noundef %110) #13
  %120 = add nuw nsw i32 %108, 1
  %121 = icmp eq i32 %120, %65
  br i1 %121, label %313, label %107

122:                                              ; preds = %160, %82
  %123 = phi ptr [ %61, %82 ], [ %161, %160 ]
  %124 = phi i32 [ 0, %82 ], [ %162, %160 ]
  %125 = add i32 %124, %83
  %126 = add i32 %125, 2
  %127 = icmp eq i32 %125, 2147483646
  br i1 %127, label %160, label %128

128:                                              ; preds = %122
  %129 = getelementptr %struct.d40_phy_res, ptr %63, i32 %125
  %130 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %129) #13
  %131 = getelementptr %struct.d40_phy_res, ptr %63, i32 %125, i32 3
  %132 = load i32, ptr %131, align 4
  %133 = getelementptr %struct.d40_phy_res, ptr %63, i32 %125, i32 4
  %134 = load i32, ptr %133, align 4
  %135 = icmp eq i32 %132, -2147483648
  %136 = icmp eq i32 %134, -2147483648
  %137 = select i1 %135, i1 %136, i1 false
  br i1 %137, label %152, label %138

138:                                              ; preds = %128
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %129, i32 noundef %130) #13
  %139 = or i32 %125, 1
  %140 = icmp slt i32 %139, %126
  br i1 %140, label %141, label %158

141:                                              ; preds = %138
  %142 = getelementptr %struct.d40_phy_res, ptr %63, i32 %139
  %143 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %142) #13
  %144 = getelementptr %struct.d40_phy_res, ptr %63, i32 %139, i32 3
  %145 = load i32, ptr %144, align 4
  %146 = getelementptr %struct.d40_phy_res, ptr %63, i32 %139, i32 4
  %147 = load i32, ptr %146, align 4
  %148 = icmp eq i32 %145, -2147483648
  %149 = icmp eq i32 %147, -2147483648
  %150 = select i1 %148, i1 %149, i1 false
  br i1 %150, label %152, label %151

151:                                              ; preds = %141
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %142, i32 noundef %143) #13
  br label %158

152:                                              ; preds = %141, %128
  %153 = phi i32 [ %125, %128 ], [ %139, %141 ]
  %154 = phi ptr [ %129, %128 ], [ %142, %141 ]
  %155 = phi i32 [ %130, %128 ], [ %143, %141 ]
  %156 = phi ptr [ %131, %128 ], [ %144, %141 ]
  %157 = phi ptr [ %133, %128 ], [ %146, %141 ]
  store i32 1073741824, ptr %157, align 4
  store i32 1073741824, ptr %156, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %154, i32 noundef %155) #13
  br label %290

158:                                              ; preds = %151, %138
  %159 = load ptr, ptr %60, align 4
  br label %160

160:                                              ; preds = %158, %122
  %161 = phi ptr [ %159, %158 ], [ %123, %122 ]
  %162 = add i32 %124, 8
  %163 = getelementptr inbounds %struct.d40_base, ptr %161, i32 0, i32 10
  %164 = load i32, ptr %163, align 4
  %165 = icmp slt i32 %162, %164
  br i1 %165, label %122, label %313

166:                                              ; preds = %74, %70
  %167 = phi i32 [ %76, %74 ], [ %73, %70 ]
  %168 = phi i32 [ %75, %74 ], [ %72, %70 ]
  %169 = icmp ne i32 %56, -1
  %170 = icmp sgt i32 %65, 0
  %171 = select i1 %169, i1 %170, i1 false
  br i1 %171, label %172, label %313

172:                                              ; preds = %166
  %173 = shl nsw i32 %167, 1
  %174 = getelementptr i8, ptr %0, i32 188
  %175 = and i32 %56, 15
  %176 = shl nuw nsw i32 1, %175
  br label %177

177:                                              ; preds = %284, %172
  %178 = phi i32 [ 0, %172 ], [ %285, %284 ]
  %179 = add i32 %178, %173
  %180 = load i8, ptr %174, align 4, !range !12
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %221, label %182

182:                                              ; preds = %177
  %183 = getelementptr i8, ptr %0, i32 192
  %184 = load i32, ptr %183, align 4
  %185 = icmp eq i32 %184, %179
  %186 = or i32 %179, 1
  %187 = icmp eq i32 %184, %186
  %188 = or i1 %185, %187
  br i1 %188, label %193, label %189

189:                                              ; preds = %182
  %190 = getelementptr i8, ptr %0, i32 20
  %191 = load ptr, ptr %190, align 4
  %192 = getelementptr inbounds %struct.dma_chan_dev, ptr %191, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %192, ptr noundef nonnull @.str.62, i32 noundef %184) #12
  br label %313

193:                                              ; preds = %182
  %194 = getelementptr %struct.d40_phy_res, ptr %63, i32 %184
  %195 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %194) #13
  %196 = getelementptr %struct.d40_phy_res, ptr %63, i32 %184, i32 3
  %197 = load i32, ptr %196, align 4
  %198 = getelementptr %struct.d40_phy_res, ptr %63, i32 %184, i32 4
  %199 = load i32, ptr %198, align 4
  %200 = or i32 %199, %197
  br i1 %67, label %201, label %207

201:                                              ; preds = %193
  switch i32 %197, label %203 [
    i32 1073741824, label %217
    i32 -2147483648, label %202
  ]

202:                                              ; preds = %201
  store i32 0, ptr %196, align 4
  br label %203

203:                                              ; preds = %202, %201
  %204 = phi i32 [ %197, %201 ], [ 0, %202 ]
  %205 = and i32 %204, %176
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %213, label %217

207:                                              ; preds = %193
  switch i32 %199, label %209 [
    i32 1073741824, label %217
    i32 -2147483648, label %208
  ]

208:                                              ; preds = %207
  store i32 0, ptr %198, align 4
  br label %209

209:                                              ; preds = %208, %207
  %210 = phi i32 [ %199, %207 ], [ 0, %208 ]
  %211 = and i32 %210, %176
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %209, %203
  %214 = phi i32 [ %204, %203 ], [ %210, %209 ]
  %215 = phi ptr [ %196, %203 ], [ %198, %209 ]
  %216 = or i32 %214, %176
  store i32 %216, ptr %215, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %194, i32 noundef %195) #13
  br label %290

217:                                              ; preds = %209, %207, %203, %201
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %194, i32 noundef %195) #13
  %218 = getelementptr i8, ptr %0, i32 20
  %219 = load ptr, ptr %218, align 4
  %220 = getelementptr inbounds %struct.dma_chan_dev, ptr %219, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %220, ptr noundef nonnull @.str.63, i32 noundef %184) #12
  br label %313

221:                                              ; preds = %177
  br i1 %67, label %222, label %263

222:                                              ; preds = %221
  %223 = add i32 %179, 2
  %224 = icmp eq i32 %179, 2147483646
  br i1 %224, label %284, label %225

225:                                              ; preds = %222
  %226 = getelementptr %struct.d40_phy_res, ptr %63, i32 %179
  %227 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %226) #13
  %228 = getelementptr %struct.d40_phy_res, ptr %63, i32 %179, i32 3
  %229 = load i32, ptr %228, align 4
  %230 = getelementptr %struct.d40_phy_res, ptr %63, i32 %179, i32 4
  %231 = load i32, ptr %230, align 4
  switch i32 %229, label %233 [
    i32 1073741824, label %247
    i32 -2147483648, label %232
  ]

232:                                              ; preds = %225
  store i32 0, ptr %228, align 4
  br label %233

233:                                              ; preds = %232, %225
  %234 = phi i32 [ %229, %225 ], [ 0, %232 ]
  %235 = and i32 %234, %176
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %247

237:                                              ; preds = %258, %233
  %238 = phi i32 [ %179, %233 ], [ %248, %258 ]
  %239 = phi ptr [ %226, %233 ], [ %251, %258 ]
  %240 = phi i32 [ %227, %233 ], [ %252, %258 ]
  %241 = phi ptr [ %228, %233 ], [ %253, %258 ]
  %242 = phi i32 [ %229, %233 ], [ %254, %258 ]
  %243 = phi i32 [ %231, %233 ], [ %256, %258 ]
  %244 = phi i32 [ %234, %233 ], [ %259, %258 ]
  %245 = or i32 %243, %242
  %246 = or i32 %244, %176
  store i32 %246, ptr %241, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %239, i32 noundef %240) #13
  br label %290

247:                                              ; preds = %233, %225
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %226, i32 noundef %227) #13
  %248 = or i32 %179, 1
  %249 = icmp slt i32 %248, %223
  br i1 %249, label %250, label %284

250:                                              ; preds = %247
  %251 = getelementptr %struct.d40_phy_res, ptr %63, i32 %248
  %252 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %251) #13
  %253 = getelementptr %struct.d40_phy_res, ptr %63, i32 %248, i32 3
  %254 = load i32, ptr %253, align 4
  %255 = getelementptr %struct.d40_phy_res, ptr %63, i32 %248, i32 4
  %256 = load i32, ptr %255, align 4
  switch i32 %254, label %258 [
    i32 1073741824, label %262
    i32 -2147483648, label %257
  ]

257:                                              ; preds = %250
  store i32 0, ptr %253, align 4
  br label %258

258:                                              ; preds = %257, %250
  %259 = phi i32 [ %254, %250 ], [ 0, %257 ]
  %260 = and i32 %259, %176
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %237, label %262

262:                                              ; preds = %258, %250
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %251, i32 noundef %252) #13
  br label %284

263:                                              ; preds = %221
  %264 = or i32 %179, 1
  br label %265

265:                                              ; preds = %281, %263
  %266 = phi i32 [ %264, %263 ], [ %282, %281 ]
  %267 = getelementptr %struct.d40_phy_res, ptr %63, i32 %266
  %268 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %267) #13
  %269 = getelementptr %struct.d40_phy_res, ptr %63, i32 %266, i32 3
  %270 = load i32, ptr %269, align 4
  %271 = getelementptr %struct.d40_phy_res, ptr %63, i32 %266, i32 4
  %272 = load i32, ptr %271, align 4
  switch i32 %272, label %274 [
    i32 1073741824, label %281
    i32 -2147483648, label %273
  ]

273:                                              ; preds = %265
  store i32 0, ptr %271, align 4
  br label %274

274:                                              ; preds = %273, %265
  %275 = phi i32 [ %272, %265 ], [ 0, %273 ]
  %276 = and i32 %275, %176
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %281

278:                                              ; preds = %274
  %279 = or i32 %272, %270
  %280 = or i32 %275, %176
  store i32 %280, ptr %271, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %267, i32 noundef %268) #13
  br label %290

281:                                              ; preds = %274, %265
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %267, i32 noundef %268) #13
  %282 = add i32 %266, -1
  %283 = icmp slt i32 %282, %179
  br i1 %283, label %284, label %265

284:                                              ; preds = %281, %262, %247, %222
  %285 = add i32 %178, 8
  %286 = load ptr, ptr %60, align 4
  %287 = getelementptr inbounds %struct.d40_base, ptr %286, i32 0, i32 10
  %288 = load i32, ptr %287, align 4
  %289 = icmp slt i32 %285, %288
  br i1 %289, label %177, label %313

290:                                              ; preds = %278, %237, %213, %152, %118
  %291 = phi i32 [ %245, %237 ], [ %279, %278 ], [ %200, %213 ], [ -2147483648, %152 ], [ -2147483648, %118 ]
  %292 = phi i32 [ %238, %237 ], [ %266, %278 ], [ %184, %213 ], [ %153, %152 ], [ %108, %118 ]
  %293 = phi i32 [ %168, %237 ], [ %168, %278 ], [ %168, %213 ], [ -1, %152 ], [ -1, %118 ]
  %294 = icmp eq i32 %291, -2147483648
  %295 = zext i1 %294 to i8
  %296 = getelementptr %struct.d40_phy_res, ptr %63, i32 %292
  %297 = getelementptr i8, ptr %0, i32 -4
  store ptr %296, ptr %297, align 4
  %298 = getelementptr i8, ptr %0, i32 -16
  store i32 %293, ptr %298, align 4
  %299 = load ptr, ptr %60, align 4
  br i1 %59, label %300, label %304

300:                                              ; preds = %290
  %301 = getelementptr inbounds %struct.d40_base, ptr %299, i32 0, i32 17
  %302 = load ptr, ptr %301, align 4
  %303 = getelementptr ptr, ptr %302, i32 %293
  br label %317

304:                                              ; preds = %290, %103
  %305 = phi ptr [ %106, %103 ], [ %299, %290 ]
  %306 = phi i32 [ %92, %103 ], [ %292, %290 ]
  %307 = phi i8 [ 1, %103 ], [ %295, %290 ]
  %308 = getelementptr inbounds %struct.d40_base, ptr %305, i32 0, i32 18
  %309 = load ptr, ptr %308, align 4
  %310 = getelementptr %struct.d40_phy_res, ptr %63, i32 %306, i32 2
  %311 = load i32, ptr %310, align 4
  %312 = getelementptr ptr, ptr %309, i32 %311
  br label %317

313:                                              ; preds = %284, %217, %189, %166, %160, %119, %102, %88, %79, %68
  %314 = getelementptr i8, ptr %0, i32 20
  %315 = load ptr, ptr %314, align 4
  %316 = getelementptr inbounds %struct.dma_chan_dev, ptr %315, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %316, ptr noundef nonnull @.str.61, ptr noundef nonnull @__func__.d40_alloc_chan_resources) #12
  store i8 0, ptr %7, align 4
  br label %485

317:                                              ; preds = %304, %300
  %318 = phi ptr [ %312, %304 ], [ %303, %300 ]
  %319 = phi i8 [ %307, %304 ], [ %295, %300 ]
  store ptr %3, ptr %318, align 4
  %320 = load ptr, ptr %60, align 4
  %321 = getelementptr inbounds %struct.d40_base, ptr %320, i32 0, i32 2
  %322 = load ptr, ptr %321, align 4
  %323 = tail call i32 @__pm_runtime_resume(ptr noundef %322, i32 noundef 4) #13
  %324 = load ptr, ptr %60, align 4
  %325 = getelementptr inbounds %struct.d40_base, ptr %324, i32 0, i32 4
  %326 = load i8, ptr %325, align 4
  %327 = and i8 %326, 15
  %328 = icmp ult i8 %327, 3
  br i1 %328, label %401, label %329

329:                                              ; preds = %317
  %330 = load i32, ptr %54, align 4
  %331 = and i32 %330, -2
  %332 = icmp eq i32 %331, 2
  br i1 %332, label %333, label %364

333:                                              ; preds = %329
  %334 = load i32, ptr %55, align 4
  %335 = getelementptr i8, ptr %0, i32 141
  %336 = load i8, ptr %335, align 1, !range !12
  %337 = icmp eq i8 %336, 0
  %338 = getelementptr i8, ptr %0, i32 140
  %339 = load i8, ptr %338, align 4, !range !12
  %340 = getelementptr inbounds %struct.d40_base, ptr %324, i32 0, i32 32, i32 2
  %341 = getelementptr inbounds %struct.d40_base, ptr %324, i32 0, i32 32, i32 3
  %342 = select i1 %337, ptr %341, ptr %340
  %343 = load i32, ptr %342, align 4
  %344 = icmp eq i8 %339, 0
  %345 = and i32 %334, 15
  %346 = shl nuw nsw i32 1, %345
  %347 = getelementptr inbounds %struct.d40_base, ptr %324, i32 0, i32 32, i32 4
  %348 = getelementptr inbounds %struct.d40_base, ptr %324, i32 0, i32 32, i32 5
  %349 = select i1 %344, ptr %348, ptr %347
  %350 = load i32, ptr %349, align 4
  %351 = sdiv i32 %334, 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !67
  tail call void @arm_heavy_mb() #13
  %352 = load ptr, ptr %60, align 4
  %353 = getelementptr inbounds %struct.d40_base, ptr %352, i32 0, i32 3
  %354 = load ptr, ptr %353, align 4
  %355 = getelementptr i8, ptr %354, i32 %350
  %356 = shl nsw i32 %351, 2
  %357 = getelementptr i8, ptr %355, i32 %356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %357, i32 %346) #13, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !68
  tail call void @arm_heavy_mb() #13
  %358 = load ptr, ptr %60, align 4
  %359 = getelementptr inbounds %struct.d40_base, ptr %358, i32 0, i32 3
  %360 = load ptr, ptr %359, align 4
  %361 = getelementptr i8, ptr %360, i32 %343
  %362 = getelementptr i8, ptr %361, i32 %356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %362, i32 %346) #13, !srcloc !11
  %363 = load i32, ptr %54, align 4
  br label %364

364:                                              ; preds = %333, %329
  %365 = phi i32 [ %330, %329 ], [ %363, %333 ]
  switch i32 %365, label %401 [
    i32 1, label %366
    i32 3, label %366
  ]

366:                                              ; preds = %364, %364
  %367 = load i32, ptr %55, align 4
  %368 = getelementptr i8, ptr %0, i32 141
  %369 = load i8, ptr %368, align 1, !range !12
  %370 = icmp eq i8 %369, 0
  %371 = getelementptr i8, ptr %0, i32 140
  %372 = load i8, ptr %371, align 4, !range !12
  %373 = load ptr, ptr %60, align 4
  %374 = getelementptr inbounds %struct.d40_base, ptr %373, i32 0, i32 32, i32 2
  %375 = getelementptr inbounds %struct.d40_base, ptr %373, i32 0, i32 32, i32 3
  %376 = select i1 %370, ptr %375, ptr %374
  %377 = load i32, ptr %376, align 4
  %378 = icmp ne i8 %372, 0
  %379 = getelementptr i8, ptr %0, i32 -16
  %380 = load i32, ptr %379, align 4
  %381 = icmp eq i32 %380, -1
  %382 = select i1 %381, i1 %378, i1 false
  %383 = and i32 %367, 15
  %384 = getelementptr inbounds %struct.d40_base, ptr %373, i32 0, i32 32, i32 4
  %385 = getelementptr inbounds %struct.d40_base, ptr %373, i32 0, i32 32, i32 5
  %386 = select i1 %382, ptr %384, ptr %385
  %387 = load i32, ptr %386, align 4
  %388 = shl nuw i32 65536, %383
  %389 = sdiv i32 %367, 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !67
  tail call void @arm_heavy_mb() #13
  %390 = load ptr, ptr %60, align 4
  %391 = getelementptr inbounds %struct.d40_base, ptr %390, i32 0, i32 3
  %392 = load ptr, ptr %391, align 4
  %393 = getelementptr i8, ptr %392, i32 %387
  %394 = shl nsw i32 %389, 2
  %395 = getelementptr i8, ptr %393, i32 %394
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %395, i32 %388) #13, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !68
  tail call void @arm_heavy_mb() #13
  %396 = load ptr, ptr %60, align 4
  %397 = getelementptr inbounds %struct.d40_base, ptr %396, i32 0, i32 3
  %398 = load ptr, ptr %397, align 4
  %399 = getelementptr i8, ptr %398, i32 %377
  %400 = getelementptr i8, ptr %399, i32 %394
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %400, i32 %388) #13, !srcloc !11
  br label %401

401:                                              ; preds = %366, %364, %317
  %402 = getelementptr i8, ptr %0, i32 -16
  %403 = load i32, ptr %402, align 4
  %404 = icmp eq i32 %403, -1
  br i1 %404, label %423, label %405

405:                                              ; preds = %401
  %406 = load i32, ptr %54, align 4
  %407 = icmp eq i32 %406, 2
  %408 = load ptr, ptr %60, align 4
  %409 = getelementptr inbounds %struct.d40_base, ptr %408, i32 0, i32 23
  %410 = load ptr, ptr %409, align 4
  %411 = load i32, ptr %55, align 4
  %412 = shl i32 %411, 5
  %413 = getelementptr i8, ptr %410, i32 %412
  %414 = select i1 %407, i32 0, i32 16
  %415 = getelementptr i8, ptr %413, i32 %414
  %416 = getelementptr i8, ptr %0, i32 268
  store ptr %415, ptr %416, align 4
  %417 = getelementptr i8, ptr %0, i32 252
  %418 = load i32, ptr %417, align 4
  %419 = or i32 %418, 32
  store i32 %419, ptr %417, align 4
  %420 = getelementptr i8, ptr %0, i32 256
  %421 = load i32, ptr %420, align 4
  %422 = or i32 %421, 32
  store i32 %422, ptr %420, align 4
  br label %423

423:                                              ; preds = %405, %401
  %424 = icmp eq i8 %319, 0
  br i1 %424, label %485, label %425

425:                                              ; preds = %423
  %426 = getelementptr i8, ptr %0, i32 -4
  %427 = load ptr, ptr %426, align 4
  %428 = getelementptr inbounds %struct.d40_phy_res, ptr %427, i32 0, i32 2
  %429 = load i32, ptr %428, align 4
  %430 = freeze i32 %429
  %431 = sdiv i32 %430, 2
  %432 = mul i32 %431, 2
  %433 = sub i32 %430, %432
  %434 = shl nsw i32 %433, 2
  %435 = select i1 %404, i32 1, i32 2
  %436 = shl nsw i32 %431, 1
  %437 = shl i32 %435, %436
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !69
  tail call void @arm_heavy_mb() #13
  %438 = load ptr, ptr %60, align 4
  %439 = getelementptr inbounds %struct.d40_base, ptr %438, i32 0, i32 3
  %440 = load ptr, ptr %439, align 4
  %441 = getelementptr i8, ptr %440, i32 16
  %442 = getelementptr i8, ptr %441, i32 %434
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %442, i32 %437) #13, !srcloc !11
  %443 = load i32, ptr %402, align 4
  %444 = icmp eq i32 %443, -1
  %445 = getelementptr i8, ptr %0, i32 148
  %446 = load i32, ptr %445, align 4
  %447 = getelementptr [3 x i32], ptr @d40_get_prmo.phy_map, i32 0, i32 %446
  %448 = getelementptr [5 x i32], ptr @d40_get_prmo.log_map, i32 0, i32 %446
  %449 = select i1 %444, ptr %447, ptr %448
  %450 = load i32, ptr %449, align 4
  %451 = load ptr, ptr %426, align 4
  %452 = getelementptr inbounds %struct.d40_phy_res, ptr %451, i32 0, i32 2
  %453 = load i32, ptr %452, align 4
  %454 = sdiv i32 %453, 2
  %455 = shl nsw i32 %454, 1
  %456 = shl i32 %450, %455
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !70
  tail call void @arm_heavy_mb() #13
  %457 = load ptr, ptr %60, align 4
  %458 = getelementptr inbounds %struct.d40_base, ptr %457, i32 0, i32 3
  %459 = load ptr, ptr %458, align 4
  %460 = getelementptr i8, ptr %459, i32 24
  %461 = getelementptr i8, ptr %460, i32 %434
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %461, i32 %456) #13, !srcloc !11
  %462 = load i32, ptr %402, align 4
  %463 = icmp eq i32 %462, -1
  br i1 %463, label %485, label %464

464:                                              ; preds = %425
  %465 = load ptr, ptr %426, align 4
  %466 = getelementptr inbounds %struct.d40_phy_res, ptr %465, i32 0, i32 2
  %467 = load i32, ptr %466, align 4
  %468 = shl i32 %467, 8
  %469 = and i32 %468, 65280
  %470 = load ptr, ptr %60, align 4
  %471 = getelementptr inbounds %struct.d40_base, ptr %470, i32 0, i32 3
  %472 = load ptr, ptr %471, align 4
  %473 = getelementptr i8, ptr %472, i32 1024
  %474 = shl i32 %467, 5
  %475 = getelementptr i8, ptr %473, i32 %474
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !71
  tail call void @arm_heavy_mb() #13
  %476 = getelementptr i8, ptr %0, i32 252
  %477 = load i32, ptr %476, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %475, i32 %477) #13, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !72
  tail call void @arm_heavy_mb() #13
  %478 = getelementptr i8, ptr %0, i32 256
  %479 = load i32, ptr %478, align 4
  %480 = getelementptr i8, ptr %475, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %480, i32 %479) #13, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !73
  tail call void @arm_heavy_mb() #13
  %481 = getelementptr i8, ptr %475, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %481, i32 %469) #13, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !74
  tail call void @arm_heavy_mb() #13
  %482 = getelementptr i8, ptr %475, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %482, i32 %469) #13, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !75
  tail call void @arm_heavy_mb() #13
  %483 = getelementptr i8, ptr %475, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %483, i32 0) #13, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !76
  tail call void @arm_heavy_mb() #13
  %484 = getelementptr i8, ptr %475, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %484, i32 0) #13, !srcloc !11
  br label %485

485:                                              ; preds = %464, %425, %423, %313, %47
  %486 = phi i32 [ -22, %313 ], [ 0, %423 ], [ -22, %47 ], [ 0, %425 ], [ 0, %464 ]
  %487 = getelementptr i8, ptr %0, i32 248
  %488 = load ptr, ptr %487, align 4
  %489 = getelementptr inbounds %struct.d40_base, ptr %488, i32 0, i32 2
  %490 = load ptr, ptr %489, align 4
  %491 = tail call i64 @ktime_get_mono_fast_ns() #13
  %492 = getelementptr inbounds %struct.device, ptr %490, i32 0, i32 11, i32 22
  store volatile i64 %491, ptr %492, align 8
  %493 = load ptr, ptr %487, align 4
  %494 = getelementptr inbounds %struct.d40_base, ptr %493, i32 0, i32 2
  %495 = load ptr, ptr %494, align 4
  %496 = tail call i32 @__pm_runtime_suspend(ptr noundef %495, i32 noundef 13) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #13
  ret i32 %486
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @d40_free_chan_resources(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -20
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 20
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dma_chan_dev, ptr %8, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.64, ptr noundef nonnull @__func__.d40_free_chan_resources) #12
  br label %132

10:                                               ; preds = %1
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #13
  %12 = getelementptr i8, ptr %0, i32 136
  %13 = getelementptr i8, ptr %0, i32 152
  %14 = load i32, ptr %13, align 4
  %15 = srem i32 %14, 16
  %16 = load ptr, ptr %3, align 4
  tail call fastcc void @d40_term_all(ptr noundef %2) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %10
  %19 = getelementptr i8, ptr %0, i32 20
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.dma_chan_dev, ptr %20, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.66, ptr noundef nonnull @__func__.d40_free_dma) #12
  br label %127

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.d40_phy_res, ptr %16, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, -2147483648
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.d40_phy_res, ptr %16, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, -2147483648
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = getelementptr i8, ptr %0, i32 20
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.dma_chan_dev, ptr %32, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.67, ptr noundef nonnull @__func__.d40_free_dma) #12
  br label %127

34:                                               ; preds = %26, %22
  %35 = load i32, ptr %12, align 4
  %36 = icmp ult i32 %35, 3
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = getelementptr i8, ptr %0, i32 20
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.dma_chan_dev, ptr %39, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.68, ptr noundef nonnull @__func__.d40_free_dma) #12
  br label %127

41:                                               ; preds = %34
  %42 = trunc i32 %35 to i3
  %43 = icmp eq i3 %42, 2
  %44 = getelementptr i8, ptr %0, i32 248
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.d40_base, ptr %45, i32 0, i32 2
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 @__pm_runtime_resume(ptr noundef %47, i32 noundef 4) #13
  %49 = tail call fastcc i32 @d40_channel_execute_command(ptr noundef %2, i32 noundef 0) #13
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %64, label %51

51:                                               ; preds = %41
  %52 = getelementptr i8, ptr %0, i32 20
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.dma_chan_dev, ptr %53, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.69, ptr noundef nonnull @__func__.d40_free_dma) #12
  %55 = load ptr, ptr %44, align 4
  %56 = getelementptr inbounds %struct.d40_base, ptr %55, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = tail call i64 @ktime_get_mono_fast_ns() #13
  %59 = getelementptr inbounds %struct.device, ptr %57, i32 0, i32 11, i32 22
  store volatile i64 %58, ptr %59, align 8
  %60 = load ptr, ptr %44, align 4
  %61 = getelementptr inbounds %struct.d40_base, ptr %60, i32 0, i32 2
  %62 = load ptr, ptr %61, align 4
  %63 = tail call i32 @__pm_runtime_suspend(ptr noundef %62, i32 noundef 13) #13
  br label %127

64:                                               ; preds = %41
  %65 = getelementptr i8, ptr %0, i32 -16
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, -1
  %68 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %16) #13
  %69 = icmp eq i32 %15, 0
  %70 = select i1 %67, i1 true, i1 %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.d40_phy_res, ptr %16, i32 0, i32 4
  store i32 -2147483648, ptr %72, align 4
  store i32 -2147483648, ptr %23, align 4
  br label %87

73:                                               ; preds = %64
  %74 = shl nuw nsw i32 1, %15
  %75 = xor i32 %74, -1
  br i1 %43, label %76, label %81

76:                                               ; preds = %73
  %77 = load i32, ptr %23, align 4
  %78 = and i32 %77, %75
  %79 = icmp eq i32 %78, 0
  %80 = select i1 %79, i32 -2147483648, i32 %78
  store i32 %80, ptr %23, align 4
  br label %87

81:                                               ; preds = %73
  %82 = getelementptr inbounds %struct.d40_phy_res, ptr %16, i32 0, i32 4
  %83 = load i32, ptr %82, align 4
  %84 = and i32 %83, %75
  %85 = icmp eq i32 %84, 0
  %86 = select i1 %85, i32 -2147483648, i32 %84
  store i32 %86, ptr %82, align 4
  br label %87

87:                                               ; preds = %81, %76, %71
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %16, i32 noundef %68) #13
  %88 = load i32, ptr %65, align 4
  %89 = icmp eq i32 %88, -1
  %90 = load ptr, ptr %44, align 4
  br i1 %89, label %95, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.d40_base, ptr %90, i32 0, i32 17
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr ptr, ptr %93, i32 %88
  br label %101

95:                                               ; preds = %87
  %96 = getelementptr inbounds %struct.d40_base, ptr %90, i32 0, i32 18
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.d40_phy_res, ptr %16, i32 0, i32 2
  %99 = load i32, ptr %98, align 4
  %100 = getelementptr ptr, ptr %97, i32 %99
  br label %101

101:                                              ; preds = %95, %91
  %102 = phi ptr [ %100, %95 ], [ %94, %91 ]
  store ptr null, ptr %102, align 4
  %103 = getelementptr i8, ptr %0, i32 -8
  %104 = load i8, ptr %103, align 4, !range !12
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %116, label %106

106:                                              ; preds = %101
  %107 = load ptr, ptr %44, align 4
  %108 = getelementptr inbounds %struct.d40_base, ptr %107, i32 0, i32 2
  %109 = load ptr, ptr %108, align 4
  %110 = tail call i64 @ktime_get_mono_fast_ns() #13
  %111 = getelementptr inbounds %struct.device, ptr %109, i32 0, i32 11, i32 22
  store volatile i64 %110, ptr %111, align 8
  %112 = load ptr, ptr %44, align 4
  %113 = getelementptr inbounds %struct.d40_base, ptr %112, i32 0, i32 2
  %114 = load ptr, ptr %113, align 4
  %115 = tail call i32 @__pm_runtime_suspend(ptr noundef %114, i32 noundef 13) #13
  br label %116

116:                                              ; preds = %106, %101
  store i8 0, ptr %103, align 4
  store ptr null, ptr %3, align 4
  %117 = getelementptr i8, ptr %0, i32 244
  store i8 0, ptr %117, align 4
  %118 = load ptr, ptr %44, align 4
  %119 = getelementptr inbounds %struct.d40_base, ptr %118, i32 0, i32 2
  %120 = load ptr, ptr %119, align 4
  %121 = tail call i64 @ktime_get_mono_fast_ns() #13
  %122 = getelementptr inbounds %struct.device, ptr %120, i32 0, i32 11, i32 22
  store volatile i64 %121, ptr %122, align 8
  %123 = load ptr, ptr %44, align 4
  %124 = getelementptr inbounds %struct.d40_base, ptr %123, i32 0, i32 2
  %125 = load ptr, ptr %124, align 4
  %126 = tail call i32 @__pm_runtime_suspend(ptr noundef %125, i32 noundef 13) #13
  br i1 %50, label %131, label %127

127:                                              ; preds = %116, %51, %37, %30, %18
  %128 = getelementptr i8, ptr %0, i32 20
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr inbounds %struct.dma_chan_dev, ptr %129, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %130, ptr noundef nonnull @.str.65, ptr noundef nonnull @__func__.d40_free_chan_resources) #12
  br label %131

131:                                              ; preds = %127, %116
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %11) #13
  br label %132

132:                                              ; preds = %131, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @d40_issue_pending(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -20
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 20
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dma_chan_dev, ptr %8, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.54, ptr noundef nonnull @__func__.d40_issue_pending) #12
  br label %48

10:                                               ; preds = %1
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #13
  %12 = getelementptr i8, ptr %0, i32 96
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %22, label %15

15:                                               ; preds = %10
  %16 = getelementptr i8, ptr %0, i32 120
  %17 = getelementptr i8, ptr %0, i32 124
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %0, i32 100
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %18, ptr %21, align 4
  store ptr %13, ptr %18, align 4
  store ptr %16, ptr %20, align 4
  store ptr %20, ptr %17, align 4
  store volatile ptr %12, ptr %12, align 4
  store ptr %12, ptr %19, align 4
  br label %22

22:                                               ; preds = %15, %10
  %23 = getelementptr i8, ptr %0, i32 -8
  %24 = load i8, ptr %23, align 4, !range !12
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %22
  %27 = getelementptr i8, ptr %0, i32 120
  %28 = load volatile ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %27
  %30 = getelementptr i8, ptr %28, i32 -148
  %31 = icmp eq ptr %30, null
  %32 = or i1 %29, %31
  br i1 %32, label %47, label %33

33:                                               ; preds = %26
  store i8 1, ptr %23, align 4
  %34 = getelementptr i8, ptr %0, i32 248
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.d40_base, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 @__pm_runtime_resume(ptr noundef %37, i32 noundef 4) #13
  %39 = getelementptr i8, ptr %28, i32 4
  %40 = load ptr, ptr %39, align 4
  %41 = load ptr, ptr %28, align 4
  %42 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  store ptr %40, ptr %42, align 4
  store volatile ptr %41, ptr %40, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %28, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %39, align 4
  %43 = getelementptr i8, ptr %0, i32 104
  %44 = getelementptr i8, ptr %0, i32 108
  %45 = load ptr, ptr %44, align 4
  store ptr %28, ptr %44, align 4
  store ptr %43, ptr %28, align 4
  store ptr %45, ptr %39, align 4
  store volatile ptr %28, ptr %45, align 4
  tail call fastcc void @d40_desc_load(ptr noundef %2, ptr noundef nonnull %30) #13
  %46 = tail call fastcc i32 @d40_channel_execute_command(ptr noundef %2, i32 noundef 1) #13
  br label %47

47:                                               ; preds = %33, %26, %22
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %11) #13
  br label %48

48:                                               ; preds = %47, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @d40_tx_status(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -20
  %5 = getelementptr i8, ptr %0, i32 -4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 20
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dma_chan_dev, ptr %10, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.70, ptr noundef nonnull @__func__.d40_tx_status) #12
  br label %126

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !77
  %17 = icmp eq ptr %2, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  store i32 %16, ptr %2, align 4
  %19 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 1
  store i32 %14, ptr %19, align 4
  %20 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 3
  store i32 0, ptr %21, align 4
  br label %22

22:                                               ; preds = %18, %12
  %23 = icmp sgt i32 %16, %14
  %24 = icmp sge i32 %16, %1
  %25 = icmp slt i32 %14, %1
  br i1 %23, label %30, label %26

26:                                               ; preds = %22
  %27 = or i1 %25, %24
  %28 = or i1 %27, %17
  %29 = xor i1 %27, true
  br i1 %28, label %65, label %34

30:                                               ; preds = %22
  %31 = and i1 %25, %24
  %32 = or i1 %31, %17
  %33 = xor i1 %31, true
  br i1 %32, label %65, label %34

34:                                               ; preds = %30, %26
  %35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #13
  %36 = getelementptr i8, ptr %0, i32 -16
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %45, label %39

39:                                               ; preds = %34
  %40 = getelementptr i8, ptr %0, i32 268
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.d40_log_lli_full, ptr %41, i32 0, i32 2
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !28
  %44 = and i32 %43, -65536
  br label %58

45:                                               ; preds = %34
  %46 = getelementptr i8, ptr %0, i32 248
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.d40_base, ptr %47, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr i8, ptr %49, i32 1024
  %51 = load ptr, ptr %5, align 4
  %52 = getelementptr inbounds %struct.d40_phy_res, ptr %51, i32 0, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = shl i32 %53, 5
  %55 = getelementptr i8, ptr %50, i32 %54
  %56 = getelementptr i8, ptr %55, i32 20
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !29
  br label %58

58:                                               ; preds = %45, %39
  %59 = phi i32 [ %44, %39 ], [ %57, %45 ]
  %60 = lshr i32 %59, 16
  %61 = getelementptr i8, ptr %0, i32 176
  %62 = load i32, ptr %61, align 4
  %63 = mul i32 %60, %62
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %35) #13
  %64 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  store i32 %63, ptr %64, align 4
  br label %65

65:                                               ; preds = %58, %30, %26
  %66 = phi i1 [ true, %58 ], [ %29, %26 ], [ %33, %30 ]
  %67 = zext i1 %66 to i32
  %68 = getelementptr i8, ptr %0, i32 248
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.d40_base, ptr %69, i32 0, i32 3
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr i8, ptr %71, i32 1024
  %73 = load ptr, ptr %5, align 4
  %74 = getelementptr inbounds %struct.d40_phy_res, ptr %73, i32 0, i32 2
  %75 = load i32, ptr %74, align 4
  %76 = shl i32 %75, 5
  %77 = getelementptr i8, ptr %72, i32 %76
  %78 = getelementptr i8, ptr %0, i32 152
  %79 = load i32, ptr %78, align 4
  %80 = srem i32 %79, 16
  %81 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #13
  %82 = getelementptr i8, ptr %0, i32 -16
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %105, label %85

85:                                               ; preds = %65
  %86 = getelementptr i8, ptr %0, i32 136
  %87 = load i32, ptr %86, align 4
  switch i32 %87, label %94 [
    i32 1, label %88
    i32 0, label %88
    i32 2, label %91
  ]

88:                                               ; preds = %85, %85
  %89 = getelementptr i8, ptr %77, i32 28
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !78
  br label %98

91:                                               ; preds = %85
  %92 = getelementptr i8, ptr %77, i32 12
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !79
  br label %98

94:                                               ; preds = %85
  %95 = getelementptr i8, ptr %0, i32 20
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.dma_chan_dev, ptr %96, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.68, ptr noundef nonnull @__func__.d40_is_paused) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %81) #13
  br label %126

98:                                               ; preds = %91, %88
  %99 = phi i32 [ %90, %88 ], [ %93, %91 ]
  %100 = shl nsw i32 %80, 1
  %101 = shl i32 3, %100
  %102 = and i32 %99, %101
  %103 = lshr i32 %102, %100
  %104 = icmp eq i32 %103, 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %81) #13
  br i1 %104, label %126, label %125

105:                                              ; preds = %65
  %106 = load ptr, ptr %5, align 4
  %107 = getelementptr inbounds %struct.d40_phy_res, ptr %106, i32 0, i32 2
  %108 = load i32, ptr %107, align 4
  %109 = and i32 %108, 1
  %110 = icmp eq i32 %109, 0
  %111 = load ptr, ptr %68, align 4
  %112 = getelementptr inbounds %struct.d40_base, ptr %111, i32 0, i32 3
  %113 = load ptr, ptr %112, align 4
  %114 = select i1 %110, i32 80, i32 84
  %115 = getelementptr i8, ptr %113, i32 %114
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %115) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !80
  %117 = load ptr, ptr %5, align 4
  %118 = getelementptr inbounds %struct.d40_phy_res, ptr %117, i32 0, i32 2
  %119 = load i32, ptr %118, align 4
  %120 = sdiv i32 %119, 2
  %121 = shl nsw i32 %120, 1
  %122 = shl i32 3, %121
  %123 = and i32 %122, %116
  %124 = lshr i32 %123, %121
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %81) #13
  switch i32 %124, label %126 [
    i32 3, label %125
    i32 0, label %125
  ]

125:                                              ; preds = %105, %105, %98
  br label %126

126:                                              ; preds = %125, %105, %98, %94, %8
  %127 = phi i32 [ -22, %8 ], [ 2, %125 ], [ %67, %105 ], [ %67, %94 ], [ %67, %98 ]
  ret i32 %127
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @d40_set_runtime_config(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #11 {
  %3 = getelementptr i8, ptr %0, i32 196
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %3, ptr noundef align 4 dereferenceable(48) %1, i32 48, i1 false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @d40_pause(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -20
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 20
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dma_chan_dev, ptr %8, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.54, ptr noundef nonnull @__func__.d40_pause) #12
  br label %31

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %0, i32 -8
  %12 = load i8, ptr %11, align 4, !range !12
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %31, label %14

14:                                               ; preds = %10
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #13
  %16 = getelementptr i8, ptr %0, i32 248
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.d40_base, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @__pm_runtime_resume(ptr noundef %19, i32 noundef 4) #13
  %21 = tail call fastcc i32 @d40_channel_execute_command(ptr noundef %2, i32 noundef 2)
  %22 = load ptr, ptr %16, align 4
  %23 = getelementptr inbounds %struct.d40_base, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i64 @ktime_get_mono_fast_ns() #13
  %26 = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 11, i32 22
  store volatile i64 %25, ptr %26, align 8
  %27 = load ptr, ptr %16, align 4
  %28 = getelementptr inbounds %struct.d40_base, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 @__pm_runtime_suspend(ptr noundef %29, i32 noundef 13) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %15) #13
  br label %31

31:                                               ; preds = %14, %10, %6
  %32 = phi i32 [ -22, %6 ], [ %21, %14 ], [ 0, %10 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @d40_resume(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -20
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 20
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dma_chan_dev, ptr %8, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.54, ptr noundef nonnull @__func__.d40_resume) #12
  br label %85

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %0, i32 -8
  %12 = load i8, ptr %11, align 4, !range !12
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %85, label %14

14:                                               ; preds = %10
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #13
  %16 = getelementptr i8, ptr %0, i32 248
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.d40_base, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @__pm_runtime_resume(ptr noundef %19, i32 noundef 4) #13
  %21 = getelementptr i8, ptr %0, i32 -16
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %30, label %24

24:                                               ; preds = %14
  %25 = getelementptr i8, ptr %0, i32 268
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.d40_log_lli_full, ptr %26, i32 0, i32 2
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !28
  %29 = and i32 %28, -65536
  br label %42

30:                                               ; preds = %14
  %31 = load ptr, ptr %16, align 4
  %32 = getelementptr inbounds %struct.d40_base, ptr %31, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 1024
  %35 = load ptr, ptr %3, align 4
  %36 = getelementptr inbounds %struct.d40_phy_res, ptr %35, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = shl i32 %37, 5
  %39 = getelementptr i8, ptr %34, i32 %38
  %40 = getelementptr i8, ptr %39, i32 20
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !29
  br label %42

42:                                               ; preds = %30, %24
  %43 = phi i32 [ %29, %24 ], [ %41, %30 ]
  %44 = lshr i32 %43, 16
  %45 = getelementptr i8, ptr %0, i32 176
  %46 = load i32, ptr %45, align 4
  %47 = mul i32 %44, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %72

49:                                               ; preds = %42
  %50 = load i32, ptr %21, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %59, label %52

52:                                               ; preds = %49
  %53 = getelementptr i8, ptr %0, i32 268
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.d40_log_lli_full, ptr %54, i32 0, i32 3
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !26
  %57 = and i32 %56, 254
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %74, label %72

59:                                               ; preds = %49
  %60 = load ptr, ptr %16, align 4
  %61 = getelementptr inbounds %struct.d40_base, ptr %60, i32 0, i32 3
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr i8, ptr %62, i32 1024
  %64 = load ptr, ptr %3, align 4
  %65 = getelementptr inbounds %struct.d40_phy_res, ptr %64, i32 0, i32 2
  %66 = load i32, ptr %65, align 4
  %67 = shl i32 %66, 5
  %68 = getelementptr i8, ptr %63, i32 %67
  %69 = getelementptr i8, ptr %68, i32 28
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !27
  %71 = icmp ugt i32 %70, 7
  br i1 %71, label %72, label %74

72:                                               ; preds = %59, %52, %42
  %73 = tail call fastcc i32 @d40_channel_execute_command(ptr noundef %2, i32 noundef 1)
  br label %74

74:                                               ; preds = %72, %59, %52
  %75 = phi i32 [ %73, %72 ], [ 0, %59 ], [ 0, %52 ]
  %76 = load ptr, ptr %16, align 4
  %77 = getelementptr inbounds %struct.d40_base, ptr %76, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  %79 = tail call i64 @ktime_get_mono_fast_ns() #13
  %80 = getelementptr inbounds %struct.device, ptr %78, i32 0, i32 11, i32 22
  store volatile i64 %79, ptr %80, align 8
  %81 = load ptr, ptr %16, align 4
  %82 = getelementptr inbounds %struct.d40_base, ptr %81, i32 0, i32 2
  %83 = load ptr, ptr %82, align 4
  %84 = tail call i32 @__pm_runtime_suspend(ptr noundef %83, i32 noundef 13) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %15) #13
  br label %85

85:                                               ; preds = %74, %10, %6
  %86 = phi i32 [ -22, %6 ], [ %75, %74 ], [ 0, %10 ]
  ret i32 %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @d40_terminate_all(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -20
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 20
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dma_chan_dev, ptr %8, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.54, ptr noundef nonnull @__func__.d40_terminate_all) #12
  br label %47

10:                                               ; preds = %1
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #13
  %12 = getelementptr i8, ptr %0, i32 248
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.d40_base, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @__pm_runtime_resume(ptr noundef %15, i32 noundef 4) #13
  %17 = tail call fastcc i32 @d40_channel_execute_command(ptr noundef %2, i32 noundef 0)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %10
  %20 = getelementptr i8, ptr %0, i32 20
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.dma_chan_dev, ptr %21, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.71, ptr noundef nonnull @__func__.d40_terminate_all) #12
  br label %23

23:                                               ; preds = %19, %10
  tail call fastcc void @d40_term_all(ptr noundef %2)
  %24 = load ptr, ptr %12, align 4
  %25 = getelementptr inbounds %struct.d40_base, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i64 @ktime_get_mono_fast_ns() #13
  %28 = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 11, i32 22
  store volatile i64 %27, ptr %28, align 8
  %29 = load ptr, ptr %12, align 4
  %30 = getelementptr inbounds %struct.d40_base, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 @__pm_runtime_suspend(ptr noundef %31, i32 noundef 13) #13
  %33 = getelementptr i8, ptr %0, i32 -8
  %34 = load i8, ptr %33, align 4, !range !12
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %23
  %37 = load ptr, ptr %12, align 4
  %38 = getelementptr inbounds %struct.d40_base, ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i64 @ktime_get_mono_fast_ns() #13
  %41 = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 11, i32 22
  store volatile i64 %40, ptr %41, align 8
  %42 = load ptr, ptr %12, align 4
  %43 = getelementptr inbounds %struct.d40_base, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = tail call i32 @__pm_runtime_suspend(ptr noundef %44, i32 noundef 13) #13
  br label %46

46:                                               ; preds = %36, %23
  store i8 0, ptr %33, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %11) #13
  br label %47

47:                                               ; preds = %46, %6
  %48 = phi i32 [ -22, %6 ], [ 0, %46 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @d40_prep_sg(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = getelementptr i8, ptr %0, i32 -20
  %8 = getelementptr i8, ptr %0, i32 -4
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %0, i32 20
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dma_chan_dev, ptr %13, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.50, ptr noundef nonnull @__func__.d40_prep_sg) #12
  br label %401

15:                                               ; preds = %6
  %16 = getelementptr i8, ptr %0, i32 136
  %17 = getelementptr i8, ptr %0, i32 208
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr i8, ptr %0, i32 216
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr i8, ptr %0, i32 212
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr i8, ptr %0, i32 220
  %24 = load i32, ptr %23, align 4
  switch i32 %4, label %39 [
    i32 2, label %25
    i32 1, label %32
  ]

25:                                               ; preds = %15
  %26 = getelementptr i8, ptr %0, i32 200
  %27 = load i32, ptr %26, align 4
  store i32 2, ptr %16, align 4
  %28 = icmp eq i32 %22, 0
  %29 = select i1 %28, i32 %18, i32 %22
  %30 = icmp eq i32 %24, 0
  %31 = select i1 %30, i32 %20, i32 %24
  br label %44

32:                                               ; preds = %15
  %33 = getelementptr i8, ptr %0, i32 204
  %34 = load i32, ptr %33, align 4
  store i32 1, ptr %16, align 4
  %35 = icmp eq i32 %18, 0
  %36 = select i1 %35, i32 %22, i32 %18
  %37 = icmp eq i32 %20, 0
  %38 = select i1 %37, i32 %24, i32 %20
  br label %44

39:                                               ; preds = %15
  %40 = getelementptr i8, ptr %0, i32 248
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.d40_base, ptr %41, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.55, i32 noundef %4) #12
  br label %144

44:                                               ; preds = %32, %25
  %45 = phi i32 [ %18, %25 ], [ %36, %32 ]
  %46 = phi i32 [ %29, %25 ], [ %22, %32 ]
  %47 = phi i32 [ %27, %25 ], [ %34, %32 ]
  %48 = phi i32 [ %20, %25 ], [ %38, %32 ]
  %49 = phi i32 [ %31, %25 ], [ %24, %32 ]
  %50 = icmp eq i32 %47, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = getelementptr i8, ptr %0, i32 248
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.d40_base, ptr %53, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.56) #12
  br label %144

56:                                               ; preds = %44
  %57 = mul i32 %48, %45
  %58 = mul i32 %49, %46
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = getelementptr i8, ptr %0, i32 248
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.d40_base, ptr %62, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.57, i32 noundef %48, i32 noundef %45, i32 noundef %49, i32 noundef %46) #12
  br label %144

65:                                               ; preds = %56
  %66 = icmp ugt i32 %48, 16
  br i1 %66, label %67, label %70

67:                                               ; preds = %65
  %68 = shl i32 %45, 4
  %69 = udiv i32 %68, %46
  br label %75

70:                                               ; preds = %65
  %71 = icmp ugt i32 %49, 16
  br i1 %71, label %72, label %75

72:                                               ; preds = %70
  %73 = shl i32 %46, 4
  %74 = udiv i32 %73, %45
  br label %75

75:                                               ; preds = %72, %70, %67
  %76 = phi i32 [ 16, %67 ], [ %74, %72 ], [ %48, %70 ]
  %77 = phi i32 [ %69, %67 ], [ 16, %72 ], [ %49, %70 ]
  %78 = add i32 %45, -1
  %79 = icmp ult i32 %78, 8
  %80 = icmp ne i32 %46, 0
  %81 = select i1 %79, i1 %80, i1 false
  %82 = icmp ult i32 %46, 9
  %83 = select i1 %81, i1 %82, i1 false
  %84 = tail call i32 @llvm.ctpop.i32(i32 %45) #13, !range !81
  %85 = icmp ult i32 %84, 2
  %86 = select i1 %83, i1 %85, i1 false
  %87 = tail call i32 @llvm.ctpop.i32(i32 %46) #13, !range !81
  %88 = icmp ult i32 %87, 2
  %89 = select i1 %86, i1 %88, i1 false
  br i1 %89, label %90, label %144

90:                                               ; preds = %75
  %91 = getelementptr i8, ptr %0, i32 160
  store i32 %45, ptr %91, align 4
  %92 = getelementptr i8, ptr %0, i32 176
  store i32 %46, ptr %92, align 4
  %93 = getelementptr i8, ptr %0, i32 -16
  %94 = load i32, ptr %93, align 4
  %95 = icmp eq i32 %94, -1
  %96 = icmp ugt i32 %76, 15
  br i1 %95, label %103, label %97

97:                                               ; preds = %90
  br i1 %96, label %109, label %98

98:                                               ; preds = %97
  %99 = icmp ugt i32 %76, 7
  br i1 %99, label %109, label %100

100:                                              ; preds = %98
  %101 = icmp ugt i32 %76, 3
  %102 = zext i1 %101 to i32
  br label %109

103:                                              ; preds = %90
  br i1 %96, label %119, label %104

104:                                              ; preds = %103
  %105 = icmp ugt i32 %76, 7
  br i1 %105, label %119, label %106

106:                                              ; preds = %104
  %107 = icmp ult i32 %76, 4
  %108 = select i1 %107, i32 4, i32 1
  br label %119

109:                                              ; preds = %100, %98, %97
  %110 = phi i32 [ 3, %97 ], [ 2, %98 ], [ %102, %100 ]
  %111 = getelementptr i8, ptr %0, i32 164
  store i32 %110, ptr %111, align 4
  %112 = getelementptr i8, ptr %0, i32 168
  store i32 0, ptr %112, align 4
  %113 = icmp ugt i32 %77, 15
  br i1 %113, label %129, label %114

114:                                              ; preds = %109
  %115 = icmp ugt i32 %77, 7
  br i1 %115, label %129, label %116

116:                                              ; preds = %114
  %117 = icmp ugt i32 %77, 3
  %118 = zext i1 %117 to i32
  br label %129

119:                                              ; preds = %106, %104, %103
  %120 = phi i32 [ %108, %106 ], [ 2, %104 ], [ 3, %103 ]
  %121 = getelementptr i8, ptr %0, i32 164
  store i32 %120, ptr %121, align 4
  %122 = getelementptr i8, ptr %0, i32 168
  store i32 0, ptr %122, align 4
  %123 = icmp ugt i32 %77, 15
  br i1 %123, label %135, label %124

124:                                              ; preds = %119
  %125 = icmp ugt i32 %77, 7
  br i1 %125, label %135, label %126

126:                                              ; preds = %124
  %127 = icmp ult i32 %77, 4
  %128 = select i1 %127, i32 4, i32 1
  br label %135

129:                                              ; preds = %116, %114, %109
  %130 = phi i32 [ %118, %116 ], [ 2, %114 ], [ 3, %109 ]
  %131 = getelementptr i8, ptr %0, i32 180
  store i32 %130, ptr %131, align 4
  %132 = getelementptr i8, ptr %0, i32 184
  store i32 0, ptr %132, align 4
  %133 = getelementptr i8, ptr %0, i32 260
  %134 = getelementptr i8, ptr %0, i32 264
  tail call void @d40_log_cfg(ptr noundef %16, ptr noundef %134, ptr noundef %133) #13
  br label %141

135:                                              ; preds = %126, %124, %119
  %136 = phi i32 [ 3, %119 ], [ 2, %124 ], [ %128, %126 ]
  %137 = getelementptr i8, ptr %0, i32 180
  store i32 %136, ptr %137, align 4
  %138 = getelementptr i8, ptr %0, i32 184
  store i32 0, ptr %138, align 4
  %139 = getelementptr i8, ptr %0, i32 252
  %140 = getelementptr i8, ptr %0, i32 256
  tail call void @d40_phy_cfg(ptr noundef %16, ptr noundef %139, ptr noundef %140) #13
  br label %141

141:                                              ; preds = %135, %129
  %142 = getelementptr i8, ptr %0, i32 272
  store i32 %47, ptr %142, align 4
  %143 = getelementptr i8, ptr %0, i32 276
  store i32 %4, ptr %143, align 4
  br label %144

144:                                              ; preds = %141, %75, %60, %51, %39
  %145 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #13
  %146 = getelementptr i8, ptr %0, i32 88
  %147 = load volatile ptr, ptr %146, align 4
  %148 = icmp eq ptr %147, %146
  br i1 %148, label %164, label %149

149:                                              ; preds = %152, %144
  %150 = phi ptr [ %153, %152 ], [ %147, %144 ]
  %151 = icmp eq ptr %150, %146
  br i1 %151, label %164, label %152

152:                                              ; preds = %149
  %153 = load ptr, ptr %150, align 4
  %154 = getelementptr i8, ptr %150, i32 -56
  %155 = load i32, ptr %154, align 4
  %156 = and i32 %155, 2
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %149, label %158

158:                                              ; preds = %152
  %159 = getelementptr i8, ptr %150, i32 -148
  %160 = getelementptr i8, ptr %150, i32 4
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr inbounds %struct.list_head, ptr %153, i32 0, i32 1
  store ptr %161, ptr %162, align 4
  store volatile ptr %153, ptr %161, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(160) %159, i8 0, i32 160, i1 false) #13
  %163 = icmp eq ptr %159, null
  br i1 %163, label %164, label %171

164:                                              ; preds = %158, %149, %144
  %165 = getelementptr i8, ptr %0, i32 248
  %166 = load ptr, ptr %165, align 4
  %167 = getelementptr inbounds %struct.d40_base, ptr %166, i32 0, i32 26
  %168 = load ptr, ptr %167, align 4
  %169 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %168, i32 noundef 2304) #13
  %170 = icmp eq ptr %169, null
  br i1 %170, label %400, label %171

171:                                              ; preds = %164, %158
  %172 = phi ptr [ %169, %164 ], [ %159, %158 ]
  %173 = getelementptr inbounds %struct.d40_desc, ptr %172, i32 0, i32 7
  store volatile ptr %173, ptr %173, align 4
  %174 = getelementptr inbounds %struct.d40_desc, ptr %172, i32 0, i32 7, i32 1
  store ptr %173, ptr %174, align 4
  %175 = icmp sgt i32 %3, 0
  br i1 %175, label %183, label %176

176:                                              ; preds = %171
  %177 = getelementptr inbounds %struct.d40_desc, ptr %172, i32 0, i32 3
  store i32 0, ptr %177, align 4
  %178 = getelementptr i8, ptr %0, i32 -16
  %179 = load i32, ptr %178, align 4
  %180 = icmp eq i32 %179, -1
  %181 = select i1 %180, i32 -16, i32 -8
  %182 = select i1 %180, i32 16, i32 8
  br label %243

183:                                              ; preds = %171
  %184 = getelementptr i8, ptr %0, i32 176
  %185 = load i32, ptr %184, align 4
  %186 = getelementptr i8, ptr %0, i32 160
  %187 = load i32, ptr %186, align 4
  %188 = tail call i32 @llvm.umax.i32(i32 %187, i32 %185) #13
  %189 = tail call i32 @llvm.umin.i32(i32 %187, i32 %185) #13
  %190 = mul i32 %189, 65535
  %191 = add i32 %188, -1
  %192 = add i32 %190, %191
  %193 = sub i32 0, %188
  %194 = and i32 %192, %193
  %195 = icmp ugt i32 %194, 65535
  %196 = select i1 %195, i32 %188, i32 0
  %197 = sub i32 %194, %196
  br label %198

198:                                              ; preds = %215, %183
  %199 = phi i32 [ 0, %183 ], [ %217, %215 ]
  %200 = phi i32 [ 0, %183 ], [ %218, %215 ]
  %201 = phi ptr [ %1, %183 ], [ %219, %215 ]
  %202 = getelementptr inbounds %struct.scatterlist, ptr %201, i32 0, i32 4
  %203 = load i32, ptr %202, align 4
  %204 = and i32 %203, %191
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %221

206:                                              ; preds = %198
  %207 = icmp ult i32 %197, %203
  br i1 %207, label %208, label %215

208:                                              ; preds = %206
  %209 = udiv i32 %203, %197
  %210 = mul i32 %209, %197
  %211 = icmp ult i32 %210, %203
  %212 = zext i1 %211 to i32
  %213 = add i32 %209, %212
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %221, label %215

215:                                              ; preds = %208, %206
  %216 = phi i32 [ %213, %208 ], [ 1, %206 ]
  %217 = add i32 %216, %199
  %218 = add nuw nsw i32 %200, 1
  %219 = tail call ptr @sg_next(ptr noundef %201) #13
  %220 = icmp eq i32 %218, %3
  br i1 %220, label %224, label %198

221:                                              ; preds = %208, %198
  %222 = phi i32 [ %213, %208 ], [ -22, %198 ]
  %223 = getelementptr inbounds %struct.d40_desc, ptr %172, i32 0, i32 3
  store i32 %222, ptr %223, align 4
  br label %310

224:                                              ; preds = %215
  %225 = getelementptr inbounds %struct.d40_desc, ptr %172, i32 0, i32 3
  store i32 %217, ptr %225, align 4
  %226 = icmp slt i32 %217, 0
  br i1 %226, label %310, label %227

227:                                              ; preds = %224
  %228 = getelementptr i8, ptr %0, i32 -16
  %229 = load i32, ptr %228, align 4
  %230 = icmp eq i32 %229, -1
  %231 = select i1 %230, i32 -16, i32 -8
  %232 = select i1 %230, i32 16, i32 8
  %233 = icmp eq i32 %217, 1
  br i1 %233, label %234, label %243

234:                                              ; preds = %227
  %235 = getelementptr inbounds %struct.d40_desc, ptr %172, i32 0, i32 2
  %236 = getelementptr inbounds %struct.d40_desc, ptr %172, i32 0, i32 2, i32 3
  %237 = getelementptr inbounds %struct.d40_desc, ptr %172, i32 0, i32 2, i32 1
  store i32 48, ptr %237, align 4
  store ptr null, ptr %235, align 4
  %238 = ptrtoint ptr %236 to i32
  %239 = add i32 %238, -1
  %240 = add i32 %239, %232
  %241 = and i32 %240, %231
  %242 = inttoptr i32 %241 to ptr
  br i1 %230, label %263, label %303

243:                                              ; preds = %227, %176
  %244 = phi i32 [ %182, %176 ], [ %232, %227 ]
  %245 = phi i32 [ %181, %176 ], [ %231, %227 ]
  %246 = phi i1 [ %180, %176 ], [ %230, %227 ]
  %247 = phi i32 [ 0, %176 ], [ %217, %227 ]
  %248 = shl nuw i32 %247, 1
  %249 = mul i32 %248, %244
  %250 = getelementptr inbounds %struct.d40_desc, ptr %172, i32 0, i32 2
  %251 = getelementptr inbounds %struct.d40_desc, ptr %172, i32 0, i32 2, i32 1
  store i32 %249, ptr %251, align 4
  %252 = add i32 %249, %244
  %253 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %252, i32 noundef 2048) #15
  store ptr %253, ptr %250, align 4
  %254 = icmp eq ptr %253, null
  br i1 %254, label %310, label %255

255:                                              ; preds = %243
  %256 = ptrtoint ptr %253 to i32
  %257 = add nsw i32 %244, -1
  %258 = add i32 %257, %256
  %259 = and i32 %258, %245
  %260 = inttoptr i32 %259 to ptr
  br i1 %246, label %261, label %303

261:                                              ; preds = %255
  %262 = load i32, ptr %251, align 4
  br label %263

263:                                              ; preds = %261, %234
  %264 = phi i32 [ 48, %234 ], [ %262, %261 ]
  %265 = phi ptr [ %242, %234 ], [ %260, %261 ]
  %266 = phi i32 [ %241, %234 ], [ %259, %261 ]
  %267 = phi i32 [ 1, %234 ], [ %247, %261 ]
  store ptr %265, ptr %172, align 4
  %268 = getelementptr %struct.d40_phy_lli, ptr %265, i32 %267
  %269 = getelementptr inbounds %struct.d40_phy_lli_bidir, ptr %172, i32 0, i32 1
  store ptr %268, ptr %269, align 4
  %270 = getelementptr i8, ptr %0, i32 248
  %271 = load ptr, ptr %270, align 4
  %272 = getelementptr inbounds %struct.d40_base, ptr %271, i32 0, i32 2
  %273 = load ptr, ptr %272, align 4
  %274 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %265) #13
  %275 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %276 = xor i1 %275, true
  %277 = select i1 %274, i1 %276, i1 false
  br i1 %277, label %278, label %287, !prof !17

278:                                              ; preds = %263
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %279 = tail call ptr @dev_driver_string(ptr noundef %273) #13
  %280 = getelementptr inbounds %struct.device, ptr %273, i32 0, i32 3
  %281 = load ptr, ptr %280, align 4
  %282 = icmp eq ptr %281, null
  br i1 %282, label %283, label %285

283:                                              ; preds = %278
  %284 = load ptr, ptr %273, align 4
  br label %285

285:                                              ; preds = %283, %278
  %286 = phi ptr [ %284, %283 ], [ %281, %278 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.42, ptr noundef %279, ptr noundef %286) #13
  br label %287

287:                                              ; preds = %285, %263
  br i1 %274, label %288, label %290

288:                                              ; preds = %287
  %289 = getelementptr inbounds %struct.d40_desc, ptr %172, i32 0, i32 2, i32 2
  store i32 -1, ptr %289, align 4
  br label %299

290:                                              ; preds = %287
  %291 = load ptr, ptr @mem_map, align 4
  %292 = add i32 %266, 1073741824
  %293 = lshr i32 %292, 12
  %294 = getelementptr %struct.page, ptr %291, i32 %293
  %295 = and i32 %266, 4088
  %296 = tail call i32 @dma_map_page_attrs(ptr noundef %273, ptr noundef %294, i32 noundef %295, i32 noundef %264, i32 noundef 1, i32 noundef 0) #13
  %297 = getelementptr inbounds %struct.d40_desc, ptr %172, i32 0, i32 2, i32 2
  store i32 %296, ptr %297, align 4
  %298 = icmp eq i32 %296, -1
  br i1 %298, label %299, label %315

299:                                              ; preds = %290, %288
  %300 = phi ptr [ %289, %288 ], [ %297, %290 ]
  %301 = getelementptr inbounds %struct.d40_desc, ptr %172, i32 0, i32 2
  %302 = load ptr, ptr %301, align 4
  tail call void @kfree(ptr noundef %302) #13
  store ptr null, ptr %301, align 4
  store i32 0, ptr %300, align 4
  br label %310

303:                                              ; preds = %255, %234
  %304 = phi ptr [ %242, %234 ], [ %260, %255 ]
  %305 = phi i32 [ 1, %234 ], [ %247, %255 ]
  %306 = getelementptr inbounds %struct.d40_desc, ptr %172, i32 0, i32 1
  store ptr %304, ptr %306, align 4
  %307 = getelementptr %struct.d40_log_lli, ptr %304, i32 %305
  %308 = getelementptr inbounds %struct.d40_desc, ptr %172, i32 0, i32 1, i32 1
  store ptr %307, ptr %308, align 4
  %309 = getelementptr inbounds %struct.d40_desc, ptr %172, i32 0, i32 2, i32 2
  store i32 0, ptr %309, align 4
  br label %315

310:                                              ; preds = %299, %243, %224, %221
  %311 = phi ptr [ @.str.58, %221 ], [ @.str.58, %224 ], [ @.str.59, %243 ], [ @.str.59, %299 ]
  %312 = getelementptr i8, ptr %0, i32 20
  %313 = load ptr, ptr %312, align 4
  %314 = getelementptr inbounds %struct.dma_chan_dev, ptr %313, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %314, ptr noundef nonnull %311, ptr noundef nonnull @__func__.d40_prep_desc) #12
  tail call fastcc void @d40_desc_free(ptr noundef %7, ptr noundef nonnull %172) #13
  br label %400

315:                                              ; preds = %303, %290
  %316 = getelementptr inbounds %struct.d40_desc, ptr %172, i32 0, i32 4
  store i32 0, ptr %316, align 4
  %317 = getelementptr inbounds %struct.d40_desc, ptr %172, i32 0, i32 6
  %318 = getelementptr inbounds %struct.d40_desc, ptr %172, i32 0, i32 6, i32 1
  store i32 %5, ptr %318, align 4
  %319 = getelementptr inbounds %struct.d40_desc, ptr %172, i32 0, i32 6, i32 4
  store ptr @d40_tx_submit, ptr %319, align 4
  tail call void @dma_async_tx_descriptor_init(ptr noundef %317, ptr noundef %0) #13
  %320 = icmp eq ptr %172, null
  br i1 %320, label %400, label %321

321:                                              ; preds = %315
  %322 = add i32 %3, -1
  %323 = getelementptr %struct.scatterlist, ptr %1, i32 %322
  %324 = tail call ptr @sg_next(ptr noundef %323) #13
  %325 = icmp eq ptr %324, %1
  br i1 %325, label %326, label %328

326:                                              ; preds = %321
  %327 = getelementptr inbounds %struct.d40_desc, ptr %172, i32 0, i32 9
  store i8 1, ptr %327, align 1
  br label %328

328:                                              ; preds = %326, %321
  switch i32 %4, label %335 [
    i32 2, label %329
    i32 1, label %332
  ]

329:                                              ; preds = %328
  %330 = getelementptr i8, ptr %0, i32 272
  %331 = load i32, ptr %330, align 4
  br label %335

332:                                              ; preds = %328
  %333 = getelementptr i8, ptr %0, i32 272
  %334 = load i32, ptr %333, align 4
  br label %335

335:                                              ; preds = %332, %329, %328
  %336 = phi i32 [ %331, %329 ], [ 0, %332 ], [ 0, %328 ]
  %337 = phi i32 [ 0, %329 ], [ %334, %332 ], [ 0, %328 ]
  %338 = getelementptr i8, ptr %0, i32 -16
  %339 = load i32, ptr %338, align 4
  %340 = icmp eq i32 %339, -1
  br i1 %340, label %358, label %341

341:                                              ; preds = %335
  %342 = getelementptr inbounds %struct.d40_desc, ptr %172, i32 0, i32 1
  %343 = load ptr, ptr %342, align 4
  %344 = getelementptr i8, ptr %0, i32 260
  %345 = getelementptr i8, ptr %0, i32 264
  %346 = load i32, ptr %345, align 4
  %347 = getelementptr i8, ptr %0, i32 160
  %348 = load i32, ptr %347, align 4
  %349 = getelementptr i8, ptr %0, i32 176
  %350 = load i32, ptr %349, align 4
  %351 = tail call i32 @d40_log_sg_to_lli(ptr noundef %1, i32 noundef %3, i32 noundef %336, ptr noundef %343, i32 noundef %346, i32 noundef %348, i32 noundef %350) #13
  %352 = getelementptr inbounds %struct.d40_desc, ptr %172, i32 0, i32 1, i32 1
  %353 = load ptr, ptr %352, align 4
  %354 = load i32, ptr %344, align 4
  %355 = load i32, ptr %349, align 4
  %356 = load i32, ptr %347, align 4
  %357 = tail call i32 @d40_log_sg_to_lli(ptr noundef %2, i32 noundef %3, i32 noundef %337, ptr noundef %353, i32 noundef %354, i32 noundef %355, i32 noundef %356) #13
  br label %386

358:                                              ; preds = %335
  %359 = getelementptr inbounds %struct.d40_desc, ptr %172, i32 0, i32 9
  %360 = load i8, ptr %359, align 1, !range !12
  %361 = icmp eq i8 %360, 0
  %362 = select i1 %361, i32 0, i32 6
  %363 = getelementptr i8, ptr %0, i32 172
  %364 = getelementptr i8, ptr %0, i32 156
  %365 = load ptr, ptr %172, align 4
  %366 = ptrtoint ptr %365 to i32
  %367 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %366, i32 -2130706432, i32 8454144) #17, !srcloc !22
  %368 = getelementptr i8, ptr %0, i32 252
  %369 = load i32, ptr %368, align 4
  %370 = tail call i32 @d40_phy_sg_to_lli(ptr noundef %1, i32 noundef %3, i32 noundef %336, ptr noundef %365, i32 noundef %367, i32 noundef %369, ptr noundef %364, ptr noundef %363, i32 noundef %362) #13
  %371 = getelementptr inbounds %struct.d40_phy_lli_bidir, ptr %172, i32 0, i32 1
  %372 = load ptr, ptr %371, align 4
  %373 = ptrtoint ptr %372 to i32
  %374 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %373, i32 -2130706432, i32 8454144) #17, !srcloc !22
  %375 = getelementptr i8, ptr %0, i32 256
  %376 = load i32, ptr %375, align 4
  %377 = tail call i32 @d40_phy_sg_to_lli(ptr noundef %2, i32 noundef %3, i32 noundef %337, ptr noundef %372, i32 noundef %374, i32 noundef %376, ptr noundef %363, ptr noundef %364, i32 noundef %362) #13
  %378 = getelementptr i8, ptr %0, i32 248
  %379 = load ptr, ptr %378, align 4
  %380 = getelementptr inbounds %struct.d40_base, ptr %379, i32 0, i32 2
  %381 = load ptr, ptr %380, align 4
  %382 = getelementptr inbounds %struct.d40_desc, ptr %172, i32 0, i32 2, i32 2
  %383 = load i32, ptr %382, align 4
  %384 = getelementptr inbounds %struct.d40_desc, ptr %172, i32 0, i32 2, i32 1
  %385 = load i32, ptr %384, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %381, i32 noundef %383, i32 noundef %385, i32 noundef 1) #13
  br label %386

386:                                              ; preds = %358, %341
  %387 = phi i32 [ %377, %358 ], [ %357, %341 ]
  %388 = icmp sgt i32 %387, -1
  br i1 %388, label %396, label %389

389:                                              ; preds = %386
  %390 = getelementptr i8, ptr %0, i32 20
  %391 = load ptr, ptr %390, align 4
  %392 = getelementptr inbounds %struct.dma_chan_dev, ptr %391, i32 0, i32 1
  %393 = load i32, ptr %338, align 4
  %394 = icmp eq i32 %393, -1
  %395 = select i1 %394, ptr @.str.53, ptr @.str.52
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %392, ptr noundef nonnull @.str.51, ptr noundef nonnull @__func__.d40_prep_sg, ptr noundef nonnull %395, i32 noundef %387) #12
  tail call fastcc void @d40_desc_free(ptr noundef %7, ptr noundef nonnull %172)
  br label %400

396:                                              ; preds = %386
  %397 = getelementptr i8, ptr %0, i32 128
  %398 = getelementptr i8, ptr %0, i32 132
  %399 = load ptr, ptr %398, align 4
  store ptr %173, ptr %398, align 4
  store ptr %397, ptr %173, align 4
  store ptr %399, ptr %174, align 4
  store volatile ptr %173, ptr %399, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %145) #13
  br label %401

400:                                              ; preds = %389, %315, %310, %164
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %145) #13
  br label %401

401:                                              ; preds = %400, %396, %11
  %402 = phi ptr [ null, %400 ], [ %317, %396 ], [ null, %11 ]
  ret ptr %402
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @d40_phy_cfg(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @d40_tx_submit(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 -20
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #13
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr inbounds %struct.dma_chan, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call i32 @llvm.smax.i32(i32 %9, i32 1) #13
  store i32 %10, ptr %7, align 4
  store i32 %10, ptr %0, align 4
  %11 = getelementptr i8, ptr %0, i32 60
  %12 = getelementptr i8, ptr %0, i32 64
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %11, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %13, ptr %15, align 4
  store volatile ptr %14, ptr %13, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %11, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %12, align 4
  %16 = getelementptr i8, ptr %0, i32 68
  store i8 0, ptr %16, align 4
  %17 = getelementptr i8, ptr %3, i32 96
  %18 = getelementptr i8, ptr %3, i32 100
  %19 = load ptr, ptr %18, align 4
  store ptr %11, ptr %18, align 4
  store ptr %17, ptr %11, align 4
  store ptr %19, ptr %12, align 4
  store volatile ptr %11, ptr %19, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #13
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @d40_log_sg_to_lli(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @d40_phy_sg_to_lli(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @d40_term_all(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.d40_chan, ptr %0, i32 0, i32 10
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  %5 = getelementptr i8, ptr %3, i32 -148
  %6 = icmp eq ptr %5, null
  %7 = or i1 %4, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %15, %1
  %9 = getelementptr inbounds %struct.d40_chan, ptr %0, i32 0, i32 9
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  %12 = getelementptr i8, ptr %10, i32 -148
  %13 = icmp eq ptr %12, null
  %14 = or i1 %11, %13
  br i1 %14, label %27, label %34

15:                                               ; preds = %15, %1
  %16 = phi ptr [ %24, %15 ], [ %5, %1 ]
  %17 = phi ptr [ %22, %15 ], [ %3, %1 ]
  %18 = getelementptr i8, ptr %17, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %17, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %19, ptr %21, align 4
  store volatile ptr %20, ptr %19, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %17, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %18, align 4
  tail call fastcc void @d40_desc_free(ptr noundef %0, ptr noundef nonnull %16)
  %22 = load volatile ptr, ptr %2, align 4
  %23 = icmp eq ptr %22, %2
  %24 = getelementptr i8, ptr %22, i32 -148
  %25 = icmp eq ptr %24, null
  %26 = or i1 %23, %25
  br i1 %26, label %8, label %15

27:                                               ; preds = %34, %8
  %28 = getelementptr inbounds %struct.d40_chan, ptr %0, i32 0, i32 11
  %29 = load volatile ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %28
  %31 = getelementptr i8, ptr %29, i32 -148
  %32 = icmp eq ptr %31, null
  %33 = or i1 %30, %32
  br i1 %33, label %46, label %53

34:                                               ; preds = %34, %8
  %35 = phi ptr [ %43, %34 ], [ %12, %8 ]
  %36 = phi ptr [ %41, %34 ], [ %10, %8 ]
  %37 = getelementptr i8, ptr %36, i32 4
  %38 = load ptr, ptr %37, align 4
  %39 = load ptr, ptr %36, align 4
  %40 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  store ptr %38, ptr %40, align 4
  store volatile ptr %39, ptr %38, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %36, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %37, align 4
  tail call fastcc void @d40_desc_free(ptr noundef %0, ptr noundef nonnull %35)
  %41 = load volatile ptr, ptr %9, align 4
  %42 = icmp eq ptr %41, %9
  %43 = getelementptr i8, ptr %41, i32 -148
  %44 = icmp eq ptr %43, null
  %45 = or i1 %42, %44
  br i1 %45, label %27, label %34

46:                                               ; preds = %53, %27
  %47 = getelementptr inbounds %struct.d40_chan, ptr %0, i32 0, i32 8
  %48 = load volatile ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, %47
  %50 = getelementptr i8, ptr %48, i32 -148
  %51 = icmp eq ptr %50, null
  %52 = or i1 %49, %51
  br i1 %52, label %77, label %65

53:                                               ; preds = %53, %27
  %54 = phi ptr [ %62, %53 ], [ %31, %27 ]
  %55 = phi ptr [ %60, %53 ], [ %29, %27 ]
  %56 = getelementptr i8, ptr %55, i32 4
  %57 = load ptr, ptr %56, align 4
  %58 = load ptr, ptr %55, align 4
  %59 = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  store ptr %57, ptr %59, align 4
  store volatile ptr %58, ptr %57, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %55, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %56, align 4
  tail call fastcc void @d40_desc_free(ptr noundef %0, ptr noundef nonnull %54)
  %60 = load volatile ptr, ptr %28, align 4
  %61 = icmp eq ptr %60, %28
  %62 = getelementptr i8, ptr %60, i32 -148
  %63 = icmp eq ptr %62, null
  %64 = or i1 %61, %63
  br i1 %64, label %46, label %53

65:                                               ; preds = %65, %46
  %66 = phi ptr [ %74, %65 ], [ %50, %46 ]
  %67 = phi ptr [ %72, %65 ], [ %48, %46 ]
  %68 = getelementptr i8, ptr %67, i32 4
  %69 = load ptr, ptr %68, align 4
  %70 = load ptr, ptr %67, align 4
  %71 = getelementptr inbounds %struct.list_head, ptr %70, i32 0, i32 1
  store ptr %69, ptr %71, align 4
  store volatile ptr %70, ptr %69, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %67, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %68, align 4
  tail call fastcc void @d40_desc_free(ptr noundef %0, ptr noundef nonnull %66)
  %72 = load volatile ptr, ptr %47, align 4
  %73 = icmp eq ptr %72, %47
  %74 = getelementptr i8, ptr %72, i32 -148
  %75 = icmp eq ptr %74, null
  %76 = or i1 %73, %75
  br i1 %76, label %77, label %65

77:                                               ; preds = %65, %46
  %78 = getelementptr inbounds %struct.d40_chan, ptr %0, i32 0, i32 7
  %79 = load volatile ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, %78
  br i1 %80, label %89, label %81

81:                                               ; preds = %81, %77
  %82 = phi ptr [ %84, %81 ], [ %79, %77 ]
  %83 = getelementptr i8, ptr %82, i32 -148
  %84 = load ptr, ptr %82, align 4
  %85 = getelementptr i8, ptr %82, i32 4
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.list_head, ptr %84, i32 0, i32 1
  store ptr %86, ptr %87, align 4
  store volatile ptr %84, ptr %86, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %82, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %85, align 4
  tail call fastcc void @d40_desc_free(ptr noundef %0, ptr noundef %83)
  %88 = icmp eq ptr %84, %78
  br i1 %88, label %89, label %81

89:                                               ; preds = %81, %77
  %90 = getelementptr inbounds %struct.d40_chan, ptr %0, i32 0, i32 12
  %91 = load volatile ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, %90
  br i1 %92, label %101, label %93

93:                                               ; preds = %93, %89
  %94 = phi ptr [ %96, %93 ], [ %91, %89 ]
  %95 = getelementptr i8, ptr %94, i32 -148
  %96 = load ptr, ptr %94, align 4
  %97 = getelementptr i8, ptr %94, i32 4
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.list_head, ptr %96, i32 0, i32 1
  store ptr %98, ptr %99, align 4
  store volatile ptr %96, ptr %98, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %94, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %97, align 4
  tail call fastcc void @d40_desc_free(ptr noundef %0, ptr noundef %95)
  %100 = icmp eq ptr %96, %90
  br i1 %100, label %101, label %93

101:                                              ; preds = %93, %89
  %102 = getelementptr inbounds %struct.d40_chan, ptr %0, i32 0, i32 2
  store i32 0, ptr %102, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind }
attributes #14 = { cold }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind readnone }

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
!8 = !{i64 5049733}
!9 = !{i64 2153997825}
!10 = !{i64 2153998720}
!11 = !{i64 5049315}
!12 = !{i8 0, i8 2}
!13 = !{i64 2154001378}
!14 = !{i64 2153975915}
!15 = !{i64 2153976330}
!16 = !{i64 2153979242}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i64 2153969628}
!19 = !{i64 2153969983}
!20 = !{i64 2153972523}
!21 = !{i64 2153973542}
!22 = !{i64 2148898925, i64 2148898948, i64 2148898980, i64 2148899012, i64 2148899050, i64 2148899080}
!23 = !{i64 2153991477}
!24 = !{i64 2153909351}
!25 = !{i64 2153909737}
!26 = !{i64 2153899655}
!27 = !{i64 2153900044}
!28 = !{i64 2153898878}
!29 = !{i64 2153899273}
!30 = !{i64 2149326576}
!31 = !{i64 2149322400}
!32 = !{i64 2149322475, i64 2149322502, i64 2149322549, i64 2149322571, i64 2149322599, i64 2149322619}
!33 = !{i64 2149349579}
!34 = !{i64 2153985640}
!35 = !{i64 2153986106}
!36 = !{i64 2153986454}
!37 = !{i64 2153986803}
!38 = !{i64 2153987154}
!39 = !{i64 2153987516}
!40 = !{i64 2153987893}
!41 = !{i64 2153845690}
!42 = !{i64 2153846036}
!43 = !{i64 2153846382}
!44 = !{i64 2153846728}
!45 = !{i64 2153847074}
!46 = !{i64 2153847420}
!47 = !{i64 2153847766}
!48 = !{i64 2153848112}
!49 = !{i64 2153894651}
!50 = !{i64 2153886449}
!51 = !{i64 2153893619}
!52 = !{i64 2153893952}
!53 = !{i64 2153890387}
!54 = !{i64 2153890936}
!55 = !{i64 2153869828}
!56 = !{i64 2153869355}
!57 = !{i64 2153870369}
!58 = !{i64 2153870737}
!59 = !{i64 2153870579}
!60 = !{i64 2153887012}
!61 = !{i64 2153887389}
!62 = !{i64 2153887958}
!63 = !{i64 2153888268}
!64 = !{i64 2153888110}
!65 = !{i64 2153808539, i64 2153809026, i64 2153808576, i64 2153808632, i64 2153808666, i64 2153808690, i64 2153808731, i64 2153808752, i64 2153808780, i64 2153808814}
!66 = !{!"auto-init"}
!67 = !{i64 2153933722}
!68 = !{i64 2153934084}
!69 = !{i64 2153895977}
!70 = !{i64 2153896380}
!71 = !{i64 2153896775}
!72 = !{i64 2153897132}
!73 = !{i64 2153897476}
!74 = !{i64 2153897794}
!75 = !{i64 2153898109}
!76 = !{i64 2153898418}
!77 = !{i64 2153809475}
!78 = !{i64 2153923388}
!79 = !{i64 2153923721}
!80 = !{i64 2153922933}
!81 = !{i32 0, i32 33}
