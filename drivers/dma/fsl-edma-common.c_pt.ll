; ModuleID = '/llk/IR/drivers/dma/fsl-edma-common.c_pt.bc'
source_filename = "../drivers/dma/fsl-edma-common.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsl_edma_disable_request:\09\09\09\09\09"
module asm "\09.asciz \09\22fsl_edma_disable_request\22\09\09\09\09\09"
module asm "__kstrtabns_fsl_edma_disable_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsl_edma_chan_mux:\09\09\09\09\09"
module asm "\09.asciz \09\22fsl_edma_chan_mux\22\09\09\09\09\09"
module asm "__kstrtabns_fsl_edma_chan_mux:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsl_edma_free_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22fsl_edma_free_desc\22\09\09\09\09\09"
module asm "__kstrtabns_fsl_edma_free_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsl_edma_terminate_all:\09\09\09\09\09"
module asm "\09.asciz \09\22fsl_edma_terminate_all\22\09\09\09\09\09"
module asm "__kstrtabns_fsl_edma_terminate_all:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsl_edma_pause:\09\09\09\09\09"
module asm "\09.asciz \09\22fsl_edma_pause\22\09\09\09\09\09"
module asm "__kstrtabns_fsl_edma_pause:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsl_edma_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22fsl_edma_resume\22\09\09\09\09\09"
module asm "__kstrtabns_fsl_edma_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsl_edma_slave_config:\09\09\09\09\09"
module asm "\09.asciz \09\22fsl_edma_slave_config\22\09\09\09\09\09"
module asm "__kstrtabns_fsl_edma_slave_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsl_edma_tx_status:\09\09\09\09\09"
module asm "\09.asciz \09\22fsl_edma_tx_status\22\09\09\09\09\09"
module asm "__kstrtabns_fsl_edma_tx_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsl_edma_prep_dma_cyclic:\09\09\09\09\09"
module asm "\09.asciz \09\22fsl_edma_prep_dma_cyclic\22\09\09\09\09\09"
module asm "__kstrtabns_fsl_edma_prep_dma_cyclic:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsl_edma_prep_slave_sg:\09\09\09\09\09"
module asm "\09.asciz \09\22fsl_edma_prep_slave_sg\22\09\09\09\09\09"
module asm "__kstrtabns_fsl_edma_prep_slave_sg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsl_edma_prep_memcpy:\09\09\09\09\09"
module asm "\09.asciz \09\22fsl_edma_prep_memcpy\22\09\09\09\09\09"
module asm "__kstrtabns_fsl_edma_prep_memcpy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsl_edma_xfer_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22fsl_edma_xfer_desc\22\09\09\09\09\09"
module asm "__kstrtabns_fsl_edma_xfer_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsl_edma_issue_pending:\09\09\09\09\09"
module asm "\09.asciz \09\22fsl_edma_issue_pending\22\09\09\09\09\09"
module asm "__kstrtabns_fsl_edma_issue_pending:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsl_edma_alloc_chan_resources:\09\09\09\09\09"
module asm "\09.asciz \09\22fsl_edma_alloc_chan_resources\22\09\09\09\09\09"
module asm "__kstrtabns_fsl_edma_alloc_chan_resources:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsl_edma_free_chan_resources:\09\09\09\09\09"
module asm "\09.asciz \09\22fsl_edma_free_chan_resources\22\09\09\09\09\09"
module asm "__kstrtabns_fsl_edma_free_chan_resources:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsl_edma_cleanup_vchan:\09\09\09\09\09"
module asm "\09.asciz \09\22fsl_edma_cleanup_vchan\22\09\09\09\09\09"
module asm "__kstrtabns_fsl_edma_cleanup_vchan:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsl_edma_setup_regs:\09\09\09\09\09"
module asm "\09.asciz \09\22fsl_edma_setup_regs\22\09\09\09\09\09"
module asm "__kstrtabns_fsl_edma_setup_regs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.fsl_edma_chan = type { %struct.virt_dma_chan, i32, i32, i8, i32, ptr, ptr, %struct.dma_slave_config, i32, i8, ptr, i32, i32, i32, [16 x i8] }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.64, i32 }
%struct.atomic_t = type { i32 }
%union.anon.64 = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.fsl_edma_engine = type { %struct.dma_device, ptr, [2 x ptr], [2 x ptr], ptr, %struct.mutex, ptr, i32, i32, i32, i8, %struct.edma_regs, [0 x %struct.fsl_edma_chan] }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.edma_regs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fsl_edma_drvdata = type { i32, i32, i8, i8, ptr }
%struct.fsl_edma_desc = type { %struct.virt_dma_desc, ptr, i8, i32, i32, [0 x %struct.fsl_edma_sw_tcd] }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dmaengine_result = type { i32, i32 }
%struct.fsl_edma_sw_tcd = type { i32, ptr }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.fsl_edma_hw_tcd = type { i32, i16, i16, i32, i32, i32, i16, i16, i32, i16, i16 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@__kstrtab_fsl_edma_disable_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsl_edma_disable_request = external dso_local constant [0 x i8], align 1
@__ksymtab_fsl_edma_disable_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsl_edma_disable_request to i32), ptr @__kstrtab_fsl_edma_disable_request, ptr @__kstrtabns_fsl_edma_disable_request }, section "___ksymtab_gpl+fsl_edma_disable_request", align 4
@__const.fsl_edma_chan_mux.endian_diff = private unnamed_addr constant [4 x i32] [i32 3, i32 1, i32 -1, i32 -3], align 4
@__kstrtab_fsl_edma_chan_mux = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsl_edma_chan_mux = external dso_local constant [0 x i8], align 1
@__ksymtab_fsl_edma_chan_mux = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsl_edma_chan_mux to i32), ptr @__kstrtab_fsl_edma_chan_mux, ptr @__kstrtabns_fsl_edma_chan_mux }, section "___ksymtab_gpl+fsl_edma_chan_mux", align 4
@__kstrtab_fsl_edma_free_desc = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsl_edma_free_desc = external dso_local constant [0 x i8], align 1
@__ksymtab_fsl_edma_free_desc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsl_edma_free_desc to i32), ptr @__kstrtab_fsl_edma_free_desc, ptr @__kstrtabns_fsl_edma_free_desc }, section "___ksymtab_gpl+fsl_edma_free_desc", align 4
@__kstrtab_fsl_edma_terminate_all = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsl_edma_terminate_all = external dso_local constant [0 x i8], align 1
@__ksymtab_fsl_edma_terminate_all = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsl_edma_terminate_all to i32), ptr @__kstrtab_fsl_edma_terminate_all, ptr @__kstrtabns_fsl_edma_terminate_all }, section "___ksymtab_gpl+fsl_edma_terminate_all", align 4
@__kstrtab_fsl_edma_pause = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsl_edma_pause = external dso_local constant [0 x i8], align 1
@__ksymtab_fsl_edma_pause = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsl_edma_pause to i32), ptr @__kstrtab_fsl_edma_pause, ptr @__kstrtabns_fsl_edma_pause }, section "___ksymtab_gpl+fsl_edma_pause", align 4
@__kstrtab_fsl_edma_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsl_edma_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_fsl_edma_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsl_edma_resume to i32), ptr @__kstrtab_fsl_edma_resume, ptr @__kstrtabns_fsl_edma_resume }, section "___ksymtab_gpl+fsl_edma_resume", align 4
@__kstrtab_fsl_edma_slave_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsl_edma_slave_config = external dso_local constant [0 x i8], align 1
@__ksymtab_fsl_edma_slave_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsl_edma_slave_config to i32), ptr @__kstrtab_fsl_edma_slave_config, ptr @__kstrtabns_fsl_edma_slave_config }, section "___ksymtab_gpl+fsl_edma_slave_config", align 4
@__kstrtab_fsl_edma_tx_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsl_edma_tx_status = external dso_local constant [0 x i8], align 1
@__ksymtab_fsl_edma_tx_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsl_edma_tx_status to i32), ptr @__kstrtab_fsl_edma_tx_status, ptr @__kstrtabns_fsl_edma_tx_status }, section "___ksymtab_gpl+fsl_edma_tx_status", align 4
@__kstrtab_fsl_edma_prep_dma_cyclic = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsl_edma_prep_dma_cyclic = external dso_local constant [0 x i8], align 1
@__ksymtab_fsl_edma_prep_dma_cyclic = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsl_edma_prep_dma_cyclic to i32), ptr @__kstrtab_fsl_edma_prep_dma_cyclic, ptr @__kstrtabns_fsl_edma_prep_dma_cyclic }, section "___ksymtab_gpl+fsl_edma_prep_dma_cyclic", align 4
@__kstrtab_fsl_edma_prep_slave_sg = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsl_edma_prep_slave_sg = external dso_local constant [0 x i8], align 1
@__ksymtab_fsl_edma_prep_slave_sg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsl_edma_prep_slave_sg to i32), ptr @__kstrtab_fsl_edma_prep_slave_sg, ptr @__kstrtabns_fsl_edma_prep_slave_sg }, section "___ksymtab_gpl+fsl_edma_prep_slave_sg", align 4
@__kstrtab_fsl_edma_prep_memcpy = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsl_edma_prep_memcpy = external dso_local constant [0 x i8], align 1
@__ksymtab_fsl_edma_prep_memcpy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsl_edma_prep_memcpy to i32), ptr @__kstrtab_fsl_edma_prep_memcpy, ptr @__kstrtabns_fsl_edma_prep_memcpy }, section "___ksymtab_gpl+fsl_edma_prep_memcpy", align 4
@__kstrtab_fsl_edma_xfer_desc = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsl_edma_xfer_desc = external dso_local constant [0 x i8], align 1
@__ksymtab_fsl_edma_xfer_desc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsl_edma_xfer_desc to i32), ptr @__kstrtab_fsl_edma_xfer_desc, ptr @__kstrtabns_fsl_edma_xfer_desc }, section "___ksymtab_gpl+fsl_edma_xfer_desc", align 4
@__kstrtab_fsl_edma_issue_pending = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsl_edma_issue_pending = external dso_local constant [0 x i8], align 1
@__ksymtab_fsl_edma_issue_pending = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsl_edma_issue_pending to i32), ptr @__kstrtab_fsl_edma_issue_pending, ptr @__kstrtabns_fsl_edma_issue_pending }, section "___ksymtab_gpl+fsl_edma_issue_pending", align 4
@.str = private unnamed_addr constant [9 x i8] c"tcd_pool\00", align 1
@__kstrtab_fsl_edma_alloc_chan_resources = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsl_edma_alloc_chan_resources = external dso_local constant [0 x i8], align 1
@__ksymtab_fsl_edma_alloc_chan_resources = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsl_edma_alloc_chan_resources to i32), ptr @__kstrtab_fsl_edma_alloc_chan_resources, ptr @__kstrtabns_fsl_edma_alloc_chan_resources }, section "___ksymtab_gpl+fsl_edma_alloc_chan_resources", align 4
@__kstrtab_fsl_edma_free_chan_resources = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsl_edma_free_chan_resources = external dso_local constant [0 x i8], align 1
@__ksymtab_fsl_edma_free_chan_resources = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsl_edma_free_chan_resources to i32), ptr @__kstrtab_fsl_edma_free_chan_resources, ptr @__kstrtabns_fsl_edma_free_chan_resources }, section "___ksymtab_gpl+fsl_edma_free_chan_resources", align 4
@__kstrtab_fsl_edma_cleanup_vchan = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsl_edma_cleanup_vchan = external dso_local constant [0 x i8], align 1
@__ksymtab_fsl_edma_cleanup_vchan = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsl_edma_cleanup_vchan to i32), ptr @__kstrtab_fsl_edma_cleanup_vchan, ptr @__kstrtabns_fsl_edma_cleanup_vchan }, section "___ksymtab_gpl+fsl_edma_cleanup_vchan", align 4
@__kstrtab_fsl_edma_setup_regs = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsl_edma_setup_regs = external dso_local constant [0 x i8], align 1
@__ksymtab_fsl_edma_setup_regs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsl_edma_setup_regs to i32), ptr @__kstrtab_fsl_edma_setup_regs, ptr @__kstrtabns_fsl_edma_setup_regs }, section "___ksymtab_gpl+fsl_edma_setup_regs", align 4
@__UNIQUE_ID_file229 = internal constant [49 x i8] c"fsl_edma_common.file=drivers/dma/fsl-edma-common\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [31 x i8] c"fsl_edma_common.license=GPL v2\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__ksymtab_fsl_edma_alloc_chan_resources, ptr @__ksymtab_fsl_edma_chan_mux, ptr @__ksymtab_fsl_edma_cleanup_vchan, ptr @__ksymtab_fsl_edma_disable_request, ptr @__ksymtab_fsl_edma_free_chan_resources, ptr @__ksymtab_fsl_edma_free_desc, ptr @__ksymtab_fsl_edma_issue_pending, ptr @__ksymtab_fsl_edma_pause, ptr @__ksymtab_fsl_edma_prep_dma_cyclic, ptr @__ksymtab_fsl_edma_prep_memcpy, ptr @__ksymtab_fsl_edma_prep_slave_sg, ptr @__ksymtab_fsl_edma_resume, ptr @__ksymtab_fsl_edma_setup_regs, ptr @__ksymtab_fsl_edma_slave_config, ptr @__ksymtab_fsl_edma_terminate_all, ptr @__ksymtab_fsl_edma_tx_status, ptr @__ksymtab_fsl_edma_xfer_desc], section "llvm.metadata"
@switch.table.fsl_edma_prep_slave_sg.2 = private unnamed_addr constant [8 x i32] [i32 0, i32 257, i32 514, i32 514, i32 514, i32 514, i32 514, i32 771], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fsl_edma_disable_request(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.fsl_edma_engine, ptr %3, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  %10 = trunc i32 %5 to i8
  %11 = getelementptr inbounds %struct.fsl_edma_engine, ptr %3, i32 0, i32 11, i32 9
  %12 = load ptr, ptr %11, align 4
  br i1 %9, label %13, label %35

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.fsl_edma_engine, ptr %3, i32 0, i32 10
  %15 = load i8, ptr %14, align 4, !range !8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = ptrtoint ptr %12 to i32
  %19 = xor i32 %18, 3
  %20 = inttoptr i32 %19 to ptr
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %20, i8 %10) #7, !srcloc !10
  br label %22

