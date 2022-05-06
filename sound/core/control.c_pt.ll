; ModuleID = '/llk/IR/sound/core/control.c_pt.bc'
source_filename = "../sound/core/control.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_ctl_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_ctl_notify\22\09\09\09\09\09"
module asm "__kstrtabns_snd_ctl_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_ctl_notify_one:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_ctl_notify_one\22\09\09\09\09\09"
module asm "__kstrtabns_snd_ctl_notify_one:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_ctl_new1:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_ctl_new1\22\09\09\09\09\09"
module asm "__kstrtabns_snd_ctl_new1:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_ctl_free_one:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_ctl_free_one\22\09\09\09\09\09"
module asm "__kstrtabns_snd_ctl_free_one:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_ctl_add:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_ctl_add\22\09\09\09\09\09"
module asm "__kstrtabns_snd_ctl_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_ctl_replace:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_ctl_replace\22\09\09\09\09\09"
module asm "__kstrtabns_snd_ctl_replace:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_ctl_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_ctl_remove\22\09\09\09\09\09"
module asm "__kstrtabns_snd_ctl_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_ctl_remove_id:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_ctl_remove_id\22\09\09\09\09\09"
module asm "__kstrtabns_snd_ctl_remove_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_ctl_activate_id:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_ctl_activate_id\22\09\09\09\09\09"
module asm "__kstrtabns_snd_ctl_activate_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_ctl_rename_id:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_ctl_rename_id\22\09\09\09\09\09"
module asm "__kstrtabns_snd_ctl_rename_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_ctl_find_numid:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_ctl_find_numid\22\09\09\09\09\09"
module asm "__kstrtabns_snd_ctl_find_numid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_ctl_find_id:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_ctl_find_id\22\09\09\09\09\09"
module asm "__kstrtabns_snd_ctl_find_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_ctl_register_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_ctl_register_ioctl\22\09\09\09\09\09"
module asm "__kstrtabns_snd_ctl_register_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_ctl_unregister_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_ctl_unregister_ioctl\22\09\09\09\09\09"
module asm "__kstrtabns_snd_ctl_unregister_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_ctl_get_preferred_subdevice:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_ctl_get_preferred_subdevice\22\09\09\09\09\09"
module asm "__kstrtabns_snd_ctl_get_preferred_subdevice:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_ctl_request_layer:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_ctl_request_layer\22\09\09\09\09\09"
module asm "__kstrtabns_snd_ctl_request_layer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_ctl_register_layer:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_ctl_register_layer\22\09\09\09\09\09"
module asm "__kstrtabns_snd_ctl_register_layer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_ctl_disconnect_layer:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_ctl_disconnect_layer\22\09\09\09\09\09"
module asm "__kstrtabns_snd_ctl_disconnect_layer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_ctl_boolean_mono_info:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_ctl_boolean_mono_info\22\09\09\09\09\09"
module asm "__kstrtabns_snd_ctl_boolean_mono_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_ctl_boolean_stereo_info:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_ctl_boolean_stereo_info\22\09\09\09\09\09"
module asm "__kstrtabns_snd_ctl_boolean_stereo_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_ctl_enum_info:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_ctl_enum_info\22\09\09\09\09\09"
module asm "__kstrtabns_snd_ctl_enum_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.60 }
%union.anon.60 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.snd_device_ops = type { ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
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
%struct.snd_ctl_file = type { %struct.list_head, ptr, ptr, [2 x i32], %struct.wait_queue_head, %struct.spinlock, ptr, i32, %struct.list_head }
%struct.snd_kctl_event = type { %struct.list_head, %struct.snd_ctl_elem_id, i32 }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.75, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%union.anon.75 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_layer_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.76, i32 }
%union.anon.76 = type { ptr }
%struct.snd_kctl_ioctl = type { %struct.list_head, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.48, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.snd_device = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.66, [64 x i8] }
%union.anon.66 = type { %struct.anon.69, [40 x i8] }
%struct.anon.69 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_event = type { i32, %union.anon.77 }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { i32, %struct.snd_ctl_elem_id }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.snd_ctl_elem_list = type { i32, i32, i32, i32, ptr, [50 x i8] }
%struct.snd_ctl_card_info = type { i32, i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [16 x i8], [80 x i8], [128 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.61, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.62, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.63, ptr, %struct.address_space, %struct.list_head, %union.anon.64, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.61 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%union.anon.62 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.63 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.64 = type { ptr }
%struct.user_element = type { %struct.snd_ctl_elem_info, ptr, ptr, i32, ptr, i32, ptr }
%struct.snd_ctl_tlv = type { i32, i32, [0 x i32] }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.70, [128 x i8] }
%union.anon.70 = type { %union.anon.72 }
%union.anon.72 = type { [64 x i64] }

@__param_str_max_user_ctl_alloc_size = internal constant [24 x i8] c"max_user_ctl_alloc_size\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@max_user_ctl_alloc_size = internal global i32 8388608, align 4
@__param_max_user_ctl_alloc_size = internal constant %struct.kernel_param { ptr @__param_str_max_user_ctl_alloc_size, ptr @__this_module, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.60 { ptr @max_user_ctl_alloc_size } }, section "__param", align 4
@__UNIQUE_ID_max_user_ctl_alloc_sizetype230 = internal constant [37 x i8] c"parmtype=max_user_ctl_alloc_size:int\00", section ".modinfo", align 1
@__UNIQUE_ID_max_user_ctl_alloc_size231 = internal constant [67 x i8] c"parm=max_user_ctl_alloc_size:Max allocation size for user controls\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [39 x i8] c"No memory available to allocate event\0A\00", align 1
@__kstrtab_snd_ctl_notify = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_ctl_notify = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_ctl_notify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_ctl_notify to i32), ptr @__kstrtab_snd_ctl_notify, ptr @__kstrtabns_snd_ctl_notify }, section "___ksymtab+snd_ctl_notify", align 4
@snd_ctl_layer_rwsem = internal global %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @snd_ctl_layer_rwsem, i64 16), ptr getelementptr (i8, ptr @snd_ctl_layer_rwsem, i64 16) } }, align 4
@snd_ctl_layer = internal unnamed_addr global ptr null, align 4
@__kstrtab_snd_ctl_notify_one = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_ctl_notify_one = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_ctl_notify_one = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_ctl_notify_one to i32), ptr @__kstrtab_snd_ctl_notify_one, ptr @__kstrtabns_snd_ctl_notify_one }, section "___ksymtab+snd_ctl_notify_one", align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"\014ALSA: Control name '%s' truncated to '%s'\0A\00", align 1
@__kstrtab_snd_ctl_new1 = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_ctl_new1 = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_ctl_new1 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_ctl_new1 to i32), ptr @__kstrtab_snd_ctl_new1, ptr @__kstrtabns_snd_ctl_new1 }, section "___ksymtab+snd_ctl_new1", align 4
@__kstrtab_snd_ctl_free_one = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_ctl_free_one = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_ctl_free_one = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_ctl_free_one to i32), ptr @__kstrtab_snd_ctl_free_one, ptr @__kstrtabns_snd_ctl_free_one }, section "___ksymtab+snd_ctl_free_one", align 4
@__kstrtab_snd_ctl_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_ctl_add = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_ctl_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_ctl_add to i32), ptr @__kstrtab_snd_ctl_add, ptr @__kstrtabns_snd_ctl_add }, section "___ksymtab+snd_ctl_add", align 4
@__kstrtab_snd_ctl_replace = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_ctl_replace = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_ctl_replace = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_ctl_replace to i32), ptr @__kstrtab_snd_ctl_replace, ptr @__kstrtabns_snd_ctl_replace }, section "___ksymtab+snd_ctl_replace", align 4
@__kstrtab_snd_ctl_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_ctl_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_ctl_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_ctl_remove to i32), ptr @__kstrtab_snd_ctl_remove, ptr @__kstrtabns_snd_ctl_remove }, section "___ksymtab+snd_ctl_remove", align 4
@__kstrtab_snd_ctl_remove_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_ctl_remove_id = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_ctl_remove_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_ctl_remove_id to i32), ptr @__kstrtab_snd_ctl_remove_id, ptr @__kstrtabns_snd_ctl_remove_id }, section "___ksymtab+snd_ctl_remove_id", align 4
@__kstrtab_snd_ctl_activate_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_ctl_activate_id = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_ctl_activate_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_ctl_activate_id to i32), ptr @__kstrtab_snd_ctl_activate_id, ptr @__kstrtabns_snd_ctl_activate_id }, section "___ksymtab_gpl+snd_ctl_activate_id", align 4
@__kstrtab_snd_ctl_rename_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_ctl_rename_id = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_ctl_rename_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_ctl_rename_id to i32), ptr @__kstrtab_snd_ctl_rename_id, ptr @__kstrtabns_snd_ctl_rename_id }, section "___ksymtab+snd_ctl_rename_id", align 4
@__kstrtab_snd_ctl_find_numid = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_ctl_find_numid = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_ctl_find_numid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_ctl_find_numid to i32), ptr @__kstrtab_snd_ctl_find_numid, ptr @__kstrtabns_snd_ctl_find_numid }, section "___ksymtab+snd_ctl_find_numid", align 4
@__kstrtab_snd_ctl_find_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_ctl_find_id = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_ctl_find_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_ctl_find_id to i32), ptr @__kstrtab_snd_ctl_find_id, ptr @__kstrtabns_snd_ctl_find_id }, section "___ksymtab+snd_ctl_find_id", align 4
@snd_control_ioctls = internal global %struct.list_head { ptr @snd_control_ioctls, ptr @snd_control_ioctls }, align 4
@__kstrtab_snd_ctl_register_ioctl = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_ctl_register_ioctl = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_ctl_register_ioctl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_ctl_register_ioctl to i32), ptr @__kstrtab_snd_ctl_register_ioctl, ptr @__kstrtabns_snd_ctl_register_ioctl }, section "___ksymtab+snd_ctl_register_ioctl", align 4
@__kstrtab_snd_ctl_unregister_ioctl = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_ctl_unregister_ioctl = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_ctl_unregister_ioctl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_ctl_unregister_ioctl to i32), ptr @__kstrtab_snd_ctl_unregister_ioctl, ptr @__kstrtabns_snd_ctl_unregister_ioctl }, section "___ksymtab+snd_ctl_unregister_ioctl", align 4
@__kstrtab_snd_ctl_get_preferred_subdevice = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_ctl_get_preferred_subdevice = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_ctl_get_preferred_subdevice = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_ctl_get_preferred_subdevice to i32), ptr @__kstrtab_snd_ctl_get_preferred_subdevice, ptr @__kstrtabns_snd_ctl_get_preferred_subdevice }, section "___ksymtab_gpl+snd_ctl_get_preferred_subdevice", align 4
@__kstrtab_snd_ctl_request_layer = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_ctl_request_layer = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_ctl_request_layer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_ctl_request_layer to i32), ptr @__kstrtab_snd_ctl_request_layer, ptr @__kstrtabns_snd_ctl_request_layer }, section "___ksymtab_gpl+snd_ctl_request_layer", align 4
@__kstrtab_snd_ctl_register_layer = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_ctl_register_layer = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_ctl_register_layer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_ctl_register_layer to i32), ptr @__kstrtab_snd_ctl_register_layer, ptr @__kstrtabns_snd_ctl_register_layer }, section "___ksymtab_gpl+snd_ctl_register_layer", align 4
@__kstrtab_snd_ctl_disconnect_layer = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_ctl_disconnect_layer = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_ctl_disconnect_layer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_ctl_disconnect_layer to i32), ptr @__kstrtab_snd_ctl_disconnect_layer, ptr @__kstrtabns_snd_ctl_disconnect_layer }, section "___ksymtab_gpl+snd_ctl_disconnect_layer", align 4
@snd_ctl_create.ops = internal constant %struct.snd_device_ops { ptr @snd_ctl_dev_free, ptr @snd_ctl_dev_register, ptr @snd_ctl_dev_disconnect }, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"controlC%d\00", align 1
@__kstrtab_snd_ctl_boolean_mono_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_ctl_boolean_mono_info = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_ctl_boolean_mono_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_ctl_boolean_mono_info to i32), ptr @__kstrtab_snd_ctl_boolean_mono_info, ptr @__kstrtabns_snd_ctl_boolean_mono_info }, section "___ksymtab+snd_ctl_boolean_mono_info", align 4
@__kstrtab_snd_ctl_boolean_stereo_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_ctl_boolean_stereo_info = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_ctl_boolean_stereo_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_ctl_boolean_stereo_info to i32), ptr @__kstrtab_snd_ctl_boolean_stereo_info, ptr @__kstrtabns_snd_ctl_boolean_stereo_info }, section "___ksymtab+snd_ctl_boolean_stereo_info", align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"sound/core/control.c\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"ALSA: too long item name '%s'\0A\00", align 1
@__kstrtab_snd_ctl_enum_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_ctl_enum_info = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_ctl_enum_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_ctl_enum_info to i32), ptr @__kstrtab_snd_ctl_enum_info, ptr @__kstrtabns_snd_ctl_enum_info }, section "___ksymtab+snd_ctl_enum_info", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"control %i:%i:%i:%s:%i is already present\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"unable to allocate new control numid\0A\00", align 1
@snd_ioctl_rwsem = internal global %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @snd_ioctl_rwsem, i64 16), ptr getelementptr (i8, ptr @snd_ioctl_rwsem, i64 16) } }, align 4
@snd_ctl_f_ops = internal constant %struct.file_operations { ptr @__this_module, ptr @no_llseek, ptr @snd_ctl_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_ctl_poll, ptr @snd_ctl_ioctl, ptr null, ptr null, i32 0, ptr @snd_ctl_open, ptr null, ptr @snd_ctl_release, ptr null, ptr @snd_ctl_fasync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@value_sizes = internal unnamed_addr constant [7 x i32] [i32 0, i32 4, i32 4, i32 4, i32 1, i32 176, i32 8], align 4
@snd_ctl_check_elem_info.max_value_counts = internal unnamed_addr constant [7 x i32] [i32 0, i32 128, i32 128, i32 128, i32 512, i32 1, i32 64], align 4
@snd_ctl_open.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"&ctl->change_sleep\00", align 1
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_max_user_ctl_alloc_size231, ptr @__UNIQUE_ID_max_user_ctl_alloc_sizetype230, ptr @__ksymtab_snd_ctl_activate_id, ptr @__ksymtab_snd_ctl_add, ptr @__ksymtab_snd_ctl_boolean_mono_info, ptr @__ksymtab_snd_ctl_boolean_stereo_info, ptr @__ksymtab_snd_ctl_disconnect_layer, ptr @__ksymtab_snd_ctl_enum_info, ptr @__ksymtab_snd_ctl_find_id, ptr @__ksymtab_snd_ctl_find_numid, ptr @__ksymtab_snd_ctl_free_one, ptr @__ksymtab_snd_ctl_get_preferred_subdevice, ptr @__ksymtab_snd_ctl_new1, ptr @__ksymtab_snd_ctl_notify, ptr @__ksymtab_snd_ctl_notify_one, ptr @__ksymtab_snd_ctl_register_ioctl, ptr @__ksymtab_snd_ctl_register_layer, ptr @__ksymtab_snd_ctl_remove, ptr @__ksymtab_snd_ctl_remove_id, ptr @__ksymtab_snd_ctl_rename_id, ptr @__ksymtab_snd_ctl_replace, ptr @__ksymtab_snd_ctl_request_layer, ptr @__ksymtab_snd_ctl_unregister_ioctl, ptr @__param_max_user_ctl_alloc_size], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_ctl_notify(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2) #0 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %2, null
  %6 = or i1 %4, %5
  br i1 %6, label %61, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 25
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %61

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 15
  %13 = tail call i32 @_raw_read_lock_irqsave(ptr noundef %12) #16
  %14 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 19
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %60, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 27
  br label %19

19:                                               ; preds = %57, %17
  %20 = phi ptr [ %15, %17 ], [ %58, %57 ]
  %21 = getelementptr inbounds %struct.snd_ctl_file, ptr %20, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %57, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.snd_ctl_file, ptr %20, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %25) #16
  %26 = getelementptr inbounds %struct.snd_ctl_file, ptr %20, i32 0, i32 8
  br label %27

27:                                               ; preds = %31, %24
  %28 = phi ptr [ %26, %24 ], [ %29, %31 ]
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %26
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.snd_kctl_event, ptr %29, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = load i32, ptr %2, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %27

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.snd_kctl_event, ptr %29, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = or i32 %38, %1
  store i32 %39, ptr %37, align 4
  br label %52

40:                                               ; preds = %27
  %41 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %42 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %41, i32 noundef 2848, i32 noundef 76) #17
  %43 = icmp eq ptr %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.snd_kctl_event, ptr %42, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(64) %45, ptr noundef align 4 dereferenceable(64) %2, i32 64, i1 false)
  %46 = getelementptr inbounds %struct.snd_kctl_event, ptr %42, i32 0, i32 2
  store i32 %1, ptr %46, align 8
  %47 = getelementptr inbounds %struct.snd_ctl_file, ptr %20, i32 0, i32 8, i32 1
  %48 = load ptr, ptr %47, align 4
  store ptr %42, ptr %47, align 4
  store ptr %26, ptr %42, align 8
  %49 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  store ptr %48, ptr %49, align 4
  store volatile ptr %42, ptr %48, align 4
  br label %52

50:                                               ; preds = %40
  %51 = load ptr, ptr %18, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str) #18
  br label %52

52:                                               ; preds = %50, %44, %36
  %53 = getelementptr inbounds %struct.snd_ctl_file, ptr %20, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %53, i32 noundef 3, i32 noundef 1, ptr noundef null) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  %54 = load i16, ptr %25, align 4
  %55 = add i16 %54, 1
  store i16 %55, ptr %25, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !11
  %56 = getelementptr inbounds %struct.snd_ctl_file, ptr %20, i32 0, i32 6
  tail call void @kill_fasync(ptr noundef %56, i32 noundef 29, i32 noundef 1) #16
  br label %57

57:                                               ; preds = %52, %19
  %58 = load ptr, ptr %20, align 4
  %59 = icmp eq ptr %58, %14
  br i1 %59, label %60, label %19

60:                                               ; preds = %57, %11
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %12, i32 noundef %13) #16
  br label %61

