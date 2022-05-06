; ModuleID = '/llk/IR/sound/core/pcm_native.c_pt.bc'
source_filename = "../sound/core/pcm_native.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_stream_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_stream_lock\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_stream_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_stream_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_stream_unlock\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_stream_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_stream_lock_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_stream_lock_irq\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_stream_lock_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_stream_unlock_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_stream_unlock_irq\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_stream_unlock_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__snd_pcm_stream_lock_irqsave:\09\09\09\09\09"
module asm "\09.asciz \09\22_snd_pcm_stream_lock_irqsave\22\09\09\09\09\09"
module asm "__kstrtabns__snd_pcm_stream_lock_irqsave:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__snd_pcm_stream_lock_irqsave_nested:\09\09\09\09\09"
module asm "\09.asciz \09\22_snd_pcm_stream_lock_irqsave_nested\22\09\09\09\09\09"
module asm "__kstrtabns__snd_pcm_stream_lock_irqsave_nested:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_stream_unlock_irqrestore:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_stream_unlock_irqrestore\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_stream_unlock_irqrestore:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_hw_refine:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_hw_refine\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_hw_refine:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_stop\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_stop_xrun:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_stop_xrun\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_stop_xrun:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_suspend_all:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_suspend_all\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_suspend_all:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_release_substream:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_release_substream\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_release_substream:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_open_substream:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_open_substream\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_open_substream:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_kernel_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_kernel_ioctl\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_kernel_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_lib_default_mmap:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_lib_default_mmap\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_lib_default_mmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_mmap_data:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_mmap_data\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_mmap_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type {}
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.action_ops = type { ptr, ptr, ptr, ptr }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8 }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, ptr, ptr, %struct.device }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_info = type { i32, i32, i32, i32, [64 x i8], [80 x i8], [32 x i8], i32, i32, i32, i32, %union.snd_pcm_sync_id, [64 x i8] }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64 }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_hw_rule = type { i32, i32, [5 x i32], ptr, ptr }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_pcm_status64 = type { i32, [4 x i8], i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, [20 x i8] }
%struct.snd_pcm_mmap_status = type { i32, i32, [0 x i8], i32, [4 x i8], %struct.__kernel_timespec, i32, i32, %struct.__kernel_timespec }
%struct.__kernel_timespec = type { i64, i64 }
%struct.snd_pcm_mmap_control = type { [0 x i8], i32, [0 x i8], [0 x i8], i32, [4 x i8] }
%struct.snd_pcm_sw_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [56 x i8] }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.48, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
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
%union.anon.48 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.9, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.54, %union.anon.55 }
%union.anon.54 = type { ptr }
%union.anon.55 = type { i64 }
%struct.iovec = type { ptr, i32 }
%struct.snd_pcm_channel_info = type { i32, i32, i32, i32 }
%struct.snd_pcm_sync_ptr = type { i32, i32, %union.anon.84, %union.anon.85 }
%union.anon.84 = type { %struct.snd_pcm_mmap_status, [8 x i8] }
%union.anon.85 = type { %struct.snd_pcm_mmap_control, [52 x i8] }
%struct.snd_xferi = type { i32, ptr, i32 }
%struct.snd_xfern = type { i32, ptr, i32 }
%struct.snd_pcm_file = type { ptr, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.66, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.67, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.68, ptr, %struct.address_space, %struct.list_head, %union.anon.69, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.66 = type { i32 }
%struct.seqcount = type { i32 }
%union.anon.67 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.68 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.69 = type { ptr }
%struct.snd_pcm_sync_ptr32 = type { i32, %union.anon.82, %union.anon.83 }
%union.anon.82 = type { %struct.snd_pcm_mmap_status32, [32 x i8] }
%struct.snd_pcm_mmap_status32 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.83 = type { %struct.snd_pcm_mmap_control32, [56 x i8] }
%struct.snd_pcm_mmap_control32 = type { i32, i32 }
%struct.snd_pcm_hw_params_old = type { i32, [3 x i32], [12 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.anon.11 = type { ptr, i32, i32, i32 }
%struct.page = type { i32, %union.anon.1, %union.anon.61, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.61 = type { %struct.atomic_t }
%struct.vm_fault = type { %struct.anon.11, i32, ptr, ptr, %union.anon.12, ptr, ptr, ptr, ptr, ptr }
%union.anon.12 = type { i32 }
%struct.snd_pcm_status32 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [36 x i8] }

@snd_pcm_group_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [14 x i8] c"&group->mutex\00", align 1
@__kstrtab_snd_pcm_stream_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_stream_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_stream_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_stream_lock to i32), ptr @__kstrtab_snd_pcm_stream_lock, ptr @__kstrtabns_snd_pcm_stream_lock }, section "___ksymtab_gpl+snd_pcm_stream_lock", align 4
@__kstrtab_snd_pcm_stream_unlock = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_stream_unlock = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_stream_unlock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_stream_unlock to i32), ptr @__kstrtab_snd_pcm_stream_unlock, ptr @__kstrtabns_snd_pcm_stream_unlock }, section "___ksymtab_gpl+snd_pcm_stream_unlock", align 4
@__kstrtab_snd_pcm_stream_lock_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_stream_lock_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_stream_lock_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_stream_lock_irq to i32), ptr @__kstrtab_snd_pcm_stream_lock_irq, ptr @__kstrtabns_snd_pcm_stream_lock_irq }, section "___ksymtab_gpl+snd_pcm_stream_lock_irq", align 4
@__kstrtab_snd_pcm_stream_unlock_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_stream_unlock_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_stream_unlock_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_stream_unlock_irq to i32), ptr @__kstrtab_snd_pcm_stream_unlock_irq, ptr @__kstrtabns_snd_pcm_stream_unlock_irq }, section "___ksymtab_gpl+snd_pcm_stream_unlock_irq", align 4
@__kstrtab__snd_pcm_stream_lock_irqsave = external dso_local constant [0 x i8], align 1
@__kstrtabns__snd_pcm_stream_lock_irqsave = external dso_local constant [0 x i8], align 1
@__ksymtab__snd_pcm_stream_lock_irqsave = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_snd_pcm_stream_lock_irqsave to i32), ptr @__kstrtab__snd_pcm_stream_lock_irqsave, ptr @__kstrtabns__snd_pcm_stream_lock_irqsave }, section "___ksymtab_gpl+_snd_pcm_stream_lock_irqsave", align 4
@__kstrtab__snd_pcm_stream_lock_irqsave_nested = external dso_local constant [0 x i8], align 1
@__kstrtabns__snd_pcm_stream_lock_irqsave_nested = external dso_local constant [0 x i8], align 1
@__ksymtab__snd_pcm_stream_lock_irqsave_nested = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_snd_pcm_stream_lock_irqsave_nested to i32), ptr @__kstrtab__snd_pcm_stream_lock_irqsave_nested, ptr @__kstrtabns__snd_pcm_stream_lock_irqsave_nested }, section "___ksymtab_gpl+_snd_pcm_stream_lock_irqsave_nested", align 4
@__kstrtab_snd_pcm_stream_unlock_irqrestore = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_stream_unlock_irqrestore = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_stream_unlock_irqrestore = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_stream_unlock_irqrestore to i32), ptr @__kstrtab_snd_pcm_stream_unlock_irqrestore, ptr @__kstrtabns_snd_pcm_stream_unlock_irqrestore }, section "___ksymtab_gpl+snd_pcm_stream_unlock_irqrestore", align 4
@__kstrtab_snd_pcm_hw_refine = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_hw_refine = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_hw_refine = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_hw_refine to i32), ptr @__kstrtab_snd_pcm_hw_refine, ptr @__kstrtabns_snd_pcm_hw_refine }, section "___ksymtab+snd_pcm_hw_refine", align 4
@snd_pcm_action_start = internal constant %struct.action_ops { ptr @snd_pcm_pre_start, ptr @snd_pcm_do_start, ptr @snd_pcm_undo_start, ptr @snd_pcm_post_start }, align 4
@snd_pcm_action_stop = internal constant %struct.action_ops { ptr @snd_pcm_pre_stop, ptr @snd_pcm_do_stop, ptr null, ptr @snd_pcm_post_stop }, align 4
@__kstrtab_snd_pcm_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_stop = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_stop to i32), ptr @__kstrtab_snd_pcm_stop, ptr @__kstrtabns_snd_pcm_stop }, section "___ksymtab+snd_pcm_stop", align 4
@__kstrtab_snd_pcm_stop_xrun = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_stop_xrun = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_stop_xrun = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_stop_xrun to i32), ptr @__kstrtab_snd_pcm_stop_xrun, ptr @__kstrtabns_snd_pcm_stop_xrun }, section "___ksymtab_gpl+snd_pcm_stop_xrun", align 4
@__kstrtab_snd_pcm_suspend_all = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_suspend_all = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_suspend_all = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_suspend_all to i32), ptr @__kstrtab_snd_pcm_suspend_all, ptr @__kstrtabns_snd_pcm_suspend_all }, section "___ksymtab+snd_pcm_suspend_all", align 4
@rates = internal constant [15 x i32] [i32 5512, i32 8000, i32 11025, i32 16000, i32 22050, i32 32000, i32 44100, i32 48000, i32 64000, i32 88200, i32 96000, i32 176400, i32 192000, i32 352800, i32 384000], align 4
@snd_pcm_known_rates = dso_local local_unnamed_addr constant %struct.snd_pcm_hw_constraint_list { ptr @rates, i32 15, i32 0 }, align 4
@__kstrtab_snd_pcm_release_substream = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_release_substream = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_release_substream = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_release_substream to i32), ptr @__kstrtab_snd_pcm_release_substream, ptr @__kstrtabns_snd_pcm_release_substream }, section "___ksymtab+snd_pcm_release_substream", align 4
@__kstrtab_snd_pcm_open_substream = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_open_substream = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_open_substream = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_open_substream to i32), ptr @__kstrtab_snd_pcm_open_substream, ptr @__kstrtabns_snd_pcm_open_substream }, section "___ksymtab+snd_pcm_open_substream", align 4
@__kstrtab_snd_pcm_kernel_ioctl = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_kernel_ioctl = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_kernel_ioctl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_kernel_ioctl to i32), ptr @__kstrtab_snd_pcm_kernel_ioctl, ptr @__kstrtabns_snd_pcm_kernel_ioctl }, section "___ksymtab+snd_pcm_kernel_ioctl", align 4
@snd_pcm_vm_ops_data_fault = internal constant %struct.vm_operations_struct { ptr @snd_pcm_mmap_data_open, ptr @snd_pcm_mmap_data_close, ptr null, ptr null, ptr null, ptr @snd_pcm_mmap_data_fault, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_snd_pcm_lib_default_mmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_lib_default_mmap = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_lib_default_mmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_lib_default_mmap to i32), ptr @__kstrtab_snd_pcm_lib_default_mmap, ptr @__kstrtabns_snd_pcm_lib_default_mmap }, section "___ksymtab_gpl+snd_pcm_lib_default_mmap", align 4
@snd_pcm_vm_ops_data = internal constant %struct.vm_operations_struct { ptr @snd_pcm_mmap_data_open, ptr @snd_pcm_mmap_data_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_snd_pcm_mmap_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_mmap_data = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_mmap_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_mmap_data to i32), ptr @__kstrtab_snd_pcm_mmap_data, ptr @__kstrtabns_snd_pcm_mmap_data }, section "___ksymtab+snd_pcm_mmap_data", align 4
@__this_module = external dso_local global %struct.module, align 64
@snd_pcm_f_ops = dso_local local_unnamed_addr constant [2 x %struct.file_operations] [%struct.file_operations { ptr @__this_module, ptr @no_llseek, ptr null, ptr @snd_pcm_write, ptr null, ptr @snd_pcm_writev, ptr null, ptr null, ptr null, ptr @snd_pcm_poll, ptr @snd_pcm_ioctl, ptr null, ptr @snd_pcm_mmap, i32 0, ptr @snd_pcm_playback_open, ptr null, ptr @snd_pcm_release, ptr null, ptr @snd_pcm_fasync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.file_operations { ptr @__this_module, ptr @no_llseek, ptr @snd_pcm_read, ptr null, ptr @snd_pcm_readv, ptr null, ptr null, ptr null, ptr null, ptr @snd_pcm_poll, ptr @snd_pcm_ioctl, ptr null, ptr @snd_pcm_mmap, i32 0, ptr @snd_pcm_capture_open, ptr null, ptr @snd_pcm_release, ptr null, ptr @snd_pcm_fasync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@snd_pcm_action_suspend = internal constant %struct.action_ops { ptr @snd_pcm_pre_suspend, ptr @snd_pcm_do_suspend, ptr null, ptr @snd_pcm_post_suspend }, align 4
@snd_pcm_action_pause = internal constant %struct.action_ops { ptr @snd_pcm_pre_pause, ptr @snd_pcm_do_pause, ptr @snd_pcm_undo_pause, ptr @snd_pcm_post_pause }, align 4
@snd_pcm_hw_params_choose.vars = internal unnamed_addr constant [9 x i32] [i32 0, i32 1, i32 2, i32 10, i32 11, i32 12, i32 17, i32 19, i32 -1], align 4
@snd_pcm_action_prepare = internal constant %struct.action_ops { ptr @snd_pcm_pre_prepare, ptr @snd_pcm_do_prepare, ptr null, ptr @snd_pcm_post_prepare }, align 4
@snd_pcm_link_rwsem = internal global %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @snd_pcm_link_rwsem, i64 16), ptr getelementptr (i8, ptr @snd_pcm_link_rwsem, i64 16) } }, align 4
@snd_pcm_action_drain_init = internal constant %struct.action_ops { ptr @snd_pcm_pre_drain_init, ptr @snd_pcm_do_drain_init, ptr null, ptr @snd_pcm_post_drain_init }, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@snd_pcm_action_reset = internal constant %struct.action_ops { ptr @snd_pcm_pre_reset, ptr @snd_pcm_do_reset, ptr null, ptr @snd_pcm_post_reset }, align 4
@snd_major = external dso_local local_unnamed_addr global i32, align 4
@snd_pcm_action_resume = internal constant %struct.action_ops { ptr @snd_pcm_pre_resume, ptr @snd_pcm_do_resume, ptr @snd_pcm_undo_resume, ptr @snd_pcm_post_resume }, align 4
@llvm.compiler.used = appending global [16 x ptr] [ptr @__ksymtab__snd_pcm_stream_lock_irqsave, ptr @__ksymtab__snd_pcm_stream_lock_irqsave_nested, ptr @__ksymtab_snd_pcm_hw_refine, ptr @__ksymtab_snd_pcm_kernel_ioctl, ptr @__ksymtab_snd_pcm_lib_default_mmap, ptr @__ksymtab_snd_pcm_mmap_data, ptr @__ksymtab_snd_pcm_open_substream, ptr @__ksymtab_snd_pcm_release_substream, ptr @__ksymtab_snd_pcm_stop, ptr @__ksymtab_snd_pcm_stop_xrun, ptr @__ksymtab_snd_pcm_stream_lock, ptr @__ksymtab_snd_pcm_stream_lock_irq, ptr @__ksymtab_snd_pcm_stream_unlock, ptr @__ksymtab_snd_pcm_stream_unlock_irq, ptr @__ksymtab_snd_pcm_stream_unlock_irqrestore, ptr @__ksymtab_snd_pcm_suspend_all], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_pcm_group_init(ptr noundef %0) local_unnamed_addr #0 {
  store i32 0, ptr %0, align 4
  %2 = getelementptr inbounds %struct.snd_pcm_group, ptr %0, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @snd_pcm_group_init.__key) #14
  %3 = getelementptr inbounds %struct.snd_pcm_group, ptr %0, i32 0, i32 2
  store volatile ptr %3, ptr %3, align 4
  %4 = getelementptr inbounds %struct.snd_pcm_group, ptr %0, i32 0, i32 2, i32 1
  store ptr %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.snd_pcm_group, ptr %0, i32 0, i32 3
  store volatile i32 1, ptr %5, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_pcm_stream_lock(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.snd_pcm, ptr %2, i32 0, i32 14
  %4 = load i8, ptr %3, align 1, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17, i32 1
  tail call void @mutex_lock(ptr noundef %7) #14
  br label %10

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %9) #14
  br label %10

10:                                               ; preds = %8, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_pcm_stream_unlock(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.snd_pcm, ptr %2, i32 0, i32 14
  %4 = load i8, ptr %3, align 1, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17, i32 1
  tail call void @mutex_unlock(ptr noundef %7) #14
  br label %12

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  %10 = load i16, ptr %9, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !12
  br label %12

12:                                               ; preds = %8, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_pcm_stream_lock_irq(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.snd_pcm, ptr %2, i32 0, i32 14
  %4 = load i8, ptr %3, align 1, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17, i32 1
  tail call void @mutex_lock(ptr noundef %7) #14
  br label %10

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock_irq(ptr noundef %9) #14
  br label %10

10:                                               ; preds = %8, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_pcm_stream_unlock_irq(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.snd_pcm, ptr %2, i32 0, i32 14
  %4 = load i8, ptr %3, align 1, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17, i32 1
  tail call void @mutex_unlock(ptr noundef %7) #14
  br label %12

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  %10 = load i16, ptr %9, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  br label %12

12:                                               ; preds = %8, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @_snd_pcm_stream_lock_irqsave(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.snd_pcm, ptr %2, i32 0, i32 14
  %4 = load i8, ptr %3, align 1, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17, i32 1
  tail call void @mutex_lock(ptr noundef %7) #14
  br label %11

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #14
  br label %11

11:                                               ; preds = %8, %6
  %12 = phi i32 [ 0, %6 ], [ %10, %8 ]
  ret i32 %12
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @_snd_pcm_stream_lock_irqsave_nested(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.snd_pcm, ptr %2, i32 0, i32 14
  %4 = load i8, ptr %3, align 1, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17, i32 1
  tail call void @mutex_lock(ptr noundef %7) #14
  br label %11

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #14
  br label %11

11:                                               ; preds = %8, %6
  %12 = phi i32 [ 0, %6 ], [ %10, %8 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_pcm_stream_unlock_irqrestore(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.snd_pcm, ptr %3, i32 0, i32 14
  %5 = load i8, ptr %4, align 1, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17, i32 1
  tail call void @mutex_unlock(ptr noundef %8) #14
  br label %11

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %1) #14
  br label %11

11:                                               ; preds = %9, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_info(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(288) %1, i8 0, i32 288, i1 false)
  %6 = load ptr, ptr %3, align 8
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_info, ptr %1, i32 0, i32 3
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.snd_pcm, ptr %3, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %1, align 4
  %11 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.snd_pcm_info, ptr %1, i32 0, i32 2
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.snd_pcm_info, ptr %1, i32 0, i32 1
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.snd_pcm_info, ptr %1, i32 0, i32 4
  %18 = getelementptr inbounds %struct.snd_pcm, ptr %3, i32 0, i32 6
  %19 = tail call i32 @strscpy(ptr noundef %17, ptr noundef %18, i32 noundef 64) #14
  %20 = getelementptr inbounds %struct.snd_pcm_info, ptr %1, i32 0, i32 5
  %21 = getelementptr inbounds %struct.snd_pcm, ptr %3, i32 0, i32 7
  %22 = tail call i32 @strscpy(ptr noundef %20, ptr noundef %21, i32 noundef 80) #14
  %23 = getelementptr inbounds %struct.snd_pcm, ptr %3, i32 0, i32 4
  %24 = load i16, ptr %23, align 4
  %25 = zext i16 %24 to i32
  %26 = getelementptr inbounds %struct.snd_pcm_info, ptr %1, i32 0, i32 7
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.snd_pcm, ptr %3, i32 0, i32 5
  %28 = load i16, ptr %27, align 2
  %29 = zext i16 %28 to i32
  %30 = getelementptr inbounds %struct.snd_pcm_info, ptr %1, i32 0, i32 8
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.snd_pcm_str, ptr %5, i32 0, i32 2
  %32 = load i32, ptr %31, align 8
  %33 = getelementptr inbounds %struct.snd_pcm_info, ptr %1, i32 0, i32 9
  store i32 %32, ptr %33, align 4
  %34 = load i32, ptr %31, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_str, ptr %5, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = sub i32 %34, %36
  %38 = getelementptr inbounds %struct.snd_pcm_info, ptr %1, i32 0, i32 10
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.snd_pcm_info, ptr %1, i32 0, i32 6
  %40 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 4
  %41 = tail call i32 @strscpy(ptr noundef %39, ptr noundef %40, i32 noundef 32) #14
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_info_user(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 288) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %61, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds i8, ptr %4, i32 16
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(288) %10, i8 0, i32 272, i1 false) #14
  %11 = load ptr, ptr %7, align 8
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_info, ptr %4, i32 0, i32 3
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.snd_pcm, ptr %7, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %4, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.snd_pcm_info, ptr %4, i32 0, i32 2
  store i32 %17, ptr %18, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.snd_pcm_info, ptr %4, i32 0, i32 1
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.snd_pcm_info, ptr %4, i32 0, i32 4
  %23 = getelementptr inbounds %struct.snd_pcm, ptr %7, i32 0, i32 6
  %24 = tail call i32 @strscpy(ptr noundef %22, ptr noundef %23, i32 noundef 64) #14
  %25 = getelementptr inbounds %struct.snd_pcm_info, ptr %4, i32 0, i32 5
  %26 = getelementptr inbounds %struct.snd_pcm, ptr %7, i32 0, i32 7
  %27 = tail call i32 @strscpy(ptr noundef %25, ptr noundef %26, i32 noundef 80) #14
  %28 = getelementptr inbounds %struct.snd_pcm, ptr %7, i32 0, i32 4
  %29 = load i16, ptr %28, align 4
  %30 = zext i16 %29 to i32
  %31 = getelementptr inbounds %struct.snd_pcm_info, ptr %4, i32 0, i32 7
  store i32 %30, ptr %31, align 8
  %32 = getelementptr inbounds %struct.snd_pcm, ptr %7, i32 0, i32 5
  %33 = load i16, ptr %32, align 2
  %34 = zext i16 %33 to i32
  %35 = getelementptr inbounds %struct.snd_pcm_info, ptr %4, i32 0, i32 8
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.snd_pcm_str, ptr %9, i32 0, i32 2
  %37 = load i32, ptr %36, align 8
  %38 = getelementptr inbounds %struct.snd_pcm_info, ptr %4, i32 0, i32 9
  store i32 %37, ptr %38, align 8
  %39 = load i32, ptr %36, align 8
  %40 = getelementptr inbounds %struct.snd_pcm_str, ptr %9, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = sub i32 %39, %41
  %43 = getelementptr inbounds %struct.snd_pcm_info, ptr %4, i32 0, i32 10
  store i32 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.snd_pcm_info, ptr %4, i32 0, i32 6
  %45 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 4
  %46 = tail call i32 @strscpy(ptr noundef %44, ptr noundef %45, i32 noundef 32) #14
  %47 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 288, i32 -1090519040) #16, !srcloc !15
  %48 = extractvalue { i32, i32 } %47, 0
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %6
  %51 = tail call ptr @llvm.thread.pointer() #14
  %52 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 3
  %53 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %52) #17, !srcloc !16
  %54 = and i32 %53, -13
  %55 = or i32 %54, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %55) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %56 = tail call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %4, i32 noundef 288) #14
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %53) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %57, i32 0, i32 -14
  br label %59

59:                                               ; preds = %50, %6
  %60 = phi i32 [ -14, %6 ], [ %58, %50 ]
  tail call void @kfree(ptr noundef nonnull %4) #14
  br label %61

61:                                               ; preds = %59, %2
  %62 = phi i32 [ %60, %59 ], [ -12, %2 ]
  ret i32 %62
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_hw_refine(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca [20 x i32], align 4
  %4 = alloca %struct.snd_mask, align 4
  %5 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 7
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 11
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 8
  store i32 0, ptr %12, align 4
  br label %13

13:                                               ; preds = %11, %2
  %14 = and i32 %8, 2048
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 9
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 10
  store i32 0, ptr %18, align 4
  br label %19

19:                                               ; preds = %16, %13
  %20 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %21, i32 0, i32 47
  %23 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 6
  %24 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 0
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %275, label %31

31:                                               ; preds = %27, %19
  %32 = and i32 %8, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %52, label %34

34:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %4, ptr noundef align 4 dereferenceable(32) %24, i32 32, i1 false) #14
  %35 = load i32, ptr %22, align 4
  %36 = and i32 %35, %25
  store i32 %36, ptr %24, align 4
  %37 = getelementptr %struct.snd_pcm_runtime, ptr %21, i32 0, i32 47, i32 0, i32 0, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, %38
  store i32 %41, ptr %39, align 4
  %42 = icmp eq i32 %36, 0
  %43 = icmp eq i32 %41, 0
  %44 = select i1 %42, i1 %43, i1 false
  br i1 %44, label %45, label %46

45:                                               ; preds = %92, %63, %34
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #14
  br label %275

46:                                               ; preds = %34
  %47 = call i32 @bcmp(ptr noundef dereferenceable(8) %24, ptr noundef nonnull dereferenceable(8) %4, i32 8) #14
  %48 = icmp eq i32 %47, 0
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #14
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, ptr %23, align 4
  %51 = or i32 %50, 1
  store i32 %51, ptr %23, align 4
  br label %52

52:                                               ; preds = %49, %46, %31
  %53 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %275, label %60

60:                                               ; preds = %56, %52
  %61 = and i32 %8, 2
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %81, label %63

63:                                               ; preds = %60
  %64 = getelementptr %struct.snd_pcm_runtime, ptr %21, i32 0, i32 47, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %4, ptr noundef align 4 dereferenceable(32) %53, i32 32, i1 false) #14
  %65 = load i32, ptr %64, align 4
  %66 = and i32 %65, %54
  store i32 %66, ptr %53, align 4
  %67 = getelementptr %struct.snd_pcm_runtime, ptr %21, i32 0, i32 47, i32 0, i32 1, i32 0, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = and i32 %70, %68
  store i32 %71, ptr %69, align 4
  %72 = icmp eq i32 %66, 0
  %73 = icmp eq i32 %71, 0
  %74 = select i1 %72, i1 %73, i1 false
  br i1 %74, label %45, label %75

75:                                               ; preds = %63
  %76 = call i32 @bcmp(ptr noundef dereferenceable(8) %53, ptr noundef nonnull dereferenceable(8) %4, i32 8) #14
  %77 = icmp eq i32 %76, 0
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #14
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load i32, ptr %23, align 4
  %80 = or i32 %79, 2
  store i32 %80, ptr %23, align 4
  br label %81

81:                                               ; preds = %78, %75, %60
  %82 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 2
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 2, i32 0, i32 1
  %87 = load i32, ptr %86, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %275, label %89

89:                                               ; preds = %85, %81
  %90 = and i32 %8, 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %110, label %92

92:                                               ; preds = %89
  %93 = getelementptr %struct.snd_pcm_runtime, ptr %21, i32 0, i32 47, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %4, ptr noundef align 4 dereferenceable(32) %82, i32 32, i1 false) #14
  %94 = load i32, ptr %93, align 4
  %95 = and i32 %94, %83
  store i32 %95, ptr %82, align 4
  %96 = getelementptr %struct.snd_pcm_runtime, ptr %21, i32 0, i32 47, i32 0, i32 2, i32 0, i32 1
  %97 = load i32, ptr %96, align 4
  %98 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 2, i32 0, i32 1
  %99 = load i32, ptr %98, align 4
  %100 = and i32 %99, %97
  store i32 %100, ptr %98, align 4
  %101 = icmp eq i32 %95, 0
  %102 = icmp eq i32 %100, 0
  %103 = select i1 %101, i1 %102, i1 false
  br i1 %103, label %45, label %104

104:                                              ; preds = %92
  %105 = call i32 @bcmp(ptr noundef dereferenceable(8) %82, ptr noundef nonnull dereferenceable(8) %4, i32 8) #14
  %106 = icmp eq i32 %105, 0
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #14
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = load i32, ptr %23, align 4
  %109 = or i32 %108, 4
  store i32 %109, ptr %23, align 4
  br label %110

110:                                              ; preds = %107, %104, %89
  %111 = load ptr, ptr %20, align 4
  br label %112

112:                                              ; preds = %134, %110
  %113 = phi i32 [ 8, %110 ], [ %135, %134 ]
  %114 = add nsw i32 %113, -8
  %115 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 %114
  %116 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 %114, i32 2
  %117 = load i8, ptr %116, align 4
  %118 = and i8 %117, 8
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %275

120:                                              ; preds = %112
  %121 = load i32, ptr %7, align 4
  %122 = shl nuw nsw i32 1, %113
  %123 = and i32 %121, %122
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %134, label %125

125:                                              ; preds = %120
  %126 = getelementptr %struct.snd_pcm_runtime, ptr %111, i32 0, i32 47, i32 1, i32 %114
  %127 = tail call i32 @snd_interval_refine(ptr noundef %115, ptr noundef %126) #14
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %275, label %129

129:                                              ; preds = %125
  %130 = icmp eq i32 %127, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %129
  %132 = load i32, ptr %23, align 4
  %133 = or i32 %132, %122
  store i32 %133, ptr %23, align 4
  br label %134

134:                                              ; preds = %131, %129, %120
  %135 = add nuw nsw i32 %113, 1
  %136 = icmp eq i32 %135, 20
  br i1 %136, label %137, label %112

137:                                              ; preds = %134
  %138 = load ptr, ptr %20, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #14
  %139 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %138, i32 0, i32 47, i32 2
  %140 = load i32, ptr %139, align 4
  %141 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %140, i32 4) #14
  %142 = extractvalue { i32, i1 } %141, 1
  br i1 %142, label %272, label %143, !prof !19

143:                                              ; preds = %137
  %144 = extractvalue { i32, i1 } %141, 0
  %145 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %144, i32 noundef 3520) #18
  %146 = icmp eq ptr %145, null
  br i1 %146, label %272, label %147

147:                                              ; preds = %143
  %148 = load i32, ptr %139, align 4
  %149 = load i32, ptr %7, align 4
  %150 = and i32 %149, 1
  store i32 %150, ptr %3, align 4
  %151 = lshr i32 %149, 1
  %152 = and i32 %151, 1
  %153 = getelementptr inbounds [20 x i32], ptr %3, i32 0, i32 1
  store i32 %152, ptr %153, align 4
  %154 = lshr i32 %149, 2
  %155 = and i32 %154, 1
  %156 = getelementptr inbounds [20 x i32], ptr %3, i32 0, i32 2
  store i32 %155, ptr %156, align 4
  %157 = lshr i32 %149, 3
  %158 = and i32 %157, 1
  %159 = getelementptr inbounds [20 x i32], ptr %3, i32 0, i32 3
  store i32 %158, ptr %159, align 4
  %160 = lshr i32 %149, 4
  %161 = and i32 %160, 1
  %162 = getelementptr inbounds [20 x i32], ptr %3, i32 0, i32 4
  store i32 %161, ptr %162, align 4
  %163 = lshr i32 %149, 5
  %164 = and i32 %163, 1
  %165 = getelementptr inbounds [20 x i32], ptr %3, i32 0, i32 5
  store i32 %164, ptr %165, align 4
  %166 = lshr i32 %149, 6
  %167 = and i32 %166, 1
  %168 = getelementptr inbounds [20 x i32], ptr %3, i32 0, i32 6
  store i32 %167, ptr %168, align 4
  %169 = lshr i32 %149, 7
  %170 = and i32 %169, 1
  %171 = getelementptr inbounds [20 x i32], ptr %3, i32 0, i32 7
  store i32 %170, ptr %171, align 4
  %172 = lshr i32 %149, 8
  %173 = and i32 %172, 1
  %174 = getelementptr inbounds [20 x i32], ptr %3, i32 0, i32 8
  store i32 %173, ptr %174, align 4
  %175 = lshr i32 %149, 9
  %176 = and i32 %175, 1
  %177 = getelementptr inbounds [20 x i32], ptr %3, i32 0, i32 9
  store i32 %176, ptr %177, align 4
  %178 = lshr i32 %149, 10
  %179 = and i32 %178, 1
  %180 = getelementptr inbounds [20 x i32], ptr %3, i32 0, i32 10
  store i32 %179, ptr %180, align 4
  %181 = lshr i32 %149, 11
  %182 = and i32 %181, 1
  %183 = getelementptr inbounds [20 x i32], ptr %3, i32 0, i32 11
  store i32 %182, ptr %183, align 4
  %184 = lshr i32 %149, 12
  %185 = and i32 %184, 1
  %186 = getelementptr inbounds [20 x i32], ptr %3, i32 0, i32 12
  store i32 %185, ptr %186, align 4
  %187 = lshr i32 %149, 13
  %188 = and i32 %187, 1
  %189 = getelementptr inbounds [20 x i32], ptr %3, i32 0, i32 13
  store i32 %188, ptr %189, align 4
  %190 = lshr i32 %149, 14
  %191 = and i32 %190, 1
  %192 = getelementptr inbounds [20 x i32], ptr %3, i32 0, i32 14
  store i32 %191, ptr %192, align 4
  %193 = lshr i32 %149, 15
  %194 = and i32 %193, 1
  %195 = getelementptr inbounds [20 x i32], ptr %3, i32 0, i32 15
  store i32 %194, ptr %195, align 4
  %196 = lshr i32 %149, 16
  %197 = and i32 %196, 1
  %198 = getelementptr inbounds [20 x i32], ptr %3, i32 0, i32 16
  store i32 %197, ptr %198, align 4
  %199 = lshr i32 %149, 17
  %200 = and i32 %199, 1
  %201 = getelementptr inbounds [20 x i32], ptr %3, i32 0, i32 17
  store i32 %200, ptr %201, align 4
  %202 = lshr i32 %149, 18
  %203 = and i32 %202, 1
  %204 = getelementptr inbounds [20 x i32], ptr %3, i32 0, i32 18
  store i32 %203, ptr %204, align 4
  %205 = lshr i32 %149, 19
  %206 = and i32 %205, 1
  %207 = getelementptr inbounds [20 x i32], ptr %3, i32 0, i32 19
  store i32 %206, ptr %207, align 4
  %208 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %138, i32 0, i32 47, i32 4
  br label %209

209:                                              ; preds = %271, %147
  %210 = phi i32 [ %266, %271 ], [ %148, %147 ]
  %211 = phi i32 [ %267, %271 ], [ 2, %147 ]
  %212 = icmp eq i32 %210, 0
  br i1 %212, label %274, label %213

213:                                              ; preds = %265, %209
  %214 = phi i32 [ %266, %265 ], [ %210, %209 ]
  %215 = phi i1 [ %268, %265 ], [ false, %209 ]
  %216 = phi i32 [ %267, %265 ], [ %211, %209 ]
  %217 = phi i32 [ %269, %265 ], [ 0, %209 ]
  %218 = load ptr, ptr %208, align 4
  %219 = getelementptr %struct.snd_pcm_hw_rule, ptr %218, i32 %217
  %220 = load i32, ptr %219, align 4
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %226, label %222

222:                                              ; preds = %213
  %223 = load i32, ptr %1, align 4
  %224 = and i32 %223, %220
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %265, label %226

226:                                              ; preds = %222, %213
  %227 = getelementptr %struct.snd_pcm_hw_rule, ptr %218, i32 %217, i32 2, i32 0
  %228 = load i32, ptr %227, align 4
  %229 = icmp sgt i32 %228, -1
  br i1 %229, label %230, label %265

230:                                              ; preds = %226
  %231 = getelementptr i32, ptr %145, i32 %217
  %232 = load i32, ptr %231, align 4
  br label %238

233:                                              ; preds = %238
  %234 = add i32 %240, 1
  %235 = getelementptr %struct.snd_pcm_hw_rule, ptr %218, i32 %217, i32 2, i32 %234
  %236 = load i32, ptr %235, align 4
  %237 = icmp sgt i32 %236, -1
  br i1 %237, label %238, label %265

238:                                              ; preds = %233, %230
  %239 = phi i32 [ %228, %230 ], [ %236, %233 ]
  %240 = phi i32 [ 0, %230 ], [ %234, %233 ]
  %241 = getelementptr [20 x i32], ptr %3, i32 0, i32 %239
  %242 = load i32, ptr %241, align 4
  %243 = icmp ugt i32 %242, %232
  br i1 %243, label %244, label %233

244:                                              ; preds = %238
  %245 = getelementptr %struct.snd_pcm_hw_rule, ptr %218, i32 %217, i32 3
  %246 = load ptr, ptr %245, align 4
  %247 = tail call i32 %246(ptr noundef %1, ptr noundef %219) #14
  %248 = icmp slt i32 %247, 0
  br i1 %248, label %273, label %249

249:                                              ; preds = %244
  %250 = icmp eq i32 %247, 0
  br i1 %250, label %261, label %251

251:                                              ; preds = %249
  %252 = getelementptr %struct.snd_pcm_hw_rule, ptr %218, i32 %217, i32 1
  %253 = load i32, ptr %252, align 4
  %254 = icmp sgt i32 %253, -1
  br i1 %254, label %255, label %261

255:                                              ; preds = %251
  %256 = shl nuw i32 1, %253
  %257 = load i32, ptr %23, align 4
  %258 = or i32 %257, %256
  store i32 %258, ptr %23, align 4
  %259 = load i32, ptr %252, align 4
  %260 = getelementptr [20 x i32], ptr %3, i32 0, i32 %259
  store i32 %216, ptr %260, align 4
  br label %261

261:                                              ; preds = %255, %251, %249
  %262 = phi i1 [ true, %255 ], [ %215, %251 ], [ %215, %249 ]
  %263 = add i32 %216, 1
  store i32 %216, ptr %231, align 4
  %264 = load i32, ptr %139, align 4
  br label %265

265:                                              ; preds = %261, %233, %226, %222
  %266 = phi i32 [ %264, %261 ], [ %214, %222 ], [ %214, %226 ], [ %214, %233 ]
  %267 = phi i32 [ %263, %261 ], [ %216, %222 ], [ %216, %226 ], [ %216, %233 ]
  %268 = phi i1 [ %262, %261 ], [ %215, %222 ], [ %215, %226 ], [ %215, %233 ]
  %269 = add nuw i32 %217, 1
  %270 = icmp ult i32 %269, %266
  br i1 %270, label %213, label %271

271:                                              ; preds = %265
  br i1 %268, label %209, label %274

272:                                              ; preds = %143, %137
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #14
  br label %275

273:                                              ; preds = %244
  tail call void @kfree(ptr noundef nonnull %145) #14
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #14
  br label %275

274:                                              ; preds = %271, %209
  tail call void @kfree(ptr noundef nonnull %145) #14
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #14
  store i32 0, ptr %7, align 4
  br label %275

275:                                              ; preds = %274, %273, %272, %125, %112, %85, %56, %45, %27
  %276 = phi i32 [ 0, %274 ], [ %247, %273 ], [ -12, %272 ], [ -22, %45 ], [ -22, %27 ], [ -22, %56 ], [ -22, %85 ], [ -22, %112 ], [ %127, %125 ]
  ret i32 %276
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_pcm_sync_stop(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %28, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 43
  %8 = load i8, ptr %7, align 4, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %6
  store i8 0, ptr %7, align 4
  %11 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.snd_pcm_ops, ptr %12, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = tail call i32 %16(ptr noundef %0) #14
  br label %28

20:                                               ; preds = %14, %10
  br i1 %1, label %21, label %28

21:                                               ; preds = %20
  %22 = load ptr, ptr %0, align 4
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.snd_card, ptr %23, i32 0, i32 33
  %25 = load i32, ptr %24, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  tail call void @synchronize_irq(i32 noundef %25) #14
  br label %28

28:                                               ; preds = %27, %21, %20, %18, %6, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_status64(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.timespec64, align 8
  %4 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.snd_pcm, ptr %6, i32 0, i32 14
  %8 = load i8, ptr %7, align 1, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17, i32 1
  tail call void @mutex_lock(ptr noundef %11) #14
  br label %14

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock_irq(ptr noundef %13) #14
  br label %14

14:                                               ; preds = %12, %10
  %15 = getelementptr inbounds %struct.snd_pcm_status64, ptr %1, i32 0, i32 13
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 56
  %18 = trunc i32 %16 to i8
  %19 = load i8, ptr %17, align 4
  %20 = and i8 %19, -32
  %21 = and i8 %18, 31
  %22 = or i8 %21, %20
  store i8 %22, ptr %17, align 4
  %23 = and i8 %18, 15
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 16777216
  %29 = icmp eq i32 %28, 0
  %30 = and i8 %22, -16
  %31 = select i1 %29, i8 1, i8 2
  %32 = or i8 %31, %30
  store i8 %32, ptr %17, align 8
  %33 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 57
  %34 = load i8, ptr %33, align 4
  %35 = and i8 %34, -2
  store i8 %35, ptr %33, align 4
  br label %40

36:                                               ; preds = %14
  %37 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 57
  %38 = load i8, ptr %37, align 4
  %39 = or i8 %38, 1
  store i8 %39, ptr %37, align 4
  br label %40

40:                                               ; preds = %36, %25
  %41 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 37
  %42 = load ptr, ptr %41, align 4
  %43 = load i32, ptr %42, align 8
  store i32 %43, ptr %1, align 8
  %44 = load ptr, ptr %41, align 4
  %45 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %44, i32 0, i32 6
  %46 = load i32, ptr %45, align 8
  %47 = getelementptr inbounds %struct.snd_pcm_status64, ptr %1, i32 0, i32 12
  store i32 %46, ptr %47, align 8
  %48 = icmp eq i32 %43, 0
  br i1 %48, label %231, label %49

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 1
  %51 = load i64, ptr %50, align 8
  %52 = getelementptr inbounds %struct.snd_pcm_status64, ptr %1, i32 0, i32 2
  store i64 %51, ptr %52, align 8
  %53 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 1, i32 1
  %54 = load i32, ptr %53, align 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.snd_pcm_status64, ptr %1, i32 0, i32 3
  store i64 %55, ptr %56, align 8
  %57 = load ptr, ptr %4, align 4
  %58 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %57, i32 0, i32 37
  %59 = load ptr, ptr %58, align 4
  %60 = load i32, ptr %59, align 8
  switch i32 %60, label %108 [
    i32 3, label %65
    i32 5, label %61
  ]

61:                                               ; preds = %49
  %62 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %108

65:                                               ; preds = %61, %49
  %66 = tail call i32 @snd_pcm_update_hw_ptr(ptr noundef %0) #14
  %67 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 27
  %68 = load i32, ptr %67, align 8
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %125

70:                                               ; preds = %65
  %71 = load ptr, ptr %41, align 4
  %72 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %71, i32 0, i32 5
  %73 = load i64, ptr %72, align 8
  %74 = getelementptr inbounds %struct.snd_pcm_status64, ptr %1, i32 0, i32 4
  store i64 %73, ptr %74, align 8
  %75 = load ptr, ptr %41, align 4
  %76 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %75, i32 0, i32 5, i32 1
  %77 = load i64, ptr %76, align 8
  %78 = getelementptr inbounds %struct.snd_pcm_status64, ptr %1, i32 0, i32 5
  store i64 %77, ptr %78, align 8
  %79 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 58
  %80 = load i64, ptr %79, align 8
  %81 = getelementptr inbounds %struct.snd_pcm_status64, ptr %1, i32 0, i32 16
  store i64 %80, ptr %81, align 8
  %82 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 58, i32 1
  %83 = load i32, ptr %82, align 8
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.snd_pcm_status64, ptr %1, i32 0, i32 17
  store i64 %84, ptr %85, align 8
  %86 = load ptr, ptr %41, align 4
  %87 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %86, i32 0, i32 8
  %88 = load i64, ptr %87, align 8
  %89 = getelementptr inbounds %struct.snd_pcm_status64, ptr %1, i32 0, i32 14
  store i64 %88, ptr %89, align 8
  %90 = load ptr, ptr %41, align 4
  %91 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %90, i32 0, i32 8, i32 1
  %92 = load i64, ptr %91, align 8
  %93 = getelementptr inbounds %struct.snd_pcm_status64, ptr %1, i32 0, i32 15
  store i64 %92, ptr %93, align 8
  %94 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 57
  %95 = load i8, ptr %94, align 4
  %96 = and i8 %95, 1
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %125, label %98

98:                                               ; preds = %70
  %99 = getelementptr inbounds %struct.snd_pcm_status64, ptr %1, i32 0, i32 18
  %100 = and i8 %95, 63
  %101 = zext i8 %100 to i32
  %102 = load i32, ptr %15, align 4
  %103 = and i32 %102, 65535
  %104 = shl nuw nsw i32 %101, 16
  %105 = or i32 %103, %104
  store i32 %105, ptr %15, align 4
  %106 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 57, i32 1
  %107 = load i32, ptr %106, align 4
  store i32 %107, ptr %99, align 4
  br label %125

108:                                              ; preds = %61, %49
  %109 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 27
  %110 = load i32, ptr %109, align 8
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %112, label %125

112:                                              ; preds = %108
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !20
  %113 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 49
  %114 = load i32, ptr %113, align 8
  switch i32 %114, label %117 [
    i32 1, label %115
    i32 2, label %116
  ]

115:                                              ; preds = %112
  call void @ktime_get_ts64(ptr noundef nonnull %3) #14
  br label %118

116:                                              ; preds = %112
  call void @ktime_get_raw_ts64(ptr noundef nonnull %3) #14
  br label %118

117:                                              ; preds = %112
  call void @ktime_get_real_ts64(ptr noundef nonnull %3) #14
  br label %118

118:                                              ; preds = %117, %116, %115
  %119 = load i64, ptr %3, align 8
  %120 = getelementptr inbounds %struct.snd_pcm_status64, ptr %1, i32 0, i32 4
  store i64 %119, ptr %120, align 8
  %121 = getelementptr inbounds %struct.timespec64, ptr %3, i32 0, i32 1
  %122 = load i32, ptr %121, align 8
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.snd_pcm_status64, ptr %1, i32 0, i32 5
  store i64 %123, ptr %124, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  br label %125

125:                                              ; preds = %118, %108, %98, %70, %65
  %126 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 38
  %127 = load ptr, ptr %126, align 8
  %128 = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %127, i32 0, i32 1
  %129 = load i32, ptr %128, align 4
  %130 = getelementptr inbounds %struct.snd_pcm_status64, ptr %1, i32 0, i32 6
  store i32 %129, ptr %130, align 8
  %131 = load ptr, ptr %41, align 4
  %132 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %131, i32 0, i32 3
  %133 = load i32, ptr %132, align 8
  %134 = getelementptr inbounds %struct.snd_pcm_status64, ptr %1, i32 0, i32 7
  store i32 %133, ptr %134, align 4
  %135 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %136 = load i32, ptr %135, align 4
  %137 = icmp eq i32 %136, 0
  %138 = load ptr, ptr %4, align 4
  %139 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %138, i32 0, i32 37
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %140, i32 0, i32 3
  %142 = load i32, ptr %141, align 8
  br i1 %137, label %143, label %160

143:                                              ; preds = %125
  %144 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %138, i32 0, i32 18
  %145 = load i32, ptr %144, align 4
  %146 = add i32 %145, %142
  %147 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %138, i32 0, i32 38
  %148 = load ptr, ptr %147, align 8
  %149 = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %148, i32 0, i32 1
  %150 = load i32, ptr %149, align 4
  %151 = sub i32 %146, %150
  %152 = icmp slt i32 %151, 0
  %153 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %138, i32 0, i32 33
  %154 = load i32, ptr %153, align 8
  %155 = icmp ult i32 %151, %154
  %156 = select i1 %155, i32 0, i32 %154
  %157 = sub i32 0, %156
  %158 = select i1 %152, i32 %154, i32 %157
  %159 = add i32 %158, %151
  br label %171

160:                                              ; preds = %125
  %161 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %138, i32 0, i32 38
  %162 = load ptr, ptr %161, align 8
  %163 = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %162, i32 0, i32 1
  %164 = load i32, ptr %163, align 4
  %165 = sub i32 %142, %164
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %160
  %168 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %138, i32 0, i32 33
  %169 = load i32, ptr %168, align 8
  %170 = add i32 %169, %165
  br label %171

171:                                              ; preds = %167, %160, %143
  %172 = phi i32 [ %159, %143 ], [ %170, %167 ], [ %165, %160 ]
  %173 = getelementptr inbounds %struct.snd_pcm_status64, ptr %1, i32 0, i32 9
  store i32 %172, ptr %173, align 4
  %174 = load ptr, ptr %4, align 4
  %175 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %174, i32 0, i32 37
  %176 = load ptr, ptr %175, align 4
  %177 = load i32, ptr %176, align 8
  switch i32 %177, label %222 [
    i32 3, label %181
    i32 5, label %178
  ]

178:                                              ; preds = %171
  %179 = load i32, ptr %135, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %184, label %222

181:                                              ; preds = %171
  %182 = load i32, ptr %135, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %204

184:                                              ; preds = %181, %178
  %185 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %174, i32 0, i32 18
  %186 = load i32, ptr %185, align 4
  %187 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %176, i32 0, i32 3
  %188 = load i32, ptr %187, align 8
  %189 = add i32 %188, %186
  %190 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %174, i32 0, i32 38
  %191 = load ptr, ptr %190, align 8
  %192 = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %191, i32 0, i32 1
  %193 = load i32, ptr %192, align 4
  %194 = sub i32 %189, %193
  %195 = icmp slt i32 %194, 0
  %196 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %174, i32 0, i32 33
  %197 = load i32, ptr %196, align 8
  %198 = icmp ult i32 %194, %197
  %199 = select i1 %198, i32 0, i32 %197
  %200 = sub i32 0, %199
  %201 = select i1 %195, i32 %197, i32 %200
  %202 = add i32 %194, %201
  %203 = sub i32 %186, %202
  br label %217

204:                                              ; preds = %181
  %205 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %176, i32 0, i32 3
  %206 = load i32, ptr %205, align 8
  %207 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %174, i32 0, i32 38
  %208 = load ptr, ptr %207, align 8
  %209 = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %208, i32 0, i32 1
  %210 = load i32, ptr %209, align 4
  %211 = sub i32 %206, %210
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %204
  %214 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %174, i32 0, i32 33
  %215 = load i32, ptr %214, align 8
  %216 = add i32 %215, %211
  br label %217

217:                                              ; preds = %213, %204, %184
  %218 = phi i32 [ %203, %184 ], [ %216, %213 ], [ %211, %204 ]
  %219 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %174, i32 0, i32 9
  %220 = load i32, ptr %219, align 4
  %221 = add i32 %220, %218
  br label %222

222:                                              ; preds = %217, %178, %171
  %223 = phi i32 [ %221, %217 ], [ 0, %178 ], [ 0, %171 ]
  %224 = getelementptr inbounds %struct.snd_pcm_status64, ptr %1, i32 0, i32 8
  store i32 %223, ptr %224, align 8
  %225 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 4
  %226 = load i32, ptr %225, align 8
  %227 = getelementptr inbounds %struct.snd_pcm_status64, ptr %1, i32 0, i32 10
  store i32 %226, ptr %227, align 8
  %228 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 3
  %229 = load i32, ptr %228, align 4
  %230 = getelementptr inbounds %struct.snd_pcm_status64, ptr %1, i32 0, i32 11
  store i32 %229, ptr %230, align 4
  store i32 0, ptr %225, align 8
  store i32 0, ptr %228, align 4
  br label %231

231:                                              ; preds = %222, %40
  %232 = load ptr, ptr %0, align 4
  %233 = getelementptr inbounds %struct.snd_pcm, ptr %232, i32 0, i32 14
  %234 = load i8, ptr %233, align 1, !range !8
  %235 = icmp eq i8 %234, 0
  br i1 %235, label %238, label %236

236:                                              ; preds = %231
  %237 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17, i32 1
  call void @mutex_unlock(ptr noundef %237) #14
  br label %242

238:                                              ; preds = %231
  %239 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  %240 = load i16, ptr %239, align 4
  %241 = add i16 %240, 1
  store i16 %241, ptr %239, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !11
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  br label %242

242:                                              ; preds = %238, %236
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_update_hw_ptr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_start(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @snd_pcm_action(ptr noundef nonnull @snd_pcm_action_start, ptr noundef %0, i32 noundef 3)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_pcm_action(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc ptr @snd_pcm_stream_group_ref(ptr noundef %1)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %24

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 4
  %8 = tail call i32 %7(ptr noundef %1, i32 noundef %2) #14
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %46, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.action_ops, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %1, i32 noundef %2) #14
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.action_ops, ptr %0, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  br label %22

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.action_ops, ptr %0, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %46, label %22

22:                                               ; preds = %18, %15
  %23 = phi ptr [ %17, %15 ], [ %20, %18 ]
  tail call void %23(ptr noundef %1, i32 noundef %2) #14
  br label %46

24:                                               ; preds = %3
  %25 = tail call fastcc i32 @snd_pcm_action_group(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext true)
  %26 = getelementptr inbounds %struct.snd_pcm_group, ptr %4, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #14, !srcloc !22
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #14, !srcloc !23
  %28 = extractvalue { i32, i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !24
  br label %34

31:                                               ; preds = %24
  %32 = icmp sgt i32 %28, 0
  br i1 %32, label %34, label %33, !prof !25

33:                                               ; preds = %31
  tail call void @refcount_warn_saturate(ptr noundef %26, i32 noundef 3) #14
  br label %34

34:                                               ; preds = %33, %31, %30
  %35 = load ptr, ptr %1, align 4
  %36 = getelementptr inbounds %struct.snd_pcm, ptr %35, i32 0, i32 14
  %37 = load i8, ptr %36, align 1, !range !8
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.snd_pcm_group, ptr %4, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %40) #14
  br label %44

41:                                               ; preds = %34
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  %42 = load i16, ptr %4, align 4
  %43 = add i16 %42, 1
  store i16 %43, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !12
  br label %44

44:                                               ; preds = %41, %39
  br i1 %29, label %45, label %46

45:                                               ; preds = %44
  tail call void @kfree(ptr noundef nonnull %4) #14
  br label %46

46:                                               ; preds = %45, %44, %22, %18, %6
  %47 = phi i32 [ %25, %44 ], [ %25, %45 ], [ %13, %22 ], [ %13, %18 ], [ %8, %6 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_stop(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call fastcc i32 @snd_pcm_action(ptr noundef nonnull @snd_pcm_action_stop, ptr noundef %0, i32 noundef %1)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_drain_done(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 37
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %46, label %8

8:                                                ; preds = %1
  store ptr %0, ptr %3, align 8
  %9 = load ptr, ptr %2, align 4
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %12, label %29

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 37
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr %14, align 8
  switch i32 %15, label %29 [
    i32 3, label %20
    i32 5, label %16
  ]

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %16, %12
  %21 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 10
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.snd_pcm_ops, ptr %22, i32 0, i32 6
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 %24(ptr noundef %0, i32 noundef 0) #14
  %26 = load ptr, ptr %2, align 4
  %27 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %26, i32 0, i32 43
  store i8 1, ptr %27, align 4
  %28 = load ptr, ptr %2, align 4
  br label %29

29:                                               ; preds = %20, %16, %12, %8
  %30 = phi ptr [ %28, %20 ], [ %9, %16 ], [ %9, %12 ], [ %9, %8 ]
  %31 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %30, i32 0, i32 37
  %32 = load ptr, ptr %31, align 4
  %33 = load i32, ptr %32, align 8
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %43, label %35

35:                                               ; preds = %29
  tail call fastcc void @snd_pcm_trigger_tstamp(ptr noundef %0) #14
  %36 = load ptr, ptr %31, align 4
  store i32 1, ptr %36, align 8
  %37 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 12
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load ptr, ptr %2, align 4
  %42 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %41, i32 0, i32 1
  tail call void @snd_timer_notify(ptr noundef nonnull %38, i32 noundef 13, ptr noundef %42) #14
  br label %43

43:                                               ; preds = %40, %35, %29
  %44 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %30, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %44, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  %45 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %30, i32 0, i32 41
  tail call void @__wake_up(ptr noundef %45, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %46

46:                                               ; preds = %43, %1
  %47 = phi i32 [ 0, %43 ], [ -77, %1 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_stop_xrun(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.snd_pcm, ptr %2, i32 0, i32 14
  %4 = load i8, ptr %3, align 1, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17, i32 1
  tail call void @mutex_lock(ptr noundef %7) #14
  br label %11

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #14
  br label %11

11:                                               ; preds = %8, %6
  %12 = phi i32 [ 0, %6 ], [ %10, %8 ]
  %13 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %14, i32 0, i32 37
  %18 = load ptr, ptr %17, align 4
  %19 = load i32, ptr %18, align 8
  switch i32 %19, label %25 [
    i32 3, label %24
    i32 5, label %20
  ]

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %16
  tail call void @__snd_pcm_xrun(ptr noundef %0) #14
  br label %25

25:                                               ; preds = %24, %20, %16, %11
  %26 = load ptr, ptr %0, align 4
  %27 = getelementptr inbounds %struct.snd_pcm, ptr %26, i32 0, i32 14
  %28 = load i8, ptr %27, align 1, !range !8
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17, i32 1
  tail call void @mutex_unlock(ptr noundef %31) #14
  br label %34

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %33, i32 noundef %12) #14
  br label %34

34:                                               ; preds = %32, %30
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__snd_pcm_xrun(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_suspend_all(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %139, label %3

3:                                                ; preds = %1
  %4 = getelementptr %struct.snd_pcm, ptr %0, i32 0, i32 8, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %45, label %7

7:                                                ; preds = %41, %3
  %8 = phi ptr [ %43, %41 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.snd_pcm_substream, ptr %8, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %41, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.snd_pcm_substream, ptr %8, i32 0, i32 10
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %41, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %8, align 4
  %18 = getelementptr inbounds %struct.snd_pcm, ptr %17, i32 0, i32 14
  %19 = load i8, ptr %18, align 1, !range !8
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.snd_pcm_substream, ptr %8, i32 0, i32 17, i32 1
  tail call void @mutex_lock(ptr noundef %22) #14
  br label %26

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.snd_pcm_substream, ptr %8, i32 0, i32 17
  %25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %24) #14
  br label %26

26:                                               ; preds = %23, %21
  %27 = phi i32 [ 0, %21 ], [ %25, %23 ]
  %28 = tail call fastcc i32 @snd_pcm_action(ptr noundef nonnull @snd_pcm_action_suspend, ptr noundef nonnull %8, i32 noundef 0) #14
  %29 = load ptr, ptr %8, align 4
  %30 = getelementptr inbounds %struct.snd_pcm, ptr %29, i32 0, i32 14
  %31 = load i8, ptr %30, align 1, !range !8
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.snd_pcm_substream, ptr %8, i32 0, i32 17, i32 1
  tail call void @mutex_unlock(ptr noundef %34) #14
  br label %37

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.snd_pcm_substream, ptr %8, i32 0, i32 17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %36, i32 noundef %27) #14
  br label %37

37:                                               ; preds = %35, %33
  %38 = icmp slt i32 %28, 0
  %39 = icmp ne i32 %28, -16
  %40 = and i1 %38, %39
  br i1 %40, label %139, label %41

41:                                               ; preds = %37, %12, %7
  %42 = getelementptr inbounds %struct.snd_pcm_substream, ptr %8, i32 0, i32 15
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %7

45:                                               ; preds = %41, %3
  %46 = getelementptr %struct.snd_pcm, ptr %0, i32 0, i32 8, i32 1, i32 4
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %87, label %49

49:                                               ; preds = %83, %45
  %50 = phi ptr [ %85, %83 ], [ %47, %45 ]
  %51 = getelementptr inbounds %struct.snd_pcm_substream, ptr %50, i32 0, i32 11
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %83, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.snd_pcm_substream, ptr %50, i32 0, i32 10
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %83, label %58

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 4
  %60 = getelementptr inbounds %struct.snd_pcm, ptr %59, i32 0, i32 14
  %61 = load i8, ptr %60, align 1, !range !8
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.snd_pcm_substream, ptr %50, i32 0, i32 17, i32 1
  tail call void @mutex_lock(ptr noundef %64) #14
  br label %68

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.snd_pcm_substream, ptr %50, i32 0, i32 17
  %67 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %66) #14
  br label %68

68:                                               ; preds = %65, %63
  %69 = phi i32 [ 0, %63 ], [ %67, %65 ]
  %70 = tail call fastcc i32 @snd_pcm_action(ptr noundef nonnull @snd_pcm_action_suspend, ptr noundef nonnull %50, i32 noundef 0) #14
  %71 = load ptr, ptr %50, align 4
  %72 = getelementptr inbounds %struct.snd_pcm, ptr %71, i32 0, i32 14
  %73 = load i8, ptr %72, align 1, !range !8
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.snd_pcm_substream, ptr %50, i32 0, i32 17, i32 1
  tail call void @mutex_unlock(ptr noundef %76) #14
  br label %79

77:                                               ; preds = %68
  %78 = getelementptr inbounds %struct.snd_pcm_substream, ptr %50, i32 0, i32 17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %78, i32 noundef %69) #14
  br label %79

79:                                               ; preds = %77, %75
  %80 = icmp slt i32 %70, 0
  %81 = icmp ne i32 %70, -16
  %82 = and i1 %80, %81
  br i1 %82, label %139, label %83

83:                                               ; preds = %79, %54, %49
  %84 = getelementptr inbounds %struct.snd_pcm_substream, ptr %50, i32 0, i32 15
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %49

87:                                               ; preds = %83, %45
  %88 = load ptr, ptr %4, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %113, label %90

90:                                               ; preds = %109, %87
  %91 = phi ptr [ %111, %109 ], [ %88, %87 ]
  %92 = getelementptr inbounds %struct.snd_pcm_substream, ptr %91, i32 0, i32 11
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %109, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %93, i32 0, i32 43
  %97 = load i8, ptr %96, align 4, !range !8
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %109, label %99

99:                                               ; preds = %95
  store i8 0, ptr %96, align 4
  %100 = getelementptr inbounds %struct.snd_pcm_substream, ptr %91, i32 0, i32 10
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %109, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.snd_pcm_ops, ptr %101, i32 0, i32 7
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %109, label %107

107:                                              ; preds = %103
  %108 = tail call i32 %105(ptr noundef nonnull %91) #14
  br label %109

109:                                              ; preds = %107, %103, %99, %95, %90
  %110 = getelementptr inbounds %struct.snd_pcm_substream, ptr %91, i32 0, i32 15
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %90

113:                                              ; preds = %109, %87
  %114 = load ptr, ptr %46, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %139, label %116

116:                                              ; preds = %135, %113
  %117 = phi ptr [ %137, %135 ], [ %114, %113 ]
  %118 = getelementptr inbounds %struct.snd_pcm_substream, ptr %117, i32 0, i32 11
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %135, label %121

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %119, i32 0, i32 43
  %123 = load i8, ptr %122, align 4, !range !8
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %135, label %125

125:                                              ; preds = %121
  store i8 0, ptr %122, align 4
  %126 = getelementptr inbounds %struct.snd_pcm_substream, ptr %117, i32 0, i32 10
  %127 = load ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %135, label %129

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.snd_pcm_ops, ptr %127, i32 0, i32 7
  %131 = load ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %135, label %133

133:                                              ; preds = %129
  %134 = tail call i32 %131(ptr noundef nonnull %117) #14
  br label %135

135:                                              ; preds = %133, %129, %125, %121, %116
  %136 = getelementptr inbounds %struct.snd_pcm_substream, ptr %117, i32 0, i32 15
  %137 = load ptr, ptr %136, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %116

139:                                              ; preds = %135, %113, %79, %37, %1
  %140 = phi i32 [ 0, %1 ], [ 0, %113 ], [ 0, %135 ], [ %70, %79 ], [ %28, %37 ]
  ret i32 %140
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_pcm_release_substream(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 19
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, -1
  store i32 %4, ptr %2, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %74, label %6

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @snd_pcm_drop(ptr noundef %0)
  %8 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 25
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %64, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %14, i32 0, i32 37
  %16 = load ptr, ptr %15, align 4
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %56, label %19

19:                                               ; preds = %12
  %20 = icmp eq ptr %14, null
  br i1 %20, label %42, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %14, i32 0, i32 43
  %23 = load i8, ptr %22, align 4, !range !8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %21
  store i8 0, ptr %22, align 4
  %26 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 10
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.snd_pcm_ops, ptr %27, i32 0, i32 7
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = tail call i32 %31(ptr noundef %0) #14
  br label %42

35:                                               ; preds = %29, %25
  %36 = load ptr, ptr %0, align 4
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.snd_card, ptr %37, i32 0, i32 33
  %39 = load i32, ptr %38, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  tail call void @synchronize_irq(i32 noundef %39) #14
  br label %42

42:                                               ; preds = %41, %35, %33, %21, %19
  %43 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 10
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.snd_pcm_ops, ptr %44, i32 0, i32 4
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %42
  %49 = tail call i32 %46(ptr noundef %0) #14
  br label %50

50:                                               ; preds = %48, %42
  %51 = load i8, ptr %8, align 4
  %52 = and i8 %51, 2
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = tail call i32 @snd_pcm_lib_free_pages(ptr noundef %0) #14
  br label %56

56:                                               ; preds = %54, %50, %12
  %57 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 10
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.snd_pcm_ops, ptr %58, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = tail call i32 %60(ptr noundef %0) #14
  %62 = load i8, ptr %8, align 4
  %63 = and i8 %62, -2
  store i8 %63, ptr %8, align 4
  br label %64

64:                                               ; preds = %56, %6
  %65 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 6
  %66 = tail call zeroext i1 @cpu_latency_qos_request_active(ptr noundef %65) #14
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  tail call void @cpu_latency_qos_remove_request(ptr noundef %65) #14
  br label %68

68:                                               ; preds = %67, %64
  %69 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 22
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  tail call void %70(ptr noundef %0) #14
  store ptr null, ptr %69, align 4
  br label %73

73:                                               ; preds = %72, %68
  tail call void @snd_pcm_detach_substream(ptr noundef %0) #14
  br label %74

74:                                               ; preds = %73, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_pcm_drop(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %38, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %38, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 37
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %9, align 8
  switch i32 %10, label %11 [
    i32 0, label %38
    i32 8, label %38
  ]

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 4
  %13 = getelementptr inbounds %struct.snd_pcm, ptr %12, i32 0, i32 14
  %14 = load i8, ptr %13, align 1, !range !8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17, i32 1
  tail call void @mutex_lock(ptr noundef %17) #14
  br label %20

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock_irq(ptr noundef %19) #14
  br label %20

20:                                               ; preds = %18, %16
  %21 = load ptr, ptr %8, align 4
  %22 = load i32, ptr %21, align 8
  %23 = icmp eq i32 %22, 6
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = tail call fastcc i32 @snd_pcm_action(ptr noundef nonnull @snd_pcm_action_pause, ptr noundef nonnull %0, i32 noundef 0) #14
  br label %26

26:                                               ; preds = %24, %20
  %27 = tail call fastcc i32 @snd_pcm_action(ptr noundef nonnull @snd_pcm_action_stop, ptr noundef nonnull %0, i32 noundef 1) #14
  %28 = load ptr, ptr %0, align 4
  %29 = getelementptr inbounds %struct.snd_pcm, ptr %28, i32 0, i32 14
  %30 = load i8, ptr %29, align 1, !range !8
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17, i32 1
  tail call void @mutex_unlock(ptr noundef %33) #14
  br label %38

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  %36 = load i16, ptr %35, align 4
  %37 = add i16 %36, 1
  store i16 %37, ptr %35, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  br label %38

38:                                               ; preds = %34, %32, %7, %7, %3, %1
  %39 = phi i32 [ -6, %3 ], [ -77, %7 ], [ -77, %7 ], [ -6, %1 ], [ 0, %32 ], [ 0, %34 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cpu_latency_qos_request_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_latency_qos_remove_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_detach_substream(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_open_substream(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store ptr null, ptr %5, align 4, !annotation !20
  %6 = call i32 @snd_pcm_attach_substream(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #14
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %281, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %5, align 4
  %10 = getelementptr inbounds %struct.snd_pcm_substream, ptr %9, i32 0, i32 19
  %11 = load i32, ptr %10, align 4
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store ptr %9, ptr %3, align 4
  br label %281

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, ptr %9, i32 0, i32 11
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %16, i32 0, i32 47
  store i64 -1, ptr %17, align 4
  %18 = getelementptr %struct.snd_pcm_runtime, ptr %16, i32 0, i32 47, i32 0, i32 1
  store i64 -1, ptr %18, align 4
  %19 = getelementptr %struct.snd_pcm_runtime, ptr %16, i32 0, i32 47, i32 0, i32 2
  store i64 -1, ptr %19, align 4
  %20 = getelementptr %struct.snd_pcm_runtime, ptr %16, i32 0, i32 47, i32 1, i32 0
  store i32 0, ptr %20, align 4
  %21 = getelementptr %struct.snd_pcm_runtime, ptr %16, i32 0, i32 47, i32 1, i32 0, i32 2
  %22 = load i8, ptr %21, align 4
  %23 = getelementptr %struct.snd_pcm_runtime, ptr %16, i32 0, i32 47, i32 1, i32 0, i32 1
  store i32 -1, ptr %23, align 4
  %24 = and i8 %22, -16
  %25 = getelementptr %struct.snd_pcm_runtime, ptr %16, i32 0, i32 47, i32 1, i32 1
  store i32 0, ptr %25, align 4
  %26 = getelementptr %struct.snd_pcm_runtime, ptr %16, i32 0, i32 47, i32 1, i32 1, i32 2
  %27 = load i8, ptr %26, align 4
  %28 = getelementptr %struct.snd_pcm_runtime, ptr %16, i32 0, i32 47, i32 1, i32 1, i32 1
  store i32 -1, ptr %28, align 4
  %29 = and i8 %27, -16
  %30 = getelementptr %struct.snd_pcm_runtime, ptr %16, i32 0, i32 47, i32 1, i32 2
  store i32 0, ptr %30, align 4
  %31 = getelementptr %struct.snd_pcm_runtime, ptr %16, i32 0, i32 47, i32 1, i32 2, i32 2
  %32 = load i8, ptr %31, align 4
  %33 = getelementptr %struct.snd_pcm_runtime, ptr %16, i32 0, i32 47, i32 1, i32 2, i32 1
  store i32 -1, ptr %33, align 4
  %34 = and i8 %32, -16
  %35 = getelementptr %struct.snd_pcm_runtime, ptr %16, i32 0, i32 47, i32 1, i32 3
  store i32 0, ptr %35, align 4
  %36 = getelementptr %struct.snd_pcm_runtime, ptr %16, i32 0, i32 47, i32 1, i32 3, i32 2
  %37 = load i8, ptr %36, align 4
  %38 = getelementptr %struct.snd_pcm_runtime, ptr %16, i32 0, i32 47, i32 1, i32 3, i32 1
  store i32 -1, ptr %38, align 4
  %39 = and i8 %37, -16
  store i8 %39, ptr %36, align 4
  %40 = getelementptr %struct.snd_pcm_runtime, ptr %16, i32 0, i32 47, i32 1, i32 4
  store i32 0, ptr %40, align 4
  %41 = getelementptr %struct.snd_pcm_runtime, ptr %16, i32 0, i32 47, i32 1, i32 4, i32 2
  %42 = load i8, ptr %41, align 4
  %43 = getelementptr %struct.snd_pcm_runtime, ptr %16, i32 0, i32 47, i32 1, i32 4, i32 1
  store i32 -1, ptr %43, align 4
  %44 = and i8 %42, -16
  store i8 %44, ptr %41, align 4
  %45 = getelementptr %struct.snd_pcm_runtime, ptr %16, i32 0, i32 47, i32 1, i32 5
  store i32 0, ptr %45, align 4
  %46 = getelementptr %struct.snd_pcm_runtime, ptr %16, i32 0, i32 47, i32 1, i32 5, i32 2
  %47 = load i8, ptr %46, align 4
  %48 = getelementptr %struct.snd_pcm_runtime, ptr %16, i32 0, i32 47, i32 1, i32 5, i32 1
  store i32 -1, ptr %48, align 4
  %49 = and i8 %47, -16
  store i8 %49, ptr %46, align 4
  %50 = getelementptr %struct.snd_pcm_runtime, ptr %16, i32 0, i32 47, i32 1, i32 6
  store i32 0, ptr %50, align 4
  %51 = getelementptr %struct.snd_pcm_runtime, ptr %16, i32 0, i32 47, i32 1, i32 6, i32 2
  %52 = load i8, ptr %51, align 4
  %53 = getelementptr %struct.snd_pcm_runtime, ptr %16, i32 0, i32 47, i32 1, i32 6, i32 1
  store i32 -1, ptr %53, align 4
  %54 = and i8 %52, -16
  store i8 %54, ptr %51, align 4
  %55 = getelementptr %struct.snd_pcm_runtime, ptr %16, i32 0, i32 47, i32 1, i32 7
  store i32 0, ptr %55, align 4
  %56 = getelementptr %struct.snd_pcm_runtime, ptr %16, i32 0, i32 47, i32 1, i32 7, i32 2
  %57 = load i8, ptr %56, align 4
  %58 = getelementptr %struct.snd_pcm_runtime, ptr %16, i32 0, i32 47, i32 1, i32 7, i32 1
  store i32 -1, ptr %58, align 4
  %59 = and i8 %57, -16
  store i8 %59, ptr %56, align 4
  %60 = getelementptr %struct.snd_pcm_runtime, ptr %16, i32 0, i32 47, i32 1, i32 8
  store i32 0, ptr %60, align 4
  %61 = getelementptr %struct.snd_pcm_runtime, ptr %16, i32 0, i32 47, i32 1, i32 8, i32 2
  %62 = load i8, ptr %61, align 4
  %63 = getelementptr %struct.snd_pcm_runtime, ptr %16, i32 0, i32 47, i32 1, i32 8, i32 1
  store i32 -1, ptr %63, align 4
  %64 = and i8 %62, -16
  store i8 %64, ptr %61, align 4
  %65 = getelementptr %struct.snd_pcm_runtime, ptr %16, i32 0, i32 47, i32 1, i32 9
  store i32 0, ptr %65, align 4
  %66 = getelementptr %struct.snd_pcm_runtime, ptr %16, i32 0, i32 47, i32 1, i32 9, i32 2
  %67 = load i8, ptr %66, align 4
  %68 = getelementptr %struct.snd_pcm_runtime, ptr %16, i32 0, i32 47, i32 1, i32 9, i32 1
  store i32 -1, ptr %68, align 4
  %69 = and i8 %67, -16
  %70 = getelementptr %struct.snd_pcm_runtime, ptr %16, i32 0, i32 47, i32 1, i32 10
  store i32 0, ptr %70, align 4
  %71 = getelementptr %struct.snd_pcm_runtime, ptr %16, i32 0, i32 47, i32 1, i32 10, i32 2
  %72 = load i8, ptr %71, align 4
  %73 = getelementptr %struct.snd_pcm_runtime, ptr %16, i32 0, i32 47, i32 1, i32 10, i32 1
  store i32 -1, ptr %73, align 4
  %74 = and i8 %72, -16
  %75 = getelementptr %struct.snd_pcm_runtime, ptr %16, i32 0, i32 47, i32 1, i32 11
  store i32 0, ptr %75, align 4
  %76 = getelementptr %struct.snd_pcm_runtime, ptr %16, i32 0, i32 47, i32 1, i32 11, i32 2
  %77 = load i8, ptr %76, align 4
  %78 = getelementptr %struct.snd_pcm_runtime, ptr %16, i32 0, i32 47, i32 1, i32 11, i32 1
  store i32 -1, ptr %78, align 4
  %79 = and i8 %77, -16
  store i8 %79, ptr %76, align 4
  %80 = or i8 %34, 4
  store i8 %80, ptr %31, align 4
  %81 = or i8 %69, 4
  store i8 %81, ptr %66, align 4
  %82 = or i8 %74, 4
  store i8 %82, ptr %71, align 4
  %83 = or i8 %24, 4
  store i8 %83, ptr %21, align 4
  %84 = or i8 %29, 4
  store i8 %84, ptr %26, align 4
  %85 = call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %16, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @snd_pcm_hw_rule_format, ptr noundef null, i32 noundef 8, i32 noundef -1) #14
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %278, label %87

87:                                               ; preds = %14
  %88 = call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %16, i32 noundef 0, i32 noundef 8, ptr noundef nonnull @snd_pcm_hw_rule_sample_bits, ptr noundef null, i32 noundef 1, i32 noundef 8, i32 noundef -1) #14
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %278, label %90

90:                                               ; preds = %87
  %91 = call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %16, i32 noundef 0, i32 noundef 8, ptr noundef nonnull @snd_pcm_hw_rule_div, ptr noundef null, i32 noundef 9, i32 noundef 10, i32 noundef -1) #14
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %278, label %93

93:                                               ; preds = %90
  %94 = call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %16, i32 noundef 0, i32 noundef 9, ptr noundef nonnull @snd_pcm_hw_rule_mul, ptr noundef null, i32 noundef 8, i32 noundef 10, i32 noundef -1) #14
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %278, label %96

96:                                               ; preds = %93
  %97 = call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %16, i32 noundef 0, i32 noundef 9, ptr noundef nonnull @snd_pcm_hw_rule_mulkdiv, ptr noundef nonnull inttoptr (i32 8 to ptr), i32 noundef 14, i32 noundef 13, i32 noundef -1) #14
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %278, label %99

99:                                               ; preds = %96
  %100 = call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %16, i32 noundef 0, i32 noundef 9, ptr noundef nonnull @snd_pcm_hw_rule_mulkdiv, ptr noundef nonnull inttoptr (i32 8 to ptr), i32 noundef 18, i32 noundef 17, i32 noundef -1) #14
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %278, label %102

102:                                              ; preds = %99
  %103 = call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %16, i32 noundef 0, i32 noundef 10, ptr noundef nonnull @snd_pcm_hw_rule_div, ptr noundef null, i32 noundef 9, i32 noundef 8, i32 noundef -1) #14
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %278, label %105

105:                                              ; preds = %102
  %106 = call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %16, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @snd_pcm_hw_rule_mulkdiv, ptr noundef nonnull inttoptr (i32 1000000 to ptr), i32 noundef 13, i32 noundef 12, i32 noundef -1) #14
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %278, label %108

108:                                              ; preds = %105
  %109 = call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %16, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @snd_pcm_hw_rule_mulkdiv, ptr noundef nonnull inttoptr (i32 1000000 to ptr), i32 noundef 17, i32 noundef 16, i32 noundef -1) #14
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %278, label %111

111:                                              ; preds = %108
  %112 = call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %16, i32 noundef 0, i32 noundef 15, ptr noundef nonnull @snd_pcm_hw_rule_div, ptr noundef null, i32 noundef 17, i32 noundef 13, i32 noundef -1) #14
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %278, label %114

114:                                              ; preds = %111
  %115 = call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %16, i32 noundef 0, i32 noundef 13, ptr noundef nonnull @snd_pcm_hw_rule_div, ptr noundef null, i32 noundef 17, i32 noundef 15, i32 noundef -1) #14
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %278, label %117

117:                                              ; preds = %114
  %118 = call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %16, i32 noundef 0, i32 noundef 13, ptr noundef nonnull @snd_pcm_hw_rule_mulkdiv, ptr noundef nonnull inttoptr (i32 8 to ptr), i32 noundef 14, i32 noundef 9, i32 noundef -1) #14
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %278, label %120

120:                                              ; preds = %117
  %121 = call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %16, i32 noundef 0, i32 noundef 13, ptr noundef nonnull @snd_pcm_hw_rule_muldivk, ptr noundef nonnull inttoptr (i32 1000000 to ptr), i32 noundef 12, i32 noundef 11, i32 noundef -1) #14
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %278, label %123

123:                                              ; preds = %120
  %124 = call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %16, i32 noundef 0, i32 noundef 17, ptr noundef nonnull @snd_pcm_hw_rule_mul, ptr noundef null, i32 noundef 13, i32 noundef 15, i32 noundef -1) #14
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %278, label %126

126:                                              ; preds = %123
  %127 = call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %16, i32 noundef 0, i32 noundef 17, ptr noundef nonnull @snd_pcm_hw_rule_mulkdiv, ptr noundef nonnull inttoptr (i32 8 to ptr), i32 noundef 18, i32 noundef 9, i32 noundef -1) #14
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %278, label %129

129:                                              ; preds = %126
  %130 = call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %16, i32 noundef 0, i32 noundef 17, ptr noundef nonnull @snd_pcm_hw_rule_muldivk, ptr noundef nonnull inttoptr (i32 1000000 to ptr), i32 noundef 16, i32 noundef 11, i32 noundef -1) #14
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %278, label %132

132:                                              ; preds = %129
  %133 = call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %16, i32 noundef 0, i32 noundef 14, ptr noundef nonnull @snd_pcm_hw_rule_muldivk, ptr noundef nonnull inttoptr (i32 8 to ptr), i32 noundef 13, i32 noundef 9, i32 noundef -1) #14
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %278, label %135

135:                                              ; preds = %132
  %136 = call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %16, i32 noundef 0, i32 noundef 18, ptr noundef nonnull @snd_pcm_hw_rule_muldivk, ptr noundef nonnull inttoptr (i32 8 to ptr), i32 noundef 17, i32 noundef 9, i32 noundef -1) #14
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %278, label %138

138:                                              ; preds = %135
  %139 = call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %16, i32 noundef 0, i32 noundef 12, ptr noundef nonnull @snd_pcm_hw_rule_mulkdiv, ptr noundef nonnull inttoptr (i32 1000000 to ptr), i32 noundef 13, i32 noundef 11, i32 noundef -1) #14
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %278, label %141

141:                                              ; preds = %138
  %142 = call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %16, i32 noundef 0, i32 noundef 16, ptr noundef nonnull @snd_pcm_hw_rule_mulkdiv, ptr noundef nonnull inttoptr (i32 1000000 to ptr), i32 noundef 17, i32 noundef 11, i32 noundef -1) #14
  %143 = call i32 @llvm.smin.i32(i32 %142, i32 0) #14
  %144 = icmp slt i32 %142, 0
  br i1 %144, label %278, label %145

145:                                              ; preds = %141
  %146 = load ptr, ptr %5, align 4
  %147 = getelementptr inbounds %struct.snd_pcm_substream, ptr %146, i32 0, i32 10
  %148 = load ptr, ptr %147, align 4
  %149 = load ptr, ptr %148, align 4
  %150 = call i32 %149(ptr noundef %146) #14
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %278, label %152

152:                                              ; preds = %145
  %153 = load ptr, ptr %5, align 4
  %154 = getelementptr inbounds %struct.snd_pcm_substream, ptr %153, i32 0, i32 25
  %155 = load i8, ptr %154, align 4
  %156 = or i8 %155, 1
  store i8 %156, ptr %154, align 4
  %157 = getelementptr inbounds %struct.snd_pcm_substream, ptr %153, i32 0, i32 11
  %158 = load ptr, ptr %157, align 4
  %159 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %158, i32 0, i32 46
  %160 = load i32, ptr %159, align 8
  %161 = lshr i32 %160, 5
  %162 = and i32 %161, 24
  %163 = and i32 %160, 1
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %197, label %165

165:                                              ; preds = %152
  %166 = getelementptr inbounds %struct.snd_pcm_substream, ptr %153, i32 0, i32 10
  %167 = load ptr, ptr %166, align 4
  %168 = getelementptr inbounds %struct.snd_pcm_ops, ptr %167, i32 0, i32 14
  %169 = load ptr, ptr %168, align 4
  %170 = icmp eq ptr %169, null
  br i1 %170, label %171, label %188

171:                                              ; preds = %165
  %172 = getelementptr inbounds %struct.snd_pcm_ops, ptr %167, i32 0, i32 13
  %173 = load ptr, ptr %172, align 4
  %174 = icmp eq ptr %173, null
  br i1 %174, label %175, label %188

175:                                              ; preds = %171
  %176 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %158, i32 0, i32 53
  %177 = load ptr, ptr %176, align 8
  %178 = icmp eq ptr %177, null
  %179 = getelementptr inbounds %struct.snd_pcm_substream, ptr %153, i32 0, i32 8
  %180 = select i1 %178, ptr %179, ptr %177
  %181 = load i32, ptr %180, align 4
  switch i32 %181, label %182 [
    i32 0, label %188
    i32 1, label %188
    i32 7, label %188
  ]

182:                                              ; preds = %175
  %183 = getelementptr inbounds %struct.snd_dma_device, ptr %180, i32 0, i32 3
  %184 = load ptr, ptr %183, align 4
  %185 = call zeroext i1 @dma_can_mmap(ptr noundef %184) #14
  br i1 %185, label %186, label %197

186:                                              ; preds = %182
  %187 = load i32, ptr %159, align 8
  br label %188

188:                                              ; preds = %186, %175, %175, %175, %171, %165
  %189 = phi i32 [ %187, %186 ], [ %160, %175 ], [ %160, %175 ], [ %160, %175 ], [ %160, %165 ], [ %160, %171 ]
  %190 = lshr i32 %189, 8
  %191 = and i32 %190, 1
  %192 = or i32 %191, %162
  %193 = and i32 %190, 2
  %194 = or i32 %192, %193
  %195 = and i32 %190, 4
  %196 = or i32 %194, %195
  br label %197

197:                                              ; preds = %188, %182, %152
  %198 = phi i32 [ %162, %182 ], [ %196, %188 ], [ %162, %152 ]
  %199 = call i32 @snd_pcm_hw_constraint_mask(ptr noundef %158, i32 noundef 0, i32 noundef %198) #14
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %278, label %201

201:                                              ; preds = %197
  %202 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %158, i32 0, i32 46, i32 1
  %203 = load i64, ptr %202, align 8
  %204 = call i32 @snd_pcm_hw_constraint_mask64(ptr noundef %158, i32 noundef 1, i64 noundef %203) #14
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %278, label %206

206:                                              ; preds = %201
  %207 = call i32 @snd_pcm_hw_constraint_mask(ptr noundef %158, i32 noundef 2, i32 noundef 1) #14
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %278, label %209

209:                                              ; preds = %206
  %210 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %158, i32 0, i32 46, i32 5
  %211 = load i32, ptr %210, align 4
  %212 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %158, i32 0, i32 46, i32 6
  %213 = load i32, ptr %212, align 8
  %214 = call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %158, i32 noundef 10, i32 noundef %211, i32 noundef %213) #14
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %278, label %216

216:                                              ; preds = %209
  %217 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %158, i32 0, i32 46, i32 3
  %218 = load i32, ptr %217, align 4
  %219 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %158, i32 0, i32 46, i32 4
  %220 = load i32, ptr %219, align 8
  %221 = call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %158, i32 noundef 11, i32 noundef %218, i32 noundef %220) #14
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %278, label %223

223:                                              ; preds = %216
  %224 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %158, i32 0, i32 46, i32 8
  %225 = load i32, ptr %224, align 8
  %226 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %158, i32 0, i32 46, i32 9
  %227 = load i32, ptr %226, align 4
  %228 = call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %158, i32 noundef 14, i32 noundef %225, i32 noundef %227) #14
  %229 = icmp slt i32 %228, 0
  br i1 %229, label %278, label %230

230:                                              ; preds = %223
  %231 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %158, i32 0, i32 46, i32 10
  %232 = load i32, ptr %231, align 8
  %233 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %158, i32 0, i32 46, i32 11
  %234 = load i32, ptr %233, align 4
  %235 = call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %158, i32 noundef 15, i32 noundef %232, i32 noundef %234) #14
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %278, label %237

237:                                              ; preds = %230
  %238 = load i32, ptr %224, align 8
  %239 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %158, i32 0, i32 46, i32 7
  %240 = load i32, ptr %239, align 4
  %241 = call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %158, i32 noundef 18, i32 noundef %238, i32 noundef %240) #14
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %278, label %243

243:                                              ; preds = %237
  %244 = call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %158, i32 noundef 0, i32 noundef 18, ptr noundef nonnull @snd_pcm_hw_rule_buffer_bytes_max, ptr noundef %153, i32 noundef 18, i32 noundef -1) #14
  %245 = icmp slt i32 %244, 0
  br i1 %245, label %278, label %246

246:                                              ; preds = %243
  %247 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %158, i32 0, i32 52
  %248 = load i32, ptr %247, align 4
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %253, label %250

250:                                              ; preds = %246
  %251 = call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %158, i32 noundef 18, i32 noundef 0, i32 noundef %248) #14
  %252 = icmp slt i32 %251, 0
  br i1 %252, label %278, label %253

253:                                              ; preds = %250, %246
  %254 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %158, i32 0, i32 46, i32 2
  %255 = load i32, ptr %254, align 8
  %256 = icmp ult i32 %255, 1073741824
  br i1 %256, label %257, label %260

257:                                              ; preds = %253
  %258 = call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %158, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @snd_pcm_hw_rule_rate, ptr noundef %159, i32 noundef 11, i32 noundef -1) #14
  %259 = icmp slt i32 %258, 0
  br i1 %259, label %278, label %260

260:                                              ; preds = %257, %253
  %261 = call i32 @snd_pcm_hw_constraint_integer(ptr noundef %158, i32 noundef 13) #14
  %262 = load ptr, ptr %5, align 4
  %263 = getelementptr inbounds %struct.snd_pcm_substream, ptr %262, i32 0, i32 25
  %264 = load i8, ptr %263, align 4
  %265 = and i8 %264, 2
  %266 = icmp eq i8 %265, 0
  br i1 %266, label %277, label %267

267:                                              ; preds = %260
  %268 = getelementptr inbounds %struct.snd_pcm_substream, ptr %262, i32 0, i32 8, i32 0, i32 2
  %269 = load i8, ptr %268, align 4, !range !8
  %270 = icmp eq i8 %269, 0
  br i1 %270, label %277, label %271

271:                                              ; preds = %267
  %272 = getelementptr inbounds %struct.snd_pcm_substream, ptr %262, i32 0, i32 11
  %273 = load ptr, ptr %272, align 4
  %274 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %273, i32 0, i32 46
  %275 = load i32, ptr %274, align 8
  %276 = or i32 %275, 268435456
  store i32 %276, ptr %274, align 8
  br label %277

277:                                              ; preds = %271, %267, %260
  store ptr %262, ptr %3, align 4
  br label %281

278:                                              ; preds = %257, %250, %243, %237, %230, %223, %216, %209, %206, %201, %197, %145, %141, %138, %135, %132, %129, %126, %123, %120, %117, %114, %111, %108, %105, %102, %99, %96, %93, %90, %87, %14
  %279 = phi i32 [ %143, %141 ], [ %150, %145 ], [ %139, %138 ], [ %136, %135 ], [ %133, %132 ], [ %130, %129 ], [ %127, %126 ], [ %124, %123 ], [ %121, %120 ], [ %118, %117 ], [ %115, %114 ], [ %112, %111 ], [ %109, %108 ], [ %106, %105 ], [ %103, %102 ], [ %100, %99 ], [ %97, %96 ], [ %94, %93 ], [ %91, %90 ], [ %88, %87 ], [ %85, %14 ], [ %258, %257 ], [ %251, %250 ], [ %244, %243 ], [ %241, %237 ], [ %235, %230 ], [ %228, %223 ], [ %221, %216 ], [ %214, %209 ], [ %207, %206 ], [ %204, %201 ], [ %199, %197 ]
  %280 = load ptr, ptr %5, align 4
  call void @snd_pcm_release_substream(ptr noundef %280)
  br label %281

281:                                              ; preds = %278, %277, %13, %4
  %282 = phi i32 [ 0, %13 ], [ %279, %278 ], [ 0, %277 ], [ %6, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  ret i32 %282
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_attach_substream(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_kernel_ioctl(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 37
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 8
  br i1 %9, label %52, label %10

10:                                               ; preds = %3
  switch i32 %1, label %52 [
    i32 1074020681, label %11
    i32 -1034141423, label %19
    i32 -1066909421, label %21
    i32 16704, label %23
    i32 16706, label %25
    i32 16708, label %46
    i32 16707, label %48
    i32 -2147204831, label %50
  ]

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %52

15:                                               ; preds = %11
  %16 = load i32, ptr %2, align 4
  %17 = tail call fastcc i32 @snd_pcm_forward(ptr noundef %0, i32 noundef %16)
  %18 = tail call i32 @llvm.smin.i32(i32 %17, i32 0)
  br label %52

19:                                               ; preds = %10
  %20 = tail call fastcc i32 @snd_pcm_hw_params(ptr noundef %0, ptr noundef %2)
  br label %52

21:                                               ; preds = %10
  %22 = tail call fastcc i32 @snd_pcm_sw_params(ptr noundef %0, ptr noundef %2)
  br label %52

23:                                               ; preds = %10
  %24 = tail call fastcc i32 @snd_pcm_prepare(ptr noundef %0, ptr noundef null)
  br label %52

25:                                               ; preds = %10
  %26 = load ptr, ptr %0, align 4
  %27 = getelementptr inbounds %struct.snd_pcm, ptr %26, i32 0, i32 14
  %28 = load i8, ptr %27, align 1, !range !8
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17, i32 1
  tail call void @mutex_lock(ptr noundef %31) #14
  br label %34

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock_irq(ptr noundef %33) #14
  br label %34

34:                                               ; preds = %32, %30
  %35 = tail call fastcc i32 @snd_pcm_action(ptr noundef nonnull @snd_pcm_action_start, ptr noundef %0, i32 noundef 3) #14
  %36 = load ptr, ptr %0, align 4
  %37 = getelementptr inbounds %struct.snd_pcm, ptr %36, i32 0, i32 14
  %38 = load i8, ptr %37, align 1, !range !8
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17, i32 1
  tail call void @mutex_unlock(ptr noundef %41) #14
  br label %52

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  %44 = load i16, ptr %43, align 4
  %45 = add i16 %44, 1
  store i16 %45, ptr %43, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  br label %52

46:                                               ; preds = %10
  %47 = tail call fastcc i32 @snd_pcm_drain(ptr noundef %0, ptr noundef null)
  br label %52

48:                                               ; preds = %10
  %49 = tail call fastcc i32 @snd_pcm_drop(ptr noundef %0)
  br label %52

50:                                               ; preds = %10
  %51 = tail call fastcc i32 @snd_pcm_delay(ptr noundef %0, ptr noundef %2)
  br label %52

52:                                               ; preds = %50, %48, %46, %42, %40, %23, %21, %19, %15, %11, %10, %3
  %53 = phi i32 [ %51, %50 ], [ %49, %48 ], [ %47, %46 ], [ %24, %23 ], [ %22, %21 ], [ %20, %19 ], [ %18, %15 ], [ -77, %3 ], [ -22, %11 ], [ -22, %10 ], [ %35, %40 ], [ %35, %42 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_pcm_forward(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %106, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.snd_pcm, ptr %5, i32 0, i32 14
  %7 = load i8, ptr %6, align 1, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17, i32 1
  tail call void @mutex_lock(ptr noundef %10) #14
  br label %13

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock_irq(ptr noundef %12) #14
  br label %13

13:                                               ; preds = %11, %9
  %14 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %15, i32 0, i32 37
  %17 = load ptr, ptr %16, align 4
  %18 = load i32, ptr %17, align 8
  switch i32 %18, label %24 [
    i32 5, label %19
    i32 3, label %25
    i32 2, label %32
    i32 6, label %32
    i32 7, label %83
    i32 4, label %23
  ]

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %83, label %25

23:                                               ; preds = %13
  br label %83

24:                                               ; preds = %13
  br label %83

25:                                               ; preds = %19, %13
  %26 = tail call i32 @snd_pcm_update_hw_ptr(ptr noundef %0) #14
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %83

28:                                               ; preds = %25
  %29 = load ptr, ptr %14, align 4
  %30 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %29, i32 0, i32 37
  %31 = load ptr, ptr %30, align 4
  br label %32

32:                                               ; preds = %28, %13, %13
  %33 = phi ptr [ %31, %28 ], [ %17, %13 ], [ %17, %13 ]
  %34 = phi ptr [ %29, %28 ], [ %15, %13 ], [ %15, %13 ]
  %35 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  %38 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %33, i32 0, i32 3
  %39 = load i32, ptr %38, align 8
  br i1 %37, label %40, label %57

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %34, i32 0, i32 18
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, %39
  %44 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %34, i32 0, i32 38
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %45, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = sub i32 %43, %47
  %49 = icmp slt i32 %48, 0
  %50 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %34, i32 0, i32 33
  %51 = load i32, ptr %50, align 8
  %52 = icmp ult i32 %48, %51
  %53 = select i1 %52, i32 0, i32 %51
  %54 = sub i32 0, %53
  %55 = select i1 %49, i32 %51, i32 %54
  %56 = add i32 %55, %48
  br label %68

57:                                               ; preds = %32
  %58 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %34, i32 0, i32 38
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %59, i32 0, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = sub i32 %39, %61
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %34, i32 0, i32 33
  %66 = load i32, ptr %65, align 8
  %67 = add i32 %66, %62
  br label %68

68:                                               ; preds = %64, %57, %40
  %69 = phi i32 [ %47, %40 ], [ %61, %64 ], [ %61, %57 ]
  %70 = phi i32 [ %56, %40 ], [ %67, %64 ], [ %62, %57 ]
  %71 = icmp slt i32 %70, 1
  br i1 %71, label %83, label %72

72:                                               ; preds = %68
  %73 = tail call i32 @llvm.umin.i32(i32 %1, i32 %70) #14
  %74 = add i32 %69, %73
  %75 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %34, i32 0, i32 33
  %76 = load i32, ptr %75, align 8
  %77 = icmp slt i32 %74, %76
  %78 = select i1 %77, i32 0, i32 %76
  %79 = sub i32 %74, %78
  %80 = tail call i32 @pcm_lib_apply_appl_ptr(ptr noundef %0, i32 noundef %79) #14
  %81 = icmp slt i32 %80, 0
  %82 = select i1 %81, i32 %80, i32 %73
  br label %83

83:                                               ; preds = %72, %68, %25, %24, %23, %19, %13
  %84 = phi i32 [ %26, %25 ], [ %82, %72 ], [ 0, %68 ], [ -77, %19 ], [ -32, %23 ], [ -77, %24 ], [ -86, %13 ]
  %85 = load ptr, ptr %0, align 4
  %86 = getelementptr inbounds %struct.snd_pcm, ptr %85, i32 0, i32 14
  %87 = load i8, ptr %86, align 1, !range !8
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17, i32 1
  tail call void @mutex_unlock(ptr noundef %90) #14
  br label %95

91:                                               ; preds = %83
  %92 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  %93 = load i16, ptr %92, align 4
  %94 = add i16 %93, 1
  store i16 %94, ptr %92, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  br label %95

95:                                               ; preds = %91, %89
  %96 = icmp sgt i32 %84, -1
  br i1 %96, label %97, label %106

97:                                               ; preds = %95
  %98 = load ptr, ptr %14, align 4
  %99 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %98, i32 0, i32 23
  %100 = load i32, ptr %99, align 8
  %101 = and i32 %100, 268435456
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %97
  %104 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %98, i32 0, i32 53
  %105 = load ptr, ptr %104, align 8
  tail call void @snd_dma_buffer_sync(ptr noundef %105, i32 noundef 1) #14
  br label %106

106:                                              ; preds = %103, %97, %95, %2
  %107 = phi i32 [ 0, %2 ], [ %84, %95 ], [ %84, %97 ], [ %84, %103 ]
  ret i32 %107
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_pcm_hw_params(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %313, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %313, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.snd_pcm, ptr %9, i32 0, i32 14
  %11 = load i8, ptr %10, align 1, !range !8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17, i32 1
  tail call void @mutex_lock(ptr noundef %14) #14
  br label %17

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock_irq(ptr noundef %16) #14
  br label %17

17:                                               ; preds = %15, %13
  %18 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 37
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %19, align 8
  %21 = icmp ult i32 %20, 3
  %22 = load ptr, ptr %0, align 4
  %23 = getelementptr inbounds %struct.snd_pcm, ptr %22, i32 0, i32 14
  %24 = load i8, ptr %23, align 1, !range !8
  %25 = icmp eq i8 %24, 0
  br i1 %21, label %33, label %26

26:                                               ; preds = %17
  br i1 %25, label %29, label %27

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17, i32 1
  tail call void @mutex_unlock(ptr noundef %28) #14
  br label %313

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  %31 = load i16, ptr %30, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr %30, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  br label %313

33:                                               ; preds = %17
  br i1 %25, label %36, label %34

34:                                               ; preds = %33
  %35 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17, i32 1
  tail call void @mutex_unlock(ptr noundef %35) #14
  br label %40

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  %38 = load i16, ptr %37, align 4
  %39 = add i16 %38, 1
  store i16 %39, ptr %37, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  br label %40

40:                                               ; preds = %36, %34
  %41 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 20
  %42 = load volatile i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %313

44:                                               ; preds = %40
  %45 = load ptr, ptr %5, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %68, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %45, i32 0, i32 43
  %49 = load i8, ptr %48, align 4, !range !8
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %68, label %51

51:                                               ; preds = %47
  store i8 0, ptr %48, align 4
  %52 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 10
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.snd_pcm_ops, ptr %53, i32 0, i32 7
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = tail call i32 %57(ptr noundef nonnull %0) #14
  br label %68

61:                                               ; preds = %55, %51
  %62 = load ptr, ptr %0, align 4
  %63 = load ptr, ptr %62, align 8
  %64 = getelementptr inbounds %struct.snd_card, ptr %63, i32 0, i32 33
  %65 = load i32, ptr %64, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  tail call void @synchronize_irq(i32 noundef %65) #14
  br label %68

68:                                               ; preds = %67, %61, %59, %47, %44
  %69 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 5
  store i32 -1, ptr %69, align 4
  %70 = tail call i32 @snd_pcm_hw_refine(ptr noundef nonnull %0, ptr noundef %1)
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %270, label %72

72:                                               ; preds = %79, %68
  %73 = phi ptr [ %82, %79 ], [ @snd_pcm_hw_params_choose.vars, %68 ]
  %74 = load i32, ptr %73, align 4
  switch i32 %74, label %75 [
    i32 -1, label %83
    i32 17, label %77
  ]

75:                                               ; preds = %72
  %76 = tail call i32 @snd_pcm_hw_param_first(ptr noundef %0, ptr noundef %1, i32 noundef %74, ptr noundef null) #14
  br label %79

77:                                               ; preds = %72
  %78 = tail call i32 @snd_pcm_hw_param_last(ptr noundef %0, ptr noundef %1, i32 noundef 17, ptr noundef null) #14
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i32 [ %76, %75 ], [ %78, %77 ]
  %81 = icmp slt i32 %80, 0
  %82 = getelementptr i32, ptr %73, i32 1
  br i1 %81, label %270, label %72

83:                                               ; preds = %72
  %84 = tail call fastcc i32 @fixup_unreferenced_params(ptr noundef %0, ptr noundef %1)
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %270, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 25
  %88 = load i8, ptr %87, align 4
  %89 = and i8 %88, 2
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %103, label %91

91:                                               ; preds = %86
  %92 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 10
  %93 = load i32, ptr %92, align 4
  %94 = tail call i32 @snd_pcm_lib_malloc_pages(ptr noundef %0, i32 noundef %93) #14
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %270, label %96

96:                                               ; preds = %91
  %97 = icmp ne i32 %94, 0
  %98 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 54
  %99 = zext i1 %97 to i8
  %100 = load i8, ptr %98, align 4
  %101 = and i8 %100, -2
  %102 = or i8 %101, %99
  store i8 %102, ptr %98, align 4
  br label %103

103:                                              ; preds = %96, %86
  %104 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 10
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.snd_pcm_ops, ptr %105, i32 0, i32 3
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %103
  %110 = tail call i32 %107(ptr noundef %0, ptr noundef %1) #14
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %270, label %112

112:                                              ; preds = %109, %103
  %113 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 0
  %114 = load i32, ptr %113, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %121, %112
  %117 = phi i32 [ 0, %112 ], [ 32, %121 ]
  %118 = phi i32 [ %114, %112 ], [ %123, %121 ]
  %119 = tail call i32 @llvm.cttz.i32(i32 %118, i1 true) #14, !range !26
  %120 = or i32 %119, %117
  br label %125

121:                                              ; preds = %112
  %122 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 1
  %123 = load i32, ptr %122, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %116

125:                                              ; preds = %121, %116
  %126 = phi i32 [ %120, %116 ], [ 0, %121 ]
  %127 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 11
  store i32 %126, ptr %127, align 8
  %128 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1
  %129 = load i32, ptr %128, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %136, label %131

131:                                              ; preds = %136, %125
  %132 = phi i32 [ 0, %125 ], [ 32, %136 ]
  %133 = phi i32 [ %129, %125 ], [ %138, %136 ]
  %134 = tail call i32 @llvm.cttz.i32(i32 %133, i1 true) #14, !range !26
  %135 = or i32 %134, %132
  br label %140

136:                                              ; preds = %125
  %137 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1
  %138 = load i32, ptr %137, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %131

140:                                              ; preds = %136, %131
  %141 = phi i32 [ %135, %131 ], [ 0, %136 ]
  %142 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 12
  store i32 %141, ptr %142, align 4
  %143 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 2
  %144 = load i32, ptr %143, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %151, label %146

146:                                              ; preds = %151, %140
  %147 = phi i32 [ 0, %140 ], [ 32, %151 ]
  %148 = phi i32 [ %144, %140 ], [ %153, %151 ]
  %149 = tail call i32 @llvm.cttz.i32(i32 %148, i1 true) #14, !range !26
  %150 = or i32 %149, %147
  br label %155

151:                                              ; preds = %140
  %152 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 2, i32 0, i32 1
  %153 = load i32, ptr %152, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %146

155:                                              ; preds = %151, %146
  %156 = phi i32 [ %150, %146 ], [ 0, %151 ]
  %157 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 13
  store i32 %156, ptr %157, align 8
  %158 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 2
  %159 = load i32, ptr %158, align 4
  %160 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 15
  store i32 %159, ptr %160, align 8
  %161 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 3
  %162 = load i32, ptr %161, align 4
  %163 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 14
  store i32 %162, ptr %163, align 4
  %164 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 5
  %165 = load i32, ptr %164, align 4
  %166 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 16
  store i32 %165, ptr %166, align 4
  %167 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 7
  %168 = load i32, ptr %167, align 4
  %169 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 17
  store i32 %168, ptr %169, align 8
  %170 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 9
  %171 = load i32, ptr %170, align 4
  %172 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 18
  store i32 %171, ptr %172, align 4
  %173 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 7
  %174 = load i32, ptr %173, align 4
  %175 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 23
  store i32 %174, ptr %175, align 8
  %176 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 9
  %177 = load i32, ptr %176, align 4
  %178 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 24
  store i32 %177, ptr %178, align 4
  %179 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 10
  %180 = load i32, ptr %179, align 4
  %181 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 25
  store i32 %180, ptr %181, align 8
  %182 = load i32, ptr %173, align 4
  %183 = and i32 %182, 8388608
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %189, label %185

185:                                              ; preds = %155
  %186 = load i32, ptr %1, align 4
  %187 = and i32 %186, 4
  %188 = icmp ne i32 %187, 0
  br label %189

189:                                              ; preds = %185, %155
  %190 = phi i1 [ false, %155 ], [ %188, %185 ]
  %191 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 26
  %192 = zext i1 %190 to i8
  %193 = load i8, ptr %191, align 4
  %194 = and i8 %193, -2
  %195 = or i8 %194, %192
  store i8 %195, ptr %191, align 4
  %196 = tail call i32 @snd_pcm_format_physical_width(i32 noundef %141) #14
  %197 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 22
  store i32 %196, ptr %197, align 4
  %198 = load i32, ptr %160, align 8
  %199 = mul i32 %198, %196
  %200 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 21
  store i32 %199, ptr %200, align 8
  %201 = and i32 %199, 7
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %210, label %203

203:                                              ; preds = %203, %189
  %204 = phi i32 [ %207, %203 ], [ 1, %189 ]
  %205 = phi i32 [ %206, %203 ], [ %199, %189 ]
  %206 = shl i32 %205, 1
  %207 = shl i32 %204, 1
  %208 = and i32 %205, 3
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %203

210:                                              ; preds = %203, %189
  %211 = phi i32 [ %199, %189 ], [ %206, %203 ]
  %212 = phi i32 [ 1, %189 ], [ %207, %203 ]
  %213 = lshr i32 %211, 3
  %214 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 20
  store i32 %213, ptr %214, align 4
  %215 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 19
  store i32 %212, ptr %215, align 8
  %216 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 27
  store i32 0, ptr %216, align 8
  %217 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 28
  store i32 1, ptr %217, align 4
  %218 = load i32, ptr %166, align 4
  %219 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 38
  %220 = load ptr, ptr %219, align 8
  %221 = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %220, i32 0, i32 4
  store i32 %218, ptr %221, align 4
  %222 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 29
  store i32 1, ptr %222, align 8
  %223 = load i32, ptr %172, align 4
  %224 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 30
  store i32 %223, ptr %224, align 4
  %225 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 31
  store i32 0, ptr %225, align 8
  %226 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 32
  store i32 0, ptr %226, align 4
  %227 = sub i32 2147483647, %223
  br label %228

228:                                              ; preds = %228, %210
  %229 = phi i32 [ %223, %210 ], [ %230, %228 ]
  %230 = shl i32 %229, 1
  %231 = icmp ugt i32 %230, %227
  br i1 %231, label %232, label %228

232:                                              ; preds = %228
  %233 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 33
  store i32 %229, ptr %233, align 8
  %234 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 50
  %235 = load ptr, ptr %234, align 4
  %236 = icmp eq ptr %235, null
  br i1 %236, label %251, label %237

237:                                              ; preds = %232
  %238 = load ptr, ptr %104, align 4
  %239 = getelementptr inbounds %struct.snd_pcm_ops, ptr %238, i32 0, i32 11
  %240 = load ptr, ptr %239, align 4
  %241 = icmp eq ptr %240, null
  br i1 %241, label %242, label %251

242:                                              ; preds = %237
  %243 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 52
  %244 = load i32, ptr %243, align 4
  %245 = load i32, ptr %175, align 8
  %246 = and i32 %245, 1
  %247 = icmp eq i32 %246, 0
  %248 = add i32 %244, 4095
  %249 = and i32 %248, -4096
  %250 = select i1 %247, i32 %244, i32 %249
  tail call void @llvm.memset.p0.i32(ptr nonnull align 1 %235, i8 0, i32 %250, i1 false)
  br label %251

251:                                              ; preds = %242, %237, %232
  tail call void @snd_pcm_timer_resolution_change(ptr noundef %0) #14
  tail call fastcc void @snd_pcm_set_state(ptr noundef %0, i32 noundef 1)
  %252 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 6
  %253 = tail call zeroext i1 @cpu_latency_qos_request_active(ptr noundef %252) #14
  br i1 %253, label %254, label %255

254:                                              ; preds = %251
  tail call void @cpu_latency_qos_remove_request(ptr noundef %252) #14
  br label %255

255:                                              ; preds = %254, %251
  %256 = load i32, ptr %163, align 4
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %313, label %258

258:                                              ; preds = %255
  %259 = freeze i32 %256
  %260 = udiv i32 750000, %259
  %261 = load i32, ptr %166, align 4
  %262 = mul i32 %261, %260
  %263 = mul i32 %260, %259
  %264 = sub i32 750000, %263
  %265 = mul i32 %264, %261
  %266 = udiv i32 %265, %256
  %267 = add i32 %266, %262
  %268 = icmp sgt i32 %267, -1
  br i1 %268, label %269, label %313

269:                                              ; preds = %258
  tail call void @cpu_latency_qos_add_request(ptr noundef %252, i32 noundef %267) #14
  br label %313

270:                                              ; preds = %109, %91, %83, %79, %68
  %271 = phi i32 [ %70, %68 ], [ %84, %83 ], [ %94, %91 ], [ %110, %109 ], [ %80, %79 ]
  %272 = load ptr, ptr %0, align 4
  %273 = getelementptr inbounds %struct.snd_pcm, ptr %272, i32 0, i32 14
  %274 = load i8, ptr %273, align 1, !range !8
  %275 = icmp eq i8 %274, 0
  br i1 %275, label %278, label %276

276:                                              ; preds = %270
  %277 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17, i32 1
  tail call void @mutex_lock(ptr noundef %277) #14
  br label %280

278:                                              ; preds = %270
  %279 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock_irq(ptr noundef %279) #14
  br label %280

280:                                              ; preds = %278, %276
  %281 = load ptr, ptr %5, align 4
  %282 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %281, i32 0, i32 37
  %283 = load ptr, ptr %282, align 4
  %284 = load i32, ptr %283, align 8
  %285 = icmp eq i32 %284, 8
  br i1 %285, label %287, label %286

286:                                              ; preds = %280
  store i32 0, ptr %283, align 8
  br label %287

287:                                              ; preds = %286, %280
  %288 = load ptr, ptr %0, align 4
  %289 = getelementptr inbounds %struct.snd_pcm, ptr %288, i32 0, i32 14
  %290 = load i8, ptr %289, align 1, !range !8
  %291 = icmp eq i8 %290, 0
  br i1 %291, label %294, label %292

292:                                              ; preds = %287
  %293 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17, i32 1
  tail call void @mutex_unlock(ptr noundef %293) #14
  br label %298

294:                                              ; preds = %287
  %295 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  %296 = load i16, ptr %295, align 4
  %297 = add i16 %296, 1
  store i16 %297, ptr %295, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  br label %298

298:                                              ; preds = %294, %292
  %299 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 10
  %300 = load ptr, ptr %299, align 4
  %301 = getelementptr inbounds %struct.snd_pcm_ops, ptr %300, i32 0, i32 4
  %302 = load ptr, ptr %301, align 4
  %303 = icmp eq ptr %302, null
  br i1 %303, label %306, label %304

304:                                              ; preds = %298
  %305 = tail call i32 %302(ptr noundef %0) #14
  br label %306

306:                                              ; preds = %304, %298
  %307 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 25
  %308 = load i8, ptr %307, align 4
  %309 = and i8 %308, 2
  %310 = icmp eq i8 %309, 0
  br i1 %310, label %313, label %311

311:                                              ; preds = %306
  %312 = tail call i32 @snd_pcm_lib_free_pages(ptr noundef %0) #14
  br label %313

313:                                              ; preds = %311, %306, %269, %258, %255, %40, %29, %27, %4, %2
  %314 = phi i32 [ -6, %4 ], [ -77, %40 ], [ 0, %269 ], [ 0, %258 ], [ %271, %311 ], [ %271, %306 ], [ -6, %2 ], [ -77, %27 ], [ -77, %29 ], [ 0, %255 ]
  ret i32 %314
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_pcm_sw_params(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %121, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %121, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.snd_pcm, ptr %9, i32 0, i32 14
  %11 = load i8, ptr %10, align 1, !range !8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17, i32 1
  tail call void @mutex_lock(ptr noundef %14) #14
  br label %17

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock_irq(ptr noundef %16) #14
  br label %17

17:                                               ; preds = %15, %13
  %18 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 37
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, 0
  %22 = load ptr, ptr %0, align 4
  %23 = getelementptr inbounds %struct.snd_pcm, ptr %22, i32 0, i32 14
  %24 = load i8, ptr %23, align 1, !range !8
  %25 = icmp eq i8 %24, 0
  br i1 %21, label %26, label %33

26:                                               ; preds = %17
  br i1 %25, label %29, label %27

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17, i32 1
  tail call void @mutex_unlock(ptr noundef %28) #14
  br label %121

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  %31 = load i16, ptr %30, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr %30, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  br label %121

33:                                               ; preds = %17
  br i1 %25, label %36, label %34

34:                                               ; preds = %33
  %35 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17, i32 1
  tail call void @mutex_unlock(ptr noundef %35) #14
  br label %40

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  %38 = load i16, ptr %37, align 4
  %39 = add i16 %38, 1
  store i16 %39, ptr %37, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  br label %40

40:                                               ; preds = %36, %34
  %41 = load i32, ptr %1, align 4
  %42 = icmp ugt i32 %41, 1
  br i1 %42, label %121, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.snd_pcm_sw_params, ptr %1, i32 0, i32 10
  %45 = load i32, ptr %44, align 4
  %46 = icmp ugt i32 %45, 131083
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.snd_pcm_sw_params, ptr %1, i32 0, i32 11
  %49 = load i32, ptr %48, align 4
  %50 = icmp ugt i32 %49, 2
  br i1 %50, label %121, label %51

51:                                               ; preds = %47, %43
  %52 = getelementptr inbounds %struct.snd_pcm_sw_params, ptr %1, i32 0, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %121, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.snd_pcm_sw_params, ptr %1, i32 0, i32 8
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 33
  %59 = load i32, ptr %58, align 8
  %60 = icmp ult i32 %57, %59
  %61 = getelementptr inbounds %struct.snd_pcm_sw_params, ptr %1, i32 0, i32 7
  %62 = load i32, ptr %61, align 4
  br i1 %60, label %65, label %63

63:                                               ; preds = %55
  %64 = icmp eq i32 %62, 0
  br i1 %64, label %71, label %121

65:                                               ; preds = %55
  %66 = icmp ugt i32 %57, %62
  br i1 %66, label %121, label %67

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 18
  %69 = load i32, ptr %68, align 4
  %70 = icmp ugt i32 %62, %69
  br i1 %70, label %121, label %71

71:                                               ; preds = %67, %63
  tail call void @snd_pcm_stream_lock_irq(ptr noundef nonnull %0)
  %72 = load i32, ptr %1, align 4
  %73 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 27
  store i32 %72, ptr %73, align 8
  %74 = load i32, ptr %44, align 4
  %75 = icmp ugt i32 %74, 131083
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.snd_pcm_sw_params, ptr %1, i32 0, i32 11
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 49
  store i32 %78, ptr %79, align 8
  br label %80

80:                                               ; preds = %76, %71
  %81 = getelementptr inbounds %struct.snd_pcm_sw_params, ptr %1, i32 0, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 28
  store i32 %82, ptr %83, align 4
  %84 = load i32, ptr %52, align 4
  %85 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 38
  %86 = load ptr, ptr %85, align 8
  %87 = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %86, i32 0, i32 4
  store i32 %84, ptr %87, align 4
  %88 = getelementptr inbounds %struct.snd_pcm_sw_params, ptr %1, i32 0, i32 5
  %89 = load i32, ptr %88, align 4
  %90 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 29
  store i32 %89, ptr %90, align 8
  %91 = getelementptr inbounds %struct.snd_pcm_sw_params, ptr %1, i32 0, i32 6
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 30
  store i32 %92, ptr %93, align 4
  %94 = getelementptr inbounds %struct.snd_pcm_sw_params, ptr %1, i32 0, i32 7
  %95 = load i32, ptr %94, align 4
  %96 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 31
  store i32 %95, ptr %96, align 8
  %97 = load i32, ptr %56, align 4
  %98 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 32
  store i32 %97, ptr %98, align 4
  %99 = load i32, ptr %58, align 8
  %100 = getelementptr inbounds %struct.snd_pcm_sw_params, ptr %1, i32 0, i32 9
  store i32 %99, ptr %100, align 4
  %101 = load ptr, ptr %5, align 4
  %102 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %101, i32 0, i32 37
  %103 = load ptr, ptr %102, align 4
  %104 = load i32, ptr %103, align 8
  switch i32 %104, label %119 [
    i32 3, label %109
    i32 5, label %105
  ]

105:                                              ; preds = %80
  %106 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %107 = load i32, ptr %106, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %113, label %119

109:                                              ; preds = %80
  %110 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %111 = load i32, ptr %110, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %109, %105
  %114 = load i32, ptr %98, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %113
  tail call void @snd_pcm_playback_silence(ptr noundef nonnull %0, i32 noundef -1) #14
  br label %117

117:                                              ; preds = %116, %113, %109
  %118 = tail call i32 @snd_pcm_update_state(ptr noundef nonnull %0, ptr noundef nonnull %6) #14
  br label %119

119:                                              ; preds = %117, %105, %80
  %120 = phi i32 [ %118, %117 ], [ 0, %105 ], [ 0, %80 ]
  tail call void @snd_pcm_stream_unlock_irq(ptr noundef nonnull %0)
  br label %121

121:                                              ; preds = %119, %67, %65, %63, %51, %47, %40, %29, %27, %4, %2
  %122 = phi i32 [ %120, %119 ], [ -6, %4 ], [ -22, %40 ], [ -22, %47 ], [ -22, %51 ], [ -22, %63 ], [ -22, %65 ], [ -22, %67 ], [ -6, %2 ], [ -77, %27 ], [ -77, %29 ]
  ret i32 %122
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_pcm_prepare(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  %4 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %5 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 21
  %6 = select i1 %3, ptr %5, ptr %4
  %7 = load i32, ptr %6, align 4
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.snd_pcm, ptr %8, i32 0, i32 14
  %10 = load i8, ptr %9, align 1, !range !8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17, i32 1
  tail call void @mutex_lock(ptr noundef %13) #14
  br label %16

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock_irq(ptr noundef %15) #14
  br label %16

16:                                               ; preds = %14, %12
  %17 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %18, i32 0, i32 37
  %20 = load ptr, ptr %19, align 4
  %21 = load i32, ptr %20, align 8
  switch i32 %21, label %26 [
    i32 6, label %22
    i32 7, label %24
  ]

22:                                               ; preds = %16
  %23 = tail call fastcc i32 @snd_pcm_action(ptr noundef nonnull @snd_pcm_action_pause, ptr noundef %0, i32 noundef 0) #14
  br label %24

24:                                               ; preds = %22, %16
  %25 = tail call fastcc i32 @snd_pcm_action(ptr noundef nonnull @snd_pcm_action_stop, ptr noundef %0, i32 noundef 1) #14
  br label %26

26:                                               ; preds = %24, %16
  %27 = load ptr, ptr %0, align 4
  %28 = getelementptr inbounds %struct.snd_pcm, ptr %27, i32 0, i32 14
  %29 = load i8, ptr %28, align 1, !range !8
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17, i32 1
  tail call void @mutex_unlock(ptr noundef %32) #14
  br label %37

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  %35 = load i16, ptr %34, align 4
  %36 = add i16 %35, 1
  store i16 %36, ptr %34, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  br label %37

37:                                               ; preds = %33, %31
  tail call void @down_read(ptr noundef nonnull @snd_pcm_link_rwsem) #14
  %38 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 18
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17
  %41 = icmp eq ptr %39, %40
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = tail call fastcc i32 @snd_pcm_action_group(ptr noundef nonnull @snd_pcm_action_prepare, ptr noundef %0, i32 noundef %7, i1 noundef zeroext false) #14
  br label %90

44:                                               ; preds = %37
  %45 = load ptr, ptr %17, align 4
  %46 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %45, i32 0, i32 37
  %47 = load ptr, ptr %46, align 4
  %48 = load i32, ptr %47, align 8
  switch i32 %48, label %54 [
    i32 0, label %90
    i32 8, label %90
    i32 3, label %53
    i32 5, label %49
  ]

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %90, label %54

53:                                               ; preds = %44
  br label %90

54:                                               ; preds = %49, %44
  store i32 %7, ptr %5, align 4
  %55 = tail call i32 @snd_pcm_do_prepare(ptr noundef %0, i32 noundef %7) #14
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %90

57:                                               ; preds = %54
  %58 = load ptr, ptr %17, align 4
  %59 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %58, i32 0, i32 37
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %60, i32 0, i32 3
  %62 = load i32, ptr %61, align 8
  %63 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %58, i32 0, i32 38
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %64, i32 0, i32 1
  store i32 %62, ptr %65, align 4
  %66 = load ptr, ptr %0, align 4
  %67 = getelementptr inbounds %struct.snd_pcm, ptr %66, i32 0, i32 14
  %68 = load i8, ptr %67, align 1, !range !8
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %57
  %71 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17, i32 1
  tail call void @mutex_lock(ptr noundef %71) #14
  br label %73

72:                                               ; preds = %57
  tail call void @_raw_spin_lock_irq(ptr noundef %40) #14
  br label %73

73:                                               ; preds = %72, %70
  %74 = load ptr, ptr %17, align 4
  %75 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %74, i32 0, i32 37
  %76 = load ptr, ptr %75, align 4
  %77 = load i32, ptr %76, align 8
  %78 = icmp eq i32 %77, 8
  br i1 %78, label %80, label %79

79:                                               ; preds = %73
  store i32 2, ptr %76, align 8
  br label %80

80:                                               ; preds = %79, %73
  %81 = load ptr, ptr %0, align 4
  %82 = getelementptr inbounds %struct.snd_pcm, ptr %81, i32 0, i32 14
  %83 = load i8, ptr %82, align 1, !range !8
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17, i32 1
  tail call void @mutex_unlock(ptr noundef %86) #14
  br label %90

87:                                               ; preds = %80
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  %88 = load i16, ptr %40, align 4
  %89 = add i16 %88, 1
  store i16 %89, ptr %40, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  br label %90

90:                                               ; preds = %87, %85, %54, %53, %49, %44, %44, %42
  %91 = phi i32 [ %43, %42 ], [ 0, %85 ], [ 0, %87 ], [ %55, %54 ], [ -16, %53 ], [ -16, %49 ], [ -77, %44 ], [ -77, %44 ]
  tail call void @up_read(ptr noundef nonnull @snd_pcm_link_rwsem) #14
  ret i32 %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_pcm_drain(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.wait_queue_entry, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !20
  %4 = load ptr, ptr %0, align 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 37
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %205, label %12

12:                                               ; preds = %2
  %13 = icmp eq ptr %1, null
  %14 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %15 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 21
  %16 = select i1 %13, ptr %15, ptr %14
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 2048
  %19 = icmp ne i32 %18, 0
  %20 = getelementptr inbounds %struct.snd_pcm, ptr %4, i32 0, i32 14
  %21 = load i8, ptr %20, align 1, !range !8
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17, i32 1
  tail call void @mutex_lock(ptr noundef %24) #14
  br label %27

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock_irq(ptr noundef %26) #14
  br label %27

27:                                               ; preds = %25, %23
  %28 = load ptr, ptr %8, align 4
  %29 = load i32, ptr %28, align 8
  %30 = icmp eq i32 %29, 6
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = tail call fastcc i32 @snd_pcm_action(ptr noundef nonnull @snd_pcm_action_pause, ptr noundef %0, i32 noundef 0) #14
  br label %33

33:                                               ; preds = %31, %27
  %34 = tail call fastcc i32 @snd_pcm_action(ptr noundef nonnull @snd_pcm_action_drain_init, ptr noundef %0, i32 noundef 0)
  %35 = icmp slt i32 %34, 0
  %36 = select i1 %35, i1 true, i1 %19
  %37 = select i1 %35, i32 %34, i32 -11
  br i1 %36, label %193, label %38

38:                                               ; preds = %33
  %39 = tail call ptr @llvm.thread.pointer() #14
  %40 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 18
  %41 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 1
  %42 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 2
  %43 = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 1
  %44 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17, i32 1
  %45 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17
  %46 = getelementptr inbounds %struct.snd_card, ptr %5, i32 0, i32 25
  br label %47

47:                                               ; preds = %183, %38
  %48 = phi ptr [ %81, %183 ], [ %7, %38 ]
  %49 = load volatile i32, ptr %39, align 4
  %50 = and i32 %49, 256
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %193, !prof !25

52:                                               ; preds = %47
  %53 = load volatile i32, ptr %39, align 4
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %193

56:                                               ; preds = %52
  %57 = call fastcc ptr @snd_pcm_stream_group_ref(ptr noundef %0)
  %58 = load ptr, ptr %40, align 4
  %59 = getelementptr inbounds %struct.snd_pcm_group, ptr %58, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, %59
  br i1 %61, label %79, label %62

62:                                               ; preds = %75, %56
  %63 = phi ptr [ %77, %75 ], [ %60, %56 ]
  %64 = phi ptr [ %76, %75 ], [ %48, %56 ]
  %65 = getelementptr i8, ptr %63, i32 -92
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = getelementptr i8, ptr %63, i32 -20
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %70, i32 0, i32 37
  %72 = load ptr, ptr %71, align 4
  %73 = load i32, ptr %72, align 8
  %74 = icmp eq i32 %73, 5
  br i1 %74, label %79, label %75

75:                                               ; preds = %68, %62
  %76 = phi ptr [ %64, %62 ], [ %70, %68 ]
  %77 = load ptr, ptr %63, align 4
  %78 = icmp eq ptr %77, %59
  br i1 %78, label %79, label %62

79:                                               ; preds = %75, %68, %56
  %80 = phi ptr [ null, %56 ], [ %70, %68 ], [ null, %75 ]
  %81 = phi ptr [ %48, %56 ], [ %70, %68 ], [ %76, %75 ]
  %82 = icmp eq ptr %57, null
  br i1 %82, label %104, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.snd_pcm_group, ptr %57, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !21
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %84) #14, !srcloc !22
  %85 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %84, ptr %84, i32 1, ptr elementtype(i32) %84) #14, !srcloc !23
  %86 = extractvalue { i32, i32, i32 } %85, 0
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !24
  br label %92

89:                                               ; preds = %83
  %90 = icmp sgt i32 %86, 0
  br i1 %90, label %92, label %91, !prof !25

91:                                               ; preds = %89
  call void @refcount_warn_saturate(ptr noundef %84, i32 noundef 3) #14
  br label %92

92:                                               ; preds = %91, %89, %88
  %93 = load ptr, ptr %0, align 4
  %94 = getelementptr inbounds %struct.snd_pcm, ptr %93, i32 0, i32 14
  %95 = load i8, ptr %94, align 1, !range !8
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.snd_pcm_group, ptr %57, i32 0, i32 1
  call void @mutex_unlock(ptr noundef %98) #14
  br label %102

99:                                               ; preds = %92
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  %100 = load i16, ptr %57, align 4
  %101 = add i16 %100, 1
  store i16 %101, ptr %57, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !12
  br label %102

102:                                              ; preds = %99, %97
  br i1 %87, label %103, label %104

103:                                              ; preds = %102
  call void @kfree(ptr noundef nonnull %57) #14
  br label %104

104:                                              ; preds = %103, %102, %79
  %105 = icmp eq ptr %80, null
  br i1 %105, label %193, label %106

106:                                              ; preds = %104
  store i32 0, ptr %3, align 4
  store ptr %39, ptr %41, align 4
  store ptr @default_wake_function, ptr %42, align 4
  store volatile i32 1, ptr %43, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !27
  %107 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %80, i32 0, i32 40
  call void @add_wait_queue(ptr noundef %107, ptr noundef nonnull %3) #14
  %108 = load ptr, ptr %0, align 4
  %109 = getelementptr inbounds %struct.snd_pcm, ptr %108, i32 0, i32 14
  %110 = load i8, ptr %109, align 1, !range !8
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %106
  call void @mutex_unlock(ptr noundef %44) #14
  br label %116

113:                                              ; preds = %106
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  %114 = load i16, ptr %45, align 4
  %115 = add i16 %114, 1
  store i16 %115, ptr %45, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !11
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  br label %116

116:                                              ; preds = %113, %112
  %117 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %81, i32 0, i32 26
  %118 = load i8, ptr %117, align 4
  %119 = and i8 %118, 1
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %121, label %135

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %81, i32 0, i32 14
  %123 = load i32, ptr %122, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %131, label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %81, i32 0, i32 16
  %127 = load i32, ptr %126, align 4
  %128 = shl i32 %127, 1
  %129 = udiv i32 %128, %123
  %130 = call i32 @llvm.smax.i32(i32 %129, i32 10)
  br label %131

131:                                              ; preds = %125, %121
  %132 = phi i32 [ %130, %125 ], [ 10, %121 ]
  %133 = mul i32 %132, 1000
  %134 = call i32 @__msecs_to_jiffies(i32 noundef %133) #14
  br label %135

135:                                              ; preds = %131, %116
  %136 = phi i32 [ 2147483647, %116 ], [ %134, %131 ]
  %137 = call i32 @schedule_timeout(i32 noundef %136) #14
  %138 = load ptr, ptr %0, align 4
  %139 = getelementptr inbounds %struct.snd_pcm, ptr %138, i32 0, i32 14
  %140 = load i8, ptr %139, align 1, !range !8
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %135
  call void @mutex_lock(ptr noundef %44) #14
  br label %144

143:                                              ; preds = %135
  call void @_raw_spin_lock_irq(ptr noundef %45) #14
  br label %144

144:                                              ; preds = %143, %142
  %145 = call fastcc ptr @snd_pcm_stream_group_ref(ptr noundef %0)
  %146 = load ptr, ptr %40, align 4
  %147 = getelementptr inbounds %struct.snd_pcm_group, ptr %146, i32 0, i32 2
  br label %148

148:                                              ; preds = %152, %144
  %149 = phi ptr [ %147, %144 ], [ %150, %152 ]
  %150 = load ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, %147
  br i1 %151, label %157, label %152

152:                                              ; preds = %148
  %153 = getelementptr i8, ptr %150, i32 -20
  %154 = load ptr, ptr %153, align 4
  %155 = icmp eq ptr %154, %80
  br i1 %155, label %156, label %148

156:                                              ; preds = %152
  call void @remove_wait_queue(ptr noundef %107, ptr noundef nonnull %3) #14
  br label %157

157:                                              ; preds = %156, %148
  %158 = icmp eq ptr %145, null
  br i1 %158, label %180, label %159

159:                                              ; preds = %157
  %160 = getelementptr inbounds %struct.snd_pcm_group, ptr %145, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !21
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %160) #14, !srcloc !22
  %161 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %160, ptr %160, i32 1, ptr elementtype(i32) %160) #14, !srcloc !23
  %162 = extractvalue { i32, i32, i32 } %161, 0
  %163 = icmp eq i32 %162, 1
  br i1 %163, label %164, label %165

164:                                              ; preds = %159
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !24
  br label %168

165:                                              ; preds = %159
  %166 = icmp sgt i32 %162, 0
  br i1 %166, label %168, label %167, !prof !25

167:                                              ; preds = %165
  call void @refcount_warn_saturate(ptr noundef %160, i32 noundef 3) #14
  br label %168

168:                                              ; preds = %167, %165, %164
  %169 = load ptr, ptr %0, align 4
  %170 = getelementptr inbounds %struct.snd_pcm, ptr %169, i32 0, i32 14
  %171 = load i8, ptr %170, align 1, !range !8
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %175, label %173

173:                                              ; preds = %168
  %174 = getelementptr inbounds %struct.snd_pcm_group, ptr %145, i32 0, i32 1
  call void @mutex_unlock(ptr noundef %174) #14
  br label %178

175:                                              ; preds = %168
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  %176 = load i16, ptr %145, align 4
  %177 = add i16 %176, 1
  store i16 %177, ptr %145, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !12
  br label %178

178:                                              ; preds = %175, %173
  br i1 %163, label %179, label %180

179:                                              ; preds = %178
  call void @kfree(ptr noundef nonnull %145) #14
  br label %180

180:                                              ; preds = %179, %178, %157
  %181 = load i32, ptr %46, align 8
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %193

183:                                              ; preds = %180
  %184 = icmp eq i32 %137, 0
  br i1 %184, label %185, label %47

185:                                              ; preds = %183
  %186 = load ptr, ptr %6, align 4
  %187 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %186, i32 0, i32 37
  %188 = load ptr, ptr %187, align 4
  %189 = load i32, ptr %188, align 8
  %190 = icmp eq i32 %189, 7
  br i1 %190, label %193, label %191

191:                                              ; preds = %185
  %192 = call fastcc i32 @snd_pcm_action(ptr noundef nonnull @snd_pcm_action_stop, ptr noundef %0, i32 noundef 1) #14
  br label %193

193:                                              ; preds = %191, %185, %180, %104, %52, %47, %33
  %194 = phi i32 [ %37, %33 ], [ -86, %185 ], [ -5, %191 ], [ -512, %47 ], [ -512, %52 ], [ %34, %104 ], [ -19, %180 ]
  %195 = load ptr, ptr %0, align 4
  %196 = getelementptr inbounds %struct.snd_pcm, ptr %195, i32 0, i32 14
  %197 = load i8, ptr %196, align 1, !range !8
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %201, label %199

199:                                              ; preds = %193
  %200 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17, i32 1
  call void @mutex_unlock(ptr noundef %200) #14
  br label %205

201:                                              ; preds = %193
  %202 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  %203 = load i16, ptr %202, align 4
  %204 = add i16 %203, 1
  store i16 %204, ptr %202, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !11
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  br label %205

205:                                              ; preds = %201, %199, %2
  %206 = phi i32 [ -77, %2 ], [ %194, %199 ], [ %194, %201 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #14
  ret i32 %206
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_pcm_delay(ptr noundef %0, ptr noundef writeonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.snd_pcm, ptr %3, i32 0, i32 14
  %5 = load i8, ptr %4, align 1, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17, i32 1
  tail call void @mutex_lock(ptr noundef %8) #14
  br label %11

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock_irq(ptr noundef %10) #14
  br label %11

11:                                               ; preds = %9, %7
  %12 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 37
  %15 = load ptr, ptr %14, align 4
  %16 = load i32, ptr %15, align 8
  switch i32 %16, label %24 [
    i32 5, label %17
    i32 3, label %21
    i32 2, label %25
    i32 6, label %25
    i32 7, label %77
    i32 4, label %23
  ]

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %77, label %21

21:                                               ; preds = %17, %11
  %22 = tail call i32 @snd_pcm_update_hw_ptr(ptr noundef %0) #14
  br label %25

23:                                               ; preds = %11
  br label %77

24:                                               ; preds = %11
  br label %77

25:                                               ; preds = %21, %11, %11
  %26 = phi i32 [ %22, %21 ], [ 0, %11 ], [ 0, %11 ]
  %27 = icmp eq ptr %1, null
  %28 = icmp ne i32 %26, 0
  %29 = select i1 %27, i1 true, i1 %28
  br i1 %29, label %77, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  %34 = load ptr, ptr %12, align 4
  br i1 %33, label %35, label %57

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %34, i32 0, i32 18
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %34, i32 0, i32 37
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %39, i32 0, i32 3
  %41 = load i32, ptr %40, align 8
  %42 = add i32 %41, %37
  %43 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %34, i32 0, i32 38
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %44, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = sub i32 %42, %46
  %48 = icmp slt i32 %47, 0
  %49 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %34, i32 0, i32 33
  %50 = load i32, ptr %49, align 8
  %51 = icmp ult i32 %47, %50
  %52 = select i1 %51, i32 0, i32 %50
  %53 = sub i32 0, %52
  %54 = select i1 %48, i32 %50, i32 %53
  %55 = add i32 %47, %54
  %56 = sub i32 %37, %55
  br label %72

57:                                               ; preds = %30
  %58 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %34, i32 0, i32 37
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %59, i32 0, i32 3
  %61 = load i32, ptr %60, align 8
  %62 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %34, i32 0, i32 38
  %63 = load ptr, ptr %62, align 8
  %64 = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %63, i32 0, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = sub i32 %61, %65
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %57
  %69 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %34, i32 0, i32 33
  %70 = load i32, ptr %69, align 8
  %71 = add i32 %70, %66
  br label %72

72:                                               ; preds = %68, %57, %35
  %73 = phi i32 [ %56, %35 ], [ %71, %68 ], [ %66, %57 ]
  %74 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %34, i32 0, i32 9
  %75 = load i32, ptr %74, align 4
  %76 = add i32 %75, %73
  store i32 %76, ptr %1, align 4
  br label %77

77:                                               ; preds = %72, %25, %24, %23, %17, %11
  %78 = phi i32 [ 0, %72 ], [ %26, %25 ], [ -77, %17 ], [ -32, %23 ], [ -77, %24 ], [ -86, %11 ]
  %79 = load ptr, ptr %0, align 4
  %80 = getelementptr inbounds %struct.snd_pcm, ptr %79, i32 0, i32 14
  %81 = load i8, ptr %80, align 1, !range !8
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17, i32 1
  tail call void @mutex_unlock(ptr noundef %84) #14
  br label %89

85:                                               ; preds = %77
  %86 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  %87 = load i16, ptr %86, align 4
  %88 = add i16 %87, 1
  store i16 %88, ptr %86, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  br label %89

89:                                               ; preds = %85, %83
  %90 = load ptr, ptr %12, align 4
  %91 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %90, i32 0, i32 23
  %92 = load i32, ptr %91, align 8
  %93 = and i32 %92, 268435456
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %90, i32 0, i32 53
  %97 = load ptr, ptr %96, align 8
  tail call void @snd_dma_buffer_sync(ptr noundef %97, i32 noundef 0) #14
  br label %98

98:                                               ; preds = %95, %89
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_lib_default_mmap(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 8
  %4 = load i32, ptr %3, align 4
  %5 = or i32 %4, 67371008
  store i32 %5, ptr %3, align 4
  %6 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_pcm_ops, ptr %7, i32 0, i32 13
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 53
  %15 = load ptr, ptr %14, align 8
  %16 = tail call i32 @snd_dma_buffer_mmap(ptr noundef %15, ptr noundef %1) #14
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %11, %2
  %19 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 12
  store ptr @snd_pcm_vm_ops_data_fault, ptr %19, align 4
  br label %20

20:                                               ; preds = %18, %11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dma_buffer_mmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_mmap_data(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  br i1 %6, label %9, label %12

9:                                                ; preds = %3
  %10 = and i32 %8, 3
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %64, label %15

12:                                               ; preds = %3
  %13 = and i32 %8, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %64, label %15

15:                                               ; preds = %12, %9
  %16 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %17, i32 0, i32 37
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %64, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %17, i32 0, i32 23
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %64, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %17, i32 0, i32 11
  %29 = load i32, ptr %28, align 8
  %30 = add i32 %29, -3
  %31 = icmp ult i32 %30, 2
  br i1 %31, label %64, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = load i32, ptr %2, align 4
  %36 = sub i32 %34, %35
  %37 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %17, i32 0, i32 52
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %38, 4095
  %40 = and i32 %39, -4096
  %41 = icmp ult i32 %40, %36
  br i1 %41, label %64, label %42

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 13
  %44 = load i32, ptr %43, align 4
  %45 = shl i32 %44, 12
  %46 = sub i32 %40, %36
  %47 = icmp ugt i32 %45, %46
  br i1 %47, label %64, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 12
  store ptr @snd_pcm_vm_ops_data, ptr %49, align 4
  %50 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 15
  store ptr %0, ptr %50, align 4
  %51 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 10
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.snd_pcm_ops, ptr %52, i32 0, i32 14
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = tail call i32 @snd_pcm_lib_default_mmap(ptr noundef %0, ptr noundef %2)
  br label %61

58:                                               ; preds = %48
  %59 = tail call i32 %54(ptr noundef %0, ptr noundef %2) #14
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58, %56
  %62 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %62) #14, !srcloc !22
  %63 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %62, ptr %62, i32 1, ptr elementtype(i32) %62) #14, !srcloc !28
  br label %64

64:                                               ; preds = %61, %58, %42, %32, %27, %22, %15, %12, %9
  %65 = phi i32 [ -22, %9 ], [ -22, %12 ], [ -77, %15 ], [ -6, %22 ], [ -22, %27 ], [ -22, %32 ], [ -22, %42 ], [ 0, %61 ], [ %59, %58 ]
  ret i32 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_pcm_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %33, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.snd_pcm_substream, ptr %7, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %33, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 37
  %15 = load ptr, ptr %14, align 4
  %16 = load i32, ptr %15, align 8
  switch i32 %16, label %17 [
    i32 0, label %33
    i32 8, label %33
  ]

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 20
  %19 = load i32, ptr %18, align 4
  %20 = urem i32 %2, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = shl i32 %2, 3
  %24 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 21
  %25 = load i32, ptr %24, align 8
  %26 = udiv i32 %23, %25
  %27 = tail call i32 @__snd_pcm_lib_xfer(ptr noundef nonnull %7, ptr noundef %1, i1 noundef zeroext true, i32 noundef %26, i1 noundef zeroext false) #14
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load i32, ptr %24, align 8
  %31 = mul i32 %30, %27
  %32 = lshr i32 %31, 3
  br label %33

33:                                               ; preds = %29, %22, %17, %13, %13, %9, %4
  %34 = phi i32 [ -6, %9 ], [ -77, %13 ], [ -77, %13 ], [ -22, %17 ], [ %32, %29 ], [ %27, %22 ], [ -6, %4 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_pcm_writev(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %67, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.snd_pcm_substream, ptr %6, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %67, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %10, i32 0, i32 37
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr %14, align 8
  switch i32 %15, label %16 [
    i32 0, label %67
    i32 8, label %67
  ]

16:                                               ; preds = %12
  %17 = load i8, ptr %1, align 8
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %67

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 6
  %21 = load i32, ptr %20, align 8
  %22 = icmp ugt i32 %21, 128
  br i1 %22, label %67, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %10, i32 0, i32 15
  %25 = load i32, ptr %24, align 8
  %26 = icmp eq i32 %21, %25
  br i1 %26, label %27, label %67

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.iovec, ptr %29, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %10, i32 0, i32 20
  %33 = load i32, ptr %32, align 4
  %34 = urem i32 %31, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %67

36:                                               ; preds = %27
  %37 = shl i32 %31, 3
  %38 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %10, i32 0, i32 22
  %39 = load i32, ptr %38, align 4
  %40 = udiv i32 %37, %39
  %41 = shl nuw nsw i32 %21, 2
  %42 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %41, i32 noundef 3264) #18
  %43 = icmp eq ptr %42, null
  br i1 %43, label %67, label %44

44:                                               ; preds = %36
  %45 = load i32, ptr %20, align 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr %28, align 4
  %49 = load i32, ptr %20, align 8
  br label %50

50:                                               ; preds = %50, %47
  %51 = phi i32 [ %55, %50 ], [ 0, %47 ]
  %52 = getelementptr %struct.iovec, ptr %48, i32 %51
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr ptr, ptr %42, i32 %51
  store ptr %53, ptr %54, align 4
  %55 = add nuw i32 %51, 1
  %56 = icmp ult i32 %55, %49
  br i1 %56, label %50, label %57

57:                                               ; preds = %50, %44
  %58 = tail call i32 @__snd_pcm_lib_xfer(ptr noundef nonnull %6, ptr noundef nonnull %42, i1 noundef zeroext false, i32 noundef %40, i1 noundef zeroext false) #14
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %10, i32 0, i32 21
  %62 = load i32, ptr %61, align 8
  %63 = mul i32 %62, %58
  %64 = lshr i32 %63, 3
  br label %65

65:                                               ; preds = %60, %57
  %66 = phi i32 [ %64, %60 ], [ %58, %57 ]
  tail call void @kfree(ptr noundef nonnull %42) #14
  br label %67

67:                                               ; preds = %65, %36, %27, %23, %19, %16, %12, %12, %8, %2
  %68 = phi i32 [ %66, %65 ], [ -6, %8 ], [ -77, %12 ], [ -77, %12 ], [ -22, %16 ], [ -22, %27 ], [ -22, %23 ], [ -22, %19 ], [ -12, %36 ], [ -6, %2 ]
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_pcm_poll(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_pcm_substream, ptr %5, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i32 260, i32 65
  %10 = icmp eq ptr %5, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.snd_pcm_substream, ptr %5, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %11, %2
  %16 = or i32 %9, 8
  br label %109

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 37
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, 8
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = or i32 %9, 8
  br label %109

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 40
  %26 = icmp eq ptr %1, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %1, align 4
  %29 = icmp ne ptr %28, null
  %30 = icmp ne ptr %25, null
  %31 = and i1 %30, %29
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  tail call void %28(ptr noundef %0, ptr noundef nonnull %25, ptr noundef nonnull %1) #14
  br label %33

33:                                               ; preds = %32, %27, %24
  %34 = load ptr, ptr %5, align 4
  %35 = getelementptr inbounds %struct.snd_pcm, ptr %34, i32 0, i32 14
  %36 = load i8, ptr %35, align 1, !range !8
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.snd_pcm_substream, ptr %5, i32 0, i32 17, i32 1
  tail call void @mutex_lock(ptr noundef %39) #14
  br label %42

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.snd_pcm_substream, ptr %5, i32 0, i32 17
  tail call void @_raw_spin_lock_irq(ptr noundef %41) #14
  br label %42

42:                                               ; preds = %40, %38
  %43 = load i32, ptr %6, align 4
  %44 = icmp eq i32 %43, 0
  %45 = load ptr, ptr %12, align 4
  %46 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %45, i32 0, i32 37
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %47, i32 0, i32 3
  %49 = load i32, ptr %48, align 8
  br i1 %44, label %50, label %67

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %45, i32 0, i32 18
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, %49
  %54 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %45, i32 0, i32 38
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %55, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = sub i32 %53, %57
  %59 = icmp slt i32 %58, 0
  %60 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %45, i32 0, i32 33
  %61 = load i32, ptr %60, align 8
  %62 = icmp ult i32 %58, %61
  %63 = select i1 %62, i32 0, i32 %61
  %64 = sub i32 0, %63
  %65 = select i1 %59, i32 %61, i32 %64
  %66 = add i32 %65, %58
  br label %78

67:                                               ; preds = %42
  %68 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %45, i32 0, i32 38
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %69, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = sub i32 %49, %71
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %45, i32 0, i32 33
  %76 = load i32, ptr %75, align 8
  %77 = add i32 %76, %72
  br label %78

78:                                               ; preds = %74, %67, %50
  %79 = phi i32 [ %66, %50 ], [ %77, %74 ], [ %72, %67 ]
  %80 = load ptr, ptr %18, align 4
  %81 = load i32, ptr %80, align 8
  switch i32 %81, label %95 [
    i32 3, label %82
    i32 2, label %82
    i32 6, label %82
    i32 5, label %89
  ]

82:                                               ; preds = %78, %78, %78
  %83 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 38
  %84 = load ptr, ptr %83, align 8
  %85 = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %84, i32 0, i32 4
  %86 = load i32, ptr %85, align 4
  %87 = icmp ult i32 %79, %86
  %88 = select i1 %87, i32 0, i32 %9
  br label %97

89:                                               ; preds = %78
  %90 = icmp eq i32 %43, 1
  br i1 %90, label %91, label %97

91:                                               ; preds = %89
  %92 = icmp eq i32 %79, 0
  %93 = or i32 %9, 8
  %94 = select i1 %92, i32 %93, i32 %9
  br label %97

95:                                               ; preds = %78
  %96 = or i32 %9, 8
  br label %97

97:                                               ; preds = %95, %91, %89, %82
  %98 = phi i32 [ %96, %95 ], [ 0, %89 ], [ %88, %82 ], [ %94, %91 ]
  %99 = load ptr, ptr %5, align 4
  %100 = getelementptr inbounds %struct.snd_pcm, ptr %99, i32 0, i32 14
  %101 = load i8, ptr %100, align 1, !range !8
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %97
  %104 = getelementptr inbounds %struct.snd_pcm_substream, ptr %5, i32 0, i32 17, i32 1
  tail call void @mutex_unlock(ptr noundef %104) #14
  br label %109

105:                                              ; preds = %97
  %106 = getelementptr inbounds %struct.snd_pcm_substream, ptr %5, i32 0, i32 17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  %107 = load i16, ptr %106, align 4
  %108 = add i16 %107, 1
  store i16 %108, ptr %106, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  br label %109

109:                                              ; preds = %105, %103, %22, %15
  %110 = phi i32 [ %16, %15 ], [ %23, %22 ], [ %98, %103 ], [ %98, %105 ]
  ret i32 %110
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_pcm_ioctl(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.snd_pcm_sw_params, align 4
  %5 = alloca %struct.snd_pcm_status64, align 8
  %6 = alloca %struct.snd_pcm_channel_info, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.snd_pcm_sync_ptr, align 8
  %12 = alloca %struct.snd_xferi, align 4
  %13 = alloca %struct.snd_xfern, align 4
  %14 = alloca i32, align 4
  %15 = and i32 %1, 65280
  %16 = icmp eq i32 %15, 16640
  br i1 %16, label %17, label %1464

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %19 = load ptr, ptr %18, align 8
  %20 = load ptr, ptr %19, align 4
  %21 = inttoptr i32 %2 to ptr
  %22 = icmp eq ptr %20, null
  br i1 %22, label %1464, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 11
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %1464, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %25, i32 0, i32 37
  %29 = load ptr, ptr %28, align 4
  %30 = load i32, ptr %29, align 8
  %31 = icmp eq i32 %30, 8
  br i1 %31, label %1464, label %32

32:                                               ; preds = %27
  %33 = load ptr, ptr %20, align 4
  %34 = load ptr, ptr %33, align 8
  %35 = tail call i32 @snd_power_wait(ptr noundef %34) #14
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %1464, label %37

37:                                               ; preds = %32
  switch i32 %1, label %1463 [
    i32 -2147204864, label %38
    i32 -2128592639, label %47
    i32 1074020610, label %1464
    i32 1074020611, label %49
    i32 1074020612, label %64
    i32 -1034141424, label %76
    i32 -1034141423, label %102
    i32 16658, label %125
    i32 -1066909421, label %234
    i32 -2140389088, label %260
    i32 -1066647260, label %262
    i32 -2139078368, label %264
    i32 -1065336540, label %280
    i32 -2146418382, label %282
    i32 16704, label %359
    i32 16705, label %361
    i32 16706, label %420
    i32 1074020704, label %441
    i32 16737, label %601
    i32 16711, label %603
    i32 16712, label %624
    i32 16674, label %652
    i32 -2147204831, label %654
    i32 -1065074397, label %669
    i32 -1064812253, label %866
    i32 -1057210096, label %998
    i32 -1057210095, label %1092
    i32 16708, label %1183
    i32 16707, label %1185
    i32 1074020677, label %1187
    i32 1074544976, label %1210
    i32 -2146680495, label %1210
    i32 1074544978, label %1253
    i32 -2146680493, label %1253
    i32 1074020678, label %1307
    i32 1074020681, label %1438
  ]

38:                                               ; preds = %37
  %39 = tail call ptr @llvm.thread.pointer() #14
  %40 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 3
  %41 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %40) #17, !srcloc !16
  %42 = and i32 %41, -13
  %43 = or i32 %42, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %43) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %44 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %21, i32 131087, i32 -1090519041) #14, !srcloc !29
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, i32 0, i32 -14
  br label %1464

47:                                               ; preds = %37
  %48 = tail call i32 @snd_pcm_info_user(ptr noundef nonnull %20, ptr noundef %21) #14
  br label %1464

49:                                               ; preds = %37
  %50 = load ptr, ptr %24, align 4
  %51 = tail call ptr @llvm.thread.pointer() #14
  %52 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 3
  %53 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %52) #17, !srcloc !16
  %54 = and i32 %53, -13
  %55 = or i32 %54, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %55) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %56 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %21, i32 -1090519041) #14, !srcloc !30
  %57 = extractvalue { i32, i32 } %56, 0
  %58 = extractvalue { i32, i32 } %56, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %53) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %59 = icmp eq i32 %57, 0
  br i1 %59, label %60, label %1464

60:                                               ; preds = %49
  %61 = icmp ugt i32 %58, 2
  br i1 %61, label %1464, label %62

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %50, i32 0, i32 49
  store i32 %58, ptr %63, align 8
  br label %1464

64:                                               ; preds = %37
  %65 = tail call ptr @llvm.thread.pointer() #14
  %66 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 3
  %67 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %66) #17, !srcloc !16
  %68 = and i32 %67, -13
  %69 = or i32 %68, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %69) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %70 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %21, i32 -1090519041) #14, !srcloc !31
  %71 = extractvalue { i32, i32 } %70, 0
  %72 = extractvalue { i32, i32 } %70, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %67) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %73 = getelementptr inbounds %struct.snd_pcm_file, ptr %19, i32 0, i32 2
  store i32 %72, ptr %73, align 4
  %74 = icmp eq i32 %71, 0
  %75 = select i1 %74, i32 0, i32 -14
  br label %1464

76:                                               ; preds = %37
  %77 = tail call ptr @memdup_user(ptr noundef %21, i32 noundef 604) #14
  %78 = icmp ugt ptr %77, inttoptr (i32 -4096 to ptr)
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = ptrtoint ptr %77 to i32
  br label %1464

81:                                               ; preds = %76
  %82 = tail call i32 @snd_pcm_hw_refine(ptr noundef nonnull %20, ptr noundef %77) #14
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %100, label %84

84:                                               ; preds = %81
  %85 = tail call fastcc i32 @fixup_unreferenced_params(ptr noundef nonnull %20, ptr noundef %77) #14
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %100, label %87

87:                                               ; preds = %84
  %88 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %21, i32 604, i32 -1090519040) #16, !srcloc !15
  %89 = extractvalue { i32, i32 } %88, 0
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %87
  %92 = tail call ptr @llvm.thread.pointer() #14
  %93 = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 3
  %94 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %93) #17, !srcloc !16
  %95 = and i32 %94, -13
  %96 = or i32 %95, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %96) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %97 = tail call i32 @arm_copy_to_user(ptr noundef %21, ptr noundef %77, i32 noundef 604) #14
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %94) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %98 = icmp eq i32 %97, 0
  %99 = select i1 %98, i32 %85, i32 -14
  br label %100

100:                                              ; preds = %91, %87, %84, %81
  %101 = phi i32 [ %82, %81 ], [ %85, %84 ], [ -14, %87 ], [ %99, %91 ]
  tail call void @kfree(ptr noundef %77) #14
  br label %1464

102:                                              ; preds = %37
  %103 = tail call ptr @memdup_user(ptr noundef %21, i32 noundef 604) #14
  %104 = icmp ugt ptr %103, inttoptr (i32 -4096 to ptr)
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = ptrtoint ptr %103 to i32
  br label %1464

107:                                              ; preds = %102
  %108 = tail call fastcc i32 @snd_pcm_hw_params(ptr noundef nonnull %20, ptr noundef %103) #14
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %123, label %110

110:                                              ; preds = %107
  %111 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %21, i32 604, i32 -1090519040) #16, !srcloc !15
  %112 = extractvalue { i32, i32 } %111, 0
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %110
  %115 = tail call ptr @llvm.thread.pointer() #14
  %116 = getelementptr inbounds %struct.thread_info, ptr %115, i32 0, i32 3
  %117 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %116) #17, !srcloc !16
  %118 = and i32 %117, -13
  %119 = or i32 %118, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %119) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %120 = tail call i32 @arm_copy_to_user(ptr noundef %21, ptr noundef %103, i32 noundef 604) #14
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %117) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %121 = icmp eq i32 %120, 0
  %122 = select i1 %121, i32 0, i32 -14
  br label %123

123:                                              ; preds = %114, %110, %107
  %124 = phi i32 [ %108, %107 ], [ -14, %110 ], [ %122, %114 ]
  tail call void @kfree(ptr noundef %103) #14
  br label %1464

125:                                              ; preds = %37
  %126 = load ptr, ptr %24, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %1464, label %128

128:                                              ; preds = %125
  %129 = load ptr, ptr %20, align 4
  %130 = getelementptr inbounds %struct.snd_pcm, ptr %129, i32 0, i32 14
  %131 = load i8, ptr %130, align 1, !range !8
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 17, i32 1
  tail call void @mutex_lock(ptr noundef %134) #14
  br label %137

135:                                              ; preds = %128
  %136 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 17
  tail call void @_raw_spin_lock_irq(ptr noundef %136) #14
  br label %137

137:                                              ; preds = %135, %133
  %138 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %126, i32 0, i32 37
  %139 = load ptr, ptr %138, align 4
  %140 = load i32, ptr %139, align 8
  %141 = add i32 %140, -1
  %142 = icmp ult i32 %141, 2
  %143 = load ptr, ptr %20, align 4
  %144 = getelementptr inbounds %struct.snd_pcm, ptr %143, i32 0, i32 14
  %145 = load i8, ptr %144, align 1, !range !8
  %146 = icmp eq i8 %145, 0
  br i1 %142, label %154, label %147

147:                                              ; preds = %137
  br i1 %146, label %150, label %148

148:                                              ; preds = %147
  %149 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 17, i32 1
  tail call void @mutex_unlock(ptr noundef %149) #14
  br label %1464

150:                                              ; preds = %147
  %151 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  %152 = load i16, ptr %151, align 4
  %153 = add i16 %152, 1
  store i16 %153, ptr %151, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  br label %1464

154:                                              ; preds = %137
  br i1 %146, label %157, label %155

155:                                              ; preds = %154
  %156 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 17, i32 1
  tail call void @mutex_unlock(ptr noundef %156) #14
  br label %161

157:                                              ; preds = %154
  %158 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  %159 = load i16, ptr %158, align 4
  %160 = add i16 %159, 1
  store i16 %160, ptr %158, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  br label %161

161:                                              ; preds = %157, %155
  %162 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 20
  %163 = load volatile i32, ptr %162, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %1464

165:                                              ; preds = %161
  %166 = load ptr, ptr %24, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %189, label %168

168:                                              ; preds = %165
  %169 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %166, i32 0, i32 43
  %170 = load i8, ptr %169, align 4, !range !8
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %189, label %172

172:                                              ; preds = %168
  store i8 0, ptr %169, align 4
  %173 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 10
  %174 = load ptr, ptr %173, align 4
  %175 = icmp eq ptr %174, null
  br i1 %175, label %182, label %176

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.snd_pcm_ops, ptr %174, i32 0, i32 7
  %178 = load ptr, ptr %177, align 4
  %179 = icmp eq ptr %178, null
  br i1 %179, label %182, label %180

180:                                              ; preds = %176
  %181 = tail call i32 %178(ptr noundef nonnull %20) #14
  br label %189

182:                                              ; preds = %176, %172
  %183 = load ptr, ptr %20, align 4
  %184 = load ptr, ptr %183, align 8
  %185 = getelementptr inbounds %struct.snd_card, ptr %184, i32 0, i32 33
  %186 = load i32, ptr %185, align 4
  %187 = icmp sgt i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %182
  tail call void @synchronize_irq(i32 noundef %186) #14
  br label %189

189:                                              ; preds = %188, %182, %180, %168, %165
  %190 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 10
  %191 = load ptr, ptr %190, align 4
  %192 = getelementptr inbounds %struct.snd_pcm_ops, ptr %191, i32 0, i32 4
  %193 = load ptr, ptr %192, align 4
  %194 = icmp eq ptr %193, null
  br i1 %194, label %197, label %195

195:                                              ; preds = %189
  %196 = tail call i32 %193(ptr noundef nonnull %20) #14
  br label %197

197:                                              ; preds = %195, %189
  %198 = phi i32 [ %196, %195 ], [ 0, %189 ]
  %199 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 25
  %200 = load i8, ptr %199, align 4
  %201 = and i8 %200, 2
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %205, label %203

203:                                              ; preds = %197
  %204 = tail call i32 @snd_pcm_lib_free_pages(ptr noundef nonnull %20) #14
  br label %205

205:                                              ; preds = %203, %197
  %206 = load ptr, ptr %20, align 4
  %207 = getelementptr inbounds %struct.snd_pcm, ptr %206, i32 0, i32 14
  %208 = load i8, ptr %207, align 1, !range !8
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %212, label %210

210:                                              ; preds = %205
  %211 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 17, i32 1
  tail call void @mutex_lock(ptr noundef %211) #14
  br label %214

212:                                              ; preds = %205
  %213 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 17
  tail call void @_raw_spin_lock_irq(ptr noundef %213) #14
  br label %214

214:                                              ; preds = %212, %210
  %215 = load ptr, ptr %24, align 4
  %216 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %215, i32 0, i32 37
  %217 = load ptr, ptr %216, align 4
  %218 = load i32, ptr %217, align 8
  %219 = icmp eq i32 %218, 8
  br i1 %219, label %221, label %220

220:                                              ; preds = %214
  store i32 0, ptr %217, align 8
  br label %221

221:                                              ; preds = %220, %214
  %222 = load ptr, ptr %20, align 4
  %223 = getelementptr inbounds %struct.snd_pcm, ptr %222, i32 0, i32 14
  %224 = load i8, ptr %223, align 1, !range !8
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %228, label %226

226:                                              ; preds = %221
  %227 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 17, i32 1
  tail call void @mutex_unlock(ptr noundef %227) #14
  br label %232

228:                                              ; preds = %221
  %229 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  %230 = load i16, ptr %229, align 4
  %231 = add i16 %230, 1
  store i16 %231, ptr %229, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  br label %232

232:                                              ; preds = %228, %226
  %233 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 6
  tail call void @cpu_latency_qos_remove_request(ptr noundef %233) #14
  br label %1464

234:                                              ; preds = %37
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %4) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(104) %4, i8 0, i32 104, i1 false) #14, !annotation !20
  %235 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %21, i32 104, i32 -1090519040) #16
  %236 = extractvalue { i32, i32 } %235, 0
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %246, !prof !25

238:                                              ; preds = %234
  %239 = tail call ptr @llvm.thread.pointer() #14
  %240 = getelementptr inbounds %struct.thread_info, ptr %239, i32 0, i32 3
  %241 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %240) #17, !srcloc !16
  %242 = and i32 %241, -13
  %243 = or i32 %242, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %243) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %244 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %21, i32 noundef 104) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %241) #14, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %250, label %246, !prof !25

246:                                              ; preds = %238, %234
  %247 = phi i32 [ %244, %238 ], [ 104, %234 ]
  %248 = sub i32 104, %247
  %249 = getelementptr i8, ptr %4, i32 %248
  call void @llvm.memset.p0.i32(ptr align 1 %249, i8 0, i32 %247, i1 false) #14
  br label %258

250:                                              ; preds = %238
  %251 = call fastcc i32 @snd_pcm_sw_params(ptr noundef nonnull %20, ptr noundef nonnull %4) #14
  %252 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %240) #17, !srcloc !16
  %253 = and i32 %252, -13
  %254 = or i32 %253, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %254) #14, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %255 = call i32 @arm_copy_to_user(ptr noundef %21, ptr noundef nonnull %4, i32 noundef 104) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %252) #14, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %256 = icmp eq i32 %255, 0
  %257 = select i1 %256, i32 %251, i32 -14
  br label %258

258:                                              ; preds = %250, %246
  %259 = phi i32 [ -14, %246 ], [ %257, %250 ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %4) #14
  br label %1464

260:                                              ; preds = %37
  %261 = tail call fastcc i32 @snd_pcm_status_user32(ptr noundef nonnull %20, ptr noundef %21, i1 noundef zeroext false) #14
  br label %1464

262:                                              ; preds = %37
  %263 = tail call fastcc i32 @snd_pcm_status_user32(ptr noundef nonnull %20, ptr noundef %21, i1 noundef zeroext true) #14
  br label %1464

264:                                              ; preds = %37
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %5, i8 0, i64 128, i1 false) #14
  %265 = call i32 @snd_pcm_status64(ptr noundef nonnull %20, ptr noundef nonnull %5) #14
  %266 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %21, i32 128, i32 -1090519040) #16, !srcloc !15
  %267 = extractvalue { i32, i32 } %266, 0
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %278

269:                                              ; preds = %264
  %270 = tail call ptr @llvm.thread.pointer() #14
  %271 = getelementptr inbounds %struct.thread_info, ptr %270, i32 0, i32 3
  %272 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %271) #17, !srcloc !16
  %273 = and i32 %272, -13
  %274 = or i32 %273, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %274) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %275 = call i32 @arm_copy_to_user(ptr noundef %21, ptr noundef nonnull %5, i32 noundef 128) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %272) #14, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %276 = icmp eq i32 %275, 0
  %277 = select i1 %276, i32 0, i32 -14
  br label %278

278:                                              ; preds = %269, %264
  %279 = phi i32 [ -14, %264 ], [ %277, %269 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #14
  br label %1464

280:                                              ; preds = %37
  %281 = tail call fastcc i32 @snd_pcm_status_user64(ptr noundef nonnull %20, ptr noundef %21, i1 noundef zeroext true) #14
  br label %1464

282:                                              ; preds = %37
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i32 16, i1 false) #14, !annotation !20
  %283 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %21, i32 16, i32 -1090519040) #16
  %284 = extractvalue { i32, i32 } %283, 0
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %294, !prof !25

286:                                              ; preds = %282
  %287 = tail call ptr @llvm.thread.pointer() #14
  %288 = getelementptr inbounds %struct.thread_info, ptr %287, i32 0, i32 3
  %289 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %288) #17, !srcloc !16
  %290 = and i32 %289, -13
  %291 = or i32 %290, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %291) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %292 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %21, i32 noundef 16) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %289) #14, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %298, label %294, !prof !25

294:                                              ; preds = %286, %282
  %295 = phi i32 [ %292, %286 ], [ 16, %282 ]
  %296 = sub i32 16, %295
  %297 = getelementptr i8, ptr %6, i32 %296
  call void @llvm.memset.p0.i32(ptr align 1 %297, i8 0, i32 %295, i1 false) #14
  br label %357

298:                                              ; preds = %286
  %299 = load i32, ptr %6, align 4
  %300 = load ptr, ptr %24, align 4
  %301 = load ptr, ptr %20, align 4
  %302 = getelementptr inbounds %struct.snd_pcm, ptr %301, i32 0, i32 14
  %303 = load i8, ptr %302, align 1, !range !8
  %304 = icmp eq i8 %303, 0
  br i1 %304, label %307, label %305

305:                                              ; preds = %298
  %306 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 17, i32 1
  call void @mutex_lock(ptr noundef %306) #14
  br label %309

307:                                              ; preds = %298
  %308 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 17
  call void @_raw_spin_lock_irq(ptr noundef %308) #14
  br label %309

309:                                              ; preds = %307, %305
  %310 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %300, i32 0, i32 37
  %311 = load ptr, ptr %310, align 4
  %312 = load i32, ptr %311, align 8
  %313 = icmp eq i32 %312, 0
  %314 = load ptr, ptr %20, align 4
  %315 = getelementptr inbounds %struct.snd_pcm, ptr %314, i32 0, i32 14
  %316 = load i8, ptr %315, align 1, !range !8
  %317 = icmp eq i8 %316, 0
  br i1 %313, label %318, label %325

318:                                              ; preds = %309
  br i1 %317, label %321, label %319

319:                                              ; preds = %318
  %320 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 17, i32 1
  call void @mutex_unlock(ptr noundef %320) #14
  br label %357

321:                                              ; preds = %318
  %322 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 17
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  %323 = load i16, ptr %322, align 4
  %324 = add i16 %323, 1
  store i16 %324, ptr %322, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !11
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  br label %357

325:                                              ; preds = %309
  br i1 %317, label %328, label %326

326:                                              ; preds = %325
  %327 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 17, i32 1
  call void @mutex_unlock(ptr noundef %327) #14
  br label %332

328:                                              ; preds = %325
  %329 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 17
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  %330 = load i16, ptr %329, align 4
  %331 = add i16 %330, 1
  store i16 %331, ptr %329, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !11
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  br label %332

332:                                              ; preds = %328, %326
  %333 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %300, i32 0, i32 15
  %334 = load i32, ptr %333, align 8
  %335 = icmp ult i32 %299, %334
  br i1 %335, label %336, label %357

336:                                              ; preds = %332
  %337 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %337, i8 0, i32 12, i1 false) #14
  store i32 %299, ptr %6, align 4
  %338 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 10
  %339 = load ptr, ptr %338, align 4
  %340 = getelementptr inbounds %struct.snd_pcm_ops, ptr %339, i32 0, i32 2
  %341 = load ptr, ptr %340, align 4
  %342 = icmp eq ptr %341, null
  br i1 %342, label %345, label %343

343:                                              ; preds = %336
  %344 = call i32 %341(ptr noundef nonnull %20, i32 noundef 2, ptr noundef nonnull %6) #14
  br label %347

345:                                              ; preds = %336
  %346 = call i32 @snd_pcm_lib_ioctl(ptr noundef nonnull %20, i32 noundef 2, ptr noundef nonnull %6) #14
  br label %347

347:                                              ; preds = %345, %343
  %348 = phi i32 [ %344, %343 ], [ %346, %345 ]
  %349 = icmp slt i32 %348, 0
  br i1 %349, label %357, label %350

350:                                              ; preds = %347
  %351 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %288) #17, !srcloc !16
  %352 = and i32 %351, -13
  %353 = or i32 %352, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %353) #14, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %354 = call i32 @arm_copy_to_user(ptr noundef %21, ptr noundef nonnull %6, i32 noundef 16) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %351) #14, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %355 = icmp eq i32 %354, 0
  %356 = select i1 %355, i32 0, i32 -14
  br label %357

357:                                              ; preds = %350, %347, %332, %321, %319, %294
  %358 = phi i32 [ %348, %347 ], [ -14, %294 ], [ -77, %321 ], [ -77, %319 ], [ -22, %332 ], [ %356, %350 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #14
  br label %1464

359:                                              ; preds = %37
  %360 = tail call fastcc i32 @snd_pcm_prepare(ptr noundef nonnull %20, ptr noundef %0) #14
  br label %1464

361:                                              ; preds = %37
  tail call void @down_read(ptr noundef nonnull @snd_pcm_link_rwsem) #14
  %362 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 18
  %363 = load ptr, ptr %362, align 4
  %364 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 17
  %365 = icmp eq ptr %363, %364
  br i1 %365, label %368, label %366

366:                                              ; preds = %361
  %367 = tail call fastcc i32 @snd_pcm_action_group(ptr noundef nonnull @snd_pcm_action_reset, ptr noundef nonnull %20, i32 noundef 0, i1 noundef zeroext false) #14
  br label %418

368:                                              ; preds = %361
  %369 = load ptr, ptr %24, align 4
  %370 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %369, i32 0, i32 37
  %371 = load ptr, ptr %370, align 4
  %372 = load i32, ptr %371, align 8
  %373 = add i32 %372, -2
  %374 = and i32 %373, -6
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %376, label %418

376:                                              ; preds = %368
  %377 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 10
  %378 = load ptr, ptr %377, align 4
  %379 = getelementptr inbounds %struct.snd_pcm_ops, ptr %378, i32 0, i32 2
  %380 = load ptr, ptr %379, align 4
  %381 = icmp eq ptr %380, null
  br i1 %381, label %384, label %382

382:                                              ; preds = %376
  %383 = tail call i32 %380(ptr noundef nonnull %20, i32 noundef 0, ptr noundef null) #14
  br label %386

384:                                              ; preds = %376
  %385 = tail call i32 @snd_pcm_lib_ioctl(ptr noundef nonnull %20, i32 noundef 0, ptr noundef null) #14
  br label %386

386:                                              ; preds = %384, %382
  %387 = phi i32 [ %383, %382 ], [ %385, %384 ]
  %388 = icmp slt i32 %387, 0
  br i1 %388, label %418, label %389

389:                                              ; preds = %386
  %390 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %369, i32 0, i32 5
  store i32 0, ptr %390, align 4
  %391 = load ptr, ptr %370, align 4
  %392 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %391, i32 0, i32 3
  %393 = load i32, ptr %392, align 8
  %394 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %369, i32 0, i32 16
  %395 = load i32, ptr %394, align 4
  %396 = urem i32 %393, %395
  %397 = sub i32 %393, %396
  %398 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %369, i32 0, i32 6
  store i32 %397, ptr %398, align 8
  %399 = load i32, ptr %392, align 8
  %400 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %369, i32 0, i32 34
  store i32 %399, ptr %400, align 4
  %401 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %369, i32 0, i32 35
  store i32 0, ptr %401, align 8
  %402 = load ptr, ptr %24, align 4
  %403 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %402, i32 0, i32 37
  %404 = load ptr, ptr %403, align 4
  %405 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %404, i32 0, i32 3
  %406 = load i32, ptr %405, align 8
  %407 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %402, i32 0, i32 38
  %408 = load ptr, ptr %407, align 8
  %409 = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %408, i32 0, i32 1
  store i32 %406, ptr %409, align 4
  %410 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 5
  %411 = load i32, ptr %410, align 4
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %413, label %418

413:                                              ; preds = %389
  %414 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %402, i32 0, i32 32
  %415 = load i32, ptr %414, align 4
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %418, label %417

417:                                              ; preds = %413
  tail call void @snd_pcm_playback_silence(ptr noundef nonnull %20, i32 noundef -1) #14
  br label %418

418:                                              ; preds = %417, %413, %389, %386, %368, %366
  %419 = phi i32 [ %367, %366 ], [ -77, %368 ], [ 0, %389 ], [ 0, %413 ], [ 0, %417 ], [ %387, %386 ]
  tail call void @up_read(ptr noundef nonnull @snd_pcm_link_rwsem) #14
  br label %1464

420:                                              ; preds = %37
  %421 = load ptr, ptr %20, align 4
  %422 = getelementptr inbounds %struct.snd_pcm, ptr %421, i32 0, i32 14
  %423 = load i8, ptr %422, align 1, !range !8
  %424 = icmp eq i8 %423, 0
  br i1 %424, label %427, label %425

425:                                              ; preds = %420
  %426 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 17, i32 1
  tail call void @mutex_lock(ptr noundef %426) #14
  br label %429

427:                                              ; preds = %420
  %428 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 17
  tail call void @_raw_spin_lock_irq(ptr noundef %428) #14
  br label %429

429:                                              ; preds = %427, %425
  %430 = tail call fastcc i32 @snd_pcm_action(ptr noundef nonnull @snd_pcm_action_start, ptr noundef nonnull %20, i32 noundef 3) #14
  %431 = load ptr, ptr %20, align 4
  %432 = getelementptr inbounds %struct.snd_pcm, ptr %431, i32 0, i32 14
  %433 = load i8, ptr %432, align 1, !range !8
  %434 = icmp eq i8 %433, 0
  br i1 %434, label %437, label %435

435:                                              ; preds = %429
  %436 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 17, i32 1
  tail call void @mutex_unlock(ptr noundef %436) #14
  br label %1464

437:                                              ; preds = %429
  %438 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  %439 = load i16, ptr %438, align 4
  %440 = add i16 %439, 1
  store i16 %440, ptr %438, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  br label %1464

441:                                              ; preds = %37
  %442 = load ptr, ptr %20, align 4
  %443 = getelementptr inbounds %struct.snd_pcm, ptr %442, i32 0, i32 14
  %444 = load i8, ptr %443, align 1, !range !8
  %445 = icmp eq i8 %444, 0
  %446 = tail call i32 @__fdget(i32 noundef %2) #14, !noalias !32
  %447 = and i32 %446, -4
  %448 = inttoptr i32 %447 to ptr
  %449 = icmp eq i32 %447, 0
  br i1 %449, label %1464, label %450

450:                                              ; preds = %441
  %451 = getelementptr inbounds %struct.file, ptr %448, i32 0, i32 2
  %452 = load ptr, ptr %451, align 8
  %453 = load i16, ptr %452, align 8
  %454 = and i16 %453, -4096
  %455 = icmp eq i16 %454, 8192
  br i1 %455, label %456, label %596

456:                                              ; preds = %450
  %457 = getelementptr inbounds %struct.inode, ptr %452, i32 0, i32 12
  %458 = load i32, ptr %457, align 4
  %459 = lshr i32 %458, 20
  %460 = load i32, ptr @snd_major, align 4
  %461 = icmp eq i32 %459, %460
  br i1 %461, label %462, label %596

462:                                              ; preds = %456
  %463 = and i32 %458, 1048575
  %464 = tail call ptr @snd_lookup_minor_data(i32 noundef %463, i32 noundef 5) #14
  %465 = icmp eq ptr %464, null
  br i1 %465, label %466, label %469

466:                                              ; preds = %462
  %467 = tail call ptr @snd_lookup_minor_data(i32 noundef %463, i32 noundef 6) #14
  %468 = icmp eq ptr %467, null
  br i1 %468, label %596, label %469

469:                                              ; preds = %466, %462
  %470 = phi ptr [ %467, %466 ], [ %464, %462 ]
  %471 = load ptr, ptr %470, align 8
  %472 = getelementptr inbounds %struct.snd_card, ptr %471, i32 0, i32 28
  tail call void @put_device(ptr noundef %472) #14
  %473 = getelementptr inbounds %struct.file, ptr %448, i32 0, i32 15
  %474 = load ptr, ptr %473, align 8
  %475 = load ptr, ptr %474, align 4
  %476 = icmp eq ptr %475, %20
  br i1 %476, label %596, label %477

477:                                              ; preds = %469
  %478 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %479 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %478, i32 noundef 3520, i32 noundef 36) #15
  %480 = icmp eq ptr %479, null
  br i1 %480, label %593, label %481

481:                                              ; preds = %477
  store i32 0, ptr %479, align 8
  %482 = getelementptr inbounds %struct.snd_pcm_group, ptr %479, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %482, ptr noundef nonnull @.str, ptr noundef nonnull @snd_pcm_group_init.__key) #14
  %483 = getelementptr inbounds %struct.snd_pcm_group, ptr %479, i32 0, i32 2
  store volatile ptr %483, ptr %483, align 8
  %484 = getelementptr inbounds %struct.snd_pcm_group, ptr %479, i32 0, i32 2, i32 1
  store ptr %483, ptr %484, align 4
  %485 = getelementptr inbounds %struct.snd_pcm_group, ptr %479, i32 0, i32 3
  store volatile i32 1, ptr %485, align 8
  tail call void @down_write(ptr noundef nonnull @snd_pcm_link_rwsem) #14
  %486 = load ptr, ptr %24, align 4
  %487 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %486, i32 0, i32 37
  %488 = load ptr, ptr %487, align 4
  %489 = load i32, ptr %488, align 8
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %590, label %491

491:                                              ; preds = %481
  %492 = getelementptr inbounds %struct.snd_pcm_substream, ptr %475, i32 0, i32 11
  %493 = load ptr, ptr %492, align 4
  %494 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %493, i32 0, i32 37
  %495 = load ptr, ptr %494, align 4
  %496 = load i32, ptr %495, align 8
  %497 = icmp eq i32 %489, %496
  br i1 %497, label %498, label %590

498:                                              ; preds = %491
  %499 = load ptr, ptr %20, align 4
  %500 = getelementptr inbounds %struct.snd_pcm, ptr %499, i32 0, i32 14
  %501 = load i8, ptr %500, align 1, !range !8
  %502 = load ptr, ptr %475, align 4
  %503 = getelementptr inbounds %struct.snd_pcm, ptr %502, i32 0, i32 14
  %504 = load i8, ptr %503, align 1, !range !8
  %505 = icmp eq i8 %501, %504
  br i1 %505, label %506, label %590

506:                                              ; preds = %498
  %507 = getelementptr inbounds %struct.snd_pcm_substream, ptr %475, i32 0, i32 18
  %508 = load ptr, ptr %507, align 4
  %509 = getelementptr inbounds %struct.snd_pcm_substream, ptr %475, i32 0, i32 17
  %510 = icmp eq ptr %508, %509
  br i1 %510, label %511, label %590

511:                                              ; preds = %506
  %512 = icmp eq i8 %501, 0
  br i1 %512, label %515, label %513

513:                                              ; preds = %511
  %514 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 17, i32 1
  tail call void @mutex_lock(ptr noundef %514) #14
  br label %517

515:                                              ; preds = %511
  %516 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 17
  tail call void @_raw_spin_lock_irq(ptr noundef %516) #14
  br label %517

517:                                              ; preds = %515, %513
  %518 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 18
  %519 = load ptr, ptr %518, align 4
  %520 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 17
  %521 = icmp eq ptr %519, %520
  br i1 %521, label %522, label %531

522:                                              ; preds = %517
  store ptr %479, ptr %518, align 4
  %523 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 16
  %524 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 16, i32 1
  %525 = load ptr, ptr %524, align 4
  %526 = load ptr, ptr %523, align 4
  %527 = getelementptr inbounds %struct.list_head, ptr %526, i32 0, i32 1
  store ptr %525, ptr %527, align 4
  store volatile ptr %526, ptr %525, align 4
  %528 = load ptr, ptr %483, align 8
  %529 = getelementptr inbounds %struct.list_head, ptr %528, i32 0, i32 1
  store ptr %523, ptr %529, align 4
  store ptr %528, ptr %523, align 4
  store ptr %483, ptr %524, align 4
  store volatile ptr %523, ptr %483, align 8
  %530 = load ptr, ptr %518, align 4
  br label %531

531:                                              ; preds = %522, %517
  %532 = phi ptr [ %519, %517 ], [ %530, %522 ]
  %533 = phi ptr [ %479, %517 ], [ null, %522 ]
  %534 = load ptr, ptr %20, align 4
  %535 = getelementptr inbounds %struct.snd_pcm, ptr %534, i32 0, i32 14
  %536 = load i8, ptr %535, align 1, !range !8
  %537 = icmp eq i8 %536, 0
  br i1 %537, label %540, label %538

538:                                              ; preds = %531
  %539 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 17, i32 1
  tail call void @mutex_unlock(ptr noundef %539) #14
  br label %543

540:                                              ; preds = %531
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  %541 = load i16, ptr %520, align 4
  %542 = add i16 %541, 1
  store i16 %542, ptr %520, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  br label %543

543:                                              ; preds = %540, %538
  br i1 %445, label %546, label %544

544:                                              ; preds = %543
  %545 = getelementptr inbounds %struct.snd_pcm_group, ptr %532, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %545) #14
  br label %547

546:                                              ; preds = %543
  tail call void @_raw_spin_lock_irq(ptr noundef %532) #14
  br label %547

547:                                              ; preds = %546, %544
  %548 = load ptr, ptr %475, align 4
  %549 = getelementptr inbounds %struct.snd_pcm, ptr %548, i32 0, i32 14
  %550 = load i8, ptr %549, align 1, !range !8
  %551 = icmp eq i8 %550, 0
  br i1 %551, label %554, label %552

552:                                              ; preds = %547
  %553 = getelementptr inbounds %struct.snd_pcm_substream, ptr %475, i32 0, i32 17, i32 1
  tail call void @mutex_lock(ptr noundef %553) #14
  br label %555

554:                                              ; preds = %547
  tail call void @_raw_spin_lock(ptr noundef %508) #14
  br label %555

555:                                              ; preds = %554, %552
  store ptr %532, ptr %507, align 4
  %556 = getelementptr inbounds %struct.snd_pcm_substream, ptr %475, i32 0, i32 16
  %557 = getelementptr inbounds %struct.snd_pcm_group, ptr %532, i32 0, i32 2
  %558 = getelementptr inbounds %struct.snd_pcm_substream, ptr %475, i32 0, i32 16, i32 1
  %559 = load ptr, ptr %558, align 4
  %560 = load ptr, ptr %556, align 4
  %561 = getelementptr inbounds %struct.list_head, ptr %560, i32 0, i32 1
  store ptr %559, ptr %561, align 4
  store volatile ptr %560, ptr %559, align 4
  %562 = load ptr, ptr %557, align 4
  %563 = getelementptr inbounds %struct.list_head, ptr %562, i32 0, i32 1
  store ptr %556, ptr %563, align 4
  store ptr %562, ptr %556, align 4
  store ptr %557, ptr %558, align 4
  store volatile ptr %556, ptr %557, align 4
  %564 = getelementptr inbounds %struct.snd_pcm_group, ptr %532, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %564) #14, !srcloc !22
  %565 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %564, ptr %564, i32 1, ptr elementtype(i32) %564) #14, !srcloc !35
  %566 = extractvalue { i32, i32, i32 } %565, 0
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %572, label %568, !prof !19

568:                                              ; preds = %555
  %569 = add i32 %566, 1
  %570 = or i32 %569, %566
  %571 = icmp sgt i32 %570, -1
  br i1 %571, label %574, label %572, !prof !25

572:                                              ; preds = %568, %555
  %573 = phi i32 [ 2, %555 ], [ 1, %568 ]
  tail call void @refcount_warn_saturate(ptr noundef %564, i32 noundef %573) #14
  br label %574

574:                                              ; preds = %572, %568
  %575 = load ptr, ptr %475, align 4
  %576 = getelementptr inbounds %struct.snd_pcm, ptr %575, i32 0, i32 14
  %577 = load i8, ptr %576, align 1, !range !8
  %578 = icmp eq i8 %577, 0
  br i1 %578, label %581, label %579

579:                                              ; preds = %574
  %580 = getelementptr inbounds %struct.snd_pcm_substream, ptr %475, i32 0, i32 17, i32 1
  tail call void @mutex_unlock(ptr noundef %580) #14
  br label %584

581:                                              ; preds = %574
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  %582 = load i16, ptr %508, align 4
  %583 = add i16 %582, 1
  store i16 %583, ptr %508, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !12
  br label %584

584:                                              ; preds = %581, %579
  br i1 %445, label %587, label %585

585:                                              ; preds = %584
  %586 = getelementptr inbounds %struct.snd_pcm_group, ptr %532, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %586) #14
  br label %590

587:                                              ; preds = %584
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  %588 = load i16, ptr %532, align 4
  %589 = add i16 %588, 1
  store i16 %589, ptr %532, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  br label %590

590:                                              ; preds = %587, %585, %506, %498, %491, %481
  %591 = phi i32 [ -77, %498 ], [ -77, %491 ], [ -77, %481 ], [ -114, %506 ], [ 0, %585 ], [ 0, %587 ]
  %592 = phi ptr [ %479, %498 ], [ %479, %491 ], [ %479, %481 ], [ %479, %506 ], [ %533, %585 ], [ %533, %587 ]
  tail call void @up_write(ptr noundef nonnull @snd_pcm_link_rwsem) #14
  br label %593

593:                                              ; preds = %590, %477
  %594 = phi i32 [ %591, %590 ], [ -12, %477 ]
  %595 = phi ptr [ %592, %590 ], [ null, %477 ]
  tail call void @kfree(ptr noundef %595) #14
  br label %596

596:                                              ; preds = %593, %469, %466, %456, %450
  %597 = phi i32 [ %594, %593 ], [ -22, %469 ], [ -77, %456 ], [ -77, %450 ], [ -77, %466 ]
  %598 = and i32 %446, 1
  %599 = icmp eq i32 %598, 0
  br i1 %599, label %1464, label %600

600:                                              ; preds = %596
  tail call void @fput(ptr noundef nonnull %448) #14
  br label %1464

601:                                              ; preds = %37
  %602 = tail call fastcc i32 @snd_pcm_unlink(ptr noundef nonnull %20) #14
  br label %1464

603:                                              ; preds = %37
  %604 = load ptr, ptr %20, align 4
  %605 = getelementptr inbounds %struct.snd_pcm, ptr %604, i32 0, i32 14
  %606 = load i8, ptr %605, align 1, !range !8
  %607 = icmp eq i8 %606, 0
  br i1 %607, label %610, label %608

608:                                              ; preds = %603
  %609 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 17, i32 1
  tail call void @mutex_lock(ptr noundef %609) #14
  br label %612

610:                                              ; preds = %603
  %611 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 17
  tail call void @_raw_spin_lock_irq(ptr noundef %611) #14
  br label %612

612:                                              ; preds = %610, %608
  %613 = tail call fastcc i32 @snd_pcm_action(ptr noundef nonnull @snd_pcm_action_resume, ptr noundef nonnull %20, i32 noundef 0) #14
  %614 = load ptr, ptr %20, align 4
  %615 = getelementptr inbounds %struct.snd_pcm, ptr %614, i32 0, i32 14
  %616 = load i8, ptr %615, align 1, !range !8
  %617 = icmp eq i8 %616, 0
  br i1 %617, label %620, label %618

618:                                              ; preds = %612
  %619 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 17, i32 1
  tail call void @mutex_unlock(ptr noundef %619) #14
  br label %1464

620:                                              ; preds = %612
  %621 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  %622 = load i16, ptr %621, align 4
  %623 = add i16 %622, 1
  store i16 %623, ptr %621, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  br label %1464

624:                                              ; preds = %37
  %625 = load ptr, ptr %24, align 4
  %626 = load ptr, ptr %20, align 4
  %627 = getelementptr inbounds %struct.snd_pcm, ptr %626, i32 0, i32 14
  %628 = load i8, ptr %627, align 1, !range !8
  %629 = icmp eq i8 %628, 0
  br i1 %629, label %632, label %630

630:                                              ; preds = %624
  %631 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 17, i32 1
  tail call void @mutex_lock(ptr noundef %631) #14
  br label %634

632:                                              ; preds = %624
  %633 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 17
  tail call void @_raw_spin_lock_irq(ptr noundef %633) #14
  br label %634

634:                                              ; preds = %632, %630
  %635 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %625, i32 0, i32 37
  %636 = load ptr, ptr %635, align 4
  %637 = load i32, ptr %636, align 8
  switch i32 %637, label %639 [
    i32 4, label %640
    i32 3, label %638
  ]

638:                                              ; preds = %634
  tail call void @__snd_pcm_xrun(ptr noundef nonnull %20) #14
  br label %640

639:                                              ; preds = %634
  br label %640

640:                                              ; preds = %639, %638, %634
  %641 = phi i32 [ -77, %639 ], [ 0, %638 ], [ 0, %634 ]
  %642 = load ptr, ptr %20, align 4
  %643 = getelementptr inbounds %struct.snd_pcm, ptr %642, i32 0, i32 14
  %644 = load i8, ptr %643, align 1, !range !8
  %645 = icmp eq i8 %644, 0
  br i1 %645, label %648, label %646

646:                                              ; preds = %640
  %647 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 17, i32 1
  tail call void @mutex_unlock(ptr noundef %647) #14
  br label %1464

648:                                              ; preds = %640
  %649 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  %650 = load i16, ptr %649, align 4
  %651 = add i16 %650, 1
  store i16 %651, ptr %649, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  br label %1464

652:                                              ; preds = %37
  %653 = tail call fastcc i32 @snd_pcm_delay(ptr noundef nonnull %20, ptr noundef null) #14
  br label %1464

654:                                              ; preds = %37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #14
  store i32 0, ptr %14, align 4
  %655 = call fastcc i32 @snd_pcm_delay(ptr noundef nonnull %20, ptr noundef nonnull %14) #14
  %656 = icmp eq i32 %655, 0
  br i1 %656, label %657, label %667

657:                                              ; preds = %654
  %658 = load i32, ptr %14, align 4
  %659 = tail call ptr @llvm.thread.pointer() #14
  %660 = getelementptr inbounds %struct.thread_info, ptr %659, i32 0, i32 3
  %661 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %660) #17, !srcloc !16
  %662 = and i32 %661, -13
  %663 = or i32 %662, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %663) #14, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %664 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %21, i32 %658, i32 -1090519041) #14, !srcloc !36
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %661) #14, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %665 = icmp eq i32 %664, 0
  %666 = select i1 %665, i32 0, i32 -14
  br label %667

667:                                              ; preds = %657, %654
  %668 = phi i32 [ %655, %654 ], [ %666, %657 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #14
  br label %1464

669:                                              ; preds = %37
  %670 = load ptr, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10)
  %671 = icmp eq ptr %670, null
  br i1 %671, label %864, label %672

672:                                              ; preds = %669
  %673 = tail call ptr @llvm.thread.pointer() #14
  %674 = getelementptr inbounds %struct.thread_info, ptr %673, i32 0, i32 3
  %675 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %674) #17, !srcloc !16
  %676 = and i32 %675, -13
  %677 = or i32 %676, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %677) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %678 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %21, i32 -1090519041) #14, !srcloc !37
  %679 = extractvalue { i32, i32 } %678, 0
  %680 = extractvalue { i32, i32 } %678, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %675) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %681 = icmp eq i32 %679, 0
  br i1 %681, label %682, label %864

682:                                              ; preds = %672
  %683 = getelementptr inbounds %struct.snd_pcm_sync_ptr32, ptr %21, i32 0, i32 2
  %684 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %674) #17, !srcloc !16
  %685 = and i32 %684, -13
  %686 = or i32 %685, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %686) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %687 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %683, i32 -1090519041) #14, !srcloc !38
  %688 = extractvalue { i32, i32 } %687, 0
  %689 = extractvalue { i32, i32 } %687, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %684) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %690 = icmp eq i32 %688, 0
  br i1 %690, label %691, label %864

691:                                              ; preds = %682
  %692 = getelementptr inbounds %struct.snd_pcm_sync_ptr32, ptr %21, i32 0, i32 2, i32 0, i32 1
  %693 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %674) #17, !srcloc !16
  %694 = and i32 %693, -13
  %695 = or i32 %694, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %695) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %696 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %692, i32 -1090519041) #14, !srcloc !39
  %697 = extractvalue { i32, i32 } %696, 0
  %698 = extractvalue { i32, i32 } %696, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %693) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %699 = icmp eq i32 %697, 0
  br i1 %699, label %700, label %864

700:                                              ; preds = %691
  %701 = and i32 %680, 1
  %702 = icmp eq i32 %701, 0
  br i1 %702, label %706, label %703

703:                                              ; preds = %700
  %704 = tail call fastcc i32 @snd_pcm_delay(ptr noundef nonnull %20, ptr noundef null) #14
  %705 = icmp slt i32 %704, 0
  br i1 %705, label %864, label %706

706:                                              ; preds = %703, %700
  %707 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %670, i32 0, i32 37
  %708 = load ptr, ptr %707, align 4
  %709 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %670, i32 0, i32 38
  %710 = load ptr, ptr %709, align 8
  %711 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %670, i32 0, i32 18
  %712 = load i32, ptr %711, align 4
  %713 = icmp eq i32 %712, 0
  br i1 %713, label %722, label %714

714:                                              ; preds = %706
  %715 = sub i32 2147483647, %712
  br label %716

716:                                              ; preds = %716, %714
  %717 = phi i32 [ %718, %716 ], [ %712, %714 ]
  %718 = shl i32 %717, 1
  %719 = icmp ugt i32 %718, %715
  br i1 %719, label %720, label %716

720:                                              ; preds = %716
  %721 = icmp eq i32 %717, 0
  br i1 %721, label %722, label %723

722:                                              ; preds = %720, %706
  br label %723

723:                                              ; preds = %722, %720
  %724 = phi i32 [ 2147483647, %722 ], [ %717, %720 ]
  %725 = load ptr, ptr %20, align 4
  %726 = getelementptr inbounds %struct.snd_pcm, ptr %725, i32 0, i32 14
  %727 = load i8, ptr %726, align 1, !range !8
  %728 = icmp eq i8 %727, 0
  br i1 %728, label %731, label %729

729:                                              ; preds = %723
  %730 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 17, i32 1
  tail call void @mutex_lock(ptr noundef %730) #14
  br label %733

731:                                              ; preds = %723
  %732 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 17
  tail call void @_raw_spin_lock_irq(ptr noundef %732) #14
  br label %733

733:                                              ; preds = %731, %729
  %734 = and i32 %680, 2
  %735 = icmp eq i32 %734, 0
  br i1 %735, label %736, label %750

736:                                              ; preds = %733
  %737 = tail call i32 @pcm_lib_apply_appl_ptr(ptr noundef %20, i32 noundef %689) #14
  %738 = icmp slt i32 %737, 0
  br i1 %738, label %739, label %754

739:                                              ; preds = %736
  %740 = load ptr, ptr %20, align 4
  %741 = getelementptr inbounds %struct.snd_pcm, ptr %740, i32 0, i32 14
  %742 = load i8, ptr %741, align 1, !range !8
  %743 = icmp eq i8 %742, 0
  br i1 %743, label %746, label %744

744:                                              ; preds = %739
  %745 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 17, i32 1
  tail call void @mutex_unlock(ptr noundef %745) #14
  br label %864

746:                                              ; preds = %739
  %747 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  %748 = load i16, ptr %747, align 4
  %749 = add i16 %748, 1
  store i16 %749, ptr %747, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  br label %864

750:                                              ; preds = %733
  %751 = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %710, i32 0, i32 1
  %752 = load volatile i32, ptr %751, align 4
  %753 = urem i32 %752, %724
  br label %754

754:                                              ; preds = %750, %736
  %755 = phi i32 [ %753, %750 ], [ %689, %736 ]
  %756 = and i32 %680, 4
  %757 = icmp eq i32 %756, 0
  %758 = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %710, i32 0, i32 4
  br i1 %757, label %759, label %760

759:                                              ; preds = %754
  store volatile i32 %698, ptr %758, align 4
  br label %762

760:                                              ; preds = %754
  %761 = load volatile i32, ptr %758, align 4
  br label %762

762:                                              ; preds = %760, %759
  %763 = phi i32 [ %761, %760 ], [ %698, %759 ]
  %764 = load volatile i32, ptr %708, align 8
  %765 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %708, i32 0, i32 3
  %766 = load volatile i32, ptr %765, align 8
  %767 = urem i32 %766, %724
  %768 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %708, i32 0, i32 5
  %769 = load volatile i64, ptr %768, align 8
  store volatile i64 %769, ptr %7, align 8
  %770 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %708, i32 0, i32 5, i32 1
  %771 = load volatile i64, ptr %770, align 8
  store volatile i64 %771, ptr %8, align 8
  %772 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %708, i32 0, i32 6
  %773 = load volatile i32, ptr %772, align 8
  %774 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %708, i32 0, i32 8
  %775 = load volatile i64, ptr %774, align 8
  store volatile i64 %775, ptr %9, align 8
  %776 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %708, i32 0, i32 8, i32 1
  %777 = load volatile i64, ptr %776, align 8
  store volatile i64 %777, ptr %10, align 8
  %778 = load ptr, ptr %20, align 4
  %779 = getelementptr inbounds %struct.snd_pcm, ptr %778, i32 0, i32 14
  %780 = load i8, ptr %779, align 1, !range !8
  %781 = icmp eq i8 %780, 0
  br i1 %781, label %784, label %782

782:                                              ; preds = %762
  %783 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 17, i32 1
  tail call void @mutex_unlock(ptr noundef %783) #14
  br label %788

784:                                              ; preds = %762
  %785 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  %786 = load i16, ptr %785, align 4
  %787 = add i16 %786, 1
  store i16 %787, ptr %785, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  br label %788

788:                                              ; preds = %784, %782
  br i1 %735, label %789, label %798

789:                                              ; preds = %788
  %790 = load ptr, ptr %24, align 4
  %791 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %790, i32 0, i32 23
  %792 = load i32, ptr %791, align 8
  %793 = and i32 %792, 268435456
  %794 = icmp eq i32 %793, 0
  br i1 %794, label %798, label %795

795:                                              ; preds = %789
  %796 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %790, i32 0, i32 53
  %797 = load ptr, ptr %796, align 8
  tail call void @snd_dma_buffer_sync(ptr noundef %797, i32 noundef 1) #14
  br label %798

798:                                              ; preds = %795, %789, %788
  %799 = getelementptr inbounds %struct.snd_pcm_sync_ptr32, ptr %21, i32 0, i32 1
  %800 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %674) #17, !srcloc !16
  %801 = and i32 %800, -13
  %802 = or i32 %801, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %802) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %803 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %799, i32 %764, i32 -1090519041) #14, !srcloc !40
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %800) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %804 = icmp eq i32 %803, 0
  br i1 %804, label %805, label %864

805:                                              ; preds = %798
  %806 = getelementptr inbounds %struct.snd_pcm_sync_ptr32, ptr %21, i32 0, i32 1, i32 0, i32 2
  %807 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %674) #17, !srcloc !16
  %808 = and i32 %807, -13
  %809 = or i32 %808, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %809) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %810 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %806, i32 %767, i32 -1090519041) #14, !srcloc !41
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %807) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %811 = icmp eq i32 %810, 0
  br i1 %811, label %812, label %864

812:                                              ; preds = %805
  %813 = getelementptr inbounds %struct.snd_pcm_sync_ptr32, ptr %21, i32 0, i32 1, i32 0, i32 3
  %814 = trunc i64 %769 to i32
  %815 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %674) #17, !srcloc !16
  %816 = and i32 %815, -13
  %817 = or i32 %816, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %817) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %818 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %813, i32 %814, i32 -1090519041) #14, !srcloc !42
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %815) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %820, label %864

820:                                              ; preds = %812
  %821 = getelementptr inbounds %struct.snd_pcm_sync_ptr32, ptr %21, i32 0, i32 1, i32 0, i32 4
  %822 = trunc i64 %771 to i32
  %823 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %674) #17, !srcloc !16
  %824 = and i32 %823, -13
  %825 = or i32 %824, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %825) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %826 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %821, i32 %822, i32 -1090519041) #14, !srcloc !43
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %823) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %827 = icmp eq i32 %826, 0
  br i1 %827, label %828, label %864

828:                                              ; preds = %820
  %829 = getelementptr inbounds %struct.snd_pcm_sync_ptr32, ptr %21, i32 0, i32 1, i32 0, i32 5
  %830 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %674) #17, !srcloc !16
  %831 = and i32 %830, -13
  %832 = or i32 %831, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %832) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %833 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %829, i32 %773, i32 -1090519041) #14, !srcloc !44
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %830) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %834 = icmp eq i32 %833, 0
  br i1 %834, label %835, label %864

835:                                              ; preds = %828
  %836 = getelementptr inbounds %struct.snd_pcm_sync_ptr32, ptr %21, i32 0, i32 1, i32 0, i32 6
  %837 = trunc i64 %775 to i32
  %838 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %674) #17, !srcloc !16
  %839 = and i32 %838, -13
  %840 = or i32 %839, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %840) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %841 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %836, i32 %837, i32 -1090519041) #14, !srcloc !45
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %838) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %842 = icmp eq i32 %841, 0
  br i1 %842, label %843, label %864

843:                                              ; preds = %835
  %844 = getelementptr inbounds %struct.snd_pcm_sync_ptr32, ptr %21, i32 0, i32 1, i32 0, i32 7
  %845 = trunc i64 %777 to i32
  %846 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %674) #17, !srcloc !16
  %847 = and i32 %846, -13
  %848 = or i32 %847, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %848) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %849 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %844, i32 %845, i32 -1090519041) #14, !srcloc !46
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %846) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %850 = icmp eq i32 %849, 0
  br i1 %850, label %851, label %864

851:                                              ; preds = %843
  %852 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %674) #17, !srcloc !16
  %853 = and i32 %852, -13
  %854 = or i32 %853, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %854) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %855 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %683, i32 %755, i32 -1090519041) #14, !srcloc !47
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %852) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %856 = icmp eq i32 %855, 0
  br i1 %856, label %857, label %864

857:                                              ; preds = %851
  %858 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %674) #17, !srcloc !16
  %859 = and i32 %858, -13
  %860 = or i32 %859, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %860) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %861 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %692, i32 %763, i32 -1090519041) #14, !srcloc !48
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %858) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %862 = icmp eq i32 %861, 0
  %863 = select i1 %862, i32 0, i32 -14
  br label %864

864:                                              ; preds = %857, %851, %843, %835, %828, %820, %812, %805, %798, %746, %744, %703, %691, %682, %672, %669
  %865 = phi i32 [ -22, %669 ], [ -14, %691 ], [ -14, %682 ], [ -14, %672 ], [ %704, %703 ], [ -14, %851 ], [ -14, %843 ], [ -14, %835 ], [ -14, %828 ], [ -14, %820 ], [ -14, %812 ], [ -14, %805 ], [ -14, %798 ], [ %863, %857 ], [ %737, %744 ], [ %737, %746 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10)
  br label %1464

866:                                              ; preds = %37
  %867 = load ptr, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %11) #14
  %868 = tail call ptr @llvm.thread.pointer() #14
  %869 = getelementptr inbounds %struct.thread_info, ptr %868, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %11, i8 0, i64 136, i1 false) #14
  %870 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %869) #17, !srcloc !16
  %871 = and i32 %870, -13
  %872 = or i32 %871, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %872) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %873 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %21, i32 -1090519041) #14, !srcloc !49
  %874 = extractvalue { i32, i32 } %873, 0
  %875 = extractvalue { i32, i32 } %873, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %870) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  store i32 %875, ptr %11, align 8
  %876 = icmp eq i32 %874, 0
  br i1 %876, label %877, label %996

877:                                              ; preds = %866
  %878 = getelementptr inbounds %struct.snd_pcm_sync_ptr, ptr %11, i32 0, i32 3
  %879 = getelementptr inbounds %struct.snd_pcm_sync_ptr, ptr %21, i32 0, i32 3
  %880 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %879, i32 12, i32 -1090519040) #16, !srcloc !50
  %881 = extractvalue { i32, i32 } %880, 0
  %882 = icmp eq i32 %881, 0
  br i1 %882, label %883, label %889, !prof !25

883:                                              ; preds = %877
  %884 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %869) #17, !srcloc !16
  %885 = and i32 %884, -13
  %886 = or i32 %885, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %886) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %887 = call i32 @arm_copy_from_user(ptr noundef %878, ptr noundef %879, i32 noundef 12) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %884) #14, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %888 = icmp eq i32 %887, 0
  br i1 %888, label %893, label %889, !prof !25

889:                                              ; preds = %883, %877
  %890 = phi i32 [ %887, %883 ], [ 12, %877 ]
  %891 = sub i32 12, %890
  %892 = getelementptr i8, ptr %878, i32 %891
  call void @llvm.memset.p0.i32(ptr align 1 %892, i8 0, i32 %890, i1 false) #14
  br label %996

893:                                              ; preds = %883
  %894 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %867, i32 0, i32 37
  %895 = load ptr, ptr %894, align 4
  %896 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %867, i32 0, i32 38
  %897 = load ptr, ptr %896, align 8
  %898 = load i32, ptr %11, align 8
  %899 = and i32 %898, 1
  %900 = icmp eq i32 %899, 0
  br i1 %900, label %904, label %901

901:                                              ; preds = %893
  %902 = call fastcc i32 @snd_pcm_delay(ptr noundef nonnull %20, ptr noundef null) #14
  %903 = icmp slt i32 %902, 0
  br i1 %903, label %996, label %904

904:                                              ; preds = %901, %893
  %905 = load ptr, ptr %20, align 4
  %906 = getelementptr inbounds %struct.snd_pcm, ptr %905, i32 0, i32 14
  %907 = load i8, ptr %906, align 1, !range !8
  %908 = icmp eq i8 %907, 0
  br i1 %908, label %911, label %909

909:                                              ; preds = %904
  %910 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 17, i32 1
  call void @mutex_lock(ptr noundef %910) #14
  br label %913

911:                                              ; preds = %904
  %912 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 17
  call void @_raw_spin_lock_irq(ptr noundef %912) #14
  br label %913

913:                                              ; preds = %911, %909
  %914 = load i32, ptr %11, align 8
  %915 = and i32 %914, 2
  %916 = icmp eq i32 %915, 0
  br i1 %916, label %917, label %934

917:                                              ; preds = %913
  %918 = load i32, ptr %878, align 8
  %919 = call i32 @pcm_lib_apply_appl_ptr(ptr noundef nonnull %20, i32 noundef %918) #14
  %920 = icmp slt i32 %919, 0
  br i1 %920, label %923, label %921

921:                                              ; preds = %917
  %922 = load i32, ptr %11, align 8
  br label %937

923:                                              ; preds = %917
  %924 = load ptr, ptr %20, align 4
  %925 = getelementptr inbounds %struct.snd_pcm, ptr %924, i32 0, i32 14
  %926 = load i8, ptr %925, align 1, !range !8
  %927 = icmp eq i8 %926, 0
  br i1 %927, label %930, label %928

928:                                              ; preds = %923
  %929 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 17, i32 1
  call void @mutex_unlock(ptr noundef %929) #14
  br label %996

930:                                              ; preds = %923
  %931 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 17
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  %932 = load i16, ptr %931, align 4
  %933 = add i16 %932, 1
  store i16 %933, ptr %931, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !11
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  br label %996

934:                                              ; preds = %913
  %935 = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %897, i32 0, i32 1
  %936 = load volatile i32, ptr %935, align 4
  store i32 %936, ptr %878, align 8
  br label %937

937:                                              ; preds = %934, %921
  %938 = phi i32 [ %922, %921 ], [ %914, %934 ]
  %939 = and i32 %938, 4
  %940 = icmp eq i32 %939, 0
  br i1 %940, label %941, label %945

941:                                              ; preds = %937
  %942 = getelementptr inbounds %struct.snd_pcm_sync_ptr, ptr %11, i32 0, i32 3, i32 0, i32 4
  %943 = load i32, ptr %942, align 4
  %944 = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %897, i32 0, i32 4
  store volatile i32 %943, ptr %944, align 4
  br label %949

945:                                              ; preds = %937
  %946 = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %897, i32 0, i32 4
  %947 = load volatile i32, ptr %946, align 4
  %948 = getelementptr inbounds %struct.snd_pcm_sync_ptr, ptr %11, i32 0, i32 3, i32 0, i32 4
  store i32 %947, ptr %948, align 4
  br label %949

949:                                              ; preds = %945, %941
  %950 = load volatile i32, ptr %895, align 8
  %951 = getelementptr inbounds %struct.snd_pcm_sync_ptr, ptr %11, i32 0, i32 2
  store i32 %950, ptr %951, align 8
  %952 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %895, i32 0, i32 3
  %953 = load volatile i32, ptr %952, align 8
  %954 = getelementptr inbounds %struct.snd_pcm_sync_ptr, ptr %11, i32 0, i32 2, i32 0, i32 3
  store i32 %953, ptr %954, align 8
  %955 = getelementptr inbounds %struct.snd_pcm_sync_ptr, ptr %11, i32 0, i32 2, i32 0, i32 5
  %956 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %895, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %955, ptr align 8 %956, i32 16, i1 true) #14
  %957 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %895, i32 0, i32 6
  %958 = load volatile i32, ptr %957, align 8
  %959 = getelementptr inbounds %struct.snd_pcm_sync_ptr, ptr %11, i32 0, i32 2, i32 0, i32 6
  store i32 %958, ptr %959, align 8
  %960 = getelementptr inbounds %struct.snd_pcm_sync_ptr, ptr %11, i32 0, i32 2, i32 0, i32 8
  %961 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %895, i32 0, i32 8
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %960, ptr align 8 %961, i32 16, i1 true) #14
  %962 = load ptr, ptr %20, align 4
  %963 = getelementptr inbounds %struct.snd_pcm, ptr %962, i32 0, i32 14
  %964 = load i8, ptr %963, align 1, !range !8
  %965 = icmp eq i8 %964, 0
  br i1 %965, label %968, label %966

966:                                              ; preds = %949
  %967 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 17, i32 1
  call void @mutex_unlock(ptr noundef %967) #14
  br label %972

968:                                              ; preds = %949
  %969 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 17
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  %970 = load i16, ptr %969, align 4
  %971 = add i16 %970, 1
  store i16 %971, ptr %969, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !11
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  br label %972

972:                                              ; preds = %968, %966
  %973 = load i32, ptr %11, align 8
  %974 = and i32 %973, 2
  %975 = icmp eq i32 %974, 0
  br i1 %975, label %976, label %985

976:                                              ; preds = %972
  %977 = load ptr, ptr %24, align 4
  %978 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %977, i32 0, i32 23
  %979 = load i32, ptr %978, align 8
  %980 = and i32 %979, 268435456
  %981 = icmp eq i32 %980, 0
  br i1 %981, label %985, label %982

982:                                              ; preds = %976
  %983 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %977, i32 0, i32 53
  %984 = load ptr, ptr %983, align 8
  call void @snd_dma_buffer_sync(ptr noundef %984, i32 noundef 1) #14
  br label %985

985:                                              ; preds = %982, %976, %972
  %986 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %21, i32 136, i32 -1090519040) #16, !srcloc !15
  %987 = extractvalue { i32, i32 } %986, 0
  %988 = icmp eq i32 %987, 0
  br i1 %988, label %989, label %996

989:                                              ; preds = %985
  %990 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %869) #17, !srcloc !16
  %991 = and i32 %990, -13
  %992 = or i32 %991, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %992) #14, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %993 = call i32 @arm_copy_to_user(ptr noundef %21, ptr noundef nonnull %11, i32 noundef 136) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %990) #14, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %994 = icmp eq i32 %993, 0
  %995 = select i1 %994, i32 0, i32 -14
  br label %996

996:                                              ; preds = %989, %985, %930, %928, %901, %889, %866
  %997 = phi i32 [ -14, %866 ], [ %902, %901 ], [ %919, %928 ], [ %919, %930 ], [ -14, %889 ], [ -14, %985 ], [ %995, %989 ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %11) #14
  br label %1464

998:                                              ; preds = %37
  %999 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %1000 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %999, i32 noundef 3264, i32 noundef 604) #15
  %1001 = icmp eq ptr %1000, null
  br i1 %1001, label %1464, label %1002

1002:                                             ; preds = %998
  %1003 = tail call ptr @memdup_user(ptr noundef %21, i32 noundef 252) #14
  %1004 = icmp ugt ptr %1003, inttoptr (i32 -4096 to ptr)
  br i1 %1004, label %1005, label %1007

1005:                                             ; preds = %1002
  %1006 = ptrtoint ptr %1003 to i32
  br label %1090

1007:                                             ; preds = %1002
  %1008 = getelementptr inbounds i8, ptr %1000, i32 8
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(604) %1008, i8 0, i32 596, i1 false) #14
  %1009 = load i32, ptr %1003, align 4
  store i32 %1009, ptr %1000, align 8
  %1010 = getelementptr %struct.snd_pcm_hw_params_old, ptr %1003, i32 0, i32 1, i32 0
  %1011 = load i32, ptr %1010, align 4
  %1012 = getelementptr %struct.snd_pcm_hw_params, ptr %1000, i32 0, i32 1, i32 0
  store i32 %1011, ptr %1012, align 4
  %1013 = getelementptr %struct.snd_pcm_hw_params_old, ptr %1003, i32 0, i32 1, i32 1
  %1014 = load i32, ptr %1013, align 4
  %1015 = getelementptr %struct.snd_pcm_hw_params, ptr %1000, i32 0, i32 1, i32 1
  store i32 %1014, ptr %1015, align 4
  %1016 = getelementptr %struct.snd_pcm_hw_params_old, ptr %1003, i32 0, i32 1, i32 2
  %1017 = load i32, ptr %1016, align 4
  %1018 = getelementptr %struct.snd_pcm_hw_params, ptr %1000, i32 0, i32 1, i32 2
  store i32 %1017, ptr %1018, align 4
  %1019 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %1000, i32 0, i32 3
  %1020 = getelementptr inbounds %struct.snd_pcm_hw_params_old, ptr %1003, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(144) %1019, ptr noundef align 4 dereferenceable(144) %1020, i32 144, i1 false) #14
  %1021 = getelementptr inbounds %struct.snd_pcm_hw_params_old, ptr %1003, i32 0, i32 3
  %1022 = load i32, ptr %1021, align 4
  %1023 = and i32 %1022, 7
  %1024 = shl i32 %1022, 5
  %1025 = and i32 %1024, -256
  %1026 = or i32 %1025, %1023
  %1027 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %1000, i32 0, i32 5
  store i32 %1026, ptr %1027, align 8
  %1028 = getelementptr inbounds %struct.snd_pcm_hw_params_old, ptr %1003, i32 0, i32 4
  %1029 = load i32, ptr %1028, align 4
  %1030 = and i32 %1029, 7
  %1031 = shl i32 %1029, 5
  %1032 = and i32 %1031, -256
  %1033 = or i32 %1032, %1030
  %1034 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %1000, i32 0, i32 6
  store i32 %1033, ptr %1034, align 4
  %1035 = getelementptr inbounds %struct.snd_pcm_hw_params_old, ptr %1003, i32 0, i32 5
  %1036 = load i32, ptr %1035, align 4
  %1037 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %1000, i32 0, i32 7
  store i32 %1036, ptr %1037, align 8
  %1038 = getelementptr inbounds %struct.snd_pcm_hw_params_old, ptr %1003, i32 0, i32 6
  %1039 = load i32, ptr %1038, align 4
  %1040 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %1000, i32 0, i32 8
  store i32 %1039, ptr %1040, align 4
  %1041 = getelementptr inbounds %struct.snd_pcm_hw_params_old, ptr %1003, i32 0, i32 7
  %1042 = load i32, ptr %1041, align 4
  %1043 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %1000, i32 0, i32 9
  store i32 %1042, ptr %1043, align 8
  %1044 = getelementptr inbounds %struct.snd_pcm_hw_params_old, ptr %1003, i32 0, i32 8
  %1045 = load i32, ptr %1044, align 4
  %1046 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %1000, i32 0, i32 10
  store i32 %1045, ptr %1046, align 4
  %1047 = getelementptr inbounds %struct.snd_pcm_hw_params_old, ptr %1003, i32 0, i32 9
  %1048 = load i32, ptr %1047, align 4
  %1049 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %1000, i32 0, i32 11
  store i32 %1048, ptr %1049, align 8
  %1050 = tail call i32 @snd_pcm_hw_refine(ptr noundef nonnull %20, ptr noundef nonnull %1000) #14
  %1051 = icmp slt i32 %1050, 0
  br i1 %1051, label %1088, label %1052

1052:                                             ; preds = %1007
  %1053 = tail call fastcc i32 @fixup_unreferenced_params(ptr noundef nonnull %20, ptr noundef nonnull %1000) #14
  %1054 = icmp slt i32 %1053, 0
  br i1 %1054, label %1088, label %1055

1055:                                             ; preds = %1052
  %1056 = getelementptr inbounds i8, ptr %1003, i32 188
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(252) %1056, i8 0, i32 64, i1 false) #14
  %1057 = load i32, ptr %1000, align 8
  store i32 %1057, ptr %1003, align 4
  %1058 = load i32, ptr %1012, align 4
  store i32 %1058, ptr %1010, align 4
  %1059 = load i32, ptr %1015, align 4
  store i32 %1059, ptr %1013, align 4
  %1060 = load i32, ptr %1018, align 4
  store i32 %1060, ptr %1016, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(144) %1020, ptr noundef align 4 dereferenceable(144) %1019, i32 144, i1 false) #14
  %1061 = load i32, ptr %1027, align 8
  %1062 = and i32 %1061, 7
  %1063 = lshr i32 %1061, 5
  %1064 = and i32 %1063, 134217720
  %1065 = or i32 %1064, %1062
  store i32 %1065, ptr %1021, align 4
  %1066 = load i32, ptr %1034, align 4
  %1067 = and i32 %1066, 7
  %1068 = lshr i32 %1066, 5
  %1069 = and i32 %1068, 134217720
  %1070 = or i32 %1069, %1067
  store i32 %1070, ptr %1028, align 4
  %1071 = load i32, ptr %1037, align 8
  store i32 %1071, ptr %1035, align 4
  %1072 = load i32, ptr %1040, align 4
  store i32 %1072, ptr %1038, align 4
  %1073 = load i32, ptr %1043, align 8
  store i32 %1073, ptr %1041, align 4
  %1074 = load i32, ptr %1046, align 4
  store i32 %1074, ptr %1044, align 4
  %1075 = load i32, ptr %1049, align 8
  store i32 %1075, ptr %1047, align 4
  %1076 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %21, i32 252, i32 -1090519040) #16, !srcloc !15
  %1077 = extractvalue { i32, i32 } %1076, 0
  %1078 = icmp eq i32 %1077, 0
  br i1 %1078, label %1079, label %1088

1079:                                             ; preds = %1055
  %1080 = tail call ptr @llvm.thread.pointer() #14
  %1081 = getelementptr inbounds %struct.thread_info, ptr %1080, i32 0, i32 3
  %1082 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %1081) #17, !srcloc !16
  %1083 = and i32 %1082, -13
  %1084 = or i32 %1083, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1084) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %1085 = tail call i32 @arm_copy_to_user(ptr noundef %21, ptr noundef %1003, i32 noundef 252) #14
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1082) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %1086 = icmp eq i32 %1085, 0
  %1087 = select i1 %1086, i32 0, i32 -14
  br label %1088

1088:                                             ; preds = %1079, %1055, %1052, %1007
  %1089 = phi i32 [ %1050, %1007 ], [ %1053, %1052 ], [ -14, %1055 ], [ %1087, %1079 ]
  tail call void @kfree(ptr noundef %1003) #14
  br label %1090

1090:                                             ; preds = %1088, %1005
  %1091 = phi i32 [ %1006, %1005 ], [ %1089, %1088 ]
  tail call void @kfree(ptr noundef nonnull %1000) #14
  br label %1464

1092:                                             ; preds = %37
  %1093 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %1094 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1093, i32 noundef 3264, i32 noundef 604) #15
  %1095 = icmp eq ptr %1094, null
  br i1 %1095, label %1464, label %1096

1096:                                             ; preds = %1092
  %1097 = tail call ptr @memdup_user(ptr noundef %21, i32 noundef 252) #14
  %1098 = icmp ugt ptr %1097, inttoptr (i32 -4096 to ptr)
  br i1 %1098, label %1099, label %1101

1099:                                             ; preds = %1096
  %1100 = ptrtoint ptr %1097 to i32
  br label %1181

1101:                                             ; preds = %1096
  %1102 = getelementptr inbounds i8, ptr %1094, i32 8
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(604) %1102, i8 0, i32 596, i1 false) #14
  %1103 = load i32, ptr %1097, align 4
  store i32 %1103, ptr %1094, align 8
  %1104 = getelementptr %struct.snd_pcm_hw_params_old, ptr %1097, i32 0, i32 1, i32 0
  %1105 = load i32, ptr %1104, align 4
  %1106 = getelementptr %struct.snd_pcm_hw_params, ptr %1094, i32 0, i32 1, i32 0
  store i32 %1105, ptr %1106, align 4
  %1107 = getelementptr %struct.snd_pcm_hw_params_old, ptr %1097, i32 0, i32 1, i32 1
  %1108 = load i32, ptr %1107, align 4
  %1109 = getelementptr %struct.snd_pcm_hw_params, ptr %1094, i32 0, i32 1, i32 1
  store i32 %1108, ptr %1109, align 4
  %1110 = getelementptr %struct.snd_pcm_hw_params_old, ptr %1097, i32 0, i32 1, i32 2
  %1111 = load i32, ptr %1110, align 4
  %1112 = getelementptr %struct.snd_pcm_hw_params, ptr %1094, i32 0, i32 1, i32 2
  store i32 %1111, ptr %1112, align 4
  %1113 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %1094, i32 0, i32 3
  %1114 = getelementptr inbounds %struct.snd_pcm_hw_params_old, ptr %1097, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(144) %1113, ptr noundef align 4 dereferenceable(144) %1114, i32 144, i1 false) #14
  %1115 = getelementptr inbounds %struct.snd_pcm_hw_params_old, ptr %1097, i32 0, i32 3
  %1116 = load i32, ptr %1115, align 4
  %1117 = and i32 %1116, 7
  %1118 = shl i32 %1116, 5
  %1119 = and i32 %1118, -256
  %1120 = or i32 %1119, %1117
  %1121 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %1094, i32 0, i32 5
  store i32 %1120, ptr %1121, align 8
  %1122 = getelementptr inbounds %struct.snd_pcm_hw_params_old, ptr %1097, i32 0, i32 4
  %1123 = load i32, ptr %1122, align 4
  %1124 = and i32 %1123, 7
  %1125 = shl i32 %1123, 5
  %1126 = and i32 %1125, -256
  %1127 = or i32 %1126, %1124
  %1128 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %1094, i32 0, i32 6
  store i32 %1127, ptr %1128, align 4
  %1129 = getelementptr inbounds %struct.snd_pcm_hw_params_old, ptr %1097, i32 0, i32 5
  %1130 = load i32, ptr %1129, align 4
  %1131 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %1094, i32 0, i32 7
  store i32 %1130, ptr %1131, align 8
  %1132 = getelementptr inbounds %struct.snd_pcm_hw_params_old, ptr %1097, i32 0, i32 6
  %1133 = load i32, ptr %1132, align 4
  %1134 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %1094, i32 0, i32 8
  store i32 %1133, ptr %1134, align 4
  %1135 = getelementptr inbounds %struct.snd_pcm_hw_params_old, ptr %1097, i32 0, i32 7
  %1136 = load i32, ptr %1135, align 4
  %1137 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %1094, i32 0, i32 9
  store i32 %1136, ptr %1137, align 8
  %1138 = getelementptr inbounds %struct.snd_pcm_hw_params_old, ptr %1097, i32 0, i32 8
  %1139 = load i32, ptr %1138, align 4
  %1140 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %1094, i32 0, i32 10
  store i32 %1139, ptr %1140, align 4
  %1141 = getelementptr inbounds %struct.snd_pcm_hw_params_old, ptr %1097, i32 0, i32 9
  %1142 = load i32, ptr %1141, align 4
  %1143 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %1094, i32 0, i32 11
  store i32 %1142, ptr %1143, align 8
  %1144 = tail call fastcc i32 @snd_pcm_hw_params(ptr noundef nonnull %20, ptr noundef nonnull %1094) #14
  %1145 = icmp slt i32 %1144, 0
  br i1 %1145, label %1179, label %1146

1146:                                             ; preds = %1101
  %1147 = getelementptr inbounds i8, ptr %1097, i32 188
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(252) %1147, i8 0, i32 64, i1 false) #14
  %1148 = load i32, ptr %1094, align 8
  store i32 %1148, ptr %1097, align 4
  %1149 = load i32, ptr %1106, align 4
  store i32 %1149, ptr %1104, align 4
  %1150 = load i32, ptr %1109, align 4
  store i32 %1150, ptr %1107, align 4
  %1151 = load i32, ptr %1112, align 4
  store i32 %1151, ptr %1110, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(144) %1114, ptr noundef align 4 dereferenceable(144) %1113, i32 144, i1 false) #14
  %1152 = load i32, ptr %1121, align 8
  %1153 = and i32 %1152, 7
  %1154 = lshr i32 %1152, 5
  %1155 = and i32 %1154, 134217720
  %1156 = or i32 %1155, %1153
  store i32 %1156, ptr %1115, align 4
  %1157 = load i32, ptr %1128, align 4
  %1158 = and i32 %1157, 7
  %1159 = lshr i32 %1157, 5
  %1160 = and i32 %1159, 134217720
  %1161 = or i32 %1160, %1158
  store i32 %1161, ptr %1122, align 4
  %1162 = load i32, ptr %1131, align 8
  store i32 %1162, ptr %1129, align 4
  %1163 = load i32, ptr %1134, align 4
  store i32 %1163, ptr %1132, align 4
  %1164 = load i32, ptr %1137, align 8
  store i32 %1164, ptr %1135, align 4
  %1165 = load i32, ptr %1140, align 4
  store i32 %1165, ptr %1138, align 4
  %1166 = load i32, ptr %1143, align 8
  store i32 %1166, ptr %1141, align 4
  %1167 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %21, i32 252, i32 -1090519040) #16, !srcloc !15
  %1168 = extractvalue { i32, i32 } %1167, 0
  %1169 = icmp eq i32 %1168, 0
  br i1 %1169, label %1170, label %1179

1170:                                             ; preds = %1146
  %1171 = tail call ptr @llvm.thread.pointer() #14
  %1172 = getelementptr inbounds %struct.thread_info, ptr %1171, i32 0, i32 3
  %1173 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %1172) #17, !srcloc !16
  %1174 = and i32 %1173, -13
  %1175 = or i32 %1174, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1175) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %1176 = tail call i32 @arm_copy_to_user(ptr noundef %21, ptr noundef %1097, i32 noundef 252) #14
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1173) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %1177 = icmp eq i32 %1176, 0
  %1178 = select i1 %1177, i32 0, i32 -14
  br label %1179

1179:                                             ; preds = %1170, %1146, %1101
  %1180 = phi i32 [ %1144, %1101 ], [ -14, %1146 ], [ %1178, %1170 ]
  tail call void @kfree(ptr noundef %1097) #14
  br label %1181

1181:                                             ; preds = %1179, %1099
  %1182 = phi i32 [ %1100, %1099 ], [ %1180, %1179 ]
  tail call void @kfree(ptr noundef nonnull %1094) #14
  br label %1464

1183:                                             ; preds = %37
  %1184 = tail call fastcc i32 @snd_pcm_drain(ptr noundef nonnull %20, ptr noundef %0) #14
  br label %1464

1185:                                             ; preds = %37
  %1186 = tail call fastcc i32 @snd_pcm_drop(ptr noundef nonnull %20) #14
  br label %1464

1187:                                             ; preds = %37
  %1188 = icmp ne i32 %2, 0
  %1189 = zext i1 %1188 to i32
  %1190 = load ptr, ptr %20, align 4
  %1191 = getelementptr inbounds %struct.snd_pcm, ptr %1190, i32 0, i32 14
  %1192 = load i8, ptr %1191, align 1, !range !8
  %1193 = icmp eq i8 %1192, 0
  br i1 %1193, label %1196, label %1194

1194:                                             ; preds = %1187
  %1195 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 17, i32 1
  tail call void @mutex_lock(ptr noundef %1195) #14
  br label %1198

1196:                                             ; preds = %1187
  %1197 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 17
  tail call void @_raw_spin_lock_irq(ptr noundef %1197) #14
  br label %1198

1198:                                             ; preds = %1196, %1194
  %1199 = tail call fastcc i32 @snd_pcm_action(ptr noundef nonnull @snd_pcm_action_pause, ptr noundef nonnull %20, i32 noundef %1189) #14
  %1200 = load ptr, ptr %20, align 4
  %1201 = getelementptr inbounds %struct.snd_pcm, ptr %1200, i32 0, i32 14
  %1202 = load i8, ptr %1201, align 1, !range !8
  %1203 = icmp eq i8 %1202, 0
  br i1 %1203, label %1206, label %1204

1204:                                             ; preds = %1198
  %1205 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 17, i32 1
  tail call void @mutex_unlock(ptr noundef %1205) #14
  br label %1464

1206:                                             ; preds = %1198
  %1207 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  %1208 = load i16, ptr %1207, align 4
  %1209 = add i16 %1208, 1
  store i16 %1209, ptr %1207, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  br label %1464

1210:                                             ; preds = %37, %37
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %12, i8 0, i32 12, i1 false) #14, !annotation !20
  %1211 = load ptr, ptr %24, align 4
  %1212 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1211, i32 0, i32 37
  %1213 = load ptr, ptr %1212, align 4
  %1214 = load i32, ptr %1213, align 8
  %1215 = icmp eq i32 %1214, 0
  br i1 %1215, label %1251, label %1216

1216:                                             ; preds = %1210
  %1217 = tail call ptr @llvm.thread.pointer() #14
  %1218 = getelementptr inbounds %struct.thread_info, ptr %1217, i32 0, i32 3
  %1219 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %1218) #17, !srcloc !16
  %1220 = and i32 %1219, -13
  %1221 = or i32 %1220, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1221) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %1222 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %21, i32 0, i32 -1090519041) #14, !srcloc !51
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1219) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %1223 = icmp eq i32 %1222, 0
  br i1 %1223, label %1224, label %1251

1224:                                             ; preds = %1216
  %1225 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %21, i32 12, i32 -1090519040) #16, !srcloc !50
  %1226 = extractvalue { i32, i32 } %1225, 0
  %1227 = icmp eq i32 %1226, 0
  br i1 %1227, label %1228, label %1234, !prof !25

1228:                                             ; preds = %1224
  %1229 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %1218) #17, !srcloc !16
  %1230 = and i32 %1229, -13
  %1231 = or i32 %1230, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1231) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %1232 = call i32 @arm_copy_from_user(ptr noundef nonnull %12, ptr noundef %21, i32 noundef 12) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1229) #14, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %1233 = icmp eq i32 %1232, 0
  br i1 %1233, label %1238, label %1234, !prof !25

1234:                                             ; preds = %1228, %1224
  %1235 = phi i32 [ %1232, %1228 ], [ 12, %1224 ]
  %1236 = sub i32 12, %1235
  %1237 = getelementptr i8, ptr %12, i32 %1236
  call void @llvm.memset.p0.i32(ptr align 1 %1237, i8 0, i32 %1235, i1 false) #14
  br label %1251

1238:                                             ; preds = %1228
  %1239 = getelementptr inbounds %struct.snd_xferi, ptr %12, i32 0, i32 1
  %1240 = load ptr, ptr %1239, align 4
  %1241 = getelementptr inbounds %struct.snd_xferi, ptr %12, i32 0, i32 2
  %1242 = load i32, ptr %1241, align 4
  %1243 = call i32 @__snd_pcm_lib_xfer(ptr noundef nonnull %20, ptr noundef %1240, i1 noundef zeroext true, i32 noundef %1242, i1 noundef zeroext false) #14
  %1244 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %1218) #17, !srcloc !16
  %1245 = and i32 %1244, -13
  %1246 = or i32 %1245, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1246) #14, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %1247 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %21, i32 %1243, i32 -1090519041) #14, !srcloc !52
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1244) #14, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %1248 = icmp eq i32 %1247, 0
  %1249 = call i32 @llvm.smin.i32(i32 %1243, i32 0) #14
  %1250 = select i1 %1248, i32 %1249, i32 -14
  br label %1251

1251:                                             ; preds = %1238, %1234, %1216, %1210
  %1252 = phi i32 [ -77, %1210 ], [ -14, %1216 ], [ %1250, %1238 ], [ -14, %1234 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #14
  br label %1464

1253:                                             ; preds = %37, %37
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %13, i8 0, i32 12, i1 false) #14, !annotation !20
  %1254 = load ptr, ptr %24, align 4
  %1255 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1254, i32 0, i32 37
  %1256 = load ptr, ptr %1255, align 4
  %1257 = load i32, ptr %1256, align 8
  %1258 = icmp eq i32 %1257, 0
  br i1 %1258, label %1305, label %1259

1259:                                             ; preds = %1253
  %1260 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1254, i32 0, i32 15
  %1261 = load i32, ptr %1260, align 8
  %1262 = icmp ugt i32 %1261, 128
  br i1 %1262, label %1305, label %1263

1263:                                             ; preds = %1259
  %1264 = tail call ptr @llvm.thread.pointer() #14
  %1265 = getelementptr inbounds %struct.thread_info, ptr %1264, i32 0, i32 3
  %1266 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %1265) #17, !srcloc !16
  %1267 = and i32 %1266, -13
  %1268 = or i32 %1267, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1268) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %1269 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %21, i32 0, i32 -1090519041) #14, !srcloc !53
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1266) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %1270 = icmp eq i32 %1269, 0
  br i1 %1270, label %1271, label %1305

1271:                                             ; preds = %1263
  %1272 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %21, i32 12, i32 -1090519040) #16, !srcloc !50
  %1273 = extractvalue { i32, i32 } %1272, 0
  %1274 = icmp eq i32 %1273, 0
  br i1 %1274, label %1275, label %1281, !prof !25

1275:                                             ; preds = %1271
  %1276 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %1265) #17, !srcloc !16
  %1277 = and i32 %1276, -13
  %1278 = or i32 %1277, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1278) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %1279 = call i32 @arm_copy_from_user(ptr noundef nonnull %13, ptr noundef %21, i32 noundef 12) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1276) #14, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %1280 = icmp eq i32 %1279, 0
  br i1 %1280, label %1285, label %1281, !prof !25

1281:                                             ; preds = %1275, %1271
  %1282 = phi i32 [ %1279, %1275 ], [ 12, %1271 ]
  %1283 = sub i32 12, %1282
  %1284 = getelementptr i8, ptr %13, i32 %1283
  call void @llvm.memset.p0.i32(ptr align 1 %1284, i8 0, i32 %1282, i1 false) #14
  br label %1305

1285:                                             ; preds = %1275
  %1286 = getelementptr inbounds %struct.snd_xfern, ptr %13, i32 0, i32 1
  %1287 = load ptr, ptr %1286, align 4
  %1288 = load i32, ptr %1260, align 8
  %1289 = shl i32 %1288, 2
  %1290 = call ptr @memdup_user(ptr noundef %1287, i32 noundef %1289) #14
  %1291 = icmp ugt ptr %1290, inttoptr (i32 -4096 to ptr)
  br i1 %1291, label %1292, label %1294

1292:                                             ; preds = %1285
  %1293 = ptrtoint ptr %1290 to i32
  br label %1305

1294:                                             ; preds = %1285
  %1295 = getelementptr inbounds %struct.snd_xfern, ptr %13, i32 0, i32 2
  %1296 = load i32, ptr %1295, align 4
  %1297 = call i32 @__snd_pcm_lib_xfer(ptr noundef nonnull %20, ptr noundef %1290, i1 noundef zeroext false, i32 noundef %1296, i1 noundef zeroext false) #14
  call void @kfree(ptr noundef %1290) #14
  %1298 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %1265) #17, !srcloc !16
  %1299 = and i32 %1298, -13
  %1300 = or i32 %1299, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1300) #14, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %1301 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %21, i32 %1297, i32 -1090519041) #14, !srcloc !54
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1298) #14, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %1302 = icmp eq i32 %1301, 0
  %1303 = call i32 @llvm.smin.i32(i32 %1297, i32 0) #14
  %1304 = select i1 %1302, i32 %1303, i32 -14
  br label %1305

1305:                                             ; preds = %1294, %1292, %1281, %1263, %1259, %1253
  %1306 = phi i32 [ %1293, %1292 ], [ -77, %1253 ], [ -22, %1259 ], [ -14, %1263 ], [ %1304, %1294 ], [ -14, %1281 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #14
  br label %1464

1307:                                             ; preds = %37
  %1308 = tail call ptr @llvm.thread.pointer() #14
  %1309 = getelementptr inbounds %struct.thread_info, ptr %1308, i32 0, i32 3
  %1310 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %1309) #17, !srcloc !16
  %1311 = and i32 %1310, -13
  %1312 = or i32 %1311, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1312) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %1313 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %21, i32 -1090519041) #14, !srcloc !55
  %1314 = extractvalue { i32, i32 } %1313, 0
  %1315 = extractvalue { i32, i32 } %1313, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1310) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %1316 = icmp eq i32 %1314, 0
  br i1 %1316, label %1317, label %1464

1317:                                             ; preds = %1307
  %1318 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %1309) #17, !srcloc !16
  %1319 = and i32 %1318, -13
  %1320 = or i32 %1319, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1320) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %1321 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %21, i32 0, i32 -1090519041) #14, !srcloc !56
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1318) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %1322 = icmp eq i32 %1321, 0
  br i1 %1322, label %1323, label %1464

1323:                                             ; preds = %1317
  %1324 = icmp eq i32 %1315, 0
  br i1 %1324, label %1429, label %1325

1325:                                             ; preds = %1323
  %1326 = load ptr, ptr %20, align 4
  %1327 = getelementptr inbounds %struct.snd_pcm, ptr %1326, i32 0, i32 14
  %1328 = load i8, ptr %1327, align 1, !range !8
  %1329 = icmp eq i8 %1328, 0
  br i1 %1329, label %1332, label %1330

1330:                                             ; preds = %1325
  %1331 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 17, i32 1
  tail call void @mutex_lock(ptr noundef %1331) #14
  br label %1334

1332:                                             ; preds = %1325
  %1333 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 17
  tail call void @_raw_spin_lock_irq(ptr noundef %1333) #14
  br label %1334

1334:                                             ; preds = %1332, %1330
  %1335 = load ptr, ptr %24, align 4
  %1336 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1335, i32 0, i32 37
  %1337 = load ptr, ptr %1336, align 4
  %1338 = load i32, ptr %1337, align 8
  switch i32 %1338, label %1344 [
    i32 5, label %1339
    i32 3, label %1345
    i32 2, label %1352
    i32 6, label %1352
    i32 7, label %1406
    i32 4, label %1343
  ]

1339:                                             ; preds = %1334
  %1340 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 5
  %1341 = load i32, ptr %1340, align 4
  %1342 = icmp eq i32 %1341, 1
  br i1 %1342, label %1406, label %1345

1343:                                             ; preds = %1334
  br label %1406

1344:                                             ; preds = %1334
  br label %1406

1345:                                             ; preds = %1339, %1334
  %1346 = tail call i32 @snd_pcm_update_hw_ptr(ptr noundef nonnull %20) #14
  %1347 = icmp eq i32 %1346, 0
  br i1 %1347, label %1348, label %1406

1348:                                             ; preds = %1345
  %1349 = load ptr, ptr %24, align 4
  %1350 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1349, i32 0, i32 37
  %1351 = load ptr, ptr %1350, align 4
  br label %1352

1352:                                             ; preds = %1348, %1334, %1334
  %1353 = phi ptr [ %1351, %1348 ], [ %1337, %1334 ], [ %1337, %1334 ]
  %1354 = phi ptr [ %1349, %1348 ], [ %1335, %1334 ], [ %1335, %1334 ]
  %1355 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 5
  %1356 = load i32, ptr %1355, align 4
  %1357 = icmp eq i32 %1356, 0
  %1358 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1354, i32 0, i32 18
  %1359 = load i32, ptr %1358, align 4
  %1360 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %1353, i32 0, i32 3
  %1361 = load i32, ptr %1360, align 8
  br i1 %1357, label %1362, label %1377

1362:                                             ; preds = %1352
  %1363 = add i32 %1361, %1359
  %1364 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1354, i32 0, i32 38
  %1365 = load ptr, ptr %1364, align 8
  %1366 = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %1365, i32 0, i32 1
  %1367 = load i32, ptr %1366, align 4
  %1368 = sub i32 %1363, %1367
  %1369 = icmp slt i32 %1368, 0
  %1370 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1354, i32 0, i32 33
  %1371 = load i32, ptr %1370, align 8
  %1372 = icmp ult i32 %1368, %1371
  %1373 = select i1 %1372, i32 0, i32 %1371
  %1374 = sub i32 0, %1373
  %1375 = select i1 %1369, i32 %1371, i32 %1374
  %1376 = add i32 %1375, %1368
  br label %1388

1377:                                             ; preds = %1352
  %1378 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1354, i32 0, i32 38
  %1379 = load ptr, ptr %1378, align 8
  %1380 = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %1379, i32 0, i32 1
  %1381 = load i32, ptr %1380, align 4
  %1382 = sub i32 %1361, %1381
  %1383 = icmp slt i32 %1382, 0
  br i1 %1383, label %1384, label %1388

1384:                                             ; preds = %1377
  %1385 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1354, i32 0, i32 33
  %1386 = load i32, ptr %1385, align 8
  %1387 = add i32 %1386, %1382
  br label %1388

1388:                                             ; preds = %1384, %1377, %1362
  %1389 = phi i32 [ %1367, %1362 ], [ %1381, %1384 ], [ %1381, %1377 ]
  %1390 = phi i32 [ %1376, %1362 ], [ %1387, %1384 ], [ %1382, %1377 ]
  %1391 = sub i32 %1359, %1390
  %1392 = icmp slt i32 %1391, 1
  br i1 %1392, label %1406, label %1393

1393:                                             ; preds = %1388
  %1394 = tail call i32 @llvm.umin.i32(i32 %1315, i32 %1391) #14
  %1395 = sub i32 %1389, %1394
  %1396 = icmp slt i32 %1395, 0
  br i1 %1396, label %1397, label %1401

1397:                                             ; preds = %1393
  %1398 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1354, i32 0, i32 33
  %1399 = load i32, ptr %1398, align 8
  %1400 = add i32 %1399, %1395
  br label %1401

1401:                                             ; preds = %1397, %1393
  %1402 = phi i32 [ %1400, %1397 ], [ %1395, %1393 ]
  %1403 = tail call i32 @pcm_lib_apply_appl_ptr(ptr noundef nonnull %20, i32 noundef %1402) #14
  %1404 = icmp slt i32 %1403, 0
  %1405 = select i1 %1404, i32 0, i32 %1394
  br label %1406

1406:                                             ; preds = %1401, %1388, %1345, %1344, %1343, %1339, %1334
  %1407 = phi i32 [ %1346, %1345 ], [ %1405, %1401 ], [ 0, %1388 ], [ -77, %1339 ], [ -32, %1343 ], [ -77, %1344 ], [ -86, %1334 ]
  %1408 = load ptr, ptr %20, align 4
  %1409 = getelementptr inbounds %struct.snd_pcm, ptr %1408, i32 0, i32 14
  %1410 = load i8, ptr %1409, align 1, !range !8
  %1411 = icmp eq i8 %1410, 0
  br i1 %1411, label %1414, label %1412

1412:                                             ; preds = %1406
  %1413 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 17, i32 1
  tail call void @mutex_unlock(ptr noundef %1413) #14
  br label %1418

1414:                                             ; preds = %1406
  %1415 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  %1416 = load i16, ptr %1415, align 4
  %1417 = add i16 %1416, 1
  store i16 %1417, ptr %1415, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  br label %1418

1418:                                             ; preds = %1414, %1412
  %1419 = icmp sgt i32 %1407, -1
  br i1 %1419, label %1420, label %1429

1420:                                             ; preds = %1418
  %1421 = load ptr, ptr %24, align 4
  %1422 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1421, i32 0, i32 23
  %1423 = load i32, ptr %1422, align 8
  %1424 = and i32 %1423, 268435456
  %1425 = icmp eq i32 %1424, 0
  br i1 %1425, label %1429, label %1426

1426:                                             ; preds = %1420
  %1427 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1421, i32 0, i32 53
  %1428 = load ptr, ptr %1427, align 8
  tail call void @snd_dma_buffer_sync(ptr noundef %1428, i32 noundef 1) #14
  br label %1429

1429:                                             ; preds = %1426, %1420, %1418, %1323
  %1430 = phi i32 [ 0, %1323 ], [ %1407, %1418 ], [ %1407, %1420 ], [ %1407, %1426 ]
  %1431 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %1309) #17, !srcloc !16
  %1432 = and i32 %1431, -13
  %1433 = or i32 %1432, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1433) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %1434 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %21, i32 %1430, i32 -1090519041) #14, !srcloc !57
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1431) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %1435 = icmp eq i32 %1434, 0
  %1436 = tail call i32 @llvm.smin.i32(i32 %1430, i32 0) #14
  %1437 = select i1 %1435, i32 %1436, i32 -14
  br label %1464

1438:                                             ; preds = %37
  %1439 = tail call ptr @llvm.thread.pointer() #14
  %1440 = getelementptr inbounds %struct.thread_info, ptr %1439, i32 0, i32 3
  %1441 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %1440) #17, !srcloc !16
  %1442 = and i32 %1441, -13
  %1443 = or i32 %1442, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1443) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %1444 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %21, i32 -1090519041) #14, !srcloc !58
  %1445 = extractvalue { i32, i32 } %1444, 0
  %1446 = extractvalue { i32, i32 } %1444, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1441) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %1447 = icmp eq i32 %1445, 0
  br i1 %1447, label %1448, label %1464

1448:                                             ; preds = %1438
  %1449 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %1440) #17, !srcloc !16
  %1450 = and i32 %1449, -13
  %1451 = or i32 %1450, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1451) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %1452 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %21, i32 0, i32 -1090519041) #14, !srcloc !59
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1449) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %1453 = icmp eq i32 %1452, 0
  br i1 %1453, label %1454, label %1464

1454:                                             ; preds = %1448
  %1455 = tail call fastcc i32 @snd_pcm_forward(ptr noundef nonnull %20, i32 noundef %1446) #14
  %1456 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %1440) #17, !srcloc !16
  %1457 = and i32 %1456, -13
  %1458 = or i32 %1457, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1458) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %1459 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %21, i32 %1455, i32 -1090519041) #14, !srcloc !60
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1456) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %1460 = icmp eq i32 %1459, 0
  %1461 = tail call i32 @llvm.smin.i32(i32 %1455, i32 0) #14
  %1462 = select i1 %1460, i32 %1461, i32 -14
  br label %1464

1463:                                             ; preds = %37
  br label %1464

1464:                                             ; preds = %1463, %1454, %1448, %1438, %1429, %1317, %1307, %1305, %1251, %1206, %1204, %1185, %1183, %1181, %1092, %1090, %998, %996, %864, %667, %652, %648, %646, %620, %618, %601, %600, %596, %441, %437, %435, %418, %359, %357, %280, %278, %262, %260, %258, %232, %161, %150, %148, %125, %123, %105, %100, %79, %64, %62, %60, %49, %47, %38, %37, %32, %27, %23, %17, %3
  %1465 = phi i32 [ -25, %3 ], [ -25, %1463 ], [ %1306, %1305 ], [ %1252, %1251 ], [ %1186, %1185 ], [ %1184, %1183 ], [ %997, %996 ], [ %865, %864 ], [ %668, %667 ], [ %653, %652 ], [ %602, %601 ], [ %419, %418 ], [ %360, %359 ], [ %358, %357 ], [ %281, %280 ], [ %279, %278 ], [ %263, %262 ], [ %261, %260 ], [ %259, %258 ], [ %48, %47 ], [ %46, %38 ], [ -6, %23 ], [ -77, %27 ], [ %35, %32 ], [ 0, %37 ], [ %75, %64 ], [ -6, %17 ], [ 0, %62 ], [ -14, %49 ], [ -22, %60 ], [ %80, %79 ], [ %101, %100 ], [ %106, %105 ], [ %124, %123 ], [ %198, %232 ], [ -6, %125 ], [ -77, %161 ], [ -77, %148 ], [ -77, %150 ], [ %430, %435 ], [ %430, %437 ], [ -77, %441 ], [ %597, %596 ], [ %597, %600 ], [ %613, %618 ], [ %613, %620 ], [ %641, %646 ], [ %641, %648 ], [ %1091, %1090 ], [ -12, %998 ], [ %1182, %1181 ], [ -12, %1092 ], [ %1199, %1204 ], [ %1199, %1206 ], [ -14, %1307 ], [ -14, %1317 ], [ %1437, %1429 ], [ -14, %1438 ], [ -14, %1448 ], [ %1462, %1454 ]
  ret i32 %1465
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_pcm_mmap(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.snd_pcm_substream, ptr %5, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %26, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 37
  %13 = load ptr, ptr %12, align 4
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %14, 8
  br i1 %15, label %26, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 13
  %18 = load i32, ptr %17, align 4
  %19 = lshr i32 %18, 12
  %20 = and i32 %19, 252
  %21 = shl i32 %18, 20
  %22 = or i32 %20, %21
  %23 = icmp eq i32 %22, 128
  br i1 %23, label %26, label %24

24:                                               ; preds = %16
  %25 = tail call i32 @snd_pcm_mmap_data(ptr noundef nonnull %5, ptr undef, ptr noundef %1)
  br label %26

26:                                               ; preds = %24, %16, %11, %7, %2
  %27 = phi i32 [ %25, %24 ], [ -6, %7 ], [ -77, %11 ], [ -6, %16 ], [ -6, %2 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_pcm_playback_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @nonseekable_open(ptr noundef %0, ptr noundef %1) #14
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 12
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 1048575
  %9 = tail call ptr @snd_lookup_minor_data(i32 noundef %8, i32 noundef 5) #14
  %10 = tail call fastcc i32 @snd_pcm_open(ptr noundef %1, ptr noundef %9, i32 noundef 0)
  %11 = icmp eq ptr %9, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = load ptr, ptr %9, align 8
  %14 = getelementptr inbounds %struct.snd_card, ptr %13, i32 0, i32 28
  tail call void @put_device(ptr noundef %14) #14
  br label %15

15:                                               ; preds = %12, %5, %2
  %16 = phi i32 [ %3, %2 ], [ %10, %12 ], [ %10, %5 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_pcm_release(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 4
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @snd_power_wait(ptr noundef %9) #14
  %11 = getelementptr inbounds %struct.snd_pcm, ptr %8, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %11) #14
  tail call void @snd_pcm_release_substream(ptr noundef nonnull %5)
  tail call void @kfree(ptr noundef %4) #14
  tail call void @mutex_unlock(ptr noundef %11) #14
  %12 = getelementptr inbounds %struct.snd_pcm, ptr %8, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %12, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  %13 = load ptr, ptr %8, align 8
  %14 = getelementptr inbounds %struct.snd_card, ptr %13, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  tail call void @module_put(ptr noundef %15) #14
  %16 = load ptr, ptr %8, align 8
  %17 = tail call i32 @snd_card_file_remove(ptr noundef %16, ptr noundef %1) #14
  br label %18

18:                                               ; preds = %7, %2
  %19 = phi i32 [ 0, %7 ], [ -6, %2 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_pcm_fasync(i32 noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.snd_pcm_substream, ptr %6, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %10, i32 0, i32 37
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr %14, align 8
  %16 = icmp eq i32 %15, 8
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %10, i32 0, i32 42
  %19 = tail call i32 @fasync_helper(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %18) #14
  br label %20

20:                                               ; preds = %17, %12, %8, %3
  %21 = phi i32 [ %19, %17 ], [ -6, %8 ], [ -77, %12 ], [ -6, %3 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_pcm_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %33, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.snd_pcm_substream, ptr %7, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %33, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 37
  %15 = load ptr, ptr %14, align 4
  %16 = load i32, ptr %15, align 8
  switch i32 %16, label %17 [
    i32 0, label %33
    i32 8, label %33
  ]

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 20
  %19 = load i32, ptr %18, align 4
  %20 = urem i32 %2, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = shl i32 %2, 3
  %24 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 21
  %25 = load i32, ptr %24, align 8
  %26 = udiv i32 %23, %25
  %27 = tail call i32 @__snd_pcm_lib_xfer(ptr noundef nonnull %7, ptr noundef %1, i1 noundef zeroext true, i32 noundef %26, i1 noundef zeroext false) #14
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load i32, ptr %24, align 8
  %31 = mul i32 %30, %27
  %32 = lshr i32 %31, 3
  br label %33

33:                                               ; preds = %29, %22, %17, %13, %13, %9, %4
  %34 = phi i32 [ -6, %9 ], [ -77, %13 ], [ -77, %13 ], [ -22, %17 ], [ %32, %29 ], [ %27, %22 ], [ -6, %4 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_pcm_readv(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %67, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.snd_pcm_substream, ptr %6, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %67, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %10, i32 0, i32 37
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr %14, align 8
  switch i32 %15, label %16 [
    i32 0, label %67
    i32 8, label %67
  ]

16:                                               ; preds = %12
  %17 = load i8, ptr %1, align 8
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %67

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 6
  %21 = load i32, ptr %20, align 8
  %22 = icmp ugt i32 %21, 1024
  br i1 %22, label %67, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %10, i32 0, i32 15
  %25 = load i32, ptr %24, align 8
  %26 = icmp eq i32 %21, %25
  br i1 %26, label %27, label %67

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.iovec, ptr %29, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %10, i32 0, i32 20
  %33 = load i32, ptr %32, align 4
  %34 = urem i32 %31, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %67

36:                                               ; preds = %27
  %37 = shl i32 %31, 3
  %38 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %10, i32 0, i32 22
  %39 = load i32, ptr %38, align 4
  %40 = udiv i32 %37, %39
  %41 = shl nuw nsw i32 %21, 2
  %42 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %41, i32 noundef 3264) #18
  %43 = icmp eq ptr %42, null
  br i1 %43, label %67, label %44

44:                                               ; preds = %36
  %45 = load i32, ptr %20, align 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr %28, align 4
  %49 = load i32, ptr %20, align 8
  br label %50

50:                                               ; preds = %50, %47
  %51 = phi i32 [ %55, %50 ], [ 0, %47 ]
  %52 = getelementptr %struct.iovec, ptr %48, i32 %51
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr ptr, ptr %42, i32 %51
  store ptr %53, ptr %54, align 4
  %55 = add nuw i32 %51, 1
  %56 = icmp ult i32 %55, %49
  br i1 %56, label %50, label %57

57:                                               ; preds = %50, %44
  %58 = tail call i32 @__snd_pcm_lib_xfer(ptr noundef nonnull %6, ptr noundef nonnull %42, i1 noundef zeroext false, i32 noundef %40, i1 noundef zeroext false) #14
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %10, i32 0, i32 21
  %62 = load i32, ptr %61, align 8
  %63 = mul i32 %62, %58
  %64 = lshr i32 %63, 3
  br label %65

65:                                               ; preds = %60, %57
  %66 = phi i32 [ %64, %60 ], [ %58, %57 ]
  tail call void @kfree(ptr noundef nonnull %42) #14
  br label %67

67:                                               ; preds = %65, %36, %27, %23, %19, %16, %12, %12, %8, %2
  %68 = phi i32 [ %66, %65 ], [ -6, %8 ], [ -77, %12 ], [ -77, %12 ], [ -22, %16 ], [ -22, %23 ], [ -22, %19 ], [ -22, %27 ], [ -12, %36 ], [ -6, %2 ]
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_pcm_capture_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @nonseekable_open(ptr noundef %0, ptr noundef %1) #14
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 12
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 1048575
  %9 = tail call ptr @snd_lookup_minor_data(i32 noundef %8, i32 noundef 6) #14
  %10 = tail call fastcc i32 @snd_pcm_open(ptr noundef %1, ptr noundef %9, i32 noundef 1)
  %11 = icmp eq ptr %9, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = load ptr, ptr %9, align 8
  %14 = getelementptr inbounds %struct.snd_card, ptr %13, i32 0, i32 28
  tail call void @put_device(ptr noundef %14) #14
  br label %15

15:                                               ; preds = %12, %5, %2
  %16 = phi i32 [ %3, %2 ], [ %10, %12 ], [ %10, %5 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_interval_refine(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_raw_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @snd_pcm_stream_group_ref(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.snd_pcm, ptr %2, i32 0, i32 14
  %4 = load i8, ptr %3, align 1, !range !8
  %5 = icmp eq i8 %4, 0
  %6 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 18
  %7 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17
  %8 = load ptr, ptr %6, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %81, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17, i32 1
  br label %12

12:                                               ; preds = %78, %10
  %13 = phi ptr [ %8, %10 ], [ %79, %78 ]
  %14 = getelementptr inbounds %struct.snd_pcm_group, ptr %13, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #14, !srcloc !22
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #14, !srcloc !35
  %16 = extractvalue { i32, i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18, !prof !19

18:                                               ; preds = %12
  %19 = add i32 %16, 1
  %20 = or i32 %19, %16
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %24, label %22, !prof !25

22:                                               ; preds = %18, %12
  %23 = phi i32 [ 2, %12 ], [ 1, %18 ]
  tail call void @refcount_warn_saturate(ptr noundef %14, i32 noundef %23) #14
  br label %24

24:                                               ; preds = %22, %18
  br i1 %5, label %28, label %25

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.snd_pcm_group, ptr %13, i32 0, i32 1
  %27 = tail call i32 @mutex_trylock(ptr noundef %26) #14
  br label %30

28:                                               ; preds = %24
  %29 = tail call i32 @_raw_spin_trylock(ptr noundef %13) #14
  br label %30

30:                                               ; preds = %28, %25
  %31 = phi i32 [ %27, %25 ], [ %29, %28 ]
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %81

33:                                               ; preds = %30
  %34 = load ptr, ptr %0, align 4
  %35 = getelementptr inbounds %struct.snd_pcm, ptr %34, i32 0, i32 14
  %36 = load i8, ptr %35, align 1, !range !8
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  tail call void @mutex_unlock(ptr noundef %11) #14
  br label %42

39:                                               ; preds = %33
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  %40 = load i16, ptr %7, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !12
  br label %42

42:                                               ; preds = %39, %38
  br i1 %5, label %45, label %43

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.snd_pcm_group, ptr %13, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %44) #14
  br label %46

45:                                               ; preds = %42
  tail call void @_raw_spin_lock(ptr noundef %13) #14
  br label %46

46:                                               ; preds = %45, %43
  %47 = load ptr, ptr %0, align 4
  %48 = getelementptr inbounds %struct.snd_pcm, ptr %47, i32 0, i32 14
  %49 = load i8, ptr %48, align 1, !range !8
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  tail call void @mutex_lock(ptr noundef %11) #14
  br label %53

52:                                               ; preds = %46
  tail call void @_raw_spin_lock(ptr noundef %7) #14
  br label %53

53:                                               ; preds = %52, %51
  %54 = load ptr, ptr %6, align 4
  %55 = icmp eq ptr %54, %13
  br i1 %55, label %81, label %56

56:                                               ; preds = %53
  %57 = icmp eq ptr %13, null
  br i1 %57, label %78, label %58

58:                                               ; preds = %56
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #14, !srcloc !22
  %59 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #14, !srcloc !23
  %60 = extractvalue { i32, i32, i32 } %59, 0
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !24
  br label %66

63:                                               ; preds = %58
  %64 = icmp sgt i32 %60, 0
  br i1 %64, label %66, label %65, !prof !25

65:                                               ; preds = %63
  tail call void @refcount_warn_saturate(ptr noundef %14, i32 noundef 3) #14
  br label %66

66:                                               ; preds = %65, %63, %62
  %67 = load ptr, ptr %0, align 4
  %68 = getelementptr inbounds %struct.snd_pcm, ptr %67, i32 0, i32 14
  %69 = load i8, ptr %68, align 1, !range !8
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.snd_pcm_group, ptr %13, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %72) #14
  br label %76

73:                                               ; preds = %66
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  %74 = load i16, ptr %13, align 4
  %75 = add i16 %74, 1
  store i16 %75, ptr %13, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !12
  br label %76

76:                                               ; preds = %73, %71
  br i1 %61, label %77, label %78

77:                                               ; preds = %76
  tail call void @kfree(ptr noundef nonnull %13) #14
  br label %78

78:                                               ; preds = %77, %76, %56
  %79 = load ptr, ptr %6, align 4
  %80 = icmp eq ptr %79, %7
  br i1 %80, label %81, label %12

81:                                               ; preds = %78, %53, %30, %1
  %82 = phi ptr [ null, %1 ], [ %13, %30 ], [ %13, %53 ], [ null, %78 ]
  ret ptr %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_pcm_action_group(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 18
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_pcm_group, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %19, label %10

10:                                               ; preds = %4
  %11 = xor i1 %3, true
  br label %27

12:                                               ; preds = %41
  %13 = load ptr, ptr %28, align 4
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr inbounds %struct.snd_pcm_group, ptr %14, i32 0, i32 2
  %16 = icmp eq ptr %13, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = load ptr, ptr %13, align 4
  br label %19

19:                                               ; preds = %17, %4
  %20 = phi ptr [ %6, %4 ], [ %14, %17 ]
  %21 = phi ptr [ %7, %4 ], [ %18, %17 ]
  %22 = phi i32 [ 0, %4 ], [ %43, %17 ]
  %23 = getelementptr inbounds %struct.snd_pcm_group, ptr %20, i32 0, i32 2
  %24 = icmp eq ptr %21, %23
  br i1 %24, label %50, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.action_ops, ptr %0, i32 0, i32 1
  br label %60

27:                                               ; preds = %12, %10
  %28 = phi ptr [ %8, %10 ], [ %13, %12 ]
  %29 = getelementptr i8, ptr %28, i32 -140
  %30 = icmp eq ptr %29, %1
  %31 = select i1 %11, i1 true, i1 %30
  br i1 %31, label %41, label %32

32:                                               ; preds = %27
  %33 = load ptr, ptr %29, align 4
  %34 = getelementptr inbounds %struct.snd_pcm, ptr %33, i32 0, i32 14
  %35 = load i8, ptr %34, align 1, !range !8
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = getelementptr i8, ptr %28, i32 12
  tail call void @mutex_lock(ptr noundef %38) #14
  br label %41

39:                                               ; preds = %32
  %40 = getelementptr i8, ptr %28, i32 8
  tail call void @_raw_spin_lock(ptr noundef %40) #14
  br label %41

41:                                               ; preds = %39, %37, %27
  %42 = load ptr, ptr %0, align 4
  %43 = tail call i32 %42(ptr noundef %29, i32 noundef %2) #14
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %104, label %12

45:                                               ; preds = %60
  %46 = load ptr, ptr %61, align 4
  %47 = load ptr, ptr %5, align 4
  %48 = getelementptr inbounds %struct.snd_pcm_group, ptr %47, i32 0, i32 2
  %49 = icmp eq ptr %46, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %45, %19
  %51 = phi ptr [ %20, %19 ], [ %47, %45 ]
  %52 = phi i32 [ %22, %19 ], [ %64, %45 ]
  %53 = phi ptr [ %21, %19 ], [ %46, %45 ]
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr i8, ptr %54, i32 -140
  %56 = getelementptr inbounds %struct.snd_pcm_group, ptr %51, i32 0, i32 2
  %57 = icmp eq ptr %54, %56
  br i1 %57, label %104, label %58

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.action_ops, ptr %0, i32 0, i32 3
  br label %95

60:                                               ; preds = %45, %25
  %61 = phi ptr [ %21, %25 ], [ %46, %45 ]
  %62 = getelementptr i8, ptr %61, i32 -140
  %63 = load ptr, ptr %26, align 4
  %64 = tail call i32 %63(ptr noundef %62, i32 noundef %2) #14
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %45

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.action_ops, ptr %0, i32 0, i32 2
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %104, label %70

70:                                               ; preds = %66
  %71 = load ptr, ptr %5, align 4
  %72 = getelementptr inbounds %struct.snd_pcm_group, ptr %71, i32 0, i32 2
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, %72
  %75 = icmp eq ptr %73, %61
  %76 = select i1 %74, i1 true, i1 %75
  br i1 %76, label %104, label %77

77:                                               ; preds = %70
  %78 = getelementptr i8, ptr %73, i32 -140
  tail call void %68(ptr noundef %78, i32 noundef %2) #14
  %79 = load ptr, ptr %73, align 4
  %80 = load ptr, ptr %5, align 4
  %81 = getelementptr inbounds %struct.snd_pcm_group, ptr %80, i32 0, i32 2
  %82 = icmp eq ptr %79, %81
  %83 = icmp eq ptr %79, %61
  %84 = select i1 %82, i1 true, i1 %83
  br i1 %84, label %104, label %85

85:                                               ; preds = %85, %77
  %86 = phi ptr [ %89, %85 ], [ %79, %77 ]
  %87 = load ptr, ptr %67, align 4
  %88 = getelementptr i8, ptr %86, i32 -140
  tail call void %87(ptr noundef %88, i32 noundef %2) #14
  %89 = load ptr, ptr %86, align 4
  %90 = load ptr, ptr %5, align 4
  %91 = getelementptr inbounds %struct.snd_pcm_group, ptr %90, i32 0, i32 2
  %92 = icmp eq ptr %89, %91
  %93 = icmp eq ptr %89, %61
  %94 = select i1 %92, i1 true, i1 %93
  br i1 %94, label %104, label %85

95:                                               ; preds = %95, %58
  %96 = phi ptr [ %55, %58 ], [ %100, %95 ]
  %97 = phi ptr [ %54, %58 ], [ %99, %95 ]
  %98 = load ptr, ptr %59, align 4
  tail call void %98(ptr noundef %96, i32 noundef %2) #14
  %99 = load ptr, ptr %97, align 4
  %100 = getelementptr i8, ptr %99, i32 -140
  %101 = load ptr, ptr %5, align 4
  %102 = getelementptr inbounds %struct.snd_pcm_group, ptr %101, i32 0, i32 2
  %103 = icmp eq ptr %99, %102
  br i1 %103, label %104, label %95

104:                                              ; preds = %95, %85, %77, %70, %66, %50, %41
  %105 = phi i32 [ %64, %66 ], [ %52, %50 ], [ %64, %70 ], [ %64, %77 ], [ %52, %95 ], [ %64, %85 ], [ %43, %41 ]
  %106 = phi ptr [ null, %66 ], [ %55, %50 ], [ null, %70 ], [ null, %77 ], [ %100, %95 ], [ null, %85 ], [ %29, %41 ]
  br i1 %3, label %107, label %135

107:                                              ; preds = %104
  %108 = load ptr, ptr %5, align 4
  %109 = getelementptr inbounds %struct.snd_pcm_group, ptr %108, i32 0, i32 2
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.snd_pcm_group, ptr %108, i32 0, i32 2
  %112 = icmp eq ptr %110, %111
  br i1 %112, label %135, label %113

113:                                              ; preds = %130, %107
  %114 = phi ptr [ %132, %130 ], [ %110, %107 ]
  %115 = getelementptr i8, ptr %114, i32 -140
  %116 = icmp eq ptr %115, %1
  br i1 %116, label %128, label %117

117:                                              ; preds = %113
  %118 = load ptr, ptr %115, align 4
  %119 = getelementptr inbounds %struct.snd_pcm, ptr %118, i32 0, i32 14
  %120 = load i8, ptr %119, align 1, !range !8
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %117
  %123 = getelementptr i8, ptr %114, i32 12
  tail call void @mutex_unlock(ptr noundef %123) #14
  br label %128

124:                                              ; preds = %117
  %125 = getelementptr i8, ptr %114, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  %126 = load i16, ptr %125, align 4
  %127 = add i16 %126, 1
  store i16 %127, ptr %125, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !12
  br label %128

128:                                              ; preds = %124, %122, %113
  %129 = icmp eq ptr %115, %106
  br i1 %129, label %135, label %130

130:                                              ; preds = %128
  %131 = load ptr, ptr %5, align 4
  %132 = load ptr, ptr %114, align 4
  %133 = getelementptr inbounds %struct.snd_pcm_group, ptr %131, i32 0, i32 2
  %134 = icmp eq ptr %132, %133
  br i1 %134, label %135, label %113

135:                                              ; preds = %130, %128, %107, %104
  ret i32 %105
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @snd_pcm_pre_start(ptr noundef %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 37
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %39

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %37

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 30
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 33
  %17 = load i32, ptr %16, align 8
  %18 = icmp ult i32 %15, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %6, i32 0, i32 3
  %21 = load i32, ptr %20, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 18
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, %21
  %25 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 38
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %26, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = sub i32 %24, %28
  %30 = icmp slt i32 %29, 0
  %31 = icmp ult i32 %29, %17
  %32 = select i1 %31, i32 0, i32 %17
  %33 = sub i32 0, %32
  %34 = select i1 %30, i32 %17, i32 %33
  %35 = add i32 %34, %29
  %36 = icmp ult i32 %35, %23
  br i1 %36, label %37, label %39

37:                                               ; preds = %19, %13, %9
  %38 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 2
  store i8 0, ptr %38, align 8
  store ptr %0, ptr %4, align 8
  br label %39

39:                                               ; preds = %37, %19, %2
  %40 = phi i32 [ 0, %37 ], [ -77, %2 ], [ -32, %19 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_pcm_do_start(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_pcm_ops, ptr %9, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %0, i32 noundef 1) #14
  br label %13

13:                                               ; preds = %7, %2
  %14 = phi i32 [ %12, %7 ], [ 0, %2 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_pcm_undo_start(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_pcm_ops, ptr %9, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %0, i32 noundef 0) #14
  br label %13

13:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_pcm_post_start(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  tail call fastcc void @snd_pcm_trigger_tstamp(ptr noundef %0)
  %5 = load volatile i32, ptr @jiffies, align 64
  %6 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 7
  store i32 %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 18
  %8 = load i32, ptr %7, align 4
  %9 = mul i32 %8, 100
  %10 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 14
  %11 = load i32, ptr %10, align 4
  %12 = udiv i32 %9, %11
  %13 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 8
  store i32 %12, ptr %13, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 37
  %15 = load ptr, ptr %14, align 4
  store i32 %1, ptr %15, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 32
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void @snd_pcm_playback_silence(ptr noundef %0, i32 noundef -1) #14
  br label %24

24:                                               ; preds = %23, %19, %2
  %25 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 12
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %3, align 4
  %30 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %29, i32 0, i32 1
  tail call void @snd_timer_notify(ptr noundef nonnull %26, i32 noundef 12, ptr noundef %30) #14
  br label %31

31:                                               ; preds = %28, %24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @snd_pcm_trigger_tstamp(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %26, label %6

6:                                                ; preds = %1
  %7 = icmp eq ptr %4, %0
  br i1 %7, label %8, label %19

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 2
  %10 = load i8, ptr %9, align 8, !range !8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 1
  %14 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 49
  %15 = load i32, ptr %14, align 8
  switch i32 %15, label %18 [
    i32 1, label %16
    i32 2, label %17
  ]

16:                                               ; preds = %12
  tail call void @ktime_get_ts64(ptr noundef %13) #14
  br label %25

17:                                               ; preds = %12
  tail call void @ktime_get_raw_ts64(ptr noundef %13) #14
  br label %25

18:                                               ; preds = %12
  tail call void @ktime_get_real_ts64(ptr noundef %13) #14
  br label %25

19:                                               ; preds = %6
  tail call fastcc void @snd_pcm_trigger_tstamp(ptr noundef nonnull %4)
  %20 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 1
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_substream, ptr %21, i32 0, i32 11
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %23, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %20, ptr noundef align 8 dereferenceable(16) %24, i32 16, i1 false)
  br label %25

25:                                               ; preds = %19, %18, %17, %16, %8
  store ptr null, ptr %3, align 8
  br label %26

26:                                               ; preds = %25, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_playback_silence(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_timer_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @snd_pcm_pre_stop(ptr noundef %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 37
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store ptr %0, ptr %4, align 8
  br label %10

10:                                               ; preds = %9, %2
  %11 = phi i32 [ 0, %9 ], [ -77, %2 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_pcm_do_stop(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %7, label %23

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 37
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %9, align 8
  switch i32 %10, label %23 [
    i32 3, label %15
    i32 5, label %11
  ]

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %11, %7
  %16 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 10
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.snd_pcm_ops, ptr %17, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 %19(ptr noundef %0, i32 noundef 0) #14
  %21 = load ptr, ptr %3, align 4
  %22 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %21, i32 0, i32 43
  store i8 1, ptr %22, align 4
  br label %23

23:                                               ; preds = %15, %11, %7, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_pcm_post_stop(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 37
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, %1
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  tail call fastcc void @snd_pcm_trigger_tstamp(ptr noundef %0)
  %10 = load ptr, ptr %5, align 4
  store i32 %1, ptr %10, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 12
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %15, i32 0, i32 1
  tail call void @snd_timer_notify(ptr noundef nonnull %12, i32 noundef 13, ptr noundef %16) #14
  br label %17

17:                                               ; preds = %14, %9, %2
  %18 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %18, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  %19 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 41
  tail call void @__wake_up(ptr noundef %19, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @snd_pcm_pre_suspend(ptr noundef %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 37
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 8
  %8 = icmp ult i32 %7, 9
  br i1 %8, label %10, label %9

9:                                                ; preds = %10, %2
  store ptr %0, ptr %4, align 8
  br label %15

10:                                               ; preds = %2
  %11 = trunc i32 %7 to i16
  %12 = lshr i16 387, %11
  %13 = and i16 %12, 1
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %9, label %15

15:                                               ; preds = %10, %9
  %16 = phi i32 [ 0, %9 ], [ -16, %10 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_pcm_do_suspend(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %7, label %22

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 37
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %9, align 8
  switch i32 %10, label %22 [
    i32 3, label %15
    i32 5, label %11
  ]

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %11, %7
  %16 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 10
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.snd_pcm_ops, ptr %17, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 %19(ptr noundef %0, i32 noundef 5) #14
  %21 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 43
  store i8 1, ptr %21, align 4
  br label %22

22:                                               ; preds = %15, %11, %7, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_pcm_post_suspend(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  tail call fastcc void @snd_pcm_trigger_tstamp(ptr noundef %0)
  %5 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 37
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %6, i32 0, i32 6
  store i32 %7, ptr %8, align 8
  %9 = load ptr, ptr %5, align 4
  store i32 7, ptr %9, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 12
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load ptr, ptr %3, align 4
  %15 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %14, i32 0, i32 1
  tail call void @snd_timer_notify(ptr noundef nonnull %11, i32 noundef 17, ptr noundef %15) #14
  br label %16

16:                                               ; preds = %13, %2
  %17 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %17, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  %18 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 41
  tail call void @__wake_up(ptr noundef %18, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @snd_pcm_pre_pause(ptr noundef %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 23
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 524288
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %2
  %10 = icmp eq i32 %1, 0
  %11 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 37
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %12, align 8
  br i1 %10, label %16, label %14

14:                                               ; preds = %9
  %15 = icmp eq i32 %13, 3
  br i1 %15, label %18, label %19

16:                                               ; preds = %9
  %17 = icmp eq i32 %13, 6
  br i1 %17, label %18, label %19

18:                                               ; preds = %16, %14
  store ptr %0, ptr %4, align 8
  br label %19

19:                                               ; preds = %18, %16, %14, %2
  %20 = phi i32 [ 0, %18 ], [ -38, %2 ], [ -77, %14 ], [ -77, %16 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_pcm_do_pause(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %7, label %23

7:                                                ; preds = %2
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %7
  %10 = tail call i32 @snd_pcm_update_hw_ptr(ptr noundef %0) #14
  %11 = load ptr, ptr %3, align 4
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi ptr [ %11, %9 ], [ %4, %7 ]
  %14 = phi i32 [ 3, %9 ], [ 4, %7 ]
  %15 = load volatile i32, ptr @jiffies, align 64
  %16 = add i32 %15, -100000
  %17 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 7
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 10
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.snd_pcm_ops, ptr %19, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 %21(ptr noundef %0, i32 noundef %14) #14
  br label %23

23:                                               ; preds = %12, %2
  %24 = phi i32 [ %22, %12 ], [ 0, %2 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_pcm_undo_pause(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_pcm_ops, ptr %9, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq i32 %1, 0
  %13 = select i1 %12, i32 3, i32 4
  %14 = tail call i32 %11(ptr noundef %0, i32 noundef %13) #14
  br label %15

15:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_pcm_post_pause(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  tail call fastcc void @snd_pcm_trigger_tstamp(ptr noundef %0)
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 37
  %7 = load ptr, ptr %6, align 4
  br i1 %5, label %18, label %8

8:                                                ; preds = %2
  store i32 6, ptr %7, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 12
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %3, align 4
  %14 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 1
  tail call void @snd_timer_notify(ptr noundef nonnull %10, i32 noundef 15, ptr noundef %14) #14
  br label %15

15:                                               ; preds = %12, %8
  %16 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %16, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  %17 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 41
  tail call void @__wake_up(ptr noundef %17, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %25

18:                                               ; preds = %2
  store i32 3, ptr %7, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 12
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %3, align 4
  %24 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %23, i32 0, i32 1
  tail call void @snd_timer_notify(ptr noundef nonnull %20, i32 noundef 14, ptr noundef %24) #14
  br label %25

25:                                               ; preds = %22, %18, %15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_lib_free_pages(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_rule_add(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_pcm_hw_rule_format(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.snd_mask, align 4
  %4 = alloca %struct.snd_mask, align 8
  %5 = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, -8
  %8 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 %7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #14
  %9 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i32 24, i1 false), !annotation !20
  %10 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 1, i32 1
  store i64 -1, ptr %4, align 8
  %11 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 %7, i32 1
  br label %12

12:                                               ; preds = %35, %2
  %13 = phi i32 [ 0, %2 ], [ %36, %35 ]
  %14 = lshr i32 %13, 5
  %15 = getelementptr [8 x i32], ptr %10, i32 0, i32 %14
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %13, 31
  %18 = shl nuw i32 1, %17
  %19 = and i32 %16, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %12
  %22 = tail call i32 @snd_pcm_format_physical_width(i32 noundef %13) #14
  %23 = icmp slt i32 %22, 1
  br i1 %23, label %35, label %24

24:                                               ; preds = %21
  %25 = load i32, ptr %8, align 4
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, ptr %11, align 4
  %29 = icmp ugt i32 %22, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %27, %24
  %31 = xor i32 %18, -1
  %32 = getelementptr [8 x i32], ptr %4, i32 0, i32 %14
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, %31
  store i32 %34, ptr %32, align 4
  br label %35

35:                                               ; preds = %30, %27, %21, %12
  %36 = add nuw nsw i32 %13, 1
  %37 = icmp eq i32 %36, 53
  br i1 %37, label %38, label %12

38:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, ptr noundef align 4 dereferenceable(32) %10, i32 32, i1 false) #14
  %39 = load i32, ptr %4, align 8
  %40 = load i32, ptr %10, align 4
  %41 = and i32 %40, %39
  store i32 %41, ptr %10, align 4
  %42 = getelementptr inbounds [8 x i32], ptr %4, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 1, i32 1, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, %43
  store i32 %46, ptr %44, align 4
  %47 = icmp eq i32 %41, 0
  %48 = icmp eq i32 %46, 0
  %49 = select i1 %47, i1 %48, i1 false
  br i1 %49, label %54, label %50

50:                                               ; preds = %38
  %51 = call i32 @bcmp(ptr noundef dereferenceable(8) %10, ptr noundef nonnull dereferenceable(8) %3, i32 8) #14
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i32
  br label %54

54:                                               ; preds = %50, %38
  %55 = phi i32 [ %53, %50 ], [ -22, %38 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #14
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_pcm_hw_rule_sample_bits(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.snd_interval, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #14
  %4 = getelementptr inbounds i8, ptr %3, i32 8
  store i32 0, ptr %4, align 4, !annotation !20
  %5 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 1, i32 1
  br label %6

6:                                                ; preds = %23, %2
  %7 = phi i32 [ 0, %2 ], [ %26, %23 ]
  %8 = phi i32 [ -1, %2 ], [ %25, %23 ]
  %9 = phi i32 [ 0, %2 ], [ %24, %23 ]
  %10 = lshr i32 %7, 5
  %11 = getelementptr [8 x i32], ptr %5, i32 0, i32 %10
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %7, 31
  %14 = shl nuw i32 1, %13
  %15 = and i32 %12, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %6
  %18 = tail call i32 @snd_pcm_format_physical_width(i32 noundef %7) #14
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = call i32 @llvm.umin.i32(i32 %8, i32 %18)
  %22 = call i32 @llvm.umax.i32(i32 %9, i32 %18)
  br label %23

23:                                               ; preds = %20, %17, %6
  %24 = phi i32 [ %9, %17 ], [ %9, %6 ], [ %22, %20 ]
  %25 = phi i32 [ %8, %17 ], [ %8, %6 ], [ %21, %20 ]
  %26 = add nuw nsw i32 %7, 1
  %27 = icmp eq i32 %26, 53
  br i1 %27, label %28, label %6

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.snd_interval, ptr %3, i32 0, i32 2
  %30 = getelementptr inbounds %struct.snd_interval, ptr %3, i32 0, i32 1
  store i32 %25, ptr %3, align 4
  store i32 %24, ptr %30, align 4
  store i8 4, ptr %29, align 4
  %31 = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, -8
  %34 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 %33
  %35 = call i32 @snd_interval_refine(ptr noundef %34, ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #14
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_pcm_hw_rule_div(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.snd_interval, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false), !annotation !20
  %4 = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, -8
  %7 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 %6
  %8 = getelementptr %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 2, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -8
  %11 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 %10
  call void @snd_interval_div(ptr noundef %7, ptr noundef %11, ptr noundef nonnull %3) #14
  %12 = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, -8
  %15 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 %14
  %16 = call i32 @snd_interval_refine(ptr noundef %15, ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #14
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_pcm_hw_rule_mul(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.snd_interval, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false), !annotation !20
  %4 = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, -8
  %7 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 %6
  %8 = getelementptr %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 2, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -8
  %11 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 %10
  call void @snd_interval_mul(ptr noundef %7, ptr noundef %11, ptr noundef nonnull %3) #14
  %12 = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, -8
  %15 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 %14
  %16 = call i32 @snd_interval_refine(ptr noundef %15, ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #14
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_pcm_hw_rule_mulkdiv(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.snd_interval, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false), !annotation !20
  %4 = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, -8
  %7 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 %6
  %8 = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = getelementptr %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 2, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, -8
  %14 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 %13
  call void @snd_interval_mulkdiv(ptr noundef %7, i32 noundef %10, ptr noundef %14, ptr noundef nonnull %3) #14
  %15 = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, -8
  %18 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 %17
  %19 = call i32 @snd_interval_refine(ptr noundef %18, ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #14
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_pcm_hw_rule_muldivk(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.snd_interval, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false), !annotation !20
  %4 = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, -8
  %7 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 %6
  %8 = getelementptr %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 2, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -8
  %11 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 %10
  %12 = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @snd_interval_muldivk(ptr noundef %7, ptr noundef %11, i32 noundef %14, ptr noundef nonnull %3) #14
  %15 = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, -8
  %18 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 %17
  %19 = call i32 @snd_interval_refine(ptr noundef %18, ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #14
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_physical_width(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_interval_div(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_interval_mul(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_interval_mulkdiv(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_interval_muldivk(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_mask(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_mask64(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_minmax(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_pcm_hw_rule_buffer_bytes_max(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.snd_interval, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #14
  %4 = getelementptr inbounds i8, ptr %3, i32 8
  store i32 0, ptr %4, align 4, !annotation !20
  %5 = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  store i32 0, ptr %3, align 4
  %7 = getelementptr inbounds %struct.snd_pcm_substream, ptr %6, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_interval, ptr %3, i32 0, i32 1
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.snd_interval, ptr %3, i32 0, i32 2
  store i8 4, ptr %10, align 4
  %11 = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, -8
  %14 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 %13
  %15 = call i32 @snd_interval_refine(ptr noundef %14, ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #14
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_pcm_hw_rule_rate(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, -8
  %8 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 %7
  %9 = getelementptr inbounds %struct.snd_pcm_hardware, ptr %4, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = tail call i32 @snd_interval_list(ptr noundef %8, i32 noundef 15, ptr noundef nonnull @rates, i32 noundef %10) #14
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dma_can_mmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_interval_list(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcm_lib_apply_appl_ptr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_dma_buffer_sync(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fixup_unreferenced_params(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 8
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %29

6:                                                ; preds = %2
  %7 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 0
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %6
  %13 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 0, i32 2
  %14 = load i8, ptr %13, align 4
  %15 = and i8 %14, 3
  br label %24

16:                                               ; preds = %6
  %17 = add i32 %8, 1
  %18 = icmp eq i32 %17, %10
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 0, i32 2
  %21 = load i8, ptr %20, align 4
  %22 = and i8 %21, 3
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19, %12
  %25 = phi i8 [ %15, %12 ], [ %22, %19 ]
  %26 = icmp eq i8 %25, 1
  %27 = select i1 %26, ptr %9, ptr %7
  %28 = load i32, ptr %27, align 4
  store i32 %28, ptr %3, align 4
  br label %29

29:                                               ; preds = %24, %19, %16, %2
  %30 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 10
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %29
  %34 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 3, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 3, i32 2
  %41 = load i8, ptr %40, align 4
  %42 = and i8 %41, 3
  br label %51

43:                                               ; preds = %33
  %44 = add i32 %35, 1
  %45 = icmp eq i32 %44, %37
  br i1 %45, label %46, label %57

46:                                               ; preds = %43
  %47 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 3, i32 2
  %48 = load i8, ptr %47, align 4
  %49 = and i8 %48, 3
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %46, %39
  %52 = phi i8 [ %42, %39 ], [ %49, %46 ]
  %53 = icmp eq i8 %52, 1
  %54 = select i1 %53, ptr %36, ptr %34
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 9
  store i32 %55, ptr %56, align 4
  store i32 1, ptr %30, align 4
  br label %57

57:                                               ; preds = %51, %46, %43, %29
  %58 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 11
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %103

61:                                               ; preds = %57
  %62 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1
  %63 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 2
  %64 = load i32, ptr %62, align 4
  %65 = icmp eq i32 %64, 0
  %66 = tail call i32 @llvm.ctpop.i32(i32 %64) #14, !range !26
  %67 = icmp ult i32 %66, 2
  %68 = or i1 %65, %67
  br i1 %68, label %69, label %103

69:                                               ; preds = %61
  %70 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = tail call i32 @llvm.ctpop.i32(i32 %71) #14, !range !26
  %75 = icmp ult i32 %74, 2
  %76 = select i1 %75, i1 %65, i1 false
  br i1 %76, label %77, label %103

77:                                               ; preds = %73, %69
  %78 = load i32, ptr %63, align 4
  %79 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 2, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %90, label %82

82:                                               ; preds = %77
  %83 = add i32 %78, 1
  %84 = icmp eq i32 %83, %80
  br i1 %84, label %85, label %103

85:                                               ; preds = %82
  %86 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 2, i32 2
  %87 = load i8, ptr %86, align 4
  %88 = and i8 %87, 3
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %103, label %90

90:                                               ; preds = %85, %77
  %91 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 10
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.snd_pcm_ops, ptr %92, i32 0, i32 2
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %98, label %96

96:                                               ; preds = %90
  %97 = tail call i32 %94(ptr noundef %0, i32 noundef 4, ptr noundef %1) #14
  br label %100

98:                                               ; preds = %90
  %99 = tail call i32 @snd_pcm_lib_ioctl(ptr noundef %0, i32 noundef 4, ptr noundef %1) #14
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i32 [ %97, %96 ], [ %99, %98 ]
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %144, label %103

103:                                              ; preds = %100, %85, %82, %73, %61, %57
  %104 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 7
  %105 = load i32, ptr %104, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %144

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %109, i32 0, i32 46
  %111 = load i32, ptr %110, align 8
  %112 = and i32 %111, 1073741823
  store i32 %112, ptr %104, align 4
  %113 = load ptr, ptr %108, align 4
  %114 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %113, i32 0, i32 46
  %115 = load i32, ptr %114, align 8
  %116 = and i32 %115, 1
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %141, label %118

118:                                              ; preds = %107
  %119 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 10
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr inbounds %struct.snd_pcm_ops, ptr %120, i32 0, i32 14
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %144

124:                                              ; preds = %118
  %125 = getelementptr inbounds %struct.snd_pcm_ops, ptr %120, i32 0, i32 13
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %144

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %113, i32 0, i32 53
  %130 = load ptr, ptr %129, align 8
  %131 = icmp eq ptr %130, null
  %132 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 8
  %133 = select i1 %131, ptr %132, ptr %130
  %134 = load i32, ptr %133, align 4
  switch i32 %134, label %135 [
    i32 0, label %144
    i32 1, label %144
    i32 7, label %144
  ]

135:                                              ; preds = %128
  %136 = getelementptr inbounds %struct.snd_dma_device, ptr %133, i32 0, i32 3
  %137 = load ptr, ptr %136, align 4
  %138 = tail call zeroext i1 @dma_can_mmap(ptr noundef %137) #14
  br i1 %138, label %144, label %139

139:                                              ; preds = %135
  %140 = load i32, ptr %104, align 4
  br label %141

141:                                              ; preds = %139, %107
  %142 = phi i32 [ %140, %139 ], [ %112, %107 ]
  %143 = and i32 %142, -4
  store i32 %143, ptr %104, align 4
  br label %144

144:                                              ; preds = %141, %135, %128, %128, %128, %124, %118, %103, %100
  %145 = phi i32 [ %101, %100 ], [ 0, %135 ], [ 0, %141 ], [ 0, %103 ], [ 0, %124 ], [ 0, %118 ], [ 0, %128 ], [ 0, %128 ], [ 0, %128 ]
  ret i32 %145
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_lib_malloc_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_timer_resolution_change(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @snd_pcm_set_state(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.snd_pcm, ptr %3, i32 0, i32 14
  %5 = load i8, ptr %4, align 1, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17, i32 1
  tail call void @mutex_lock(ptr noundef %8) #14
  br label %11

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock_irq(ptr noundef %10) #14
  br label %11

11:                                               ; preds = %9, %7
  %12 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 37
  %15 = load ptr, ptr %14, align 4
  %16 = load i32, ptr %15, align 8
  %17 = icmp eq i32 %16, 8
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  store i32 %1, ptr %15, align 8
  br label %19

19:                                               ; preds = %18, %11
  %20 = load ptr, ptr %0, align 4
  %21 = getelementptr inbounds %struct.snd_pcm, ptr %20, i32 0, i32 14
  %22 = load i8, ptr %21, align 1, !range !8
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17, i32 1
  tail call void @mutex_unlock(ptr noundef %25) #14
  br label %30

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  %28 = load i16, ptr %27, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr %27, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  br label %30

30:                                               ; preds = %26, %24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_latency_qos_add_request(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_param_first(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_param_last(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_lib_ioctl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_update_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @snd_pcm_pre_prepare(ptr nocapture noundef %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 37
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 8
  switch i32 %7, label %12 [
    i32 0, label %15
    i32 8, label %15
    i32 3, label %14
    i32 5, label %8
  ]

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8, %2
  %13 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 21
  store i32 %1, ptr %13, align 4
  br label %15

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %14, %12, %8, %2, %2
  %16 = phi i32 [ 0, %12 ], [ -77, %2 ], [ -77, %2 ], [ -16, %8 ], [ -16, %14 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_pcm_do_prepare(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 43
  %8 = load i8, ptr %7, align 4, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %6
  store i8 0, ptr %7, align 4
  %11 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.snd_pcm_ops, ptr %12, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = tail call i32 %16(ptr noundef %0) #14
  br label %27

20:                                               ; preds = %14, %10
  %21 = load ptr, ptr %0, align 4
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.snd_card, ptr %22, i32 0, i32 33
  %24 = load i32, ptr %23, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  tail call void @synchronize_irq(i32 noundef %24) #14
  br label %27

27:                                               ; preds = %26, %20, %18, %6, %2
  %28 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 10
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.snd_pcm_ops, ptr %29, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 %31(ptr noundef %0) #14
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %61, label %34

34:                                               ; preds = %27
  %35 = load ptr, ptr %3, align 4
  %36 = load ptr, ptr %28, align 4
  %37 = getelementptr inbounds %struct.snd_pcm_ops, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  %41 = tail call i32 %38(ptr noundef %0, i32 noundef 0, ptr noundef null) #14
  br label %44

42:                                               ; preds = %34
  %43 = tail call i32 @snd_pcm_lib_ioctl(ptr noundef %0, i32 noundef 0, ptr noundef null) #14
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %61, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %35, i32 0, i32 5
  store i32 0, ptr %48, align 4
  %49 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %35, i32 0, i32 37
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %50, i32 0, i32 3
  %52 = load i32, ptr %51, align 8
  %53 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %35, i32 0, i32 16
  %54 = load i32, ptr %53, align 4
  %55 = urem i32 %52, %54
  %56 = sub i32 %52, %55
  %57 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %35, i32 0, i32 6
  store i32 %56, ptr %57, align 8
  %58 = load i32, ptr %51, align 8
  %59 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %35, i32 0, i32 34
  store i32 %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %35, i32 0, i32 35
  store i32 0, ptr %60, align 8
  br label %61

61:                                               ; preds = %47, %44, %27
  %62 = phi i32 [ %32, %27 ], [ 0, %47 ], [ %45, %44 ]
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_pcm_post_prepare(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 37
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 38
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %10, i32 0, i32 1
  store i32 %8, ptr %11, align 4
  %12 = load ptr, ptr %0, align 4
  %13 = getelementptr inbounds %struct.snd_pcm, ptr %12, i32 0, i32 14
  %14 = load i8, ptr %13, align 1, !range !8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17, i32 1
  tail call void @mutex_lock(ptr noundef %17) #14
  br label %20

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock_irq(ptr noundef %19) #14
  br label %20

20:                                               ; preds = %18, %16
  %21 = load ptr, ptr %3, align 4
  %22 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %21, i32 0, i32 37
  %23 = load ptr, ptr %22, align 4
  %24 = load i32, ptr %23, align 8
  %25 = icmp eq i32 %24, 8
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  store i32 2, ptr %23, align 8
  br label %27

27:                                               ; preds = %26, %20
  %28 = load ptr, ptr %0, align 4
  %29 = getelementptr inbounds %struct.snd_pcm, ptr %28, i32 0, i32 14
  %30 = load i8, ptr %29, align 1, !range !8
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17, i32 1
  tail call void @mutex_unlock(ptr noundef %33) #14
  br label %38

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  %36 = load i16, ptr %35, align 4
  %37 = add i16 %36, 1
  store i16 %37, ptr %35, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  br label %38

38:                                               ; preds = %34, %32
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_pcm_do_reset(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_pcm_ops, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 %8(ptr noundef %0, i32 noundef 0, ptr noundef null) #14
  br label %14

12:                                               ; preds = %2
  %13 = tail call i32 @snd_pcm_lib_ioctl(ptr noundef %0, i32 noundef 0, ptr noundef null) #14
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 5
  store i32 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 37
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %20, i32 0, i32 3
  %22 = load i32, ptr %21, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 16
  %24 = load i32, ptr %23, align 4
  %25 = urem i32 %22, %24
  %26 = sub i32 %22, %25
  %27 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 6
  store i32 %26, ptr %27, align 8
  %28 = load i32, ptr %21, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 34
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 35
  store i32 0, ptr %30, align 8
  br label %31

31:                                               ; preds = %17, %14
  %32 = phi i32 [ 0, %17 ], [ %15, %14 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @snd_pcm_pre_drain_init(ptr noundef %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 37
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 8
  switch i32 %7, label %8 [
    i32 0, label %9
    i32 8, label %9
    i32 7, label %9
  ]

8:                                                ; preds = %2
  store ptr %0, ptr %4, align 8
  br label %9

9:                                                ; preds = %8, %2, %2, %2
  %10 = phi i32 [ 0, %8 ], [ -77, %2 ], [ -77, %2 ], [ -77, %2 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_pcm_do_drain_init(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 37
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %9, align 8
  br i1 %7, label %11, label %72

11:                                               ; preds = %2
  switch i32 %10, label %120 [
    i32 2, label %12
    i32 3, label %70
    i32 4, label %71
  ]

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %9, i32 0, i32 3
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 18
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, %14
  %18 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 38
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %19, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = sub i32 %17, %21
  %23 = icmp slt i32 %22, 0
  %24 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 33
  %25 = load i32, ptr %24, align 8
  %26 = icmp ult i32 %22, %25
  %27 = select i1 %26, i32 0, i32 %25
  %28 = sub i32 0, %27
  %29 = select i1 %23, i32 %25, i32 %28
  %30 = add i32 %29, %22
  %31 = icmp ult i32 %30, %16
  br i1 %31, label %32, label %69

32:                                               ; preds = %12
  %33 = load ptr, ptr %4, align 8
  %34 = icmp eq ptr %33, %0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 10
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.snd_pcm_ops, ptr %37, i32 0, i32 6
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 %39(ptr noundef %0, i32 noundef 1) #14
  %41 = load ptr, ptr %3, align 4
  br label %42

42:                                               ; preds = %35, %32
  %43 = phi ptr [ %4, %32 ], [ %41, %35 ]
  tail call fastcc void @snd_pcm_trigger_tstamp(ptr noundef %0) #14
  %44 = load volatile i32, ptr @jiffies, align 64
  %45 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %43, i32 0, i32 7
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %43, i32 0, i32 18
  %47 = load i32, ptr %46, align 4
  %48 = mul i32 %47, 100
  %49 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %43, i32 0, i32 14
  %50 = load i32, ptr %49, align 4
  %51 = udiv i32 %48, %50
  %52 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %43, i32 0, i32 8
  store i32 %51, ptr %52, align 8
  %53 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %43, i32 0, i32 37
  %54 = load ptr, ptr %53, align 4
  store i32 5, ptr %54, align 8
  %55 = load i32, ptr %5, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %42
  %58 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %43, i32 0, i32 32
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  tail call void @snd_pcm_playback_silence(ptr noundef %0, i32 noundef -1) #14
  br label %62

62:                                               ; preds = %61, %57, %42
  %63 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 12
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %120, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr %3, align 4
  %68 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %67, i32 0, i32 1
  tail call void @snd_timer_notify(ptr noundef nonnull %64, i32 noundef 12, ptr noundef %68) #14
  br label %120

69:                                               ; preds = %12
  store i32 1, ptr %9, align 8
  br label %120

70:                                               ; preds = %11
  store i32 5, ptr %9, align 8
  br label %120

71:                                               ; preds = %11
  store i32 1, ptr %9, align 8
  br label %120

72:                                               ; preds = %2
  %73 = icmp eq i32 %10, 3
  br i1 %73, label %74, label %120

74:                                               ; preds = %72
  %75 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %9, i32 0, i32 3
  %76 = load i32, ptr %75, align 8
  %77 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 38
  %78 = load ptr, ptr %77, align 8
  %79 = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %78, i32 0, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = sub i32 %76, %80
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %74
  %84 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 33
  %85 = load i32, ptr %84, align 8
  %86 = add i32 %85, %81
  br label %87

87:                                               ; preds = %83, %74
  %88 = phi i32 [ %86, %83 ], [ %81, %74 ]
  %89 = icmp eq i32 %88, 0
  %90 = select i1 %89, i32 1, i32 5
  %91 = load ptr, ptr %4, align 8
  %92 = icmp eq ptr %91, %0
  br i1 %92, label %93, label %106

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 10
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.snd_pcm_ops, ptr %95, i32 0, i32 6
  %97 = load ptr, ptr %96, align 4
  %98 = tail call i32 %97(ptr noundef %0, i32 noundef 0) #14
  %99 = load ptr, ptr %3, align 4
  %100 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %99, i32 0, i32 43
  store i8 1, ptr %100, align 4
  %101 = load ptr, ptr %3, align 4
  %102 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %101, i32 0, i32 37
  %103 = load ptr, ptr %102, align 4
  %104 = load i32, ptr %103, align 8
  %105 = icmp eq i32 %104, %90
  br i1 %105, label %116, label %106

106:                                              ; preds = %93, %87
  %107 = phi ptr [ %101, %93 ], [ %4, %87 ]
  %108 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %107, i32 0, i32 37
  tail call fastcc void @snd_pcm_trigger_tstamp(ptr noundef %0) #14
  %109 = load ptr, ptr %108, align 4
  store i32 %90, ptr %109, align 8
  %110 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 12
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %106
  %114 = load ptr, ptr %3, align 4
  %115 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %114, i32 0, i32 1
  tail call void @snd_timer_notify(ptr noundef nonnull %111, i32 noundef 13, ptr noundef %115) #14
  br label %116

116:                                              ; preds = %113, %106, %93
  %117 = phi ptr [ %101, %93 ], [ %107, %106 ], [ %107, %113 ]
  %118 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %117, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %118, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  %119 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %117, i32 0, i32 41
  tail call void @__wake_up(ptr noundef %119, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %120

120:                                              ; preds = %116, %72, %71, %70, %69, %66, %62, %11
  %121 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 37
  %122 = load ptr, ptr %121, align 4
  %123 = load i32, ptr %122, align 8
  %124 = icmp eq i32 %123, 5
  br i1 %124, label %125, label %139

125:                                              ; preds = %120
  %126 = load ptr, ptr %4, align 8
  %127 = icmp eq ptr %126, %0
  br i1 %127, label %128, label %139

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 46
  %130 = load i32, ptr %129, align 8
  %131 = and i32 %130, 1073741824
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %139, label %133

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 10
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr inbounds %struct.snd_pcm_ops, ptr %135, i32 0, i32 6
  %137 = load ptr, ptr %136, align 4
  %138 = tail call i32 %137(ptr noundef %0, i32 noundef 7) #14
  br label %139

139:                                              ; preds = %133, %128, %125, %120
  %140 = phi i32 [ %138, %133 ], [ 0, %128 ], [ 0, %125 ], [ 0, %120 ]
  ret i32 %140
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @snd_pcm_post_drain_init(ptr nocapture noundef %0, i32 noundef %1) #10 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_pcm_mmap_data_open(ptr nocapture noundef readonly %0) #11 {
  %2 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_pcm_substream, ptr %3, i32 0, i32 20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #14, !srcloc !22
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #14, !srcloc !28
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_pcm_mmap_data_close(ptr nocapture noundef readonly %0) #11 {
  %2 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_pcm_substream, ptr %3, i32 0, i32 20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #14, !srcloc !22
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #14, !srcloc !61
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_pcm_mmap_data_fault(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 15
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %58, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.snd_pcm_substream, ptr %4, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.anon.11, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = shl i32 %10, 12
  %12 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 52
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, -1
  %15 = and i32 %14, -4096
  %16 = icmp ugt i32 %11, %15
  br i1 %16, label %58, label %17

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.snd_pcm_substream, ptr %4, i32 0, i32 10
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.snd_pcm_ops, ptr %19, i32 0, i32 13
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = tail call ptr %21(ptr noundef nonnull %4, i32 noundef %11) #14
  br label %40

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 53
  %27 = load ptr, ptr %26, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load ptr, ptr @mem_map, align 4
  %31 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 50
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 %11
  %34 = ptrtoint ptr %33 to i32
  %35 = add i32 %34, 1073741824
  %36 = lshr i32 %35, 12
  %37 = getelementptr %struct.page, ptr %30, i32 %36
  br label %40

38:                                               ; preds = %25
  %39 = tail call ptr @snd_sgbuf_get_page(ptr noundef nonnull %27, i32 noundef %11) #14
  br label %40

40:                                               ; preds = %38, %29, %23
  %41 = phi ptr [ %24, %23 ], [ %39, %38 ], [ %37, %29 ]
  %42 = icmp eq ptr %41, null
  br i1 %42, label %58, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.page, ptr %41, i32 0, i32 1
  %45 = load volatile i32, ptr %44, align 4
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48, !prof !25

48:                                               ; preds = %43
  %49 = add i32 %45, -1
  br label %52

50:                                               ; preds = %43
  %51 = ptrtoint ptr %41 to i32
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  %54 = inttoptr i32 %53 to ptr
  %55 = getelementptr inbounds %struct.page, ptr %54, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %55) #14, !srcloc !22
  %56 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %55, ptr %55, i32 1, ptr elementtype(i32) %55) #14, !srcloc !28
  %57 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 6
  store ptr %41, ptr %57, align 4
  br label %58

58:                                               ; preds = %52, %40, %6, %1
  %59 = phi i32 [ 0, %52 ], [ 2, %1 ], [ 2, %6 ], [ 2, %40 ]
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_sgbuf_get_page(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__snd_pcm_lib_xfer(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_power_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_pcm_status_user32(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca %struct.snd_pcm_status64, align 8
  %5 = alloca %struct.snd_pcm_status32, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 108, ptr nonnull %5) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(128) %4, i8 0, i32 128, i1 false)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(108) %5, i8 0, i32 108, i1 false)
  br i1 %2, label %6, label %18

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.snd_pcm_status32, ptr %1, i32 0, i32 12
  %8 = tail call ptr @llvm.thread.pointer() #14
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #17, !srcloc !16
  %11 = and i32 %10, -13
  %12 = or i32 %11, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %13 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %7, i32 -1090519041) #14, !srcloc !62
  %14 = extractvalue { i32, i32 } %13, 0
  %15 = extractvalue { i32, i32 } %13, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %16 = getelementptr inbounds %struct.snd_pcm_status64, ptr %4, i32 0, i32 13
  store i32 %15, ptr %16, align 4
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %18, label %87

18:                                               ; preds = %6, %3
  %19 = call i32 @snd_pcm_status64(ptr noundef %0, ptr noundef nonnull %4)
  %20 = load i32, ptr %4, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_status64, ptr %4, i32 0, i32 2
  %22 = load i64, ptr %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = getelementptr inbounds %struct.snd_pcm_status64, ptr %4, i32 0, i32 3
  %25 = load i64, ptr %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = getelementptr inbounds %struct.snd_pcm_status64, ptr %4, i32 0, i32 4
  %28 = load i64, ptr %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = getelementptr inbounds %struct.snd_pcm_status64, ptr %4, i32 0, i32 5
  %31 = load i64, ptr %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = getelementptr inbounds %struct.snd_pcm_status64, ptr %4, i32 0, i32 6
  %34 = load i32, ptr %33, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_status64, ptr %4, i32 0, i32 7
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.snd_pcm_status64, ptr %4, i32 0, i32 8
  %38 = load i32, ptr %37, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_status64, ptr %4, i32 0, i32 9
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.snd_pcm_status64, ptr %4, i32 0, i32 10
  %42 = load i32, ptr %41, align 8
  %43 = getelementptr inbounds %struct.snd_pcm_status64, ptr %4, i32 0, i32 11
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.snd_pcm_status64, ptr %4, i32 0, i32 12
  %46 = load i32, ptr %45, align 8
  %47 = getelementptr inbounds %struct.snd_pcm_status64, ptr %4, i32 0, i32 13
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.snd_pcm_status64, ptr %4, i32 0, i32 14
  %50 = load i64, ptr %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = getelementptr inbounds %struct.snd_pcm_status64, ptr %4, i32 0, i32 15
  %53 = load i64, ptr %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = getelementptr inbounds %struct.snd_pcm_status64, ptr %4, i32 0, i32 18
  %56 = load i32, ptr %55, align 8
  %57 = getelementptr inbounds i8, ptr %5, i32 72
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %57, i8 0, i32 36, i1 false)
  store i32 %20, ptr %5, align 4
  %58 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 %23, ptr %58, align 4
  %59 = getelementptr inbounds i8, ptr %5, i32 8
  store i32 %26, ptr %59, align 4
  %60 = getelementptr inbounds i8, ptr %5, i32 12
  store i32 %29, ptr %60, align 4
  %61 = getelementptr inbounds i8, ptr %5, i32 16
  store i32 %32, ptr %61, align 4
  %62 = getelementptr inbounds i8, ptr %5, i32 20
  store i32 %34, ptr %62, align 4
  %63 = getelementptr inbounds i8, ptr %5, i32 24
  store i32 %36, ptr %63, align 4
  %64 = getelementptr inbounds i8, ptr %5, i32 28
  store i32 %38, ptr %64, align 4
  %65 = getelementptr inbounds i8, ptr %5, i32 32
  store i32 %40, ptr %65, align 4
  %66 = getelementptr inbounds i8, ptr %5, i32 36
  store i32 %42, ptr %66, align 4
  %67 = getelementptr inbounds i8, ptr %5, i32 40
  store i32 %44, ptr %67, align 4
  %68 = getelementptr inbounds i8, ptr %5, i32 44
  store i32 %46, ptr %68, align 4
  %69 = getelementptr inbounds i8, ptr %5, i32 48
  store i32 %48, ptr %69, align 4
  %70 = getelementptr inbounds i8, ptr %5, i32 52
  store i32 %51, ptr %70, align 4
  %71 = getelementptr inbounds i8, ptr %5, i32 56
  store i32 %54, ptr %71, align 4
  %72 = getelementptr inbounds i8, ptr %5, i32 60
  store i32 %51, ptr %72, align 4
  %73 = getelementptr inbounds i8, ptr %5, i32 64
  store i32 %54, ptr %73, align 4
  %74 = getelementptr inbounds i8, ptr %5, i32 68
  store i32 %56, ptr %74, align 4
  %75 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 108, i32 -1090519040) #16, !srcloc !15
  %76 = extractvalue { i32, i32 } %75, 0
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %18
  %79 = tail call ptr @llvm.thread.pointer() #14
  %80 = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 3
  %81 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %80) #17, !srcloc !16
  %82 = and i32 %81, -13
  %83 = or i32 %82, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %83) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %84 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %5, i32 noundef 108) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %81) #14, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %85 = icmp eq i32 %84, 0
  %86 = select i1 %85, i32 0, i32 -14
  br label %87

87:                                               ; preds = %78, %18, %6
  %88 = phi i32 [ -14, %6 ], [ -14, %18 ], [ %86, %78 ]
  call void @llvm.lifetime.end.p0(i64 108, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #14
  ret i32 %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_pcm_status_user64(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca %struct.snd_pcm_status64, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %4, i8 0, i64 128, i1 false)
  br i1 %2, label %5, label %17

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.snd_pcm_status64, ptr %1, i32 0, i32 13
  %7 = tail call ptr @llvm.thread.pointer() #14
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %8) #17, !srcloc !16
  %10 = and i32 %9, -13
  %11 = or i32 %10, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %12 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %6, i32 -1090519041) #14, !srcloc !63
  %13 = extractvalue { i32, i32 } %12, 0
  %14 = extractvalue { i32, i32 } %12, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %15 = getelementptr inbounds %struct.snd_pcm_status64, ptr %4, i32 0, i32 13
  store i32 %14, ptr %15, align 4
  %16 = icmp eq i32 %13, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %5, %3
  %18 = call i32 @snd_pcm_status64(ptr noundef %0, ptr noundef nonnull %4)
  %19 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 128, i32 -1090519040) #16, !srcloc !15
  %20 = extractvalue { i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = tail call ptr @llvm.thread.pointer() #14
  %24 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3
  %25 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %24) #17, !srcloc !16
  %26 = and i32 %25, -13
  %27 = or i32 %26, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %28 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %4, i32 noundef 128) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #14, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 0, i32 -14
  br label %31

31:                                               ; preds = %22, %17, %5
  %32 = phi i32 [ -14, %5 ], [ -14, %17 ], [ %30, %22 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #14
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_pcm_unlink(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.snd_pcm, ptr %2, i32 0, i32 14
  %4 = load i8, ptr %3, align 1, !range !8
  %5 = icmp eq i8 %4, 0
  tail call void @down_write(ptr noundef nonnull @snd_pcm_link_rwsem) #14
  %6 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 18
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %105, label %10

10:                                               ; preds = %1
  br i1 %5, label %13, label %11

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.snd_pcm_group, ptr %7, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %12) #14
  br label %14

13:                                               ; preds = %10
  tail call void @_raw_spin_lock_irq(ptr noundef %7) #14
  br label %14

14:                                               ; preds = %13, %11
  %15 = load ptr, ptr %0, align 4
  %16 = getelementptr inbounds %struct.snd_pcm, ptr %15, i32 0, i32 14
  %17 = load i8, ptr %16, align 1, !range !8
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17, i32 1
  tail call void @mutex_lock(ptr noundef %20) #14
  br label %22

21:                                               ; preds = %14
  tail call void @_raw_spin_lock(ptr noundef %8) #14
  br label %22

22:                                               ; preds = %21, %19
  store ptr %8, ptr %6, align 4
  %23 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 16
  %24 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17, i32 2
  %25 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 16, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %23, align 4
  %28 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %26, ptr %28, align 4
  store volatile ptr %27, ptr %26, align 4
  %29 = load ptr, ptr %24, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  store ptr %23, ptr %30, align 4
  store ptr %29, ptr %23, align 4
  store ptr %24, ptr %25, align 4
  store volatile ptr %23, ptr %24, align 4
  %31 = load ptr, ptr %0, align 4
  %32 = getelementptr inbounds %struct.snd_pcm, ptr %31, i32 0, i32 14
  %33 = load i8, ptr %32, align 1, !range !8
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %22
  %36 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17, i32 1
  tail call void @mutex_unlock(ptr noundef %36) #14
  br label %40

37:                                               ; preds = %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  %38 = load i16, ptr %8, align 4
  %39 = add i16 %38, 1
  store i16 %39, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !12
  br label %40

40:                                               ; preds = %37, %35
  %41 = getelementptr inbounds %struct.snd_pcm_group, ptr %7, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %41) #14, !srcloc !22
  %42 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %41, ptr %41, i32 1, ptr elementtype(i32) %41) #14, !srcloc !23
  %43 = extractvalue { i32, i32, i32 } %42, 0
  %44 = icmp slt i32 %43, 2
  br i1 %44, label %45, label %46, !prof !19

45:                                               ; preds = %40
  tail call void @refcount_warn_saturate(ptr noundef %41, i32 noundef 4) #14
  br label %46

46:                                               ; preds = %45, %40
  %47 = getelementptr inbounds %struct.snd_pcm_group, ptr %7, i32 0, i32 2
  %48 = load volatile ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, %47
  br i1 %49, label %99, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.snd_pcm_group, ptr %7, i32 0, i32 2, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %48, %52
  br i1 %53, label %54, label %99

54:                                               ; preds = %50
  %55 = getelementptr i8, ptr %48, i32 -140
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.snd_pcm, ptr %56, i32 0, i32 14
  %58 = load i8, ptr %57, align 1, !range !8
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %54
  %61 = getelementptr i8, ptr %48, i32 12
  tail call void @mutex_lock(ptr noundef %61) #14
  br label %64

62:                                               ; preds = %54
  %63 = getelementptr i8, ptr %48, i32 8
  tail call void @_raw_spin_lock(ptr noundef %63) #14
  br label %64

64:                                               ; preds = %62, %60
  %65 = getelementptr i8, ptr %48, i32 8
  %66 = getelementptr i8, ptr %48, i32 44
  store ptr %65, ptr %66, align 4
  %67 = getelementptr i8, ptr %48, i32 32
  %68 = getelementptr i8, ptr %48, i32 4
  %69 = load ptr, ptr %68, align 4
  %70 = load ptr, ptr %48, align 4
  %71 = getelementptr inbounds %struct.list_head, ptr %70, i32 0, i32 1
  store ptr %69, ptr %71, align 4
  store volatile ptr %70, ptr %69, align 4
  %72 = load ptr, ptr %67, align 4
  %73 = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  store ptr %48, ptr %73, align 4
  store ptr %72, ptr %48, align 4
  store ptr %67, ptr %68, align 4
  store volatile ptr %48, ptr %67, align 4
  %74 = load ptr, ptr %55, align 4
  %75 = getelementptr inbounds %struct.snd_pcm, ptr %74, i32 0, i32 14
  %76 = load i8, ptr %75, align 1, !range !8
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %64
  %79 = getelementptr i8, ptr %48, i32 12
  tail call void @mutex_unlock(ptr noundef %79) #14
  br label %83

80:                                               ; preds = %64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  %81 = load i16, ptr %65, align 4
  %82 = add i16 %81, 1
  store i16 %82, ptr %65, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !12
  br label %83

83:                                               ; preds = %80, %78
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %41) #14, !srcloc !22
  %84 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %41, ptr %41, i32 1, ptr elementtype(i32) %41) #14, !srcloc !23
  %85 = extractvalue { i32, i32, i32 } %84, 0
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !24
  br label %91

88:                                               ; preds = %83
  %89 = icmp sgt i32 %85, 0
  br i1 %89, label %91, label %90, !prof !25

90:                                               ; preds = %88
  tail call void @refcount_warn_saturate(ptr noundef %41, i32 noundef 3) #14
  br label %91

91:                                               ; preds = %90, %88, %87
  br i1 %5, label %94, label %92

92:                                               ; preds = %91
  %93 = getelementptr inbounds %struct.snd_pcm_group, ptr %7, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %93) #14
  br label %97

94:                                               ; preds = %91
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  %95 = load i16, ptr %7, align 4
  %96 = add i16 %95, 1
  store i16 %96, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  br label %97

97:                                               ; preds = %94, %92
  br i1 %86, label %98, label %105

98:                                               ; preds = %97
  tail call void @kfree(ptr noundef %7) #14
  br label %105

99:                                               ; preds = %50, %46
  br i1 %5, label %102, label %100

100:                                              ; preds = %99
  %101 = getelementptr inbounds %struct.snd_pcm_group, ptr %7, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %101) #14
  br label %105

102:                                              ; preds = %99
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  %103 = load i16, ptr %7, align 4
  %104 = add i16 %103, 1
  store i16 %104, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  br label %105

105:                                              ; preds = %102, %100, %98, %97, %1
  %106 = phi i32 [ 0, %98 ], [ 0, %97 ], [ -114, %1 ], [ 0, %100 ], [ 0, %102 ]
  tail call void @up_write(ptr noundef nonnull @snd_pcm_link_rwsem) #14
  ret i32 %106
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @snd_pcm_pre_reset(ptr nocapture noundef readonly %0, i32 noundef %1) #12 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 37
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 8
  %8 = add i32 %7, -2
  %9 = and i32 %8, -6
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 0, i32 -77
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_pcm_post_reset(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 37
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 38
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %10, i32 0, i32 1
  store i32 %8, ptr %11, align 4
  %12 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 32
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @snd_pcm_playback_silence(ptr noundef %0, i32 noundef -1) #14
  br label %20

20:                                               ; preds = %19, %15, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_lookup_minor_data(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @snd_pcm_pre_resume(ptr noundef %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 23
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 262144
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store ptr %0, ptr %4, align 8
  br label %10

10:                                               ; preds = %9, %2
  %11 = phi i32 [ 0, %9 ], [ -38, %2 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_pcm_do_resume(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %7, label %22

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 37
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %9, i32 0, i32 6
  %11 = load i32, ptr %10, align 8
  switch i32 %11, label %22 [
    i32 3, label %16
    i32 5, label %12
  ]

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %12, %7
  %17 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 10
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.snd_pcm_ops, ptr %18, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 %20(ptr noundef %0, i32 noundef 6) #14
  br label %22

22:                                               ; preds = %16, %12, %7, %2
  %23 = phi i32 [ %21, %16 ], [ 0, %2 ], [ 0, %7 ], [ 0, %12 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_pcm_undo_resume(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %7, label %21

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 37
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %9, align 8
  switch i32 %10, label %21 [
    i32 3, label %15
    i32 5, label %11
  ]

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %11, %7
  %16 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 10
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.snd_pcm_ops, ptr %17, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 %19(ptr noundef %0, i32 noundef 5) #14
  br label %21

21:                                               ; preds = %15, %11, %7, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_pcm_post_resume(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  tail call fastcc void @snd_pcm_trigger_tstamp(ptr noundef %0)
  %5 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 37
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %6, i32 0, i32 6
  %8 = load i32, ptr %7, align 8
  store i32 %8, ptr %6, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 12
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr %3, align 4
  %14 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 1
  tail call void @snd_timer_notify(ptr noundef nonnull %10, i32 noundef 18, ptr noundef %14) #14
  br label %15

15:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_pcm_open(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 4
  %5 = alloca %struct.wait_queue_entry, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !20
  %6 = icmp eq ptr %1, null
  br i1 %6, label %73, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %1, align 8
  %9 = tail call i32 @snd_card_file_add(ptr noundef %8, ptr noundef %0) #14
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %73, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %1, align 8
  %13 = getelementptr inbounds %struct.snd_card, ptr %12, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = tail call zeroext i1 @try_module_get(ptr noundef %14) #14
  br i1 %15, label %16, label %69

16:                                               ; preds = %11
  %17 = tail call ptr @llvm.thread.pointer() #14
  store i32 0, ptr %5, align 4
  %18 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 1
  store ptr %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 2
  store ptr @default_wake_function, ptr %19, align 4
  %20 = getelementptr inbounds %struct.snd_pcm, ptr %1, i32 0, i32 10
  call void @add_wait_queue(ptr noundef %20, ptr noundef nonnull %5) #14
  %21 = getelementptr inbounds %struct.snd_pcm, ptr %1, i32 0, i32 9
  call void @mutex_lock(ptr noundef %21) #14
  %22 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %23 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 1
  br label %24

24:                                               ; preds = %58, %16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store ptr null, ptr %4, align 4, !annotation !20
  %25 = call i32 @snd_pcm_open_substream(ptr noundef nonnull %1, i32 noundef %2, ptr noundef %0, ptr noundef nonnull %4) #14
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %43, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %29 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3520, i32 noundef 12) #15
  %30 = icmp eq ptr %29, null
  %31 = load ptr, ptr %4, align 4
  br i1 %30, label %32, label %33

32:                                               ; preds = %27
  call void @snd_pcm_release_substream(ptr noundef %31) #14
  br label %41

33:                                               ; preds = %27
  store ptr %31, ptr %29, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_substream, ptr %31, i32 0, i32 19
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.snd_pcm_substream, ptr %31, i32 0, i32 22
  store ptr @pcm_release_private, ptr %38, align 4
  br label %39

39:                                               ; preds = %37, %33
  %40 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  store ptr %29, ptr %40, align 8
  br label %41

41:                                               ; preds = %39, %32
  %42 = phi i32 [ 0, %39 ], [ -12, %32 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  br label %62

43:                                               ; preds = %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  %44 = icmp eq i32 %25, -11
  br i1 %44, label %45, label %62

45:                                               ; preds = %43
  %46 = load i32, ptr %22, align 4
  %47 = and i32 %46, 2048
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %45
  store volatile i32 1, ptr %23, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !64
  call void @mutex_unlock(ptr noundef %21) #14
  call void @schedule() #14
  call void @mutex_lock(ptr noundef %21) #14
  %50 = load ptr, ptr %1, align 8
  %51 = getelementptr inbounds %struct.snd_card, ptr %50, i32 0, i32 25
  %52 = load i32, ptr %51, align 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load volatile i32, ptr %17, align 4
  %56 = and i32 %55, 256
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62, !prof !25

58:                                               ; preds = %54
  %59 = load volatile i32, ptr %17, align 4
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %24, label %62

62:                                               ; preds = %58, %54, %49, %45, %43, %41
  %63 = phi i32 [ %42, %41 ], [ -512, %54 ], [ -512, %58 ], [ -19, %49 ], [ -16, %45 ], [ %25, %43 ]
  call void @remove_wait_queue(ptr noundef %20, ptr noundef nonnull %5) #14
  call void @mutex_unlock(ptr noundef %21) #14
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %62
  %66 = load ptr, ptr %1, align 8
  %67 = getelementptr inbounds %struct.snd_card, ptr %66, i32 0, i32 8
  %68 = load ptr, ptr %67, align 4
  call void @module_put(ptr noundef %68) #14
  br label %69

69:                                               ; preds = %65, %11
  %70 = phi i32 [ %63, %65 ], [ -14, %11 ]
  %71 = load ptr, ptr %1, align 8
  %72 = call i32 @snd_card_file_remove(ptr noundef %71, ptr noundef %0) #14
  br label %73

73:                                               ; preds = %69, %62, %7, %3
  %74 = phi i32 [ 0, %62 ], [ %9, %7 ], [ %70, %69 ], [ -19, %3 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #14
  ret i32 %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_file_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_file_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pcm_release_private(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 18
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 17
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @snd_pcm_unlink(ptr noundef %0)
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fasync_helper(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind readnone }
attributes #17 = { nounwind readonly }
attributes #18 = { nounwind allocsize(0) }

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
!9 = !{i64 2149015164}
!10 = !{i64 2149010988}
!11 = !{i64 2149011063, i64 2149011090, i64 2149011137, i64 2149011159, i64 2149011187, i64 2149011207}
!12 = !{i64 2149038167}
!13 = !{i64 442122}
!14 = !{i64 2149039308}
!15 = !{i64 2151173001, i64 2151173026}
!16 = !{i64 3668535}
!17 = !{i64 3668732}
!18 = !{i64 2151154011}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{!"auto-init"}
!21 = !{i64 2148149680}
!22 = !{i64 546638, i64 2148036609, i64 2148036635, i64 2148036682, i64 2148036704, i64 2148036732, i64 2148036752}
!23 = !{i64 2148051839, i64 2148051871, i64 2148051900, i64 2148051934, i64 2148051965, i64 2148051988}
!24 = !{i64 2149243932}
!25 = !{!"branch_weights", i32 2000, i32 1}
!26 = !{i32 0, i32 33}
!27 = !{i64 2153374561}
!28 = !{i64 2148048024, i64 2148048050, i64 2148048079, i64 2148048113, i64 2148048144, i64 2148048167}
!29 = !{i64 2153627352, i64 2153627632, i64 2153627966, i64 2153628300}
!30 = !{i64 2153528043, i64 2153528323, i64 2153528657, i64 2153528991}
!31 = !{i64 2153641712, i64 2153641992, i64 2153642326, i64 2153642660}
!32 = !{!33}
!33 = distinct !{!33, !34, !"fdget: argument 0"}
!34 = distinct !{!34, !"fdget"}
!35 = !{i64 2148049482, i64 2148049514, i64 2148049543, i64 2148049577, i64 2148049608, i64 2148049631}
!36 = !{i64 2153662721, i64 2153663001, i64 2153663335, i64 2153663669}
!37 = !{i64 2153413422, i64 2153413702, i64 2153414036, i64 2153414370}
!38 = !{i64 2153425530, i64 2153425810, i64 2153426144, i64 2153426478}
!39 = !{i64 2153437650, i64 2153437930, i64 2153438264, i64 2153438598}
!40 = !{i64 2153446675, i64 2153446955, i64 2153447289, i64 2153447623}
!41 = !{i64 2153454902, i64 2153455182, i64 2153455516, i64 2153455850}
!42 = !{i64 2153463163, i64 2153463443, i64 2153463777, i64 2153464111}
!43 = !{i64 2153471431, i64 2153471711, i64 2153472045, i64 2153472379}
!44 = !{i64 2153483782, i64 2153484062, i64 2153484396, i64 2153484730}
!45 = !{i64 2153492085, i64 2153492365, i64 2153492699, i64 2153493033}
!46 = !{i64 2153500395, i64 2153500675, i64 2153501009, i64 2153501343}
!47 = !{i64 2153508643, i64 2153508923, i64 2153509257, i64 2153509591}
!48 = !{i64 2153516898, i64 2153517178, i64 2153517512, i64 2153517846}
!49 = !{i64 2153401290, i64 2153401570, i64 2153401904, i64 2153402238}
!50 = !{i64 2151172423, i64 2151172448}
!51 = !{i64 2153537027, i64 2153537307, i64 2153537641, i64 2153537975}
!52 = !{i64 2153545214, i64 2153545494, i64 2153545828, i64 2153546162}
!53 = !{i64 2153553424, i64 2153553704, i64 2153554038, i64 2153554372}
!54 = !{i64 2153561611, i64 2153561891, i64 2153562225, i64 2153562559}
!55 = !{i64 2153572792, i64 2153573072, i64 2153573406, i64 2153573740}
!56 = !{i64 2153581700, i64 2153581980, i64 2153582314, i64 2153582648}
!57 = !{i64 2153589844, i64 2153590124, i64 2153590458, i64 2153590792}
!58 = !{i64 2153601025, i64 2153601305, i64 2153601639, i64 2153601973}
!59 = !{i64 2153609933, i64 2153610213, i64 2153610547, i64 2153610881}
!60 = !{i64 2153618077, i64 2153618357, i64 2153618691, i64 2153619025}
!61 = !{i64 2148050381, i64 2148050407, i64 2148050436, i64 2148050470, i64 2148050501, i64 2148050524}
!62 = !{i64 2153334482, i64 2153334762, i64 2153335096, i64 2153335430}
!63 = !{i64 2153322220, i64 2153322500, i64 2153322834, i64 2153323168}
!64 = !{i64 2153392027}