21:                                               ; preds = %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %12, i8 %10) #7, !srcloc !10
  br label %22

22:                                               ; preds = %21, %17
  %23 = load ptr, ptr %2, align 4
  %24 = and i8 %10, 31
  %25 = getelementptr inbounds %struct.fsl_edma_engine, ptr %3, i32 0, i32 11, i32 7
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.fsl_edma_engine, ptr %23, i32 0, i32 10
  %28 = load i8, ptr %27, align 4, !range !8
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %22
  %31 = ptrtoint ptr %26 to i32
  %32 = xor i32 %31, 3
  %33 = inttoptr i32 %32 to ptr
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %33, i8 %24) #7, !srcloc !10
  br label %39

34:                                               ; preds = %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %26, i8 %24) #7, !srcloc !10
  br label %39

35:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %12, i8 %10) #7, !srcloc !10
  %36 = and i8 %10, 31
  %37 = getelementptr inbounds %struct.fsl_edma_engine, ptr %3, i32 0, i32 11, i32 7
  %38 = load ptr, ptr %37, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %38, i8 %36) #7, !srcloc !10
  br label %39

39:                                               ; preds = %35, %34, %30
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fsl_edma_chan_mux(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.fsl_edma_engine, ptr %7, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.fsl_edma_drvdata, ptr %9, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.fsl_edma_engine, ptr %7, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = udiv i32 %13, %11
  %15 = freeze i32 %5
  %16 = freeze i32 %14
  %17 = udiv i32 %15, %16
  %18 = mul i32 %17, %16
  %19 = sub i32 %15, %18
  %20 = getelementptr inbounds %struct.fsl_edma_drvdata, ptr %9, i32 0, i32 3
  %21 = load i8, ptr %20, align 1, !range !8
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %3
  %24 = and i32 %19, 3
  %25 = getelementptr [4 x i32], ptr @__const.fsl_edma_chan_mux.endian_diff, i32 0, i32 %24
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, %19
  br label %28

28:                                               ; preds = %23, %3
  %29 = phi i32 [ %27, %23 ], [ %19, %3 ]
  %30 = getelementptr %struct.fsl_edma_engine, ptr %7, i32 0, i32 2, i32 %17
  %31 = load ptr, ptr %30, align 4
  %32 = and i32 %1, 63
  %33 = load i32, ptr %9, align 4
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = or i32 %32, -2147483648
  %37 = select i1 %2, i32 %36, i32 0
  %38 = shl i32 %29, 2
  %39 = getelementptr i8, ptr %31, i32 %38
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #7, !srcloc !12
  br label %45

40:                                               ; preds = %28
  %41 = trunc i32 %32 to i8
  %42 = or i8 %41, -128
  %43 = select i1 %2, i8 %42, i8 0
  %44 = getelementptr i8, ptr %31, i32 %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %44, i8 %43) #7, !srcloc !10
  br label %45

