; ModuleID = '/llk/IR/sound/core/timer.c_pt.bc'
source_filename = "../sound/core/timer.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_timer_instance_new:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_timer_instance_new\22\09\09\09\09\09"
module asm "__kstrtabns_snd_timer_instance_new:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_timer_instance_free:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_timer_instance_free\22\09\09\09\09\09"
module asm "__kstrtabns_snd_timer_instance_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_timer_open:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_timer_open\22\09\09\09\09\09"
module asm "__kstrtabns_snd_timer_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_timer_close:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_timer_close\22\09\09\09\09\09"
module asm "__kstrtabns_snd_timer_close:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_timer_resolution:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_timer_resolution\22\09\09\09\09\09"
module asm "__kstrtabns_snd_timer_resolution:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_timer_start:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_timer_start\22\09\09\09\09\09"
module asm "__kstrtabns_snd_timer_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_timer_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_timer_stop\22\09\09\09\09\09"
module asm "__kstrtabns_snd_timer_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_timer_continue:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_timer_continue\22\09\09\09\09\09"
module asm "__kstrtabns_snd_timer_continue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_timer_pause:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_timer_pause\22\09\09\09\09\09"
module asm "__kstrtabns_snd_timer_pause:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_timer_interrupt:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_timer_interrupt\22\09\09\09\09\09"
module asm "__kstrtabns_snd_timer_interrupt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_timer_new:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_timer_new\22\09\09\09\09\09"
module asm "__kstrtabns_snd_timer_new:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_timer_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_timer_notify\22\09\09\09\09\09"
module asm "__kstrtabns_snd_timer_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_timer_global_new:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_timer_global_new\22\09\09\09\09\09"
module asm "__kstrtabns_snd_timer_global_new:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_timer_global_free:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_timer_global_free\22\09\09\09\09\09"
module asm "__kstrtabns_snd_timer_global_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_timer_global_register:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_timer_global_register\22\09\09\09\09\09"
module asm "__kstrtabns_snd_timer_global_register:\09\09\09\09\09"
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
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.57 }
%union.anon.57 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_device_ops = type { ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_timer_hardware = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.snd_timer_instance = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.snd_timer_id = type { i32, i32, i32, i32, i32 }
%struct.snd_timer = type { i32, ptr, ptr, i32, i32, [64 x i8], [80 x i8], i32, i32, i32, ptr, ptr, %struct.snd_timer_hardware, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.work_struct, i32, i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_device = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
%struct.snd_timer_system_private = type { %struct.timer_list, ptr, i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.62, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.62 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }
%struct.snd_timer_tread32 = type { i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.11, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.snd_timer_user = type { ptr, i32, i32, i32, i32, i32, i32, i32, i8, ptr, ptr, %struct.spinlock, i32, i32, %struct.timespec64, %struct.wait_queue_head, ptr, %struct.mutex }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.46, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.17 }
%struct.llist_node = type { ptr }
%union.anon.17 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.46 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.snd_timer_tread64 = type { i32, [4 x i8], i64, i64, i32, [4 x i8] }
%struct.snd_timer_read = type { i32, i32 }
%struct.snd_timer_status64 = type { i64, i64, i32, i32, i32, i32, [64 x i8] }
%struct.snd_timer_status32 = type { i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_timer_params = type { i32, i32, i32, i32, i32, [60 x i8] }
%struct.snd_timer_select = type { %struct.snd_timer_id, [32 x i8] }
%struct.snd_timer_gstatus = type { %struct.snd_timer_id, i32, i32, i32, [32 x i8] }
%struct.snd_timer_gparams = type { %struct.snd_timer_id, i32, i32, [32 x i8] }
%struct.snd_timer_ginfo = type { %struct.snd_timer_id, i32, i32, [64 x i8], [80 x i8], i32, i32, i32, i32, i32, [32 x i8] }
%struct.snd_timer_info = type { i32, i32, [64 x i8], [80 x i8], i32, i32, [64 x i8] }

@__UNIQUE_ID_author216 = internal constant [70 x i8] c"author=Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description217 = internal constant [33 x i8] c"description=ALSA timer interface\00", section ".modinfo", align 1
@__UNIQUE_ID_license218 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__param_str_timer_limit = internal constant [12 x i8] c"timer_limit\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@timer_limit = internal global i32 1, align 4
@__param_timer_limit = internal constant %struct.kernel_param { ptr @__param_str_timer_limit, ptr @__this_module, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.57 { ptr @timer_limit } }, section "__param", align 4
@__UNIQUE_ID_timer_limittype219 = internal constant [25 x i8] c"parmtype=timer_limit:int\00", section ".modinfo", align 1
@__UNIQUE_ID_timer_limit220 = internal constant [50 x i8] c"parm=timer_limit:Maximum global timers in system.\00", section ".modinfo", align 1
@__param_str_timer_tstamp_monotonic = internal constant [23 x i8] c"timer_tstamp_monotonic\00", align 1
@timer_tstamp_monotonic = internal global i32 1, align 4
@__param_timer_tstamp_monotonic = internal constant %struct.kernel_param { ptr @__param_str_timer_tstamp_monotonic, ptr @__this_module, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.57 { ptr @timer_tstamp_monotonic } }, section "__param", align 4
@__UNIQUE_ID_timer_tstamp_monotonictype221 = internal constant [36 x i8] c"parmtype=timer_tstamp_monotonic:int\00", section ".modinfo", align 1
@__UNIQUE_ID_timer_tstamp_monotonic222 = internal constant [87 x i8] c"parm=timer_tstamp_monotonic:Use posix monotonic clock source for timestamps (default).\00", section ".modinfo", align 1
@__UNIQUE_ID_alias223 = internal constant [24 x i8] c"alias=char-major-116-33\00", section ".modinfo", align 1
@__UNIQUE_ID_alias224 = internal constant [24 x i8] c"alias=devname:snd/timer\00", section ".modinfo", align 1
@__kstrtab_snd_timer_instance_new = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_timer_instance_new = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_timer_instance_new = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_timer_instance_new to i32), ptr @__kstrtab_snd_timer_instance_new, ptr @__kstrtabns_snd_timer_instance_new }, section "___ksymtab+snd_timer_instance_new", align 4
@__kstrtab_snd_timer_instance_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_timer_instance_free = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_timer_instance_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_timer_instance_free to i32), ptr @__kstrtab_snd_timer_instance_free, ptr @__kstrtabns_snd_timer_instance_free }, section "___ksymtab+snd_timer_instance_free", align 4
@register_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @register_mutex, i64 12), ptr getelementptr (i8, ptr @register_mutex, i64 12) } }, align 4
@num_slaves = internal unnamed_addr global i32 0, align 4
@snd_timer_slave_list = internal global %struct.list_head { ptr @snd_timer_slave_list, ptr @snd_timer_slave_list }, align 4
@__kstrtab_snd_timer_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_timer_open = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_timer_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_timer_open to i32), ptr @__kstrtab_snd_timer_open, ptr @__kstrtabns_snd_timer_open }, section "___ksymtab+snd_timer_open", align 4
@__kstrtab_snd_timer_close = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_timer_close = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_timer_close = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_timer_close to i32), ptr @__kstrtab_snd_timer_close, ptr @__kstrtabns_snd_timer_close }, section "___ksymtab+snd_timer_close", align 4
@__kstrtab_snd_timer_resolution = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_timer_resolution = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_timer_resolution = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_timer_resolution to i32), ptr @__kstrtab_snd_timer_resolution, ptr @__kstrtabns_snd_timer_resolution }, section "___ksymtab+snd_timer_resolution", align 4
@__kstrtab_snd_timer_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_timer_start = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_timer_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_timer_start to i32), ptr @__kstrtab_snd_timer_start, ptr @__kstrtabns_snd_timer_start }, section "___ksymtab+snd_timer_start", align 4
@__kstrtab_snd_timer_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_timer_stop = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_timer_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_timer_stop to i32), ptr @__kstrtab_snd_timer_stop, ptr @__kstrtabns_snd_timer_stop }, section "___ksymtab+snd_timer_stop", align 4
@__kstrtab_snd_timer_continue = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_timer_continue = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_timer_continue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_timer_continue to i32), ptr @__kstrtab_snd_timer_continue, ptr @__kstrtabns_snd_timer_continue }, section "___ksymtab+snd_timer_continue", align 4
@__kstrtab_snd_timer_pause = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_timer_pause = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_timer_pause = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_timer_pause to i32), ptr @__kstrtab_snd_timer_pause, ptr @__kstrtabns_snd_timer_pause }, section "___ksymtab+snd_timer_pause", align 4
@system_highpri_wq = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_snd_timer_interrupt = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_timer_interrupt = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_timer_interrupt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_timer_interrupt to i32), ptr @__kstrtab_snd_timer_interrupt, ptr @__kstrtabns_snd_timer_interrupt }, section "___ksymtab+snd_timer_interrupt", align 4
@snd_timer_new.ops = internal constant %struct.snd_device_ops { ptr @snd_timer_dev_free, ptr @snd_timer_dev_register, ptr @snd_timer_dev_disconnect }, align 4
@.str = private unnamed_addr constant [19 x i8] c"sound/core/timer.c\00", align 1
@__kstrtab_snd_timer_new = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_timer_new = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_timer_new = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_timer_new to i32), ptr @__kstrtab_snd_timer_new, ptr @__kstrtabns_snd_timer_new }, section "___ksymtab+snd_timer_new", align 4
@__kstrtab_snd_timer_notify = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_timer_notify = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_timer_notify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_timer_notify to i32), ptr @__kstrtab_snd_timer_notify, ptr @__kstrtabns_snd_timer_notify }, section "___ksymtab+snd_timer_notify", align 4
@__kstrtab_snd_timer_global_new = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_timer_global_new = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_timer_global_new = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_timer_global_new to i32), ptr @__kstrtab_snd_timer_global_new, ptr @__kstrtabns_snd_timer_global_new }, section "___ksymtab+snd_timer_global_new", align 4
@__kstrtab_snd_timer_global_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_timer_global_free = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_timer_global_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_timer_global_free to i32), ptr @__kstrtab_snd_timer_global_free, ptr @__kstrtabns_snd_timer_global_free }, section "___ksymtab+snd_timer_global_free", align 4
@__kstrtab_snd_timer_global_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_timer_global_register = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_timer_global_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_timer_global_register to i32), ptr @__kstrtab_snd_timer_global_register, ptr @__kstrtabns_snd_timer_global_register }, section "___ksymtab+snd_timer_global_register", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@snd_timer_list = internal global %struct.list_head { ptr @snd_timer_list, ptr @snd_timer_list }, align 4
@slave_active_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"snd-timer-%i\00", align 1
@snd_ecards_limit = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"snd-card-%i\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"\014ALSA: timer %p is busy?\0A\00", align 1
@timer_dev = internal global %struct.device zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"timer\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"\013ALSA: unable to register system timer (%i)\0A\00", align 1
@snd_timer_f_ops = internal constant %struct.file_operations { ptr @__this_module, ptr @no_llseek, ptr @snd_timer_user_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_timer_user_poll, ptr @snd_timer_user_ioctl, ptr null, ptr null, i32 0, ptr @snd_timer_user_open, ptr null, ptr @snd_timer_user_release, ptr null, ptr @snd_timer_user_fasync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.6 = private unnamed_addr constant [46 x i8] c"\013ALSA: unable to register timer device (%i)\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"system timer\00", align 1
@snd_timer_system = internal unnamed_addr constant %struct.snd_timer_hardware { i32 24, i32 10000000, i32 0, i32 0, i32 10000000, ptr null, ptr @snd_timer_s_close, ptr null, ptr @snd_timer_s_start, ptr @snd_timer_s_stop, ptr null, ptr null }, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@snd_timer_user_read.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"Corrupt snd_timer_user\0A\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"application %i\00", align 1
@snd_timer_user_open.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"&tu->qchange_sleep\00", align 1
@snd_timer_user_open.__key.14 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"&tu->ioctl_lock\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"timers\00", align 1
@snd_timer_proc_entry = internal unnamed_addr global ptr null, align 4
@.str.17 = private unnamed_addr constant [6 x i8] c"G%i: \00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"C%i-%i: \00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"P%i-%i-%i: \00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"?%i-%i-%i-%i: \00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"%s :\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c" %lu.%03luus (%lu ticks)\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c" SLAVE\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"  Client %s : %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"running\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"stopped\00", align 1
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_alias223, ptr @__UNIQUE_ID_alias224, ptr @__UNIQUE_ID_author216, ptr @__UNIQUE_ID_description217, ptr @__UNIQUE_ID_license218, ptr @__UNIQUE_ID_timer_limit220, ptr @__UNIQUE_ID_timer_limittype219, ptr @__UNIQUE_ID_timer_tstamp_monotonic222, ptr @__UNIQUE_ID_timer_tstamp_monotonictype221, ptr @__ksymtab_snd_timer_close, ptr @__ksymtab_snd_timer_continue, ptr @__ksymtab_snd_timer_global_free, ptr @__ksymtab_snd_timer_global_new, ptr @__ksymtab_snd_timer_global_register, ptr @__ksymtab_snd_timer_instance_free, ptr @__ksymtab_snd_timer_instance_new, ptr @__ksymtab_snd_timer_interrupt, ptr @__ksymtab_snd_timer_new, ptr @__ksymtab_snd_timer_notify, ptr @__ksymtab_snd_timer_open, ptr @__ksymtab_snd_timer_pause, ptr @__ksymtab_snd_timer_resolution, ptr @__ksymtab_snd_timer_start, ptr @__ksymtab_snd_timer_stop, ptr @__param_timer_limit, ptr @__param_timer_tstamp_monotonic], section "llvm.metadata"
@switch.table.snd_timer_user_read = private unnamed_addr constant [3 x i32] [i32 8, i32 32, i32 16], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @snd_timer_instance_new(ptr noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 108) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = tail call noalias ptr @kstrdup(ptr noundef %0, i32 noundef 3264) #13
  %7 = getelementptr inbounds %struct.snd_timer_instance, ptr %3, i32 0, i32 1
  store ptr %6, ptr %7, align 4
  %8 = icmp eq ptr %6, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @kfree(ptr noundef nonnull %3) #13
  br label %21

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.snd_timer_instance, ptr %3, i32 0, i32 16
  store volatile ptr %11, ptr %11, align 8
  %12 = getelementptr inbounds %struct.snd_timer_instance, ptr %3, i32 0, i32 16, i32 1
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.snd_timer_instance, ptr %3, i32 0, i32 17
  store volatile ptr %13, ptr %13, align 8
  %14 = getelementptr inbounds %struct.snd_timer_instance, ptr %3, i32 0, i32 17, i32 1
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.snd_timer_instance, ptr %3, i32 0, i32 18
  store volatile ptr %15, ptr %15, align 8
  %16 = getelementptr inbounds %struct.snd_timer_instance, ptr %3, i32 0, i32 18, i32 1
  store ptr %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.snd_timer_instance, ptr %3, i32 0, i32 19
  store volatile ptr %17, ptr %17, align 8
  %18 = getelementptr inbounds %struct.snd_timer_instance, ptr %3, i32 0, i32 19, i32 1
  store ptr %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.snd_timer_instance, ptr %3, i32 0, i32 20
  store volatile ptr %19, ptr %19, align 8
  %20 = getelementptr inbounds %struct.snd_timer_instance, ptr %3, i32 0, i32 20, i32 1
  store ptr %19, ptr %20, align 4
  br label %21

21:                                               ; preds = %10, %9, %1
  %22 = phi ptr [ %3, %10 ], [ null, %9 ], [ null, %1 ]
  ret ptr %22
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_timer_instance_free(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void %5(ptr noundef nonnull %0) #13
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void @kfree(ptr noundef %10) #13
  tail call void @kfree(ptr noundef nonnull %0) #13
  br label %11

11:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_timer_open(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store ptr null, ptr %4, align 4
  tail call void @mutex_lock(ptr noundef nonnull @register_mutex) #13
  %5 = load i32, ptr %1, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %43

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.snd_timer_id, ptr %1, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -4
  %11 = icmp ult i32 %10, -3
  br i1 %11, label %207, label %12

12:                                               ; preds = %7
  %13 = load i32, ptr @num_slaves, align 4
  %14 = icmp sgt i32 %13, 999
  br i1 %14, label %207, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 14
  store i32 %9, ptr %16, align 4
  %17 = getelementptr inbounds %struct.snd_timer_id, ptr %1, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 15
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = or i32 %21, 1
  store i32 %22, ptr %20, align 4
  %23 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 16
  %24 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @snd_timer_slave_list, i32 0, i32 1), align 4
  store ptr %23, ptr getelementptr inbounds (%struct.list_head, ptr @snd_timer_slave_list, i32 0, i32 1), align 4
  store ptr @snd_timer_slave_list, ptr %23, align 4
  %25 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 16, i32 1
  store ptr %24, ptr %25, align 4
  store volatile ptr %23, ptr %24, align 4
  %26 = add nsw i32 %13, 1
  store i32 %26, ptr @num_slaves, align 4
  %27 = load ptr, ptr @snd_timer_list, align 4
  %28 = icmp eq ptr %27, @snd_timer_list
  br i1 %28, label %201, label %32

29:                                               ; preds = %35
  %30 = load ptr, ptr %33, align 4
  %31 = icmp eq ptr %30, @snd_timer_list
  br i1 %31, label %201, label %32

32:                                               ; preds = %29, %15
  %33 = phi ptr [ %30, %29 ], [ %27, %15 ]
  %34 = getelementptr i8, ptr %33, i32 8
  br label %35

35:                                               ; preds = %39, %32
  %36 = phi ptr [ %34, %32 ], [ %37, %39 ]
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %34
  br i1 %38, label %29, label %39

39:                                               ; preds = %35
  %40 = getelementptr i8, ptr %37, i32 -64
  %41 = tail call fastcc i32 @check_matching_master_slave(ptr noundef %40, ptr noundef %0) #13
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %35, label %201

43:                                               ; preds = %3
  %44 = load ptr, ptr @snd_timer_list, align 4
  %45 = icmp eq ptr %44, @snd_timer_list
  br i1 %45, label %82, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.snd_timer_id, ptr %1, i32 0, i32 2
  %48 = getelementptr inbounds %struct.snd_timer_id, ptr %1, i32 0, i32 3
  %49 = getelementptr inbounds %struct.snd_timer_id, ptr %1, i32 0, i32 4
  %50 = and i32 %5, -2
  %51 = icmp eq i32 %50, 2
  br label %52

52:                                               ; preds = %76, %46
  %53 = phi ptr [ %44, %46 ], [ %77, %76 ]
  %54 = getelementptr i8, ptr %53, i32 -236
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, %5
  br i1 %56, label %57, label %76

57:                                               ; preds = %52
  br i1 %51, label %58, label %66

58:                                               ; preds = %57
  %59 = getelementptr i8, ptr %53, i32 -232
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %76, label %62

62:                                               ; preds = %58
  %63 = load i32, ptr %60, align 8
  %64 = load i32, ptr %47, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %62, %57
  %67 = getelementptr i8, ptr %53, i32 -224
  %68 = load i32, ptr %67, align 4
  %69 = load i32, ptr %48, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = getelementptr i8, ptr %53, i32 -220
  %73 = load i32, ptr %72, align 4
  %74 = load i32, ptr %49, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %79, label %76

76:                                               ; preds = %71, %66, %62, %58, %52
  %77 = load ptr, ptr %53, align 4
  %78 = icmp eq ptr %77, @snd_timer_list
  br i1 %78, label %82, label %52

79:                                               ; preds = %71
  %80 = getelementptr i8, ptr %53, i32 -236
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %138

82:                                               ; preds = %79, %76, %43
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #13
  %83 = load i32, ptr %1, align 4
  switch i32 %83, label %98 [
    i32 1, label %84
    i32 2, label %91
    i32 3, label %91
  ]

84:                                               ; preds = %82
  %85 = getelementptr inbounds %struct.snd_timer_id, ptr %1, i32 0, i32 3
  %86 = load i32, ptr %85, align 4
  %87 = load i32, ptr @timer_limit, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %84
  %90 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.1, i32 noundef %86) #13
  br label %98

91:                                               ; preds = %82, %82
  %92 = getelementptr inbounds %struct.snd_timer_id, ptr %1, i32 0, i32 2
  %93 = load i32, ptr %92, align 4
  %94 = load i32, ptr @snd_ecards_limit, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.2, i32 noundef %93) #13
  br label %98

98:                                               ; preds = %96, %91, %89, %84, %82
  tail call void @mutex_lock(ptr noundef nonnull @register_mutex) #13
  %99 = load ptr, ptr @snd_timer_list, align 4
  %100 = icmp eq ptr %99, @snd_timer_list
  br i1 %100, label %207, label %101

101:                                              ; preds = %98
  %102 = load i32, ptr %1, align 4
  %103 = getelementptr inbounds %struct.snd_timer_id, ptr %1, i32 0, i32 2
  %104 = getelementptr inbounds %struct.snd_timer_id, ptr %1, i32 0, i32 3
  %105 = getelementptr inbounds %struct.snd_timer_id, ptr %1, i32 0, i32 4
  %106 = and i32 %102, -2
  %107 = icmp eq i32 %106, 2
  br label %108

108:                                              ; preds = %132, %101
  %109 = phi ptr [ %99, %101 ], [ %133, %132 ]
  %110 = getelementptr i8, ptr %109, i32 -236
  %111 = load i32, ptr %110, align 4
  %112 = icmp eq i32 %111, %102
  br i1 %112, label %113, label %132

113:                                              ; preds = %108
  br i1 %107, label %114, label %122

114:                                              ; preds = %113
  %115 = getelementptr i8, ptr %109, i32 -232
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %132, label %118

118:                                              ; preds = %114
  %119 = load i32, ptr %116, align 8
  %120 = load i32, ptr %103, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %132

122:                                              ; preds = %118, %113
  %123 = getelementptr i8, ptr %109, i32 -224
  %124 = load i32, ptr %123, align 4
  %125 = load i32, ptr %104, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %122
  %128 = getelementptr i8, ptr %109, i32 -220
  %129 = load i32, ptr %128, align 4
  %130 = load i32, ptr %105, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %135, label %132

132:                                              ; preds = %127, %122, %118, %114, %108
  %133 = load ptr, ptr %109, align 4
  %134 = icmp eq ptr %133, @snd_timer_list
  br i1 %134, label %207, label %108

135:                                              ; preds = %127
  %136 = getelementptr i8, ptr %109, i32 -236
  %137 = icmp eq ptr %136, null
  br i1 %137, label %207, label %138

138:                                              ; preds = %135, %79
  %139 = phi ptr [ %136, %135 ], [ %80, %79 ]
  %140 = getelementptr inbounds %struct.snd_timer, ptr %139, i32 0, i32 15
  %141 = load volatile ptr, ptr %140, align 4
  %142 = icmp eq ptr %141, %140
  br i1 %142, label %148, label %143

143:                                              ; preds = %138
  %144 = getelementptr i8, ptr %141, i32 -56
  %145 = load i32, ptr %144, align 4
  %146 = and i32 %145, 64
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %207

148:                                              ; preds = %143, %138
  %149 = getelementptr inbounds %struct.snd_timer, ptr %139, i32 0, i32 21
  %150 = load i32, ptr %149, align 4
  %151 = getelementptr inbounds %struct.snd_timer, ptr %139, i32 0, i32 20
  %152 = load i32, ptr %151, align 4
  %153 = icmp slt i32 %150, %152
  br i1 %153, label %154, label %207

154:                                              ; preds = %148
  %155 = getelementptr inbounds %struct.snd_timer, ptr %139, i32 0, i32 2
  %156 = load ptr, ptr %155, align 4
  %157 = tail call zeroext i1 @try_module_get(ptr noundef %156) #13
  br i1 %157, label %158, label %207

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.snd_timer, ptr %139, i32 0, i32 1
  %160 = load ptr, ptr %159, align 4
  %161 = icmp eq ptr %160, null
  br i1 %161, label %167, label %162

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.snd_card, ptr %160, i32 0, i32 28
  %164 = tail call ptr @get_device(ptr noundef %163) #13
  %165 = load ptr, ptr %159, align 4
  %166 = getelementptr inbounds %struct.snd_card, ptr %165, i32 0, i32 28
  store ptr %166, ptr %4, align 4
  br label %167

167:                                              ; preds = %162, %158
  %168 = phi ptr [ %166, %162 ], [ null, %158 ]
  %169 = load volatile ptr, ptr %140, align 4
  %170 = icmp eq ptr %169, %140
  br i1 %170, label %171, label %180

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.snd_timer, ptr %139, i32 0, i32 12, i32 5
  %173 = load ptr, ptr %172, align 4
  %174 = icmp eq ptr %173, null
  br i1 %174, label %180, label %175

175:                                              ; preds = %171
  %176 = tail call i32 %173(ptr noundef nonnull %139) #13
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %180, label %178

178:                                              ; preds = %175
  %179 = load ptr, ptr %155, align 4
  tail call void @module_put(ptr noundef %179) #13
  br label %207

180:                                              ; preds = %175, %171, %167
  store ptr %139, ptr %0, align 4
  %181 = getelementptr inbounds %struct.snd_timer_id, ptr %1, i32 0, i32 1
  %182 = load i32, ptr %181, align 4
  %183 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 14
  store i32 %182, ptr %183, align 4
  %184 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 15
  store i32 %2, ptr %184, align 4
  %185 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 16
  %186 = getelementptr inbounds %struct.snd_timer, ptr %139, i32 0, i32 15, i32 1
  %187 = load ptr, ptr %186, align 4
  store ptr %185, ptr %186, align 4
  store ptr %140, ptr %185, align 4
  %188 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 16, i32 1
  store ptr %187, ptr %188, align 4
  store volatile ptr %185, ptr %187, align 4
  %189 = load i32, ptr %149, align 4
  %190 = add i32 %189, 1
  store i32 %190, ptr %149, align 4
  %191 = load ptr, ptr @snd_timer_slave_list, align 4
  %192 = icmp eq ptr %191, @snd_timer_slave_list
  br i1 %192, label %201, label %193