61:                                               ; preds = %60, %7, %3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_read_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_ctl_notify_one(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.snd_ctl_elem_id, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #16
  %6 = getelementptr inbounds %struct.snd_kcontrol, ptr %2, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %5, ptr noundef align 4 dereferenceable(64) %6, i32 64, i1 false)
  %7 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %5, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, %3
  store i32 %9, ptr %7, align 4
  %10 = load i32, ptr %5, align 4
  %11 = add i32 %10, %3
  store i32 %11, ptr %5, align 4
  call void @snd_ctl_notify(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %5)
  call void @down_read(ptr noundef nonnull @snd_ctl_layer_rwsem) #16
  %12 = load ptr, ptr @snd_ctl_layer, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %14, %4
  %15 = phi ptr [ %18, %14 ], [ %12, %4 ]
  %16 = getelementptr inbounds %struct.snd_ctl_layer_ops, ptr %15, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  call void %17(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #16
  %18 = load ptr, ptr %15, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %14

20:                                               ; preds = %14, %4
  call void @up_read(ptr noundef nonnull @snd_ctl_layer_rwsem) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #16
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @snd_ctl_new1(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %71, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %71, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %0, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 1, i32 %10
  %13 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %0, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  %16 = and i32 %14, 503316855
  %17 = select i1 %15, i32 3, i32 %16
  %18 = add i32 %12, -1029
  %19 = icmp ult i32 %18, -1028
  br i1 %19, label %71, label %20

20:                                               ; preds = %8
  %21 = shl nuw nsw i32 %12, 3
  %22 = add nuw nsw i32 %21, 104
  %23 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %22, i32 noundef 3520) #19
  %24 = icmp eq ptr %23, null
  br i1 %24, label %71, label %25

25:                                               ; preds = %25, %20
  %26 = phi i32 [ %29, %25 ], [ 0, %20 ]
  %27 = getelementptr %struct.snd_kcontrol, ptr %23, i32 0, i32 10, i32 %26, i32 1
  store i32 %17, ptr %27, align 4
  %28 = getelementptr %struct.snd_kcontrol, ptr %23, i32 0, i32 10, i32 %26
  store ptr null, ptr %28, align 8
  %29 = add nuw i32 %26, 1
  %30 = icmp eq i32 %29, %12
  br i1 %30, label %31, label %25

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.snd_kcontrol, ptr %23, i32 0, i32 2
  store i32 %12, ptr %32, align 8
  %33 = load i32, ptr %0, align 4
  %34 = getelementptr inbounds %struct.snd_kcontrol, ptr %23, i32 0, i32 1, i32 1
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %0, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.snd_kcontrol, ptr %23, i32 0, i32 1, i32 2
  store i32 %36, ptr %37, align 16
  %38 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %0, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.snd_kcontrol, ptr %23, i32 0, i32 1, i32 3
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %0, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %52, label %44

44:                                               ; preds = %31
  %45 = getelementptr inbounds %struct.snd_kcontrol, ptr %23, i32 0, i32 1, i32 4
  %46 = tail call i32 @strscpy(ptr noundef %45, ptr noundef nonnull %42, i32 noundef 44) #16
  %47 = load ptr, ptr %41, align 4
  %48 = tail call i32 @strcmp(ptr noundef %47, ptr noundef %45)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %44
  %51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %47, ptr noundef %45) #18
  br label %52

52:                                               ; preds = %50, %44, %31
  %53 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %0, i32 0, i32 4
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.snd_kcontrol, ptr %23, i32 0, i32 1, i32 5
  store i32 %54, ptr %55, align 4
  %56 = load ptr, ptr %5, align 4
  %57 = getelementptr inbounds %struct.snd_kcontrol, ptr %23, i32 0, i32 3
  store ptr %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %0, i32 0, i32 8
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.snd_kcontrol, ptr %23, i32 0, i32 4
  store ptr %59, ptr %60, align 16
  %61 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %0, i32 0, i32 9
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.snd_kcontrol, ptr %23, i32 0, i32 5
  store ptr %62, ptr %63, align 4
  %64 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %0, i32 0, i32 10
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.snd_kcontrol, ptr %23, i32 0, i32 6
  store ptr %65, ptr %66, align 8
  %67 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %0, i32 0, i32 11
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %struct.snd_kcontrol, ptr %23, i32 0, i32 7
  store i32 %68, ptr %69, align 4
  %70 = getelementptr inbounds %struct.snd_kcontrol, ptr %23, i32 0, i32 8
  store ptr %1, ptr %70, align 32
  br label %71

