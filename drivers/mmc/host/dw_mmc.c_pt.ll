; ModuleID = '/llk/IR/drivers/mmc/host/dw_mmc.c_pt.bc'
source_filename = "../drivers/mmc/host/dw_mmc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_mci_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_mci_probe\22\09\09\09\09\09"
module asm "__kstrtabns_dw_mci_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_mci_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_mci_remove\22\09\09\09\09\09"
module asm "__kstrtabns_dw_mci_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_mci_runtime_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_mci_runtime_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_dw_mci_runtime_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_mci_runtime_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_mci_runtime_resume\22\09\09\09\09\09"
module asm "__kstrtabns_dw_mci_runtime_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.dw_mci_dma_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dw_mci = type { %struct.spinlock, %struct.spinlock, ptr, ptr, i32, i8, ptr, %struct.sg_mapping_iter, ptr, ptr, ptr, %struct.mmc_command, i32, i8, i32, i32, i32, i32, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, %struct.tasklet_struct, i32, i32, i32, %struct.list_head, i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, %union.anon.70, ptr, ptr, i32, i8, i32, i32, i32, %struct.timer_list, %struct.timer_list, %struct.timer_list }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.69, i32 }
%struct.atomic_t = type { i32 }
%union.anon.69 = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.70 = type { i64 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.dw_mci_board = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.dw_mci_drv_data = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dw_mci_slot = type { ptr, ptr, i32, ptr, %struct.list_head, i32, i32, i32, i32, i32 }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mmc_supply = type { ptr, ptr }
%struct.idmac_desc_64addr = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.idmac_desc = type { i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.72 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.74 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@.str = private unnamed_addr constant [29 x i8] c"platform data not available\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"biu\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to enable biu clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ciu\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"failed to enable ciu clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Unable to set bus rate to %uHz\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Platform data must supply bus speed\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"implementation specific init failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"drivers/mmc/host/dw_mmc.c\00", align 1
@.str.9 = private unnamed_addr constant [71 x i8] c"HCON reports a reserved host data width!\0ADefaulting to 32-bit access.\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"Version ID is %04x\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"dw-mci\00", align 1
@.str.12 = private unnamed_addr constant [65 x i8] c"DW MMC controller at irq %d,%d bit host data width,%u deep fifo\0A\00", align 1
@__kstrtab_dw_mci_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_mci_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_mci_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_mci_probe to i32), ptr @__kstrtab_dw_mci_probe, ptr @__kstrtabns_dw_mci_probe }, section "___ksymtab+dw_mci_probe", align 4
@__kstrtab_dw_mci_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_mci_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_mci_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_mci_remove to i32), ptr @__kstrtab_dw_mci_remove, ptr @__kstrtabns_dw_mci_remove }, section "___ksymtab+dw_mci_remove", align 4
@__kstrtab_dw_mci_runtime_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_mci_runtime_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_mci_runtime_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_mci_runtime_suspend to i32), ptr @__kstrtab_dw_mci_runtime_suspend, ptr @__kstrtabns_dw_mci_runtime_suspend }, section "___ksymtab+dw_mci_runtime_suspend", align 4
@__kstrtab_dw_mci_runtime_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_mci_runtime_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_mci_runtime_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_mci_runtime_resume to i32), ptr @__kstrtab_dw_mci_runtime_resume, ptr @__kstrtabns_dw_mci_runtime_resume }, section "___ksymtab+dw_mci_runtime_resume", align 4
@__initcall__kmod_dw_mmc__283_3607_dw_mci_init6 = internal global ptr @dw_mci_init, section ".initcall6.init", align 4
@__exitcall_dw_mci_exit = internal global ptr @dw_mci_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description284 = internal constant [55 x i8] c"dw_mmc.description=DW Multimedia Card Interface driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author285 = internal constant [40 x i8] c"dw_mmc.author=NXP Semiconductor VietNam\00", section ".modinfo", align 1
@__UNIQUE_ID_author286 = internal constant [43 x i8] c"dw_mmc.author=Imagination Technologies Ltd\00", section ".modinfo", align 1
@__UNIQUE_ID_file287 = internal constant [36 x i8] c"dw_mmc.file=drivers/mmc/host/dw_mmc\00", section ".modinfo", align 1
@__UNIQUE_ID_license288 = internal constant [22 x i8] c"dw_mmc.license=GPL v2\00", section ".modinfo", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"fifo-depth\00", align 1
@.str.15 = private unnamed_addr constant [74 x i8] c"fifo-depth property not found, using value of FIFOTH register as default\0A\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"card-detect-delay\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"data-addr\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"fifo-watermark-aligned\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"Unexpected CMD11 timeout\0A\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"Unexpected interrupt latency\0A\00", align 1
@.str.22 = private unnamed_addr constant [36 x i8] c"CTO timeout when already completed\0A\00", align 1
@.str.23 = private unnamed_addr constant [38 x i8] c"Unexpected command timeout, state %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"Unexpected data interrupt latency\0A\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"DTO timeout when already completed\0A\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"Unexpected data timeout, state %d\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.27 = private unnamed_addr constant [42 x i8] c"Timeout resetting block (ctrl reset %#x)\0A\00", align 1
@.str.28 = private unnamed_addr constant [37 x i8] c"IDMAC supports 64-bit address mode.\0A\00", align 1
@.str.29 = private unnamed_addr constant [37 x i8] c"IDMAC supports 32-bit address mode.\0A\00", align 1
@.str.30 = private unnamed_addr constant [32 x i8] c"%s: could not alloc DMA memory\0A\00", align 1
@__func__.dw_mci_init_dma = private unnamed_addr constant [16 x i8] c"dw_mci_init_dma\00", align 1
@dw_mci_idmac_ops = internal constant %struct.dw_mci_dma_ops { ptr @dw_mci_idmac_init, ptr @dw_mci_idmac_start_dma, ptr @dw_mci_dmac_complete_dma, ptr @dw_mci_idmac_stop_dma, ptr @dw_mci_dma_cleanup, ptr null }, align 4
@.str.31 = private unnamed_addr constant [32 x i8] c"Using internal DMA controller.\0A\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"dma-names\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"dmas\00", align 1
@dw_mci_edmac_ops = internal constant %struct.dw_mci_dma_ops { ptr @dw_mci_edmac_init, ptr @dw_mci_edmac_start_dma, ptr @dw_mci_dmac_complete_dma, ptr @dw_mci_edmac_stop_dma, ptr @dw_mci_dma_cleanup, ptr @dw_mci_edmac_exit }, align 4
@.str.34 = private unnamed_addr constant [32 x i8] c"Using external DMA controller.\0A\00", align 1
@.str.35 = private unnamed_addr constant [42 x i8] c"%s: Unable to initialize DMA Controller.\0A\00", align 1
@.str.36 = private unnamed_addr constant [31 x i8] c"DMA initialization not found.\0A\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"Using PIO mode.\0A\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"rx-tx\00", align 1
@.str.39 = private unnamed_addr constant [37 x i8] c"Failed to get external DMA channel.\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@dw_mci_edmac_start_dma.mszs = internal unnamed_addr constant [8 x i32] [i32 1, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256], align 4
@.str.40 = private unnamed_addr constant [25 x i8] c"Failed to config edmac.\0A\00", align 1
@.str.41 = private unnamed_addr constant [25 x i8] c"Can't prepare slave sg.\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.42 = private unnamed_addr constant [54 x i8] c"Timeout sending command (cmd %#x arg %#x status %#x)\0A\00", align 1
@.str.43 = private unnamed_addr constant [21 x i8] c"Busy; trying anyway\0A\00", align 1
@.str.44 = private unnamed_addr constant [47 x i8] c"%s: Timeout waiting for dma_req to be cleared\0A\00", align 1
@__func__.dw_mci_reset = private unnamed_addr constant [13 x i8] c"dw_mci_reset\00", align 1
@.str.45 = private unnamed_addr constant [76 x i8] c"%s: fifo/dma reset bits didn't clear but ciu was reset, doing clock update\0A\00", align 1
@dw_mci_ops = internal constant %struct.mmc_host_ops { ptr @dw_mci_post_req, ptr @dw_mci_pre_req, ptr @dw_mci_request, ptr null, ptr @dw_mci_set_ios, ptr @dw_mci_get_ro, ptr @dw_mci_get_cd, ptr @dw_mci_enable_sdio_irq, ptr @dw_mci_ack_sdio_irq, ptr null, ptr @dw_mci_switch_voltage, ptr @dw_mci_card_busy, ptr @dw_mci_execute_tuning, ptr @dw_mci_prepare_hs400_tuning, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw_mci_hw_reset, ptr null, ptr null, ptr null }, align 4
@.str.46 = private unnamed_addr constant [32 x i8] c"Voltage change didn't complete\0A\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"mshc\00", align 1
@.str.48 = private unnamed_addr constant [26 x i8] c"invalid controller id %d\0A\00", align 1
@.str.49 = private unnamed_addr constant [18 x i8] c"card is polling.\0A\00", align 1
@.str.50 = private unnamed_addr constant [24 x i8] c"card is non-removable.\0A\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"regs\00", align 1
@dw_mci_regs_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dw_mci_regs_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.52 = private unnamed_addr constant [4 x i8] c"req\00", align 1
@dw_mci_req_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dw_mci_req_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.53 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"pending_events\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"completed_events\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"STATUS:\090x%08x\0A\00", align 1
@.str.57 = private unnamed_addr constant [17 x i8] c"RINTSTS:\090x%08x\0A\00", align 1
@.str.58 = private unnamed_addr constant [13 x i8] c"CMD:\090x%08x\0A\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"CTRL:\090x%08x\0A\00", align 1
@.str.60 = private unnamed_addr constant [17 x i8] c"INTMASK:\090x%08x\0A\00", align 1
@.str.61 = private unnamed_addr constant [16 x i8] c"CLKENA:\090x%08x\0A\00", align 1
@.str.62 = private unnamed_addr constant [43 x i8] c"CMD%u(0x%x) flg %x rsp %x %x %x %x err %d\0A\00", align 1
@.str.63 = private unnamed_addr constant [33 x i8] c"DATA %u / %u * %u flg %x err %d\0A\00", align 1
@.str.64 = private unnamed_addr constant [33 x i8] c"failed to enable vmmc regulator\0A\00", align 1
@.str.65 = private unnamed_addr constant [24 x i8] c"failed to enable vqmmc\0A\00", align 1
@.str.66 = private unnamed_addr constant [66 x i8] c"Bus speed (slot %d) = %dHz (slot req %dHz, actual %dHZ div = %d)\0A\00", align 1
@.str.67 = private unnamed_addr constant [56 x i8] c"\016Synopsys Designware Multimedia Card Interface Driver\0A\00", align 1
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_author285, ptr @__UNIQUE_ID_author286, ptr @__UNIQUE_ID_description284, ptr @__UNIQUE_ID_file287, ptr @__UNIQUE_ID_license288, ptr @__exitcall_dw_mci_exit, ptr @__initcall__kmod_dw_mmc__283_3607_dw_mci_init6, ptr @__ksymtab_dw_mci_probe, ptr @__ksymtab_dw_mci_remove, ptr @__ksymtab_dw_mci_runtime_resume, ptr @__ksymtab_dw_mci_runtime_suspend, ptr @dw_mci_exit], section "llvm.metadata"
@switch.table.dw_mci_probe = private unnamed_addr constant [3 x ptr] [ptr @dw_mci_push_data16, ptr @dw_mci_push_data32, ptr @dw_mci_push_data64], align 4
@switch.table.dw_mci_probe.68 = private unnamed_addr constant [3 x ptr] [ptr @dw_mci_pull_data16, ptr @dw_mci_pull_data32, ptr @dw_mci_pull_data64], align 4
@switch.table.dw_mci_probe.69 = private unnamed_addr constant [3 x i32] [i32 16, i32 32, i32 64], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dw_mci_probe(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 38
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 37
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %55

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 36
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !8
  %11 = tail call noalias ptr @devm_kmalloc(ptr noundef %10, i32 noundef 36, i32 noundef 3520) #11
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  store ptr inttoptr (i32 -12 to ptr), ptr %5, align 8
  br label %50

14:                                               ; preds = %8
  %15 = tail call ptr @__devm_reset_control_get(ptr noundef %10, ptr noundef nonnull @.str.13, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #11
  %16 = getelementptr inbounds %struct.dw_mci_board, ptr %11, i32 0, i32 6
  store ptr %15, ptr %16, align 4
  %17 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %47, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.dw_mci_board, ptr %11, i32 0, i32 4
  %20 = tail call i32 @device_property_read_u32_array(ptr noundef %10, ptr noundef nonnull @.str.14, ptr noundef %19, i32 noundef 1) #11
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.15) #12
  br label %23

23:                                               ; preds = %22, %18
  %24 = getelementptr inbounds %struct.dw_mci_board, ptr %11, i32 0, i32 5
  %25 = tail call i32 @device_property_read_u32_array(ptr noundef %10, ptr noundef nonnull @.str.16, ptr noundef %24, i32 noundef 1) #11
  %26 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 4
  %27 = tail call i32 @device_property_read_u32_array(ptr noundef %10, ptr noundef nonnull @.str.17, ptr noundef %26, i32 noundef 1) #11
  %28 = tail call zeroext i1 @device_property_present(ptr noundef %10, ptr noundef nonnull @.str.18) #11
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 5
  store i8 1, ptr %30, align 4
  br label %31

31:                                               ; preds = %29, %23
  %32 = call i32 @device_property_read_u32_array(ptr noundef %10, ptr noundef nonnull @.str.19, ptr noundef nonnull %2, i32 noundef 1) #11
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, ptr %2, align 4
  store i32 %35, ptr %11, align 4
  br label %36

36:                                               ; preds = %34, %31
  %37 = icmp eq ptr %4, null
  br i1 %37, label %47, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.dw_mci_drv_data, ptr %4, i32 0, i32 5
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  %43 = call i32 %40(ptr noundef %0) #11
  %44 = icmp eq i32 %43, 0
  %45 = inttoptr i32 %43 to ptr
  %46 = select i1 %44, ptr %11, ptr %45
  br label %47

47:                                               ; preds = %42, %38, %36, %14
  %48 = phi ptr [ %11, %38 ], [ %11, %36 ], [ %15, %14 ], [ %46, %42 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  store ptr %48, ptr %5, align 8
  %49 = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  br i1 %49, label %50, label %55

50:                                               ; preds = %47, %13
  %51 = phi ptr [ inttoptr (i32 -12 to ptr), %13 ], [ %48, %47 ]
  %52 = load ptr, ptr %9, align 4
  %53 = ptrtoint ptr %51 to i32
  %54 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %52, i32 noundef %53, ptr noundef nonnull @.str) #11
  br label %331

55:                                               ; preds = %47, %1
  %56 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 36
  %57 = load ptr, ptr %56, align 4
  %58 = call ptr @devm_clk_get(ptr noundef %57, ptr noundef nonnull @.str.1) #11
  %59 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 40
  store ptr %58, ptr %59, align 4
  %60 = icmp ugt ptr %58, inttoptr (i32 -4096 to ptr)
  br i1 %60, label %71, label %61

61:                                               ; preds = %55
  %62 = call i32 @clk_prepare(ptr noundef %58) #11
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = call i32 @clk_enable(ptr noundef %58) #11
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %64
  call void @clk_unprepare(ptr noundef %58) #11
  br label %68

68:                                               ; preds = %67, %61
  %69 = phi i32 [ %65, %67 ], [ %62, %61 ]
  %70 = load ptr, ptr %56, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.2) #12
  br label %331

71:                                               ; preds = %64, %55
  %72 = load ptr, ptr %56, align 4
  %73 = call ptr @devm_clk_get(ptr noundef %72, ptr noundef nonnull @.str.3) #11
  %74 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 41
  store ptr %73, ptr %74, align 8
  %75 = icmp ugt ptr %73, inttoptr (i32 -4096 to ptr)
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load ptr, ptr %5, align 8
  %78 = load i32, ptr %77, align 4
  br label %104

79:                                               ; preds = %71
  %80 = call i32 @clk_prepare(ptr noundef %73) #11
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = call i32 @clk_enable(ptr noundef %73) #11
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %82
  call void @clk_unprepare(ptr noundef %73) #11
  br label %86

86:                                               ; preds = %85, %79
  %87 = phi i32 [ %83, %85 ], [ %80, %79 ]
  %88 = load ptr, ptr %56, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.4) #12
  br label %328

89:                                               ; preds = %82
  %90 = load ptr, ptr %5, align 8
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %101, label %93

93:                                               ; preds = %89
  %94 = load ptr, ptr %74, align 8
  %95 = call i32 @clk_set_rate(ptr noundef %94, i32 noundef %91) #11
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = load ptr, ptr %56, align 4
  %99 = load ptr, ptr %5, align 8
  %100 = load i32, ptr %99, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %98, ptr noundef nonnull @.str.5, i32 noundef %100) #12
  br label %101

101:                                              ; preds = %97, %93, %89
  %102 = load ptr, ptr %74, align 8
  %103 = call i32 @clk_get_rate(ptr noundef %102) #11
  br label %104

104:                                              ; preds = %101, %76
  %105 = phi i32 [ %103, %101 ], [ %78, %76 ]
  %106 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 32
  store i32 %105, ptr %106, align 4
  %107 = icmp eq i32 %105, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = load ptr, ptr %56, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %109, ptr noundef nonnull @.str.6) #12
  br label %325

110:                                              ; preds = %104
  %111 = load ptr, ptr %5, align 8
  %112 = getelementptr inbounds %struct.dw_mci_board, ptr %111, i32 0, i32 6
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %121, label %115

115:                                              ; preds = %110
  %116 = call i32 @reset_control_assert(ptr noundef nonnull %113) #11
  call void @usleep_range_state(i32 noundef 10, i32 noundef 50, i32 noundef 2) #11
  %117 = load ptr, ptr %5, align 8
  %118 = getelementptr inbounds %struct.dw_mci_board, ptr %117, i32 0, i32 6
  %119 = load ptr, ptr %118, align 4
  %120 = call i32 @reset_control_deassert(ptr noundef %119) #11
  br label %121

121:                                              ; preds = %115, %110
  %122 = icmp eq ptr %4, null
  br i1 %122, label %132, label %123

123:                                              ; preds = %121
  %124 = getelementptr inbounds %struct.dw_mci_drv_data, ptr %4, i32 0, i32 3
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %132, label %127

127:                                              ; preds = %123
  %128 = call i32 %125(ptr noundef %0) #11
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %127
  %131 = load ptr, ptr %56, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %131, ptr noundef nonnull @.str.7) #12
  br label %325

132:                                              ; preds = %127, %123, %121
  %133 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 55
  call void @init_timer_key(ptr noundef %133, ptr noundef nonnull @dw_mci_cmd11_timer, i32 noundef 0, ptr noundef null, ptr noundef null) #11
  %134 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 56
  call void @init_timer_key(ptr noundef %134, ptr noundef nonnull @dw_mci_cto_timer, i32 noundef 0, ptr noundef null, ptr noundef null) #11
  %135 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 57
  call void @init_timer_key(ptr noundef %135, ptr noundef nonnull @dw_mci_dto_timer, i32 noundef 0, ptr noundef null, ptr noundef null) #11
  store i32 0, ptr %0, align 8
  %136 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 1
  store i32 0, ptr %136, align 4
  %137 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 31
  store volatile ptr %137, ptr %137, align 4
  %138 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 31, i32 1
  store ptr %137, ptr %138, align 4
  %139 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 2
  %140 = load ptr, ptr %139, align 8
  %141 = getelementptr i8, ptr %140, i32 112
  %142 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %141) #11, !srcloc !9
  %143 = lshr i32 %142, 7
  %144 = and i32 %143, 7
  %145 = icmp ult i32 %144, 3
  br i1 %145, label %147, label %146

146:                                              ; preds = %132
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 3374, i32 noundef 9, ptr noundef nonnull @.str.9) #11
  br label %155

147:                                              ; preds = %132
  %148 = getelementptr inbounds [3 x ptr], ptr @switch.table.dw_mci_probe, i32 0, i32 %144
  %149 = load ptr, ptr %148, align 4
  %150 = getelementptr inbounds [3 x ptr], ptr @switch.table.dw_mci_probe.68, i32 0, i32 %144
  %151 = load ptr, ptr %150, align 4
  %152 = add nuw nsw i32 %144, 1
  %153 = getelementptr inbounds [3 x i32], ptr @switch.table.dw_mci_probe.69, i32 0, i32 %144
  %154 = load i32, ptr %153, align 4
  br label %155

155:                                              ; preds = %147, %146
  %156 = phi ptr [ @dw_mci_push_data32, %146 ], [ %149, %147 ]
  %157 = phi ptr [ @dw_mci_pull_data32, %146 ], [ %151, %147 ]
  %158 = phi i32 [ 2, %146 ], [ %152, %147 ]
  %159 = phi i32 [ 32, %146 ], [ %154, %147 ]
  %160 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 48
  store ptr %156, ptr %160, align 8
  %161 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 49
  store ptr %157, ptr %161, align 4
  %162 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 44
  store i32 %158, ptr %162, align 4
  %163 = call fastcc zeroext i1 @dw_mci_ctrl_reset(ptr noundef %0, i32 noundef 7)
  br i1 %163, label %164, label %325

164:                                              ; preds = %155
  %165 = load ptr, ptr %5, align 8
  %166 = getelementptr inbounds %struct.dw_mci_board, ptr %165, i32 0, i32 7
  %167 = load ptr, ptr %166, align 4
  %168 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 19
  store ptr %167, ptr %168, align 8
  %169 = load ptr, ptr %56, align 4
  %170 = load ptr, ptr %139, align 8
  %171 = getelementptr i8, ptr %170, i32 112
  %172 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %171) #11, !srcloc !9
  %173 = lshr i32 %172, 16
  %174 = and i32 %173, 3
  %175 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 14
  store i32 %174, ptr %175, align 4
  switch i32 %174, label %232 [
    i32 0, label %176
    i32 1, label %201
    i32 2, label %201
  ]

176:                                              ; preds = %164
  store i32 1, ptr %175, align 4
  %177 = load ptr, ptr %139, align 8
  %178 = getelementptr i8, ptr %177, i32 112
  %179 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %178) #11, !srcloc !9
  %180 = and i32 %179, 134217728
  %181 = icmp eq i32 %180, 0
  %182 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 16
  br i1 %181, label %191, label %183

183:                                              ; preds = %176
  store i32 1, ptr %182, align 4
  %184 = load ptr, ptr %56, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %184, ptr noundef nonnull @.str.28) #12
  %185 = load ptr, ptr %56, align 4
  %186 = call i32 @dma_set_mask(ptr noundef %185, i64 noundef -1) #11
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %183
  %189 = load ptr, ptr %56, align 4
  %190 = call i32 @dma_set_coherent_mask(ptr noundef %189, i64 noundef -1) #11
  br label %193

191:                                              ; preds = %176
  store i32 0, ptr %182, align 4
  %192 = load ptr, ptr %56, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %192, ptr noundef nonnull @.str.29) #12
  br label %193

193:                                              ; preds = %191, %188, %183
  %194 = load ptr, ptr %56, align 4
  %195 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 17
  %196 = call ptr @dmam_alloc_attrs(ptr noundef %194, i32 noundef 4096, ptr noundef %195, i32 noundef 3264, i32 noundef 0) #11
  %197 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 18
  store ptr %196, ptr %197, align 4
  %198 = icmp eq ptr %196, null
  br i1 %198, label %199, label %206

199:                                              ; preds = %193
  %200 = load ptr, ptr %56, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %200, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.dw_mci_init_dma) #12
  br label %232

201:                                              ; preds = %164, %164
  store i32 2, ptr %175, align 4
  %202 = call i32 @device_property_read_string_array(ptr noundef %169, ptr noundef nonnull @.str.32, ptr noundef null, i32 noundef 0) #11
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %232, label %204

204:                                              ; preds = %201
  %205 = call zeroext i1 @device_property_present(ptr noundef %169, ptr noundef nonnull @.str.33) #11
  br i1 %205, label %206, label %232