193:                                              ; preds = %193, %180
  %194 = phi ptr [ %195, %193 ], [ %191, %180 ]
  %195 = load ptr, ptr %194, align 4
  %196 = getelementptr i8, ptr %194, i32 -64
  %197 = tail call fastcc i32 @check_matching_master_slave(ptr noundef %0, ptr noundef %196) #13
  %198 = icmp slt i32 %197, 0
  %199 = icmp eq ptr %195, @snd_timer_slave_list
  %200 = select i1 %198, i1 true, i1 %199
  br i1 %200, label %201, label %193

201:                                              ; preds = %193, %180, %39, %29, %15
  %202 = phi i32 [ 0, %15 ], [ 0, %180 ], [ %41, %39 ], [ 0, %29 ], [ %197, %193 ]
  %203 = phi ptr [ null, %15 ], [ %168, %180 ], [ null, %39 ], [ null, %29 ], [ %168, %193 ]
  %204 = icmp slt i32 %202, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %201
  call fastcc void @snd_timer_close_locked(ptr noundef %0, ptr noundef nonnull %4)
  %206 = load ptr, ptr %4, align 4
  br label %207

207:                                              ; preds = %205, %201, %178, %154, %148, %143, %135, %132, %98, %12, %7
  %208 = phi ptr [ %206, %205 ], [ %203, %201 ], [ %168, %178 ], [ null, %143 ], [ null, %7 ], [ null, %12 ], [ null, %135 ], [ null, %148 ], [ null, %154 ], [ null, %98 ], [ null, %132 ]
  %209 = phi i32 [ %202, %205 ], [ 0, %201 ], [ %176, %178 ], [ -16, %143 ], [ -22, %7 ], [ -16, %12 ], [ -19, %135 ], [ -16, %148 ], [ -16, %154 ], [ -19, %98 ], [ -19, %132 ]
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #13
  %210 = icmp slt i32 %209, 0
  %211 = icmp ne ptr %208, null
  %212 = select i1 %210, i1 %211, i1 false
  br i1 %212, label %213, label %214

213:                                              ; preds = %207
  tail call void @put_device(ptr noundef nonnull %208) #13
  br label %214

214:                                              ; preds = %213, %207
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret i32 %209
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @snd_timer_close_locked(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.snd_timer, ptr %3, i32 0, i32 13
  tail call void @_raw_spin_lock_irq(ptr noundef %6) #13
  %7 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = or i32 %8, 131072
  store i32 %9, ptr %7, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %10 = load i16, ptr %6, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  br label %12

12:                                               ; preds = %5, %2
  %13 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 16
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  br label %30

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 16, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %21, ptr %22, align 4
  store volatile ptr %14, ptr %21, align 4
  store volatile ptr %13, ptr %13, align 4
  store ptr %13, ptr %20, align 4
  %23 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = load i32, ptr @num_slaves, align 4
  %29 = add i32 %28, -1
  store i32 %29, ptr @num_slaves, align 4
  br label %30

30:                                               ; preds = %27, %19, %16
  %31 = phi i32 [ %18, %16 ], [ %24, %19 ], [ %24, %27 ]
  %32 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 2
  %33 = and i32 %31, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = tail call fastcc i32 @snd_timer_stop_slave(ptr noundef %0, i1 noundef zeroext true) #13
  br label %39

37:                                               ; preds = %30
  %38 = tail call fastcc i32 @snd_timer_stop1(ptr noundef %0, i1 noundef zeroext true) #13
  br label %39

39:                                               ; preds = %37, %35
  br i1 %4, label %110, label %40

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct.snd_timer, ptr %3, i32 0, i32 21
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, -1
  store i32 %43, ptr %41, align 4
  %44 = getelementptr inbounds %struct.snd_timer, ptr %3, i32 0, i32 13
  tail call void @_raw_spin_lock_irq(ptr noundef %44) #13
  %45 = load i32, ptr %32, align 4
  %46 = and i32 %45, 32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %48, %40
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %49 = load i16, ptr %44, align 4
  %50 = add i16 %49, 1
  store i16 %50, ptr %44, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 2147480) #13
  tail call void @_raw_spin_lock_irq(ptr noundef %44) #13
  %52 = load i32, ptr %32, align 4
  %53 = and i32 %52, 32
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %48

55:                                               ; preds = %48, %40
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %56 = load i16, ptr %44, align 4
  %57 = add i16 %56, 1
  store i16 %57, ptr %44, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @slave_active_lock) #13
  tail call void @_raw_spin_lock(ptr noundef %44) #13
  store ptr null, ptr %0, align 4
  %58 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 19
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, %58
  br i1 %60, label %83, label %61

61:                                               ; preds = %61, %55
  %62 = phi ptr [ %64, %61 ], [ %59, %55 ]
  %63 = getelementptr i8, ptr %62, i32 -64
  %64 = load ptr, ptr %62, align 4
  %65 = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  store ptr %66, ptr %67, align 4
  store volatile ptr %64, ptr %66, align 4
  %68 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @snd_timer_slave_list, i32 0, i32 1), align 4
  store ptr %62, ptr getelementptr inbounds (%struct.list_head, ptr @snd_timer_slave_list, i32 0, i32 1), align 4
  store ptr @snd_timer_slave_list, ptr %62, align 4
  store ptr %68, ptr %65, align 4
  store volatile ptr %62, ptr %68, align 4
  %69 = load i32, ptr %41, align 4
  %70 = add i32 %69, -1
  store i32 %70, ptr %41, align 4
  %71 = getelementptr i8, ptr %62, i32 40
  store ptr null, ptr %71, align 4
  store ptr null, ptr %63, align 4
  %72 = getelementptr i8, ptr %62, i32 16
  %73 = getelementptr i8, ptr %62, i32 20
  %74 = load ptr, ptr %73, align 4
  %75 = load ptr, ptr %72, align 4
  %76 = getelementptr inbounds %struct.list_head, ptr %75, i32 0, i32 1
  store ptr %74, ptr %76, align 4
  store volatile ptr %75, ptr %74, align 4
  store volatile ptr %72, ptr %72, align 4
  store ptr %72, ptr %73, align 4
  %77 = getelementptr i8, ptr %62, i32 8
  %78 = getelementptr i8, ptr %62, i32 12
  %79 = load ptr, ptr %78, align 4
  %80 = load ptr, ptr %77, align 4
  %81 = getelementptr inbounds %struct.list_head, ptr %80, i32 0, i32 1
  store ptr %79, ptr %81, align 4
  store volatile ptr %80, ptr %79, align 4
  store volatile ptr %77, ptr %77, align 4
  store ptr %77, ptr %78, align 4
  %82 = icmp eq ptr %64, %58
  br i1 %82, label %83, label %61

83:                                               ; preds = %61, %55
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %84 = load i16, ptr %44, align 4
  %85 = add i16 %84, 1
  store i16 %85, ptr %44, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %86 = load i16, ptr @slave_active_lock, align 4
  %87 = add i16 %86, 1
  store i16 %87, ptr @slave_active_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  %88 = load i32, ptr %32, align 4
  %89 = and i32 %88, 1
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %110

91:                                               ; preds = %83
  %92 = getelementptr inbounds %struct.snd_timer, ptr %3, i32 0, i32 15
  %93 = load volatile ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, %92
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.snd_timer, ptr %3, i32 0, i32 12, i32 6
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %101, label %99

99:                                               ; preds = %95
  %100 = tail call i32 %97(ptr noundef nonnull %3) #13
  br label %101

101:                                              ; preds = %99, %95, %91
  %102 = getelementptr inbounds %struct.snd_timer, ptr %3, i32 0, i32 1
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.snd_card, ptr %103, i32 0, i32 28
  store ptr %106, ptr %1, align 4
  br label %107

107:                                              ; preds = %105, %101
  %108 = getelementptr inbounds %struct.snd_timer, ptr %3, i32 0, i32 2
  %109 = load ptr, ptr %108, align 4
  tail call void @module_put(ptr noundef %109) #13
  br label %110

110:                                              ; preds = %107, %83, %39
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_timer_close(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  store ptr null, ptr %2, align 4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @register_mutex) #13
  call fastcc void @snd_timer_close_locked(ptr noundef nonnull %0, ptr noundef nonnull %2)
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #13
  %5 = load ptr, ptr %2, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @put_device(ptr noundef nonnull %5) #13
  br label %8

