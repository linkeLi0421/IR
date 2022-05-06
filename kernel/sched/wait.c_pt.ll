; ModuleID = '/llk/IR/kernel/sched/wait.c_pt.bc'
source_filename = "../kernel/sched/wait.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___init_waitqueue_head:\09\09\09\09\09"
module asm "\09.asciz \09\22__init_waitqueue_head\22\09\09\09\09\09"
module asm "__kstrtabns___init_waitqueue_head:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_add_wait_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22add_wait_queue\22\09\09\09\09\09"
module asm "__kstrtabns_add_wait_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_add_wait_queue_exclusive:\09\09\09\09\09"
module asm "\09.asciz \09\22add_wait_queue_exclusive\22\09\09\09\09\09"
module asm "__kstrtabns_add_wait_queue_exclusive:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_add_wait_queue_priority:\09\09\09\09\09"
module asm "\09.asciz \09\22add_wait_queue_priority\22\09\09\09\09\09"
module asm "__kstrtabns_add_wait_queue_priority:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_remove_wait_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22remove_wait_queue\22\09\09\09\09\09"
module asm "__kstrtabns_remove_wait_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___wake_up:\09\09\09\09\09"
module asm "\09.asciz \09\22__wake_up\22\09\09\09\09\09"
module asm "__kstrtabns___wake_up:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___wake_up_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22__wake_up_locked\22\09\09\09\09\09"
module asm "__kstrtabns___wake_up_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___wake_up_locked_key:\09\09\09\09\09"
module asm "\09.asciz \09\22__wake_up_locked_key\22\09\09\09\09\09"
module asm "__kstrtabns___wake_up_locked_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___wake_up_locked_key_bookmark:\09\09\09\09\09"
module asm "\09.asciz \09\22__wake_up_locked_key_bookmark\22\09\09\09\09\09"
module asm "__kstrtabns___wake_up_locked_key_bookmark:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___wake_up_sync_key:\09\09\09\09\09"
module asm "\09.asciz \09\22__wake_up_sync_key\22\09\09\09\09\09"
module asm "__kstrtabns___wake_up_sync_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___wake_up_locked_sync_key:\09\09\09\09\09"
module asm "\09.asciz \09\22__wake_up_locked_sync_key\22\09\09\09\09\09"
module asm "__kstrtabns___wake_up_locked_sync_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___wake_up_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22__wake_up_sync\22\09\09\09\09\09"
module asm "__kstrtabns___wake_up_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_prepare_to_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22prepare_to_wait\22\09\09\09\09\09"
module asm "__kstrtabns_prepare_to_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_prepare_to_wait_exclusive:\09\09\09\09\09"
module asm "\09.asciz \09\22prepare_to_wait_exclusive\22\09\09\09\09\09"
module asm "__kstrtabns_prepare_to_wait_exclusive:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_init_wait_entry:\09\09\09\09\09"
module asm "\09.asciz \09\22init_wait_entry\22\09\09\09\09\09"
module asm "__kstrtabns_init_wait_entry:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_prepare_to_wait_event:\09\09\09\09\09"
module asm "\09.asciz \09\22prepare_to_wait_event\22\09\09\09\09\09"
module asm "__kstrtabns_prepare_to_wait_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_do_wait_intr:\09\09\09\09\09"
module asm "\09.asciz \09\22do_wait_intr\22\09\09\09\09\09"
module asm "__kstrtabns_do_wait_intr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_do_wait_intr_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22do_wait_intr_irq\22\09\09\09\09\09"
module asm "__kstrtabns_do_wait_intr_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_finish_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22finish_wait\22\09\09\09\09\09"
module asm "__kstrtabns_finish_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_autoremove_wake_function:\09\09\09\09\09"
module asm "\09.asciz \09\22autoremove_wake_function\22\09\09\09\09\09"
module asm "__kstrtabns_autoremove_wake_function:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wait_woken:\09\09\09\09\09"
module asm "\09.asciz \09\22wait_woken\22\09\09\09\09\09"
module asm "__kstrtabns_wait_woken:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_woken_wake_function:\09\09\09\09\09"
module asm "\09.asciz \09\22woken_wake_function\22\09\09\09\09\09"
module asm "__kstrtabns_woken_wake_function:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.116, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.1 }
%struct.llist_node = type { ptr }
%union.anon.1 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.86 }
%union.anon.86 = type { %struct.anon.87 }
%struct.anon.87 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.atomic_t = type { i32 }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.116 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__kstrtab___init_waitqueue_head = external dso_local constant [0 x i8], align 1
@__kstrtabns___init_waitqueue_head = external dso_local constant [0 x i8], align 1
@__ksymtab___init_waitqueue_head = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__init_waitqueue_head to i32), ptr @__kstrtab___init_waitqueue_head, ptr @__kstrtabns___init_waitqueue_head }, section "___ksymtab+__init_waitqueue_head", align 4
@__kstrtab_add_wait_queue = external dso_local constant [0 x i8], align 1
@__kstrtabns_add_wait_queue = external dso_local constant [0 x i8], align 1
@__ksymtab_add_wait_queue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @add_wait_queue to i32), ptr @__kstrtab_add_wait_queue, ptr @__kstrtabns_add_wait_queue }, section "___ksymtab+add_wait_queue", align 4
@__kstrtab_add_wait_queue_exclusive = external dso_local constant [0 x i8], align 1
@__kstrtabns_add_wait_queue_exclusive = external dso_local constant [0 x i8], align 1
@__ksymtab_add_wait_queue_exclusive = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @add_wait_queue_exclusive to i32), ptr @__kstrtab_add_wait_queue_exclusive, ptr @__kstrtabns_add_wait_queue_exclusive }, section "___ksymtab+add_wait_queue_exclusive", align 4
@__kstrtab_add_wait_queue_priority = external dso_local constant [0 x i8], align 1
@__kstrtabns_add_wait_queue_priority = external dso_local constant [0 x i8], align 1
@__ksymtab_add_wait_queue_priority = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @add_wait_queue_priority to i32), ptr @__kstrtab_add_wait_queue_priority, ptr @__kstrtabns_add_wait_queue_priority }, section "___ksymtab_gpl+add_wait_queue_priority", align 4
@__kstrtab_remove_wait_queue = external dso_local constant [0 x i8], align 1
@__kstrtabns_remove_wait_queue = external dso_local constant [0 x i8], align 1
@__ksymtab_remove_wait_queue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @remove_wait_queue to i32), ptr @__kstrtab_remove_wait_queue, ptr @__kstrtabns_remove_wait_queue }, section "___ksymtab+remove_wait_queue", align 4
@__kstrtab___wake_up = external dso_local constant [0 x i8], align 1
@__kstrtabns___wake_up = external dso_local constant [0 x i8], align 1
@__ksymtab___wake_up = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__wake_up to i32), ptr @__kstrtab___wake_up, ptr @__kstrtabns___wake_up }, section "___ksymtab+__wake_up", align 4
@__kstrtab___wake_up_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns___wake_up_locked = external dso_local constant [0 x i8], align 1
@__ksymtab___wake_up_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__wake_up_locked to i32), ptr @__kstrtab___wake_up_locked, ptr @__kstrtabns___wake_up_locked }, section "___ksymtab_gpl+__wake_up_locked", align 4
@__kstrtab___wake_up_locked_key = external dso_local constant [0 x i8], align 1
@__kstrtabns___wake_up_locked_key = external dso_local constant [0 x i8], align 1
@__ksymtab___wake_up_locked_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__wake_up_locked_key to i32), ptr @__kstrtab___wake_up_locked_key, ptr @__kstrtabns___wake_up_locked_key }, section "___ksymtab_gpl+__wake_up_locked_key", align 4
@__kstrtab___wake_up_locked_key_bookmark = external dso_local constant [0 x i8], align 1
@__kstrtabns___wake_up_locked_key_bookmark = external dso_local constant [0 x i8], align 1
@__ksymtab___wake_up_locked_key_bookmark = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__wake_up_locked_key_bookmark to i32), ptr @__kstrtab___wake_up_locked_key_bookmark, ptr @__kstrtabns___wake_up_locked_key_bookmark }, section "___ksymtab_gpl+__wake_up_locked_key_bookmark", align 4
@__kstrtab___wake_up_sync_key = external dso_local constant [0 x i8], align 1
@__kstrtabns___wake_up_sync_key = external dso_local constant [0 x i8], align 1
@__ksymtab___wake_up_sync_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__wake_up_sync_key to i32), ptr @__kstrtab___wake_up_sync_key, ptr @__kstrtabns___wake_up_sync_key }, section "___ksymtab_gpl+__wake_up_sync_key", align 4
@__kstrtab___wake_up_locked_sync_key = external dso_local constant [0 x i8], align 1
@__kstrtabns___wake_up_locked_sync_key = external dso_local constant [0 x i8], align 1
@__ksymtab___wake_up_locked_sync_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__wake_up_locked_sync_key to i32), ptr @__kstrtab___wake_up_locked_sync_key, ptr @__kstrtabns___wake_up_locked_sync_key }, section "___ksymtab_gpl+__wake_up_locked_sync_key", align 4
@__kstrtab___wake_up_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns___wake_up_sync = external dso_local constant [0 x i8], align 1
@__ksymtab___wake_up_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__wake_up_sync to i32), ptr @__kstrtab___wake_up_sync, ptr @__kstrtabns___wake_up_sync }, section "___ksymtab_gpl+__wake_up_sync", align 4
@__wake_up_pollfree.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [20 x i8] c"kernel/sched/wait.c\00", align 1
@__kstrtab_prepare_to_wait = external dso_local constant [0 x i8], align 1
@__kstrtabns_prepare_to_wait = external dso_local constant [0 x i8], align 1
@__ksymtab_prepare_to_wait = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @prepare_to_wait to i32), ptr @__kstrtab_prepare_to_wait, ptr @__kstrtabns_prepare_to_wait }, section "___ksymtab+prepare_to_wait", align 4
@__kstrtab_prepare_to_wait_exclusive = external dso_local constant [0 x i8], align 1
@__kstrtabns_prepare_to_wait_exclusive = external dso_local constant [0 x i8], align 1
@__ksymtab_prepare_to_wait_exclusive = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @prepare_to_wait_exclusive to i32), ptr @__kstrtab_prepare_to_wait_exclusive, ptr @__kstrtabns_prepare_to_wait_exclusive }, section "___ksymtab+prepare_to_wait_exclusive", align 4
@__kstrtab_init_wait_entry = external dso_local constant [0 x i8], align 1
@__kstrtabns_init_wait_entry = external dso_local constant [0 x i8], align 1
@__ksymtab_init_wait_entry = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @init_wait_entry to i32), ptr @__kstrtab_init_wait_entry, ptr @__kstrtabns_init_wait_entry }, section "___ksymtab+init_wait_entry", align 4
@__kstrtab_prepare_to_wait_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_prepare_to_wait_event = external dso_local constant [0 x i8], align 1
@__ksymtab_prepare_to_wait_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @prepare_to_wait_event to i32), ptr @__kstrtab_prepare_to_wait_event, ptr @__kstrtabns_prepare_to_wait_event }, section "___ksymtab+prepare_to_wait_event", align 4
@__kstrtab_do_wait_intr = external dso_local constant [0 x i8], align 1
@__kstrtabns_do_wait_intr = external dso_local constant [0 x i8], align 1
@__ksymtab_do_wait_intr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @do_wait_intr to i32), ptr @__kstrtab_do_wait_intr, ptr @__kstrtabns_do_wait_intr }, section "___ksymtab+do_wait_intr", align 4
@__kstrtab_do_wait_intr_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_do_wait_intr_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_do_wait_intr_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @do_wait_intr_irq to i32), ptr @__kstrtab_do_wait_intr_irq, ptr @__kstrtabns_do_wait_intr_irq }, section "___ksymtab+do_wait_intr_irq", align 4
@__kstrtab_finish_wait = external dso_local constant [0 x i8], align 1
@__kstrtabns_finish_wait = external dso_local constant [0 x i8], align 1
@__ksymtab_finish_wait = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @finish_wait to i32), ptr @__kstrtab_finish_wait, ptr @__kstrtabns_finish_wait }, section "___ksymtab+finish_wait", align 4
@__kstrtab_autoremove_wake_function = external dso_local constant [0 x i8], align 1
@__kstrtabns_autoremove_wake_function = external dso_local constant [0 x i8], align 1
@__ksymtab_autoremove_wake_function = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @autoremove_wake_function to i32), ptr @__kstrtab_autoremove_wake_function, ptr @__kstrtabns_autoremove_wake_function }, section "___ksymtab+autoremove_wake_function", align 4
@__kstrtab_wait_woken = external dso_local constant [0 x i8], align 1
@__kstrtabns_wait_woken = external dso_local constant [0 x i8], align 1
@__ksymtab_wait_woken = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wait_woken to i32), ptr @__kstrtab_wait_woken, ptr @__kstrtabns_wait_woken }, section "___ksymtab+wait_woken", align 4
@__kstrtab_woken_wake_function = external dso_local constant [0 x i8], align 1
@__kstrtabns_woken_wake_function = external dso_local constant [0 x i8], align 1
@__ksymtab_woken_wake_function = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @woken_wake_function to i32), ptr @__kstrtab_woken_wake_function, ptr @__kstrtabns_woken_wake_function }, section "___ksymtab+woken_wake_function", align 4
@llvm.compiler.used = appending global [22 x ptr] [ptr @__ksymtab___init_waitqueue_head, ptr @__ksymtab___wake_up, ptr @__ksymtab___wake_up_locked, ptr @__ksymtab___wake_up_locked_key, ptr @__ksymtab___wake_up_locked_key_bookmark, ptr @__ksymtab___wake_up_locked_sync_key, ptr @__ksymtab___wake_up_sync, ptr @__ksymtab___wake_up_sync_key, ptr @__ksymtab_add_wait_queue, ptr @__ksymtab_add_wait_queue_exclusive, ptr @__ksymtab_add_wait_queue_priority, ptr @__ksymtab_autoremove_wake_function, ptr @__ksymtab_do_wait_intr, ptr @__ksymtab_do_wait_intr_irq, ptr @__ksymtab_finish_wait, ptr @__ksymtab_init_wait_entry, ptr @__ksymtab_prepare_to_wait, ptr @__ksymtab_prepare_to_wait_event, ptr @__ksymtab_prepare_to_wait_exclusive, ptr @__ksymtab_remove_wait_queue, ptr @__ksymtab_wait_woken, ptr @__ksymtab_woken_wake_function], section "llvm.metadata"

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__init_waitqueue_head(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 {
  store i32 0, ptr %0, align 4
  %4 = getelementptr inbounds %struct.wait_queue_head, ptr %0, i32 0, i32 1
  store volatile ptr %4, ptr %4, align 4
  %5 = getelementptr inbounds %struct.wait_queue_head, ptr %0, i32 0, i32 1, i32 1
  store ptr %4, ptr %5, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @add_wait_queue(ptr noundef %0, ptr noundef %1) #1 {
  %3 = load i32, ptr %1, align 4
  %4 = and i32 %3, -2
  store i32 %4, ptr %1, align 4
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #7
  %6 = getelementptr inbounds %struct.wait_queue_head, ptr %0, i32 0, i32 1
  br label %7

7:                                                ; preds = %11, %2
  %8 = phi ptr [ %6, %2 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %6
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %9, i32 -12
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %7

16:                                               ; preds = %11, %7
  %17 = phi ptr [ %9, %11 ], [ %6, %7 ]
  %18 = getelementptr inbounds %struct.wait_queue_entry, ptr %1, i32 0, i32 3
  %19 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  store ptr %18, ptr %19, align 4
  store ptr %17, ptr %18, align 4
  %20 = getelementptr inbounds %struct.wait_queue_entry, ptr %1, i32 0, i32 3, i32 1
  store ptr %8, ptr %20, align 4
  store volatile ptr %18, ptr %8, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %5) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @add_wait_queue_exclusive(ptr noundef %0, ptr noundef %1) #1 {
  %3 = load i32, ptr %1, align 4
  %4 = or i32 %3, 1
  store i32 %4, ptr %1, align 4
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #7
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %1, i32 0, i32 3
  %7 = getelementptr inbounds %struct.wait_queue_head, ptr %0, i32 0, i32 1
  %8 = getelementptr inbounds %struct.wait_queue_head, ptr %0, i32 0, i32 1, i32 1
  %9 = load ptr, ptr %8, align 4
  store ptr %6, ptr %8, align 4
  store ptr %7, ptr %6, align 4
  %10 = getelementptr inbounds %struct.wait_queue_entry, ptr %1, i32 0, i32 3, i32 1
  store ptr %9, ptr %10, align 4
  store volatile ptr %6, ptr %9, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @add_wait_queue_priority(ptr noundef %0, ptr noundef %1) #1 {
  %3 = load i32, ptr %1, align 4
  %4 = or i32 %3, 33
  store i32 %4, ptr %1, align 4
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #7
  %6 = getelementptr inbounds %struct.wait_queue_head, ptr %0, i32 0, i32 1
  br label %7

7:                                                ; preds = %11, %2
  %8 = phi ptr [ %6, %2 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %6
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %9, i32 -12
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %7

16:                                               ; preds = %11, %7
  %17 = phi ptr [ %9, %11 ], [ %6, %7 ]
  %18 = getelementptr inbounds %struct.wait_queue_entry, ptr %1, i32 0, i32 3
  %19 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  store ptr %18, ptr %19, align 4
  store ptr %17, ptr %18, align 4
  %20 = getelementptr inbounds %struct.wait_queue_entry, ptr %1, i32 0, i32 3, i32 1
  store ptr %8, ptr %20, align 4
  store volatile ptr %18, ptr %8, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @remove_wait_queue(ptr noundef %0, ptr nocapture noundef %1) #1 {
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %1, i32 0, i32 3
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %1, i32 0, i32 3, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %6, ptr %8, align 4
  store volatile ptr %7, ptr %6, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %5, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__wake_up(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #1 {
  tail call fastcc void @__wake_up_common_lock(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 0, ptr noundef %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__wake_up_common_lock(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 {
  %6 = alloca %struct.wait_queue_entry, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #7
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %6, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i64 12, i1 false)
  store volatile ptr %7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %6, i32 0, i32 3, i32 1
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.wait_queue_head, ptr %0, i32 0, i32 1
  br label %10

10:                                               ; preds = %60, %5
  %11 = phi i32 [ %2, %5 ], [ %61, %60 ]
  %12 = call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #7
  %13 = load i32, ptr %6, align 4
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %10
  %17 = load ptr, ptr %7, align 4
  %18 = load ptr, ptr %8, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  store ptr %18, ptr %19, align 4
  store volatile ptr %17, ptr %18, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %8, align 4
  store i32 0, ptr %6, align 4
  br label %22

20:                                               ; preds = %10
  %21 = load ptr, ptr %9, align 4
  br label %22

22:                                               ; preds = %20, %16
  %23 = phi ptr [ %17, %16 ], [ %21, %20 ]
  %24 = icmp eq ptr %23, %9
  br i1 %24, label %60, label %25

25:                                               ; preds = %56, %22
  %26 = phi i32 [ %58, %56 ], [ %11, %22 ]
  %27 = phi ptr [ %30, %56 ], [ %23, %22 ]
  %28 = phi i32 [ %57, %56 ], [ 0, %22 ]
  %29 = getelementptr i8, ptr %27, i32 -12
  %30 = load ptr, ptr %27, align 4
  %31 = load i32, ptr %29, align 4
  %32 = and i32 %31, 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %25
  %35 = getelementptr i8, ptr %27, i32 -4
  %36 = load ptr, ptr %35, align 4
  %37 = call i32 %36(ptr noundef %29, i32 noundef %1, i32 noundef %3, ptr noundef %4) #7
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %60, label %39

39:                                               ; preds = %34
  %40 = icmp eq i32 %37, 0
  %41 = and i32 %31, 1
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %40, i1 true, i1 %42
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = add i32 %26, -1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %60, label %47

47:                                               ; preds = %44, %39
  %48 = phi i32 [ %45, %44 ], [ %26, %39 ]
  %49 = add i32 %28, 1
  %50 = icmp slt i32 %49, 65
  %51 = icmp eq ptr %30, %9
  %52 = select i1 %50, i1 true, i1 %51
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  store i32 4, ptr %6, align 4
  %54 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  store ptr %7, ptr %54, align 4
  store ptr %30, ptr %7, align 4
  store ptr %55, ptr %8, align 4
  store volatile ptr %7, ptr %55, align 4
  br label %60

56:                                               ; preds = %47, %25
  %57 = phi i32 [ %28, %25 ], [ %49, %47 ]
  %58 = phi i32 [ %26, %25 ], [ %48, %47 ]
  %59 = icmp eq ptr %30, %9
  br i1 %59, label %60, label %25

60:                                               ; preds = %56, %53, %44, %34, %22
  %61 = phi i32 [ %11, %22 ], [ %48, %53 ], [ 0, %44 ], [ %26, %34 ], [ %58, %56 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %12) #7
  %62 = load i32, ptr %6, align 4
  %63 = and i32 %62, 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %10

65:                                               ; preds = %60
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__wake_up_locked(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.wait_queue_head, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %31, label %7

7:                                                ; preds = %28, %3
  %8 = phi i32 [ %29, %28 ], [ %2, %3 ]
  %9 = phi ptr [ %11, %28 ], [ %5, %3 ]
  %10 = getelementptr i8, ptr %9, i32 -12
  %11 = load ptr, ptr %9, align 4
  %12 = load i32, ptr %10, align 4
  %13 = and i32 %12, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %7
  %16 = getelementptr i8, ptr %9, i32 -4
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 %17(ptr noundef %10, i32 noundef %1, i32 noundef 0, ptr noundef null) #7
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %15
  %21 = icmp eq i32 %18, 0
  %22 = and i32 %12, 1
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %21, i1 true, i1 %23
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = add i32 %8, -1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25, %20, %7
  %29 = phi i32 [ %8, %7 ], [ %26, %25 ], [ %8, %20 ]
  %30 = icmp eq ptr %11, %4
  br i1 %30, label %31, label %7

31:                                               ; preds = %28, %25, %15, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__wake_up_locked_key(ptr noundef readonly %0, i32 noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.wait_queue_head, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %29, label %7

7:                                                ; preds = %28, %3
  %8 = phi ptr [ %10, %28 ], [ %5, %3 ]
  %9 = getelementptr i8, ptr %8, i32 -12
  %10 = load ptr, ptr %8, align 4
  %11 = load i32, ptr %9, align 4
  %12 = and i32 %11, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %7
  %15 = getelementptr i8, ptr %8, i32 -4
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %16(ptr noundef %9, i32 noundef %1, i32 noundef 0, ptr noundef %2) #7
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %14
  %20 = icmp ne i32 %17, 0
  %21 = and i32 %11, 1
  %22 = icmp ne i32 %21, 0
  %23 = select i1 %20, i1 %22, i1 false
  %24 = icmp eq ptr %10, %4
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %29, label %28

26:                                               ; preds = %7
  %27 = icmp eq ptr %10, %4
  br i1 %27, label %29, label %28

28:                                               ; preds = %26, %19
  br label %7

29:                                               ; preds = %26, %19, %14, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__wake_up_locked_key_bookmark(ptr noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #1 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %4
  %7 = load i32, ptr %3, align 4
  %8 = and i32 %7, 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 3, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  store volatile ptr %12, ptr %14, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %11, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %13, align 4
  store i32 0, ptr %3, align 4
  br label %19

16:                                               ; preds = %6, %4
  %17 = getelementptr inbounds %struct.wait_queue_head, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %10
  %20 = phi ptr [ %12, %10 ], [ %18, %16 ]
  %21 = getelementptr inbounds %struct.wait_queue_head, ptr %0, i32 0, i32 1
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %55, label %23

23:                                               ; preds = %52, %19
  %24 = phi ptr [ %27, %52 ], [ %20, %19 ]
  %25 = phi i32 [ %53, %52 ], [ 0, %19 ]
  %26 = getelementptr i8, ptr %24, i32 -12
  %27 = load ptr, ptr %24, align 4
  %28 = load i32, ptr %26, align 4
  %29 = and i32 %28, 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %52

31:                                               ; preds = %23
  %32 = getelementptr i8, ptr %24, i32 -4
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 %33(ptr noundef %26, i32 noundef %1, i32 noundef 0, ptr noundef %2) #7
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %55, label %36

36:                                               ; preds = %31
  %37 = icmp eq i32 %34, 0
  %38 = and i32 %28, 1
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %37, i1 true, i1 %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %36
  br i1 %5, label %52, label %42

42:                                               ; preds = %41
  %43 = add i32 %25, 1
  %44 = icmp slt i32 %43, 65
  %45 = icmp eq ptr %27, %21
  %46 = select i1 %44, i1 true, i1 %45
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  store i32 4, ptr %3, align 4
  %48 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 3
  %49 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  store ptr %48, ptr %49, align 4
  store ptr %27, ptr %48, align 4
  %51 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 3, i32 1
  store ptr %50, ptr %51, align 4
  store volatile ptr %48, ptr %50, align 4
  br label %55

52:                                               ; preds = %42, %41, %23
  %53 = phi i32 [ %25, %23 ], [ %43, %42 ], [ %25, %41 ]
  %54 = icmp eq ptr %27, %21
  br i1 %54, label %55, label %23

55:                                               ; preds = %52, %47, %36, %31, %19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__wake_up_sync_key(ptr noundef %0, i32 noundef %1, ptr noundef %2) #1 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %6, label %5, !prof !8

5:                                                ; preds = %3
  tail call fastcc void @__wake_up_common_lock(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 1, i32 noundef 16, ptr noundef %2)
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__wake_up_locked_sync_key(ptr noundef readonly %0, i32 noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.wait_queue_head, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %29, label %7

7:                                                ; preds = %28, %3
  %8 = phi ptr [ %10, %28 ], [ %5, %3 ]
  %9 = getelementptr i8, ptr %8, i32 -12
  %10 = load ptr, ptr %8, align 4
  %11 = load i32, ptr %9, align 4
  %12 = and i32 %11, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %7
  %15 = getelementptr i8, ptr %8, i32 -4
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %16(ptr noundef %9, i32 noundef %1, i32 noundef 16, ptr noundef %2) #7
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %14
  %20 = icmp ne i32 %17, 0
  %21 = and i32 %11, 1
  %22 = icmp ne i32 %21, 0
  %23 = select i1 %20, i1 %22, i1 false
  %24 = icmp eq ptr %10, %4
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %29, label %28

26:                                               ; preds = %7
  %27 = icmp eq ptr %10, %4
  br i1 %27, label %29, label %28

28:                                               ; preds = %26, %19
  br label %7

29:                                               ; preds = %26, %19, %14, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__wake_up_sync(ptr noundef %0, i32 noundef %1) #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %5, label %4, !prof !8

4:                                                ; preds = %2
  tail call fastcc void @__wake_up_common_lock(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 1, i32 noundef 16, ptr noundef null) #7
  br label %5

5:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__wake_up_pollfree(ptr noundef %0) local_unnamed_addr #1 {
  tail call fastcc void @__wake_up_common_lock(ptr noundef %0, i32 noundef 3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 16400 to ptr)) #7
  %2 = getelementptr inbounds %struct.wait_queue_head, ptr %0, i32 0, i32 1
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp ne ptr %3, %2
  %5 = load i1, ptr @__wake_up_pollfree.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %1
  store i1 true, ptr @__wake_up_pollfree.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 245, i32 noundef 9, ptr noundef null) #7
  br label %9

9:                                                ; preds = %8, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @prepare_to_wait(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = load i32, ptr %1, align 4
  %5 = and i32 %4, -2
  store i32 %5, ptr %1, align 4
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #7
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %1, i32 0, i32 3
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %10, label %25

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.wait_queue_head, ptr %0, i32 0, i32 1
  br label %12

12:                                               ; preds = %16, %10
  %13 = phi ptr [ %11, %10 ], [ %14, %16 ]
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %11
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %14, i32 -12
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %12

21:                                               ; preds = %16, %12
  %22 = phi ptr [ %14, %16 ], [ %11, %12 ]
  %23 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %7, ptr %23, align 4
  store ptr %22, ptr %7, align 4
  %24 = getelementptr inbounds %struct.wait_queue_entry, ptr %1, i32 0, i32 3, i32 1
  store ptr %13, ptr %24, align 4
  store volatile ptr %7, ptr %13, align 4
  br label %25

25:                                               ; preds = %21, %3
  %26 = tail call ptr @llvm.thread.pointer() #7
  %27 = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 1
  store volatile i32 %2, ptr %27, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %6) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @prepare_to_wait_exclusive(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = load i32, ptr %1, align 4
  %5 = or i32 %4, 1
  store i32 %5, ptr %1, align 4
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #7
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %1, i32 0, i32 3
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.wait_queue_head, ptr %0, i32 0, i32 1
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  %14 = getelementptr inbounds %struct.wait_queue_head, ptr %0, i32 0, i32 1, i32 1
  %15 = load ptr, ptr %14, align 4
  store ptr %7, ptr %14, align 4
  store ptr %11, ptr %7, align 4
  %16 = getelementptr inbounds %struct.wait_queue_entry, ptr %1, i32 0, i32 3, i32 1
  store ptr %15, ptr %16, align 4
  store volatile ptr %7, ptr %15, align 4
  br label %17

17:                                               ; preds = %10, %3
  %18 = phi i1 [ %13, %10 ], [ false, %3 ]
  %19 = tail call ptr @llvm.thread.pointer() #7
  %20 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 1
  store volatile i32 %2, ptr %20, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %6) #7
  ret i1 %18
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @init_wait_entry(ptr noundef %0, i32 noundef %1) #4 {
  store i32 %1, ptr %0, align 4
  %3 = tail call ptr @llvm.thread.pointer() #7
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %0, i32 0, i32 1
  store ptr %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %0, i32 0, i32 2
  store ptr @autoremove_wake_function, ptr %5, align 4
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %0, i32 0, i32 3
  store volatile ptr %6, ptr %6, align 4
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %0, i32 0, i32 3, i32 1
  store ptr %6, ptr %7, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @autoremove_wake_function(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #1 {
  %5 = tail call i32 @default_wake_function(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #7
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %0, i32 0, i32 3
  %9 = getelementptr inbounds %struct.wait_queue_entry, ptr %0, i32 0, i32 3, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %10, ptr %12, align 4
  store volatile ptr %11, ptr %10, align 4
  store ptr %8, ptr %9, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  store volatile ptr %8, ptr %8, align 4
  br label %13

13:                                               ; preds = %7, %4
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @prepare_to_wait_event(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #7
  %5 = tail call ptr @llvm.thread.pointer() #7
  %6 = and i32 %2, 257
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %30, label %8

8:                                                ; preds = %3
  %9 = load volatile i32, ptr %5, align 4
  %10 = and i32 %9, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16, !prof !12

12:                                               ; preds = %8
  %13 = load volatile i32, ptr %5, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %12, %8
  %17 = and i32 %2, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 98, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 256
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %19, %16
  %25 = getelementptr inbounds %struct.wait_queue_entry, ptr %1, i32 0, i32 3
  %26 = getelementptr inbounds %struct.wait_queue_entry, ptr %1, i32 0, i32 3, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %25, align 4
  %29 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  store ptr %27, ptr %29, align 4
  store volatile ptr %28, ptr %27, align 4
  store volatile ptr %25, ptr %25, align 4
  store ptr %25, ptr %26, align 4
  br label %61

30:                                               ; preds = %19, %12, %3
  %31 = getelementptr inbounds %struct.wait_queue_entry, ptr %1, i32 0, i32 3
  %32 = load volatile ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, %31
  br i1 %33, label %34, label %59

34:                                               ; preds = %30
  %35 = load i32, ptr %1, align 4
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  %38 = getelementptr inbounds %struct.wait_queue_head, ptr %0, i32 0, i32 1
  br i1 %37, label %42, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.wait_queue_head, ptr %0, i32 0, i32 1, i32 1
  %41 = load ptr, ptr %40, align 4
  br label %54

42:                                               ; preds = %46, %34
  %43 = phi ptr [ %44, %46 ], [ %38, %34 ]
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, %38
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = getelementptr i8, ptr %44, i32 -12
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 32
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %42

51:                                               ; preds = %46, %42
  %52 = phi ptr [ %44, %46 ], [ %38, %42 ]
  %53 = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  br label %54

54:                                               ; preds = %51, %39
  %55 = phi ptr [ %40, %39 ], [ %53, %51 ]
  %56 = phi ptr [ %38, %39 ], [ %52, %51 ]
  %57 = phi ptr [ %41, %39 ], [ %43, %51 ]
  store ptr %31, ptr %55, align 4
  store ptr %56, ptr %31, align 4
  %58 = getelementptr inbounds %struct.wait_queue_entry, ptr %1, i32 0, i32 3, i32 1
  store ptr %57, ptr %58, align 4
  store volatile ptr %31, ptr %57, align 4
  br label %59

59:                                               ; preds = %54, %30
  %60 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 1
  store volatile i32 %2, ptr %60, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  br label %61

61:                                               ; preds = %59, %24
  %62 = phi i32 [ -512, %24 ], [ 0, %59 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %4) #7
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @do_wait_intr(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %1, i32 0, i32 3
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %6, label %11, !prof !12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wait_queue_head, ptr %0, i32 0, i32 1
  %8 = getelementptr inbounds %struct.wait_queue_head, ptr %0, i32 0, i32 1, i32 1
  %9 = load ptr, ptr %8, align 4
  store ptr %3, ptr %8, align 4
  store ptr %7, ptr %3, align 4
  %10 = getelementptr inbounds %struct.wait_queue_entry, ptr %1, i32 0, i32 3, i32 1
  store ptr %9, ptr %10, align 4
  store volatile ptr %3, ptr %9, align 4
  br label %11

11:                                               ; preds = %6, %2
  %12 = tail call ptr @llvm.thread.pointer() #7
  %13 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 1
  store volatile i32 1, ptr %13, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %14 = load volatile i32, ptr %12, align 4
  %15 = and i32 %14, 256
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %24, !prof !12

17:                                               ; preds = %11
  %18 = load volatile i32, ptr %12, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !15
  %22 = load i16, ptr %0, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !18
  tail call void @schedule() #7
  tail call void @_raw_spin_lock(ptr noundef %0) #7
  br label %24

24:                                               ; preds = %21, %17, %11
  %25 = phi i32 [ 0, %21 ], [ -512, %17 ], [ -512, %11 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @do_wait_intr_irq(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %1, i32 0, i32 3
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %6, label %11, !prof !12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wait_queue_head, ptr %0, i32 0, i32 1
  %8 = getelementptr inbounds %struct.wait_queue_head, ptr %0, i32 0, i32 1, i32 1
  %9 = load ptr, ptr %8, align 4
  store ptr %3, ptr %8, align 4
  store ptr %7, ptr %3, align 4
  %10 = getelementptr inbounds %struct.wait_queue_entry, ptr %1, i32 0, i32 3, i32 1
  store ptr %9, ptr %10, align 4
  store volatile ptr %3, ptr %9, align 4
  br label %11

11:                                               ; preds = %6, %2
  %12 = tail call ptr @llvm.thread.pointer() #7
  %13 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 1
  store volatile i32 1, ptr %13, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !19
  %14 = load volatile i32, ptr %12, align 4
  %15 = and i32 %14, 256
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %24, !prof !12

17:                                               ; preds = %11
  %18 = load volatile i32, ptr %12, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !15
  %22 = load i16, ptr %0, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !17
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !21
  tail call void @schedule() #7
  tail call void @_raw_spin_lock_irq(ptr noundef %0) #7
  br label %24

24:                                               ; preds = %21, %17, %11
  %25 = phi i32 [ 0, %21 ], [ -512, %17 ], [ -512, %11 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @finish_wait(ptr noundef %0, ptr noundef %1) #1 {
  %3 = tail call ptr @llvm.thread.pointer() #7
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 1
  store volatile i32 0, ptr %4, align 8
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %1, i32 0, i32 3
  %6 = load volatile ptr, ptr %5, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !22
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.wait_queue_entry, ptr %1, i32 0, i32 3, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %5
  br i1 %11, label %18, label %12

12:                                               ; preds = %8, %2
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #7
  %14 = getelementptr inbounds %struct.wait_queue_entry, ptr %1, i32 0, i32 3, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %5, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %15, ptr %17, align 4
  store volatile ptr %16, ptr %15, align 4
  store volatile ptr %5, ptr %5, align 4
  store ptr %5, ptr %14, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %13) #7
  br label %18

18:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @wait_woken(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = tail call ptr @llvm.thread.pointer() #7
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 1
  store volatile i32 %1, ptr %5, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !23
  %6 = load i32, ptr %0, align 4
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 2097152
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = tail call zeroext i1 @kthread_should_stop() #7
  br i1 %15, label %18, label %16

16:                                               ; preds = %14, %9
  %17 = tail call i32 @schedule_timeout(i32 noundef %2) #7
  br label %18

18:                                               ; preds = %16, %14, %3
  %19 = phi i32 [ %2, %3 ], [ %2, %14 ], [ %17, %16 ]
  store volatile i32 0, ptr %5, align 8
  %20 = load i32, ptr %0, align 4
  %21 = and i32 %20, -3
  store volatile i32 %21, ptr %0, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !24
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @woken_wake_function(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #1 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !25
  %5 = load i32, ptr %0, align 4
  %6 = or i32 %5, 2
  store i32 %6, ptr %0, align 4
  %7 = tail call i32 @default_wake_function(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #7
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
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
!9 = !{i64 2156360957}
!10 = !{i64 2156365334}
!11 = !{i64 2147992662}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2156375225}
!14 = !{i64 2156379434}
!15 = !{i64 2149260671}
!16 = !{i64 2149256495}
!17 = !{i64 2149256570, i64 2149256597, i64 2149256644, i64 2149256666, i64 2149256694, i64 2149256714}
!18 = !{i64 2149283674}
!19 = !{i64 2156383463}
!20 = !{i64 641450}
!21 = !{i64 2149284815}
!22 = !{i64 2148000580}
!23 = !{i64 2156393132}
!24 = !{i64 2156398185}
!25 = !{i64 2156399402}
