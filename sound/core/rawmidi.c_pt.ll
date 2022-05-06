; ModuleID = '/llk/IR/sound/core/rawmidi.c_pt.bc'
source_filename = "../sound/core/rawmidi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_rawmidi_drop_output:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_rawmidi_drop_output\22\09\09\09\09\09"
module asm "__kstrtabns_snd_rawmidi_drop_output:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_rawmidi_drain_output:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_rawmidi_drain_output\22\09\09\09\09\09"
module asm "__kstrtabns_snd_rawmidi_drain_output:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_rawmidi_drain_input:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_rawmidi_drain_input\22\09\09\09\09\09"
module asm "__kstrtabns_snd_rawmidi_drain_input:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_rawmidi_kernel_open:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_rawmidi_kernel_open\22\09\09\09\09\09"
module asm "__kstrtabns_snd_rawmidi_kernel_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_rawmidi_kernel_release:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_rawmidi_kernel_release\22\09\09\09\09\09"
module asm "__kstrtabns_snd_rawmidi_kernel_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_rawmidi_info_select:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_rawmidi_info_select\22\09\09\09\09\09"
module asm "__kstrtabns_snd_rawmidi_info_select:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_rawmidi_output_params:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_rawmidi_output_params\22\09\09\09\09\09"
module asm "__kstrtabns_snd_rawmidi_output_params:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_rawmidi_input_params:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_rawmidi_input_params\22\09\09\09\09\09"
module asm "__kstrtabns_snd_rawmidi_input_params:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_rawmidi_receive:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_rawmidi_receive\22\09\09\09\09\09"
module asm "__kstrtabns_snd_rawmidi_receive:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_rawmidi_kernel_read:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_rawmidi_kernel_read\22\09\09\09\09\09"
module asm "__kstrtabns_snd_rawmidi_kernel_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_rawmidi_transmit_empty:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_rawmidi_transmit_empty\22\09\09\09\09\09"
module asm "__kstrtabns_snd_rawmidi_transmit_empty:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___snd_rawmidi_transmit_peek:\09\09\09\09\09"
module asm "\09.asciz \09\22__snd_rawmidi_transmit_peek\22\09\09\09\09\09"
module asm "__kstrtabns___snd_rawmidi_transmit_peek:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_rawmidi_transmit_peek:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_rawmidi_transmit_peek\22\09\09\09\09\09"
module asm "__kstrtabns_snd_rawmidi_transmit_peek:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___snd_rawmidi_transmit_ack:\09\09\09\09\09"
module asm "\09.asciz \09\22__snd_rawmidi_transmit_ack\22\09\09\09\09\09"
module asm "__kstrtabns___snd_rawmidi_transmit_ack:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_rawmidi_transmit_ack:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_rawmidi_transmit_ack\22\09\09\09\09\09"
module asm "__kstrtabns_snd_rawmidi_transmit_ack:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_rawmidi_transmit:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_rawmidi_transmit\22\09\09\09\09\09"
module asm "__kstrtabns_snd_rawmidi_transmit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_rawmidi_proceed:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_rawmidi_proceed\22\09\09\09\09\09"
module asm "__kstrtabns_snd_rawmidi_proceed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_rawmidi_kernel_write:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_rawmidi_kernel_write\22\09\09\09\09\09"
module asm "__kstrtabns_snd_rawmidi_kernel_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_rawmidi_new:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_rawmidi_new\22\09\09\09\09\09"
module asm "__kstrtabns_snd_rawmidi_new:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_rawmidi_set_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_rawmidi_set_ops\22\09\09\09\09\09"
module asm "__kstrtabns_snd_rawmidi_set_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.snd_device_ops = type { ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.snd_rawmidi_substream = type { %struct.list_head, i32, i32, i8, i8, i8, i32, i32, i32, i32, ptr, ptr, [32 x i8], ptr, ptr, ptr }
%struct.snd_rawmidi_ops = type { ptr, ptr, ptr, ptr }
%struct.snd_rawmidi_runtime = type { ptr, i8, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, %struct.work_struct, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.snd_rawmidi = type { ptr, %struct.list_head, i32, i32, [64 x i8], [80 x i8], ptr, [2 x %struct.snd_rawmidi_str], ptr, ptr, %struct.mutex, %struct.wait_queue_head, %struct.device, ptr }
%struct.snd_rawmidi_str = type { i32, i32, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_rawmidi_file = type { ptr, ptr, ptr, i32 }
%struct.snd_rawmidi_info = type { i32, i32, i32, i32, i32, [64 x i8], [80 x i8], [32 x i8], i32, i32, [64 x i8] }
%struct.snd_rawmidi_params = type { i32, i32, i32, i8, i32, [12 x i8] }
%struct.timespec64 = type { i64, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.snd_device = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.61, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.61 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }
%struct.snd_rawmidi_global_ops = type { ptr, ptr, ptr }
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
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
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
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.snd_rawmidi_status64 = type { i32, [4 x i8], i64, i64, i32, i32, [16 x i8] }
%struct.snd_rawmidi_status32 = type { i32, i32, i32, i32, i32, [16 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.62, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.63, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.64, ptr, %struct.address_space, %struct.list_head, %union.anon.65, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.62 = type { i32 }
%struct.seqcount = type { i32 }
%union.anon.63 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.64 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.65 = type { ptr }
%struct.snd_ctl_file = type { %struct.list_head, ptr, ptr, [2 x i32], %struct.wait_queue_head, %struct.spinlock, ptr, i32, %struct.list_head }

@__UNIQUE_ID_author230 = internal constant [40 x i8] c"author=Jaroslav Kysela <perex@perex.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [44 x i8] c"description=Midlevel RawMidi code for ALSA.\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__kstrtab_snd_rawmidi_drop_output = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_rawmidi_drop_output = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_rawmidi_drop_output = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_rawmidi_drop_output to i32), ptr @__kstrtab_snd_rawmidi_drop_output, ptr @__kstrtabns_snd_rawmidi_drop_output }, section "___ksymtab+snd_rawmidi_drop_output", align 4
@.str = private unnamed_addr constant [54 x i8] c"rawmidi drain error (avail = %li, buffer_size = %li)\0A\00", align 1
@__kstrtab_snd_rawmidi_drain_output = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_rawmidi_drain_output = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_rawmidi_drain_output = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_rawmidi_drain_output to i32), ptr @__kstrtab_snd_rawmidi_drain_output, ptr @__kstrtabns_snd_rawmidi_drain_output }, section "___ksymtab+snd_rawmidi_drain_output", align 4
@__kstrtab_snd_rawmidi_drain_input = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_rawmidi_drain_input = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_rawmidi_drain_input = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_rawmidi_drain_input to i32), ptr @__kstrtab_snd_rawmidi_drain_input, ptr @__kstrtabns_snd_rawmidi_drain_input }, section "___ksymtab+snd_rawmidi_drain_input", align 4
@register_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @register_mutex, i64 12), ptr getelementptr (i8, ptr @register_mutex, i64 12) } }, align 4
@__kstrtab_snd_rawmidi_kernel_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_rawmidi_kernel_open = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_rawmidi_kernel_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_rawmidi_kernel_open to i32), ptr @__kstrtab_snd_rawmidi_kernel_open, ptr @__kstrtabns_snd_rawmidi_kernel_open }, section "___ksymtab+snd_rawmidi_kernel_open", align 4
@__kstrtab_snd_rawmidi_kernel_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_rawmidi_kernel_release = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_rawmidi_kernel_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_rawmidi_kernel_release to i32), ptr @__kstrtab_snd_rawmidi_kernel_release, ptr @__kstrtabns_snd_rawmidi_kernel_release }, section "___ksymtab+snd_rawmidi_kernel_release", align 4
@__kstrtab_snd_rawmidi_info_select = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_rawmidi_info_select = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_rawmidi_info_select = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_rawmidi_info_select to i32), ptr @__kstrtab_snd_rawmidi_info_select, ptr @__kstrtabns_snd_rawmidi_info_select }, section "___ksymtab+snd_rawmidi_info_select", align 4
@__kstrtab_snd_rawmidi_output_params = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_rawmidi_output_params = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_rawmidi_output_params = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_rawmidi_output_params to i32), ptr @__kstrtab_snd_rawmidi_output_params, ptr @__kstrtabns_snd_rawmidi_output_params }, section "___ksymtab+snd_rawmidi_output_params", align 4
@__kstrtab_snd_rawmidi_input_params = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_rawmidi_input_params = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_rawmidi_input_params = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_rawmidi_input_params to i32), ptr @__kstrtab_snd_rawmidi_input_params, ptr @__kstrtabns_snd_rawmidi_input_params }, section "___ksymtab+snd_rawmidi_input_params", align 4
@__kstrtab_snd_rawmidi_receive = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_rawmidi_receive = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_rawmidi_receive = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_rawmidi_receive to i32), ptr @__kstrtab_snd_rawmidi_receive, ptr @__kstrtabns_snd_rawmidi_receive }, section "___ksymtab+snd_rawmidi_receive", align 4
@__kstrtab_snd_rawmidi_kernel_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_rawmidi_kernel_read = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_rawmidi_kernel_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_rawmidi_kernel_read to i32), ptr @__kstrtab_snd_rawmidi_kernel_read, ptr @__kstrtabns_snd_rawmidi_kernel_read }, section "___ksymtab+snd_rawmidi_kernel_read", align 4
@__kstrtab_snd_rawmidi_transmit_empty = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_rawmidi_transmit_empty = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_rawmidi_transmit_empty = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_rawmidi_transmit_empty to i32), ptr @__kstrtab_snd_rawmidi_transmit_empty, ptr @__kstrtabns_snd_rawmidi_transmit_empty }, section "___ksymtab+snd_rawmidi_transmit_empty", align 4
@__kstrtab___snd_rawmidi_transmit_peek = external dso_local constant [0 x i8], align 1
@__kstrtabns___snd_rawmidi_transmit_peek = external dso_local constant [0 x i8], align 1
@__ksymtab___snd_rawmidi_transmit_peek = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__snd_rawmidi_transmit_peek to i32), ptr @__kstrtab___snd_rawmidi_transmit_peek, ptr @__kstrtabns___snd_rawmidi_transmit_peek }, section "___ksymtab+__snd_rawmidi_transmit_peek", align 4
@__kstrtab_snd_rawmidi_transmit_peek = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_rawmidi_transmit_peek = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_rawmidi_transmit_peek = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_rawmidi_transmit_peek to i32), ptr @__kstrtab_snd_rawmidi_transmit_peek, ptr @__kstrtabns_snd_rawmidi_transmit_peek }, section "___ksymtab+snd_rawmidi_transmit_peek", align 4
@__kstrtab___snd_rawmidi_transmit_ack = external dso_local constant [0 x i8], align 1
@__kstrtabns___snd_rawmidi_transmit_ack = external dso_local constant [0 x i8], align 1
@__ksymtab___snd_rawmidi_transmit_ack = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__snd_rawmidi_transmit_ack to i32), ptr @__kstrtab___snd_rawmidi_transmit_ack, ptr @__kstrtabns___snd_rawmidi_transmit_ack }, section "___ksymtab+__snd_rawmidi_transmit_ack", align 4
@__kstrtab_snd_rawmidi_transmit_ack = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_rawmidi_transmit_ack = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_rawmidi_transmit_ack = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_rawmidi_transmit_ack to i32), ptr @__kstrtab_snd_rawmidi_transmit_ack, ptr @__kstrtabns_snd_rawmidi_transmit_ack }, section "___ksymtab+snd_rawmidi_transmit_ack", align 4
@__kstrtab_snd_rawmidi_transmit = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_rawmidi_transmit = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_rawmidi_transmit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_rawmidi_transmit to i32), ptr @__kstrtab_snd_rawmidi_transmit, ptr @__kstrtabns_snd_rawmidi_transmit }, section "___ksymtab+snd_rawmidi_transmit", align 4
@__kstrtab_snd_rawmidi_proceed = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_rawmidi_proceed = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_rawmidi_proceed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_rawmidi_proceed to i32), ptr @__kstrtab_snd_rawmidi_proceed, ptr @__kstrtabns_snd_rawmidi_proceed }, section "___ksymtab+snd_rawmidi_proceed", align 4
@__kstrtab_snd_rawmidi_kernel_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_rawmidi_kernel_write = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_rawmidi_kernel_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_rawmidi_kernel_write to i32), ptr @__kstrtab_snd_rawmidi_kernel_write, ptr @__kstrtabns_snd_rawmidi_kernel_write }, section "___ksymtab+snd_rawmidi_kernel_write", align 4
@snd_rawmidi_new.ops = internal constant %struct.snd_device_ops { ptr @snd_rawmidi_dev_free, ptr @snd_rawmidi_dev_register, ptr @snd_rawmidi_dev_disconnect }, align 4
@snd_rawmidi_new.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"&rmidi->open_mutex\00", align 1
@snd_rawmidi_new.__key.2 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"&rmidi->open_wait\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"midiC%iD%i\00", align 1
@__kstrtab_snd_rawmidi_new = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_rawmidi_new = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_rawmidi_new = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_rawmidi_new to i32), ptr @__kstrtab_snd_rawmidi_new, ptr @__kstrtabns_snd_rawmidi_new }, section "___ksymtab+snd_rawmidi_new", align 4
@__kstrtab_snd_rawmidi_set_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_rawmidi_set_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_rawmidi_set_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_rawmidi_set_ops to i32), ptr @__kstrtab_snd_rawmidi_set_ops, ptr @__kstrtabns_snd_rawmidi_set_ops }, section "___ksymtab+snd_rawmidi_set_ops", align 4
@snd_rawmidi_devices = internal global %struct.list_head { ptr @snd_rawmidi_devices, ptr @snd_rawmidi_devices }, align 4
@snd_rawmidi_runtime_create.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"&runtime->sleep\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@snd_rawmidi_f_ops = internal constant %struct.file_operations { ptr @__this_module, ptr @no_llseek, ptr @snd_rawmidi_read, ptr @snd_rawmidi_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_rawmidi_poll, ptr @snd_rawmidi_ioctl, ptr null, ptr null, i32 0, ptr @snd_rawmidi_open, ptr null, ptr @snd_rawmidi_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"unable to register\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"midi%d\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@snd_major = external dso_local local_unnamed_addr global i32, align 4
@snd_rawmidi_proc_info_read.clock_names = internal unnamed_addr constant [4 x ptr] [ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"realtime\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"monotonic\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"monotonic raw\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%s\0A\0A\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"Output %d\0A  Tx bytes     : %lu\0A\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"  Owner PID    : %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [63 x i8] c"  Mode         : %s\0A  Buffer size  : %lu\0A  Avail        : %lu\0A\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"OSS compatible\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"native\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"Input %d\0A  Rx bytes     : %lu\0A\00", align 1
@.str.21 = private unnamed_addr constant [64 x i8] c"  Buffer size  : %lu\0A  Avail        : %lu\0A  Overruns     : %lu\0A\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"  Framing      : tstamp\0A  Clock type   : %s\0A\00", align 1
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_license232, ptr @__ksymtab___snd_rawmidi_transmit_ack, ptr @__ksymtab___snd_rawmidi_transmit_peek, ptr @__ksymtab_snd_rawmidi_drain_input, ptr @__ksymtab_snd_rawmidi_drain_output, ptr @__ksymtab_snd_rawmidi_drop_output, ptr @__ksymtab_snd_rawmidi_info_select, ptr @__ksymtab_snd_rawmidi_input_params, ptr @__ksymtab_snd_rawmidi_kernel_open, ptr @__ksymtab_snd_rawmidi_kernel_read, ptr @__ksymtab_snd_rawmidi_kernel_release, ptr @__ksymtab_snd_rawmidi_kernel_write, ptr @__ksymtab_snd_rawmidi_new, ptr @__ksymtab_snd_rawmidi_output_params, ptr @__ksymtab_snd_rawmidi_proceed, ptr @__ksymtab_snd_rawmidi_receive, ptr @__ksymtab_snd_rawmidi_set_ops, ptr @__ksymtab_snd_rawmidi_transmit, ptr @__ksymtab_snd_rawmidi_transmit_ack, ptr @__ksymtab_snd_rawmidi_transmit_empty, ptr @__ksymtab_snd_rawmidi_transmit_peek], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_rawmidi_drop_output(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 3
  %3 = load i8, ptr %2, align 4, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_rawmidi_ops, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  tail call void %9(ptr noundef %0, i32 noundef 0) #15
  br label %10

10:                                               ; preds = %5, %1
  %11 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 13
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %12, i32 0, i32 10
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #15
  %15 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %12, i32 0, i32 1
  %16 = load i8, ptr %15, align 4
  %17 = and i8 %16, -2
  store i8 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %12, i32 0, i32 5
  store i32 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %12, i32 0, i32 4
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %12, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %12, i32 0, i32 7
  store i32 %21, ptr %22, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %14) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_rawmidi_drain_output(ptr noundef %0) #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 13
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %4, i32 0, i32 1
  %6 = load i8, ptr %5, align 4
  %7 = or i8 %6, 1
  store i8 %7, ptr %5, align 4
  %8 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %4, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %4, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %9, %11
  br i1 %12, label %13, label %39

13:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !9
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #15
  %14 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %4, i32 0, i32 11
  %15 = call i32 @prepare_to_wait_event(ptr noundef %14, ptr noundef nonnull %2, i32 noundef 1) #15
  %16 = load i32, ptr %8, align 4
  %17 = load i32, ptr %10, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %23, %13
  %20 = phi i32 [ %32, %23 ], [ 1000, %13 ]
  %21 = phi i32 [ %25, %23 ], [ %15, %13 ]
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = call i32 @schedule_timeout(i32 noundef %20) #15
  %25 = call i32 @prepare_to_wait_event(ptr noundef %14, ptr noundef nonnull %2, i32 noundef 1) #15
  %26 = load i32, ptr %8, align 4
  %27 = load i32, ptr %10, align 4
  %28 = icmp uge i32 %26, %27
  %29 = xor i1 %28, true
  %30 = icmp ne i32 %24, 0
  %31 = select i1 %29, i1 true, i1 %30
  %32 = select i1 %31, i32 %24, i32 1
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %28, i1 true, i1 %33
  br i1 %34, label %35, label %19

35:                                               ; preds = %23, %13
  %36 = phi i32 [ 1000, %13 ], [ %32, %23 ]
  call void @finish_wait(ptr noundef %14, ptr noundef nonnull %2) #15
  br label %37

37:                                               ; preds = %35, %19
  %38 = phi i32 [ %36, %35 ], [ %21, %19 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #15
  br label %39

39:                                               ; preds = %37, %1
  %40 = phi i32 [ 1000, %1 ], [ %38, %37 ]
  %41 = tail call ptr @llvm.thread.pointer() #15
  %42 = load volatile i32, ptr %41, align 4
  %43 = and i32 %42, 256
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %50, !prof !10

45:                                               ; preds = %39
  %46 = load volatile i32, ptr %41, align 4
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, i32 0, i32 -512
  br label %50

50:                                               ; preds = %45, %39
  %51 = phi i32 [ -512, %39 ], [ %49, %45 ]
  %52 = load i32, ptr %8, align 4
  %53 = load i32, ptr %10, align 4
  %54 = icmp uge i32 %52, %53
  %55 = icmp ne i32 %40, 0
  %56 = select i1 %54, i1 true, i1 %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 10
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.snd_rawmidi, ptr %59, i32 0, i32 12
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %60, ptr noundef nonnull @.str, i32 noundef %52, i32 noundef %53) #16
  %61 = load i8, ptr %5, align 4
  %62 = and i8 %61, -2
  store i8 %62, ptr %5, align 4
  br label %67

63:                                               ; preds = %50
  %64 = load i8, ptr %5, align 4
  %65 = and i8 %64, -2
  store i8 %65, ptr %5, align 4
  %66 = icmp eq i32 %51, -512
  br i1 %66, label %96, label %67

67:                                               ; preds = %63, %57
  %68 = phi i32 [ -5, %57 ], [ %51, %63 ]
  %69 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 15
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.snd_rawmidi_ops, ptr %70, i32 0, i32 3
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %67
  call void %72(ptr noundef %0) #15
  br label %76