8:                                                ; preds = %7, %4, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_timer_resolution(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.snd_timer, ptr %4, i32 0, i32 13
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #13
  %9 = getelementptr inbounds %struct.snd_timer, ptr %4, i32 0, i32 12, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = tail call i32 %10(ptr noundef nonnull %4) #13
  br label %17

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.snd_timer, ptr %4, i32 0, i32 12, i32 1
  %16 = load i32, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %12
  %18 = phi i32 [ %13, %12 ], [ %16, %14 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #13
  br label %19

19:                                               ; preds = %17, %3, %1
  %20 = phi i32 [ 0, %1 ], [ %18, %17 ], [ 0, %3 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_timer_start(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq i32 %1, 0
  %5 = or i1 %3, %4
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = tail call fastcc i32 @snd_timer_start_slave(ptr noundef nonnull %0, i1 noundef zeroext true)
  br label %15

13:                                               ; preds = %6
  %14 = tail call fastcc i32 @snd_timer_start1(ptr noundef nonnull %0, i1 noundef zeroext true, i32 noundef %1)
  br label %15

15:                                               ; preds = %13, %11, %2
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ], [ -22, %2 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_timer_start_slave(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @slave_active_lock) #13
  %4 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 131072
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %32

8:                                                ; preds = %2
  %9 = and i32 %5, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %8
  %12 = or i32 %5, 2
  store i32 %12, ptr %4, align 4
  %13 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 21
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr %0, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %32, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.snd_timer, ptr %17, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %20) #13
  %21 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 17
  %22 = load ptr, ptr %13, align 4
  %23 = getelementptr inbounds %struct.snd_timer_instance, ptr %22, i32 0, i32 20
  %24 = getelementptr inbounds %struct.snd_timer_instance, ptr %22, i32 0, i32 20, i32 1
  %25 = load ptr, ptr %24, align 4
  store ptr %21, ptr %24, align 4
  store ptr %23, ptr %21, align 4
  %26 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 17, i32 1
  store ptr %25, ptr %26, align 4
  store volatile ptr %21, ptr %25, align 4
  %27 = select i1 %1, i32 2, i32 4
  tail call fastcc void @snd_timer_notify1(ptr noundef %0, i32 noundef %27)
  %28 = load ptr, ptr %0, align 4
  %29 = getelementptr inbounds %struct.snd_timer, ptr %28, i32 0, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %30 = load i16, ptr %29, align 4
  %31 = add i16 %30, 1
  store i16 %31, ptr %29, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  br label %32

32:                                               ; preds = %19, %16, %11, %8, %2
  %33 = phi i32 [ -22, %2 ], [ -16, %8 ], [ 1, %19 ], [ 1, %16 ], [ 1, %11 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @slave_active_lock, i32 noundef %3) #13
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_timer_start1(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %73, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.snd_timer, ptr %4, i32 0, i32 13
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #13
  %9 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 131072
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %71

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.snd_timer, ptr %4, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.snd_card, ptr %15, i32 0, i32 25
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %71

21:                                               ; preds = %17, %13
  %22 = and i32 %10, 6
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %71

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 10
  br i1 %1, label %26, label %28

26:                                               ; preds = %24
  store i32 %2, ptr %25, align 4
  %27 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 9
  store i32 %2, ptr %27, align 4
  br label %32

28:                                               ; preds = %24
  %29 = load i32, ptr %25, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 1, ptr %25, align 4
  br label %32

32:                                               ; preds = %31, %28, %26
  %33 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 11
  store i32 0, ptr %33, align 4
  %34 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 17
  %35 = getelementptr inbounds %struct.snd_timer, ptr %4, i32 0, i32 16
  %36 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 17, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = load ptr, ptr %34, align 4
  %39 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  store ptr %37, ptr %39, align 4
  store volatile ptr %38, ptr %37, align 4
  %40 = getelementptr inbounds %struct.snd_timer, ptr %4, i32 0, i32 16, i32 1
  %41 = load ptr, ptr %40, align 4
  store ptr %34, ptr %40, align 4
  store ptr %35, ptr %34, align 4
  store ptr %41, ptr %36, align 4
  store volatile ptr %34, ptr %41, align 4
  %42 = getelementptr inbounds %struct.snd_timer, ptr %4, i32 0, i32 8
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %32
  %46 = getelementptr inbounds %struct.snd_timer, ptr %4, i32 0, i32 12
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.snd_timer, ptr %4, i32 0, i32 7
  %52 = load i32, ptr %51, align 4
  %53 = or i32 %52, 2
  store i32 %53, ptr %51, align 4
  br label %65

54:                                               ; preds = %32
  br i1 %1, label %55, label %57

55:                                               ; preds = %54
  %56 = getelementptr inbounds %struct.snd_timer, ptr %4, i32 0, i32 9
  store i32 %2, ptr %56, align 4
  br label %57

57:                                               ; preds = %55, %54
  %58 = getelementptr inbounds %struct.snd_timer, ptr %4, i32 0, i32 12, i32 8
  %59 = load ptr, ptr %58, align 4
  %60 = tail call i32 %59(ptr noundef nonnull %4) #13
  %61 = load i32, ptr %42, align 4
  br label %62

62:                                               ; preds = %57, %45
  %63 = phi i32 [ %43, %45 ], [ %61, %57 ]
  %64 = add i32 %63, 1
  store i32 %64, ptr %42, align 4
  br label %65

65:                                               ; preds = %62, %50
  %66 = phi i32 [ 2, %62 ], [ 4, %50 ]
  %67 = phi i32 [ 0, %62 ], [ 1, %50 ]
  %68 = load i32, ptr %9, align 4
  %69 = or i32 %68, %66
  store i32 %69, ptr %9, align 4
  %70 = select i1 %1, i32 2, i32 4
  tail call fastcc void @snd_timer_notify1(ptr noundef %0, i32 noundef %70)
  br label %71

71:                                               ; preds = %65, %21, %17, %6
  %72 = phi i32 [ %67, %65 ], [ -22, %6 ], [ -19, %17 ], [ -16, %21 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #13
  br label %73

73:                                               ; preds = %71, %3
  %74 = phi i32 [ %72, %71 ], [ -22, %3 ]
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_timer_stop(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @snd_timer_stop_slave(ptr noundef %0, i1 noundef zeroext true)
  br label %10

8:                                                ; preds = %1
  %9 = tail call fastcc i32 @snd_timer_stop1(ptr noundef %0, i1 noundef zeroext true)
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_timer_stop_slave(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @slave_active_lock) #13
  %4 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  %8 = and i32 %5, -3
  store i32 %8, ptr %4, align 4
  %9 = load ptr, ptr %0, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %30, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.snd_timer, ptr %9, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %12) #13
  %13 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 18
  %14 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 18, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %13, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %15, ptr %17, align 4
  store volatile ptr %16, ptr %15, align 4
  store volatile ptr %13, ptr %13, align 4
  store ptr %13, ptr %14, align 4
  %18 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 17
  %19 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 17, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %18, align 4
  %22 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  store ptr %20, ptr %22, align 4
  store volatile ptr %21, ptr %20, align 4
  store volatile ptr %18, ptr %18, align 4
  store ptr %18, ptr %19, align 4
  br i1 %7, label %25, label %23

23:                                               ; preds = %11
  %24 = select i1 %1, i32 3, i32 5
  tail call fastcc void @snd_timer_notify1(ptr noundef %0, i32 noundef %24)
  br label %25

25:                                               ; preds = %23, %11
  %26 = load ptr, ptr %0, align 4
  %27 = getelementptr inbounds %struct.snd_timer, ptr %26, i32 0, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %28 = load i16, ptr %27, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr %27, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  br label %30

30:                                               ; preds = %25, %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @slave_active_lock, i32 noundef %3) #13
  %31 = select i1 %7, i32 -16, i32 0
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_timer_stop1(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %117, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.snd_timer, ptr %3, i32 0, i32 13
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #13
  %8 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 18
  %9 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 18, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %10, ptr %12, align 4
  store volatile ptr %11, ptr %10, align 4
  store volatile ptr %8, ptr %8, align 4
  store ptr %8, ptr %9, align 4
  %13 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 17
  %14 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 17, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %13, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %15, ptr %17, align 4
  store volatile ptr %16, ptr %15, align 4
  store volatile ptr %13, ptr %13, align 4
  store ptr %13, ptr %14, align 4
  %18 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 6
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %115, label %22

22:                                               ; preds = %5
  %23 = getelementptr inbounds %struct.snd_timer, ptr %3, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.snd_card, ptr %24, i32 0, i32 25
  %28 = load i32, ptr %27, align 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %115

30:                                               ; preds = %26, %22
  br i1 %1, label %31, label %36

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 9
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 10
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 11
  store i32 0, ptr %35, align 4
  br label %36

36:                                               ; preds = %31, %30
  %37 = and i32 %19, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %109, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.snd_timer, ptr %3, i32 0, i32 8
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, -1
  store i32 %42, ptr %40, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %109

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.snd_timer, ptr %3, i32 0, i32 12, i32 9
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i32 %46(ptr noundef nonnull %3) #13
  %48 = getelementptr inbounds %struct.snd_timer, ptr %3, i32 0, i32 7
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, 2
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %109, label %52

52:                                               ; preds = %44
  %53 = and i32 %49, -3
  store i32 %53, ptr %48, align 4
  %54 = getelementptr inbounds %struct.snd_timer, ptr %3, i32 0, i32 16
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, %54
  br i1 %56, label %86, label %57

57:                                               ; preds = %78, %52
  %58 = phi ptr [ %80, %78 ], [ %55, %52 ]
  %59 = phi i32 [ %79, %78 ], [ -1, %52 ]
  %60 = getelementptr i8, ptr %58, i32 -64
  %61 = load i32, ptr %60, align 4
  %62 = and i32 %61, 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %57
  %65 = and i32 %61, -7
  %66 = or i32 %65, 2
  store i32 %66, ptr %60, align 4
  %67 = load i32, ptr %40, align 4
  %68 = add i32 %67, 1
  store i32 %68, ptr %40, align 4
  %69 = load i32, ptr %60, align 4
  br label %70

70:                                               ; preds = %64, %57
  %71 = phi i32 [ %69, %64 ], [ %61, %57 ]
  %72 = and i32 %71, 2
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = getelementptr i8, ptr %58, i32 -32
  %76 = load i32, ptr %75, align 4
  %77 = tail call i32 @llvm.umin.i32(i32 %59, i32 %76) #13
  br label %78

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %59, %70 ], [ %77, %74 ]
  %80 = load ptr, ptr %58, align 4
  %81 = icmp eq ptr %80, %54
  br i1 %81, label %82, label %57

82:                                               ; preds = %78
  %83 = icmp eq i32 %79, -1
  br i1 %83, label %84, label %89

84:                                               ; preds = %82
  %85 = load i32, ptr %48, align 4
  br label %86

86:                                               ; preds = %84, %52
  %87 = phi i32 [ %85, %84 ], [ %53, %52 ]
  %88 = and i32 %87, -3
  store i32 %88, ptr %48, align 4
  br label %100

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.snd_timer, ptr %3, i32 0, i32 12, i32 4
  %91 = load i32, ptr %90, align 4
  %92 = tail call i32 @llvm.umin.i32(i32 %79, i32 %91) #13
  %93 = icmp eq i32 %92, 0
  %94 = load i32, ptr %48, align 4
  br i1 %93, label %97, label %95

95:                                               ; preds = %89
  %96 = or i32 %94, 1
  store i32 %96, ptr %48, align 4
  br label %97

97:                                               ; preds = %95, %89
  %98 = phi i32 [ %96, %95 ], [ %94, %89 ]
  %99 = getelementptr inbounds %struct.snd_timer, ptr %3, i32 0, i32 9
  store i32 %92, ptr %99, align 4
  br label %100

100:                                              ; preds = %97, %86
  %101 = phi i32 [ %88, %86 ], [ %98, %97 ]
  %102 = and i32 %101, 1
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %100
  %105 = and i32 %101, -2
  store i32 %105, ptr %48, align 4
  %106 = getelementptr inbounds %struct.snd_timer, ptr %3, i32 0, i32 12, i32 8
  %107 = load ptr, ptr %106, align 4
  %108 = tail call i32 %107(ptr noundef nonnull %3) #13
  br label %109

109:                                              ; preds = %104, %100, %44, %39, %36
  %110 = load i32, ptr %18, align 4
  %111 = and i32 %110, -65543
  %112 = or i32 %111, 65536
  %113 = select i1 %1, i32 3, i32 5
  %114 = select i1 %1, i32 %111, i32 %112
  store i32 %114, ptr %18, align 4
  tail call fastcc void @snd_timer_notify1(ptr noundef %0, i32 noundef %113)
  br label %115

115:                                              ; preds = %109, %26, %5
  %116 = phi i32 [ 0, %26 ], [ 0, %109 ], [ -16, %5 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #13
  br label %117

117:                                              ; preds = %115, %2
  %118 = phi i32 [ %116, %115 ], [ -22, %2 ]
  ret i32 %118
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_timer_continue(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 65536
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = and i32 %3, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call fastcc i32 @snd_timer_start_slave(ptr noundef %0, i1 noundef zeroext false)
  br label %13

11:                                               ; preds = %6
  %12 = tail call fastcc i32 @snd_timer_start1(ptr noundef %0, i1 noundef zeroext false, i32 noundef 0)
  br label %13

13:                                               ; preds = %11, %9, %1
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ], [ -22, %1 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_timer_pause(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @snd_timer_stop_slave(ptr noundef %0, i1 noundef zeroext false)
  br label %10

8:                                                ; preds = %1
  %9 = tail call fastcc i32 @snd_timer_stop1(ptr noundef %0, i1 noundef zeroext false)
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_timer_interrupt(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %245, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.snd_timer, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 25
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.snd_timer, ptr %0, i32 0, i32 17
  %14 = getelementptr inbounds %struct.snd_timer, ptr %0, i32 0, i32 13
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #13
  %16 = load volatile ptr, ptr %13, align 4
  %17 = icmp eq ptr %16, %13
  br i1 %17, label %26, label %18

18:                                               ; preds = %18, %12
  %19 = phi ptr [ %24, %18 ], [ %16, %12 ]
  %20 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %19, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %21, ptr %23, align 4
  store volatile ptr %22, ptr %21, align 4
  store volatile ptr %19, ptr %19, align 4
  store ptr %19, ptr %20, align 4
  %24 = load volatile ptr, ptr %13, align 4
  %25 = icmp eq ptr %24, %13
  br i1 %25, label %26, label %18

26:                                               ; preds = %18, %12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %15) #13
  br label %245

27:                                               ; preds = %8, %4
  %28 = getelementptr inbounds %struct.snd_timer, ptr %0, i32 0, i32 13
  %29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %28) #13
  %30 = getelementptr inbounds %struct.snd_timer, ptr %0, i32 0, i32 12, i32 7
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %27
  %34 = tail call i32 %31(ptr noundef nonnull %0) #13
  br label %38

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.snd_timer, ptr %0, i32 0, i32 12, i32 1
  %37 = load i32, ptr %36, align 4
  br label %38

38:                                               ; preds = %35, %33
  %39 = phi i32 [ %34, %33 ], [ %37, %35 ]
  %40 = getelementptr inbounds %struct.snd_timer, ptr %0, i32 0, i32 16
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, %40
  br i1 %42, label %118, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.snd_timer, ptr %0, i32 0, i32 8
  %45 = getelementptr inbounds %struct.snd_timer, ptr %0, i32 0, i32 12
  %46 = getelementptr inbounds %struct.snd_timer, ptr %0, i32 0, i32 17
  %47 = getelementptr inbounds %struct.snd_timer, ptr %0, i32 0, i32 18
  br label %48

48:                                               ; preds = %116, %43
  %49 = phi ptr [ %41, %43 ], [ %50, %116 ]
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr i8, ptr %49, i32 -64
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 131074
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %55, label %116

55:                                               ; preds = %48
  %56 = getelementptr i8, ptr %49, i32 -28
  %57 = load i32, ptr %56, align 4
  %58 = add i32 %57, %1
  store i32 %58, ptr %56, align 4
  %59 = getelementptr i8, ptr %49, i32 -24
  store i32 %39, ptr %59, align 4
  %60 = getelementptr i8, ptr %49, i32 -32
  %61 = load i32, ptr %60, align 4
  %62 = tail call i32 @llvm.usub.sat.i32(i32 %61, i32 %1)
  store i32 %62, ptr %60, align 4
  %63 = icmp ugt i32 %61, %1
  br i1 %63, label %116, label %64

64:                                               ; preds = %55
  %65 = and i32 %52, 8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = getelementptr i8, ptr %49, i32 -36
  %69 = load i32, ptr %68, align 4
  store i32 %69, ptr %60, align 4
  br label %78

70:                                               ; preds = %64
  %71 = and i32 %52, -3
  store i32 %71, ptr %51, align 4
  %72 = load i32, ptr %44, align 4
  %73 = add i32 %72, -1
  store i32 %73, ptr %44, align 4
  %74 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = load ptr, ptr %49, align 4
  %77 = getelementptr inbounds %struct.list_head, ptr %76, i32 0, i32 1
  store ptr %75, ptr %77, align 4
  store volatile ptr %76, ptr %75, align 4
  store volatile ptr %49, ptr %49, align 4
  store ptr %49, ptr %74, align 4
  br label %78

78:                                               ; preds = %70, %67
  %79 = load i32, ptr %45, align 4
  %80 = and i32 %79, 16
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = load i32, ptr %51, align 4
  %84 = and i32 %83, 16
  %85 = icmp eq i32 %84, 0
  %86 = select i1 %85, ptr %47, ptr %46
  br label %87

87:                                               ; preds = %82, %78
  %88 = phi ptr [ %46, %78 ], [ %86, %82 ]
  %89 = getelementptr i8, ptr %49, i32 8
  %90 = load volatile ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, %89
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.list_head, ptr %88, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  store ptr %89, ptr %93, align 4
  store ptr %88, ptr %89, align 4
  %95 = getelementptr i8, ptr %49, i32 12
  store ptr %94, ptr %95, align 4
  store volatile ptr %89, ptr %94, align 4
  br label %96

96:                                               ; preds = %92, %87
  %97 = getelementptr i8, ptr %49, i32 24
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, %97
  br i1 %99, label %116, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.list_head, ptr %88, i32 0, i32 1
  br label %102

102:                                              ; preds = %113, %100
  %103 = phi ptr [ %98, %100 ], [ %114, %113 ]
  %104 = load i32, ptr %56, align 4
  %105 = getelementptr i8, ptr %103, i32 -28
  store i32 %104, ptr %105, align 4
  %106 = getelementptr i8, ptr %103, i32 -24
  store i32 %39, ptr %106, align 4
  %107 = getelementptr i8, ptr %103, i32 8
  %108 = load volatile ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, %107
  br i1 %109, label %110, label %113

110:                                              ; preds = %102
  %111 = load ptr, ptr %101, align 4
  store ptr %107, ptr %101, align 4
  store ptr %88, ptr %107, align 4
  %112 = getelementptr i8, ptr %103, i32 12
  store ptr %111, ptr %112, align 4
  store volatile ptr %107, ptr %111, align 4
  br label %113

113:                                              ; preds = %110, %102
  %114 = load ptr, ptr %103, align 4
  %115 = icmp eq ptr %114, %97
  br i1 %115, label %116, label %102

116:                                              ; preds = %113, %96, %55, %48
  %117 = icmp eq ptr %50, %40
  br i1 %117, label %118, label %48

118:                                              ; preds = %116, %38
  %119 = getelementptr inbounds %struct.snd_timer, ptr %0, i32 0, i32 7
  %120 = load i32, ptr %119, align 4
  %121 = and i32 %120, 2
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %171, label %123

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.snd_timer, ptr %0, i32 0, i32 9
  %125 = load i32, ptr %124, align 4
  %126 = load ptr, ptr %40, align 4
  %127 = icmp eq ptr %126, %40
  br i1 %127, label %159, label %128

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct.snd_timer, ptr %0, i32 0, i32 8
  br label %130

130:                                              ; preds = %151, %128
  %131 = phi ptr [ %126, %128 ], [ %153, %151 ]
  %132 = phi i32 [ -1, %128 ], [ %152, %151 ]
  %133 = getelementptr i8, ptr %131, i32 -64
  %134 = load i32, ptr %133, align 4
  %135 = and i32 %134, 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %143, label %137

137:                                              ; preds = %130
  %138 = and i32 %134, -7
  %139 = or i32 %138, 2
  store i32 %139, ptr %133, align 4
  %140 = load i32, ptr %129, align 4
  %141 = add i32 %140, 1
  store i32 %141, ptr %129, align 4
  %142 = load i32, ptr %133, align 4
  br label %143

143:                                              ; preds = %137, %130
  %144 = phi i32 [ %142, %137 ], [ %134, %130 ]
  %145 = and i32 %144, 2
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %143
  %148 = getelementptr i8, ptr %131, i32 -32
  %149 = load i32, ptr %148, align 4
  %150 = tail call i32 @llvm.umin.i32(i32 %132, i32 %149) #13
  br label %151

151:                                              ; preds = %147, %143
  %152 = phi i32 [ %132, %143 ], [ %150, %147 ]
  %153 = load ptr, ptr %131, align 4
  %154 = icmp eq ptr %153, %40
  br i1 %154, label %155, label %130

155:                                              ; preds = %151
  %156 = icmp eq i32 %152, -1
  br i1 %156, label %157, label %162

157:                                              ; preds = %155
  %158 = load i32, ptr %119, align 4
  br label %159

159:                                              ; preds = %157, %123
  %160 = phi i32 [ %158, %157 ], [ %120, %123 ]
  %161 = and i32 %160, -3
  store i32 %161, ptr %119, align 4
  br label %171

162:                                              ; preds = %155
  %163 = getelementptr inbounds %struct.snd_timer, ptr %0, i32 0, i32 12, i32 4
  %164 = load i32, ptr %163, align 4
  %165 = tail call i32 @llvm.umin.i32(i32 %152, i32 %164) #13
  %166 = icmp eq i32 %165, %125
  br i1 %166, label %170, label %167

167:                                              ; preds = %162
  %168 = load i32, ptr %119, align 4
  %169 = or i32 %168, 1
  store i32 %169, ptr %119, align 4
  br label %170

170:                                              ; preds = %167, %162
  store i32 %165, ptr %124, align 4
  br label %171

171:                                              ; preds = %170, %159, %118
  %172 = getelementptr inbounds %struct.snd_timer, ptr %0, i32 0, i32 8
  %173 = load i32, ptr %172, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %198, label %175

175:                                              ; preds = %171
  %176 = getelementptr inbounds %struct.snd_timer, ptr %0, i32 0, i32 12
  %177 = load i32, ptr %176, align 4
  %178 = and i32 %177, 2
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %187, label %180

180:                                              ; preds = %175
  %181 = getelementptr inbounds %struct.snd_timer, ptr %0, i32 0, i32 12, i32 9
  %182 = load ptr, ptr %181, align 4
  %183 = tail call i32 %182(ptr noundef %0) #13
  %184 = load i32, ptr %119, align 4
  %185 = or i32 %184, 1
  store i32 %185, ptr %119, align 4
  %186 = load i32, ptr %176, align 4
  br label %187

187:                                              ; preds = %180, %175
  %188 = phi i32 [ %186, %180 ], [ %177, %175 ]
  %189 = and i32 %188, 1
  %190 = icmp ne i32 %189, 0
  %191 = load i32, ptr %119, align 4
  %192 = and i32 %191, 1
  %193 = icmp eq i32 %192, 0
  %194 = select i1 %190, i1 %193, i1 false
  br i1 %194, label %204, label %195

195:                                              ; preds = %187
  %196 = and i32 %191, -2
  store i32 %196, ptr %119, align 4
  %197 = getelementptr inbounds %struct.snd_timer, ptr %0, i32 0, i32 12, i32 8
  br label %200

198:                                              ; preds = %171
  %199 = getelementptr inbounds %struct.snd_timer, ptr %0, i32 0, i32 12, i32 9
  br label %200

200:                                              ; preds = %198, %195
  %201 = phi ptr [ %197, %195 ], [ %199, %198 ]
  %202 = load ptr, ptr %201, align 4
  %203 = tail call i32 %202(ptr noundef %0) #13
  br label %204

204:                                              ; preds = %200, %187
  %205 = getelementptr inbounds %struct.snd_timer, ptr %0, i32 0, i32 17
  %206 = load volatile ptr, ptr %205, align 4
  %207 = icmp eq ptr %206, %205
  br i1 %207, label %237, label %208

208:                                              ; preds = %234, %204
  %209 = phi ptr [ %235, %234 ], [ %206, %204 ]
  %210 = getelementptr i8, ptr %209, i32 -80
  %211 = getelementptr inbounds %struct.list_head, ptr %209, i32 0, i32 1
  %212 = load ptr, ptr %211, align 4
  %213 = load ptr, ptr %209, align 4
  %214 = getelementptr inbounds %struct.list_head, ptr %213, i32 0, i32 1
  store ptr %212, ptr %214, align 4
  store volatile ptr %213, ptr %212, align 4
  store volatile ptr %209, ptr %209, align 4
  store ptr %209, ptr %211, align 4
  %215 = getelementptr i8, ptr %209, i32 -72
  %216 = load i32, ptr %215, align 4
  %217 = and i32 %216, 131072
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %234

219:                                              ; preds = %208
  %220 = getelementptr i8, ptr %209, i32 -36
  %221 = load i32, ptr %220, align 4
  store i32 0, ptr %220, align 4
  %222 = getelementptr i8, ptr %209, i32 -32
  %223 = load i32, ptr %222, align 4
  %224 = or i32 %216, 32
  store i32 %224, ptr %215, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %225 = load i16, ptr %28, align 4
  %226 = add i16 %225, 1
  store i16 %226, ptr %28, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  %227 = getelementptr i8, ptr %209, i32 -60
  %228 = load ptr, ptr %227, align 4
  %229 = icmp eq ptr %228, null
  br i1 %229, label %231, label %230

230:                                              ; preds = %219
  tail call void %228(ptr noundef %210, i32 noundef %223, i32 noundef %221) #13
  br label %231

231:                                              ; preds = %230, %219
  tail call void @_raw_spin_lock(ptr noundef %28) #13
  %232 = load i32, ptr %215, align 4
  %233 = and i32 %232, -33
  store i32 %233, ptr %215, align 4
  br label %234

234:                                              ; preds = %231, %208
  %235 = load volatile ptr, ptr %205, align 4
  %236 = icmp eq ptr %235, %205
  br i1 %236, label %237, label %208

237:                                              ; preds = %234, %204
  %238 = getelementptr inbounds %struct.snd_timer, ptr %0, i32 0, i32 18
  %239 = load volatile ptr, ptr %238, align 4
  %240 = icmp eq ptr %239, %238
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %28, i32 noundef %29) #13
  br i1 %240, label %245, label %241

241:                                              ; preds = %237
  %242 = load ptr, ptr @system_highpri_wq, align 4
  %243 = getelementptr inbounds %struct.snd_timer, ptr %0, i32 0, i32 19
  %244 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %242, ptr noundef %243) #13
  br label %245

245:                                              ; preds = %241, %237, %26, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_timer_new(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef writeonly %3) #0 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %60, label %6

6:                                                ; preds = %4
  %7 = load i32, ptr %2, align 4
  %8 = and i32 %7, -2
  %9 = icmp eq i32 %8, 2
  %10 = icmp eq ptr %0, null
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13, !prof !14

12:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 949, i32 noundef 9, ptr noundef null) #13
  br label %60

13:                                               ; preds = %6
  %14 = icmp eq ptr %3, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %13
  store ptr null, ptr %3, align 4
  br label %16

16:                                               ; preds = %15, %13
  %17 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 300) #12
  %19 = icmp eq ptr %18, null
  br i1 %19, label %60, label %20

20:                                               ; preds = %16
  %21 = load i32, ptr %2, align 4
  store i32 %21, ptr %18, align 8
  %22 = getelementptr inbounds %struct.snd_timer, ptr %18, i32 0, i32 1
  store ptr %0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.snd_timer_id, ptr %2, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.snd_timer, ptr %18, i32 0, i32 3
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.snd_timer_id, ptr %2, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.snd_timer, ptr %18, i32 0, i32 4
  store i32 %27, ptr %28, align 8
  %29 = icmp eq ptr %1, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.snd_timer, ptr %18, i32 0, i32 5
  %32 = tail call i32 @strscpy(ptr noundef %31, ptr noundef nonnull %1, i32 noundef 64) #13
  br label %33

33:                                               ; preds = %30, %20
  %34 = getelementptr inbounds %struct.snd_timer, ptr %18, i32 0, i32 9
  store i32 1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.snd_timer, ptr %18, i32 0, i32 14
  store volatile ptr %35, ptr %35, align 4
  %36 = getelementptr inbounds %struct.snd_timer, ptr %18, i32 0, i32 14, i32 1
  store ptr %35, ptr %36, align 8
  %37 = getelementptr inbounds %struct.snd_timer, ptr %18, i32 0, i32 15
  store volatile ptr %37, ptr %37, align 4
  %38 = getelementptr inbounds %struct.snd_timer, ptr %18, i32 0, i32 15, i32 1
  store ptr %37, ptr %38, align 8
  %39 = getelementptr inbounds %struct.snd_timer, ptr %18, i32 0, i32 16
  store volatile ptr %39, ptr %39, align 4
  %40 = getelementptr inbounds %struct.snd_timer, ptr %18, i32 0, i32 16, i32 1
  store ptr %39, ptr %40, align 8
  %41 = getelementptr inbounds %struct.snd_timer, ptr %18, i32 0, i32 17
  store volatile ptr %41, ptr %41, align 4
  %42 = getelementptr inbounds %struct.snd_timer, ptr %18, i32 0, i32 17, i32 1
  store ptr %41, ptr %42, align 8
  %43 = getelementptr inbounds %struct.snd_timer, ptr %18, i32 0, i32 18
  store volatile ptr %43, ptr %43, align 4
  %44 = getelementptr inbounds %struct.snd_timer, ptr %18, i32 0, i32 18, i32 1
  store ptr %43, ptr %44, align 8
  %45 = getelementptr inbounds %struct.snd_timer, ptr %18, i32 0, i32 13
  store i32 0, ptr %45, align 8
  %46 = getelementptr inbounds %struct.snd_timer, ptr %18, i32 0, i32 19
  store i32 -32, ptr %46, align 4
  %47 = getelementptr inbounds %struct.snd_timer, ptr %18, i32 0, i32 19, i32 1
  store volatile ptr %47, ptr %47, align 8
  %48 = getelementptr inbounds %struct.snd_timer, ptr %18, i32 0, i32 19, i32 1, i32 1
  store ptr %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.snd_timer, ptr %18, i32 0, i32 19, i32 2
  store ptr @snd_timer_work, ptr %49, align 8
  %50 = getelementptr inbounds %struct.snd_timer, ptr %18, i32 0, i32 20
  store i32 1000, ptr %50, align 4
  br i1 %10, label %58, label %51

51:                                               ; preds = %33
  %52 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 8
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.snd_timer, ptr %18, i32 0, i32 2
  store ptr %53, ptr %54, align 8
  %55 = tail call i32 @snd_device_new(ptr noundef nonnull %0, i32 noundef 7, ptr noundef nonnull %18, ptr noundef nonnull @snd_timer_new.ops) #13
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  tail call fastcc void @snd_timer_free(ptr noundef nonnull %18)
  br label %60

58:                                               ; preds = %51, %33
  br i1 %14, label %60, label %59

59:                                               ; preds = %58
  store ptr %18, ptr %3, align 4
  br label %60

60:                                               ; preds = %59, %58, %57, %16, %12, %4
  %61 = phi i32 [ -22, %12 ], [ %55, %57 ], [ -22, %4 ], [ -12, %16 ], [ 0, %59 ], [ 0, %58 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_timer_dev_free(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_device, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call fastcc void @snd_timer_free(ptr noundef %3)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_timer_dev_register(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_device, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %79, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.snd_timer, ptr %3, i32 0, i32 12, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %79, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.snd_timer, ptr %3, i32 0, i32 12, i32 9
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %79, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.snd_timer, ptr %3, i32 0, i32 12
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.snd_timer, ptr %3, i32 0, i32 12, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.snd_timer, ptr %3, i32 0, i32 12, i32 7
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %79, label %26

26:                                               ; preds = %22, %18, %13
  tail call void @mutex_lock(ptr noundef nonnull @register_mutex) #13
  %27 = load ptr, ptr @snd_timer_list, align 4
  %28 = icmp eq ptr %27, @snd_timer_list
  br i1 %28, label %71, label %29

29:                                               ; preds = %26
  %30 = load i32, ptr %3, align 4
  %31 = getelementptr inbounds %struct.snd_timer, ptr %3, i32 0, i32 1
  %32 = getelementptr inbounds %struct.snd_timer, ptr %3, i32 0, i32 3
  %33 = getelementptr inbounds %struct.snd_timer, ptr %3, i32 0, i32 4
  br label %34

34:                                               ; preds = %68, %29
  %35 = phi ptr [ %27, %29 ], [ %69, %68 ]
  %36 = getelementptr i8, ptr %35, i32 -236
  %37 = load i32, ptr %36, align 4
  %38 = icmp sgt i32 %37, %30
  br i1 %38, label %71, label %39

39:                                               ; preds = %34
  %40 = icmp slt i32 %37, %30
  br i1 %40, label %68, label %41

41:                                               ; preds = %39
  %42 = getelementptr i8, ptr %35, i32 -232
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %54, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr %31, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %45
  %49 = load i32, ptr %43, align 8
  %50 = load i32, ptr %46, align 8
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %71, label %52

52:                                               ; preds = %48
  %53 = icmp slt i32 %49, %50
  br i1 %53, label %68, label %54

54:                                               ; preds = %52, %45, %41
  %55 = getelementptr i8, ptr %35, i32 -224
  %56 = load i32, ptr %55, align 4
  %57 = load i32, ptr %32, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %71, label %59

59:                                               ; preds = %54
  %60 = icmp slt i32 %56, %57
  br i1 %60, label %68, label %61

61:                                               ; preds = %59
  %62 = getelementptr i8, ptr %35, i32 -220
  %63 = load i32, ptr %62, align 4
  %64 = load i32, ptr %33, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = icmp slt i32 %63, %64
  br i1 %67, label %68, label %77

68:                                               ; preds = %66, %59, %52, %39
  %69 = load ptr, ptr %35, align 4
  %70 = icmp eq ptr %69, @snd_timer_list
  br i1 %70, label %71, label %34

71:                                               ; preds = %68, %61, %54, %48, %34, %26
  %72 = phi ptr [ @snd_timer_list, %26 ], [ %35, %61 ], [ %35, %54 ], [ %35, %48 ], [ %35, %34 ], [ @snd_timer_list, %68 ]
  %73 = getelementptr inbounds %struct.snd_timer, ptr %3, i32 0, i32 14
  %74 = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  store ptr %73, ptr %74, align 4
  store ptr %72, ptr %73, align 4
  %76 = getelementptr inbounds %struct.snd_timer, ptr %3, i32 0, i32 14, i32 1
  store ptr %75, ptr %76, align 4
  store volatile ptr %73, ptr %75, align 4
  br label %77

77:                                               ; preds = %71, %66
  %78 = phi i32 [ 0, %71 ], [ -16, %66 ]
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #13
  br label %79

79:                                               ; preds = %77, %22, %9, %5, %1
  %80 = phi i32 [ -6, %9 ], [ -22, %22 ], [ -6, %5 ], [ -6, %1 ], [ %78, %77 ]
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_timer_dev_disconnect(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_device, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void @mutex_lock(ptr noundef nonnull @register_mutex) #13
  %4 = getelementptr inbounds %struct.snd_timer, ptr %3, i32 0, i32 14
  %5 = getelementptr inbounds %struct.snd_timer, ptr %3, i32 0, i32 14, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %6, ptr %8, align 4
  store volatile ptr %7, ptr %6, align 4
  store volatile ptr %4, ptr %4, align 4
  store ptr %4, ptr %5, align 4
  %9 = getelementptr inbounds %struct.snd_timer, ptr %3, i32 0, i32 15
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %22, label %12

12:                                               ; preds = %19, %1
  %13 = phi ptr [ %20, %19 ], [ %10, %1 ]
  %14 = getelementptr i8, ptr %13, i32 -36
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = getelementptr i8, ptr %13, i32 -64
  tail call void %15(ptr noundef %18) #13
  br label %19

19:                                               ; preds = %17, %12
  %20 = load ptr, ptr %13, align 4
  %21 = icmp eq ptr %20, %9
  br i1 %21, label %22, label %12

22:                                               ; preds = %19, %1
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_timer_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -272
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 25
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %0, i32 -8
  %11 = getelementptr i8, ptr %0, i32 -44
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #13
  %13 = load volatile ptr, ptr %10, align 4
  %14 = icmp eq ptr %13, %10
  br i1 %14, label %23, label %15

15:                                               ; preds = %15, %9
  %16 = phi ptr [ %21, %15 ], [ %13, %9 ]
  %17 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %16, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %18, ptr %20, align 4
  store volatile ptr %19, ptr %18, align 4
  store volatile ptr %16, ptr %16, align 4
  store ptr %16, ptr %17, align 4
  %21 = load volatile ptr, ptr %10, align 4
  %22 = icmp eq ptr %21, %10
  br i1 %22, label %23, label %15

23:                                               ; preds = %15, %9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #13
  br label %60

24:                                               ; preds = %5, %1
  %25 = getelementptr i8, ptr %0, i32 -44
  %26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %25) #13
  %27 = getelementptr i8, ptr %0, i32 -8
  %28 = load volatile ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %27
  br i1 %29, label %59, label %30

30:                                               ; preds = %56, %24
  %31 = phi ptr [ %57, %56 ], [ %28, %24 ]
  %32 = getelementptr i8, ptr %31, i32 -80
  %33 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %31, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  store ptr %34, ptr %36, align 4
  store volatile ptr %35, ptr %34, align 4
  store volatile ptr %31, ptr %31, align 4
  store ptr %31, ptr %33, align 4
  %37 = getelementptr i8, ptr %31, i32 -72
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 131072
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %30
  %42 = getelementptr i8, ptr %31, i32 -36
  %43 = load i32, ptr %42, align 4
  store i32 0, ptr %42, align 4
  %44 = getelementptr i8, ptr %31, i32 -32
  %45 = load i32, ptr %44, align 4
  %46 = or i32 %38, 32
  store i32 %46, ptr %37, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %47 = load i16, ptr %25, align 4
  %48 = add i16 %47, 1
  store i16 %48, ptr %25, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  %49 = getelementptr i8, ptr %31, i32 -60
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %41
  tail call void %50(ptr noundef %32, i32 noundef %45, i32 noundef %43) #13
  br label %53

53:                                               ; preds = %52, %41
  tail call void @_raw_spin_lock(ptr noundef %25) #13
  %54 = load i32, ptr %37, align 4
  %55 = and i32 %54, -33
  store i32 %55, ptr %37, align 4
  br label %56

56:                                               ; preds = %53, %30
  %57 = load volatile ptr, ptr %27, align 4
  %58 = icmp eq ptr %57, %27
  br i1 %58, label %59, label %30

59:                                               ; preds = %56, %24
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %25, i32 noundef %26) #13
  br label %60

60:                                               ; preds = %59, %23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_device_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @snd_timer_free(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @register_mutex) #13
  %4 = getelementptr inbounds %struct.snd_timer, ptr %0, i32 0, i32 15
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %19, label %7

7:                                                ; preds = %3
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull %0) #14
  %9 = load ptr, ptr %4, align 4
  %10 = icmp eq ptr %9, %4
  br i1 %10, label %19, label %11

11:                                               ; preds = %11, %7
  %12 = phi ptr [ %13, %11 ], [ %9, %7 ]
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %15, ptr %16, align 4
  store volatile ptr %13, ptr %15, align 4
  store volatile ptr %12, ptr %12, align 4
  store ptr %12, ptr %14, align 4
  %17 = getelementptr i8, ptr %12, i32 -64
  store ptr null, ptr %17, align 4
  %18 = icmp eq ptr %13, %4
  br i1 %18, label %19, label %11

19:                                               ; preds = %11, %7, %3
  %20 = getelementptr inbounds %struct.snd_timer, ptr %0, i32 0, i32 14
  %21 = getelementptr inbounds %struct.snd_timer, ptr %0, i32 0, i32 14, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %20, align 4
  %24 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  store ptr %22, ptr %24, align 4
  store volatile ptr %23, ptr %22, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %20, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %21, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #13
  %25 = getelementptr inbounds %struct.snd_timer, ptr %0, i32 0, i32 11
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %19
  tail call void %26(ptr noundef nonnull %0) #13
  br label %29

29:                                               ; preds = %28, %19
  tail call void @kfree(ptr noundef nonnull %0) #13
  br label %30

30:                                               ; preds = %29, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_timer_notify(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_timer, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.snd_card, ptr %5, i32 0, i32 25
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %61

11:                                               ; preds = %7, %3
  %12 = getelementptr inbounds %struct.snd_timer, ptr %0, i32 0, i32 12
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  %16 = add i32 %1, -19
  %17 = icmp ult i32 %16, -7
  %18 = or i1 %17, %15
  br i1 %18, label %61, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.snd_timer, ptr %0, i32 0, i32 13
  %21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %20) #13
  switch i32 %1, label %31 [
    i32 18, label %22
    i32 14, label %22
    i32 12, label %22
  ]

22:                                               ; preds = %19, %19, %19
  %23 = getelementptr inbounds %struct.snd_timer, ptr %0, i32 0, i32 12, i32 7
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = tail call i32 %24(ptr noundef %0) #13
  br label %31

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.snd_timer, ptr %0, i32 0, i32 12, i32 1
  %30 = load i32, ptr %29, align 4
  br label %31

31:                                               ; preds = %28, %26, %19
  %32 = phi i32 [ 0, %19 ], [ %27, %26 ], [ %30, %28 ]
  %33 = getelementptr inbounds %struct.snd_timer, ptr %0, i32 0, i32 16
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %33
  br i1 %35, label %60, label %39

36:                                               ; preds = %57, %46
  %37 = load ptr, ptr %40, align 4
  %38 = icmp eq ptr %37, %33
  br i1 %38, label %60, label %39

39:                                               ; preds = %36, %31
  %40 = phi ptr [ %37, %36 ], [ %34, %31 ]
  %41 = getelementptr i8, ptr %40, i32 -48
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %39
  %45 = getelementptr i8, ptr %40, i32 -72
  tail call void %42(ptr noundef %45, i32 noundef %1, ptr noundef %2, i32 noundef %32) #13
  br label %46

46:                                               ; preds = %44, %39
  %47 = getelementptr i8, ptr %40, i32 24
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, %47
  br i1 %49, label %36, label %50

50:                                               ; preds = %57, %46
  %51 = phi ptr [ %58, %57 ], [ %48, %46 ]
  %52 = getelementptr i8, ptr %51, i32 -48
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %50
  %56 = getelementptr i8, ptr %51, i32 -72
  tail call void %53(ptr noundef %56, i32 noundef %1, ptr noundef %2, i32 noundef %32) #13
  br label %57

57:                                               ; preds = %55, %50
  %58 = load ptr, ptr %51, align 4
  %59 = icmp eq ptr %58, %47
  br i1 %59, label %36, label %50

60:                                               ; preds = %36, %31
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %21) #13
  br label %61

61:                                               ; preds = %60, %11, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_timer_global_new(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.snd_timer_id, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #13
  store i32 1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.snd_timer_id, ptr %4, i32 0, i32 1
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.snd_timer_id, ptr %4, i32 0, i32 2
  store i32 -1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.snd_timer_id, ptr %4, i32 0, i32 3
  store i32 %1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.snd_timer_id, ptr %4, i32 0, i32 4
  store i32 0, ptr %8, align 4
  %9 = call i32 @snd_timer_new(ptr noundef null, ptr noundef %0, ptr noundef nonnull %4, ptr noundef %2)
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #13
  ret i32 %9
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_timer_global_free(ptr noundef %0) #0 {
  tail call fastcc void @snd_timer_free(ptr noundef %0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_timer_global_register(ptr noundef %0) #0 {
  %2 = alloca %struct.snd_device, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #13
  %3 = getelementptr inbounds %struct.snd_device, ptr %2, i32 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  store ptr %0, ptr %3, align 4
  %4 = call i32 @snd_timer_dev_register(ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #13
  ret i32 %4
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #5 section ".init.text" {
  %1 = alloca %struct.snd_device, align 4
  %2 = alloca %struct.snd_timer_id, align 4
  %3 = alloca ptr, align 4
  tail call void @snd_device_initialize(ptr noundef nonnull @timer_dev, ptr noundef null) #13
  %4 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull @timer_dev, ptr noundef nonnull @.str.4) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store ptr null, ptr %3, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #13
  store i32 1, ptr %2, align 4
  %5 = getelementptr inbounds %struct.snd_timer_id, ptr %2, i32 0, i32 1
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.snd_timer_id, ptr %2, i32 0, i32 2
  store i32 -1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.snd_timer_id, ptr %2, i32 0, i32 3
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.snd_timer_id, ptr %2, i32 0, i32 4
  store i32 0, ptr %8, align 4
  %9 = call i32 @snd_timer_new(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull %2, ptr noundef nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #13
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %0
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr inbounds %struct.snd_timer, ptr %12, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(13) %13, ptr noundef nonnull align 1 dereferenceable(13) @.str.8, i32 13, i1 false) #13
  %14 = getelementptr inbounds %struct.snd_timer, ptr %12, i32 0, i32 12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %14, ptr noundef nonnull align 4 dereferenceable(48) @snd_timer_system, i32 48, i1 false) #13
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %16 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 36) #12
  %17 = icmp eq ptr %16, null
  %18 = load ptr, ptr %3, align 4
  br i1 %17, label %19, label %22

19:                                               ; preds = %11
  call fastcc void @snd_timer_free(ptr noundef %18) #13
  br label %20

20:                                               ; preds = %19, %0
  %21 = phi i32 [ %9, %0 ], [ -12, %19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  br label %30

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.snd_timer_system_private, ptr %16, i32 0, i32 1
  store ptr %18, ptr %23, align 4
  call void @init_timer_key(ptr noundef nonnull %16, ptr noundef nonnull @snd_timer_s_function, i32 noundef 0, ptr noundef null, ptr noundef null) #13
  %24 = load ptr, ptr %3, align 4
  %25 = getelementptr inbounds %struct.snd_timer, ptr %24, i32 0, i32 10
  store ptr %16, ptr %25, align 4
  %26 = getelementptr inbounds %struct.snd_timer, ptr %24, i32 0, i32 11
  store ptr @snd_timer_free_system, ptr %26, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %1) #13
  %27 = getelementptr inbounds %struct.snd_device, ptr %1, i32 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %1, i8 0, i64 28, i1 false) #13
  store ptr %24, ptr %27, align 4
  %28 = call i32 @snd_timer_dev_register(ptr noundef nonnull %1) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %1) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22, %20
  %31 = phi i32 [ %21, %20 ], [ %28, %22 ]
  %32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %31) #14
  br label %46