45:                                               ; preds = %40, %35
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fsl_edma_free_desc(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.fsl_edma_desc, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.fsl_edma_desc, ptr %0, i32 0, i32 1
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi i32 [ 0, %5 ], [ %16, %7 ]
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.fsl_edma_chan, ptr %9, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.fsl_edma_desc, ptr %0, i32 0, i32 5, i32 %8
  %13 = getelementptr %struct.fsl_edma_desc, ptr %0, i32 0, i32 5, i32 %8, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr %12, align 4
  tail call void @dma_pool_free(ptr noundef %11, ptr noundef %14, i32 noundef %15) #7
  %16 = add nuw i32 %8, 1
  %17 = load i32, ptr %2, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %7, label %19

19:                                               ; preds = %7, %1
  tail call void @kfree(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fsl_edma_terminate_all(ptr noundef %0) #0 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  store ptr %2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  %4 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %5 = call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #7
  call void @fsl_edma_disable_request(ptr noundef %0)
  %6 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 6
  store ptr null, ptr %6, align 4
  %7 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 3
  store i8 1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %12, ptr %15, align 4
  store ptr %9, ptr %12, align 4
  store ptr %2, ptr %14, align 4
  store ptr %14, ptr %3, align 4
  store volatile ptr %8, ptr %8, align 4
  store ptr %8, ptr %13, align 4
  br label %16

16:                                               ; preds = %11, %1
  %17 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %3, align 4
  %22 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %21, ptr %24, align 4
  store ptr %18, ptr %21, align 4
  store ptr %2, ptr %23, align 4
  store ptr %23, ptr %3, align 4
  store volatile ptr %17, ptr %17, align 4
  store ptr %17, ptr %22, align 4
  br label %25

25:                                               ; preds = %20, %16
  %26 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6
  %27 = load volatile ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %26
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %3, align 4
  %31 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %30, ptr %33, align 4
  store ptr %27, ptr %30, align 4
  store ptr %2, ptr %32, align 4
  store ptr %32, ptr %3, align 4
  store volatile ptr %26, ptr %26, align 4
  store ptr %26, ptr %31, align 4
  br label %34

34:                                               ; preds = %29, %25
  %35 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 7
  %36 = load volatile ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, %35
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr %3, align 4
  %40 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 7, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  store ptr %39, ptr %42, align 4
  store ptr %36, ptr %39, align 4
  store ptr %2, ptr %41, align 4
  store ptr %41, ptr %3, align 4
  store volatile ptr %35, ptr %35, align 4
  store ptr %35, ptr %40, align 4
  br label %43

43:                                               ; preds = %38, %34
  %44 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8
  %45 = load volatile ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, %44
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %3, align 4
  %49 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  store ptr %48, ptr %51, align 4
  store ptr %45, ptr %48, align 4
  store ptr %2, ptr %50, align 4
  store ptr %50, ptr %3, align 4
  store volatile ptr %44, ptr %44, align 4
  store ptr %44, ptr %49, align 4
  br label %52

52:                                               ; preds = %47, %43
  call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #7
  call void @vchan_dma_desc_free_list(ptr noundef %0, ptr noundef nonnull %2) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_dma_desc_free_list(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fsl_edma_pause(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #7
  %4 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  tail call void @fsl_edma_disable_request(ptr noundef %0)
  %8 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 1
  store i32 2, ptr %8, align 4
  %9 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 3
  store i8 1, ptr %9, align 4
  br label %10

10:                                               ; preds = %7, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fsl_edma_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #7
  %4 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  tail call fastcc void @fsl_edma_enable_request(ptr noundef %0)
  %8 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 1
  store i32 1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 3
  store i8 0, ptr %9, align 4
  br label %10

10:                                               ; preds = %7, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fsl_edma_enable_request(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.fsl_edma_engine, ptr %3, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  %10 = trunc i32 %5 to i8
  %11 = and i8 %10, 31
  %12 = getelementptr inbounds %struct.fsl_edma_engine, ptr %3, i32 0, i32 11, i32 6
  %13 = load ptr, ptr %12, align 4
  br i1 %9, label %14, label %35

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.fsl_edma_engine, ptr %3, i32 0, i32 10
  %16 = load i8, ptr %15, align 4, !range !8
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = ptrtoint ptr %13 to i32
  %20 = xor i32 %19, 3
  %21 = inttoptr i32 %20 to ptr
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %21, i8 %11) #7, !srcloc !10
  br label %23

22:                                               ; preds = %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %13, i8 %11) #7, !srcloc !10
  br label %23

23:                                               ; preds = %22, %18
  %24 = load ptr, ptr %2, align 4
  %25 = getelementptr inbounds %struct.fsl_edma_engine, ptr %3, i32 0, i32 11, i32 8
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.fsl_edma_engine, ptr %24, i32 0, i32 10
  %28 = load i8, ptr %27, align 4, !range !8
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %23
  %31 = ptrtoint ptr %26 to i32
  %32 = xor i32 %31, 3
  %33 = inttoptr i32 %32 to ptr
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %33, i8 %10) #7, !srcloc !10
  br label %38

34:                                               ; preds = %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %26, i8 %10) #7, !srcloc !10
  br label %38

35:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %13, i8 %11) #7, !srcloc !10
  %36 = getelementptr inbounds %struct.fsl_edma_engine, ptr %3, i32 0, i32 11, i32 8
  %37 = load ptr, ptr %36, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %37, i8 %10) #7, !srcloc !10
  br label %38

38:                                               ; preds = %35, %34, %30
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fsl_edma_slave_config(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %3, ptr noundef align 4 dereferenceable(48) %1, i32 48, i1 false)
  %4 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 13
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.dma_device, ptr %8, i32 0, i32 15
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 11
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 12
  %14 = load i32, ptr %13, align 4
  tail call void @dma_unmap_resource(ptr noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %5, i32 noundef 0) #7
  br label %15

15:                                               ; preds = %7, %2
  store i32 3, ptr %4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fsl_edma_tx_status(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  %8 = icmp eq ptr %2, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  store i32 %7, ptr %2, align 4
  %10 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 1
  store i32 %5, ptr %10, align 4
  %11 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 3
  store i32 0, ptr %12, align 4
  br label %13

13:                                               ; preds = %9, %3
  %14 = icmp sgt i32 %7, %5
  %15 = icmp sge i32 %7, %1
  %16 = icmp slt i32 %5, %1
  br i1 %14, label %19, label %17

17:                                               ; preds = %13
  %18 = or i1 %16, %15
  br i1 %18, label %60, label %21

19:                                               ; preds = %13
  %20 = and i1 %16, %15
  br i1 %20, label %60, label %21

21:                                               ; preds = %19, %17
  br i1 %8, label %57, label %22

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %23) #7
  %25 = tail call ptr @vchan_find_desc(ptr noundef %0, i32 noundef %1) #7
  %26 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 6
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %22
  %30 = load i32, ptr %27, align 4
  %31 = icmp eq i32 %30, %1
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = tail call fastcc i32 @fsl_edma_desc_residue(ptr noundef %0, i1 noundef zeroext true)
  br label %54

34:                                               ; preds = %29, %22
  %35 = icmp eq ptr %25, null
  br i1 %35, label %54, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.fsl_edma_desc, ptr %27, i32 0, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %54, label %40

40:                                               ; preds = %40, %36
  %41 = phi i32 [ %52, %40 ], [ 0, %36 ]
  %42 = phi i32 [ %51, %40 ], [ 0, %36 ]
  %43 = getelementptr %struct.fsl_edma_desc, ptr %27, i32 0, i32 5, i32 %41, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.fsl_edma_hw_tcd, ptr %44, i32 0, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.fsl_edma_hw_tcd, ptr %44, i32 0, i32 10
  %48 = load i16, ptr %47, align 2
  %49 = zext i16 %48 to i32
  %50 = mul i32 %46, %49
  %51 = add i32 %50, %42
  %52 = add nuw i32 %41, 1
  %53 = icmp eq i32 %52, %38
  br i1 %53, label %54, label %40

54:                                               ; preds = %40, %36, %34, %32
  %55 = phi i32 [ %33, %32 ], [ 0, %36 ], [ 0, %34 ], [ %51, %40 ]
  %56 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  store i32 %55, ptr %56, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %23, i32 noundef %24) #7
  br label %57

57:                                               ; preds = %54, %21
  %58 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 1
  %59 = load i32, ptr %58, align 4
  br label %60