75:                                               ; preds = %67
  call void @msleep(i32 noundef 50) #15
  br label %76

76:                                               ; preds = %75, %74
  %77 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 3
  %78 = load i8, ptr %77, align 4, !range !8
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = load ptr, ptr %69, align 4
  %82 = getelementptr inbounds %struct.snd_rawmidi_ops, ptr %81, i32 0, i32 2
  %83 = load ptr, ptr %82, align 4
  call void %83(ptr noundef %0, i32 noundef 0) #15
  br label %84

84:                                               ; preds = %80, %76
  %85 = load ptr, ptr %3, align 4
  %86 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %85, i32 0, i32 10
  %87 = call i32 @_raw_spin_lock_irqsave(ptr noundef %86) #15
  %88 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %85, i32 0, i32 1
  %89 = load i8, ptr %88, align 4
  %90 = and i8 %89, -2
  store i8 %90, ptr %88, align 4
  %91 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %85, i32 0, i32 5
  store i32 0, ptr %91, align 4
  %92 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %85, i32 0, i32 4
  store i32 0, ptr %92, align 4
  %93 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %85, i32 0, i32 3
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %85, i32 0, i32 7
  store i32 %94, ptr %95, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %86, i32 noundef %87) #15
  br label %96

96:                                               ; preds = %84, %63
  %97 = phi i32 [ %68, %84 ], [ -512, %63 ]
  ret i32 %97
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_rawmidi_drain_input(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 3
  %3 = load i8, ptr %2, align 4, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_rawmidi_ops, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  tail call void %9(ptr noundef %0, i32 noundef 0) #15
  %10 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 13
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %11, i32 0, i32 13
  %13 = tail call zeroext i1 @cancel_work_sync(ptr noundef %12) #15
  br label %14

14:                                               ; preds = %5, %1
  %15 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 13
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %16, i32 0, i32 10
  %18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %17) #15
  %19 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %16, i32 0, i32 1
  %20 = load i8, ptr %19, align 4
  %21 = and i8 %20, -2
  store i8 %21, ptr %19, align 4
  %22 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %16, i32 0, i32 5
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %16, i32 0, i32 4
  store i32 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %16, i32 0, i32 7
  store i32 0, ptr %24, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %17, i32 noundef %18) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_rawmidi_kernel_open(ptr noundef readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef writeonly %4) #0 {
  %6 = icmp eq ptr %4, null
  br i1 %6, label %38, label %7

7:                                                ; preds = %5
  tail call void @mutex_lock(ptr noundef nonnull @register_mutex) #15
  %8 = load ptr, ptr @snd_rawmidi_devices, align 4
  %9 = icmp eq ptr %8, @snd_rawmidi_devices
  br i1 %9, label %25, label %10

10:                                               ; preds = %19, %7
  %11 = phi ptr [ %20, %19 ], [ %8, %7 ]
  %12 = getelementptr i8, ptr %11, i32 -4
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = getelementptr i8, ptr %11, i32 8
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, %1
  br i1 %18, label %22, label %19

19:                                               ; preds = %15, %10
  %20 = load ptr, ptr %11, align 4
  %21 = icmp eq ptr %20, @snd_rawmidi_devices
  br i1 %21, label %25, label %10

22:                                               ; preds = %15
  %23 = getelementptr i8, ptr %11, i32 -4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %19, %7
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #15
  br label %38

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 8
  %28 = load ptr, ptr %27, align 4
  %29 = tail call zeroext i1 @try_module_get(ptr noundef %28) #15
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #15
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = getelementptr i8, ptr %11, i32 204
  tail call void @mutex_lock(ptr noundef %31) #15
  %32 = tail call fastcc i32 @rawmidi_open_priv(ptr noundef nonnull %23, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %4)
  tail call void @mutex_unlock(ptr noundef %31) #15
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load ptr, ptr %23, align 8
  %36 = getelementptr inbounds %struct.snd_card, ptr %35, i32 0, i32 8
  %37 = load ptr, ptr %36, align 4
  tail call void @module_put(ptr noundef %37) #15
  br label %38

38:                                               ; preds = %34, %30, %26, %25, %5
  %39 = phi i32 [ -22, %5 ], [ -6, %26 ], [ %32, %34 ], [ %32, %30 ], [ -19, %25 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rawmidi_open_priv(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.snd_rawmidi_file, ptr %3, i32 0, i32 2
  store ptr null, ptr %5, align 4
  %6 = getelementptr inbounds %struct.snd_rawmidi_file, ptr %3, i32 0, i32 1
  store ptr null, ptr %6, align 4
  %7 = and i32 %2, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %39, label %9

9:                                                ; preds = %4
  %10 = getelementptr %struct.snd_rawmidi, ptr %0, i32 0, i32 7, i32 1
  %11 = getelementptr inbounds %struct.snd_rawmidi, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %124, label %15

15:                                               ; preds = %9
  %16 = icmp sgt i32 %1, -1
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = load i32, ptr %10, align 4
  %19 = icmp ugt i32 %18, %1
  br i1 %19, label %20, label %124

20:                                               ; preds = %17, %15
  %21 = getelementptr %struct.snd_rawmidi, ptr %0, i32 0, i32 7, i32 1, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %21
  br i1 %23, label %124, label %24

24:                                               ; preds = %20
  %25 = icmp slt i32 %1, 0
  br label %26

26:                                               ; preds = %36, %24
  %27 = phi ptr [ %22, %24 ], [ %37, %36 ]
  %28 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %27, i32 0, i32 3
  %29 = load i8, ptr %28, align 4, !range !8
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  br i1 %25, label %39, label %32

32:                                               ; preds = %31
  %33 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %27, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, %1
  br i1 %35, label %39, label %36

36:                                               ; preds = %32, %26
  %37 = load ptr, ptr %27, align 4
  %38 = icmp eq ptr %37, %21
  br i1 %38, label %124, label %26

39:                                               ; preds = %32, %31, %4
  %40 = phi ptr [ null, %4 ], [ %27, %31 ], [ %27, %32 ]
  %41 = and i32 %2, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %80, label %43

43:                                               ; preds = %39
  %44 = getelementptr %struct.snd_rawmidi, ptr %0, i32 0, i32 7, i32 0
  %45 = getelementptr inbounds %struct.snd_rawmidi, ptr %0, i32 0, i32 3
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %124, label %49

49:                                               ; preds = %43
  %50 = icmp sgt i32 %1, -1
  br i1 %50, label %51, label %54

51:                                               ; preds = %49
  %52 = load i32, ptr %44, align 4
  %53 = icmp ugt i32 %52, %1
  br i1 %53, label %54, label %124

54:                                               ; preds = %51, %49
  %55 = getelementptr %struct.snd_rawmidi, ptr %0, i32 0, i32 7, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, %55
  br i1 %57, label %124, label %58

58:                                               ; preds = %54
  %59 = and i32 %2, 4
  %60 = icmp eq i32 %59, 0
  %61 = icmp slt i32 %1, 0
  br label %62

62:                                               ; preds = %77, %58
  %63 = phi ptr [ %56, %58 ], [ %78, %77 ]
  %64 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %63, i32 0, i32 3
  %65 = load i8, ptr %64, align 4, !range !8
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %62
  br i1 %60, label %77, label %68

68:                                               ; preds = %67
  %69 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %63, i32 0, i32 4
  %70 = load i8, ptr %69, align 1, !range !8
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %68, %62
  br i1 %61, label %80, label %73

73:                                               ; preds = %72
  %74 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %63, i32 0, i32 2
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, %1
  br i1 %76, label %80, label %77

77:                                               ; preds = %73, %68, %67
  %78 = load ptr, ptr %63, align 4
  %79 = icmp eq ptr %78, %55
  br i1 %79, label %124, label %62

80:                                               ; preds = %73, %72, %39
  %81 = phi ptr [ null, %39 ], [ %63, %72 ], [ %63, %73 ]
  %82 = icmp eq ptr %40, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = tail call fastcc i32 @open_substream(ptr noundef %0, ptr noundef nonnull %40, i32 noundef %2)
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %124, label %86

86:                                               ; preds = %83, %80
  %87 = icmp eq ptr %81, null
  br i1 %87, label %123, label %88

88:                                               ; preds = %86
  %89 = tail call fastcc i32 @open_substream(ptr noundef %0, ptr noundef nonnull %81, i32 noundef %2)
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %123

91:                                               ; preds = %88
  br i1 %82, label %124, label %92

92:                                               ; preds = %91
  %93 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %40, i32 0, i32 8
  %94 = load i32, ptr %93, align 4
  %95 = add i32 %94, -1
  store i32 %95, ptr %93, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %124

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %40, i32 0, i32 15
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.snd_rawmidi_ops, ptr %99, i32 0, i32 1
  %101 = load ptr, ptr %100, align 4
  %102 = tail call i32 %101(ptr noundef nonnull %40) #15
  %103 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %40, i32 0, i32 13
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %104, i32 0, i32 15
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %110, label %108

108:                                              ; preds = %97
  tail call void %106(ptr noundef nonnull %40) #15
  %109 = load ptr, ptr %103, align 4
  br label %110

110:                                              ; preds = %108, %97
  %111 = phi ptr [ %109, %108 ], [ %104, %97 ]
  %112 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %111, i32 0, i32 2
  %113 = load ptr, ptr %112, align 4
  tail call void @kvfree(ptr noundef %113) #15
  tail call void @kfree(ptr noundef %111) #15
  store ptr null, ptr %103, align 4
  %114 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %40, i32 0, i32 3
  store i8 0, ptr %114, align 4
  %115 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %40, i32 0, i32 4
  store i8 0, ptr %115, align 1
  %116 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %40, i32 0, i32 14
  %117 = load ptr, ptr %116, align 4
  tail call void @put_pid(ptr noundef %117) #15
  store ptr null, ptr %116, align 4
  %118 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %40, i32 0, i32 1
  %119 = load i32, ptr %118, align 4
  %120 = getelementptr %struct.snd_rawmidi, ptr %0, i32 0, i32 7, i32 %119, i32 1
  %121 = load i32, ptr %120, align 4
  %122 = add i32 %121, -1
  store i32 %122, ptr %120, align 4
  br label %124

123:                                              ; preds = %88, %86
  store ptr %0, ptr %3, align 4
  store ptr %40, ptr %6, align 4
  store ptr %81, ptr %5, align 4
  br label %124

124:                                              ; preds = %123, %110, %92, %91, %83, %77, %54, %51, %43, %36, %20, %17, %9
  %125 = phi i32 [ 0, %123 ], [ %84, %83 ], [ %89, %91 ], [ %89, %92 ], [ %89, %110 ], [ -11, %20 ], [ -19, %17 ], [ -6, %9 ], [ -11, %54 ], [ -19, %51 ], [ -6, %43 ], [ -11, %77 ], [ -11, %36 ]
  ret i32 %125
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_rawmidi_kernel_release(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 4
  tail call fastcc void @rawmidi_release_priv(ptr noundef nonnull %0)
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.snd_card, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  tail call void @module_put(ptr noundef %7) #15
  br label %8

8:                                                ; preds = %3, %1
  %9 = phi i32 [ 0, %3 ], [ -6, %1 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rawmidi_release_priv(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.snd_rawmidi, ptr %2, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %3) #15
  %4 = getelementptr inbounds %struct.snd_rawmidi_file, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call fastcc void @close_substream(ptr noundef %2, ptr noundef nonnull %5, i32 noundef 1)
  store ptr null, ptr %4, align 4
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %struct.snd_rawmidi_file, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call fastcc void @close_substream(ptr noundef %2, ptr noundef nonnull %10, i32 noundef 1)
  store ptr null, ptr %9, align 4
  br label %13

13:                                               ; preds = %12, %8
  store ptr null, ptr %0, align 4
  tail call void @mutex_unlock(ptr noundef %3) #15
  %14 = getelementptr inbounds %struct.snd_rawmidi, ptr %2, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %14, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_rawmidi_info_select(ptr noundef readnone %0, ptr noundef %1) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @register_mutex) #15
  %3 = load i32, ptr %1, align 4
  %4 = load ptr, ptr @snd_rawmidi_devices, align 4
  %5 = icmp eq ptr %4, @snd_rawmidi_devices
  br i1 %5, label %81, label %6

6:                                                ; preds = %15, %2
  %7 = phi ptr [ %16, %15 ], [ %4, %2 ]
  %8 = getelementptr i8, ptr %7, i32 -4
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %7, i32 8
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, %3
  br i1 %14, label %18, label %15

15:                                               ; preds = %11, %6
  %16 = load ptr, ptr %7, align 4
  %17 = icmp eq ptr %16, @snd_rawmidi_devices
  br i1 %17, label %81, label %6

18:                                               ; preds = %11
  %19 = getelementptr i8, ptr %7, i32 -4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %81, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.snd_rawmidi_info, ptr %1, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = icmp ugt i32 %23, 1
  br i1 %24, label %81, label %25

25:                                               ; preds = %21
  %26 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %23, i32 2) #15, !srcloc !11
  %27 = and i32 %26, %23
  store i32 %27, ptr %22, align 4
  %28 = getelementptr %struct.snd_rawmidi, ptr %19, i32 0, i32 7, i32 %27
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %81, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.snd_rawmidi_info, ptr %1, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = icmp ult i32 %33, %29
  br i1 %34, label %35, label %81

35:                                               ; preds = %31
  %36 = getelementptr %struct.snd_rawmidi, ptr %19, i32 0, i32 7, i32 %27, i32 2
  br label %37

37:                                               ; preds = %41, %35
  %38 = phi ptr [ %36, %35 ], [ %39, %41 ]
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, %36
  br i1 %40, label %81, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %39, i32 0, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, %33
  br i1 %44, label %45, label %37

45:                                               ; preds = %41
  %46 = icmp eq ptr %39, null
  br i1 %46, label %81, label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %39, i32 0, i32 2
  %49 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %39, i32 0, i32 10
  %50 = load ptr, ptr %49, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(268) %1, i8 0, i32 268, i1 false) #15
  %51 = load ptr, ptr %50, align 8
  %52 = load i32, ptr %51, align 8
  %53 = getelementptr inbounds %struct.snd_rawmidi_info, ptr %1, i32 0, i32 3
  store i32 %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.snd_rawmidi, ptr %50, i32 0, i32 2
  %55 = load i32, ptr %54, align 4
  store i32 %55, ptr %1, align 4
  %56 = load i32, ptr %48, align 4
  store i32 %56, ptr %32, align 4
  %57 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %39, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  store i32 %58, ptr %22, align 4
  %59 = getelementptr inbounds %struct.snd_rawmidi, ptr %50, i32 0, i32 3
  %60 = load i32, ptr %59, align 8
  %61 = getelementptr inbounds %struct.snd_rawmidi_info, ptr %1, i32 0, i32 4
  store i32 %60, ptr %61, align 4
  %62 = getelementptr inbounds %struct.snd_rawmidi_info, ptr %1, i32 0, i32 5
  %63 = getelementptr inbounds %struct.snd_rawmidi, ptr %50, i32 0, i32 4
  %64 = tail call ptr @strcpy(ptr noundef %62, ptr noundef %63) #15
  %65 = getelementptr inbounds %struct.snd_rawmidi_info, ptr %1, i32 0, i32 6
  %66 = getelementptr inbounds %struct.snd_rawmidi, ptr %50, i32 0, i32 5
  %67 = tail call ptr @strcpy(ptr noundef %65, ptr noundef %66) #15
  %68 = getelementptr inbounds %struct.snd_rawmidi_info, ptr %1, i32 0, i32 7
  %69 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %39, i32 0, i32 12
  %70 = tail call ptr @strcpy(ptr noundef %68, ptr noundef %69) #15
  %71 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %39, i32 0, i32 11
  %72 = load ptr, ptr %71, align 4
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr inbounds %struct.snd_rawmidi_info, ptr %1, i32 0, i32 8
  store i32 %73, ptr %74, align 4
  %75 = load ptr, ptr %71, align 4
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr inbounds %struct.snd_rawmidi_str, ptr %75, i32 0, i32 1
  %78 = load i32, ptr %77, align 4
  %79 = sub i32 %76, %78
  %80 = getelementptr inbounds %struct.snd_rawmidi_info, ptr %1, i32 0, i32 9
  store i32 %79, ptr %80, align 4
  br label %81

81:                                               ; preds = %47, %45, %37, %31, %25, %21, %18, %15, %2
  %82 = phi i32 [ -6, %18 ], [ -22, %21 ], [ -2, %25 ], [ -6, %31 ], [ 0, %47 ], [ -19, %45 ], [ -6, %2 ], [ -6, %37 ], [ -6, %15 ]
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #15
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_rawmidi_output_params(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 4
  %4 = load i8, ptr %3, align 1, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %20, label %10

10:                                               ; preds = %6, %2
  %11 = tail call i32 @snd_rawmidi_drain_output(ptr noundef %0)
  %12 = getelementptr inbounds %struct.snd_rawmidi_params, ptr %1, i32 0, i32 3
  %13 = load i8, ptr %12, align 4
  %14 = and i8 %13, 1
  %15 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 5
  %16 = xor i8 %14, 1
  store i8 %16, ptr %15, align 2
  %17 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 13
  %18 = load ptr, ptr %17, align 4
  %19 = tail call fastcc i32 @resize_runtime_buffer(ptr noundef %18, ptr noundef %1, i1 noundef zeroext false)
  br label %20

20:                                               ; preds = %10, %6
  %21 = phi i32 [ %19, %10 ], [ -16, %6 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @resize_runtime_buffer(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.snd_rawmidi_params, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, -1048577
  %7 = icmp ult i32 %6, -1048545
  br i1 %7, label %54, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.snd_rawmidi_params, ptr %1, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 7
  %12 = icmp ne i32 %11, 1
  %13 = and i32 %5, 31
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %16, label %54

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.snd_rawmidi_params, ptr %1, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  %20 = icmp ugt i32 %18, %5
  %21 = select i1 %19, i1 true, i1 %20
  br i1 %21, label %54, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %0, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %5, %24
  br i1 %25, label %51, label %26

26:                                               ; preds = %22
  %27 = tail call noalias ptr @kvmalloc_node(i32 noundef %5, i32 noundef 3520, i32 noundef -1) #17
  %28 = icmp eq ptr %27, null
  br i1 %28, label %54, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %0, i32 0, i32 10
  tail call void @_raw_spin_lock_irq(ptr noundef %30) #15
  %31 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %0, i32 0, i32 9
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  %35 = load i16, ptr %30, align 4
  %36 = add i16 %35, 1
  store i16 %36, ptr %30, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !14
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !16
  tail call void @kvfree(ptr noundef nonnull %27) #15
  br label %54

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %0, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  store ptr %27, ptr %38, align 4
  %40 = load i32, ptr %4, align 4
  store i32 %40, ptr %23, align 4
  %41 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %0, i32 0, i32 1
  %42 = load i8, ptr %41, align 4
  %43 = and i8 %42, -2
  store i8 %43, ptr %41, align 4
  %44 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %0, i32 0, i32 5
  store i32 0, ptr %44, align 4
  %45 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %0, i32 0, i32 4
  store i32 0, ptr %45, align 4
  %46 = select i1 %2, i32 0, i32 %40
  %47 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %0, i32 0, i32 7
  store i32 %46, ptr %47, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  %48 = load i16, ptr %30, align 4
  %49 = add i16 %48, 1
  store i16 %49, ptr %30, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !14
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !16
  tail call void @kvfree(ptr noundef %39) #15
  %50 = load i32, ptr %17, align 4
  br label %51

51:                                               ; preds = %37, %22
  %52 = phi i32 [ %50, %37 ], [ %18, %22 ]
  %53 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %0, i32 0, i32 6
  store i32 %52, ptr %53, align 4
  br label %54

54:                                               ; preds = %51, %34, %26, %16, %8, %3
  %55 = phi i32 [ -16, %34 ], [ 0, %51 ], [ -22, %3 ], [ -22, %8 ], [ -22, %16 ], [ -12, %26 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_rawmidi_input_params(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_rawmidi_params, ptr %1, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 7
  %6 = and i32 %4, 56
  %7 = icmp eq i32 %5, 0
  %8 = icmp ne i32 %6, 0
  %9 = and i1 %7, %8
  %10 = icmp ugt i32 %6, 24
  %11 = or i1 %10, %9
  %12 = icmp ugt i32 %5, 1
  %13 = select i1 %11, i1 true, i1 %12
  br i1 %13, label %44, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 3
  %16 = load i8, ptr %15, align 4, !range !8
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 15
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.snd_rawmidi_ops, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  tail call void %22(ptr noundef %0, i32 noundef 0) #15
  %23 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 13
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %24, i32 0, i32 13
  %26 = tail call zeroext i1 @cancel_work_sync(ptr noundef %25) #15
  br label %27

27:                                               ; preds = %18, %14
  %28 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 13
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %29, i32 0, i32 10
  %31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %30) #15
  %32 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %29, i32 0, i32 1
  %33 = load i8, ptr %32, align 4
  %34 = and i8 %33, -2
  store i8 %34, ptr %32, align 4
  %35 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %29, i32 0, i32 5
  store i32 0, ptr %35, align 4
  %36 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %29, i32 0, i32 4
  store i32 0, ptr %36, align 4
  %37 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %29, i32 0, i32 7
  store i32 0, ptr %37, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %30, i32 noundef %31) #15
  %38 = load ptr, ptr %28, align 4
  %39 = tail call fastcc i32 @resize_runtime_buffer(ptr noundef %38, ptr noundef %1, i1 noundef zeroext true)
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %27
  %42 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 6
  store i32 %5, ptr %42, align 4
  %43 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 7
  store i32 %6, ptr %43, align 4
  br label %44

44:                                               ; preds = %41, %27, %2
  %45 = phi i32 [ 0, %41 ], [ -22, %2 ], [ %39, %27 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_rawmidi_receive(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca [16 x i8], align 1
  %5 = alloca %struct.timespec64, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  %6 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %7 = load i32, ptr %6, align 4, !noalias !17
  switch i32 %7, label %11 [
    i32 24, label %8
    i32 16, label %9
    i32 8, label %10
  ]

8:                                                ; preds = %3
  call void @ktime_get_raw_ts64(ptr noundef nonnull %5) #15
  br label %11

9:                                                ; preds = %3
  call void @ktime_get_ts64(ptr noundef nonnull %5) #15
  br label %11

10:                                               ; preds = %3
  call void @ktime_get_real_ts64(ptr noundef nonnull %5) #15
  br label %11

11:                                               ; preds = %10, %9, %8, %3
  %12 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 13
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 3
  %15 = load i8, ptr %14, align 4, !range !8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %171, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %13, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %171, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %13, i32 0, i32 10
  %23 = call i32 @_raw_spin_lock_irqsave(ptr noundef %22) #15
  %24 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %84

27:                                               ; preds = %21
  %28 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4)
  %29 = getelementptr inbounds %struct.timespec64, ptr %5, i32 0, i32 1
  %30 = load i32, ptr %29, align 8
  %31 = load i64, ptr %5, align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %4, i8 0, i32 16, i1 false)
  %32 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %28, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 31
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %82

36:                                               ; preds = %27
  %37 = icmp sgt i32 %2, 0
  br i1 %37, label %38, label %79

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %28, i32 0, i32 3
  %40 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %28, i32 0, i32 7
  %41 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %28, i32 0, i32 2
  %42 = load i32, ptr %39, align 4
  %43 = load i32, ptr %40, align 4
  br label %44

44:                                               ; preds = %60, %38
  %45 = phi i32 [ %33, %38 ], [ %77, %60 ]
  %46 = phi i32 [ %43, %38 ], [ %73, %60 ]
  %47 = phi i32 [ %42, %38 ], [ %76, %60 ]
  %48 = phi ptr [ %1, %38 ], [ %63, %60 ]
  %49 = phi i32 [ %2, %38 ], [ %64, %60 ]
  %50 = sub i32 %47, %46
  %51 = icmp slt i32 %50, 32
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %28, i32 0, i32 8
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, %49
  store i32 %55, ptr %53, align 4
  br label %79

56:                                               ; preds = %44
  %57 = icmp ugt i32 %49, 15
  br i1 %57, label %60, label %58

58:                                               ; preds = %56
  %59 = trunc i32 %49 to i8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %4, i8 0, i32 16, i1 false)
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i8 [ %59, %58 ], [ 16, %56 ]
  %62 = zext i8 %61 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %4, ptr align 1 %48, i32 %62, i1 false) #15
  %63 = getelementptr i8, ptr %48, i32 %62
  %64 = sub nsw i32 %49, %62
  %65 = load ptr, ptr %41, align 4
  %66 = getelementptr i8, ptr %65, i32 %45
  store i8 0, ptr %66, align 1
  %67 = getelementptr inbounds i8, ptr %66, i32 1
  store i8 %61, ptr %67, align 1
  %68 = getelementptr inbounds i8, ptr %66, i32 2
  store i16 0, ptr %68, align 1
  %69 = getelementptr inbounds i8, ptr %66, i32 4
  store i32 %30, ptr %69, align 1
  %70 = getelementptr inbounds i8, ptr %66, i32 8
  store i64 %31, ptr %70, align 1
  %71 = getelementptr inbounds i8, ptr %66, i32 16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %71, ptr noundef nonnull align 1 dereferenceable(16) %4, i32 16, i1 false) #15
  %72 = load i32, ptr %40, align 4
  %73 = add i32 %72, 32
  store i32 %73, ptr %40, align 4
  %74 = load i32, ptr %32, align 4
  %75 = add i32 %74, 32
  %76 = load i32, ptr %39, align 4
  %77 = urem i32 %75, %76
  store i32 %77, ptr %32, align 4
  %78 = icmp sgt i32 %64, 0
  br i1 %78, label %44, label %79

79:                                               ; preds = %60, %52, %36
  %80 = phi i32 [ %49, %52 ], [ %2, %36 ], [ %64, %60 ]
  %81 = sub i32 %2, %80
  br label %82

82:                                               ; preds = %79, %27
  %83 = phi i32 [ %81, %79 ], [ -22, %27 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4)
  br label %149

84:                                               ; preds = %21
  %85 = icmp eq i32 %2, 1
  %86 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 9
  %87 = load i32, ptr %86, align 4
  br i1 %85, label %88, label %111

88:                                               ; preds = %84
  %89 = add i32 %87, 1
  store i32 %89, ptr %86, align 4
  %90 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %13, i32 0, i32 7
  %91 = load i32, ptr %90, align 4
  %92 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %13, i32 0, i32 3
  %93 = load i32, ptr %92, align 4
  %94 = icmp ult i32 %91, %93
  br i1 %94, label %95, label %107

95:                                               ; preds = %88
  %96 = load i8, ptr %1, align 1
  %97 = load ptr, ptr %18, align 4
  %98 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %13, i32 0, i32 5
  %99 = load i32, ptr %98, align 4
  %100 = add i32 %99, 1
  store i32 %100, ptr %98, align 4
  %101 = getelementptr i8, ptr %97, i32 %99
  store i8 %96, ptr %101, align 1
  %102 = load i32, ptr %92, align 4
  %103 = load i32, ptr %98, align 4
  %104 = urem i32 %103, %102
  store i32 %104, ptr %98, align 4
  %105 = load i32, ptr %90, align 4
  %106 = add i32 %105, 1
  store i32 %106, ptr %90, align 4
  br label %152

107:                                              ; preds = %88
  %108 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %13, i32 0, i32 8
  %109 = load i32, ptr %108, align 4
  %110 = add i32 %109, 1
  store i32 %110, ptr %108, align 4
  br label %169

111:                                              ; preds = %84
  %112 = add i32 %87, %2
  store i32 %112, ptr %86, align 4
  %113 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %13, i32 0, i32 3
  %114 = load i32, ptr %113, align 4
  %115 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %13, i32 0, i32 5
  %116 = load i32, ptr %115, align 4
  %117 = sub i32 %114, %116
  %118 = call i32 @llvm.smin.i32(i32 %117, i32 %2)
  %119 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %13, i32 0, i32 7
  %120 = load i32, ptr %119, align 4
  %121 = sub i32 %114, %120
  %122 = call i32 @llvm.smin.i32(i32 %118, i32 %121)
  %123 = load ptr, ptr %18, align 4
  %124 = getelementptr i8, ptr %123, i32 %116
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %124, ptr align 1 %1, i32 %122, i1 false)
  %125 = load i32, ptr %115, align 4
  %126 = add i32 %125, %122
  %127 = load i32, ptr %113, align 4
  %128 = urem i32 %126, %127
  store i32 %128, ptr %115, align 4
  %129 = load i32, ptr %119, align 4
  %130 = add i32 %129, %122
  store i32 %130, ptr %119, align 4
  %131 = sub i32 %2, %122
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %149