33:                                               ; preds = %22
  %34 = call i32 @snd_register_device(i32 noundef 2, ptr noundef null, i32 noundef 0, ptr noundef nonnull @snd_timer_f_ops, ptr noundef null, ptr noundef nonnull @timer_dev) #13
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %34) #14
  %38 = load ptr, ptr @snd_timer_list, align 4
  %39 = icmp eq ptr %38, @snd_timer_list
  br i1 %39, label %46, label %40

40:                                               ; preds = %40, %36
  %41 = phi ptr [ %43, %40 ], [ %38, %36 ]
  %42 = getelementptr i8, ptr %41, i32 -236
  %43 = load ptr, ptr %41, align 4
  call fastcc void @snd_timer_free(ptr noundef %42) #13
  %44 = icmp eq ptr %43, @snd_timer_list
  br i1 %44, label %46, label %40

45:                                               ; preds = %33
  call fastcc void @snd_timer_proc_init() #15
  br label %48

46:                                               ; preds = %40, %36, %30
  %47 = phi i32 [ %31, %30 ], [ %34, %36 ], [ %34, %40 ]
  call void @put_device(ptr noundef nonnull @timer_dev) #13
  br label %48

48:                                               ; preds = %46, %45
  %49 = phi i32 [ %47, %46 ], [ 0, %45 ]
  ret i32 %49
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #5 section ".exit.text" {
  %1 = tail call i32 @snd_unregister_device(ptr noundef nonnull @timer_dev) #13
  %2 = load ptr, ptr @snd_timer_list, align 4
  %3 = icmp eq ptr %2, @snd_timer_list
  br i1 %3, label %9, label %4

4:                                                ; preds = %4, %0
  %5 = phi ptr [ %7, %4 ], [ %2, %0 ]
  %6 = getelementptr i8, ptr %5, i32 -236
  %7 = load ptr, ptr %5, align 4
  tail call fastcc void @snd_timer_free(ptr noundef %6) #13
  %8 = icmp eq ptr %7, @snd_timer_list
  br i1 %8, label %9, label %4

9:                                                ; preds = %4, %0
  tail call void @put_device(ptr noundef nonnull @timer_dev) #13
  %10 = load ptr, ptr @snd_timer_proc_entry, align 4
  tail call void @snd_info_free_entry(ptr noundef %10) #13
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @check_matching_master_slave(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.snd_timer_instance, ptr %1, i32 0, i32 14
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 14
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %55

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.snd_timer_instance, ptr %1, i32 0, i32 15
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 15
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %55

14:                                               ; preds = %8
  %15 = load ptr, ptr %0, align 4
  %16 = getelementptr inbounds %struct.snd_timer, ptr %15, i32 0, i32 21
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.snd_timer, ptr %15, i32 0, i32 20
  %19 = load i32, ptr %18, align 4
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %55

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.snd_timer_instance, ptr %1, i32 0, i32 16
  %23 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 19
  %24 = getelementptr inbounds %struct.snd_timer_instance, ptr %1, i32 0, i32 16, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %22, align 4
  %27 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  store ptr %25, ptr %27, align 4
  store volatile ptr %26, ptr %25, align 4
  %28 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 19, i32 1
  %29 = load ptr, ptr %28, align 4
  store ptr %22, ptr %28, align 4
  store ptr %23, ptr %22, align 4
  store ptr %29, ptr %24, align 4
  store volatile ptr %22, ptr %29, align 4
  %30 = load ptr, ptr %0, align 4
  %31 = getelementptr inbounds %struct.snd_timer, ptr %30, i32 0, i32 21
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr %31, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @slave_active_lock) #13
  %34 = load ptr, ptr %0, align 4
  %35 = getelementptr inbounds %struct.snd_timer, ptr %34, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %35) #13
  %36 = getelementptr inbounds %struct.snd_timer_instance, ptr %1, i32 0, i32 21
  store ptr %0, ptr %36, align 4
  %37 = load ptr, ptr %0, align 4
  store ptr %37, ptr %1, align 4
  %38 = getelementptr inbounds %struct.snd_timer_instance, ptr %1, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %21
  %43 = getelementptr inbounds %struct.snd_timer_instance, ptr %1, i32 0, i32 17
  %44 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 20
  %45 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 20, i32 1
  %46 = load ptr, ptr %45, align 4
  store ptr %43, ptr %45, align 4
  store ptr %44, ptr %43, align 4
  %47 = getelementptr inbounds %struct.snd_timer_instance, ptr %1, i32 0, i32 17, i32 1
  store ptr %46, ptr %47, align 4
  store volatile ptr %43, ptr %46, align 4
  br label %48

48:                                               ; preds = %42, %21
  %49 = load ptr, ptr %0, align 4
  %50 = getelementptr inbounds %struct.snd_timer, ptr %49, i32 0, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %51 = load i16, ptr %50, align 4
  %52 = add i16 %51, 1
  store i16 %52, ptr %50, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %53 = load i16, ptr @slave_active_lock, align 4
  %54 = add i16 %53, 1
  store i16 %54, ptr @slave_active_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  br label %55

55:                                               ; preds = %48, %14, %8, %2
  %56 = phi i32 [ 1, %48 ], [ 0, %8 ], [ 0, %2 ], [ -16, %14 ]
  ret i32 %56
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @snd_timer_notify1(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.timespec64, align 8
  %4 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !15
  %5 = load i32, ptr @timer_tstamp_monotonic, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  call void @ktime_get_ts64(ptr noundef nonnull %3) #13
  br label %9

8:                                                ; preds = %2
  call void @ktime_get_real_ts64(ptr noundef nonnull %3) #13
  br label %9

9:                                                ; preds = %8, %7
  %10 = icmp eq ptr %4, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %9
  switch i32 %1, label %21 [
    i32 4, label %12
    i32 2, label %12
  ]

12:                                               ; preds = %11, %11
  %13 = getelementptr inbounds %struct.snd_timer, ptr %4, i32 0, i32 12, i32 7
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = call i32 %14(ptr noundef nonnull %4) #13
  br label %21

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.snd_timer, ptr %4, i32 0, i32 12, i32 1
  %20 = load i32, ptr %19, align 4
  br label %21

21:                                               ; preds = %18, %16, %11, %9
  %22 = phi i32 [ 0, %11 ], [ 0, %9 ], [ %17, %16 ], [ %20, %18 ]
  %23 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 6
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  call void %24(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %3, i32 noundef %22) #13
  br label %27

27:                                               ; preds = %26, %21
  %28 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 1
  %31 = icmp ne i32 %30, 0
  %32 = select i1 %31, i1 true, i1 %10
  br i1 %32, label %53, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.snd_timer, ptr %4, i32 0, i32 12
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %33
  %39 = add i32 %1, 10
  %40 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 20
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, %40
  br i1 %42, label %53, label %43

43:                                               ; preds = %50, %38
  %44 = phi ptr [ %51, %50 ], [ %41, %38 ]
  %45 = getelementptr i8, ptr %44, i32 -48
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  %49 = getelementptr i8, ptr %44, i32 -72
  call void %46(ptr noundef %49, i32 noundef %39, ptr noundef nonnull %3, i32 noundef %22) #13
  br label %50

50:                                               ; preds = %48, %43
  %51 = load ptr, ptr %44, align 4
  %52 = icmp eq ptr %51, %40
  br i1 %52, label %53, label %43

53:                                               ; preds = %50, %38, %33, %27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_device_initialize(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_register_device(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @snd_timer_proc_init() unnamed_addr #5 section ".init.text" {
  %1 = tail call ptr @snd_info_create_module_entry(ptr noundef nonnull @__this_module, ptr noundef nonnull @.str.16, ptr noundef null) #13
  %2 = icmp eq ptr %1, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.snd_info_entry, ptr %1, i32 0, i32 4
  store ptr @snd_timer_proc_read, ptr %4, align 4
  %5 = tail call i32 @snd_info_register(ptr noundef nonnull %1) #13
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @snd_info_free_entry(ptr noundef nonnull %1) #13
  br label %8

8:                                                ; preds = %7, %3, %0
  %9 = phi ptr [ null, %7 ], [ %1, %3 ], [ null, %0 ]
  store ptr %9, ptr @snd_timer_proc_entry, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_timer_s_function(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.snd_timer_system_private, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load volatile i32, ptr @jiffies, align 64
  %5 = getelementptr inbounds %struct.snd_timer_system_private, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = sub i32 %6, %4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = sub i32 %4, %6
  %11 = getelementptr inbounds %struct.snd_timer_system_private, ptr %0, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %10, %12
  store i32 %13, ptr %11, align 4
  br label %14

14:                                               ; preds = %9, %1
  %15 = getelementptr inbounds %struct.snd_timer_system_private, ptr %0, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = sub i32 %4, %16
  tail call void @snd_timer_interrupt(ptr noundef %3, i32 noundef %17)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_timer_free_system(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_timer, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_timer_s_close(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_timer, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @del_timer_sync(ptr noundef %3) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_timer_s_start(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_timer, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = load volatile i32, ptr @jiffies, align 64
  %5 = getelementptr inbounds %struct.snd_timer_system_private, ptr %3, i32 0, i32 3
  store i32 %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.snd_timer_system_private, ptr %3, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_timer, ptr %0, i32 0, i32 9
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -1
  %11 = icmp ugt i32 %7, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = sub i32 %7, %10
  store i32 %13, ptr %6, align 4
  %14 = add i32 %4, 1
  br label %18

15:                                               ; preds = %1
  %16 = sub i32 %4, %7
  %17 = add i32 %16, %9
  store i32 0, ptr %6, align 4
  br label %18

18:                                               ; preds = %15, %12
  %19 = phi i32 [ %14, %12 ], [ %17, %15 ]
  %20 = getelementptr inbounds %struct.snd_timer_system_private, ptr %3, i32 0, i32 2
  store i32 %19, ptr %20, align 4
  %21 = tail call i32 @mod_timer(ptr noundef %3, i32 noundef %19) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_timer_s_stop(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.snd_timer, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @del_timer(ptr noundef %3) #13
  %5 = load volatile i32, ptr @jiffies, align 64
  %6 = getelementptr inbounds %struct.snd_timer_system_private, ptr %3, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = sub i32 %5, %7
  %9 = icmp slt i32 %8, 0
  %10 = sub i32 %7, %5
  %11 = select i1 %9, i32 %10, i32 1
  %12 = getelementptr inbounds %struct.snd_timer, ptr %0, i32 0, i32 9
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.snd_timer_system_private, ptr %3, i32 0, i32 4
  store i32 0, ptr %13, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_timer_user_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca %struct.snd_timer_tread32, align 4
  %6 = alloca %struct.wait_queue_entry, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !15
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.snd_timer_user, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp ult i32 %10, 3
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = load i1, ptr @snd_timer_user_read.__already_done, align 1
  br i1 %13, label %140, label %14, !prof !16

14:                                               ; preds = %12
  store i1 true, ptr @snd_timer_user_read.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2163, i32 noundef 9, ptr noundef nonnull @.str.9) #13
  br label %140

15:                                               ; preds = %4
  %16 = getelementptr inbounds [3 x i32], ptr @switch.table.snd_timer_user_read, i32 0, i32 %10
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.snd_timer_user, ptr %8, i32 0, i32 17
  tail call void @mutex_lock(ptr noundef %18) #13
  %19 = getelementptr inbounds %struct.snd_timer_user, ptr %8, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %19) #13
  %20 = icmp sgt i32 %17, %2
  br i1 %20, label %133, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.snd_timer_user, ptr %8, i32 0, i32 6
  %23 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %24 = getelementptr inbounds %struct.wait_queue_entry, ptr %6, i32 0, i32 1
  %25 = getelementptr inbounds %struct.wait_queue_entry, ptr %6, i32 0, i32 2
  %26 = getelementptr inbounds %struct.snd_timer_user, ptr %8, i32 0, i32 15
  %27 = getelementptr inbounds %struct.snd_timer_user, ptr %8, i32 0, i32 8
  %28 = getelementptr inbounds %struct.snd_timer_user, ptr %8, i32 0, i32 4
  %29 = getelementptr inbounds %struct.snd_timer_user, ptr %8, i32 0, i32 7
  %30 = getelementptr inbounds %struct.snd_timer_user, ptr %8, i32 0, i32 10
  %31 = getelementptr inbounds %struct.snd_timer_user, ptr %8, i32 0, i32 9
  %32 = getelementptr inbounds i8, ptr %5, i32 4
  %33 = getelementptr inbounds i8, ptr %5, i32 8
  %34 = getelementptr inbounds i8, ptr %5, i32 12
  br label %35

35:                                               ; preds = %128, %21
  %36 = phi ptr [ %1, %21 ], [ %130, %128 ]
  %37 = phi i32 [ 0, %21 ], [ %129, %128 ]
  %38 = load i32, ptr %22, align 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %67

40:                                               ; preds = %35
  %41 = icmp sgt i32 %37, 0
  br label %42

42:                                               ; preds = %64, %40
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 20, i1 false), !annotation !15
  %43 = load i32, ptr %23, align 4
  %44 = and i32 %43, 2048
  %45 = icmp ne i32 %44, 0
  %46 = select i1 %45, i1 true, i1 %41
  br i1 %46, label %62, label %47

47:                                               ; preds = %42
  %48 = tail call ptr @llvm.thread.pointer() #13
  %49 = getelementptr inbounds %struct.task_struct, ptr %48, i32 0, i32 1
  store volatile i32 1, ptr %49, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !17
  store i32 0, ptr %6, align 4
  store ptr %48, ptr %24, align 4
  store ptr @default_wake_function, ptr %25, align 4
  call void @add_wait_queue(ptr noundef %26, ptr noundef nonnull %6) #13
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %50 = load i16, ptr %19, align 4
  %51 = add i16 %50, 1
  store i16 %51, ptr %19, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  call void @mutex_unlock(ptr noundef %18) #13
  call void @schedule() #13
  call void @mutex_lock(ptr noundef %18) #13
  call void @_raw_spin_lock_irq(ptr noundef %19) #13
  call void @remove_wait_queue(ptr noundef %26, ptr noundef nonnull %6) #13
  %52 = load i8, ptr %27, align 8, !range !18
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %47
  %55 = load volatile i32, ptr %48, align 4
  %56 = and i32 %55, 256
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62, !prof !16

58:                                               ; preds = %54
  %59 = load volatile i32, ptr %48, align 4
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %58, %54, %47, %42
  %63 = phi i32 [ -512, %58 ], [ -19, %47 ], [ -11, %42 ], [ -512, %54 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #13
  br label %133

64:                                               ; preds = %58
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #13
  %65 = load i32, ptr %22, align 8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %42, label %67

67:                                               ; preds = %64, %35
  %68 = phi i32 [ %38, %35 ], [ %65, %64 ]
  %69 = load i32, ptr %28, align 8
  %70 = add i32 %69, 1
  %71 = load i32, ptr %29, align 4
  %72 = srem i32 %70, %71
  store i32 %72, ptr %28, align 8
  %73 = add i32 %68, -1
  store i32 %73, ptr %22, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %74 = load i16, ptr %19, align 4
  %75 = add i16 %74, 1
  store i16 %75, ptr %19, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  %76 = load ptr, ptr %30, align 8
  %77 = getelementptr %struct.snd_timer_tread64, ptr %76, i32 %69
  %78 = load i32, ptr %9, align 4
  switch i32 %78, label %126 [
    i32 1, label %79
    i32 2, label %91
    i32 0, label %112
  ]

79:                                               ; preds = %67
  %80 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %36, i32 32, i32 -1090519040) #16, !srcloc !19
  %81 = extractvalue { i32, i32 } %80, 0
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %126

83:                                               ; preds = %79
  %84 = tail call ptr @llvm.thread.pointer() #13
  %85 = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 3
  %86 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %85) #17, !srcloc !20
  %87 = and i32 %86, -13
  %88 = or i32 %87, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %88) #13, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !22
  %89 = call i32 @arm_copy_to_user(ptr noundef %36, ptr noundef %77, i32 noundef 32) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %86) #13, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !22
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %128, label %126

91:                                               ; preds = %67
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false)
  %92 = load i32, ptr %77, align 8
  %93 = getelementptr %struct.snd_timer_tread64, ptr %76, i32 %69, i32 2
  %94 = load i64, ptr %93, align 8
  %95 = trunc i64 %94 to i32
  %96 = getelementptr %struct.snd_timer_tread64, ptr %76, i32 %69, i32 3
  %97 = load i64, ptr %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = getelementptr %struct.snd_timer_tread64, ptr %76, i32 %69, i32 4
  %100 = load i32, ptr %99, align 8
  store i32 %92, ptr %5, align 4
  store i32 %95, ptr %32, align 4
  store i32 %98, ptr %33, align 4
  store i32 %100, ptr %34, align 4
  %101 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %36, i32 16, i32 -1090519040) #16, !srcloc !19
  %102 = extractvalue { i32, i32 } %101, 0
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %126

104:                                              ; preds = %91
  %105 = tail call ptr @llvm.thread.pointer() #13
  %106 = getelementptr inbounds %struct.thread_info, ptr %105, i32 0, i32 3
  %107 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %106) #17, !srcloc !20
  %108 = and i32 %107, -13
  %109 = or i32 %108, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %109) #13, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !22
  %110 = call i32 @arm_copy_to_user(ptr noundef %36, ptr noundef nonnull %5, i32 noundef 16) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %107) #13, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !22
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %128, label %126

112:                                              ; preds = %67
  %113 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %36, i32 8, i32 -1090519040) #16, !srcloc !19
  %114 = extractvalue { i32, i32 } %113, 0
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %112
  %117 = load ptr, ptr %31, align 4
  %118 = getelementptr %struct.snd_timer_read, ptr %117, i32 %69
  %119 = tail call ptr @llvm.thread.pointer() #13
  %120 = getelementptr inbounds %struct.thread_info, ptr %119, i32 0, i32 3
  %121 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %120) #17, !srcloc !20
  %122 = and i32 %121, -13
  %123 = or i32 %122, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %123) #13, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !22
  %124 = call i32 @arm_copy_to_user(ptr noundef %36, ptr noundef %118, i32 noundef 8) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %121) #13, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !22
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %116, %112, %104, %91, %83, %79, %67
  %127 = phi i32 [ -14, %112 ], [ -14, %91 ], [ -14, %79 ], [ -14, %116 ], [ -14, %104 ], [ -14, %83 ], [ -524, %67 ]
  call void @_raw_spin_lock_irq(ptr noundef %19) #13
  br label %133

128:                                              ; preds = %116, %104, %83
  call void @_raw_spin_lock_irq(ptr noundef %19) #13
  %129 = add i32 %37, %17
  %130 = getelementptr i8, ptr %36, i32 %17
  %131 = sub i32 %2, %129
  %132 = icmp slt i32 %131, %17
  br i1 %132, label %133, label %35

133:                                              ; preds = %128, %126, %62, %15
  %134 = phi i32 [ %37, %62 ], [ %37, %126 ], [ 0, %15 ], [ %129, %128 ]
  %135 = phi i32 [ %63, %62 ], [ %127, %126 ], [ 0, %15 ], [ 0, %128 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %136 = load i16, ptr %19, align 4
  %137 = add i16 %136, 1
  store i16 %137, ptr %19, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  call void @mutex_unlock(ptr noundef %18) #13
  %138 = icmp sgt i32 %134, 0
  %139 = select i1 %138, i32 %134, i32 %135
  br label %140

140:                                              ; preds = %133, %14, %12
  %141 = phi i32 [ -524, %14 ], [ -524, %12 ], [ %139, %133 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  ret i32 %141
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_timer_user_poll(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.snd_timer_user, ptr %4, i32 0, i32 15
  %6 = icmp eq ptr %1, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 4
  %9 = icmp ne ptr %8, null
  %10 = icmp ne ptr %5, null
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void %8(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %1) #13
  br label %13

13:                                               ; preds = %12, %7, %2
  %14 = getelementptr inbounds %struct.snd_timer_user, ptr %4, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %14) #13
  %15 = getelementptr inbounds %struct.snd_timer_user, ptr %4, i32 0, i32 6
  %16 = load i32, ptr %15, align 8
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 0, i32 65
  %19 = getelementptr inbounds %struct.snd_timer_user, ptr %4, i32 0, i32 8
  %20 = load i8, ptr %19, align 8, !range !18
  %21 = icmp eq i8 %20, 0
  %22 = or i32 %18, 8
  %23 = select i1 %21, i32 %18, i32 %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %24 = load i16, ptr %14, align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_timer_user_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.snd_timer_status64, align 8
  %5 = alloca %struct.snd_timer_status32, align 4
  %6 = alloca %struct.snd_timer_params, align 4
  %7 = alloca ptr, align 4
  %8 = alloca %struct.snd_timer_select, align 4
  %9 = alloca [32 x i8], align 1
  %10 = alloca %struct.snd_timer_gstatus, align 4
  %11 = alloca %struct.snd_timer_gparams, align 4
  %12 = alloca %struct.snd_timer_id, align 4
  %13 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.snd_timer_user, ptr %14, i32 0, i32 17
  tail call void @mutex_lock(ptr noundef %15) #13
  %16 = inttoptr i32 %2 to ptr
  switch i32 %1, label %1078 [
    i32 -2147200000, label %17
    i32 -1072409599, label %26
    i32 1074025474, label %264
    i32 1074025636, label %264
    i32 -1059040253, label %292
    i32 1077695492, label %401
    i32 -1069526011, label %475
    i32 1077171216, label %565
    i32 -2132782063, label %663
    i32 1079006226, label %714
    i32 -2141694956, label %894
    i32 -2141170668, label %954
    i32 21664, label %1014
    i32 21536, label %1014
    i32 21665, label %1016
    i32 21537, label %1016
    i32 21666, label %1032
    i32 21538, label %1032
    i32 21667, label %1062
    i32 21539, label %1062
  ]

17:                                               ; preds = %3
  %18 = tail call ptr @llvm.thread.pointer() #13
  %19 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %20 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %19) #17, !srcloc !20
  %21 = and i32 %20, -13
  %22 = or i32 %21, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #13, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !22
  %23 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %16, i32 131079, i32 -1090519041) #13, !srcloc !23
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #13, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !22
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 0, i32 -14
  br label %1078

26:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %12) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %12, i8 0, i32 20, i1 false) #13, !annotation !15
  %27 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %16, i32 20, i32 -1090519040) #16
  %28 = extractvalue { i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %38, !prof !16

30:                                               ; preds = %26
  %31 = tail call ptr @llvm.thread.pointer() #13
  %32 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 3
  %33 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %32) #17, !srcloc !20
  %34 = and i32 %33, -13
  %35 = or i32 %34, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %35) #13, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !22
  %36 = call i32 @arm_copy_from_user(ptr noundef nonnull %12, ptr noundef %16, i32 noundef 20) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %33) #13, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !22
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38, !prof !16

38:                                               ; preds = %30, %26
  %39 = phi i32 [ %36, %30 ], [ 20, %26 ]
  %40 = sub i32 20, %39
  %41 = getelementptr i8, ptr %12, i32 %40
  call void @llvm.memset.p0.i32(ptr align 1 %41, i8 0, i32 %39, i1 false) #13
  br label %262

42:                                               ; preds = %30
  call void @mutex_lock(ptr noundef nonnull @register_mutex) #13
  %43 = load i32, ptr %12, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %69

45:                                               ; preds = %42
  %46 = load volatile ptr, ptr @snd_timer_list, align 4
  %47 = icmp eq ptr %46, @snd_timer_list
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  store i32 -1, ptr %12, align 4
  %49 = getelementptr inbounds %struct.snd_timer_id, ptr %12, i32 0, i32 1
  store i32 0, ptr %49, align 4
  %50 = getelementptr inbounds %struct.snd_timer_id, ptr %12, i32 0, i32 2
  store i32 -1, ptr %50, align 4
  %51 = getelementptr inbounds %struct.snd_timer_id, ptr %12, i32 0, i32 3
  store i32 -1, ptr %51, align 4
  br label %252

52:                                               ; preds = %45
  %53 = getelementptr i8, ptr %46, i32 -236
  %54 = load i32, ptr %53, align 4
  store i32 %54, ptr %12, align 4
  %55 = getelementptr inbounds %struct.snd_timer_id, ptr %12, i32 0, i32 1
  store i32 0, ptr %55, align 4
  %56 = getelementptr i8, ptr %46, i32 -232
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %52
  %60 = load i32, ptr %57, align 8
  br label %61

61:                                               ; preds = %59, %52
  %62 = phi i32 [ %60, %59 ], [ -1, %52 ]
  %63 = getelementptr inbounds %struct.snd_timer_id, ptr %12, i32 0, i32 2
  store i32 %62, ptr %63, align 4
  %64 = getelementptr i8, ptr %46, i32 -224
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr inbounds %struct.snd_timer_id, ptr %12, i32 0, i32 3
  store i32 %65, ptr %66, align 4
  %67 = getelementptr i8, ptr %46, i32 -220
  %68 = load i32, ptr %67, align 4
  br label %252

69:                                               ; preds = %42
  switch i32 %43, label %248 [
    i32 1, label %70
    i32 2, label %122
    i32 3, label %122
  ]

70:                                               ; preds = %69
  %71 = getelementptr inbounds %struct.snd_timer_id, ptr %12, i32 0, i32 3
  %72 = load i32, ptr %71, align 4
  %73 = icmp slt i32 %72, 0
  %74 = add i32 %72, 1
  %75 = select i1 %73, i32 0, i32 %74
  store i32 %75, ptr %71, align 4
  br label %76

76:                                               ; preds = %99, %70
  %77 = phi ptr [ @snd_timer_list, %70 ], [ %78, %99 ]
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, @snd_timer_list
  br i1 %79, label %118, label %80

80:                                               ; preds = %76
  %81 = getelementptr i8, ptr %78, i32 -236
  %82 = load i32, ptr %81, align 4
  %83 = icmp sgt i32 %82, 1
  br i1 %83, label %84, label %99

84:                                               ; preds = %80
  store i32 %82, ptr %12, align 4
  %85 = getelementptr inbounds %struct.snd_timer_id, ptr %12, i32 0, i32 1
  store i32 0, ptr %85, align 4
  %86 = getelementptr i8, ptr %78, i32 -232
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %84
  %90 = load i32, ptr %87, align 8
  br label %91

91:                                               ; preds = %89, %84
  %92 = phi i32 [ %90, %89 ], [ -1, %84 ]
  %93 = getelementptr inbounds %struct.snd_timer_id, ptr %12, i32 0, i32 2
  store i32 %92, ptr %93, align 4
  %94 = getelementptr i8, ptr %78, i32 -224
  %95 = load i32, ptr %94, align 4
  store i32 %95, ptr %71, align 4
  %96 = getelementptr i8, ptr %78, i32 -220
  %97 = load i32, ptr %96, align 4
  %98 = getelementptr inbounds %struct.snd_timer_id, ptr %12, i32 0, i32 4
  store i32 %97, ptr %98, align 4
  br label %255

99:                                               ; preds = %80
  %100 = getelementptr i8, ptr %78, i32 -224
  %101 = load i32, ptr %100, align 4
  %102 = icmp slt i32 %101, %75
  br i1 %102, label %76, label %103

103:                                              ; preds = %99
  %104 = getelementptr i8, ptr %78, i32 -224
  store i32 %82, ptr %12, align 4
  %105 = getelementptr inbounds %struct.snd_timer_id, ptr %12, i32 0, i32 1
  store i32 0, ptr %105, align 4
  %106 = getelementptr i8, ptr %78, i32 -232
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %111, label %109

109:                                              ; preds = %103
  %110 = load i32, ptr %107, align 8
  br label %111

111:                                              ; preds = %109, %103
  %112 = phi i32 [ %110, %109 ], [ -1, %103 ]
  %113 = getelementptr inbounds %struct.snd_timer_id, ptr %12, i32 0, i32 2
  store i32 %112, ptr %113, align 4
  %114 = load i32, ptr %104, align 4
  store i32 %114, ptr %71, align 4
  %115 = getelementptr i8, ptr %78, i32 -220
  %116 = load i32, ptr %115, align 4
  %117 = getelementptr inbounds %struct.snd_timer_id, ptr %12, i32 0, i32 4
  store i32 %116, ptr %117, align 4
  br label %255

118:                                              ; preds = %76
  store i32 -1, ptr %12, align 4
  %119 = getelementptr inbounds %struct.snd_timer_id, ptr %12, i32 0, i32 1
  store i32 0, ptr %119, align 4
  %120 = getelementptr inbounds %struct.snd_timer_id, ptr %12, i32 0, i32 2
  store i32 -1, ptr %120, align 4
  store i32 -1, ptr %71, align 4
  %121 = getelementptr inbounds %struct.snd_timer_id, ptr %12, i32 0, i32 4
  store i32 -1, ptr %121, align 4
  br label %255

122:                                              ; preds = %69, %69
  %123 = getelementptr inbounds %struct.snd_timer_id, ptr %12, i32 0, i32 2
  %124 = load i32, ptr %123, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  store i32 0, ptr %123, align 4
  br label %141

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.snd_timer_id, ptr %12, i32 0, i32 3
  %129 = load i32, ptr %128, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  store i32 0, ptr %128, align 4
  br label %141

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.snd_timer_id, ptr %12, i32 0, i32 4
  %134 = load i32, ptr %133, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  store i32 0, ptr %133, align 4
  br label %141

137:                                              ; preds = %132
  %138 = icmp eq i32 %134, 2147483647
  br i1 %138, label %141, label %139

139:                                              ; preds = %137
  %140 = add nuw nsw i32 %134, 1
  store i32 %140, ptr %133, align 4
  br label %141

141:                                              ; preds = %139, %137, %136, %131, %126
  %142 = phi i32 [ %124, %131 ], [ %124, %137 ], [ %124, %139 ], [ %124, %136 ], [ 0, %126 ]
  %143 = load ptr, ptr @snd_timer_list, align 4
  %144 = icmp eq ptr %143, @snd_timer_list
  br i1 %144, label %244, label %145

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.snd_timer_id, ptr %12, i32 0, i32 3
  %147 = load i32, ptr %146, align 4
  %148 = getelementptr inbounds %struct.snd_timer_id, ptr %12, i32 0, i32 4
  %149 = load i32, ptr %148, align 4
  br label %150

150:                                              ; preds = %241, %145
  %151 = phi ptr [ %143, %145 ], [ %242, %241 ]
  %152 = getelementptr i8, ptr %151, i32 -236
  %153 = load i32, ptr %152, align 4
  %154 = icmp sgt i32 %153, %43
  br i1 %154, label %155, label %168

155:                                              ; preds = %150
  store i32 %153, ptr %12, align 4
  %156 = getelementptr inbounds %struct.snd_timer_id, ptr %12, i32 0, i32 1
  store i32 0, ptr %156, align 4
  %157 = getelementptr i8, ptr %151, i32 -232
  %158 = load ptr, ptr %157, align 4
  %159 = icmp eq ptr %158, null
  br i1 %159, label %162, label %160

160:                                              ; preds = %155
  %161 = load i32, ptr %158, align 8
  br label %162

162:                                              ; preds = %160, %155
  %163 = phi i32 [ %161, %160 ], [ -1, %155 ]
  store i32 %163, ptr %123, align 4
  %164 = getelementptr i8, ptr %151, i32 -224
  %165 = load i32, ptr %164, align 4
  store i32 %165, ptr %146, align 4
  %166 = getelementptr i8, ptr %151, i32 -220
  %167 = load i32, ptr %166, align 4
  store i32 %167, ptr %148, align 4
  br label %255

168:                                              ; preds = %150
  %169 = icmp slt i32 %153, %43
  br i1 %169, label %241, label %170

170:                                              ; preds = %168
  %171 = getelementptr i8, ptr %151, i32 -232
  %172 = load ptr, ptr %171, align 4
  %173 = load i32, ptr %172, align 8
  %174 = icmp sgt i32 %173, %142
  br i1 %174, label %175, label %188

175:                                              ; preds = %170
  %176 = getelementptr i8, ptr %151, i32 -232
  store i32 %153, ptr %12, align 4
  %177 = getelementptr inbounds %struct.snd_timer_id, ptr %12, i32 0, i32 1
  store i32 0, ptr %177, align 4
  %178 = load ptr, ptr %176, align 4
  %179 = icmp eq ptr %178, null
  br i1 %179, label %182, label %180

180:                                              ; preds = %175
  %181 = load i32, ptr %178, align 8
  br label %182

182:                                              ; preds = %180, %175
  %183 = phi i32 [ %181, %180 ], [ -1, %175 ]
  store i32 %183, ptr %123, align 4
  %184 = getelementptr i8, ptr %151, i32 -224
  %185 = load i32, ptr %184, align 4
  store i32 %185, ptr %146, align 4
  %186 = getelementptr i8, ptr %151, i32 -220
  %187 = load i32, ptr %186, align 4
  store i32 %187, ptr %148, align 4
  br label %255

188:                                              ; preds = %170
  %189 = icmp slt i32 %173, %142
  br i1 %189, label %241, label %190

190:                                              ; preds = %188
  %191 = getelementptr i8, ptr %151, i32 -224
  %192 = load i32, ptr %191, align 4
  %193 = icmp sgt i32 %192, %147
  br i1 %193, label %194, label %207

194:                                              ; preds = %190
  %195 = getelementptr i8, ptr %151, i32 -232
  %196 = getelementptr i8, ptr %151, i32 -224
  store i32 %153, ptr %12, align 4
  %197 = getelementptr inbounds %struct.snd_timer_id, ptr %12, i32 0, i32 1
  store i32 0, ptr %197, align 4
  %198 = load ptr, ptr %195, align 4
  %199 = icmp eq ptr %198, null
  br i1 %199, label %202, label %200

200:                                              ; preds = %194
  %201 = load i32, ptr %198, align 8
  br label %202

202:                                              ; preds = %200, %194
  %203 = phi i32 [ %201, %200 ], [ -1, %194 ]
  store i32 %203, ptr %123, align 4
  %204 = load i32, ptr %196, align 4
  store i32 %204, ptr %146, align 4
  %205 = getelementptr i8, ptr %151, i32 -220
  %206 = load i32, ptr %205, align 4
  store i32 %206, ptr %148, align 4
  br label %255

207:                                              ; preds = %190
  %208 = icmp slt i32 %192, %147
  br i1 %208, label %241, label %209

209:                                              ; preds = %207
  %210 = getelementptr i8, ptr %151, i32 -220
  %211 = load i32, ptr %210, align 4
  %212 = icmp sgt i32 %211, %149
  br i1 %212, label %213, label %226

213:                                              ; preds = %209
  %214 = getelementptr i8, ptr %151, i32 -232
  %215 = getelementptr i8, ptr %151, i32 -224
  %216 = getelementptr i8, ptr %151, i32 -220
  store i32 %153, ptr %12, align 4
  %217 = getelementptr inbounds %struct.snd_timer_id, ptr %12, i32 0, i32 1
  store i32 0, ptr %217, align 4
  %218 = load ptr, ptr %214, align 4
  %219 = icmp eq ptr %218, null
  br i1 %219, label %222, label %220

220:                                              ; preds = %213
  %221 = load i32, ptr %218, align 8
  br label %222

222:                                              ; preds = %220, %213
  %223 = phi i32 [ %221, %220 ], [ -1, %213 ]
  store i32 %223, ptr %123, align 4
  %224 = load i32, ptr %215, align 4
  store i32 %224, ptr %146, align 4
  %225 = load i32, ptr %216, align 4
  store i32 %225, ptr %148, align 4
  br label %255

226:                                              ; preds = %209
  %227 = icmp slt i32 %211, %149
  br i1 %227, label %241, label %228

228:                                              ; preds = %226
  %229 = getelementptr i8, ptr %151, i32 -232
  %230 = getelementptr i8, ptr %151, i32 -224
  %231 = getelementptr i8, ptr %151, i32 -220
  store i32 %153, ptr %12, align 4
  %232 = getelementptr inbounds %struct.snd_timer_id, ptr %12, i32 0, i32 1
  store i32 0, ptr %232, align 4
  %233 = load ptr, ptr %229, align 4
  %234 = icmp eq ptr %233, null
  br i1 %234, label %237, label %235

235:                                              ; preds = %228
  %236 = load i32, ptr %233, align 8
  br label %237

237:                                              ; preds = %235, %228
  %238 = phi i32 [ %236, %235 ], [ -1, %228 ]
  store i32 %238, ptr %123, align 4
  %239 = load i32, ptr %230, align 4
  store i32 %239, ptr %146, align 4
  %240 = load i32, ptr %231, align 4
  store i32 %240, ptr %148, align 4
  br label %255

241:                                              ; preds = %226, %207, %188, %168
  %242 = load ptr, ptr %151, align 4
  %243 = icmp eq ptr %242, @snd_timer_list
  br i1 %243, label %244, label %150

244:                                              ; preds = %241, %141
  store i32 -1, ptr %12, align 4
  %245 = getelementptr inbounds %struct.snd_timer_id, ptr %12, i32 0, i32 1
  store i32 0, ptr %245, align 4
  store i32 -1, ptr %123, align 4
  %246 = getelementptr inbounds %struct.snd_timer_id, ptr %12, i32 0, i32 3
  store i32 -1, ptr %246, align 4
  %247 = getelementptr inbounds %struct.snd_timer_id, ptr %12, i32 0, i32 4
  store i32 -1, ptr %247, align 4
  br label %255

248:                                              ; preds = %69
  store i32 -1, ptr %12, align 4
  %249 = getelementptr inbounds %struct.snd_timer_id, ptr %12, i32 0, i32 1
  store i32 0, ptr %249, align 4
  %250 = getelementptr inbounds %struct.snd_timer_id, ptr %12, i32 0, i32 2
  store i32 -1, ptr %250, align 4
  %251 = getelementptr inbounds %struct.snd_timer_id, ptr %12, i32 0, i32 3
  store i32 -1, ptr %251, align 4
  br label %252

252:                                              ; preds = %248, %61, %48
  %253 = phi i32 [ -1, %248 ], [ -1, %48 ], [ %68, %61 ]
  %254 = getelementptr inbounds %struct.snd_timer_id, ptr %12, i32 0, i32 4
  store i32 %253, ptr %254, align 4
  br label %255

255:                                              ; preds = %252, %244, %237, %222, %202, %182, %162, %118, %111, %91
  call void @mutex_unlock(ptr noundef nonnull @register_mutex) #13
  %256 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %32) #17, !srcloc !20
  %257 = and i32 %256, -13
  %258 = or i32 %257, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %258) #13, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !22
  %259 = call i32 @arm_copy_to_user(ptr noundef %16, ptr noundef nonnull %12, i32 noundef 20) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %256) #13, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !22
  %260 = icmp eq i32 %259, 0
  %261 = select i1 %260, i32 0, i32 -14
  br label %262

262:                                              ; preds = %255, %38
  %263 = phi i32 [ -14, %38 ], [ %261, %255 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %12) #13
  br label %1078

264:                                              ; preds = %3, %3
  %265 = load ptr, ptr %13, align 8
  %266 = load ptr, ptr %265, align 8
  %267 = icmp eq ptr %266, null
  br i1 %267, label %268, label %1078

268:                                              ; preds = %264
  %269 = tail call ptr @llvm.thread.pointer() #13
  %270 = getelementptr inbounds %struct.thread_info, ptr %269, i32 0, i32 3
  %271 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %270) #17, !srcloc !20
  %272 = and i32 %271, -13
  %273 = or i32 %272, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %273) #13, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !22
  %274 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %16, i32 -1090519041) #13, !srcloc !24
  %275 = extractvalue { i32, i32 } %274, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %271) #13, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !22
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %1078

277:                                              ; preds = %268
  %278 = extractvalue { i32, i32 } %274, 1
  %279 = getelementptr inbounds %struct.snd_timer_user, ptr %265, i32 0, i32 1
  %280 = load i32, ptr %279, align 4
  %281 = icmp eq i32 %278, 0
  %282 = icmp eq i32 %1, 1074025636
  %283 = select i1 %282, i32 1, i32 2
  %284 = select i1 %281, i32 0, i32 %283
  store i32 %284, ptr %279, align 4
  %285 = icmp eq i32 %284, %280
  br i1 %285, label %1078, label %286

286:                                              ; preds = %277
  %287 = getelementptr inbounds %struct.snd_timer_user, ptr %265, i32 0, i32 7
  %288 = load i32, ptr %287, align 4
  %289 = tail call fastcc i32 @realloc_user_queue(ptr noundef %265, i32 noundef %288) #13
  %290 = icmp slt i32 %289, 0
  br i1 %290, label %291, label %1078

291:                                              ; preds = %286
  store i32 %280, ptr %279, align 4
  br label %1078

292:                                              ; preds = %3
  %293 = tail call ptr @memdup_user(ptr noundef %16, i32 noundef 224) #13
  %294 = icmp ugt ptr %293, inttoptr (i32 -4096 to ptr)
  br i1 %294, label %295, label %297

295:                                              ; preds = %292
  %296 = ptrtoint ptr %293 to i32
  br label %1078

297:                                              ; preds = %292
  %298 = load i32, ptr %293, align 4
  %299 = getelementptr inbounds i8, ptr %293, i32 8
  %300 = load i32, ptr %299, align 4
  %301 = getelementptr inbounds i8, ptr %293, i32 12
  %302 = load i32, ptr %301, align 4
  %303 = getelementptr inbounds i8, ptr %293, i32 16
  %304 = load i32, ptr %303, align 4
  %305 = getelementptr inbounds i8, ptr %293, i32 20
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(224) %305, i8 0, i32 204, i1 false) #13
  tail call void @mutex_lock(ptr noundef nonnull @register_mutex) #13
  %306 = load ptr, ptr @snd_timer_list, align 4
  %307 = icmp eq ptr %306, @snd_timer_list
  br i1 %307, label %385, label %308

308:                                              ; preds = %297
  %309 = and i32 %298, -2
  %310 = icmp eq i32 %309, 2
  br label %311

311:                                              ; preds = %332, %308
  %312 = phi ptr [ %306, %308 ], [ %333, %332 ]
  %313 = getelementptr i8, ptr %312, i32 -236
  %314 = load i32, ptr %313, align 4
  %315 = icmp eq i32 %314, %298
  br i1 %315, label %316, label %332

316:                                              ; preds = %311
  br i1 %310, label %317, label %324

317:                                              ; preds = %316
  %318 = getelementptr i8, ptr %312, i32 -232
  %319 = load ptr, ptr %318, align 4
  %320 = icmp eq ptr %319, null
  br i1 %320, label %332, label %321

321:                                              ; preds = %317
  %322 = load i32, ptr %319, align 8
  %323 = icmp eq i32 %322, %300
  br i1 %323, label %324, label %332

324:                                              ; preds = %321, %316
  %325 = getelementptr i8, ptr %312, i32 -224
  %326 = load i32, ptr %325, align 4
  %327 = icmp eq i32 %326, %302
  br i1 %327, label %328, label %332

328:                                              ; preds = %324
  %329 = getelementptr i8, ptr %312, i32 -220
  %330 = load i32, ptr %329, align 4
  %331 = icmp eq i32 %330, %304
  br i1 %331, label %335, label %332

332:                                              ; preds = %328, %324, %321, %317, %311
  %333 = load ptr, ptr %312, align 4
  %334 = icmp eq ptr %333, @snd_timer_list
  br i1 %334, label %385, label %311

335:                                              ; preds = %328
  %336 = getelementptr i8, ptr %312, i32 -236
  %337 = icmp eq ptr %336, null
  br i1 %337, label %385, label %338

338:                                              ; preds = %335
  %339 = getelementptr i8, ptr %312, i32 -232
  %340 = load ptr, ptr %339, align 4
  %341 = icmp eq ptr %340, null
  br i1 %341, label %344, label %342

342:                                              ; preds = %338
  %343 = load i32, ptr %340, align 8
  br label %344

344:                                              ; preds = %342, %338
  %345 = phi i32 [ %343, %342 ], [ -1, %338 ]
  %346 = getelementptr inbounds %struct.snd_timer_ginfo, ptr %293, i32 0, i32 2
  store i32 %345, ptr %346, align 4
  %347 = getelementptr i8, ptr %312, i32 -52
  %348 = load i32, ptr %347, align 4
  %349 = and i32 %348, 4
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %354, label %351

351:                                              ; preds = %344
  %352 = load i32, ptr %305, align 4
  %353 = or i32 %352, 1
  store i32 %353, ptr %305, align 4
  br label %354

354:                                              ; preds = %351, %344
  %355 = getelementptr inbounds %struct.snd_timer_ginfo, ptr %293, i32 0, i32 3
  %356 = getelementptr i8, ptr %312, i32 -216
  %357 = tail call i32 @strscpy(ptr noundef %355, ptr noundef %356, i32 noundef 64) #13
  %358 = getelementptr inbounds %struct.snd_timer_ginfo, ptr %293, i32 0, i32 4
  %359 = getelementptr i8, ptr %312, i32 -152
  %360 = tail call i32 @strscpy(ptr noundef %358, ptr noundef %359, i32 noundef 80) #13
  %361 = getelementptr i8, ptr %312, i32 -48
  %362 = load i32, ptr %361, align 4
  %363 = getelementptr inbounds %struct.snd_timer_ginfo, ptr %293, i32 0, i32 6
  store i32 %362, ptr %363, align 4
  %364 = getelementptr i8, ptr %312, i32 -44
  %365 = load i32, ptr %364, align 4
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %372, label %367

367:                                              ; preds = %354
  %368 = getelementptr inbounds %struct.snd_timer_ginfo, ptr %293, i32 0, i32 7
  store i32 %365, ptr %368, align 4
  %369 = getelementptr i8, ptr %312, i32 -40
  %370 = load i32, ptr %369, align 4
  %371 = getelementptr inbounds %struct.snd_timer_ginfo, ptr %293, i32 0, i32 8
  store i32 %370, ptr %371, align 4
  br label %372

372:                                              ; preds = %367, %354
  %373 = getelementptr i8, ptr %312, i32 8
  %374 = load ptr, ptr %373, align 4
  %375 = icmp eq ptr %374, %373
  br i1 %375, label %386, label %376

376:                                              ; preds = %372
  %377 = getelementptr inbounds %struct.snd_timer_ginfo, ptr %293, i32 0, i32 9
  %378 = load i32, ptr %377, align 4
  br label %379

379:                                              ; preds = %379, %376
  %380 = phi i32 [ %378, %376 ], [ %382, %379 ]
  %381 = phi ptr [ %374, %376 ], [ %383, %379 ]
  %382 = add i32 %380, 1
  store i32 %382, ptr %377, align 4
  %383 = load ptr, ptr %381, align 4
  %384 = icmp eq ptr %383, %373
  br i1 %384, label %386, label %379

385:                                              ; preds = %335, %332, %297
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #13
  br label %399

386:                                              ; preds = %379, %372
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #13
  %387 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %16, i32 224, i32 -1090519040) #16, !srcloc !19
  %388 = extractvalue { i32, i32 } %387, 0
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %390, label %399

390:                                              ; preds = %386
  %391 = tail call ptr @llvm.thread.pointer() #13
  %392 = getelementptr inbounds %struct.thread_info, ptr %391, i32 0, i32 3
  %393 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %392) #17, !srcloc !20
  %394 = and i32 %393, -13
  %395 = or i32 %394, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %395) #13, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !22
  %396 = tail call i32 @arm_copy_to_user(ptr noundef %16, ptr noundef %293, i32 noundef 224) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %393) #13, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !22
  %397 = icmp eq i32 %396, 0
  %398 = select i1 %397, i32 0, i32 -14
  br label %399