71:                                               ; preds = %52, %20, %8, %4, %2
  %72 = phi ptr [ %23, %52 ], [ null, %4 ], [ null, %2 ], [ null, %8 ], [ null, %20 ]
  ret ptr %72
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_ctl_free_one(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void %5(ptr noundef nonnull %0) #16
  br label %8

8:                                                ; preds = %7, %3
  tail call void @kfree(ptr noundef nonnull %0) #16
  br label %9

9:                                                ; preds = %8, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_ctl_add(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %0, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.snd_kcontrol, ptr %1, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 14
  tail call void @down_write(ptr noundef %11) #16
  %12 = tail call fastcc i32 @__snd_ctl_add_replace(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0) #16
  tail call void @up_write(ptr noundef %11) #16
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %10, %6, %4
  %15 = phi i32 [ -22, %6 ], [ %12, %10 ], [ -22, %4 ]
  %16 = getelementptr inbounds %struct.snd_kcontrol, ptr %1, i32 0, i32 9
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  tail call void %17(ptr noundef nonnull %1) #16
  br label %20

20:                                               ; preds = %19, %14
  tail call void @kfree(ptr noundef nonnull %1) #16
  br label %21

21:                                               ; preds = %20, %10, %2
  %22 = phi i32 [ %15, %20 ], [ -22, %2 ], [ 0, %10 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_ctl_replace(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #0 {
  %4 = select i1 %2, i32 2, i32 1
  %5 = icmp eq ptr %1, null
  br i1 %5, label %23, label %6

6:                                                ; preds = %3
  %7 = icmp eq ptr %0, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.snd_kcontrol, ptr %1, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 14
  tail call void @down_write(ptr noundef %13) #16
  %14 = tail call fastcc i32 @__snd_ctl_add_replace(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %4) #16
  tail call void @up_write(ptr noundef %13) #16
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %12, %8, %6
  %17 = phi i32 [ -22, %8 ], [ %14, %12 ], [ -22, %6 ]
  %18 = getelementptr inbounds %struct.snd_kcontrol, ptr %1, i32 0, i32 9
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  tail call void %19(ptr noundef nonnull %1) #16
  br label %22

22:                                               ; preds = %21, %16
  tail call void @kfree(ptr noundef nonnull %1) #16
  br label %23

23:                                               ; preds = %22, %12, %3
  %24 = phi i32 [ %17, %22 ], [ -22, %3 ], [ 0, %12 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_ctl_remove(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.snd_ctl_elem_id, align 4
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = or i1 %4, %5
  br i1 %6, label %46, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %1, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %9, ptr %11, align 4
  store volatile ptr %10, ptr %9, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %8, align 4
  %12 = getelementptr inbounds %struct.snd_kcontrol, ptr %1, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 16
  %15 = load i32, ptr %14, align 8
  %16 = sub i32 %15, %13
  store i32 %16, ptr %14, align 8
  %17 = load i32, ptr %12, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %40, label %19

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.snd_kcontrol, ptr %1, i32 0, i32 1
  %21 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %3, i32 0, i32 5
  br label %22

22:                                               ; preds = %36, %19
  %23 = phi i32 [ 0, %19 ], [ %37, %36 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef align 4 dereferenceable(64) %20, i32 64, i1 false) #16
  %24 = load i32, ptr %21, align 4
  %25 = add i32 %24, %23
  store i32 %25, ptr %21, align 4
  %26 = load i32, ptr %3, align 4
  %27 = add i32 %26, %23
  store i32 %27, ptr %3, align 4
  call void @snd_ctl_notify(ptr noundef %0, i32 noundef -1, ptr noundef nonnull %3) #16
  call void @down_read(ptr noundef nonnull @snd_ctl_layer_rwsem) #16
  %28 = load ptr, ptr @snd_ctl_layer, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %30, %22
  %31 = phi ptr [ %34, %30 ], [ %28, %22 ]
  %32 = getelementptr inbounds %struct.snd_ctl_layer_ops, ptr %31, i32 0, i32 4
  %33 = load ptr, ptr %32, align 4
  call void %33(ptr noundef %0, i32 noundef -1, ptr noundef %1, i32 noundef %23) #16
  %34 = load ptr, ptr %31, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %30

36:                                               ; preds = %30, %22
  call void @up_read(ptr noundef nonnull @snd_ctl_layer_rwsem) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #16
  %37 = add nuw i32 %23, 1
  %38 = load i32, ptr %12, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %22, label %40

40:                                               ; preds = %36, %7
  %41 = getelementptr inbounds %struct.snd_kcontrol, ptr %1, i32 0, i32 9
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  call void %42(ptr noundef nonnull %1) #16
  br label %45

45:                                               ; preds = %44, %40
  call void @kfree(ptr noundef nonnull %1) #16
  br label %46

46:                                               ; preds = %45, %2
  %47 = phi i32 [ 0, %45 ], [ -22, %2 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_ctl_remove_id(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 14
  tail call void @down_write(ptr noundef %3) #16
  %4 = tail call ptr @snd_ctl_find_id(ptr noundef %0, ptr noundef %1)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @snd_ctl_remove(ptr noundef %0, ptr noundef nonnull %4)
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ %7, %6 ], [ -2, %2 ]
  tail call void @up_write(ptr noundef %3) #16
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @snd_ctl_find_id(ptr noundef readonly %0, ptr noundef readonly %1) #7 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %66, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr %1, align 4
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 18
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %8, label %26, label %12

12:                                               ; preds = %6
  br i1 %11, label %66, label %13

13:                                               ; preds = %23, %12
  %14 = phi ptr [ %24, %23 ], [ %10, %12 ]
  %15 = getelementptr inbounds %struct.snd_kcontrol, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %16, %7
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.snd_kcontrol, ptr %14, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, %16
  %22 = icmp ugt i32 %21, %7
  br i1 %22, label %66, label %23

23:                                               ; preds = %18, %13
  %24 = load ptr, ptr %14, align 4
  %25 = icmp eq ptr %24, %9
  br i1 %25, label %66, label %13

26:                                               ; preds = %6
  br i1 %11, label %66, label %27

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %1, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %1, i32 0, i32 2
  %31 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %1, i32 0, i32 3
  %32 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %1, i32 0, i32 4
  %33 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %1, i32 0, i32 5
  br label %34

34:                                               ; preds = %63, %27
  %35 = phi ptr [ %10, %27 ], [ %64, %63 ]
  %36 = getelementptr inbounds %struct.snd_kcontrol, ptr %35, i32 0, i32 1, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, %29
  br i1 %38, label %39, label %63

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.snd_kcontrol, ptr %35, i32 0, i32 1, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = load i32, ptr %30, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %63

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.snd_kcontrol, ptr %35, i32 0, i32 1, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = load i32, ptr %31, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.snd_kcontrol, ptr %35, i32 0, i32 1, i32 4
  %51 = tail call i32 @strncmp(ptr noundef %50, ptr noundef %32, i32 noundef 44)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.snd_kcontrol, ptr %35, i32 0, i32 1, i32 5
  %55 = load i32, ptr %54, align 4
  %56 = load i32, ptr %33, align 4
  %57 = icmp ugt i32 %55, %56
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.snd_kcontrol, ptr %35, i32 0, i32 2
  %60 = load i32, ptr %59, align 4
  %61 = add i32 %60, %55
  %62 = icmp ugt i32 %61, %56
  br i1 %62, label %66, label %63

63:                                               ; preds = %58, %53, %49, %44, %39, %34
  %64 = load ptr, ptr %35, align 4
  %65 = icmp eq ptr %64, %9
  br i1 %65, label %66, label %34

66:                                               ; preds = %63, %58, %26, %23, %18, %12, %2
  %67 = phi ptr [ null, %2 ], [ null, %12 ], [ null, %26 ], [ %35, %58 ], [ null, %63 ], [ null, %23 ], [ %14, %18 ]
  ret ptr %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_ctl_activate_id(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.snd_ctl_elem_id, align 4
  %5 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 14
  tail call void @down_write(ptr noundef %5) #16
  %6 = tail call ptr @snd_ctl_find_id(ptr noundef %0, ptr noundef %1)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %64, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr %1, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.snd_kcontrol, ptr %6, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = sub i32 %9, %13
  %15 = getelementptr inbounds %struct.snd_kcontrol, ptr %6, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %14, i32 %16) #16, !srcloc !12
  %18 = and i32 %17, %14
  br label %29

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %1, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.snd_kcontrol, ptr %6, i32 0, i32 1, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = sub i32 %21, %23
  %25 = getelementptr inbounds %struct.snd_kcontrol, ptr %6, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %24, i32 %26) #16, !srcloc !12
  %28 = and i32 %27, %24
  br label %29

29:                                               ; preds = %19, %11
  %30 = phi i32 [ %18, %11 ], [ %28, %19 ]
  %31 = icmp eq i32 %2, 0
  %32 = getelementptr %struct.snd_kcontrol, ptr %6, i32 0, i32 10, i32 %30, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 256
  %35 = icmp eq i32 %34, 0
  br i1 %31, label %39, label %36

36:                                               ; preds = %29
  br i1 %35, label %64, label %37

37:                                               ; preds = %36
  %38 = and i32 %33, -257
  br label %42

39:                                               ; preds = %29
  br i1 %35, label %40, label %64

40:                                               ; preds = %39
  %41 = or i32 %33, 256
  br label %42

42:                                               ; preds = %40, %37
  %43 = phi i32 [ %41, %40 ], [ %38, %37 ]
  store i32 %43, ptr %32, align 4
  %44 = getelementptr inbounds %struct.snd_kcontrol, ptr %6, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(64) %1, ptr noundef align 4 dereferenceable(64) %44, i32 64, i1 false) #16
  %45 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %1, i32 0, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, %30
  store i32 %47, ptr %45, align 4
  %48 = load i32, ptr %1, align 4
  %49 = add i32 %48, %30
  store i32 %49, ptr %1, align 4
  tail call void @downgrade_write(ptr noundef %5) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef align 4 dereferenceable(64) %44, i32 64, i1 false) #16
  %50 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %4, i32 0, i32 5
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, %30
  store i32 %52, ptr %50, align 4
  %53 = load i32, ptr %4, align 4
  %54 = add i32 %53, %30
  store i32 %54, ptr %4, align 4
  call void @snd_ctl_notify(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %4) #16
  call void @down_read(ptr noundef nonnull @snd_ctl_layer_rwsem) #16
  %55 = load ptr, ptr @snd_ctl_layer, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %57, %42
  %58 = phi ptr [ %61, %57 ], [ %55, %42 ]
  %59 = getelementptr inbounds %struct.snd_ctl_layer_ops, ptr %58, i32 0, i32 4
  %60 = load ptr, ptr %59, align 4
  call void %60(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %6, i32 noundef %30) #16
  %61 = load ptr, ptr %58, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %57

63:                                               ; preds = %57, %42
  call void @up_read(ptr noundef nonnull @snd_ctl_layer_rwsem) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #16
  call void @up_read(ptr noundef %5) #16
  br label %66

64:                                               ; preds = %39, %36, %3
  %65 = phi i32 [ 0, %36 ], [ 0, %39 ], [ -2, %3 ]
  tail call void @up_write(ptr noundef %5) #16
  br label %66

66:                                               ; preds = %64, %63
  %67 = phi i32 [ %65, %64 ], [ 1, %63 ]
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @downgrade_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_ctl_rename_id(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 14
  tail call void @down_write(ptr noundef %4) #16
  %5 = tail call ptr @snd_ctl_find_id(ptr noundef %0, ptr noundef %1)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.snd_kcontrol, ptr %5, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(64) %8, ptr noundef align 4 dereferenceable(64) %2, i32 64, i1 false)
  %9 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 13
  %10 = load i32, ptr %9, align 8
  %11 = add i32 %10, 1
  store i32 %11, ptr %8, align 4
  %12 = getelementptr inbounds %struct.snd_kcontrol, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr %9, align 8
  %15 = add i32 %14, %13
  store i32 %15, ptr %9, align 8
  br label %16

16:                                               ; preds = %7, %3
  %17 = phi i32 [ 0, %7 ], [ -2, %3 ]
  tail call void @up_write(ptr noundef %4) #16
  ret i32 %17
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @snd_ctl_find_numid(ptr noundef readonly %0, i32 noundef %1) #8 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq i32 %1, 0
  %5 = or i1 %3, %4
  br i1 %5, label %23, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 18
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %23, label %10

10:                                               ; preds = %20, %6
  %11 = phi ptr [ %21, %20 ], [ %8, %6 ]
  %12 = getelementptr inbounds %struct.snd_kcontrol, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %13, %1
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.snd_kcontrol, ptr %11, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, %13
  %19 = icmp ugt i32 %18, %1
  br i1 %19, label %23, label %20

20:                                               ; preds = %15, %10
  %21 = load ptr, ptr %11, align 4
  %22 = icmp eq ptr %21, %7
  br i1 %22, label %23, label %10

23:                                               ; preds = %20, %15, %6, %2
  %24 = phi ptr [ null, %2 ], [ null, %6 ], [ %11, %15 ], [ null, %20 ]
  ret ptr %24
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_ctl_register_ioctl(ptr noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 12) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.snd_kctl_ioctl, ptr %3, i32 0, i32 1
  store ptr %0, ptr %6, align 8
  tail call void @down_write(ptr noundef nonnull @snd_ioctl_rwsem) #16
  %7 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @snd_control_ioctls, i32 0, i32 1), align 4
  store ptr %3, ptr getelementptr inbounds (%struct.list_head, ptr @snd_control_ioctls, i32 0, i32 1), align 4
  store ptr @snd_control_ioctls, ptr %3, align 8
  %8 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %7, ptr %8, align 4
  store volatile ptr %3, ptr %7, align 4
  tail call void @up_write(ptr noundef nonnull @snd_ioctl_rwsem) #16
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ 0, %5 ], [ -12, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_ctl_unregister_ioctl(ptr noundef readnone %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  tail call void @down_write(ptr noundef nonnull @snd_ioctl_rwsem) #16
  br label %4

4:                                                ; preds = %8, %3
  %5 = phi ptr [ @snd_control_ioctls, %3 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, @snd_control_ioctls
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.snd_kctl_ioctl, ptr %6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %12, label %4

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %6, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %14, ptr %16, align 4
  store volatile ptr %15, ptr %14, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %13, align 4
  tail call void @up_write(ptr noundef nonnull @snd_ioctl_rwsem) #16
  tail call void @kfree(ptr noundef %6) #16
  br label %18

17:                                               ; preds = %4
  tail call void @up_write(ptr noundef nonnull @snd_ioctl_rwsem) #16
  br label %18

18:                                               ; preds = %17, %12, %1
  %19 = phi i32 [ 0, %12 ], [ -22, %17 ], [ -22, %1 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_ctl_get_preferred_subdevice(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 15
  %4 = tail call i32 @_raw_read_lock_irqsave(ptr noundef %3) #16
  %5 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 19
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %24, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @llvm.thread.pointer() #16
  %10 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 62
  %11 = load ptr, ptr %10, align 64
  br label %12

12:                                               ; preds = %21, %8
  %13 = phi ptr [ %6, %8 ], [ %22, %21 ]
  %14 = getelementptr inbounds %struct.snd_ctl_file, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %11
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = getelementptr %struct.snd_ctl_file, ptr %13, i32 0, i32 3, i32 %1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %24

21:                                               ; preds = %17, %12
  %22 = load ptr, ptr %13, align 4
  %23 = icmp eq ptr %22, %5
  br i1 %23, label %24, label %12

24:                                               ; preds = %21, %17, %2
  %25 = phi i32 [ -1, %2 ], [ -1, %21 ], [ %19, %17 ]
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #16
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_ctl_request_layer(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  tail call void @down_read(ptr noundef nonnull @snd_ctl_layer_rwsem) #16
  br label %4

4:                                                ; preds = %8, %3
  %5 = phi ptr [ @snd_ctl_layer, %3 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.snd_ctl_layer_ops, ptr %6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @strcmp(ptr noundef %10, ptr noundef nonnull %0)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %4

13:                                               ; preds = %8
  tail call void @up_read(ptr noundef nonnull @snd_ctl_layer_rwsem) #16
  br label %16

14:                                               ; preds = %4
  tail call void @up_read(ptr noundef nonnull @snd_ctl_layer_rwsem) #16
  %15 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull %0) #16
  br label %16

16:                                               ; preds = %14, %13, %1
  %17 = phi i32 [ 0, %13 ], [ %15, %14 ], [ 0, %1 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_ctl_register_layer(ptr noundef %0) #0 {
  tail call void @down_write(ptr noundef nonnull @snd_ctl_layer_rwsem) #16
  %2 = load ptr, ptr @snd_ctl_layer, align 4
  store ptr %2, ptr %0, align 4
  store ptr %0, ptr @snd_ctl_layer, align 4
  tail call void @up_write(ptr noundef nonnull @snd_ctl_layer_rwsem) #16
  %3 = getelementptr inbounds %struct.snd_ctl_layer_ops, ptr %0, i32 0, i32 2
  br label %4

4:                                                ; preds = %12, %1
  %5 = phi i32 [ 0, %1 ], [ %13, %12 ]
  %6 = tail call ptr @snd_card_ref(i32 noundef %5) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 14
  tail call void @down_read(ptr noundef %9) #16
  %10 = load ptr, ptr %3, align 4
  tail call void %10(ptr noundef nonnull %6) #16
  tail call void @up_read(ptr noundef %9) #16
  %11 = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 28
  tail call void @put_device(ptr noundef %11) #16
  br label %12

12:                                               ; preds = %8, %4
  %13 = add nuw nsw i32 %5, 1
  %14 = icmp eq i32 %13, 32
  br i1 %14, label %15, label %4

15:                                               ; preds = %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_card_ref(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_ctl_disconnect_layer(ptr noundef readonly %0) #0 {
  tail call void @down_write(ptr noundef nonnull @snd_ctl_layer_rwsem) #16
  br label %2

2:                                                ; preds = %7, %1
  %3 = phi ptr [ @snd_ctl_layer, %1 ], [ %5, %7 ]
  %4 = phi ptr [ null, %1 ], [ %5, %7 ]
  %5 = load ptr, ptr %3, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = icmp eq ptr %5, %0
  br i1 %8, label %9, label %2

9:                                                ; preds = %7
  %10 = icmp eq ptr %4, null
  %11 = load ptr, ptr %0, align 4
  %12 = select i1 %10, ptr @snd_ctl_layer, ptr %4
  store ptr %11, ptr %12, align 4
  br label %13

13:                                               ; preds = %9, %2
  tail call void @up_write(ptr noundef nonnull @snd_ctl_layer_rwsem) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_ctl_create(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8
  %5 = icmp ugt i32 %4, 31
  br i1 %5, label %13, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 12
  tail call void @snd_device_initialize(ptr noundef %7, ptr noundef nonnull %0) #16
  %8 = load i32, ptr %0, align 8
  %9 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %7, ptr noundef nonnull @.str.2, i32 noundef %8) #16
  %10 = tail call i32 @snd_device_new(ptr noundef nonnull %0, i32 noundef 11, ptr noundef nonnull %0, ptr noundef nonnull @snd_ctl_create.ops) #16
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  tail call void @put_device(ptr noundef %7) #16
  br label %13

13:                                               ; preds = %12, %6, %3, %1
  %14 = phi i32 [ -6, %1 ], [ -6, %3 ], [ %10, %12 ], [ %10, %6 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_ctl_dev_free(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_device, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 14
  tail call void @down_write(ptr noundef %4) #16
  %5 = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 18
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %13, label %8

8:                                                ; preds = %8, %1
  %9 = phi ptr [ %11, %8 ], [ %6, %1 ]
  %10 = tail call i32 @snd_ctl_remove(ptr noundef %3, ptr noundef %9)
  %11 = load volatile ptr, ptr %5, align 4
  %12 = icmp eq ptr %11, %5
  br i1 %12, label %13, label %8

13:                                               ; preds = %8, %1
  tail call void @up_write(ptr noundef %4) #16
  %14 = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 12
  tail call void @put_device(ptr noundef %14) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_ctl_dev_register(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_device, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 12
  %5 = tail call i32 @snd_register_device(i32 noundef 0, ptr noundef %3, i32 noundef -1, ptr noundef nonnull @snd_ctl_f_ops, ptr noundef %3, ptr noundef %4) #16
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 14
  tail call void @down_read(ptr noundef %8) #16
  tail call void @down_read(ptr noundef nonnull @snd_ctl_layer_rwsem) #16
  %9 = load ptr, ptr @snd_ctl_layer, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %11, %7
  %12 = phi ptr [ %15, %11 ], [ %9, %7 ]
  %13 = getelementptr inbounds %struct.snd_ctl_layer_ops, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  tail call void %14(ptr noundef %3) #16
  %15 = load ptr, ptr %12, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %11

17:                                               ; preds = %11, %7
  tail call void @up_read(ptr noundef nonnull @snd_ctl_layer_rwsem) #16
  tail call void @up_read(ptr noundef %8) #16
  br label %18

18:                                               ; preds = %17, %1
  %19 = phi i32 [ 0, %17 ], [ %5, %1 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_ctl_dev_disconnect(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_device, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 15
  %5 = tail call i32 @_raw_read_lock_irqsave(ptr noundef %4) #16
  %6 = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 19
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %15, label %9

9:                                                ; preds = %9, %1
  %10 = phi ptr [ %13, %9 ], [ %7, %1 ]
  %11 = getelementptr inbounds %struct.snd_ctl_file, ptr %10, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %11, i32 noundef 3, i32 noundef 1, ptr noundef null) #16
  %12 = getelementptr inbounds %struct.snd_ctl_file, ptr %10, i32 0, i32 6
  tail call void @kill_fasync(ptr noundef %12, i32 noundef 29, i32 noundef 4) #16
  %13 = load ptr, ptr %10, align 4
  %14 = icmp eq ptr %13, %6
  br i1 %14, label %15, label %9

15:                                               ; preds = %9, %1
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #16
  %16 = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 14
  tail call void @down_read(ptr noundef %16) #16
  tail call void @down_read(ptr noundef nonnull @snd_ctl_layer_rwsem) #16
  %17 = load ptr, ptr @snd_ctl_layer, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %19, %15
  %20 = phi ptr [ %23, %19 ], [ %17, %15 ]
  %21 = getelementptr inbounds %struct.snd_ctl_layer_ops, ptr %20, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  tail call void %22(ptr noundef %3) #16
  %23 = load ptr, ptr %20, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %19

25:                                               ; preds = %19, %15
  tail call void @up_read(ptr noundef nonnull @snd_ctl_layer_rwsem) #16
  tail call void @up_read(ptr noundef %16) #16
  %26 = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 12
  %27 = tail call i32 @snd_unregister_device(ptr noundef %26) #16
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_device_initialize(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_device_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @snd_ctl_boolean_mono_info(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 1
  store i32 1, ptr %3, align 8
  %4 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 3
  store i32 1, ptr %4, align 8
  %5 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5
  store i32 0, ptr %5, align 8
  %6 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5, i32 0, i32 1
  store i32 1, ptr %6, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @snd_ctl_boolean_stereo_info(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 1
  store i32 1, ptr %3, align 8
  %4 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 3
  store i32 2, ptr %4, align 8
  %5 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5
  store i32 0, ptr %5, align 8
  %6 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5, i32 0, i32 1
  store i32 1, ptr %6, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_ctl_enum_info(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %0, i32 0, i32 1
  store i32 3, ptr %5, align 8
  %6 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %0, i32 0, i32 3
  store i32 %1, ptr %6, align 8
  %7 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %0, i32 0, i32 5
  store i32 %2, ptr %7, align 8
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %29, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %0, i32 0, i32 5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %11, %2
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = add i32 %2, -1
  store i32 %14, ptr %10, align 4
  br label %15

15:                                               ; preds = %13, %9
  %16 = phi i32 [ %14, %13 ], [ %11, %9 ]
  %17 = getelementptr ptr, ptr %3, i32 %16
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @strlen(ptr noundef %18)
  %20 = icmp ugt i32 %19, 63
  br i1 %20, label %21, label %25, !prof !13

21:                                               ; preds = %15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2301, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef %18) #16
  %22 = load i32, ptr %10, align 4
  %23 = getelementptr ptr, ptr %3, i32 %22
  %24 = load ptr, ptr %23, align 4
  br label %25

25:                                               ; preds = %21, %15
  %26 = phi ptr [ %24, %21 ], [ %18, %15 ]
  %27 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %0, i32 0, i32 5, i32 0, i32 2
  %28 = tail call i32 @strscpy(ptr noundef %27, ptr noundef %26, i32 noundef 64) #16
  br label %29

29:                                               ; preds = %25, %4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__snd_ctl_add_replace(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.snd_ctl_elem_id, align 4
  %5 = alloca %struct.snd_ctl_elem_id, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #16
  %6 = getelementptr inbounds %struct.snd_kcontrol, ptr %1, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %5, ptr noundef align 4 dereferenceable(64) %6, i32 64, i1 false)
  %7 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %5, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_kcontrol, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = xor i32 %10, -1
  %12 = icmp ugt i32 %8, %11
  br i1 %12, label %109, label %13

13:                                               ; preds = %3
  %14 = call ptr @snd_ctl_find_id(ptr noundef %0, ptr noundef nonnull %5)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = icmp eq i32 %2, 1
  br i1 %17, label %109, label %36

18:                                               ; preds = %13
  %19 = icmp eq i32 %2, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 27
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %5, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %5, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %5, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %5, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.5, i32 noundef %24, i32 noundef %26, i32 noundef %28, ptr noundef %29, i32 noundef %8) #18
  br label %109

30:                                               ; preds = %18
  %31 = call i32 @snd_ctl_remove(ptr noundef %0, ptr noundef nonnull %14)
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %109, label %33

33:                                               ; preds = %30
  %34 = load i32, ptr %9, align 4
  %35 = xor i32 %34, -1
  br label %36

36:                                               ; preds = %33, %16
  %37 = phi i32 [ %35, %33 ], [ %11, %16 ]
  %38 = phi i32 [ %34, %33 ], [ %10, %16 ]
  %39 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 13
  %40 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 18
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, %40
  %43 = load i32, ptr %39, align 8
  br label %44

44:                                               ; preds = %67, %36
  %45 = phi i32 [ %43, %36 ], [ %68, %67 ]
  %46 = phi i32 [ 100000, %36 ], [ %69, %67 ]
  %47 = icmp ult i32 %45, %37
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  store i32 0, ptr %39, align 8
  br label %49

49:                                               ; preds = %48, %44
  %50 = phi i32 [ 0, %48 ], [ %45, %44 ]
  br i1 %42, label %74, label %51

51:                                               ; preds = %49
  %52 = add nuw i32 %50, 1
  %53 = add i32 %52, %38
  br label %54

54:                                               ; preds = %64, %51
  %55 = phi ptr [ %41, %51 ], [ %65, %64 ]
  %56 = getelementptr inbounds %struct.snd_kcontrol, ptr %55, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = icmp ult i32 %57, %53
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.snd_kcontrol, ptr %55, i32 0, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = add i32 %61, %57
  %63 = icmp ugt i32 %62, %52
  br i1 %63, label %67, label %64

64:                                               ; preds = %59, %54
  %65 = load ptr, ptr %55, align 4
  %66 = icmp eq ptr %65, %40
  br i1 %66, label %74, label %54

67:                                               ; preds = %59
  %68 = add i32 %62, -1
  store i32 %68, ptr %39, align 8
  %69 = add nsw i32 %46, -1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %44

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 27
  %73 = load ptr, ptr %72, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.6) #18
  br label %109

74:                                               ; preds = %64, %49
  %75 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 18, i32 1
  %76 = load ptr, ptr %75, align 4
  store ptr %1, ptr %75, align 4
  store ptr %40, ptr %1, align 4
  %77 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  store ptr %76, ptr %77, align 4
  store volatile ptr %1, ptr %76, align 4
  %78 = load i32, ptr %9, align 4
  %79 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 16
  %80 = load i32, ptr %79, align 8
  %81 = add i32 %80, %78
  store i32 %81, ptr %79, align 8
  %82 = load i32, ptr %39, align 8
  %83 = add i32 %82, 1
  store i32 %83, ptr %6, align 4
  %84 = load i32, ptr %9, align 4
  %85 = load i32, ptr %39, align 8
  %86 = add i32 %85, %84
  store i32 %86, ptr %39, align 8
  %87 = load i32, ptr %9, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %109, label %89

89:                                               ; preds = %74
  %90 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %4, i32 0, i32 5
  br label %91

91:                                               ; preds = %105, %89
  %92 = phi i32 [ 0, %89 ], [ %106, %105 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef align 4 dereferenceable(64) %6, i32 64, i1 false) #16
  %93 = load i32, ptr %90, align 4
  %94 = add i32 %93, %92
  store i32 %94, ptr %90, align 4
  %95 = load i32, ptr %4, align 4
  %96 = add i32 %95, %92
  store i32 %96, ptr %4, align 4
  call void @snd_ctl_notify(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %4) #16
  call void @down_read(ptr noundef nonnull @snd_ctl_layer_rwsem) #16
  %97 = load ptr, ptr @snd_ctl_layer, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %105, label %99

99:                                               ; preds = %99, %91
  %100 = phi ptr [ %103, %99 ], [ %97, %91 ]
  %101 = getelementptr inbounds %struct.snd_ctl_layer_ops, ptr %100, i32 0, i32 4
  %102 = load ptr, ptr %101, align 4
  call void %102(ptr noundef %0, i32 noundef 4, ptr noundef %1, i32 noundef %92) #16
  %103 = load ptr, ptr %100, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %99

105:                                              ; preds = %99, %91
  call void @up_read(ptr noundef nonnull @snd_ctl_layer_rwsem) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #16
  %106 = add nuw i32 %92, 1
  %107 = load i32, ptr %9, align 4
  %108 = icmp ult i32 %106, %107
  br i1 %108, label %91, label %109

109:                                              ; preds = %105, %74, %71, %30, %20, %16, %3
  %110 = phi i32 [ -16, %20 ], [ -22, %3 ], [ -22, %16 ], [ %31, %30 ], [ -12, %71 ], [ 0, %74 ], [ 0, %105 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #16
  ret i32 %110
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_register_device(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_ctl_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca %struct.snd_ctl_event, align 4
  %6 = alloca %struct.wait_queue_entry, align 4
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %115, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.snd_ctl_file, ptr %8, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %115, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.snd_ctl_file, ptr %8, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %115, label %18

18:                                               ; preds = %14
  %19 = icmp ult i32 %2, 72
  br i1 %19, label %115, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.snd_ctl_file, ptr %8, i32 0, i32 5
  tail call void @_raw_spin_lock_irq(ptr noundef %21) #16
  %22 = getelementptr inbounds %struct.snd_ctl_file, ptr %8, i32 0, i32 8
  %23 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %24 = getelementptr inbounds %struct.wait_queue_entry, ptr %6, i32 0, i32 1
  %25 = getelementptr inbounds %struct.wait_queue_entry, ptr %6, i32 0, i32 2
  %26 = getelementptr inbounds %struct.snd_ctl_file, ptr %8, i32 0, i32 4
  %27 = getelementptr inbounds %struct.snd_ctl_event, ptr %5, i32 0, i32 1
  %28 = getelementptr inbounds %struct.snd_ctl_event, ptr %5, i32 0, i32 1, i32 0, i32 1
  %29 = getelementptr inbounds i8, ptr %6, i32 12
  br label %30

30:                                               ; preds = %98, %20
  %31 = phi i32 [ 0, %20 ], [ %99, %98 ]
  %32 = phi i32 [ 0, %20 ], [ %100, %98 ]
  %33 = phi i32 [ %2, %20 ], [ %101, %98 ]
  %34 = phi ptr [ %1, %20 ], [ %103, %98 ]
  %35 = phi i32 [ undef, %20 ], [ %104, %98 ]
  %36 = icmp ugt i32 %33, 71
  br i1 %36, label %37, label %105

37:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %5, i8 0, i32 72, i1 false), !annotation !14
  %38 = load volatile ptr, ptr %22, align 4
  %39 = icmp eq ptr %38, %22
  br i1 %39, label %40, label %71

40:                                               ; preds = %37
  %41 = icmp sgt i32 %32, 0
  br label %42

42:                                               ; preds = %68, %40
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #16
  store i64 0, ptr %29, align 4, !annotation !14
  %43 = load i32, ptr %23, align 4
  %44 = and i32 %43, 2048
  %45 = icmp ne i32 %44, 0
  %46 = select i1 %45, i1 true, i1 %41
  br i1 %46, label %64, label %47

47:                                               ; preds = %42
  %48 = tail call ptr @llvm.thread.pointer() #16
  store i32 0, ptr %6, align 4
  store ptr %48, ptr %24, align 4
  store ptr @default_wake_function, ptr %25, align 4
  call void @add_wait_queue(ptr noundef %26, ptr noundef nonnull %6) #16
  %49 = getelementptr inbounds %struct.task_struct, ptr %48, i32 0, i32 1
  store volatile i32 1, ptr %49, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !15
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  %50 = load i16, ptr %21, align 4
  %51 = add i16 %50, 1
  store i16 %51, ptr %21, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !10
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !17
  call void @schedule() #16
  call void @remove_wait_queue(ptr noundef %26, ptr noundef nonnull %6) #16
  %52 = load ptr, ptr %11, align 4
  %53 = getelementptr inbounds %struct.snd_card, ptr %52, i32 0, i32 25
  %54 = load i32, ptr %53, align 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %47
  %57 = load volatile i32, ptr %48, align 4
  %58 = and i32 %57, 256
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %64, !prof !18

60:                                               ; preds = %56
  %61 = load volatile i32, ptr %48, align 4
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %60, %56, %47, %42
  %65 = phi i32 [ %31, %60 ], [ %31, %47 ], [ -11, %42 ], [ %31, %56 ]
  %66 = phi i32 [ 1, %60 ], [ 1, %47 ], [ 6, %42 ], [ 1, %56 ]
  %67 = phi i32 [ -512, %60 ], [ -19, %47 ], [ %35, %42 ], [ -512, %56 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #16
  br label %98

68:                                               ; preds = %60
  call void @_raw_spin_lock_irq(ptr noundef %21) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #16
  %69 = load volatile ptr, ptr %22, align 4
  %70 = icmp eq ptr %69, %22
  br i1 %70, label %42, label %71

71:                                               ; preds = %68, %37
  %72 = phi ptr [ %38, %37 ], [ %69, %68 ]
  store i32 0, ptr %5, align 4
  %73 = getelementptr inbounds %struct.snd_kctl_event, ptr %72, i32 0, i32 2
  %74 = load i32, ptr %73, align 4
  store i32 %74, ptr %27, align 4
  %75 = getelementptr inbounds %struct.snd_kctl_event, ptr %72, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(64) %28, ptr noundef align 4 dereferenceable(64) %75, i32 64, i1 false)
  %76 = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = load ptr, ptr %72, align 4
  %79 = getelementptr inbounds %struct.list_head, ptr %78, i32 0, i32 1
  store ptr %77, ptr %79, align 4
  store volatile ptr %78, ptr %77, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %72, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %76, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  %80 = load i16, ptr %21, align 4
  %81 = add i16 %80, 1
  store i16 %81, ptr %21, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !10
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !17
  call void @kfree(ptr noundef %72) #16
  %82 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %34, i32 72, i32 -1090519040) #20, !srcloc !19
  %83 = extractvalue { i32, i32 } %82, 0
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %71
  %86 = tail call ptr @llvm.thread.pointer() #16
  %87 = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 3
  %88 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %87) #21, !srcloc !20
  %89 = and i32 %88, -13
  %90 = or i32 %89, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %90) #16, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !22
  %91 = call i32 @arm_copy_to_user(ptr noundef %34, ptr noundef nonnull %5, i32 noundef 72) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %88) #16, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !22
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %85
  call void @_raw_spin_lock_irq(ptr noundef %21) #16
  %94 = getelementptr i8, ptr %34, i32 72
  %95 = add i32 %33, -72
  %96 = add i32 %32, 72
  br label %98

97:                                               ; preds = %85, %71
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #16
  br label %110

98:                                               ; preds = %93, %64
  %99 = phi i32 [ %31, %93 ], [ %65, %64 ]
  %100 = phi i32 [ %96, %93 ], [ %32, %64 ]
  %101 = phi i32 [ %95, %93 ], [ %33, %64 ]
  %102 = phi i32 [ 0, %93 ], [ %66, %64 ]
  %103 = phi ptr [ %94, %93 ], [ %34, %64 ]
  %104 = phi i32 [ %35, %93 ], [ %67, %64 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #16
  switch i32 %102, label %115 [
    i32 0, label %30
    i32 6, label %105
  ]

105:                                              ; preds = %98, %30
  %106 = phi i32 [ %99, %98 ], [ %31, %30 ]
  %107 = phi i32 [ %100, %98 ], [ %32, %30 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  %108 = load i16, ptr %21, align 4
  %109 = add i16 %108, 1
  store i16 %109, ptr %21, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !10
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !17
  br label %110

110:                                              ; preds = %105, %97
  %111 = phi i32 [ %106, %105 ], [ -14, %97 ]
  %112 = phi i32 [ %107, %105 ], [ %32, %97 ]
  %113 = icmp sgt i32 %112, 0
  %114 = select i1 %113, i32 %112, i32 %111
  br label %115

115:                                              ; preds = %110, %98, %18, %14, %10, %4
  %116 = phi i32 [ %114, %110 ], [ -6, %10 ], [ -77, %14 ], [ -22, %18 ], [ -6, %4 ], [ %104, %98 ]
  ret i32 %116
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_ctl_poll(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.snd_ctl_file, ptr %4, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.snd_ctl_file, ptr %4, i32 0, i32 4
  %10 = icmp eq ptr %1, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %1, align 4
  %13 = icmp ne ptr %12, null
  %14 = icmp ne ptr %9, null
  %15 = and i1 %14, %13
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  tail call void %12(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %1) #16
  br label %17

17:                                               ; preds = %16, %11, %8
  %18 = getelementptr inbounds %struct.snd_ctl_file, ptr %4, i32 0, i32 8
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  %21 = select i1 %20, i32 0, i32 65
  br label %22

22:                                               ; preds = %17, %2
  %23 = phi i32 [ %21, %17 ], [ 0, %2 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_ctl_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.snd_ctl_elem_id, align 4
  %5 = alloca %struct.snd_ctl_elem_id, align 4
  %6 = alloca %struct.snd_ctl_elem_id, align 4
  %7 = alloca %struct.snd_ctl_elem_id, align 4
  %8 = alloca %struct.snd_ctl_elem_info, align 8
  %9 = alloca %struct.snd_ctl_elem_id, align 4
  %10 = alloca %struct.snd_ctl_elem_list, align 4
  %11 = inttoptr i32 %2 to ptr
  %12 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.snd_ctl_file, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %675, label %17

17:                                               ; preds = %3
  switch i32 %1, label %663 [
    i32 -2147199744, label %18
    i32 -2122820351, label %27
    i32 -1069001456, label %65
    i32 -1055894255, label %156
    i32 -1027058414, label %256
    i32 -1027058413, label %335
    i32 1077957908, label %442
    i32 1077957909, label %493
    i32 -1055894249, label %546
    i32 -1055894248, label %548
    i32 -1069525735, label %550
    i32 -1073457898, label %596
    i32 -1073195750, label %639
    i32 -1073195749, label %644
    i32 -1073195748, label %649
    i32 -1073457712, label %675
    i32 -2147199535, label %654
  ]

18:                                               ; preds = %17
  %19 = tail call ptr @llvm.thread.pointer() #16
  %20 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %21 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %20) #21, !srcloc !20
  %22 = and i32 %21, -13
  %23 = or i32 %22, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #16, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !22
  %24 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %11, i32 131080, i32 -1090519041) #16, !srcloc !23
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #16, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !22
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 0, i32 -14
  br label %675

27:                                               ; preds = %17
  %28 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %29 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3520, i32 noundef 376) #17
  %30 = icmp eq ptr %29, null
  br i1 %30, label %675, label %31

31:                                               ; preds = %27
  tail call void @down_read(ptr noundef nonnull @snd_ioctl_rwsem) #16
  %32 = load i32, ptr %15, align 8
  store i32 %32, ptr %29, align 8
  %33 = getelementptr inbounds %struct.snd_ctl_card_info, ptr %29, i32 0, i32 2
  %34 = getelementptr inbounds %struct.snd_card, ptr %15, i32 0, i32 1
  %35 = tail call i32 @strscpy(ptr noundef %33, ptr noundef %34, i32 noundef 16) #16
  %36 = getelementptr inbounds %struct.snd_ctl_card_info, ptr %29, i32 0, i32 3
  %37 = getelementptr inbounds %struct.snd_card, ptr %15, i32 0, i32 2
  %38 = tail call i32 @strscpy(ptr noundef %36, ptr noundef %37, i32 noundef 16) #16
  %39 = getelementptr inbounds %struct.snd_ctl_card_info, ptr %29, i32 0, i32 4
  %40 = getelementptr inbounds %struct.snd_card, ptr %15, i32 0, i32 3
  %41 = tail call i32 @strscpy(ptr noundef %39, ptr noundef %40, i32 noundef 32) #16
  %42 = getelementptr inbounds %struct.snd_ctl_card_info, ptr %29, i32 0, i32 5
  %43 = getelementptr inbounds %struct.snd_card, ptr %15, i32 0, i32 4
  %44 = tail call i32 @strscpy(ptr noundef %42, ptr noundef %43, i32 noundef 80) #16
  %45 = getelementptr inbounds %struct.snd_ctl_card_info, ptr %29, i32 0, i32 7
  %46 = getelementptr inbounds %struct.snd_card, ptr %15, i32 0, i32 6
  %47 = tail call i32 @strscpy(ptr noundef %45, ptr noundef %46, i32 noundef 80) #16
  %48 = getelementptr inbounds %struct.snd_ctl_card_info, ptr %29, i32 0, i32 8
  %49 = getelementptr inbounds %struct.snd_card, ptr %15, i32 0, i32 7
  %50 = tail call i32 @strscpy(ptr noundef %48, ptr noundef %49, i32 noundef 128) #16
  tail call void @up_read(ptr noundef nonnull @snd_ioctl_rwsem) #16
  %51 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %11, i32 376, i32 -1090519040) #20, !srcloc !19
  %52 = extractvalue { i32, i32 } %51, 0
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %31
  %55 = tail call ptr @llvm.thread.pointer() #16
  %56 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 3
  %57 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %56) #21, !srcloc !20
  %58 = and i32 %57, -13
  %59 = or i32 %58, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %59) #16, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !22
  %60 = tail call i32 @arm_copy_to_user(ptr noundef %11, ptr noundef nonnull %29, i32 noundef 376) #16
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %57) #16, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !22
  %61 = icmp eq i32 %60, 0
  %62 = select i1 %61, i32 0, i32 -14
  br label %63

63:                                               ; preds = %54, %31
  %64 = phi i32 [ -14, %31 ], [ %62, %54 ]
  tail call void @kfree(ptr noundef nonnull %29) #16
  br label %675

65:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %10) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %10, i8 0, i32 72, i1 false) #16, !annotation !14
  %66 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %11, i32 72, i32 -1090519040) #20
  %67 = extractvalue { i32, i32 } %66, 0
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %77, !prof !18

69:                                               ; preds = %65
  %70 = tail call ptr @llvm.thread.pointer() #16
  %71 = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 3
  %72 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %71) #21, !srcloc !20
  %73 = and i32 %72, -13
  %74 = or i32 %73, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %74) #16, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !22
  %75 = call i32 @arm_copy_from_user(ptr noundef nonnull %10, ptr noundef %11, i32 noundef 72) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %72) #16, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !22
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %81, label %77, !prof !18

77:                                               ; preds = %69, %65
  %78 = phi i32 [ %75, %69 ], [ 72, %65 ]
  %79 = sub i32 72, %78
  %80 = getelementptr i8, ptr %10, i32 %79
  call void @llvm.memset.p0.i32(ptr align 1 %80, i8 0, i32 %78, i1 false) #16
  br label %154

81:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %9, i8 0, i32 64, i1 false) #16, !annotation !14
  %82 = load i32, ptr %10, align 4
  %83 = getelementptr inbounds %struct.snd_ctl_elem_list, ptr %10, i32 0, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr inbounds %struct.snd_card, ptr %15, i32 0, i32 14
  call void @down_read(ptr noundef %85) #16
  %86 = getelementptr inbounds %struct.snd_card, ptr %15, i32 0, i32 16
  %87 = load i32, ptr %86, align 8
  %88 = getelementptr inbounds %struct.snd_ctl_elem_list, ptr %10, i32 0, i32 3
  store i32 %87, ptr %88, align 4
  %89 = getelementptr inbounds %struct.snd_ctl_elem_list, ptr %10, i32 0, i32 2
  store i32 0, ptr %89, align 4
  %90 = icmp eq i32 %84, 0
  br i1 %90, label %145, label %91

91:                                               ; preds = %81
  %92 = getelementptr inbounds %struct.snd_card, ptr %15, i32 0, i32 18
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, %92
  br i1 %94, label %145, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %9, i32 0, i32 5
  %97 = getelementptr inbounds %struct.snd_ctl_elem_list, ptr %10, i32 0, i32 4
  br label %98

98:                                               ; preds = %138, %95
  %99 = phi i32 [ 0, %95 ], [ %139, %138 ]
  %100 = phi ptr [ %93, %95 ], [ %142, %138 ]
  %101 = phi i32 [ %82, %95 ], [ %141, %138 ]
  %102 = phi i32 [ %84, %95 ], [ %140, %138 ]
  %103 = getelementptr inbounds %struct.snd_kcontrol, ptr %100, i32 0, i32 2
  %104 = load i32, ptr %103, align 4
  %105 = icmp ult i32 %101, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %98
  %107 = getelementptr inbounds %struct.snd_kcontrol, ptr %100, i32 0, i32 1
  br label %114

108:                                              ; preds = %98
  %109 = sub i32 %101, %104
  br label %138

110:                                              ; preds = %133
  %111 = add nuw i32 %117, 1
  %112 = load i32, ptr %103, align 4
  %113 = icmp ult i32 %111, %112
  br i1 %113, label %114, label %138

114:                                              ; preds = %110, %106
  %115 = phi i32 [ %99, %106 ], [ %135, %110 ]
  %116 = phi i32 [ %102, %106 ], [ %136, %110 ]
  %117 = phi i32 [ %101, %106 ], [ %111, %110 ]
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %9, ptr noundef align 4 dereferenceable(64) %107, i32 64, i1 false) #16
  %118 = load i32, ptr %96, align 4
  %119 = add i32 %118, %117
  store i32 %119, ptr %96, align 4
  %120 = load i32, ptr %9, align 4
  %121 = add i32 %120, %117
  store i32 %121, ptr %9, align 4
  %122 = load ptr, ptr %97, align 4
  %123 = getelementptr %struct.snd_ctl_elem_id, ptr %122, i32 %115
  %124 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %123, i32 64, i32 -1090519040) #20, !srcloc !19
  %125 = extractvalue { i32, i32 } %124, 0
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %144

