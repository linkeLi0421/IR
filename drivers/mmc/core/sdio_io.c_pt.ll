; ModuleID = '/llk/IR/drivers/mmc/core/sdio_io.c_pt.bc'
source_filename = "../drivers/mmc/core/sdio_io.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdio_claim_host:\09\09\09\09\09"
module asm "\09.asciz \09\22sdio_claim_host\22\09\09\09\09\09"
module asm "__kstrtabns_sdio_claim_host:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdio_release_host:\09\09\09\09\09"
module asm "\09.asciz \09\22sdio_release_host\22\09\09\09\09\09"
module asm "__kstrtabns_sdio_release_host:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdio_enable_func:\09\09\09\09\09"
module asm "\09.asciz \09\22sdio_enable_func\22\09\09\09\09\09"
module asm "__kstrtabns_sdio_enable_func:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdio_disable_func:\09\09\09\09\09"
module asm "\09.asciz \09\22sdio_disable_func\22\09\09\09\09\09"
module asm "__kstrtabns_sdio_disable_func:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdio_set_block_size:\09\09\09\09\09"
module asm "\09.asciz \09\22sdio_set_block_size\22\09\09\09\09\09"
module asm "__kstrtabns_sdio_set_block_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdio_align_size:\09\09\09\09\09"
module asm "\09.asciz \09\22sdio_align_size\22\09\09\09\09\09"
module asm "__kstrtabns_sdio_align_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdio_readb:\09\09\09\09\09"
module asm "\09.asciz \09\22sdio_readb\22\09\09\09\09\09"
module asm "__kstrtabns_sdio_readb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdio_writeb:\09\09\09\09\09"
module asm "\09.asciz \09\22sdio_writeb\22\09\09\09\09\09"
module asm "__kstrtabns_sdio_writeb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdio_writeb_readb:\09\09\09\09\09"
module asm "\09.asciz \09\22sdio_writeb_readb\22\09\09\09\09\09"
module asm "__kstrtabns_sdio_writeb_readb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdio_memcpy_fromio:\09\09\09\09\09"
module asm "\09.asciz \09\22sdio_memcpy_fromio\22\09\09\09\09\09"
module asm "__kstrtabns_sdio_memcpy_fromio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdio_memcpy_toio:\09\09\09\09\09"
module asm "\09.asciz \09\22sdio_memcpy_toio\22\09\09\09\09\09"
module asm "__kstrtabns_sdio_memcpy_toio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdio_readsb:\09\09\09\09\09"
module asm "\09.asciz \09\22sdio_readsb\22\09\09\09\09\09"
module asm "__kstrtabns_sdio_readsb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdio_writesb:\09\09\09\09\09"
module asm "\09.asciz \09\22sdio_writesb\22\09\09\09\09\09"
module asm "__kstrtabns_sdio_writesb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdio_readw:\09\09\09\09\09"
module asm "\09.asciz \09\22sdio_readw\22\09\09\09\09\09"
module asm "__kstrtabns_sdio_readw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdio_writew:\09\09\09\09\09"
module asm "\09.asciz \09\22sdio_writew\22\09\09\09\09\09"
module asm "__kstrtabns_sdio_writew:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdio_readl:\09\09\09\09\09"
module asm "\09.asciz \09\22sdio_readl\22\09\09\09\09\09"
module asm "__kstrtabns_sdio_readl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdio_writel:\09\09\09\09\09"
module asm "\09.asciz \09\22sdio_writel\22\09\09\09\09\09"
module asm "__kstrtabns_sdio_writel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdio_f0_readb:\09\09\09\09\09"
module asm "\09.asciz \09\22sdio_f0_readb\22\09\09\09\09\09"
module asm "__kstrtabns_sdio_f0_readb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdio_f0_writeb:\09\09\09\09\09"
module asm "\09.asciz \09\22sdio_f0_writeb\22\09\09\09\09\09"
module asm "__kstrtabns_sdio_f0_writeb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdio_get_host_pm_caps:\09\09\09\09\09"
module asm "\09.asciz \09\22sdio_get_host_pm_caps\22\09\09\09\09\09"
module asm "__kstrtabns_sdio_get_host_pm_caps:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdio_set_host_pm_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22sdio_set_host_pm_flags\22\09\09\09\09\09"
module asm "__kstrtabns_sdio_set_host_pm_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdio_retune_crc_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22sdio_retune_crc_disable\22\09\09\09\09\09"
module asm "__kstrtabns_sdio_retune_crc_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdio_retune_crc_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22sdio_retune_crc_enable\22\09\09\09\09\09"
module asm "__kstrtabns_sdio_retune_crc_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdio_retune_hold_now:\09\09\09\09\09"
module asm "\09.asciz \09\22sdio_retune_hold_now\22\09\09\09\09\09"
module asm "__kstrtabns_sdio_retune_hold_now:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdio_retune_release:\09\09\09\09\09"
module asm "\09.asciz \09\22sdio_retune_release\22\09\09\09\09\09"
module asm "__kstrtabns_sdio_retune_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sdio_func = type { ptr, %struct.device, ptr, i32, i8, i16, i16, i32, i32, i32, i32, ptr, i8, i8, i32, ptr, ptr }
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
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, [37 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mmc_supply = type { ptr, ptr }
%struct.mmc_card = type { ptr, %struct.device, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i8, [4 x i32], [4 x i32], [2 x i32], [16 x i32], %struct.mmc_cid, %struct.mmc_csd, %struct.mmc_ext_csd, %struct.sd_scr, %struct.sd_ssr, %struct.sd_switch_caps, %struct.sd_ext_reg, %struct.sd_ext_reg, i32, %struct.atomic_t, %struct.sdio_cccr, %struct.sdio_cis, [7 x ptr], ptr, i8, i8, i32, ptr, ptr, i32, i32, i32, ptr, [7 x %struct.mmc_part], i32, ptr }
%struct.mmc_cid = type { i32, [8 x i8], i8, i32, i16, i16, i8, i8, i8 }
%struct.mmc_csd = type { i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.mmc_ext_csd = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i8, i8, i32, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, i32 }
%struct.sd_scr = type { i8, i8, i8, i8, i8, i8 }
%struct.sd_ssr = type { i32, i32, i32 }
%struct.sd_switch_caps = type { i32, i32, i32, i32, i32 }
%struct.sd_ext_reg = type { i8, i8, i16, i8, i8, i8 }
%struct.sdio_cccr = type { i32, i32, i8 }
%struct.sdio_cis = type { i16, i16, i16, i32 }
%struct.mmc_part = type { i64, i32, [20 x i8], i8, i32 }

@.str = private unnamed_addr constant [27 x i8] c"drivers/mmc/core/sdio_io.c\00", align 1
@__kstrtab_sdio_claim_host = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdio_claim_host = external dso_local constant [0 x i8], align 1
@__ksymtab_sdio_claim_host = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdio_claim_host to i32), ptr @__kstrtab_sdio_claim_host, ptr @__kstrtabns_sdio_claim_host }, section "___ksymtab_gpl+sdio_claim_host", align 4
@__kstrtab_sdio_release_host = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdio_release_host = external dso_local constant [0 x i8], align 1
@__ksymtab_sdio_release_host = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdio_release_host to i32), ptr @__kstrtab_sdio_release_host, ptr @__kstrtabns_sdio_release_host }, section "___ksymtab_gpl+sdio_release_host", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab_sdio_enable_func = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdio_enable_func = external dso_local constant [0 x i8], align 1
@__ksymtab_sdio_enable_func = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdio_enable_func to i32), ptr @__kstrtab_sdio_enable_func, ptr @__kstrtabns_sdio_enable_func }, section "___ksymtab_gpl+sdio_enable_func", align 4
@__kstrtab_sdio_disable_func = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdio_disable_func = external dso_local constant [0 x i8], align 1
@__ksymtab_sdio_disable_func = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdio_disable_func to i32), ptr @__kstrtab_sdio_disable_func, ptr @__kstrtabns_sdio_disable_func }, section "___ksymtab_gpl+sdio_disable_func", align 4
@__kstrtab_sdio_set_block_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdio_set_block_size = external dso_local constant [0 x i8], align 1
@__ksymtab_sdio_set_block_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdio_set_block_size to i32), ptr @__kstrtab_sdio_set_block_size, ptr @__kstrtabns_sdio_set_block_size }, section "___ksymtab_gpl+sdio_set_block_size", align 4
@__kstrtab_sdio_align_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdio_align_size = external dso_local constant [0 x i8], align 1
@__ksymtab_sdio_align_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdio_align_size to i32), ptr @__kstrtab_sdio_align_size, ptr @__kstrtabns_sdio_align_size }, section "___ksymtab_gpl+sdio_align_size", align 4
@__kstrtab_sdio_readb = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdio_readb = external dso_local constant [0 x i8], align 1
@__ksymtab_sdio_readb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdio_readb to i32), ptr @__kstrtab_sdio_readb, ptr @__kstrtabns_sdio_readb }, section "___ksymtab_gpl+sdio_readb", align 4
@__kstrtab_sdio_writeb = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdio_writeb = external dso_local constant [0 x i8], align 1
@__ksymtab_sdio_writeb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdio_writeb to i32), ptr @__kstrtab_sdio_writeb, ptr @__kstrtabns_sdio_writeb }, section "___ksymtab_gpl+sdio_writeb", align 4
@__kstrtab_sdio_writeb_readb = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdio_writeb_readb = external dso_local constant [0 x i8], align 1
@__ksymtab_sdio_writeb_readb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdio_writeb_readb to i32), ptr @__kstrtab_sdio_writeb_readb, ptr @__kstrtabns_sdio_writeb_readb }, section "___ksymtab_gpl+sdio_writeb_readb", align 4
@__kstrtab_sdio_memcpy_fromio = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdio_memcpy_fromio = external dso_local constant [0 x i8], align 1
@__ksymtab_sdio_memcpy_fromio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdio_memcpy_fromio to i32), ptr @__kstrtab_sdio_memcpy_fromio, ptr @__kstrtabns_sdio_memcpy_fromio }, section "___ksymtab_gpl+sdio_memcpy_fromio", align 4
@__kstrtab_sdio_memcpy_toio = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdio_memcpy_toio = external dso_local constant [0 x i8], align 1
@__ksymtab_sdio_memcpy_toio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdio_memcpy_toio to i32), ptr @__kstrtab_sdio_memcpy_toio, ptr @__kstrtabns_sdio_memcpy_toio }, section "___ksymtab_gpl+sdio_memcpy_toio", align 4
@__kstrtab_sdio_readsb = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdio_readsb = external dso_local constant [0 x i8], align 1
@__ksymtab_sdio_readsb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdio_readsb to i32), ptr @__kstrtab_sdio_readsb, ptr @__kstrtabns_sdio_readsb }, section "___ksymtab_gpl+sdio_readsb", align 4
@__kstrtab_sdio_writesb = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdio_writesb = external dso_local constant [0 x i8], align 1
@__ksymtab_sdio_writesb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdio_writesb to i32), ptr @__kstrtab_sdio_writesb, ptr @__kstrtabns_sdio_writesb }, section "___ksymtab_gpl+sdio_writesb", align 4
@__kstrtab_sdio_readw = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdio_readw = external dso_local constant [0 x i8], align 1
@__ksymtab_sdio_readw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdio_readw to i32), ptr @__kstrtab_sdio_readw, ptr @__kstrtabns_sdio_readw }, section "___ksymtab_gpl+sdio_readw", align 4
@__kstrtab_sdio_writew = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdio_writew = external dso_local constant [0 x i8], align 1
@__ksymtab_sdio_writew = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdio_writew to i32), ptr @__kstrtab_sdio_writew, ptr @__kstrtabns_sdio_writew }, section "___ksymtab_gpl+sdio_writew", align 4
@__kstrtab_sdio_readl = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdio_readl = external dso_local constant [0 x i8], align 1
@__ksymtab_sdio_readl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdio_readl to i32), ptr @__kstrtab_sdio_readl, ptr @__kstrtabns_sdio_readl }, section "___ksymtab_gpl+sdio_readl", align 4
@__kstrtab_sdio_writel = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdio_writel = external dso_local constant [0 x i8], align 1
@__ksymtab_sdio_writel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdio_writel to i32), ptr @__kstrtab_sdio_writel, ptr @__kstrtabns_sdio_writel }, section "___ksymtab_gpl+sdio_writel", align 4
@__kstrtab_sdio_f0_readb = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdio_f0_readb = external dso_local constant [0 x i8], align 1
@__ksymtab_sdio_f0_readb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdio_f0_readb to i32), ptr @__kstrtab_sdio_f0_readb, ptr @__kstrtabns_sdio_f0_readb }, section "___ksymtab_gpl+sdio_f0_readb", align 4
@__kstrtab_sdio_f0_writeb = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdio_f0_writeb = external dso_local constant [0 x i8], align 1
@__ksymtab_sdio_f0_writeb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdio_f0_writeb to i32), ptr @__kstrtab_sdio_f0_writeb, ptr @__kstrtabns_sdio_f0_writeb }, section "___ksymtab_gpl+sdio_f0_writeb", align 4
@__kstrtab_sdio_get_host_pm_caps = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdio_get_host_pm_caps = external dso_local constant [0 x i8], align 1
@__ksymtab_sdio_get_host_pm_caps = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdio_get_host_pm_caps to i32), ptr @__kstrtab_sdio_get_host_pm_caps, ptr @__kstrtabns_sdio_get_host_pm_caps }, section "___ksymtab_gpl+sdio_get_host_pm_caps", align 4
@__kstrtab_sdio_set_host_pm_flags = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdio_set_host_pm_flags = external dso_local constant [0 x i8], align 1
@__ksymtab_sdio_set_host_pm_flags = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdio_set_host_pm_flags to i32), ptr @__kstrtab_sdio_set_host_pm_flags, ptr @__kstrtabns_sdio_set_host_pm_flags }, section "___ksymtab_gpl+sdio_set_host_pm_flags", align 4
@__kstrtab_sdio_retune_crc_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdio_retune_crc_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_sdio_retune_crc_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdio_retune_crc_disable to i32), ptr @__kstrtab_sdio_retune_crc_disable, ptr @__kstrtabns_sdio_retune_crc_disable }, section "___ksymtab_gpl+sdio_retune_crc_disable", align 4
@__kstrtab_sdio_retune_crc_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdio_retune_crc_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_sdio_retune_crc_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdio_retune_crc_enable to i32), ptr @__kstrtab_sdio_retune_crc_enable, ptr @__kstrtabns_sdio_retune_crc_enable }, section "___ksymtab_gpl+sdio_retune_crc_enable", align 4
@__kstrtab_sdio_retune_hold_now = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdio_retune_hold_now = external dso_local constant [0 x i8], align 1
@__ksymtab_sdio_retune_hold_now = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdio_retune_hold_now to i32), ptr @__kstrtab_sdio_retune_hold_now, ptr @__kstrtabns_sdio_retune_hold_now }, section "___ksymtab_gpl+sdio_retune_hold_now", align 4
@__kstrtab_sdio_retune_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdio_retune_release = external dso_local constant [0 x i8], align 1
@__ksymtab_sdio_retune_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdio_retune_release to i32), ptr @__kstrtab_sdio_retune_release, ptr @__kstrtabns_sdio_retune_release }, section "___ksymtab_gpl+sdio_retune_release", align 4
@llvm.compiler.used = appending global [25 x ptr] [ptr @__ksymtab_sdio_align_size, ptr @__ksymtab_sdio_claim_host, ptr @__ksymtab_sdio_disable_func, ptr @__ksymtab_sdio_enable_func, ptr @__ksymtab_sdio_f0_readb, ptr @__ksymtab_sdio_f0_writeb, ptr @__ksymtab_sdio_get_host_pm_caps, ptr @__ksymtab_sdio_memcpy_fromio, ptr @__ksymtab_sdio_memcpy_toio, ptr @__ksymtab_sdio_readb, ptr @__ksymtab_sdio_readl, ptr @__ksymtab_sdio_readsb, ptr @__ksymtab_sdio_readw, ptr @__ksymtab_sdio_release_host, ptr @__ksymtab_sdio_retune_crc_disable, ptr @__ksymtab_sdio_retune_crc_enable, ptr @__ksymtab_sdio_retune_hold_now, ptr @__ksymtab_sdio_retune_release, ptr @__ksymtab_sdio_set_block_size, ptr @__ksymtab_sdio_set_host_pm_flags, ptr @__ksymtab_sdio_writeb, ptr @__ksymtab_sdio_writeb_readb, ptr @__ksymtab_sdio_writel, ptr @__ksymtab_sdio_writesb, ptr @__ksymtab_sdio_writew], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sdio_claim_host(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !8

3:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 29, i32 noundef 9, ptr noundef null) #7
  br label %8

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @__mmc_claim_host(ptr noundef %6, ptr noundef null, ptr noundef null) #7
  br label %8