399:                                              ; preds = %390, %386, %385
  %400 = phi i32 [ -19, %385 ], [ -14, %386 ], [ %398, %390 ]
  tail call void @kfree(ptr noundef %293) #13
  br label %1078

401:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %11) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(60) %11, i8 0, i32 60, i1 false) #13, !annotation !15
  %402 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %16, i32 60, i32 -1090519040) #16, !srcloc !25
  %403 = extractvalue { i32, i32 } %402, 0
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %405, label %413, !prof !16

405:                                              ; preds = %401
  %406 = tail call ptr @llvm.thread.pointer() #13
  %407 = getelementptr inbounds %struct.thread_info, ptr %406, i32 0, i32 3
  %408 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %407) #17, !srcloc !20
  %409 = and i32 %408, -13
  %410 = or i32 %409, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %410) #13, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !22
  %411 = call i32 @arm_copy_from_user(ptr noundef nonnull %11, ptr noundef %16, i32 noundef 60) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %408) #13, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !22
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %417, label %413, !prof !16

413:                                              ; preds = %405, %401
  %414 = phi i32 [ %411, %405 ], [ 60, %401 ]
  %415 = sub i32 60, %414
  %416 = getelementptr i8, ptr %11, i32 %415
  call void @llvm.memset.p0.i32(ptr align 1 %416, i8 0, i32 %414, i1 false) #13
  br label %473

417:                                              ; preds = %405
  call void @mutex_lock(ptr noundef nonnull @register_mutex) #13
  %418 = load ptr, ptr @snd_timer_list, align 4
  %419 = icmp eq ptr %418, @snd_timer_list
  br i1 %419, label %471, label %420

420:                                              ; preds = %417
  %421 = load i32, ptr %11, align 4
  %422 = getelementptr inbounds %struct.snd_timer_id, ptr %11, i32 0, i32 2
  %423 = getelementptr inbounds %struct.snd_timer_id, ptr %11, i32 0, i32 3
  %424 = getelementptr inbounds %struct.snd_timer_id, ptr %11, i32 0, i32 4
  %425 = and i32 %421, -2
  %426 = icmp eq i32 %425, 2
  %427 = load i32, ptr %422, align 4
  %428 = load i32, ptr %423, align 4
  %429 = load i32, ptr %424, align 4
  br label %430

430:                                              ; preds = %451, %420
  %431 = phi ptr [ %418, %420 ], [ %452, %451 ]
  %432 = getelementptr i8, ptr %431, i32 -236
  %433 = load i32, ptr %432, align 4
  %434 = icmp eq i32 %433, %421
  br i1 %434, label %435, label %451

435:                                              ; preds = %430
  br i1 %426, label %436, label %443

436:                                              ; preds = %435
  %437 = getelementptr i8, ptr %431, i32 -232
  %438 = load ptr, ptr %437, align 4
  %439 = icmp eq ptr %438, null
  br i1 %439, label %451, label %440

440:                                              ; preds = %436
  %441 = load i32, ptr %438, align 8
  %442 = icmp eq i32 %441, %427
  br i1 %442, label %443, label %451

443:                                              ; preds = %440, %435
  %444 = getelementptr i8, ptr %431, i32 -224
  %445 = load i32, ptr %444, align 4
  %446 = icmp eq i32 %445, %428
  br i1 %446, label %447, label %451

447:                                              ; preds = %443
  %448 = getelementptr i8, ptr %431, i32 -220
  %449 = load i32, ptr %448, align 4
  %450 = icmp eq i32 %449, %429
  br i1 %450, label %454, label %451

451:                                              ; preds = %447, %443, %440, %436, %430
  %452 = load ptr, ptr %431, align 4
  %453 = icmp eq ptr %452, @snd_timer_list
  br i1 %453, label %471, label %430

454:                                              ; preds = %447
  %455 = getelementptr i8, ptr %431, i32 -236
  %456 = icmp eq ptr %455, null
  br i1 %456, label %471, label %457

457:                                              ; preds = %454
  %458 = getelementptr i8, ptr %431, i32 8
  %459 = load volatile ptr, ptr %458, align 4
  %460 = icmp eq ptr %459, %458
  br i1 %460, label %461, label %471

461:                                              ; preds = %457
  %462 = getelementptr i8, ptr %431, i32 -12
  %463 = load ptr, ptr %462, align 4
  %464 = icmp eq ptr %463, null
  br i1 %464, label %471, label %465

465:                                              ; preds = %461
  %466 = getelementptr inbounds %struct.snd_timer_gparams, ptr %11, i32 0, i32 1
  %467 = load i32, ptr %466, align 4
  %468 = getelementptr inbounds %struct.snd_timer_gparams, ptr %11, i32 0, i32 2
  %469 = load i32, ptr %468, align 4
  %470 = call i32 %463(ptr noundef nonnull %455, i32 noundef %467, i32 noundef %469) #13
  br label %471

471:                                              ; preds = %465, %461, %457, %454, %451, %417
  %472 = phi i32 [ %470, %465 ], [ -19, %454 ], [ -16, %457 ], [ -38, %461 ], [ -19, %417 ], [ -19, %451 ]
  call void @mutex_unlock(ptr noundef nonnull @register_mutex) #13
  br label %473

473:                                              ; preds = %471, %413
  %474 = phi i32 [ %472, %471 ], [ -14, %413 ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %11) #13
  br label %1078

475:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %10, i8 0, i32 64, i1 false) #13, !annotation !15
  %476 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %16, i32 64, i32 -1090519040) #16
  %477 = extractvalue { i32, i32 } %476, 0
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %479, label %487, !prof !16

479:                                              ; preds = %475
  %480 = tail call ptr @llvm.thread.pointer() #13
  %481 = getelementptr inbounds %struct.thread_info, ptr %480, i32 0, i32 3
  %482 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %481) #17, !srcloc !20
  %483 = and i32 %482, -13
  %484 = or i32 %483, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %484) #13, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !22
  %485 = call i32 @arm_copy_from_user(ptr noundef nonnull %10, ptr noundef %16, i32 noundef 64) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %482) #13, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !22
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %491, label %487, !prof !16

487:                                              ; preds = %479, %475
  %488 = phi i32 [ %485, %479 ], [ 64, %475 ]
  %489 = sub i32 64, %488
  %490 = getelementptr i8, ptr %10, i32 %489
  call void @llvm.memset.p0.i32(ptr align 1 %490, i8 0, i32 %488, i1 false) #13
  br label %563

491:                                              ; preds = %479
  %492 = load i32, ptr %10, align 4
  %493 = getelementptr inbounds i8, ptr %10, i32 8
  %494 = load i32, ptr %493, align 4
  %495 = getelementptr inbounds i8, ptr %10, i32 12
  %496 = load i32, ptr %495, align 4
  %497 = getelementptr inbounds i8, ptr %10, i32 16
  %498 = load i32, ptr %497, align 4
  %499 = getelementptr inbounds i8, ptr %10, i32 20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %499, i8 0, i32 44, i1 false) #13
  call void @mutex_lock(ptr noundef nonnull @register_mutex) #13
  %500 = load ptr, ptr @snd_timer_list, align 4
  %501 = icmp eq ptr %500, @snd_timer_list
  br i1 %501, label %553, label %502

502:                                              ; preds = %491
  %503 = and i32 %492, -2
  %504 = icmp eq i32 %503, 2
  br label %505

505:                                              ; preds = %526, %502
  %506 = phi ptr [ %500, %502 ], [ %527, %526 ]
  %507 = getelementptr i8, ptr %506, i32 -236
  %508 = load i32, ptr %507, align 4
  %509 = icmp eq i32 %508, %492
  br i1 %509, label %510, label %526

510:                                              ; preds = %505
  br i1 %504, label %511, label %518

511:                                              ; preds = %510
  %512 = getelementptr i8, ptr %506, i32 -232
  %513 = load ptr, ptr %512, align 4
  %514 = icmp eq ptr %513, null
  br i1 %514, label %526, label %515

515:                                              ; preds = %511
  %516 = load i32, ptr %513, align 8
  %517 = icmp eq i32 %516, %494
  br i1 %517, label %518, label %526

518:                                              ; preds = %515, %510
  %519 = getelementptr i8, ptr %506, i32 -224
  %520 = load i32, ptr %519, align 4
  %521 = icmp eq i32 %520, %496
  br i1 %521, label %522, label %526

522:                                              ; preds = %518
  %523 = getelementptr i8, ptr %506, i32 -220
  %524 = load i32, ptr %523, align 4
  %525 = icmp eq i32 %524, %498
  br i1 %525, label %529, label %526

526:                                              ; preds = %522, %518, %515, %511, %505
  %527 = load ptr, ptr %506, align 4
  %528 = icmp eq ptr %527, @snd_timer_list
  br i1 %528, label %553, label %505

529:                                              ; preds = %522
  %530 = getelementptr i8, ptr %506, i32 -236
  %531 = icmp eq ptr %530, null
  br i1 %531, label %553, label %532

532:                                              ; preds = %529
  %533 = getelementptr i8, ptr %506, i32 -4
  call void @_raw_spin_lock_irq(ptr noundef %533) #13
  %534 = getelementptr i8, ptr %506, i32 -24
  %535 = load ptr, ptr %534, align 4
  %536 = icmp eq ptr %535, null
  br i1 %536, label %539, label %537

537:                                              ; preds = %532
  %538 = call i32 %535(ptr noundef nonnull %530) #13
  br label %542

539:                                              ; preds = %532
  %540 = getelementptr i8, ptr %506, i32 -48
  %541 = load i32, ptr %540, align 4
  br label %542

542:                                              ; preds = %539, %537
  %543 = phi i32 [ %538, %537 ], [ %541, %539 ]
  store i32 %543, ptr %499, align 4
  %544 = getelementptr i8, ptr %506, i32 -8
  %545 = load ptr, ptr %544, align 4
  %546 = icmp eq ptr %545, null
  %547 = getelementptr inbounds %struct.snd_timer_gstatus, ptr %10, i32 0, i32 2
  br i1 %546, label %551, label %548

548:                                              ; preds = %542
  %549 = getelementptr inbounds %struct.snd_timer_gstatus, ptr %10, i32 0, i32 3
  %550 = call i32 %545(ptr noundef nonnull %530, ptr noundef %547, ptr noundef %549) #13
  br label %554

551:                                              ; preds = %542
  store i32 %543, ptr %547, align 4
  %552 = getelementptr inbounds %struct.snd_timer_gstatus, ptr %10, i32 0, i32 3
  store i32 1000000000, ptr %552, align 4
  br label %554

553:                                              ; preds = %529, %526, %491
  call void @mutex_unlock(ptr noundef nonnull @register_mutex) #13
  br label %563

554:                                              ; preds = %551, %548
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %555 = load i16, ptr %533, align 4
  %556 = add i16 %555, 1
  store i16 %556, ptr %533, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  call void @mutex_unlock(ptr noundef nonnull @register_mutex) #13
  %557 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %481) #17, !srcloc !20
  %558 = and i32 %557, -13
  %559 = or i32 %558, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %559) #13, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !22
  %560 = call i32 @arm_copy_to_user(ptr noundef %16, ptr noundef nonnull %10, i32 noundef 64) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %557) #13, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !22
  %561 = icmp eq i32 %560, 0
  %562 = select i1 %561, i32 0, i32 -14
  br label %563

563:                                              ; preds = %554, %553, %487
  %564 = phi i32 [ -19, %553 ], [ -14, %487 ], [ %562, %554 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #13
  br label %1078

565:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %8) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i32 52, i1 false) #13, !annotation !15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %9, i8 0, i32 32, i1 false) #13, !annotation !15
  %566 = load ptr, ptr %13, align 8
  %567 = load ptr, ptr %566, align 8
  %568 = icmp eq ptr %567, null
  br i1 %568, label %585, label %569

569:                                              ; preds = %565
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store ptr null, ptr %7, align 4
  tail call void @mutex_lock(ptr noundef nonnull @register_mutex) #13
  call fastcc void @snd_timer_close_locked(ptr noundef nonnull %567, ptr noundef nonnull %7) #13
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #13
  %570 = load ptr, ptr %7, align 4
  %571 = icmp eq ptr %570, null
  br i1 %571, label %573, label %572

572:                                              ; preds = %569
  tail call void @put_device(ptr noundef nonnull %570) #13
  br label %573

573:                                              ; preds = %572, %569
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  %574 = load ptr, ptr %566, align 8
  %575 = icmp eq ptr %574, null
  br i1 %575, label %584, label %576

576:                                              ; preds = %573
  %577 = getelementptr inbounds %struct.snd_timer_instance, ptr %574, i32 0, i32 4
  %578 = load ptr, ptr %577, align 4
  %579 = icmp eq ptr %578, null
  br i1 %579, label %581, label %580

580:                                              ; preds = %576
  tail call void %578(ptr noundef nonnull %574) #13
  br label %581

581:                                              ; preds = %580, %576
  %582 = getelementptr inbounds %struct.snd_timer_instance, ptr %574, i32 0, i32 1
  %583 = load ptr, ptr %582, align 4
  tail call void @kfree(ptr noundef %583) #13
  tail call void @kfree(ptr noundef nonnull %574) #13
  br label %584

584:                                              ; preds = %581, %573
  store ptr null, ptr %566, align 8
  br label %585

585:                                              ; preds = %584, %565
  %586 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %16, i32 52, i32 -1090519040) #16, !srcloc !25
  %587 = extractvalue { i32, i32 } %586, 0
  %588 = icmp eq i32 %587, 0
  br i1 %588, label %589, label %597, !prof !16

589:                                              ; preds = %585
  %590 = tail call ptr @llvm.thread.pointer() #13
  %591 = getelementptr inbounds %struct.thread_info, ptr %590, i32 0, i32 3
  %592 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %591) #17, !srcloc !20
  %593 = and i32 %592, -13
  %594 = or i32 %593, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %594) #13, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !22
  %595 = call i32 @arm_copy_from_user(ptr noundef nonnull %8, ptr noundef %16, i32 noundef 52) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %592) #13, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !22
  %596 = icmp eq i32 %595, 0
  br i1 %596, label %601, label %597, !prof !16

597:                                              ; preds = %589, %585
  %598 = phi i32 [ %595, %589 ], [ 52, %585 ]
  %599 = sub i32 52, %598
  %600 = getelementptr i8, ptr %8, i32 %599
  call void @llvm.memset.p0.i32(ptr align 1 %600, i8 0, i32 %598, i1 false) #13
  br label %661

601:                                              ; preds = %589
  %602 = getelementptr inbounds %struct.task_struct, ptr %590, i32 0, i32 52
  %603 = load i32, ptr %602, align 8
  %604 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %9, ptr noundef nonnull @.str.12, i32 noundef %603) #13
  %605 = load i32, ptr %8, align 4
  %606 = icmp eq i32 %605, 0
  br i1 %606, label %609, label %607

607:                                              ; preds = %601
  %608 = getelementptr inbounds %struct.snd_timer_id, ptr %8, i32 0, i32 1
  store i32 1, ptr %608, align 4
  br label %609

609:                                              ; preds = %607, %601
  %610 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %611 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %610, i32 noundef 3520, i32 noundef 108) #12
  %612 = icmp eq ptr %611, null
  br i1 %612, label %618, label %613

613:                                              ; preds = %609
  %614 = call noalias ptr @kstrdup(ptr noundef nonnull %9, i32 noundef 3264) #13
  %615 = getelementptr inbounds %struct.snd_timer_instance, ptr %611, i32 0, i32 1
  store ptr %614, ptr %615, align 4
  %616 = icmp eq ptr %614, null
  br i1 %616, label %617, label %619

617:                                              ; preds = %613
  call void @kfree(ptr noundef nonnull %611) #13
  br label %618

618:                                              ; preds = %617, %609
  store ptr null, ptr %566, align 8
  br label %661

619:                                              ; preds = %613
  %620 = getelementptr inbounds %struct.snd_timer_instance, ptr %611, i32 0, i32 16
  store volatile ptr %620, ptr %620, align 8
  %621 = getelementptr inbounds %struct.snd_timer_instance, ptr %611, i32 0, i32 16, i32 1
  store ptr %620, ptr %621, align 4
  %622 = getelementptr inbounds %struct.snd_timer_instance, ptr %611, i32 0, i32 17
  store volatile ptr %622, ptr %622, align 8
  %623 = getelementptr inbounds %struct.snd_timer_instance, ptr %611, i32 0, i32 17, i32 1
  store ptr %622, ptr %623, align 4
  %624 = getelementptr inbounds %struct.snd_timer_instance, ptr %611, i32 0, i32 18
  store volatile ptr %624, ptr %624, align 8
  %625 = getelementptr inbounds %struct.snd_timer_instance, ptr %611, i32 0, i32 18, i32 1
  store ptr %624, ptr %625, align 4
  %626 = getelementptr inbounds %struct.snd_timer_instance, ptr %611, i32 0, i32 19
  store volatile ptr %626, ptr %626, align 8
  %627 = getelementptr inbounds %struct.snd_timer_instance, ptr %611, i32 0, i32 19, i32 1
  store ptr %626, ptr %627, align 4
  %628 = getelementptr inbounds %struct.snd_timer_instance, ptr %611, i32 0, i32 20
  store volatile ptr %628, ptr %628, align 8
  %629 = getelementptr inbounds %struct.snd_timer_instance, ptr %611, i32 0, i32 20, i32 1
  store ptr %628, ptr %629, align 4
  store ptr %611, ptr %566, align 8
  %630 = getelementptr inbounds %struct.snd_timer_instance, ptr %611, i32 0, i32 2
  %631 = load i32, ptr %630, align 8
  %632 = or i32 %631, 16
  store i32 %632, ptr %630, align 8
  %633 = getelementptr inbounds %struct.snd_timer_user, ptr %566, i32 0, i32 1
  %634 = load i32, ptr %633, align 4
  %635 = icmp eq i32 %634, 0
  %636 = select i1 %635, ptr @snd_timer_user_interrupt, ptr @snd_timer_user_tinterrupt
  %637 = load ptr, ptr %566, align 8
  %638 = getelementptr inbounds %struct.snd_timer_instance, ptr %637, i32 0, i32 5
  store ptr %636, ptr %638, align 4
  %639 = load ptr, ptr %566, align 8
  %640 = getelementptr inbounds %struct.snd_timer_instance, ptr %639, i32 0, i32 6
  store ptr @snd_timer_user_ccallback, ptr %640, align 4
  %641 = load ptr, ptr %566, align 8
  %642 = getelementptr inbounds %struct.snd_timer_instance, ptr %641, i32 0, i32 8
  store ptr %566, ptr %642, align 4
  %643 = load ptr, ptr %566, align 8
  %644 = getelementptr inbounds %struct.snd_timer_instance, ptr %643, i32 0, i32 7
  store ptr @snd_timer_user_disconnect, ptr %644, align 4
  %645 = load ptr, ptr %566, align 8
  %646 = load i32, ptr %602, align 8
  %647 = call i32 @snd_timer_open(ptr noundef %645, ptr noundef nonnull %8, i32 noundef %646) #13
  %648 = icmp slt i32 %647, 0
  br i1 %648, label %649, label %661

649:                                              ; preds = %619
  %650 = load ptr, ptr %566, align 8
  %651 = icmp eq ptr %650, null
  br i1 %651, label %660, label %652

652:                                              ; preds = %649
  %653 = getelementptr inbounds %struct.snd_timer_instance, ptr %650, i32 0, i32 4
  %654 = load ptr, ptr %653, align 4
  %655 = icmp eq ptr %654, null
  br i1 %655, label %657, label %656

656:                                              ; preds = %652
  call void %654(ptr noundef nonnull %650) #13
  br label %657

657:                                              ; preds = %656, %652
  %658 = getelementptr inbounds %struct.snd_timer_instance, ptr %650, i32 0, i32 1
  %659 = load ptr, ptr %658, align 4
  call void @kfree(ptr noundef %659) #13
  call void @kfree(ptr noundef nonnull %650) #13
  br label %660

660:                                              ; preds = %657, %649
  store ptr null, ptr %566, align 8
  br label %661

661:                                              ; preds = %660, %619, %618, %597
  %662 = phi i32 [ %647, %660 ], [ %647, %619 ], [ -12, %618 ], [ -14, %597 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %8) #13
  br label %1078

663:                                              ; preds = %3
  %664 = load ptr, ptr %13, align 8
  %665 = load ptr, ptr %664, align 8
  %666 = icmp eq ptr %665, null
  br i1 %666, label %1078, label %667

667:                                              ; preds = %663
  %668 = load ptr, ptr %665, align 4
  %669 = icmp eq ptr %668, null
  br i1 %669, label %1078, label %670

670:                                              ; preds = %667
  %671 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %672 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %671, i32 noundef 3520, i32 noundef 224) #12
  %673 = icmp eq ptr %672, null
  br i1 %673, label %1078, label %674

674:                                              ; preds = %670
  %675 = getelementptr inbounds %struct.snd_timer, ptr %668, i32 0, i32 1
  %676 = load ptr, ptr %675, align 4
  %677 = icmp eq ptr %676, null
  br i1 %677, label %680, label %678

678:                                              ; preds = %674
  %679 = load i32, ptr %676, align 8
  br label %680

680:                                              ; preds = %678, %674
  %681 = phi i32 [ %679, %678 ], [ -1, %674 ]
  %682 = getelementptr inbounds %struct.snd_timer_info, ptr %672, i32 0, i32 1
  store i32 %681, ptr %682, align 4
  %683 = getelementptr inbounds %struct.snd_timer, ptr %668, i32 0, i32 12
  %684 = load i32, ptr %683, align 4
  %685 = and i32 %684, 4
  %686 = icmp eq i32 %685, 0
  br i1 %686, label %690, label %687

687:                                              ; preds = %680
  %688 = load i32, ptr %672, align 8
  %689 = or i32 %688, 1
  store i32 %689, ptr %672, align 8
  br label %690

690:                                              ; preds = %687, %680
  %691 = getelementptr inbounds %struct.snd_timer_info, ptr %672, i32 0, i32 2
  %692 = getelementptr inbounds %struct.snd_timer, ptr %668, i32 0, i32 5
  %693 = tail call i32 @strscpy(ptr noundef %691, ptr noundef %692, i32 noundef 64) #13
  %694 = getelementptr inbounds %struct.snd_timer_info, ptr %672, i32 0, i32 3
  %695 = getelementptr inbounds %struct.snd_timer, ptr %668, i32 0, i32 6
  %696 = tail call i32 @strscpy(ptr noundef %694, ptr noundef %695, i32 noundef 80) #13
  %697 = getelementptr inbounds %struct.snd_timer, ptr %668, i32 0, i32 12, i32 1
  %698 = load i32, ptr %697, align 4
  %699 = getelementptr inbounds %struct.snd_timer_info, ptr %672, i32 0, i32 5
  store i32 %698, ptr %699, align 4
  %700 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %16, i32 224, i32 -1090519040) #16, !srcloc !19
  %701 = extractvalue { i32, i32 } %700, 0
  %702 = icmp eq i32 %701, 0
  br i1 %702, label %703, label %712

703:                                              ; preds = %690
  %704 = tail call ptr @llvm.thread.pointer() #13
  %705 = getelementptr inbounds %struct.thread_info, ptr %704, i32 0, i32 3
  %706 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %705) #17, !srcloc !20
  %707 = and i32 %706, -13
  %708 = or i32 %707, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %708) #13, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !22
  %709 = tail call i32 @arm_copy_to_user(ptr noundef %16, ptr noundef nonnull %672, i32 noundef 224) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %706) #13, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !22
  %710 = icmp eq i32 %709, 0
  %711 = select i1 %710, i32 0, i32 -14
  br label %712

712:                                              ; preds = %703, %690
  %713 = phi i32 [ -14, %690 ], [ %711, %703 ]
  tail call void @kfree(ptr noundef nonnull %672) #13
  br label %1078

714:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(80) %6, i8 0, i32 80, i1 false) #13, !annotation !15
  %715 = load ptr, ptr %13, align 8
  %716 = load ptr, ptr %715, align 8
  %717 = icmp eq ptr %716, null
  br i1 %717, label %892, label %718

718:                                              ; preds = %714
  %719 = load ptr, ptr %716, align 4
  %720 = icmp eq ptr %719, null
  br i1 %720, label %892, label %721

721:                                              ; preds = %718
  %722 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %16, i32 80, i32 -1090519040) #16
  %723 = extractvalue { i32, i32 } %722, 0
  %724 = icmp eq i32 %723, 0
  br i1 %724, label %725, label %733, !prof !16

725:                                              ; preds = %721
  %726 = tail call ptr @llvm.thread.pointer() #13
  %727 = getelementptr inbounds %struct.thread_info, ptr %726, i32 0, i32 3
  %728 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %727) #17, !srcloc !20
  %729 = and i32 %728, -13
  %730 = or i32 %729, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %730) #13, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !22
  %731 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %16, i32 noundef 80) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %728) #13, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !22
  %732 = icmp eq i32 %731, 0
  br i1 %732, label %737, label %733, !prof !16

733:                                              ; preds = %725, %721
  %734 = phi i32 [ %731, %725 ], [ 80, %721 ]
  %735 = sub i32 80, %734
  %736 = getelementptr i8, ptr %6, i32 %735
  call void @llvm.memset.p0.i32(ptr align 1 %736, i8 0, i32 %734, i1 false) #13
  br label %892

737:                                              ; preds = %725
  %738 = getelementptr inbounds %struct.snd_timer, ptr %719, i32 0, i32 12
  %739 = load i32, ptr %738, align 4
  %740 = and i32 %739, 4
  %741 = icmp eq i32 %740, 0
  br i1 %741, label %742, label %773

742:                                              ; preds = %737
  %743 = getelementptr inbounds %struct.snd_timer_params, ptr %6, i32 0, i32 1
  %744 = load i32, ptr %743, align 4
  %745 = icmp eq i32 %744, 0
  br i1 %745, label %884, label %746

