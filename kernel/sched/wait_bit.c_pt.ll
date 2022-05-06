; ModuleID = '/llk/IR/kernel/sched/wait_bit.c_pt.bc'
source_filename = "../kernel/sched/wait_bit.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bit_waitqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22bit_waitqueue\22\09\09\09\09\09"
module asm "__kstrtabns_bit_waitqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wake_bit_function:\09\09\09\09\09"
module asm "\09.asciz \09\22wake_bit_function\22\09\09\09\09\09"
module asm "__kstrtabns_wake_bit_function:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___wait_on_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22__wait_on_bit\22\09\09\09\09\09"
module asm "__kstrtabns___wait_on_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_out_of_line_wait_on_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22out_of_line_wait_on_bit\22\09\09\09\09\09"
module asm "__kstrtabns_out_of_line_wait_on_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_out_of_line_wait_on_bit_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22out_of_line_wait_on_bit_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_out_of_line_wait_on_bit_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___wait_on_bit_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22__wait_on_bit_lock\22\09\09\09\09\09"
module asm "__kstrtabns___wait_on_bit_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_out_of_line_wait_on_bit_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22out_of_line_wait_on_bit_lock\22\09\09\09\09\09"
module asm "__kstrtabns_out_of_line_wait_on_bit_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___wake_up_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22__wake_up_bit\22\09\09\09\09\09"
module asm "__kstrtabns___wake_up_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wake_up_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22wake_up_bit\22\09\09\09\09\09"
module asm "__kstrtabns_wake_up_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___var_waitqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22__var_waitqueue\22\09\09\09\09\09"
module asm "__kstrtabns___var_waitqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_init_wait_var_entry:\09\09\09\09\09"
module asm "\09.asciz \09\22init_wait_var_entry\22\09\09\09\09\09"
module asm "__kstrtabns_init_wait_var_entry:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wake_up_var:\09\09\09\09\09"
module asm "\09.asciz \09\22wake_up_var\22\09\09\09\09\09"
module asm "__kstrtabns_wake_up_var:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bit_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22bit_wait\22\09\09\09\09\09"
module asm "__kstrtabns_bit_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bit_wait_io:\09\09\09\09\09"
module asm "\09.asciz \09\22bit_wait_io\22\09\09\09\09\09"
module asm "__kstrtabns_bit_wait_io:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bit_wait_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22bit_wait_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_bit_wait_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bit_wait_io_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22bit_wait_io_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_bit_wait_io_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.wait_bit_key = type { ptr, i32, i32 }
%struct.wait_bit_queue_entry = type { %struct.wait_bit_key, %struct.wait_queue_entry }
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