60:                                               ; preds = %57, %19, %17
  %61 = phi i32 [ 0, %17 ], [ 0, %19 ], [ %59, %57 ]
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vchan_find_desc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fsl_edma_desc_residue(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.fsl_edma_desc, ptr %4, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.fsl_edma_desc, ptr %4, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %28, label %14

14:                                               ; preds = %14, %2
  %15 = phi i32 [ %26, %14 ], [ 0, %2 ]
  %16 = phi i32 [ %25, %14 ], [ 0, %2 ]
  %17 = getelementptr %struct.fsl_edma_desc, ptr %4, i32 0, i32 5, i32 %15, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.fsl_edma_hw_tcd, ptr %18, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.fsl_edma_hw_tcd, ptr %18, i32 0, i32 10
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = mul i32 %20, %23
  %25 = add i32 %24, %16
  %26 = add nuw i32 %15, 1
  %27 = icmp eq i32 %26, %12
  br i1 %27, label %28, label %14

28:                                               ; preds = %14, %2
  %29 = phi i32 [ 0, %2 ], [ %25, %14 ]
  br i1 %1, label %30, label %83

30:                                               ; preds = %28
  %31 = icmp eq i32 %10, 1
  %32 = getelementptr inbounds %struct.fsl_edma_engine, ptr %6, i32 0, i32 11, i32 18
  %33 = load ptr, ptr %32, align 4
  br i1 %31, label %34, label %43

34:                                               ; preds = %30
  %35 = getelementptr %struct.fsl_edma_hw_tcd, ptr %33, i32 %8
  %36 = getelementptr inbounds %struct.fsl_edma_engine, ptr %6, i32 0, i32 10
  %37 = load i8, ptr %36, align 4, !range !8
  %38 = icmp eq i8 %37, 0
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #7
  br i1 %38, label %42, label %40

40:                                               ; preds = %34
  %41 = tail call i32 @llvm.bswap.i32(i32 %39) #7
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  br label %52

42:                                               ; preds = %34
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %52

43:                                               ; preds = %30
  %44 = getelementptr %struct.fsl_edma_hw_tcd, ptr %33, i32 %8, i32 5
  %45 = getelementptr inbounds %struct.fsl_edma_engine, ptr %6, i32 0, i32 10
  %46 = load i8, ptr %45, align 4, !range !8
  %47 = icmp eq i8 %46, 0
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #7
  br i1 %47, label %51, label %49

49:                                               ; preds = %43
  %50 = tail call i32 @llvm.bswap.i32(i32 %48) #7
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  br label %52

51:                                               ; preds = %43
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %52

52:                                               ; preds = %51, %49, %42, %40
  %53 = phi i32 [ %41, %40 ], [ %39, %42 ], [ %50, %49 ], [ %48, %51 ]
  %54 = load ptr, ptr %3, align 4
  %55 = getelementptr inbounds %struct.fsl_edma_desc, ptr %54, i32 0, i32 4
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %83, label %58

58:                                               ; preds = %80, %52
  %59 = phi i32 [ %81, %80 ], [ 0, %52 ]
  %60 = phi i32 [ %72, %80 ], [ %29, %52 ]
  %61 = getelementptr %struct.fsl_edma_desc, ptr %4, i32 0, i32 5, i32 %59, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.fsl_edma_hw_tcd, ptr %62, i32 0, i32 3
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr inbounds %struct.fsl_edma_hw_tcd, ptr %62, i32 0, i32 10
  %66 = load i16, ptr %65, align 2
  %67 = zext i16 %66 to i32
  %68 = mul i32 %64, %67
  %69 = getelementptr inbounds %struct.fsl_edma_hw_tcd, ptr %62, i32 0, i32 5
  %70 = select i1 %31, ptr %62, ptr %69
  %71 = load i32, ptr %70, align 4
  %72 = sub i32 %60, %68
  %73 = icmp uge i32 %53, %71
  %74 = add i32 %68, %71
  %75 = icmp ugt i32 %74, %53
  %76 = select i1 %73, i1 %75, i1 false
  br i1 %76, label %77, label %80

77:                                               ; preds = %58
  %78 = sub i32 %74, %53
  %79 = add i32 %78, %72
  br label %83

80:                                               ; preds = %58
  %81 = add nuw i32 %59, 1
  %82 = icmp eq i32 %81, %56
  br i1 %82, label %83, label %58

83:                                               ; preds = %80, %77, %52, %28
  %84 = phi i32 [ %29, %28 ], [ %79, %77 ], [ %29, %52 ], [ %72, %80 ]
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fsl_edma_prep_dma_cyclic(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = add i32 %4, -1
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %9, label %143

9:                                                ; preds = %6
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.dma_device, ptr %10, i32 0, i32 15
  %12 = load ptr, ptr %11, align 4
  switch i32 %4, label %25 [
    i32 1, label %13
    i32 2, label %16
  ]

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 7, i32 2
  %15 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 7, i32 6
  br label %19

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 7, i32 1
  %18 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 7, i32 5
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi ptr [ %18, %16 ], [ %15, %13 ]
  %21 = phi i32 [ 1, %16 ], [ 2, %13 ]
  %22 = phi ptr [ %17, %16 ], [ %14, %13 ]
  %23 = load i32, ptr %22, align 4
  %24 = load i32, ptr %20, align 4
  br label %25

25:                                               ; preds = %19, %9
  %26 = phi i32 [ 3, %9 ], [ %21, %19 ]
  %27 = phi i32 [ 0, %9 ], [ %23, %19 ]
  %28 = phi i32 [ 0, %9 ], [ %24, %19 ]
  %29 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 13
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, %26
  br i1 %31, label %45, label %32

32:                                               ; preds = %25
  %33 = icmp eq i32 %30, 3
  br i1 %33, label %39, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 11
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 12
  %38 = load i32, ptr %37, align 4
  tail call void @dma_unmap_resource(ptr noundef %12, i32 noundef %36, i32 noundef %38, i32 noundef %30, i32 noundef 0) #7
  br label %39

39:                                               ; preds = %34, %32
  store i32 3, ptr %29, align 4
  %40 = tail call i32 @dma_map_resource(ptr noundef %12, i32 noundef %27, i32 noundef %28, i32 noundef %26, i32 noundef 0) #7
  %41 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 11
  store i32 %40, ptr %41, align 4
  %42 = icmp eq i32 %40, -1
  br i1 %42, label %143, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 12
  store i32 %28, ptr %44, align 4
  store i32 %26, ptr %29, align 4
  br label %45

45:                                               ; preds = %43, %25
  %46 = udiv i32 %2, %3
  %47 = tail call fastcc ptr @fsl_edma_alloc_desc(ptr noundef %0, i32 noundef %46)
  %48 = icmp eq ptr %47, null
  br i1 %48, label %143, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.fsl_edma_desc, ptr %47, i32 0, i32 2
  store i8 1, ptr %50, align 4
  %51 = getelementptr inbounds %struct.fsl_edma_desc, ptr %47, i32 0, i32 3
  store i32 %4, ptr %51, align 4
  %52 = icmp eq i32 %4, 1
  br i1 %52, label %53, label %65

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 7, i32 4
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, -1
  %57 = icmp ult i32 %56, 8
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = getelementptr inbounds [8 x i32], ptr @switch.table.fsl_edma_prep_slave_sg.2, i32 0, i32 %56
  %60 = load i32, ptr %59, align 4
  br label %61

61:                                               ; preds = %58, %53
  %62 = phi i32 [ %60, %58 ], [ 514, %53 ]
  %63 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 8
  store i32 %62, ptr %63, align 4
  %64 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 7, i32 6
  br label %77

65:                                               ; preds = %49
  %66 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 7, i32 3
  %67 = load i32, ptr %66, align 4
  %68 = add i32 %67, -1
  %69 = icmp ult i32 %68, 8
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = getelementptr inbounds [8 x i32], ptr @switch.table.fsl_edma_prep_slave_sg.2, i32 0, i32 %68
  %72 = load i32, ptr %71, align 4
  br label %73

73:                                               ; preds = %70, %65
  %74 = phi i32 [ %72, %70 ], [ 514, %65 ]
  %75 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 8
  store i32 %74, ptr %75, align 4
  %76 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 7, i32 5
  br label %77

77:                                               ; preds = %73, %61
  %78 = phi ptr [ %76, %73 ], [ %64, %61 ]
  %79 = phi i32 [ %67, %73 ], [ %55, %61 ]
  %80 = load i32, ptr %78, align 4
  %81 = mul i32 %80, %79
  %82 = icmp sgt i32 %46, 0
  br i1 %82, label %83, label %130

83:                                               ; preds = %77
  %84 = udiv i32 %3, %81
  %85 = trunc i32 %84 to i16
  %86 = add i32 %2, %1
  %87 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 11
  %88 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 7, i32 3
  %89 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 7, i32 4
  %90 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 8
  %91 = and i16 %85, 32767
  br label %92

92:                                               ; preds = %109, %83
  %93 = phi i32 [ 0, %83 ], [ %97, %109 ]
  %94 = phi i32 [ %1, %83 ], [ %128, %109 ]
  %95 = icmp ult i32 %94, %86
  %96 = select i1 %95, i32 %94, i32 %1
  %97 = add nuw nsw i32 %93, 1
  %98 = icmp eq i32 %97, %46
  %99 = select i1 %98, i32 0, i32 %97
  %100 = getelementptr %struct.fsl_edma_desc, ptr %47, i32 0, i32 5, i32 %99
  %101 = load i32, ptr %100, align 4
  %102 = load i32, ptr %87, align 4
  br i1 %52, label %103, label %106

103:                                              ; preds = %92
  %104 = load i32, ptr %89, align 4
  %105 = trunc i32 %104 to i16
  br label %109

106:                                              ; preds = %92
  %107 = load i32, ptr %88, align 4
  %108 = trunc i32 %107 to i16
  br label %109

109:                                              ; preds = %106, %103
  %110 = phi i32 [ %96, %103 ], [ %102, %106 ]
  %111 = phi i32 [ %102, %103 ], [ %96, %106 ]
  %112 = phi i16 [ %105, %103 ], [ 0, %106 ]
  %113 = phi i16 [ 0, %103 ], [ %108, %106 ]
  %114 = getelementptr %struct.fsl_edma_desc, ptr %47, i32 0, i32 5, i32 %93, i32 1
  %115 = load ptr, ptr %114, align 4
  %116 = load i32, ptr %90, align 4
  %117 = trunc i32 %116 to i16
  store i32 %110, ptr %115, align 4
  %118 = getelementptr inbounds %struct.fsl_edma_hw_tcd, ptr %115, i32 0, i32 5
  store i32 %111, ptr %118, align 4
  %119 = getelementptr inbounds %struct.fsl_edma_hw_tcd, ptr %115, i32 0, i32 2
  store i16 %117, ptr %119, align 2
  %120 = getelementptr inbounds %struct.fsl_edma_hw_tcd, ptr %115, i32 0, i32 1
  store i16 %112, ptr %120, align 4
  %121 = getelementptr inbounds %struct.fsl_edma_hw_tcd, ptr %115, i32 0, i32 3
  store i32 %81, ptr %121, align 4
  %122 = getelementptr inbounds %struct.fsl_edma_hw_tcd, ptr %115, i32 0, i32 4
  store i32 0, ptr %122, align 4
  %123 = getelementptr inbounds %struct.fsl_edma_hw_tcd, ptr %115, i32 0, i32 7
  store i16 %91, ptr %123, align 2
  %124 = getelementptr inbounds %struct.fsl_edma_hw_tcd, ptr %115, i32 0, i32 6
  store i16 %113, ptr %124, align 4
  %125 = getelementptr inbounds %struct.fsl_edma_hw_tcd, ptr %115, i32 0, i32 8
  store i32 %101, ptr %125, align 4
  %126 = getelementptr inbounds %struct.fsl_edma_hw_tcd, ptr %115, i32 0, i32 10
  store i16 %91, ptr %126, align 2
  %127 = getelementptr inbounds %struct.fsl_edma_hw_tcd, ptr %115, i32 0, i32 9
  store i16 18, ptr %127, align 4
  %128 = add i32 %96, %3
  %129 = icmp eq i32 %97, %46
  br i1 %129, label %130, label %92

130:                                              ; preds = %109, %77
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %47, ptr noundef %0) #7
  %131 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %47, i32 0, i32 1
  store i32 %5, ptr %131, align 4
  %132 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %47, i32 0, i32 4
  store ptr @vchan_tx_submit, ptr %132, align 4
  %133 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %47, i32 0, i32 5
  store ptr @vchan_tx_desc_free, ptr %133, align 4
  %134 = getelementptr inbounds %struct.virt_dma_desc, ptr %47, i32 0, i32 1
  store i32 0, ptr %134, align 4
  %135 = getelementptr inbounds %struct.virt_dma_desc, ptr %47, i32 0, i32 1, i32 1
  store i32 0, ptr %135, align 4
  %136 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %137 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %136) #7
  %138 = getelementptr inbounds %struct.virt_dma_desc, ptr %47, i32 0, i32 2
  %139 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %140 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %141 = load ptr, ptr %140, align 4
  store ptr %138, ptr %140, align 4
  store ptr %139, ptr %138, align 4
  %142 = getelementptr inbounds %struct.virt_dma_desc, ptr %47, i32 0, i32 2, i32 1
  store ptr %141, ptr %142, align 4
  store volatile ptr %138, ptr %141, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %136, i32 noundef %137) #7
  br label %143