133:                                              ; preds = %111
  %134 = getelementptr i8, ptr %1, i32 %122
  %135 = sub i32 %127, %130
  %136 = icmp sgt i32 %131, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %133
  %138 = sub i32 %131, %135
  %139 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %13, i32 0, i32 8
  %140 = load i32, ptr %139, align 4
  %141 = add i32 %138, %140
  store i32 %141, ptr %139, align 4
  %142 = icmp sgt i32 %135, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %137, %133
  %144 = phi i32 [ %135, %137 ], [ %131, %133 ]
  %145 = load ptr, ptr %18, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %145, ptr align 1 %134, i32 %144, i1 false)
  store i32 %144, ptr %115, align 4
  %146 = load i32, ptr %119, align 4
  %147 = add i32 %146, %144
  store i32 %147, ptr %119, align 4
  %148 = add i32 %144, %122
  br label %149

149:                                              ; preds = %143, %137, %111, %82
  %150 = phi i32 [ %83, %82 ], [ %148, %143 ], [ %122, %137 ], [ %122, %111 ]
  %151 = icmp sgt i32 %150, 0
  br i1 %151, label %152, label %169

152:                                              ; preds = %149, %95
  %153 = phi i32 [ 1, %95 ], [ %150, %149 ]
  %154 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %13, i32 0, i32 12
  %155 = load ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %161, label %157

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %13, i32 0, i32 13
  %159 = load ptr, ptr @system_wq, align 4
  %160 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %159, ptr noundef %158) #15
  br label %169

161:                                              ; preds = %152
  %162 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %13, i32 0, i32 7
  %163 = load i32, ptr %162, align 4
  %164 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %13, i32 0, i32 6
  %165 = load i32, ptr %164, align 4
  %166 = icmp ult i32 %163, %165
  br i1 %166, label %169, label %167

