; ModuleID = '/llk/IR/drivers/mmc/host/tmio_mmc_core.c_pt.bc'
source_filename = "../drivers/mmc/host/tmio_mmc_core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tmio_mmc_enable_mmc_irqs:\09\09\09\09\09"
module asm "\09.asciz \09\22tmio_mmc_enable_mmc_irqs\22\09\09\09\09\09"
module asm "__kstrtabns_tmio_mmc_enable_mmc_irqs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tmio_mmc_disable_mmc_irqs:\09\09\09\09\09"
module asm "\09.asciz \09\22tmio_mmc_disable_mmc_irqs\22\09\09\09\09\09"
module asm "__kstrtabns_tmio_mmc_disable_mmc_irqs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tmio_mmc_do_data_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22tmio_mmc_do_data_irq\22\09\09\09\09\09"
module asm "__kstrtabns_tmio_mmc_do_data_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tmio_mmc_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22tmio_mmc_irq\22\09\09\09\09\09"
module asm "__kstrtabns_tmio_mmc_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tmio_mmc_host_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22tmio_mmc_host_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_tmio_mmc_host_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tmio_mmc_host_free:\09\09\09\09\09"
module asm "\09.asciz \09\22tmio_mmc_host_free\22\09\09\09\09\09"
module asm "__kstrtabns_tmio_mmc_host_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tmio_mmc_host_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22tmio_mmc_host_probe\22\09\09\09\09\09"
module asm "__kstrtabns_tmio_mmc_host_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tmio_mmc_host_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22tmio_mmc_host_remove\22\09\09\09\09\09"
module asm "__kstrtabns_tmio_mmc_host_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tmio_mmc_host_runtime_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22tmio_mmc_host_runtime_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_tmio_mmc_host_runtime_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tmio_mmc_host_runtime_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22tmio_mmc_host_runtime_resume\22\09\09\09\09\09"
module asm "__kstrtabns_tmio_mmc_host_runtime_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.tmio_mmc_host = type { ptr, ptr, ptr, ptr, ptr, %struct.mmc_host_ops, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, i8, ptr, ptr, %struct.tasklet_struct, %struct.scatterlist, ptr, %struct.delayed_work, %struct.work_struct, i32, i32, i32, i32, i32, %struct.spinlock, i32, %struct.mutex, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.70, i32 }
%struct.atomic_t = type { i32 }
%union.anon.70 = type { ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.54, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.54 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, [37 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.mmc_supply = type { ptr, ptr }
%struct.tmio_mmc_data = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, ptr, ptr }
%struct.tmio_mmc_dma_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32 }

@__kstrtab_tmio_mmc_enable_mmc_irqs = external dso_local constant [0 x i8], align 1
@__kstrtabns_tmio_mmc_enable_mmc_irqs = external dso_local constant [0 x i8], align 1
@__ksymtab_tmio_mmc_enable_mmc_irqs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tmio_mmc_enable_mmc_irqs to i32), ptr @__kstrtab_tmio_mmc_enable_mmc_irqs, ptr @__kstrtabns_tmio_mmc_enable_mmc_irqs }, section "___ksymtab_gpl+tmio_mmc_enable_mmc_irqs", align 4
@__kstrtab_tmio_mmc_disable_mmc_irqs = external dso_local constant [0 x i8], align 1
@__kstrtabns_tmio_mmc_disable_mmc_irqs = external dso_local constant [0 x i8], align 1
@__ksymtab_tmio_mmc_disable_mmc_irqs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tmio_mmc_disable_mmc_irqs to i32), ptr @__kstrtab_tmio_mmc_disable_mmc_irqs, ptr @__kstrtabns_tmio_mmc_disable_mmc_irqs }, section "___ksymtab_gpl+tmio_mmc_disable_mmc_irqs", align 4
@.str = private unnamed_addr constant [23 x i8] c"Spurious data end IRQ\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"unsupported stop: CMD%u,0x%x. We did CMD12,0\0A\00", align 1
@__kstrtab_tmio_mmc_do_data_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_tmio_mmc_do_data_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_tmio_mmc_do_data_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tmio_mmc_do_data_irq to i32), ptr @__kstrtab_tmio_mmc_do_data_irq, ptr @__kstrtabns_tmio_mmc_do_data_irq }, section "___ksymtab_gpl+tmio_mmc_do_data_irq", align 4
@__kstrtab_tmio_mmc_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_tmio_mmc_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_tmio_mmc_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tmio_mmc_irq to i32), ptr @__kstrtab_tmio_mmc_irq, ptr @__kstrtabns_tmio_mmc_irq }, section "___ksymtab_gpl+tmio_mmc_irq", align 4
@tmio_mmc_ops = internal unnamed_addr constant %struct.mmc_host_ops { ptr null, ptr null, ptr @tmio_mmc_request, ptr null, ptr @tmio_mmc_set_ios, ptr @tmio_mmc_get_ro, ptr @tmio_mmc_get_cd, ptr @tmio_mmc_enable_sdio_irq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tmio_multi_io_quirk, ptr null }, align 4
@__kstrtab_tmio_mmc_host_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_tmio_mmc_host_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_tmio_mmc_host_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tmio_mmc_host_alloc to i32), ptr @__kstrtab_tmio_mmc_host_alloc, ptr @__kstrtabns_tmio_mmc_host_alloc }, section "___ksymtab_gpl+tmio_mmc_host_alloc", align 4
@__kstrtab_tmio_mmc_host_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_tmio_mmc_host_free = external dso_local constant [0 x i8], align 1
@__ksymtab_tmio_mmc_host_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tmio_mmc_host_free to i32), ptr @__kstrtab_tmio_mmc_host_free, ptr @__kstrtabns_tmio_mmc_host_free }, section "___ksymtab_gpl+tmio_mmc_host_free", align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"cd\00", align 1
@tmio_mmc_host_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"&_host->ios_lock\00", align 1
@__kstrtab_tmio_mmc_host_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_tmio_mmc_host_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_tmio_mmc_host_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tmio_mmc_host_probe to i32), ptr @__kstrtab_tmio_mmc_host_probe, ptr @__kstrtabns_tmio_mmc_host_probe }, section "___ksymtab_gpl+tmio_mmc_host_probe", align 4
@__kstrtab_tmio_mmc_host_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_tmio_mmc_host_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_tmio_mmc_host_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tmio_mmc_host_remove to i32), ptr @__kstrtab_tmio_mmc_host_remove, ptr @__kstrtabns_tmio_mmc_host_remove }, section "___ksymtab_gpl+tmio_mmc_host_remove", align 4
@__kstrtab_tmio_mmc_host_runtime_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_tmio_mmc_host_runtime_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_tmio_mmc_host_runtime_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tmio_mmc_host_runtime_suspend to i32), ptr @__kstrtab_tmio_mmc_host_runtime_suspend, ptr @__kstrtabns_tmio_mmc_host_runtime_suspend }, section "___ksymtab_gpl+tmio_mmc_host_runtime_suspend", align 4
@__kstrtab_tmio_mmc_host_runtime_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_tmio_mmc_host_runtime_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_tmio_mmc_host_runtime_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tmio_mmc_host_runtime_resume to i32), ptr @__kstrtab_tmio_mmc_host_runtime_resume, ptr @__kstrtabns_tmio_mmc_host_runtime_resume }, section "___ksymtab_gpl+tmio_mmc_host_runtime_resume", align 4
@__UNIQUE_ID_file290 = internal constant [50 x i8] c"tmio_mmc_core.file=drivers/mmc/host/tmio_mmc_core\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [29 x i8] c"tmio_mmc_core.license=GPL v2\00", section ".modinfo", align 1
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"\013PIO IRQ in DMA mode!\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.5 = private unnamed_addr constant [49 x i8] c"\013%s: %d byte block unsupported in 4/8 bit mode\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"toshiba,mmc-wrprotect-disable\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"timeout waiting for hardware interrupt (CMD%u)\0A\00", align 1
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__ksymtab_tmio_mmc_disable_mmc_irqs, ptr @__ksymtab_tmio_mmc_do_data_irq, ptr @__ksymtab_tmio_mmc_enable_mmc_irqs, ptr @__ksymtab_tmio_mmc_host_alloc, ptr @__ksymtab_tmio_mmc_host_free, ptr @__ksymtab_tmio_mmc_host_probe, ptr @__ksymtab_tmio_mmc_host_remove, ptr @__ksymtab_tmio_mmc_host_runtime_resume, ptr @__ksymtab_tmio_mmc_host_runtime_suspend, ptr @__ksymtab_tmio_mmc_irq], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tmio_mmc_enable_mmc_irqs(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = and i32 %1, 54525981
  %4 = xor i32 %3, -1
  %5 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 22
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, %4
  store i32 %7, ptr %5, align 4
  %8 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 25
  %9 = load i32, ptr %8, align 4
  %10 = or i32 %9, %7
  %11 = trunc i32 %10 to i16
  %12 = load ptr, ptr %0, align 4
  %13 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 11
  %14 = load i32, ptr %13, align 4
  %15 = shl i32 32, %14
  %16 = getelementptr i8, ptr %12, i32 %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %16, i16 %11) #7, !srcloc !9
  %17 = lshr i32 %10, 16
  %18 = trunc i32 %17 to i16
  %19 = load ptr, ptr %0, align 4
  %20 = load i32, ptr %13, align 4
  %21 = shl i32 34, %20
  %22 = getelementptr i8, ptr %19, i32 %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %22, i16 %18) #7, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tmio_mmc_disable_mmc_irqs(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = and i32 %1, 54525981
  %4 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 22
  %5 = load i32, ptr %4, align 4
  %6 = or i32 %5, %3
  store i32 %6, ptr %4, align 4
  %7 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 25
  %8 = load i32, ptr %7, align 4
  %9 = or i32 %8, %6
  %10 = trunc i32 %9 to i16
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 11
  %13 = load i32, ptr %12, align 4
  %14 = shl i32 32, %13
  %15 = getelementptr i8, ptr %11, i32 %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %15, i16 %10) #7, !srcloc !9
  %16 = lshr i32 %9, 16
  %17 = trunc i32 %16 to i16
  %18 = load ptr, ptr %0, align 4
  %19 = load i32, ptr %12, align 4
  %20 = shl i32 34, %19
  %21 = getelementptr i8, ptr %18, i32 %20
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %21, i16 %17) #7, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tmio_mmc_do_data_irq(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  store ptr null, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 12
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str) #8
  br label %115

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = mul i32 %19, %17
  br label %21

21:                                               ; preds = %15, %9
  %22 = phi i32 [ %20, %15 ], [ 0, %9 ]
  %23 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 7
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 512
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %65, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 14
  %30 = load i8, ptr %29, align 4, !range !10
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %65, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 7
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 18
  %36 = icmp eq ptr %34, %35
  br i1 %36, label %37, label %65

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 8
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !11
  %41 = load i32, ptr %39, align 4
  %42 = and i32 %41, -4
  %43 = inttoptr i32 %42 to ptr
  %44 = load i32, ptr @pgprot_kernel, align 4
  %45 = or i32 %44, 512
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %46 = tail call ptr @llvm.thread.pointer() #7
  %47 = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 149
  %48 = load i32, ptr %47, align 8
  %49 = add i32 %48, 1
  store i32 %49, ptr %47, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  %50 = tail call ptr @__kmap_local_page_prot(ptr noundef %43, i32 noundef %45) #7
  %51 = getelementptr inbounds %struct.scatterlist, ptr %39, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr i8, ptr %50, i32 %52
  %54 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 19
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 18, i32 2
  %57 = load i32, ptr %56, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %53, ptr align 1 %55, i32 %57, i1 false) #7
  %58 = load ptr, ptr %38, align 4
  %59 = getelementptr inbounds %struct.scatterlist, ptr %58, i32 0, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = sub i32 0, %60
  %62 = getelementptr i8, ptr %53, i32 %61
  tail call void @kunmap_local_indexed(ptr noundef %62) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  %63 = load i32, ptr %47, align 8
  %64 = add i32 %63, -1
  store i32 %64, ptr %47, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %40) #7, !srcloc !16
  br label %65

65:                                               ; preds = %37, %32, %28, %21
  %66 = icmp eq ptr %11, null
  br i1 %66, label %111, label %67

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %111

72:                                               ; preds = %67
  %73 = load i32, ptr %11, align 4
  %74 = icmp eq i32 %73, 12
  %75 = getelementptr inbounds %struct.mmc_command, ptr %11, i32 0, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, 0
  %78 = select i1 %74, i1 %77, i1 false
  br i1 %78, label %83, label %79

79:                                               ; preds = %72
  %80 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 12
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.platform_device, ptr %81, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.1, i32 noundef %73, i32 noundef %76) #8
  br label %83