206:                                              ; preds = %204, %193
  %207 = phi ptr [ @dw_mci_idmac_ops, %193 ], [ @dw_mci_edmac_ops, %204 ]
  %208 = phi ptr [ @.str.31, %193 ], [ @.str.34, %204 ]
  store ptr %207, ptr %168, align 8
  %209 = load ptr, ptr %56, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %209, ptr noundef nonnull %208) #12
  %210 = load ptr, ptr %168, align 8
  %211 = load ptr, ptr %210, align 4
  %212 = icmp eq ptr %211, null
  br i1 %212, label %230, label %213

213:                                              ; preds = %206
  %214 = getelementptr inbounds %struct.dw_mci_dma_ops, ptr %210, i32 0, i32 1
  %215 = load ptr, ptr %214, align 4
  %216 = icmp eq ptr %215, null
  br i1 %216, label %230, label %217

217:                                              ; preds = %213
  %218 = getelementptr inbounds %struct.dw_mci_dma_ops, ptr %210, i32 0, i32 3
  %219 = load ptr, ptr %218, align 4
  %220 = icmp eq ptr %219, null
  br i1 %220, label %230, label %221

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct.dw_mci_dma_ops, ptr %210, i32 0, i32 4
  %223 = load ptr, ptr %222, align 4
  %224 = icmp eq ptr %223, null
  br i1 %224, label %230, label %225

225:                                              ; preds = %221
  %226 = call i32 %211(ptr noundef %0) #11
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %234, label %228

228:                                              ; preds = %225
  %229 = load ptr, ptr %56, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %229, ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.dw_mci_init_dma) #12
  br label %232

230:                                              ; preds = %221, %217, %213, %206
  %231 = load ptr, ptr %56, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %231, ptr noundef nonnull @.str.36) #12
  br label %232

232:                                              ; preds = %230, %228, %204, %201, %199, %164
  %233 = load ptr, ptr %56, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %233, ptr noundef nonnull @.str.37) #12
  store i32 0, ptr %175, align 4
  br label %234

234:                                              ; preds = %232, %225
  %235 = load ptr, ptr %139, align 8
  %236 = getelementptr i8, ptr %235, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %236, i32 -1) #11, !srcloc !10
  %237 = load ptr, ptr %139, align 8
  %238 = getelementptr i8, ptr %237, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %238, i32 0) #11, !srcloc !10
  %239 = load ptr, ptr %139, align 8
  %240 = getelementptr i8, ptr %239, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %240, i32 -1) #11, !srcloc !10
  %241 = load ptr, ptr %5, align 8
  %242 = getelementptr inbounds %struct.dw_mci_board, ptr %241, i32 0, i32 4
  %243 = load i32, ptr %242, align 4
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %252

245:                                              ; preds = %234
  %246 = load ptr, ptr %139, align 8
  %247 = getelementptr i8, ptr %246, i32 76
  %248 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %247) #11, !srcloc !9
  %249 = lshr i32 %248, 16
  %250 = and i32 %249, 4095
  %251 = add nuw nsw i32 %250, 1
  br label %252

252:                                              ; preds = %245, %234
  %253 = phi i32 [ %251, %245 ], [ %243, %234 ]
  %254 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 43
  store i32 %253, ptr %254, align 8
  %255 = lshr i32 %253, 1
  %256 = shl i32 %255, 16
  %257 = add i32 %256, 268369920
  %258 = and i32 %257, 268369920
  %259 = and i32 %255, 4095
  %260 = or i32 %259, %258
  %261 = or i32 %260, 536870912
  %262 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 34
  store i32 %261, ptr %262, align 4
  %263 = load ptr, ptr %139, align 8
  %264 = getelementptr i8, ptr %263, i32 76
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %264, i32 %261) #11, !srcloc !10
  %265 = load ptr, ptr %139, align 8
  %266 = getelementptr i8, ptr %265, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %266, i32 0) #11, !srcloc !10
  %267 = load ptr, ptr %139, align 8
  %268 = getelementptr i8, ptr %267, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %268, i32 0) #11, !srcloc !10
  %269 = load ptr, ptr %139, align 8
  %270 = getelementptr i8, ptr %269, i32 108
  %271 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %270) #11, !srcloc !9
  %272 = trunc i32 %271 to i16
  %273 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 35
  store i16 %272, ptr %273, align 8
  %274 = load ptr, ptr %56, align 4
  %275 = and i32 %271, 65535
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %274, ptr noundef nonnull @.str.10, i32 noundef %275) #12
  %276 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 4
  %277 = load i32, ptr %276, align 8
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %282, label %279

279:                                              ; preds = %252
  %280 = load ptr, ptr %139, align 8
  %281 = getelementptr i8, ptr %280, i32 %277
  br label %290

282:                                              ; preds = %252
  %283 = load i16, ptr %273, align 8
  %284 = icmp ult i16 %283, 9226
  %285 = load ptr, ptr %139, align 8
  br i1 %284, label %286, label %288

286:                                              ; preds = %282
  %287 = getelementptr i8, ptr %285, i32 256
  br label %290

288:                                              ; preds = %282
  %289 = getelementptr i8, ptr %285, i32 512
  br label %290

290:                                              ; preds = %288, %286, %279
  %291 = phi ptr [ %287, %286 ], [ %289, %288 ], [ %281, %279 ]
  %292 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 3
  store ptr %291, ptr %292, align 4
  %293 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 27
  call void @tasklet_setup(ptr noundef %293, ptr noundef nonnull @dw_mci_tasklet_func) #11
  %294 = load ptr, ptr %56, align 4
  %295 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 53
  %296 = load i32, ptr %295, align 4
  %297 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 52
  %298 = load i32, ptr %297, align 8
  %299 = call i32 @devm_request_threaded_irq(ptr noundef %294, i32 noundef %296, ptr noundef nonnull @dw_mci_interrupt, ptr noundef null, i32 noundef %298, ptr noundef nonnull @.str.11, ptr noundef %0) #11
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %310

301:                                              ; preds = %290
  %302 = load ptr, ptr %139, align 8
  %303 = getelementptr i8, ptr %302, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %303, i32 47102) #11, !srcloc !10
  %304 = load ptr, ptr %139, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %304, i32 16) #11, !srcloc !10
  %305 = load ptr, ptr %56, align 4
  %306 = load i32, ptr %295, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %305, ptr noundef nonnull @.str.12, i32 noundef %306, i32 noundef %159, i32 noundef %253) #12
  %307 = call fastcc i32 @dw_mci_init_slot(ptr noundef %0)
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %301
  call fastcc void @dw_mci_enable_cd(ptr noundef %0)
  br label %331

310:                                              ; preds = %301, %290
  %311 = phi i32 [ %299, %290 ], [ %307, %301 ]
  %312 = load i32, ptr %175, align 4
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %320, label %314

314:                                              ; preds = %310
  %315 = load ptr, ptr %168, align 8
  %316 = getelementptr inbounds %struct.dw_mci_dma_ops, ptr %315, i32 0, i32 5
  %317 = load ptr, ptr %316, align 4
  %318 = icmp eq ptr %317, null
  br i1 %318, label %320, label %319

319:                                              ; preds = %314
  call void %317(ptr noundef %0) #11
  br label %320

320:                                              ; preds = %319, %314, %310
  %321 = load ptr, ptr %5, align 8
  %322 = getelementptr inbounds %struct.dw_mci_board, ptr %321, i32 0, i32 6
  %323 = load ptr, ptr %322, align 4
  %324 = call i32 @reset_control_assert(ptr noundef %323) #11
  br label %325

325:                                              ; preds = %320, %155, %130, %108
  %326 = phi i32 [ %128, %130 ], [ %311, %320 ], [ -19, %108 ], [ -19, %155 ]
  %327 = load ptr, ptr %74, align 8
  call void @clk_disable(ptr noundef %327) #11
  call void @clk_unprepare(ptr noundef %327) #11
  br label %328

328:                                              ; preds = %325, %86
  %329 = phi i32 [ %326, %325 ], [ %87, %86 ]
  %330 = load ptr, ptr %59, align 4
  call void @clk_disable(ptr noundef %330) #11
  call void @clk_unprepare(ptr noundef %330) #11
  br label %331

331:                                              ; preds = %328, %309, %68, %50
  %332 = phi i32 [ %329, %328 ], [ 0, %309 ], [ %69, %68 ], [ %54, %50 ]
  ret i32 %332
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_mci_cmd11_timer(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -108
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 6
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 -80
  %7 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.20) #12
  br label %16

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 -156
  store i32 256, ptr %9, align 8
  %10 = getelementptr i8, ptr %0, i32 -116
  tail call void @_set_bit(i32 noundef 0, ptr noundef %10) #11
  %11 = getelementptr i8, ptr %0, i32 -136
  %12 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %11) #11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = getelementptr i8, ptr %0, i32 -140
  tail call void @__tasklet_schedule(ptr noundef %15) #11
  br label %16

16:                                               ; preds = %14, %8, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_mci_cto_timer(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -348
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #11
  %4 = getelementptr i8, ptr %0, i32 -344
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 64
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #11, !srcloc !9
  %8 = and i32 %7, 4422
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %0, i32 -100
  %12 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.21) #12
  br label %34

13:                                               ; preds = %1
  %14 = getelementptr i8, ptr %0, i32 -136
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = getelementptr i8, ptr %0, i32 -100
  %20 = load ptr, ptr %19, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.22) #12
  br label %34

21:                                               ; preds = %13
  %22 = getelementptr i8, ptr %0, i32 -128
  %23 = load i32, ptr %22, align 8
  switch i32 %23, label %31 [
    i32 6, label %24
    i32 1, label %24
    i32 4, label %24
  ]

24:                                               ; preds = %21, %21, %21
  %25 = getelementptr i8, ptr %0, i32 -176
  store i32 256, ptr %25, align 8
  tail call void @_set_bit(i32 noundef 0, ptr noundef %14) #11
  %26 = getelementptr i8, ptr %0, i32 -156
  %27 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %26) #11
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = getelementptr i8, ptr %0, i32 -160
  tail call void @__tasklet_schedule(ptr noundef %30) #11
  br label %34

31:                                               ; preds = %21
  %32 = getelementptr i8, ptr %0, i32 -100
  %33 = load ptr, ptr %32, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.23, i32 noundef %23) #12
  br label %34

34:                                               ; preds = %31, %29, %24, %18, %10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_mci_dto_timer(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -368
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #11
  %4 = getelementptr i8, ptr %0, i32 -364
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 64
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #11, !srcloc !9
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %0, i32 -120
  %12 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.24) #12
  br label %36

13:                                               ; preds = %1
  %14 = getelementptr i8, ptr %0, i32 -156
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = getelementptr i8, ptr %0, i32 -120
  %20 = load ptr, ptr %19, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.25) #12
  br label %36

21:                                               ; preds = %13
  %22 = getelementptr i8, ptr %0, i32 -148
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, -2
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = getelementptr i8, ptr %0, i32 -192
  store i32 512, ptr %27, align 4
  tail call void @_set_bit(i32 noundef 3, ptr noundef %14) #11
  tail call void @_set_bit(i32 noundef 2, ptr noundef %14) #11
  %28 = getelementptr i8, ptr %0, i32 -176
  %29 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %28) #11
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = getelementptr i8, ptr %0, i32 -180
  tail call void @__tasklet_schedule(ptr noundef %32) #11
  br label %36

33:                                               ; preds = %21
  %34 = getelementptr i8, ptr %0, i32 -120
  %35 = load ptr, ptr %34, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %35, ptr noundef nonnull @.str.26, i32 noundef %23) #12
  br label %36

36:                                               ; preds = %33, %31, %26, %18, %10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #11
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_mci_push_data16(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 46
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %28, label %9, !prof !11

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 44
  %11 = load i32, ptr %10, align 4
  %12 = shl nuw i32 1, %11
  %13 = zext i8 %7 to i32
  %14 = sub i32 %12, %13
  %15 = tail call i32 @llvm.smin.i32(i32 %14, i32 %2) #11
  %16 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 47
  %17 = getelementptr i8, ptr %16, i32 %13
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %17, ptr align 1 %1, i32 %15, i1 false) #11
  %18 = load i8, ptr %6, align 1
  %19 = trunc i32 %15 to i8
  %20 = add i8 %18, %19
  store i8 %20, ptr %6, align 1
  %21 = getelementptr i8, ptr %1, i32 %15
  %22 = sub i32 %2, %15
  %23 = icmp eq i8 %20, 2
  br i1 %23, label %24, label %28

24:                                               ; preds = %9
  %25 = load i16, ptr %16, align 8
  %26 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %27, i16 %25) #11, !srcloc !12
  store i8 0, ptr %6, align 1
  br label %28

28:                                               ; preds = %24, %9, %3
  %29 = phi i32 [ %2, %3 ], [ %22, %24 ], [ %22, %9 ]
  %30 = phi ptr [ %1, %3 ], [ %21, %24 ], [ %21, %9 ]
  %31 = icmp sgt i32 %29, 1
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 3
  br label %34

34:                                               ; preds = %34, %32
  %35 = phi ptr [ %30, %32 ], [ %37, %34 ]
  %36 = phi i32 [ %29, %32 ], [ %40, %34 ]
  %37 = getelementptr i16, ptr %35, i32 1
  %38 = load i16, ptr %35, align 2
  %39 = load ptr, ptr %33, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %39, i16 %38) #11, !srcloc !12
  %40 = add nsw i32 %36, -2
  %41 = icmp ugt i32 %36, 3
  br i1 %41, label %34, label %42

42:                                               ; preds = %34, %28
  %43 = phi i32 [ %29, %28 ], [ %40, %34 ]
  %44 = phi ptr [ %30, %28 ], [ %37, %34 ]
  %45 = icmp eq i32 %43, 0
  br i1 %45, label %62, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 47
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %47, ptr align 1 %44, i32 %43, i1 false) #11
  %48 = trunc i32 %43 to i8
  store i8 %48, ptr %6, align 1
  %49 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 7
  %50 = load i32, ptr %49, align 4
  %51 = add i32 %50, %2
  %52 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 3
  %55 = load i32, ptr %54, align 4
  %56 = mul i32 %55, %53
  %57 = icmp eq i32 %51, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %46
  %59 = load i16, ptr %47, align 8
  %60 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 3
  %61 = load ptr, ptr %60, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %61, i16 %59) #11, !srcloc !12
  br label %62

62:                                               ; preds = %58, %46, %42
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_mci_pull_data16(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #0 {
  %4 = icmp sgt i32 %2, 1
  br i1 %4, label %5, label %15

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 3
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi ptr [ %1, %5 ], [ %12, %7 ]
  %9 = phi i32 [ %2, %5 ], [ %13, %7 ]
  %10 = load ptr, ptr %6, align 4
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %10) #11, !srcloc !13
  %12 = getelementptr i16, ptr %8, i32 1
  store i16 %11, ptr %8, align 2
  %13 = add nsw i32 %9, -2
  %14 = icmp ugt i32 %9, 3
  br i1 %14, label %7, label %15

15:                                               ; preds = %7, %3
  %16 = phi i32 [ %2, %3 ], [ %13, %7 ]
  %17 = phi ptr [ %1, %3 ], [ %12, %7 ]
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %21) #11, !srcloc !13
  %23 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 47
  store i16 %22, ptr %23, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %17, ptr align 8 %23, i32 %16, i1 false) #11
  %24 = trunc i32 %16 to i8
  %25 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 45
  store i8 %24, ptr %25, align 8
  %26 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 44
  %27 = load i32, ptr %26, align 4
  %28 = shl nuw i32 1, %27
  %29 = sub i32 %28, %16
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 46
  store i8 %30, ptr %31, align 1
  br label %32

32:                                               ; preds = %19, %15
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_mci_push_data64(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #5 {
  %4 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 46
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %28, label %9, !prof !11

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 44
  %11 = load i32, ptr %10, align 4
  %12 = shl nuw i32 1, %11
  %13 = zext i8 %7 to i32
  %14 = sub i32 %12, %13
  %15 = tail call i32 @llvm.smin.i32(i32 %14, i32 %2) #11
  %16 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 47
  %17 = getelementptr i8, ptr %16, i32 %13
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %17, ptr align 1 %1, i32 %15, i1 false) #11
  %18 = load i8, ptr %6, align 1
  %19 = trunc i32 %15 to i8
  %20 = add i8 %18, %19
  store i8 %20, ptr %6, align 1
  %21 = getelementptr i8, ptr %1, i32 %15
  %22 = sub i32 %2, %15
  %23 = icmp eq i8 %20, 8
  br i1 %23, label %24, label %28

24:                                               ; preds = %9
  %25 = load i64, ptr %16, align 8
  %26 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  store volatile i64 %25, ptr %27, align 8
  store i8 0, ptr %6, align 1
  br label %28

28:                                               ; preds = %24, %9, %3
  %29 = phi i32 [ %2, %3 ], [ %22, %24 ], [ %22, %9 ]
  %30 = phi ptr [ %1, %3 ], [ %21, %24 ], [ %21, %9 ]
  %31 = icmp sgt i32 %29, 7
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 3
  br label %34

34:                                               ; preds = %34, %32
  %35 = phi ptr [ %30, %32 ], [ %37, %34 ]
  %36 = phi i32 [ %29, %32 ], [ %40, %34 ]
  %37 = getelementptr i64, ptr %35, i32 1
  %38 = load i64, ptr %35, align 8
  %39 = load ptr, ptr %33, align 4
  store volatile i64 %38, ptr %39, align 8
  %40 = add nsw i32 %36, -8
  %41 = icmp ugt i32 %36, 15
  br i1 %41, label %34, label %42

42:                                               ; preds = %34, %28
  %43 = phi i32 [ %29, %28 ], [ %40, %34 ]
  %44 = phi ptr [ %30, %28 ], [ %37, %34 ]
  %45 = icmp eq i32 %43, 0
  br i1 %45, label %62, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 47
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %47, ptr align 1 %44, i32 %43, i1 false) #11
  %48 = trunc i32 %43 to i8
  store i8 %48, ptr %6, align 1
  %49 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 7
  %50 = load i32, ptr %49, align 4
  %51 = add i32 %50, %2
  %52 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 3
  %55 = load i32, ptr %54, align 4
  %56 = mul i32 %55, %53
  %57 = icmp eq i32 %51, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %46
  %59 = load i64, ptr %47, align 8
  %60 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 3
  %61 = load ptr, ptr %60, align 4
  store volatile i64 %59, ptr %61, align 8
  br label %62

62:                                               ; preds = %58, %46, %42
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_mci_pull_data64(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #5 {
  %4 = icmp sgt i32 %2, 7
  br i1 %4, label %5, label %15

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 3
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi ptr [ %1, %5 ], [ %12, %7 ]
  %9 = phi i32 [ %2, %5 ], [ %13, %7 ]
  %10 = load ptr, ptr %6, align 4
  %11 = load volatile i64, ptr %10, align 8
  %12 = getelementptr i64, ptr %8, i32 1
  store i64 %11, ptr %8, align 8
  %13 = add nsw i32 %9, -8
  %14 = icmp ugt i32 %9, 15
  br i1 %14, label %7, label %15

15:                                               ; preds = %7, %3
  %16 = phi i32 [ %2, %3 ], [ %13, %7 ]
  %17 = phi ptr [ %1, %3 ], [ %12, %7 ]
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = load volatile i64, ptr %21, align 8
  %23 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 47
  store i64 %22, ptr %23, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %17, ptr align 8 %23, i32 %16, i1 false) #11
  %24 = trunc i32 %16 to i8
  %25 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 45
  store i8 %24, ptr %25, align 8
  %26 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 44
  %27 = load i32, ptr %26, align 4
  %28 = shl nuw i32 1, %27
  %29 = sub i32 %28, %16
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 46
  store i8 %30, ptr %31, align 1
  br label %32

32:                                               ; preds = %19, %15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_mci_push_data32(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 46
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %28, label %9, !prof !11

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 44
  %11 = load i32, ptr %10, align 4
  %12 = shl nuw i32 1, %11
  %13 = zext i8 %7 to i32
  %14 = sub i32 %12, %13
  %15 = tail call i32 @llvm.smin.i32(i32 %14, i32 %2) #11
  %16 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 47
  %17 = getelementptr i8, ptr %16, i32 %13
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %17, ptr align 1 %1, i32 %15, i1 false) #11
  %18 = load i8, ptr %6, align 1
  %19 = trunc i32 %15 to i8
  %20 = add i8 %18, %19
  store i8 %20, ptr %6, align 1
  %21 = getelementptr i8, ptr %1, i32 %15
  %22 = sub i32 %2, %15
  %23 = icmp eq i8 %20, 4
  br i1 %23, label %24, label %28

24:                                               ; preds = %9
  %25 = load i32, ptr %16, align 8
  %26 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #11, !srcloc !10
  store i8 0, ptr %6, align 1
  br label %28

28:                                               ; preds = %24, %9, %3
  %29 = phi i32 [ %2, %3 ], [ %22, %24 ], [ %22, %9 ]
  %30 = phi ptr [ %1, %3 ], [ %21, %24 ], [ %21, %9 ]
  %31 = icmp sgt i32 %29, 3
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 3
  br label %34

34:                                               ; preds = %34, %32
  %35 = phi ptr [ %30, %32 ], [ %37, %34 ]
  %36 = phi i32 [ %29, %32 ], [ %40, %34 ]
  %37 = getelementptr i32, ptr %35, i32 1
  %38 = load i32, ptr %35, align 4
  %39 = load ptr, ptr %33, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %38) #11, !srcloc !10
  %40 = add nsw i32 %36, -4
  %41 = icmp ugt i32 %36, 7
  br i1 %41, label %34, label %42

42:                                               ; preds = %34, %28
  %43 = phi i32 [ %29, %28 ], [ %40, %34 ]
  %44 = phi ptr [ %30, %28 ], [ %37, %34 ]
  %45 = icmp eq i32 %43, 0
  br i1 %45, label %62, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 47
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %47, ptr align 1 %44, i32 %43, i1 false) #11
  %48 = trunc i32 %43 to i8
  store i8 %48, ptr %6, align 1
  %49 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 7
  %50 = load i32, ptr %49, align 4
  %51 = add i32 %50, %2
  %52 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 3
  %55 = load i32, ptr %54, align 4
  %56 = mul i32 %55, %53
  %57 = icmp eq i32 %51, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %46
  %59 = load i32, ptr %47, align 8
  %60 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 3
  %61 = load ptr, ptr %60, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %59) #11, !srcloc !10
  br label %62

62:                                               ; preds = %58, %46, %42
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_mci_pull_data32(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #0 {
  %4 = icmp sgt i32 %2, 3
  br i1 %4, label %5, label %15

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 3
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi ptr [ %1, %5 ], [ %12, %7 ]
  %9 = phi i32 [ %2, %5 ], [ %13, %7 ]
  %10 = load ptr, ptr %6, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #11, !srcloc !9
  %12 = getelementptr i32, ptr %8, i32 1
  store i32 %11, ptr %8, align 4
  %13 = add nsw i32 %9, -4
  %14 = icmp ugt i32 %9, 7
  br i1 %14, label %7, label %15

15:                                               ; preds = %7, %3
  %16 = phi i32 [ %2, %3 ], [ %13, %7 ]
  %17 = phi ptr [ %1, %3 ], [ %12, %7 ]
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #11, !srcloc !9
  %23 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 47
  store i32 %22, ptr %23, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %17, ptr align 8 %23, i32 %16, i1 false) #11
  %24 = trunc i32 %16 to i8
  %25 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 45
  store i8 %24, ptr %25, align 8
  %26 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 44
  %27 = load i32, ptr %26, align 4
  %28 = shl nuw i32 1, %27
  %29 = sub i32 %28, %16
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 46
  store i8 %30, ptr %31, align 1
  br label %32

