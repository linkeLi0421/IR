; ModuleID = '/llk/IR/arch/arm/plat-omap/dma.c_pt.bc'
source_filename = "../arch/arm/plat-omap/dma.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_omap_set_dma_priority:\09\09\09\09\09"
module asm "\09.asciz \09\22omap_set_dma_priority\22\09\09\09\09\09"
module asm "__kstrtabns_omap_set_dma_priority:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_omap_set_dma_transfer_params:\09\09\09\09\09"
module asm "\09.asciz \09\22omap_set_dma_transfer_params\22\09\09\09\09\09"
module asm "__kstrtabns_omap_set_dma_transfer_params:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_omap_set_dma_channel_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22omap_set_dma_channel_mode\22\09\09\09\09\09"
module asm "__kstrtabns_omap_set_dma_channel_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_omap_set_dma_src_params:\09\09\09\09\09"
module asm "\09.asciz \09\22omap_set_dma_src_params\22\09\09\09\09\09"
module asm "__kstrtabns_omap_set_dma_src_params:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_omap_set_dma_src_data_pack:\09\09\09\09\09"
module asm "\09.asciz \09\22omap_set_dma_src_data_pack\22\09\09\09\09\09"
module asm "__kstrtabns_omap_set_dma_src_data_pack:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_omap_set_dma_src_burst_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22omap_set_dma_src_burst_mode\22\09\09\09\09\09"
module asm "__kstrtabns_omap_set_dma_src_burst_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_omap_set_dma_dest_params:\09\09\09\09\09"
module asm "\09.asciz \09\22omap_set_dma_dest_params\22\09\09\09\09\09"
module asm "__kstrtabns_omap_set_dma_dest_params:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_omap_set_dma_dest_data_pack:\09\09\09\09\09"
module asm "\09.asciz \09\22omap_set_dma_dest_data_pack\22\09\09\09\09\09"
module asm "__kstrtabns_omap_set_dma_dest_data_pack:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_omap_set_dma_dest_burst_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22omap_set_dma_dest_burst_mode\22\09\09\09\09\09"
module asm "__kstrtabns_omap_set_dma_dest_burst_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_omap_disable_dma_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22omap_disable_dma_irq\22\09\09\09\09\09"
module asm "__kstrtabns_omap_disable_dma_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_omap_request_dma:\09\09\09\09\09"
module asm "\09.asciz \09\22omap_request_dma\22\09\09\09\09\09"
module asm "__kstrtabns_omap_request_dma:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_omap_free_dma:\09\09\09\09\09"
module asm "\09.asciz \09\22omap_free_dma\22\09\09\09\09\09"
module asm "__kstrtabns_omap_free_dma:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_omap_start_dma:\09\09\09\09\09"
module asm "\09.asciz \09\22omap_start_dma\22\09\09\09\09\09"
module asm "__kstrtabns_omap_start_dma:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_omap_stop_dma:\09\09\09\09\09"
module asm "\09.asciz \09\22omap_stop_dma\22\09\09\09\09\09"
module asm "__kstrtabns_omap_stop_dma:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_omap_get_dma_src_pos:\09\09\09\09\09"
module asm "\09.asciz \09\22omap_get_dma_src_pos\22\09\09\09\09\09"
module asm "__kstrtabns_omap_get_dma_src_pos:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_omap_get_dma_dst_pos:\09\09\09\09\09"
module asm "\09.asciz \09\22omap_get_dma_dst_pos\22\09\09\09\09\09"
module asm "__kstrtabns_omap_get_dma_dst_pos:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_omap_get_dma_active_status:\09\09\09\09\09"
module asm "\09.asciz \09\22omap_get_dma_active_status\22\09\09\09\09\09"
module asm "__kstrtabns_omap_get_dma_active_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_omap_get_plat_info:\09\09\09\09\09"
module asm "\09.asciz \09\22omap_get_plat_info\22\09\09\09\09\09"
module asm "__kstrtabns_omap_get_plat_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.omap_system_dma_plat_info = type { ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.omap_dma_lch = type { i32, i32, i16, i16, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.omap_dma_dev_attr = type { i32, i16, i16 }