167:                                              ; preds = %161
  %168 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %13, i32 0, i32 11
  call void @__wake_up(ptr noundef %168, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %169

169:                                              ; preds = %167, %161, %157, %149, %107
  %170 = phi i32 [ %153, %157 ], [ %153, %167 ], [ %153, %161 ], [ %150, %149 ], [ 0, %107 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %22, i32 noundef %23) #15
  br label %171

171:                                              ; preds = %169, %17, %11
  %172 = phi i32 [ %170, %169 ], [ -77, %11 ], [ -22, %17 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  ret i32 %172
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_rawmidi_kernel_read(ptr noundef %0, ptr noundef writeonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 3
  %5 = load i8, ptr %4, align 4, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_rawmidi_ops, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  tail call void %11(ptr noundef %0, i32 noundef 1) #15
  br label %12

12:                                               ; preds = %7, %3
  %13 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 13
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %14, i32 0, i32 10
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #15
  %17 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %14, i32 0, i32 9
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, 1
  store i32 %19, ptr %17, align 4
  %20 = icmp sgt i32 %2, 0
  br i1 %20, label %21, label %52

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %14, i32 0, i32 7
  %23 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %14, i32 0, i32 3
  %24 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %14, i32 0, i32 4
  %25 = icmp eq ptr %1, null
  %26 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %14, i32 0, i32 2
  br label %27

27:                                               ; preds = %45, %21
  %28 = phi i32 [ %2, %21 ], [ %47, %45 ]
  %29 = phi i32 [ 0, %21 ], [ %46, %45 ]
  %30 = load i32, ptr %22, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %49, label %32

32:                                               ; preds = %27
  %33 = load i32, ptr %23, align 4
  %34 = load i32, ptr %24, align 4
  %35 = sub i32 %33, %34
  %36 = tail call i32 @llvm.smin.i32(i32 %35, i32 %28) #15
  %37 = tail call i32 @llvm.smin.i32(i32 %36, i32 %30) #15
  %38 = add i32 %37, %34
  %39 = urem i32 %38, %33
  store i32 %39, ptr %24, align 4
  %40 = sub i32 %30, %37
  store i32 %40, ptr %22, align 4
  br i1 %25, label %45, label %41

41:                                               ; preds = %32
  %42 = getelementptr i8, ptr %1, i32 %29
  %43 = load ptr, ptr %26, align 4
  %44 = getelementptr i8, ptr %43, i32 %34
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %42, ptr align 1 %44, i32 %37, i1 false) #15
  br label %45

45:                                               ; preds = %41, %32
  %46 = add i32 %37, %29
  %47 = sub i32 %28, %37
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %27, label %49

49:                                               ; preds = %45, %27
  %50 = phi i32 [ %46, %45 ], [ %29, %27 ]
  %51 = load i32, ptr %17, align 4
  br label %52

52:                                               ; preds = %49, %12
  %53 = phi i32 [ %19, %12 ], [ %51, %49 ]
  %54 = phi i32 [ 0, %12 ], [ %50, %49 ]
  %55 = add i32 %53, -1
  store i32 %55, ptr %17, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %16) #15
  %56 = tail call i32 @llvm.smax.i32(i32 %54, i32 0)
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_rawmidi_transmit_empty(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %3, i32 0, i32 10
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #15
  %10 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %3, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %3, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = icmp uge i32 %11, %13
  %15 = zext i1 %14 to i32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #15
  br label %16

16:                                               ; preds = %7, %1
  %17 = phi i32 [ %15, %7 ], [ 1, %1 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @__snd_rawmidi_transmit_peek(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #6 {
  %4 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %39, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %5, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %5, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %13, %11
  br i1 %14, label %15, label %39

15:                                               ; preds = %9
  %16 = icmp eq i32 %2, 1
  %17 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %5, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  br i1 %16, label %19, label %22

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %7, i32 %18
  %21 = load i8, ptr %20, align 1
  store i8 %21, ptr %1, align 1
  br label %39

22:                                               ; preds = %15
  %23 = sub i32 %13, %18
  %24 = tail call i32 @llvm.smin.i32(i32 %23, i32 %2)
  %25 = sub i32 %13, %11
  %26 = tail call i32 @llvm.smin.i32(i32 %24, i32 %25)
  %27 = getelementptr i8, ptr %7, i32 %18
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1, ptr align 1 %27, i32 %26, i1 false)
  %28 = sub i32 %2, %26
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %22
  %31 = load i32, ptr %12, align 4
  %32 = load i32, ptr %10, align 4
  %33 = add i32 %26, %32
  %34 = sub i32 %31, %33
  %35 = tail call i32 @llvm.smin.i32(i32 %28, i32 %34)
  %36 = getelementptr i8, ptr %1, i32 %26
  %37 = load ptr, ptr %6, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %36, ptr align 1 %37, i32 %35, i1 false)
  %38 = add i32 %35, %26
  br label %39

39:                                               ; preds = %30, %22, %19, %9, %3
  %40 = phi i32 [ -22, %3 ], [ 0, %9 ], [ 1, %19 ], [ %38, %30 ], [ %26, %22 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_rawmidi_transmit_peek(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %5, i32 0, i32 10
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #15
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %42, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %8, i32 0, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %8, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %16, %14
  br i1 %17, label %18, label %42

18:                                               ; preds = %12
  %19 = icmp eq i32 %2, 1
  %20 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %8, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  br i1 %19, label %22, label %25

22:                                               ; preds = %18
  %23 = getelementptr i8, ptr %10, i32 %21
  %24 = load i8, ptr %23, align 1
  store i8 %24, ptr %1, align 1
  br label %42

25:                                               ; preds = %18
  %26 = sub i32 %16, %21
  %27 = tail call i32 @llvm.smin.i32(i32 %26, i32 %2) #15
  %28 = sub i32 %16, %14
  %29 = tail call i32 @llvm.smin.i32(i32 %27, i32 %28) #15
  %30 = getelementptr i8, ptr %10, i32 %21
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1, ptr align 1 %30, i32 %29, i1 false) #15
  %31 = sub i32 %2, %29
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %25
  %34 = load i32, ptr %15, align 4
  %35 = load i32, ptr %13, align 4
  %36 = add i32 %29, %35
  %37 = sub i32 %34, %36
  %38 = tail call i32 @llvm.smin.i32(i32 %31, i32 %37) #15
  %39 = getelementptr i8, ptr %1, i32 %29
  %40 = load ptr, ptr %9, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %39, ptr align 1 %40, i32 %38, i1 false) #15
  %41 = add i32 %38, %29
  br label %42

42:                                               ; preds = %33, %25, %22, %12, %3
  %43 = phi i32 [ -22, %3 ], [ 0, %12 ], [ 1, %22 ], [ %41, %33 ], [ %29, %25 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #15
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__snd_rawmidi_transmit_ack(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 13
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %34, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %4, i32 0, i32 7
  %10 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %4, i32 0, i32 3
  %11 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %4, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, %1
  %14 = load i32, ptr %10, align 4
  %15 = urem i32 %13, %14
  store i32 %15, ptr %11, align 4
  %16 = load i32, ptr %9, align 4
  %17 = add i32 %16, %1
  store i32 %17, ptr %9, align 4
  %18 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 9
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, %1
  store i32 %20, ptr %18, align 4
  %21 = icmp sgt i32 %1, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %8
  %23 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %4, i32 0, i32 1
  %24 = load i8, ptr %23, align 4
  %25 = and i8 %24, 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i32, ptr %9, align 4
  %29 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %4, i32 0, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = icmp ult i32 %28, %30
  br i1 %31, label %34, label %32

32:                                               ; preds = %27, %22
  %33 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %4, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %33, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %34

34:                                               ; preds = %32, %27, %8, %2
  %35 = phi i32 [ -22, %2 ], [ %1, %27 ], [ %1, %32 ], [ %1, %8 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_rawmidi_transmit_ack(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 13
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %4, i32 0, i32 10
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #15
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %37, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %7, i32 0, i32 7
  %13 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %7, i32 0, i32 3
  %14 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %7, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, %1
  %17 = load i32, ptr %13, align 4
  %18 = urem i32 %16, %17
  store i32 %18, ptr %14, align 4
  %19 = load i32, ptr %12, align 4
  %20 = add i32 %19, %1
  store i32 %20, ptr %12, align 4
  %21 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 9
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, %1
  store i32 %23, ptr %21, align 4
  %24 = icmp sgt i32 %1, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %11
  %26 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %7, i32 0, i32 1
  %27 = load i8, ptr %26, align 4
  %28 = and i8 %27, 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i32, ptr %12, align 4
  %32 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %7, i32 0, i32 6
  %33 = load i32, ptr %32, align 4
  %34 = icmp ult i32 %31, %33
  br i1 %34, label %37, label %35

35:                                               ; preds = %30, %25
  %36 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %7, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %36, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %37

37:                                               ; preds = %35, %30, %11, %2
  %38 = phi i32 [ -22, %2 ], [ %1, %30 ], [ %1, %35 ], [ %1, %11 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #15
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_rawmidi_transmit(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %5, i32 0, i32 10
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #15
  %8 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 3
  %9 = load i8, ptr %8, align 4, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %79, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %79, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %12, i32 0, i32 7
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %12, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = icmp ugt i32 %20, %18
  br i1 %21, label %22, label %79

22:                                               ; preds = %16
  %23 = icmp eq i32 %2, 1
  %24 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %12, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  br i1 %23, label %26, label %29

26:                                               ; preds = %22
  %27 = getelementptr i8, ptr %14, i32 %25
  %28 = load i8, ptr %27, align 1
  store i8 %28, ptr %1, align 1
  br label %49

29:                                               ; preds = %22
  %30 = sub i32 %20, %25
  %31 = tail call i32 @llvm.smin.i32(i32 %30, i32 %2) #15
  %32 = sub i32 %20, %18
  %33 = tail call i32 @llvm.smin.i32(i32 %31, i32 %32) #15
  %34 = getelementptr i8, ptr %14, i32 %25
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1, ptr align 1 %34, i32 %33, i1 false) #15
  %35 = sub i32 %2, %33
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %29
  %38 = load i32, ptr %19, align 4
  %39 = load i32, ptr %17, align 4
  %40 = add i32 %33, %39
  %41 = sub i32 %38, %40
  %42 = tail call i32 @llvm.smin.i32(i32 %35, i32 %41) #15
  %43 = getelementptr i8, ptr %1, i32 %33
  %44 = load ptr, ptr %13, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %43, ptr align 1 %44, i32 %42, i1 false) #15
  %45 = add i32 %42, %33
  br label %46

46:                                               ; preds = %37, %29
  %47 = phi i32 [ %45, %37 ], [ %33, %29 ]
  %48 = icmp slt i32 %47, 1
  br i1 %48, label %79, label %49

49:                                               ; preds = %46, %26
  %50 = phi i32 [ 1, %26 ], [ %47, %46 ]
  %51 = load ptr, ptr %4, align 4
  %52 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %51, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %79, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %51, i32 0, i32 7
  %57 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %51, i32 0, i32 3
  %58 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %51, i32 0, i32 5
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %59, %50
  %61 = load i32, ptr %57, align 4
  %62 = urem i32 %60, %61
  store i32 %62, ptr %58, align 4
  %63 = load i32, ptr %56, align 4
  %64 = add i32 %63, %50
  store i32 %64, ptr %56, align 4
  %65 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 9
  %66 = load i32, ptr %65, align 4
  %67 = add i32 %66, %50
  store i32 %67, ptr %65, align 4
  %68 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %51, i32 0, i32 1
  %69 = load i8, ptr %68, align 4
  %70 = and i8 %69, 1
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %55
  %73 = load i32, ptr %56, align 4
  %74 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %51, i32 0, i32 6
  %75 = load i32, ptr %74, align 4
  %76 = icmp ult i32 %73, %75
  br i1 %76, label %79, label %77

77:                                               ; preds = %72, %55
  %78 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %51, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %78, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %79

79:                                               ; preds = %77, %72, %49, %46, %16, %11, %3
  %80 = phi i32 [ -77, %3 ], [ %47, %46 ], [ -22, %49 ], [ %50, %72 ], [ %50, %77 ], [ 0, %16 ], [ -22, %11 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #15
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_rawmidi_proceed(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %3, i32 0, i32 10
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #15
  %6 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %3, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %3, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp ugt i32 %9, %7
  br i1 %10, label %11, label %43

11:                                               ; preds = %1
  %12 = sub i32 %9, %7
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %43, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %13, i32 0, i32 7
  %19 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %13, i32 0, i32 3
  %20 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %13, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, %12
  %23 = load i32, ptr %19, align 4
  %24 = urem i32 %22, %23
  store i32 %24, ptr %20, align 4
  %25 = load i32, ptr %18, align 4
  %26 = add i32 %25, %12
  store i32 %26, ptr %18, align 4
  %27 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 9
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, %12
  store i32 %29, ptr %27, align 4
  %30 = icmp sgt i32 %12, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %17
  %32 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %13, i32 0, i32 1
  %33 = load i8, ptr %32, align 4
  %34 = and i8 %33, 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i32, ptr %18, align 4
  %38 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %13, i32 0, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = icmp ult i32 %37, %39
  br i1 %40, label %43, label %41

41:                                               ; preds = %36, %31
  %42 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %13, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %42, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %43

43:                                               ; preds = %41, %36, %17, %11, %1
  %44 = phi i32 [ 0, %1 ], [ %12, %11 ], [ %12, %17 ], [ %12, %36 ], [ %12, %41 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #15
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_rawmidi_kernel_write(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call fastcc i32 @snd_rawmidi_kernel_write1(ptr noundef %0, ptr noundef null, ptr noundef %1, i32 noundef %2)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_rawmidi_kernel_write1(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 13
  %6 = load ptr, ptr %5, align 4
  %7 = icmp ne ptr %2, null
  %8 = icmp ne ptr %1, null
  %9 = or i1 %8, %7
  br i1 %9, label %10, label %111

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %6, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %111, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %6, i32 0, i32 10
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #15
  %17 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 4
  %18 = load i8, ptr %17, align 1, !range !8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %6, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  %23 = icmp slt i32 %22, %3
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %16) #15
  br label %111

25:                                               ; preds = %20, %14
  %26 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %6, i32 0, i32 9
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 1
  store i32 %28, ptr %26, align 4
  %29 = icmp sgt i32 %3, 0
  br i1 %29, label %30, label %92

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %6, i32 0, i32 7
  %32 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %6, i32 0, i32 3
  %33 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %6, i32 0, i32 4
  br label %34

34:                                               ; preds = %87, %30
  %35 = phi i32 [ %3, %30 ], [ %90, %87 ]
  %36 = phi i32 [ %16, %30 ], [ %88, %87 ]
  %37 = phi i32 [ 0, %30 ], [ %89, %87 ]
  %38 = load i32, ptr %31, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %92, label %40

40:                                               ; preds = %34
  %41 = load i32, ptr %32, align 4
  %42 = load i32, ptr %33, align 4
  %43 = sub i32 %41, %42
  %44 = tail call i32 @llvm.smin.i32(i32 %43, i32 %35)
  %45 = tail call i32 @llvm.smin.i32(i32 %44, i32 %38)
  %46 = add i32 %45, %42
  %47 = urem i32 %46, %41
  store i32 %47, ptr %33, align 4
  %48 = sub i32 %38, %45
  store i32 %48, ptr %31, align 4
  br i1 %7, label %49, label %53

49:                                               ; preds = %40
  %50 = load ptr, ptr %11, align 4
  %51 = getelementptr i8, ptr %50, i32 %42
  %52 = getelementptr i8, ptr %2, i32 %37
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %51, ptr align 1 %52, i32 %45, i1 false)
  br label %87

53:                                               ; preds = %40
  br i1 %8, label %54, label %87

54:                                               ; preds = %53
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %36) #15
  %55 = load ptr, ptr %11, align 4
  %56 = getelementptr i8, ptr %55, i32 %42
  %57 = getelementptr i8, ptr %1, i32 %37
  %58 = icmp slt i32 %45, 0
  %59 = load i1, ptr @check_copy_size.__already_done, align 1
  %60 = xor i1 %59, true
  %61 = select i1 %58, i1 %60, i1 false
  br i1 %61, label %62, label %63, !prof !20

62:                                               ; preds = %54
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %63

63:                                               ; preds = %62, %54
  br i1 %58, label %81, label %64, !prof !20

64:                                               ; preds = %63
  %65 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %57, i32 %45, i32 -1090519040) #18, !srcloc !21
  %66 = extractvalue { i32, i32 } %65, 0
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %75, !prof !10

68:                                               ; preds = %64
  %69 = tail call ptr @llvm.thread.pointer() #15
  %70 = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 3
  %71 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %70) #19, !srcloc !22
  %72 = and i32 %71, -13
  %73 = or i32 %72, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %73) #15, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !24
  %74 = tail call i32 @arm_copy_from_user(ptr noundef %56, ptr noundef %57, i32 noundef %45) #15
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %71) #15, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !24
  br label %75

75:                                               ; preds = %68, %64
  %76 = phi i32 [ %74, %68 ], [ %45, %64 ]
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %85, label %78, !prof !10

78:                                               ; preds = %75
  %79 = sub i32 %45, %76
  %80 = getelementptr i8, ptr %56, i32 %79
  tail call void @llvm.memset.p0.i32(ptr align 1 %80, i8 0, i32 %76, i1 false) #15
  br label %81

81:                                               ; preds = %78, %63
  %82 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #15
  %83 = icmp sgt i32 %37, 0
  %84 = select i1 %83, i32 %37, i32 -14
  br label %92

85:                                               ; preds = %75
  %86 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #15
  br label %87

87:                                               ; preds = %85, %53, %49
  %88 = phi i32 [ %36, %49 ], [ %86, %85 ], [ %36, %53 ]
  %89 = add i32 %45, %37
  %90 = sub i32 %35, %45
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %34, label %92

92:                                               ; preds = %87, %81, %34, %25
  %93 = phi i32 [ %84, %81 ], [ 0, %25 ], [ %89, %87 ], [ %37, %34 ]
  %94 = phi i32 [ %82, %81 ], [ %16, %25 ], [ %88, %87 ], [ %36, %34 ]
  %95 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %6, i32 0, i32 7
  %96 = load i32, ptr %95, align 4
  %97 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %6, i32 0, i32 3
  %98 = load i32, ptr %97, align 4
  %99 = icmp ult i32 %96, %98
  %100 = load i32, ptr %26, align 4
  %101 = add i32 %100, -1
  store i32 %101, ptr %26, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %94) #15
  br i1 %99, label %102, label %111

102:                                              ; preds = %92
  %103 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 3
  %104 = load i8, ptr %103, align 4, !range !8
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 15
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.snd_rawmidi_ops, ptr %108, i32 0, i32 2
  %110 = load ptr, ptr %109, align 4
  tail call void %110(ptr noundef %0, i32 noundef 1) #15
  br label %111

111:                                              ; preds = %106, %102, %92, %24, %10, %4
  %112 = phi i32 [ -11, %24 ], [ -22, %4 ], [ -22, %10 ], [ %93, %92 ], [ %93, %102 ], [ %93, %106 ]
  ret i32 %112
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_rawmidi_new(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef writeonly %5) #0 {
  %7 = icmp eq ptr %0, null
  br i1 %7, label %76, label %8

8:                                                ; preds = %6
  %9 = icmp eq ptr %5, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %8
  store ptr null, ptr %5, align 4
  br label %11

11:                                               ; preds = %10, %8
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 720) #20
  %14 = icmp eq ptr %13, null
  br i1 %14, label %76, label %15

15:                                               ; preds = %11
  store ptr %0, ptr %13, align 8
  %16 = getelementptr inbounds %struct.snd_rawmidi, ptr %13, i32 0, i32 2
  store i32 %2, ptr %16, align 4
  %17 = getelementptr inbounds %struct.snd_rawmidi, ptr %13, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %17, ptr noundef nonnull @.str.1, ptr noundef nonnull @snd_rawmidi_new.__key) #15
  %18 = getelementptr inbounds %struct.snd_rawmidi, ptr %13, i32 0, i32 11
  tail call void @__init_waitqueue_head(ptr noundef %18, ptr noundef nonnull @.str.3, ptr noundef nonnull @snd_rawmidi_new.__key.2) #15
  %19 = getelementptr inbounds %struct.snd_rawmidi, ptr %13, i32 0, i32 7
  %20 = getelementptr %struct.snd_rawmidi, ptr %13, i32 0, i32 7, i32 1
  %21 = getelementptr %struct.snd_rawmidi, ptr %13, i32 0, i32 7, i32 1, i32 2
  store volatile ptr %21, ptr %21, align 8
  %22 = getelementptr %struct.snd_rawmidi, ptr %13, i32 0, i32 7, i32 1, i32 2, i32 1
  store ptr %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.snd_rawmidi, ptr %13, i32 0, i32 7, i32 0, i32 2
  store volatile ptr %23, ptr %23, align 8
  %24 = getelementptr inbounds %struct.snd_rawmidi, ptr %13, i32 0, i32 7, i32 0, i32 2, i32 1
  store ptr %23, ptr %24, align 4
  %25 = icmp eq ptr %1, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.snd_rawmidi, ptr %13, i32 0, i32 4
  %28 = tail call i32 @strscpy(ptr noundef %27, ptr noundef nonnull %1, i32 noundef 64) #15
  br label %29

29:                                               ; preds = %26, %15
  %30 = getelementptr inbounds %struct.snd_rawmidi, ptr %13, i32 0, i32 12
  tail call void @snd_device_initialize(ptr noundef %30, ptr noundef nonnull %0) #15
  %31 = getelementptr inbounds %struct.snd_rawmidi, ptr %13, i32 0, i32 12, i32 33
  store ptr @release_rawmidi_device, ptr %31, align 4
  %32 = load i32, ptr %0, align 8
  %33 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %30, ptr noundef nonnull @.str.4, i32 noundef %32, i32 noundef %2) #15
  %34 = icmp sgt i32 %4, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %40, %29
  %36 = phi i32 [ %49, %40 ], [ 0, %29 ]
  %37 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %38 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %37, i32 noundef 3520, i32 noundef 88) #20
  %39 = icmp eq ptr %38, null
  br i1 %39, label %74, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %38, i32 0, i32 1
  store i32 1, ptr %41, align 8
  %42 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %38, i32 0, i32 2
  store i32 %36, ptr %42, align 4
  %43 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %38, i32 0, i32 10
  store ptr %13, ptr %43, align 4
  %44 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %38, i32 0, i32 11
  store ptr %20, ptr %44, align 8
  %45 = load ptr, ptr %22, align 4
  store ptr %38, ptr %22, align 4
  store ptr %21, ptr %38, align 8
  %46 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  store ptr %45, ptr %46, align 4
  store volatile ptr %38, ptr %45, align 4
  %47 = load i32, ptr %20, align 8
  %48 = add i32 %47, 1
  store i32 %48, ptr %20, align 8
  %49 = add nuw nsw i32 %36, 1
  %50 = icmp eq i32 %49, %4
  br i1 %50, label %51, label %35

51:                                               ; preds = %40, %29
  %52 = icmp sgt i32 %3, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %58, %51
  %54 = phi i32 [ %67, %58 ], [ 0, %51 ]
  %55 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %56 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %55, i32 noundef 3520, i32 noundef 88) #20
  %57 = icmp eq ptr %56, null
  br i1 %57, label %74, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %56, i32 0, i32 1
  store i32 0, ptr %59, align 8
  %60 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %56, i32 0, i32 2
  store i32 %54, ptr %60, align 4
  %61 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %56, i32 0, i32 10
  store ptr %13, ptr %61, align 4
  %62 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %56, i32 0, i32 11
  store ptr %19, ptr %62, align 8
  %63 = load ptr, ptr %24, align 4
  store ptr %56, ptr %24, align 4
  store ptr %23, ptr %56, align 8
  %64 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  store ptr %63, ptr %64, align 4
  store volatile ptr %56, ptr %63, align 4
  %65 = load i32, ptr %19, align 8
  %66 = add i32 %65, 1
  store i32 %66, ptr %19, align 8
  %67 = add nuw nsw i32 %54, 1
  %68 = icmp eq i32 %67, %3
  br i1 %68, label %69, label %53

69:                                               ; preds = %58, %51
  %70 = tail call i32 @snd_device_new(ptr noundef nonnull %0, i32 noundef 6, ptr noundef nonnull %13, ptr noundef nonnull @snd_rawmidi_new.ops) #15
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  br i1 %9, label %76, label %73

73:                                               ; preds = %72
  store ptr %13, ptr %5, align 4
  br label %76

74:                                               ; preds = %69, %53, %35
  %75 = phi i32 [ %70, %69 ], [ -12, %53 ], [ -12, %35 ]
  tail call fastcc void @snd_rawmidi_free(ptr noundef nonnull %13)
  br label %76

76:                                               ; preds = %74, %73, %72, %11, %6
  %77 = phi i32 [ %75, %74 ], [ -6, %6 ], [ -12, %11 ], [ 0, %73 ], [ 0, %72 ]
  ret i32 %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_rawmidi_dev_free(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_device, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call fastcc void @snd_rawmidi_free(ptr noundef %3)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_rawmidi_dev_register(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [16 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !9
  %3 = getelementptr inbounds %struct.snd_device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_rawmidi, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, 7
  br i1 %7, label %73, label %8

8:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @register_mutex) #15
  %9 = load ptr, ptr %4, align 8
  %10 = load i32, ptr %5, align 4
  %11 = load ptr, ptr @snd_rawmidi_devices, align 4
  %12 = icmp eq ptr %11, @snd_rawmidi_devices
  br i1 %12, label %29, label %13

13:                                               ; preds = %22, %8
  %14 = phi ptr [ %23, %22 ], [ %11, %8 ]
  %15 = getelementptr i8, ptr %14, i32 -4
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, %9
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = getelementptr i8, ptr %14, i32 8
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, %10
  br i1 %21, label %25, label %22

22:                                               ; preds = %18, %13
  %23 = load ptr, ptr %14, align 4
  %24 = icmp eq ptr %23, @snd_rawmidi_devices
  br i1 %24, label %29, label %13

25:                                               ; preds = %18
  %26 = getelementptr i8, ptr %14, i32 -4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #15
  br label %73

29:                                               ; preds = %25, %22, %8
  %30 = getelementptr inbounds %struct.snd_rawmidi, ptr %4, i32 0, i32 1
  %31 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @snd_rawmidi_devices, i32 0, i32 1), align 4
  store ptr %30, ptr getelementptr inbounds (%struct.list_head, ptr @snd_rawmidi_devices, i32 0, i32 1), align 4
  store ptr @snd_rawmidi_devices, ptr %30, align 4
  %32 = getelementptr inbounds %struct.snd_rawmidi, ptr %4, i32 0, i32 1, i32 1
  store ptr %31, ptr %32, align 4
  store volatile ptr %30, ptr %31, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #15
  %33 = load ptr, ptr %4, align 8
  %34 = load i32, ptr %5, align 4
  %35 = getelementptr inbounds %struct.snd_rawmidi, ptr %4, i32 0, i32 12
  %36 = tail call i32 @snd_register_device(i32 noundef 4, ptr noundef %33, i32 noundef %34, ptr noundef nonnull @snd_rawmidi_f_ops, ptr noundef %4, ptr noundef %35) #15
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.8) #16
  br label %68

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.snd_rawmidi, ptr %4, i32 0, i32 6
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr %41, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = tail call i32 %44(ptr noundef %4) #15
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %66, label %49

49:                                               ; preds = %46, %43, %39
  %50 = load i32, ptr %5, align 4
  %51 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.9, i32 noundef %50)
  %52 = load ptr, ptr %4, align 8
  %53 = getelementptr inbounds %struct.snd_card, ptr %52, i32 0, i32 20
  %54 = load ptr, ptr %53, align 8
  %55 = call ptr @snd_info_create_card_entry(ptr noundef %52, ptr noundef nonnull %2, ptr noundef %54) #15
  %56 = icmp eq ptr %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.snd_info_entry, ptr %55, i32 0, i32 7
  store ptr %4, ptr %58, align 4
  %59 = getelementptr inbounds %struct.snd_info_entry, ptr %55, i32 0, i32 4
  store ptr @snd_rawmidi_proc_info_read, ptr %59, align 4
  %60 = call i32 @snd_info_register(ptr noundef nonnull %55) #15
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  call void @snd_info_free_entry(ptr noundef nonnull %55) #15
  br label %63

63:                                               ; preds = %62, %57, %49
  %64 = phi ptr [ null, %62 ], [ %55, %57 ], [ null, %49 ]
  %65 = getelementptr inbounds %struct.snd_rawmidi, ptr %4, i32 0, i32 13
  store ptr %64, ptr %65, align 8
  br label %73

66:                                               ; preds = %46
  %67 = tail call i32 @snd_unregister_device(ptr noundef %35) #15
  br label %68

68:                                               ; preds = %66, %38
  %69 = phi i32 [ %36, %38 ], [ %47, %66 ]
  tail call void @mutex_lock(ptr noundef nonnull @register_mutex) #15
  %70 = load ptr, ptr %32, align 4
  %71 = load ptr, ptr %30, align 4
  %72 = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  store ptr %70, ptr %72, align 4
  store volatile ptr %71, ptr %70, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %30, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %32, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #15
  br label %73