32:                                               ; preds = %19, %15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @dw_mci_ctrl_reset(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #11, !srcloc !9
  %6 = or i32 %5, %1
  %7 = load ptr, ptr %3, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %6) #11, !srcloc !10
  %8 = tail call i64 @ktime_get() #11
  %9 = add i64 %8, 500000000
  %10 = load ptr, ptr %3, align 8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #11, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  %12 = and i32 %11, %1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %31, label %14

14:                                               ; preds = %17, %2
  %15 = tail call i64 @ktime_get() #11
  %16 = icmp sgt i64 %15, %9
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #11
  %19 = load ptr, ptr %3, align 8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #11, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  %21 = and i32 %20, %1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %31, label %14

23:                                               ; preds = %14
  %24 = load ptr, ptr %3, align 8
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #11, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !15
  %26 = and i32 %25, %1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 36
  %30 = load ptr, ptr %29, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.27, i32 noundef %26) #12
  br label %31

31:                                               ; preds = %28, %23, %17, %2
  %32 = phi i1 [ true, %23 ], [ false, %28 ], [ true, %2 ], [ true, %17 ]
  ret i1 %32
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_mci_tasklet_func(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -192
  tail call void @_raw_spin_lock(ptr noundef %2) #11
  %3 = getelementptr i8, ptr %0, i32 32
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr i8, ptr %0, i32 -112
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %0, i32 -120
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %0, i32 24
  %10 = getelementptr i8, ptr %0, i32 160
  %11 = getelementptr i8, ptr %0, i32 -116
  %12 = getelementptr i8, ptr %0, i32 28
  %13 = getelementptr i8, ptr %0, i32 -16
  %14 = getelementptr i8, ptr %0, i32 -184
  %15 = getelementptr i8, ptr %0, i32 -4
  %16 = getelementptr i8, ptr %0, i32 -108
  %17 = getelementptr i8, ptr %0, i32 -8
  %18 = getelementptr i8, ptr %0, i32 -48
  %19 = getelementptr i8, ptr %0, i32 -32
  %20 = getelementptr i8, ptr %0, i32 -12
  br label %21

21:                                               ; preds = %302, %1
  %22 = phi i32 [ %4, %1 ], [ %303, %302 ]
  switch i32 %22, label %308 [
    i32 5, label %298
    i32 4, label %220
    i32 6, label %23
    i32 1, label %23
    i32 2, label %116
    i32 3, label %162
  ]

23:                                               ; preds = %21, %21
  %24 = load volatile i32, ptr %9, align 4
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %308, label %27

27:                                               ; preds = %23
  %28 = tail call i32 @del_timer_sync(ptr noundef %10) #11
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30, !prof !11

30:                                               ; preds = %27
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 2043, i32 noundef 9, ptr noundef null) #11
  br label %31

31:                                               ; preds = %30, %27
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %9) #11
  %32 = load ptr, ptr %11, align 4
  store ptr null, ptr %11, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %12) #11
  %33 = load i32, ptr %13, align 8
  store i32 0, ptr %13, align 8
  %34 = getelementptr inbounds %struct.mmc_command, ptr %32, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %62, label %38

38:                                               ; preds = %31
  %39 = and i32 %35, 2
  %40 = icmp eq i32 %39, 0
  %41 = load ptr, ptr %14, align 8
  %42 = getelementptr i8, ptr %41, i32 48
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #11
  %44 = getelementptr inbounds %struct.mmc_command, ptr %32, i32 0, i32 2
  br i1 %40, label %58, label %45

45:                                               ; preds = %38
  %46 = getelementptr %struct.mmc_command, ptr %32, i32 0, i32 2, i32 3
  store i32 %43, ptr %46, align 4
  %47 = load ptr, ptr %14, align 8
  %48 = getelementptr i8, ptr %47, i32 52
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #11, !srcloc !9
  %50 = getelementptr %struct.mmc_command, ptr %32, i32 0, i32 2, i32 2
  store i32 %49, ptr %50, align 4
  %51 = load ptr, ptr %14, align 8
  %52 = getelementptr i8, ptr %51, i32 56
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #11, !srcloc !9
  %54 = getelementptr %struct.mmc_command, ptr %32, i32 0, i32 2, i32 1
  store i32 %53, ptr %54, align 4
  %55 = load ptr, ptr %14, align 8
  %56 = getelementptr i8, ptr %55, i32 60
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #11, !srcloc !9
  store i32 %57, ptr %44, align 4
  br label %62

58:                                               ; preds = %38
  store i32 %43, ptr %44, align 4
  %59 = getelementptr %struct.mmc_command, ptr %32, i32 0, i32 2, i32 1
  store i32 0, ptr %59, align 4
  %60 = getelementptr %struct.mmc_command, ptr %32, i32 0, i32 2, i32 2
  store i32 0, ptr %60, align 4
  %61 = getelementptr %struct.mmc_command, ptr %32, i32 0, i32 2, i32 3
  store i32 0, ptr %61, align 4
  br label %62

62:                                               ; preds = %58, %45, %31
  %63 = and i32 %33, 256
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %91

65:                                               ; preds = %62
  %66 = load i32, ptr %34, align 4
  %67 = and i32 %66, 4
  %68 = icmp eq i32 %67, 0
  %69 = and i32 %33, 64
  %70 = icmp eq i32 %69, 0
  %71 = select i1 %68, i1 true, i1 %70
  br i1 %71, label %74, label %72

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.mmc_command, ptr %32, i32 0, i32 5
  store i32 -84, ptr %73, align 4
  br label %87

74:                                               ; preds = %65
  %75 = and i32 %33, 2
  %76 = icmp eq i32 %75, 0
  %77 = getelementptr inbounds %struct.mmc_command, ptr %32, i32 0, i32 5
  br i1 %76, label %79, label %78

78:                                               ; preds = %74
  store i32 -5, ptr %77, align 4
  br label %87

79:                                               ; preds = %74
  store i32 0, ptr %77, align 4
  %80 = load ptr, ptr %8, align 4
  %81 = icmp eq ptr %32, %80
  br i1 %81, label %82, label %111

82:                                               ; preds = %79
  %83 = getelementptr i8, ptr %0, i32 84
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.mmc_request, ptr %8, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  tail call fastcc void @__dw_mci_start_request(ptr noundef %2, ptr noundef %84, ptr noundef %86)
  br label %310

87:                                               ; preds = %78, %72
  %88 = getelementptr inbounds %struct.mmc_command, ptr %32, i32 0, i32 7
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %115, label %96

91:                                               ; preds = %62
  %92 = getelementptr inbounds %struct.mmc_command, ptr %32, i32 0, i32 5
  store i32 -110, ptr %92, align 4
  %93 = getelementptr inbounds %struct.mmc_command, ptr %32, i32 0, i32 7
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %115, label %99

96:                                               ; preds = %87
  %97 = load i32, ptr %15, align 4
  %98 = icmp eq i32 %97, 2
  br i1 %98, label %302, label %99

99:                                               ; preds = %96, %91
  %100 = load i32, ptr %17, align 8
  tail call fastcc void @dw_mci_start_command(ptr noundef %2, ptr noundef %16, i32 noundef %100) #11
  %101 = load i32, ptr %18, align 8
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %99
  %104 = load ptr, ptr %19, align 8
  %105 = getelementptr inbounds %struct.dw_mci_dma_ops, ptr %104, i32 0, i32 3
  %106 = load ptr, ptr %105, align 4
  tail call void %106(ptr noundef %2) #11
  %107 = load ptr, ptr %19, align 8
  %108 = getelementptr inbounds %struct.dw_mci_dma_ops, ptr %107, i32 0, i32 4
  %109 = load ptr, ptr %108, align 4
  tail call void %109(ptr noundef %2) #11
  br label %110

110:                                              ; preds = %103, %99
  tail call void @_set_bit(i32 noundef 1, ptr noundef %9) #11
  br label %302

111:                                              ; preds = %79
  %112 = getelementptr inbounds %struct.mmc_command, ptr %32, i32 0, i32 7
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %116

115:                                              ; preds = %111, %91, %87
  tail call fastcc void @dw_mci_request_end(ptr noundef %2, ptr noundef %8)
  br label %310

116:                                              ; preds = %111, %21
  %117 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %9) #11
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %136, label %119

119:                                              ; preds = %116
  %120 = load i32, ptr %20, align 4
  %121 = and i32 %120, 33280
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = load i32, ptr %17, align 8
  tail call fastcc void @dw_mci_start_command(ptr noundef %2, ptr noundef %16, i32 noundef %124) #11
  br label %125

125:                                              ; preds = %123, %119
  %126 = load i32, ptr %18, align 8
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %135, label %128

128:                                              ; preds = %125
  %129 = load ptr, ptr %19, align 8
  %130 = getelementptr inbounds %struct.dw_mci_dma_ops, ptr %129, i32 0, i32 3
  %131 = load ptr, ptr %130, align 4
  tail call void %131(ptr noundef %2) #11
  %132 = load ptr, ptr %19, align 8
  %133 = getelementptr inbounds %struct.dw_mci_dma_ops, ptr %132, i32 0, i32 4
  %134 = load ptr, ptr %133, align 4
  tail call void %134(ptr noundef %2) #11
  br label %135

135:                                              ; preds = %128, %125
  tail call void @_set_bit(i32 noundef 1, ptr noundef %9) #11
  br label %302

136:                                              ; preds = %116
  %137 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %9) #11
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i32, ptr %15, align 4
  %141 = icmp eq i32 %140, 2
  br i1 %141, label %306, label %308

142:                                              ; preds = %136
  tail call void @_set_bit(i32 noundef 1, ptr noundef %12) #11
  %143 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %9) #11
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %162, label %145

145:                                              ; preds = %142
  %146 = load i32, ptr %20, align 4
  %147 = and i32 %146, 33280
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %145
  %150 = load i32, ptr %17, align 8
  tail call fastcc void @dw_mci_start_command(ptr noundef %2, ptr noundef %16, i32 noundef %150) #11
  br label %151

151:                                              ; preds = %149, %145
  %152 = load i32, ptr %18, align 8
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %161, label %154

154:                                              ; preds = %151
  %155 = load ptr, ptr %19, align 8
  %156 = getelementptr inbounds %struct.dw_mci_dma_ops, ptr %155, i32 0, i32 3
  %157 = load ptr, ptr %156, align 4
  tail call void %157(ptr noundef %2) #11
  %158 = load ptr, ptr %19, align 8
  %159 = getelementptr inbounds %struct.dw_mci_dma_ops, ptr %158, i32 0, i32 4
  %160 = load ptr, ptr %159, align 4
  tail call void %160(ptr noundef %2) #11
  br label %161

161:                                              ; preds = %154, %151
  tail call void @_set_bit(i32 noundef 1, ptr noundef %9) #11
  br label %302

162:                                              ; preds = %142, %21
  %163 = load volatile i32, ptr %9, align 4
  %164 = and i32 %163, 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %162
  %167 = getelementptr i8, ptr %0, i32 180
  %168 = tail call i32 @del_timer_sync(ptr noundef %167) #11
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %174, label %170, !prof !11

170:                                              ; preds = %166
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 2055, i32 noundef 9, ptr noundef null) #11
  br label %174

171:                                              ; preds = %162
  %172 = load i32, ptr %15, align 4
  %173 = icmp eq i32 %172, 2
  br i1 %173, label %306, label %308

174:                                              ; preds = %170, %166
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %9) #11
  store ptr null, ptr %5, align 8
  tail call void @_set_bit(i32 noundef 2, ptr noundef %12) #11
  %175 = load i32, ptr %20, align 4
  %176 = and i32 %175, 46720
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %191, label %178

178:                                              ; preds = %174
  %179 = and i32 %175, 512
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %188

181:                                              ; preds = %178
  %182 = and i32 %175, 32896
  %183 = icmp eq i32 %182, 32768
  br i1 %183, label %184, label %188

184:                                              ; preds = %181
  %185 = load i32, ptr %15, align 4
  switch i32 %185, label %199 [
    i32 1, label %186
    i32 2, label %188
  ]

186:                                              ; preds = %184
  %187 = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 7
  store i32 0, ptr %187, align 4
  br label %188

188:                                              ; preds = %186, %184, %181, %178
  %189 = phi i32 [ -110, %186 ], [ -110, %178 ], [ -84, %181 ], [ -84, %184 ]
  %190 = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 5
  store i32 %189, ptr %190, align 4
  br label %199

191:                                              ; preds = %174
  %192 = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 3
  %193 = load i32, ptr %192, align 4
  %194 = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 2
  %195 = load i32, ptr %194, align 4
  %196 = mul i32 %195, %193
  %197 = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 7
  store i32 %196, ptr %197, align 4
  %198 = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 5
  store i32 0, ptr %198, align 4
  br label %203

199:                                              ; preds = %188, %184
  tail call fastcc void @dw_mci_reset(ptr noundef %2) #11
  %200 = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 5
  %201 = load i32, ptr %200, align 4
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %215

203:                                              ; preds = %199, %191
  %204 = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 8
  %205 = load ptr, ptr %204, align 4
  %206 = icmp eq ptr %205, null
  br i1 %206, label %212, label %207

207:                                              ; preds = %203
  %208 = load ptr, ptr %8, align 4
  %209 = icmp eq ptr %208, null
  br i1 %209, label %213, label %210

210:                                              ; preds = %207
  %211 = getelementptr inbounds %struct.mmc_command, ptr %205, i32 0, i32 5
  store i32 0, ptr %211, align 4
  br label %212

212:                                              ; preds = %210, %203
  tail call fastcc void @dw_mci_request_end(ptr noundef %2, ptr noundef %8)
  br label %310

213:                                              ; preds = %207
  %214 = load i32, ptr %17, align 8
  tail call fastcc void @dw_mci_start_command(ptr noundef %2, ptr noundef %16, i32 noundef %214) #11
  br label %220

215:                                              ; preds = %199
  %216 = load volatile i32, ptr %9, align 4
  %217 = and i32 %216, 1
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %215
  store ptr null, ptr %11, align 4
  tail call fastcc void @dw_mci_request_end(ptr noundef %2, ptr noundef %8)
  br label %310

220:                                              ; preds = %215, %213, %21
  %221 = load volatile i32, ptr %9, align 4
  %222 = and i32 %221, 1
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %308, label %224

224:                                              ; preds = %220
  %225 = tail call i32 @del_timer_sync(ptr noundef %10) #11
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %228, label %227, !prof !11

227:                                              ; preds = %224
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 2043, i32 noundef 9, ptr noundef null) #11
  br label %228

228:                                              ; preds = %227, %224
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %9) #11
  %229 = getelementptr inbounds %struct.mmc_request, ptr %8, i32 0, i32 1
  %230 = load ptr, ptr %229, align 4
  %231 = getelementptr inbounds %struct.mmc_command, ptr %230, i32 0, i32 5
  %232 = load i32, ptr %231, align 4
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %239, label %234

234:                                              ; preds = %228
  %235 = getelementptr inbounds %struct.mmc_request, ptr %8, i32 0, i32 2
  %236 = load ptr, ptr %235, align 4
  %237 = icmp eq ptr %236, null
  br i1 %237, label %239, label %238

238:                                              ; preds = %234
  tail call fastcc void @dw_mci_reset(ptr noundef %2)
  br label %239

239:                                              ; preds = %238, %234, %228
  store ptr null, ptr %11, align 4
  store ptr null, ptr %5, align 8
  %240 = load ptr, ptr %8, align 4
  %241 = icmp eq ptr %240, null
  br i1 %241, label %242, label %296

242:                                              ; preds = %239
  %243 = getelementptr inbounds %struct.mmc_request, ptr %8, i32 0, i32 3
  %244 = load ptr, ptr %243, align 4
  %245 = icmp eq ptr %244, null
  br i1 %245, label %296, label %246

246:                                              ; preds = %242
  %247 = load i32, ptr %13, align 8
  store i32 0, ptr %13, align 8
  %248 = getelementptr inbounds %struct.mmc_command, ptr %244, i32 0, i32 3
  %249 = load i32, ptr %248, align 4
  %250 = and i32 %249, 1
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %276, label %252

252:                                              ; preds = %246
  %253 = and i32 %249, 2
  %254 = icmp eq i32 %253, 0
  %255 = load ptr, ptr %14, align 8
  %256 = getelementptr i8, ptr %255, i32 48
  %257 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %256) #11
  %258 = getelementptr inbounds %struct.mmc_command, ptr %244, i32 0, i32 2
  br i1 %254, label %272, label %259

259:                                              ; preds = %252
  %260 = getelementptr %struct.mmc_command, ptr %244, i32 0, i32 2, i32 3
  store i32 %257, ptr %260, align 4
  %261 = load ptr, ptr %14, align 8
  %262 = getelementptr i8, ptr %261, i32 52
  %263 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %262) #11, !srcloc !9
  %264 = getelementptr %struct.mmc_command, ptr %244, i32 0, i32 2, i32 2
  store i32 %263, ptr %264, align 4
  %265 = load ptr, ptr %14, align 8
  %266 = getelementptr i8, ptr %265, i32 56
  %267 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %266) #11, !srcloc !9
  %268 = getelementptr %struct.mmc_command, ptr %244, i32 0, i32 2, i32 1
  store i32 %267, ptr %268, align 4
  %269 = load ptr, ptr %14, align 8
  %270 = getelementptr i8, ptr %269, i32 60
  %271 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %270) #11, !srcloc !9
  store i32 %271, ptr %258, align 4
  br label %276

272:                                              ; preds = %252
  store i32 %257, ptr %258, align 4
  %273 = getelementptr %struct.mmc_command, ptr %244, i32 0, i32 2, i32 1
  store i32 0, ptr %273, align 4
  %274 = getelementptr %struct.mmc_command, ptr %244, i32 0, i32 2, i32 2
  store i32 0, ptr %274, align 4
  %275 = getelementptr %struct.mmc_command, ptr %244, i32 0, i32 2, i32 3
  store i32 0, ptr %275, align 4
  br label %276

276:                                              ; preds = %272, %259, %246
  %277 = and i32 %247, 256
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %281, label %279

279:                                              ; preds = %276
  %280 = getelementptr inbounds %struct.mmc_command, ptr %244, i32 0, i32 5
  store i32 -110, ptr %280, align 4
  br label %297

281:                                              ; preds = %276
  %282 = load i32, ptr %248, align 4
  %283 = and i32 %282, 4
  %284 = icmp eq i32 %283, 0
  %285 = and i32 %247, 64
  %286 = icmp eq i32 %285, 0
  %287 = select i1 %284, i1 true, i1 %286
  br i1 %287, label %290, label %288

288:                                              ; preds = %281
  %289 = getelementptr inbounds %struct.mmc_command, ptr %244, i32 0, i32 5
  store i32 -84, ptr %289, align 4
  br label %297

290:                                              ; preds = %281
  %291 = and i32 %247, 2
  %292 = icmp eq i32 %291, 0
  %293 = getelementptr inbounds %struct.mmc_command, ptr %244, i32 0, i32 5
  br i1 %292, label %295, label %294

294:                                              ; preds = %290
  store i32 -5, ptr %293, align 4
  br label %297

295:                                              ; preds = %290
  store i32 0, ptr %293, align 4
  br label %297

296:                                              ; preds = %242, %239
  store i32 0, ptr %13, align 8
  br label %297

297:                                              ; preds = %296, %295, %294, %288, %279
  tail call fastcc void @dw_mci_request_end(ptr noundef %2, ptr noundef %8)
  br label %310

298:                                              ; preds = %21
  %299 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %9) #11
  %300 = icmp eq i32 %299, 0
  %301 = select i1 %300, i32 5, i32 3
  br label %302

302:                                              ; preds = %298, %161, %135, %110, %96
  %303 = phi i32 [ 5, %135 ], [ 5, %161 ], [ 4, %110 ], [ 2, %96 ], [ %301, %298 ]
  %304 = phi i32 [ 2, %135 ], [ 2, %161 ], [ %22, %110 ], [ %22, %96 ], [ 5, %298 ]
  %305 = icmp eq i32 %303, %304
  br i1 %305, label %308, label %21

306:                                              ; preds = %171, %139
  %307 = phi i32 [ 2, %139 ], [ 3, %171 ]
  tail call fastcc void @dw_mci_set_drto(ptr noundef %2)
  br label %308

308:                                              ; preds = %306, %302, %220, %171, %139, %23, %21
  %309 = phi i32 [ 4, %220 ], [ 2, %139 ], [ 3, %171 ], [ %307, %306 ], [ %22, %21 ], [ %22, %23 ], [ %303, %302 ]
  store i32 %309, ptr %3, align 8
  br label %310

310:                                              ; preds = %308, %297, %219, %212, %115, %82
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  %311 = load i16, ptr %2, align 4
  %312 = add i16 %311, 1
  store i16 %312, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mci_interrupt(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 42
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 64
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #11, !srcloc !9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %267, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 30
  %12 = load i32, ptr %11, align 8
  %13 = icmp ne i32 %12, 6
  %14 = and i32 %8, 1024
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %40, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %5, align 8
  %19 = getelementptr i8, ptr %18, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 1024) #11, !srcloc !10
  %20 = and i32 %8, -1025
  %21 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %21) #11
  %22 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 56
  %23 = tail call i32 @del_timer(ptr noundef %22) #11
  %24 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 23
  %25 = load i32, ptr %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  store i32 %20, ptr %24, align 8
  br label %28

28:                                               ; preds = %27, %17
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !20
  %29 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 28
  tail call void @_set_bit(i32 noundef 0, ptr noundef %29) #11
  %30 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 27, i32 1
  %31 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %30) #11
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 27
  tail call void @__tasklet_schedule(ptr noundef %34) #11
  br label %35

35:                                               ; preds = %33, %28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  %36 = load i16, ptr %21, align 4
  %37 = add i16 %36, 1
  store i16 %37, ptr %21, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !19
  %38 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 55
  %39 = tail call i32 @del_timer(ptr noundef %38) #11
  br label %40

40:                                               ; preds = %35, %10
  %41 = phi i32 [ %20, %35 ], [ %8, %10 ]
  %42 = and i32 %41, 4418
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %45) #11
  %46 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 56
  %47 = tail call i32 @del_timer(ptr noundef %46) #11
  %48 = load ptr, ptr %5, align 8
  %49 = getelementptr i8, ptr %48, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 4418) #11, !srcloc !10
  %50 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 23
  store i32 %41, ptr %50, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !21
  %51 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 28
  tail call void @_set_bit(i32 noundef 0, ptr noundef %51) #11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  %52 = load i16, ptr %45, align 4
  %53 = add i16 %52, 1
  store i16 %53, ptr %45, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !19
  br label %54

54:                                               ; preds = %44, %40
  %55 = and i32 %41, 46720
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %84, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %58) #11
  %59 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 50
  %60 = load i32, ptr %59, align 8
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 57
  %65 = tail call i32 @del_timer(ptr noundef %64) #11
  br label %66

66:                                               ; preds = %63, %57
  %67 = load ptr, ptr %5, align 8
  %68 = getelementptr i8, ptr %67, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 46720) #11, !srcloc !10
  %69 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 24
  store i32 %41, ptr %69, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !22
  %70 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 28
  tail call void @_set_bit(i32 noundef 3, ptr noundef %70) #11
  %71 = load i32, ptr %59, align 8
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %66
  tail call void @_set_bit(i32 noundef 2, ptr noundef %70) #11
  br label %75

75:                                               ; preds = %74, %66
  %76 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 27, i32 1
  %77 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %76) #11
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 27
  tail call void @__tasklet_schedule(ptr noundef %80) #11
  br label %81

81:                                               ; preds = %79, %75
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  %82 = load i16, ptr %58, align 4
  %83 = add i16 %82, 1
  store i16 %83, ptr %58, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !19
  br label %84

84:                                               ; preds = %81, %54
  %85 = and i32 %41, 8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %116, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %88) #11
  %89 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 57
  %90 = tail call i32 @del_timer(ptr noundef %89) #11
  %91 = load ptr, ptr %5, align 8
  %92 = getelementptr i8, ptr %91, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 8) #11, !srcloc !10
  %93 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 24
  %94 = load i32, ptr %93, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %87
  store i32 %41, ptr %93, align 4
  br label %97

