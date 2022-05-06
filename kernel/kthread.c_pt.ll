; ModuleID = '/llk/IR/kernel/kthread.c_pt.bc'
source_filename = "../kernel/kthread.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_should_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_should_stop\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_should_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kthread_should_park:\09\09\09\09\09"
module asm "\09.asciz \09\22__kthread_should_park\22\09\09\09\09\09"
module asm "__kstrtabns___kthread_should_park:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_should_park:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_should_park\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_should_park:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_freezable_should_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_freezable_should_stop\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_freezable_should_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_func:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_func\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_func:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_data:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_data\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_parkme:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_parkme\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_parkme:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_complete_and_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_complete_and_exit\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_complete_and_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_create_on_node:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_create_on_node\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_create_on_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_bind:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_bind\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_bind:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_create_on_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_create_on_cpu\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_create_on_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_unpark:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_unpark\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_unpark:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_park:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_park\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_park:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_stop\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kthread_init_worker:\09\09\09\09\09"
module asm "\09.asciz \09\22__kthread_init_worker\22\09\09\09\09\09"
module asm "__kstrtabns___kthread_init_worker:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_worker_fn:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_worker_fn\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_worker_fn:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_create_worker:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_create_worker\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_create_worker:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_create_worker_on_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_create_worker_on_cpu\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_create_worker_on_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_queue_work:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_queue_work\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_queue_work:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_delayed_work_timer_fn:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_delayed_work_timer_fn\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_delayed_work_timer_fn:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_queue_delayed_work:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_queue_delayed_work\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_queue_delayed_work:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_flush_work:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_flush_work\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_flush_work:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_mod_delayed_work:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_mod_delayed_work\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_mod_delayed_work:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_cancel_work_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_cancel_work_sync\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_cancel_work_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_cancel_delayed_work_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_cancel_delayed_work_sync\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_cancel_delayed_work_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_flush_worker:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_flush_worker\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_flush_worker:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_destroy_worker:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_destroy_worker\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_destroy_worker:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_use_mm:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_use_mm\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_use_mm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_unuse_mm:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_unuse_mm\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_unuse_mm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.lock_class_key = type {}
%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.cpumask = type { [1 x i32] }
%struct.sched_param = type { i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.61, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.54 }
%union.anon.54 = type { %struct.anon.55 }
%struct.anon.55 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.61 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.kthread = type { i32, i32, i32, ptr, ptr, %struct.mm_segment_t, %struct.completion, %struct.completion, ptr }
%struct.mm_segment_t = type {}
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.__va_list = type { ptr }
%struct.kthread_create_info = type { ptr, ptr, i32, ptr, ptr, %struct.list_head }
%struct.kthread_worker = type { i32, %struct.raw_spinlock, %struct.list_head, %struct.list_head, ptr, ptr }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.kthread_delayed_work = type { %struct.kthread_work, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.kthread_flush_work = type { %struct.kthread_work, %struct.completion }
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mm_struct = type { %struct.anon, [0 x i32] }

@set_kthread_struct.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [17 x i8] c"kernel/kthread.c\00", align 1
@__kstrtab_kthread_should_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_should_stop = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_should_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_should_stop to i32), ptr @__kstrtab_kthread_should_stop, ptr @__kstrtabns_kthread_should_stop }, section "___ksymtab+kthread_should_stop", align 4
@__kstrtab___kthread_should_park = external dso_local constant [0 x i8], align 1
@__kstrtabns___kthread_should_park = external dso_local constant [0 x i8], align 1
@__ksymtab___kthread_should_park = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kthread_should_park to i32), ptr @__kstrtab___kthread_should_park, ptr @__kstrtabns___kthread_should_park }, section "___ksymtab_gpl+__kthread_should_park", align 4
@__kstrtab_kthread_should_park = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_should_park = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_should_park = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_should_park to i32), ptr @__kstrtab_kthread_should_park, ptr @__kstrtabns_kthread_should_park }, section "___ksymtab_gpl+kthread_should_park", align 4
@__kstrtab_kthread_freezable_should_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_freezable_should_stop = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_freezable_should_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_freezable_should_stop to i32), ptr @__kstrtab_kthread_freezable_should_stop, ptr @__kstrtabns_kthread_freezable_should_stop }, section "___ksymtab_gpl+kthread_freezable_should_stop", align 4
@__kstrtab_kthread_func = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_func = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_func = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_func to i32), ptr @__kstrtab_kthread_func, ptr @__kstrtabns_kthread_func }, section "___ksymtab_gpl+kthread_func", align 4
@__kstrtab_kthread_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_data = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_data to i32), ptr @__kstrtab_kthread_data, ptr @__kstrtabns_kthread_data }, section "___ksymtab_gpl+kthread_data", align 4
@__kstrtab_kthread_parkme = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_parkme = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_parkme = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_parkme to i32), ptr @__kstrtab_kthread_parkme, ptr @__kstrtabns_kthread_parkme }, section "___ksymtab_gpl+kthread_parkme", align 4
@__kstrtab_kthread_complete_and_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_complete_and_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_complete_and_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_complete_and_exit to i32), ptr @__kstrtab_kthread_complete_and_exit, ptr @__kstrtabns_kthread_complete_and_exit }, section "___ksymtab+kthread_complete_and_exit", align 4
@__kstrtab_kthread_create_on_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_create_on_node = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_create_on_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_create_on_node to i32), ptr @__kstrtab_kthread_create_on_node, ptr @__kstrtabns_kthread_create_on_node }, section "___ksymtab+kthread_create_on_node", align 4
@__kstrtab_kthread_bind = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_bind = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_bind = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_bind to i32), ptr @__kstrtab_kthread_bind, ptr @__kstrtabns_kthread_bind }, section "___ksymtab+kthread_bind", align 4
@__kstrtab_kthread_create_on_cpu = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_create_on_cpu = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_create_on_cpu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_create_on_cpu to i32), ptr @__kstrtab_kthread_create_on_cpu, ptr @__kstrtabns_kthread_create_on_cpu }, section "___ksymtab+kthread_create_on_cpu", align 4
@kthread_set_per_cpu.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_kthread_unpark = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_unpark = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_unpark = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_unpark to i32), ptr @__kstrtab_kthread_unpark, ptr @__kstrtabns_kthread_unpark }, section "___ksymtab_gpl+kthread_unpark", align 4
@kthread_park.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kthread_park.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_kthread_park = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_park = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_park = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_park to i32), ptr @__kstrtab_kthread_park, ptr @__kstrtabns_kthread_park }, section "___ksymtab_gpl+kthread_park", align 4
@__kstrtab_kthread_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_stop = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_stop to i32), ptr @__kstrtab_kthread_stop, ptr @__kstrtabns_kthread_stop }, section "___ksymtab+kthread_stop", align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"kthreadd\00", align 1
@kthread_create_list = internal global %struct.list_head { ptr @kthread_create_list, ptr @kthread_create_list }, align 4
@kthread_create_lock = internal global %struct.spinlock zeroinitializer, align 4
@__kstrtab___kthread_init_worker = external dso_local constant [0 x i8], align 1
@__kstrtabns___kthread_init_worker = external dso_local constant [0 x i8], align 1
@__ksymtab___kthread_init_worker = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kthread_init_worker to i32), ptr @__kstrtab___kthread_init_worker, ptr @__kstrtabns___kthread_init_worker }, section "___ksymtab_gpl+__kthread_init_worker", align 4
@__kstrtab_kthread_worker_fn = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_worker_fn = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_worker_fn = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_worker_fn to i32), ptr @__kstrtab_kthread_worker_fn, ptr @__kstrtabns_kthread_worker_fn }, section "___ksymtab_gpl+kthread_worker_fn", align 4
@__kstrtab_kthread_create_worker = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_create_worker = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_create_worker = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_create_worker to i32), ptr @__kstrtab_kthread_create_worker, ptr @__kstrtabns_kthread_create_worker }, section "___ksymtab+kthread_create_worker", align 4
@__kstrtab_kthread_create_worker_on_cpu = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_create_worker_on_cpu = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_create_worker_on_cpu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_create_worker_on_cpu to i32), ptr @__kstrtab_kthread_create_worker_on_cpu, ptr @__kstrtabns_kthread_create_worker_on_cpu }, section "___ksymtab+kthread_create_worker_on_cpu", align 4
@__kstrtab_kthread_queue_work = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_queue_work = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_queue_work = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_queue_work to i32), ptr @__kstrtab_kthread_queue_work, ptr @__kstrtabns_kthread_queue_work }, section "___ksymtab_gpl+kthread_queue_work", align 4
@kthread_delayed_work_timer_fn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kthread_delayed_work_timer_fn.__already_done.3 = internal unnamed_addr global i1 false, section ".data.once", align 1
@kthread_delayed_work_timer_fn.__already_done.4 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_kthread_delayed_work_timer_fn = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_delayed_work_timer_fn = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_delayed_work_timer_fn = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_delayed_work_timer_fn to i32), ptr @__kstrtab_kthread_delayed_work_timer_fn, ptr @__kstrtabns_kthread_delayed_work_timer_fn }, section "___ksymtab+kthread_delayed_work_timer_fn", align 4
@__kstrtab_kthread_queue_delayed_work = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_queue_delayed_work = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_queue_delayed_work = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_queue_delayed_work to i32), ptr @__kstrtab_kthread_queue_delayed_work, ptr @__kstrtabns_kthread_queue_delayed_work }, section "___ksymtab_gpl+kthread_queue_delayed_work", align 4
@kthread_flush_work.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_kthread_flush_work = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_flush_work = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_flush_work = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_flush_work to i32), ptr @__kstrtab_kthread_flush_work, ptr @__kstrtabns_kthread_flush_work }, section "___ksymtab_gpl+kthread_flush_work", align 4
@kthread_mod_delayed_work.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_kthread_mod_delayed_work = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_mod_delayed_work = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_mod_delayed_work = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_mod_delayed_work to i32), ptr @__kstrtab_kthread_mod_delayed_work, ptr @__kstrtabns_kthread_mod_delayed_work }, section "___ksymtab_gpl+kthread_mod_delayed_work", align 4
@__kstrtab_kthread_cancel_work_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_cancel_work_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_cancel_work_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_cancel_work_sync to i32), ptr @__kstrtab_kthread_cancel_work_sync, ptr @__kstrtabns_kthread_cancel_work_sync }, section "___ksymtab_gpl+kthread_cancel_work_sync", align 4
@__kstrtab_kthread_cancel_delayed_work_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_cancel_delayed_work_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_cancel_delayed_work_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_cancel_delayed_work_sync to i32), ptr @__kstrtab_kthread_cancel_delayed_work_sync, ptr @__kstrtabns_kthread_cancel_delayed_work_sync }, section "___ksymtab_gpl+kthread_cancel_delayed_work_sync", align 4
@__kstrtab_kthread_flush_worker = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_flush_worker = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_flush_worker = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_flush_worker to i32), ptr @__kstrtab_kthread_flush_worker, ptr @__kstrtabns_kthread_flush_worker }, section "___ksymtab_gpl+kthread_flush_worker", align 4
@__kstrtab_kthread_destroy_worker = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_destroy_worker = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_destroy_worker = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_destroy_worker to i32), ptr @__kstrtab_kthread_destroy_worker, ptr @__kstrtabns_kthread_destroy_worker }, section "___ksymtab+kthread_destroy_worker", align 4
@kthread_use_mm.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kthread_use_mm.__already_done.5 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_kthread_use_mm = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_use_mm = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_use_mm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_use_mm to i32), ptr @__kstrtab_kthread_use_mm, ptr @__kstrtabns_kthread_use_mm }, section "___ksymtab_gpl+kthread_use_mm", align 4
@kthread_unuse_mm.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kthread_unuse_mm.__already_done.6 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_kthread_unuse_mm = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_unuse_mm = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_unuse_mm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_unuse_mm to i32), ptr @__kstrtab_kthread_unuse_mm, ptr @__kstrtabns_kthread_unuse_mm }, section "___ksymtab_gpl+kthread_unuse_mm", align 4
@kthreadd_task = dso_local local_unnamed_addr global ptr null, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@__tracepoint_sched_kthread_stop = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_sched_kthread_stop_ret = external dso_local global %struct.tracepoint, align 4
@kthread.param = internal constant %struct.sched_param zeroinitializer, align 4
@__tracepoint_sched_kthread_work_execute_start = external dso_local global %struct.tracepoint, align 4
@__tracepoint_sched_kthread_work_execute_end = external dso_local global %struct.tracepoint, align 4
@kthread_insert_work_sanity_check.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kthread_insert_work_sanity_check.__already_done.10 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_sched_kthread_work_queue_work = external dso_local global %struct.tracepoint, align 4
@__kthread_queue_delayed_work.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kthread_cancel_work_sync.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@llvm.compiler.used = appending global [29 x ptr] [ptr @__ksymtab___kthread_init_worker, ptr @__ksymtab___kthread_should_park, ptr @__ksymtab_kthread_bind, ptr @__ksymtab_kthread_cancel_delayed_work_sync, ptr @__ksymtab_kthread_cancel_work_sync, ptr @__ksymtab_kthread_complete_and_exit, ptr @__ksymtab_kthread_create_on_cpu, ptr @__ksymtab_kthread_create_on_node, ptr @__ksymtab_kthread_create_worker, ptr @__ksymtab_kthread_create_worker_on_cpu, ptr @__ksymtab_kthread_data, ptr @__ksymtab_kthread_delayed_work_timer_fn, ptr @__ksymtab_kthread_destroy_worker, ptr @__ksymtab_kthread_flush_work, ptr @__ksymtab_kthread_flush_worker, ptr @__ksymtab_kthread_freezable_should_stop, ptr @__ksymtab_kthread_func, ptr @__ksymtab_kthread_mod_delayed_work, ptr @__ksymtab_kthread_park, ptr @__ksymtab_kthread_parkme, ptr @__ksymtab_kthread_queue_delayed_work, ptr @__ksymtab_kthread_queue_work, ptr @__ksymtab_kthread_should_park, ptr @__ksymtab_kthread_should_stop, ptr @__ksymtab_kthread_stop, ptr @__ksymtab_kthread_unpark, ptr @__ksymtab_kthread_unuse_mm, ptr @__ksymtab_kthread_use_mm, ptr @__ksymtab_kthread_worker_fn], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @get_kthread_comm(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 2097152
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef null) #15
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 69
  %11 = load ptr, ptr %10, align 64
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.kthread, ptr %11, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13, %9
  %18 = tail call ptr @__get_task_comm(ptr noundef %0, i32 noundef %1, ptr noundef %2) #15
  br label %21

