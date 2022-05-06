; ModuleID = '/llk/IR/sound/arm/pxa2xx-pcm-lib.c_pt.bc'
source_filename = "../sound/arm/pxa2xx-pcm-lib.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pxa2xx_pcm_hw_params:\09\09\09\09\09"
module asm "\09.asciz \09\22pxa2xx_pcm_hw_params\22\09\09\09\09\09"
module asm "__kstrtabns_pxa2xx_pcm_hw_params:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pxa2xx_pcm_trigger:\09\09\09\09\09"
module asm "\09.asciz \09\22pxa2xx_pcm_trigger\22\09\09\09\09\09"
module asm "__kstrtabns_pxa2xx_pcm_trigger:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pxa2xx_pcm_pointer:\09\09\09\09\09"
module asm "\09.asciz \09\22pxa2xx_pcm_pointer\22\09\09\09\09\09"
module asm "__kstrtabns_pxa2xx_pcm_pointer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pxa2xx_pcm_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22pxa2xx_pcm_prepare\22\09\09\09\09\09"
module asm "__kstrtabns_pxa2xx_pcm_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pxa2xx_pcm_open:\09\09\09\09\09"
module asm "\09.asciz \09\22pxa2xx_pcm_open\22\09\09\09\09\09"
module asm "__kstrtabns_pxa2xx_pcm_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pxa2xx_pcm_close:\09\09\09\09\09"
module asm "\09.asciz \09\22pxa2xx_pcm_close\22\09\09\09\09\09"
module asm "__kstrtabns_pxa2xx_pcm_close:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pxa2xx_pcm_preallocate_dma_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22pxa2xx_pcm_preallocate_dma_buffer\22\09\09\09\09\09"
module asm "__kstrtabns_pxa2xx_pcm_preallocate_dma_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pxa2xx_soc_pcm_new:\09\09\09\09\09"
module asm "\09.asciz \09\22pxa2xx_soc_pcm_new\22\09\09\09\09\09"
module asm "__kstrtabns_pxa2xx_soc_pcm_new:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pxa2xx_soc_pcm_open:\09\09\09\09\09"
module asm "\09.asciz \09\22pxa2xx_soc_pcm_open\22\09\09\09\09\09"
module asm "__kstrtabns_pxa2xx_soc_pcm_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pxa2xx_soc_pcm_close:\09\09\09\09\09"
module asm "\09.asciz \09\22pxa2xx_soc_pcm_close\22\09\09\09\09\09"
module asm "__kstrtabns_pxa2xx_soc_pcm_close:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pxa2xx_soc_pcm_hw_params:\09\09\09\09\09"
module asm "\09.asciz \09\22pxa2xx_soc_pcm_hw_params\22\09\09\09\09\09"
module asm "__kstrtabns_pxa2xx_soc_pcm_hw_params:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pxa2xx_soc_pcm_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22pxa2xx_soc_pcm_prepare\22\09\09\09\09\09"
module asm "__kstrtabns_pxa2xx_soc_pcm_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pxa2xx_soc_pcm_trigger:\09\09\09\09\09"
module asm "\09.asciz \09\22pxa2xx_soc_pcm_trigger\22\09\09\09\09\09"
module asm "__kstrtabns_pxa2xx_soc_pcm_trigger:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pxa2xx_soc_pcm_pointer:\09\09\09\09\09"
module asm "\09.asciz \09\22pxa2xx_soc_pcm_pointer\22\09\09\09\09\09"
module asm "__kstrtabns_pxa2xx_soc_pcm_pointer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.list_head = type { ptr, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64 }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [80 x i8], [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }

@__kstrtab_pxa2xx_pcm_hw_params = external dso_local constant [0 x i8], align 1
@__kstrtabns_pxa2xx_pcm_hw_params = external dso_local constant [0 x i8], align 1
@__ksymtab_pxa2xx_pcm_hw_params = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pxa2xx_pcm_hw_params to i32), ptr @__kstrtab_pxa2xx_pcm_hw_params, ptr @__kstrtabns_pxa2xx_pcm_hw_params }, section "___ksymtab+pxa2xx_pcm_hw_params", align 4
@__kstrtab_pxa2xx_pcm_trigger = external dso_local constant [0 x i8], align 1
@__kstrtabns_pxa2xx_pcm_trigger = external dso_local constant [0 x i8], align 1
@__ksymtab_pxa2xx_pcm_trigger = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pxa2xx_pcm_trigger to i32), ptr @__kstrtab_pxa2xx_pcm_trigger, ptr @__kstrtabns_pxa2xx_pcm_trigger }, section "___ksymtab+pxa2xx_pcm_trigger", align 4
@__kstrtab_pxa2xx_pcm_pointer = external dso_local constant [0 x i8], align 1
@__kstrtabns_pxa2xx_pcm_pointer = external dso_local constant [0 x i8], align 1
@__ksymtab_pxa2xx_pcm_pointer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pxa2xx_pcm_pointer to i32), ptr @__kstrtab_pxa2xx_pcm_pointer, ptr @__kstrtabns_pxa2xx_pcm_pointer }, section "___ksymtab+pxa2xx_pcm_pointer", align 4
@__kstrtab_pxa2xx_pcm_prepare = external dso_local constant [0 x i8], align 1
@__kstrtabns_pxa2xx_pcm_prepare = external dso_local constant [0 x i8], align 1
@__ksymtab_pxa2xx_pcm_prepare = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pxa2xx_pcm_prepare to i32), ptr @__kstrtab_pxa2xx_pcm_prepare, ptr @__kstrtabns_pxa2xx_pcm_prepare }, section "___ksymtab+pxa2xx_pcm_prepare", align 4
@pxa2xx_pcm_hardware = internal unnamed_addr constant %struct.snd_pcm_hardware { i32 786691, i64 1092, i32 0, i32 0, i32 0, i32 0, i32 0, i32 131072, i32 32, i32 8160, i32 1, i32 256, i32 32 }, align 8
@__kstrtab_pxa2xx_pcm_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_pxa2xx_pcm_open = external dso_local constant [0 x i8], align 1
@__ksymtab_pxa2xx_pcm_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pxa2xx_pcm_open to i32), ptr @__kstrtab_pxa2xx_pcm_open, ptr @__kstrtabns_pxa2xx_pcm_open }, section "___ksymtab+pxa2xx_pcm_open", align 4
@__kstrtab_pxa2xx_pcm_close = external dso_local constant [0 x i8], align 1
@__kstrtabns_pxa2xx_pcm_close = external dso_local constant [0 x i8], align 1
@__ksymtab_pxa2xx_pcm_close = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pxa2xx_pcm_close to i32), ptr @__kstrtab_pxa2xx_pcm_close, ptr @__kstrtabns_pxa2xx_pcm_close }, section "___ksymtab+pxa2xx_pcm_close", align 4
@__kstrtab_pxa2xx_pcm_preallocate_dma_buffer = external dso_local constant [0 x i8], align 1
@__kstrtabns_pxa2xx_pcm_preallocate_dma_buffer = external dso_local constant [0 x i8], align 1
@__ksymtab_pxa2xx_pcm_preallocate_dma_buffer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pxa2xx_pcm_preallocate_dma_buffer to i32), ptr @__kstrtab_pxa2xx_pcm_preallocate_dma_buffer, ptr @__kstrtabns_pxa2xx_pcm_preallocate_dma_buffer }, section "___ksymtab+pxa2xx_pcm_preallocate_dma_buffer", align 4
@__kstrtab_pxa2xx_soc_pcm_new = external dso_local constant [0 x i8], align 1
@__kstrtabns_pxa2xx_soc_pcm_new = external dso_local constant [0 x i8], align 1
@__ksymtab_pxa2xx_soc_pcm_new = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pxa2xx_soc_pcm_new to i32), ptr @__kstrtab_pxa2xx_soc_pcm_new, ptr @__kstrtabns_pxa2xx_soc_pcm_new }, section "___ksymtab+pxa2xx_soc_pcm_new", align 4
@__kstrtab_pxa2xx_soc_pcm_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_pxa2xx_soc_pcm_open = external dso_local constant [0 x i8], align 1
@__ksymtab_pxa2xx_soc_pcm_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pxa2xx_soc_pcm_open to i32), ptr @__kstrtab_pxa2xx_soc_pcm_open, ptr @__kstrtabns_pxa2xx_soc_pcm_open }, section "___ksymtab+pxa2xx_soc_pcm_open", align 4
@__kstrtab_pxa2xx_soc_pcm_close = external dso_local constant [0 x i8], align 1
@__kstrtabns_pxa2xx_soc_pcm_close = external dso_local constant [0 x i8], align 1
@__ksymtab_pxa2xx_soc_pcm_close = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pxa2xx_soc_pcm_close to i32), ptr @__kstrtab_pxa2xx_soc_pcm_close, ptr @__kstrtabns_pxa2xx_soc_pcm_close }, section "___ksymtab+pxa2xx_soc_pcm_close", align 4
@__kstrtab_pxa2xx_soc_pcm_hw_params = external dso_local constant [0 x i8], align 1
@__kstrtabns_pxa2xx_soc_pcm_hw_params = external dso_local constant [0 x i8], align 1
@__ksymtab_pxa2xx_soc_pcm_hw_params = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pxa2xx_soc_pcm_hw_params to i32), ptr @__kstrtab_pxa2xx_soc_pcm_hw_params, ptr @__kstrtabns_pxa2xx_soc_pcm_hw_params }, section "___ksymtab+pxa2xx_soc_pcm_hw_params", align 4
@__kstrtab_pxa2xx_soc_pcm_prepare = external dso_local constant [0 x i8], align 1
@__kstrtabns_pxa2xx_soc_pcm_prepare = external dso_local constant [0 x i8], align 1
@__ksymtab_pxa2xx_soc_pcm_prepare = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pxa2xx_soc_pcm_prepare to i32), ptr @__kstrtab_pxa2xx_soc_pcm_prepare, ptr @__kstrtabns_pxa2xx_soc_pcm_prepare }, section "___ksymtab+pxa2xx_soc_pcm_prepare", align 4
@__kstrtab_pxa2xx_soc_pcm_trigger = external dso_local constant [0 x i8], align 1
@__kstrtabns_pxa2xx_soc_pcm_trigger = external dso_local constant [0 x i8], align 1
@__ksymtab_pxa2xx_soc_pcm_trigger = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pxa2xx_soc_pcm_trigger to i32), ptr @__kstrtab_pxa2xx_soc_pcm_trigger, ptr @__kstrtabns_pxa2xx_soc_pcm_trigger }, section "___ksymtab+pxa2xx_soc_pcm_trigger", align 4
@__kstrtab_pxa2xx_soc_pcm_pointer = external dso_local constant [0 x i8], align 1
@__kstrtabns_pxa2xx_soc_pcm_pointer = external dso_local constant [0 x i8], align 1
@__ksymtab_pxa2xx_soc_pcm_pointer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pxa2xx_soc_pcm_pointer to i32), ptr @__kstrtab_pxa2xx_soc_pcm_pointer, ptr @__kstrtabns_pxa2xx_soc_pcm_pointer }, section "___ksymtab+pxa2xx_soc_pcm_pointer", align 4
@__UNIQUE_ID_author234 = internal constant [21 x i8] c"author=Nicolas Pitre\00", section ".modinfo", align 1
@__UNIQUE_ID_description235 = internal constant [39 x i8] c"description=Intel PXA2xx sound library\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_author234, ptr @__UNIQUE_ID_description235, ptr @__UNIQUE_ID_license236, ptr @__ksymtab_pxa2xx_pcm_close, ptr @__ksymtab_pxa2xx_pcm_hw_params, ptr @__ksymtab_pxa2xx_pcm_open, ptr @__ksymtab_pxa2xx_pcm_pointer, ptr @__ksymtab_pxa2xx_pcm_preallocate_dma_buffer, ptr @__ksymtab_pxa2xx_pcm_prepare, ptr @__ksymtab_pxa2xx_pcm_trigger, ptr @__ksymtab_pxa2xx_soc_pcm_close, ptr @__ksymtab_pxa2xx_soc_pcm_hw_params, ptr @__ksymtab_pxa2xx_soc_pcm_new, ptr @__ksymtab_pxa2xx_soc_pcm_open, ptr @__ksymtab_pxa2xx_soc_pcm_pointer, ptr @__ksymtab_pxa2xx_soc_pcm_prepare, ptr @__ksymtab_pxa2xx_soc_pcm_trigger], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pxa2xx_pcm_hw_params(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.dma_slave_config, align 4
  %4 = tail call ptr @snd_dmaengine_pcm_get_chan(ptr noundef %0) #6
  %5 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %3, i8 0, i32 48, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %6, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct.snd_soc_dai, ptr %9, i32 0, i32 7
  %14 = getelementptr inbounds %struct.snd_soc_dai, ptr %9, i32 0, i32 8
  %15 = select i1 %12, ptr %13, ptr %14
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %36, label %18