143:                                              ; preds = %130, %45, %39, %6
  %144 = phi ptr [ %47, %130 ], [ null, %6 ], [ null, %45 ], [ null, %39 ]
  ret ptr %144
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @fsl_edma_alloc_desc(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 8) #7
  %4 = extractvalue { i32, i1 } %3, 1
  %5 = extractvalue { i32, i1 } %3, 0
  %6 = tail call i32 @llvm.uadd.sat.i32(i32 %5, i32 92) #7
  %7 = select i1 %4, i32 -1, i32 %6
  %8 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %7, i32 noundef 2304) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %38, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.fsl_edma_desc, ptr %8, i32 0, i32 1
  store ptr %0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.fsl_edma_desc, ptr %8, i32 0, i32 4
  store i32 %1, ptr %12, align 8
  %13 = icmp sgt i32 %1, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 10
  br label %16

16:                                               ; preds = %25, %14
  %17 = phi i32 [ 0, %14 ], [ %26, %25 ]
  %18 = load ptr, ptr %15, align 4
  %19 = getelementptr %struct.fsl_edma_desc, ptr %8, i32 0, i32 5, i32 %17
  %20 = tail call ptr @dma_pool_alloc(ptr noundef %18, i32 noundef 2048, ptr noundef %19) #7
  %21 = getelementptr %struct.fsl_edma_desc, ptr %8, i32 0, i32 5, i32 %17, i32 1
  store ptr %20, ptr %21, align 8
  %22 = icmp eq ptr %20, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = icmp eq i32 %17, 0
  br i1 %24, label %37, label %28

25:                                               ; preds = %16
  %26 = add nuw nsw i32 %17, 1
  %27 = icmp eq i32 %26, %1
  br i1 %27, label %38, label %16

28:                                               ; preds = %28, %23
  %29 = phi i32 [ %30, %28 ], [ %17, %23 ]
  %30 = add nsw i32 %29, -1
  %31 = load ptr, ptr %15, align 4
  %32 = getelementptr %struct.fsl_edma_desc, ptr %8, i32 0, i32 5, i32 %30
  %33 = getelementptr %struct.fsl_edma_desc, ptr %8, i32 0, i32 5, i32 %30, i32 1
  %34 = load ptr, ptr %33, align 8
  %35 = load i32, ptr %32, align 4
  tail call void @dma_pool_free(ptr noundef %31, ptr noundef %34, i32 noundef %35) #7
  %36 = icmp sgt i32 %29, 1
  br i1 %36, label %28, label %37

37:                                               ; preds = %28, %23
  tail call void @kfree(ptr noundef nonnull %8) #7
  br label %38

38:                                               ; preds = %37, %25, %10, %2
  %39 = phi ptr [ null, %37 ], [ null, %2 ], [ %8, %10 ], [ %8, %25 ]
  ret ptr %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fsl_edma_prep_slave_sg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture readnone %5) #0 {
  %7 = add i32 %3, -1
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %9, label %147

9:                                                ; preds = %6
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.dma_device, ptr %10, i32 0, i32 15
  %12 = load ptr, ptr %11, align 4
  switch i32 %3, label %25 [
    i32 1, label %13
    i32 2, label %16
  ]

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 7, i32 2
  %15 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 7, i32 6
  br label %19

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 7, i32 1
  %18 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 7, i32 5
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi ptr [ %18, %16 ], [ %15, %13 ]
  %21 = phi i32 [ 1, %16 ], [ 2, %13 ]
  %22 = phi ptr [ %17, %16 ], [ %14, %13 ]
  %23 = load i32, ptr %22, align 4
  %24 = load i32, ptr %20, align 4
  br label %25

25:                                               ; preds = %19, %9
  %26 = phi i32 [ 3, %9 ], [ %21, %19 ]
  %27 = phi i32 [ 0, %9 ], [ %23, %19 ]
  %28 = phi i32 [ 0, %9 ], [ %24, %19 ]
  %29 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 13
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, %26
  br i1 %31, label %45, label %32

32:                                               ; preds = %25
  %33 = icmp eq i32 %30, 3
  br i1 %33, label %39, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 11
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 12
  %38 = load i32, ptr %37, align 4
  tail call void @dma_unmap_resource(ptr noundef %12, i32 noundef %36, i32 noundef %38, i32 noundef %30, i32 noundef 0) #7
  br label %39

39:                                               ; preds = %34, %32
  store i32 3, ptr %29, align 4
  %40 = tail call i32 @dma_map_resource(ptr noundef %12, i32 noundef %27, i32 noundef %28, i32 noundef %26, i32 noundef 0) #7
  %41 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 11
  store i32 %40, ptr %41, align 4
  %42 = icmp eq i32 %40, -1
  br i1 %42, label %147, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 12
  store i32 %28, ptr %44, align 4
  store i32 %26, ptr %29, align 4
  br label %45

45:                                               ; preds = %43, %25
  %46 = tail call fastcc ptr @fsl_edma_alloc_desc(ptr noundef %0, i32 noundef %2)
  %47 = icmp eq ptr %46, null
  br i1 %47, label %147, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.fsl_edma_desc, ptr %46, i32 0, i32 2
  store i8 0, ptr %49, align 4
  %50 = getelementptr inbounds %struct.fsl_edma_desc, ptr %46, i32 0, i32 3
  store i32 %3, ptr %50, align 4
  %51 = icmp eq i32 %3, 1
  br i1 %51, label %52, label %64

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 7, i32 4
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, -1
  %56 = icmp ult i32 %55, 8
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = getelementptr inbounds [8 x i32], ptr @switch.table.fsl_edma_prep_slave_sg.2, i32 0, i32 %55
  %59 = load i32, ptr %58, align 4
  br label %60

60:                                               ; preds = %57, %52
  %61 = phi i32 [ %59, %57 ], [ 514, %52 ]
  %62 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 8
  store i32 %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 7, i32 6
  br label %76

64:                                               ; preds = %48
  %65 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 7, i32 3
  %66 = load i32, ptr %65, align 4
  %67 = add i32 %66, -1
  %68 = icmp ult i32 %67, 8
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = getelementptr inbounds [8 x i32], ptr @switch.table.fsl_edma_prep_slave_sg.2, i32 0, i32 %67
  %71 = load i32, ptr %70, align 4
  br label %72

72:                                               ; preds = %69, %64
  %73 = phi i32 [ %71, %69 ], [ 514, %64 ]
  %74 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 8
  store i32 %73, ptr %74, align 4
  %75 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 7, i32 5
  br label %76

76:                                               ; preds = %72, %60
  %77 = phi ptr [ %75, %72 ], [ %63, %60 ]
  %78 = phi i32 [ %66, %72 ], [ %54, %60 ]
  %79 = load i32, ptr %77, align 4
  %80 = mul i32 %79, %78
  %81 = icmp eq i32 %2, 0
  br i1 %81, label %134, label %82

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 11
  %84 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 7, i32 3
  %85 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 7, i32 4
  %86 = add i32 %2, -1
  %87 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 8
  br label %88

88:                                               ; preds = %114, %82
  %89 = phi i32 [ 0, %82 ], [ %91, %114 ]
  %90 = phi ptr [ %1, %82 ], [ %132, %114 ]
  %91 = add nuw i32 %89, 1
  %92 = getelementptr inbounds %struct.scatterlist, ptr %90, i32 0, i32 3
  br i1 %51, label %93, label %96

93:                                               ; preds = %88
  %94 = load i32, ptr %85, align 4
  %95 = trunc i32 %94 to i16
  br label %99

96:                                               ; preds = %88
  %97 = load i32, ptr %84, align 4
  %98 = trunc i32 %97 to i16
  br label %99

99:                                               ; preds = %96, %93
  %100 = phi ptr [ %92, %93 ], [ %83, %96 ]
  %101 = phi ptr [ %83, %93 ], [ %92, %96 ]
  %102 = phi i16 [ %95, %93 ], [ 0, %96 ]
  %103 = phi i16 [ 0, %93 ], [ %98, %96 ]
  %104 = load i32, ptr %101, align 4
  %105 = load i32, ptr %100, align 4
  %106 = getelementptr inbounds %struct.scatterlist, ptr %90, i32 0, i32 4
  %107 = load i32, ptr %106, align 4
  %108 = udiv i32 %107, %80
  %109 = trunc i32 %108 to i16
  %110 = icmp ult i32 %89, %86
  br i1 %110, label %111, label %114

111:                                              ; preds = %99
  %112 = getelementptr %struct.fsl_edma_desc, ptr %46, i32 0, i32 5, i32 %91
  %113 = load i32, ptr %112, align 4
  br label %114

114:                                              ; preds = %111, %99
  %115 = phi i32 [ %113, %111 ], [ 0, %99 ]
  %116 = phi i16 [ 16, %111 ], [ 10, %99 ]
  %117 = getelementptr %struct.fsl_edma_desc, ptr %46, i32 0, i32 5, i32 %89, i32 1
  %118 = load ptr, ptr %117, align 4
  %119 = load i32, ptr %87, align 4
  %120 = trunc i32 %119 to i16
  store i32 %105, ptr %118, align 4
  %121 = getelementptr inbounds %struct.fsl_edma_hw_tcd, ptr %118, i32 0, i32 5
  store i32 %104, ptr %121, align 4
  %122 = getelementptr inbounds %struct.fsl_edma_hw_tcd, ptr %118, i32 0, i32 2
  store i16 %120, ptr %122, align 2
  %123 = getelementptr inbounds %struct.fsl_edma_hw_tcd, ptr %118, i32 0, i32 1
  store i16 %102, ptr %123, align 4
  %124 = getelementptr inbounds %struct.fsl_edma_hw_tcd, ptr %118, i32 0, i32 3
  store i32 %80, ptr %124, align 4
  %125 = getelementptr inbounds %struct.fsl_edma_hw_tcd, ptr %118, i32 0, i32 4
  store i32 0, ptr %125, align 4
  %126 = and i16 %109, 32767
  %127 = getelementptr inbounds %struct.fsl_edma_hw_tcd, ptr %118, i32 0, i32 7
  store i16 %126, ptr %127, align 2
  %128 = getelementptr inbounds %struct.fsl_edma_hw_tcd, ptr %118, i32 0, i32 6
  store i16 %103, ptr %128, align 4
  %129 = getelementptr inbounds %struct.fsl_edma_hw_tcd, ptr %118, i32 0, i32 8
  store i32 %115, ptr %129, align 4
  %130 = getelementptr inbounds %struct.fsl_edma_hw_tcd, ptr %118, i32 0, i32 10
  store i16 %126, ptr %130, align 2
  %131 = getelementptr inbounds %struct.fsl_edma_hw_tcd, ptr %118, i32 0, i32 9
  store i16 %116, ptr %131, align 4
  %132 = tail call ptr @sg_next(ptr noundef %90) #7
  %133 = icmp eq i32 %91, %2
  br i1 %133, label %134, label %88