19:                                               ; preds = %13
  %20 = tail call i32 @strscpy_pad(ptr noundef %0, ptr noundef nonnull %15, i32 noundef %1) #15
  br label %21

21:                                               ; preds = %19, %17
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @to_kthread(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 2097152
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7, !prof !8

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef null) #15
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 69
  %9 = load ptr, ptr %8, align 64
  ret ptr %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__get_task_comm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy_pad(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @set_kthread_struct(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 2097152
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7, !prof !8

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef null) #15
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 69
  %9 = load ptr, ptr %8, align 64
  %10 = icmp ne ptr %9, null
  %11 = load i1, ptr @set_kthread_struct.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %15, !prof !8

14:                                               ; preds = %7
  store i1 true, ptr @set_kthread_struct.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 115, i32 noundef 9, ptr noundef null) #15
  br label %15

15:                                               ; preds = %14, %7
  br i1 %10, label %26, label %16

16:                                               ; preds = %15
  %17 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 56) #16
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.kthread, ptr %18, i32 0, i32 7
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.kthread, ptr %18, i32 0, i32 7, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %22, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_completion.__key) #15
  %23 = getelementptr inbounds %struct.kthread, ptr %18, i32 0, i32 6
  store i32 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.kthread, ptr %18, i32 0, i32 6, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %24, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_completion.__key) #15
  %25 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 66
  store ptr %21, ptr %25, align 4
  store ptr %18, ptr %8, align 64
  br label %26

26:                                               ; preds = %20, %16, %15
  %27 = phi i1 [ true, %20 ], [ false, %15 ], [ false, %16 ]
  ret i1 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @free_kthread_struct(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 2097152
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7, !prof !8

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef null) #15
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 69
  %9 = load ptr, ptr %8, align 64
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  store ptr null, ptr %8, align 64
  %12 = getelementptr inbounds %struct.kthread, ptr %9, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  tail call void @kfree(ptr noundef %13) #15
  tail call void @kfree(ptr noundef nonnull %9) #15
  br label %14

14:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @kthread_should_stop() #0 {
  %1 = tail call ptr @llvm.thread.pointer() #15
  %2 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 2097152
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7, !prof !8

6:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef null) #15
  br label %7

7:                                                ; preds = %6, %0
  %8 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 69
  %9 = load ptr, ptr %8, align 64
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 2
  %12 = icmp ne i32 %11, 0
  ret i1 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @__kthread_should_park(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 2097152
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7, !prof !8

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef null) #15
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 69
  %9 = load ptr, ptr %8, align 64
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 4
  %12 = icmp ne i32 %11, 0
  ret i1 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @kthread_should_park() #0 {
  %1 = tail call ptr @llvm.thread.pointer() #15
  %2 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 2097152
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7, !prof !8

6:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef null) #15
  br label %7

7:                                                ; preds = %6, %0
  %8 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 69
  %9 = load ptr, ptr %8, align 64
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 4
  %12 = icmp ne i32 %11, 0
  ret i1 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @kthread_freezable_should_stop(ptr noundef writeonly %0) #0 {
  %2 = tail call ptr @llvm.thread.pointer() #15
  %3 = load volatile i32, ptr @system_freezing_cnt, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5, !prof !9

5:                                                ; preds = %1
  %6 = tail call zeroext i1 @freezing_slow_path(ptr noundef %2) #15
  br i1 %6, label %7, label %9, !prof !8

7:                                                ; preds = %5
  %8 = tail call zeroext i1 @__refrigerator(i1 noundef zeroext true) #15
  br label %9

9:                                                ; preds = %7, %5, %1
  %10 = phi i1 [ %8, %7 ], [ false, %5 ], [ false, %1 ]
  %11 = icmp eq ptr %0, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = zext i1 %10 to i8
  store i8 %13, ptr %0, align 1
  br label %14

14:                                               ; preds = %12, %9
  %15 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 2097152
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20, !prof !8

19:                                               ; preds = %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef null) #15
  br label %20