83:                                               ; preds = %79, %72
  %84 = load ptr, ptr %0, align 4
  %85 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 11
  %86 = load i32, ptr %85, align 4
  %87 = shl i32 12, %86
  %88 = getelementptr i8, ptr %84, i32 %87
  %89 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %88) #7, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !18
  %90 = zext i16 %89 to i32
  %91 = load ptr, ptr %0, align 4
  %92 = load i32, ptr %85, align 4
  %93 = shl i32 14, %92
  %94 = getelementptr i8, ptr %91, i32 %93
  %95 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %94) #7, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !18
  %96 = zext i16 %95 to i32
  %97 = shl nuw i32 %96, 16
  %98 = or i32 %97, %90
  %99 = getelementptr inbounds %struct.mmc_command, ptr %11, i32 0, i32 2
  store i32 %98, ptr %99, align 4
  %100 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 36
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %83
  %104 = tail call i32 %101(ptr noundef %0, i32 noundef 8) #7
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103, %83
  %107 = load ptr, ptr %0, align 4
  %108 = load i32, ptr %85, align 4
  %109 = shl i32 8, %108
  %110 = getelementptr i8, ptr %107, i32 %109
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %110, i16 0) #7, !srcloc !9
  br label %111

111:                                              ; preds = %106, %103, %67, %65
  %112 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 21
  %113 = load ptr, ptr @system_wq, align 4
  %114 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %113, ptr noundef %112) #7
  br label %115

115:                                              ; preds = %111, %5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tmio_mmc_irq(i32 %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = load ptr, ptr %1, align 4
  %5 = getelementptr inbounds %struct.tmio_mmc_host, ptr %1, i32 0, i32 11
  %6 = load i32, ptr %5, align 4
  %7 = shl i32 28, %6
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %8) #7, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !18
  %10 = zext i16 %9 to i32
  %11 = load ptr, ptr %1, align 4
  %12 = load i32, ptr %5, align 4
  %13 = shl i32 30, %12
  %14 = getelementptr i8, ptr %11, i32 %13
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %14) #7, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !18
  %16 = zext i16 %15 to i32
  %17 = shl nuw i32 %16, 16
  %18 = or i32 %17, %10
  %19 = getelementptr inbounds %struct.tmio_mmc_host, ptr %1, i32 0, i32 22
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 54525981
  %22 = xor i32 %21, 54525981
  %23 = and i32 %22, %18
  %24 = getelementptr inbounds %struct.tmio_mmc_host, ptr %1, i32 0, i32 25
  %25 = load i32, ptr %24, align 4
  %26 = or i32 %25, 54525981
  %27 = trunc i32 %26 to i16
  %28 = load ptr, ptr %1, align 4
  %29 = load i32, ptr %5, align 4
  %30 = shl i32 28, %29
  %31 = getelementptr i8, ptr %28, i32 %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %31, i16 %27) #7, !srcloc !9
  %32 = lshr i32 %26, 16
  %33 = trunc i32 %32 to i16
  %34 = load ptr, ptr %1, align 4
  %35 = load i32, ptr %5, align 4
  %36 = shl i32 30, %35
  %37 = getelementptr i8, ptr %34, i32 %36
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %37, i16 %33) #7, !srcloc !9
  %38 = getelementptr inbounds %struct.tmio_mmc_host, ptr %1, i32 0, i32 4
  %39 = load ptr, ptr %38, align 4
  %40 = and i32 %23, 24
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %74, label %42

42:                                               ; preds = %2
  %43 = load i32, ptr %24, align 4
  %44 = trunc i32 %43 to i16
  %45 = or i16 %44, -25
  %46 = load ptr, ptr %1, align 4
  %47 = load i32, ptr %5, align 4
  %48 = shl i32 28, %47
  %49 = getelementptr i8, ptr %46, i32 %48
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %49, i16 %45) #7, !srcloc !9
  %50 = load ptr, ptr %1, align 4
  %51 = load i32, ptr %5, align 4
  %52 = shl i32 30, %51
  %53 = getelementptr i8, ptr %50, i32 %52
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %53, i16 -1) #7, !srcloc !9
  %54 = and i32 %23, 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %42
  %57 = getelementptr inbounds %struct.mmc_host, ptr %39, i32 0, i32 37
  %58 = load ptr, ptr %57, align 8
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %56, %42
  %61 = and i32 %23, 16
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %619, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.mmc_host, ptr %39, i32 0, i32 37
  %65 = load ptr, ptr %64, align 8
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %619

67:                                               ; preds = %63, %56
  %68 = getelementptr inbounds %struct.mmc_host, ptr %39, i32 0, i32 42
  %69 = load volatile i32, ptr %68, align 4
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %619

72:                                               ; preds = %67
  %73 = load ptr, ptr %38, align 4
  tail call void @mmc_detect_change(ptr noundef %73, i32 noundef 10) #7
  br label %619

74:                                               ; preds = %2
  %75 = and i32 %23, 4194305
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %289, label %77

77:                                               ; preds = %74
  %78 = load i32, ptr %24, align 4
  %79 = or i32 %78, -4194306
  %80 = trunc i32 %79 to i16
  %81 = load ptr, ptr %1, align 4
  %82 = load i32, ptr %5, align 4
  %83 = shl i32 28, %82
  %84 = getelementptr i8, ptr %81, i32 %83
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %84, i16 %80) #7, !srcloc !9
  %85 = lshr i32 %79, 16
  %86 = trunc i32 %85 to i16
  %87 = load ptr, ptr %1, align 4
  %88 = load i32, ptr %5, align 4
  %89 = shl i32 30, %88
  %90 = getelementptr i8, ptr %87, i32 %89
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %90, i16 %86) #7, !srcloc !9
  %91 = getelementptr inbounds %struct.tmio_mmc_host, ptr %1, i32 0, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.tmio_mmc_host, ptr %1, i32 0, i32 27
  tail call void @_raw_spin_lock(ptr noundef %93) #7
  %94 = load ptr, ptr %91, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %286, label %96

96:                                               ; preds = %77
  %97 = load ptr, ptr %1, align 4
  %98 = load i32, ptr %5, align 4
  %99 = shl i32 12, %98
  %100 = getelementptr i8, ptr %97, i32 %99
  %101 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %100) #7, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !18
  %102 = zext i16 %101 to i32
  %103 = load ptr, ptr %1, align 4
  %104 = load i32, ptr %5, align 4
  %105 = shl i32 14, %104
  %106 = getelementptr i8, ptr %103, i32 %105
  %107 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %106) #7, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !18
  %108 = zext i16 %107 to i32
  %109 = shl nuw i32 %108, 16
  %110 = or i32 %109, %102
  %111 = getelementptr %struct.mmc_command, ptr %92, i32 0, i32 2, i32 3
  store i32 %110, ptr %111, align 4
  %112 = load ptr, ptr %1, align 4
  %113 = load i32, ptr %5, align 4
  %114 = shl i32 16, %113
  %115 = getelementptr i8, ptr %112, i32 %114
  %116 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %115) #7, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !18
  %117 = zext i16 %116 to i32
  %118 = load ptr, ptr %1, align 4
  %119 = load i32, ptr %5, align 4
  %120 = shl i32 18, %119
  %121 = getelementptr i8, ptr %118, i32 %120
  %122 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %121) #7, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !18
  %123 = zext i16 %122 to i32
  %124 = shl nuw i32 %123, 16
  %125 = or i32 %124, %117
  %126 = getelementptr %struct.mmc_command, ptr %92, i32 0, i32 2, i32 2
  store i32 %125, ptr %126, align 4
  %127 = load ptr, ptr %1, align 4
  %128 = load i32, ptr %5, align 4
  %129 = shl i32 20, %128
  %130 = getelementptr i8, ptr %127, i32 %129
  %131 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %130) #7, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !18
  %132 = zext i16 %131 to i32
  %133 = load ptr, ptr %1, align 4
  %134 = load i32, ptr %5, align 4
  %135 = shl i32 22, %134
  %136 = getelementptr i8, ptr %133, i32 %135
  %137 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %136) #7, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !18
  %138 = zext i16 %137 to i32
  %139 = shl nuw i32 %138, 16
  %140 = or i32 %139, %132
  %141 = getelementptr %struct.mmc_command, ptr %92, i32 0, i32 2, i32 1
  store i32 %140, ptr %141, align 4
  %142 = load ptr, ptr %1, align 4
  %143 = load i32, ptr %5, align 4
  %144 = shl i32 24, %143
  %145 = getelementptr i8, ptr %142, i32 %144
  %146 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %145) #7, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !18
  %147 = zext i16 %146 to i32
  %148 = load ptr, ptr %1, align 4
  %149 = load i32, ptr %5, align 4
  %150 = shl i32 26, %149
  %151 = getelementptr i8, ptr %148, i32 %150
  %152 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %151) #7, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !18
  %153 = zext i16 %152 to i32
  %154 = shl nuw i32 %153, 16
  %155 = or i32 %154, %147
  %156 = getelementptr %struct.mmc_command, ptr %92, i32 0, i32 2, i32 0
  store i32 %155, ptr %156, align 4
  %157 = getelementptr inbounds %struct.mmc_command, ptr %92, i32 0, i32 3
  %158 = load i32, ptr %157, align 4
  %159 = and i32 %158, 2
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %169, label %161

161:                                              ; preds = %96
  %162 = load i32, ptr %141, align 4
  %163 = tail call i32 @llvm.fshl.i32(i32 %155, i32 %162, i32 8) #7
  store i32 %163, ptr %156, align 4
  %164 = load i32, ptr %126, align 4
  %165 = tail call i32 @llvm.fshl.i32(i32 %162, i32 %164, i32 8) #7
  store i32 %165, ptr %141, align 4
  %166 = load i32, ptr %111, align 4
  %167 = tail call i32 @llvm.fshl.i32(i32 %164, i32 %166, i32 8) #7
  store i32 %167, ptr %126, align 4
  %168 = shl i32 %166, 8
  store i32 %168, ptr %111, align 4
  br label %174

169:                                              ; preds = %96
  %170 = and i32 %158, 1
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %174, label %172

172:                                              ; preds = %169
  %173 = load i32, ptr %111, align 4
  store i32 %173, ptr %156, align 4
  br label %174

174:                                              ; preds = %172, %169, %161
  %175 = and i32 %16, 64
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %191

177:                                              ; preds = %174
  %178 = and i32 %16, 2
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %185, label %180

180:                                              ; preds = %177
  %181 = and i32 %158, 4
  %182 = and i32 %17, 262144
  %183 = or i32 %181, %182
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %188, label %191

185:                                              ; preds = %177
  %186 = and i32 %16, 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %185, %180
  %189 = and i32 %16, 1
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %194, label %191

191:                                              ; preds = %188, %185, %180, %174
  %192 = phi i32 [ -110, %174 ], [ -84, %188 ], [ -84, %185 ], [ -84, %180 ]
  %193 = getelementptr inbounds %struct.mmc_command, ptr %92, i32 0, i32 5
  store i32 %192, ptr %193, align 4
  br label %194

194:                                              ; preds = %191, %188
  %195 = getelementptr inbounds %struct.tmio_mmc_host, ptr %1, i32 0, i32 3
  %196 = load ptr, ptr %195, align 4
  %197 = icmp eq ptr %196, null
  br i1 %197, label %282, label %198

198:                                              ; preds = %194
  %199 = getelementptr inbounds %struct.mmc_command, ptr %92, i32 0, i32 5
  %200 = load i32, ptr %199, align 4
  switch i32 %200, label %282 [
    i32 0, label %201
    i32 -84, label %201
  ]

201:                                              ; preds = %198, %198
  %202 = getelementptr inbounds %struct.mmc_data, ptr %196, i32 0, i32 6
  %203 = load i32, ptr %202, align 4
  %204 = and i32 %203, 512
  %205 = icmp eq i32 %204, 0
  %206 = getelementptr inbounds %struct.tmio_mmc_host, ptr %1, i32 0, i32 14
  %207 = load i8, ptr %206, align 4, !range !10
  %208 = icmp eq i8 %207, 0
  %209 = load i32, ptr %19, align 4
  br i1 %205, label %246, label %210

210:                                              ; preds = %201
  br i1 %208, label %211, label %226

211:                                              ; preds = %210
  %212 = and i32 %209, -16777221
  store i32 %212, ptr %19, align 4
  %213 = load i32, ptr %24, align 4
  %214 = or i32 %213, %212
  %215 = trunc i32 %214 to i16
  %216 = load ptr, ptr %1, align 4
  %217 = load i32, ptr %5, align 4
  %218 = shl i32 32, %217
  %219 = getelementptr i8, ptr %216, i32 %218
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %219, i16 %215) #7, !srcloc !9
  %220 = lshr i32 %214, 16
  %221 = trunc i32 %220 to i16
  %222 = load ptr, ptr %1, align 4
  %223 = load i32, ptr %5, align 4
  %224 = shl i32 34, %223
  %225 = getelementptr i8, ptr %222, i32 %224
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %225, i16 %221) #7, !srcloc !9
  br label %286