18:                                               ; preds = %2
  %19 = call i32 @snd_hwparams_to_dma_slave_config(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %18
  %22 = load ptr, ptr %7, align 4
  %23 = load ptr, ptr %22, align 4
  %24 = load i32, ptr %10, align 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds %struct.snd_soc_dai, ptr %23, i32 0, i32 7
  %27 = getelementptr inbounds %struct.snd_soc_dai, ptr %23, i32 0, i32 8
  %28 = select i1 %25, ptr %26, ptr %27
  %29 = load ptr, ptr %28, align 4
  call void @snd_dmaengine_pcm_set_config_from_dai_data(ptr noundef %0, ptr noundef %29, ptr noundef nonnull %3) #6
  %30 = load ptr, ptr %4, align 4
  %31 = getelementptr inbounds %struct.dma_device, ptr %30, i32 0, i32 44
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %21
  %35 = call i32 %32(ptr noundef %4, ptr noundef nonnull %3) #6
  br label %36

36:                                               ; preds = %34, %21, %18, %2
  %37 = phi i32 [ 0, %2 ], [ %19, %18 ], [ %35, %34 ], [ -38, %21 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #6
  ret i32 %37
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_dmaengine_pcm_get_chan(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hwparams_to_dma_slave_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_dmaengine_pcm_set_config_from_dai_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pxa2xx_pcm_trigger(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call i32 @snd_dmaengine_pcm_trigger(ptr noundef %0, i32 noundef %1) #6
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_trigger(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pxa2xx_pcm_pointer(ptr noundef %0) #0 {
  %2 = tail call i32 @snd_dmaengine_pcm_pointer(ptr noundef %0) #6
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_pointer(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @pxa2xx_pcm_prepare(ptr nocapture readnone %0) #4 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pxa2xx_pcm_open(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) @pxa2xx_pcm_hardware, i32 64, i1 false)
  %7 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %3, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct.snd_soc_dai, ptr %9, i32 0, i32 7
  %14 = getelementptr inbounds %struct.snd_soc_dai, ptr %9, i32 0, i32 8
  %15 = select i1 %12, ptr %13, ptr %14
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %38, label %18

18:                                               ; preds = %1
  %19 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %5, i32 noundef 0, i32 noundef 14, i32 noundef 32) #6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %18
  %22 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %5, i32 noundef 0, i32 noundef 18, i32 noundef 32) #6
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %21
  %25 = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %5, i32 noundef 15) #6
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %7, align 4
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.snd_soc_dai, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, ptr %16, i32 0, i32 4
  %33 = load ptr, ptr %32, align 4
  %34 = tail call ptr @dma_request_chan(ptr noundef %31, ptr noundef %33) #6
  %35 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  %36 = select i1 %35, ptr null, ptr %34
  %37 = tail call i32 @snd_dmaengine_pcm_open(ptr noundef %0, ptr noundef %36) #6
  br label %38

38:                                               ; preds = %27, %24, %21, %18, %1
  %39 = phi i32 [ %37, %27 ], [ 0, %1 ], [ %19, %18 ], [ %22, %21 ], [ %25, %24 ]
  ret i32 %39
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_step(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pxa2xx_pcm_close(ptr noundef %0) #0 {
  %2 = tail call i32 @snd_dmaengine_pcm_close_release_chan(ptr noundef %0) #6
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_close_release_chan(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pxa2xx_pcm_preallocate_dma_buffer(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.snd_card, ptr %2, i32 0, i32 27
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %0, i32 noundef 5, ptr noundef %4, i32 noundef 131072, i32 noundef 0) #6
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pxa2xx_soc_pcm_new(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_card, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 27
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 17
  %12 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 16
  store ptr %11, ptr %12, align 4
  %13 = tail call i32 @dma_set_mask(ptr noundef %10, i64 noundef 4294967295) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = tail call i32 @dma_set_coherent_mask(ptr noundef %10, i64 noundef 4294967295) #6
  %17 = load ptr, ptr %8, align 8
  %18 = getelementptr inbounds %struct.snd_card, ptr %17, i32 0, i32 27
  %19 = load ptr, ptr %18, align 8
  %20 = tail call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %8, i32 noundef 5, ptr noundef %19, i32 noundef 131072, i32 noundef 0) #6
  br label %21

21:                                               ; preds = %15, %2
  %22 = phi i32 [ %20, %15 ], [ %13, %2 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pxa2xx_soc_pcm_open(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @pxa2xx_pcm_open(ptr noundef %1)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pxa2xx_soc_pcm_close(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @snd_dmaengine_pcm_close_release_chan(ptr noundef %1) #6
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pxa2xx_soc_pcm_hw_params(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.dma_slave_config, align 4
  %5 = tail call ptr @snd_dmaengine_pcm_get_chan(ptr noundef %1) #6
  %6 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %4, i8 0, i32 48, i1 false) #6, !annotation !8
  %8 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %7, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds %struct.snd_soc_dai, ptr %10, i32 0, i32 7
  %15 = getelementptr inbounds %struct.snd_soc_dai, ptr %10, i32 0, i32 8
  %16 = select i1 %13, ptr %14, ptr %15
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %37, label %19

19:                                               ; preds = %3
  %20 = call i32 @snd_hwparams_to_dma_slave_config(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4) #6
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %19
  %23 = load ptr, ptr %8, align 4
  %24 = load ptr, ptr %23, align 4
  %25 = load i32, ptr %11, align 4
  %26 = icmp eq i32 %25, 0
  %27 = getelementptr inbounds %struct.snd_soc_dai, ptr %24, i32 0, i32 7
  %28 = getelementptr inbounds %struct.snd_soc_dai, ptr %24, i32 0, i32 8
  %29 = select i1 %26, ptr %27, ptr %28
  %30 = load ptr, ptr %29, align 4
  call void @snd_dmaengine_pcm_set_config_from_dai_data(ptr noundef %1, ptr noundef %30, ptr noundef nonnull %4) #6
  %31 = load ptr, ptr %5, align 4
  %32 = getelementptr inbounds %struct.dma_device, ptr %31, i32 0, i32 44
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %22
  %36 = call i32 %33(ptr noundef %5, ptr noundef nonnull %4) #6
  br label %37

37:                                               ; preds = %35, %22, %19, %3
  %38 = phi i32 [ 0, %3 ], [ %20, %19 ], [ %36, %35 ], [ -38, %22 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #6
  ret i32 %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @pxa2xx_soc_pcm_prepare(ptr nocapture readnone %0, ptr nocapture readnone %1) #4 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pxa2xx_soc_pcm_trigger(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 @snd_dmaengine_pcm_trigger(ptr noundef %1, i32 noundef %2) #6
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pxa2xx_soc_pcm_pointer(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @snd_dmaengine_pcm_pointer(ptr noundef %1) #6
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind }

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