20:                                               ; preds = %19, %14
  %21 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 69
  %22 = load ptr, ptr %21, align 64
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, 2
  %25 = icmp ne i32 %24, 0
  ret i1 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @kthread_func(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 69
  %3 = load ptr, ptr %2, align 64
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 2097152
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.kthread, ptr %3, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  br label %13

13:                                               ; preds = %10, %5, %1
  %14 = phi ptr [ %12, %10 ], [ null, %1 ], [ null, %5 ]
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @kthread_data(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 2097152
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7, !prof !8

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef null) #15
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 69
  %9 = load ptr, ptr %8, align 64
  %10 = getelementptr inbounds %struct.kthread, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @kthread_probe_data(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 4
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 69
  %4 = load ptr, ptr %3, align 64
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 2097152
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6, %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  br label %16

12:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  store ptr null, ptr %2, align 4
  %13 = getelementptr inbounds %struct.kthread, ptr %4, i32 0, i32 4
  %14 = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %2, ptr noundef %13, i32 noundef 4) #15
  %15 = load ptr, ptr %2, align 4
  br label %16

16:                                               ; preds = %12, %11
  %17 = phi ptr [ null, %11 ], [ %15, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  ret ptr %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_from_kernel_nofault(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kthread_parkme() #0 {
  %1 = tail call ptr @llvm.thread.pointer() #15
  %2 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 2097152
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7, !prof !8

6:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef null) #15
  br label %7

7:                                                ; preds = %6, %0
  %8 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 69
  %9 = load ptr, ptr %8, align 64
  tail call fastcc void @__kthread_parkme(ptr noundef %9)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__kthread_parkme(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @llvm.thread.pointer() #15
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 108
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #15
  %5 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 1
  store volatile i32 64, ptr %5, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #15
  %6 = load volatile i32, ptr %0, align 4
  %7 = and i32 %6, 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.kthread, ptr %0, i32 0, i32 6
  br label %11

11:                                               ; preds = %11, %9
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !10
  tail call void @complete(ptr noundef %10) #15
  tail call void @schedule_preempt_disabled() #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #15
  store volatile i32 64, ptr %5, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %12) #15
  %13 = load volatile i32, ptr %0, align 4
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %11

16:                                               ; preds = %11, %1
  store volatile i32 0, ptr %5, align 8
  ret void
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kthread_exit(i32 noundef %0) local_unnamed_addr #5 {
  %2 = tail call ptr @llvm.thread.pointer() #15
  %3 = tail call fastcc ptr @to_kthread(ptr noundef %2)
  %4 = getelementptr inbounds %struct.kthread, ptr %3, i32 0, i32 2
  store i32 %0, ptr %4, align 4
  tail call void @do_exit(i32 noundef 0) #17
  unreachable
}

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @do_exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kthread_complete_and_exit(ptr noundef %0, i32 noundef %1) #5 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call void @complete(ptr noundef nonnull %0) #15
  br label %5

5:                                                ; preds = %4, %2
  tail call void @kthread_exit(i32 noundef %1) #18
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @tsk_fork_get_node(ptr nocapture noundef readnone %0) local_unnamed_addr #7 {
  ret i32 -1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @kthread_create_on_node(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ...) #0 {
  %5 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4, !annotation !12
  call void @llvm.va_start(ptr nonnull %5)
  %6 = load i32, ptr %5, align 4
  %7 = insertvalue [1 x i32] poison, i32 %6, 0
  %8 = call fastcc ptr @__kthread_create_on_node(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, [1 x i32] %7)
  call void @llvm.va_end(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  ret ptr %8
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__kthread_create_on_node(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, [1 x i32] %4) unnamed_addr #0 {
  %6 = alloca %struct.__va_list, align 4
  %7 = alloca %struct.completion, align 8
  %8 = alloca [16 x i8], align 1
  %9 = alloca %struct.__va_list, align 4
  %10 = extractvalue [1 x i32] %4, 0
  store i32 %10, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #15
  %11 = getelementptr inbounds %struct.completion, ptr %7, i32 0, i32 1, i32 1
  store i64 0, ptr %7, align 8
  store ptr %11, ptr %11, align 8
  %12 = getelementptr inbounds %struct.completion, ptr %7, i32 0, i32 1, i32 1, i32 1
  store ptr %11, ptr %12, align 4
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %14 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3264, i32 noundef 28) #16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %58, label %16

16:                                               ; preds = %5
  store ptr %0, ptr %14, align 8
  %17 = getelementptr inbounds %struct.kthread_create_info, ptr %14, i32 0, i32 1
  store ptr %1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.kthread_create_info, ptr %14, i32 0, i32 2
  store i32 %2, ptr %18, align 8
  %19 = getelementptr inbounds %struct.kthread_create_info, ptr %14, i32 0, i32 4
  store ptr %7, ptr %19, align 8
  call void @_raw_spin_lock(ptr noundef nonnull @kthread_create_lock) #15
  %20 = getelementptr inbounds %struct.kthread_create_info, ptr %14, i32 0, i32 5
  %21 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @kthread_create_list, i32 0, i32 1), align 4
  store ptr %20, ptr getelementptr inbounds (%struct.list_head, ptr @kthread_create_list, i32 0, i32 1), align 4
  store ptr @kthread_create_list, ptr %20, align 4
  %22 = getelementptr inbounds %struct.kthread_create_info, ptr %14, i32 0, i32 5, i32 1
  store ptr %21, ptr %22, align 8
  store volatile ptr %20, ptr %21, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !13
  %23 = load i16, ptr @kthread_create_lock, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr @kthread_create_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !16
  %25 = load ptr, ptr @kthreadd_task, align 4
  %26 = call i32 @wake_up_process(ptr noundef %25) #15
  %27 = call i32 @wait_for_completion_killable(ptr noundef nonnull %7) #15
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29, !prof !9

29:                                               ; preds = %16
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !17
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #15, !srcloc !18
  %30 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %19) #15, !srcloc !19
  %31 = extractvalue { i32, i32 } %30, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !20
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %58

33:                                               ; preds = %29
  call void @wait_for_completion(ptr noundef nonnull %7) #15
  br label %34

34:                                               ; preds = %33, %16
  %35 = getelementptr inbounds %struct.kthread_create_info, ptr %14, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %57, label %38

38:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %8, i8 0, i32 16, i1 false), !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #15
  store i32 0, ptr %9, align 4, !annotation !12
  call void @llvm.va_copy(ptr nonnull %9, ptr nonnull %6)
  %39 = load i32, ptr %9, align 4
  %40 = insertvalue [1 x i32] poison, i32 %39, 0
  %41 = call i32 @vsnprintf(ptr noundef nonnull %8, i32 noundef 16, ptr noundef %3, [1 x i32] %40)
  call void @llvm.va_end(ptr nonnull %9)
  %42 = icmp sgt i32 %41, 15
  br i1 %42, label %43, label %56

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 4
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 2097152
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49, !prof !8

48:                                               ; preds = %43
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef null) #15
  br label %49

49:                                               ; preds = %48, %43
  %50 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 69
  %51 = load ptr, ptr %50, align 64
  %52 = load i32, ptr %6, align 4
  %53 = insertvalue [1 x i32] poison, i32 %52, 0
  %54 = call noalias ptr @kvasprintf(i32 noundef 3264, ptr noundef %3, [1 x i32] %53) #15
  %55 = getelementptr inbounds %struct.kthread, ptr %51, i32 0, i32 8
  store ptr %54, ptr %55, align 4
  br label %56

56:                                               ; preds = %49, %38
  call void @__set_task_comm(ptr noundef %36, ptr noundef nonnull %8, i1 noundef zeroext false) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #15
  br label %57

57:                                               ; preds = %56, %34
  call void @kfree(ptr noundef nonnull %14) #15
  br label %58

58:                                               ; preds = %57, %29, %5
  %59 = phi ptr [ %36, %57 ], [ inttoptr (i32 -12 to ptr), %5 ], [ inttoptr (i32 -4 to ptr), %29 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #15
  ret ptr %59
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kthread_bind_mask(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @wait_task_inactive(ptr noundef %0, i32 noundef 2) #15
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 525, i32 noundef 9, ptr noundef null) #15
  br label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 108
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #15
  tail call void @do_set_cpus_allowed(ptr noundef %0, ptr noundef %1) #15
  %9 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = or i32 %10, 67108864
  store i32 %11, ptr %9, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #15
  br label %12

12:                                               ; preds = %6, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kthread_bind(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call i32 @wait_task_inactive(ptr noundef %0, i32 noundef 2) #15
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 525, i32 noundef 9, ptr noundef null) #15
  br label %18

6:                                                ; preds = %2
  %7 = and i32 %1, 31
  %8 = add nuw nsw i32 %7, 1
  %9 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %8
  %10 = lshr i32 %1, 5
  %11 = sub nsw i32 0, %10
  %12 = getelementptr i32, ptr %9, i32 %11
  %13 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 108
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #15
  tail call void @do_set_cpus_allowed(ptr noundef %0, ptr noundef %12) #15
  %15 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = or i32 %16, 67108864
  store i32 %17, ptr %15, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %14) #15
  br label %18

18:                                               ; preds = %6, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @kthread_create_on_cpu(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef %3, i32 noundef %2)
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %33, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @wait_task_inactive(ptr noundef %5, i32 noundef 2) #15
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 525, i32 noundef 9, ptr noundef null) #15
  br label %23

11:                                               ; preds = %7
  %12 = and i32 %2, 31
  %13 = add nuw nsw i32 %12, 1
  %14 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %13
  %15 = lshr i32 %2, 5
  %16 = sub nsw i32 0, %15
  %17 = getelementptr i32, ptr %14, i32 %16
  %18 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 108
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %18) #15
  tail call void @do_set_cpus_allowed(ptr noundef %5, ptr noundef %17) #15
  %20 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = or i32 %21, 67108864
  store i32 %22, ptr %20, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %19) #15
  br label %23

23:                                               ; preds = %11, %10
  %24 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 2097152
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29, !prof !8

28:                                               ; preds = %23
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef null) #15
  br label %29

29:                                               ; preds = %28, %23
  %30 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 69
  %31 = load ptr, ptr %30, align 64
  %32 = getelementptr inbounds %struct.kthread, ptr %31, i32 0, i32 1
  store i32 %2, ptr %32, align 4
  br label %33

33:                                               ; preds = %29, %4
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kthread_set_per_cpu(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 2097152
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef null) #15
  br label %8