226:                                              ; preds = %210
  %227 = or i32 %209, 16777220
  store i32 %227, ptr %19, align 4
  %228 = load i32, ptr %24, align 4
  %229 = or i32 %228, %227
  %230 = trunc i32 %229 to i16
  %231 = load ptr, ptr %1, align 4
  %232 = load i32, ptr %5, align 4
  %233 = shl i32 32, %232
  %234 = getelementptr i8, ptr %231, i32 %233
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %234, i16 %230) #7, !srcloc !9
  %235 = lshr i32 %229, 16
  %236 = trunc i32 %235 to i16
  %237 = load ptr, ptr %1, align 4
  %238 = load i32, ptr %5, align 4
  %239 = shl i32 34, %238
  %240 = getelementptr i8, ptr %237, i32 %239
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %240, i16 %236) #7, !srcloc !9
  %241 = getelementptr inbounds %struct.tmio_mmc_host, ptr %1, i32 0, i32 17, i32 1
  %242 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %241) #7
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %286

244:                                              ; preds = %226
  %245 = getelementptr inbounds %struct.tmio_mmc_host, ptr %1, i32 0, i32 17
  tail call void @__tasklet_schedule(ptr noundef %245) #7
  br label %286

246:                                              ; preds = %201
  br i1 %208, label %247, label %262

247:                                              ; preds = %246
  %248 = and i32 %209, -33554437
  store i32 %248, ptr %19, align 4
  %249 = load i32, ptr %24, align 4
  %250 = or i32 %249, %248
  %251 = trunc i32 %250 to i16
  %252 = load ptr, ptr %1, align 4
  %253 = load i32, ptr %5, align 4
  %254 = shl i32 32, %253
  %255 = getelementptr i8, ptr %252, i32 %254
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %255, i16 %251) #7, !srcloc !9
  %256 = lshr i32 %250, 16
  %257 = trunc i32 %256 to i16
  %258 = load ptr, ptr %1, align 4
  %259 = load i32, ptr %5, align 4
  %260 = shl i32 34, %259
  %261 = getelementptr i8, ptr %258, i32 %260
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %261, i16 %257) #7, !srcloc !9
  br label %286

262:                                              ; preds = %246
  %263 = or i32 %209, 33554436
  store i32 %263, ptr %19, align 4
  %264 = load i32, ptr %24, align 4
  %265 = or i32 %264, %263
  %266 = trunc i32 %265 to i16
  %267 = load ptr, ptr %1, align 4
  %268 = load i32, ptr %5, align 4
  %269 = shl i32 32, %268
  %270 = getelementptr i8, ptr %267, i32 %269
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %270, i16 %266) #7, !srcloc !9
  %271 = lshr i32 %265, 16
  %272 = trunc i32 %271 to i16
  %273 = load ptr, ptr %1, align 4
  %274 = load i32, ptr %5, align 4
  %275 = shl i32 34, %274
  %276 = getelementptr i8, ptr %273, i32 %275
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %276, i16 %272) #7, !srcloc !9
  %277 = getelementptr inbounds %struct.tmio_mmc_host, ptr %1, i32 0, i32 17, i32 1
  %278 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %277) #7
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %286

280:                                              ; preds = %262
  %281 = getelementptr inbounds %struct.tmio_mmc_host, ptr %1, i32 0, i32 17
  tail call void @__tasklet_schedule(ptr noundef %281) #7
  br label %286

282:                                              ; preds = %198, %194
  %283 = getelementptr inbounds %struct.tmio_mmc_host, ptr %1, i32 0, i32 21
  %284 = load ptr, ptr @system_wq, align 4
  %285 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %284, ptr noundef %283) #7
  br label %286

286:                                              ; preds = %282, %280, %262, %247, %244, %226, %211, %77
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !19
  %287 = load i16, ptr %93, align 4
  %288 = add i16 %287, 1
  store i16 %288, ptr %93, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !22
  br label %619

289:                                              ; preds = %74
  %290 = and i32 %23, 50331648
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %433, label %292

292:                                              ; preds = %289
  %293 = load i32, ptr %24, align 4
  %294 = load ptr, ptr %1, align 4
  %295 = load i32, ptr %5, align 4
  %296 = shl i32 28, %295
  %297 = getelementptr i8, ptr %294, i32 %296
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %297, i16 -1) #7, !srcloc !9
  %298 = lshr i32 %293, 16
  %299 = trunc i32 %298 to i16
  %300 = or i16 %299, -769
  %301 = load ptr, ptr %1, align 4
  %302 = load i32, ptr %5, align 4
  %303 = shl i32 30, %302
  %304 = getelementptr i8, ptr %301, i32 %303
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %304, i16 %300) #7, !srcloc !9
  %305 = getelementptr inbounds %struct.tmio_mmc_host, ptr %1, i32 0, i32 3
  %306 = load ptr, ptr %305, align 4
  %307 = getelementptr inbounds %struct.tmio_mmc_host, ptr %1, i32 0, i32 14
  %308 = load i8, ptr %307, align 4, !range !10
  %309 = icmp eq i8 %308, 0
  br i1 %309, label %312, label %310

310:                                              ; preds = %292
  %311 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #8
  br label %619

312:                                              ; preds = %292
  %313 = icmp eq ptr %306, null
  br i1 %313, label %619, label %314

314:                                              ; preds = %312
  %315 = getelementptr inbounds %struct.tmio_mmc_host, ptr %1, i32 0, i32 7
  %316 = load ptr, ptr %315, align 4
  %317 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !11
  %318 = load i32, ptr %316, align 4
  %319 = and i32 %318, -4
  %320 = inttoptr i32 %319 to ptr
  %321 = load i32, ptr @pgprot_kernel, align 4
  %322 = or i32 %321, 512
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %323 = tail call ptr @llvm.thread.pointer() #7
  %324 = getelementptr inbounds %struct.task_struct, ptr %323, i32 0, i32 149
  %325 = load i32, ptr %324, align 8
  %326 = add i32 %325, 1
  store i32 %326, ptr %324, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  %327 = tail call ptr @__kmap_local_page_prot(ptr noundef %320, i32 noundef %322) #7
  %328 = getelementptr inbounds %struct.scatterlist, ptr %316, i32 0, i32 1
  %329 = load i32, ptr %328, align 4
  %330 = getelementptr i8, ptr %327, i32 %329
  %331 = getelementptr inbounds %struct.tmio_mmc_host, ptr %1, i32 0, i32 10
  %332 = load i32, ptr %331, align 4
  %333 = getelementptr i8, ptr %330, i32 %332
  %334 = load ptr, ptr %315, align 4
  %335 = getelementptr inbounds %struct.scatterlist, ptr %334, i32 0, i32 2
  %336 = load i32, ptr %335, align 4
  %337 = sub i32 %336, %332
  %338 = getelementptr inbounds %struct.mmc_data, ptr %306, i32 0, i32 2
  %339 = load i32, ptr %338, align 4
  %340 = tail call i32 @llvm.umin.i32(i32 %337, i32 %339) #7
  %341 = load ptr, ptr %305, align 4
  %342 = getelementptr inbounds %struct.mmc_data, ptr %341, i32 0, i32 6
  %343 = load i32, ptr %342, align 4
  %344 = and i32 %343, 512
  %345 = getelementptr inbounds %struct.tmio_mmc_host, ptr %1, i32 0, i32 13
  %346 = load ptr, ptr %345, align 4
  %347 = getelementptr inbounds %struct.tmio_mmc_data, ptr %346, i32 0, i32 5
  %348 = load i32, ptr %347, align 4
  %349 = and i32 %348, 512
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %377, label %351

351:                                              ; preds = %314
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4
  %352 = icmp eq i32 %344, 0
  %353 = lshr i32 %340, 2
  %354 = load ptr, ptr %1, align 4
  %355 = load i32, ptr %5, align 4
  %356 = shl i32 48, %355
  %357 = getelementptr i8, ptr %354, i32 %356
  br i1 %352, label %358, label %361

358:                                              ; preds = %351
  tail call void @__raw_writesl(ptr noundef %357, ptr noundef %333, i32 noundef %353) #7
  %359 = and i32 %340, 3
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %376, label %370

361:                                              ; preds = %351
  tail call void @__raw_readsl(ptr noundef %357, ptr noundef %333, i32 noundef %353) #7
  %362 = and i32 %340, 3
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %376, label %364

364:                                              ; preds = %361
  %365 = getelementptr i32, ptr %333, i32 %353
  %366 = load ptr, ptr %1, align 4
  %367 = load i32, ptr %5, align 4
  %368 = shl i32 48, %367
  %369 = getelementptr i8, ptr %366, i32 %368
  call void @__raw_readsl(ptr noundef %369, ptr noundef nonnull %3, i32 noundef 1) #7
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %365, ptr nonnull align 4 %3, i32 %362, i1 false) #7
  br label %376

370:                                              ; preds = %358
  %371 = getelementptr i32, ptr %333, i32 %353
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %3, ptr align 4 %371, i32 %359, i1 false) #7
  %372 = load ptr, ptr %1, align 4
  %373 = load i32, ptr %5, align 4
  %374 = shl i32 48, %373
  %375 = getelementptr i8, ptr %372, i32 %374
  call void @__raw_writesl(ptr noundef %375, ptr noundef nonnull %3, i32 noundef 1) #7
  br label %376

376:                                              ; preds = %370, %364, %361, %358
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  br label %413

377:                                              ; preds = %314
  %378 = icmp eq i32 %344, 0
  %379 = lshr i32 %340, 1
  %380 = load ptr, ptr %1, align 4
  %381 = load i32, ptr %5, align 4
  %382 = shl i32 48, %381
  %383 = getelementptr i8, ptr %380, i32 %382
  br i1 %378, label %384, label %387

384:                                              ; preds = %377
  tail call void @__raw_writesw(ptr noundef %383, ptr noundef %333, i32 noundef %379) #7
  %385 = and i32 %340, 1
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %413, label %398

387:                                              ; preds = %377
  tail call void @__raw_readsw(ptr noundef %383, ptr noundef %333, i32 noundef %379) #7
  %388 = and i32 %340, 1
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %413, label %390

390:                                              ; preds = %387
  %391 = getelementptr i16, ptr %333, i32 %379
  %392 = load ptr, ptr %1, align 4
  %393 = load i32, ptr %5, align 4
  %394 = shl i32 48, %393
  %395 = getelementptr i8, ptr %392, i32 %394
  %396 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %395) #7, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !18
  %397 = trunc i16 %396 to i8
  store i8 %397, ptr %391, align 1
  br label %413

398:                                              ; preds = %384
  %399 = getelementptr i16, ptr %333, i32 %379
  %400 = load i8, ptr %399, align 1
  %401 = zext i8 %400 to i16
  %402 = getelementptr inbounds %struct.tmio_mmc_host, ptr %1, i32 0, i32 36
  %403 = load ptr, ptr %402, align 4
  %404 = icmp eq ptr %403, null
  br i1 %404, label %408, label %405

405:                                              ; preds = %398
  %406 = tail call i32 %403(ptr noundef %1, i32 noundef 48) #7
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %408, label %413

408:                                              ; preds = %405, %398
  %409 = load ptr, ptr %1, align 4
  %410 = load i32, ptr %5, align 4
  %411 = shl i32 48, %410
  %412 = getelementptr i8, ptr %409, i32 %411
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %412, i16 %401) #7, !srcloc !9
  br label %413

413:                                              ; preds = %408, %405, %390, %387, %384, %376
  %414 = load i32, ptr %331, align 4
  %415 = add i32 %414, %340
  store i32 %415, ptr %331, align 4
  %416 = load ptr, ptr %315, align 4
  %417 = getelementptr inbounds %struct.scatterlist, ptr %416, i32 0, i32 1
  %418 = load i32, ptr %417, align 4
  %419 = sub i32 0, %418
  %420 = getelementptr i8, ptr %330, i32 %419
  call void @kunmap_local_indexed(ptr noundef %420) #7
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  %421 = load i32, ptr %324, align 8
  %422 = add i32 %421, -1
  store i32 %422, ptr %324, align 8
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !15
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %317) #7, !srcloc !16
  %423 = load i32, ptr %331, align 4
  %424 = load ptr, ptr %315, align 4
  %425 = getelementptr inbounds %struct.scatterlist, ptr %424, i32 0, i32 2
  %426 = load i32, ptr %425, align 4
  %427 = icmp eq i32 %423, %426
  br i1 %427, label %428, label %619