127:                                              ; preds = %114
  %128 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %71) #21, !srcloc !20
  %129 = and i32 %128, -13
  %130 = or i32 %129, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %130) #16, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !22
  %131 = call i32 @arm_copy_to_user(ptr noundef %123, ptr noundef nonnull %9, i32 noundef 64) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %128) #16, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !22
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %144

133:                                              ; preds = %127
  %134 = load i32, ptr %89, align 4
  %135 = add i32 %134, 1
  store i32 %135, ptr %89, align 4
  %136 = add i32 %116, -1
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %146, label %110

138:                                              ; preds = %110, %108
  %139 = phi i32 [ %99, %108 ], [ %135, %110 ]
  %140 = phi i32 [ %102, %108 ], [ %136, %110 ]
  %141 = phi i32 [ %109, %108 ], [ 0, %110 ]
  %142 = load ptr, ptr %100, align 4
  %143 = icmp eq ptr %142, %92
  br i1 %143, label %146, label %98

144:                                              ; preds = %127, %114
  call void @up_read(ptr noundef %85) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #16
  br label %154

145:                                              ; preds = %91, %81
  call void @up_read(ptr noundef %85) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #16
  br label %147

146:                                              ; preds = %138, %133
  call void @up_read(ptr noundef %85) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #16
  br label %147

147:                                              ; preds = %146, %145
  %148 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %71) #21, !srcloc !20
  %149 = and i32 %148, -13
  %150 = or i32 %149, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %150) #16, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !22
  %151 = call i32 @arm_copy_to_user(ptr noundef %11, ptr noundef nonnull %10, i32 noundef 72) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %148) #16, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !22
  %152 = icmp eq i32 %151, 0
  %153 = select i1 %152, i32 0, i32 -14
  br label %154

154:                                              ; preds = %147, %144, %77
  %155 = phi i32 [ -14, %144 ], [ -14, %77 ], [ %153, %147 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %10) #16
  br label %675

156:                                              ; preds = %17
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %8) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(272) %8, i8 0, i32 272, i1 false) #16, !annotation !14
  %157 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %11, i32 272, i32 -1090519040) #20
  %158 = extractvalue { i32, i32 } %157, 0
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %168, !prof !18

160:                                              ; preds = %156
  %161 = tail call ptr @llvm.thread.pointer() #16
  %162 = getelementptr inbounds %struct.thread_info, ptr %161, i32 0, i32 3
  %163 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %162) #21, !srcloc !20
  %164 = and i32 %163, -13
  %165 = or i32 %164, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %165) #16, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !22
  %166 = call i32 @arm_copy_from_user(ptr noundef nonnull %8, ptr noundef %11, i32 noundef 272) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %163) #16, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !22
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %172, label %168, !prof !18

168:                                              ; preds = %160, %156
  %169 = phi i32 [ %166, %160 ], [ 272, %156 ]
  %170 = sub i32 272, %169
  %171 = getelementptr i8, ptr %8, i32 %170
  call void @llvm.memset.p0.i32(ptr align 1 %171, i8 0, i32 %169, i1 false) #16
  br label %254

172:                                              ; preds = %160
  %173 = load ptr, ptr %14, align 4
  %174 = getelementptr inbounds %struct.snd_card, ptr %173, i32 0, i32 14
  call void @down_read(ptr noundef %174) #16
  %175 = call ptr @snd_ctl_find_id(ptr noundef %173, ptr noundef nonnull %8) #16
  %176 = icmp eq ptr %175, null
  br i1 %176, label %241, label %177

177:                                              ; preds = %172
  %178 = call i32 @snd_power_ref_and_wait(ptr noundef %173) #16
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %177
  %181 = getelementptr inbounds %struct.snd_kcontrol, ptr %175, i32 0, i32 3
  %182 = load ptr, ptr %181, align 4
  %183 = call i32 %182(ptr noundef nonnull %175, ptr noundef nonnull %8) #16
  br label %184

184:                                              ; preds = %180, %177
  %185 = phi i32 [ %178, %177 ], [ %183, %180 ]
  %186 = getelementptr inbounds %struct.snd_card, ptr %173, i32 0, i32 38
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !24
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %186) #16, !srcloc !25
  %187 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %186, ptr %186, i32 1, ptr elementtype(i32) %186) #16, !srcloc !26
  %188 = extractvalue { i32, i32 } %187, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !27
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %184
  %191 = getelementptr inbounds %struct.snd_card, ptr %173, i32 0, i32 40
  call void @__wake_up(ptr noundef %191, i32 noundef 3, i32 noundef 1, ptr noundef null) #16
  br label %192

192:                                              ; preds = %190, %184
  %193 = icmp sgt i32 %185, -1
  br i1 %193, label %194, label %241

194:                                              ; preds = %192
  %195 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %8, i32 0, i32 2
  %196 = load i32, ptr %8, align 8
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %206, label %198

198:                                              ; preds = %194
  %199 = getelementptr inbounds %struct.snd_kcontrol, ptr %175, i32 0, i32 1
  %200 = load i32, ptr %199, align 4
  %201 = sub i32 %196, %200
  %202 = getelementptr inbounds %struct.snd_kcontrol, ptr %175, i32 0, i32 2
  %203 = load i32, ptr %202, align 4
  %204 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %201, i32 %203) #16, !srcloc !12
  %205 = and i32 %204, %201
  br label %216

206:                                              ; preds = %194
  %207 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %8, i32 0, i32 5
  %208 = load i32, ptr %207, align 4
  %209 = getelementptr inbounds %struct.snd_kcontrol, ptr %175, i32 0, i32 1, i32 5
  %210 = load i32, ptr %209, align 4
  %211 = sub i32 %208, %210
  %212 = getelementptr inbounds %struct.snd_kcontrol, ptr %175, i32 0, i32 2
  %213 = load i32, ptr %212, align 4
  %214 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %211, i32 %213) #16, !srcloc !12
  %215 = and i32 %214, %211
  br label %216

216:                                              ; preds = %206, %198
  %217 = phi i32 [ %205, %198 ], [ %215, %206 ]
  %218 = getelementptr %struct.snd_kcontrol, ptr %175, i32 0, i32 10, i32 %217
  %219 = getelementptr inbounds %struct.snd_kcontrol, ptr %175, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef align 4 dereferenceable(64) %219, i32 64, i1 false) #16
  %220 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %8, i32 0, i32 5
  %221 = load i32, ptr %220, align 4
  %222 = add i32 %221, %217
  store i32 %222, ptr %220, align 4
  %223 = load i32, ptr %8, align 8
  %224 = add i32 %223, %217
  store i32 %224, ptr %8, align 8
  %225 = getelementptr %struct.snd_kcontrol, ptr %175, i32 0, i32 10, i32 %217, i32 1
  %226 = load i32, ptr %225, align 4
  store i32 %226, ptr %195, align 4
  %227 = load ptr, ptr %218, align 4
  %228 = icmp eq ptr %227, null
  br i1 %228, label %243, label %229

229:                                              ; preds = %216
  %230 = or i32 %226, 512
  store i32 %230, ptr %195, align 4
  %231 = load ptr, ptr %218, align 4
  %232 = icmp eq ptr %231, %13
  br i1 %232, label %233, label %236

233:                                              ; preds = %229
  %234 = or i32 %226, 1536
  store i32 %234, ptr %195, align 4
  %235 = load ptr, ptr %218, align 4
  br label %236

236:                                              ; preds = %233, %229
  %237 = phi ptr [ %235, %233 ], [ %231, %229 ]
  %238 = getelementptr inbounds %struct.snd_ctl_file, ptr %237, i32 0, i32 2
  %239 = load ptr, ptr %238, align 4
  %240 = call i32 @pid_vnr(ptr noundef %239) #16
  br label %243

241:                                              ; preds = %192, %172
  %242 = phi i32 [ %185, %192 ], [ -2, %172 ]
  call void @up_read(ptr noundef %174) #16
  br label %254

243:                                              ; preds = %236, %216
  %244 = phi i32 [ %240, %236 ], [ -1, %216 ]
  %245 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %8, i32 0, i32 4
  store i32 %244, ptr %245, align 4
  call void @up_read(ptr noundef %174) #16
  %246 = load i32, ptr %195, align 4
  %247 = and i32 %246, -234881025
  store i32 %247, ptr %195, align 4
  %248 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %162) #21, !srcloc !20
  %249 = and i32 %248, -13
  %250 = or i32 %249, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %250) #16, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !22
  %251 = call i32 @arm_copy_to_user(ptr noundef %11, ptr noundef nonnull %8, i32 noundef 272) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %248) #16, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !22
  %252 = icmp eq i32 %251, 0
  %253 = select i1 %252, i32 %185, i32 -14
  br label %254