8:                                                ; preds = %7, %2
  %9 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 69
  %10 = load ptr, ptr %9, align 64
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %8
  %13 = load i32, ptr %3, align 4
  %14 = and i32 %13, 67108864
  %15 = icmp eq i32 %14, 0
  %16 = load i1, ptr @kthread_set_per_cpu.__already_done, align 1
  %17 = xor i1 %16, true
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %20, !prof !8

19:                                               ; preds = %12
  store i1 true, ptr @kthread_set_per_cpu.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 594, i32 noundef 9, ptr noundef null) #15
  br label %20

20:                                               ; preds = %19, %12
  %21 = icmp slt i32 %1, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %20
  tail call void @_clear_bit(i32 noundef 0, ptr noundef nonnull %10) #15
  br label %25

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.kthread, ptr %10, i32 0, i32 1
  store i32 %1, ptr %24, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef nonnull %10) #15
  br label %25

25:                                               ; preds = %23, %22, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @kthread_is_per_cpu(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 69
  %3 = load ptr, ptr %2, align 64
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 2097152
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = load volatile i32, ptr %3, align 4
  %12 = and i32 %11, 1
  %13 = icmp ne i32 %12, 0
  br label %14

14:                                               ; preds = %10, %5, %1
  %15 = phi i1 [ %13, %10 ], [ false, %1 ], [ false, %5 ]
  ret i1 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kthread_unpark(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 2097152
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7, !prof !8

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef null) #15
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 69
  %9 = load ptr, ptr %8, align 64
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.kthread, ptr %9, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @wait_task_inactive(ptr noundef %0, i32 noundef 64) #15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 525, i32 noundef 9, ptr noundef null) #15
  br label %30

19:                                               ; preds = %13
  %20 = and i32 %15, 31
  %21 = add nuw nsw i32 %20, 1
  %22 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %21
  %23 = lshr i32 %15, 5
  %24 = sub nsw i32 0, %23
  %25 = getelementptr i32, ptr %22, i32 %24
  %26 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 108
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %26) #15
  tail call void @do_set_cpus_allowed(ptr noundef %0, ptr noundef %25) #15
  %28 = load i32, ptr %2, align 4
  %29 = or i32 %28, 67108864
  store i32 %29, ptr %2, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %27) #15
  br label %30

30:                                               ; preds = %19, %18, %7
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %9) #15
  %31 = tail call i32 @wake_up_state(ptr noundef %0, i32 noundef 64) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_state(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kthread_park(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 2097152
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8, !prof !8

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef null) #15
  %7 = load i32, ptr %2, align 4
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi i32 [ %3, %1 ], [ %7, %6 ]
  %10 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 69
  %11 = load ptr, ptr %10, align 64
  %12 = and i32 %9, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %35, !prof !9

14:                                               ; preds = %8
  %15 = load volatile i32, ptr %11, align 4
  %16 = and i32 %15, 4
  %17 = icmp ne i32 %16, 0
  %18 = load i1, ptr @kthread_park.__already_done, align 1
  %19 = xor i1 %18, true
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %22, !prof !8

21:                                               ; preds = %14
  store i1 true, ptr @kthread_park.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 660, i32 noundef 9, ptr noundef null) #15
  br label %22

22:                                               ; preds = %21, %14
  br i1 %17, label %38, label %23

23:                                               ; preds = %22
  tail call void @_set_bit(i32 noundef 2, ptr noundef %11) #15
  %24 = tail call ptr @llvm.thread.pointer() #15
  %25 = icmp eq ptr %24, %0
  br i1 %25, label %38, label %26

26:                                               ; preds = %23
  %27 = tail call i32 @wake_up_process(ptr noundef %0) #15
  %28 = getelementptr inbounds %struct.kthread, ptr %11, i32 0, i32 6
  tail call void @wait_for_completion(ptr noundef %28) #15
  %29 = tail call i32 @wait_task_inactive(ptr noundef %0, i32 noundef 64) #15
  %30 = icmp eq i32 %29, 0
  %31 = load i1, ptr @kthread_park.__already_done.1, align 1
  %32 = xor i1 %31, true
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %34, label %38, !prof !8

34:                                               ; preds = %26
  store i1 true, ptr @kthread_park.__already_done.1, align 1
  br label %35

35:                                               ; preds = %34, %8
  %36 = phi i32 [ 675, %34 ], [ 657, %8 ]
  %37 = phi i32 [ 0, %34 ], [ -38, %8 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %36, i32 noundef 9, ptr noundef null) #15
  br label %38

38:                                               ; preds = %35, %26, %23, %22
  %39 = phi i32 [ -16, %22 ], [ 0, %26 ], [ 0, %23 ], [ %37, %35 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_task_inactive(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kthread_stop(ptr noundef %0) #0 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_kthread_stop, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #15
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 5
  %9 = getelementptr i32, ptr @__cpu_online_mask, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %7, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %12, %10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !21
  %16 = tail call i32 @__traceiter_sched_kthread_stop(ptr noundef null, ptr noundef %0) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !22
  br label %17

17:                                               ; preds = %15, %4, %1
  %18 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #15, !srcloc !18
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #15, !srcloc !23
  %20 = extractvalue { i32, i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22, !prof !8

22:                                               ; preds = %17
  %23 = add i32 %20, 1
  %24 = or i32 %23, %20
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %28, label %26, !prof !9

26:                                               ; preds = %22, %17
  %27 = phi i32 [ 2, %17 ], [ 1, %22 ]
  tail call void @refcount_warn_saturate(ptr noundef %18, i32 noundef %27) #15
  br label %28

28:                                               ; preds = %26, %22
  %29 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 2097152
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34, !prof !8

33:                                               ; preds = %28
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef null) #15
  br label %34

34:                                               ; preds = %33, %28
  %35 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 69
  %36 = load ptr, ptr %35, align 64
  tail call void @_set_bit(i32 noundef 1, ptr noundef %36) #15
  tail call void @kthread_unpark(ptr noundef %0)
  %37 = tail call i32 @wake_up_process(ptr noundef %0) #15
  %38 = getelementptr inbounds %struct.kthread, ptr %36, i32 0, i32 7
  tail call void @wait_for_completion(ptr noundef %38) #15
  %39 = getelementptr inbounds %struct.kthread, ptr %36, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #15, !srcloc !18
  %41 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #15, !srcloc !25
  %42 = extractvalue { i32, i32, i32 } %41, 0
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %47, label %44

44:                                               ; preds = %34
  %45 = icmp sgt i32 %42, 0
  br i1 %45, label %48, label %46, !prof !9

46:                                               ; preds = %44
  tail call void @refcount_warn_saturate(ptr noundef %18, i32 noundef 3) #15
  br label %48

47:                                               ; preds = %34
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !26
  tail call void @__put_task_struct(ptr noundef %0) #15
  br label %48

48:                                               ; preds = %47, %46, %44
  %49 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_kthread_stop_ret, i32 0, i32 1), align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %48
  %52 = tail call ptr @llvm.thread.pointer() #15
  %53 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %54 = load i32, ptr %53, align 8
  %55 = lshr i32 %54, 5
  %56 = getelementptr i32, ptr @__cpu_online_mask, i32 %55
  %57 = load volatile i32, ptr %56, align 4
  %58 = and i32 %54, 31
  %59 = shl nuw i32 1, %58
  %60 = and i32 %59, %57
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %51
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !27
  %63 = tail call i32 @__traceiter_sched_kthread_stop_ret(ptr noundef null, i32 noundef %40) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !28
  br label %64

64:                                               ; preds = %62, %51, %48
  ret i32 %40
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kthreadd(ptr nocapture noundef readnone %0) local_unnamed_addr #5 {
  %2 = tail call ptr @llvm.thread.pointer() #15
  tail call void @__set_task_comm(ptr noundef %2, ptr noundef nonnull @.str.2, i1 noundef zeroext false) #15
  tail call void @ignore_signals(ptr noundef %2) #15
  %3 = tail call ptr @housekeeping_cpumask(i32 noundef 256) #15
  %4 = tail call i32 @set_cpus_allowed_ptr(ptr noundef %2, ptr noundef %3) #15
  %5 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = or i32 %6, 32768
  store i32 %7, ptr %5, align 4
  %8 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 49
  %9 = load i8, ptr %8, align 8
  %10 = or i8 %9, 16
  store i8 %10, ptr %8, align 8
  %11 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 1
  br label %12

12:                                               ; preds = %43, %1
  store volatile i32 1, ptr %11, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !29
  %13 = load volatile ptr, ptr @kthread_create_list, align 4
  %14 = icmp eq ptr %13, @kthread_create_list
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  tail call void @schedule() #15
  br label %16

16:                                               ; preds = %15, %12
  store volatile i32 0, ptr %11, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @kthread_create_lock) #15
  %17 = load volatile ptr, ptr @kthread_create_list, align 4
  %18 = icmp eq ptr %17, @kthread_create_list
  br i1 %18, label %43, label %19

19:                                               ; preds = %40, %16
  %20 = phi ptr [ %41, %40 ], [ %17, %16 ]
  %21 = getelementptr i8, ptr %20, i32 -20
  %22 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %20, align 4
  %25 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %23, ptr %25, align 4
  store volatile ptr %24, ptr %23, align 4
  store volatile ptr %20, ptr %20, align 4
  store ptr %20, ptr %22, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !13
  %26 = load i16, ptr @kthread_create_lock, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr @kthread_create_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !16
  %28 = tail call i32 @kernel_thread(ptr noundef nonnull @kthread, ptr noundef %21, i32 noundef 1553) #15
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %19
  %31 = getelementptr i8, ptr %20, i32 -4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !30
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %31) #15, !srcloc !18
  %32 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %31) #15, !srcloc !19
  %33 = extractvalue { i32, i32 } %32, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !31
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  tail call void @kfree(ptr noundef %21) #15
  br label %40