428:                                              ; preds = %413
  %429 = call ptr @sg_next(ptr noundef %424) #7
  store ptr %429, ptr %315, align 4
  store i32 0, ptr %331, align 4
  %430 = getelementptr inbounds %struct.tmio_mmc_host, ptr %1, i32 0, i32 9
  %431 = load i32, ptr %430, align 4
  %432 = add i32 %431, -1
  store i32 %432, ptr %430, align 4
  br label %619

433:                                              ; preds = %289
  %434 = and i32 %23, 4
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %560, label %436

436:                                              ; preds = %433
  %437 = load i32, ptr %24, align 4
  %438 = trunc i32 %437 to i16
  %439 = or i16 %438, -5
  %440 = load ptr, ptr %1, align 4
  %441 = load i32, ptr %5, align 4
  %442 = shl i32 28, %441
  %443 = getelementptr i8, ptr %440, i32 %442
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %443, i16 %439) #7, !srcloc !9
  %444 = load ptr, ptr %1, align 4
  %445 = load i32, ptr %5, align 4
  %446 = shl i32 30, %445
  %447 = getelementptr i8, ptr %444, i32 %446
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %447, i16 -1) #7, !srcloc !9
  %448 = getelementptr inbounds %struct.tmio_mmc_host, ptr %1, i32 0, i32 27
  tail call void @_raw_spin_lock(ptr noundef %448) #7
  %449 = getelementptr inbounds %struct.tmio_mmc_host, ptr %1, i32 0, i32 3
  %450 = load ptr, ptr %449, align 4
  %451 = icmp eq ptr %450, null
  br i1 %451, label %557, label %452

452:                                              ; preds = %436
  %453 = and i32 %16, 8
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %455, label %458

455:                                              ; preds = %452
  %456 = and i32 %16, 38
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %461, label %458

458:                                              ; preds = %455, %452
  %459 = phi i32 [ -110, %452 ], [ -84, %455 ]
  %460 = getelementptr inbounds %struct.mmc_data, ptr %450, i32 0, i32 5
  store i32 %459, ptr %460, align 4
  br label %461

461:                                              ; preds = %458, %455
  %462 = getelementptr inbounds %struct.tmio_mmc_host, ptr %1, i32 0, i32 14
  %463 = load i8, ptr %462, align 4, !range !10
  %464 = icmp eq i8 %463, 0
  br i1 %464, label %541, label %465

465:                                              ; preds = %461
  %466 = getelementptr inbounds %struct.mmc_data, ptr %450, i32 0, i32 6
  %467 = load i32, ptr %466, align 4
  %468 = and i32 %467, 256
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %516, label %470

470:                                              ; preds = %465
  %471 = load ptr, ptr %1, align 4
  %472 = load i32, ptr %5, align 4
  %473 = shl i32 28, %472
  %474 = getelementptr i8, ptr %471, i32 %473
  %475 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %474) #7, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !18
  %476 = load ptr, ptr %1, align 4
  %477 = load i32, ptr %5, align 4
  %478 = shl i32 30, %477
  %479 = getelementptr i8, ptr %476, i32 %478
  %480 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %479) #7, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !18
  %481 = zext i16 %480 to i32
  %482 = getelementptr inbounds %struct.tmio_mmc_host, ptr %1, i32 0, i32 13
  %483 = load ptr, ptr %482, align 4
  %484 = getelementptr inbounds %struct.tmio_mmc_data, ptr %483, i32 0, i32 5
  %485 = load i32, ptr %484, align 4
  %486 = and i32 %485, 16
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %491, label %488

488:                                              ; preds = %470
  %489 = and i32 %481, 8192
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %557, label %494

491:                                              ; preds = %470
  %492 = and i32 %481, 16384
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %494, label %557

494:                                              ; preds = %491, %488
  %495 = load i32, ptr %19, align 4
  %496 = or i32 %495, 4
  store i32 %496, ptr %19, align 4
  %497 = load i32, ptr %24, align 4
  %498 = or i32 %497, %496
  %499 = trunc i32 %498 to i16
  %500 = load ptr, ptr %1, align 4
  %501 = load i32, ptr %5, align 4
  %502 = shl i32 32, %501
  %503 = getelementptr i8, ptr %500, i32 %502
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %503, i16 %499) #7, !srcloc !9
  %504 = lshr i32 %498, 16
  %505 = trunc i32 %504 to i16
  %506 = load ptr, ptr %1, align 4
  %507 = load i32, ptr %5, align 4
  %508 = shl i32 34, %507
  %509 = getelementptr i8, ptr %506, i32 %508
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %509, i16 %505) #7, !srcloc !9
  %510 = getelementptr inbounds %struct.tmio_mmc_host, ptr %1, i32 0, i32 44
  %511 = load ptr, ptr %510, align 4
  %512 = icmp eq ptr %511, null
  br i1 %512, label %557, label %513

513:                                              ; preds = %494
  %514 = getelementptr inbounds %struct.tmio_mmc_dma_ops, ptr %511, i32 0, i32 5
  %515 = load ptr, ptr %514, align 4
  tail call void %515(ptr noundef %1) #7
  br label %557

516:                                              ; preds = %465
  %517 = and i32 %467, 512
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %541, label %519

519:                                              ; preds = %516
  %520 = load i32, ptr %19, align 4
  %521 = or i32 %520, 4
  store i32 %521, ptr %19, align 4
  %522 = load i32, ptr %24, align 4
  %523 = or i32 %522, %521
  %524 = trunc i32 %523 to i16
  %525 = load ptr, ptr %1, align 4
  %526 = load i32, ptr %5, align 4
  %527 = shl i32 32, %526
  %528 = getelementptr i8, ptr %525, i32 %527
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %528, i16 %524) #7, !srcloc !9
  %529 = lshr i32 %523, 16
  %530 = trunc i32 %529 to i16
  %531 = load ptr, ptr %1, align 4
  %532 = load i32, ptr %5, align 4
  %533 = shl i32 34, %532
  %534 = getelementptr i8, ptr %531, i32 %533
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %534, i16 %530) #7, !srcloc !9
  %535 = getelementptr inbounds %struct.tmio_mmc_host, ptr %1, i32 0, i32 44
  %536 = load ptr, ptr %535, align 4
  %537 = icmp eq ptr %536, null
  br i1 %537, label %557, label %538

538:                                              ; preds = %519
  %539 = getelementptr inbounds %struct.tmio_mmc_dma_ops, ptr %536, i32 0, i32 5
  %540 = load ptr, ptr %539, align 4
  tail call void %540(ptr noundef %1) #7
  br label %557

541:                                              ; preds = %516, %461
  tail call void @tmio_mmc_do_data_irq(ptr noundef %1) #7
  %542 = load i32, ptr %19, align 4
  %543 = or i32 %542, 50331652
  store i32 %543, ptr %19, align 4
  %544 = load i32, ptr %24, align 4
  %545 = or i32 %544, %543
  %546 = trunc i32 %545 to i16
  %547 = load ptr, ptr %1, align 4
  %548 = load i32, ptr %5, align 4
  %549 = shl i32 32, %548
  %550 = getelementptr i8, ptr %547, i32 %549
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %550, i16 %546) #7, !srcloc !9
  %551 = lshr i32 %545, 16
  %552 = trunc i32 %551 to i16
  %553 = load ptr, ptr %1, align 4
  %554 = load i32, ptr %5, align 4
  %555 = shl i32 34, %554
  %556 = getelementptr i8, ptr %553, i32 %555
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %556, i16 %552) #7, !srcloc !9
  br label %557

557:                                              ; preds = %541, %538, %519, %513, %494, %491, %488, %436
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !19
  %558 = load i16, ptr %448, align 4
  %559 = add i16 %558, 1
  store i16 %559, ptr %448, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !22
  br label %619

560:                                              ; preds = %433
  %561 = getelementptr inbounds %struct.tmio_mmc_host, ptr %1, i32 0, i32 13
  %562 = load ptr, ptr %561, align 4
  %563 = getelementptr inbounds %struct.tmio_mmc_data, ptr %562, i32 0, i32 5
  %564 = load i32, ptr %563, align 4
  %565 = and i32 %564, 4
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %619, label %567

567:                                              ; preds = %560
  %568 = load ptr, ptr %1, align 4
  %569 = load i32, ptr %5, align 4
  %570 = shl i32 54, %569
  %571 = getelementptr i8, ptr %568, i32 %570
  %572 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %571) #7, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !18
  %573 = zext i16 %572 to i32
  %574 = and i32 %573, 49159
  %575 = getelementptr inbounds %struct.tmio_mmc_host, ptr %1, i32 0, i32 23
  %576 = load i32, ptr %575, align 4
  %577 = xor i32 %576, -1
  %578 = and i32 %574, %577
  %579 = and i32 %573, 16376
  %580 = load i32, ptr %563, align 4
  %581 = and i32 %580, 256
  %582 = icmp eq i32 %581, 0
  %583 = or i32 %579, 6
  %584 = select i1 %582, i32 %579, i32 %583
  %585 = trunc i32 %584 to i16
  %586 = getelementptr inbounds %struct.tmio_mmc_host, ptr %1, i32 0, i32 36
  %587 = load ptr, ptr %586, align 4
  %588 = icmp eq ptr %587, null
  br i1 %588, label %592, label %589

589:                                              ; preds = %567
  %590 = tail call i32 %587(ptr noundef %1, i32 noundef 54) #7
  %591 = icmp eq i32 %590, 0
  br i1 %591, label %592, label %597

592:                                              ; preds = %589, %567
  %593 = load ptr, ptr %1, align 4
  %594 = load i32, ptr %5, align 4
  %595 = shl i32 54, %594
  %596 = getelementptr i8, ptr %593, i32 %595
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %596, i16 %585) #7, !srcloc !9
  br label %597

597:                                              ; preds = %592, %589
  %598 = getelementptr inbounds %struct.mmc_host, ptr %39, i32 0, i32 16
  %599 = load i32, ptr %598, align 8
  %600 = and i32 %599, 8
  %601 = icmp eq i32 %600, 0
  %602 = and i32 %578, 1
  %603 = icmp eq i32 %602, 0
  %604 = select i1 %601, i1 true, i1 %603
  br i1 %604, label %616, label %605

605:                                              ; preds = %597
  %606 = getelementptr inbounds %struct.mmc_host, ptr %39, i32 0, i32 3
  %607 = load ptr, ptr %606, align 4
  %608 = getelementptr inbounds %struct.mmc_host_ops, ptr %607, i32 0, i32 7
  %609 = load ptr, ptr %608, align 4
  tail call void %609(ptr noundef %39, i32 noundef 0) #7
  %610 = getelementptr inbounds %struct.mmc_host, ptr %39, i32 0, i32 49
  store i8 1, ptr %610, align 8
  %611 = getelementptr inbounds %struct.mmc_host, ptr %39, i32 0, i32 47
  %612 = load ptr, ptr %611, align 8
  %613 = icmp eq ptr %612, null
  br i1 %613, label %618, label %614

614:                                              ; preds = %605
  %615 = tail call i32 @wake_up_process(ptr noundef nonnull %612) #7
  br label %618

616:                                              ; preds = %597
  %617 = icmp eq i32 %578, 0
  br i1 %617, label %619, label %618

618:                                              ; preds = %616, %614, %605
  br label %619

619:                                              ; preds = %618, %616, %560, %557, %428, %413, %312, %310, %286, %72, %67, %63, %60
  %620 = phi i32 [ 1, %618 ], [ 0, %616 ], [ 1, %60 ], [ 1, %63 ], [ 1, %67 ], [ 1, %72 ], [ 1, %286 ], [ 1, %557 ], [ 1, %310 ], [ 1, %312 ], [ 1, %413 ], [ 1, %428 ], [ 0, %560 ]
  ret i32 %620
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tmio_mmc_host_alloc(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #7
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %33, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %7 = tail call ptr @mmc_alloc_host(i32 noundef 372, ptr noundef %6) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %33, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 68
  store ptr %3, ptr %10, align 4
  %11 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 1, i32 1, i32 0, i32 1, i32 1
  store ptr %7, ptr %11, align 4
  %12 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 1, i32 1, i32 11, i32 3
  store ptr %0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 1, i32 1, i32 11, i32 4
  store ptr %1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 1, i32 1, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(96) %14, ptr noundef nonnull align 4 dereferenceable(96) @tmio_mmc_ops, i32 96, i1 false)
  %15 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 3
  store ptr %14, ptr %15, align 4
  %16 = tail call i32 @mmc_of_parse(ptr noundef nonnull %7) #7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %9
  %19 = inttoptr i32 %16 to ptr
  tail call void @mmc_free_host(ptr noundef nonnull %7) #7
  br label %33

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %20
  %25 = tail call ptr @of_get_property(ptr noundef nonnull %22, ptr noundef nonnull @.str.6, ptr noundef null) #7
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 17
  %29 = load i32, ptr %28, align 4
  %30 = or i32 %29, 262144
  store i32 %30, ptr %28, align 4
  br label %31