254:                                              ; preds = %243, %241, %168
  %255 = phi i32 [ %242, %241 ], [ -14, %168 ], [ %253, %243 ]
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %8) #16
  br label %675

256:                                              ; preds = %17
  %257 = tail call ptr @memdup_user(ptr noundef %11, i32 noundef 712) #16
  %258 = icmp ugt ptr %257, inttoptr (i32 -4096 to ptr)
  br i1 %258, label %259, label %261

259:                                              ; preds = %256
  %260 = ptrtoint ptr %257 to i32
  br label %675

261:                                              ; preds = %256
  %262 = getelementptr inbounds %struct.snd_card, ptr %15, i32 0, i32 14
  tail call void @down_read(ptr noundef %262) #16
  %263 = tail call ptr @snd_ctl_find_id(ptr noundef nonnull %15, ptr noundef %257) #16
  %264 = icmp eq ptr %263, null
  br i1 %264, label %316, label %265

265:                                              ; preds = %261
  %266 = load i32, ptr %257, align 4
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %276, label %268

268:                                              ; preds = %265
  %269 = getelementptr inbounds %struct.snd_kcontrol, ptr %263, i32 0, i32 1
  %270 = load i32, ptr %269, align 4
  %271 = sub i32 %266, %270
  %272 = getelementptr inbounds %struct.snd_kcontrol, ptr %263, i32 0, i32 2
  %273 = load i32, ptr %272, align 4
  %274 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %271, i32 %273) #16, !srcloc !12
  %275 = and i32 %274, %271
  br label %286

276:                                              ; preds = %265
  %277 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %257, i32 0, i32 5
  %278 = load i32, ptr %277, align 4
  %279 = getelementptr inbounds %struct.snd_kcontrol, ptr %263, i32 0, i32 1, i32 5
  %280 = load i32, ptr %279, align 4
  %281 = sub i32 %278, %280
  %282 = getelementptr inbounds %struct.snd_kcontrol, ptr %263, i32 0, i32 2
  %283 = load i32, ptr %282, align 4
  %284 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %281, i32 %283) #16, !srcloc !12
  %285 = and i32 %284, %281
  br label %286

286:                                              ; preds = %276, %268
  %287 = phi i32 [ %275, %268 ], [ %285, %276 ]
  %288 = getelementptr %struct.snd_kcontrol, ptr %263, i32 0, i32 10, i32 %287, i32 1
  %289 = load i32, ptr %288, align 4
  %290 = and i32 %289, 1
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %316, label %292

292:                                              ; preds = %286
  %293 = getelementptr inbounds %struct.snd_kcontrol, ptr %263, i32 0, i32 4
  %294 = load ptr, ptr %293, align 4
  %295 = icmp eq ptr %294, null
  br i1 %295, label %316, label %296

296:                                              ; preds = %292
  %297 = getelementptr inbounds %struct.snd_kcontrol, ptr %263, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(64) %257, ptr noundef align 4 dereferenceable(64) %297, i32 64, i1 false) #16
  %298 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %257, i32 0, i32 5
  %299 = load i32, ptr %298, align 4
  %300 = add i32 %299, %287
  store i32 %300, ptr %298, align 4
  %301 = load i32, ptr %257, align 4
  %302 = add i32 %301, %287
  store i32 %302, ptr %257, align 4
  %303 = tail call i32 @snd_power_ref_and_wait(ptr noundef nonnull %15) #16
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %305, label %308

305:                                              ; preds = %296
  %306 = load ptr, ptr %293, align 4
  %307 = tail call i32 %306(ptr noundef nonnull %263, ptr noundef %257) #16
  br label %308

308:                                              ; preds = %305, %296
  %309 = phi i32 [ %303, %296 ], [ %307, %305 ]
  %310 = getelementptr inbounds %struct.snd_card, ptr %15, i32 0, i32 38
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %310) #16, !srcloc !25
  %311 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %310, ptr %310, i32 1, ptr elementtype(i32) %310) #16, !srcloc !26
  %312 = extractvalue { i32, i32 } %311, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !27
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %314, label %318

314:                                              ; preds = %308
  %315 = getelementptr inbounds %struct.snd_card, ptr %15, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %315, i32 noundef 3, i32 noundef 1, ptr noundef null) #16
  br label %318

316:                                              ; preds = %292, %286, %261
  %317 = phi i32 [ -1, %286 ], [ -1, %292 ], [ -2, %261 ]
  tail call void @up_read(ptr noundef %262) #16
  br label %333

318:                                              ; preds = %314, %308
  tail call void @up_read(ptr noundef %262) #16
  %319 = icmp slt i32 %309, 0
  br i1 %319, label %333, label %320

320:                                              ; preds = %318
  %321 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %11, i32 712, i32 -1090519040) #20, !srcloc !19
  %322 = extractvalue { i32, i32 } %321, 0
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %324, label %333

324:                                              ; preds = %320
  %325 = tail call ptr @llvm.thread.pointer() #16
  %326 = getelementptr inbounds %struct.thread_info, ptr %325, i32 0, i32 3
  %327 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %326) #21, !srcloc !20
  %328 = and i32 %327, -13
  %329 = or i32 %328, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %329) #16, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !22
  %330 = tail call i32 @arm_copy_to_user(ptr noundef %11, ptr noundef %257, i32 noundef 712) #16
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %327) #16, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !22
  %331 = icmp eq i32 %330, 0
  %332 = select i1 %331, i32 %309, i32 -14
  br label %333

333:                                              ; preds = %324, %320, %318, %316
  %334 = phi i32 [ %309, %318 ], [ %317, %316 ], [ -14, %320 ], [ %332, %324 ]
  tail call void @kfree(ptr noundef %257) #16
  br label %675

335:                                              ; preds = %17
  %336 = tail call ptr @memdup_user(ptr noundef %11, i32 noundef 712) #16
  %337 = icmp ugt ptr %336, inttoptr (i32 -4096 to ptr)
  br i1 %337, label %338, label %340

338:                                              ; preds = %335
  %339 = ptrtoint ptr %336 to i32
  br label %675

340:                                              ; preds = %335
  %341 = load ptr, ptr %14, align 4
  %342 = getelementptr inbounds %struct.snd_card, ptr %341, i32 0, i32 14
  tail call void @down_write(ptr noundef %342) #16
  %343 = tail call ptr @snd_ctl_find_id(ptr noundef %341, ptr noundef %336) #16
  %344 = icmp eq ptr %343, null
  br i1 %344, label %345, label %346

345:                                              ; preds = %340
  tail call void @up_write(ptr noundef %342) #16
  br label %440

346:                                              ; preds = %340
  %347 = load i32, ptr %336, align 4
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %357, label %349

349:                                              ; preds = %346
  %350 = getelementptr inbounds %struct.snd_kcontrol, ptr %343, i32 0, i32 1
  %351 = load i32, ptr %350, align 4
  %352 = sub i32 %347, %351
  %353 = getelementptr inbounds %struct.snd_kcontrol, ptr %343, i32 0, i32 2
  %354 = load i32, ptr %353, align 4
  %355 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %352, i32 %354) #16, !srcloc !12
  %356 = and i32 %355, %352
  br label %367

357:                                              ; preds = %346
  %358 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %336, i32 0, i32 5
  %359 = load i32, ptr %358, align 4
  %360 = getelementptr inbounds %struct.snd_kcontrol, ptr %343, i32 0, i32 1, i32 5
  %361 = load i32, ptr %360, align 4
  %362 = sub i32 %359, %361
  %363 = getelementptr inbounds %struct.snd_kcontrol, ptr %343, i32 0, i32 2
  %364 = load i32, ptr %363, align 4
  %365 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %362, i32 %364) #16, !srcloc !12
  %366 = and i32 %365, %362
  br label %367

367:                                              ; preds = %357, %349
  %368 = phi i32 [ %356, %349 ], [ %366, %357 ]
  %369 = getelementptr %struct.snd_kcontrol, ptr %343, i32 0, i32 10, i32 %368
  %370 = getelementptr %struct.snd_kcontrol, ptr %343, i32 0, i32 10, i32 %368, i32 1
  %371 = load i32, ptr %370, align 4
  %372 = and i32 %371, 2
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %385, label %374

374:                                              ; preds = %367
  %375 = getelementptr inbounds %struct.snd_kcontrol, ptr %343, i32 0, i32 5
  %376 = load ptr, ptr %375, align 4
  %377 = icmp eq ptr %376, null
  br i1 %377, label %385, label %378

378:                                              ; preds = %374
  %379 = icmp eq ptr %13, null
  br i1 %379, label %386, label %380

380:                                              ; preds = %378
  %381 = load ptr, ptr %369, align 4
  %382 = icmp eq ptr %381, null
  %383 = icmp eq ptr %381, %13
  %384 = or i1 %382, %383
  br i1 %384, label %386, label %385

385:                                              ; preds = %380, %374, %367
  tail call void @up_write(ptr noundef %342) #16
  br label %440

386:                                              ; preds = %380, %378
  %387 = getelementptr inbounds %struct.snd_kcontrol, ptr %343, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(64) %336, ptr noundef align 4 dereferenceable(64) %387, i32 64, i1 false) #16
  %388 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %336, i32 0, i32 5
  %389 = load i32, ptr %388, align 4
  %390 = add i32 %389, %368
  store i32 %390, ptr %388, align 4
  %391 = load i32, ptr %336, align 4
  %392 = add i32 %391, %368
  store i32 %392, ptr %336, align 4
  %393 = tail call i32 @snd_power_ref_and_wait(ptr noundef %341) #16
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %395, label %398

395:                                              ; preds = %386
  %396 = load ptr, ptr %375, align 4
  %397 = tail call i32 %396(ptr noundef nonnull %343, ptr noundef %336) #16
  br label %398

398:                                              ; preds = %395, %386
  %399 = phi i32 [ %393, %386 ], [ %397, %395 ]
  %400 = getelementptr inbounds %struct.snd_card, ptr %341, i32 0, i32 38
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %400) #16, !srcloc !25
  %401 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %400, ptr %400, i32 1, ptr elementtype(i32) %400) #16, !srcloc !26
  %402 = extractvalue { i32, i32 } %401, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !27
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %404, label %406

404:                                              ; preds = %398
  %405 = getelementptr inbounds %struct.snd_card, ptr %341, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %405, i32 noundef 3, i32 noundef 1, ptr noundef null) #16
  br label %406

406:                                              ; preds = %404, %398
  %407 = icmp slt i32 %399, 0
  br i1 %407, label %408, label %409

408:                                              ; preds = %406
  tail call void @up_write(ptr noundef %342) #16
  br label %440

409:                                              ; preds = %406
  %410 = icmp eq i32 %399, 0
  br i1 %410, label %426, label %411

411:                                              ; preds = %409
  tail call void @downgrade_write(ptr noundef %342) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %7, ptr noundef align 4 dereferenceable(64) %387, i32 64, i1 false) #16
  %412 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %7, i32 0, i32 5
  %413 = load i32, ptr %412, align 4
  %414 = add i32 %413, %368
  store i32 %414, ptr %412, align 4
  %415 = load i32, ptr %7, align 4
  %416 = add i32 %415, %368
  store i32 %416, ptr %7, align 4
  call void @snd_ctl_notify(ptr noundef %341, i32 noundef 1, ptr noundef nonnull %7) #16
  call void @down_read(ptr noundef nonnull @snd_ctl_layer_rwsem) #16
  %417 = load ptr, ptr @snd_ctl_layer, align 4
  %418 = icmp eq ptr %417, null
  br i1 %418, label %425, label %419

419:                                              ; preds = %419, %411
  %420 = phi ptr [ %423, %419 ], [ %417, %411 ]
  %421 = getelementptr inbounds %struct.snd_ctl_layer_ops, ptr %420, i32 0, i32 4
  %422 = load ptr, ptr %421, align 4
  call void %422(ptr noundef %341, i32 noundef 1, ptr noundef nonnull %343, i32 noundef %368) #16
  %423 = load ptr, ptr %420, align 4
  %424 = icmp eq ptr %423, null
  br i1 %424, label %425, label %419

425:                                              ; preds = %419, %411
  call void @up_read(ptr noundef nonnull @snd_ctl_layer_rwsem) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #16
  call void @up_read(ptr noundef %342) #16
  br label %427

426:                                              ; preds = %409
  tail call void @up_write(ptr noundef %342) #16
  br label %427

427:                                              ; preds = %426, %425
  %428 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %11, i32 712, i32 -1090519040) #20, !srcloc !19
  %429 = extractvalue { i32, i32 } %428, 0
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %431, label %440

431:                                              ; preds = %427
  %432 = tail call ptr @llvm.thread.pointer() #16
  %433 = getelementptr inbounds %struct.thread_info, ptr %432, i32 0, i32 3
  %434 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %433) #21, !srcloc !20
  %435 = and i32 %434, -13
  %436 = or i32 %435, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %436) #16, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !22
  %437 = call i32 @arm_copy_to_user(ptr noundef %11, ptr noundef %336, i32 noundef 712) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %434) #16, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !22
  %438 = icmp eq i32 %437, 0
  %439 = select i1 %438, i32 0, i32 -14
  br label %440

440:                                              ; preds = %431, %427, %408, %385, %345
  %441 = phi i32 [ %399, %408 ], [ -1, %385 ], [ -2, %345 ], [ -14, %427 ], [ %439, %431 ]
  call void @kfree(ptr noundef %336) #16
  br label %675

442:                                              ; preds = %17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %6, i8 0, i32 64, i1 false) #16, !annotation !14
  %443 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %11, i32 64, i32 -1090519040) #20, !srcloc !28
  %444 = extractvalue { i32, i32 } %443, 0
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %446, label %454, !prof !18

446:                                              ; preds = %442
  %447 = tail call ptr @llvm.thread.pointer() #16
  %448 = getelementptr inbounds %struct.thread_info, ptr %447, i32 0, i32 3
  %449 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %448) #21, !srcloc !20
  %450 = and i32 %449, -13
  %451 = or i32 %450, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %451) #16, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !22
  %452 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %11, i32 noundef 64) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %449) #16, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !22
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %458, label %454, !prof !18

454:                                              ; preds = %446, %442
  %455 = phi i32 [ %452, %446 ], [ 64, %442 ]
  %456 = sub i32 64, %455
  %457 = getelementptr i8, ptr %6, i32 %456
  call void @llvm.memset.p0.i32(ptr align 1 %457, i8 0, i32 %455, i1 false) #16
  br label %491

458:                                              ; preds = %446
  %459 = getelementptr inbounds %struct.snd_card, ptr %15, i32 0, i32 14
  call void @down_write(ptr noundef %459) #16
  %460 = call ptr @snd_ctl_find_id(ptr noundef nonnull %15, ptr noundef nonnull %6) #16
  %461 = icmp eq ptr %460, null
  br i1 %461, label %489, label %462

462:                                              ; preds = %458
  %463 = load i32, ptr %6, align 4
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %473, label %465

465:                                              ; preds = %462
  %466 = getelementptr inbounds %struct.snd_kcontrol, ptr %460, i32 0, i32 1
  %467 = load i32, ptr %466, align 4
  %468 = sub i32 %463, %467
  %469 = getelementptr inbounds %struct.snd_kcontrol, ptr %460, i32 0, i32 2
  %470 = load i32, ptr %469, align 4
  %471 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %468, i32 %470) #16, !srcloc !12
  %472 = and i32 %471, %468
  br label %483

473:                                              ; preds = %462
  %474 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %6, i32 0, i32 5
  %475 = load i32, ptr %474, align 4
  %476 = getelementptr inbounds %struct.snd_kcontrol, ptr %460, i32 0, i32 1, i32 5
  %477 = load i32, ptr %476, align 4
  %478 = sub i32 %475, %477
  %479 = getelementptr inbounds %struct.snd_kcontrol, ptr %460, i32 0, i32 2
  %480 = load i32, ptr %479, align 4
  %481 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %478, i32 %480) #16, !srcloc !12
  %482 = and i32 %481, %478
  br label %483

483:                                              ; preds = %473, %465
  %484 = phi i32 [ %472, %465 ], [ %482, %473 ]
  %485 = getelementptr %struct.snd_kcontrol, ptr %460, i32 0, i32 10, i32 %484
  %486 = load ptr, ptr %485, align 4
  %487 = icmp eq ptr %486, null
  br i1 %487, label %488, label %489

488:                                              ; preds = %483
  store ptr %13, ptr %485, align 4
  br label %489

489:                                              ; preds = %488, %483, %458
  %490 = phi i32 [ 0, %488 ], [ -2, %458 ], [ -16, %483 ]
  call void @up_write(ptr noundef %459) #16
  br label %491

491:                                              ; preds = %489, %454
  %492 = phi i32 [ %490, %489 ], [ -14, %454 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #16
  br label %675

493:                                              ; preds = %17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %5, i8 0, i32 64, i1 false) #16, !annotation !14
  %494 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %11, i32 64, i32 -1090519040) #20, !srcloc !28
  %495 = extractvalue { i32, i32 } %494, 0
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %497, label %505, !prof !18

497:                                              ; preds = %493
  %498 = tail call ptr @llvm.thread.pointer() #16
  %499 = getelementptr inbounds %struct.thread_info, ptr %498, i32 0, i32 3
  %500 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %499) #21, !srcloc !20
  %501 = and i32 %500, -13
  %502 = or i32 %501, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %502) #16, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !22
  %503 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %11, i32 noundef 64) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %500) #16, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !22
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %509, label %505, !prof !18

505:                                              ; preds = %497, %493
  %506 = phi i32 [ %503, %497 ], [ 64, %493 ]
  %507 = sub i32 64, %506
  %508 = getelementptr i8, ptr %5, i32 %507
  call void @llvm.memset.p0.i32(ptr align 1 %508, i8 0, i32 %506, i1 false) #16
  br label %544

509:                                              ; preds = %497
  %510 = getelementptr inbounds %struct.snd_card, ptr %15, i32 0, i32 14
  call void @down_write(ptr noundef %510) #16
  %511 = call ptr @snd_ctl_find_id(ptr noundef nonnull %15, ptr noundef nonnull %5) #16
  %512 = icmp eq ptr %511, null
  br i1 %512, label %542, label %513

513:                                              ; preds = %509
  %514 = load i32, ptr %5, align 4
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %524, label %516

516:                                              ; preds = %513
  %517 = getelementptr inbounds %struct.snd_kcontrol, ptr %511, i32 0, i32 1
  %518 = load i32, ptr %517, align 4
  %519 = sub i32 %514, %518
  %520 = getelementptr inbounds %struct.snd_kcontrol, ptr %511, i32 0, i32 2
  %521 = load i32, ptr %520, align 4
  %522 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %519, i32 %521) #16, !srcloc !12
  %523 = and i32 %522, %519
  br label %534

524:                                              ; preds = %513
  %525 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %5, i32 0, i32 5
  %526 = load i32, ptr %525, align 4
  %527 = getelementptr inbounds %struct.snd_kcontrol, ptr %511, i32 0, i32 1, i32 5
  %528 = load i32, ptr %527, align 4
  %529 = sub i32 %526, %528
  %530 = getelementptr inbounds %struct.snd_kcontrol, ptr %511, i32 0, i32 2
  %531 = load i32, ptr %530, align 4
  %532 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %529, i32 %531) #16, !srcloc !12
  %533 = and i32 %532, %529
  br label %534