36:                                               ; preds = %30
  %37 = inttoptr i32 %33 to ptr
  %38 = inttoptr i32 %28 to ptr
  %39 = getelementptr i8, ptr %20, i32 -8
  store ptr %38, ptr %39, align 4
  tail call void @complete(ptr noundef nonnull %37) #15
  br label %40

40:                                               ; preds = %36, %35, %19
  tail call void @_raw_spin_lock(ptr noundef nonnull @kthread_create_lock) #15
  %41 = load volatile ptr, ptr @kthread_create_list, align 4
  %42 = icmp eq ptr %41, @kthread_create_list
  br i1 %42, label %43, label %19

43:                                               ; preds = %40, %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !13
  %44 = load i16, ptr @kthread_create_lock, align 4
  %45 = add i16 %44, 1
  store i16 %45, ptr @kthread_create_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !16
  br label %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ignore_signals(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_cpus_allowed_ptr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @housekeeping_cpumask(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__kthread_init_worker(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #11 {
  %4 = getelementptr inbounds %struct.kthread_worker, ptr %0, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  store volatile ptr %4, ptr %4, align 4
  %5 = getelementptr inbounds %struct.kthread_worker, ptr %0, i32 0, i32 2, i32 1
  store ptr %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.kthread_worker, ptr %0, i32 0, i32 3
  store volatile ptr %6, ptr %6, align 4
  %7 = getelementptr inbounds %struct.kthread_worker, ptr %0, i32 0, i32 3, i32 1
  store ptr %6, ptr %7, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kthread_worker_fn(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.kthread_worker, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  %5 = tail call ptr @llvm.thread.pointer() #15
  %6 = icmp eq ptr %3, %5
  %7 = select i1 %4, i1 true, i1 %6
  br i1 %7, label %9, label %8, !prof !32

8:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 792, i32 noundef 9, ptr noundef null) #15
  br label %9

9:                                                ; preds = %8, %1
  store ptr %5, ptr %2, align 4
  %10 = load i32, ptr %0, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call zeroext i1 @set_freezable() #15
  br label %15

15:                                               ; preds = %13, %9
  %16 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 1
  %17 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 4
  %18 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 69
  %19 = getelementptr inbounds %struct.kthread_worker, ptr %0, i32 0, i32 1
  %20 = getelementptr inbounds %struct.kthread_worker, ptr %0, i32 0, i32 2
  %21 = getelementptr inbounds %struct.kthread_worker, ptr %0, i32 0, i32 5
  %22 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  br label %23

23:                                               ; preds = %93, %15
  store volatile i32 1, ptr %16, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !33
  %24 = load i32, ptr %17, align 4
  %25 = and i32 %24, 2097152
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28, !prof !8

27:                                               ; preds = %23
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef null) #15
  br label %28

28:                                               ; preds = %27, %23
  %29 = load ptr, ptr %18, align 64
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  store volatile i32 0, ptr %16, align 8
  tail call void @_raw_spin_lock_irq(ptr noundef %19) #15
  store ptr null, ptr %2, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !13
  %34 = load i16, ptr %19, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !34
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !35
  ret i32 0

36:                                               ; preds = %28
  tail call void @_raw_spin_lock_irq(ptr noundef %19) #15
  %37 = load volatile ptr, ptr %20, align 4
  %38 = icmp eq ptr %37, %20
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = load ptr, ptr %37, align 4
  %43 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  store ptr %41, ptr %43, align 4
  store volatile ptr %42, ptr %41, align 4
  store volatile ptr %37, ptr %37, align 4
  store ptr %37, ptr %40, align 4
  br label %44

44:                                               ; preds = %39, %36
  %45 = phi ptr [ null, %36 ], [ %37, %39 ]
  store ptr %45, ptr %21, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !13
  %46 = load i16, ptr %19, align 4
  %47 = add i16 %46, 1
  store i16 %47, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !34
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !35
  %48 = icmp eq ptr %45, null
  br i1 %48, label %80, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.kthread_work, ptr %45, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  store volatile i32 0, ptr %16, align 8
  %52 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_kthread_work_execute_start, i32 0, i32 1), align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %49
  %55 = load i32, ptr %22, align 8
  %56 = lshr i32 %55, 5
  %57 = getelementptr i32, ptr @__cpu_online_mask, i32 %56
  %58 = load volatile i32, ptr %57, align 4
  %59 = and i32 %55, 31
  %60 = shl nuw i32 1, %59
  %61 = and i32 %60, %58
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %54
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !36
  %64 = tail call i32 @__traceiter_sched_kthread_work_execute_start(ptr noundef null, ptr noundef nonnull %45) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !37
  br label %65

65:                                               ; preds = %63, %54, %49
  %66 = load ptr, ptr %50, align 4
  tail call void %66(ptr noundef nonnull %45) #15
  %67 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_kthread_work_execute_end, i32 0, i32 1), align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %86

69:                                               ; preds = %65
  %70 = load i32, ptr %22, align 8
  %71 = lshr i32 %70, 5
  %72 = getelementptr i32, ptr @__cpu_online_mask, i32 %71
  %73 = load volatile i32, ptr %72, align 4
  %74 = and i32 %70, 31
  %75 = shl nuw i32 1, %74
  %76 = and i32 %75, %73
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %69
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !38
  %79 = tail call i32 @__traceiter_sched_kthread_work_execute_end(ptr noundef null, ptr noundef nonnull %45, ptr noundef %51) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !39
  br label %86

80:                                               ; preds = %44
  %81 = load volatile i32, ptr @system_freezing_cnt, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %85, label %83, !prof !9

83:                                               ; preds = %80
  %84 = tail call zeroext i1 @freezing_slow_path(ptr noundef %5) #15
  br i1 %84, label %86, label %85

85:                                               ; preds = %83, %80
  tail call void @schedule() #15
  br label %86

86:                                               ; preds = %85, %83, %78, %69, %65
  %87 = load volatile i32, ptr @system_freezing_cnt, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %93, label %89, !prof !9

89:                                               ; preds = %86
  %90 = tail call zeroext i1 @freezing_slow_path(ptr noundef %5) #15
  br i1 %90, label %91, label %93, !prof !8

91:                                               ; preds = %89
  %92 = tail call zeroext i1 @__refrigerator(i1 noundef zeroext false) #15
  br label %93

93:                                               ; preds = %91, %89, %86
  %94 = tail call i32 @__cond_resched() #15
  br label %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_freezable() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @kthread_create_worker(i32 noundef %0, ptr noundef %1, ...) #0 {
  %3 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store i32 0, ptr %3, align 4, !annotation !12
  call void @llvm.va_start(ptr nonnull %3)
  %4 = load i32, ptr %3, align 4
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 32) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %2
  %9 = insertvalue [1 x i32] poison, i32 %4, 0
  %10 = getelementptr inbounds %struct.kthread_worker, ptr %6, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false) #15
  store volatile ptr %10, ptr %10, align 8
  %11 = getelementptr inbounds %struct.kthread_worker, ptr %6, i32 0, i32 2, i32 1
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.kthread_worker, ptr %6, i32 0, i32 3
  store volatile ptr %12, ptr %12, align 8
  %13 = getelementptr inbounds %struct.kthread_worker, ptr %6, i32 0, i32 3, i32 1
  store ptr %12, ptr %13, align 4
  %14 = call fastcc ptr @__kthread_create_on_node(ptr noundef nonnull @kthread_worker_fn, ptr noundef nonnull %6, i32 noundef -1, ptr noundef %1, [1 x i32] %9) #15
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %19, label %16

16:                                               ; preds = %8
  store i32 %0, ptr %6, align 8
  %17 = getelementptr inbounds %struct.kthread_worker, ptr %6, i32 0, i32 4
  store ptr %14, ptr %17, align 8
  %18 = call i32 @wake_up_process(ptr noundef %14) #15
  br label %20

19:                                               ; preds = %8
  call void @kfree(ptr noundef nonnull %6) #15
  br label %20

20:                                               ; preds = %19, %16, %2
  %21 = phi ptr [ %14, %19 ], [ %6, %16 ], [ inttoptr (i32 -12 to ptr), %2 ]
  call void @llvm.va_end(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret ptr %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @kthread_create_worker_on_cpu(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) #0 {
  %4 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  store i32 0, ptr %4, align 4, !annotation !12
  call void @llvm.va_start(ptr nonnull %4)
  %5 = load i32, ptr %4, align 4
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 32) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %41, label %9

9:                                                ; preds = %3
  %10 = insertvalue [1 x i32] poison, i32 %5, 0
  %11 = getelementptr inbounds %struct.kthread_worker, ptr %7, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false) #15
  store volatile ptr %11, ptr %11, align 8
  %12 = getelementptr inbounds %struct.kthread_worker, ptr %7, i32 0, i32 2, i32 1
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.kthread_worker, ptr %7, i32 0, i32 3
  store volatile ptr %13, ptr %13, align 8
  %14 = getelementptr inbounds %struct.kthread_worker, ptr %7, i32 0, i32 3, i32 1
  store ptr %13, ptr %14, align 4
  %15 = icmp sgt i32 %0, -1
  %16 = xor i1 %15, true
  %17 = sext i1 %16 to i32
  %18 = call fastcc ptr @__kthread_create_on_node(ptr noundef nonnull @kthread_worker_fn, ptr noundef nonnull %7, i32 noundef %17, ptr noundef %2, [1 x i32] %10) #15
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %40, label %20

20:                                               ; preds = %9
  br i1 %15, label %21, label %37