31:                                               ; preds = %27, %24, %20
  %32 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %10, ptr %32, align 8
  br label %33

33:                                               ; preds = %31, %18, %5, %2
  %34 = phi ptr [ %19, %18 ], [ %10, %31 ], [ %3, %2 ], [ inttoptr (i32 -12 to ptr), %5 ]
  ret ptr %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_alloc_host(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_free_host(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tmio_mmc_host_free(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void @mmc_free_host(ptr noundef %3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tmio_mmc_host_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %155, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.tmio_mmc_data, ptr %5, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 36
  store ptr null, ptr %17, align 4
  %18 = load i32, ptr %12, align 4
  br label %19

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %18, %16 ], [ %13, %11 ]
  %21 = and i32 %20, 32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 40
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store ptr @tmio_mmc_get_timeout_cycles, ptr %24, align 4
  br label %28

28:                                               ; preds = %27, %23, %19
  %29 = getelementptr inbounds %struct.tmio_mmc_data, ptr %5, i32 0, i32 11
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 6
  store ptr %30, ptr %31, align 4
  %32 = tail call i32 @mmc_regulator_get_supply(ptr noundef %7) #7
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 8
  %36 = load i32, ptr %35, align 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.tmio_mmc_data, ptr %5, i32 0, i32 6
  %40 = load i32, ptr %39, align 4
  store i32 %40, ptr %35, align 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %155, label %44

42:                                               ; preds = %28
  %43 = icmp slt i32 %32, 0
  br i1 %43, label %155, label %44

44:                                               ; preds = %42, %38, %34
  %45 = tail call i32 @mmc_gpiod_request_cd(ptr noundef %7, ptr noundef nonnull @.str.2, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #7
  %46 = icmp eq i32 %45, -517
  br i1 %46, label %155, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.tmio_mmc_data, ptr %5, i32 0, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 16
  %51 = load i32, ptr %50, align 8
  %52 = or i32 %49, %51
  %53 = or i32 %52, 1
  store i32 %53, ptr %50, align 8
  %54 = getelementptr inbounds %struct.tmio_mmc_data, ptr %5, i32 0, i32 4
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 17
  %57 = load i32, ptr %56, align 4
  %58 = or i32 %57, %55
  store i32 %58, ptr %56, align 4
  %59 = getelementptr inbounds %struct.tmio_mmc_data, ptr %5, i32 0, i32 10
  %60 = load i16, ptr %59, align 4
  %61 = icmp eq i16 %60, 0
  %62 = select i1 %61, i16 32, i16 %60
  %63 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 21
  store i16 %62, ptr %63, align 4
  %64 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 24
  store i32 512, ptr %64, align 4
  %65 = getelementptr inbounds %struct.tmio_mmc_data, ptr %5, i32 0, i32 9
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 0
  %68 = zext i16 %62 to i32
  %69 = shl nuw nsw i32 %68, 3
  %70 = select i1 %67, i32 %69, i32 %66
  %71 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 25
  store i32 %70, ptr %71, align 8
  %72 = shl i32 %70, 9
  %73 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %74 = tail call i32 @dma_max_mapping_size(ptr noundef %73) #7
  %75 = tail call i32 @llvm.umin.i32(i32 %72, i32 %74)
  %76 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 23
  store i32 %75, ptr %76, align 16
  %77 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 20
  store i32 %75, ptr %77, align 8
  %78 = tail call zeroext i1 @mmc_can_gpio_ro(ptr noundef %7) #7
  br i1 %78, label %79, label %81

79:                                               ; preds = %47
  %80 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 5, i32 5
  store ptr @mmc_gpio_get_ro, ptr %80, align 4
  br label %81

81:                                               ; preds = %79, %47
  %82 = tail call zeroext i1 @mmc_can_gpio_cd(ptr noundef %7) #7
  br i1 %82, label %83, label %85

83:                                               ; preds = %81
  %84 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 5, i32 6
  store ptr @mmc_gpio_get_cd, ptr %84, align 4
  br label %85

85:                                               ; preds = %83, %81
  %86 = tail call zeroext i1 @mmc_can_gpio_cd(ptr noundef %7) #7
  br i1 %86, label %103, label %87

87:                                               ; preds = %85
  %88 = load i32, ptr %50, align 8
  %89 = and i32 %88, 32
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %87
  %92 = and i32 %88, 256
  %93 = icmp eq i32 %92, 0
  %94 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 30
  %95 = lshr exact i32 %92, 8
  %96 = trunc i32 %95 to i8
  %97 = xor i8 %96, 1
  store i8 %97, ptr %94, align 4
  br i1 %93, label %98, label %105

98:                                               ; preds = %91
  %99 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %99) #7, !srcloc !23
  %100 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %99, ptr %99, i32 1, ptr elementtype(i32) %99) #7, !srcloc !24
  br label %105

101:                                              ; preds = %87
  %102 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 30
  store i8 0, ptr %102, align 4
  br label %105

103:                                              ; preds = %85
  %104 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 30
  store i8 0, ptr %104, align 4
  br label %105

105:                                              ; preds = %103, %101, %98, %91
  %106 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 31
  store i8 0, ptr %106, align 1
  %107 = load i32, ptr %12, align 4
  %108 = and i32 %107, 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 23
  store i32 49159, ptr %111, align 4
  br label %112

112:                                              ; preds = %110, %105
  %113 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 26
  %114 = load i32, ptr %113, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  store i32 -2088828131, ptr %113, align 4
  br label %117

117:                                              ; preds = %116, %112
  %118 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 33
  %119 = load ptr, ptr %118, align 4
  tail call void %119(ptr noundef %0, i32 noundef 0) #7
  tail call fastcc void @tmio_mmc_reset(ptr noundef %0)
  %120 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 27
  store i32 0, ptr %120, align 4
  %121 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 29
  tail call void @__mutex_init(ptr noundef %121, ptr noundef nonnull @.str.3, ptr noundef nonnull @tmio_mmc_host_probe.__key) #7
  %122 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 20
  store i32 -32, ptr %122, align 4
  %123 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 20, i32 0, i32 1
  store volatile ptr %123, ptr %123, align 4
  %124 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 20, i32 0, i32 1, i32 1
  store ptr %123, ptr %124, align 4
  %125 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 20, i32 0, i32 2
  store ptr @tmio_mmc_reset_work, ptr %125, align 4
  %126 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 20, i32 1
  tail call void @init_timer_key(ptr noundef %126, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #7
  %127 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 21
  store i32 -32, ptr %127, align 4
  %128 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 21, i32 1
  store volatile ptr %128, ptr %128, align 4
  %129 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 21, i32 1, i32 1
  store ptr %128, ptr %129, align 4
  %130 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 21, i32 2
  store ptr @tmio_mmc_done_work, ptr %130, align 4
  %131 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 44
  %132 = load ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %137, label %134

134:                                              ; preds = %117
  %135 = getelementptr inbounds %struct.tmio_mmc_dma_ops, ptr %132, i32 0, i32 2
  %136 = load ptr, ptr %135, align 4
  tail call void %136(ptr noundef %0, ptr noundef %5) #7
  br label %140

137:                                              ; preds = %117
  %138 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 16
  store ptr null, ptr %138, align 4
  %139 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 15
  store ptr null, ptr %139, align 4
  br label %140

140:                                              ; preds = %137, %134
  %141 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %141) #7, !srcloc !23
  %142 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %141, ptr %141, i32 1, ptr elementtype(i32) %141) #7, !srcloc !24
  %143 = tail call i32 @__pm_runtime_set_status(ptr noundef %73, i32 noundef 0) #7
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %73, i32 noundef 50) #7
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %73, i1 noundef zeroext true) #7
  tail call void @pm_runtime_enable(ptr noundef %73) #7
  %144 = tail call i32 @mmc_add_host(ptr noundef %7) #7
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %140
  %147 = tail call i32 @dev_pm_qos_expose_latency_limit(ptr noundef %73, i32 noundef 100) #7
  %148 = tail call i32 @__pm_runtime_idle(ptr noundef %73, i32 noundef 5) #7
  br label %155

149:                                              ; preds = %140
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %141) #7, !srcloc !23
  %150 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %141, ptr %141, i32 0, i32 -1, ptr elementtype(i32) %141) #7, !srcloc !26
  %151 = extractvalue { i32, i32, i32 } %150, 0
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %149
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !27
  br label %154

154:                                              ; preds = %153, %149
  tail call void @tmio_mmc_host_remove(ptr noundef %0)
  br label %155

155:                                              ; preds = %154, %146, %44, %42, %38, %1
  %156 = phi i32 [ %144, %154 ], [ 0, %146 ], [ -22, %1 ], [ %32, %42 ], [ -517, %44 ], [ -517, %38 ]
  ret i32 %156
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tmio_mmc_get_timeout_cycles(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 11
  %4 = load i32, ptr %3, align 4
  %5 = shl i32 40, %4
  %6 = getelementptr i8, ptr %2, i32 %5
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %6) #7, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !18
  %8 = lshr i16 %7, 4
  %9 = and i16 %8, 15
  %10 = add nuw nsw i16 %9, 13
  %11 = zext i16 %10 to i32
  %12 = shl nuw nsw i32 1, %11
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpiod_request_cd(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_max_mapping_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mmc_can_gpio_ro(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_ro(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mmc_can_gpio_cd(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_cd(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tmio_mmc_reset(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 36
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = tail call i32 %3(ptr noundef %0, i32 noundef 224) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %5, %1
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 11
  %11 = load i32, ptr %10, align 4
  %12 = shl i32 224, %11
  %13 = getelementptr i8, ptr %9, i32 %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %13, i16 0) #7, !srcloc !9
  br label %14

14:                                               ; preds = %8, %5
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #7
  %15 = load ptr, ptr %2, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = tail call i32 %15(ptr noundef %0, i32 noundef 224) #7
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %17, %14
  %21 = load ptr, ptr %0, align 4
  %22 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 11
  %23 = load i32, ptr %22, align 4
  %24 = shl i32 224, %23
  %25 = getelementptr i8, ptr %21, i32 %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %25, i16 1) #7, !srcloc !9
  br label %26

26:                                               ; preds = %20, %17
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #7
  %27 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 44
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.tmio_mmc_dma_ops, ptr %28, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  tail call void %32(ptr noundef %0) #7
  br label %33

33:                                               ; preds = %30, %26
  %34 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 37
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void %35(ptr noundef %0) #7
  br label %38

38:                                               ; preds = %37, %33
  %39 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 26
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 25
  %42 = load i32, ptr %41, align 4
  %43 = or i32 %42, %40
  %44 = trunc i32 %43 to i16
  %45 = load ptr, ptr %0, align 4
  %46 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 11
  %47 = load i32, ptr %46, align 4
  %48 = shl i32 32, %47
  %49 = getelementptr i8, ptr %45, i32 %48
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %49, i16 %44) #7, !srcloc !9
  %50 = lshr i32 %43, 16
  %51 = trunc i32 %50 to i16
  %52 = load ptr, ptr %0, align 4
  %53 = load i32, ptr %46, align 4
  %54 = shl i32 34, %53
  %55 = getelementptr i8, ptr %52, i32 %54
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %55, i16 %51) #7, !srcloc !9
  %56 = load i32, ptr %39, align 4
  %57 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 22
  store i32 %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 30
  %59 = load i8, ptr %58, align 4, !range !10
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %76, label %61

61:                                               ; preds = %38
  %62 = and i32 %56, -25
  store i32 %62, ptr %57, align 4
  %63 = load i32, ptr %41, align 4
  %64 = or i32 %63, %62
  %65 = trunc i32 %64 to i16
  %66 = load ptr, ptr %0, align 4
  %67 = load i32, ptr %46, align 4
  %68 = shl i32 32, %67
  %69 = getelementptr i8, ptr %66, i32 %68
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %69, i16 %65) #7, !srcloc !9
  %70 = lshr i32 %64, 16
  %71 = trunc i32 %70 to i16
  %72 = load ptr, ptr %0, align 4
  %73 = load i32, ptr %46, align 4
  %74 = shl i32 34, %73
  %75 = getelementptr i8, ptr %72, i32 %74
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %75, i16 %71) #7, !srcloc !9
  br label %76