134:                                              ; preds = %114, %76
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %46, ptr noundef %0) #7
  %135 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %46, i32 0, i32 1
  store i32 %4, ptr %135, align 4
  %136 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %46, i32 0, i32 4
  store ptr @vchan_tx_submit, ptr %136, align 4
  %137 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %46, i32 0, i32 5
  store ptr @vchan_tx_desc_free, ptr %137, align 4
  %138 = getelementptr inbounds %struct.virt_dma_desc, ptr %46, i32 0, i32 1
  store i32 0, ptr %138, align 4
  %139 = getelementptr inbounds %struct.virt_dma_desc, ptr %46, i32 0, i32 1, i32 1
  store i32 0, ptr %139, align 4
  %140 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %141 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %140) #7
  %142 = getelementptr inbounds %struct.virt_dma_desc, ptr %46, i32 0, i32 2
  %143 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %144 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %145 = load ptr, ptr %144, align 4
  store ptr %142, ptr %144, align 4
  store ptr %143, ptr %142, align 4
  %146 = getelementptr inbounds %struct.virt_dma_desc, ptr %46, i32 0, i32 2, i32 1
  store ptr %145, ptr %146, align 4
  store volatile ptr %142, ptr %145, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %140, i32 noundef %141) #7
  br label %147

147:                                              ; preds = %134, %45, %39, %6
  %148 = phi ptr [ %46, %134 ], [ null, %6 ], [ null, %45 ], [ null, %39 ]
  ret ptr %148
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fsl_edma_prep_memcpy(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = tail call fastcc ptr @fsl_edma_alloc_desc(ptr noundef %0, i32 noundef 1)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %35, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.fsl_edma_desc, ptr %6, i32 0, i32 2
  store i8 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 9
  store i8 1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.fsl_edma_desc, ptr %6, i32 1, i32 0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  store i32 %2, ptr %12, align 4
  %13 = getelementptr inbounds %struct.fsl_edma_hw_tcd, ptr %12, i32 0, i32 5
  store i32 %1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.fsl_edma_hw_tcd, ptr %12, i32 0, i32 2
  store i16 1285, ptr %14, align 2
  %15 = getelementptr inbounds %struct.fsl_edma_hw_tcd, ptr %12, i32 0, i32 1
  store i16 32, ptr %15, align 4
  %16 = getelementptr inbounds %struct.fsl_edma_hw_tcd, ptr %12, i32 0, i32 3
  store i32 %3, ptr %16, align 4
  %17 = getelementptr inbounds %struct.fsl_edma_hw_tcd, ptr %12, i32 0, i32 4
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.fsl_edma_hw_tcd, ptr %12, i32 0, i32 7
  store i16 1, ptr %18, align 2
  %19 = getelementptr inbounds %struct.fsl_edma_hw_tcd, ptr %12, i32 0, i32 6
  store i16 32, ptr %19, align 4
  %20 = getelementptr inbounds %struct.fsl_edma_hw_tcd, ptr %12, i32 0, i32 8
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.fsl_edma_hw_tcd, ptr %12, i32 0, i32 10
  store i16 1, ptr %21, align 2
  %22 = getelementptr inbounds %struct.fsl_edma_hw_tcd, ptr %12, i32 0, i32 9
  store i16 10, ptr %22, align 4
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %6, ptr noundef %0) #7
  %23 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %6, i32 0, i32 1
  store i32 %4, ptr %23, align 4
  %24 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %6, i32 0, i32 4
  store ptr @vchan_tx_submit, ptr %24, align 4
  %25 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %6, i32 0, i32 5
  store ptr @vchan_tx_desc_free, ptr %25, align 4
  %26 = getelementptr inbounds %struct.virt_dma_desc, ptr %6, i32 0, i32 1
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.virt_dma_desc, ptr %6, i32 0, i32 1, i32 1
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %28) #7
  %30 = getelementptr inbounds %struct.virt_dma_desc, ptr %6, i32 0, i32 2
  %31 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %32 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %33 = load ptr, ptr %32, align 4
  store ptr %30, ptr %32, align 4
  store ptr %31, ptr %30, align 4
  %34 = getelementptr inbounds %struct.virt_dma_desc, ptr %6, i32 0, i32 2, i32 1
  store ptr %33, ptr %34, align 4
  store volatile ptr %30, ptr %33, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %28, i32 noundef %29) #7
  br label %35

35:                                               ; preds = %8, %5
  ret ptr %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fsl_edma_xfer_desc(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  %5 = getelementptr i8, ptr %3, i32 -68
  %6 = icmp eq ptr %5, null
  %7 = or i1 %4, %6
  br i1 %7, label %164, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 6
  store ptr %5, ptr %9, align 4
  %10 = getelementptr i8, ptr %3, i32 28
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.fsl_edma_engine, ptr %13, i32 0, i32 11, i32 18
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr %struct.fsl_edma_hw_tcd, ptr %17, i32 %15, i32 9
  %19 = getelementptr inbounds %struct.fsl_edma_engine, ptr %13, i32 0, i32 10
  %20 = load i8, ptr %19, align 4, !range !8
  %21 = icmp eq i8 %20, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #7
  tail call void @arm_heavy_mb() #7
  br i1 %21, label %26, label %22

22:                                               ; preds = %8
  %23 = ptrtoint ptr %18 to i32
  %24 = xor i32 %23, 2
  %25 = inttoptr i32 %24 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %25, i16 0) #7, !srcloc !16
  br label %27

26:                                               ; preds = %8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %18, i16 0) #7, !srcloc !16
  br label %27

27:                                               ; preds = %26, %22
  %28 = load i32, ptr %11, align 4
  %29 = load ptr, ptr %16, align 4
  %30 = getelementptr %struct.fsl_edma_hw_tcd, ptr %29, i32 %15
  %31 = load i8, ptr %19, align 4, !range !8
  %32 = icmp eq i8 %31, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #7
  tail call void @arm_heavy_mb() #7
  br i1 %32, label %35, label %33

33:                                               ; preds = %27
  %34 = tail call i32 @llvm.bswap.i32(i32 %28) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %34) #7, !srcloc !12
  br label %36

35:                                               ; preds = %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #7, !srcloc !12
  br label %36

36:                                               ; preds = %35, %33
  %37 = getelementptr inbounds %struct.fsl_edma_hw_tcd, ptr %11, i32 0, i32 5
  %38 = load i32, ptr %37, align 4
  %39 = load ptr, ptr %16, align 4
  %40 = getelementptr %struct.fsl_edma_hw_tcd, ptr %39, i32 %15, i32 5
  %41 = load i8, ptr %19, align 4, !range !8
  %42 = icmp eq i8 %41, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #7
  tail call void @arm_heavy_mb() #7
  br i1 %42, label %45, label %43

43:                                               ; preds = %36
  %44 = tail call i32 @llvm.bswap.i32(i32 %38) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %44) #7, !srcloc !12
  br label %46

45:                                               ; preds = %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #7, !srcloc !12
  br label %46

46:                                               ; preds = %45, %43
  %47 = getelementptr inbounds %struct.fsl_edma_hw_tcd, ptr %11, i32 0, i32 2
  %48 = load i16, ptr %47, align 2
  %49 = load ptr, ptr %16, align 4
  %50 = getelementptr %struct.fsl_edma_hw_tcd, ptr %49, i32 %15, i32 2
  %51 = load i8, ptr %19, align 4, !range !8
  %52 = icmp eq i8 %51, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #7
  tail call void @arm_heavy_mb() #7
  br i1 %52, label %58, label %53

53:                                               ; preds = %46
  %54 = tail call i16 @llvm.bswap.i16(i16 %48) #7
  %55 = ptrtoint ptr %50 to i32
  %56 = xor i32 %55, 2
  %57 = inttoptr i32 %56 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %57, i16 %54) #7, !srcloc !16
  br label %59

58:                                               ; preds = %46
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %50, i16 %48) #7, !srcloc !16
  br label %59

59:                                               ; preds = %58, %53
  %60 = getelementptr inbounds %struct.fsl_edma_hw_tcd, ptr %11, i32 0, i32 1
  %61 = load i16, ptr %60, align 4
  %62 = load ptr, ptr %16, align 4
  %63 = getelementptr %struct.fsl_edma_hw_tcd, ptr %62, i32 %15, i32 1
  %64 = load i8, ptr %19, align 4, !range !8
  %65 = icmp eq i8 %64, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #7
  tail call void @arm_heavy_mb() #7
  br i1 %65, label %71, label %66

66:                                               ; preds = %59
  %67 = tail call i16 @llvm.bswap.i16(i16 %61) #7
  %68 = ptrtoint ptr %63 to i32
  %69 = xor i32 %68, 2
  %70 = inttoptr i32 %69 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %70, i16 %67) #7, !srcloc !16
  br label %72

71:                                               ; preds = %59
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %63, i16 %61) #7, !srcloc !16
  br label %72