534:                                              ; preds = %524, %516
  %535 = phi i32 [ %523, %516 ], [ %533, %524 ]
  %536 = getelementptr %struct.snd_kcontrol, ptr %511, i32 0, i32 10, i32 %535
  %537 = load ptr, ptr %536, align 4
  %538 = icmp eq ptr %537, null
  br i1 %538, label %542, label %539

539:                                              ; preds = %534
  %540 = icmp eq ptr %537, %13
  br i1 %540, label %541, label %542

541:                                              ; preds = %539
  store ptr null, ptr %536, align 4
  br label %542

542:                                              ; preds = %541, %539, %534, %509
  %543 = phi i32 [ 0, %541 ], [ -2, %509 ], [ -22, %534 ], [ -1, %539 ]
  call void @up_write(ptr noundef %510) #16
  br label %544

544:                                              ; preds = %542, %505
  %545 = phi i32 [ %543, %542 ], [ -14, %505 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #16
  br label %675

546:                                              ; preds = %17
  %547 = tail call fastcc i32 @snd_ctl_elem_add_user(ptr noundef %13, ptr noundef %11, i32 noundef 0)
  br label %675

548:                                              ; preds = %17
  %549 = tail call fastcc i32 @snd_ctl_elem_add_user(ptr noundef %13, ptr noundef %11, i32 noundef 1)
  br label %675

550:                                              ; preds = %17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %4, i8 0, i32 64, i1 false) #16, !annotation !14
  %551 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %11, i32 64, i32 -1090519040) #20, !srcloc !28
  %552 = extractvalue { i32, i32 } %551, 0
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %554, label %562, !prof !18

554:                                              ; preds = %550
  %555 = tail call ptr @llvm.thread.pointer() #16
  %556 = getelementptr inbounds %struct.thread_info, ptr %555, i32 0, i32 3
  %557 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %556) #21, !srcloc !20
  %558 = and i32 %557, -13
  %559 = or i32 %558, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %559) #16, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !22
  %560 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %11, i32 noundef 64) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %557) #16, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !22
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %566, label %562, !prof !18

562:                                              ; preds = %554, %550
  %563 = phi i32 [ %560, %554 ], [ 64, %550 ]
  %564 = sub i32 64, %563
  %565 = getelementptr i8, ptr %4, i32 %564
  call void @llvm.memset.p0.i32(ptr align 1 %565, i8 0, i32 %563, i1 false) #16
  br label %594

566:                                              ; preds = %554
  %567 = load ptr, ptr %14, align 4
  %568 = getelementptr inbounds %struct.snd_card, ptr %567, i32 0, i32 14
  call void @down_write(ptr noundef %568) #16
  %569 = call ptr @snd_ctl_find_id(ptr noundef %567, ptr noundef nonnull %4) #16
  %570 = icmp eq ptr %569, null
  br i1 %570, label %592, label %571

571:                                              ; preds = %566
  %572 = getelementptr inbounds %struct.snd_kcontrol, ptr %569, i32 1, i32 0, i32 1
  %573 = load i32, ptr %572, align 4
  %574 = and i32 %573, 536870912
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %592, label %576

576:                                              ; preds = %571
  %577 = getelementptr inbounds %struct.snd_kcontrol, ptr %569, i32 0, i32 2
  %578 = load i32, ptr %577, align 4
  %579 = icmp eq i32 %578, 0
  br i1 %579, label %590, label %583

580:                                              ; preds = %583
  %581 = add nuw i32 %584, 1
  %582 = icmp eq i32 %581, %578
  br i1 %582, label %590, label %583

583:                                              ; preds = %580, %576
  %584 = phi i32 [ %581, %580 ], [ 0, %576 ]
  %585 = getelementptr %struct.snd_kcontrol, ptr %569, i32 0, i32 10, i32 %584
  %586 = load ptr, ptr %585, align 4
  %587 = icmp eq ptr %586, null
  %588 = icmp eq ptr %586, %13
  %589 = or i1 %587, %588
  br i1 %589, label %580, label %592

590:                                              ; preds = %580, %576
  %591 = call i32 @snd_ctl_remove(ptr noundef %567, ptr noundef nonnull %569) #16
  br label %592

592:                                              ; preds = %590, %583, %571, %566
  %593 = phi i32 [ %591, %590 ], [ -2, %566 ], [ -22, %571 ], [ -16, %583 ]
  call void @up_write(ptr noundef %568) #16
  br label %594

594:                                              ; preds = %592, %562
  %595 = phi i32 [ %593, %592 ], [ -14, %562 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #16
  br label %675

596:                                              ; preds = %17
  %597 = tail call ptr @llvm.thread.pointer() #16
  %598 = getelementptr inbounds %struct.thread_info, ptr %597, i32 0, i32 3
  %599 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %598) #21, !srcloc !20
  %600 = and i32 %599, -13
  %601 = or i32 %600, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %601) #16, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !22
  %602 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %11, i32 -1090519041) #16, !srcloc !29
  %603 = extractvalue { i32, i32 } %602, 0
  %604 = extractvalue { i32, i32 } %602, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %599) #16, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !22
  %605 = icmp eq i32 %603, 0
  br i1 %605, label %606, label %675

606:                                              ; preds = %596
  %607 = icmp slt i32 %604, 0
  br i1 %607, label %608, label %617

608:                                              ; preds = %606
  %609 = getelementptr inbounds %struct.snd_ctl_file, ptr %13, i32 0, i32 7
  %610 = load i32, ptr %609, align 4
  %611 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %598) #21, !srcloc !20
  %612 = and i32 %611, -13
  %613 = or i32 %612, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %613) #16, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !22
  %614 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %11, i32 %610, i32 -1090519041) #16, !srcloc !30
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %611) #16, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !22
  %615 = icmp eq i32 %614, 0
  %616 = select i1 %615, i32 0, i32 -14
  br label %675

617:                                              ; preds = %606
  %618 = icmp eq i32 %604, 0
  %619 = getelementptr inbounds %struct.snd_ctl_file, ptr %13, i32 0, i32 7
  br i1 %618, label %621, label %620

620:                                              ; preds = %617
  store i32 1, ptr %619, align 4
  br label %675

621:                                              ; preds = %617
  %622 = load i32, ptr %619, align 4
  %623 = icmp eq i32 %622, 0
  br i1 %623, label %675, label %624

624:                                              ; preds = %621
  %625 = getelementptr inbounds %struct.snd_ctl_file, ptr %13, i32 0, i32 5
  %626 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %625) #16
  %627 = getelementptr inbounds %struct.snd_ctl_file, ptr %13, i32 0, i32 8
  %628 = load volatile ptr, ptr %627, align 4
  %629 = icmp eq ptr %628, %627
  br i1 %629, label %638, label %630

630:                                              ; preds = %630, %624
  %631 = phi ptr [ %636, %630 ], [ %628, %624 ]
  %632 = getelementptr inbounds %struct.list_head, ptr %631, i32 0, i32 1
  %633 = load ptr, ptr %632, align 4
  %634 = load ptr, ptr %631, align 4
  %635 = getelementptr inbounds %struct.list_head, ptr %634, i32 0, i32 1
  store ptr %633, ptr %635, align 4
  store volatile ptr %634, ptr %633, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %631, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %632, align 4
  tail call void @kfree(ptr noundef %631) #16
  %636 = load volatile ptr, ptr %627, align 4
  %637 = icmp eq ptr %636, %627
  br i1 %637, label %638, label %630

638:                                              ; preds = %630, %624
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %625, i32 noundef %626) #16
  store i32 0, ptr %619, align 4
  br label %675

639:                                              ; preds = %17
  %640 = getelementptr inbounds %struct.snd_card, ptr %15, i32 0, i32 14
  tail call void @down_read(ptr noundef %640) #16
  %641 = tail call fastcc i32 @snd_ctl_tlv_ioctl(ptr noundef %13, ptr noundef %11, i32 noundef 0)
  %642 = load ptr, ptr %14, align 4
  %643 = getelementptr inbounds %struct.snd_card, ptr %642, i32 0, i32 14
  tail call void @up_read(ptr noundef %643) #16
  br label %675

644:                                              ; preds = %17
  %645 = getelementptr inbounds %struct.snd_card, ptr %15, i32 0, i32 14
  tail call void @down_write(ptr noundef %645) #16
  %646 = tail call fastcc i32 @snd_ctl_tlv_ioctl(ptr noundef %13, ptr noundef %11, i32 noundef 1)
  %647 = load ptr, ptr %14, align 4
  %648 = getelementptr inbounds %struct.snd_card, ptr %647, i32 0, i32 14
  tail call void @up_write(ptr noundef %648) #16
  br label %675

649:                                              ; preds = %17
  %650 = getelementptr inbounds %struct.snd_card, ptr %15, i32 0, i32 14
  tail call void @down_write(ptr noundef %650) #16
  %651 = tail call fastcc i32 @snd_ctl_tlv_ioctl(ptr noundef %13, ptr noundef %11, i32 noundef -1)
  %652 = load ptr, ptr %14, align 4
  %653 = getelementptr inbounds %struct.snd_card, ptr %652, i32 0, i32 14
  tail call void @up_write(ptr noundef %653) #16
  br label %675

654:                                              ; preds = %17
  %655 = tail call ptr @llvm.thread.pointer() #16
  %656 = getelementptr inbounds %struct.thread_info, ptr %655, i32 0, i32 3
  %657 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %656) #21, !srcloc !20
  %658 = and i32 %657, -13
  %659 = or i32 %658, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %659) #16, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !22
  %660 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %11, i32 0, i32 -1090519041) #16, !srcloc !31
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %657) #16, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !22
  %661 = icmp eq i32 %660, 0
  %662 = select i1 %661, i32 0, i32 -14
  br label %675

663:                                              ; preds = %17
  tail call void @down_read(ptr noundef nonnull @snd_ioctl_rwsem) #16
  br label %664

664:                                              ; preds = %668, %663
  %665 = phi ptr [ @snd_control_ioctls, %663 ], [ %666, %668 ]
  %666 = load ptr, ptr %665, align 4
  %667 = icmp eq ptr %666, @snd_control_ioctls
  br i1 %667, label %674, label %668

668:                                              ; preds = %664
  %669 = getelementptr inbounds %struct.snd_kctl_ioctl, ptr %666, i32 0, i32 1
  %670 = load ptr, ptr %669, align 4
  %671 = tail call i32 %670(ptr noundef nonnull %15, ptr noundef %13, i32 noundef %1, i32 noundef %2) #16
  %672 = icmp eq i32 %671, -515
  br i1 %672, label %664, label %673

673:                                              ; preds = %668
  tail call void @up_read(ptr noundef nonnull @snd_ioctl_rwsem) #16
  br label %675

674:                                              ; preds = %664
  tail call void @up_read(ptr noundef nonnull @snd_ioctl_rwsem) #16
  br label %675

675:                                              ; preds = %674, %673, %654, %649, %644, %639, %638, %621, %620, %608, %596, %594, %548, %546, %544, %491, %440, %338, %333, %259, %254, %154, %63, %27, %18, %17, %3
  %676 = phi i32 [ %671, %673 ], [ -25, %674 ], [ %662, %654 ], [ %651, %649 ], [ %646, %644 ], [ %641, %639 ], [ %595, %594 ], [ %549, %548 ], [ %547, %546 ], [ %545, %544 ], [ %492, %491 ], [ %255, %254 ], [ %155, %154 ], [ %26, %18 ], [ -6, %3 ], [ -92, %17 ], [ -12, %27 ], [ %64, %63 ], [ %260, %259 ], [ %334, %333 ], [ %339, %338 ], [ %441, %440 ], [ 0, %620 ], [ -14, %596 ], [ %616, %608 ], [ 0, %621 ], [ 0, %638 ]
  ret i32 %676
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_ctl_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @stream_open(ptr noundef %0, ptr noundef %1) #16
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %60, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 12
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 1048575
  %9 = tail call ptr @snd_lookup_minor_data(i32 noundef %8, i32 noundef 0) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %60, label %11

11:                                               ; preds = %5
  %12 = tail call i32 @snd_card_file_add(ptr noundef nonnull %9, ptr noundef %1) #16
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %57, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = tail call zeroext i1 @try_module_get(ptr noundef %16) #16
  br i1 %17, label %18, label %54

18:                                               ; preds = %14
  %19 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %20 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 56) #17
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load ptr, ptr %15, align 4
  tail call void @module_put(ptr noundef %23) #16
  br label %54

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.snd_ctl_file, ptr %20, i32 0, i32 8
  store volatile ptr %25, ptr %25, align 8
  %26 = getelementptr inbounds %struct.snd_ctl_file, ptr %20, i32 0, i32 8, i32 1
  store ptr %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.snd_ctl_file, ptr %20, i32 0, i32 4
  tail call void @__init_waitqueue_head(ptr noundef %27, ptr noundef nonnull @.str.12, ptr noundef nonnull @snd_ctl_open.__key) #16
  %28 = getelementptr inbounds %struct.snd_ctl_file, ptr %20, i32 0, i32 5
  store i32 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.snd_ctl_file, ptr %20, i32 0, i32 1
  store ptr %9, ptr %29, align 8
  %30 = getelementptr i8, ptr %20, i32 16
  store i64 -1, ptr %30, align 8
  %31 = tail call ptr @llvm.thread.pointer() #16
  %32 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 62
  %33 = load ptr, ptr %32, align 64
  %34 = icmp eq ptr %33, null
  br i1 %34, label %45, label %35

35:                                               ; preds = %24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %33) #16, !srcloc !25
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %33, ptr nonnull %33, i32 1, ptr nonnull elementtype(i32) %33) #16, !srcloc !32
  %37 = extractvalue { i32, i32, i32 } %36, 0
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39, !prof !13

39:                                               ; preds = %35
  %40 = add i32 %37, 1
  %41 = or i32 %40, %37
  %42 = icmp sgt i32 %41, -1
  br i1 %42, label %45, label %43, !prof !18

43:                                               ; preds = %39, %35
  %44 = phi i32 [ 2, %35 ], [ 1, %39 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %33, i32 noundef %44) #16
  br label %45

45:                                               ; preds = %43, %39, %24
  %46 = getelementptr inbounds %struct.snd_ctl_file, ptr %20, i32 0, i32 2
  store ptr %33, ptr %46, align 4
  %47 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %20, ptr %47, align 8
  %48 = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 15
  %49 = tail call i32 @_raw_write_lock_irqsave(ptr noundef %48) #16
  %50 = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 19
  %51 = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 19, i32 1
  %52 = load ptr, ptr %51, align 4
  store ptr %20, ptr %51, align 4
  store ptr %50, ptr %20, align 8
  %53 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %52, ptr %53, align 4
  store volatile ptr %20, ptr %52, align 4
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %48, i32 noundef %49) #16
  br label %57

54:                                               ; preds = %22, %14
  %55 = phi i32 [ -12, %22 ], [ -14, %14 ]
  %56 = tail call i32 @snd_card_file_remove(ptr noundef nonnull %9, ptr noundef %1) #16
  br label %57

57:                                               ; preds = %54, %45, %11
  %58 = phi i32 [ 0, %45 ], [ -19, %11 ], [ %55, %54 ]
  %59 = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 28
  tail call void @put_device(ptr noundef %59) #16
  br label %60

60:                                               ; preds = %57, %5, %2
  %61 = phi i32 [ %3, %2 ], [ -19, %5 ], [ %58, %57 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_ctl_release(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  store ptr null, ptr %3, align 8
  %5 = getelementptr inbounds %struct.snd_ctl_file, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 15
  %8 = tail call i32 @_raw_write_lock_irqsave(ptr noundef %7) #16
  %9 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %10, ptr %12, align 4
  store volatile ptr %11, ptr %10, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %9, align 4
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #16
  %13 = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 14
  tail call void @down_write(ptr noundef %13) #16
  %14 = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 18
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %37, label %20

17:                                               ; preds = %33, %20
  %18 = load ptr, ptr %21, align 4
  %19 = icmp eq ptr %18, %14
  br i1 %19, label %37, label %20

20:                                               ; preds = %17, %2
  %21 = phi ptr [ %18, %17 ], [ %15, %2 ]
  %22 = getelementptr inbounds %struct.snd_kcontrol, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %17, label %25

25:                                               ; preds = %33, %20
  %26 = phi i32 [ %34, %33 ], [ %23, %20 ]
  %27 = phi i32 [ %35, %33 ], [ 0, %20 ]
  %28 = getelementptr %struct.snd_kcontrol, ptr %21, i32 0, i32 10, i32 %27
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %4
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  store ptr null, ptr %28, align 4
  %32 = load i32, ptr %22, align 4
  br label %33

33:                                               ; preds = %31, %25
  %34 = phi i32 [ %26, %25 ], [ %32, %31 ]
  %35 = add nuw i32 %27, 1
  %36 = icmp ult i32 %35, %34
  br i1 %36, label %25, label %17

37:                                               ; preds = %17, %2
  tail call void @up_write(ptr noundef %13) #16
  %38 = getelementptr inbounds %struct.snd_ctl_file, ptr %4, i32 0, i32 5
  %39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %38) #16
  %40 = getelementptr inbounds %struct.snd_ctl_file, ptr %4, i32 0, i32 8
  %41 = load volatile ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, %40
  br i1 %42, label %51, label %43

43:                                               ; preds = %43, %37
  %44 = phi ptr [ %49, %43 ], [ %41, %37 ]
  %45 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = load ptr, ptr %44, align 4
  %48 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  store ptr %46, ptr %48, align 4
  store volatile ptr %47, ptr %46, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %44, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %45, align 4
  tail call void @kfree(ptr noundef %44) #16
  %49 = load volatile ptr, ptr %40, align 4
  %50 = icmp eq ptr %49, %40
  br i1 %50, label %51, label %43

51:                                               ; preds = %43, %37
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %38, i32 noundef %39) #16
  %52 = getelementptr inbounds %struct.snd_ctl_file, ptr %4, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  tail call void @put_pid(ptr noundef %53) #16
  tail call void @kfree(ptr noundef %4) #16
  %54 = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 8
  %55 = load ptr, ptr %54, align 4
  tail call void @module_put(ptr noundef %55) #16
  %56 = tail call i32 @snd_card_file_remove(ptr noundef %6, ptr noundef %1) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_ctl_fasync(i32 noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.snd_ctl_file, ptr %5, i32 0, i32 6
  %7 = tail call i32 @fasync_helper(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %6) #16
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_ctl_elem_add_user(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.snd_ctl_elem_info, align 8
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(272) %4, i8 0, i32 272, i1 false), !annotation !14
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 272, i32 -1090519040) #20
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16, !prof !18

8:                                                ; preds = %3
  %9 = tail call ptr @llvm.thread.pointer() #16
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %10) #21, !srcloc !20
  %12 = and i32 %11, -13
  %13 = or i32 %12, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #16, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !22
  %14 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %1, i32 noundef 272) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #16, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !22
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16, !prof !18

16:                                               ; preds = %8, %3
  %17 = phi i32 [ %14, %8 ], [ 272, %3 ]
  %18 = sub i32 272, %17
  %19 = getelementptr i8, ptr %4, i32 %18
  call void @llvm.memset.p0.i32(ptr align 1 %19, i8 0, i32 %17, i1 false) #16
  br label %232

20:                                               ; preds = %8
  %21 = getelementptr inbounds %struct.snd_ctl_file, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %4, i32 0, i32 4
  %24 = load i8, ptr %23, align 8
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %232, label %26

26:                                               ; preds = %20
  %27 = call i32 @strnlen(ptr noundef %23, i32 noundef 44) #16
  %28 = icmp ugt i32 %27, 43
  br i1 %28, label %232, label %29

29:                                               ; preds = %26
  %30 = icmp eq i32 %2, 0
  br i1 %30, label %57, label %31