76:                                               ; preds = %61, %38
  %77 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 4
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.mmc_host, ptr %78, i32 0, i32 28, i32 6
  %80 = load i8, ptr %79, align 1
  %81 = load ptr, ptr %0, align 4
  %82 = load i32, ptr %46, align 4
  %83 = shl i32 40, %82
  %84 = getelementptr i8, ptr %81, i32 %83
  %85 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %84) #7, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !18
  %86 = and i16 %85, 24575
  switch i8 %80, label %91 [
    i8 0, label %87
    i8 3, label %89
  ]

87:                                               ; preds = %76
  %88 = or i16 %86, -32768
  br label %91

89:                                               ; preds = %76
  %90 = or i16 %86, 8192
  br label %91

91:                                               ; preds = %89, %87, %76
  %92 = phi i16 [ %88, %87 ], [ %90, %89 ], [ %86, %76 ]
  %93 = load ptr, ptr %2, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %91
  %96 = tail call i32 %93(ptr noundef %0, i32 noundef 40) #7
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %95, %91
  %99 = load ptr, ptr %0, align 4
  %100 = load i32, ptr %46, align 4
  %101 = shl i32 40, %100
  %102 = getelementptr i8, ptr %99, i32 %101
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %102, i16 %92) #7, !srcloc !9
  br label %103

103:                                              ; preds = %98, %95
  %104 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 13
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.tmio_mmc_data, ptr %105, i32 0, i32 5
  %107 = load i32, ptr %106, align 4
  %108 = and i32 %107, 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %135, label %110

110:                                              ; preds = %103
  %111 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 23
  %112 = load i32, ptr %111, align 4
  %113 = trunc i32 %112 to i16
  %114 = load ptr, ptr %2, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %110
  %117 = tail call i32 %114(ptr noundef %0, i32 noundef 56) #7
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %116, %110
  %120 = load ptr, ptr %0, align 4
  %121 = load i32, ptr %46, align 4
  %122 = shl i32 56, %121
  %123 = getelementptr i8, ptr %120, i32 %122
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %123, i16 %113) #7, !srcloc !9
  br label %124

124:                                              ; preds = %119, %116
  %125 = load ptr, ptr %2, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %130, label %127

127:                                              ; preds = %124
  %128 = tail call i32 %125(ptr noundef %0, i32 noundef 52) #7
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %127, %124
  %131 = load ptr, ptr %0, align 4
  %132 = load i32, ptr %46, align 4
  %133 = shl i32 52, %132
  %134 = getelementptr i8, ptr %131, i32 %133
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %134, i16 1) #7, !srcloc !9
  br label %135

135:                                              ; preds = %130, %127, %103
  %136 = load ptr, ptr %77, align 4
  %137 = getelementptr inbounds %struct.mmc_host, ptr %136, i32 0, i32 37
  %138 = load ptr, ptr %137, align 8
  %139 = icmp eq ptr %138, null
  br i1 %139, label %147, label %140

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct.mmc_host, ptr %136, i32 0, i32 29
  %142 = load i16, ptr %141, align 8
  %143 = and i16 %142, 8
  %144 = icmp eq i16 %143, 0
  br i1 %144, label %147, label %145

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.mmc_host, ptr %136, i32 0, i32 32
  store i32 1, ptr %146, align 4
  br label %147

147:                                              ; preds = %145, %140, %135
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tmio_mmc_reset_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -208
  %3 = getelementptr i8, ptr %0, i32 80
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #7
  %5 = getelementptr i8, ptr %0, i32 -200
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  %8 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  %9 = or i1 %7, %8
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = load volatile i32, ptr @jiffies, align 64
  %12 = getelementptr i8, ptr %0, i32 84
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %11, -500
  %15 = sub i32 %14, %13
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #7
  br label %44

18:                                               ; preds = %10
  %19 = getelementptr i8, ptr %0, i32 -68
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.mmc_request, ptr %6, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load i32, ptr %23, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.7, i32 noundef %24) #8
  %25 = getelementptr i8, ptr %0, i32 -196
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.mmc_data, ptr %26, i32 0, i32 5
  br label %39

30:                                               ; preds = %18
  %31 = getelementptr i8, ptr %0, i32 -204
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.mmc_command, ptr %32, i32 0, i32 5
  br label %39

36:                                               ; preds = %30
  %37 = load ptr, ptr %22, align 4
  %38 = getelementptr inbounds %struct.mmc_command, ptr %37, i32 0, i32 5
  br label %39

39:                                               ; preds = %36, %34, %28
  %40 = phi ptr [ %35, %34 ], [ %38, %36 ], [ %29, %28 ]
  store i32 -110, ptr %40, align 4
  %41 = getelementptr i8, ptr %0, i32 -204
  store ptr null, ptr %41, align 4
  store ptr null, ptr %25, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #7
  tail call fastcc void @tmio_mmc_reset(ptr noundef %2)
  store ptr null, ptr %5, align 4
  %42 = getelementptr i8, ptr %0, i32 -192
  %43 = load ptr, ptr %42, align 4
  tail call void @mmc_request_done(ptr noundef %43, ptr noundef nonnull %6) #7
  br label %44

44:                                               ; preds = %39, %17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tmio_mmc_done_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -252
  %3 = getelementptr i8, ptr %0, i32 36
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #7
  %5 = getelementptr i8, ptr %0, i32 116
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tmio_mmc_dma_ops, ptr %6, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void %10(ptr noundef %2) #7
  br label %13

13:                                               ; preds = %12, %8, %1
  %14 = getelementptr i8, ptr %0, i32 -244
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  %17 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  %18 = or i1 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #7
  br label %96

20:                                               ; preds = %13
  %21 = getelementptr i8, ptr %0, i32 -248
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %15, align 4
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  store ptr null, ptr %21, align 4
  %26 = getelementptr i8, ptr %0, i32 -240
  store ptr null, ptr %26, align 4
  store ptr null, ptr %14, align 4
  br label %27

27:                                               ; preds = %25, %20
  %28 = getelementptr i8, ptr %0, i32 -44
  %29 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %28) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #7
  %30 = getelementptr inbounds %struct.mmc_request, ptr %15, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.mmc_command, ptr %31, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.mmc_request, ptr %15, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %64, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.mmc_data, ptr %37, i32 0, i32 5
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %64, label %43

43:                                               ; preds = %39, %27
  %44 = getelementptr i8, ptr %0, i32 28
  %45 = load i32, ptr %44, align 4
  %46 = or i32 %45, -54525982
  %47 = trunc i32 %46 to i16
  %48 = load ptr, ptr %2, align 4
  %49 = getelementptr i8, ptr %0, i32 -116
  %50 = load i32, ptr %49, align 4
  %51 = shl i32 28, %50
  %52 = getelementptr i8, ptr %48, i32 %51
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %52, i16 %47) #7, !srcloc !9
  %53 = lshr i32 %46, 16
  %54 = trunc i32 %53 to i16
  %55 = load ptr, ptr %2, align 4
  %56 = load i32, ptr %49, align 4
  %57 = shl i32 30, %56
  %58 = getelementptr i8, ptr %55, i32 %57
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %58, i16 %54) #7, !srcloc !9
  %59 = load ptr, ptr %5, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %43
  %62 = getelementptr inbounds %struct.tmio_mmc_dma_ops, ptr %59, i32 0, i32 4
  %63 = load ptr, ptr %62, align 4
  tail call void %63(ptr noundef %2) #7
  br label %64

64:                                               ; preds = %61, %43, %39, %35
  %65 = getelementptr i8, ptr %0, i32 92
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %79, label %68

68:                                               ; preds = %64
  %69 = tail call zeroext i1 %66(ptr noundef %2, ptr noundef nonnull %15) #7
  br i1 %69, label %70, label %79

70:                                               ; preds = %68
  %71 = getelementptr i8, ptr %0, i32 -236
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.mmc_host, ptr %72, i32 0, i32 29
  %74 = load i16, ptr %73, align 8
  %75 = and i16 %74, 8
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.mmc_host, ptr %72, i32 0, i32 32
  store i32 1, ptr %78, align 4
  br label %79

79:                                               ; preds = %77, %70, %68, %64
  %80 = load ptr, ptr %14, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %88, label %82

82:                                               ; preds = %79
  %83 = load ptr, ptr %30, align 4
  %84 = getelementptr inbounds %struct.mmc_command, ptr %83, i32 0, i32 5
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  tail call fastcc void @tmio_process_mrq(ptr noundef %2, ptr noundef nonnull %15) #7
  br label %96

88:                                               ; preds = %82, %79
  %89 = getelementptr i8, ptr %0, i32 96
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %88
  tail call void %90(ptr noundef %2, ptr noundef nonnull %15) #7
  br label %93

93:                                               ; preds = %92, %88
  %94 = getelementptr i8, ptr %0, i32 -236
  %95 = load ptr, ptr %94, align 4
  tail call void @mmc_request_done(ptr noundef %95, ptr noundef nonnull %15) #7
  br label %96

96:                                               ; preds = %93, %87, %19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_host(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_expose_latency_limit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tmio_mmc_host_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #7
  %8 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 13
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tmio_mmc_data, ptr %9, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 36
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = tail call i32 %16(ptr noundef %0, i32 noundef 52) #7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18, %14
  %22 = load ptr, ptr %0, align 4
  %23 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 11
  %24 = load i32, ptr %23, align 4
  %25 = shl i32 52, %24
  %26 = getelementptr i8, ptr %22, i32 %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %26, i16 0) #7, !srcloc !9
  br label %27

27:                                               ; preds = %21, %18, %1
  tail call void @dev_pm_qos_hide_latency_limit(ptr noundef %6) #7
  tail call void @mmc_remove_host(ptr noundef %5) #7
  %28 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 21
  %29 = tail call zeroext i1 @cancel_work_sync(ptr noundef %28) #7
  %30 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 20
  %31 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %30) #7
  %32 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 44
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.tmio_mmc_dma_ops, ptr %33, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  tail call void %37(ptr noundef %0) #7
  br label %38

38:                                               ; preds = %35, %27
  %39 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 26
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 54525981
  %42 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 22
  %43 = load i32, ptr %42, align 4
  %44 = or i32 %43, %41
  store i32 %44, ptr %42, align 4
  %45 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 25
  %46 = load i32, ptr %45, align 4
  %47 = or i32 %46, %44
  %48 = trunc i32 %47 to i16
  %49 = load ptr, ptr %0, align 4
  %50 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 11
  %51 = load i32, ptr %50, align 4
  %52 = shl i32 32, %51
  %53 = getelementptr i8, ptr %49, i32 %52
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %53, i16 %48) #7, !srcloc !9
  %54 = lshr i32 %47, 16
  %55 = trunc i32 %54 to i16
  %56 = load ptr, ptr %0, align 4
  %57 = load i32, ptr %50, align 4
  %58 = shl i32 34, %57
  %59 = getelementptr i8, ptr %56, i32 %58
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %59, i16 %55) #7, !srcloc !9
  %60 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 30
  %61 = load i8, ptr %60, align 4, !range !10
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %38
  %64 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %64) #7, !srcloc !23
  %65 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %64, ptr %64, i32 0, i32 -1, ptr elementtype(i32) %64) #7, !srcloc !26
  %66 = extractvalue { i32, i32, i32 } %65, 0
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !27
  br label %69

69:                                               ; preds = %68, %63, %38
  tail call void @__pm_runtime_disable(ptr noundef %6, i1 noundef zeroext true) #7
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %6, i1 noundef zeroext false) #7
  %70 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %70) #7, !srcloc !23
  %71 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %70, ptr %70, i32 0, i32 -1, ptr elementtype(i32) %70) #7, !srcloc !26
  %72 = extractvalue { i32, i32, i32 } %71, 0
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !27
  br label %75

75:                                               ; preds = %74, %69
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_qos_hide_latency_limit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_host(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tmio_mmc_host_runtime_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tmio_mmc_host, ptr %3, i32 0, i32 26
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 54525981
  %7 = getelementptr inbounds %struct.tmio_mmc_host, ptr %3, i32 0, i32 22
  %8 = load i32, ptr %7, align 4
  %9 = or i32 %8, %6
  store i32 %9, ptr %7, align 4
  %10 = getelementptr inbounds %struct.tmio_mmc_host, ptr %3, i32 0, i32 25
  %11 = load i32, ptr %10, align 4
  %12 = or i32 %11, %9
  %13 = trunc i32 %12 to i16
  %14 = load ptr, ptr %3, align 4
  %15 = getelementptr inbounds %struct.tmio_mmc_host, ptr %3, i32 0, i32 11
  %16 = load i32, ptr %15, align 4
  %17 = shl i32 32, %16
  %18 = getelementptr i8, ptr %14, i32 %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %18, i16 %13) #7, !srcloc !9
  %19 = lshr i32 %12, 16
  %20 = trunc i32 %19 to i16
  %21 = load ptr, ptr %3, align 4
  %22 = load i32, ptr %15, align 4
  %23 = shl i32 34, %22
  %24 = getelementptr i8, ptr %21, i32 %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %24, i16 %20) #7, !srcloc !9
  %25 = getelementptr inbounds %struct.tmio_mmc_host, ptr %3, i32 0, i32 24
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = getelementptr inbounds %struct.tmio_mmc_host, ptr %3, i32 0, i32 33
  %30 = load ptr, ptr %29, align 4
  tail call void %30(ptr noundef %3, i32 noundef 0) #7
  br label %31