97:                                               ; preds = %96, %87
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !23
  %98 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 26
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, 2
  br i1 %100, label %101, label %106

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 6
  %103 = load ptr, ptr %102, align 8
  %104 = icmp eq ptr %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %101
  tail call fastcc void @dw_mci_read_data_pio(ptr noundef %1, i1 noundef zeroext true)
  br label %106

106:                                              ; preds = %105, %101, %97
  %107 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 28
  tail call void @_set_bit(i32 noundef 2, ptr noundef %107) #11
  %108 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 27, i32 1
  %109 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %108) #11
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 27
  tail call void @__tasklet_schedule(ptr noundef %112) #11
  br label %113

113:                                              ; preds = %111, %106
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  %114 = load i16, ptr %88, align 4
  %115 = add i16 %114, 1
  store i16 %115, ptr %88, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !19
  br label %116

116:                                              ; preds = %113, %84
  %117 = and i32 %41, 32
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %130, label %119

119:                                              ; preds = %116
  %120 = load ptr, ptr %5, align 8
  %121 = getelementptr i8, ptr %120, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 32) #11, !srcloc !10
  %122 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 26
  %123 = load i32, ptr %122, align 4
  %124 = icmp eq i32 %123, 2
  br i1 %124, label %125, label %130

125:                                              ; preds = %119
  %126 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 6
  %127 = load ptr, ptr %126, align 8
  %128 = icmp eq ptr %127, null
  br i1 %128, label %130, label %129

129:                                              ; preds = %125
  tail call fastcc void @dw_mci_read_data_pio(ptr noundef %1, i1 noundef zeroext false)
  br label %130

130:                                              ; preds = %129, %125, %119, %116
  %131 = and i32 %41, 16
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %205, label %133

133:                                              ; preds = %130
  %134 = load ptr, ptr %5, align 8
  %135 = getelementptr i8, ptr %134, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 16) #11, !srcloc !10
  %136 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 26
  %137 = load i32, ptr %136, align 4
  %138 = icmp eq i32 %137, 1
  br i1 %138, label %139, label %205

139:                                              ; preds = %133
  %140 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 6
  %141 = load ptr, ptr %140, align 8
  %142 = icmp eq ptr %141, null
  br i1 %142, label %205, label %143

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 7
  %145 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 10
  %146 = load ptr, ptr %145, align 8
  %147 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 44
  %148 = load i32, ptr %147, align 4
  %149 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 43
  %150 = load i32, ptr %149, align 8
  %151 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 7, i32 4
  %152 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 7, i32 1
  %153 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 7, i32 2
  %154 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 48
  %155 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 46
  %156 = getelementptr inbounds %struct.mmc_data, ptr %146, i32 0, i32 7
  %157 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 7, i32 3
  br label %158

158:                                              ; preds = %187, %143
  %159 = tail call zeroext i1 @sg_miter_next(ptr noundef %144) #11
  br i1 %159, label %160, label %203

160:                                              ; preds = %158
  %161 = load ptr, ptr %151, align 4
  store ptr %161, ptr %140, align 8
  %162 = load ptr, ptr %152, align 4
  %163 = load i32, ptr %153, align 4
  br label %164

164:                                              ; preds = %179, %160
  %165 = phi i32 [ %163, %160 ], [ %185, %179 ]
  %166 = phi i32 [ 0, %160 ], [ %184, %179 ]
  %167 = load ptr, ptr %5, align 8
  %168 = getelementptr i8, ptr %167, i32 72
  %169 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %168) #11, !srcloc !9
  %170 = lshr i32 %169, 17
  %171 = and i32 %170, 8191
  %172 = sub i32 %150, %171
  %173 = shl i32 %172, %148
  %174 = load i8, ptr %155, align 1
  %175 = zext i8 %174 to i32
  %176 = sub i32 %173, %175
  %177 = tail call i32 @llvm.umin.i32(i32 %165, i32 %176) #11
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %187, label %179

179:                                              ; preds = %164
  %180 = load ptr, ptr %154, align 8
  %181 = getelementptr i8, ptr %162, i32 %166
  tail call void %180(ptr noundef %1, ptr noundef %181, i32 noundef %177) #11
  %182 = load i32, ptr %156, align 4
  %183 = add i32 %182, %177
  store i32 %183, ptr %156, align 4
  %184 = add i32 %177, %166
  %185 = sub i32 %165, %177
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %164

187:                                              ; preds = %179, %164
  %188 = phi i32 [ 0, %179 ], [ %165, %164 ]
  %189 = phi i32 [ %184, %179 ], [ %166, %164 ]
  store i32 %189, ptr %157, align 4
  %190 = load ptr, ptr %5, align 8
  %191 = getelementptr i8, ptr %190, i32 64
  %192 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %191) #11, !srcloc !9
  %193 = load ptr, ptr %5, align 8
  %194 = getelementptr i8, ptr %193, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %194, i32 16) #11, !srcloc !10
  %195 = and i32 %192, 16
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %158

197:                                              ; preds = %187
  %198 = icmp eq i32 %188, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %197
  %200 = tail call zeroext i1 @sg_miter_next(ptr noundef %144) #11
  br i1 %200, label %201, label %203

201:                                              ; preds = %199
  store i32 0, ptr %157, align 4
  br label %202

202:                                              ; preds = %201, %197
  tail call void @sg_miter_stop(ptr noundef %144) #11
  br label %205

203:                                              ; preds = %199, %158
  tail call void @sg_miter_stop(ptr noundef %144) #11
  store ptr null, ptr %140, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !24
  %204 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 28
  tail call void @_set_bit(i32 noundef 1, ptr noundef %204) #11
  br label %205

205:                                              ; preds = %203, %202, %139, %133, %130
  %206 = and i32 %41, 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %228, label %208

208:                                              ; preds = %205
  %209 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %209) #11
  %210 = load ptr, ptr %5, align 8
  %211 = getelementptr i8, ptr %210, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %211, i32 4) #11, !srcloc !10
  %212 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 56
  %213 = tail call i32 @del_timer(ptr noundef %212) #11
  %214 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 23
  %215 = load i32, ptr %214, align 8
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %208
  store i32 %41, ptr %214, align 8
  br label %218

218:                                              ; preds = %217, %208
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !20
  %219 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 28
  tail call void @_set_bit(i32 noundef 0, ptr noundef %219) #11
  %220 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 27, i32 1
  %221 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %220) #11
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %218
  %224 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 27
  tail call void @__tasklet_schedule(ptr noundef %224) #11
  br label %225

225:                                              ; preds = %223, %218
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  %226 = load i16, ptr %209, align 4
  %227 = add i16 %226, 1
  store i16 %227, ptr %209, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !19
  br label %228

228:                                              ; preds = %225, %205
  %229 = and i32 %41, 1
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %241, label %231

231:                                              ; preds = %228
  %232 = load ptr, ptr %5, align 8
  %233 = getelementptr i8, ptr %232, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %233, i32 1) #11, !srcloc !10
  %234 = load ptr, ptr %3, align 4
  %235 = load ptr, ptr %234, align 4
  %236 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 37
  %237 = load ptr, ptr %236, align 8
  %238 = getelementptr inbounds %struct.dw_mci_board, ptr %237, i32 0, i32 5
  %239 = load i32, ptr %238, align 4
  %240 = tail call i32 @__msecs_to_jiffies(i32 noundef %239) #11
  tail call void @mmc_detect_change(ptr noundef %235, i32 noundef %240) #11
  br label %241

241:                                              ; preds = %231, %228
  %242 = getelementptr inbounds %struct.dw_mci_slot, ptr %4, i32 0, i32 9
  %243 = load i32, ptr %242, align 4
  %244 = add i32 %243, 16
  %245 = shl nuw i32 1, %244
  %246 = and i32 %245, %41
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %267, label %248

248:                                              ; preds = %241
  %249 = load ptr, ptr %5, align 8
  %250 = getelementptr i8, ptr %249, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %250, i32 %245) #11, !srcloc !10
  %251 = getelementptr inbounds %struct.dw_mci_slot, ptr %4, i32 0, i32 1
  %252 = load ptr, ptr %251, align 4
  %253 = getelementptr inbounds %struct.dw_mci, ptr %252, i32 0, i32 1
  %254 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %253) #11
  %255 = getelementptr inbounds %struct.dw_mci, ptr %252, i32 0, i32 2
  %256 = load ptr, ptr %255, align 8
  %257 = getelementptr i8, ptr %256, i32 36
  %258 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %257) #11, !srcloc !9
  %259 = load i32, ptr %242, align 4
  %260 = add i32 %259, 16
  %261 = shl nuw i32 1, %260
  %262 = xor i32 %261, -1
  %263 = and i32 %258, %262
  %264 = load ptr, ptr %255, align 8
  %265 = getelementptr i8, ptr %264, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %265, i32 %263) #11, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %253, i32 noundef %254) #11
  %266 = load ptr, ptr %4, align 4
  tail call void @sdio_signal_irq(ptr noundef %266) #11
  br label %267

267:                                              ; preds = %248, %241, %2
  %268 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 14
  %269 = load i32, ptr %268, align 4
  %270 = icmp eq i32 %269, 1
  br i1 %270, label %271, label %309

271:                                              ; preds = %267
  %272 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 16
  %273 = load i32, ptr %272, align 4
  %274 = icmp eq i32 %273, 1
  %275 = load ptr, ptr %5, align 8
  br i1 %274, label %276, label %290

276:                                              ; preds = %271
  %277 = getelementptr i8, ptr %275, i32 144
  %278 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %277) #11, !srcloc !9
  %279 = and i32 %278, 3
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %309, label %281

281:                                              ; preds = %276
  %282 = load ptr, ptr %5, align 8
  %283 = getelementptr i8, ptr %282, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %283, i32 3) #11, !srcloc !10
  %284 = load ptr, ptr %5, align 8
  %285 = getelementptr i8, ptr %284, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %285, i32 256) #11, !srcloc !10
  %286 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 28
  %287 = load volatile i32, ptr %286, align 4
  %288 = and i32 %287, 8
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %304, label %309

290:                                              ; preds = %271
  %291 = getelementptr i8, ptr %275, i32 140
  %292 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %291) #11, !srcloc !9
  %293 = and i32 %292, 3
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %309, label %295

295:                                              ; preds = %290
  %296 = load ptr, ptr %5, align 8
  %297 = getelementptr i8, ptr %296, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %297, i32 3) #11, !srcloc !10
  %298 = load ptr, ptr %5, align 8
  %299 = getelementptr i8, ptr %298, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %299, i32 256) #11, !srcloc !10
  %300 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 28
  %301 = load volatile i32, ptr %300, align 4
  %302 = and i32 %301, 8
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %309

304:                                              ; preds = %295, %281
  %305 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 19
  %306 = load ptr, ptr %305, align 8
  %307 = getelementptr inbounds %struct.dw_mci_dma_ops, ptr %306, i32 0, i32 2
  %308 = load ptr, ptr %307, align 4
  tail call void %308(ptr noundef %1) #11
  br label %309

309:                                              ; preds = %304, %295, %290, %281, %276, %267
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dw_mci_init_slot(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 36
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @mmc_alloc_host(i32 noundef 44, ptr noundef %3) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %138, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 68
  %8 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 1, i32 1, i32 0, i32 6
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 54
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 1, i32 1, i32 0, i32 7
  store i32 %10, ptr %11, align 4
  store ptr %4, ptr %7, align 4
  %12 = getelementptr inbounds %struct.dw_mci_slot, ptr %7, i32 0, i32 1
  store ptr %0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 42
  store ptr %7, ptr %13, align 4
  %14 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 3
  store ptr @dw_mci_ops, ptr %14, align 4
  %15 = tail call i32 @mmc_regulator_get_supply(ptr noundef nonnull %4) #11
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %136

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 8
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 3145728, ptr %18, align 8
  br label %22

22:                                               ; preds = %21, %17
  %23 = tail call i32 @mmc_of_parse(ptr noundef nonnull %4) #11
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %136

25:                                               ; preds = %22
  %26 = load ptr, ptr %12, align 4
  %27 = getelementptr inbounds %struct.dw_mci, ptr %26, i32 0, i32 38
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %7, align 4
  %30 = getelementptr inbounds %struct.dw_mci, ptr %26, i32 0, i32 37
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.dw_mci_board, ptr %31, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.mmc_host, ptr %29, i32 0, i32 16
  store i32 %33, ptr %36, align 8
  %37 = load ptr, ptr %30, align 8
  br label %38

38:                                               ; preds = %35, %25
  %39 = phi ptr [ %37, %35 ], [ %31, %25 ]
  %40 = getelementptr inbounds %struct.dw_mci_board, ptr %39, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.mmc_host, ptr %29, i32 0, i32 19
  store i32 %41, ptr %44, align 4
  br label %45

45:                                               ; preds = %43, %38
  %46 = icmp eq ptr %28, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.dw_mci_drv_data, ptr %28, i32 0, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.mmc_host, ptr %29, i32 0, i32 16
  %51 = load i32, ptr %50, align 8
  %52 = or i32 %51, %49
  store i32 %52, ptr %50, align 8
  br label %53

53:                                               ; preds = %47, %45
  %54 = getelementptr inbounds %struct.dw_mci, ptr %26, i32 0, i32 36
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.device, ptr %55, i32 0, i32 25
  %57 = load ptr, ptr %56, align 8
  %58 = icmp eq ptr %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %53
  %60 = tail call i32 @of_alias_get_id(ptr noundef nonnull %57, ptr noundef nonnull @.str.47) #11
  %61 = tail call i32 @llvm.smax.i32(i32 %60, i32 0) #11
  br label %65

62:                                               ; preds = %53
  %63 = getelementptr i8, ptr %55, i32 -12
  %64 = load i32, ptr %63, align 4
  br label %65

65:                                               ; preds = %62, %59
  %66 = phi i32 [ %61, %59 ], [ %64, %62 ]
  br i1 %46, label %80, label %67

67:                                               ; preds = %65
  %68 = load ptr, ptr %28, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %80, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.dw_mci_drv_data, ptr %28, i32 0, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = icmp ult i32 %66, %72
  br i1 %73, label %74, label %102

74:                                               ; preds = %70
  %75 = getelementptr i32, ptr %68, i32 %66
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr inbounds %struct.mmc_host, ptr %29, i32 0, i32 16
  %78 = load i32, ptr %77, align 8
  %79 = or i32 %78, %76
  store i32 %79, ptr %77, align 8
  br label %80

80:                                               ; preds = %74, %67, %65
  %81 = load ptr, ptr %30, align 8
  %82 = getelementptr inbounds %struct.dw_mci_board, ptr %81, i32 0, i32 2
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.mmc_host, ptr %29, i32 0, i32 17
  store i32 %83, ptr %86, align 4
  br label %87

87:                                               ; preds = %85, %80
  %88 = getelementptr inbounds %struct.mmc_host, ptr %29, i32 0, i32 5
  store i32 100000, ptr %88, align 4
  %89 = getelementptr inbounds %struct.mmc_host, ptr %29, i32 0, i32 6
  %90 = load i32, ptr %89, align 16
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  store i32 200000000, ptr %89, align 16
  br label %93

93:                                               ; preds = %92, %87
  %94 = getelementptr inbounds %struct.mmc_host, ptr %29, i32 0, i32 16
  %95 = load i32, ptr %94, align 8
  %96 = and i32 %95, 8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.mmc_host, ptr %29, i32 0, i32 17
  %100 = load i32, ptr %99, align 4
  %101 = or i32 %100, 131072
  store i32 %101, ptr %99, align 4
  br label %104

102:                                              ; preds = %70
  %103 = load ptr, ptr %54, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.48, i32 noundef %66) #12
  br label %136

104:                                              ; preds = %98, %93
  %105 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 14
  %106 = load i32, ptr %105, align 4
  switch i32 %106, label %125 [
    i32 1, label %107
    i32 2, label %119
  ]

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 20
  %109 = load i32, ptr %108, align 4
  %110 = trunc i32 %109 to i16
  %111 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 21
  store i16 %110, ptr %111, align 4
  %112 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 24
  store i32 65535, ptr %112, align 4
  %113 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 20
  store i32 4096, ptr %113, align 8
  %114 = load i32, ptr %108, align 4
  %115 = shl i32 %114, 12
  %116 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 23
  store i32 %115, ptr %116, align 16
  %117 = lshr exact i32 %115, 9
  %118 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 25
  store i32 %117, ptr %118, align 8
  br label %131

119:                                              ; preds = %104
  %120 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 21
  store i16 64, ptr %120, align 4
  %121 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 24
  store i32 65535, ptr %121, align 4
  %122 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 25
  store i32 65535, ptr %122, align 8
  %123 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 23
  store i32 -131071, ptr %123, align 16
  %124 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 20
  store i32 -131071, ptr %124, align 8
  br label %131

125:                                              ; preds = %104
  %126 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 21
  store i16 64, ptr %126, align 4
  %127 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 24
  store i32 65535, ptr %127, align 4
  %128 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 25
  store i32 512, ptr %128, align 8
  %129 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 23
  store i32 33553920, ptr %129, align 16
  %130 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 20
  store i32 33553920, ptr %130, align 8
  br label %131

131:                                              ; preds = %125, %119, %107
  %132 = tail call i32 @dw_mci_get_cd(ptr noundef nonnull %4)
  %133 = tail call i32 @mmc_add_host(ptr noundef nonnull %4) #11
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  tail call fastcc void @dw_mci_init_debugfs(ptr noundef %7)
  br label %138

136:                                              ; preds = %131, %102, %22, %6
  %137 = phi i32 [ %15, %6 ], [ %23, %22 ], [ -22, %102 ], [ %133, %131 ]
  tail call void @mmc_free_host(ptr noundef nonnull %4) #11
  br label %138

138:                                              ; preds = %136, %135, %1
  %139 = phi i32 [ %137, %136 ], [ 0, %135 ], [ -12, %1 ]
  ret i32 %139
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dw_mci_enable_cd(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 42
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 16
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = tail call i32 @mmc_gpio_get_cd(ptr noundef %4) #11
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 1
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #11
  %15 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr i8, ptr %16, i32 36
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #11, !srcloc !9
  %19 = or i32 %18, 1
  %20 = load ptr, ptr %15, align 8
  %21 = getelementptr i8, ptr %20, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #11, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %14) #11
  br label %22

22:                                               ; preds = %12, %9, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dw_mci_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 42
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 4
  tail call void @mmc_remove_host(ptr noundef %6) #11
  %7 = getelementptr inbounds %struct.dw_mci_slot, ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dw_mci, ptr %8, i32 0, i32 42
  store ptr null, ptr %9, align 4
  %10 = load ptr, ptr %3, align 4
  tail call void @mmc_free_host(ptr noundef %10) #11
  br label %11

11:                                               ; preds = %5, %1
  %12 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr i8, ptr %13, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 -1) #11, !srcloc !10
  %15 = load ptr, ptr %12, align 8
  %16 = getelementptr i8, ptr %15, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 0) #11, !srcloc !10
  %17 = load ptr, ptr %12, align 8
  %18 = getelementptr i8, ptr %17, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 0) #11, !srcloc !10
  %19 = load ptr, ptr %12, align 8
  %20 = getelementptr i8, ptr %19, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 0) #11, !srcloc !10
  %21 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 14
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %11
  %25 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 19
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.dw_mci_dma_ops, ptr %26, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  tail call void %28(ptr noundef %0) #11
  br label %31

31:                                               ; preds = %30, %24, %11
  %32 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 37
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.dw_mci_board, ptr %33, i32 0, i32 6
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 @reset_control_assert(ptr noundef %35) #11
  %37 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 41
  %38 = load ptr, ptr %37, align 8
  tail call void @clk_disable(ptr noundef %38) #11
  tail call void @clk_unprepare(ptr noundef %38) #11
  %39 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 40
  %40 = load ptr, ptr %39, align 4
  tail call void @clk_disable(ptr noundef %40) #11
  tail call void @clk_unprepare(ptr noundef %40) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dw_mci_runtime_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dw_mci, ptr %3, i32 0, i32 14
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.dw_mci, ptr %3, i32 0, i32 19
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.dw_mci_dma_ops, ptr %9, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  tail call void %11(ptr noundef %3) #11
  br label %14

14:                                               ; preds = %13, %7, %1
  %15 = getelementptr inbounds %struct.dw_mci, ptr %3, i32 0, i32 41
  %16 = load ptr, ptr %15, align 8
  tail call void @clk_disable(ptr noundef %16) #11
  tail call void @clk_unprepare(ptr noundef %16) #11
  %17 = getelementptr inbounds %struct.dw_mci, ptr %3, i32 0, i32 42
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %33, label %20

20:                                               ; preds = %14
  %21 = load ptr, ptr %18, align 4
  %22 = tail call zeroext i1 @mmc_can_gpio_cd(ptr noundef %21) #11
  br i1 %22, label %30, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %17, align 4
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.mmc_host, ptr %25, i32 0, i32 16
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 256
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %23, %20
  %31 = getelementptr inbounds %struct.dw_mci, ptr %3, i32 0, i32 40
  %32 = load ptr, ptr %31, align 4
  tail call void @clk_disable(ptr noundef %32) #11
  tail call void @clk_unprepare(ptr noundef %32) #11
  br label %33

33:                                               ; preds = %30, %23, %14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mmc_can_gpio_cd(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dw_mci_runtime_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dw_mci, ptr %3, i32 0, i32 42
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %5, align 4
  %9 = tail call zeroext i1 @mmc_can_gpio_cd(ptr noundef %8) #11
  br i1 %9, label %17, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %4, align 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.mmc_host, ptr %12, i32 0, i32 16
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 256
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %10, %7
  %18 = getelementptr inbounds %struct.dw_mci, ptr %3, i32 0, i32 40
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @clk_prepare(ptr noundef %19) #11
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %135

22:                                               ; preds = %17
  %23 = tail call i32 @clk_enable(ptr noundef %19) #11
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void @clk_unprepare(ptr noundef %19) #11
  br label %135

26:                                               ; preds = %22, %10, %1
  %27 = getelementptr inbounds %struct.dw_mci, ptr %3, i32 0, i32 41
  %28 = load ptr, ptr %27, align 8
  %29 = tail call i32 @clk_prepare(ptr noundef %28) #11
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %118

31:                                               ; preds = %26
  %32 = tail call i32 @clk_enable(ptr noundef %28) #11
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %115

34:                                               ; preds = %31
  %35 = tail call fastcc zeroext i1 @dw_mci_ctrl_reset(ptr noundef %3, i32 noundef 7)
  br i1 %35, label %38, label %36

36:                                               ; preds = %34
  %37 = load ptr, ptr %27, align 8
  tail call void @clk_disable(ptr noundef %37) #11
  br label %115

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.dw_mci, ptr %3, i32 0, i32 14
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.dw_mci, ptr %3, i32 0, i32 19
  %44 = load ptr, ptr %43, align 8
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %42
  %48 = tail call i32 %45(ptr noundef %3) #11
  br label %49

49:                                               ; preds = %47, %42, %38
  %50 = getelementptr inbounds %struct.dw_mci, ptr %3, i32 0, i32 34
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.dw_mci, ptr %3, i32 0, i32 2
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr i8, ptr %53, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %51) #11, !srcloc !10
  %55 = getelementptr inbounds %struct.dw_mci, ptr %3, i32 0, i32 12
  store i32 0, ptr %55, align 4
  %56 = load ptr, ptr %52, align 8
  %57 = getelementptr i8, ptr %56, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 -1) #11, !srcloc !10
  %58 = load ptr, ptr %52, align 8
  %59 = getelementptr i8, ptr %58, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 -1) #11, !srcloc !10
  %60 = load ptr, ptr %52, align 8
  %61 = getelementptr i8, ptr %60, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 47102) #11, !srcloc !10
  %62 = load ptr, ptr %52, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 16) #11, !srcloc !10
  %63 = load ptr, ptr %4, align 4
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.mmc_host, ptr %64, i32 0, i32 51
  %66 = load i32, ptr %65, align 32
  %67 = and i32 %66, 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %49
  %70 = getelementptr inbounds %struct.mmc_host, ptr %64, i32 0, i32 28
  tail call void @dw_mci_set_ios(ptr noundef %64, ptr noundef %70)
  %71 = load ptr, ptr %4, align 4
  br label %72