@p = internal unnamed_addr global ptr null, align 4
@__kstrtab_omap_set_dma_priority = external dso_local constant [0 x i8], align 1
@__kstrtabns_omap_set_dma_priority = external dso_local constant [0 x i8], align 1
@__ksymtab_omap_set_dma_priority = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @omap_set_dma_priority to i32), ptr @__kstrtab_omap_set_dma_priority, ptr @__kstrtabns_omap_set_dma_priority }, section "___ksymtab+omap_set_dma_priority", align 4
@__kstrtab_omap_set_dma_transfer_params = external dso_local constant [0 x i8], align 1
@__kstrtabns_omap_set_dma_transfer_params = external dso_local constant [0 x i8], align 1
@__ksymtab_omap_set_dma_transfer_params = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @omap_set_dma_transfer_params to i32), ptr @__kstrtab_omap_set_dma_transfer_params, ptr @__kstrtabns_omap_set_dma_transfer_params }, section "___ksymtab+omap_set_dma_transfer_params", align 4
@__kstrtab_omap_set_dma_channel_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_omap_set_dma_channel_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_omap_set_dma_channel_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @omap_set_dma_channel_mode to i32), ptr @__kstrtab_omap_set_dma_channel_mode, ptr @__kstrtabns_omap_set_dma_channel_mode }, section "___ksymtab+omap_set_dma_channel_mode", align 4
@__kstrtab_omap_set_dma_src_params = external dso_local constant [0 x i8], align 1
@__kstrtabns_omap_set_dma_src_params = external dso_local constant [0 x i8], align 1
@__ksymtab_omap_set_dma_src_params = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @omap_set_dma_src_params to i32), ptr @__kstrtab_omap_set_dma_src_params, ptr @__kstrtabns_omap_set_dma_src_params }, section "___ksymtab+omap_set_dma_src_params", align 4
@__kstrtab_omap_set_dma_src_data_pack = external dso_local constant [0 x i8], align 1
@__kstrtabns_omap_set_dma_src_data_pack = external dso_local constant [0 x i8], align 1
@__ksymtab_omap_set_dma_src_data_pack = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @omap_set_dma_src_data_pack to i32), ptr @__kstrtab_omap_set_dma_src_data_pack, ptr @__kstrtabns_omap_set_dma_src_data_pack }, section "___ksymtab+omap_set_dma_src_data_pack", align 4
@__kstrtab_omap_set_dma_src_burst_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_omap_set_dma_src_burst_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_omap_set_dma_src_burst_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @omap_set_dma_src_burst_mode to i32), ptr @__kstrtab_omap_set_dma_src_burst_mode, ptr @__kstrtabns_omap_set_dma_src_burst_mode }, section "___ksymtab+omap_set_dma_src_burst_mode", align 4
@__kstrtab_omap_set_dma_dest_params = external dso_local constant [0 x i8], align 1
@__kstrtabns_omap_set_dma_dest_params = external dso_local constant [0 x i8], align 1
@__ksymtab_omap_set_dma_dest_params = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @omap_set_dma_dest_params to i32), ptr @__kstrtab_omap_set_dma_dest_params, ptr @__kstrtabns_omap_set_dma_dest_params }, section "___ksymtab+omap_set_dma_dest_params", align 4
@__kstrtab_omap_set_dma_dest_data_pack = external dso_local constant [0 x i8], align 1
@__kstrtabns_omap_set_dma_dest_data_pack = external dso_local constant [0 x i8], align 1
@__ksymtab_omap_set_dma_dest_data_pack = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @omap_set_dma_dest_data_pack to i32), ptr @__kstrtab_omap_set_dma_dest_data_pack, ptr @__kstrtabns_omap_set_dma_dest_data_pack }, section "___ksymtab+omap_set_dma_dest_data_pack", align 4
@.str = private unnamed_addr constant [26 x i8] c"\013Invalid DMA burst mode\0A\00", align 1
@__kstrtab_omap_set_dma_dest_burst_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_omap_set_dma_dest_burst_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_omap_set_dma_dest_burst_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @omap_set_dma_dest_burst_mode to i32), ptr @__kstrtab_omap_set_dma_dest_burst_mode, ptr @__kstrtabns_omap_set_dma_dest_burst_mode }, section "___ksymtab+omap_set_dma_dest_burst_mode", align 4
@dma_chan = internal unnamed_addr global ptr null, align 4
@__kstrtab_omap_disable_dma_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_omap_disable_dma_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_omap_disable_dma_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @omap_disable_dma_irq to i32), ptr @__kstrtab_omap_disable_dma_irq, ptr @__kstrtabns_omap_disable_dma_irq }, section "___ksymtab+omap_disable_dma_irq", align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"DMA engine\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"arch/arm/plat-omap/dma.c\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"Using deprecated platform DMA API - please update to DMA engine\00", align 1
@dma_chan_lock = internal global %struct.spinlock zeroinitializer, align 4
@dma_chan_count = internal unnamed_addr global i32 0, align 4
@__kstrtab_omap_request_dma = external dso_local constant [0 x i8], align 1
@__kstrtabns_omap_request_dma = external dso_local constant [0 x i8], align 1
@__ksymtab_omap_request_dma = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @omap_request_dma to i32), ptr @__kstrtab_omap_request_dma, ptr @__kstrtabns_omap_request_dma }, section "___ksymtab+omap_request_dma", align 4
@.str.4 = private unnamed_addr constant [55 x i8] c"\013omap_dma: trying to free unallocated DMA channel %d\0A\00", align 1
@__kstrtab_omap_free_dma = external dso_local constant [0 x i8], align 1
@__kstrtabns_omap_free_dma = external dso_local constant [0 x i8], align 1
@__ksymtab_omap_free_dma = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @omap_free_dma to i32), ptr @__kstrtab_omap_free_dma, ptr @__kstrtabns_omap_free_dma }, section "___ksymtab+omap_free_dma", align 4
@errata = internal unnamed_addr global i32 0, align 4
@__kstrtab_omap_start_dma = external dso_local constant [0 x i8], align 1
@__kstrtabns_omap_start_dma = external dso_local constant [0 x i8], align 1
@__ksymtab_omap_start_dma = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @omap_start_dma to i32), ptr @__kstrtab_omap_start_dma, ptr @__kstrtabns_omap_start_dma }, section "___ksymtab+omap_start_dma", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"\013DMA drain did not complete on lch %d\0A\00", align 1
@__kstrtab_omap_stop_dma = external dso_local constant [0 x i8], align 1
@__kstrtabns_omap_stop_dma = external dso_local constant [0 x i8], align 1
@__ksymtab_omap_stop_dma = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @omap_stop_dma to i32), ptr @__kstrtab_omap_stop_dma, ptr @__kstrtabns_omap_stop_dma }, section "___ksymtab+omap_stop_dma", align 4
@__kstrtab_omap_get_dma_src_pos = external dso_local constant [0 x i8], align 1
@__kstrtabns_omap_get_dma_src_pos = external dso_local constant [0 x i8], align 1
@__ksymtab_omap_get_dma_src_pos = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @omap_get_dma_src_pos to i32), ptr @__kstrtab_omap_get_dma_src_pos, ptr @__kstrtabns_omap_get_dma_src_pos }, section "___ksymtab+omap_get_dma_src_pos", align 4
@__kstrtab_omap_get_dma_dst_pos = external dso_local constant [0 x i8], align 1
@__kstrtabns_omap_get_dma_dst_pos = external dso_local constant [0 x i8], align 1
@__ksymtab_omap_get_dma_dst_pos = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @omap_get_dma_dst_pos to i32), ptr @__kstrtab_omap_get_dma_dst_pos, ptr @__kstrtabns_omap_get_dma_dst_pos }, section "___ksymtab+omap_get_dma_dst_pos", align 4
@__kstrtab_omap_get_dma_active_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_omap_get_dma_active_status = external dso_local constant [0 x i8], align 1
@__ksymtab_omap_get_dma_active_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @omap_get_dma_active_status to i32), ptr @__kstrtab_omap_get_dma_active_status, ptr @__kstrtabns_omap_get_dma_active_status }, section "___ksymtab+omap_get_dma_active_status", align 4
@__kstrtab_omap_get_plat_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_omap_get_plat_info = external dso_local constant [0 x i8], align 1
@__ksymtab_omap_get_plat_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @omap_get_plat_info to i32), ptr @__kstrtab_omap_get_plat_info, ptr @__kstrtabns_omap_get_plat_info }, section "___ksymtab_gpl+omap_get_plat_info", align 4
@__initcall__kmod_dma__170_979_omap_system_dma_init3 = internal global ptr @omap_system_dma_init, section ".initcall3.init", align 4
@omap_system_dma_driver = internal global %struct.platform_driver { ptr @omap_system_dma_probe, ptr @omap_system_dma_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.6, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__UNIQUE_ID_description171 = internal constant [39 x i8] c"dma.description=OMAP SYSTEM DMA DRIVER\00", section ".modinfo", align 1
@__UNIQUE_ID_file172 = internal constant [32 x i8] c"dma.file=arch/arm/plat-omap/dma\00", section ".modinfo", align 1
@__UNIQUE_ID_license173 = internal constant [16 x i8] c"dma.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author174 = internal constant [33 x i8] c"dma.author=Texas Instruments Inc\00", section ".modinfo", align 1
@__setup_str_omap_dma_cmdline_reserve_ch = internal constant [21 x i8] c"omap_dma_reserve_ch=\00", section ".init.rodata", align 1
@__setup_omap_dma_cmdline_reserve_ch = internal global %struct.obs_kernel_param { ptr @__setup_str_omap_dma_cmdline_reserve_ch, ptr @omap_dma_cmdline_reserve_ch, i32 0 }, section ".init.setup", align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"omap_dma_system\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"%s: System DMA initialized without platform data\0A\00", align 1
@__func__.omap_system_dma_probe = private unnamed_addr constant [22 x i8] c"omap_system_dma_probe\00", align 1
@d = internal unnamed_addr global ptr null, align 4
@omap_dma_reserve_channels = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [50 x i8] c"\016Reserving DMA channels 0 and 1 for HS ROM code\0A\00", align 1
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_author174, ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_file172, ptr @__UNIQUE_ID_license173, ptr @__initcall__kmod_dma__170_979_omap_system_dma_init3, ptr @__ksymtab_omap_disable_dma_irq, ptr @__ksymtab_omap_free_dma, ptr @__ksymtab_omap_get_dma_active_status, ptr @__ksymtab_omap_get_dma_dst_pos, ptr @__ksymtab_omap_get_dma_src_pos, ptr @__ksymtab_omap_get_plat_info, ptr @__ksymtab_omap_request_dma, ptr @__ksymtab_omap_set_dma_channel_mode, ptr @__ksymtab_omap_set_dma_dest_burst_mode, ptr @__ksymtab_omap_set_dma_dest_data_pack, ptr @__ksymtab_omap_set_dma_dest_params, ptr @__ksymtab_omap_set_dma_priority, ptr @__ksymtab_omap_set_dma_src_burst_mode, ptr @__ksymtab_omap_set_dma_src_data_pack, ptr @__ksymtab_omap_set_dma_src_params, ptr @__ksymtab_omap_set_dma_transfer_params, ptr @__ksymtab_omap_start_dma, ptr @__ksymtab_omap_stop_dma, ptr @__setup_omap_dma_cmdline_reserve_ch, ptr @omap_system_dma_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap_set_dma_priority(i32 noundef %0, i32 %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr @p, align 4
  %5 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(i32 noundef 33, i32 noundef %0) #10
  %8 = icmp eq i32 %2, 0
  %9 = and i32 %7, -65
  %10 = select i1 %8, i32 0, i32 64
  %11 = or i32 %9, %10
  %12 = load ptr, ptr @p, align 4
  %13 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %12, i32 0, i32 7
  %14 = load ptr, ptr %13, align 4
  tail call void %14(i32 noundef %11, i32 noundef 33, i32 noundef %0) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap_set_dma_transfer_params(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = load ptr, ptr @p, align 4
  %9 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(i32 noundef 32, i32 noundef %0) #10
  %12 = and i32 %11, -4
  %13 = or i32 %12, %1
  %14 = load ptr, ptr @p, align 4
  %15 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %14, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  tail call void %16(i32 noundef %13, i32 noundef 32, i32 noundef %0) #10
  %17 = icmp eq i32 %5, 0
  br i1 %17, label %47, label %18

18:                                               ; preds = %7
  %19 = load ptr, ptr @p, align 4
  %20 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %19, i32 0, i32 8
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 %21(i32 noundef 33, i32 noundef %0) #10
  %23 = and i32 %22, -10223680
  %24 = shl i32 %5, 14
  %25 = and i32 %24, -524288
  %26 = and i32 %5, 31
  %27 = shl i32 %4, 5
  %28 = and i32 %27, 32
  %29 = shl i32 %4, 17
  %30 = and i32 %29, 262144
  %31 = or i32 %28, %26
  %32 = or i32 %31, %30
  %33 = or i32 %32, %25
  %34 = or i32 %33, %23
  switch i32 %6, label %38 [
    i32 2, label %35
    i32 0, label %40
  ]

35:                                               ; preds = %18
  %36 = and i32 %34, -25165825
  %37 = or i32 %36, 8388608
  br label %42

38:                                               ; preds = %18
  %39 = or i32 %34, 16777216
  br label %42

40:                                               ; preds = %18
  %41 = and i32 %34, -16777217
  br label %42

42:                                               ; preds = %40, %38, %35
  %43 = phi i32 [ %37, %35 ], [ %39, %38 ], [ %41, %40 ]
  %44 = load ptr, ptr @p, align 4
  %45 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %44, i32 0, i32 7
  %46 = load ptr, ptr %45, align 4
  tail call void %46(i32 noundef %43, i32 noundef 33, i32 noundef %0) #10
  br label %47

47:                                               ; preds = %42, %7
  %48 = load ptr, ptr @p, align 4
  %49 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %48, i32 0, i32 7
  %50 = load ptr, ptr %49, align 4
  tail call void %50(i32 noundef %2, i32 noundef 36, i32 noundef %0) #10
  %51 = load ptr, ptr @p, align 4
  %52 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %51, i32 0, i32 7
  %53 = load ptr, ptr %52, align 4
  tail call void %53(i32 noundef %3, i32 noundef 37, i32 noundef %0) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @omap_set_dma_channel_mode(i32 %0, i32 %1) #2 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap_set_dma_src_params(i32 noundef %0, i32 %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = load ptr, ptr @p, align 4
  %8 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(i32 noundef 33, i32 noundef %0) #10
  %11 = and i32 %10, -12289
  %12 = shl i32 %2, 12
  %13 = or i32 %11, %12
  %14 = load ptr, ptr @p, align 4
  %15 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %14, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  tail call void %16(i32 noundef %13, i32 noundef 33, i32 noundef %0) #10
  %17 = load ptr, ptr @p, align 4
  %18 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %17, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  tail call void %19(i32 noundef %3, i32 noundef 45, i32 noundef %0) #10
  %20 = load ptr, ptr @p, align 4
  %21 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %20, i32 0, i32 7
  %22 = load ptr, ptr %21, align 4
  tail call void %22(i32 noundef %4, i32 noundef 39, i32 noundef %0) #10
  %23 = load ptr, ptr @p, align 4
  %24 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %23, i32 0, i32 7
  %25 = load ptr, ptr %24, align 4
  tail call void %25(i32 noundef %5, i32 noundef 38, i32 noundef %0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap_set_dma_src_data_pack(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr @p, align 4
  %4 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 %5(i32 noundef 32, i32 noundef %0) #10
  %7 = and i32 %6, -65
  %8 = icmp eq i32 %1, 0
  %9 = select i1 %8, i32 0, i32 64
  %10 = or i32 %7, %9
  %11 = load ptr, ptr @p, align 4
  %12 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %11, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  tail call void %13(i32 noundef %10, i32 noundef 32, i32 noundef %0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap_set_dma_src_burst_mode(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr @p, align 4
  %4 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 %5(i32 noundef 32, i32 noundef %0) #10
  %7 = icmp ult i32 %1, 4
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/plat-omap/dma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 321, 0\0A.popsection", ""() #10, !srcloc !8
  unreachable

9:                                                ; preds = %2
  %10 = and i32 %6, -385
  %11 = shl nuw nsw i32 %1, 7
  %12 = or i32 %10, %11
  %13 = load ptr, ptr @p, align 4
  %14 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %13, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  tail call void %15(i32 noundef %12, i32 noundef 32, i32 noundef %0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap_set_dma_dest_params(i32 noundef %0, i32 %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = load ptr, ptr @p, align 4
  %8 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(i32 noundef 33, i32 noundef %0) #10
  %11 = and i32 %10, -49153
  %12 = shl i32 %2, 14
  %13 = or i32 %11, %12
  %14 = load ptr, ptr @p, align 4
  %15 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %14, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  tail call void %16(i32 noundef %13, i32 noundef 33, i32 noundef %0) #10
  %17 = load ptr, ptr @p, align 4
  %18 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %17, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  tail call void %19(i32 noundef %3, i32 noundef 46, i32 noundef %0) #10
  %20 = load ptr, ptr @p, align 4
  %21 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %20, i32 0, i32 7
  %22 = load ptr, ptr %21, align 4
  tail call void %22(i32 noundef %4, i32 noundef 42, i32 noundef %0) #10
  %23 = load ptr, ptr @p, align 4
  %24 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %23, i32 0, i32 7
  %25 = load ptr, ptr %24, align 4
  tail call void %25(i32 noundef %5, i32 noundef 43, i32 noundef %0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap_set_dma_dest_data_pack(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr @p, align 4
  %4 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 %5(i32 noundef 32, i32 noundef %0) #10
  %7 = and i32 %6, -8193
  %8 = icmp eq i32 %1, 0
  %9 = select i1 %8, i32 0, i32 8192
  %10 = or i32 %7, %9
  %11 = load ptr, ptr @p, align 4
  %12 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %11, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  tail call void %13(i32 noundef %10, i32 noundef 32, i32 noundef %0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap_set_dma_dest_burst_mode(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr @p, align 4
  %4 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 %5(i32 noundef 32, i32 noundef %0) #10
  %7 = icmp ult i32 %1, 4
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/plat-omap/dma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 399, 0\0A.popsection", ""() #10, !srcloc !9
  unreachable

10:                                               ; preds = %2
  %11 = and i32 %6, -49153
  %12 = shl nuw nsw i32 %1, 14
  %13 = or i32 %11, %12
  %14 = load ptr, ptr @p, align 4
  %15 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %14, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  tail call void %16(i32 noundef %13, i32 noundef 32, i32 noundef %0) #10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @omap_disable_dma_irq(i32 noundef %0, i16 noundef zeroext %1) #4 {
  %3 = xor i16 %1, -1
  %4 = load ptr, ptr @dma_chan, align 4
  %5 = getelementptr %struct.omap_dma_lch, ptr %4, i32 %0, i32 3
  %6 = load i16, ptr %5, align 2
  %7 = and i16 %6, %3
  store i16 %7, ptr %5, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_request_dma(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef writeonly %4) #0 {
  %6 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(11) @.str.1)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8, !prof !10

8:                                                ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 483, i32 noundef 9, ptr noundef nonnull @.str.3) #10
  br label %9

9:                                                ; preds = %8, %5
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @dma_chan_lock) #10
  %11 = load i32, ptr @dma_chan_count, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = load ptr, ptr @dma_chan, align 4
  br label %15

15:                                               ; preds = %20, %13
  %16 = phi i32 [ 0, %13 ], [ %21, %20 ]
  %17 = getelementptr %struct.omap_dma_lch, ptr %14, i32 %16, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = add nuw nsw i32 %16, 1
  %22 = icmp eq i32 %21, %11
  br i1 %22, label %23, label %15

23:                                               ; preds = %20, %9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dma_chan_lock, i32 noundef %10) #10
  br label %36

24:                                               ; preds = %15
  store i32 %0, ptr %17, align 4
  %25 = load ptr, ptr @p, align 4
  %26 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %25, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  tail call void %27(i32 noundef %16) #10
  br label %30

30:                                               ; preds = %29, %24
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dma_chan_lock, i32 noundef %10) #10
  %31 = getelementptr %struct.omap_dma_lch, ptr %14, i32 %16, i32 4
  store ptr %1, ptr %31, align 4
  %32 = getelementptr %struct.omap_dma_lch, ptr %14, i32 %16, i32 5
  store ptr %2, ptr %32, align 4
  %33 = getelementptr %struct.omap_dma_lch, ptr %14, i32 %16, i32 6
  store ptr %3, ptr %33, align 4
  %34 = getelementptr %struct.omap_dma_lch, ptr %14, i32 %16, i32 7
  store i32 0, ptr %34, align 4
  %35 = getelementptr %struct.omap_dma_lch, ptr %14, i32 %16, i32 3
  store i16 34, ptr %35, align 2
  store i32 %16, ptr %4, align 4
  br label %36

36:                                               ; preds = %30, %23
  %37 = phi i32 [ -16, %23 ], [ 0, %30 ]
  ret i32 %37
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap_free_dma(i32 noundef %0) #0 {
  %2 = load ptr, ptr @dma_chan, align 4
  %3 = getelementptr %struct.omap_dma_lch, ptr %2, i32 %0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %0) #11
  br label %23

8:                                                ; preds = %1
  %9 = load ptr, ptr @p, align 4
  %10 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %9, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  tail call void %11(i32 noundef 0, i32 noundef 34, i32 noundef %0) #10
  %12 = load ptr, ptr @p, align 4
  %13 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %12, i32 0, i32 7
  %14 = load ptr, ptr %13, align 4
  tail call void %14(i32 noundef -1, i32 noundef 35, i32 noundef %0) #10
  %15 = load ptr, ptr @p, align 4
  %16 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %15, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  tail call void %17(i32 noundef 0, i32 noundef 33, i32 noundef %0) #10
  %18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @dma_chan_lock) #10
  %19 = load ptr, ptr @dma_chan, align 4
  %20 = getelementptr %struct.omap_dma_lch, ptr %19, i32 %0, i32 1
  store i32 -1, ptr %20, align 4
  %21 = getelementptr %struct.omap_dma_lch, ptr %19, i32 %0
  store i32 -1, ptr %21, align 4
  %22 = getelementptr %struct.omap_dma_lch, ptr %19, i32 %0, i32 5
  store ptr null, ptr %22, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dma_chan_lock, i32 noundef %18) #10
  br label %23

23:                                               ; preds = %8, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap_start_dma(i32 noundef %0) #0 {
  %2 = alloca [32 x i8], align 1
  %3 = load ptr, ptr @p, align 4
  %4 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  tail call void %5(i32 noundef 0, i32 noundef 41, i32 noundef %0) #10
  %6 = load ptr, ptr @dma_chan, align 4
  %7 = getelementptr %struct.omap_dma_lch, ptr %6, i32 %0
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %62, label %10

10:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #10
  %11 = load ptr, ptr @p, align 4
  %12 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %11, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %13(i32 noundef 44, i32 noundef %0) #10
  %15 = load ptr, ptr @dma_chan, align 4
  %16 = getelementptr %struct.omap_dma_lch, ptr %15, i32 %0
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, -1
  %19 = or i32 %17, 32768
  %20 = select i1 %18, i32 %14, i32 %19
  %21 = load ptr, ptr @p, align 4
  %22 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %21, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  tail call void %23(i32 noundef %20, i32 noundef 44, i32 noundef %0) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %2, i8 0, i32 32, i1 false)
  %24 = getelementptr [32 x i8], ptr %2, i32 0, i32 %0
  store i8 1, ptr %24, align 1
  %25 = load ptr, ptr @dma_chan, align 4
  %26 = getelementptr %struct.omap_dma_lch, ptr %25, i32 %0
  %27 = load i32, ptr %26, align 4
  br label %28

28:                                               ; preds = %33, %10
  %29 = phi i32 [ %27, %10 ], [ %36, %33 ]
  %30 = getelementptr [32 x i8], ptr %2, i32 0, i32 %29
  %31 = load i8, ptr %30, align 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %61

33:                                               ; preds = %28
  %34 = load ptr, ptr @dma_chan, align 4
  %35 = getelementptr %struct.omap_dma_lch, ptr %34, i32 %29
  %36 = load i32, ptr %35, align 4
  store i8 1, ptr %30, align 1
  %37 = load ptr, ptr @p, align 4
  %38 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %37, i32 0, i32 8
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 %39(i32 noundef 44, i32 noundef %29) #10
  %41 = load ptr, ptr @dma_chan, align 4
  %42 = getelementptr %struct.omap_dma_lch, ptr %41, i32 %29
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, -1
  %45 = or i32 %43, 32768
  %46 = select i1 %44, i32 %40, i32 %45
  %47 = load ptr, ptr @p, align 4
  %48 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %47, i32 0, i32 7
  %49 = load ptr, ptr %48, align 4
  tail call void %49(i32 noundef %46, i32 noundef 44, i32 noundef %29) #10
  %50 = load ptr, ptr @p, align 4
  %51 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %50, i32 0, i32 7
  %52 = load ptr, ptr %51, align 4
  tail call void %52(i32 noundef -1, i32 noundef 35, i32 noundef %29) #10
  %53 = load ptr, ptr @p, align 4
  %54 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %53, i32 0, i32 7
  %55 = load ptr, ptr %54, align 4
  %56 = load ptr, ptr @dma_chan, align 4
  %57 = getelementptr %struct.omap_dma_lch, ptr %56, i32 %29, i32 3
  %58 = load i16, ptr %57, align 2
  %59 = zext i16 %58 to i32
  tail call void %55(i32 noundef %59, i32 noundef 34, i32 noundef %29) #10
  %60 = icmp eq i32 %36, -1
  br i1 %60, label %61, label %28

61:                                               ; preds = %33, %28
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #10
  br label %70

62:                                               ; preds = %1
  %63 = load i32, ptr @errata, align 4
  %64 = and i32 %63, 2
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr @p, align 4
  %68 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %67, i32 0, i32 7
  %69 = load ptr, ptr %68, align 4
  tail call void %69(i32 noundef %0, i32 noundef 44, i32 noundef %0) #10
  br label %70

70:                                               ; preds = %66, %62, %61
  %71 = load ptr, ptr @p, align 4
  %72 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %71, i32 0, i32 7
  %73 = load ptr, ptr %72, align 4
  tail call void %73(i32 noundef -1, i32 noundef 35, i32 noundef %0) #10
  %74 = load ptr, ptr @p, align 4
  %75 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %74, i32 0, i32 7
  %76 = load ptr, ptr %75, align 4
  %77 = load ptr, ptr @dma_chan, align 4
  %78 = getelementptr %struct.omap_dma_lch, ptr %77, i32 %0, i32 3
  %79 = load i16, ptr %78, align 2
  %80 = zext i16 %79 to i32
  tail call void %76(i32 noundef %80, i32 noundef 34, i32 noundef %0) #10
  %81 = load ptr, ptr @p, align 4
  %82 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %81, i32 0, i32 8
  %83 = load ptr, ptr %82, align 4
  %84 = tail call i32 %83(i32 noundef 33, i32 noundef %0) #10
  %85 = load i32, ptr @errata, align 4
  %86 = shl i32 %85, 25
  %87 = and i32 %86, 33554432
  %88 = or i32 %84, %87
  %89 = or i32 %88, 128
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %90 = load ptr, ptr @p, align 4
  %91 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %90, i32 0, i32 7
  %92 = load ptr, ptr %91, align 4
  tail call void %92(i32 noundef %89, i32 noundef 33, i32 noundef %0) #10
  %93 = load ptr, ptr @dma_chan, align 4
  %94 = getelementptr %struct.omap_dma_lch, ptr %93, i32 %0, i32 7
  %95 = load i32, ptr %94, align 4
  %96 = or i32 %95, 1
  store i32 %96, ptr %94, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap_stop_dma(i32 noundef %0) #0 {
  %2 = alloca [32 x i8], align 1
  %3 = load ptr, ptr @p, align 4
  %4 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  tail call void %5(i32 noundef 0, i32 noundef 34, i32 noundef %0) #10
  %6 = load ptr, ptr @p, align 4
  %7 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %6, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  tail call void %8(i32 noundef -1, i32 noundef 35, i32 noundef %0) #10
  %9 = load ptr, ptr @p, align 4
  %10 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(i32 noundef 33, i32 noundef %0) #10
  %13 = load i32, ptr @errata, align 4
  %14 = and i32 %13, 8
  %15 = icmp eq i32 %14, 0
  %16 = and i32 %12, 16777216
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %15, i1 true, i1 %17
  br i1 %18, label %63, label %19

19:                                               ; preds = %1
  %20 = load ptr, ptr @p, align 4
  %21 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %20, i32 0, i32 8
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 %22(i32 noundef 28, i32 noundef %0) #10
  %24 = and i32 %23, -12289
  %25 = or i32 %24, 4096
  %26 = load ptr, ptr @p, align 4
  %27 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %26, i32 0, i32 7
  %28 = load ptr, ptr %27, align 4
  tail call void %28(i32 noundef %25, i32 noundef 28, i32 noundef 0) #10
  %29 = load ptr, ptr @p, align 4
  %30 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %29, i32 0, i32 8
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 %31(i32 noundef 33, i32 noundef %0) #10
  %33 = and i32 %32, -129
  %34 = load ptr, ptr @p, align 4
  %35 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %34, i32 0, i32 7
  %36 = load ptr, ptr %35, align 4
  tail call void %36(i32 noundef %33, i32 noundef 33, i32 noundef %0) #10
  %37 = load ptr, ptr @p, align 4
  %38 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %37, i32 0, i32 8
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 %39(i32 noundef 33, i32 noundef %0) #10
  %41 = and i32 %40, 1536
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %59, label %43

43:                                               ; preds = %43, %19
  %44 = phi i32 [ %46, %43 ], [ 0, %19 ]
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 1073740) #10
  %46 = add nuw nsw i32 %44, 1
  %47 = load ptr, ptr @p, align 4
  %48 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %47, i32 0, i32 8
  %49 = load ptr, ptr %48, align 4
  %50 = tail call i32 %49(i32 noundef 33, i32 noundef %0) #10
  %51 = icmp ult i32 %44, 99
  %52 = and i32 %50, 1536
  %53 = icmp ne i32 %52, 0
  %54 = select i1 %51, i1 %53, i1 false
  br i1 %54, label %43, label %55

55:                                               ; preds = %43
  %56 = icmp ugt i32 %44, 98
  br i1 %56, label %57, label %59

57:                                               ; preds = %55
  %58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %0) #11
  br label %59

59:                                               ; preds = %57, %55, %19
  %60 = load ptr, ptr @p, align 4
  %61 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %60, i32 0, i32 7
  %62 = load ptr, ptr %61, align 4
  tail call void %62(i32 noundef %23, i32 noundef 28, i32 noundef %0) #10
  br label %68

63:                                               ; preds = %1
  %64 = and i32 %12, -129
  %65 = load ptr, ptr @p, align 4
  %66 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %65, i32 0, i32 7
  %67 = load ptr, ptr %66, align 4
  tail call void %67(i32 noundef %64, i32 noundef 33, i32 noundef %0) #10
  br label %68

68:                                               ; preds = %63, %59
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !12
  tail call void @arm_heavy_mb() #10
  %69 = load ptr, ptr @dma_chan, align 4
  %70 = getelementptr %struct.omap_dma_lch, ptr %69, i32 %0
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %107, label %73

73:                                               ; preds = %68
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %74 = getelementptr [32 x i8], ptr %2, i32 0, i32 %0
  %75 = load i8, ptr %74, align 1
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %81, label %105

77:                                               ; preds = %81
  %78 = getelementptr [32 x i8], ptr %2, i32 0, i32 %103
  %79 = load i8, ptr %78, align 1
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %105

81:                                               ; preds = %77, %73
  %82 = phi ptr [ %78, %77 ], [ %74, %73 ]
  %83 = phi i32 [ %103, %77 ], [ %0, %73 ]
  store i8 1, ptr %82, align 1
  %84 = load ptr, ptr @p, align 4
  %85 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %84, i32 0, i32 8
  %86 = load ptr, ptr %85, align 4
  %87 = tail call i32 %86(i32 noundef 44, i32 noundef %83) #10
  %88 = load ptr, ptr @p, align 4
  %89 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %88, i32 0, i32 7
  %90 = load ptr, ptr %89, align 4
  tail call void %90(i32 noundef 0, i32 noundef 34, i32 noundef %83) #10
  %91 = load ptr, ptr @p, align 4
  %92 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %91, i32 0, i32 7
  %93 = load ptr, ptr %92, align 4
  tail call void %93(i32 noundef -1, i32 noundef 35, i32 noundef %83) #10
  %94 = and i32 %87, -32769
  %95 = load ptr, ptr @p, align 4
  %96 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %95, i32 0, i32 7
  %97 = load ptr, ptr %96, align 4
  tail call void %97(i32 noundef %94, i32 noundef 44, i32 noundef %83) #10
  %98 = load ptr, ptr @dma_chan, align 4
  %99 = getelementptr %struct.omap_dma_lch, ptr %98, i32 %83, i32 7
  %100 = load i32, ptr %99, align 4
  %101 = and i32 %100, -2
  store i32 %101, ptr %99, align 4
  %102 = getelementptr %struct.omap_dma_lch, ptr %98, i32 %83
  %103 = load i32, ptr %102, align 4
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %77

105:                                              ; preds = %81, %77, %73
  %106 = phi ptr [ %69, %73 ], [ %98, %77 ], [ %98, %81 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #10
  br label %107

107:                                              ; preds = %105, %68
  %108 = phi ptr [ %106, %105 ], [ %69, %68 ]
  %109 = getelementptr %struct.omap_dma_lch, ptr %108, i32 %0, i32 7
  %110 = load i32, ptr %109, align 4
  %111 = and i32 %110, -2
  store i32 %111, ptr %109, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_get_dma_src_pos(i32 noundef %0) #0 {
  %2 = load ptr, ptr @p, align 4
  %3 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %2, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 %4(i32 noundef 40, i32 noundef %0) #10
  %6 = load i32, ptr @errata, align 4
  %7 = and i32 %6, 32
  %8 = icmp ne i32 %7, 0
  %9 = icmp eq i32 %5, 0
  %10 = select i1 %8, i1 %9, i1 false
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load ptr, ptr @p, align 4
  %13 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %12, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %14(i32 noundef 40, i32 noundef %0) #10
  br label %16

16:                                               ; preds = %11, %1
  %17 = load ptr, ptr @p, align 4
  %18 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %17, i32 0, i32 8
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 %19(i32 noundef 41, i32 noundef %0) #10
  %21 = icmp eq i32 %20, 0
  %22 = load ptr, ptr @p, align 4
  %23 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %22, i32 0, i32 8
  %24 = load ptr, ptr %23, align 4
  %25 = select i1 %21, i32 45, i32 40, !prof !13
  %26 = tail call i32 %24(i32 noundef %25, i32 noundef %0) #10
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_get_dma_dst_pos(i32 noundef %0) #0 {
  %2 = load ptr, ptr @p, align 4
  %3 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %2, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 %4(i32 noundef 41, i32 noundef %0) #10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = load ptr, ptr @p, align 4
  %9 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(i32 noundef 41, i32 noundef %0) #10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18, !prof !13

13:                                               ; preds = %7
  %14 = load ptr, ptr @p, align 4
  %15 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %14, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %16(i32 noundef 46, i32 noundef %0) #10
  br label %18

18:                                               ; preds = %13, %7, %1
  %19 = phi i32 [ %17, %13 ], [ %11, %7 ], [ %5, %1 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_get_dma_active_status(i32 noundef %0) #0 {
  %2 = load ptr, ptr @p, align 4
  %3 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %2, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 %4(i32 noundef 33, i32 noundef %0) #10
  %6 = lshr i32 %5, 7
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_dma_running() local_unnamed_addr #0 {
  %1 = load i32, ptr @dma_chan_count, align 4
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %7, label %15

3:                                                ; preds = %7
  %4 = add nuw nsw i32 %8, 1
  %5 = load i32, ptr @dma_chan_count, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %3, %0
  %8 = phi i32 [ %4, %3 ], [ 0, %0 ]
  %9 = load ptr, ptr @p, align 4
  %10 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(i32 noundef 33, i32 noundef %8) #10
  %13 = and i32 %12, 128
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %3, label %15

15:                                               ; preds = %7, %3, %0
  %16 = phi i32 [ 0, %0 ], [ 0, %3 ], [ 1, %7 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @omap_get_plat_info() #8 {
  %1 = load ptr, ptr @p, align 4
  ret ptr %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @omap_system_dma_init() #9 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @omap_system_dma_driver, ptr noundef null) #10
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @omap_system_dma_exit() #9 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @omap_system_dma_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @omap_dma_cmdline_reserve_ch(ptr noundef %0) #9 section ".init.text" {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  %3 = call i32 @get_option(ptr noundef nonnull %2, ptr noundef nonnull @omap_dma_reserve_channels) #10
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  store i32 0, ptr @omap_dma_reserve_channels, align 4
  br label %6

6:                                                ; preds = %5, %1
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_system_dma_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %4 = load ptr, ptr %3, align 4
  store ptr %4, ptr @p, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.omap_system_dma_probe) #11
  br label %60

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %4, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  store ptr %9, ptr @d, align 4
  %10 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %4, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr @errata, align 4
  %12 = load i32, ptr %9, align 4
  %13 = and i32 %12, 4
  %14 = icmp ne i32 %13, 0
  %15 = load i32, ptr @omap_dma_reserve_channels, align 4
  %16 = icmp ne i32 %15, 0
  %17 = select i1 %14, i1 %16, i1 false
  %18 = getelementptr inbounds %struct.omap_dma_dev_attr, ptr %9, i32 0, i32 1
  %19 = load i16, ptr %18, align 4
  %20 = zext i16 %19 to i32
  %21 = icmp slt i32 %15, %20
  %22 = select i1 %17, i1 %21, i1 false
  br i1 %22, label %23, label %25

23:                                               ; preds = %7
  %24 = trunc i32 %15 to i16
  store i16 %24, ptr %18, align 4
  br label %25

25:                                               ; preds = %23, %7
  %26 = phi i16 [ %24, %23 ], [ %19, %7 ]
  %27 = zext i16 %26 to i32
  store i32 %27, ptr @dma_chan_count, align 4
  %28 = mul nuw nsw i32 %27, 40
  %29 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef %28, i32 noundef 3520) #10
  store ptr %29, ptr @dma_chan, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %60, label %31

31:                                               ; preds = %25
  %32 = load i32, ptr @dma_chan_count, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %34, %31
  %35 = phi i32 [ %43, %34 ], [ 0, %31 ]
  %36 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !14
  %37 = load ptr, ptr @p, align 4
  %38 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %37, i32 0, i32 6
  %39 = load ptr, ptr %38, align 4
  tail call void %39(i32 noundef %35) #10
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %36) #10, !srcloc !15
  %40 = load ptr, ptr @dma_chan, align 4
  %41 = getelementptr %struct.omap_dma_lch, ptr %40, i32 %35, i32 1
  store i32 -1, ptr %41, align 4
  %42 = getelementptr %struct.omap_dma_lch, ptr %40, i32 %35
  store i32 -1, ptr %42, align 4
  %43 = add nuw nsw i32 %35, 1
  %44 = load i32, ptr @dma_chan_count, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %34, label %46

46:                                               ; preds = %34, %31
  %47 = load ptr, ptr @d, align 4
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 32768
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  %53 = load ptr, ptr @dma_chan, align 4
  %54 = getelementptr inbounds %struct.omap_dma_lch, ptr %53, i32 0, i32 1
  store i32 0, ptr %54, align 4
  %55 = getelementptr %struct.omap_dma_lch, ptr %53, i32 1, i32 1
  store i32 1, ptr %55, align 4
  br label %56

56:                                               ; preds = %51, %46
  %57 = load ptr, ptr @p, align 4
  %58 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %57, i32 0, i32 4
  %59 = load ptr, ptr %58, align 4
  tail call void %59() #10
  br label %60

60:                                               ; preds = %56, %25, %6
  %61 = phi i32 [ 0, %56 ], [ -22, %6 ], [ -12, %25 ]
  ret i32 %61
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @omap_system_dma_remove(ptr nocapture noundef readnone %0) #2 {
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_option(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 2151561336, i64 2151561825, i64 2151561373, i64 2151561429, i64 2151561463, i64 2151561487, i64 2151561528, i64 2151561549, i64 2151561577, i64 2151561611}
!9 = !{i64 2151566957, i64 2151567446, i64 2151566994, i64 2151567050, i64 2151567084, i64 2151567108, i64 2151567149, i64 2151567170, i64 2151567198, i64 2151567232}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2151577024}
!12 = !{i64 2151579554}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 468524, i64 468585}
!15 = !{i64 471541}