31:                                               ; preds = %28, %1
  %32 = getelementptr inbounds %struct.tmio_mmc_host, ptr %3, i32 0, i32 34
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call void %33(ptr noundef %3) #7
  br label %36

36:                                               ; preds = %35, %31
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tmio_mmc_host_runtime_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tmio_mmc_host, ptr %3, i32 0, i32 32
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 %5(ptr noundef %3) #7
  br label %9

9:                                                ; preds = %7, %1
  tail call fastcc void @tmio_mmc_reset(ptr noundef %3)
  %10 = getelementptr inbounds %struct.tmio_mmc_host, ptr %3, i32 0, i32 24
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.tmio_mmc_host, ptr %3, i32 0, i32 33
  %15 = load ptr, ptr %14, align 4
  tail call void %15(ptr noundef %3, i32 noundef %11) #7
  br label %16

16:                                               ; preds = %13, %9
  %17 = getelementptr inbounds %struct.tmio_mmc_host, ptr %3, i32 0, i32 44
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.tmio_mmc_dma_ops, ptr %18, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  tail call void %22(ptr noundef %3, i1 noundef zeroext true) #7
  br label %23

23:                                               ; preds = %20, %16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_detect_change(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tmio_mmc_request(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 19
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #7
  %5 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #7
  %9 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.mmc_command, ptr %10, i32 0, i32 5
  store i32 -11, ptr %11, align 4
  tail call void @mmc_request_done(ptr noundef %0, ptr noundef %1) #7
  br label %16

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %14 = load volatile i32, ptr @jiffies, align 64
  %15 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 20
  store i32 %14, ptr %15, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !28
  tail call void @arm_heavy_mb() #7
  store ptr %1, ptr %5, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #7
  tail call fastcc void @tmio_process_mrq(ptr noundef %13, ptr noundef %1)
  br label %16

16:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tmio_mmc_set_ios(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %4 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 21
  tail call void @mutex_lock(ptr noundef %4) #7
  %5 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 19
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #7
  %7 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  store ptr inttoptr (i32 -4 to ptr), ptr %7, align 4
  br label %13

13:                                               ; preds = %12, %10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #7
  br label %163

14:                                               ; preds = %2
  store ptr inttoptr (i32 -16 to ptr), ptr %7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #7
  %15 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 5
  %16 = load i8, ptr %15, align 2
  switch i8 %16, label %135 [
    i8 0, label %17
    i8 1, label %49
    i8 2, label %105
  ]

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 0, i32 54
  %21 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 0, i32 54, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  %25 = tail call i32 @regulator_disable(ptr noundef %22) #7
  br label %26

26:                                               ; preds = %24, %17
  %27 = load ptr, ptr %20, align 4
  %28 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = tail call i32 @mmc_regulator_set_ocr(ptr noundef %19, ptr noundef %27, i16 noundef zeroext 0) #7
  br label %31

31:                                               ; preds = %29, %26
  %32 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 10, i32 2, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 3
  %37 = load ptr, ptr %36, align 4
  tail call void %33(ptr noundef %37, i32 noundef 0) #7
  br label %38

38:                                               ; preds = %35, %31
  %39 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 4
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.tmio_mmc_data, ptr %40, i32 0, i32 5
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %38
  tail call fastcc void @tmio_mmc_reset(ptr noundef %3)
  br label %46

46:                                               ; preds = %45, %38
  %47 = getelementptr inbounds %struct.tmio_mmc_host, ptr %3, i32 0, i32 33
  %48 = load ptr, ptr %47, align 4
  tail call void %48(ptr noundef %3, i32 noundef 0) #7
  br label %135

49:                                               ; preds = %14
  %50 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 1
  %51 = load i16, ptr %50, align 4
  %52 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 10, i32 2, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 3
  %59 = load ptr, ptr %58, align 4
  tail call void %55(ptr noundef %59, i32 noundef 1) #7
  br label %60

60:                                               ; preds = %57, %49
  %61 = getelementptr inbounds %struct.mmc_host, ptr %53, i32 0, i32 54
  %62 = load ptr, ptr %61, align 4
  %63 = icmp ugt ptr %62, inttoptr (i32 -4096 to ptr)
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = tail call i32 @mmc_regulator_set_ocr(ptr noundef %53, ptr noundef %62, i16 noundef zeroext %51) #7
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #7
  %66 = icmp ne i32 %65, 0
  br label %67

67:                                               ; preds = %64, %60
  %68 = phi i1 [ false, %60 ], [ %66, %64 ]
  %69 = getelementptr inbounds %struct.mmc_host, ptr %53, i32 0, i32 54, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = icmp ugt ptr %70, inttoptr (i32 -4096 to ptr)
  %72 = select i1 %71, i1 true, i1 %68
  br i1 %72, label %75, label %73

73:                                               ; preds = %67
  %74 = tail call i32 @regulator_enable(ptr noundef %70) #7
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #7
  br label %75

75:                                               ; preds = %73, %67
  %76 = getelementptr inbounds %struct.tmio_mmc_host, ptr %3, i32 0, i32 33
  %77 = load ptr, ptr %76, align 4
  %78 = load i32, ptr %1, align 4
  tail call void %77(ptr noundef %3, i32 noundef %78) #7
  %79 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 6
  %80 = load i8, ptr %79, align 1
  %81 = load ptr, ptr %3, align 4
  %82 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 2
  %83 = load i32, ptr %82, align 4
  %84 = shl i32 40, %83
  %85 = getelementptr i8, ptr %81, i32 %84
  %86 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %85) #7, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !18
  %87 = and i16 %86, 24575
  switch i8 %80, label %92 [
    i8 0, label %88
    i8 3, label %90
  ]

88:                                               ; preds = %75
  %89 = or i16 %87, -32768
  br label %92

90:                                               ; preds = %75
  %91 = or i16 %87, 8192
  br label %92

92:                                               ; preds = %90, %88, %75
  %93 = phi i16 [ %89, %88 ], [ %91, %90 ], [ %87, %75 ]
  %94 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 26
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %92
  %98 = tail call i32 %95(ptr noundef %3, i32 noundef 40) #7
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %135

100:                                              ; preds = %97, %92
  %101 = load ptr, ptr %3, align 4
  %102 = load i32, ptr %82, align 4
  %103 = shl i32 40, %102
  %104 = getelementptr i8, ptr %101, i32 %103
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %104, i16 %93) #7, !srcloc !9
  br label %135

105:                                              ; preds = %14
  %106 = getelementptr inbounds %struct.tmio_mmc_host, ptr %3, i32 0, i32 33
  %107 = load ptr, ptr %106, align 4
  %108 = load i32, ptr %1, align 4
  tail call void %107(ptr noundef %3, i32 noundef %108) #7
  %109 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 6
  %110 = load i8, ptr %109, align 1
  %111 = load ptr, ptr %3, align 4
  %112 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 2
  %113 = load i32, ptr %112, align 4
  %114 = shl i32 40, %113
  %115 = getelementptr i8, ptr %111, i32 %114
  %116 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %115) #7, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !18
  %117 = and i16 %116, 24575
  switch i8 %110, label %122 [
    i8 0, label %118
    i8 3, label %120
  ]

118:                                              ; preds = %105
  %119 = or i16 %117, -32768
  br label %122

120:                                              ; preds = %105
  %121 = or i16 %117, 8192
  br label %122

122:                                              ; preds = %120, %118, %105
  %123 = phi i16 [ %119, %118 ], [ %121, %120 ], [ %117, %105 ]
  %124 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 26
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %130, label %127

127:                                              ; preds = %122
  %128 = tail call i32 %125(ptr noundef %3, i32 noundef 40) #7
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %127, %122
  %131 = load ptr, ptr %3, align 4
  %132 = load i32, ptr %112, align 4
  %133 = shl i32 40, %132
  %134 = getelementptr i8, ptr %131, i32 %133
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %134, i16 %123) #7, !srcloc !9
  br label %135

135:                                              ; preds = %130, %127, %100, %97, %46, %14
  %136 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 4
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.tmio_mmc_data, ptr %137, i32 0, i32 5
  %139 = load i32, ptr %138, align 4
  %140 = and i32 %139, 32
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %160, label %142

142:                                              ; preds = %135
  %143 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr inbounds %struct.mmc_host, ptr %144, i32 0, i32 57
  %146 = load i32, ptr %145, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %142
  %149 = getelementptr inbounds %struct.mmc_host, ptr %144, i32 0, i32 6
  %150 = load i32, ptr %149, align 16
  br label %151

151:                                              ; preds = %148, %142
  %152 = phi i32 [ %150, %148 ], [ %146, %142 ]
  %153 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 12
  %154 = load ptr, ptr %153, align 4
  %155 = tail call i32 %154(ptr noundef %3) #7
  %156 = udiv i32 %152, 1000
  %157 = udiv i32 %155, %156
  %158 = load ptr, ptr %143, align 4
  %159 = getelementptr inbounds %struct.mmc_host, ptr %158, i32 0, i32 26
  store i32 %157, ptr %159, align 4
  br label %160

160:                                              ; preds = %151, %135
  tail call void @usleep_range_state(i32 noundef 140, i32 noundef 200, i32 noundef 2) #7
  store ptr null, ptr %7, align 4
  %161 = load i32, ptr %1, align 4
  %162 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 16
  store i32 %161, ptr %162, align 4
  br label %163

163:                                              ; preds = %160, %13
  tail call void @mutex_unlock(ptr noundef %4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tmio_mmc_get_ro(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = shl i32 28, %5
  %7 = getelementptr i8, ptr %3, i32 %6
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %7) #7, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !18
  %9 = load ptr, ptr %2, align 4
  %10 = load i32, ptr %4, align 4
  %11 = shl i32 30, %10
  %12 = getelementptr i8, ptr %9, i32 %11
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %12) #7, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !18
  %14 = lshr i16 %8, 7
  %15 = and i16 %14, 1
  %16 = xor i16 %15, 1
  %17 = zext i16 %16 to i32
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tmio_mmc_get_cd(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = shl i32 28, %5
  %7 = getelementptr i8, ptr %3, i32 %6
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %7) #7, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !18
  %9 = load ptr, ptr %2, align 4
  %10 = load i32, ptr %4, align 4
  %11 = shl i32 30, %10
  %12 = getelementptr i8, ptr %9, i32 %11
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %12) #7, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !18
  %14 = lshr i16 %8, 5
  %15 = and i16 %14, 1
  %16 = zext i16 %15 to i32
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tmio_mmc_enable_sdio_irq(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %4 = icmp eq i32 %1, 0
  %5 = getelementptr inbounds %struct.tmio_mmc_host, ptr %3, i32 0, i32 31
  %6 = load i8, ptr %5, align 1, !range !10
  %7 = icmp eq i8 %6, 0
  br i1 %4, label %52, label %8

8:                                                ; preds = %2
  br i1 %7, label %9, label %73

9:                                                ; preds = %8
  %10 = load ptr, ptr %0, align 64
  %11 = tail call i32 @__pm_runtime_resume(ptr noundef %10, i32 noundef 4) #7
  store i8 1, ptr %5, align 1
  %12 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 15
  store i32 49158, ptr %12, align 4
  %13 = load ptr, ptr %3, align 4
  %14 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = shl i32 54, %15
  %17 = getelementptr i8, ptr %13, i32 %16
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %17) #7, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !18
  %19 = and i16 %18, 16376
  %20 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.tmio_mmc_data, ptr %21, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 256
  %25 = icmp eq i32 %24, 0
  %26 = or i16 %19, 6
  %27 = select i1 %25, i16 %19, i16 %26
  %28 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 26
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %9
  %32 = tail call i32 %29(ptr noundef %3, i32 noundef 54) #7
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31, %9
  %35 = load ptr, ptr %3, align 4
  %36 = load i32, ptr %14, align 4
  %37 = shl i32 54, %36
  %38 = getelementptr i8, ptr %35, i32 %37
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %38, i16 %27) #7, !srcloc !9
  br label %39

39:                                               ; preds = %34, %31
  %40 = load i32, ptr %12, align 4
  %41 = trunc i32 %40 to i16
  %42 = load ptr, ptr %28, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = tail call i32 %42(ptr noundef %3, i32 noundef 56) #7
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %73