72:                                               ; preds = %69, %49
  %73 = phi ptr [ %71, %69 ], [ %63, %49 ]
  tail call fastcc void @dw_mci_setup_bus(ptr noundef %73, i1 noundef zeroext true)
  %74 = load ptr, ptr %4, align 4
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.mmc_host, ptr %75, i32 0, i32 46
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %97, label %79

79:                                               ; preds = %72
  %80 = getelementptr inbounds %struct.dw_mci_slot, ptr %74, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.dw_mci, ptr %81, i32 0, i32 1
  %83 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %82) #11
  %84 = getelementptr inbounds %struct.dw_mci, ptr %81, i32 0, i32 2
  %85 = load ptr, ptr %84, align 8
  %86 = getelementptr i8, ptr %85, i32 36
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #11, !srcloc !9
  %88 = getelementptr inbounds %struct.dw_mci_slot, ptr %74, i32 0, i32 9
  %89 = load i32, ptr %88, align 4
  %90 = add i32 %89, 16
  %91 = shl nuw i32 1, %90
  %92 = or i32 %91, %87
  %93 = load ptr, ptr %84, align 8
  %94 = getelementptr i8, ptr %93, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %92) #11, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %82, i32 noundef %83) #11
  %95 = load ptr, ptr %4, align 4
  %96 = load ptr, ptr %95, align 4
  br label %97

97:                                               ; preds = %79, %72
  %98 = phi ptr [ %96, %79 ], [ %75, %72 ]
  %99 = getelementptr inbounds %struct.mmc_host, ptr %98, i32 0, i32 16
  %100 = load i32, ptr %99, align 8
  %101 = and i32 %100, 32
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %135

103:                                              ; preds = %97
  %104 = tail call i32 @mmc_gpio_get_cd(ptr noundef %98) #11
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %135

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.dw_mci, ptr %3, i32 0, i32 1
  %108 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %107) #11
  %109 = load ptr, ptr %52, align 8
  %110 = getelementptr i8, ptr %109, i32 36
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %110) #11, !srcloc !9
  %112 = or i32 %111, 1
  %113 = load ptr, ptr %52, align 8
  %114 = getelementptr i8, ptr %113, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 %112) #11, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %107, i32 noundef %108) #11
  br label %135

115:                                              ; preds = %36, %31
  %116 = phi ptr [ %37, %36 ], [ %28, %31 ]
  %117 = phi i32 [ -19, %36 ], [ %32, %31 ]
  tail call void @clk_unprepare(ptr noundef %116) #11
  br label %118

118:                                              ; preds = %115, %26
  %119 = phi i32 [ %29, %26 ], [ %117, %115 ]
  %120 = load ptr, ptr %4, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %135, label %122

122:                                              ; preds = %118
  %123 = load ptr, ptr %120, align 4
  %124 = tail call zeroext i1 @mmc_can_gpio_cd(ptr noundef %123) #11
  br i1 %124, label %132, label %125

125:                                              ; preds = %122
  %126 = load ptr, ptr %4, align 4
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr inbounds %struct.mmc_host, ptr %127, i32 0, i32 16
  %129 = load i32, ptr %128, align 8
  %130 = and i32 %129, 256
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %125, %122
  %133 = getelementptr inbounds %struct.dw_mci, ptr %3, i32 0, i32 40
  %134 = load ptr, ptr %133, align 4
  tail call void @clk_disable(ptr noundef %134) #11
  tail call void @clk_unprepare(ptr noundef %134) #11
  br label %135

135:                                              ; preds = %132, %125, %118, %106, %103, %97, %25, %17
  %136 = phi i32 [ %119, %132 ], [ %119, %125 ], [ %119, %118 ], [ 0, %97 ], [ 0, %103 ], [ 0, %106 ], [ %23, %25 ], [ %20, %17 ]
  ret i32 %136
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_mci_set_ios(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %4 = getelementptr inbounds %struct.dw_mci_slot, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dw_mci, ptr %5, i32 0, i32 38
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 6
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 3
  %11 = select i1 %10, i32 65536, i32 0
  %12 = icmp eq i8 %9, 2
  %13 = select i1 %12, i32 1, i32 %11
  %14 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.dw_mci, ptr %5, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr i8, ptr %16, i32 116
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #11, !srcloc !9
  %19 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 7
  %20 = load i8, ptr %19, align 4
  switch i8 %20, label %26 [
    i8 8, label %21
    i8 7, label %21
    i8 10, label %21
  ]

21:                                               ; preds = %2, %2, %2
  %22 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = shl i32 65536, %23
  %25 = or i32 %24, %18
  br label %32

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 6
  %28 = load i32, ptr %27, align 4
  %29 = shl i32 65536, %28
  %30 = xor i32 %29, -1
  %31 = and i32 %18, %30
  br label %32

32:                                               ; preds = %26, %21
  %33 = phi i32 [ %25, %21 ], [ %31, %26 ]
  %34 = load ptr, ptr %4, align 4
  %35 = getelementptr inbounds %struct.dw_mci, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr i8, ptr %36, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %33) #11, !srcloc !10
  %38 = load i8, ptr %19, align 4
  %39 = load ptr, ptr %4, align 4
  %40 = getelementptr inbounds %struct.dw_mci, ptr %39, i32 0, i32 13
  store i8 %38, ptr %40, align 8
  %41 = load i32, ptr %1, align 4
  %42 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 3
  store i32 %41, ptr %42, align 4
  %43 = icmp eq ptr %7, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %32
  %45 = getelementptr inbounds %struct.dw_mci_drv_data, ptr %7, i32 0, i32 4
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %4, align 4
  tail call void %46(ptr noundef %49, ptr noundef %1) #11
  br label %50

50:                                               ; preds = %48, %44, %32
  %51 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 5
  %52 = load i8, ptr %51, align 2
  switch i8 %52, label %138 [
    i8 1, label %53
    i8 2, label %81
    i8 0, label %104
  ]

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 54
  %55 = load ptr, ptr %54, align 4
  %56 = icmp ugt ptr %55, inttoptr (i32 -4096 to ptr)
  br i1 %56, label %66, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 1
  %59 = load i16, ptr %58, align 4
  %60 = tail call i32 @mmc_regulator_set_ocr(ptr noundef %0, ptr noundef %55, i16 noundef zeroext %59) #11
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %57
  %63 = load ptr, ptr %4, align 4
  %64 = getelementptr inbounds %struct.dw_mci, ptr %63, i32 0, i32 36
  %65 = load ptr, ptr %64, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.64) #12
  br label %147

66:                                               ; preds = %57, %53
  %67 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 1, ptr noundef %67) #11
  %68 = load ptr, ptr %4, align 4
  %69 = getelementptr inbounds %struct.dw_mci, ptr %68, i32 0, i32 2
  %70 = load ptr, ptr %69, align 8
  %71 = getelementptr i8, ptr %70, i32 4
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #11, !srcloc !9
  %73 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 6
  %74 = load i32, ptr %73, align 4
  %75 = shl nuw i32 1, %74
  %76 = or i32 %75, %72
  %77 = load ptr, ptr %4, align 4
  %78 = getelementptr inbounds %struct.dw_mci, ptr %77, i32 0, i32 2
  %79 = load ptr, ptr %78, align 8
  %80 = getelementptr i8, ptr %79, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %76) #11, !srcloc !10
  br label %138

81:                                               ; preds = %50
  %82 = load ptr, ptr %4, align 4
  %83 = getelementptr inbounds %struct.dw_mci, ptr %82, i32 0, i32 51
  %84 = load i8, ptr %83, align 4, !range !25
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %103

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 54, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = icmp ugt ptr %88, inttoptr (i32 -4096 to ptr)
  br i1 %89, label %99, label %90

90:                                               ; preds = %86
  %91 = tail call i32 @regulator_enable(ptr noundef %88) #11
  %92 = icmp slt i32 %91, 0
  %93 = load ptr, ptr %4, align 4
  br i1 %92, label %94, label %97

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.dw_mci, ptr %93, i32 0, i32 36
  %96 = load ptr, ptr %95, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.65) #12
  br label %100

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.dw_mci, ptr %93, i32 0, i32 51
  store i8 1, ptr %98, align 4
  br label %100

99:                                               ; preds = %86
  store i8 1, ptr %83, align 4
  br label %100

100:                                              ; preds = %99, %97, %94
  %101 = load ptr, ptr %4, align 4
  %102 = tail call fastcc zeroext i1 @dw_mci_ctrl_reset(ptr noundef %101, i32 noundef 7)
  br label %103

103:                                              ; preds = %100, %81
  tail call fastcc void @dw_mci_setup_bus(ptr noundef %3, i1 noundef zeroext false)
  br label %138

104:                                              ; preds = %50
  tail call fastcc void @dw_mci_setup_bus(ptr noundef %3, i1 noundef zeroext false)
  %105 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 54
  %106 = load ptr, ptr %105, align 4
  %107 = icmp ugt ptr %106, inttoptr (i32 -4096 to ptr)
  br i1 %107, label %110, label %108

108:                                              ; preds = %104
  %109 = tail call i32 @mmc_regulator_set_ocr(ptr noundef %0, ptr noundef %106, i16 noundef zeroext 0) #11
  br label %110

110:                                              ; preds = %108, %104
  %111 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 54, i32 1
  %112 = load ptr, ptr %111, align 4
  %113 = icmp ugt ptr %112, inttoptr (i32 -4096 to ptr)
  br i1 %113, label %121, label %114

114:                                              ; preds = %110
  %115 = load ptr, ptr %4, align 4
  %116 = getelementptr inbounds %struct.dw_mci, ptr %115, i32 0, i32 51
  %117 = load i8, ptr %116, align 4, !range !25
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %114
  %120 = tail call i32 @regulator_disable(ptr noundef %112) #11
  br label %121

121:                                              ; preds = %119, %114, %110
  %122 = load ptr, ptr %4, align 4
  %123 = getelementptr inbounds %struct.dw_mci, ptr %122, i32 0, i32 51
  store i8 0, ptr %123, align 4
  %124 = load ptr, ptr %4, align 4
  %125 = getelementptr inbounds %struct.dw_mci, ptr %124, i32 0, i32 2
  %126 = load ptr, ptr %125, align 8
  %127 = getelementptr i8, ptr %126, i32 4
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %127) #11, !srcloc !9
  %129 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 6
  %130 = load i32, ptr %129, align 4
  %131 = shl nuw i32 1, %130
  %132 = xor i32 %131, -1
  %133 = and i32 %128, %132
  %134 = load ptr, ptr %4, align 4
  %135 = getelementptr inbounds %struct.dw_mci, ptr %134, i32 0, i32 2
  %136 = load ptr, ptr %135, align 8
  %137 = getelementptr i8, ptr %136, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %137, i32 %133) #11, !srcloc !10
  br label %138

138:                                              ; preds = %121, %103, %66, %50
  %139 = load ptr, ptr %4, align 4
  %140 = getelementptr inbounds %struct.dw_mci, ptr %139, i32 0, i32 30
  %141 = load i32, ptr %140, align 8
  %142 = icmp eq i32 %141, 7
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = load i32, ptr %1, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %143
  store i32 0, ptr %140, align 8
  br label %147

147:                                              ; preds = %146, %143, %138, %62
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dw_mci_setup_bus(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dw_mci_slot, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dw_mci_slot, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dw_mci, ptr %4, i32 0, i32 30
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 7
  %10 = select i1 %9, i32 270540800, i32 2105344
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.mmc_host, ptr %11, i32 0, i32 57
  store i32 0, ptr %12, align 4
  %13 = icmp eq i32 %6, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.dw_mci, ptr %4, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr i8, ptr %16, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 0) #11, !srcloc !10
  tail call fastcc void @mci_send_cmd(ptr noundef %0, i32 noundef %10)
  br label %101

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.dw_mci, ptr %4, i32 0, i32 33
  %20 = load i32, ptr %19, align 8
  %21 = icmp ne i32 %6, %20
  %22 = or i1 %21, %1
  br i1 %22, label %23, label %101

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.dw_mci, ptr %4, i32 0, i32 32
  %25 = load i32, ptr %24, align 4
  %26 = freeze i32 %25
  %27 = freeze i32 %6
  %28 = udiv i32 %26, %27
  %29 = mul i32 %28, %27
  %30 = sub i32 %26, %29
  %31 = icmp ne i32 %30, 0
  %32 = icmp ugt i32 %25, %6
  %33 = and i1 %32, %31
  %34 = zext i1 %33 to i32
  %35 = icmp eq i32 %25, %6
  %36 = add i32 %28, 1
  %37 = add i32 %36, %34
  %38 = lshr i32 %37, 1
  %39 = select i1 %35, i32 0, i32 %38
  %40 = getelementptr inbounds %struct.dw_mci_slot, ptr %0, i32 0, i32 6
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %6, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %23
  %44 = getelementptr inbounds %struct.dw_mci_slot, ptr %0, i32 0, i32 7
  %45 = load volatile i32, ptr %44, align 4
  %46 = and i32 %45, 16
  %47 = icmp eq i32 %46, 0
  %48 = or i1 %47, %1
  br i1 %48, label %50, label %74

49:                                               ; preds = %23
  br i1 %1, label %62, label %74

50:                                               ; preds = %43
  br i1 %1, label %62, label %51

51:                                               ; preds = %50
  %52 = load ptr, ptr %0, align 4
  %53 = getelementptr inbounds %struct.mmc_host, ptr %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.dw_mci_slot, ptr %0, i32 0, i32 8
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %39, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %51
  %58 = udiv i32 %25, %38
  %59 = lshr i32 %58, 1
  br label %60

60:                                               ; preds = %57, %51
  %61 = phi i32 [ %59, %57 ], [ %25, %51 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %53, ptr noundef nonnull @.str.66, i32 noundef %55, i32 noundef %25, i32 noundef %6, i32 noundef %61, i32 noundef %39) #12
  br label %62

62:                                               ; preds = %60, %50, %49
  %63 = load ptr, ptr %0, align 4
  %64 = getelementptr inbounds %struct.mmc_host, ptr %63, i32 0, i32 16
  %65 = load i32, ptr %64, align 8
  %66 = and i32 %65, 32
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.mmc_host, ptr %63, i32 0, i32 5
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, %6
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.dw_mci_slot, ptr %0, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 4, ptr noundef %73) #11
  br label %74

74:                                               ; preds = %72, %68, %62, %49, %43
  %75 = getelementptr inbounds %struct.dw_mci, ptr %4, i32 0, i32 2
  %76 = load ptr, ptr %75, align 8
  %77 = getelementptr i8, ptr %76, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 0) #11, !srcloc !10
  %78 = load ptr, ptr %75, align 8
  %79 = getelementptr i8, ptr %78, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 0) #11, !srcloc !10
  tail call fastcc void @mci_send_cmd(ptr noundef %0, i32 noundef %10)
  %80 = load ptr, ptr %75, align 8
  %81 = getelementptr i8, ptr %80, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %39) #11, !srcloc !10
  tail call fastcc void @mci_send_cmd(ptr noundef %0, i32 noundef %10)
  %82 = getelementptr inbounds %struct.dw_mci_slot, ptr %0, i32 0, i32 8
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr inbounds %struct.dw_mci_slot, ptr %0, i32 0, i32 7
  %85 = load volatile i32, ptr %84, align 4
  %86 = and i32 %85, 4
  %87 = icmp eq i32 %86, 0
  %88 = select i1 %87, i32 65537, i32 1
  %89 = shl i32 %88, %83
  %90 = load ptr, ptr %75, align 8
  %91 = getelementptr i8, ptr %90, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %89) #11, !srcloc !10
  tail call fastcc void @mci_send_cmd(ptr noundef %0, i32 noundef %10)
  store i32 %6, ptr %40, align 4
  %92 = icmp eq i32 %39, 0
  %93 = load i32, ptr %24, align 4
  br i1 %92, label %97, label %94

94:                                               ; preds = %74
  %95 = udiv i32 %93, %38
  %96 = lshr i32 %95, 1
  br label %97

97:                                               ; preds = %94, %74
  %98 = phi i32 [ %96, %94 ], [ %93, %74 ]
  %99 = load ptr, ptr %0, align 4
  %100 = getelementptr inbounds %struct.mmc_host, ptr %99, i32 0, i32 57
  store i32 %98, ptr %100, align 4
  br label %101

101:                                              ; preds = %97, %18, %14
  %102 = getelementptr inbounds %struct.dw_mci, ptr %4, i32 0, i32 33
  store i32 %6, ptr %102, align 8
  %103 = getelementptr inbounds %struct.dw_mci_slot, ptr %0, i32 0, i32 2
  %104 = load i32, ptr %103, align 4
  %105 = getelementptr inbounds %struct.dw_mci_slot, ptr %0, i32 0, i32 8
  %106 = load i32, ptr %105, align 4
  %107 = shl i32 %104, %106
  %108 = getelementptr inbounds %struct.dw_mci, ptr %4, i32 0, i32 2
  %109 = load ptr, ptr %108, align 8
  %110 = getelementptr i8, ptr %109, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 %107) #11, !srcloc !10
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync)
define internal void @dw_mci_exit() #6 section ".exit.text" {
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @dw_mci_init() #7 section ".init.text" {
  %1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_string_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mci_idmac_init(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 16
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 1
  %5 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 20
  br i1 %4, label %6, label %28

6:                                                ; preds = %1
  store i32 128, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 18
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 17
  br label %10

10:                                               ; preds = %10, %6
  %11 = phi ptr [ %8, %6 ], [ %19, %10 ]
  %12 = phi i32 [ 0, %6 ], [ %14, %10 ]
  %13 = load i32, ptr %9, align 8
  %14 = add nuw i32 %12, 1
  %15 = shl i32 %14, 5
  %16 = add i32 %13, %15
  %17 = getelementptr inbounds %struct.idmac_desc_64addr, ptr %11, i32 0, i32 6
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.idmac_desc_64addr, ptr %11, i32 0, i32 7
  store i32 0, ptr %18, align 4
  %19 = getelementptr %struct.idmac_desc_64addr, ptr %11, i32 1
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  %20 = load i32, ptr %5, align 4
  %21 = add i32 %20, -1
  %22 = icmp ult i32 %14, %21
  br i1 %22, label %10, label %23

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 17
  %25 = load i32, ptr %24, align 8
  %26 = getelementptr %struct.idmac_desc_64addr, ptr %11, i32 1, i32 6
  store i32 %25, ptr %26, align 4
  %27 = getelementptr %struct.idmac_desc_64addr, ptr %11, i32 1, i32 7
  store i32 0, ptr %27, align 4
  br label %49

28:                                               ; preds = %1
  store i32 256, ptr %5, align 4
  %29 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 18
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 17
  br label %32

32:                                               ; preds = %32, %28
  %33 = phi ptr [ %30, %28 ], [ %41, %32 ]
  %34 = phi i32 [ 0, %28 ], [ %36, %32 ]
  %35 = load i32, ptr %31, align 8
  %36 = add nuw i32 %34, 1
  %37 = shl i32 %36, 4
  %38 = add i32 %35, %37
  %39 = getelementptr inbounds %struct.idmac_desc, ptr %33, i32 0, i32 3
  store i32 %38, ptr %39, align 4
  store i32 0, ptr %33, align 4
  %40 = getelementptr inbounds %struct.idmac_desc, ptr %33, i32 0, i32 1
  store i32 0, ptr %40, align 4
  %41 = getelementptr %struct.idmac_desc, ptr %33, i32 1
  %42 = load i32, ptr %5, align 4
  %43 = add i32 %42, -1
  %44 = icmp ult i32 %36, %43
  br i1 %44, label %32, label %45

45:                                               ; preds = %32
  %46 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 17
  %47 = load i32, ptr %46, align 8
  %48 = getelementptr %struct.idmac_desc, ptr %33, i32 1, i32 3
  store i32 %47, ptr %48, align 4
  br label %49

49:                                               ; preds = %45, %23
  %50 = phi ptr [ %41, %45 ], [ %19, %23 ]
  store i32 32, ptr %50, align 4
  %51 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 2
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr i8, ptr %52, i32 128
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #11, !srcloc !9
  %55 = or i32 %54, 1
  %56 = load ptr, ptr %51, align 8
  %57 = getelementptr i8, ptr %56, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %55) #11, !srcloc !10
  %58 = load i32, ptr %2, align 4
  %59 = icmp eq i32 %58, 1
  %60 = load ptr, ptr %51, align 8
  br i1 %59, label %61, label %71

61:                                               ; preds = %49
  %62 = getelementptr i8, ptr %60, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 823) #11, !srcloc !10
  %63 = load ptr, ptr %51, align 8
  %64 = getelementptr i8, ptr %63, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 259) #11, !srcloc !10
  %65 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 17
  %66 = load i32, ptr %65, align 8
  %67 = load ptr, ptr %51, align 8
  %68 = getelementptr i8, ptr %67, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %66) #11, !srcloc !10
  %69 = load ptr, ptr %51, align 8
  %70 = getelementptr i8, ptr %69, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 0) #11, !srcloc !10
  br label %79

71:                                               ; preds = %49
  %72 = getelementptr i8, ptr %60, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 823) #11, !srcloc !10
  %73 = load ptr, ptr %51, align 8
  %74 = getelementptr i8, ptr %73, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 259) #11, !srcloc !10
  %75 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 17
  %76 = load i32, ptr %75, align 8
  %77 = load ptr, ptr %51, align 8
  %78 = getelementptr i8, ptr %77, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %76) #11, !srcloc !10
  br label %79

79:                                               ; preds = %71, %61
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mci_idmac_start_dma(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 16
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 1
  %6 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 18
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq i32 %1, 0
  br i1 %5, label %9, label %68

9:                                                ; preds = %2
  br i1 %8, label %121, label %10

10:                                               ; preds = %9
  %11 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 10
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.mmc_data, ptr %12, i32 0, i32 12
  br label %14

14:                                               ; preds = %60, %10
  %15 = phi ptr [ %7, %10 ], [ %62, %60 ]
  %16 = phi ptr [ %7, %10 ], [ %61, %60 ]
  %17 = phi i32 [ 0, %10 ], [ %63, %60 ]
  %18 = load ptr, ptr %13, align 4
  %19 = getelementptr %struct.scatterlist, ptr %18, i32 %17, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %60, label %22

22:                                               ; preds = %14
  %23 = getelementptr %struct.scatterlist, ptr %18, i32 %17, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = zext i32 %24 to i64
  br label %26

26:                                               ; preds = %46, %22
  %27 = phi ptr [ %58, %46 ], [ %16, %22 ]
  %28 = phi i32 [ %31, %46 ], [ %20, %22 ]
  %29 = phi i64 [ %57, %46 ], [ %25, %22 ]
  %30 = tail call i32 @llvm.umin.i32(i32 %28, i32 4096) #11
  %31 = sub i32 %28, %30
  %32 = tail call i64 @ktime_get() #11
  %33 = add i64 %32, 100000000
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #11, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !26
  %35 = icmp sgt i32 %34, -1
  br i1 %35, label %46, label %36

36:                                               ; preds = %39, %26
  %37 = tail call i64 @ktime_get() #11
  %38 = icmp sgt i64 %37, %33
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 2147480) #11
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #11, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !26
  %42 = icmp sgt i32 %41, -1
  br i1 %42, label %46, label %36

43:                                               ; preds = %36
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #11, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !27
  %45 = icmp sgt i32 %44, -1
  br i1 %45, label %46, label %65