31:                                               ; preds = %29
  store i32 0, ptr %4, align 8
  %32 = getelementptr inbounds %struct.snd_card, ptr %22, i32 0, i32 14
  call void @down_write(ptr noundef %32) #16
  %33 = call ptr @snd_ctl_find_id(ptr noundef %22, ptr noundef nonnull %4) #16
  %34 = icmp eq ptr %33, null
  br i1 %34, label %193, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.snd_kcontrol, ptr %33, i32 1, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 536870912
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %193, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.snd_kcontrol, ptr %33, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %54, label %47

44:                                               ; preds = %47
  %45 = add nuw i32 %48, 1
  %46 = icmp eq i32 %45, %42
  br i1 %46, label %54, label %47

47:                                               ; preds = %44, %40
  %48 = phi i32 [ %45, %44 ], [ 0, %40 ]
  %49 = getelementptr %struct.snd_kcontrol, ptr %33, i32 0, i32 10, i32 %48
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  %52 = icmp eq ptr %50, %0
  %53 = or i1 %51, %52
  br i1 %53, label %44, label %193

54:                                               ; preds = %44, %40
  %55 = call i32 @snd_ctl_remove(ptr noundef %22, ptr noundef nonnull %33) #16
  call void @up_write(ptr noundef %32) #16
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %196

57:                                               ; preds = %54, %29
  %58 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %4, i32 0, i32 4
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %60, i32 1, i32 %59
  %62 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %4, i32 0, i32 2
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  %65 = and i32 %63, 291
  %66 = select i1 %64, i32 3, i32 %65
  %67 = shl nuw i32 %66, 23
  %68 = and i32 %67, 268435456
  %69 = or i32 %66, %68
  %70 = or i32 %69, 536870912
  %71 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %4, i32 0, i32 1
  %72 = load i32, ptr %71, align 8
  %73 = add i32 %72, -7
  %74 = icmp ult i32 %73, -6
  br i1 %74, label %232, label %75

75:                                               ; preds = %57
  %76 = icmp eq i32 %72, 3
  br i1 %76, label %77, label %81

77:                                               ; preds = %75
  %78 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %4, i32 0, i32 5
  %79 = load i32, ptr %78, align 8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %232, label %81

81:                                               ; preds = %77, %75
  %82 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %4, i32 0, i32 3
  %83 = load i32, ptr %82, align 8
  %84 = getelementptr [7 x i32], ptr @snd_ctl_check_elem_info.max_value_counts, i32 0, i32 %72
  %85 = load i32, ptr %84, align 4
  %86 = add i32 %83, -1
  %87 = icmp ult i32 %86, %85
  br i1 %87, label %88, label %232

88:                                               ; preds = %81
  %89 = getelementptr [7 x i32], ptr @value_sizes, i32 0, i32 %72
  %90 = load i32, ptr %89, align 4
  %91 = mul i32 %90, %83
  %92 = mul i32 %91, %61
  %93 = add i32 %92, 296
  %94 = getelementptr inbounds %struct.snd_card, ptr %22, i32 0, i32 14
  call void @down_write(ptr noundef %94) #16
  %95 = getelementptr inbounds %struct.snd_card, ptr %22, i32 0, i32 17
  %96 = load i32, ptr %95, align 4
  %97 = add i32 %93, %96
  %98 = load i32, ptr @max_user_ctl_alloc_size, align 4
  %99 = icmp sgt i32 %97, %98
  br i1 %99, label %193, label %100

100:                                              ; preds = %88
  %101 = add i32 %61, -1029
  %102 = icmp ult i32 %101, -1028
  br i1 %102, label %193, label %103

103:                                              ; preds = %100
  %104 = shl nuw nsw i32 %61, 3
  %105 = add nuw nsw i32 %104, 104
  %106 = call noalias align 64 ptr @__kmalloc(i32 noundef %105, i32 noundef 3520) #19
  %107 = icmp eq ptr %106, null
  br i1 %107, label %193, label %108

108:                                              ; preds = %108, %103
  %109 = phi i32 [ %112, %108 ], [ 0, %103 ]
  %110 = getelementptr %struct.snd_kcontrol, ptr %106, i32 0, i32 10, i32 %109, i32 1
  store i32 %70, ptr %110, align 4
  %111 = getelementptr %struct.snd_kcontrol, ptr %106, i32 0, i32 10, i32 %109
  store ptr %0, ptr %111, align 8
  %112 = add nuw i32 %109, 1
  %113 = icmp eq i32 %112, %61
  br i1 %113, label %114, label %108

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.snd_kcontrol, ptr %106, i32 0, i32 2
  store i32 %61, ptr %115, align 8
  %116 = getelementptr inbounds %struct.snd_kcontrol, ptr %106, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(64) %116, ptr noundef nonnull align 8 dereferenceable(64) %4, i32 64, i1 false) #16
  %117 = call noalias align 64 ptr @__kmalloc(i32 noundef %93, i32 noundef 3520) #19
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  call void @kfree(ptr noundef nonnull %106) #16
  br label %193

120:                                              ; preds = %114
  %121 = getelementptr inbounds %struct.snd_kcontrol, ptr %106, i32 0, i32 8
  store ptr %117, ptr %121, align 32
  %122 = getelementptr inbounds %struct.snd_kcontrol, ptr %106, i32 0, i32 9
  store ptr @snd_ctl_elem_user_free, ptr %122, align 4
  %123 = load i32, ptr %95, align 4
  %124 = add i32 %123, %93
  store i32 %124, ptr %95, align 4
  %125 = getelementptr inbounds %struct.user_element, ptr %117, i32 0, i32 1
  store ptr %22, ptr %125, align 16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 64 dereferenceable(272) %117, ptr noundef nonnull align 8 dereferenceable(272) %4, i32 272, i1 false) #16
  %126 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %117, i32 0, i32 2
  store i32 0, ptr %126, align 4
  %127 = getelementptr i8, ptr %117, i32 296
  %128 = getelementptr inbounds %struct.user_element, ptr %117, i32 0, i32 2
  store ptr %127, ptr %128, align 4
  %129 = getelementptr inbounds %struct.user_element, ptr %117, i32 0, i32 3
  store i32 %91, ptr %129, align 8
  %130 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %117, i32 0, i32 1
  %131 = load i32, ptr %130, align 64
  %132 = icmp eq i32 %131, 3
  br i1 %132, label %133, label %141

133:                                              ; preds = %120
  %134 = call fastcc i32 @snd_ctl_elem_init_enum_names(ptr noundef nonnull %117) #16
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %133
  %137 = load ptr, ptr %122, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %140, label %139

139:                                              ; preds = %136
  call void %137(ptr noundef nonnull %106) #16
  br label %140

140:                                              ; preds = %139, %136
  call void @kfree(ptr noundef nonnull %106) #16
  br label %193

141:                                              ; preds = %133, %120
  %142 = load i32, ptr %71, align 8
  %143 = icmp eq i32 %142, 3
  %144 = select i1 %143, ptr @snd_ctl_elem_user_enum_info, ptr @snd_ctl_elem_user_info
  %145 = getelementptr inbounds %struct.snd_kcontrol, ptr %106, i32 0, i32 3
  store ptr %144, ptr %145, align 4
  %146 = and i32 %66, 1
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %150, label %148

148:                                              ; preds = %141
  %149 = getelementptr inbounds %struct.snd_kcontrol, ptr %106, i32 0, i32 4
  store ptr @snd_ctl_elem_user_get, ptr %149, align 16
  br label %150

150:                                              ; preds = %148, %141
  %151 = and i32 %66, 2
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %155, label %153

153:                                              ; preds = %150
  %154 = getelementptr inbounds %struct.snd_kcontrol, ptr %106, i32 0, i32 5
  store ptr @snd_ctl_elem_user_put, ptr %154, align 4
  br label %155

155:                                              ; preds = %153, %150
  %156 = and i32 %66, 32
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %155
  %159 = getelementptr inbounds %struct.snd_kcontrol, ptr %106, i32 0, i32 6
  store ptr @snd_ctl_elem_user_tlv, ptr %159, align 8
  br label %160

160:                                              ; preds = %158, %155
  %161 = call fastcc i32 @__snd_ctl_add_replace(ptr noundef %22, ptr noundef nonnull %106, i32 noundef 0) #16
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %160
  %164 = load ptr, ptr %122, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %167, label %166

166:                                              ; preds = %163
  call void %164(ptr noundef nonnull %106) #16
  br label %167

167:                                              ; preds = %166, %163
  call void @kfree(ptr noundef nonnull %106) #16
  br label %193

168:                                              ; preds = %160
  %169 = load i32, ptr %4, align 8
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %177, label %171

171:                                              ; preds = %168
  %172 = load i32, ptr %116, align 8
  %173 = sub i32 %169, %172
  %174 = load i32, ptr %115, align 8
  %175 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %173, i32 %174) #16, !srcloc !12
  %176 = and i32 %175, %173
  br label %186

177:                                              ; preds = %168
  %178 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %4, i32 0, i32 5
  %179 = load i32, ptr %178, align 4
  %180 = getelementptr inbounds %struct.snd_kcontrol, ptr %106, i32 0, i32 1, i32 5
  %181 = load i32, ptr %180, align 4
  %182 = sub i32 %179, %181
  %183 = load i32, ptr %115, align 8
  %184 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %182, i32 %183) #16, !srcloc !12
  %185 = and i32 %184, %182
  br label %186

186:                                              ; preds = %177, %171
  %187 = phi i32 [ %176, %171 ], [ %185, %177 ]
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef align 8 dereferenceable(64) %116, i32 64, i1 false) #16
  %188 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %4, i32 0, i32 5
  %189 = load i32, ptr %188, align 4
  %190 = add i32 %189, %187
  store i32 %190, ptr %188, align 4
  %191 = load i32, ptr %4, align 8
  %192 = add i32 %191, %187
  store i32 %192, ptr %4, align 8
  br label %193

193:                                              ; preds = %186, %167, %140, %119, %103, %100, %88, %47, %35, %31
  %194 = phi ptr [ %32, %31 ], [ %32, %35 ], [ %94, %103 ], [ %94, %100 ], [ %94, %167 ], [ %94, %140 ], [ %94, %88 ], [ %94, %186 ], [ %94, %119 ], [ %32, %47 ]
  %195 = phi i32 [ -2, %31 ], [ -22, %35 ], [ -12, %103 ], [ -22, %100 ], [ %161, %167 ], [ %134, %140 ], [ -12, %88 ], [ 0, %186 ], [ -12, %119 ], [ -16, %47 ]
  call void @up_write(ptr noundef %194) #16
  br label %196

196:                                              ; preds = %193, %54
  %197 = phi i32 [ %55, %54 ], [ %195, %193 ]
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %232, label %199

199:                                              ; preds = %196
  %200 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %10) #21, !srcloc !20
  %201 = and i32 %200, -13
  %202 = or i32 %201, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %202) #16, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !22
  %203 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %4, i32 noundef 272) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %200) #16, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !22
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %232, label %205

205:                                              ; preds = %199
  %206 = load ptr, ptr %21, align 4
  %207 = getelementptr inbounds %struct.snd_card, ptr %206, i32 0, i32 14
  call void @down_write(ptr noundef %207) #16
  %208 = call ptr @snd_ctl_find_id(ptr noundef %206, ptr noundef nonnull %4) #16
  %209 = icmp eq ptr %208, null
  br i1 %209, label %231, label %210

210:                                              ; preds = %205
  %211 = getelementptr inbounds %struct.snd_kcontrol, ptr %208, i32 1, i32 0, i32 1
  %212 = load i32, ptr %211, align 4
  %213 = and i32 %212, 536870912
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %231, label %215

215:                                              ; preds = %210
  %216 = getelementptr inbounds %struct.snd_kcontrol, ptr %208, i32 0, i32 2
  %217 = load i32, ptr %216, align 4
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %229, label %222

219:                                              ; preds = %222
  %220 = add nuw i32 %223, 1
  %221 = icmp eq i32 %220, %217
  br i1 %221, label %229, label %222

222:                                              ; preds = %219, %215
  %223 = phi i32 [ %220, %219 ], [ 0, %215 ]
  %224 = getelementptr %struct.snd_kcontrol, ptr %208, i32 0, i32 10, i32 %223
  %225 = load ptr, ptr %224, align 4
  %226 = icmp eq ptr %225, null
  %227 = icmp eq ptr %225, %0
  %228 = or i1 %226, %227
  br i1 %228, label %219, label %231

229:                                              ; preds = %219, %215
  %230 = call i32 @snd_ctl_remove(ptr noundef %206, ptr noundef nonnull %208) #16
  br label %231

231:                                              ; preds = %229, %222, %210, %205
  call void @up_write(ptr noundef %207) #16
  br label %232

232:                                              ; preds = %231, %199, %196, %81, %77, %57, %26, %20, %16
  %233 = phi i32 [ -14, %231 ], [ %197, %196 ], [ 0, %199 ], [ -14, %16 ], [ -22, %20 ], [ -22, %26 ], [ -22, %57 ], [ -22, %77 ], [ -22, %81 ]
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %4) #16
  ret i32 %233
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_ctl_tlv_ioctl(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.snd_ctl_tlv, align 8
  %5 = alloca %struct.snd_ctl_elem_id, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  store i64 0, ptr %4, align 8, !annotation !14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #16
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 8, i32 -1090519040) #20, !srcloc !28
  %7 = extractvalue { i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %17, !prof !18

9:                                                ; preds = %3
  %10 = tail call ptr @llvm.thread.pointer() #16
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #21, !srcloc !20
  %13 = and i32 %12, -13
  %14 = or i32 %13, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #16, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !22
  %15 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %1, i32 noundef 8) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #16, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !22
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17, !prof !18

17:                                               ; preds = %9, %3
  %18 = phi i32 [ %15, %9 ], [ 8, %3 ]
  %19 = sub i32 8, %18
  %20 = getelementptr i8, ptr %4, i32 %19
  call void @llvm.memset.p0.i32(ptr align 1 %20, i8 0, i32 %18, i1 false) #16
  br label %142

21:                                               ; preds = %9
  %22 = load i32, ptr %4, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %142, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.snd_ctl_tlv, ptr %4, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp ult i32 %26, 8
  br i1 %27, label %142, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.snd_ctl_tlv, ptr %1, i32 0, i32 2
  %30 = getelementptr inbounds %struct.snd_ctl_file, ptr %0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %142, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.snd_card, ptr %31, i32 0, i32 18
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, %34
  br i1 %36, label %142, label %37

37:                                               ; preds = %47, %33
  %38 = phi ptr [ %48, %47 ], [ %35, %33 ]
  %39 = getelementptr inbounds %struct.snd_kcontrol, ptr %38, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = icmp ugt i32 %40, %22
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.snd_kcontrol, ptr %38, i32 0, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, %40
  %46 = icmp ugt i32 %45, %22
  br i1 %46, label %50, label %47

47:                                               ; preds = %42, %37
  %48 = load ptr, ptr %38, align 4
  %49 = icmp eq ptr %48, %34
  br i1 %49, label %142, label %37

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.snd_kcontrol, ptr %38, i32 0, i32 2
  %52 = icmp eq ptr %38, null
  br i1 %52, label %142, label %53

53:                                               ; preds = %50
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %5, ptr noundef align 4 dereferenceable(64) %39, i32 64, i1 false)
  %54 = load i32, ptr %5, align 4
  %55 = sub i32 %22, %54
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %5, ptr noundef align 4 dereferenceable(64) %39, i32 64, i1 false) #16
  %56 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %5, i32 0, i32 5
  %57 = load i32, ptr %56, align 4
  %58 = add i32 %57, %55
  store i32 %58, ptr %56, align 4
  %59 = load i32, ptr %5, align 4
  %60 = add i32 %59, %55
  store i32 %60, ptr %5, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.snd_kcontrol, ptr %38, i32 0, i32 1, i32 5
  %64 = load i32, ptr %63, align 4
  %65 = sub i32 %58, %64
  %66 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %65, i32 %44) #16, !srcloc !12
  %67 = and i32 %66, %65
  %68 = getelementptr %struct.snd_kcontrol, ptr %38, i32 0, i32 10, i32 %67, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = and i32 %69, 268435456
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %138, label %86

72:                                               ; preds = %53
  %73 = sub i32 %60, %40
  %74 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %73, i32 %44) #16, !srcloc !12
  %75 = and i32 %74, %73
  %76 = getelementptr %struct.snd_kcontrol, ptr %38, i32 0, i32 10, i32 %75, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = and i32 %77, 268435456
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %138, label %80

80:                                               ; preds = %72
  %81 = load i32, ptr %39, align 4
  %82 = sub i32 %60, %81
  %83 = load i32, ptr %51, align 4
  %84 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %82, i32 %83) #16, !srcloc !12
  %85 = and i32 %84, %82
  br label %92

86:                                               ; preds = %62
  %87 = load i32, ptr %63, align 4
  %88 = sub i32 %58, %87
  %89 = load i32, ptr %51, align 4
  %90 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %88, i32 %89) #16, !srcloc !12
  %91 = and i32 %90, %88
  br label %92

92:                                               ; preds = %86, %80
  %93 = phi i32 [ %85, %80 ], [ %91, %86 ]
  %94 = getelementptr %struct.snd_kcontrol, ptr %38, i32 0, i32 10, i32 %93
  %95 = getelementptr %struct.snd_kcontrol, ptr %38, i32 0, i32 10, i32 %93, i32 1
  switch i32 %2, label %142 [
    i32 0, label %96
    i32 1, label %100
    i32 -1, label %104
  ]

96:                                               ; preds = %92
  %97 = load i32, ptr %95, align 4
  %98 = and i32 %97, 16
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %142, label %112

100:                                              ; preds = %92
  %101 = load i32, ptr %95, align 4
  %102 = and i32 %101, 32
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %142, label %108

104:                                              ; preds = %92
  %105 = load i32, ptr %95, align 4
  %106 = and i32 %105, 64
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %142, label %108

108:                                              ; preds = %104, %100
  %109 = getelementptr inbounds %struct.snd_kcontrol, ptr %38, i32 0, i32 6
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %142, label %116

112:                                              ; preds = %96
  %113 = getelementptr inbounds %struct.snd_kcontrol, ptr %38, i32 0, i32 6
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %142, label %121

116:                                              ; preds = %108
  %117 = load ptr, ptr %94, align 4
  %118 = icmp eq ptr %117, null
  %119 = icmp eq ptr %117, %0
  %120 = or i1 %118, %119
  br i1 %120, label %121, label %142

121:                                              ; preds = %116, %112
  %122 = phi ptr [ %109, %116 ], [ %113, %112 ]
  %123 = load ptr, ptr %30, align 4
  %124 = call i32 @snd_power_ref_and_wait(ptr noundef %123) #16
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load ptr, ptr %122, align 4
  %128 = call i32 %127(ptr noundef nonnull %38, i32 noundef %2, i32 noundef %26, ptr noundef %29) #16
  br label %129

129:                                              ; preds = %126, %121
  %130 = phi i32 [ %124, %121 ], [ %128, %126 ]
  %131 = load ptr, ptr %30, align 4
  %132 = getelementptr inbounds %struct.snd_card, ptr %131, i32 0, i32 38
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !24
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %132) #16, !srcloc !25
  %133 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %132, ptr %132, i32 1, ptr elementtype(i32) %132) #16, !srcloc !26
  %134 = extractvalue { i32, i32 } %133, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !27
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %129
  %137 = getelementptr inbounds %struct.snd_card, ptr %131, i32 0, i32 40
  call void @__wake_up(ptr noundef %137, i32 noundef 3, i32 noundef 1, ptr noundef null) #16
  br label %142