21:                                               ; preds = %20
  %22 = call i32 @wait_task_inactive(ptr noundef %18, i32 noundef 2) #15
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 525, i32 noundef 9, ptr noundef null) #15
  br label %37

25:                                               ; preds = %21
  %26 = and i32 %0, 31
  %27 = add nuw nsw i32 %26, 1
  %28 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %27
  %29 = lshr i32 %0, 5
  %30 = sub nsw i32 0, %29
  %31 = getelementptr i32, ptr %28, i32 %30
  %32 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 108
  %33 = call i32 @_raw_spin_lock_irqsave(ptr noundef %32) #15
  call void @do_set_cpus_allowed(ptr noundef %18, ptr noundef %31) #15
  %34 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = or i32 %35, 67108864
  store i32 %36, ptr %34, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %32, i32 noundef %33) #15
  br label %37

37:                                               ; preds = %25, %24, %20
  store i32 %1, ptr %7, align 8
  %38 = getelementptr inbounds %struct.kthread_worker, ptr %7, i32 0, i32 4
  store ptr %18, ptr %38, align 8
  %39 = call i32 @wake_up_process(ptr noundef %18) #15
  br label %41

40:                                               ; preds = %9
  call void @kfree(ptr noundef nonnull %7) #15
  br label %41

41:                                               ; preds = %40, %37, %3
  %42 = phi ptr [ %18, %40 ], [ %7, %37 ], [ inttoptr (i32 -12 to ptr), %3 ]
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  ret ptr %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @kthread_queue_work(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.kthread_worker, ptr %0, i32 0, i32 1
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #15
  %5 = load volatile ptr, ptr %1, align 4
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.kthread_work, ptr %1, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.kthread_worker, ptr %0, i32 0, i32 2
  tail call fastcc void @kthread_insert_work(ptr noundef %0, ptr noundef %1, ptr noundef %12)
  br label %13

13:                                               ; preds = %11, %7, %2
  %14 = phi i1 [ false, %7 ], [ true, %11 ], [ false, %2 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #15
  ret i1 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @kthread_insert_work(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load volatile ptr, ptr %1, align 4
  %5 = icmp ne ptr %4, %1
  %6 = load i1, ptr @kthread_insert_work_sanity_check.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10, !prof !8

9:                                                ; preds = %3
  store i1 true, ptr @kthread_insert_work_sanity_check.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 963, i32 noundef 9, ptr noundef null) #15
  br label %10

10:                                               ; preds = %9, %3
  %11 = getelementptr inbounds %struct.kthread_work, ptr %1, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp ne ptr %12, null
  %14 = icmp ne ptr %12, %0
  %15 = and i1 %13, %14
  %16 = load i1, ptr @kthread_insert_work_sanity_check.__already_done.10, align 1
  %17 = xor i1 %16, true
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %20, !prof !8

19:                                               ; preds = %10
  store i1 true, ptr @kthread_insert_work_sanity_check.__already_done.10, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 965, i32 noundef 9, ptr noundef null) #15
  br label %20

20:                                               ; preds = %19, %10
  %21 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_kthread_work_queue_work, i32 0, i32 1), align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %20
  %24 = tail call ptr @llvm.thread.pointer() #15
  %25 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %26 = load i32, ptr %25, align 8
  %27 = lshr i32 %26, 5
  %28 = getelementptr i32, ptr @__cpu_online_mask, i32 %27
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %26, 31
  %31 = shl nuw i32 1, %30
  %32 = and i32 %31, %29
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %23
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !40
  %35 = tail call i32 @__traceiter_sched_kthread_work_queue_work(ptr noundef null, ptr noundef %0, ptr noundef %1) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !41
  br label %36

36:                                               ; preds = %34, %23, %20
  %37 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  store ptr %1, ptr %37, align 4
  store ptr %2, ptr %1, align 4
  %39 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  store ptr %38, ptr %39, align 4
  store volatile ptr %1, ptr %38, align 4
  store ptr %0, ptr %11, align 4
  %40 = getelementptr inbounds %struct.kthread_worker, ptr %0, i32 0, i32 5
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.kthread_worker, ptr %0, i32 0, i32 4
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47, !prof !8

47:                                               ; preds = %43
  %48 = tail call i32 @wake_up_process(ptr noundef nonnull %45) #15
  br label %49

49:                                               ; preds = %47, %43, %36
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kthread_delayed_work_timer_fn(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -20
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  %6 = load i1, ptr @kthread_delayed_work_timer_fn.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10, !prof !8

9:                                                ; preds = %1
  store i1 true, ptr @kthread_delayed_work_timer_fn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1030, i32 noundef 9, ptr noundef null) #15
  br label %10

10:                                               ; preds = %9, %1
  br i1 %5, label %39, label %11

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.kthread_worker, ptr %4, i32 0, i32 1
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #15
  %14 = load ptr, ptr %3, align 4
  %15 = icmp ne ptr %14, %4
  %16 = load i1, ptr @kthread_delayed_work_timer_fn.__already_done.3, align 1
  %17 = xor i1 %16, true
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %20, !prof !8

19:                                               ; preds = %11
  store i1 true, ptr @kthread_delayed_work_timer_fn.__already_done.3, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1035, i32 noundef 9, ptr noundef null) #15
  br label %20

20:                                               ; preds = %19, %11
  %21 = load volatile ptr, ptr %2, align 4
  %22 = icmp eq ptr %21, %2
  %23 = load i1, ptr @kthread_delayed_work_timer_fn.__already_done.4, align 1
  %24 = xor i1 %23, true
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %28, !prof !8

26:                                               ; preds = %20
  store i1 true, ptr @kthread_delayed_work_timer_fn.__already_done.4, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1038, i32 noundef 9, ptr noundef null) #15
  %27 = load ptr, ptr %2, align 4
  br label %28

28:                                               ; preds = %26, %20
  %29 = phi ptr [ %27, %26 ], [ %21, %20 ]
  %30 = getelementptr i8, ptr %0, i32 -16
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  store ptr %31, ptr %32, align 4
  store volatile ptr %29, ptr %31, align 4
  store volatile ptr %2, ptr %2, align 4
  store ptr %2, ptr %30, align 4
  %33 = getelementptr i8, ptr %0, i32 -4
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.kthread_worker, ptr %4, i32 0, i32 2
  tail call fastcc void @kthread_insert_work(ptr noundef nonnull %4, ptr noundef %2, ptr noundef %37)
  br label %38

38:                                               ; preds = %36, %28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %13) #15
  br label %39

39:                                               ; preds = %38, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @kthread_queue_delayed_work(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.kthread_worker, ptr %0, i32 0, i32 1
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #15
  %6 = load volatile ptr, ptr %1, align 4
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.kthread_work, ptr %1, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call fastcc void @__kthread_queue_delayed_work(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  br label %13

13:                                               ; preds = %12, %8, %3
  %14 = phi i1 [ false, %8 ], [ true, %12 ], [ false, %3 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #15
  ret i1 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__kthread_queue_delayed_work(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.kthread_delayed_work, ptr %1, i32 0, i32 1
  %5 = getelementptr inbounds %struct.kthread_delayed_work, ptr %1, i32 0, i32 1, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp ne ptr %6, @kthread_delayed_work_timer_fn
  %8 = load i1, ptr @__kthread_queue_delayed_work.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !8

11:                                               ; preds = %3
  store i1 true, ptr @__kthread_queue_delayed_work.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1055, i32 noundef 9, ptr noundef null) #15
  br label %12

12:                                               ; preds = %11, %3
  %13 = icmp eq i32 %2, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.kthread_worker, ptr %0, i32 0, i32 2
  tail call fastcc void @kthread_insert_work(ptr noundef %0, ptr noundef %1, ptr noundef %15)
  br label %41

16:                                               ; preds = %12
  %17 = load volatile ptr, ptr %1, align 4
  %18 = icmp ne ptr %17, %1
  %19 = load i1, ptr @kthread_insert_work_sanity_check.__already_done, align 1
  %20 = xor i1 %19, true
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %23, !prof !8

22:                                               ; preds = %16
  store i1 true, ptr @kthread_insert_work_sanity_check.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 963, i32 noundef 9, ptr noundef null) #15
  br label %23

23:                                               ; preds = %22, %16
  %24 = getelementptr inbounds %struct.kthread_work, ptr %1, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = icmp ne ptr %25, null
  %27 = icmp ne ptr %25, %0
  %28 = and i1 %26, %27
  %29 = load i1, ptr @kthread_insert_work_sanity_check.__already_done.10, align 1
  %30 = xor i1 %29, true
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %32, label %33, !prof !8

32:                                               ; preds = %23
  store i1 true, ptr @kthread_insert_work_sanity_check.__already_done.10, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 965, i32 noundef 9, ptr noundef null) #15
  br label %33

33:                                               ; preds = %32, %23
  %34 = getelementptr inbounds %struct.kthread_worker, ptr %0, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  store ptr %1, ptr %36, align 4
  store ptr %35, ptr %1, align 4
  %37 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  store ptr %34, ptr %37, align 4
  store volatile ptr %1, ptr %34, align 4
  store ptr %0, ptr %24, align 4
  %38 = load volatile i32, ptr @jiffies, align 64
  %39 = add i32 %38, %2
  %40 = getelementptr inbounds %struct.kthread_delayed_work, ptr %1, i32 0, i32 1, i32 1
  store i32 %39, ptr %40, align 4
  tail call void @add_timer(ptr noundef %4) #15
  br label %41

41:                                               ; preds = %33, %14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kthread_flush_work(ptr noundef %0) #0 {
  %2 = alloca %struct.kthread_flush_work, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #15
  %3 = getelementptr inbounds i8, ptr %2, i32 24
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %3, i8 0, i32 12, i1 false), !annotation !12
  store ptr %2, ptr %2, align 4
  %4 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %4, align 4
  %5 = getelementptr inbounds %struct.kthread_work, ptr %2, i32 0, i32 1
  store ptr @kthread_flush_work_fn, ptr %5, align 4
  %6 = getelementptr inbounds %struct.kthread_work, ptr %2, i32 0, i32 2
  store ptr null, ptr %6, align 4
  %7 = getelementptr inbounds %struct.kthread_work, ptr %2, i32 0, i32 3
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.kthread_flush_work, ptr %2, i32 0, i32 1
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.kthread_flush_work, ptr %2, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %9, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_completion.__key) #15
  %10 = getelementptr inbounds %struct.kthread_work, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %40, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.kthread_worker, ptr %11, i32 0, i32 1
  call void @_raw_spin_lock_irq(ptr noundef %14) #15
  %15 = load ptr, ptr %10, align 4
  %16 = icmp ne ptr %15, %11
  %17 = load i1, ptr @kthread_flush_work.__already_done, align 1
  %18 = xor i1 %17, true
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %21, !prof !8