46:                                               ; preds = %43, %39, %26
  store i32 -2147483630, ptr %27, align 4
  %47 = getelementptr inbounds %struct.idmac_desc_64addr, ptr %27, i32 0, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 67100672
  %50 = or i32 %49, %30
  store i32 %50, ptr %47, align 4
  %51 = trunc i64 %29 to i32
  %52 = getelementptr inbounds %struct.idmac_desc_64addr, ptr %27, i32 0, i32 4
  store i32 %51, ptr %52, align 4
  %53 = lshr i64 %29, 32
  %54 = trunc i64 %53 to i32
  %55 = getelementptr inbounds %struct.idmac_desc_64addr, ptr %27, i32 0, i32 5
  store i32 %54, ptr %55, align 4
  %56 = zext i32 %30 to i64
  %57 = add i64 %29, %56
  %58 = getelementptr %struct.idmac_desc_64addr, ptr %27, i32 1
  %59 = icmp eq i32 %31, 0
  br i1 %59, label %60, label %26

60:                                               ; preds = %46, %14
  %61 = phi ptr [ %16, %14 ], [ %58, %46 ]
  %62 = phi ptr [ %15, %14 ], [ %27, %46 ]
  %63 = add nuw i32 %17, 1
  %64 = icmp eq i32 %63, %1
  br i1 %64, label %121, label %14

65:                                               ; preds = %43
  %66 = load ptr, ptr %6, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(4096) %66, i8 0, i32 4096, i1 false) #11
  %67 = tail call i32 @dw_mci_idmac_init(ptr noundef %0) #11
  br label %148

68:                                               ; preds = %2
  br i1 %8, label %121, label %69

69:                                               ; preds = %68
  %70 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 10
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr inbounds %struct.mmc_data, ptr %71, i32 0, i32 12
  br label %73

73:                                               ; preds = %113, %69
  %74 = phi ptr [ %7, %69 ], [ %115, %113 ]
  %75 = phi ptr [ %7, %69 ], [ %114, %113 ]
  %76 = phi i32 [ 0, %69 ], [ %116, %113 ]
  %77 = load ptr, ptr %72, align 4
  %78 = getelementptr %struct.scatterlist, ptr %77, i32 %76, i32 4
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %113, label %81

81:                                               ; preds = %73
  %82 = getelementptr %struct.scatterlist, ptr %77, i32 %76, i32 3
  %83 = load i32, ptr %82, align 4
  br label %84

84:                                               ; preds = %104, %81
  %85 = phi ptr [ %111, %104 ], [ %75, %81 ]
  %86 = phi i32 [ %89, %104 ], [ %79, %81 ]
  %87 = phi i32 [ %110, %104 ], [ %83, %81 ]
  %88 = tail call i32 @llvm.umin.i32(i32 %86, i32 4096) #11
  %89 = sub i32 %86, %88
  %90 = tail call i64 @ktime_get() #11
  %91 = add i64 %90, 100000000
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #11, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !28
  %93 = icmp sgt i32 %92, -1
  br i1 %93, label %104, label %94

94:                                               ; preds = %97, %84
  %95 = tail call i64 @ktime_get() #11
  %96 = icmp sgt i64 %95, %91
  br i1 %96, label %101, label %97

97:                                               ; preds = %94
  %98 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %98(i32 noundef 2147480) #11
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #11, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !28
  %100 = icmp sgt i32 %99, -1
  br i1 %100, label %104, label %94

101:                                              ; preds = %94
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #11, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !29
  %103 = icmp sgt i32 %102, -1
  br i1 %103, label %104, label %118

104:                                              ; preds = %101, %97, %84
  store i32 -2147483630, ptr %85, align 4
  %105 = getelementptr inbounds %struct.idmac_desc, ptr %85, i32 0, i32 1
  %106 = load i32, ptr %105, align 4
  %107 = and i32 %106, 67100672
  %108 = or i32 %107, %88
  store i32 %108, ptr %105, align 4
  %109 = getelementptr inbounds %struct.idmac_desc, ptr %85, i32 0, i32 2
  store i32 %87, ptr %109, align 4
  %110 = add i32 %88, %87
  %111 = getelementptr %struct.idmac_desc, ptr %85, i32 1
  %112 = icmp eq i32 %89, 0
  br i1 %112, label %113, label %84

113:                                              ; preds = %104, %73
  %114 = phi ptr [ %75, %73 ], [ %111, %104 ]
  %115 = phi ptr [ %74, %73 ], [ %85, %104 ]
  %116 = add nuw i32 %76, 1
  %117 = icmp eq i32 %116, %1
  br i1 %117, label %121, label %73

118:                                              ; preds = %101
  %119 = load ptr, ptr %6, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(4096) %119, i8 0, i32 4096, i1 false) #11
  %120 = tail call i32 @dw_mci_idmac_init(ptr noundef %0) #11
  br label %148

121:                                              ; preds = %113, %68, %60, %9
  %122 = phi ptr [ %7, %9 ], [ %7, %68 ], [ %62, %60 ], [ %115, %113 ]
  %123 = load i32, ptr %7, align 4
  %124 = or i32 %123, 8
  store i32 %124, ptr %7, align 4
  %125 = load i32, ptr %122, align 4
  %126 = and i32 %125, -23
  %127 = or i32 %126, 4
  store i32 %127, ptr %122, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !30
  tail call void @arm_heavy_mb() #11
  %128 = tail call fastcc zeroext i1 @dw_mci_ctrl_reset(ptr noundef %0, i32 noundef 4)
  %129 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 2
  %130 = load ptr, ptr %129, align 8
  %131 = getelementptr i8, ptr %130, i32 128
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %131) #11, !srcloc !9
  %133 = or i32 %132, 1
  %134 = load ptr, ptr %129, align 8
  %135 = getelementptr i8, ptr %134, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 %133) #11, !srcloc !10
  %136 = load ptr, ptr %129, align 8
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %136) #11, !srcloc !9
  %138 = or i32 %137, 33554432
  %139 = load ptr, ptr %129, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %139, i32 %138) #11, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !31
  tail call void @arm_heavy_mb() #11
  %140 = load ptr, ptr %129, align 8
  %141 = getelementptr i8, ptr %140, i32 128
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %141) #11, !srcloc !9
  %143 = or i32 %142, 130
  %144 = load ptr, ptr %129, align 8
  %145 = getelementptr i8, ptr %144, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %145, i32 %143) #11, !srcloc !10
  %146 = load ptr, ptr %129, align 8
  %147 = getelementptr i8, ptr %146, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %147, i32 1) #11, !srcloc !10
  br label %148

148:                                              ; preds = %121, %118, %65
  %149 = phi i32 [ 0, %121 ], [ -22, %65 ], [ -22, %118 ]
  ret i32 %149
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_mci_dmac_complete_dma(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 14
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 2
  %7 = icmp ne ptr %3, null
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 512
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 42
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %17, align 64
  %19 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 12
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 10
  %22 = load i32, ptr %21, align 4
  tail call void @dma_sync_sg_for_cpu(ptr noundef %18, ptr noundef %20, i32 noundef %22, i32 noundef 2) #11
  br label %23

23:                                               ; preds = %14, %9, %1
  %24 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 19
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.dw_mci_dma_ops, ptr %25, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  tail call void %27(ptr noundef %0) #11
  br i1 %7, label %28, label %35

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 28
  tail call void @_set_bit(i32 noundef 1, ptr noundef %29) #11
  %30 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 27, i32 1
  %31 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %30) #11
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 27
  tail call void @__tasklet_schedule(ptr noundef %34) #11
  br label %35

35:                                               ; preds = %33, %28, %23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_mci_idmac_stop_dma(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #11, !srcloc !9
  %5 = and i32 %4, -33554437
  %6 = or i32 %5, 4
  %7 = load ptr, ptr %2, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %6) #11, !srcloc !10
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr i8, ptr %8, i32 128
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #11, !srcloc !9
  %11 = and i32 %10, -132
  %12 = or i32 %11, 1
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr i8, ptr %13, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #11, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_mci_dma_cleanup(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 13
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %21

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 36
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 12
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 10
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 256
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %11, ptr noundef %13, i32 noundef %15, i32 noundef %20, i32 noundef 0) #11
  store i32 0, ptr %6, align 4
  br label %21

21:                                               ; preds = %9, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_cpu(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mci_edmac_init(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 8) #13
  %4 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 21
  store ptr %3, ptr %4, align 8
  %5 = icmp eq ptr %3, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 36
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @dma_request_chan(ptr noundef %8, ptr noundef nonnull @.str.38) #11
  %10 = load ptr, ptr %4, align 8
  store ptr %9, ptr %10, align 4
  %11 = load ptr, ptr %4, align 8
  %12 = load ptr, ptr %11, align 4
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %18

14:                                               ; preds = %6
  %15 = ptrtoint ptr %12 to i32
  %16 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.39) #12
  %17 = load ptr, ptr %4, align 8
  tail call void @kfree(ptr noundef %17) #11
  store ptr null, ptr %4, align 8
  br label %18

18:                                               ; preds = %14, %6, %1
  %19 = phi i32 [ %15, %14 ], [ -12, %1 ], [ 0, %6 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mci_edmac_start_dma(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.dma_slave_config, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #11
  %4 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 12
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = ptrtoint ptr %11 to i32
  %15 = ptrtoint ptr %13 to i32
  %16 = sub i32 %14, %15
  %17 = getelementptr inbounds i8, ptr %3, i32 28
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %17, i8 0, i32 20, i1 false)
  %18 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 22
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, %16
  %21 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 2
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 1
  store i32 %20, ptr %22, align 4
  %23 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 4
  store i32 4, ptr %23, align 4
  %24 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 3
  store i32 4, ptr %24, align 4
  %25 = getelementptr i8, ptr %13, i32 76
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #11, !srcloc !9
  %27 = lshr i32 %26, 28
  %28 = and i32 %27, 7
  %29 = getelementptr [8 x i32], ptr @dw_mci_edmac_start_dma.mszs, i32 0, i32 %28
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 6
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 5
  store i32 %30, ptr %32, align 4
  %33 = load ptr, ptr %4, align 8
  %34 = getelementptr inbounds %struct.mmc_data, ptr %33, i32 0, i32 6
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 256
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i32 2, i32 1
  store i32 %38, ptr %3, align 4
  %39 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 21
  %40 = load ptr, ptr %39, align 8
  %41 = load ptr, ptr %40, align 4
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.dma_device, ptr %42, i32 0, i32 44
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %2
  %47 = call i32 %44(ptr noundef %41, ptr noundef nonnull %3) #11
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46, %2
  %50 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 36
  %51 = load ptr, ptr %50, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.40) #12
  br label %92

52:                                               ; preds = %46
  %53 = load ptr, ptr %39, align 8
  %54 = load ptr, ptr %53, align 4
  %55 = load i32, ptr %3, align 4
  %56 = icmp eq ptr %54, null
  br i1 %56, label %67, label %57

57:                                               ; preds = %52
  %58 = load ptr, ptr %54, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %67, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.dma_device, ptr %58, i32 0, i32 39
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = call ptr %62(ptr noundef nonnull %54, ptr noundef %7, i32 noundef %1, i32 noundef %55, i32 noundef 3, ptr noundef null) #11
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %64, %60, %57, %52
  %68 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 36
  %69 = load ptr, ptr %68, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.41) #12
  br label %92

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %65, i32 0, i32 6
  store ptr @dw_mci_dmac_complete_dma, ptr %71, align 4
  %72 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %65, i32 0, i32 8
  store ptr %0, ptr %72, align 4
  %73 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %65, i32 0, i32 4
  %74 = load ptr, ptr %73, align 4
  %75 = call i32 %74(ptr noundef nonnull %65) #11
  %76 = load ptr, ptr %4, align 8
  %77 = getelementptr inbounds %struct.mmc_data, ptr %76, i32 0, i32 6
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, 256
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %70
  %82 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 42
  %83 = load ptr, ptr %82, align 4
  %84 = load ptr, ptr %83, align 4
  %85 = load ptr, ptr %84, align 64
  call void @dma_sync_sg_for_device(ptr noundef %85, ptr noundef %7, i32 noundef %9, i32 noundef 1) #11
  br label %86

86:                                               ; preds = %81, %70
  %87 = load ptr, ptr %39, align 8
  %88 = load ptr, ptr %87, align 4
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr inbounds %struct.dma_device, ptr %89, i32 0, i32 50
  %91 = load ptr, ptr %90, align 4
  call void %91(ptr noundef %88) #11
  br label %92

92:                                               ; preds = %86, %67, %49
  %93 = phi i32 [ -16, %49 ], [ 0, %86 ], [ -16, %67 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #11
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_mci_edmac_stop_dma(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 21
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 47
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = tail call i32 %7(ptr noundef %4) #11
  br label %11

11:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_mci_edmac_exit(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 21
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  tail call void @dma_release_channel(ptr noundef nonnull %6) #11
  %9 = load ptr, ptr %2, align 8
  store ptr null, ptr %9, align 4
  %10 = load ptr, ptr %2, align 8
  br label %11

11:                                               ; preds = %8, %5
  %12 = phi ptr [ %10, %8 ], [ %3, %5 ]
  tail call void @kfree(ptr noundef %12) #11
  store ptr null, ptr %2, align 8
  br label %13

13:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_device(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__dw_mci_start_request(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.dw_mci_slot, ptr %1, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 8
  store ptr %5, ptr %6, align 8
  %7 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 28
  store i32 0, ptr %7, align 8
  %8 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 29
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 23
  store i32 0, ptr %9, align 8
  %10 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 24
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 26
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.mmc_command, ptr %2, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %79, label %15

15:                                               ; preds = %3
  %16 = load i32, ptr %13, align 4
  %17 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 38
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.dw_mci_drv_data, ptr %18, i32 0, i32 9
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void %22(ptr noundef %0, i32 noundef %16) #11
  br label %67

25:                                               ; preds = %20, %15
  %26 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr i8, ptr %27, i32 8
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #11, !srcloc !9
  %30 = shl i32 %29, 1
  %31 = and i32 %30, 510
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, i32 1, i32 %31
  %34 = zext i32 %16 to i64
  %35 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 32
  %36 = load i32, ptr %35, align 4
  %37 = zext i32 %36 to i64
  %38 = mul nuw i64 %37, %34
  %39 = add nuw i64 %38, 999999999
  %40 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %39, i32 0) #14, !srcloc !32
  %41 = extractvalue { i64, i32 } %40, 0
  %42 = extractvalue { i64, i32 } %40, 1
  %43 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %39, i64 %41, i32 %42) #14, !srcloc !33
  %44 = extractvalue { i64, i32 } %43, 0
  %45 = lshr i64 %44, 29
  %46 = zext i32 %33 to i64
  %47 = add nsw i64 %46, -1
  %48 = add nuw nsw i64 %47, %45
  %49 = icmp ult i64 %48, 4294967296
  br i1 %49, label %50, label %54, !prof !11

50:                                               ; preds = %25
  %51 = trunc i64 %48 to i32
  %52 = udiv i32 %51, %33
  %53 = zext i32 %52 to i64
  br label %57

54:                                               ; preds = %25
  %55 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %33, i64 %48) #14, !srcloc !34
  %56 = extractvalue { i64, i64 } %55, 1
  br label %57

57:                                               ; preds = %54, %50
  %58 = phi i64 [ %53, %50 ], [ %56, %54 ]
  %59 = add i64 %58, -16777216
  %60 = icmp ult i64 %59, -16777215
  %61 = trunc i64 %58 to i32
  %62 = shl i32 %61, 8
  %63 = or i32 %62, 255
  %64 = select i1 %60, i32 -1, i32 %63
  %65 = load ptr, ptr %26, align 8
  %66 = getelementptr i8, ptr %65, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %64) #11, !srcloc !10
  br label %67

67:                                               ; preds = %57, %24
  %68 = getelementptr inbounds %struct.mmc_data, ptr %13, i32 0, i32 2
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.mmc_data, ptr %13, i32 0, i32 3
  %71 = load i32, ptr %70, align 4
  %72 = mul i32 %71, %69
  %73 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 2
  %74 = load ptr, ptr %73, align 8
  %75 = getelementptr i8, ptr %74, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %72) #11, !srcloc !10
  %76 = load i32, ptr %68, align 4
  %77 = load ptr, ptr %73, align 8
  %78 = getelementptr i8, ptr %77, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %76) #11, !srcloc !10
  br label %79

79:                                               ; preds = %67, %3
  %80 = load ptr, ptr %1, align 4
  %81 = getelementptr inbounds %struct.mmc_host, ptr %80, i32 0, i32 68
  %82 = getelementptr inbounds %struct.dw_mci_slot, ptr %81, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.mmc_command, ptr %2, i32 0, i32 5
  store i32 -115, ptr %84, align 4
  %85 = load i32, ptr %2, align 4
  switch i32 %85, label %93 [
    i32 12, label %91
    i32 0, label %91
    i32 15, label %91
    i32 52, label %86
    i32 13, label %123
  ]

86:                                               ; preds = %79
  %87 = getelementptr inbounds %struct.mmc_command, ptr %2, i32 0, i32 1
  %88 = load i32, ptr %87, align 4
  %89 = and i32 %88, 67108352
  %90 = icmp eq i32 %89, 3072
  br i1 %90, label %91, label %93

91:                                               ; preds = %86, %79, %79, %79
  %92 = or i32 %85, 16384
  br label %98

93:                                               ; preds = %86, %79
  %94 = load ptr, ptr %12, align 4
  %95 = icmp eq ptr %94, null
  %96 = or i32 %85, 8192
  %97 = select i1 %95, i32 %85, i32 %96
  br label %98

98:                                               ; preds = %93, %91
  %99 = phi i32 [ %92, %91 ], [ %97, %93 ]
  %100 = icmp eq i32 %85, 11
  br i1 %100, label %101, label %123

101:                                              ; preds = %98
  %102 = or i32 %99, 268435456
  %103 = load ptr, ptr %82, align 4
  %104 = getelementptr inbounds %struct.dw_mci, ptr %103, i32 0, i32 30
  %105 = load i32, ptr %104, align 8
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %109, label %107, !prof !11

107:                                              ; preds = %101
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 278, i32 noundef 9, ptr noundef null) #11
  %108 = load ptr, ptr %82, align 4
  br label %109

109:                                              ; preds = %107, %101
  %110 = phi ptr [ %108, %107 ], [ %103, %101 ]
  %111 = getelementptr inbounds %struct.dw_mci, ptr %110, i32 0, i32 30
  store i32 6, ptr %111, align 8
  %112 = getelementptr inbounds %struct.dw_mci, ptr %83, i32 0, i32 2
  %113 = load ptr, ptr %112, align 8
  %114 = getelementptr i8, ptr %113, i32 16
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %114) #11, !srcloc !9
  %116 = getelementptr inbounds %struct.mmc_host, ptr %80, i32 1, i32 1, i32 0, i32 6
  %117 = load i32, ptr %116, align 4
  %118 = shl i32 65536, %117
  %119 = xor i32 %118, -1
  %120 = and i32 %115, %119
  %121 = load ptr, ptr %112, align 8
  %122 = getelementptr i8, ptr %121, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 %120) #11, !srcloc !10
  tail call fastcc void @mci_send_cmd(ptr noundef %81, i32 noundef 2105344) #11
  br label %123

123:                                              ; preds = %109, %98, %79
  %124 = phi i32 [ %102, %109 ], [ %99, %98 ], [ %85, %79 ]
  %125 = getelementptr inbounds %struct.mmc_command, ptr %2, i32 0, i32 3
  %126 = load i32, ptr %125, align 4
  %127 = and i32 %126, 1
  %128 = icmp eq i32 %127, 0
  %129 = and i32 %126, 2
  %130 = icmp eq i32 %129, 0
  %131 = select i1 %130, i32 64, i32 192
  %132 = select i1 %128, i32 0, i32 %131
  %133 = shl i32 %126, 6
  %134 = and i32 %133, 256
  %135 = or i32 %134, %124
  %136 = or i32 %135, %132
  %137 = load ptr, ptr %12, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %146, label %139

139:                                              ; preds = %123
  %140 = getelementptr inbounds %struct.mmc_data, ptr %137, i32 0, i32 6
  %141 = load i32, ptr %140, align 4
  %142 = and i32 %141, 256
  %143 = icmp eq i32 %142, 0
  %144 = select i1 %143, i32 512, i32 1536
  %145 = or i32 %144, %136
  br label %146

146:                                              ; preds = %139, %123
  %147 = phi i32 [ %136, %123 ], [ %145, %139 ]
  %148 = getelementptr inbounds %struct.mmc_host, ptr %80, i32 1, i32 1, i32 0, i32 5
  %149 = load volatile i32, ptr %148, align 4
  %150 = shl i32 %149, 26
  %151 = and i32 %150, 536870912
  %152 = xor i32 %151, 536870912
  %153 = or i32 %152, %147
  %154 = getelementptr inbounds %struct.dw_mci_slot, ptr %1, i32 0, i32 7
  %155 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %154) #11
  %156 = icmp eq i32 %155, 0
  %157 = or i32 %153, 32768
  %158 = select i1 %156, i32 %153, i32 %157
  br i1 %14, label %293, label %159

159:                                              ; preds = %146
  %160 = getelementptr inbounds %struct.mmc_data, ptr %13, i32 0, i32 5
  store i32 -115, ptr %160, align 4
  %161 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 10
  %162 = load ptr, ptr %161, align 8
  %163 = icmp eq ptr %162, null
  br i1 %163, label %165, label %164, !prof !11

164:                                              ; preds = %159
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1150, i32 noundef 9, ptr noundef null) #11
  br label %165

165:                                              ; preds = %164, %159
  %166 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 6
  store ptr null, ptr %166, align 8
  store ptr %13, ptr %161, align 8
  %167 = getelementptr inbounds %struct.mmc_data, ptr %13, i32 0, i32 6
  %168 = load i32, ptr %167, align 4
  %169 = and i32 %168, 512
  %170 = icmp eq i32 %169, 0
  %171 = select i1 %170, i32 1, i32 2
  store i32 %171, ptr %11, align 4
  %172 = getelementptr inbounds %struct.mmc_data, ptr %13, i32 0, i32 2
  %173 = load i32, ptr %172, align 4
  %174 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 35
  %175 = load i16, ptr %174, align 8
  %176 = icmp ult i16 %175, 9226
  br i1 %176, label %208, label %177

177:                                              ; preds = %165
  %178 = icmp ugt i16 %175, 10249
  %179 = load i32, ptr %167, align 4
  %180 = and i32 %179, 256
  %181 = icmp eq i32 %180, 0
  %182 = select i1 %178, i1 true, i1 %181
  br i1 %182, label %183, label %208

183:                                              ; preds = %177
  %184 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 13
  %185 = load i8, ptr %184, align 8
  br i1 %181, label %188, label %186

186:                                              ; preds = %183
  %187 = icmp eq i8 %185, 10
  br i1 %187, label %189, label %204

188:                                              ; preds = %183
  switch i8 %185, label %204 [
    i8 9, label %189
    i8 6, label %189
    i8 10, label %189
  ]

189:                                              ; preds = %188, %188, %188, %186
  %190 = phi i32 [ 1, %188 ], [ 1, %188 ], [ 1, %188 ], [ 4, %186 ]
  %191 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 44
  %192 = load i32, ptr %191, align 4
  %193 = lshr i32 %173, %192
  %194 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 43
  %195 = load i32, ptr %194, align 8
  %196 = icmp ugt i32 %193, %195
  br i1 %196, label %204, label %197

197:                                              ; preds = %189
  %198 = shl i32 %173, 16
  %199 = and i32 %198, 268369920
  %200 = or i32 %190, %199
  %201 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 2
  %202 = load ptr, ptr %201, align 8
  %203 = getelementptr i8, ptr %202, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %203, i32 %200) #11, !srcloc !10
  br label %208

204:                                              ; preds = %189, %188, %186
  %205 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 2
  %206 = load ptr, ptr %205, align 8
  %207 = getelementptr i8, ptr %206, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %207, i32 0) #11, !srcloc !10
  br label %208

208:                                              ; preds = %204, %197, %177, %165
  %209 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 15
  store i32 0, ptr %209, align 8
  %210 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 14
  %211 = load i32, ptr %210, align 4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %249, label %213