@bit_wait_table = internal global [256 x %struct.wait_queue_head] zeroinitializer, section ".data..cacheline_aligned", align 64
@__kstrtab_bit_waitqueue = external dso_local constant [0 x i8], align 1
@__kstrtabns_bit_waitqueue = external dso_local constant [0 x i8], align 1
@__ksymtab_bit_waitqueue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bit_waitqueue to i32), ptr @__kstrtab_bit_waitqueue, ptr @__kstrtabns_bit_waitqueue }, section "___ksymtab+bit_waitqueue", align 4
@__kstrtab_wake_bit_function = external dso_local constant [0 x i8], align 1
@__kstrtabns_wake_bit_function = external dso_local constant [0 x i8], align 1
@__ksymtab_wake_bit_function = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wake_bit_function to i32), ptr @__kstrtab_wake_bit_function, ptr @__kstrtabns_wake_bit_function }, section "___ksymtab+wake_bit_function", align 4
@__kstrtab___wait_on_bit = external dso_local constant [0 x i8], align 1
@__kstrtabns___wait_on_bit = external dso_local constant [0 x i8], align 1
@__ksymtab___wait_on_bit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__wait_on_bit to i32), ptr @__kstrtab___wait_on_bit, ptr @__kstrtabns___wait_on_bit }, section "___ksymtab+__wait_on_bit", align 4
@__kstrtab_out_of_line_wait_on_bit = external dso_local constant [0 x i8], align 1
@__kstrtabns_out_of_line_wait_on_bit = external dso_local constant [0 x i8], align 1
@__ksymtab_out_of_line_wait_on_bit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @out_of_line_wait_on_bit to i32), ptr @__kstrtab_out_of_line_wait_on_bit, ptr @__kstrtabns_out_of_line_wait_on_bit }, section "___ksymtab+out_of_line_wait_on_bit", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab_out_of_line_wait_on_bit_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_out_of_line_wait_on_bit_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_out_of_line_wait_on_bit_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @out_of_line_wait_on_bit_timeout to i32), ptr @__kstrtab_out_of_line_wait_on_bit_timeout, ptr @__kstrtabns_out_of_line_wait_on_bit_timeout }, section "___ksymtab_gpl+out_of_line_wait_on_bit_timeout", align 4
@__kstrtab___wait_on_bit_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns___wait_on_bit_lock = external dso_local constant [0 x i8], align 1
@__ksymtab___wait_on_bit_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__wait_on_bit_lock to i32), ptr @__kstrtab___wait_on_bit_lock, ptr @__kstrtabns___wait_on_bit_lock }, section "___ksymtab+__wait_on_bit_lock", align 4
@__kstrtab_out_of_line_wait_on_bit_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_out_of_line_wait_on_bit_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_out_of_line_wait_on_bit_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @out_of_line_wait_on_bit_lock to i32), ptr @__kstrtab_out_of_line_wait_on_bit_lock, ptr @__kstrtabns_out_of_line_wait_on_bit_lock }, section "___ksymtab+out_of_line_wait_on_bit_lock", align 4
@__kstrtab___wake_up_bit = external dso_local constant [0 x i8], align 1
@__kstrtabns___wake_up_bit = external dso_local constant [0 x i8], align 1
@__ksymtab___wake_up_bit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__wake_up_bit to i32), ptr @__kstrtab___wake_up_bit, ptr @__kstrtabns___wake_up_bit }, section "___ksymtab+__wake_up_bit", align 4
@__kstrtab_wake_up_bit = external dso_local constant [0 x i8], align 1
@__kstrtabns_wake_up_bit = external dso_local constant [0 x i8], align 1
@__ksymtab_wake_up_bit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wake_up_bit to i32), ptr @__kstrtab_wake_up_bit, ptr @__kstrtabns_wake_up_bit }, section "___ksymtab+wake_up_bit", align 4
@__kstrtab___var_waitqueue = external dso_local constant [0 x i8], align 1
@__kstrtabns___var_waitqueue = external dso_local constant [0 x i8], align 1
@__ksymtab___var_waitqueue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__var_waitqueue to i32), ptr @__kstrtab___var_waitqueue, ptr @__kstrtabns___var_waitqueue }, section "___ksymtab+__var_waitqueue", align 4
@__kstrtab_init_wait_var_entry = external dso_local constant [0 x i8], align 1
@__kstrtabns_init_wait_var_entry = external dso_local constant [0 x i8], align 1
@__ksymtab_init_wait_var_entry = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @init_wait_var_entry to i32), ptr @__kstrtab_init_wait_var_entry, ptr @__kstrtabns_init_wait_var_entry }, section "___ksymtab+init_wait_var_entry", align 4
@__kstrtab_wake_up_var = external dso_local constant [0 x i8], align 1
@__kstrtabns_wake_up_var = external dso_local constant [0 x i8], align 1
@__ksymtab_wake_up_var = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wake_up_var to i32), ptr @__kstrtab_wake_up_var, ptr @__kstrtabns_wake_up_var }, section "___ksymtab+wake_up_var", align 4
@__kstrtab_bit_wait = external dso_local constant [0 x i8], align 1
@__kstrtabns_bit_wait = external dso_local constant [0 x i8], align 1
@__ksymtab_bit_wait = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bit_wait to i32), ptr @__kstrtab_bit_wait, ptr @__kstrtabns_bit_wait }, section "___ksymtab+bit_wait", align 4
@__kstrtab_bit_wait_io = external dso_local constant [0 x i8], align 1
@__kstrtabns_bit_wait_io = external dso_local constant [0 x i8], align 1
@__ksymtab_bit_wait_io = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bit_wait_io to i32), ptr @__kstrtab_bit_wait_io, ptr @__kstrtabns_bit_wait_io }, section "___ksymtab+bit_wait_io", align 4
@__kstrtab_bit_wait_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_bit_wait_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_bit_wait_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bit_wait_timeout to i32), ptr @__kstrtab_bit_wait_timeout, ptr @__kstrtabns_bit_wait_timeout }, section "___ksymtab_gpl+bit_wait_timeout", align 4
@__kstrtab_bit_wait_io_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_bit_wait_io_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_bit_wait_io_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bit_wait_io_timeout to i32), ptr @__kstrtab_bit_wait_io_timeout, ptr @__kstrtabns_bit_wait_io_timeout }, section "___ksymtab_gpl+bit_wait_io_timeout", align 4
@wait_bit_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [19 x i8] c"bit_wait_table + i\00", align 1
@llvm.compiler.used = appending global [16 x ptr] [ptr @__ksymtab___var_waitqueue, ptr @__ksymtab___wait_on_bit, ptr @__ksymtab___wait_on_bit_lock, ptr @__ksymtab___wake_up_bit, ptr @__ksymtab_bit_wait, ptr @__ksymtab_bit_wait_io, ptr @__ksymtab_bit_wait_io_timeout, ptr @__ksymtab_bit_wait_timeout, ptr @__ksymtab_bit_waitqueue, ptr @__ksymtab_init_wait_var_entry, ptr @__ksymtab_out_of_line_wait_on_bit, ptr @__ksymtab_out_of_line_wait_on_bit_lock, ptr @__ksymtab_out_of_line_wait_on_bit_timeout, ptr @__ksymtab_wake_bit_function, ptr @__ksymtab_wake_up_bit, ptr @__ksymtab_wake_up_var], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @bit_waitqueue(ptr noundef %0, i32 noundef %1) #0 {
  %3 = ptrtoint ptr %0 to i32
  %4 = shl i32 %3, 5
  %5 = or i32 %4, %1
  %6 = mul i32 %5, 1640531527
  %7 = lshr i32 %6, 24
  %8 = getelementptr %struct.wait_queue_head, ptr @bit_wait_table, i32 %7
  ret ptr %8
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @wake_bit_function(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #2 {
  %5 = getelementptr i8, ptr %0, i32 -12
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %3, align 4
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %9, label %25

9:                                                ; preds = %4
  %10 = getelementptr i8, ptr %0, i32 -8
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.wait_bit_key, ptr %3, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %9
  %16 = lshr i32 %11, 5
  %17 = getelementptr i32, ptr %6, i32 %16
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %11, 31
  %20 = shl nuw i32 1, %19
  %21 = and i32 %18, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = tail call i32 @autoremove_wake_function(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #7
  br label %25

25:                                               ; preds = %23, %15, %9, %4
  %26 = phi i32 [ %24, %23 ], [ 0, %15 ], [ 0, %9 ], [ 0, %4 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__wait_on_bit(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 section ".sched.text" {
  %5 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %1, i32 0, i32 1
  %6 = getelementptr inbounds %struct.wait_bit_key, ptr %1, i32 0, i32 1
  br label %7

7:                                                ; preds = %24, %4
  tail call void @prepare_to_wait(ptr noundef %0, ptr noundef %5, i32 noundef %3) #7
  %8 = load i32, ptr %6, align 4
  %9 = load ptr, ptr %1, align 4
  %10 = lshr i32 %8, 5
  %11 = getelementptr i32, ptr %9, i32 %10
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %8, 31
  %14 = shl nuw i32 1, %13
  %15 = and i32 %12, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %7
  %18 = tail call i32 %2(ptr noundef %1, i32 noundef %3) #7
  %19 = load i32, ptr %6, align 4
  %20 = load ptr, ptr %1, align 4
  %21 = lshr i32 %19, 5
  %22 = and i32 %19, 31
  %23 = shl nuw i32 1, %22
  br label %24

24:                                               ; preds = %17, %7
  %25 = phi i32 [ %14, %7 ], [ %23, %17 ]
  %26 = phi i32 [ %10, %7 ], [ %21, %17 ]
  %27 = phi ptr [ %9, %7 ], [ %20, %17 ]
  %28 = phi i32 [ 0, %7 ], [ %18, %17 ]
  %29 = getelementptr i32, ptr %27, i32 %26
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %30, %25
  %32 = icmp ne i32 %31, 0
  %33 = icmp eq i32 %28, 0
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %7, label %35

35:                                               ; preds = %24
  tail call void @finish_wait(ptr noundef %0, ptr noundef %5) #7
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @out_of_line_wait_on_bit(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 section ".sched.text" {
  %5 = alloca %struct.wait_bit_queue_entry, align 4
  %6 = ptrtoint ptr %0 to i32
  %7 = shl i32 %6, 5
  %8 = or i32 %7, %1
  %9 = mul i32 %8, 1640531527
  %10 = lshr i32 %9, 24
  %11 = getelementptr %struct.wait_queue_head, ptr @bit_wait_table, i32 %10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #7
  store ptr %0, ptr %5, align 4
  %12 = getelementptr inbounds %struct.wait_bit_key, ptr %5, i32 0, i32 1
  store i32 %1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.wait_bit_key, ptr %5, i32 0, i32 2
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %5, i32 0, i32 1
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %5, i32 0, i32 1, i32 1
  %16 = tail call ptr @llvm.thread.pointer() #7
  store ptr %16, ptr %15, align 4
  %17 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %5, i32 0, i32 1, i32 2
  store ptr @wake_bit_function, ptr %17, align 4
  %18 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %5, i32 0, i32 1, i32 3
  store ptr %18, ptr %18, align 4
  %19 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %5, i32 0, i32 1, i32 3, i32 1
  store ptr %18, ptr %19, align 4
  br label %20

20:                                               ; preds = %37, %4
  call void @prepare_to_wait(ptr noundef %11, ptr noundef %14, i32 noundef %3) #7
  %21 = load i32, ptr %12, align 4
  %22 = load ptr, ptr %5, align 4
  %23 = lshr i32 %21, 5
  %24 = getelementptr i32, ptr %22, i32 %23
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %21, 31
  %27 = shl nuw i32 1, %26
  %28 = and i32 %25, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %20
  %31 = call i32 %2(ptr noundef nonnull %5, i32 noundef %3) #7
  %32 = load i32, ptr %12, align 4
  %33 = load ptr, ptr %5, align 4
  %34 = lshr i32 %32, 5
  %35 = and i32 %32, 31
  %36 = shl nuw i32 1, %35
  br label %37

37:                                               ; preds = %30, %20
  %38 = phi i32 [ %27, %20 ], [ %36, %30 ]
  %39 = phi i32 [ %23, %20 ], [ %34, %30 ]
  %40 = phi ptr [ %22, %20 ], [ %33, %30 ]
  %41 = phi i32 [ 0, %20 ], [ %31, %30 ]
  %42 = getelementptr i32, ptr %40, i32 %39
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %43, %38
  %45 = icmp ne i32 %44, 0
  %46 = icmp eq i32 %41, 0
  %47 = select i1 %45, i1 %46, i1 false
  br i1 %47, label %20, label %48

48:                                               ; preds = %37
  call void @finish_wait(ptr noundef %11, ptr noundef %14) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #7
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @out_of_line_wait_on_bit_timeout(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #2 section ".sched.text" {
  %6 = alloca %struct.wait_bit_queue_entry, align 4
  %7 = ptrtoint ptr %0 to i32
  %8 = shl i32 %7, 5
  %9 = or i32 %8, %1
  %10 = mul i32 %9, 1640531527
  %11 = lshr i32 %10, 24
  %12 = getelementptr %struct.wait_queue_head, ptr @bit_wait_table, i32 %11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #7
  store ptr %0, ptr %6, align 4
  %13 = getelementptr inbounds %struct.wait_bit_key, ptr %6, i32 0, i32 1
  store i32 %1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.wait_bit_key, ptr %6, i32 0, i32 2
  %15 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %6, i32 0, i32 1
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %6, i32 0, i32 1, i32 1
  %17 = tail call ptr @llvm.thread.pointer() #7
  store ptr %17, ptr %16, align 4
  %18 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %6, i32 0, i32 1, i32 2
  store ptr @wake_bit_function, ptr %18, align 4
  %19 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %6, i32 0, i32 1, i32 3
  store ptr %19, ptr %19, align 4
  %20 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %6, i32 0, i32 1, i32 3, i32 1
  store ptr %19, ptr %20, align 4
  %21 = load volatile i32, ptr @jiffies, align 64
  %22 = add i32 %21, %4
  store i32 %22, ptr %14, align 4
  br label %23

23:                                               ; preds = %40, %5
  call void @prepare_to_wait(ptr noundef %12, ptr noundef %15, i32 noundef %3) #7
  %24 = load i32, ptr %13, align 4
  %25 = load ptr, ptr %6, align 4
  %26 = lshr i32 %24, 5
  %27 = getelementptr i32, ptr %25, i32 %26
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %24, 31
  %30 = shl nuw i32 1, %29
  %31 = and i32 %28, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %23
  %34 = call i32 %2(ptr noundef nonnull %6, i32 noundef %3) #7
  %35 = load i32, ptr %13, align 4
  %36 = load ptr, ptr %6, align 4
  %37 = lshr i32 %35, 5
  %38 = and i32 %35, 31
  %39 = shl nuw i32 1, %38
  br label %40

40:                                               ; preds = %33, %23
  %41 = phi i32 [ %30, %23 ], [ %39, %33 ]
  %42 = phi i32 [ %26, %23 ], [ %37, %33 ]
  %43 = phi ptr [ %25, %23 ], [ %36, %33 ]
  %44 = phi i32 [ 0, %23 ], [ %34, %33 ]
  %45 = getelementptr i32, ptr %43, i32 %42
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %46, %41
  %48 = icmp ne i32 %47, 0
  %49 = icmp eq i32 %44, 0
  %50 = select i1 %48, i1 %49, i1 false
  br i1 %50, label %23, label %51

51:                                               ; preds = %40
  call void @finish_wait(ptr noundef %12, ptr noundef %15) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #7
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__wait_on_bit_lock(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 section ".sched.text" {
  %5 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %1, i32 0, i32 1
  %6 = getelementptr inbounds %struct.wait_bit_key, ptr %1, i32 0, i32 1
  br label %7

7:                                                ; preds = %31, %4
  %8 = tail call zeroext i1 @prepare_to_wait_exclusive(ptr noundef %0, ptr noundef %5, i32 noundef %3) #7
  %9 = load i32, ptr %6, align 4
  %10 = load ptr, ptr %1, align 4
  %11 = lshr i32 %9, 5
  %12 = getelementptr i32, ptr %10, i32 %11
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %9, 31
  %15 = shl nuw i32 1, %14
  %16 = and i32 %13, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %7
  %19 = tail call i32 %2(ptr noundef %1, i32 noundef %3) #7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void @finish_wait(ptr noundef %0, ptr noundef %5) #7
  br label %22

22:                                               ; preds = %21, %18, %7
  %23 = phi i32 [ %19, %21 ], [ 0, %18 ], [ 0, %7 ]
  %24 = load i32, ptr %6, align 4
  %25 = load ptr, ptr %1, align 4
  %26 = tail call i32 @_test_and_set_bit(i32 noundef %24, ptr noundef %25) #7
  %27 = icmp eq i32 %26, 0
  %28 = icmp eq i32 %23, 0
  br i1 %27, label %29, label %31

29:                                               ; preds = %22
  br i1 %28, label %30, label %32

30:                                               ; preds = %29
  tail call void @finish_wait(ptr noundef %0, ptr noundef %5) #7
  br label %32

31:                                               ; preds = %22
  br i1 %28, label %7, label %32

32:                                               ; preds = %31, %30, %29
  %33 = phi i32 [ 0, %30 ], [ 0, %29 ], [ %23, %31 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @prepare_to_wait_exclusive(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @out_of_line_wait_on_bit_lock(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 section ".sched.text" {
  %5 = alloca %struct.wait_bit_queue_entry, align 4
  %6 = ptrtoint ptr %0 to i32
  %7 = shl i32 %6, 5
  %8 = or i32 %7, %1
  %9 = mul i32 %8, 1640531527
  %10 = lshr i32 %9, 24
  %11 = getelementptr %struct.wait_queue_head, ptr @bit_wait_table, i32 %10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #7
  store ptr %0, ptr %5, align 4
  %12 = getelementptr inbounds %struct.wait_bit_key, ptr %5, i32 0, i32 1
  store i32 %1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.wait_bit_key, ptr %5, i32 0, i32 2
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %5, i32 0, i32 1
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %5, i32 0, i32 1, i32 1
  %16 = tail call ptr @llvm.thread.pointer() #7
  store ptr %16, ptr %15, align 4
  %17 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %5, i32 0, i32 1, i32 2
  store ptr @wake_bit_function, ptr %17, align 4
  %18 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %5, i32 0, i32 1, i32 3
  store ptr %18, ptr %18, align 4
  %19 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %5, i32 0, i32 1, i32 3, i32 1
  store ptr %18, ptr %19, align 4
  %20 = call i32 @__wait_on_bit_lock(ptr noundef %11, ptr noundef nonnull %5, ptr noundef %2, i32 noundef %3)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #7
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__wake_up_bit(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca %struct.wait_bit_key, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #7
  store ptr %1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.wait_bit_key, ptr %4, i32 0, i32 1
  store i32 %2, ptr %5, align 4
  %6 = getelementptr inbounds %struct.wait_bit_key, ptr %4, i32 0, i32 2
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.wait_queue_head, ptr %0, i32 0, i32 1
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  call void @__wake_up(ptr noundef %0, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %4) #7
  br label %11

11:                                               ; preds = %10, %3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wake_up_bit(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca %struct.wait_bit_key, align 4
  %4 = ptrtoint ptr %0 to i32
  %5 = shl i32 %4, 5
  %6 = or i32 %5, %1
  %7 = mul i32 %6, 1640531527
  %8 = lshr i32 %7, 24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #7
  store ptr %0, ptr %3, align 4
  %9 = getelementptr inbounds %struct.wait_bit_key, ptr %3, i32 0, i32 1
  store i32 %1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.wait_bit_key, ptr %3, i32 0, i32 2
  store i32 0, ptr %10, align 4
  %11 = getelementptr %struct.wait_queue_head, ptr @bit_wait_table, i32 %8, i32 1
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = getelementptr %struct.wait_queue_head, ptr @bit_wait_table, i32 %8
  call void @__wake_up(ptr noundef %15, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %3) #7
  br label %16

16:                                               ; preds = %14, %2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @__var_waitqueue(ptr noundef %0) #0 {
  %2 = ptrtoint ptr %0 to i32
  %3 = mul i32 %2, 1640531527
  %4 = lshr i32 %3, 24
  %5 = getelementptr %struct.wait_queue_head, ptr @bit_wait_table, i32 %4
  ret ptr %5
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @init_wait_var_entry(ptr noundef %0, ptr noundef %1, i32 noundef %2) #4 {
  %4 = tail call ptr @llvm.thread.pointer() #7
  %5 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %0, i32 0, i32 1, i32 3
  store ptr %1, ptr %0, align 4
  %6 = getelementptr inbounds i8, ptr %0, i32 4
  store i32 -1, ptr %6, align 4
  %7 = getelementptr inbounds i8, ptr %0, i32 8
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds i8, ptr %0, i32 12
  store i32 %2, ptr %8, align 4
  %9 = getelementptr inbounds i8, ptr %0, i32 16
  store ptr %4, ptr %9, align 4
  %10 = getelementptr inbounds i8, ptr %0, i32 20
  store ptr @var_wake_function, ptr %10, align 4
  store ptr %5, ptr %5, align 4
  %11 = getelementptr inbounds i8, ptr %0, i32 28
  store ptr %5, ptr %11, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @var_wake_function(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #2 {
  %5 = getelementptr i8, ptr %0, i32 -12
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %3, align 4
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %9, label %17

9:                                                ; preds = %4
  %10 = getelementptr i8, ptr %0, i32 -8
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.wait_bit_key, ptr %3, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = tail call i32 @autoremove_wake_function(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #7
  br label %17

17:                                               ; preds = %15, %9, %4
  %18 = phi i32 [ %16, %15 ], [ 0, %9 ], [ 0, %4 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wake_up_var(ptr noundef %0) #2 {
  %2 = alloca %struct.wait_bit_key, align 4
  %3 = ptrtoint ptr %0 to i32
  %4 = mul i32 %3, 1640531527
  %5 = lshr i32 %4, 24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #7
  store ptr %0, ptr %2, align 4
  %6 = getelementptr inbounds %struct.wait_bit_key, ptr %2, i32 0, i32 1
  store i32 -1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.wait_bit_key, ptr %2, i32 0, i32 2
  store i32 0, ptr %7, align 4
  %8 = getelementptr %struct.wait_queue_head, ptr @bit_wait_table, i32 %5, i32 1
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = getelementptr %struct.wait_queue_head, ptr @bit_wait_table, i32 %5
  call void @__wake_up(ptr noundef %12, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %2) #7
  br label %13

13:                                               ; preds = %11, %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bit_wait(ptr nocapture readnone %0, i32 noundef %1) #2 section ".sched.text" {
  tail call void @schedule() #7
  %3 = tail call ptr @llvm.thread.pointer() #7
  %4 = and i32 %1, 257
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  %7 = load volatile i32, ptr %3, align 4
  %8 = and i32 %7, 256
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14, !prof !8

10:                                               ; preds = %6
  %11 = load volatile i32, ptr %3, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %10, %6
  %15 = and i32 %1, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 98, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 256
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %10, %2
  br label %23

23:                                               ; preds = %22, %17, %14
  %24 = phi i32 [ 0, %22 ], [ -4, %17 ], [ -4, %14 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bit_wait_io(ptr nocapture readnone %0, i32 noundef %1) #2 section ".sched.text" {
  tail call void @io_schedule() #7
  %3 = tail call ptr @llvm.thread.pointer() #7
  %4 = and i32 %1, 257
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  %7 = load volatile i32, ptr %3, align 4
  %8 = and i32 %7, 256
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14, !prof !8

10:                                               ; preds = %6
  %11 = load volatile i32, ptr %3, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %10, %6
  %15 = and i32 %1, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 98, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 256
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %10, %2
  br label %23

23:                                               ; preds = %22, %17, %14
  %24 = phi i32 [ 0, %22 ], [ -4, %17 ], [ -4, %14 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @io_schedule() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bit_wait_timeout(ptr nocapture noundef readonly %0, i32 noundef %1) #2 section ".sched.text" {
  %3 = load volatile i32, ptr @jiffies, align 64
  %4 = getelementptr inbounds %struct.wait_bit_key, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = sub i32 %3, %5
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %31, label %8

8:                                                ; preds = %2
  %9 = sub i32 %5, %3
  %10 = tail call i32 @schedule_timeout(i32 noundef %9) #7
  %11 = tail call ptr @llvm.thread.pointer() #7
  %12 = and i32 %1, 257
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %8
  %15 = load volatile i32, ptr %11, align 4
  %16 = and i32 %15, 256
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22, !prof !8

18:                                               ; preds = %14
  %19 = load volatile i32, ptr %11, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %18, %14
  %23 = and i32 %1, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 98, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 256
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %18, %8
  br label %31

31:                                               ; preds = %30, %25, %22, %2
  %32 = phi i32 [ -11, %2 ], [ 0, %30 ], [ -4, %25 ], [ -4, %22 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bit_wait_io_timeout(ptr nocapture noundef readonly %0, i32 noundef %1) #2 section ".sched.text" {
  %3 = load volatile i32, ptr @jiffies, align 64
  %4 = getelementptr inbounds %struct.wait_bit_key, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = sub i32 %3, %5
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %31, label %8

8:                                                ; preds = %2
  %9 = sub i32 %5, %3
  %10 = tail call i32 @io_schedule_timeout(i32 noundef %9) #7
  %11 = tail call ptr @llvm.thread.pointer() #7
  %12 = and i32 %1, 257
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %8
  %15 = load volatile i32, ptr %11, align 4
  %16 = and i32 %15, 256
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22, !prof !8

18:                                               ; preds = %14
  %19 = load volatile i32, ptr %11, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %18, %14
  %23 = and i32 %1, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 98, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 256
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %18, %8
  br label %31

31:                                               ; preds = %30, %25, %22, %2
  %32 = phi i32 [ -11, %2 ], [ 0, %30 ], [ -4, %25 ], [ -4, %22 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @io_schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @wait_bit_init() local_unnamed_addr #5 section ".init.text" {
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i32 [ 0, %0 ], [ %4, %1 ]
  %3 = getelementptr %struct.wait_queue_head, ptr @bit_wait_table, i32 %2
  tail call void @__init_waitqueue_head(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @wait_bit_init.__key) #7
  %4 = add nuw nsw i32 %2, 1
  %5 = icmp eq i32 %4, 256
  br i1 %5, label %6, label %1

6:                                                ; preds = %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
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
!8 = !{!"branch_weights", i32 2000, i32 1}