20:                                               ; preds = %13
  store i1 true, ptr @kthread_flush_work.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1145, i32 noundef 9, ptr noundef null) #15
  br label %21

21:                                               ; preds = %20, %13
  %22 = load volatile ptr, ptr %0, align 4
  %23 = icmp eq ptr %22, %0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  call fastcc void @kthread_insert_work(ptr noundef nonnull %11, ptr noundef nonnull %2, ptr noundef %22)
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !13
  %25 = load i16, ptr %14, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr %14, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !15
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !34
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !35
  br label %39

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.kthread_worker, ptr %11, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.kthread_worker, ptr %11, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  call fastcc void @kthread_insert_work(ptr noundef nonnull %11, ptr noundef nonnull %2, ptr noundef %33)
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !13
  %34 = load i16, ptr %14, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr %14, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !15
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !34
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !35
  br label %39

36:                                               ; preds = %27
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !13
  %37 = load i16, ptr %14, align 4
  %38 = add i16 %37, 1
  store i16 %38, ptr %14, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !15
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !34
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !35
  br label %40

39:                                               ; preds = %31, %24
  call void @wait_for_completion(ptr noundef %8) #15
  br label %40

40:                                               ; preds = %39, %36, %1
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @kthread_flush_work_fn(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.kthread_flush_work, ptr %0, i32 0, i32 1
  tail call void @complete(ptr noundef %2) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @kthread_mod_delayed_work(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.kthread_worker, ptr %0, i32 0, i32 1
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #15
  %6 = getelementptr inbounds %struct.kthread_work, ptr %1, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %37, label %9

9:                                                ; preds = %3
  %10 = icmp ne ptr %7, %0
  %11 = load i1, ptr @kthread_mod_delayed_work.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %16, !prof !8

14:                                               ; preds = %9
  store i1 true, ptr @kthread_mod_delayed_work.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1256, i32 noundef 9, ptr noundef null) #15
  %15 = load ptr, ptr %6, align 4
  br label %16

16:                                               ; preds = %14, %9
  %17 = phi ptr [ %15, %14 ], [ %7, %9 ]
  %18 = getelementptr inbounds %struct.kthread_work, ptr %1, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, 1
  store i32 %20, ptr %18, align 4
  %21 = getelementptr inbounds %struct.kthread_worker, ptr %17, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %5) #15
  %22 = getelementptr inbounds %struct.kthread_delayed_work, ptr %1, i32 0, i32 1
  %23 = tail call i32 @del_timer_sync(ptr noundef %22) #15
  %24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %21) #15
  %25 = load i32, ptr %18, align 4
  %26 = add i32 %25, -1
  store i32 %26, ptr %18, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %16
  %29 = load volatile ptr, ptr %1, align 4
  %30 = icmp ne ptr %29, %1
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  store ptr %33, ptr %34, align 4
  store volatile ptr %29, ptr %33, align 4
  store volatile ptr %1, ptr %1, align 4
  store ptr %1, ptr %32, align 4
  br label %35

35:                                               ; preds = %31, %28
  %36 = zext i1 %30 to i32
  br label %37

37:                                               ; preds = %35, %3
  %38 = phi i32 [ %5, %3 ], [ %24, %35 ]
  %39 = phi i32 [ 0, %3 ], [ %36, %35 ]
  tail call fastcc void @__kthread_queue_delayed_work(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  br label %40

40:                                               ; preds = %37, %16
  %41 = phi i32 [ %38, %37 ], [ %24, %16 ]
  %42 = phi i32 [ %39, %37 ], [ 1, %16 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %41) #15
  %43 = icmp ne i32 %42, 0
  ret i1 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @kthread_cancel_work_sync(ptr noundef %0) #0 {
  %2 = tail call fastcc zeroext i1 @__kthread_cancel_work_sync(ptr noundef %0, i1 noundef zeroext false)
  ret i1 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @__kthread_cancel_work_sync(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.kthread_work, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %48, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.kthread_worker, ptr %4, i32 0, i32 1
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #15
  %9 = load ptr, ptr %3, align 4
  %10 = icmp ne ptr %9, %4
  %11 = load i1, ptr @__kthread_cancel_work_sync.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %15, !prof !8

14:                                               ; preds = %6
  store i1 true, ptr @__kthread_cancel_work_sync.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1297, i32 noundef 9, ptr noundef null) #15
  br label %15

15:                                               ; preds = %14, %6
  br i1 %1, label %16, label %27

16:                                               ; preds = %15
  %17 = load ptr, ptr %3, align 4
  %18 = getelementptr inbounds %struct.kthread_work, ptr %0, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, 1
  store i32 %20, ptr %18, align 4
  %21 = getelementptr inbounds %struct.kthread_worker, ptr %17, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %8) #15
  %22 = getelementptr inbounds %struct.kthread_delayed_work, ptr %0, i32 0, i32 1
  %23 = tail call i32 @del_timer_sync(ptr noundef %22) #15
  %24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %21) #15
  %25 = load i32, ptr %18, align 4
  %26 = add i32 %25, -1
  store i32 %26, ptr %18, align 4
  br label %27

27:                                               ; preds = %16, %15
  %28 = phi i32 [ %24, %16 ], [ %8, %15 ]
  %29 = load volatile ptr, ptr %0, align 4
  %30 = icmp ne ptr %29, %0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  store ptr %33, ptr %34, align 4
  store volatile ptr %29, ptr %33, align 4
  store volatile ptr %0, ptr %0, align 4
  store ptr %0, ptr %32, align 4
  br label %35

35:                                               ; preds = %31, %27
  %36 = getelementptr inbounds %struct.kthread_worker, ptr %4, i32 0, i32 5
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %0
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.kthread_work, ptr %0, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, 1
  store i32 %42, ptr %40, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %28) #15
  tail call void @kthread_flush_work(ptr noundef %0)
  %43 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #15
  %44 = load i32, ptr %40, align 4
  %45 = add i32 %44, -1
  store i32 %45, ptr %40, align 4
  br label %46

46:                                               ; preds = %39, %35
  %47 = phi i32 [ %43, %39 ], [ %28, %35 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %47) #15
  br label %48

48:                                               ; preds = %46, %2
  %49 = phi i1 [ %30, %46 ], [ false, %2 ]
  ret i1 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @kthread_cancel_delayed_work_sync(ptr noundef %0) #0 {
  %2 = tail call fastcc zeroext i1 @__kthread_cancel_work_sync(ptr noundef %0, i1 noundef zeroext true)
  ret i1 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kthread_flush_worker(ptr noundef %0) #0 {
  %2 = alloca %struct.kthread_flush_work, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #15
  %3 = getelementptr inbounds i8, ptr %2, i32 24
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %3, i8 0, i32 12, i1 false), !annotation !12
  store ptr %2, ptr %2, align 4
  %4 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %4, align 4
  %5 = getelementptr inbounds %struct.kthread_work, ptr %2, i32 0, i32 1
  store ptr @kthread_flush_work_fn, ptr %5, align 4
  %6 = getelementptr inbounds %struct.kthread_work, ptr %2, i32 0, i32 2
  store ptr null, ptr %6, align 4
  %7 = getelementptr inbounds %struct.kthread_work, ptr %2, i32 0, i32 3
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.kthread_flush_work, ptr %2, i32 0, i32 1
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.kthread_flush_work, ptr %2, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %9, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_completion.__key) #15
  %10 = getelementptr inbounds %struct.kthread_worker, ptr %0, i32 0, i32 1
  %11 = call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #15
  %12 = load volatile ptr, ptr %2, align 4
  %13 = icmp eq ptr %12, %2
  %14 = load i32, ptr %7, align 4
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.kthread_worker, ptr %0, i32 0, i32 2
  call fastcc void @kthread_insert_work(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %18) #15
  br label %19

19:                                               ; preds = %17, %1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #15
  call void @wait_for_completion(ptr noundef %8) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kthread_destroy_worker(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.kthread_worker, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1392, i32 noundef 9, ptr noundef null) #15
  br label %13

6:                                                ; preds = %1
  tail call void @kthread_flush_worker(ptr noundef %0)
  %7 = tail call i32 @kthread_stop(ptr noundef nonnull %3)
  %8 = getelementptr inbounds %struct.kthread_worker, ptr %0, i32 0, i32 2
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %12, label %11, !prof !9

11:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1397, i32 noundef 9, ptr noundef null) #15
  br label %12

12:                                               ; preds = %11, %6
  tail call void @kfree(ptr noundef %0) #15
  br label %13

13:                                               ; preds = %12, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kthread_use_mm(ptr noundef %0) #0 {
  %2 = tail call ptr @llvm.thread.pointer() #15
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 2097152
  %6 = icmp eq i32 %5, 0
  %7 = load i1, ptr @kthread_use_mm.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !8