73:                                               ; preds = %68, %63, %28, %1
  %74 = phi i32 [ %69, %68 ], [ 0, %63 ], [ -12, %1 ], [ -16, %28 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_rawmidi_dev_disconnect(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_device, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void @mutex_lock(ptr noundef nonnull @register_mutex) #15
  %4 = getelementptr inbounds %struct.snd_rawmidi, ptr %3, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %4) #15
  %5 = getelementptr inbounds %struct.snd_rawmidi, ptr %3, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %5, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  %6 = getelementptr inbounds %struct.snd_rawmidi, ptr %3, i32 0, i32 1
  %7 = getelementptr inbounds %struct.snd_rawmidi, ptr %3, i32 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr %9, ptr %8, align 4
  store volatile ptr %6, ptr %6, align 4
  store ptr %6, ptr %7, align 4
  %11 = getelementptr %struct.snd_rawmidi, ptr %3, i32 0, i32 7, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %24, label %14

14:                                               ; preds = %21, %1
  %15 = phi ptr [ %22, %21 ], [ %12, %1 ]
  %16 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %15, i32 0, i32 13
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %17, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %20, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %21

21:                                               ; preds = %19, %14
  %22 = load ptr, ptr %15, align 4
  %23 = icmp eq ptr %22, %11
  br i1 %23, label %24, label %14

24:                                               ; preds = %21, %1
  %25 = getelementptr %struct.snd_rawmidi, ptr %3, i32 0, i32 7, i32 1, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %25
  br i1 %27, label %38, label %28

28:                                               ; preds = %35, %24
  %29 = phi ptr [ %36, %35 ], [ %26, %24 ]
  %30 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %29, i32 0, i32 13
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %31, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %34, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %35

35:                                               ; preds = %33, %28
  %36 = load ptr, ptr %29, align 4
  %37 = icmp eq ptr %36, %25
  br i1 %37, label %38, label %28

38:                                               ; preds = %35, %24
  %39 = getelementptr inbounds %struct.snd_rawmidi, ptr %3, i32 0, i32 12
  %40 = tail call i32 @snd_unregister_device(ptr noundef %39) #15
  tail call void @mutex_unlock(ptr noundef %4) #15
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_device_initialize(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @release_rawmidi_device(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -240
  tail call void @kfree(ptr noundef %2) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_device_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @snd_rawmidi_free(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %46, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.snd_rawmidi, ptr %0, i32 0, i32 13
  %5 = load ptr, ptr %4, align 8
  tail call void @snd_info_free_entry(ptr noundef %5) #15
  store ptr null, ptr %4, align 8
  tail call void @mutex_lock(ptr noundef nonnull @register_mutex) #15
  %6 = getelementptr inbounds %struct.snd_rawmidi, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.snd_rawmidi_global_ops, ptr %7, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call i32 %11(ptr noundef nonnull %0) #15
  br label %15

15:                                               ; preds = %13, %9, %3
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #15
  %16 = getelementptr %struct.snd_rawmidi, ptr %0, i32 0, i32 7, i32 1, i32 2
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %27, label %19

19:                                               ; preds = %19, %15
  %20 = phi ptr [ %25, %19 ], [ %17, %15 ]
  %21 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %20, align 4
  %24 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  store ptr %22, ptr %24, align 4
  store volatile ptr %23, ptr %22, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %20, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %21, align 4
  tail call void @kfree(ptr noundef %20) #15
  %25 = load volatile ptr, ptr %16, align 4
  %26 = icmp eq ptr %25, %16
  br i1 %26, label %27, label %19

27:                                               ; preds = %19, %15
  %28 = getelementptr inbounds %struct.snd_rawmidi, ptr %0, i32 0, i32 7, i32 0, i32 2
  %29 = load volatile ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %28
  br i1 %30, label %39, label %31

31:                                               ; preds = %31, %27
  %32 = phi ptr [ %37, %31 ], [ %29, %27 ]
  %33 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %32, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  store ptr %34, ptr %36, align 4
  store volatile ptr %35, ptr %34, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %32, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %33, align 4
  tail call void @kfree(ptr noundef %32) #15
  %37 = load volatile ptr, ptr %28, align 4
  %38 = icmp eq ptr %37, %28
  br i1 %38, label %39, label %31

39:                                               ; preds = %31, %27
  %40 = getelementptr inbounds %struct.snd_rawmidi, ptr %0, i32 0, i32 9
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  tail call void %41(ptr noundef nonnull %0) #15
  br label %44

44:                                               ; preds = %43, %39
  %45 = getelementptr inbounds %struct.snd_rawmidi, ptr %0, i32 0, i32 12
  tail call void @put_device(ptr noundef %45) #15
  br label %46

46:                                               ; preds = %44, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_rawmidi_set_ops(ptr noundef readonly %0, i32 noundef %1, ptr noundef %2) #7 {
  %4 = getelementptr %struct.snd_rawmidi, ptr %0, i32 0, i32 7, i32 %1, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %12, label %7

7:                                                ; preds = %7, %3
  %8 = phi ptr [ %10, %7 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %8, i32 0, i32 15
  store ptr %2, ptr %9, align 4
  %10 = load ptr, ptr %8, align 4
  %11 = icmp eq ptr %10, %4
  br i1 %11, label %12, label %7

12:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #8 section ".init.text" {
  %1 = tail call i32 @snd_ctl_register_ioctl(ptr noundef nonnull @snd_rawmidi_control_ioctl) #15
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #8 section ".exit.text" {
  %1 = tail call i32 @snd_ctl_unregister_ioctl(ptr noundef nonnull @snd_rawmidi_control_ioctl) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @open_substream(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %1, i32 0, i32 8
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %72

7:                                                ; preds = %3
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 84) #20
  %10 = icmp eq ptr %9, null
  br i1 %10, label %75, label %11

11:                                               ; preds = %7
  store ptr %1, ptr %9, align 8
  %12 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %9, i32 0, i32 10
  store i32 0, ptr %12, align 8
  %13 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %9, i32 0, i32 11
  tail call void @__init_waitqueue_head(ptr noundef %13, ptr noundef nonnull @.str.5, ptr noundef nonnull @snd_rawmidi_runtime_create.__key) #15
  %14 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %9, i32 0, i32 13
  store i32 -32, ptr %14, align 4
  %15 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %9, i32 0, i32 13, i32 1
  store volatile ptr %15, ptr %15, align 8
  %16 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %9, i32 0, i32 13, i32 1, i32 1
  store ptr %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %9, i32 0, i32 13, i32 2
  store ptr @snd_rawmidi_input_event_work, ptr %17, align 8
  %18 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %9, i32 0, i32 12
  store ptr null, ptr %18, align 8
  %19 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %9, i32 0, i32 3
  store i32 4096, ptr %19, align 4
  %20 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %9, i32 0, i32 6
  store i32 1, ptr %20, align 8
  %21 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %1, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 1
  %24 = select i1 %23, i32 0, i32 4096
  %25 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %9, i32 0, i32 7
  store i32 %24, ptr %25, align 4
  %26 = tail call noalias ptr @kvmalloc_node(i32 noundef 4096, i32 noundef 3520, i32 noundef -1) #17
  %27 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %9, i32 0, i32 2
  store ptr %26, ptr %27, align 8
  %28 = icmp eq ptr %26, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %11
  tail call void @kfree(ptr noundef nonnull %9) #15
  br label %75

30:                                               ; preds = %11
  %31 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %9, i32 0, i32 5
  store i32 0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %9, i32 0, i32 4
  store i32 0, ptr %32, align 8
  %33 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %1, i32 0, i32 13
  store ptr %9, ptr %33, align 4
  %34 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %1, i32 0, i32 15
  %35 = load ptr, ptr %34, align 4
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 %36(ptr noundef %1) #15
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load ptr, ptr %33, align 4
  %41 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %40, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  tail call void @kvfree(ptr noundef %42) #15
  tail call void @kfree(ptr noundef %40) #15
  store ptr null, ptr %33, align 4
  br label %75

43:                                               ; preds = %30
  %44 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %1, i32 0, i32 3
  store i8 1, ptr %44, align 4
  %45 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %1, i32 0, i32 5
  store i8 0, ptr %45, align 2
  %46 = and i32 %2, 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %1, i32 0, i32 4
  store i8 1, ptr %49, align 1
  br label %50

50:                                               ; preds = %48, %43
  %51 = tail call ptr @llvm.thread.pointer() #15
  %52 = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 62
  %53 = load ptr, ptr %52, align 64
  %54 = icmp eq ptr %53, null
  br i1 %54, label %65, label %55

55:                                               ; preds = %50
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %53) #15, !srcloc !25
  %56 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %53, ptr nonnull %53, i32 1, ptr nonnull elementtype(i32) %53) #15, !srcloc !26
  %57 = extractvalue { i32, i32, i32 } %56, 0
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %63, label %59, !prof !20

59:                                               ; preds = %55
  %60 = add i32 %57, 1
  %61 = or i32 %60, %57
  %62 = icmp sgt i32 %61, -1
  br i1 %62, label %65, label %63, !prof !10

63:                                               ; preds = %59, %55
  %64 = phi i32 [ 2, %55 ], [ 1, %59 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %53, i32 noundef %64) #15
  br label %65

65:                                               ; preds = %63, %59, %50
  %66 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %1, i32 0, i32 14
  store ptr %53, ptr %66, align 4
  %67 = load i32, ptr %21, align 4
  %68 = getelementptr %struct.snd_rawmidi, ptr %0, i32 0, i32 7, i32 %67, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = add i32 %69, 1
  store i32 %70, ptr %68, align 4
  %71 = load i32, ptr %4, align 4
  br label %72

72:                                               ; preds = %65, %3
  %73 = phi i32 [ %71, %65 ], [ %5, %3 ]
  %74 = add i32 %73, 1
  store i32 %74, ptr %4, align 4
  br label %75

75:                                               ; preds = %72, %39, %29, %7
  %76 = phi i32 [ %37, %39 ], [ 0, %72 ], [ -12, %29 ], [ -12, %7 ]
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @close_substream(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %1, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, -1
  store i32 %7, ptr %5, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %72

9:                                                ; preds = %3
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %46, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %1, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %1, i32 0, i32 3
  %17 = load i8, ptr %16, align 4, !range !8
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %46, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %1, i32 0, i32 15
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.snd_rawmidi_ops, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  tail call void %23(ptr noundef %1, i32 noundef 0) #15
  %24 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %1, i32 0, i32 13
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %25, i32 0, i32 13
  %27 = tail call zeroext i1 @cancel_work_sync(ptr noundef %26) #15
  br label %46

28:                                               ; preds = %11
  %29 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %1, i32 0, i32 5
  %30 = load i8, ptr %29, align 2, !range !8
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  store i8 -2, ptr %4, align 1
  %33 = call fastcc i32 @snd_rawmidi_kernel_write1(ptr noundef %1, ptr noundef null, ptr noundef nonnull %4, i32 noundef 1) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  br label %34

34:                                               ; preds = %32, %28
  %35 = call i32 @snd_rawmidi_drain_output(ptr noundef %1)
  %36 = icmp eq i32 %35, -512
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %1, i32 0, i32 3
  %39 = load i8, ptr %38, align 4, !range !8
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %1, i32 0, i32 15
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.snd_rawmidi_ops, ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  call void %45(ptr noundef %1, i32 noundef 0) #15
  br label %46

46:                                               ; preds = %41, %37, %34, %19, %15, %9
  %47 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %1, i32 0, i32 15
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.snd_rawmidi_ops, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = call i32 %50(ptr noundef %1) #15
  %52 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %1, i32 0, i32 13
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %53, i32 0, i32 15
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %46
  call void %55(ptr noundef %1) #15
  %58 = load ptr, ptr %52, align 4
  br label %59

59:                                               ; preds = %57, %46
  %60 = phi ptr [ %58, %57 ], [ %53, %46 ]
  %61 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %60, i32 0, i32 2
  %62 = load ptr, ptr %61, align 4
  call void @kvfree(ptr noundef %62) #15
  call void @kfree(ptr noundef %60) #15
  store ptr null, ptr %52, align 4
  %63 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %1, i32 0, i32 3
  store i8 0, ptr %63, align 4
  %64 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %1, i32 0, i32 4
  store i8 0, ptr %64, align 1
  %65 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %1, i32 0, i32 14
  %66 = load ptr, ptr %65, align 4
  call void @put_pid(ptr noundef %66) #15
  store ptr null, ptr %65, align 4
  %67 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %1, i32 0, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr %struct.snd_rawmidi, ptr %0, i32 0, i32 7, i32 %68, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = add i32 %70, -1
  store i32 %71, ptr %69, align 4
  br label %72

72:                                               ; preds = %59, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_rawmidi_input_event_work(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 -60
  %7 = load ptr, ptr %6, align 4
  tail call void %3(ptr noundef %7) #15
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_raw_ts64(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_ts64(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_info_free_entry(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_register_device(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_info_create_card_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_rawmidi_proc_info_read(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_info_entry, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %1, align 4
  %6 = getelementptr inbounds %struct.snd_rawmidi, ptr %4, i32 0, i32 5
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef nonnull @.str.14, ptr noundef %6) #15
  %7 = getelementptr inbounds %struct.snd_rawmidi, ptr %4, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %7) #15
  %8 = getelementptr inbounds %struct.snd_rawmidi, ptr %4, i32 0, i32 3
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %51, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.snd_rawmidi, ptr %4, i32 0, i32 7, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %51, label %16

16:                                               ; preds = %46, %12
  %17 = phi ptr [ %47, %46 ], [ %14, %12 ]
  %18 = load ptr, ptr %1, align 4
  %19 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %17, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %17, i32 0, i32 9
  %22 = load i32, ptr %21, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %18, ptr noundef nonnull @.str.15, i32 noundef %20, i32 noundef %22) #15
  %23 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %17, i32 0, i32 3
  %24 = load i8, ptr %23, align 4, !range !8
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %46, label %26

26:                                               ; preds = %16
  %27 = load ptr, ptr %1, align 4
  %28 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %17, i32 0, i32 14
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 @pid_vnr(ptr noundef %29) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %27, ptr noundef nonnull @.str.16, i32 noundef %30) #15
  %31 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %17, i32 0, i32 13
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %32, i32 0, i32 10
  tail call void @_raw_spin_lock_irq(ptr noundef %33) #15
  %34 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %32, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %32, i32 0, i32 7
  %37 = load i32, ptr %36, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  %38 = load i16, ptr %33, align 4
  %39 = add i16 %38, 1
  store i16 %39, ptr %33, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !14
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !16
  %40 = load ptr, ptr %1, align 4
  %41 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %32, i32 0, i32 1
  %42 = load i8, ptr %41, align 4
  %43 = and i8 %42, 2
  %44 = icmp eq i8 %43, 0
  %45 = select i1 %44, ptr @.str.19, ptr @.str.18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %40, ptr noundef nonnull @.str.17, ptr noundef nonnull %45, i32 noundef %35, i32 noundef %37) #15
  br label %46

46:                                               ; preds = %26, %16
  %47 = load ptr, ptr %17, align 4
  %48 = icmp eq ptr %47, %13
  br i1 %48, label %49, label %16

49:                                               ; preds = %46
  %50 = load i32, ptr %8, align 8
  br label %51

51:                                               ; preds = %49, %12, %2
  %52 = phi i32 [ %50, %49 ], [ %9, %12 ], [ %9, %2 ]
  %53 = and i32 %52, 2
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %101, label %55

55:                                               ; preds = %51
  %56 = getelementptr %struct.snd_rawmidi, ptr %4, i32 0, i32 7, i32 1, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, %56
  br i1 %58, label %101, label %59

59:                                               ; preds = %98, %55
  %60 = phi ptr [ %99, %98 ], [ %57, %55 ]
  %61 = load ptr, ptr %1, align 4
  %62 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %60, i32 0, i32 2
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %60, i32 0, i32 9
  %65 = load i32, ptr %64, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %61, ptr noundef nonnull @.str.20, i32 noundef %63, i32 noundef %65) #15
  %66 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %60, i32 0, i32 3
  %67 = load i8, ptr %66, align 4, !range !8
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %98, label %69

69:                                               ; preds = %59
  %70 = load ptr, ptr %1, align 4
  %71 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %60, i32 0, i32 14
  %72 = load ptr, ptr %71, align 4
  %73 = tail call i32 @pid_vnr(ptr noundef %72) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %70, ptr noundef nonnull @.str.16, i32 noundef %73) #15
  %74 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %60, i32 0, i32 13
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %75, i32 0, i32 10
  tail call void @_raw_spin_lock_irq(ptr noundef %76) #15
  %77 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %75, i32 0, i32 3
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %75, i32 0, i32 7
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %75, i32 0, i32 8
  %82 = load i32, ptr %81, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  %83 = load i16, ptr %76, align 4
  %84 = add i16 %83, 1
  store i16 %84, ptr %76, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !14
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !16
  %85 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %85, ptr noundef nonnull @.str.21, i32 noundef %78, i32 noundef %80, i32 noundef %82) #15
  %86 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %60, i32 0, i32 6
  %87 = load i32, ptr %86, align 4
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %98

89:                                               ; preds = %69
  %90 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %60, i32 0, i32 7
  %91 = load i32, ptr %90, align 4
  %92 = icmp ugt i32 %91, 31
  br i1 %92, label %98, label %93

93:                                               ; preds = %89
  %94 = lshr i32 %91, 3
  %95 = load ptr, ptr %1, align 4
  %96 = getelementptr [4 x ptr], ptr @snd_rawmidi_proc_info_read.clock_names, i32 0, i32 %94
  %97 = load ptr, ptr %96, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %95, ptr noundef nonnull @.str.22, ptr noundef %97) #15
  br label %98

98:                                               ; preds = %93, %89, %69, %59
  %99 = load ptr, ptr %60, align 4
  %100 = icmp eq ptr %99, %56
  br i1 %100, label %101, label %59

101:                                              ; preds = %98, %55, %51
  tail call void @mutex_unlock(ptr noundef %7) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_info_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_rawmidi_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca %struct.wait_queue_entry, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.snd_rawmidi_file, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %160, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %9, i32 0, i32 13
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %9, i32 0, i32 3
  %15 = load i8, ptr %14, align 4, !range !8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %9, i32 0, i32 15
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.snd_rawmidi_ops, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  tail call void %21(ptr noundef nonnull %9, i32 noundef 1) #15
  br label %22

22:                                               ; preds = %17, %11
  %23 = icmp eq i32 %2, 0
  br i1 %23, label %160, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %13, i32 0, i32 10
  %26 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %13, i32 0, i32 7
  %27 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %13, i32 0, i32 6
  %28 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %29 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 1
  %30 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 2
  %31 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %13, i32 0, i32 11
  br label %32

32:                                               ; preds = %154, %24
  %33 = phi i32 [ 0, %24 ], [ %156, %154 ]
  %34 = phi i32 [ %2, %24 ], [ %158, %154 ]
  %35 = phi ptr [ %1, %24 ], [ %157, %154 ]
  call void @_raw_spin_lock_irq(ptr noundef %25) #15
  %36 = load i32, ptr %26, align 4
  %37 = load i32, ptr %27, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %79

39:                                               ; preds = %32
  %40 = icmp sgt i32 %33, 0
  br label %41

41:                                               ; preds = %76, %39
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !9
  %42 = load i32, ptr %28, align 4
  %43 = and i32 %42, 2048
  %44 = icmp ne i32 %43, 0
  %45 = select i1 %44, i1 true, i1 %40
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  %47 = load i16, ptr %25, align 4
  %48 = add i16 %47, 1
  store i16 %48, ptr %25, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !14
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !16
  %49 = select i1 %40, i32 %33, i32 -11
  br label %74

50:                                               ; preds = %41
  %51 = tail call ptr @llvm.thread.pointer() #15
  store ptr %51, ptr %29, align 4
  store ptr @default_wake_function, ptr %30, align 4
  call void @add_wait_queue(ptr noundef %31, ptr noundef nonnull %5) #15
  %52 = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 1
  store volatile i32 1, ptr %52, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !27
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  %53 = load i16, ptr %25, align 4
  %54 = add i16 %53, 1
  store i16 %54, ptr %25, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !14
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !16
  call void @schedule() #15
  call void @remove_wait_queue(ptr noundef %31, ptr noundef nonnull %5) #15
  %55 = load ptr, ptr %7, align 4
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.snd_card, ptr %56, i32 0, i32 25
  %58 = load i32, ptr %57, align 8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %50
  %61 = load volatile i32, ptr %51, align 4
  %62 = and i32 %61, 256
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %74, !prof !10

64:                                               ; preds = %60
  %65 = load volatile i32, ptr %51, align 4
  %66 = and i32 %65, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  call void @_raw_spin_lock_irq(ptr noundef %25) #15
  %69 = load i32, ptr %26, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  %72 = load i16, ptr %25, align 4
  %73 = add i16 %72, 1
  store i16 %73, ptr %25, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !14
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !16
  br label %74

74:                                               ; preds = %71, %64, %60, %50, %46
  %75 = phi i32 [ -5, %71 ], [ %49, %46 ], [ -512, %60 ], [ -19, %50 ], [ -512, %64 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #15
  br label %160

76:                                               ; preds = %68
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #15
  %77 = load i32, ptr %27, align 4
  %78 = icmp ult i32 %69, %77
  br i1 %78, label %41, label %79

79:                                               ; preds = %76, %32
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  %80 = load i16, ptr %25, align 4
  %81 = add i16 %80, 1
  store i16 %81, ptr %25, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !14
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !16
  %82 = load ptr, ptr %12, align 4
  %83 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %82, i32 0, i32 10
  %84 = call i32 @_raw_spin_lock_irqsave(ptr noundef %83) #15
  %85 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %82, i32 0, i32 9
  %86 = load i32, ptr %85, align 4
  %87 = add i32 %86, 1
  store i32 %87, ptr %85, align 4
  %88 = icmp sgt i32 %34, 0
  br i1 %88, label %89, label %142

89:                                               ; preds = %79
  %90 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %82, i32 0, i32 7
  %91 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %82, i32 0, i32 3
  %92 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %82, i32 0, i32 4
  %93 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %82, i32 0, i32 2
  %94 = icmp eq ptr %35, null
  br label %95

95:                                               ; preds = %137, %89
  %96 = phi i32 [ %34, %89 ], [ %140, %137 ]
  %97 = phi i32 [ %84, %89 ], [ %138, %137 ]
  %98 = phi i32 [ 0, %89 ], [ %139, %137 ]
  %99 = load i32, ptr %90, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %142, label %101

101:                                              ; preds = %95
  %102 = load i32, ptr %91, align 4
  %103 = load i32, ptr %92, align 4
  %104 = sub i32 %102, %103
  %105 = call i32 @llvm.smin.i32(i32 %104, i32 %96) #15
  %106 = call i32 @llvm.smin.i32(i32 %105, i32 %99) #15
  %107 = add i32 %106, %103
  %108 = urem i32 %107, %102
  store i32 %108, ptr %92, align 4
  %109 = sub i32 %99, %106
  store i32 %109, ptr %90, align 4
  br i1 %94, label %137, label %110

110:                                              ; preds = %101
  call void @_raw_spin_unlock_irqrestore(ptr noundef %83, i32 noundef %97) #15
  %111 = getelementptr i8, ptr %35, i32 %98
  %112 = load ptr, ptr %93, align 4
  %113 = getelementptr i8, ptr %112, i32 %103
  %114 = icmp slt i32 %106, 0
  %115 = load i1, ptr @check_copy_size.__already_done, align 1
  %116 = xor i1 %115, true
  %117 = select i1 %114, i1 %116, i1 false
  br i1 %117, label %118, label %119, !prof !20

118:                                              ; preds = %110
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %119

119:                                              ; preds = %118, %110
  br i1 %114, label %131, label %120, !prof !20

120:                                              ; preds = %119
  %121 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %111, i32 %106, i32 -1090519040) #18, !srcloc !28
  %122 = extractvalue { i32, i32 } %121, 0
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %120
  %125 = tail call ptr @llvm.thread.pointer() #15
  %126 = getelementptr inbounds %struct.thread_info, ptr %125, i32 0, i32 3
  %127 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %126) #19, !srcloc !22
  %128 = and i32 %127, -13
  %129 = or i32 %128, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %129) #15, !srcloc !23
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !24
  %130 = call i32 @arm_copy_to_user(ptr noundef %111, ptr noundef %113, i32 noundef %106) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %127) #15, !srcloc !23
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !24
  br label %133