72:                                               ; preds = %71, %66
  %73 = getelementptr inbounds %struct.fsl_edma_hw_tcd, ptr %11, i32 0, i32 3
  %74 = load i32, ptr %73, align 4
  %75 = load ptr, ptr %16, align 4
  %76 = getelementptr %struct.fsl_edma_hw_tcd, ptr %75, i32 %15, i32 3
  %77 = load i8, ptr %19, align 4, !range !8
  %78 = icmp eq i8 %77, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #7
  tail call void @arm_heavy_mb() #7
  br i1 %78, label %81, label %79

79:                                               ; preds = %72
  %80 = tail call i32 @llvm.bswap.i32(i32 %74) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %80) #7, !srcloc !12
  br label %82

81:                                               ; preds = %72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %74) #7, !srcloc !12
  br label %82

82:                                               ; preds = %81, %79
  %83 = getelementptr inbounds %struct.fsl_edma_hw_tcd, ptr %11, i32 0, i32 4
  %84 = load i32, ptr %83, align 4
  %85 = load ptr, ptr %16, align 4
  %86 = getelementptr %struct.fsl_edma_hw_tcd, ptr %85, i32 %15, i32 4
  %87 = load i8, ptr %19, align 4, !range !8
  %88 = icmp eq i8 %87, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #7
  tail call void @arm_heavy_mb() #7
  br i1 %88, label %91, label %89

89:                                               ; preds = %82
  %90 = tail call i32 @llvm.bswap.i32(i32 %84) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %90) #7, !srcloc !12
  br label %92

91:                                               ; preds = %82
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %84) #7, !srcloc !12
  br label %92

92:                                               ; preds = %91, %89
  %93 = getelementptr inbounds %struct.fsl_edma_hw_tcd, ptr %11, i32 0, i32 7
  %94 = load i16, ptr %93, align 2
  %95 = load ptr, ptr %16, align 4
  %96 = getelementptr %struct.fsl_edma_hw_tcd, ptr %95, i32 %15, i32 7
  %97 = load i8, ptr %19, align 4, !range !8
  %98 = icmp eq i8 %97, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #7
  tail call void @arm_heavy_mb() #7
  br i1 %98, label %104, label %99

99:                                               ; preds = %92
  %100 = tail call i16 @llvm.bswap.i16(i16 %94) #7
  %101 = ptrtoint ptr %96 to i32
  %102 = xor i32 %101, 2
  %103 = inttoptr i32 %102 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %103, i16 %100) #7, !srcloc !16
  br label %105

104:                                              ; preds = %92
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %96, i16 %94) #7, !srcloc !16
  br label %105

105:                                              ; preds = %104, %99
  %106 = getelementptr inbounds %struct.fsl_edma_hw_tcd, ptr %11, i32 0, i32 10
  %107 = load i16, ptr %106, align 2
  %108 = load ptr, ptr %16, align 4
  %109 = getelementptr %struct.fsl_edma_hw_tcd, ptr %108, i32 %15, i32 10
  %110 = load i8, ptr %19, align 4, !range !8
  %111 = icmp eq i8 %110, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #7
  tail call void @arm_heavy_mb() #7
  br i1 %111, label %117, label %112

112:                                              ; preds = %105
  %113 = tail call i16 @llvm.bswap.i16(i16 %107) #7
  %114 = ptrtoint ptr %109 to i32
  %115 = xor i32 %114, 2
  %116 = inttoptr i32 %115 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %116, i16 %113) #7, !srcloc !16
  br label %118

117:                                              ; preds = %105
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %109, i16 %107) #7, !srcloc !16
  br label %118

118:                                              ; preds = %117, %112
  %119 = getelementptr inbounds %struct.fsl_edma_hw_tcd, ptr %11, i32 0, i32 6
  %120 = load i16, ptr %119, align 4
  %121 = load ptr, ptr %16, align 4
  %122 = getelementptr %struct.fsl_edma_hw_tcd, ptr %121, i32 %15, i32 6
  %123 = load i8, ptr %19, align 4, !range !8
  %124 = icmp eq i8 %123, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #7
  tail call void @arm_heavy_mb() #7
  br i1 %124, label %130, label %125

125:                                              ; preds = %118
  %126 = tail call i16 @llvm.bswap.i16(i16 %120) #7
  %127 = ptrtoint ptr %122 to i32
  %128 = xor i32 %127, 2
  %129 = inttoptr i32 %128 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %129, i16 %126) #7, !srcloc !16
  br label %131

130:                                              ; preds = %118
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %122, i16 %120) #7, !srcloc !16
  br label %131

131:                                              ; preds = %130, %125
  %132 = getelementptr inbounds %struct.fsl_edma_hw_tcd, ptr %11, i32 0, i32 8
  %133 = load i32, ptr %132, align 4
  %134 = load ptr, ptr %16, align 4
  %135 = getelementptr %struct.fsl_edma_hw_tcd, ptr %134, i32 %15, i32 8
  %136 = load i8, ptr %19, align 4, !range !8
  %137 = icmp eq i8 %136, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #7
  tail call void @arm_heavy_mb() #7
  br i1 %137, label %140, label %138

138:                                              ; preds = %131
  %139 = tail call i32 @llvm.bswap.i32(i32 %133) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 %139) #7, !srcloc !12
  br label %141

140:                                              ; preds = %131
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 %133) #7, !srcloc !12
  br label %141

141:                                              ; preds = %140, %138
  %142 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 9
  %143 = load i8, ptr %142, align 4, !range !8
  %144 = icmp eq i8 %143, 0
  %145 = getelementptr inbounds %struct.fsl_edma_hw_tcd, ptr %11, i32 0, i32 9
  %146 = load i16, ptr %145, align 4
  br i1 %144, label %149, label %147

147:                                              ; preds = %141
  %148 = or i16 %146, 1
  store i16 %148, ptr %145, align 4
  br label %149

149:                                              ; preds = %147, %141
  %150 = phi i16 [ %148, %147 ], [ %146, %141 ]
  %151 = load ptr, ptr %16, align 4
  %152 = getelementptr %struct.fsl_edma_hw_tcd, ptr %151, i32 %15, i32 9
  %153 = load i8, ptr %19, align 4, !range !8
  %154 = icmp eq i8 %153, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #7
  tail call void @arm_heavy_mb() #7
  br i1 %154, label %160, label %155

155:                                              ; preds = %149
  %156 = tail call i16 @llvm.bswap.i16(i16 %150) #7
  %157 = ptrtoint ptr %152 to i32
  %158 = xor i32 %157, 2
  %159 = inttoptr i32 %158 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %159, i16 %156) #7, !srcloc !16
  br label %161

160:                                              ; preds = %149
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %152, i16 %150) #7, !srcloc !16
  br label %161

161:                                              ; preds = %160, %155
  tail call fastcc void @fsl_edma_enable_request(ptr noundef %0)
  %162 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 1
  store i32 1, ptr %162, align 4
  %163 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 3
  store i8 0, ptr %163, align 4
  br label %164

164:                                              ; preds = %161, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fsl_edma_issue_pending(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #7
  %4 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %26, !prof !17

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5
  %9 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6
  %10 = load volatile ptr, ptr %8, align 4
  %11 = icmp eq ptr %10, %8
  br i1 %11, label %18, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %14, ptr %17, align 4
  store ptr %10, ptr %14, align 4
  store ptr %9, ptr %16, align 4
  store ptr %16, ptr %13, align 4
  store volatile ptr %8, ptr %8, align 4
  store ptr %8, ptr %15, align 4
  br label %18

18:                                               ; preds = %12, %7
  %19 = load volatile ptr, ptr %9, align 4
  %20 = icmp eq ptr %19, %9
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  tail call void @fsl_edma_xfer_desc(ptr noundef %0)
  br label %26

26:                                               ; preds = %25, %21, %18, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fsl_edma_alloc_chan_resources(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.dma_device, ptr %2, i32 0, i32 15
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @dma_pool_create(ptr noundef nonnull @.str, ptr noundef %4, i32 noundef 32, i32 noundef 32, i32 noundef 0) #7
  %6 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 10
  store ptr %5, ptr %6, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fsl_edma_free_chan_resources(ptr noundef %0) #0 {
  %2 = alloca %struct.list_head, align 8
  %3 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  store ptr %2, ptr %2, align 8
  %5 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %5, align 4
  %6 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %7 = call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #7
  call void @fsl_edma_disable_request(ptr noundef %0)
  %8 = getelementptr inbounds %struct.fsl_edma_engine, ptr %4, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.fsl_edma_drvdata, ptr %9, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %48, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr %3, align 4
  %17 = getelementptr inbounds %struct.fsl_edma_engine, ptr %16, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.fsl_edma_drvdata, ptr %18, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.fsl_edma_engine, ptr %16, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  %23 = udiv i32 %22, %20
  %24 = freeze i32 %15
  %25 = freeze i32 %23
  %26 = udiv i32 %24, %25
  %27 = mul i32 %26, %25
  %28 = sub i32 %24, %27
  %29 = getelementptr inbounds %struct.fsl_edma_drvdata, ptr %18, i32 0, i32 3
  %30 = load i8, ptr %29, align 1, !range !8
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %13
  %33 = and i32 %28, 3
  %34 = getelementptr [4 x i32], ptr @__const.fsl_edma_chan_mux.endian_diff, i32 0, i32 %33
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, %28
  br label %37

37:                                               ; preds = %32, %13
  %38 = phi i32 [ %36, %32 ], [ %28, %13 ]
  %39 = getelementptr %struct.fsl_edma_engine, ptr %16, i32 0, i32 2, i32 %26
  %40 = load ptr, ptr %39, align 4
  %41 = load i32, ptr %18, align 4
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = shl i32 %38, 2
  %45 = getelementptr i8, ptr %40, i32 %44
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 0) #7, !srcloc !12
  br label %48

46:                                               ; preds = %37
  %47 = getelementptr i8, ptr %40, i32 %38
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %47, i8 0) #7, !srcloc !10
  br label %48