138:                                              ; preds = %72, %62
  %139 = icmp eq i32 %2, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %138
  %141 = call fastcc i32 @read_tlv_buf(ptr noundef nonnull %38, ptr noundef nonnull %5, ptr noundef %29, i32 noundef %26)
  br label %142

142:                                              ; preds = %140, %138, %136, %129, %116, %112, %108, %104, %100, %96, %92, %50, %47, %33, %28, %24, %21, %17
  %143 = phi i32 [ %141, %140 ], [ -22, %21 ], [ -22, %24 ], [ -2, %50 ], [ -6, %138 ], [ -6, %108 ], [ -1, %116 ], [ %130, %129 ], [ %130, %136 ], [ -6, %104 ], [ -6, %112 ], [ -6, %100 ], [ -6, %96 ], [ -6, %92 ], [ -14, %17 ], [ -2, %28 ], [ -2, %33 ], [ -2, %47 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret i32 %143
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_power_ref_and_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_vnr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_ctl_elem_user_free(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.user_element, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = mul i32 %7, %5
  %9 = getelementptr inbounds %struct.user_element, ptr %3, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 17
  %12 = load i32, ptr %11, align 4
  %13 = sub i32 -296, %8
  %14 = add i32 %13, %12
  store i32 %14, ptr %11, align 4
  %15 = getelementptr inbounds %struct.user_element, ptr %3, i32 0, i32 5
  %16 = load i32, ptr %15, align 8
  %17 = load ptr, ptr %9, align 8
  %18 = getelementptr inbounds %struct.snd_card, ptr %17, i32 0, i32 17
  %19 = load i32, ptr %18, align 4
  %20 = sub i32 %19, %16
  store i32 %20, ptr %18, align 4
  %21 = getelementptr inbounds %struct.user_element, ptr %3, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %3, i32 0, i32 5, i32 0, i32 4
  %26 = load i32, ptr %25, align 8
  %27 = load ptr, ptr %9, align 8
  %28 = getelementptr inbounds %struct.snd_card, ptr %27, i32 0, i32 17
  %29 = load i32, ptr %28, align 4
  %30 = sub i32 %29, %26
  store i32 %30, ptr %28, align 4
  br label %31

31:                                               ; preds = %24, %1
  %32 = getelementptr inbounds %struct.user_element, ptr %3, i32 0, i32 4
  %33 = load ptr, ptr %32, align 4
  tail call void @kvfree(ptr noundef %33) #16
  %34 = load ptr, ptr %21, align 4
  tail call void @kvfree(ptr noundef %34) #16
  tail call void @kfree(ptr noundef %3) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_ctl_elem_init_enum_names(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %0, i32 0, i32 5
  %3 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %0, i32 0, i32 5, i32 0, i32 3
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i32
  %6 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %0, i32 0, i32 5, i32 0, i32 4
  %7 = load i32, ptr %6, align 8
  %8 = icmp ugt i32 %7, 65536
  br i1 %8, label %49, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.user_element, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.snd_card, ptr %11, i32 0, i32 17
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, %7
  %15 = load i32, ptr @max_user_ctl_alloc_size, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %49, label %17

17:                                               ; preds = %9
  %18 = inttoptr i32 %5 to ptr
  %19 = tail call ptr @vmemdup_user(ptr noundef %18, i32 noundef %7) #16
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load i32, ptr %2, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %42, label %26

24:                                               ; preds = %17
  %25 = ptrtoint ptr %19 to i32
  br label %49

26:                                               ; preds = %36, %21
  %27 = phi i32 [ %40, %36 ], [ 0, %21 ]
  %28 = phi i32 [ %39, %36 ], [ %7, %21 ]
  %29 = phi ptr [ %38, %36 ], [ %19, %21 ]
  %30 = tail call i32 @strnlen(ptr noundef %29, i32 noundef %28)
  %31 = add i32 %30, -64
  %32 = icmp ult i32 %31, -63
  %33 = icmp eq i32 %30, %28
  %34 = or i1 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  tail call void @kvfree(ptr noundef %19) #16
  br label %49

36:                                               ; preds = %26
  %37 = add nuw nsw i32 %30, 1
  %38 = getelementptr i8, ptr %29, i32 %37
  %39 = sub i32 %28, %37
  %40 = add nuw i32 %27, 1
  %41 = icmp eq i32 %40, %22
  br i1 %41, label %42, label %26

42:                                               ; preds = %36, %21
  %43 = getelementptr inbounds %struct.user_element, ptr %0, i32 0, i32 6
  store ptr %19, ptr %43, align 4
  store i64 0, ptr %3, align 8
  %44 = load i32, ptr %6, align 8
  %45 = load ptr, ptr %10, align 8
  %46 = getelementptr inbounds %struct.snd_card, ptr %45, i32 0, i32 17
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, %44
  store i32 %48, ptr %46, align 4
  br label %49

49:                                               ; preds = %42, %35, %24, %9, %1
  %50 = phi i32 [ %25, %24 ], [ -22, %35 ], [ 0, %42 ], [ -22, %1 ], [ -12, %9 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_ctl_elem_user_enum_info(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5
  %6 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = load i32, ptr %1, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = sub i32 %8, %12
  %14 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %13, i32 %15) #16, !srcloc !12
  %17 = and i32 %16, %13
  br label %28

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %1, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 1, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = sub i32 %20, %22
  %24 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %23, i32 %25) #16, !srcloc !12
  %27 = and i32 %26, %23
  br label %28

28:                                               ; preds = %18, %10
  %29 = phi i32 [ %17, %10 ], [ %27, %18 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(272) %1, ptr noundef align 8 dereferenceable(272) %4, i32 272, i1 false)
  %30 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(64) %1, ptr noundef align 4 dereferenceable(64) %30, i32 64, i1 false) #16
  %31 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %1, i32 0, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, %29
  store i32 %33, ptr %31, align 4
  %34 = load i32, ptr %1, align 4
  %35 = add i32 %34, %29
  store i32 %35, ptr %1, align 4
  %36 = load i32, ptr %5, align 8
  %37 = add i32 %36, -1
  %38 = tail call i32 @llvm.umin.i32(i32 %7, i32 %37)
  store i32 %38, ptr %6, align 4
  %39 = getelementptr inbounds %struct.user_element, ptr %4, i32 0, i32 6
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq i32 %38, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %42, %28
  %43 = phi ptr [ %47, %42 ], [ %40, %28 ]
  %44 = phi i32 [ %48, %42 ], [ %38, %28 ]
  %45 = tail call i32 @strlen(ptr noundef %43)
  %46 = add i32 %45, 1
  %47 = getelementptr i8, ptr %43, i32 %46
  %48 = add i32 %44, -1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %42

50:                                               ; preds = %42, %28
  %51 = phi ptr [ %40, %28 ], [ %47, %42 ]
  %52 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5, i32 0, i32 2
  %53 = tail call ptr @strcpy(ptr noundef %52, ptr noundef %51)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_ctl_elem_user_info(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %1, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = sub i32 %5, %9
  %11 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %10, i32 %12) #16, !srcloc !12
  %14 = and i32 %13, %10
  br label %25

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %1, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 1, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = sub i32 %17, %19
  %21 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %20, i32 %22) #16, !srcloc !12
  %24 = and i32 %23, %20
  br label %25

25:                                               ; preds = %15, %7
  %26 = phi i32 [ %14, %7 ], [ %24, %15 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(272) %1, ptr noundef align 8 dereferenceable(272) %4, i32 272, i1 false)
  %27 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(64) %1, ptr noundef align 4 dereferenceable(64) %27, i32 64, i1 false) #16
  %28 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %1, i32 0, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, %26
  store i32 %30, ptr %28, align 4
  %31 = load i32, ptr %1, align 4
  %32 = add i32 %31, %26
  store i32 %32, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_ctl_elem_user_get(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.user_element, ptr %4, i32 0, i32 3
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.user_element, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %1, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = sub i32 %9, %13
  %15 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %14, i32 %16) #16, !srcloc !12
  %18 = and i32 %17, %14
  br label %29

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %1, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 1, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = sub i32 %21, %23
  %25 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %24, i32 %26) #16, !srcloc !12
  %28 = and i32 %27, %24
  br label %29

29:                                               ; preds = %19, %11
  %30 = phi i32 [ %18, %11 ], [ %28, %19 ]
  %31 = mul i32 %30, %6
  %32 = getelementptr i8, ptr %8, i32 %31
  %33 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %33, ptr align 1 %32, i32 %6, i1 false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_ctl_elem_user_put(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.user_element, ptr %4, i32 0, i32 3
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.user_element, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %1, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = sub i32 %9, %13
  %15 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %14, i32 %16) #16, !srcloc !12
  %18 = and i32 %17, %14
  br label %29

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %1, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 1, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = sub i32 %21, %23
  %25 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %24, i32 %26) #16, !srcloc !12
  %28 = and i32 %27, %24
  br label %29

29:                                               ; preds = %19, %11
  %30 = phi i32 [ %18, %11 ], [ %28, %19 ]
  %31 = mul i32 %30, %6
  %32 = getelementptr i8, ptr %8, i32 %31
  %33 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %34 = tail call i32 @bcmp(ptr %33, ptr %32, i32 %6)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %32, ptr align 8 %33, i32 %6, i1 false)
  br label %37

37:                                               ; preds = %36, %29
  %38 = zext i1 %35 to i32
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_ctl_elem_user_tlv(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca %struct.snd_ctl_elem_id, align 4
  %6 = icmp eq i32 %1, 1
  %7 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  br i1 %6, label %9, label %86

9:                                                ; preds = %4
  %10 = icmp ugt i32 %2, 131072
  br i1 %10, label %116, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.user_element, ptr %8, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.user_element, ptr %8, i32 0, i32 5
  %15 = load i32, ptr %14, align 8
  %16 = sub i32 %2, %15
  %17 = getelementptr inbounds %struct.snd_card, ptr %13, i32 0, i32 17
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %16, %18
  %20 = load i32, ptr @max_user_ctl_alloc_size, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %116, label %22

22:                                               ; preds = %11
  %23 = tail call ptr @vmemdup_user(ptr noundef %3, i32 noundef %2) #16
  %24 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = ptrtoint ptr %23 to i32
  br label %116

27:                                               ; preds = %22
  %28 = load i32, ptr %14, align 8
  %29 = icmp eq i32 %28, %2
  %30 = getelementptr inbounds %struct.user_element, ptr %8, i32 0, i32 4
  %31 = load ptr, ptr %30, align 4
  br i1 %29, label %32, label %36

32:                                               ; preds = %27
  %33 = tail call i32 @bcmp(ptr %31, ptr %23, i32 %2) #16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  tail call void @kvfree(ptr noundef %23) #16
  br label %116

36:                                               ; preds = %32, %27
  %37 = icmp eq ptr %31, null
  br i1 %37, label %38, label %49

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %55, label %42

42:                                               ; preds = %42, %38
  %43 = phi i32 [ %47, %42 ], [ 0, %38 ]
  %44 = getelementptr %struct.snd_kcontrol, ptr %0, i32 0, i32 10, i32 %43, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = or i32 %45, 16
  store i32 %46, ptr %44, align 4
  %47 = add nuw i32 %43, 1
  %48 = icmp eq i32 %47, %40
  br i1 %48, label %55, label %42

49:                                               ; preds = %36
  %50 = load ptr, ptr %12, align 8
  %51 = getelementptr inbounds %struct.snd_card, ptr %50, i32 0, i32 17
  %52 = load i32, ptr %51, align 4
  %53 = sub i32 %52, %28
  store i32 %53, ptr %51, align 4
  store i32 0, ptr %14, align 8
  %54 = load ptr, ptr %30, align 4
  tail call void @kvfree(ptr noundef %54) #16
  br label %55

55:                                               ; preds = %49, %42, %38
  %56 = phi i32 [ 8, %49 ], [ 10, %38 ], [ 10, %42 ]
  store ptr %23, ptr %30, align 4
  store i32 %2, ptr %14, align 8
  %57 = load ptr, ptr %12, align 8
  %58 = getelementptr inbounds %struct.snd_card, ptr %57, i32 0, i32 17
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %59, %2
  store i32 %60, ptr %58, align 4
  %61 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 2
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %116, label %64

64:                                               ; preds = %55
  %65 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 1
  %66 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %5, i32 0, i32 5
  br label %67

67:                                               ; preds = %82, %64
  %68 = phi i32 [ 0, %64 ], [ %83, %82 ]
  %69 = load ptr, ptr %12, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %5, ptr noundef align 4 dereferenceable(64) %65, i32 64, i1 false) #16
  %70 = load i32, ptr %66, align 4
  %71 = add i32 %70, %68
  store i32 %71, ptr %66, align 4
  %72 = load i32, ptr %5, align 4
  %73 = add i32 %72, %68
  store i32 %73, ptr %5, align 4
  call void @snd_ctl_notify(ptr noundef %69, i32 noundef %56, ptr noundef nonnull %5) #16
  call void @down_read(ptr noundef nonnull @snd_ctl_layer_rwsem) #16
  %74 = load ptr, ptr @snd_ctl_layer, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %82, label %76

76:                                               ; preds = %76, %67
  %77 = phi ptr [ %80, %76 ], [ %74, %67 ]
  %78 = getelementptr inbounds %struct.snd_ctl_layer_ops, ptr %77, i32 0, i32 4
  %79 = load ptr, ptr %78, align 4
  call void %79(ptr noundef %69, i32 noundef %56, ptr noundef %0, i32 noundef %68) #16
  %80 = load ptr, ptr %77, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %76

82:                                               ; preds = %76, %67
  call void @up_read(ptr noundef nonnull @snd_ctl_layer_rwsem) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #16
  %83 = add nuw i32 %68, 1
  %84 = load i32, ptr %61, align 4
  %85 = icmp ult i32 %83, %84
  br i1 %85, label %67, label %116

86:                                               ; preds = %4
  %87 = getelementptr inbounds %struct.user_element, ptr %8, i32 0, i32 5
  %88 = load i32, ptr %87, align 8
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %116, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.user_element, ptr %8, i32 0, i32 4
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %116, label %94

94:                                               ; preds = %90
  %95 = icmp ugt i32 %88, %2
  br i1 %95, label %116, label %96

96:                                               ; preds = %94
  %97 = icmp slt i32 %88, 0
  %98 = load i1, ptr @check_copy_size.__already_done, align 1
  %99 = xor i1 %98, true
  %100 = select i1 %97, i1 %99, i1 false
  br i1 %100, label %101, label %102, !prof !13

101:                                              ; preds = %96
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 230, i32 noundef 9, ptr noundef null) #16
  br label %102

102:                                              ; preds = %101, %96
  br i1 %97, label %116, label %103, !prof !13

103:                                              ; preds = %102
  %104 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 %88, i32 -1090519040) #20, !srcloc !19
  %105 = extractvalue { i32, i32 } %104, 0
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %103
  %108 = tail call ptr @llvm.thread.pointer() #16
  %109 = getelementptr inbounds %struct.thread_info, ptr %108, i32 0, i32 3
  %110 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %109) #21, !srcloc !20
  %111 = and i32 %110, -13
  %112 = or i32 %111, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %112) #16, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !22
  %113 = tail call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef nonnull %92, i32 noundef %88) #16
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %110) #16, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !22
  %114 = icmp eq i32 %113, 0
  %115 = select i1 %114, i32 0, i32 -14
  br label %116

116:                                              ; preds = %107, %103, %102, %94, %90, %86, %82, %55, %35, %25, %11, %9
  %117 = phi i32 [ %26, %25 ], [ 0, %35 ], [ -22, %9 ], [ -12, %11 ], [ 1, %55 ], [ -6, %90 ], [ -6, %86 ], [ -28, %94 ], [ -14, %102 ], [ %115, %107 ], [ -14, %103 ], [ 1, %82 ]
  ret i32 %117
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmemdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @read_tlv_buf(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = load i32, ptr %1, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = sub i32 %5, %9
  %11 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %10, i32 %12) #16, !srcloc !12
  %14 = and i32 %13, %10
  br label %25

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %1, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 1, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = sub i32 %17, %19
  %21 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %20, i32 %22) #16, !srcloc !12
  %24 = and i32 %23, %20
  br label %25

25:                                               ; preds = %15, %7
  %26 = phi i32 [ %14, %7 ], [ %24, %15 ]
  %27 = getelementptr %struct.snd_kcontrol, ptr %0, i32 0, i32 10, i32 %26, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %62, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 6
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %62, label %35

35:                                               ; preds = %31
  %36 = getelementptr i32, ptr %33, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, 8
  %39 = icmp ugt i32 %38, %3
  br i1 %39, label %62, label %40

40:                                               ; preds = %35
  %41 = icmp slt i32 %38, 0
  %42 = load i1, ptr @check_copy_size.__already_done, align 1
  %43 = xor i1 %42, true
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %45, label %46, !prof !13

45:                                               ; preds = %40
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 230, i32 noundef 9, ptr noundef null) #16
  br label %46

46:                                               ; preds = %45, %40
  br i1 %41, label %62, label %47, !prof !13

47:                                               ; preds = %46
  %48 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 %38, i32 -1090519040) #20, !srcloc !19
  %49 = extractvalue { i32, i32 } %48, 0
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = tail call ptr @llvm.thread.pointer() #16
  %53 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 3
  %54 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %53) #21, !srcloc !20
  %55 = and i32 %54, -13
  %56 = or i32 %55, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %56) #16, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !22
  %57 = tail call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %33, i32 noundef %38) #16
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %54) #16, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !22
  br label %58

58:                                               ; preds = %51, %47
  %59 = phi i32 [ %57, %51 ], [ %38, %47 ]
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %60, i32 0, i32 -14
  br label %62

62:                                               ; preds = %58, %46, %35, %31, %25
  %63 = phi i32 [ -6, %25 ], [ -6, %31 ], [ -12, %35 ], [ -14, %46 ], [ %61, %58 ]
  ret i32 %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stream_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_lookup_minor_data(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_file_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_write_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_file_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fasync_helper(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #15

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { argmemonly nofree nounwind readonly willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind readnone }
attributes #21 = { nounwind readonly }

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
!8 = !{i64 2149291217}
!9 = !{i64 2149287041}
!10 = !{i64 2149287116, i64 2149287143, i64 2149287190, i64 2149287212, i64 2149287240, i64 2149287260}
!11 = !{i64 2149314220}
!12 = !{i64 446749, i64 446766, i64 2147930836}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{!"auto-init"}
!15 = !{i64 2153080418}
!16 = !{i64 392459}
!17 = !{i64 2149315361}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{i64 2152146072, i64 2152146097}
!20 = !{i64 4641606}
!21 = !{i64 4641803}
!22 = !{i64 2152127082}
!23 = !{i64 2153048746, i64 2153049026, i64 2153049360, i64 2153049694}
!24 = !{i64 2148098498}
!25 = !{i64 495660, i64 2147985631, i64 2147985657, i64 2147985704, i64 2147985726, i64 2147985754, i64 2147985774}
!26 = !{i64 2148000884, i64 2148000916, i64 2148000945, i64 2148000979, i64 2148001010, i64 2148001033}
!27 = !{i64 2148098701}
!28 = !{i64 2152145494, i64 2152145519}
!29 = !{i64 2153025953, i64 2153026233, i64 2153026567, i64 2153026901}
!30 = !{i64 2153038918, i64 2153039198, i64 2153039532, i64 2153039866}
!31 = !{i64 2153070843, i64 2153071123, i64 2153071457, i64 2153071791}
!32 = !{i64 2147999301, i64 2147999333, i64 2147999362, i64 2147999396, i64 2147999427, i64 2147999450}