746:                                              ; preds = %742
  %747 = load ptr, ptr %715, align 8
  %748 = icmp eq ptr %747, null
  br i1 %748, label %766, label %749

749:                                              ; preds = %746
  %750 = load ptr, ptr %747, align 4
  %751 = icmp eq ptr %750, null
  br i1 %751, label %766, label %752

752:                                              ; preds = %749
  %753 = getelementptr inbounds %struct.snd_timer, ptr %750, i32 0, i32 13
  %754 = call i32 @_raw_spin_lock_irqsave(ptr noundef %753) #13
  %755 = getelementptr inbounds %struct.snd_timer, ptr %750, i32 0, i32 12, i32 7
  %756 = load ptr, ptr %755, align 4
  %757 = icmp eq ptr %756, null
  br i1 %757, label %760, label %758

758:                                              ; preds = %752
  %759 = call i32 %756(ptr noundef nonnull %750) #13
  br label %763

760:                                              ; preds = %752
  %761 = getelementptr inbounds %struct.snd_timer, ptr %750, i32 0, i32 12, i32 1
  %762 = load i32, ptr %761, align 4
  br label %763

763:                                              ; preds = %760, %758
  %764 = phi i32 [ %759, %758 ], [ %762, %760 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %753, i32 noundef %754) #13
  %765 = load i32, ptr %743, align 4
  br label %766

766:                                              ; preds = %763, %749, %746
  %767 = phi i32 [ %744, %746 ], [ %765, %763 ], [ %744, %749 ]
  %768 = phi i32 [ 0, %746 ], [ %764, %763 ], [ 0, %749 ]
  %769 = zext i32 %768 to i64
  %770 = zext i32 %767 to i64
  %771 = mul nuw i64 %769, %770
  %772 = icmp ult i64 %771, 1000000
  br i1 %772, label %884, label %773

773:                                              ; preds = %766, %737
  %774 = getelementptr inbounds %struct.snd_timer_params, ptr %6, i32 0, i32 2
  %775 = load i32, ptr %774, align 4
  %776 = icmp ne i32 %775, 0
  %777 = add i32 %775, -1025
  %778 = icmp ult i32 %777, -993
  %779 = and i1 %776, %778
  br i1 %779, label %884, label %780

780:                                              ; preds = %773
  %781 = getelementptr inbounds %struct.snd_timer_params, ptr %6, i32 0, i32 4
  %782 = load i32, ptr %781, align 4
  %783 = and i32 %782, -455104
  %784 = icmp eq i32 %783, 0
  br i1 %784, label %785, label %884

785:                                              ; preds = %780
  %786 = load ptr, ptr %715, align 8
  %787 = getelementptr inbounds %struct.snd_timer_instance, ptr %786, i32 0, i32 2
  %788 = load i32, ptr %787, align 4
  %789 = and i32 %788, 1
  %790 = icmp eq i32 %789, 0
  br i1 %790, label %793, label %791

791:                                              ; preds = %785
  %792 = call fastcc i32 @snd_timer_stop_slave(ptr noundef %786, i1 noundef zeroext true) #13
  br label %795

793:                                              ; preds = %785
  %794 = call fastcc i32 @snd_timer_stop1(ptr noundef %786, i1 noundef zeroext true) #13
  br label %795

795:                                              ; preds = %793, %791
  %796 = getelementptr inbounds %struct.snd_timer, ptr %719, i32 0, i32 13
  call void @_raw_spin_lock_irq(ptr noundef %796) #13
  %797 = load ptr, ptr %715, align 8
  %798 = getelementptr inbounds %struct.snd_timer_instance, ptr %797, i32 0, i32 2
  %799 = load i32, ptr %798, align 4
  %800 = and i32 %799, -201
  store i32 %800, ptr %798, align 4
  %801 = load i32, ptr %6, align 4
  %802 = and i32 %801, 1
  %803 = icmp eq i32 %802, 0
  br i1 %803, label %809, label %804

804:                                              ; preds = %795
  %805 = load ptr, ptr %715, align 8
  %806 = getelementptr inbounds %struct.snd_timer_instance, ptr %805, i32 0, i32 2
  %807 = load i32, ptr %806, align 4
  %808 = or i32 %807, 8
  store i32 %808, ptr %806, align 4
  br label %809

809:                                              ; preds = %804, %795
  %810 = and i32 %801, 2
  %811 = icmp eq i32 %810, 0
  br i1 %811, label %817, label %812

812:                                              ; preds = %809
  %813 = load ptr, ptr %715, align 8
  %814 = getelementptr inbounds %struct.snd_timer_instance, ptr %813, i32 0, i32 2
  %815 = load i32, ptr %814, align 4
  %816 = or i32 %815, 64
  store i32 %816, ptr %814, align 4
  br label %817

817:                                              ; preds = %812, %809
  %818 = and i32 %801, 4
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %825, label %820

820:                                              ; preds = %817
  %821 = load ptr, ptr %715, align 8
  %822 = getelementptr inbounds %struct.snd_timer_instance, ptr %821, i32 0, i32 2
  %823 = load i32, ptr %822, align 4
  %824 = or i32 %823, 128
  store i32 %824, ptr %822, align 4
  br label %825

825:                                              ; preds = %820, %817
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %826 = load i16, ptr %796, align 4
  %827 = add i16 %826, 1
  store i16 %827, ptr %796, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  %828 = load i32, ptr %774, align 4
  %829 = icmp eq i32 %828, 0
  br i1 %829, label %837, label %830

830:                                              ; preds = %825
  %831 = getelementptr inbounds %struct.snd_timer_user, ptr %715, i32 0, i32 7
  %832 = load i32, ptr %831, align 4
  %833 = icmp eq i32 %832, %828
  br i1 %833, label %837, label %834

834:                                              ; preds = %830
  %835 = call fastcc i32 @realloc_user_queue(ptr noundef %715, i32 noundef %828) #13
  %836 = icmp slt i32 %835, 0
  br i1 %836, label %884, label %837

837:                                              ; preds = %834, %830, %825
  %838 = getelementptr inbounds %struct.snd_timer_user, ptr %715, i32 0, i32 11
  call void @_raw_spin_lock_irq(ptr noundef %838) #13
  %839 = getelementptr inbounds %struct.snd_timer_user, ptr %715, i32 0, i32 6
  store i32 0, ptr %839, align 8
  %840 = getelementptr inbounds %struct.snd_timer_user, ptr %715, i32 0, i32 5
  store i32 0, ptr %840, align 4
  %841 = getelementptr inbounds %struct.snd_timer_user, ptr %715, i32 0, i32 4
  store i32 0, ptr %841, align 8
  %842 = load ptr, ptr %715, align 8
  %843 = getelementptr inbounds %struct.snd_timer_instance, ptr %842, i32 0, i32 2
  %844 = load i32, ptr %843, align 4
  %845 = and i32 %844, 128
  %846 = icmp eq i32 %845, 0
  br i1 %846, label %876, label %847

847:                                              ; preds = %837
  %848 = getelementptr inbounds %struct.snd_timer_user, ptr %715, i32 0, i32 1
  %849 = load i32, ptr %848, align 4
  %850 = icmp eq i32 %849, 0
  br i1 %850, label %868, label %851

851:                                              ; preds = %847
  %852 = getelementptr inbounds %struct.snd_timer_user, ptr %715, i32 0, i32 7
  %853 = load i32, ptr %852, align 4
  %854 = icmp sgt i32 %853, 0
  br i1 %854, label %859, label %855

855:                                              ; preds = %851
  %856 = getelementptr inbounds %struct.snd_timer_user, ptr %715, i32 0, i32 3
  %857 = load i32, ptr %856, align 4
  %858 = add i32 %857, 1
  store i32 %858, ptr %856, align 4
  br label %876

859:                                              ; preds = %851
  %860 = getelementptr inbounds %struct.snd_timer_user, ptr %715, i32 0, i32 10
  %861 = load ptr, ptr %860, align 8
  store i32 1, ptr %840, align 4
  store i32 6, ptr %861, align 8
  %862 = getelementptr inbounds i8, ptr %861, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(28) %862, i8 0, i64 28, i1 false)
  %863 = load i32, ptr %852, align 4
  %864 = load i32, ptr %840, align 4
  %865 = srem i32 %864, %863
  store i32 %865, ptr %840, align 4
  %866 = load i32, ptr %839, align 8
  %867 = add i32 %866, 1
  store i32 %867, ptr %839, align 8
  br label %876

868:                                              ; preds = %847
  %869 = getelementptr inbounds %struct.snd_timer_user, ptr %715, i32 0, i32 9
  %870 = load ptr, ptr %869, align 4
  store i32 0, ptr %870, align 4
  %871 = getelementptr inbounds %struct.snd_timer_read, ptr %870, i32 0, i32 1
  store i32 0, ptr %871, align 4
  %872 = load i32, ptr %839, align 8
  %873 = add i32 %872, 1
  store i32 %873, ptr %839, align 8
  %874 = load i32, ptr %840, align 4
  %875 = add i32 %874, 1
  store i32 %875, ptr %840, align 4
  br label %876

876:                                              ; preds = %868, %859, %855, %837
  %877 = load i32, ptr %781, align 4
  %878 = getelementptr inbounds %struct.snd_timer_user, ptr %715, i32 0, i32 13
  store i32 %877, ptr %878, align 4
  %879 = getelementptr inbounds %struct.snd_timer_params, ptr %6, i32 0, i32 1
  %880 = load i32, ptr %879, align 4
  %881 = getelementptr inbounds %struct.snd_timer_user, ptr %715, i32 0, i32 2
  store i32 %880, ptr %881, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %882 = load i16, ptr %838, align 4
  %883 = add i16 %882, 1
  store i16 %883, ptr %838, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  br label %884

884:                                              ; preds = %876, %834, %780, %773, %766, %742
  %885 = phi i32 [ %835, %834 ], [ 0, %876 ], [ -22, %773 ], [ -22, %780 ], [ -22, %742 ], [ -22, %766 ]
  %886 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %727) #17, !srcloc !20
  %887 = and i32 %886, -13
  %888 = or i32 %887, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %888) #13, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !22
  %889 = call i32 @arm_copy_to_user(ptr noundef %16, ptr noundef nonnull %6, i32 noundef 80) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %886) #13, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !22
  %890 = icmp eq i32 %889, 0
  %891 = select i1 %890, i32 %885, i32 -14
  br label %892

892:                                              ; preds = %884, %733, %718, %714
  %893 = phi i32 [ -77, %714 ], [ -77, %718 ], [ -14, %733 ], [ %891, %884 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #13
  br label %1078

894:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %5) #13
  %895 = load ptr, ptr %13, align 8
  %896 = load ptr, ptr %895, align 8
  %897 = icmp eq ptr %896, null
  br i1 %897, label %952, label %898

898:                                              ; preds = %894
  %899 = getelementptr inbounds i8, ptr %5, i32 24
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %899, i8 0, i32 64, i1 false) #13
  %900 = getelementptr inbounds %struct.snd_timer_user, ptr %895, i32 0, i32 14
  %901 = load i64, ptr %900, align 8
  %902 = trunc i64 %901 to i32
  store i32 %902, ptr %5, align 4
  %903 = getelementptr inbounds %struct.snd_timer_user, ptr %895, i32 0, i32 14, i32 1
  %904 = load i32, ptr %903, align 8
  %905 = getelementptr inbounds %struct.snd_timer_status32, ptr %5, i32 0, i32 1
  store i32 %904, ptr %905, align 4
  %906 = load ptr, ptr %895, align 8
  %907 = icmp eq ptr %906, null
  br i1 %907, label %924, label %908

908:                                              ; preds = %898
  %909 = load ptr, ptr %906, align 4
  %910 = icmp eq ptr %909, null
  br i1 %910, label %924, label %911

911:                                              ; preds = %908
  %912 = getelementptr inbounds %struct.snd_timer, ptr %909, i32 0, i32 13
  %913 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %912) #13
  %914 = getelementptr inbounds %struct.snd_timer, ptr %909, i32 0, i32 12, i32 7
  %915 = load ptr, ptr %914, align 4
  %916 = icmp eq ptr %915, null
  br i1 %916, label %919, label %917

917:                                              ; preds = %911
  %918 = tail call i32 %915(ptr noundef nonnull %909) #13
  br label %922

919:                                              ; preds = %911
  %920 = getelementptr inbounds %struct.snd_timer, ptr %909, i32 0, i32 12, i32 1
  %921 = load i32, ptr %920, align 4
  br label %922

922:                                              ; preds = %919, %917
  %923 = phi i32 [ %918, %917 ], [ %921, %919 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %912, i32 noundef %913) #13
  br label %924

924:                                              ; preds = %922, %908, %898
  %925 = phi i32 [ 0, %898 ], [ %923, %922 ], [ 0, %908 ]
  %926 = getelementptr inbounds %struct.snd_timer_status32, ptr %5, i32 0, i32 2
  store i32 %925, ptr %926, align 4
  %927 = load ptr, ptr %895, align 8
  %928 = getelementptr inbounds %struct.snd_timer_instance, ptr %927, i32 0, i32 13
  %929 = load i32, ptr %928, align 4
  %930 = getelementptr inbounds %struct.snd_timer_status32, ptr %5, i32 0, i32 3
  store i32 %929, ptr %930, align 4
  %931 = getelementptr inbounds %struct.snd_timer_user, ptr %895, i32 0, i32 3
  %932 = load i32, ptr %931, align 4
  %933 = getelementptr inbounds %struct.snd_timer_status32, ptr %5, i32 0, i32 4
  store i32 %932, ptr %933, align 4
  %934 = getelementptr inbounds %struct.snd_timer_user, ptr %895, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %934) #13
  %935 = getelementptr inbounds %struct.snd_timer_user, ptr %895, i32 0, i32 6
  %936 = load i32, ptr %935, align 8
  %937 = getelementptr inbounds %struct.snd_timer_status32, ptr %5, i32 0, i32 5
  store i32 %936, ptr %937, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %938 = load i16, ptr %934, align 4
  %939 = add i16 %938, 1
  store i16 %939, ptr %934, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  %940 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %16, i32 88, i32 -1090519040) #16, !srcloc !19
  %941 = extractvalue { i32, i32 } %940, 0
  %942 = icmp eq i32 %941, 0
  br i1 %942, label %943, label %952

943:                                              ; preds = %924
  %944 = tail call ptr @llvm.thread.pointer() #13
  %945 = getelementptr inbounds %struct.thread_info, ptr %944, i32 0, i32 3
  %946 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %945) #17, !srcloc !20
  %947 = and i32 %946, -13
  %948 = or i32 %947, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %948) #13, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !22
  %949 = call i32 @arm_copy_to_user(ptr noundef %16, ptr noundef nonnull %5, i32 noundef 88) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %946) #13, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !22
  %950 = icmp eq i32 %949, 0
  %951 = select i1 %950, i32 0, i32 -14
  br label %952

952:                                              ; preds = %943, %924, %894
  %953 = phi i32 [ -77, %894 ], [ -14, %924 ], [ %951, %943 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #13
  br label %1078

954:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #13
  %955 = load ptr, ptr %13, align 8
  %956 = load ptr, ptr %955, align 8
  %957 = icmp eq ptr %956, null
  br i1 %957, label %1012, label %958

958:                                              ; preds = %954
  %959 = getelementptr inbounds i8, ptr %4, i32 32
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(96) %959, i8 0, i32 64, i1 false) #13
  %960 = getelementptr inbounds %struct.snd_timer_user, ptr %955, i32 0, i32 14
  %961 = load i64, ptr %960, align 8
  store i64 %961, ptr %4, align 8
  %962 = getelementptr inbounds %struct.snd_timer_user, ptr %955, i32 0, i32 14, i32 1
  %963 = load i32, ptr %962, align 8
  %964 = sext i32 %963 to i64
  %965 = getelementptr inbounds %struct.snd_timer_status64, ptr %4, i32 0, i32 1
  store i64 %964, ptr %965, align 8
  %966 = load ptr, ptr %955, align 8
  %967 = icmp eq ptr %966, null
  br i1 %967, label %984, label %968

968:                                              ; preds = %958
  %969 = load ptr, ptr %966, align 4
  %970 = icmp eq ptr %969, null
  br i1 %970, label %984, label %971

971:                                              ; preds = %968
  %972 = getelementptr inbounds %struct.snd_timer, ptr %969, i32 0, i32 13
  %973 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %972) #13
  %974 = getelementptr inbounds %struct.snd_timer, ptr %969, i32 0, i32 12, i32 7
  %975 = load ptr, ptr %974, align 4
  %976 = icmp eq ptr %975, null
  br i1 %976, label %979, label %977

977:                                              ; preds = %971
  %978 = tail call i32 %975(ptr noundef nonnull %969) #13
  br label %982

979:                                              ; preds = %971
  %980 = getelementptr inbounds %struct.snd_timer, ptr %969, i32 0, i32 12, i32 1
  %981 = load i32, ptr %980, align 4
  br label %982

982:                                              ; preds = %979, %977
  %983 = phi i32 [ %978, %977 ], [ %981, %979 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %972, i32 noundef %973) #13
  br label %984

984:                                              ; preds = %982, %968, %958
  %985 = phi i32 [ 0, %958 ], [ %983, %982 ], [ 0, %968 ]
  %986 = getelementptr inbounds %struct.snd_timer_status64, ptr %4, i32 0, i32 2
  store i32 %985, ptr %986, align 8
  %987 = load ptr, ptr %955, align 8
  %988 = getelementptr inbounds %struct.snd_timer_instance, ptr %987, i32 0, i32 13
  %989 = load i32, ptr %988, align 4
  %990 = getelementptr inbounds %struct.snd_timer_status64, ptr %4, i32 0, i32 3
  store i32 %989, ptr %990, align 4
  %991 = getelementptr inbounds %struct.snd_timer_user, ptr %955, i32 0, i32 3
  %992 = load i32, ptr %991, align 4
  %993 = getelementptr inbounds %struct.snd_timer_status64, ptr %4, i32 0, i32 4
  store i32 %992, ptr %993, align 8
  %994 = getelementptr inbounds %struct.snd_timer_user, ptr %955, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %994) #13
  %995 = getelementptr inbounds %struct.snd_timer_user, ptr %955, i32 0, i32 6
  %996 = load i32, ptr %995, align 8
  %997 = getelementptr inbounds %struct.snd_timer_status64, ptr %4, i32 0, i32 5
  store i32 %996, ptr %997, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %998 = load i16, ptr %994, align 4
  %999 = add i16 %998, 1
  store i16 %999, ptr %994, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  %1000 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %16, i32 96, i32 -1090519040) #16, !srcloc !19
  %1001 = extractvalue { i32, i32 } %1000, 0
  %1002 = icmp eq i32 %1001, 0
  br i1 %1002, label %1003, label %1012

1003:                                             ; preds = %984
  %1004 = tail call ptr @llvm.thread.pointer() #13
  %1005 = getelementptr inbounds %struct.thread_info, ptr %1004, i32 0, i32 3
  %1006 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %1005) #17, !srcloc !20
  %1007 = and i32 %1006, -13
  %1008 = or i32 %1007, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1008) #13, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !22
  %1009 = call i32 @arm_copy_to_user(ptr noundef %16, ptr noundef nonnull %4, i32 noundef 96) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1006) #13, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !22
  %1010 = icmp eq i32 %1009, 0
  %1011 = select i1 %1010, i32 0, i32 -14
  br label %1012

1012:                                             ; preds = %1003, %984, %954
  %1013 = phi i32 [ -77, %954 ], [ -14, %984 ], [ %1011, %1003 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #13
  br label %1078

1014:                                             ; preds = %3, %3
  %1015 = tail call fastcc i32 @snd_timer_user_start(ptr noundef %0) #13
  br label %1078

1016:                                             ; preds = %3, %3
  %1017 = load ptr, ptr %13, align 8
  %1018 = load ptr, ptr %1017, align 8
  %1019 = icmp eq ptr %1018, null
  br i1 %1019, label %1078, label %1020

1020:                                             ; preds = %1016
  %1021 = getelementptr inbounds %struct.snd_timer_instance, ptr %1018, i32 0, i32 2
  %1022 = load i32, ptr %1021, align 4
  %1023 = and i32 %1022, 1
  %1024 = icmp eq i32 %1023, 0
  br i1 %1024, label %1027, label %1025

1025:                                             ; preds = %1020
  %1026 = tail call fastcc i32 @snd_timer_stop_slave(ptr noundef nonnull %1018, i1 noundef zeroext true) #13
  br label %1029

1027:                                             ; preds = %1020
  %1028 = tail call fastcc i32 @snd_timer_stop1(ptr noundef nonnull %1018, i1 noundef zeroext true) #13
  br label %1029

1029:                                             ; preds = %1027, %1025
  %1030 = phi i32 [ %1026, %1025 ], [ %1028, %1027 ]
  %1031 = tail call i32 @llvm.smin.i32(i32 %1030, i32 0) #13
  br label %1078

1032:                                             ; preds = %3, %3
  %1033 = load ptr, ptr %13, align 8
  %1034 = load ptr, ptr %1033, align 8
  %1035 = icmp eq ptr %1034, null
  br i1 %1035, label %1078, label %1036

1036:                                             ; preds = %1032
  %1037 = getelementptr inbounds %struct.snd_timer_instance, ptr %1034, i32 0, i32 2
  %1038 = load i32, ptr %1037, align 4
  %1039 = and i32 %1038, 65536
  %1040 = icmp eq i32 %1039, 0
  br i1 %1040, label %1041, label %1043

1041:                                             ; preds = %1036
  %1042 = tail call fastcc i32 @snd_timer_user_start(ptr noundef %0) #13
  br label %1078

1043:                                             ; preds = %1036
  %1044 = getelementptr inbounds %struct.snd_timer_instance, ptr %1034, i32 0, i32 13
  store i32 0, ptr %1044, align 4
  %1045 = load ptr, ptr %1033, align 8
  %1046 = getelementptr inbounds %struct.snd_timer_instance, ptr %1045, i32 0, i32 2
  %1047 = load i32, ptr %1046, align 4
  %1048 = and i32 %1047, 65536
  %1049 = icmp eq i32 %1048, 0
  br i1 %1049, label %1060, label %1050

1050:                                             ; preds = %1043
  %1051 = and i32 %1047, 1
  %1052 = icmp eq i32 %1051, 0
  br i1 %1052, label %1055, label %1053

1053:                                             ; preds = %1050
  %1054 = tail call fastcc i32 @snd_timer_start_slave(ptr noundef %1045, i1 noundef zeroext false) #13
  br label %1057

1055:                                             ; preds = %1050
  %1056 = tail call fastcc i32 @snd_timer_start1(ptr noundef %1045, i1 noundef zeroext false, i32 noundef 0) #13
  br label %1057

1057:                                             ; preds = %1055, %1053
  %1058 = phi i32 [ %1054, %1053 ], [ %1056, %1055 ]
  %1059 = icmp slt i32 %1058, 0
  br i1 %1059, label %1060, label %1078

1060:                                             ; preds = %1057, %1043
  %1061 = phi i32 [ %1058, %1057 ], [ -22, %1043 ]
  br label %1078

1062:                                             ; preds = %3, %3
  %1063 = load ptr, ptr %13, align 8
  %1064 = load ptr, ptr %1063, align 8
  %1065 = icmp eq ptr %1064, null
  br i1 %1065, label %1078, label %1066

1066:                                             ; preds = %1062
  %1067 = getelementptr inbounds %struct.snd_timer_instance, ptr %1064, i32 0, i32 2
  %1068 = load i32, ptr %1067, align 4
  %1069 = and i32 %1068, 1
  %1070 = icmp eq i32 %1069, 0
  br i1 %1070, label %1073, label %1071

1071:                                             ; preds = %1066
  %1072 = tail call fastcc i32 @snd_timer_stop_slave(ptr noundef nonnull %1064, i1 noundef zeroext false) #13
  br label %1075

1073:                                             ; preds = %1066
  %1074 = tail call fastcc i32 @snd_timer_stop1(ptr noundef nonnull %1064, i1 noundef zeroext false) #13
  br label %1075

1075:                                             ; preds = %1073, %1071
  %1076 = phi i32 [ %1072, %1071 ], [ %1074, %1073 ]
  %1077 = tail call i32 @llvm.smin.i32(i32 %1076, i32 0) #13
  br label %1078

1078:                                             ; preds = %1075, %1062, %1060, %1057, %1041, %1032, %1029, %1016, %1014, %1012, %952, %892, %712, %670, %667, %663, %661, %563, %473, %399, %295, %291, %286, %277, %268, %264, %262, %17, %3
  %1079 = phi i32 [ %1015, %1014 ], [ %1013, %1012 ], [ %953, %952 ], [ %893, %892 ], [ %662, %661 ], [ %564, %563 ], [ %474, %473 ], [ %263, %262 ], [ %25, %17 ], [ -25, %3 ], [ -12, %291 ], [ -16, %264 ], [ -14, %268 ], [ 0, %286 ], [ 0, %277 ], [ %296, %295 ], [ %400, %399 ], [ %713, %712 ], [ -77, %663 ], [ -77, %667 ], [ -12, %670 ], [ -77, %1016 ], [ %1031, %1029 ], [ %1042, %1041 ], [ -77, %1032 ], [ %1061, %1060 ], [ 0, %1057 ], [ -77, %1062 ], [ %1077, %1075 ]
  call void @mutex_unlock(ptr noundef %15) #13
  ret i32 %1079
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_timer_user_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @stream_open(ptr noundef %0, ptr noundef %1) #13
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %19, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 112) #12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.snd_timer_user, ptr %7, i32 0, i32 11
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.snd_timer_user, ptr %7, i32 0, i32 15
  tail call void @__init_waitqueue_head(ptr noundef %11, ptr noundef nonnull @.str.13, ptr noundef nonnull @snd_timer_user_open.__key) #13
  %12 = getelementptr inbounds %struct.snd_timer_user, ptr %7, i32 0, i32 17
  tail call void @__mutex_init(ptr noundef %12, ptr noundef nonnull @.str.15, ptr noundef nonnull @snd_timer_user_open.__key.14) #13
  %13 = getelementptr inbounds %struct.snd_timer_user, ptr %7, i32 0, i32 2
  store i32 1, ptr %13, align 8
  %14 = tail call fastcc i32 @realloc_user_queue(ptr noundef nonnull %7, i32 noundef 128)
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  tail call void @kfree(ptr noundef nonnull %7) #13
  br label %19

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %7, ptr %18, align 8
  br label %19