131:                                              ; preds = %119
  %132 = call i32 @_raw_spin_lock_irqsave(ptr noundef %83) #15
  br label %142

133:                                              ; preds = %124, %120
  %134 = phi i32 [ %130, %124 ], [ %106, %120 ]
  %135 = icmp eq i32 %134, 0
  %136 = call i32 @_raw_spin_lock_irqsave(ptr noundef %83) #15
  br i1 %135, label %137, label %142

137:                                              ; preds = %133, %101
  %138 = phi i32 [ %136, %133 ], [ %97, %101 ]
  %139 = add i32 %106, %98
  %140 = sub i32 %96, %106
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %95, label %142

142:                                              ; preds = %137, %133, %131, %95, %79
  %143 = phi i32 [ %98, %131 ], [ 0, %79 ], [ %98, %95 ], [ %139, %137 ], [ %98, %133 ]
  %144 = phi i1 [ false, %131 ], [ true, %79 ], [ true, %95 ], [ true, %137 ], [ false, %133 ]
  %145 = phi i32 [ -14, %131 ], [ 0, %79 ], [ 0, %95 ], [ 0, %137 ], [ -14, %133 ]
  %146 = phi i32 [ %132, %131 ], [ %84, %79 ], [ %97, %95 ], [ %138, %137 ], [ %136, %133 ]
  %147 = load i32, ptr %85, align 4
  %148 = add i32 %147, -1
  store i32 %148, ptr %85, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %83, i32 noundef %146) #15
  %149 = icmp sgt i32 %143, 0
  %150 = or i1 %149, %144
  br i1 %150, label %154, label %151

151:                                              ; preds = %142
  %152 = icmp sgt i32 %33, 0
  %153 = select i1 %152, i32 %33, i32 %145
  br label %160

154:                                              ; preds = %142
  %155 = call i32 @llvm.smax.i32(i32 %143, i32 0)
  %156 = add i32 %155, %33
  %157 = getelementptr i8, ptr %35, i32 %155
  %158 = sub i32 %34, %155
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %32

160:                                              ; preds = %154, %151, %74, %22, %4
  %161 = phi i32 [ %153, %151 ], [ -5, %4 ], [ %75, %74 ], [ 0, %22 ], [ %156, %154 ]
  ret i32 %161
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_rawmidi_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca %struct.wait_queue_entry, align 4
  %6 = alloca %struct.wait_queue_entry, align 4
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.snd_rawmidi_file, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %10, i32 0, i32 13
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %10, i32 0, i32 4
  %14 = load i8, ptr %13, align 1, !range !8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %12, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = icmp ult i32 %18, %2
  br i1 %19, label %160, label %20

20:                                               ; preds = %16, %4
  %21 = icmp eq i32 %2, 0
  br i1 %21, label %113, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %12, i32 0, i32 10
  %24 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %25 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 1
  %26 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 2
  %27 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %12, i32 0, i32 11
  %28 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %12, i32 0, i32 7
  br label %29

29:                                               ; preds = %111, %22
  %30 = phi i32 [ 0, %22 ], [ %98, %111 ]
  %31 = phi i32 [ %2, %22 ], [ %112, %111 ]
  %32 = phi ptr [ %1, %22 ], [ %99, %111 ]
  call void @_raw_spin_lock_irq(ptr noundef %23) #15
  br label %33

33:                                               ; preds = %88, %29
  %34 = load ptr, ptr %11, align 4
  %35 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %34, i32 0, i32 7
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %34, i32 0, i32 6
  %38 = load i32, ptr %37, align 4
  %39 = icmp ult i32 %36, %38
  br i1 %39, label %45, label %40

40:                                               ; preds = %33
  %41 = load i8, ptr %13, align 1, !range !8
  %42 = icmp ne i8 %41, 0
  %43 = icmp ult i32 %36, %31
  %44 = select i1 %42, i1 %43, i1 false
  br i1 %44, label %45, label %89

45:                                               ; preds = %40, %33
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !9
  %46 = load i32, ptr %24, align 4
  %47 = and i32 %46, 2048
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  %50 = load i16, ptr %23, align 4
  %51 = add i16 %50, 1
  store i16 %51, ptr %23, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !14
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !16
  %52 = icmp sgt i32 %30, 0
  %53 = select i1 %52, i32 %30, i32 -11
  br label %86

54:                                               ; preds = %45
  %55 = tail call ptr @llvm.thread.pointer() #15
  store ptr %55, ptr %25, align 4
  store ptr @default_wake_function, ptr %26, align 4
  call void @add_wait_queue(ptr noundef %27, ptr noundef nonnull %5) #15
  %56 = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 1
  store volatile i32 1, ptr %56, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !29
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  %57 = load i16, ptr %23, align 4
  %58 = add i16 %57, 1
  store i16 %58, ptr %23, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !14
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !16
  %59 = call i32 @schedule_timeout(i32 noundef 3000) #15
  call void @remove_wait_queue(ptr noundef %27, ptr noundef nonnull %5) #15
  %60 = load ptr, ptr %8, align 4
  %61 = load ptr, ptr %60, align 8
  %62 = getelementptr inbounds %struct.snd_card, ptr %61, i32 0, i32 25
  %63 = load i32, ptr %62, align 8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %86

65:                                               ; preds = %54
  %66 = load volatile i32, ptr %55, align 4
  %67 = and i32 %66, 256
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %73, !prof !10

69:                                               ; preds = %65
  %70 = load volatile i32, ptr %55, align 4
  %71 = and i32 %70, 1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %69, %65
  %74 = icmp sgt i32 %30, 0
  %75 = select i1 %74, i32 %30, i32 -512
  br label %86

76:                                               ; preds = %69
  call void @_raw_spin_lock_irq(ptr noundef %23) #15
  %77 = load i32, ptr %28, align 4
  %78 = icmp ne i32 %77, 0
  %79 = icmp ne i32 %59, 0
  %80 = select i1 %78, i1 true, i1 %79
  br i1 %80, label %88, label %81

81:                                               ; preds = %76
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  %82 = load i16, ptr %23, align 4
  %83 = add i16 %82, 1
  store i16 %83, ptr %23, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !14
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !16
  %84 = icmp sgt i32 %30, 0
  %85 = select i1 %84, i32 %30, i32 -5
  br label %86

86:                                               ; preds = %81, %73, %54, %49
  %87 = phi i32 [ %85, %81 ], [ %75, %73 ], [ %53, %49 ], [ -19, %54 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #15
  br label %160

88:                                               ; preds = %76
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #15
  br label %33

89:                                               ; preds = %40
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  %90 = load i16, ptr %23, align 4
  %91 = add i16 %90, 1
  store i16 %91, ptr %23, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !14
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !16
  %92 = call fastcc i32 @snd_rawmidi_kernel_write1(ptr noundef %10, ptr noundef %32, ptr noundef null, i32 noundef %31)
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = icmp sgt i32 %30, 0
  %96 = select i1 %95, i32 %30, i32 %92
  br label %160

97:                                               ; preds = %89
  %98 = add i32 %92, %30
  %99 = getelementptr i8, ptr %32, i32 %92
  %100 = icmp ugt i32 %31, %92
  br i1 %100, label %101, label %108

101:                                              ; preds = %97
  %102 = load i32, ptr %24, align 4
  %103 = and i32 %102, 2048
  %104 = icmp ne i32 %103, 0
  %105 = sub i32 %31, %92
  %106 = icmp eq i32 %105, 0
  %107 = select i1 %104, i1 true, i1 %106
  br i1 %107, label %113, label %111

108:                                              ; preds = %97
  %109 = sub i32 %31, %92
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %108, %101
  %112 = phi i32 [ %109, %108 ], [ %105, %101 ]
  br label %29

113:                                              ; preds = %108, %101, %20
  %114 = phi i32 [ 0, %20 ], [ %98, %101 ], [ %98, %108 ]
  %115 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %116 = load i32, ptr %115, align 4
  %117 = and i32 %116, 4096
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %160, label %119

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %12, i32 0, i32 10
  call void @_raw_spin_lock_irq(ptr noundef %120) #15
  %121 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %12, i32 0, i32 7
  %122 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %12, i32 0, i32 3
  %123 = load i32, ptr %121, align 4
  %124 = load i32, ptr %122, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %157, label %126

126:                                              ; preds = %119
  %127 = tail call ptr @llvm.thread.pointer() #15
  %128 = getelementptr inbounds %struct.wait_queue_entry, ptr %6, i32 0, i32 1
  %129 = getelementptr inbounds %struct.wait_queue_entry, ptr %6, i32 0, i32 2
  %130 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %12, i32 0, i32 11
  %131 = getelementptr inbounds %struct.task_struct, ptr %127, i32 0, i32 1
  br label %132

132:                                              ; preds = %153, %126
  %133 = phi i32 [ %123, %126 ], [ %154, %153 ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i64 20, i1 false)
  store ptr %127, ptr %128, align 4
  store ptr @default_wake_function, ptr %129, align 4
  call void @add_wait_queue(ptr noundef %130, ptr noundef nonnull %6) #15
  store volatile i32 1, ptr %131, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !30
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  %134 = load i16, ptr %120, align 4
  %135 = add i16 %134, 1
  store i16 %135, ptr %120, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !14
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !16
  %136 = call i32 @schedule_timeout(i32 noundef 3000) #15
  call void @remove_wait_queue(ptr noundef %130, ptr noundef nonnull %6) #15
  %137 = load volatile i32, ptr %127, align 4
  %138 = and i32 %137, 256
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %149, !prof !10

140:                                              ; preds = %132
  %141 = load volatile i32, ptr %127, align 4
  %142 = and i32 %141, 1
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %140
  %145 = load i32, ptr %121, align 4
  %146 = icmp ne i32 %145, %133
  %147 = icmp ne i32 %136, 0
  %148 = select i1 %146, i1 true, i1 %147
  br i1 %148, label %153, label %149

149:                                              ; preds = %144, %140, %132
  %150 = phi i32 [ -512, %132 ], [ -512, %140 ], [ -5, %144 ]
  %151 = icmp sgt i32 %114, 0
  %152 = select i1 %151, i32 %114, i32 %150
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #15
  br label %160

153:                                              ; preds = %144
  call void @_raw_spin_lock_irq(ptr noundef %120) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #15
  %154 = load i32, ptr %121, align 4
  %155 = load i32, ptr %122, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %132

157:                                              ; preds = %153, %119
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  %158 = load i16, ptr %120, align 4
  %159 = add i16 %158, 1
  store i16 %159, ptr %120, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !14
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !16
  br label %160

160:                                              ; preds = %157, %149, %113, %94, %86, %16
  %161 = phi i32 [ %96, %94 ], [ -5, %16 ], [ %114, %157 ], [ %114, %113 ], [ %87, %86 ], [ %152, %149 ]
  ret i32 %161
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_rawmidi_poll(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.snd_rawmidi_file, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %28, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %6, i32 0, i32 13
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %6, i32 0, i32 3
  %12 = load i8, ptr %11, align 4, !range !8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %6, i32 0, i32 15
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.snd_rawmidi_ops, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  tail call void %18(ptr noundef nonnull %6, i32 noundef 1) #15
  br label %19

19:                                               ; preds = %14, %8
  %20 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %10, i32 0, i32 11
  %21 = icmp eq ptr %1, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %1, align 4
  %24 = icmp ne ptr %23, null
  %25 = icmp ne ptr %20, null
  %26 = and i1 %25, %24
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  tail call void %23(ptr noundef %0, ptr noundef nonnull %20, ptr noundef nonnull %1) #15
  br label %28

28:                                               ; preds = %27, %22, %2
  %29 = getelementptr inbounds %struct.snd_rawmidi_file, ptr %4, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %45, label %34

32:                                               ; preds = %19
  %33 = getelementptr inbounds %struct.snd_rawmidi_file, ptr %4, i32 0, i32 2
  br label %45

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %30, i32 0, i32 13
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %36, i32 0, i32 11
  %38 = icmp eq ptr %1, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %34
  %40 = load ptr, ptr %1, align 4
  %41 = icmp ne ptr %40, null
  %42 = icmp ne ptr %37, null
  %43 = and i1 %42, %41
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  tail call void %40(ptr noundef %0, ptr noundef nonnull %37, ptr noundef nonnull %1) #15
  br label %45

45:                                               ; preds = %44, %39, %34, %32, %28
  %46 = phi ptr [ %29, %28 ], [ %29, %34 ], [ %29, %39 ], [ %29, %44 ], [ %33, %32 ]
  %47 = load ptr, ptr %5, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %60, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %47, i32 0, i32 13
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %51, i32 0, i32 10
  %53 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %52) #15
  %54 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %51, i32 0, i32 7
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %51, i32 0, i32 6
  %57 = load i32, ptr %56, align 4
  %58 = icmp ult i32 %55, %57
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %52, i32 noundef %53) #15
  %59 = select i1 %58, i32 0, i32 65
  br label %60

60:                                               ; preds = %49, %45
  %61 = phi i32 [ 0, %45 ], [ %59, %49 ]
  %62 = load ptr, ptr %46, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %76, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %62, i32 0, i32 13
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %66, i32 0, i32 10
  %68 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %67) #15
  %69 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %66, i32 0, i32 7
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %66, i32 0, i32 6
  %72 = load i32, ptr %71, align 4
  %73 = icmp ult i32 %70, %72
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %67, i32 noundef %68) #15
  %74 = or i32 %61, 260
  %75 = select i1 %73, i32 %61, i32 %74
  br label %76

76:                                               ; preds = %64, %60
  %77 = phi i32 [ %61, %60 ], [ %75, %64 ]
  ret i32 %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_rawmidi_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.snd_rawmidi_status64, align 8
  %5 = alloca %struct.snd_rawmidi_status32, align 4
  %6 = alloca %struct.snd_rawmidi_params, align 4
  %7 = inttoptr i32 %2 to ptr
  %8 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %9 = load ptr, ptr %8, align 8
  %10 = and i32 %1, 65280
  %11 = icmp eq i32 %10, 22272
  br i1 %11, label %12, label %249

12:                                               ; preds = %3
  switch i32 %1, label %249 [
    i32 -2147199232, label %13
    i32 -2129897727, label %22
    i32 1074026242, label %42
    i32 -1071622384, label %54
    i32 -1071360224, label %92
    i32 -1070573792, label %152
    i32 1074026288, label %208
    i32 1074026289, label %226
  ]

13:                                               ; preds = %12
  %14 = tail call ptr @llvm.thread.pointer() #15
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %16 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %15) #19, !srcloc !22
  %17 = and i32 %16, -13
  %18 = or i32 %17, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #15, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !24
  %19 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %7, i32 131074, i32 -1090519041) #15, !srcloc !31
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #15, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !24
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 0, i32 -14
  br label %249

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.snd_rawmidi_info, ptr %7, i32 0, i32 2
  %24 = tail call ptr @llvm.thread.pointer() #15
  %25 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %26 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %25) #19, !srcloc !22
  %27 = and i32 %26, -13
  %28 = or i32 %27, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #15, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !24
  %29 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %23, i32 -1090519041) #15, !srcloc !32
  %30 = extractvalue { i32, i32 } %29, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #15, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !24
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %249

32:                                               ; preds = %22
  %33 = extractvalue { i32, i32 } %29, 1
  switch i32 %33, label %249 [
    i32 1, label %34
    i32 0, label %38
  ]

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.snd_rawmidi_file, ptr %9, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = tail call fastcc i32 @snd_rawmidi_info_user(ptr noundef %36, ptr noundef %7)
  br label %249

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.snd_rawmidi_file, ptr %9, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = tail call fastcc i32 @snd_rawmidi_info_user(ptr noundef %40, ptr noundef %7)
  br label %249