48:                                               ; preds = %46, %43, %1
  %49 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 6
  store ptr null, ptr %49, align 4
  %50 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %51 = load volatile ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, %50
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load ptr, ptr %5, align 4
  %55 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  store ptr %54, ptr %57, align 4
  store ptr %51, ptr %54, align 4
  store ptr %2, ptr %56, align 4
  store ptr %56, ptr %5, align 4
  store volatile ptr %50, ptr %50, align 4
  store ptr %50, ptr %55, align 4
  br label %58

58:                                               ; preds = %53, %48
  %59 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5
  %60 = load volatile ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, %59
  br i1 %61, label %67, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr %5, align 4
  %64 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  store ptr %63, ptr %66, align 4
  store ptr %60, ptr %63, align 4
  store ptr %2, ptr %65, align 4
  store ptr %65, ptr %5, align 4
  store volatile ptr %59, ptr %59, align 4
  store ptr %59, ptr %64, align 4
  br label %67

67:                                               ; preds = %62, %58
  %68 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6
  %69 = load volatile ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, %68
  br i1 %70, label %76, label %71

71:                                               ; preds = %67
  %72 = load ptr, ptr %5, align 4
  %73 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  store ptr %72, ptr %75, align 4
  store ptr %69, ptr %72, align 4
  store ptr %2, ptr %74, align 4
  store ptr %74, ptr %5, align 4
  store volatile ptr %68, ptr %68, align 4
  store ptr %68, ptr %73, align 4
  br label %76

76:                                               ; preds = %71, %67
  %77 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 7
  %78 = load volatile ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, %77
  br i1 %79, label %85, label %80

80:                                               ; preds = %76
  %81 = load ptr, ptr %5, align 4
  %82 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 7, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.list_head, ptr %78, i32 0, i32 1
  store ptr %81, ptr %84, align 4
  store ptr %78, ptr %81, align 4
  store ptr %2, ptr %83, align 4
  store ptr %83, ptr %5, align 4
  store volatile ptr %77, ptr %77, align 4
  store ptr %77, ptr %82, align 4
  br label %85

85:                                               ; preds = %80, %76
  %86 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8
  %87 = load volatile ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, %86
  br i1 %88, label %94, label %89

89:                                               ; preds = %85
  %90 = load ptr, ptr %5, align 4
  %91 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.list_head, ptr %87, i32 0, i32 1
  store ptr %90, ptr %93, align 4
  store ptr %87, ptr %90, align 4
  store ptr %2, ptr %92, align 4
  store ptr %92, ptr %5, align 4
  store volatile ptr %86, ptr %86, align 4
  store ptr %86, ptr %91, align 4
  br label %94

94:                                               ; preds = %89, %85
  %95 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 13
  %96 = load i32, ptr %95, align 4
  %97 = icmp eq i32 %96, 3
  br i1 %97, label %106, label %98

98:                                               ; preds = %94
  %99 = load ptr, ptr %0, align 4
  %100 = getelementptr inbounds %struct.dma_device, ptr %99, i32 0, i32 15
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 11
  %103 = load i32, ptr %102, align 4
  %104 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 12
  %105 = load i32, ptr %104, align 4
  call void @dma_unmap_resource(ptr noundef %101, i32 noundef %103, i32 noundef %105, i32 noundef %96, i32 noundef 0) #7
  br label %106

106:                                              ; preds = %98, %94
  store i32 3, ptr %95, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #7
  call void @vchan_dma_desc_free_list(ptr noundef %0, ptr noundef nonnull %2) #7
  %107 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 10
  %108 = load ptr, ptr %107, align 4
  call void @dma_pool_destroy(ptr noundef %108) #7
  store ptr null, ptr %107, align 4
  %109 = getelementptr inbounds %struct.fsl_edma_chan, ptr %0, i32 0, i32 9
  store i8 0, ptr %109, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fsl_edma_cleanup_vchan(ptr noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  store volatile ptr %7, ptr %9, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %8, align 4
  %11 = getelementptr i8, ptr %6, i32 32
  tail call void @tasklet_kill(ptr noundef %11) #7
  %12 = icmp eq ptr %7, %2
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @fsl_edma_setup_regs(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct.fsl_edma_engine, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fsl_edma_engine, ptr %0, i32 0, i32 11
  store ptr %3, ptr %4, align 4
  %5 = getelementptr i8, ptr %3, i32 4
  %6 = getelementptr inbounds %struct.fsl_edma_engine, ptr %0, i32 0, i32 11, i32 1
  store ptr %5, ptr %6, align 4
  %7 = getelementptr i8, ptr %3, i32 12
  %8 = getelementptr inbounds %struct.fsl_edma_engine, ptr %0, i32 0, i32 11, i32 3
  store ptr %7, ptr %8, align 4
  %9 = getelementptr i8, ptr %3, i32 20
  %10 = getelementptr inbounds %struct.fsl_edma_engine, ptr %0, i32 0, i32 11, i32 5
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.fsl_edma_engine, ptr %0, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 1
  %15 = select i1 %14, i32 24, i32 27
  %16 = getelementptr i8, ptr %3, i32 %15
  %17 = getelementptr inbounds %struct.fsl_edma_engine, ptr %0, i32 0, i32 11, i32 8
  store ptr %16, ptr %17, align 4
  %18 = load i32, ptr %12, align 4
  %19 = icmp eq i32 %18, 1
  %20 = select i1 %19, i32 25, i32 26
  %21 = getelementptr i8, ptr %3, i32 %20
  %22 = getelementptr inbounds %struct.fsl_edma_engine, ptr %0, i32 0, i32 11, i32 9
  store ptr %21, ptr %22, align 4
  %23 = load i32, ptr %12, align 4
  %24 = icmp eq i32 %23, 1
  %25 = select i1 %24, i32 26, i32 25
  %26 = getelementptr i8, ptr %3, i32 %25
  %27 = getelementptr inbounds %struct.fsl_edma_engine, ptr %0, i32 0, i32 11, i32 6
  store ptr %26, ptr %27, align 4
  %28 = load i32, ptr %12, align 4
  %29 = icmp eq i32 %28, 1
  %30 = select i1 %29, i32 27, i32 24
  %31 = getelementptr i8, ptr %3, i32 %30
  %32 = getelementptr inbounds %struct.fsl_edma_engine, ptr %0, i32 0, i32 11, i32 7
  store ptr %31, ptr %32, align 4
  %33 = load i32, ptr %12, align 4
  %34 = icmp eq i32 %33, 1
  %35 = select i1 %34, i32 28, i32 31
  %36 = getelementptr i8, ptr %3, i32 %35
  %37 = getelementptr inbounds %struct.fsl_edma_engine, ptr %0, i32 0, i32 11, i32 10
  store ptr %36, ptr %37, align 4
  %38 = load i32, ptr %12, align 4
  %39 = icmp eq i32 %38, 1
  %40 = select i1 %39, i32 29, i32 30
  %41 = getelementptr i8, ptr %3, i32 %40
  %42 = getelementptr inbounds %struct.fsl_edma_engine, ptr %0, i32 0, i32 11, i32 11
  store ptr %41, ptr %42, align 4
  %43 = load i32, ptr %12, align 4
  %44 = icmp eq i32 %43, 1
  %45 = select i1 %44, i32 30, i32 29
  %46 = getelementptr i8, ptr %3, i32 %45
  %47 = getelementptr inbounds %struct.fsl_edma_engine, ptr %0, i32 0, i32 11, i32 12
  store ptr %46, ptr %47, align 4
  %48 = load i32, ptr %12, align 4
  %49 = icmp eq i32 %48, 1
  %50 = select i1 %49, i32 31, i32 28
  %51 = getelementptr i8, ptr %3, i32 %50
  %52 = getelementptr inbounds %struct.fsl_edma_engine, ptr %0, i32 0, i32 11, i32 13
  store ptr %51, ptr %52, align 4
  %53 = getelementptr i8, ptr %3, i32 36
  %54 = getelementptr inbounds %struct.fsl_edma_engine, ptr %0, i32 0, i32 11, i32 15
  store ptr %53, ptr %54, align 4
  %55 = getelementptr i8, ptr %3, i32 44
  %56 = getelementptr inbounds %struct.fsl_edma_engine, ptr %0, i32 0, i32 11, i32 17
  store ptr %55, ptr %56, align 4
  %57 = load i32, ptr %12, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %68

59:                                               ; preds = %1
  %60 = getelementptr i8, ptr %3, i32 8
  %61 = getelementptr inbounds %struct.fsl_edma_engine, ptr %0, i32 0, i32 11, i32 2
  store ptr %60, ptr %61, align 4
  %62 = getelementptr i8, ptr %3, i32 16
  %63 = getelementptr inbounds %struct.fsl_edma_engine, ptr %0, i32 0, i32 11, i32 4
  store ptr %62, ptr %63, align 4
  %64 = getelementptr i8, ptr %3, i32 40
  %65 = getelementptr inbounds %struct.fsl_edma_engine, ptr %0, i32 0, i32 11, i32 16
  store ptr %64, ptr %65, align 4
  %66 = getelementptr i8, ptr %3, i32 32
  %67 = getelementptr inbounds %struct.fsl_edma_engine, ptr %0, i32 0, i32 11, i32 14
  store ptr %66, ptr %67, align 4
  br label %68

68:                                               ; preds = %59, %1
  %69 = getelementptr i8, ptr %3, i32 4096
  %70 = getelementptr inbounds %struct.fsl_edma_engine, ptr %0, i32 0, i32 11, i32 18
  store ptr %69, ptr %70, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_resource(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_resource(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_submit(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_desc_free(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }

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
!9 = !{i64 2152087179}
!10 = !{i64 4546759}
!11 = !{i64 2152088049}
!12 = !{i64 4546956}
!13 = !{i64 2152936418}
!14 = !{i64 2152984021}
!15 = !{i64 2152086827}
!16 = !{i64 4546336}
!17 = !{!"branch_weights", i32 2000, i32 1}