8:                                                ; preds = %4, %3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sdio_release_host(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !8

3:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 45, i32 noundef 9, ptr noundef null) #7
  br label %7

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8
  %6 = load ptr, ptr %5, align 8
  tail call void @mmc_release_host(ptr noundef %6) #7
  br label %7

7:                                                ; preds = %4, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_release_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sdio_enable_func(ptr noundef readonly %0) #0 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #7
  store i8 0, ptr %2, align 1, !annotation !9
  %3 = icmp eq ptr %0, null
  br i1 %3, label %39, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8
  %6 = call i32 @mmc_io_rw_direct(ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef 2, i8 noundef zeroext 0, ptr noundef nonnull %2) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %39

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.sdio_func, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = shl nuw i32 1, %10
  %12 = load i8, ptr %2, align 1
  %13 = trunc i32 %11 to i8
  %14 = or i8 %12, %13
  store i8 %14, ptr %2, align 1
  %15 = load ptr, ptr %0, align 8
  %16 = call i32 @mmc_io_rw_direct(ptr noundef %15, i32 noundef 1, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %14, ptr noundef null) #7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %8
  %19 = load volatile i32, ptr @jiffies, align 64
  %20 = getelementptr inbounds %struct.sdio_func, ptr %0, i32 0, i32 9
  %21 = load i32, ptr %20, align 8
  %22 = call i32 @__msecs_to_jiffies(i32 noundef %21) #7
  %23 = add i32 %22, %19
  br label %24