213:                                              ; preds = %208
  %214 = tail call fastcc i32 @dw_mci_pre_dma_transfer(ptr noundef %0, ptr noundef nonnull %13, i32 noundef 2) #11
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %213
  %217 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 19
  br label %244

218:                                              ; preds = %213
  store i32 1, ptr %209, align 8
  %219 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 12
  %220 = load i32, ptr %219, align 4
  %221 = load i32, ptr %172, align 4
  %222 = icmp eq i32 %220, %221
  br i1 %222, label %224, label %223

223:                                              ; preds = %218
  tail call fastcc void @dw_mci_adjust_fifoth(ptr noundef %0, ptr noundef nonnull %13) #11
  br label %224

224:                                              ; preds = %223, %218
  %225 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 2
  %226 = load ptr, ptr %225, align 8
  %227 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %226) #11, !srcloc !9
  %228 = or i32 %227, 32
  %229 = load ptr, ptr %225, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %229, i32 %228) #11, !srcloc !10
  %230 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 1
  %231 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %230) #11
  %232 = load ptr, ptr %225, align 8
  %233 = getelementptr i8, ptr %232, i32 36
  %234 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %233) #11, !srcloc !9
  %235 = and i32 %234, -49
  %236 = load ptr, ptr %225, align 8
  %237 = getelementptr i8, ptr %236, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %237, i32 %235) #11, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %230, i32 noundef %231) #11
  %238 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 19
  %239 = load ptr, ptr %238, align 8
  %240 = getelementptr inbounds %struct.dw_mci_dma_ops, ptr %239, i32 0, i32 1
  %241 = load ptr, ptr %240, align 4
  %242 = tail call i32 %241(ptr noundef %0, i32 noundef %214) #11
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %290, label %244

244:                                              ; preds = %224, %216
  %245 = phi ptr [ %217, %216 ], [ %238, %224 ]
  %246 = load ptr, ptr %245, align 8
  %247 = getelementptr inbounds %struct.dw_mci_dma_ops, ptr %246, i32 0, i32 3
  %248 = load ptr, ptr %247, align 4
  tail call void %248(ptr noundef %0) #11
  br label %249

249:                                              ; preds = %244, %208
  %250 = load ptr, ptr %161, align 8
  %251 = getelementptr inbounds %struct.mmc_data, ptr %250, i32 0, i32 6
  %252 = load i32, ptr %251, align 4
  %253 = and i32 %252, 512
  %254 = icmp eq i32 %253, 0
  %255 = select i1 %254, i32 5, i32 3
  %256 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 7
  %257 = getelementptr inbounds %struct.mmc_data, ptr %13, i32 0, i32 12
  %258 = load ptr, ptr %257, align 4
  %259 = getelementptr inbounds %struct.mmc_data, ptr %13, i32 0, i32 10
  %260 = load i32, ptr %259, align 4
  tail call void @sg_miter_start(ptr noundef %256, ptr noundef %258, i32 noundef %260, i32 noundef %255) #11
  %261 = load ptr, ptr %257, align 4
  store ptr %261, ptr %166, align 8
  %262 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 45
  store i8 0, ptr %262, align 8
  %263 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 46
  store i8 0, ptr %263, align 1
  %264 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 2
  %265 = load ptr, ptr %264, align 8
  %266 = getelementptr i8, ptr %265, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %266, i32 48) #11, !srcloc !10
  %267 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 1
  %268 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %267) #11
  %269 = load ptr, ptr %264, align 8
  %270 = getelementptr i8, ptr %269, i32 36
  %271 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %270) #11, !srcloc !9
  %272 = or i32 %271, 48
  %273 = load ptr, ptr %264, align 8
  %274 = getelementptr i8, ptr %273, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %274, i32 %272) #11, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %267, i32 noundef %268) #11
  %275 = load ptr, ptr %264, align 8
  %276 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %275) #11, !srcloc !9
  %277 = and i32 %276, -33
  %278 = load ptr, ptr %264, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %278, i32 %277) #11, !srcloc !10
  %279 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 5
  %280 = load i8, ptr %279, align 4, !range !25
  %281 = icmp eq i8 %280, 0
  br i1 %281, label %283, label %282

282:                                              ; preds = %249
  tail call fastcc void @dw_mci_adjust_fifoth(ptr noundef %0, ptr noundef nonnull %13) #11
  br label %288

283:                                              ; preds = %249
  %284 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 34
  %285 = load i32, ptr %284, align 4
  %286 = load ptr, ptr %264, align 8
  %287 = getelementptr i8, ptr %286, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %287, i32 %285) #11, !srcloc !10
  br label %288

288:                                              ; preds = %283, %282
  %289 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 12
  store i32 0, ptr %289, align 4
  br label %292

290:                                              ; preds = %224
  %291 = load i32, ptr %172, align 4
  store i32 %291, ptr %219, align 4
  br label %292

292:                                              ; preds = %290, %288
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !35
  tail call void @arm_heavy_mb() #11
  br label %293

293:                                              ; preds = %292, %146
  tail call fastcc void @dw_mci_start_command(ptr noundef %0, ptr noundef %2, i32 noundef %158)
  %294 = load i32, ptr %2, align 4
  %295 = icmp eq i32 %294, 11
  br i1 %295, label %296, label %308

296:                                              ; preds = %293
  %297 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 1
  %298 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %297) #11
  %299 = load volatile i32, ptr %7, align 4
  %300 = and i32 %299, 1
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %307

302:                                              ; preds = %296
  %303 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 55
  %304 = load volatile i32, ptr @jiffies, align 64
  %305 = add i32 %304, 51
  %306 = tail call i32 @mod_timer(ptr noundef %303, i32 noundef %305) #11
  br label %307

307:                                              ; preds = %302, %296
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %297, i32 noundef %298) #11
  br label %308

308:                                              ; preds = %307, %293
  %309 = load ptr, ptr %12, align 4
  %310 = icmp eq ptr %309, null
  br i1 %310, label %334, label %311

311:                                              ; preds = %308
  %312 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 11
  %313 = load i32, ptr %2, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(48) %312, i8 0, i32 48, i1 false) #11
  switch i32 %313, label %334 [
    i32 56, label %314
    i32 25, label %314
    i32 24, label %314
    i32 21, label %314
    i32 19, label %314
    i32 18, label %314
    i32 17, label %314
    i32 53, label %315
  ]

314:                                              ; preds = %311, %311, %311, %311, %311, %311, %311
  store i32 12, ptr %312, align 4
  br label %322

315:                                              ; preds = %311
  store i32 52, ptr %312, align 4
  %316 = getelementptr inbounds %struct.mmc_command, ptr %2, i32 0, i32 1
  %317 = load i32, ptr %316, align 4
  %318 = lshr i32 %317, 28
  %319 = and i32 %318, 7
  %320 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 11, i32 1
  %321 = or i32 %319, -2147480576
  store i32 %321, ptr %320, align 4
  br label %322

322:                                              ; preds = %315, %314
  %323 = phi i32 [ 405, %315 ], [ 29, %314 ]
  %324 = phi i32 [ 52, %315 ], [ 12, %314 ]
  %325 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 11, i32 3
  store i32 %323, ptr %325, align 4
  %326 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 42
  %327 = load ptr, ptr %326, align 4
  %328 = getelementptr inbounds %struct.dw_mci_slot, ptr %327, i32 0, i32 7
  %329 = load volatile i32, ptr %328, align 4
  %330 = and i32 %329, 8
  %331 = icmp eq i32 %330, 0
  %332 = select i1 %331, i32 536887616, i32 16704
  %333 = or i32 %332, %324
  br label %334

334:                                              ; preds = %322, %311, %308
  %335 = phi i32 [ %333, %322 ], [ 0, %308 ], [ 0, %311 ]
  %336 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 25
  store i32 %335, ptr %336, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dw_mci_request_end(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 42
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 10
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13, !prof !11

13:                                               ; preds = %9, %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1898, i32 noundef 9, ptr noundef null) #11
  %14 = load ptr, ptr %3, align 4
  br label %15

15:                                               ; preds = %13, %9
  %16 = phi ptr [ %14, %13 ], [ %4, %9 ]
  %17 = getelementptr inbounds %struct.dw_mci_slot, ptr %16, i32 0, i32 3
  store ptr null, ptr %17, align 4
  %18 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 8
  store ptr null, ptr %18, align 8
  %19 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 31
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %38, label %22

22:                                               ; preds = %15
  %23 = getelementptr i8, ptr %20, i32 -16
  %24 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %20, align 4
  %27 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  store ptr %25, ptr %27, align 4
  store volatile ptr %26, ptr %25, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %20, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %24, align 4
  %28 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 30
  store i32 1, ptr %28, align 8
  %29 = getelementptr i8, ptr %20, i32 -4
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.mmc_request, ptr %30, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  br label %36

36:                                               ; preds = %33, %22
  %37 = phi ptr [ %35, %33 ], [ %31, %22 ]
  tail call fastcc void @__dw_mci_start_request(ptr noundef %0, ptr noundef %23, ptr noundef %37) #11
  br label %44

38:                                               ; preds = %15
  %39 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 30
  %40 = load i32, ptr %39, align 8
  %41 = icmp eq i32 %40, 6
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 7, ptr %39, align 8
  br label %44

43:                                               ; preds = %38
  store i32 0, ptr %39, align 8
  br label %44

44:                                               ; preds = %43, %42, %36
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  %45 = load i16, ptr %0, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !19
  tail call void @mmc_request_done(ptr noundef %5, ptr noundef %1) #11
  tail call void @_raw_spin_lock(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dw_mci_set_drto(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 38
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dw_mci_drv_data, ptr %3, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call i32 %7(ptr noundef %0) #11
  br label %17

11:                                               ; preds = %5, %1
  %12 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr i8, ptr %13, i32 20
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #11, !srcloc !9
  %16 = lshr i32 %15, 8
  br label %17

17:                                               ; preds = %11, %9
  %18 = phi i32 [ %10, %9 ], [ %16, %11 ]
  %19 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr i8, ptr %20, i32 8
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #11, !srcloc !9
  %23 = shl i32 %22, 1
  %24 = and i32 %23, 510
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 1, i32 %24
  %27 = zext i32 %18 to i64
  %28 = mul nuw nsw i64 %27, 1000
  %29 = zext i32 %26 to i64
  %30 = mul nuw nsw i64 %28, %29
  %31 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 32
  %32 = load i32, ptr %31, align 4
  %33 = zext i32 %32 to i64
  %34 = add nsw i64 %33, -1
  %35 = add nsw i64 %34, %30
  %36 = icmp ult i64 %35, 4294967296
  br i1 %36, label %37, label %40, !prof !11

37:                                               ; preds = %17
  %38 = trunc i64 %35 to i32
  %39 = udiv i32 %38, %32
  br label %44

40:                                               ; preds = %17
  %41 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %32, i64 %35) #14, !srcloc !34
  %42 = extractvalue { i64, i64 } %41, 1
  %43 = trunc i64 %42 to i32
  br label %44

44:                                               ; preds = %40, %37
  %45 = phi i32 [ %39, %37 ], [ %43, %40 ]
  %46 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 1
  %47 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %46) #11
  %48 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 28
  %49 = load volatile i32, ptr %48, align 4
  %50 = and i32 %49, 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 57
  %54 = load volatile i32, ptr @jiffies, align 64
  %55 = add i32 %45, 10
  %56 = tail call i32 @__msecs_to_jiffies(i32 noundef %55) #11
  %57 = add i32 %56, %54
  %58 = tail call i32 @mod_timer(ptr noundef %53, i32 noundef %57) #11
  br label %59

59:                                               ; preds = %52, %44
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %46, i32 noundef %47) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dw_mci_reset(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 7
  tail call void @sg_miter_stop(ptr noundef %6) #11
  store ptr null, ptr %2, align 8
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 14
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 3, i32 7
  %12 = tail call fastcc zeroext i1 @dw_mci_ctrl_reset(ptr noundef %0, i32 noundef %11)
  %13 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  br i1 %12, label %15, label %45

15:                                               ; preds = %7
  %16 = getelementptr i8, ptr %14, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 -1) #11, !srcloc !10
  %17 = load i32, ptr %8, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %57, label %19

19:                                               ; preds = %15
  %20 = tail call i64 @ktime_get() #11
  %21 = add i64 %20, 500000000
  %22 = load ptr, ptr %13, align 8
  %23 = getelementptr i8, ptr %22, i32 72
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #11, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !36
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %43, label %26

26:                                               ; preds = %29, %19
  %27 = tail call i64 @ktime_get() #11
  %28 = icmp sgt i64 %27, %21
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748) #11
  %31 = load ptr, ptr %13, align 8
  %32 = getelementptr i8, ptr %31, i32 72
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #11, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !36
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %43, label %26

35:                                               ; preds = %26
  %36 = load ptr, ptr %13, align 8
  %37 = getelementptr i8, ptr %36, i32 72
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #11, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !37
  %39 = icmp sgt i32 %38, -1
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 36
  %42 = load ptr, ptr %41, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.dw_mci_reset) #12
  br label %57

43:                                               ; preds = %35, %29, %19
  %44 = tail call fastcc zeroext i1 @dw_mci_ctrl_reset(ptr noundef %0, i32 noundef 2)
  br i1 %44, label %52, label %57

45:                                               ; preds = %7
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #11, !srcloc !9
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 36
  %51 = load ptr, ptr %50, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.dw_mci_reset) #12
  br label %57

52:                                               ; preds = %45, %43
  %53 = load i32, ptr %8, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = tail call i32 @dw_mci_idmac_init(ptr noundef %0)
  br label %57

57:                                               ; preds = %55, %52, %49, %43, %40, %15
  %58 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 42
  %59 = load ptr, ptr %58, align 4
  tail call fastcc void @mci_send_cmd(ptr noundef %59, i32 noundef 2097152)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dw_mci_start_command(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 9
  store ptr %1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %8, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %6) #11, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !38
  tail call void @arm_heavy_mb() #11
  %10 = and i32 %2, 268443648
  %11 = icmp eq i32 %10, 8192
  br i1 %11, label %12, label %39

12:                                               ; preds = %3
  %13 = tail call i64 @ktime_get() #11
  %14 = add i64 %13, 500000000
  %15 = load ptr, ptr %7, align 8
  %16 = getelementptr i8, ptr %15, i32 72
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #11, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !39
  %18 = and i32 %17, 512
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %39, label %20

20:                                               ; preds = %23, %12
  %21 = tail call i64 @ktime_get() #11
  %22 = icmp sgt i64 %21, %14
  br i1 %22, label %30, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 2147480) #11
  %25 = load ptr, ptr %7, align 8
  %26 = getelementptr i8, ptr %25, i32 72
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #11, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !39
  %28 = and i32 %27, 512
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %39, label %20

30:                                               ; preds = %20
  %31 = load ptr, ptr %7, align 8
  %32 = getelementptr i8, ptr %31, i32 72
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #11, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !40
  %34 = and i32 %33, 512
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 36
  %38 = load ptr, ptr %37, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.43) #12
  br label %39

39:                                               ; preds = %36, %30, %23, %12, %3
  %40 = or i32 %2, -2147483648
  %41 = load ptr, ptr %7, align 8
  %42 = getelementptr i8, ptr %41, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #11, !srcloc !10
  %43 = and i32 %2, 64
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %90, label %45

45:                                               ; preds = %39
  %46 = load ptr, ptr %7, align 8
  %47 = getelementptr i8, ptr %46, i32 20
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #11, !srcloc !9
  %49 = and i32 %48, 255
  %50 = load ptr, ptr %7, align 8
  %51 = getelementptr i8, ptr %50, i32 8
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #11, !srcloc !9
  %53 = shl i32 %52, 1
  %54 = and i32 %53, 510
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %55, i32 1, i32 %54
  %57 = mul nuw nsw i32 %49, 1000
  %58 = mul nuw nsw i32 %57, %56
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 32
  %61 = load i32, ptr %60, align 4
  %62 = zext i32 %61 to i64
  %63 = add nsw i64 %62, -1
  %64 = add nsw i64 %63, %59
  %65 = icmp ult i64 %64, 4294967296
  br i1 %65, label %66, label %69, !prof !11

66:                                               ; preds = %45
  %67 = trunc i64 %64 to i32
  %68 = udiv i32 %67, %61
  br label %73

69:                                               ; preds = %45
  %70 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %61, i64 %64) #14, !srcloc !34
  %71 = extractvalue { i64, i64 } %70, 1
  %72 = trunc i64 %71 to i32
  br label %73

73:                                               ; preds = %69, %66
  %74 = phi i32 [ %68, %66 ], [ %72, %69 ]
  %75 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 1
  %76 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %75) #11
  %77 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 28
  %78 = load volatile i32, ptr %77, align 4
  %79 = and i32 %78, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %73
  %82 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 56
  %83 = load volatile i32, ptr @jiffies, align 64
  %84 = add i32 %74, 10
  %85 = tail call i32 @__msecs_to_jiffies(i32 noundef %84) #11
  %86 = add i32 %83, 1
  %87 = add i32 %86, %85
  %88 = tail call i32 @mod_timer(ptr noundef %82, i32 noundef %87) #11
  br label %89

89:                                               ; preds = %81, %73
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %75, i32 noundef %76) #11
  br label %90

90:                                               ; preds = %89, %39
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mci_send_cmd(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dw_mci_slot, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dw_mci, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #11, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !41
  tail call void @arm_heavy_mb() #11
  %8 = and i32 %1, 268443648
  %9 = icmp eq i32 %8, 8192
  br i1 %9, label %10, label %37

10:                                               ; preds = %2
  %11 = tail call i64 @ktime_get() #11
  %12 = add i64 %11, 500000000
  %13 = load ptr, ptr %5, align 8
  %14 = getelementptr i8, ptr %13, i32 72
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #11, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !39
  %16 = and i32 %15, 512
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %37, label %18

18:                                               ; preds = %21, %10
  %19 = tail call i64 @ktime_get() #11
  %20 = icmp sgt i64 %19, %12
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 2147480) #11
  %23 = load ptr, ptr %5, align 8
  %24 = getelementptr i8, ptr %23, i32 72
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #11, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !39
  %26 = and i32 %25, 512
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %37, label %18

28:                                               ; preds = %18
  %29 = load ptr, ptr %5, align 8
  %30 = getelementptr i8, ptr %29, i32 72
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #11, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !40
  %32 = and i32 %31, 512
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.dw_mci, ptr %4, i32 0, i32 36
  %36 = load ptr, ptr %35, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.43) #12
  br label %37

37:                                               ; preds = %34, %28, %21, %10, %2
  %38 = or i32 %1, -2147483648
  %39 = load ptr, ptr %5, align 8
  %40 = getelementptr i8, ptr %39, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #11, !srcloc !10
  %41 = tail call i64 @ktime_get() #11
  %42 = add i64 %41, 500000000
  %43 = load ptr, ptr %5, align 8
  %44 = getelementptr i8, ptr %43, i32 44
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #11, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !42
  %46 = icmp sgt i32 %45, -1
  br i1 %46, label %64, label %47

47:                                               ; preds = %50, %37
  %48 = tail call i64 @ktime_get() #11
  %49 = icmp sgt i64 %48, %42
  br i1 %49, label %56, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748) #11
  %52 = load ptr, ptr %5, align 8
  %53 = getelementptr i8, ptr %52, i32 44
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #11, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !42
  %55 = icmp sgt i32 %54, -1
  br i1 %55, label %64, label %47

56:                                               ; preds = %47
  %57 = load ptr, ptr %5, align 8
  %58 = getelementptr i8, ptr %57, i32 44
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #11, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !43
  %60 = icmp sgt i32 %59, -1
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = load ptr, ptr %0, align 4
  %63 = getelementptr inbounds %struct.mmc_host, ptr %62, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.42, i32 noundef %1, i32 noundef 0, i32 noundef %59) #12
  br label %64

64:                                               ; preds = %61, %56, %50, %37
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dw_mci_adjust_fifoth(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 44
  %6 = load i32, ptr %5, align 4
  %7 = lshr i32 %4, %6
  %8 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 14
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %73, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 43
  %13 = load i32, ptr %12, align 8
  %14 = sdiv i32 %13, 2
  %15 = sub i32 %13, %14
  %16 = shl nsw i32 -1, %6
  %17 = xor i32 %16, -1
  %18 = and i32 %4, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %64

20:                                               ; preds = %11
  %21 = and i32 %7, 255
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %15, 255
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %64, label %26

26:                                               ; preds = %20
  %27 = and i32 %7, 127
  %28 = icmp eq i32 %27, 0
  %29 = and i32 %15, 127
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %64, label %32

32:                                               ; preds = %26
  %33 = and i32 %7, 63
  %34 = icmp eq i32 %33, 0
  %35 = and i32 %15, 63
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %34, i1 %36, i1 false
  br i1 %37, label %64, label %38

38:                                               ; preds = %32
  %39 = and i32 %7, 31
  %40 = icmp eq i32 %39, 0
  %41 = and i32 %15, 31
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %64, label %44

44:                                               ; preds = %38
  %45 = and i32 %7, 15
  %46 = icmp eq i32 %45, 0
  %47 = and i32 %15, 15
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %46, i1 %48, i1 false
  br i1 %49, label %64, label %50

50:                                               ; preds = %44
  %51 = and i32 %7, 7
  %52 = icmp eq i32 %51, 0
  %53 = and i32 %15, 7
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %52, i1 %54, i1 false
  br i1 %55, label %64, label %56

56:                                               ; preds = %50
  %57 = and i32 %7, 3
  %58 = icmp eq i32 %57, 0
  %59 = and i32 %15, 3
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %58, i1 %60, i1 false
  %62 = select i1 %61, i32 268435456, i32 0
  %63 = select i1 %61, i32 196608, i32 65536
  br label %64

64:                                               ; preds = %56, %50, %44, %38, %32, %26, %20, %11
  %65 = phi i32 [ 0, %11 ], [ 1879048192, %20 ], [ 1610612736, %26 ], [ 1342177280, %32 ], [ 1073741824, %38 ], [ 805306368, %44 ], [ 536870912, %50 ], [ %62, %56 ]
  %66 = phi i32 [ 65536, %11 ], [ 16711680, %20 ], [ 8323072, %26 ], [ 4128768, %32 ], [ 2031616, %38 ], [ 983040, %44 ], [ 458752, %50 ], [ %63, %56 ]
  %67 = and i32 %14, 4095
  %68 = or i32 %66, %67
  %69 = or i32 %68, %65
  %70 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 2
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr i8, ptr %71, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %69) #11, !srcloc !10
  br label %73