10:                                               ; preds = %1
  store i1 true, ptr @kthread_use_mm.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1411, i32 noundef 9, ptr noundef null) #15
  br label %11

11:                                               ; preds = %10, %1
  %12 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 37
  %13 = load ptr, ptr %12, align 4
  %14 = icmp ne ptr %13, null
  %15 = load i1, ptr @kthread_use_mm.__already_done.5, align 1
  %16 = xor i1 %15, true
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %18, label %19, !prof !8

18:                                               ; preds = %11
  store i1 true, ptr @kthread_use_mm.__already_done.5, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1412, i32 noundef 9, ptr noundef null) #15
  br label %19

19:                                               ; preds = %18, %11
  %20 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 107
  tail call void @_raw_spin_lock(ptr noundef %20) #15
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #15, !srcloc !42
  %21 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 38
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, %0
  br i1 %23, label %38, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %25) #15, !srcloc !18
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %25, ptr %25, i32 1, ptr elementtype(i32) %25) #15, !srcloc !43
  store ptr %0, ptr %21, align 8
  store ptr %0, ptr %12, align 4
  tail call void @membarrier_update_current_mm(ptr noundef %0) #15
  %27 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %28 = load i32, ptr %27, align 8
  %29 = getelementptr inbounds %struct.mm_struct, ptr %0, i32 0, i32 1
  %30 = tail call i32 @_test_and_set_bit(i32 noundef %28, ptr noundef %29) #15
  tail call void @check_and_switch_context(ptr noundef %0, ptr noundef %2) #15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !34
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !13
  %31 = load i16, ptr %20, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr %20, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !16
  %33 = getelementptr inbounds %struct.anon, ptr %22, i32 0, i32 11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !44
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %33) #15, !srcloc !18
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %33, ptr %33, i32 1, ptr elementtype(i32) %33) #15, !srcloc !45
  %35 = extractvalue { i32, i32 } %34, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !46
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %48, !prof !8

37:                                               ; preds = %24
  tail call void @__mmdrop(ptr noundef %22) #15
  br label %48

38:                                               ; preds = %19
  store ptr %0, ptr %12, align 4
  tail call void @membarrier_update_current_mm(ptr noundef %0) #15
  %39 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %40 = load i32, ptr %39, align 8
  %41 = getelementptr inbounds %struct.mm_struct, ptr %0, i32 0, i32 1
  %42 = tail call i32 @_test_and_set_bit(i32 noundef %40, ptr noundef %41) #15
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  tail call void @check_and_switch_context(ptr noundef %0, ptr noundef %2) #15
  br label %45

45:                                               ; preds = %44, %38
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !34
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !13
  %46 = load i16, ptr %20, align 4
  %47 = add i16 %46, 1
  store i16 %47, ptr %20, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !47
  br label %48

48:                                               ; preds = %45, %37, %24
  %49 = load i32, ptr %3, align 4
  %50 = and i32 %49, 2097152
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53, !prof !8

52:                                               ; preds = %48
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef null) #15
  br label %53

53:                                               ; preds = %52, %48
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @membarrier_update_current_mm(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kthread_unuse_mm(ptr noundef %0) #0 {
  %2 = tail call ptr @llvm.thread.pointer() #15
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 2097152
  %6 = icmp eq i32 %5, 0
  %7 = load i1, ptr @kthread_unuse_mm.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !8

10:                                               ; preds = %1
  store i1 true, ptr @kthread_unuse_mm.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1457, i32 noundef 9, ptr noundef null) #15
  br label %11

11:                                               ; preds = %10, %1
  %12 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 37
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  %15 = load i1, ptr @kthread_unuse_mm.__already_done.6, align 1
  %16 = xor i1 %15, true
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %18, label %19, !prof !8

18:                                               ; preds = %11
  store i1 true, ptr @kthread_unuse_mm.__already_done.6, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1458, i32 noundef 9, ptr noundef null) #15
  br label %19

19:                                               ; preds = %18, %11
  %20 = load i32, ptr %3, align 4
  %21 = and i32 %20, 2097152
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24, !prof !8

23:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef null) #15
  br label %24

24:                                               ; preds = %23, %19
  %25 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 107
  tail call void @_raw_spin_lock(ptr noundef %25) #15
  tail call void @sync_mm_rss(ptr noundef %0) #15
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #15, !srcloc !42
  store ptr null, ptr %12, align 4
  tail call void @membarrier_update_current_mm(ptr noundef null) #15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !34
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !13
  %26 = load i16, ptr %25, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr %25, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sync_mm_rss(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #13

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule_preempt_disabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_killable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_copy(ptr, ptr) #9

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kvasprintf(i32 noundef, ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_set_cpus_allowed(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_sched_kthread_stop(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_sched_kthread_stop_ret(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__set_task_comm(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_thread(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kthread(ptr noundef %0) #5 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.kthread_create_info, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @llvm.thread.pointer() #15
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 2097152
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11, !prof !8

10:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef null) #15
  br label %11

11:                                               ; preds = %10, %1
  %12 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 69
  %13 = load ptr, ptr %12, align 64
  %14 = getelementptr inbounds %struct.kthread_create_info, ptr %0, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !48
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #15, !srcloc !18
  %15 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %14) #15, !srcloc !19
  %16 = extractvalue { i32, i32 } %15, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !49
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  tail call void @kfree(ptr noundef %0) #15
  tail call void @kthread_exit(i32 noundef -4) #18
  unreachable

19:                                               ; preds = %11
  %20 = inttoptr i32 %16 to ptr
  %21 = getelementptr inbounds %struct.kthread, ptr %13, i32 0, i32 3
  store ptr %2, ptr %21, align 4
  %22 = getelementptr inbounds %struct.kthread, ptr %13, i32 0, i32 4
  store ptr %4, ptr %22, align 4
  %23 = tail call i32 @sched_setscheduler_nocheck(ptr noundef %5, i32 noundef 0, ptr noundef nonnull @kthread.param) #15
  %24 = tail call ptr @housekeeping_cpumask(i32 noundef 256) #15
  %25 = tail call i32 @set_cpus_allowed_ptr(ptr noundef %5, ptr noundef %24) #15
  %26 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 1
  store volatile i32 2, ptr %26, align 8
  %27 = getelementptr inbounds %struct.kthread_create_info, ptr %0, i32 0, i32 3
  store ptr %5, ptr %27, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !50
  tail call void @complete(ptr noundef nonnull %20) #15
  tail call void @schedule_preempt_disabled() #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !51
  %28 = load volatile i32, ptr %13, align 4
  %29 = and i32 %28, 2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %19
  %32 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 49
  %33 = load i8, ptr %32, align 8
  %34 = and i8 %33, -17
  store i8 %34, ptr %32, align 8
  tail call fastcc void @__kthread_parkme(ptr noundef %13)
  %35 = tail call i32 %2(ptr noundef %4) #15
  br label %36

36:                                               ; preds = %31, %19
  %37 = phi i32 [ -4, %19 ], [ %35, %31 ]
  tail call void @kthread_exit(i32 noundef %37) #18
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sched_setscheduler_nocheck(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_sched_kthread_work_execute_start(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_sched_kthread_work_execute_end(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_sched_kthread_work_queue_work(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @check_and_switch_context(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmdrop(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nocallback nofree nosync nounwind willreturn }
attributes #10 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #14 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { noreturn nounwind }
attributes #18 = { noreturn }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2154013212}
!11 = !{i64 2154013260}
!12 = !{!"auto-init"}
!13 = !{i64 2149052677}
!14 = !{i64 2149048501}
!15 = !{i64 2149048576, i64 2149048603, i64 2149048650, i64 2149048672, i64 2149048700, i64 2149048720}
!16 = !{i64 2149075680}
!17 = !{i64 2154025394}
!18 = !{i64 885611, i64 2148375582, i64 2148375608, i64 2148375655, i64 2148375677, i64 2148375705, i64 2148375725}
!19 = !{i64 894261, i64 894278, i64 894302, i64 894328, i64 894346}
!20 = !{i64 2154025721}
!21 = !{i64 2153423490}
!22 = !{i64 2153423640}
!23 = !{i64 2148388455, i64 2148388487, i64 2148388516, i64 2148388550, i64 2148388581, i64 2148388604}
!24 = !{i64 2148488677}
!25 = !{i64 2148390812, i64 2148390844, i64 2148390873, i64 2148390907, i64 2148390938, i64 2148390961}
!26 = !{i64 2149402029}
!27 = !{i64 2153439510}
!28 = !{i64 2153439672}
!29 = !{i64 2154045667}
!30 = !{i64 2154023309}
!31 = !{i64 2154023636}
!32 = !{!"branch_weights", i32 4001, i32 1}
!33 = !{i64 2154054870}
!34 = !{i64 791534}
!35 = !{i64 2149076821}
!36 = !{i64 2153478290}
!37 = !{i64 2153478474}
!38 = !{i64 2153496175}
!39 = !{i64 2153496375}
!40 = !{i64 2153456809}
!41 = !{i64 2153457003}
!42 = !{i64 791724}
!43 = !{i64 2148386997, i64 2148387023, i64 2148387052, i64 2148387086, i64 2148387117, i64 2148387140}
!44 = !{i64 2148487676}
!45 = !{i64 2148390038, i64 2148390070, i64 2148390099, i64 2148390133, i64 2148390164, i64 2148390187}
!46 = !{i64 2148487879}
!47 = !{i64 2154103830}
!48 = !{i64 2154019380}
!49 = !{i64 2154019707}
!50 = !{i64 2154022378}
!51 = !{i64 2154022426}