19:                                               ; preds = %17, %16, %5, %2
  %20 = phi i32 [ -12, %16 ], [ 0, %17 ], [ %3, %2 ], [ -12, %5 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_timer_user_release(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %2
  store ptr null, ptr %4, align 8
  %8 = getelementptr inbounds %struct.snd_timer_user, ptr %5, i32 0, i32 17
  tail call void @mutex_lock(ptr noundef %8) #13
  %9 = load ptr, ptr %5, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %26, label %11

11:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store ptr null, ptr %3, align 4
  tail call void @mutex_lock(ptr noundef nonnull @register_mutex) #13
  call fastcc void @snd_timer_close_locked(ptr noundef nonnull %9, ptr noundef nonnull %3) #13
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #13
  %12 = load ptr, ptr %3, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @put_device(ptr noundef nonnull %12) #13
  br label %15

15:                                               ; preds = %14, %11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  %16 = load ptr, ptr %5, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.snd_timer_instance, ptr %16, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void %20(ptr noundef nonnull %16) #13
  br label %23

23:                                               ; preds = %22, %18
  %24 = getelementptr inbounds %struct.snd_timer_instance, ptr %16, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  tail call void @kfree(ptr noundef %25) #13
  tail call void @kfree(ptr noundef nonnull %16) #13
  br label %26

26:                                               ; preds = %23, %15, %7
  tail call void @mutex_unlock(ptr noundef %8) #13
  %27 = getelementptr inbounds %struct.snd_timer_user, ptr %5, i32 0, i32 9
  %28 = load ptr, ptr %27, align 4
  tail call void @kfree(ptr noundef %28) #13
  %29 = getelementptr inbounds %struct.snd_timer_user, ptr %5, i32 0, i32 10
  %30 = load ptr, ptr %29, align 8
  tail call void @kfree(ptr noundef %30) #13
  tail call void @kfree(ptr noundef nonnull %5) #13
  br label %31

31:                                               ; preds = %26, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_timer_user_fasync(i32 noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.snd_timer_user, ptr %5, i32 0, i32 16
  %7 = tail call i32 @fasync_helper(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %6) #13
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_timer_user_start(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %39, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.snd_timer_instance, ptr %4, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = tail call fastcc i32 @snd_timer_stop_slave(ptr noundef nonnull %4, i1 noundef zeroext true) #13
  br label %15

13:                                               ; preds = %6
  %14 = tail call fastcc i32 @snd_timer_stop1(ptr noundef nonnull %4, i1 noundef zeroext true) #13
  br label %15

15:                                               ; preds = %13, %11
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr inbounds %struct.snd_timer_instance, ptr %16, i32 0, i32 13
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.snd_timer_user, ptr %3, i32 0, i32 12
  store i32 0, ptr %18, align 8
  %19 = load ptr, ptr %3, align 8
  %20 = getelementptr inbounds %struct.snd_timer_user, ptr %3, i32 0, i32 2
  %21 = load i32, ptr %20, align 8
  %22 = icmp eq ptr %19, null
  %23 = icmp eq i32 %21, 0
  %24 = or i1 %22, %23
  br i1 %24, label %37, label %25

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.snd_timer_instance, ptr %19, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = tail call fastcc i32 @snd_timer_start_slave(ptr noundef nonnull %19, i1 noundef zeroext true) #13
  br label %34

32:                                               ; preds = %25
  %33 = tail call fastcc i32 @snd_timer_start1(ptr noundef nonnull %19, i1 noundef zeroext true, i32 noundef %21) #13
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34, %15
  %38 = phi i32 [ %35, %34 ], [ -22, %15 ]
  br label %39

39:                                               ; preds = %37, %34, %1
  %40 = phi i32 [ -77, %1 ], [ %38, %37 ], [ 0, %34 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @realloc_user_queue(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.snd_timer_user, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 32) #13
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %34, label %9, !prof !26

9:                                                ; preds = %6
  %10 = extractvalue { i32, i1 } %7, 0
  %11 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %10, i32 noundef 3520) #18
  %12 = icmp eq ptr %11, null
  br i1 %12, label %34, label %20

13:                                               ; preds = %2
  %14 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 8) #13
  %15 = extractvalue { i32, i1 } %14, 1
  br i1 %15, label %34, label %16, !prof !26

16:                                               ; preds = %13
  %17 = extractvalue { i32, i1 } %14, 0
  %18 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %17, i32 noundef 3520) #18
  %19 = icmp eq ptr %18, null
  br i1 %19, label %34, label %20

20:                                               ; preds = %16, %9
  %21 = phi ptr [ null, %9 ], [ %18, %16 ]
  %22 = phi ptr [ %11, %9 ], [ null, %16 ]
  %23 = getelementptr inbounds %struct.snd_timer_user, ptr %0, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %23) #13
  %24 = getelementptr inbounds %struct.snd_timer_user, ptr %0, i32 0, i32 9
  %25 = load ptr, ptr %24, align 4
  tail call void @kfree(ptr noundef %25) #13
  %26 = getelementptr inbounds %struct.snd_timer_user, ptr %0, i32 0, i32 10
  %27 = load ptr, ptr %26, align 8
  tail call void @kfree(ptr noundef %27) #13
  %28 = getelementptr inbounds %struct.snd_timer_user, ptr %0, i32 0, i32 7
  store i32 %1, ptr %28, align 4
  store ptr %21, ptr %24, align 4
  store ptr %22, ptr %26, align 8
  %29 = getelementptr inbounds %struct.snd_timer_user, ptr %0, i32 0, i32 6
  store i32 0, ptr %29, align 8
  %30 = getelementptr inbounds %struct.snd_timer_user, ptr %0, i32 0, i32 5
  store i32 0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.snd_timer_user, ptr %0, i32 0, i32 4
  store i32 0, ptr %31, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %32 = load i16, ptr %23, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %23, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  br label %34

34:                                               ; preds = %20, %16, %13, %9, %6
  %35 = phi i32 [ 0, %20 ], [ -12, %9 ], [ -12, %16 ], [ -12, %6 ], [ -12, %13 ]
  ret i32 %35
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_timer_user_tinterrupt(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.timespec64, align 8
  %5 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  %7 = getelementptr inbounds %struct.snd_timer_user, ptr %6, i32 0, i32 11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  tail call void @_raw_spin_lock(ptr noundef %7) #13
  %8 = getelementptr inbounds %struct.snd_timer_user, ptr %6, i32 0, i32 13
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 3
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %13 = load i16, ptr %7, align 4
  %14 = add i16 %13, 1
  store i16 %14, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  br label %140

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.snd_timer_user, ptr %6, i32 0, i32 12
  %17 = load i32, ptr %16, align 8
  %18 = icmp ne i32 %17, %1
  %19 = icmp ne i32 %2, 0
  %20 = or i1 %19, %18
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load i32, ptr @timer_tstamp_monotonic, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  call void @ktime_get_ts64(ptr noundef nonnull %4) #13
  br label %26

25:                                               ; preds = %21
  call void @ktime_get_real_ts64(ptr noundef nonnull %4) #13
  br label %26

26:                                               ; preds = %25, %24, %15
  %27 = load i32, ptr %8, align 4
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %67, label %30

30:                                               ; preds = %26
  %31 = load i32, ptr %16, align 8
  %32 = icmp eq i32 %31, %1
  br i1 %32, label %67, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.snd_timer_user, ptr %6, i32 0, i32 6
  %35 = load i32, ptr %34, align 8
  %36 = getelementptr inbounds %struct.snd_timer_user, ptr %6, i32 0, i32 7
  %37 = load i32, ptr %36, align 4
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.snd_timer_user, ptr %6, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, 1
  store i32 %42, ptr %40, align 4
  br label %65

43:                                               ; preds = %33
  %44 = getelementptr inbounds %struct.timespec64, ptr %4, i32 0, i32 1
  %45 = load i32, ptr %44, align 8
  %46 = sext i32 %45 to i64
  %47 = load i64, ptr %4, align 8
  %48 = getelementptr inbounds %struct.snd_timer_user, ptr %6, i32 0, i32 10
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %struct.snd_timer_user, ptr %6, i32 0, i32 5
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, 1
  store i32 %52, ptr %50, align 4
  %53 = getelementptr %struct.snd_timer_tread64, ptr %49, i32 %51
  store i32 0, ptr %53, align 8
  %54 = getelementptr inbounds i8, ptr %53, i32 4
  store i32 0, ptr %54, align 4
  %55 = getelementptr inbounds i8, ptr %53, i32 8
  store i64 %47, ptr %55, align 8
  %56 = getelementptr inbounds i8, ptr %53, i32 16
  store i64 %46, ptr %56, align 8
  %57 = getelementptr inbounds i8, ptr %53, i32 24
  store i32 %1, ptr %57, align 8
  %58 = getelementptr inbounds i8, ptr %53, i32 28
  store i32 0, ptr %58, align 4
  %59 = load i32, ptr %36, align 4
  %60 = load i32, ptr %50, align 4
  %61 = srem i32 %60, %59
  store i32 %61, ptr %50, align 4
  %62 = load i32, ptr %34, align 8
  %63 = add i32 %62, 1
  store i32 %63, ptr %34, align 8
  %64 = load i32, ptr %8, align 4
  br label %65

65:                                               ; preds = %43, %39
  %66 = phi i32 [ %27, %39 ], [ %64, %43 ]
  store i32 %1, ptr %16, align 8
  br label %67

67:                                               ; preds = %65, %30, %26
  %68 = phi i32 [ %66, %65 ], [ %27, %30 ], [ %27, %26 ]
  %69 = phi i32 [ 1, %65 ], [ 0, %30 ], [ 0, %26 ]
  %70 = and i32 %68, 2
  %71 = icmp eq i32 %70, 0
  %72 = icmp eq i32 %2, 0
  %73 = or i1 %72, %71
  br i1 %73, label %132, label %74

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.snd_timer_user, ptr %6, i32 0, i32 6
  %76 = load i32, ptr %75, align 8
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %103

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.snd_timer_user, ptr %6, i32 0, i32 5
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.snd_timer_user, ptr %6, i32 0, i32 7
  %84 = load i32, ptr %83, align 4
  br label %85

85:                                               ; preds = %82, %78
  %86 = phi i32 [ %84, %82 ], [ %80, %78 ]
  %87 = add i32 %86, -1
  %88 = getelementptr inbounds %struct.snd_timer_user, ptr %6, i32 0, i32 10
  %89 = load ptr, ptr %88, align 8
  %90 = getelementptr %struct.snd_timer_tread64, ptr %89, i32 %87
  %91 = load i32, ptr %90, align 8
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %103

93:                                               ; preds = %85
  %94 = load i64, ptr %4, align 8
  %95 = getelementptr %struct.snd_timer_tread64, ptr %89, i32 %87, i32 2
  store i64 %94, ptr %95, align 8
  %96 = getelementptr inbounds %struct.timespec64, ptr %4, i32 0, i32 1
  %97 = load i32, ptr %96, align 8
  %98 = sext i32 %97 to i64
  %99 = getelementptr %struct.snd_timer_tread64, ptr %89, i32 %87, i32 3
  store i64 %98, ptr %99, align 8
  %100 = getelementptr %struct.snd_timer_tread64, ptr %89, i32 %87, i32 4
  %101 = load i32, ptr %100, align 8
  %102 = add i32 %101, %2
  store i32 %102, ptr %100, align 8
  br label %132

103:                                              ; preds = %85, %74
  %104 = getelementptr inbounds %struct.snd_timer_user, ptr %6, i32 0, i32 7
  %105 = load i32, ptr %104, align 4
  %106 = icmp slt i32 %76, %105
  br i1 %106, label %111, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.snd_timer_user, ptr %6, i32 0, i32 3
  %109 = load i32, ptr %108, align 4
  %110 = add i32 %109, 1
  store i32 %110, ptr %108, align 4
  br label %132

111:                                              ; preds = %103
  %112 = getelementptr inbounds %struct.timespec64, ptr %4, i32 0, i32 1
  %113 = load i32, ptr %112, align 8
  %114 = sext i32 %113 to i64
  %115 = load i64, ptr %4, align 8
  %116 = getelementptr inbounds %struct.snd_timer_user, ptr %6, i32 0, i32 10
  %117 = load ptr, ptr %116, align 8
  %118 = getelementptr inbounds %struct.snd_timer_user, ptr %6, i32 0, i32 5
  %119 = load i32, ptr %118, align 4
  %120 = add i32 %119, 1
  store i32 %120, ptr %118, align 4
  %121 = getelementptr %struct.snd_timer_tread64, ptr %117, i32 %119
  store i32 1, ptr %121, align 8
  %122 = getelementptr inbounds i8, ptr %121, i32 4
  store i32 0, ptr %122, align 4
  %123 = getelementptr inbounds i8, ptr %121, i32 8
  store i64 %115, ptr %123, align 8
  %124 = getelementptr inbounds i8, ptr %121, i32 16
  store i64 %114, ptr %124, align 8
  %125 = getelementptr inbounds i8, ptr %121, i32 24
  store i32 %2, ptr %125, align 8
  %126 = getelementptr inbounds i8, ptr %121, i32 28
  store i32 0, ptr %126, align 4
  %127 = load i32, ptr %104, align 4
  %128 = load i32, ptr %118, align 4
  %129 = srem i32 %128, %127
  store i32 %129, ptr %118, align 4
  %130 = load i32, ptr %75, align 8
  %131 = add i32 %130, 1
  store i32 %131, ptr %75, align 8
  br label %132

132:                                              ; preds = %111, %107, %93, %67
  %133 = phi i32 [ %69, %67 ], [ 1, %93 ], [ 1, %107 ], [ 1, %111 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %134 = load i16, ptr %7, align 4
  %135 = add i16 %134, 1
  store i16 %135, ptr %7, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  %136 = icmp eq i32 %133, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %132
  %138 = getelementptr inbounds %struct.snd_timer_user, ptr %6, i32 0, i32 16
  call void @kill_fasync(ptr noundef %138, i32 noundef 29, i32 noundef 1) #13
  %139 = getelementptr inbounds %struct.snd_timer_user, ptr %6, i32 0, i32 15
  call void @__wake_up(ptr noundef %139, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %140

140:                                              ; preds = %137, %132, %12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_timer_user_interrupt(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_timer_user, ptr %5, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %6) #13
  %7 = getelementptr inbounds %struct.snd_timer_user, ptr %5, i32 0, i32 6
  %8 = load i32, ptr %7, align 8
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.snd_timer_user, ptr %5, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.snd_timer_user, ptr %5, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %10
  %18 = phi i32 [ %16, %14 ], [ %12, %10 ]
  %19 = add i32 %18, -1
  %20 = getelementptr inbounds %struct.snd_timer_user, ptr %5, i32 0, i32 9
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr %struct.snd_timer_read, ptr %21, i32 %19
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, %1
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = getelementptr %struct.snd_timer_read, ptr %21, i32 %19, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, %2
  store i32 %28, ptr %26, align 4
  br label %48

29:                                               ; preds = %17, %3
  %30 = getelementptr inbounds %struct.snd_timer_user, ptr %5, i32 0, i32 7
  %31 = load i32, ptr %30, align 4
  %32 = icmp slt i32 %8, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.snd_timer_user, ptr %5, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, 1
  store i32 %36, ptr %34, align 4
  br label %48

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.snd_timer_user, ptr %5, i32 0, i32 9
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.snd_timer_user, ptr %5, i32 0, i32 5
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, 1
  %43 = getelementptr %struct.snd_timer_read, ptr %39, i32 %41
  %44 = srem i32 %42, %31
  store i32 %44, ptr %40, align 4
  store i32 %1, ptr %43, align 4
  %45 = getelementptr %struct.snd_timer_read, ptr %39, i32 %41, i32 1
  store i32 %2, ptr %45, align 4
  %46 = load i32, ptr %7, align 8
  %47 = add i32 %46, 1
  store i32 %47, ptr %7, align 8
  br label %48

48:                                               ; preds = %37, %33, %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %49 = load i16, ptr %6, align 4
  %50 = add i16 %49, 1
  store i16 %50, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  %51 = getelementptr inbounds %struct.snd_timer_user, ptr %5, i32 0, i32 16
  tail call void @kill_fasync(ptr noundef %51, i32 noundef 29, i32 noundef 1) #13
  %52 = getelementptr inbounds %struct.snd_timer_user, ptr %5, i32 0, i32 15
  tail call void @__wake_up(ptr noundef %52, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_timer_user_ccallback(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = add i32 %1, -2
  %8 = icmp ult i32 %7, 4
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.snd_timer_user, ptr %6, i32 0, i32 14
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %10, ptr noundef align 8 dereferenceable(16) %2, i32 16, i1 false)
  br label %11

11:                                               ; preds = %9, %4
  %12 = getelementptr inbounds %struct.snd_timer_user, ptr %6, i32 0, i32 13
  %13 = load i32, ptr %12, align 4
  %14 = shl nuw i32 1, %1
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %57, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.snd_timer_user, ptr %6, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %57, label %21

21:                                               ; preds = %17
  %22 = load i64, ptr %2, align 8
  %23 = getelementptr inbounds %struct.timespec64, ptr %2, i32 0, i32 1
  %24 = load i32, ptr %23, align 8
  %25 = getelementptr inbounds %struct.snd_timer_user, ptr %6, i32 0, i32 11
  %26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %25) #13
  %27 = getelementptr inbounds %struct.snd_timer_user, ptr %6, i32 0, i32 6
  %28 = load i32, ptr %27, align 8
  %29 = getelementptr inbounds %struct.snd_timer_user, ptr %6, i32 0, i32 7
  %30 = load i32, ptr %29, align 4
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.snd_timer_user, ptr %6, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, 1
  store i32 %35, ptr %33, align 4
  br label %54

36:                                               ; preds = %21
  %37 = sext i32 %24 to i64
  %38 = getelementptr inbounds %struct.snd_timer_user, ptr %6, i32 0, i32 10
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.snd_timer_user, ptr %6, i32 0, i32 5
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, 1
  store i32 %42, ptr %40, align 4
  %43 = getelementptr %struct.snd_timer_tread64, ptr %39, i32 %41
  store i32 %1, ptr %43, align 8
  %44 = getelementptr inbounds i8, ptr %43, i32 4
  store i32 0, ptr %44, align 4
  %45 = getelementptr inbounds i8, ptr %43, i32 8
  store i64 %22, ptr %45, align 8
  %46 = getelementptr inbounds i8, ptr %43, i32 16
  store i64 %37, ptr %46, align 8
  %47 = getelementptr inbounds i8, ptr %43, i32 24
  store i32 %3, ptr %47, align 8
  %48 = getelementptr inbounds i8, ptr %43, i32 28
  store i32 0, ptr %48, align 4
  %49 = load i32, ptr %29, align 4
  %50 = load i32, ptr %40, align 4
  %51 = srem i32 %50, %49
  store i32 %51, ptr %40, align 4
  %52 = load i32, ptr %27, align 8
  %53 = add i32 %52, 1
  store i32 %53, ptr %27, align 8
  br label %54

54:                                               ; preds = %36, %32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %25, i32 noundef %26) #13
  %55 = getelementptr inbounds %struct.snd_timer_user, ptr %6, i32 0, i32 16
  tail call void @kill_fasync(ptr noundef %55, i32 noundef 29, i32 noundef 1) #13
  %56 = getelementptr inbounds %struct.snd_timer_user, ptr %6, i32 0, i32 15
  tail call void @__wake_up(ptr noundef %56, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %57

57:                                               ; preds = %54, %17, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_timer_user_disconnect(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_timer_user, ptr %3, i32 0, i32 8
  store i8 1, ptr %4, align 8
  %5 = getelementptr inbounds %struct.snd_timer_user, ptr %3, i32 0, i32 15
  tail call void @__wake_up(ptr noundef %5, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stream_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fasync_helper(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_info_create_module_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_timer_proc_read(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @register_mutex) #13
  %3 = load ptr, ptr @snd_timer_list, align 4
  %4 = icmp eq ptr %3, @snd_timer_list
  br i1 %4, label %86, label %5

5:                                                ; preds = %83, %2
  %6 = phi ptr [ %84, %83 ], [ %3, %2 ]
  %7 = getelementptr i8, ptr %6, i32 -236
  %8 = getelementptr i8, ptr %6, i32 -232
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 25
  %13 = load i32, ptr %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %83

15:                                               ; preds = %11, %5
  %16 = load i32, ptr %7, align 4
  switch i32 %16, label %33 [
    i32 1, label %17
    i32 2, label %21
    i32 3, label %26
  ]

17:                                               ; preds = %15
  %18 = load ptr, ptr %1, align 4
  %19 = getelementptr i8, ptr %6, i32 -224
  %20 = load i32, ptr %19, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %18, ptr noundef nonnull @.str.17, i32 noundef %20) #13
  br label %43

21:                                               ; preds = %15
  %22 = load ptr, ptr %1, align 4
  %23 = load i32, ptr %9, align 8
  %24 = getelementptr i8, ptr %6, i32 -224
  %25 = load i32, ptr %24, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %22, ptr noundef nonnull @.str.18, i32 noundef %23, i32 noundef %25) #13
  br label %43

26:                                               ; preds = %15
  %27 = load ptr, ptr %1, align 4
  %28 = load i32, ptr %9, align 8
  %29 = getelementptr i8, ptr %6, i32 -224
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr i8, ptr %6, i32 -220
  %32 = load i32, ptr %31, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %27, ptr noundef nonnull @.str.19, i32 noundef %28, i32 noundef %30, i32 noundef %32) #13
  br label %43

33:                                               ; preds = %15
  %34 = load ptr, ptr %1, align 4
  br i1 %10, label %37, label %35

35:                                               ; preds = %33
  %36 = load i32, ptr %9, align 8
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %36, %35 ], [ -1, %33 ]
  %39 = getelementptr i8, ptr %6, i32 -224
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr i8, ptr %6, i32 -220
  %42 = load i32, ptr %41, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %34, ptr noundef nonnull @.str.20, i32 noundef %16, i32 noundef %38, i32 noundef %40, i32 noundef %42) #13
  br label %43

43:                                               ; preds = %37, %26, %21, %17
  %44 = load ptr, ptr %1, align 4
  %45 = getelementptr i8, ptr %6, i32 -152
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %44, ptr noundef nonnull @.str.21, ptr noundef %45) #13
  %46 = getelementptr i8, ptr %6, i32 -52
  %47 = getelementptr i8, ptr %6, i32 -48
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %43
  %51 = load ptr, ptr %1, align 4
  %52 = freeze i32 %48
  %53 = udiv i32 %52, 1000
  %54 = mul i32 %53, 1000
  %55 = sub i32 %52, %54
  %56 = getelementptr i8, ptr %6, i32 -36
  %57 = load i32, ptr %56, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %51, ptr noundef nonnull @.str.22, i32 noundef %53, i32 noundef %55, i32 noundef %57) #13
  br label %58

58:                                               ; preds = %50, %43
  %59 = load i32, ptr %46, align 4
  %60 = and i32 %59, 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %63, ptr noundef nonnull @.str.23) #13
  br label %64

64:                                               ; preds = %62, %58
  %65 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %65, ptr noundef nonnull @.str.24) #13
  %66 = getelementptr i8, ptr %6, i32 8
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, %66
  br i1 %68, label %83, label %69

69:                                               ; preds = %69, %64
  %70 = phi ptr [ %81, %69 ], [ %67, %64 ]
  %71 = load ptr, ptr %1, align 4
  %72 = getelementptr i8, ptr %70, i32 -60
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  %75 = select i1 %74, ptr @.str.26, ptr %73
  %76 = getelementptr i8, ptr %70, i32 -56
  %77 = load i32, ptr %76, align 4
  %78 = and i32 %77, 6
  %79 = icmp eq i32 %78, 0
  %80 = select i1 %79, ptr @.str.28, ptr @.str.27
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %71, ptr noundef nonnull @.str.25, ptr noundef nonnull %75, ptr noundef nonnull %80) #13
  %81 = load ptr, ptr %70, align 4
  %82 = icmp eq ptr %81, %66
  br i1 %82, label %83, label %69

83:                                               ; preds = %69, %64, %11
  %84 = load ptr, ptr %6, align 4
  %85 = icmp eq ptr %84, @snd_timer_list
  br i1 %85, label %86, label %5

86:                                               ; preds = %83, %2
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_info_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_info_free_entry(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #10

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { cold }
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
!8 = !{i64 2149224845}
!9 = !{i64 2149220669}
!10 = !{i64 2149220744, i64 2149220771, i64 2149220818, i64 2149220840, i64 2149220868, i64 2149220888}
!11 = !{i64 342887}
!12 = !{i64 2149248989}
!13 = !{i64 2149247848}
!14 = !{!"branch_weights", i32 1, i32 4001}
!15 = !{!"auto-init"}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2152595420}
!18 = !{i8 0, i8 2}
!19 = !{i64 2151368545, i64 2151368570}
!20 = !{i64 3864079}
!21 = !{i64 3864276}
!22 = !{i64 2151349555}
!23 = !{i64 2152577587, i64 2152577867, i64 2152578201, i64 2152578535}
!24 = !{i64 2152564922, i64 2152565202, i64 2152565536, i64 2152565870}
!25 = !{i64 2151367967, i64 2151367992}
!26 = !{!"branch_weights", i32 1, i32 2000}