73:                                               ; preds = %64, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dw_mci_pre_dma_transfer(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 13
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  br label %58

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = mul i32 %14, %12
  %16 = icmp ugt i32 %15, 15
  %17 = and i32 %14, 3
  %18 = icmp eq i32 %17, 0
  %19 = and i1 %16, %18
  br i1 %19, label %20, label %58

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 12
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 10
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %45, label %26

26:                                               ; preds = %38, %20
  %27 = phi i32 [ %39, %38 ], [ 0, %20 ]
  %28 = phi ptr [ %40, %38 ], [ %22, %20 ]
  %29 = getelementptr inbounds %struct.scatterlist, ptr %28, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 3
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %58

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.scatterlist, ptr %28, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 3
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %33
  %39 = add nuw i32 %27, 1
  %40 = tail call ptr @sg_next(ptr noundef %28) #11
  %41 = load i32, ptr %23, align 4
  %42 = icmp ult i32 %39, %41
  br i1 %42, label %26, label %43

43:                                               ; preds = %38
  %44 = load ptr, ptr %21, align 4
  br label %45

45:                                               ; preds = %43, %20
  %46 = phi ptr [ %22, %20 ], [ %44, %43 ]
  %47 = phi i32 [ 0, %20 ], [ %41, %43 ]
  %48 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 36
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 6
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, 256
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, i32 2, i32 1
  %55 = tail call i32 @dma_map_sg_attrs(ptr noundef %49, ptr noundef %46, i32 noundef %47, i32 noundef %54, i32 noundef 0) #11
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %45
  store i32 %2, ptr %4, align 4
  br label %58

58:                                               ; preds = %57, %45, %33, %26, %10, %7
  %59 = phi i32 [ %9, %7 ], [ %55, %57 ], [ -22, %10 ], [ -22, %45 ], [ -22, %33 ], [ -22, %26 ]
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_request_done(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dw_mci_read_data_pio(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 7
  %4 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 44
  %7 = load i32, ptr %6, align 4
  %8 = tail call zeroext i1 @sg_miter_next(ptr noundef %3) #11
  br i1 %8, label %9, label %89

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 7, i32 4
  %11 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 6
  %12 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 7, i32 1
  %13 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 7, i32 2
  %14 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 2
  %15 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 46
  %16 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 47
  %17 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 45
  %18 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 49
  %19 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 7
  %20 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 7, i32 3
  br label %21

21:                                               ; preds = %81, %9
  %22 = load ptr, ptr %10, align 4
  store ptr %22, ptr %11, align 8
  %23 = load ptr, ptr %12, align 4
  %24 = load i32, ptr %13, align 4
  br label %25

25:                                               ; preds = %58, %21
  %26 = phi i32 [ %24, %21 ], [ %62, %58 ]
  %27 = phi i32 [ 0, %21 ], [ %61, %58 ]
  %28 = load ptr, ptr %14, align 8
  %29 = getelementptr i8, ptr %28, i32 72
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #11, !srcloc !9
  %31 = lshr i32 %30, 17
  %32 = and i32 %31, 8191
  %33 = shl i32 %32, %7
  %34 = load i8, ptr %15, align 1
  %35 = zext i8 %34 to i32
  %36 = add i32 %33, %35
  %37 = tail call i32 @llvm.umin.i32(i32 %26, i32 %36)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %64, label %39

39:                                               ; preds = %25
  %40 = getelementptr i8, ptr %23, i32 %27
  %41 = tail call i32 @llvm.smin.i32(i32 %35, i32 %37) #11
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %39
  %44 = load i8, ptr %17, align 8
  %45 = zext i8 %44 to i32
  %46 = getelementptr i8, ptr %16, i32 %45
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %40, ptr align 1 %46, i32 %41, i1 false) #11
  %47 = load i8, ptr %15, align 1
  %48 = trunc i32 %41 to i8
  %49 = sub i8 %47, %48
  store i8 %49, ptr %15, align 1
  %50 = load i8, ptr %17, align 8
  %51 = add i8 %50, %48
  store i8 %51, ptr %17, align 8
  br label %52

52:                                               ; preds = %43, %39
  %53 = icmp sgt i32 %37, %35
  br i1 %53, label %54, label %58, !prof !11

54:                                               ; preds = %52
  %55 = getelementptr i8, ptr %40, i32 %41
  %56 = sub i32 %37, %41
  %57 = load ptr, ptr %18, align 4
  tail call void %57(ptr noundef %0, ptr noundef %55, i32 noundef %56) #11
  br label %58

58:                                               ; preds = %54, %52
  %59 = load i32, ptr %19, align 4
  %60 = add i32 %59, %37
  store i32 %60, ptr %19, align 4
  %61 = add i32 %37, %27
  %62 = sub i32 %26, %37
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %25

64:                                               ; preds = %58, %25
  %65 = phi i32 [ 0, %58 ], [ %26, %25 ]
  %66 = phi i32 [ %61, %58 ], [ %27, %25 ]
  store i32 %66, ptr %20, align 4
  %67 = load ptr, ptr %14, align 8
  %68 = getelementptr i8, ptr %67, i32 64
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #11, !srcloc !9
  %70 = load ptr, ptr %14, align 8
  %71 = getelementptr i8, ptr %70, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 32) #11, !srcloc !10
  %72 = and i32 %69, 32
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %64
  br i1 %1, label %75, label %83

75:                                               ; preds = %74
  %76 = load ptr, ptr %14, align 8
  %77 = getelementptr i8, ptr %76, i32 72
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #11, !srcloc !9
  %79 = and i32 %78, 1073610752
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %75, %64
  %82 = tail call zeroext i1 @sg_miter_next(ptr noundef %3) #11
  br i1 %82, label %21, label %89

83:                                               ; preds = %75, %74
  %84 = icmp eq i32 %65, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %83
  %86 = tail call zeroext i1 @sg_miter_next(ptr noundef %3) #11
  br i1 %86, label %87, label %89

87:                                               ; preds = %85
  store i32 0, ptr %20, align 4
  br label %88

88:                                               ; preds = %87, %83
  tail call void @sg_miter_stop(ptr noundef %3) #11
  br label %92

89:                                               ; preds = %85, %81, %2
  tail call void @sg_miter_stop(ptr noundef %3) #11
  %90 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 6
  store ptr null, ptr %90, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !44
  %91 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 28
  tail call void @_set_bit(i32 noundef 1, ptr noundef %91) #11
  br label %92

92:                                               ; preds = %89, %88
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_signal_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sg_miter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_detect_change(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_alloc_host(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_get_supply(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mci_get_cd(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %3 = getelementptr inbounds %struct.dw_mci_slot, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @mmc_gpio_get_cd(ptr noundef %0) #11
  %6 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 5
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %49

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 5
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %49

23:                                               ; preds = %18, %13
  %24 = phi ptr [ @.str.49, %18 ], [ @.str.50, %13 ]
  %25 = phi ptr [ %19, %18 ], [ %14, %13 ]
  %26 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %26, ptr noundef nonnull %24) #12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %25) #11
  br label %49

27:                                               ; preds = %10
  %28 = icmp sgt i32 %5, -1
  br i1 %28, label %40, label %29

29:                                               ; preds = %27
  %30 = load ptr, ptr %3, align 4
  %31 = getelementptr inbounds %struct.dw_mci, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr i8, ptr %32, i32 80
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #11, !srcloc !9
  %35 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = xor i32 %34, -1
  %38 = lshr i32 %37, %36
  %39 = and i32 %38, 1
  br label %40

40:                                               ; preds = %29, %27
  %41 = phi i32 [ %39, %29 ], [ %5, %27 ]
  tail call void @_raw_spin_lock_bh(ptr noundef %4) #11
  %42 = icmp eq i32 %41, 0
  %43 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 5
  br i1 %42, label %46, label %44

44:                                               ; preds = %40
  %45 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %43) #11
  br label %48

46:                                               ; preds = %40
  %47 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %43) #11
  br label %48

48:                                               ; preds = %46, %44
  tail call void @_raw_spin_unlock_bh(ptr noundef %4) #11
  br label %49

49:                                               ; preds = %48, %23, %18, %13
  %50 = phi i32 [ %41, %48 ], [ 1, %23 ], [ 1, %13 ], [ 1, %18 ]
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dw_mci_init_debugfs(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.mmc_host, ptr %2, i32 0, i32 55
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.dw_mci_slot, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.51, i16 noundef zeroext 256, ptr noundef nonnull %4, ptr noundef %8, ptr noundef nonnull @dw_mci_regs_fops) #11
  %10 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.52, i16 noundef zeroext 256, ptr noundef nonnull %4, ptr noundef %0, ptr noundef nonnull @dw_mci_req_fops) #11
  %11 = getelementptr inbounds %struct.dw_mci, ptr %8, i32 0, i32 30
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.53, i16 noundef zeroext 256, ptr noundef nonnull %4, ptr noundef %11) #11
  %12 = getelementptr inbounds %struct.dw_mci, ptr %8, i32 0, i32 28
  tail call void @debugfs_create_x32(ptr noundef nonnull @.str.54, i16 noundef zeroext 256, ptr noundef nonnull %4, ptr noundef %12) #11
  %13 = getelementptr inbounds %struct.dw_mci, ptr %8, i32 0, i32 29
  tail call void @debugfs_create_x32(ptr noundef nonnull @.str.55, i16 noundef zeroext 256, ptr noundef nonnull %4, ptr noundef %13) #11
  br label %14

14:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_free_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_mci_post_req(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %5 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dw_mci_slot, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dw_mci, ptr %8, i32 0, i32 14
  %10 = load i32, ptr %9, align 4
  %11 = icmp ne i32 %10, 0
  %12 = icmp ne ptr %6, null
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %14, label %31

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 13
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.dw_mci, ptr %8, i32 0, i32 36
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 12
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 10
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 256
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %20, ptr noundef %22, i32 noundef %24, i32 noundef %29, i32 noundef 0) #11
  br label %30

30:                                               ; preds = %18, %14
  store i32 0, ptr %15, align 4
  br label %31

31:                                               ; preds = %30, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_mci_pre_req(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %4 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dw_mci_slot, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dw_mci, ptr %7, i32 0, i32 14
  %9 = load i32, ptr %8, align 4
  %10 = icmp ne i32 %9, 0
  %11 = icmp ne ptr %5, null
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 13
  store i32 0, ptr %14, align 4
  %15 = load ptr, ptr %6, align 4
  %16 = load ptr, ptr %4, align 4
  %17 = tail call fastcc i32 @dw_mci_pre_dma_transfer(ptr noundef %15, ptr noundef %16, i32 noundef 1)
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 0, ptr %14, align 4
  br label %20

20:                                               ; preds = %19, %13, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_mci_request(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %4 = getelementptr inbounds %struct.dw_mci_slot, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9, !prof !11

9:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1422, i32 noundef 9, ptr noundef null) #11
  br label %10

10:                                               ; preds = %9, %2
  %11 = tail call i32 @dw_mci_get_cd(ptr noundef %0)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.mmc_command, ptr %15, i32 0, i32 5
  store i32 -123, ptr %16, align 4
  tail call void @mmc_request_done(ptr noundef %0, ptr noundef %1) #11
  br label %39

17:                                               ; preds = %10
  tail call void @_raw_spin_lock_bh(ptr noundef %5) #11
  store ptr %1, ptr %6, align 4
  %18 = getelementptr inbounds %struct.dw_mci, ptr %5, i32 0, i32 30
  %19 = load i32, ptr %18, align 8
  switch i32 %19, label %32 [
    i32 7, label %20
    i32 0, label %23
  ]

20:                                               ; preds = %17
  %21 = load ptr, ptr %3, align 4
  %22 = getelementptr inbounds %struct.mmc_host, ptr %21, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.46) #12
  br label %23

23:                                               ; preds = %20, %17
  store i32 1, ptr %18, align 8
  %24 = load ptr, ptr %6, align 4
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.mmc_request, ptr %24, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  br label %30

30:                                               ; preds = %27, %23
  %31 = phi ptr [ %29, %27 ], [ %25, %23 ]
  tail call fastcc void @__dw_mci_start_request(ptr noundef %5, ptr noundef %3, ptr noundef %31) #11
  br label %38

32:                                               ; preds = %17
  %33 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %34 = getelementptr inbounds %struct.dw_mci, ptr %5, i32 0, i32 31
  %35 = getelementptr inbounds %struct.dw_mci, ptr %5, i32 0, i32 31, i32 1
  %36 = load ptr, ptr %35, align 4
  store ptr %33, ptr %35, align 4
  store ptr %34, ptr %33, align 4
  %37 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 2
  store ptr %36, ptr %37, align 4
  store volatile ptr %33, ptr %36, align 4
  br label %38

38:                                               ; preds = %32, %30
  tail call void @_raw_spin_unlock_bh(ptr noundef %5) #11
  br label %39

39:                                               ; preds = %38, %13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mci_get_ro(ptr noundef %0) #0 {
  %2 = tail call i32 @mmc_gpio_get_ro(ptr noundef %0) #11
  %3 = icmp sgt i32 %2, -1
  br i1 %3, label %16, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %6 = getelementptr inbounds %struct.dw_mci_slot, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dw_mci, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr i8, ptr %9, i32 84
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #11, !srcloc !9
  %12 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = lshr i32 %11, %13
  %15 = and i32 %14, 1
  br label %16

16:                                               ; preds = %4, %1
  %17 = phi i32 [ %15, %4 ], [ %2, %1 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_mci_enable_sdio_irq(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %4 = getelementptr inbounds %struct.dw_mci_slot, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq i32 %1, 0
  %7 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = shl i32 65536, %8
  %10 = getelementptr inbounds %struct.dw_mci, ptr %5, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr i8, ptr %11, i32 16
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #11, !srcloc !9
  %14 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 5
  br i1 %6, label %18, label %15

15:                                               ; preds = %2
  tail call void @_set_bit(i32 noundef 2, ptr noundef %14) #11
  %16 = xor i32 %9, -1
  %17 = and i32 %13, %16
  br label %20

18:                                               ; preds = %2
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %14) #11
  %19 = or i32 %13, %9
  br label %20

20:                                               ; preds = %18, %15
  %21 = phi i32 [ %17, %15 ], [ %19, %18 ]
  %22 = icmp eq i32 %21, %13
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %10, align 8
  %25 = getelementptr i8, ptr %24, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %21) #11, !srcloc !10
  tail call fastcc void @mci_send_cmd(ptr noundef %3, i32 noundef 2105344) #11
  br label %26

26:                                               ; preds = %23, %20
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr inbounds %struct.dw_mci, ptr %27, i32 0, i32 1
  %29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %28) #11
  %30 = getelementptr inbounds %struct.dw_mci, ptr %27, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr i8, ptr %31, i32 36
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #11, !srcloc !9
  %34 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 7
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, 16
  %37 = shl nuw i32 1, %36
  %38 = or i32 %37, %33
  %39 = xor i32 %37, -1
  %40 = and i32 %33, %39
  %41 = select i1 %6, i32 %40, i32 %38
  %42 = load ptr, ptr %30, align 8
  %43 = getelementptr i8, ptr %42, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #11, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %28, i32 noundef %29) #11
  %44 = getelementptr inbounds %struct.dw_mci, ptr %5, i32 0, i32 36
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.device, ptr %45, i32 0, i32 11, i32 13
  br i1 %6, label %49, label %47

47:                                               ; preds = %26
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %46) #11, !srcloc !45
  %48 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %46, ptr %46, i32 1, ptr elementtype(i32) %46) #11, !srcloc !46
  br label %54

49:                                               ; preds = %26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !47
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %46) #11, !srcloc !45
  %50 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %46, ptr %46, i32 0, i32 -1, ptr elementtype(i32) %46) #11, !srcloc !48
  %51 = extractvalue { i32, i32, i32 } %50, 0
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !49
  br label %54

54:                                               ; preds = %53, %49, %47
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_mci_ack_sdio_irq(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %3 = getelementptr inbounds %struct.dw_mci_slot, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dw_mci, ptr %4, i32 0, i32 1
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #11
  %7 = getelementptr inbounds %struct.dw_mci, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %8, i32 36
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #11, !srcloc !9
  %11 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, 16
  %14 = shl nuw i32 1, %13
  %15 = or i32 %14, %10
  %16 = load ptr, ptr %7, align 8
  %17 = getelementptr i8, ptr %16, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #11, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mci_switch_voltage(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %4 = getelementptr inbounds %struct.dw_mci_slot, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dw_mci, ptr %5, i32 0, i32 38
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = shl nuw i32 1, %9
  %11 = icmp eq ptr %7, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.dw_mci_drv_data, ptr %7, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call i32 %14(ptr noundef %0, ptr noundef %1) #11
  br label %39

18:                                               ; preds = %12, %2
  %19 = getelementptr inbounds %struct.dw_mci, ptr %5, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr i8, ptr %20, i32 116
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #11, !srcloc !9
  %23 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 8
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %24, 0
  %26 = xor i32 %10, -1
  %27 = and i32 %22, %26
  %28 = or i32 %22, %10
  %29 = select i1 %25, i32 %27, i32 %28
  %30 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 54, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %36, label %33

33:                                               ; preds = %18
  %34 = tail call i32 @mmc_regulator_set_vqmmc(ptr noundef %0, ptr noundef %1) #11
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33, %18
  %37 = load ptr, ptr %19, align 8
  %38 = getelementptr i8, ptr %37, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %29) #11, !srcloc !10
  br label %39

39:                                               ; preds = %36, %33, %16
  %40 = phi i32 [ %17, %16 ], [ 0, %36 ], [ %34, %33 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mci_card_busy(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %3 = getelementptr inbounds %struct.dw_mci_slot, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dw_mci, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 72
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #11, !srcloc !9
  %9 = lshr i32 %8, 9
  %10 = and i32 %9, 1
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mci_execute_tuning(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %4 = getelementptr inbounds %struct.dw_mci_slot, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dw_mci, ptr %5, i32 0, i32 38
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.dw_mci_drv_data, ptr %7, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call i32 %11(ptr noundef %3, i32 noundef %1) #11
  br label %15

15:                                               ; preds = %13, %9, %2
  %16 = phi i32 [ %14, %13 ], [ -22, %9 ], [ -22, %2 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mci_prepare_hs400_tuning(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %4 = getelementptr inbounds %struct.dw_mci_slot, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dw_mci, ptr %5, i32 0, i32 38
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.dw_mci_drv_data, ptr %7, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call i32 %11(ptr noundef %5, ptr noundef %1) #11
  br label %15

15:                                               ; preds = %13, %9, %2
  %16 = phi i32 [ %14, %13 ], [ 0, %9 ], [ 0, %2 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_mci_hw_reset(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %3 = getelementptr inbounds %struct.dw_mci_slot, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dw_mci, ptr %4, i32 0, i32 14
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dw_mci, ptr %4, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr i8, ptr %10, i32 128
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #11, !srcloc !9
  %13 = or i32 %12, 1
  %14 = load ptr, ptr %9, align 8
  %15 = getelementptr i8, ptr %14, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #11, !srcloc !10
  br label %16

16:                                               ; preds = %8, %1
  %17 = tail call fastcc zeroext i1 @dw_mci_ctrl_reset(ptr noundef %4, i32 noundef 6)
  br i1 %17, label %18, label %35

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.dw_mci, ptr %4, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr i8, ptr %20, i32 120
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #11, !srcloc !9
  %23 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = shl nuw i32 1, %24
  %26 = xor i32 %25, -1
  %27 = and i32 %22, %26
  %28 = load ptr, ptr %19, align 8
  %29 = getelementptr i8, ptr %28, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #11, !srcloc !10
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #11
  %30 = load i32, ptr %23, align 4
  %31 = shl nuw i32 1, %30
  %32 = or i32 %31, %27
  %33 = load ptr, ptr %19, align 8
  %34 = getelementptr i8, ptr %33, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #11, !srcloc !10
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #11
  br label %35

35:                                               ; preds = %18, %16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_ro(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_set_vqmmc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_cd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mci_regs_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @dw_mci_regs_show, ptr noundef %4) #11
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mci_regs_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dw_mci, ptr %4, i32 0, i32 36
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #11
  %8 = getelementptr inbounds %struct.dw_mci, ptr %4, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr i8, ptr %9, i32 72
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #11, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.56, i32 noundef %11) #11
  %12 = load ptr, ptr %8, align 8
  %13 = getelementptr i8, ptr %12, i32 68
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #11, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.57, i32 noundef %14) #11
  %15 = load ptr, ptr %8, align 8
  %16 = getelementptr i8, ptr %15, i32 44
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #11, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.58, i32 noundef %17) #11
  %18 = load ptr, ptr %8, align 8
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #11, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.59, i32 noundef %19) #11
  %20 = load ptr, ptr %8, align 8
  %21 = getelementptr i8, ptr %20, i32 36
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #11, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.60, i32 noundef %22) #11
  %23 = load ptr, ptr %8, align 8
  %24 = getelementptr i8, ptr %23, i32 16
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #11, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.61, i32 noundef %25) #11
  %26 = load ptr, ptr %5, align 4
  %27 = tail call i32 @__pm_runtime_suspend(ptr noundef %26, i32 noundef 13) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mci_req_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @dw_mci_req_show, ptr noundef %4) #11
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mci_req_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dw_mci_slot, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef %6) #11
  %7 = getelementptr inbounds %struct.dw_mci_slot, ptr %4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %61, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.mmc_request, ptr %8, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.mmc_request, ptr %8, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.mmc_request, ptr %8, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %12, null
  br i1 %17, label %32, label %18

18:                                               ; preds = %10
  %19 = load i32, ptr %12, align 4
  %20 = getelementptr inbounds %struct.mmc_command, ptr %12, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.mmc_command, ptr %12, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.mmc_command, ptr %12, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr %struct.mmc_command, ptr %12, i32 0, i32 2, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr %struct.mmc_command, ptr %12, i32 0, i32 2, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.mmc_command, ptr %12, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.62, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %29, i32 noundef %31) #11
  br label %32

32:                                               ; preds = %18, %10
  %33 = icmp eq ptr %14, null
  br i1 %33, label %45, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.mmc_data, ptr %14, i32 0, i32 7
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.mmc_data, ptr %14, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.mmc_data, ptr %14, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.mmc_data, ptr %14, i32 0, i32 6
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.mmc_data, ptr %14, i32 0, i32 5
  %44 = load i32, ptr %43, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.63, i32 noundef %36, i32 noundef %38, i32 noundef %40, i32 noundef %42, i32 noundef %44) #11
  br label %45

45:                                               ; preds = %34, %32
  %46 = icmp eq ptr %16, null
  br i1 %46, label %61, label %47

47:                                               ; preds = %45
  %48 = load i32, ptr %16, align 4
  %49 = getelementptr inbounds %struct.mmc_command, ptr %16, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.mmc_command, ptr %16, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.mmc_command, ptr %16, i32 0, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr %struct.mmc_command, ptr %16, i32 0, i32 2, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr %struct.mmc_command, ptr %16, i32 0, i32 2, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.mmc_command, ptr %16, i32 0, i32 5
  %60 = load i32, ptr %59, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.62, i32 noundef %48, i32 noundef %50, i32 noundef %52, i32 noundef %54, i32 noundef %56, i32 noundef %58, i32 noundef %58, i32 noundef %60) #11
  br label %61

61:                                               ; preds = %47, %45, %2
  %62 = load ptr, ptr %5, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %62) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_x32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_set_ocr(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind readnone }

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
!9 = !{i64 4783329}
!10 = !{i64 4782911}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 4782291}
!13 = !{i64 4782491}
!14 = !{i64 2154298646}
!15 = !{i64 2154298983}
!16 = !{i64 2149296715}
!17 = !{i64 2149292539}
!18 = !{i64 2149292614, i64 2149292641, i64 2149292688, i64 2149292710, i64 2149292738, i64 2149292758}
!19 = !{i64 2149319718}
!20 = !{i64 2154418585}
!21 = !{i64 2154421093}
!22 = !{i64 2154423447}
!23 = !{i64 2154424403}
!24 = !{i64 2154418311}
!25 = !{i8 0, i8 2}
!26 = !{i64 2154330550}
!27 = !{i64 2154330866}
!28 = !{i64 2154335439}
!29 = !{i64 2154335755}
!30 = !{i64 2154338426}
!31 = !{i64 2154339214}
!32 = !{i64 1219281, i64 1219308, i64 1219330, i64 1219358}
!33 = !{i64 1219689, i64 1219716, i64 1219749, i64 1219770, i64 1219797, i64 1219823}
!34 = !{i64 2148704825, i64 2148705105, i64 2148705439, i64 2148705773}
!35 = !{i64 2154369551}
!36 = !{i64 2154383146}
!37 = !{i64 2154383483}
!38 = !{i64 2154318717}
!39 = !{i64 2154302404}
!40 = !{i64 2154302741}
!41 = !{i64 2154304208}
!42 = !{i64 2154306621}
!43 = !{i64 2154306958}
!44 = !{i64 2154415564}
!45 = !{i64 648502, i64 2148150068, i64 2148150094, i64 2148150141, i64 2148150163, i64 2148150191, i64 2148150211}
!46 = !{i64 2148213330, i64 2148213356, i64 2148213385, i64 2148213419, i64 2148213450, i64 2148213473}
!47 = !{i64 2148212837}
!48 = !{i64 635071, i64 635096, i64 635118, i64 635134, i64 635146, i64 635166, i64 635190, i64 635206, i64 635218}
!49 = !{i64 2148212963}