42:                                               ; preds = %12
  %43 = tail call ptr @llvm.thread.pointer() #15
  %44 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 3
  %45 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %44) #19, !srcloc !22
  %46 = and i32 %45, -13
  %47 = or i32 %46, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #15, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !24
  %48 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %7, i32 -1090519041) #15, !srcloc !33
  %49 = extractvalue { i32, i32 } %48, 0
  %50 = extractvalue { i32, i32 } %48, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %45) #15, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !24
  %51 = getelementptr inbounds %struct.snd_rawmidi_file, ptr %9, i32 0, i32 3
  store i32 %50, ptr %51, align 4
  %52 = icmp eq i32 %49, 0
  %53 = select i1 %52, i32 0, i32 -14
  br label %249

54:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %6, i8 0, i32 32, i1 false), !annotation !9
  %55 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %7, i32 32, i32 -1090519040) #18, !srcloc !21
  %56 = extractvalue { i32, i32 } %55, 0
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %66, !prof !10

58:                                               ; preds = %54
  %59 = tail call ptr @llvm.thread.pointer() #15
  %60 = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 3
  %61 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %60) #19, !srcloc !22
  %62 = and i32 %61, -13
  %63 = or i32 %62, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %63) #15, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !24
  %64 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %7, i32 noundef 32) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %61) #15, !srcloc !23
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !24
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %70, label %66, !prof !10

66:                                               ; preds = %58, %54
  %67 = phi i32 [ %64, %58 ], [ 32, %54 ]
  %68 = sub i32 32, %67
  %69 = getelementptr i8, ptr %6, i32 %68
  call void @llvm.memset.p0.i32(ptr align 1 %69, i8 0, i32 %67, i1 false) #15
  br label %90

70:                                               ; preds = %58
  %71 = getelementptr inbounds %struct.snd_rawmidi_file, ptr %9, i32 0, i32 3
  %72 = load i32, ptr %71, align 4
  %73 = icmp ult i32 %72, 131074
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.snd_rawmidi_params, ptr %6, i32 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %75, i8 0, i64 16, i1 false)
  br label %76

76:                                               ; preds = %74, %70
  %77 = load i32, ptr %6, align 4
  switch i32 %77, label %90 [
    i32 0, label %78
    i32 1, label %84
  ]

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.snd_rawmidi_file, ptr %9, i32 0, i32 2
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %90, label %82

82:                                               ; preds = %78
  %83 = call i32 @snd_rawmidi_output_params(ptr noundef nonnull %80, ptr noundef nonnull %6)
  br label %90

84:                                               ; preds = %76
  %85 = getelementptr inbounds %struct.snd_rawmidi_file, ptr %9, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %84
  %89 = call i32 @snd_rawmidi_input_params(ptr noundef nonnull %86, ptr noundef nonnull %6)
  br label %90

90:                                               ; preds = %88, %84, %82, %78, %76, %66
  %91 = phi i32 [ %89, %88 ], [ %83, %82 ], [ -22, %78 ], [ -22, %84 ], [ -22, %76 ], [ -14, %66 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #15
  br label %249

92:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %5, i8 0, i32 36, i1 false) #15, !annotation !9
  %93 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %7, i32 36, i32 -1090519040) #18
  %94 = extractvalue { i32, i32 } %93, 0
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %104, !prof !10

96:                                               ; preds = %92
  %97 = tail call ptr @llvm.thread.pointer() #15
  %98 = getelementptr inbounds %struct.thread_info, ptr %97, i32 0, i32 3
  %99 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %98) #19, !srcloc !22
  %100 = and i32 %99, -13
  %101 = or i32 %100, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %101) #15, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !24
  %102 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %7, i32 noundef 36) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %99) #15, !srcloc !23
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !24
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %108, label %104, !prof !10

104:                                              ; preds = %96, %92
  %105 = phi i32 [ %102, %96 ], [ 36, %92 ]
  %106 = sub i32 36, %105
  %107 = getelementptr i8, ptr %5, i32 %106
  call void @llvm.memset.p0.i32(ptr align 1 %107, i8 0, i32 %105, i1 false) #15
  br label %150

108:                                              ; preds = %96
  %109 = load i32, ptr %5, align 4
  switch i32 %109, label %150 [
    i32 0, label %110
    i32 1, label %122
  ]

110:                                              ; preds = %108
  %111 = getelementptr inbounds %struct.snd_rawmidi_file, ptr %9, i32 0, i32 2
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %150, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %112, i32 0, i32 13
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %116, i32 0, i32 10
  call void @_raw_spin_lock_irq(ptr noundef %117) #15
  %118 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %116, i32 0, i32 7
  %119 = load i32, ptr %118, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  %120 = load i16, ptr %117, align 4
  %121 = add i16 %120, 1
  store i16 %121, ptr %117, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !14
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !16
  br label %136

122:                                              ; preds = %108
  %123 = getelementptr inbounds %struct.snd_rawmidi_file, ptr %9, i32 0, i32 1
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %150, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %124, i32 0, i32 13
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %128, i32 0, i32 10
  call void @_raw_spin_lock_irq(ptr noundef %129) #15
  %130 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %128, i32 0, i32 7
  %131 = load i32, ptr %130, align 4
  %132 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %128, i32 0, i32 8
  %133 = load i32, ptr %132, align 4
  store i32 0, ptr %132, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  %134 = load i16, ptr %129, align 4
  %135 = add i16 %134, 1
  store i16 %135, ptr %129, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !14
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !16
  br label %136

136:                                              ; preds = %126, %114
  %137 = phi i32 [ %131, %126 ], [ %119, %114 ]
  %138 = phi i32 [ %133, %126 ], [ 0, %114 ]
  %139 = getelementptr inbounds i8, ptr %5, i32 20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %139, i8 0, i32 16, i1 false) #15
  store i32 %109, ptr %5, align 4
  %140 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 0, ptr %140, align 4
  %141 = getelementptr inbounds i8, ptr %5, i32 8
  store i32 0, ptr %141, align 4
  %142 = getelementptr inbounds i8, ptr %5, i32 12
  store i32 %137, ptr %142, align 4
  %143 = getelementptr inbounds i8, ptr %5, i32 16
  store i32 %138, ptr %143, align 4
  %144 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %98) #19, !srcloc !22
  %145 = and i32 %144, -13
  %146 = or i32 %145, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %146) #15, !srcloc !23
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !24
  %147 = call i32 @arm_copy_to_user(ptr noundef %7, ptr noundef nonnull %5, i32 noundef 36) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %144) #15, !srcloc !23
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !24
  %148 = icmp eq i32 %147, 0
  %149 = select i1 %148, i32 0, i32 -14
  br label %150

150:                                              ; preds = %136, %122, %110, %108, %104
  %151 = phi i32 [ -22, %110 ], [ -22, %122 ], [ -22, %108 ], [ -14, %104 ], [ %149, %136 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #15
  br label %249

152:                                              ; preds = %12
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i32 48, i1 false) #15, !annotation !9
  %153 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %7, i32 48, i32 -1090519040) #18
  %154 = extractvalue { i32, i32 } %153, 0
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %164, !prof !10

156:                                              ; preds = %152
  %157 = tail call ptr @llvm.thread.pointer() #15
  %158 = getelementptr inbounds %struct.thread_info, ptr %157, i32 0, i32 3
  %159 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %158) #19, !srcloc !22
  %160 = and i32 %159, -13
  %161 = or i32 %160, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %161) #15, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !24
  %162 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %7, i32 noundef 48) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %159) #15, !srcloc !23
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !24
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %168, label %164, !prof !10

164:                                              ; preds = %156, %152
  %165 = phi i32 [ %162, %156 ], [ 48, %152 ]
  %166 = sub i32 48, %165
  %167 = getelementptr i8, ptr %4, i32 %166
  call void @llvm.memset.p0.i32(ptr align 1 %167, i8 0, i32 %165, i1 false) #15
  br label %206

168:                                              ; preds = %156
  %169 = load i32, ptr %4, align 8
  switch i32 %169, label %206 [
    i32 0, label %170
    i32 1, label %183
  ]

170:                                              ; preds = %168
  %171 = getelementptr inbounds %struct.snd_rawmidi_file, ptr %9, i32 0, i32 2
  %172 = load ptr, ptr %171, align 4
  %173 = icmp eq ptr %172, null
  br i1 %173, label %206, label %174

174:                                              ; preds = %170
  %175 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %172, i32 0, i32 13
  %176 = load ptr, ptr %175, align 4
  %177 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %176, i32 0, i32 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 48, i1 false) #15
  call void @_raw_spin_lock_irq(ptr noundef %177) #15
  %178 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %176, i32 0, i32 7
  %179 = load i32, ptr %178, align 4
  %180 = getelementptr inbounds %struct.snd_rawmidi_status64, ptr %4, i32 0, i32 4
  store i32 %179, ptr %180, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  %181 = load i16, ptr %177, align 4
  %182 = add i16 %181, 1
  store i16 %182, ptr %177, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !14
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !16
  br label %199

183:                                              ; preds = %168
  %184 = getelementptr inbounds %struct.snd_rawmidi_file, ptr %9, i32 0, i32 1
  %185 = load ptr, ptr %184, align 4
  %186 = icmp eq ptr %185, null
  br i1 %186, label %206, label %187

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %185, i32 0, i32 13
  %189 = load ptr, ptr %188, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i32 48, i1 false) #15
  store i32 1, ptr %4, align 8
  %190 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %189, i32 0, i32 10
  call void @_raw_spin_lock_irq(ptr noundef %190) #15
  %191 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %189, i32 0, i32 7
  %192 = load i32, ptr %191, align 4
  %193 = getelementptr inbounds %struct.snd_rawmidi_status64, ptr %4, i32 0, i32 4
  store i32 %192, ptr %193, align 8
  %194 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %189, i32 0, i32 8
  %195 = load i32, ptr %194, align 4
  %196 = getelementptr inbounds %struct.snd_rawmidi_status64, ptr %4, i32 0, i32 5
  store i32 %195, ptr %196, align 4
  store i32 0, ptr %194, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  %197 = load i16, ptr %190, align 4
  %198 = add i16 %197, 1
  store i16 %198, ptr %190, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !14
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !16
  br label %199

199:                                              ; preds = %187, %174
  %200 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %158) #19, !srcloc !22
  %201 = and i32 %200, -13
  %202 = or i32 %201, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %202) #15, !srcloc !23
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !24
  %203 = call i32 @arm_copy_to_user(ptr noundef %7, ptr noundef nonnull %4, i32 noundef 48) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %200) #15, !srcloc !23
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !24
  %204 = icmp eq i32 %203, 0
  %205 = select i1 %204, i32 0, i32 -14
  br label %206

206:                                              ; preds = %199, %183, %170, %168, %164
  %207 = phi i32 [ -22, %170 ], [ -22, %183 ], [ -22, %168 ], [ -14, %164 ], [ %205, %199 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #15
  br label %249

208:                                              ; preds = %12
  %209 = tail call ptr @llvm.thread.pointer() #15
  %210 = getelementptr inbounds %struct.thread_info, ptr %209, i32 0, i32 3
  %211 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %210) #19, !srcloc !22
  %212 = and i32 %211, -13
  %213 = or i32 %212, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %213) #15, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !24
  %214 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %7, i32 -1090519041) #15, !srcloc !34
  %215 = extractvalue { i32, i32 } %214, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %211) #15, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !24
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %249

217:                                              ; preds = %208
  %218 = extractvalue { i32, i32 } %214, 1
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %249

220:                                              ; preds = %217
  %221 = getelementptr inbounds %struct.snd_rawmidi_file, ptr %9, i32 0, i32 2
  %222 = load ptr, ptr %221, align 4
  %223 = icmp eq ptr %222, null
  br i1 %223, label %249, label %224

224:                                              ; preds = %220
  %225 = tail call i32 @snd_rawmidi_drop_output(ptr noundef nonnull %222)
  br label %249

226:                                              ; preds = %12
  %227 = tail call ptr @llvm.thread.pointer() #15
  %228 = getelementptr inbounds %struct.thread_info, ptr %227, i32 0, i32 3
  %229 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %228) #19, !srcloc !22
  %230 = and i32 %229, -13
  %231 = or i32 %230, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %231) #15, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !24
  %232 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %7, i32 -1090519041) #15, !srcloc !35
  %233 = extractvalue { i32, i32 } %232, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %229) #15, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !24
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %249

235:                                              ; preds = %226
  %236 = extractvalue { i32, i32 } %232, 1
  switch i32 %236, label %249 [
    i32 0, label %237
    i32 1, label %243
  ]

237:                                              ; preds = %235
  %238 = getelementptr inbounds %struct.snd_rawmidi_file, ptr %9, i32 0, i32 2
  %239 = load ptr, ptr %238, align 4
  %240 = icmp eq ptr %239, null
  br i1 %240, label %249, label %241

241:                                              ; preds = %237
  %242 = tail call i32 @snd_rawmidi_drain_output(ptr noundef nonnull %239)
  br label %249

243:                                              ; preds = %235
  %244 = getelementptr inbounds %struct.snd_rawmidi_file, ptr %9, i32 0, i32 1
  %245 = load ptr, ptr %244, align 4
  %246 = icmp eq ptr %245, null
  br i1 %246, label %249, label %247

247:                                              ; preds = %243
  %248 = tail call i32 @snd_rawmidi_drain_input(ptr noundef nonnull %245)
  br label %249

249:                                              ; preds = %247, %243, %241, %237, %235, %226, %224, %220, %217, %208, %206, %150, %90, %42, %38, %34, %32, %22, %13, %12, %3
  %250 = phi i32 [ %207, %206 ], [ %151, %150 ], [ %91, %90 ], [ %21, %13 ], [ -25, %3 ], [ %41, %38 ], [ %37, %34 ], [ -14, %22 ], [ -22, %32 ], [ %53, %42 ], [ 0, %224 ], [ -14, %208 ], [ -22, %220 ], [ -22, %217 ], [ 0, %247 ], [ %242, %241 ], [ -14, %226 ], [ -22, %237 ], [ -22, %243 ], [ -22, %235 ], [ -25, %12 ]
  ret i32 %250
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_rawmidi_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 12
  %5 = load i32, ptr %4, align 4
  %6 = lshr i32 %5, 20
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !9
  %7 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 3072
  %10 = icmp eq i32 %9, 1024
  br i1 %10, label %102, label %11

11:                                               ; preds = %2
  %12 = tail call i32 @stream_open(ptr noundef %0, ptr noundef %1) #15
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %102, label %14

14:                                               ; preds = %11
  %15 = load i32, ptr @snd_major, align 4
  %16 = icmp eq i32 %6, %15
  br i1 %16, label %17, label %102

17:                                               ; preds = %14
  %18 = load i32, ptr %4, align 4
  %19 = and i32 %18, 1048575
  %20 = tail call ptr @snd_lookup_minor_data(i32 noundef %19, i32 noundef 4) #15
  %21 = icmp eq ptr %20, null
  br i1 %21, label %102, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr %20, align 8
  %24 = getelementptr inbounds %struct.snd_card, ptr %23, i32 0, i32 8
  %25 = load ptr, ptr %24, align 4
  %26 = tail call zeroext i1 @try_module_get(ptr noundef %25) #15
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load ptr, ptr %20, align 8
  %29 = getelementptr inbounds %struct.snd_card, ptr %28, i32 0, i32 28
  tail call void @put_device(ptr noundef %29) #15
  br label %102

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.snd_rawmidi, ptr %20, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %31) #15
  %32 = load ptr, ptr %20, align 8
  %33 = tail call i32 @snd_card_file_add(ptr noundef %32, ptr noundef %1) #15
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %95, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 8
  %37 = load i32, ptr %36, align 8
  %38 = load i32, ptr %7, align 4
  %39 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %40 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %39, i32 noundef 3264, i32 noundef 16) #20
  %41 = icmp eq ptr %40, null
  br i1 %41, label %92, label %42

42:                                               ; preds = %35
  %43 = and i32 %38, 1024
  %44 = icmp ne i32 %43, 0
  %45 = icmp eq i32 %6, 14
  %46 = select i1 %44, i1 true, i1 %45
  %47 = and i32 %37, 3
  %48 = icmp eq i32 %47, 2
  %49 = icmp eq i32 %47, 1
  %50 = select i1 %49, i16 2, i16 3
  %51 = select i1 %48, i16 1, i16 %50
  %52 = or i16 %51, 4
  %53 = select i1 %46, i16 %52, i16 %51
  %54 = getelementptr inbounds %struct.snd_rawmidi_file, ptr %40, i32 0, i32 3
  store i32 0, ptr %54, align 4
  %55 = tail call ptr @llvm.thread.pointer() #15
  store i32 0, ptr %3, align 4
  %56 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 1
  store ptr %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 2
  store ptr @default_wake_function, ptr %57, align 4
  %58 = getelementptr inbounds %struct.snd_rawmidi, ptr %20, i32 0, i32 11
  call void @add_wait_queue(ptr noundef %58, ptr noundef nonnull %3) #15
  %59 = zext i16 %53 to i32
  %60 = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 1
  br label %61

61:                                               ; preds = %78, %42
  %62 = call i32 @snd_ctl_get_preferred_subdevice(ptr noundef %32, i32 noundef 1) #15
  %63 = call fastcc i32 @rawmidi_open_priv(ptr noundef nonnull %20, i32 noundef %62, i32 noundef %59, ptr noundef nonnull %40)
  %64 = icmp eq i32 %63, -11
  br i1 %64, label %65, label %84

65:                                               ; preds = %61
  %66 = load i32, ptr %7, align 4
  %67 = and i32 %66, 2048
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %65
  store volatile i32 1, ptr %60, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !36
  call void @mutex_unlock(ptr noundef %31) #15
  call void @schedule() #15
  call void @mutex_lock(ptr noundef %31) #15
  %70 = load ptr, ptr %20, align 8
  %71 = getelementptr inbounds %struct.snd_card, ptr %70, i32 0, i32 25
  %72 = load i32, ptr %71, align 8
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = load volatile i32, ptr %55, align 4
  %76 = and i32 %75, 256
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %82, !prof !10

78:                                               ; preds = %74
  %79 = load volatile i32, ptr %55, align 4
  %80 = and i32 %79, 1
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %61, label %82

82:                                               ; preds = %78, %74, %69, %65
  %83 = phi i32 [ -512, %78 ], [ -19, %69 ], [ -16, %65 ], [ -512, %74 ]
  call void @remove_wait_queue(ptr noundef %58, ptr noundef nonnull %3) #15
  br label %86

84:                                               ; preds = %61
  call void @remove_wait_queue(ptr noundef %58, ptr noundef nonnull %3) #15
  %85 = icmp slt i32 %63, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %84, %82
  %87 = phi i32 [ %83, %82 ], [ %63, %84 ]
  call void @kfree(ptr noundef nonnull %40) #15
  br label %92

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %40, ptr %89, align 8
  call void @mutex_unlock(ptr noundef %31) #15
  %90 = load ptr, ptr %20, align 8
  %91 = getelementptr inbounds %struct.snd_card, ptr %90, i32 0, i32 28
  call void @put_device(ptr noundef %91) #15
  br label %102

92:                                               ; preds = %86, %35
  %93 = phi i32 [ %87, %86 ], [ -12, %35 ]
  %94 = call i32 @snd_card_file_remove(ptr noundef %32, ptr noundef %1) #15
  br label %95

95:                                               ; preds = %92, %30
  %96 = phi i32 [ %33, %30 ], [ %93, %92 ]
  call void @mutex_unlock(ptr noundef %31) #15
  %97 = load ptr, ptr %20, align 8
  %98 = getelementptr inbounds %struct.snd_card, ptr %97, i32 0, i32 8
  %99 = load ptr, ptr %98, align 4
  call void @module_put(ptr noundef %99) #15
  %100 = load ptr, ptr %20, align 8
  %101 = getelementptr inbounds %struct.snd_card, ptr %100, i32 0, i32 28
  call void @put_device(ptr noundef %101) #15
  br label %102