24:                                               ; preds = %35, %18
  %25 = load ptr, ptr %0, align 8
  %26 = call i32 @mmc_io_rw_direct(ptr noundef %25, i32 noundef 0, i32 noundef 0, i32 noundef 3, i8 noundef zeroext 0, ptr noundef nonnull %2) #7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %24
  %29 = load i8, ptr %2, align 1
  %30 = zext i8 %29 to i32
  %31 = load i32, ptr %9, align 4
  %32 = shl nuw i32 1, %31
  %33 = and i32 %32, %30
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load volatile i32, ptr @jiffies, align 64
  %37 = sub i32 %23, %36
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %24

39:                                               ; preds = %35, %28, %24, %8, %4, %1
  %40 = phi i32 [ -22, %1 ], [ %6, %4 ], [ %16, %8 ], [ -62, %35 ], [ %26, %24 ], [ 0, %28 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #7
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_io_rw_direct(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sdio_disable_func(ptr noundef readonly %0) #0 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #7
  store i8 0, ptr %2, align 1, !annotation !9
  %3 = icmp eq ptr %0, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8
  %6 = call i32 @mmc_io_rw_direct(ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef 2, i8 noundef zeroext 0, ptr noundef nonnull %2) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.sdio_func, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = shl nuw i32 1, %10
  %12 = load i8, ptr %2, align 1
  %13 = trunc i32 %11 to i8
  %14 = xor i8 %13, -1
  %15 = and i8 %12, %14
  store i8 %15, ptr %2, align 1
  %16 = load ptr, ptr %0, align 8
  %17 = call i32 @mmc_io_rw_direct(ptr noundef %16, i32 noundef 1, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %15, ptr noundef null) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %8, %4
  %20 = phi i32 [ %6, %4 ], [ %17, %8 ]
  br label %21

21:                                               ; preds = %19, %8, %1
  %22 = phi i32 [ %20, %19 ], [ -22, %1 ], [ 0, %8 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #7
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sdio_set_block_size(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 24
  %6 = load i32, ptr %5, align 4
  %7 = icmp ult i32 %6, %1
  br i1 %7, label %35, label %8

8:                                                ; preds = %2
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.sdio_func, ptr %0, i32 0, i32 7
  %12 = load i32, ptr %11, align 8
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 %6)
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 512)
  br label %15

15:                                               ; preds = %10, %8
  %16 = phi i32 [ %14, %10 ], [ %1, %8 ]
  %17 = getelementptr inbounds %struct.sdio_func, ptr %0, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = shl i32 %18, 8
  %20 = or i32 %19, 16
  %21 = trunc i32 %16 to i8
  %22 = tail call i32 @mmc_io_rw_direct(ptr noundef %3, i32 noundef 1, i32 noundef 0, i32 noundef %20, i8 noundef zeroext %21, ptr noundef null) #7
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %15
  %25 = load ptr, ptr %0, align 8
  %26 = load i32, ptr %17, align 4
  %27 = shl i32 %26, 8
  %28 = or i32 %27, 17
  %29 = lshr i32 %16, 8
  %30 = trunc i32 %29 to i8
  %31 = tail call i32 @mmc_io_rw_direct(ptr noundef %25, i32 noundef 1, i32 noundef 0, i32 noundef %28, i8 noundef zeroext %30, ptr noundef null) #7
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.sdio_func, ptr %0, i32 0, i32 8
  store i32 %16, ptr %34, align 4
  br label %35

35:                                               ; preds = %33, %24, %15, %2
  %36 = phi i32 [ 0, %33 ], [ -22, %2 ], [ %22, %15 ], [ %31, %24 ]
  ret i32 %36
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @sdio_align_size(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = add i32 %1, 3
  %4 = and i32 %3, -4
  %5 = load ptr, ptr %0, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.mmc_host, ptr %6, i32 0, i32 24
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.mmc_card, ptr %5, i32 0, i32 6
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct.sdio_func, ptr %0, i32 0, i32 7
  %14 = getelementptr inbounds %struct.sdio_func, ptr %0, i32 0, i32 8
  %15 = select i1 %12, ptr %13, ptr %14
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 @llvm.umin.i32(i32 %8, i32 %16) #7
  %18 = and i32 %10, 256
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 512, i32 511
  %21 = tail call i32 @llvm.umin.i32(i32 %20, i32 %17) #7
  %22 = icmp ugt i32 %4, %21
  br i1 %22, label %23, label %60

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.mmc_card, ptr %5, i32 0, i32 29, i32 2
  %25 = load i8, ptr %24, align 8
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %48, label %28

28:                                               ; preds = %23
  %29 = load i32, ptr %14, align 4
  %30 = urem i32 %4, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %60, label %32

32:                                               ; preds = %28
  %33 = add i32 %4, -1
  %34 = add i32 %33, %29
  %35 = urem i32 %34, %29
  %36 = add i32 %34, 3
  %37 = sub i32 %36, %35
  %38 = and i32 %37, -4
  %39 = urem i32 %38, %29
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %60, label %41

41:                                               ; preds = %32
  %42 = add nuw i32 %30, 3
  %43 = and i32 %42, -4
  %44 = icmp ugt i32 %43, %21
  br i1 %44, label %60, label %45

45:                                               ; preds = %41
  %46 = sub i32 %4, %30
  %47 = add i32 %46, %43
  br label %60

48:                                               ; preds = %23
  %49 = add nuw nsw i32 %21, 3
  %50 = and i32 %49, 2044
  %51 = icmp eq i32 %50, %21
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = urem i32 %1, %21
  %54 = icmp eq i32 %53, 0
  %55 = add nuw nsw i32 %53, 3
  %56 = and i32 %55, 2044
  %57 = select i1 %54, i32 0, i32 %56
  %58 = sub i32 %1, %53
  %59 = add i32 %58, %57
  br label %60

60:                                               ; preds = %52, %48, %45, %41, %32, %28, %2
  %61 = phi i32 [ %47, %45 ], [ %59, %52 ], [ %4, %2 ], [ %4, %28 ], [ %38, %32 ], [ %1, %48 ], [ %1, %41 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @sdio_readb(ptr noundef readonly %0, i32 noundef %1, ptr noundef writeonly %2) #0 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #7
  store i8 0, ptr %4, align 1, !annotation !9
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = icmp eq ptr %2, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %6
  store i32 -22, ptr %2, align 4
  br label %20

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr inbounds %struct.sdio_func, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = call i32 @mmc_io_rw_direct(ptr noundef %10, i32 noundef 0, i32 noundef %12, i32 noundef %1, i8 noundef zeroext 0, ptr noundef nonnull %4) #7
  %14 = icmp eq ptr %2, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  store i32 %13, ptr %2, align 4
  br label %16

16:                                               ; preds = %15, %9
  %17 = icmp eq i32 %13, 0
  %18 = load i8, ptr %4, align 1
  %19 = select i1 %17, i8 %18, i8 -1
  br label %20

20:                                               ; preds = %16, %8, %6
  %21 = phi i8 [ -1, %8 ], [ -1, %6 ], [ %19, %16 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #7
  ret i8 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sdio_writeb(ptr noundef readonly %0, i8 noundef zeroext %1, i32 noundef %2, ptr noundef writeonly %3) #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = icmp eq ptr %3, null
  br i1 %7, label %16, label %14

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds %struct.sdio_func, ptr %0, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @mmc_io_rw_direct(ptr noundef %9, i32 noundef 1, i32 noundef %11, i32 noundef %2, i8 noundef zeroext %1, ptr noundef null) #7
  %13 = icmp eq ptr %3, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %8, %6
  %15 = phi i32 [ -22, %6 ], [ %12, %8 ]
  store i32 %15, ptr %3, align 4
  br label %16

16:                                               ; preds = %14, %8, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @sdio_writeb_readb(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i32 noundef %2, ptr noundef writeonly %3) #0 {
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #7
  store i8 0, ptr %5, align 1, !annotation !9
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.sdio_func, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = call i32 @mmc_io_rw_direct(ptr noundef %6, i32 noundef 1, i32 noundef %8, i32 noundef %2, i8 noundef zeroext %1, ptr noundef nonnull %5) #7
  %10 = icmp eq ptr %3, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  store i32 %9, ptr %3, align 4
  br label %12

12:                                               ; preds = %11, %4
  %13 = icmp eq i32 %9, 0
  %14 = load i8, ptr %5, align 1
  %15 = select i1 %13, i8 %14, i8 -1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #7
  ret i8 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sdio_memcpy_fromio(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call fastcc i32 @sdio_io_rw_ext_helper(ptr noundef %0, i32 noundef 0, i32 noundef %2, i32 noundef 1, ptr noundef %1, i32 noundef %3)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sdio_io_rw_ext_helper(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = icmp eq ptr %0, null
  br i1 %7, label %110, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.sdio_func, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %10, 7
  br i1 %11, label %110, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 8
  %14 = getelementptr inbounds %struct.mmc_card, ptr %13, i32 0, i32 29, i32 2
  %15 = load i8, ptr %14, align 8
  %16 = and i8 %15, 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %69, label %18

18:                                               ; preds = %12
  %19 = load ptr, ptr %13, align 8
  %20 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 0, i32 24
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.mmc_card, ptr %13, i32 0, i32 6
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 2
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds %struct.sdio_func, ptr %0, i32 0, i32 7
  %27 = getelementptr inbounds %struct.sdio_func, ptr %0, i32 0, i32 8
  %28 = select i1 %25, ptr %26, ptr %27
  %29 = load i32, ptr %28, align 4
  %30 = tail call i32 @llvm.umin.i32(i32 %21, i32 %29) #7
  %31 = and i32 %23, 256
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, i32 512, i32 511
  %34 = tail call i32 @llvm.umin.i32(i32 %33, i32 %30) #7
  %35 = icmp ult i32 %34, %5
  br i1 %35, label %36, label %69

36:                                               ; preds = %18
  %37 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 0, i32 25
  %38 = load i32, ptr %37, align 8
  %39 = load i32, ptr %27, align 4
  %40 = icmp ugt i32 %39, %5
  br i1 %40, label %74, label %41

41:                                               ; preds = %36
  %42 = icmp eq i32 %3, 0
  %43 = udiv i32 %5, %39
  %44 = tail call i32 @llvm.umin.i32(i32 %38, i32 %43)
  %45 = tail call i32 @llvm.umin.i32(i32 %44, i32 511)
  %46 = tail call i32 @mmc_io_rw_extended(ptr noundef %13, i32 noundef %1, i32 noundef %10, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %45, i32 noundef %39) #7
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %110

48:                                               ; preds = %61, %41
  %49 = phi i32 [ %66, %61 ], [ %45, %41 ]
  %50 = phi i32 [ %55, %61 ], [ %5, %41 ]
  %51 = phi ptr [ %56, %61 ], [ %4, %41 ]
  %52 = phi i32 [ %58, %61 ], [ %2, %41 ]
  %53 = phi i32 [ %59, %61 ], [ %39, %41 ]
  %54 = mul i32 %49, %53
  %55 = sub i32 %50, %54
  %56 = getelementptr i8, ptr %51, i32 %54
  %57 = select i1 %42, i32 0, i32 %54
  %58 = add i32 %57, %52
  %59 = load i32, ptr %27, align 4
  %60 = icmp ult i32 %55, %59
  br i1 %60, label %69, label %61

61:                                               ; preds = %48
  %62 = load ptr, ptr %0, align 8
  %63 = load i32, ptr %9, align 4
  %64 = udiv i32 %55, %59
  %65 = tail call i32 @llvm.umin.i32(i32 %38, i32 %64)
  %66 = tail call i32 @llvm.umin.i32(i32 %65, i32 511)
  %67 = tail call i32 @mmc_io_rw_extended(ptr noundef %62, i32 noundef %1, i32 noundef %63, i32 noundef %58, i32 noundef %3, ptr noundef %56, i32 noundef %66, i32 noundef %59) #7
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %48, label %110

69:                                               ; preds = %48, %18, %12
  %70 = phi i32 [ %5, %18 ], [ %5, %12 ], [ %55, %48 ]
  %71 = phi ptr [ %4, %18 ], [ %4, %12 ], [ %56, %48 ]
  %72 = phi i32 [ %2, %18 ], [ %2, %12 ], [ %58, %48 ]
  %73 = icmp eq i32 %70, 0
  br i1 %73, label %110, label %74

74:                                               ; preds = %69, %36
  %75 = phi i32 [ %72, %69 ], [ %2, %36 ]
  %76 = phi ptr [ %71, %69 ], [ %4, %36 ]
  %77 = phi i32 [ %70, %69 ], [ %5, %36 ]
  %78 = getelementptr inbounds %struct.sdio_func, ptr %0, i32 0, i32 7
  %79 = getelementptr inbounds %struct.sdio_func, ptr %0, i32 0, i32 8
  %80 = icmp eq i32 %3, 0
  br label %81

81:                                               ; preds = %104, %74
  %82 = phi i32 [ %75, %74 ], [ %108, %104 ]
  %83 = phi ptr [ %76, %74 ], [ %106, %104 ]
  %84 = phi i32 [ %77, %74 ], [ %105, %104 ]
  %85 = load ptr, ptr %0, align 8
  %86 = load ptr, ptr %85, align 8
  %87 = getelementptr inbounds %struct.mmc_host, ptr %86, i32 0, i32 24
  %88 = load i32, ptr %87, align 4
  %89 = getelementptr inbounds %struct.mmc_card, ptr %85, i32 0, i32 6
  %90 = load i32, ptr %89, align 8
  %91 = and i32 %90, 2
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %92, ptr %78, ptr %79
  %94 = load i32, ptr %93, align 4
  %95 = tail call i32 @llvm.umin.i32(i32 %88, i32 %94) #7
  %96 = and i32 %90, 256
  %97 = icmp eq i32 %96, 0
  %98 = select i1 %97, i32 512, i32 511
  %99 = tail call i32 @llvm.umin.i32(i32 %98, i32 %95) #7
  %100 = tail call i32 @llvm.umin.i32(i32 %84, i32 %99)
  %101 = load i32, ptr %9, align 4
  %102 = tail call i32 @mmc_io_rw_extended(ptr noundef %85, i32 noundef %1, i32 noundef %101, i32 noundef %82, i32 noundef %3, ptr noundef %83, i32 noundef 0, i32 noundef %100) #7
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %81
  %105 = sub i32 %84, %100
  %106 = getelementptr i8, ptr %83, i32 %100
  %107 = select i1 %80, i32 0, i32 %100
  %108 = add i32 %107, %82
  %109 = icmp eq i32 %105, 0
  br i1 %109, label %110, label %81

110:                                              ; preds = %104, %81, %69, %61, %41, %8, %6
  %111 = phi i32 [ -22, %8 ], [ -22, %6 ], [ 0, %69 ], [ %46, %41 ], [ %102, %81 ], [ 0, %104 ], [ %67, %61 ]
  ret i32 %111
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sdio_memcpy_toio(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = tail call fastcc i32 @sdio_io_rw_ext_helper(ptr noundef %0, i32 noundef 1, i32 noundef %1, i32 noundef 1, ptr noundef %2, i32 noundef %3)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sdio_readsb(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call fastcc i32 @sdio_io_rw_ext_helper(ptr noundef %0, i32 noundef 0, i32 noundef %2, i32 noundef 0, ptr noundef %1, i32 noundef %3)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sdio_writesb(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = tail call fastcc i32 @sdio_io_rw_ext_helper(ptr noundef %0, i32 noundef 1, i32 noundef %1, i32 noundef 0, ptr noundef %2, i32 noundef %3)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @sdio_readw(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.sdio_func, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = tail call fastcc i32 @sdio_io_rw_ext_helper(ptr noundef %0, i32 noundef 0, i32 noundef %1, i32 noundef 1, ptr noundef %5, i32 noundef 2) #7
  %7 = icmp eq ptr %2, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  store i32 %6, ptr %2, align 4
  br label %9

9:                                                ; preds = %8, %3
  %10 = icmp eq i32 %6, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %9
  %12 = load ptr, ptr %4, align 8
  %13 = load i16, ptr %12, align 2
  br label %14

14:                                               ; preds = %11, %9
  %15 = phi i16 [ %13, %11 ], [ -1, %9 ]
  ret i16 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sdio_writew(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, ptr noundef writeonly %3) #0 {
  %5 = getelementptr inbounds %struct.sdio_func, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  store i16 %1, ptr %6, align 2
  %7 = load ptr, ptr %5, align 8
  %8 = tail call fastcc i32 @sdio_io_rw_ext_helper(ptr noundef %0, i32 noundef 1, i32 noundef %2, i32 noundef 1, ptr noundef %7, i32 noundef 2) #7
  %9 = icmp eq ptr %3, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %4
  store i32 %8, ptr %3, align 4
  br label %11

11:                                               ; preds = %10, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sdio_readl(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.sdio_func, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = tail call fastcc i32 @sdio_io_rw_ext_helper(ptr noundef %0, i32 noundef 0, i32 noundef %1, i32 noundef 1, ptr noundef %5, i32 noundef 4) #7
  %7 = icmp eq ptr %2, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  store i32 %6, ptr %2, align 4
  br label %9

9:                                                ; preds = %8, %3
  %10 = icmp eq i32 %6, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %9
  %12 = load ptr, ptr %4, align 8
  %13 = load i32, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %9
  %15 = phi i32 [ %13, %11 ], [ -1, %9 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sdio_writel(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef writeonly %3) #0 {
  %5 = getelementptr inbounds %struct.sdio_func, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  store i32 %1, ptr %6, align 4
  %7 = load ptr, ptr %5, align 8
  %8 = tail call fastcc i32 @sdio_io_rw_ext_helper(ptr noundef %0, i32 noundef 1, i32 noundef %2, i32 noundef 1, ptr noundef %7, i32 noundef 4) #7
  %9 = icmp eq ptr %3, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %4
  store i32 %8, ptr %3, align 4
  br label %11

11:                                               ; preds = %10, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @sdio_f0_readb(ptr noundef readonly %0, i32 noundef %1, ptr noundef writeonly %2) #0 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #7
  store i8 0, ptr %4, align 1, !annotation !9
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = icmp eq ptr %2, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %6
  store i32 -22, ptr %2, align 4
  br label %18

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8
  %11 = call i32 @mmc_io_rw_direct(ptr noundef %10, i32 noundef 0, i32 noundef 0, i32 noundef %1, i8 noundef zeroext 0, ptr noundef nonnull %4) #7
  %12 = icmp eq ptr %2, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  store i32 %11, ptr %2, align 4
  br label %14

14:                                               ; preds = %13, %9
  %15 = icmp eq i32 %11, 0
  %16 = load i8, ptr %4, align 1
  %17 = select i1 %15, i8 %16, i8 -1
  br label %18

18:                                               ; preds = %14, %8, %6
  %19 = phi i8 [ -1, %8 ], [ -1, %6 ], [ %17, %14 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #7
  ret i8 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sdio_f0_writeb(ptr noundef readonly %0, i8 noundef zeroext %1, i32 noundef %2, ptr noundef writeonly %3) #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = icmp eq ptr %3, null
  br i1 %7, label %24, label %22

8:                                                ; preds = %4
  %9 = add i32 %2, -256
  %10 = icmp ult i32 %9, -16
  %11 = load ptr, ptr %0, align 8
  br i1 %10, label %12, label %19

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.mmc_card, ptr %11, i32 0, i32 6
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = icmp eq ptr %3, null
  br i1 %18, label %24, label %22

19:                                               ; preds = %12, %8
  %20 = tail call i32 @mmc_io_rw_direct(ptr noundef %11, i32 noundef 1, i32 noundef 0, i32 noundef %2, i8 noundef zeroext %1, ptr noundef null) #7
  %21 = icmp eq ptr %3, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19, %17, %6
  %23 = phi i32 [ -22, %6 ], [ -22, %17 ], [ %20, %19 ]
  store i32 %23, ptr %3, align 4
  br label %24

24:                                               ; preds = %22, %19, %17, %6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @sdio_get_host_pm_caps(ptr noundef readonly %0) #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 19
  %7 = load i32, ptr %6, align 4
  br label %8

8:                                                ; preds = %3, %1
  %9 = phi i32 [ %7, %3 ], [ 0, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @sdio_set_host_pm_flags(ptr noundef readonly %0, i32 noundef %1) #5 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.mmc_host, ptr %6, i32 0, i32 19
  %8 = load i32, ptr %7, align 4
  %9 = xor i32 %8, -1
  %10 = and i32 %9, %1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.mmc_host, ptr %6, i32 0, i32 51
  %14 = load i32, ptr %13, align 32
  %15 = or i32 %14, %1
  store i32 %15, ptr %13, align 32
  br label %16

16:                                               ; preds = %12, %4, %2
  %17 = phi i32 [ 0, %12 ], [ -22, %2 ], [ -22, %4 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @sdio_retune_crc_disable(ptr nocapture noundef readonly %0) #5 {
  %2 = load ptr, ptr %0, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 29
  %5 = load i16, ptr %4, align 8
  %6 = or i16 %5, 128
  store i16 %6, ptr %4, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @sdio_retune_crc_enable(ptr nocapture noundef readonly %0) #5 {
  %2 = load ptr, ptr %0, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 29
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, -129
  store i16 %6, ptr %4, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @sdio_retune_hold_now(ptr nocapture noundef readonly %0) #5 {
  %2 = load ptr, ptr %0, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 29
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, -33
  store i16 %6, ptr %4, align 8
  %7 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 33
  %8 = load i32, ptr %7, align 8
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sdio_retune_release(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = load ptr, ptr %2, align 8
  tail call void @mmc_retune_release(ptr noundef %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_retune_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mmc_claim_host(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_io_rw_extended(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