47:                                               ; preds = %44, %39
  %48 = load ptr, ptr %3, align 4
  %49 = load i32, ptr %14, align 4
  %50 = shl i32 56, %49
  %51 = getelementptr i8, ptr %48, i32 %50
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %51, i16 %41) #7, !srcloc !9
  br label %73

52:                                               ; preds = %2
  br i1 %7, label %73, label %53

53:                                               ; preds = %52
  %54 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 15
  store i32 49159, ptr %54, align 4
  %55 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 26
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = tail call i32 %56(ptr noundef %3, i32 noundef 56) #7
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %58, %53
  %62 = load ptr, ptr %3, align 4
  %63 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = shl i32 56, %64
  %66 = getelementptr i8, ptr %62, i32 %65
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %66, i16 -16377) #7, !srcloc !9
  br label %67

67:                                               ; preds = %61, %58
  store i8 0, ptr %5, align 1
  %68 = load ptr, ptr %0, align 64
  %69 = tail call i64 @ktime_get_mono_fast_ns() #7
  %70 = getelementptr inbounds %struct.device, ptr %68, i32 0, i32 11, i32 22
  store volatile i64 %69, ptr %70, align 8
  %71 = load ptr, ptr %0, align 64
  %72 = tail call i32 @__pm_runtime_suspend(ptr noundef %71, i32 noundef 13) #7
  br label %73

73:                                               ; preds = %67, %52, %47, %44, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tmio_multi_io_quirk(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 68
  %6 = getelementptr inbounds %struct.tmio_mmc_host, ptr %5, i32 0, i32 35
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call i32 %7(ptr noundef %0, i32 noundef %1, i32 noundef %2) #7
  br label %11

11:                                               ; preds = %9, %3
  %12 = phi i32 [ %10, %9 ], [ %2, %3 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_request_done(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tmio_process_mrq(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %3
  br i1 %8, label %9, label %104

9:                                                ; preds = %5, %2
  %10 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %104, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 13
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 0, i32 28, i32 6
  %21 = load i8, ptr %20, align 1
  %22 = and i8 %21, -2
  %23 = icmp eq i8 %22, 2
  br i1 %23, label %24, label %42

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.mmc_data, ptr %13, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = icmp ult i32 %26, 2
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.tmio_mmc_data, ptr %17, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 2
  %32 = icmp ugt i32 %26, 3
  %33 = icmp ne i32 %31, 0
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %42, label %35

35:                                               ; preds = %28, %24
  %36 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 0, i32 1, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %101

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  br label %101

42:                                               ; preds = %28, %15
  %43 = getelementptr inbounds %struct.mmc_data, ptr %13, i32 0, i32 10
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 9
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.mmc_data, ptr %13, i32 0, i32 12
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 7
  store ptr %47, ptr %48, align 4
  %49 = load ptr, ptr %46, align 4
  %50 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 8
  store ptr %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 10
  store i32 0, ptr %51, align 4
  %52 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 3
  store ptr %13, ptr %52, align 4
  %53 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 14
  store i8 0, ptr %53, align 4
  %54 = getelementptr inbounds %struct.mmc_data, ptr %13, i32 0, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = trunc i32 %55 to i16
  %57 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 36
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %42
  %61 = tail call i32 %58(ptr noundef %0, i32 noundef 38) #7
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60, %42
  %64 = load ptr, ptr %0, align 4
  %65 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 11
  %66 = load i32, ptr %65, align 4
  %67 = shl i32 38, %66
  %68 = getelementptr i8, ptr %64, i32 %67
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %68, i16 %56) #7, !srcloc !9
  br label %69

69:                                               ; preds = %63, %60
  %70 = load ptr, ptr %18, align 4
  %71 = getelementptr inbounds %struct.mmc_host, ptr %70, i32 0, i32 25
  %72 = load i32, ptr %71, align 8
  %73 = icmp ugt i32 %72, 65535
  %74 = getelementptr inbounds %struct.mmc_data, ptr %13, i32 0, i32 3
  %75 = load i32, ptr %74, align 4
  br i1 %73, label %76, label %82

76:                                               ; preds = %69
  %77 = load ptr, ptr %0, align 4
  %78 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 11
  %79 = load i32, ptr %78, align 4
  %80 = shl i32 10, %79
  %81 = getelementptr i8, ptr %77, i32 %80
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !29
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %75) #7, !srcloc !30
  br label %95

82:                                               ; preds = %69
  %83 = trunc i32 %75 to i16
  %84 = load ptr, ptr %57, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %82
  %87 = tail call i32 %84(ptr noundef %0, i32 noundef 10) #7
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %86, %82
  %90 = load ptr, ptr %0, align 4
  %91 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 11
  %92 = load i32, ptr %91, align 4
  %93 = shl i32 10, %92
  %94 = getelementptr i8, ptr %90, i32 %93
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %94, i16 %83) #7, !srcloc !9
  br label %95

95:                                               ; preds = %89, %86, %76
  %96 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 44
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %104, label %99

99:                                               ; preds = %95
  %100 = load ptr, ptr %97, align 4
  tail call void %100(ptr noundef %0, ptr noundef nonnull %13) #7
  br label %104

101:                                              ; preds = %39, %35
  %102 = phi ptr [ %41, %39 ], [ %37, %35 ]
  %103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %102, i32 noundef %26) #8
  br label %210

104:                                              ; preds = %99, %95, %9, %5
  %105 = phi ptr [ %11, %9 ], [ %3, %5 ], [ %11, %95 ], [ %11, %99 ]
  %106 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 3
  %107 = load ptr, ptr %106, align 4
  %108 = load i32, ptr %105, align 4
  %109 = getelementptr inbounds %struct.mmc_command, ptr %105, i32 0, i32 3
  %110 = load i32, ptr %109, align 4
  %111 = and i32 %110, 31
  switch i32 %111, label %210 [
    i32 0, label %116
    i32 21, label %112
    i32 17, label %112
    i32 29, label %113
    i32 7, label %114
    i32 1, label %115
  ]

112:                                              ; preds = %104, %104
  br label %116

113:                                              ; preds = %104
  br label %116

114:                                              ; preds = %104
  br label %116

115:                                              ; preds = %104
  br label %116

116:                                              ; preds = %115, %114, %113, %112, %104
  %117 = phi i32 [ 1792, %115 ], [ 1536, %114 ], [ 1280, %113 ], [ 1024, %112 ], [ 768, %104 ]
  %118 = or i32 %117, %108
  %119 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 1
  store ptr %105, ptr %119, align 4
  %120 = icmp eq ptr %107, null
  br i1 %120, label %164, label %121

121:                                              ; preds = %116
  %122 = or i32 %118, 2048
  %123 = getelementptr inbounds %struct.mmc_data, ptr %107, i32 0, i32 3
  %124 = load i32, ptr %123, align 4
  %125 = icmp ugt i32 %124, 1
  br i1 %125, label %126, label %157

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 36
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %133, label %130

130:                                              ; preds = %126
  %131 = tail call i32 %128(ptr noundef %0, i32 noundef 8) #7
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %130, %126
  %134 = load ptr, ptr %0, align 4
  %135 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 11
  %136 = load i32, ptr %135, align 4
  %137 = shl i32 8, %136
  %138 = getelementptr i8, ptr %134, i32 %137
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %138, i16 256) #7, !srcloc !9
  br label %139

139:                                              ; preds = %133, %130
  %140 = or i32 %118, 10240
  %141 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 13
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.tmio_mmc_data, ptr %142, i32 0, i32 5
  %144 = load i32, ptr %143, align 4
  %145 = and i32 %144, 128
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %157, label %147

147:                                              ; preds = %139
  %148 = load i32, ptr %105, align 4
  %149 = icmp eq i32 %148, 53
  br i1 %149, label %155, label %150

150:                                              ; preds = %147
  %151 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 2
  %152 = load ptr, ptr %151, align 4
  %153 = load ptr, ptr %152, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %157, label %155

155:                                              ; preds = %150, %147
  %156 = or i32 %118, 26624
  br label %157

157:                                              ; preds = %155, %150, %139, %121
  %158 = phi i32 [ %156, %155 ], [ %140, %150 ], [ %140, %139 ], [ %122, %121 ]
  %159 = getelementptr inbounds %struct.mmc_data, ptr %107, i32 0, i32 6
  %160 = load i32, ptr %159, align 4
  %161 = shl i32 %160, 3
  %162 = and i32 %161, 4096
  %163 = or i32 %162, %158
  br label %164

164:                                              ; preds = %157, %116
  %165 = phi i32 [ %118, %116 ], [ %163, %157 ]
  %166 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 22
  %167 = load i32, ptr %166, align 4
  %168 = and i32 %167, -4194330
  store i32 %168, ptr %166, align 4
  %169 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 25
  %170 = load i32, ptr %169, align 4
  %171 = or i32 %170, %168
  %172 = trunc i32 %171 to i16
  %173 = load ptr, ptr %0, align 4
  %174 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 11
  %175 = load i32, ptr %174, align 4
  %176 = shl i32 32, %175
  %177 = getelementptr i8, ptr %173, i32 %176
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %177, i16 %172) #7, !srcloc !9
  %178 = lshr i32 %171, 16
  %179 = trunc i32 %178 to i16
  %180 = load ptr, ptr %0, align 4
  %181 = load i32, ptr %174, align 4
  %182 = shl i32 34, %181
  %183 = getelementptr i8, ptr %180, i32 %182
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %183, i16 %179) #7, !srcloc !9
  %184 = getelementptr inbounds %struct.mmc_command, ptr %105, i32 0, i32 1
  %185 = load i32, ptr %184, align 4
  %186 = trunc i32 %185 to i16
  %187 = load ptr, ptr %0, align 4
  %188 = load i32, ptr %174, align 4
  %189 = shl i32 4, %188
  %190 = getelementptr i8, ptr %187, i32 %189
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %190, i16 %186) #7, !srcloc !9
  %191 = lshr i32 %185, 16
  %192 = trunc i32 %191 to i16
  %193 = load ptr, ptr %0, align 4
  %194 = load i32, ptr %174, align 4
  %195 = shl i32 6, %194
  %196 = getelementptr i8, ptr %193, i32 %195
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %196, i16 %192) #7, !srcloc !9
  %197 = trunc i32 %165 to i16
  %198 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 36
  %199 = load ptr, ptr %198, align 4
  %200 = icmp eq ptr %199, null
  br i1 %200, label %204, label %201

201:                                              ; preds = %164
  %202 = tail call i32 %199(ptr noundef %0, i32 noundef 0) #7
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %201, %164
  %205 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %205, i16 %197) #7, !srcloc !9
  br label %206

206:                                              ; preds = %204, %201
  %207 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 20
  %208 = load ptr, ptr @system_wq, align 4
  %209 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %208, ptr noundef %207, i32 noundef 500) #7
  br label %217

210:                                              ; preds = %104, %101
  %211 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 2
  store ptr null, ptr %211, align 4
  %212 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %213 = load ptr, ptr %212, align 4
  %214 = getelementptr inbounds %struct.mmc_command, ptr %213, i32 0, i32 5
  store i32 -22, ptr %214, align 4
  %215 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 4
  %216 = load ptr, ptr %215, align 4
  tail call void @mmc_request_done(ptr noundef %216, ptr noundef %1) #7
  br label %217

217:                                              ; preds = %210, %206
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_set_ocr(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_get_supply(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!8 = !{i64 2152532567}
!9 = !{i64 4991327}
!10 = !{i8 0, i8 2}
!11 = !{i64 316283, i64 316344}
!12 = !{i64 2152793336}
!13 = !{i64 2152031756}
!14 = !{i64 2152031963}
!15 = !{i64 2152795961}
!16 = !{i64 319300}
!17 = !{i64 4991527}
!18 = !{i64 2152531345}
!19 = !{i64 2149198870}
!20 = !{i64 2149194694}
!21 = !{i64 2149194769, i64 2149194796, i64 2149194843, i64 2149194865, i64 2149194893, i64 2149194913}
!22 = !{i64 2149221873}
!23 = !{i64 421044, i64 2147911015, i64 2147911041, i64 2147911088, i64 2147911110, i64 2147911138, i64 2147911158}
!24 = !{i64 2147923227, i64 2147923253, i64 2147923282, i64 2147923316, i64 2147923347, i64 2147923370}
!25 = !{i64 2147922734}
!26 = !{i64 407613, i64 407638, i64 407660, i64 407676, i64 407688, i64 407708, i64 407732, i64 407748, i64 407760}
!27 = !{i64 2147922860}
!28 = !{i64 2154856327}
!29 = !{i64 2152533040}
!30 = !{i64 4991947}