102:                                              ; preds = %95, %88, %27, %17, %14, %11, %2
  %103 = phi i32 [ %96, %95 ], [ 0, %88 ], [ -6, %27 ], [ -22, %2 ], [ %12, %11 ], [ -6, %14 ], [ -19, %17 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #15
  ret i32 %103
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_rawmidi_release(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  tail call fastcc void @rawmidi_release_priv(ptr noundef %4)
  tail call void @kfree(ptr noundef %4) #15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @snd_card_file_remove(ptr noundef %6, ptr noundef %1) #15
  tail call void @module_put(ptr noundef %8) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_rawmidi_info_user(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.snd_rawmidi_info, align 4
  call void @llvm.lifetime.start.p0(i64 268, ptr nonnull %3) #15
  %4 = icmp eq ptr %0, null
  br i1 %4, label %53, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds i8, ptr %3, i32 20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(268) %8, i8 0, i32 248, i1 false) #15
  %9 = load ptr, ptr %7, align 8
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.snd_rawmidi_info, ptr %3, i32 0, i32 3
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.snd_rawmidi, ptr %7, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  store i32 %13, ptr %3, align 4
  %14 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.snd_rawmidi_info, ptr %3, i32 0, i32 1
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.snd_rawmidi_info, ptr %3, i32 0, i32 2
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.snd_rawmidi, ptr %7, i32 0, i32 3
  %21 = load i32, ptr %20, align 8
  %22 = getelementptr inbounds %struct.snd_rawmidi_info, ptr %3, i32 0, i32 4
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.snd_rawmidi_info, ptr %3, i32 0, i32 5
  %24 = getelementptr inbounds %struct.snd_rawmidi, ptr %7, i32 0, i32 4
  %25 = call ptr @strcpy(ptr noundef %23, ptr noundef %24) #15
  %26 = getelementptr inbounds %struct.snd_rawmidi_info, ptr %3, i32 0, i32 6
  %27 = getelementptr inbounds %struct.snd_rawmidi, ptr %7, i32 0, i32 5
  %28 = call ptr @strcpy(ptr noundef %26, ptr noundef %27) #15
  %29 = getelementptr inbounds %struct.snd_rawmidi_info, ptr %3, i32 0, i32 7
  %30 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 12
  %31 = call ptr @strcpy(ptr noundef %29, ptr noundef %30) #15
  %32 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 11
  %33 = load ptr, ptr %32, align 4
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.snd_rawmidi_info, ptr %3, i32 0, i32 8
  store i32 %34, ptr %35, align 4
  %36 = load i32, ptr %33, align 4
  %37 = getelementptr inbounds %struct.snd_rawmidi_str, ptr %33, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = sub i32 %36, %38
  %40 = getelementptr inbounds %struct.snd_rawmidi_info, ptr %3, i32 0, i32 9
  store i32 %39, ptr %40, align 4
  %41 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 268, i32 -1090519040) #18, !srcloc !28
  %42 = extractvalue { i32, i32 } %41, 0
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %5
  %45 = tail call ptr @llvm.thread.pointer() #15
  %46 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 3
  %47 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %46) #19, !srcloc !22
  %48 = and i32 %47, -13
  %49 = or i32 %48, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %49) #15, !srcloc !23
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !24
  %50 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 268) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #15, !srcloc !23
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !24
  %51 = icmp eq i32 %50, 0
  %52 = select i1 %51, i32 0, i32 -14
  br label %53

53:                                               ; preds = %44, %5, %2
  %54 = phi i32 [ -19, %2 ], [ -14, %5 ], [ %52, %44 ]
  call void @llvm.lifetime.end.p0(i64 268, ptr nonnull %3) #15
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stream_open(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_lookup_minor_data(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_file_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_get_preferred_subdevice(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_file_remove(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_vnr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_register_ioctl(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_rawmidi_control_ioctl(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.snd_rawmidi_info, align 4
  %6 = inttoptr i32 %3 to ptr
  switch i32 %2, label %245 [
    i32 -1073457856, label %7
    i32 1074025794, label %186
    i32 -1056156351, label %198
  ]

7:                                                ; preds = %4
  %8 = tail call ptr @llvm.thread.pointer() #15
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #19, !srcloc !22
  %11 = and i32 %10, -13
  %12 = or i32 %11, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #15, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !24
  %13 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %6, i32 -1090519041) #15, !srcloc !37
  %14 = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #15, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !24
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %245

16:                                               ; preds = %7
  %17 = extractvalue { i32, i32 } %13, 1
  %18 = tail call i32 @llvm.smin.i32(i32 %17, i32 7)
  tail call void @mutex_lock(ptr noundef nonnull @register_mutex) #15
  %19 = icmp slt i32 %18, 0
  %20 = add nsw i32 %18, 1
  %21 = select i1 %19, i32 0, i32 %20
  %22 = icmp ult i32 %21, 8
  br i1 %22, label %23, label %177

23:                                               ; preds = %16
  %24 = load ptr, ptr @snd_rawmidi_devices, align 4
  %25 = icmp eq ptr %24, @snd_rawmidi_devices
  br i1 %25, label %41, label %26

26:                                               ; preds = %35, %23
  %27 = phi ptr [ %36, %35 ], [ %24, %23 ]
  %28 = getelementptr i8, ptr %27, i32 -4
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, %0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = getelementptr i8, ptr %27, i32 8
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, %21
  br i1 %34, label %38, label %35

35:                                               ; preds = %31, %26
  %36 = load ptr, ptr %27, align 4
  %37 = icmp eq ptr %36, @snd_rawmidi_devices
  br i1 %37, label %41, label %26

38:                                               ; preds = %31
  %39 = getelementptr i8, ptr %27, i32 -4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %174

41:                                               ; preds = %38, %35, %23
  %42 = add nsw i32 %21, 1
  %43 = icmp eq i32 %42, 8
  br i1 %43, label %177, label %44

44:                                               ; preds = %41
  br i1 %25, label %60, label %45

45:                                               ; preds = %54, %44
  %46 = phi ptr [ %55, %54 ], [ %24, %44 ]
  %47 = getelementptr i8, ptr %46, i32 -4
  %48 = load ptr, ptr %47, align 8
  %49 = icmp eq ptr %48, %0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = getelementptr i8, ptr %46, i32 8
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, %42
  br i1 %53, label %57, label %54

54:                                               ; preds = %50, %45
  %55 = load ptr, ptr %46, align 4
  %56 = icmp eq ptr %55, @snd_rawmidi_devices
  br i1 %56, label %60, label %45

57:                                               ; preds = %50
  %58 = getelementptr i8, ptr %46, i32 -4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %174

60:                                               ; preds = %57, %54, %44
  %61 = add nsw i32 %21, 2
  %62 = icmp eq i32 %61, 8
  br i1 %62, label %177, label %63

63:                                               ; preds = %60
  br i1 %25, label %79, label %64

64:                                               ; preds = %73, %63
  %65 = phi ptr [ %74, %73 ], [ %24, %63 ]
  %66 = getelementptr i8, ptr %65, i32 -4
  %67 = load ptr, ptr %66, align 8
  %68 = icmp eq ptr %67, %0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = getelementptr i8, ptr %65, i32 8
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, %61
  br i1 %72, label %76, label %73

73:                                               ; preds = %69, %64
  %74 = load ptr, ptr %65, align 4
  %75 = icmp eq ptr %74, @snd_rawmidi_devices
  br i1 %75, label %79, label %64

76:                                               ; preds = %69
  %77 = getelementptr i8, ptr %65, i32 -4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %174

79:                                               ; preds = %76, %73, %63
  %80 = add nsw i32 %21, 3
  %81 = icmp eq i32 %80, 8
  br i1 %81, label %177, label %82

82:                                               ; preds = %79
  br i1 %25, label %98, label %83

83:                                               ; preds = %92, %82
  %84 = phi ptr [ %93, %92 ], [ %24, %82 ]
  %85 = getelementptr i8, ptr %84, i32 -4
  %86 = load ptr, ptr %85, align 8
  %87 = icmp eq ptr %86, %0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = getelementptr i8, ptr %84, i32 8
  %90 = load i32, ptr %89, align 4
  %91 = icmp eq i32 %90, %80
  br i1 %91, label %95, label %92

92:                                               ; preds = %88, %83
  %93 = load ptr, ptr %84, align 4
  %94 = icmp eq ptr %93, @snd_rawmidi_devices
  br i1 %94, label %98, label %83

95:                                               ; preds = %88
  %96 = getelementptr i8, ptr %84, i32 -4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %174

98:                                               ; preds = %95, %92, %82
  %99 = add nsw i32 %21, 4
  %100 = icmp eq i32 %99, 8
  br i1 %100, label %177, label %101

101:                                              ; preds = %98
  br i1 %25, label %117, label %102

102:                                              ; preds = %111, %101
  %103 = phi ptr [ %112, %111 ], [ %24, %101 ]
  %104 = getelementptr i8, ptr %103, i32 -4
  %105 = load ptr, ptr %104, align 8
  %106 = icmp eq ptr %105, %0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = getelementptr i8, ptr %103, i32 8
  %109 = load i32, ptr %108, align 4
  %110 = icmp eq i32 %109, %99
  br i1 %110, label %114, label %111

111:                                              ; preds = %107, %102
  %112 = load ptr, ptr %103, align 4
  %113 = icmp eq ptr %112, @snd_rawmidi_devices
  br i1 %113, label %117, label %102

114:                                              ; preds = %107
  %115 = getelementptr i8, ptr %103, i32 -4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %174

117:                                              ; preds = %114, %111, %101
  %118 = add nsw i32 %21, 5
  %119 = icmp eq i32 %118, 8
  br i1 %119, label %177, label %120

120:                                              ; preds = %117
  br i1 %25, label %136, label %121

121:                                              ; preds = %130, %120
  %122 = phi ptr [ %131, %130 ], [ %24, %120 ]
  %123 = getelementptr i8, ptr %122, i32 -4
  %124 = load ptr, ptr %123, align 8
  %125 = icmp eq ptr %124, %0
  br i1 %125, label %126, label %130

126:                                              ; preds = %121
  %127 = getelementptr i8, ptr %122, i32 8
  %128 = load i32, ptr %127, align 4
  %129 = icmp eq i32 %128, %118
  br i1 %129, label %133, label %130

130:                                              ; preds = %126, %121
  %131 = load ptr, ptr %122, align 4
  %132 = icmp eq ptr %131, @snd_rawmidi_devices
  br i1 %132, label %136, label %121

133:                                              ; preds = %126
  %134 = getelementptr i8, ptr %122, i32 -4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %174

136:                                              ; preds = %133, %130, %120
  %137 = add nsw i32 %21, 6
  %138 = icmp eq i32 %137, 8
  br i1 %138, label %177, label %139

139:                                              ; preds = %136
  br i1 %25, label %155, label %140

140:                                              ; preds = %149, %139
  %141 = phi ptr [ %150, %149 ], [ %24, %139 ]
  %142 = getelementptr i8, ptr %141, i32 -4
  %143 = load ptr, ptr %142, align 8
  %144 = icmp eq ptr %143, %0
  br i1 %144, label %145, label %149

145:                                              ; preds = %140
  %146 = getelementptr i8, ptr %141, i32 8
  %147 = load i32, ptr %146, align 4
  %148 = icmp eq i32 %147, %137
  br i1 %148, label %152, label %149

149:                                              ; preds = %145, %140
  %150 = load ptr, ptr %141, align 4
  %151 = icmp eq ptr %150, @snd_rawmidi_devices
  br i1 %151, label %155, label %140

152:                                              ; preds = %145
  %153 = getelementptr i8, ptr %141, i32 -4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %174

155:                                              ; preds = %152, %149, %139
  %156 = add nsw i32 %21, 7
  %157 = icmp eq i32 %156, 8
  %158 = select i1 %157, i1 true, i1 %25
  br i1 %158, label %177, label %159

159:                                              ; preds = %168, %155
  %160 = phi ptr [ %169, %168 ], [ %24, %155 ]
  %161 = getelementptr i8, ptr %160, i32 -4
  %162 = load ptr, ptr %161, align 8
  %163 = icmp eq ptr %162, %0
  br i1 %163, label %164, label %168

164:                                              ; preds = %159
  %165 = getelementptr i8, ptr %160, i32 8
  %166 = load i32, ptr %165, align 4
  %167 = icmp eq i32 %166, %156
  br i1 %167, label %171, label %168

168:                                              ; preds = %164, %159
  %169 = load ptr, ptr %160, align 4
  %170 = icmp eq ptr %169, @snd_rawmidi_devices
  br i1 %170, label %177, label %159

171:                                              ; preds = %164
  %172 = getelementptr i8, ptr %160, i32 -4
  %173 = icmp eq ptr %172, null
  br i1 %173, label %177, label %174

174:                                              ; preds = %171, %152, %133, %114, %95, %76, %57, %38
  %175 = phi i32 [ %21, %38 ], [ %42, %57 ], [ %61, %76 ], [ %80, %95 ], [ %99, %114 ], [ %118, %133 ], [ %137, %152 ], [ %156, %171 ]
  %176 = icmp eq i32 %175, 8
  br i1 %176, label %177, label %178

177:                                              ; preds = %174, %171, %168, %155, %136, %117, %98, %79, %60, %41, %16
  br label %178

178:                                              ; preds = %177, %174
  %179 = phi i32 [ -1, %177 ], [ %175, %174 ]
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #15
  %180 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #19, !srcloc !22
  %181 = and i32 %180, -13
  %182 = or i32 %181, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %182) #15, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !24
  %183 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %6, i32 %179, i32 -1090519041) #15, !srcloc !38
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %180) #15, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !24
  %184 = icmp eq i32 %183, 0
  %185 = select i1 %184, i32 0, i32 -14
  br label %245

186:                                              ; preds = %4
  %187 = tail call ptr @llvm.thread.pointer() #15
  %188 = getelementptr inbounds %struct.thread_info, ptr %187, i32 0, i32 3
  %189 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %188) #19, !srcloc !22
  %190 = and i32 %189, -13
  %191 = or i32 %190, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %191) #15, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !24
  %192 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %6, i32 -1090519041) #15, !srcloc !39
  %193 = extractvalue { i32, i32 } %192, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %189) #15, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !24
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %245

195:                                              ; preds = %186
  %196 = extractvalue { i32, i32 } %192, 1
  %197 = getelementptr %struct.snd_ctl_file, ptr %1, i32 0, i32 3, i32 1
  store i32 %196, ptr %197, align 4
  br label %245

198:                                              ; preds = %4
  call void @llvm.lifetime.start.p0(i64 268, ptr nonnull %5) #15
  %199 = getelementptr inbounds i8, ptr %5, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(268) %199, i8 0, i32 256, i1 false) #15, !annotation !9
  %200 = tail call ptr @llvm.thread.pointer() #15
  %201 = getelementptr inbounds %struct.thread_info, ptr %200, i32 0, i32 3
  %202 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %201) #19, !srcloc !22
  %203 = and i32 %202, -13
  %204 = or i32 %203, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %204) #15, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !24
  %205 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %6, i32 -1090519041) #15, !srcloc !40
  %206 = extractvalue { i32, i32 } %205, 0
  %207 = extractvalue { i32, i32 } %205, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %202) #15, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !24
  store i32 %207, ptr %5, align 4
  %208 = icmp eq i32 %206, 0
  br i1 %208, label %209, label %243

209:                                              ; preds = %198
  %210 = getelementptr inbounds %struct.snd_rawmidi_info, ptr %6, i32 0, i32 2
  %211 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %201) #19, !srcloc !22
  %212 = and i32 %211, -13
  %213 = or i32 %212, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %213) #15, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !24
  %214 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %210, i32 -1090519041) #15, !srcloc !41
  %215 = extractvalue { i32, i32 } %214, 0
  %216 = extractvalue { i32, i32 } %214, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %211) #15, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !24
  %217 = getelementptr inbounds %struct.snd_rawmidi_info, ptr %5, i32 0, i32 2
  store i32 %216, ptr %217, align 4
  %218 = icmp eq i32 %215, 0
  br i1 %218, label %219, label %243

219:                                              ; preds = %209
  %220 = getelementptr inbounds %struct.snd_rawmidi_info, ptr %6, i32 0, i32 1
  %221 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %201) #19, !srcloc !22
  %222 = and i32 %221, -13
  %223 = or i32 %222, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %223) #15, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !24
  %224 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %220, i32 -1090519041) #15, !srcloc !42
  %225 = extractvalue { i32, i32 } %224, 0
  %226 = extractvalue { i32, i32 } %224, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %221) #15, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !24
  %227 = getelementptr inbounds %struct.snd_rawmidi_info, ptr %5, i32 0, i32 1
  store i32 %226, ptr %227, align 4
  %228 = icmp eq i32 %225, 0
  br i1 %228, label %229, label %243

229:                                              ; preds = %219
  %230 = call i32 @snd_rawmidi_info_select(ptr noundef %0, ptr noundef nonnull %5) #15
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %243, label %232

232:                                              ; preds = %229
  %233 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 268, i32 -1090519040) #18, !srcloc !28
  %234 = extractvalue { i32, i32 } %233, 0
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %243

236:                                              ; preds = %232
  %237 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %201) #19, !srcloc !22
  %238 = and i32 %237, -13
  %239 = or i32 %238, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %239) #15, !srcloc !23
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !24
  %240 = call i32 @arm_copy_to_user(ptr noundef %6, ptr noundef nonnull %5, i32 noundef 268) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %237) #15, !srcloc !23
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !24
  %241 = icmp eq i32 %240, 0
  %242 = select i1 %241, i32 0, i32 -14
  br label %243

243:                                              ; preds = %236, %232, %229, %219, %209, %198
  %244 = phi i32 [ -14, %198 ], [ -14, %209 ], [ -14, %219 ], [ %230, %229 ], [ -14, %232 ], [ %242, %236 ]
  call void @llvm.lifetime.end.p0(i64 268, ptr nonnull %5) #15
  br label %245

245:                                              ; preds = %243, %195, %186, %178, %7, %4
  %246 = phi i32 [ %244, %243 ], [ -14, %7 ], [ %185, %178 ], [ 0, %195 ], [ -14, %186 ], [ -515, %4 ]
  ret i32 %246
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_unregister_ioctl(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #14

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind readnone }
attributes #19 = { nounwind readonly }
attributes #20 = { nounwind allocsize(2) }

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
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 517369, i64 517386, i64 2148001456}
!12 = !{i64 2149279811}
!13 = !{i64 2149275635}
!14 = !{i64 2149275710, i64 2149275737, i64 2149275784, i64 2149275806, i64 2149275834, i64 2149275854}
!15 = !{i64 672246}
!16 = !{i64 2149303955}
!17 = !{!18}
!18 = distinct !{!18, !19, !"get_framing_tstamp: argument 0"}
!19 = distinct !{!19, !"get_framing_tstamp"}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{i64 2151275692, i64 2151275717}
!22 = !{i64 3771804}
!23 = !{i64 3772001}
!24 = !{i64 2151257280}
!25 = !{i64 643254, i64 2148144820, i64 2148144846, i64 2148144893, i64 2148144915, i64 2148144943, i64 2148144963}
!26 = !{i64 2148209540, i64 2148209572, i64 2148209601, i64 2148209635, i64 2148209666, i64 2148209689}
!27 = !{i64 2153161062}
!28 = !{i64 2151276270, i64 2151276295}
!29 = !{i64 2153185210}
!30 = !{i64 2153188115}
!31 = !{i64 2153059986, i64 2153060266, i64 2153060600, i64 2153060934}
!32 = !{i64 2153072092, i64 2153072372, i64 2153072706, i64 2153073040}
!33 = !{i64 2153084940, i64 2153085220, i64 2153085554, i64 2153085888}
!34 = !{i64 2153100566, i64 2153100846, i64 2153101180, i64 2153101514}
!35 = !{i64 2153113265, i64 2153113545, i64 2153113879, i64 2153114213}
!36 = !{i64 2153000961}
!37 = !{i64 2153126777, i64 2153127057, i64 2153127391, i64 2153127725}
!38 = !{i64 2153135758, i64 2153136038, i64 2153136372, i64 2153136706}
!39 = !{i64 2153147661, i64 2153147941, i64 2153148275, i64 2153148609}
!40 = !{i64 2153018875, i64 2153019155, i64 2153019489, i64 2153019823}
!41 = !{i64 2153030898, i64 2153031178, i64 2153031512, i64 2153031846}
!42 = !{i64 2153042957, i64 2153043237, i64 2153043571, i64 2153043905}
