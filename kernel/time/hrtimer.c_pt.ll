; ModuleID = '/llk/IR/kernel/time/hrtimer.c_pt.bc'
source_filename = "../kernel/time/hrtimer.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ktime_divns:\09\09\09\09\09"
module asm "\09.asciz \09\22__ktime_divns\22\09\09\09\09\09"
module asm "__kstrtabns___ktime_divns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ktime_add_safe:\09\09\09\09\09"
module asm "\09.asciz \09\22ktime_add_safe\22\09\09\09\09\09"
module asm "__kstrtabns_ktime_add_safe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hrtimer_resolution:\09\09\09\09\09"
module asm "\09.asciz \09\22hrtimer_resolution\22\09\09\09\09\09"
module asm "__kstrtabns_hrtimer_resolution:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hrtimer_forward:\09\09\09\09\09"
module asm "\09.asciz \09\22hrtimer_forward\22\09\09\09\09\09"
module asm "__kstrtabns_hrtimer_forward:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hrtimer_start_range_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22hrtimer_start_range_ns\22\09\09\09\09\09"
module asm "__kstrtabns_hrtimer_start_range_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hrtimer_try_to_cancel:\09\09\09\09\09"
module asm "\09.asciz \09\22hrtimer_try_to_cancel\22\09\09\09\09\09"
module asm "__kstrtabns_hrtimer_try_to_cancel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hrtimer_cancel:\09\09\09\09\09"
module asm "\09.asciz \09\22hrtimer_cancel\22\09\09\09\09\09"
module asm "__kstrtabns_hrtimer_cancel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___hrtimer_get_remaining:\09\09\09\09\09"
module asm "\09.asciz \09\22__hrtimer_get_remaining\22\09\09\09\09\09"
module asm "__kstrtabns___hrtimer_get_remaining:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hrtimer_init:\09\09\09\09\09"
module asm "\09.asciz \09\22hrtimer_init\22\09\09\09\09\09"
module asm "__kstrtabns_hrtimer_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hrtimer_active:\09\09\09\09\09"
module asm "\09.asciz \09\22hrtimer_active\22\09\09\09\09\09"
module asm "__kstrtabns_hrtimer_active:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hrtimer_sleeper_start_expires:\09\09\09\09\09"
module asm "\09.asciz \09\22hrtimer_sleeper_start_expires\22\09\09\09\09\09"
module asm "__kstrtabns_hrtimer_sleeper_start_expires:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hrtimer_init_sleeper:\09\09\09\09\09"
module asm "\09.asciz \09\22hrtimer_init_sleeper\22\09\09\09\09\09"
module asm "__kstrtabns_hrtimer_init_sleeper:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_schedule_hrtimeout_range:\09\09\09\09\09"
module asm "\09.asciz \09\22schedule_hrtimeout_range\22\09\09\09\09\09"
module asm "__kstrtabns_schedule_hrtimeout_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_schedule_hrtimeout:\09\09\09\09\09"
module asm "\09.asciz \09\22schedule_hrtimeout\22\09\09\09\09\09"
module asm "__kstrtabns_schedule_hrtimeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.hrtimer_cpu_base = type { %struct.raw_spinlock, i32, i32, i32, i8, i32, i16, i16, i32, i64, ptr, i64, ptr, [8 x %struct.hrtimer_clock_base] }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.hrtimer_clock_base = type { ptr, i32, i32, %struct.seqcount_raw_spinlock, ptr, %struct.timerqueue_head, ptr, i64 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tick_device = type { ptr, i32 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [60 x i8] }
%struct.hrtimer_sleeper = type { %struct.hrtimer, ptr }
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.54, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.54 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.timespec64 = type { i64, i32 }

@hrtimer_bases = dso_local global %struct.hrtimer_cpu_base { %struct.raw_spinlock zeroinitializer, i32 0, i32 0, i32 0, i8 0, i32 0, i16 0, i16 0, i32 0, i64 0, ptr null, i64 0, ptr null, [8 x %struct.hrtimer_clock_base] [%struct.hrtimer_clock_base { ptr null, i32 0, i32 1, %struct.seqcount_raw_spinlock zeroinitializer, ptr null, %struct.timerqueue_head zeroinitializer, ptr @ktime_get, i64 0 }, %struct.hrtimer_clock_base { ptr null, i32 1, i32 0, %struct.seqcount_raw_spinlock zeroinitializer, ptr null, %struct.timerqueue_head zeroinitializer, ptr @ktime_get_real, i64 0 }, %struct.hrtimer_clock_base { ptr null, i32 2, i32 7, %struct.seqcount_raw_spinlock zeroinitializer, ptr null, %struct.timerqueue_head zeroinitializer, ptr @ktime_get_boottime, i64 0 }, %struct.hrtimer_clock_base { ptr null, i32 3, i32 11, %struct.seqcount_raw_spinlock zeroinitializer, ptr null, %struct.timerqueue_head zeroinitializer, ptr @ktime_get_clocktai, i64 0 }, %struct.hrtimer_clock_base { ptr null, i32 4, i32 1, %struct.seqcount_raw_spinlock zeroinitializer, ptr null, %struct.timerqueue_head zeroinitializer, ptr @ktime_get, i64 0 }, %struct.hrtimer_clock_base { ptr null, i32 5, i32 0, %struct.seqcount_raw_spinlock zeroinitializer, ptr null, %struct.timerqueue_head zeroinitializer, ptr @ktime_get_real, i64 0 }, %struct.hrtimer_clock_base { ptr null, i32 6, i32 7, %struct.seqcount_raw_spinlock zeroinitializer, ptr null, %struct.timerqueue_head zeroinitializer, ptr @ktime_get_boottime, i64 0 }, %struct.hrtimer_clock_base { ptr null, i32 7, i32 11, %struct.seqcount_raw_spinlock zeroinitializer, ptr null, %struct.timerqueue_head zeroinitializer, ptr @ktime_get_clocktai, i64 0 }] }, section ".data..percpu", align 64
@__kstrtab___ktime_divns = external dso_local constant [0 x i8], align 1
@__kstrtabns___ktime_divns = external dso_local constant [0 x i8], align 1
@__ksymtab___ktime_divns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ktime_divns to i32), ptr @__kstrtab___ktime_divns, ptr @__kstrtabns___ktime_divns }, section "___ksymtab_gpl+__ktime_divns", align 4
@__kstrtab_ktime_add_safe = external dso_local constant [0 x i8], align 1
@__kstrtabns_ktime_add_safe = external dso_local constant [0 x i8], align 1
@__ksymtab_ktime_add_safe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ktime_add_safe to i32), ptr @__kstrtab_ktime_add_safe, ptr @__kstrtabns_ktime_add_safe }, section "___ksymtab_gpl+ktime_add_safe", align 4
@hrtimer_resolution = dso_local global i32 10000000, section ".data..read_mostly", align 4
@__kstrtab_hrtimer_resolution = external dso_local constant [0 x i8], align 1
@__kstrtabns_hrtimer_resolution = external dso_local constant [0 x i8], align 1
@__ksymtab_hrtimer_resolution = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hrtimer_resolution to i32), ptr @__kstrtab_hrtimer_resolution, ptr @__kstrtabns_hrtimer_resolution }, section "___ksymtab_gpl+hrtimer_resolution", align 4
@__setup_str_setup_hrtimer_hres = internal constant [9 x i8] c"highres=\00", section ".init.rodata", align 1
@__setup_setup_hrtimer_hres = internal global %struct.obs_kernel_param { ptr @__setup_str_setup_hrtimer_hres, ptr @setup_hrtimer_hres, i32 0 }, section ".init.setup", align 4
@tick_nohz_active = external dso_local local_unnamed_addr global i32, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@hrtimer_work = internal global %struct.work_struct { %struct.atomic_t { i32 -32 }, %struct.list_head { ptr getelementptr (i8, ptr @hrtimer_work, i64 4), ptr getelementptr (i8, ptr @hrtimer_work, i64 4) }, ptr @clock_was_set_work }, align 4
@.str = private unnamed_addr constant [22 x i8] c"kernel/time/hrtimer.c\00", align 1
@__kstrtab_hrtimer_forward = external dso_local constant [0 x i8], align 1
@__kstrtabns_hrtimer_forward = external dso_local constant [0 x i8], align 1
@__ksymtab_hrtimer_forward = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hrtimer_forward to i32), ptr @__kstrtab_hrtimer_forward, ptr @__kstrtabns_hrtimer_forward }, section "___ksymtab_gpl+hrtimer_forward", align 4
@hrtimer_start_range_ns.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_hrtimer_start_range_ns = external dso_local constant [0 x i8], align 1
@__kstrtabns_hrtimer_start_range_ns = external dso_local constant [0 x i8], align 1
@__ksymtab_hrtimer_start_range_ns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hrtimer_start_range_ns to i32), ptr @__kstrtab_hrtimer_start_range_ns, ptr @__kstrtabns_hrtimer_start_range_ns }, section "___ksymtab_gpl+hrtimer_start_range_ns", align 4
@__kstrtab_hrtimer_try_to_cancel = external dso_local constant [0 x i8], align 1
@__kstrtabns_hrtimer_try_to_cancel = external dso_local constant [0 x i8], align 1
@__ksymtab_hrtimer_try_to_cancel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hrtimer_try_to_cancel to i32), ptr @__kstrtab_hrtimer_try_to_cancel, ptr @__kstrtabns_hrtimer_try_to_cancel }, section "___ksymtab_gpl+hrtimer_try_to_cancel", align 4
@__kstrtab_hrtimer_cancel = external dso_local constant [0 x i8], align 1
@__kstrtabns_hrtimer_cancel = external dso_local constant [0 x i8], align 1
@__ksymtab_hrtimer_cancel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hrtimer_cancel to i32), ptr @__kstrtab_hrtimer_cancel, ptr @__kstrtabns_hrtimer_cancel }, section "___ksymtab_gpl+hrtimer_cancel", align 4
@__kstrtab___hrtimer_get_remaining = external dso_local constant [0 x i8], align 1
@__kstrtabns___hrtimer_get_remaining = external dso_local constant [0 x i8], align 1
@__ksymtab___hrtimer_get_remaining = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__hrtimer_get_remaining to i32), ptr @__kstrtab___hrtimer_get_remaining, ptr @__kstrtabns___hrtimer_get_remaining }, section "___ksymtab_gpl+__hrtimer_get_remaining", align 4
@__kstrtab_hrtimer_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_hrtimer_init = external dso_local constant [0 x i8], align 1
@__ksymtab_hrtimer_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hrtimer_init to i32), ptr @__kstrtab_hrtimer_init, ptr @__kstrtabns_hrtimer_init }, section "___ksymtab_gpl+hrtimer_init", align 4
@__kstrtab_hrtimer_active = external dso_local constant [0 x i8], align 1
@__kstrtabns_hrtimer_active = external dso_local constant [0 x i8], align 1
@__ksymtab_hrtimer_active = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hrtimer_active to i32), ptr @__kstrtab_hrtimer_active, ptr @__kstrtabns_hrtimer_active }, section "___ksymtab_gpl+hrtimer_active", align 4
@hrtimer_interrupt.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"\014hrtimer: interrupt took %llu ns\0A\00", align 1
@__kstrtab_hrtimer_sleeper_start_expires = external dso_local constant [0 x i8], align 1
@__kstrtabns_hrtimer_sleeper_start_expires = external dso_local constant [0 x i8], align 1
@__ksymtab_hrtimer_sleeper_start_expires = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hrtimer_sleeper_start_expires to i32), ptr @__kstrtab_hrtimer_sleeper_start_expires, ptr @__kstrtabns_hrtimer_sleeper_start_expires }, section "___ksymtab_gpl+hrtimer_sleeper_start_expires", align 4
@__kstrtab_hrtimer_init_sleeper = external dso_local constant [0 x i8], align 1
@__kstrtabns_hrtimer_init_sleeper = external dso_local constant [0 x i8], align 1
@__ksymtab_hrtimer_init_sleeper = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hrtimer_init_sleeper to i32), ptr @__kstrtab_hrtimer_init_sleeper, ptr @__kstrtabns_hrtimer_init_sleeper }, section "___ksymtab_gpl+hrtimer_init_sleeper", align 4
@__kstrtab_schedule_hrtimeout_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_schedule_hrtimeout_range = external dso_local constant [0 x i8], align 1
@__ksymtab_schedule_hrtimeout_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @schedule_hrtimeout_range to i32), ptr @__kstrtab_schedule_hrtimeout_range, ptr @__kstrtabns_schedule_hrtimeout_range }, section "___ksymtab_gpl+schedule_hrtimeout_range", align 4
@__kstrtab_schedule_hrtimeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_schedule_hrtimeout = external dso_local constant [0 x i8], align 1
@__ksymtab_schedule_hrtimeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @schedule_hrtimeout to i32), ptr @__kstrtab_schedule_hrtimeout, ptr @__kstrtabns_schedule_hrtimeout }, section "___ksymtab_gpl+schedule_hrtimeout", align 4
@hrtimer_hres_enabled = internal global i8 1, section ".data..read_mostly", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@migration_cpu_base = internal global %struct.hrtimer_cpu_base { %struct.raw_spinlock zeroinitializer, i32 0, i32 0, i32 0, i8 0, i32 0, i16 0, i16 0, i32 0, i64 0, ptr null, i64 0, ptr null, [8 x %struct.hrtimer_clock_base] [%struct.hrtimer_clock_base { ptr @migration_cpu_base, i32 0, i32 0, %struct.seqcount_raw_spinlock zeroinitializer, ptr null, %struct.timerqueue_head zeroinitializer, ptr null, i64 0 }, %struct.hrtimer_clock_base zeroinitializer, %struct.hrtimer_clock_base zeroinitializer, %struct.hrtimer_clock_base zeroinitializer, %struct.hrtimer_clock_base zeroinitializer, %struct.hrtimer_clock_base zeroinitializer, %struct.hrtimer_clock_base zeroinitializer, %struct.hrtimer_clock_base zeroinitializer] }, align 64
@timers_migration_enabled = external dso_local global %struct.static_key_false, align 4
@__tracepoint_hrtimer_start = external dso_local global %struct.tracepoint, align 4
@hrtimer_reprogram.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_hrtimer_cancel = external dso_local global %struct.tracepoint, align 4
@__tracepoint_hrtimer_init = external dso_local global %struct.tracepoint, align 4
@hrtimer_clock_to_base_table = internal unnamed_addr constant [16 x i32] [i32 1, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 2, i32 8, i32 8, i32 8, i32 3, i32 8, i32 8, i32 8, i32 8], align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Invalid clockid %d. Using MONOTONIC\0A\00", align 1
@__run_hrtimer.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_hrtimer_expire_entry = external dso_local global %struct.tracepoint, align 4
@__tracepoint_hrtimer_expire_exit = external dso_local global %struct.tracepoint, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"\014Could not switch to high resolution mode on CPU %u\0A\00", align 1
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@tick_cpu_device = external dso_local global %struct.tick_device, section ".data..percpu", align 4
@llvm.compiler.used = appending global [15 x ptr] [ptr @__ksymtab___hrtimer_get_remaining, ptr @__ksymtab___ktime_divns, ptr @__ksymtab_hrtimer_active, ptr @__ksymtab_hrtimer_cancel, ptr @__ksymtab_hrtimer_forward, ptr @__ksymtab_hrtimer_init, ptr @__ksymtab_hrtimer_init_sleeper, ptr @__ksymtab_hrtimer_resolution, ptr @__ksymtab_hrtimer_sleeper_start_expires, ptr @__ksymtab_hrtimer_start_range_ns, ptr @__ksymtab_hrtimer_try_to_cancel, ptr @__ksymtab_ktime_add_safe, ptr @__ksymtab_schedule_hrtimeout, ptr @__ksymtab_schedule_hrtimeout_range, ptr @__setup_setup_hrtimer_hres], section "llvm.metadata"

@sys_nanosleep_time32 = dso_local alias i32 (ptr, ptr), ptr @__se_sys_nanosleep_time32

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @ktime_get_real() #1 {
  %1 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #14
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @ktime_get_boottime() #1 {
  %1 = tail call i64 @ktime_get_with_offset(i32 noundef 1) #14
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @ktime_get_clocktai() #1 {
  %1 = tail call i64 @ktime_get_with_offset(i32 noundef 2) #14
  ret i64 %1
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync)
define dso_local i64 @__ktime_divns(i64 noundef %0, i64 noundef %1) #2 {
  %3 = tail call i64 @llvm.abs.i64(i64 %0, i1 false)
  %4 = icmp ult i64 %1, 4294967296
  %5 = trunc i64 %1 to i32
  br i1 %4, label %14, label %6

6:                                                ; preds = %6, %2
  %7 = phi i64 [ %10, %6 ], [ %1, %2 ]
  %8 = phi i32 [ %9, %6 ], [ 0, %2 ]
  %9 = add i32 %8, 1
  %10 = ashr i64 %7, 1
  %11 = icmp ult i64 %7, 8589934592
  br i1 %11, label %12, label %6

12:                                               ; preds = %6
  %13 = trunc i64 %10 to i32
  br label %14

14:                                               ; preds = %12, %2
  %15 = phi i32 [ 0, %2 ], [ %9, %12 ]
  %16 = phi i32 [ %5, %2 ], [ %13, %12 ]
  %17 = zext i32 %15 to i64
  %18 = lshr i64 %3, %17
  %19 = icmp ult i64 %18, 4294967296
  br i1 %19, label %20, label %24, !prof !9

20:                                               ; preds = %14
  %21 = trunc i64 %18 to i32
  %22 = udiv i32 %21, %16
  %23 = zext i32 %22 to i64
  br label %27

24:                                               ; preds = %14
  %25 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %16, i64 %18) #15, !srcloc !10
  %26 = extractvalue { i64, i64 } %25, 1
  br label %27

27:                                               ; preds = %24, %20
  %28 = phi i64 [ %23, %20 ], [ %26, %24 ]
  %29 = icmp slt i64 %0, 0
  %30 = sub i64 0, %28
  %31 = select i1 %29, i64 %30, i64 %28
  ret i64 %31
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i64 @ktime_add_safe(i64 noundef %0, i64 noundef %1) #4 {
  %3 = add i64 %1, %0
  %4 = icmp slt i64 %3, 0
  %5 = icmp slt i64 %3, %0
  %6 = or i1 %4, %5
  %7 = icmp slt i64 %3, %1
  %8 = or i1 %7, %6
  %9 = select i1 %8, i64 9223372036854775807, i64 %3
  ret i64 %9
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @setup_hrtimer_hres(ptr noundef %0) #5 section ".init.text" {
  %2 = tail call i32 @kstrtobool(ptr noundef %0, ptr noundef nonnull @hrtimer_hres_enabled) #14
  %3 = icmp eq i32 %2, 0
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clock_was_set(i32 noundef %0) local_unnamed_addr #6 {
  %2 = alloca [1 x %struct.cpumask], align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %4 = inttoptr i32 %3 to ptr
  %5 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %4) #11, !srcloc !11
  %6 = add i32 %5, ptrtoint (ptr @hrtimer_bases to i32)
  %7 = inttoptr i32 %6 to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 0, ptr %2, align 4, !annotation !12
  %8 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %7, i32 0, i32 4
  %9 = load i8, ptr %8, align 16
  %10 = and i8 %9, 1
  %11 = icmp ne i8 %10, 0
  %12 = load i32, ptr @tick_nohz_active, align 4
  %13 = icmp ne i32 %12, 0
  %14 = select i1 %11, i1 true, i1 %13
  br i1 %14, label %15, label %89

15:                                               ; preds = %1
  tail call void @cpus_read_lock() #14
  %16 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #16
  %17 = load i32, ptr @nr_cpu_ids, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %88

19:                                               ; preds = %84, %15
  %20 = phi i32 [ %85, %84 ], [ %16, %15 ]
  %21 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %20
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, ptrtoint (ptr @hrtimer_bases to i32)
  %24 = inttoptr i32 %23 to ptr
  %25 = call i32 @_raw_spin_lock_irqsave(ptr noundef %24) #14
  %26 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %24, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr %struct.hrtimer_cpu_base, ptr %24, i32 0, i32 13, i32 1, i32 7
  %29 = getelementptr %struct.hrtimer_cpu_base, ptr %24, i32 0, i32 13, i32 2, i32 7
  %30 = getelementptr %struct.hrtimer_cpu_base, ptr %24, i32 0, i32 13, i32 3, i32 7
  %31 = call i64 @ktime_get_update_offsets_now(ptr noundef %26, ptr noundef %28, ptr noundef %29, ptr noundef %30) #14
  %32 = load i64, ptr %28, align 8
  %33 = getelementptr %struct.hrtimer_cpu_base, ptr %24, i32 0, i32 13, i32 5, i32 7
  store i64 %32, ptr %33, align 8
  %34 = load i64, ptr %29, align 8
  %35 = getelementptr %struct.hrtimer_cpu_base, ptr %24, i32 0, i32 13, i32 6, i32 7
  store i64 %34, ptr %35, align 16
  %36 = load i64, ptr %30, align 8
  %37 = getelementptr %struct.hrtimer_cpu_base, ptr %24, i32 0, i32 13, i32 7, i32 7
  store i64 %36, ptr %37, align 8
  %38 = load i32, ptr %26, align 4
  %39 = icmp eq i32 %27, %38
  br i1 %39, label %84, label %40

40:                                               ; preds = %19
  %41 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %24, i32 0, i32 4
  %42 = load i8, ptr %41, align 16
  %43 = and i8 %42, 2
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %84

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %24, i32 0, i32 2
  %47 = load i32, ptr %46, align 8
  %48 = and i32 %47, %0
  %49 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %24, i32 0, i32 11
  %50 = icmp eq i32 %48, 0
  br i1 %50, label %84, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %24, i32 0, i32 9
  %53 = and i8 %42, 8
  %54 = icmp eq i8 %53, 0
  br label %55

55:                                               ; preds = %81, %51
  %56 = phi i32 [ %48, %51 ], [ %60, %81 ]
  %57 = call i32 @llvm.cttz.i32(i32 %56, i1 true) #14, !range !13
  %58 = shl nuw i32 1, %57
  %59 = xor i32 %58, -1
  %60 = and i32 %56, %59
  %61 = getelementptr %struct.hrtimer_cpu_base, ptr %24, i32 0, i32 13, i32 %57
  %62 = icmp eq ptr %61, null
  br i1 %62, label %84, label %63

63:                                               ; preds = %55
  %64 = getelementptr %struct.hrtimer_cpu_base, ptr %24, i32 0, i32 13, i32 %57, i32 5, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.timerqueue_node, ptr %65, i32 0, i32 1
  %67 = load i64, ptr %66, align 8
  %68 = getelementptr %struct.hrtimer_cpu_base, ptr %24, i32 0, i32 13, i32 %57, i32 7
  %69 = load i64, ptr %68, align 8
  %70 = sub i64 %67, %69
  %71 = load i64, ptr %52, align 32
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %83, label %73

73:                                               ; preds = %63
  %74 = getelementptr %struct.hrtimer_cpu_base, ptr %24, i32 0, i32 13, i32 %57, i32 2
  %75 = load i32, ptr %74, align 8
  %76 = icmp sgt i32 %75, 3
  %77 = select i1 %76, i1 %54, i1 false
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i64, ptr %49, align 16
  %80 = icmp slt i64 %70, %79
  br i1 %80, label %83, label %81

81:                                               ; preds = %78, %73
  %82 = icmp eq i32 %60, 0
  br i1 %82, label %84, label %55

83:                                               ; preds = %78, %63
  call void @_set_bit(i32 noundef %20, ptr noundef nonnull %2) #14
  br label %84

84:                                               ; preds = %83, %81, %55, %45, %40, %19
  call void @_raw_spin_unlock_irqrestore(ptr noundef %24, i32 noundef %25) #14
  %85 = call i32 @cpumask_next(i32 noundef %20, ptr noundef nonnull @__cpu_online_mask) #16
  %86 = load i32, ptr @nr_cpu_ids, align 4
  %87 = icmp ult i32 %85, %86
  br i1 %87, label %19, label %88

88:                                               ; preds = %84, %15
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  call void @smp_call_function_many(ptr noundef nonnull %2, ptr noundef nonnull @retrigger_next_event, ptr noundef null, i1 noundef zeroext true) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  call void @cpus_read_unlock() #14
  br label %89

89:                                               ; preds = %88, %1
  call void @timerfd_clock_was_set() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @retrigger_next_event(ptr nocapture noundef readnone %0) #6 {
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #11, !srcloc !11
  %5 = add i32 %4, ptrtoint (ptr @hrtimer_bases to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 4
  %8 = load i8, ptr %7, align 16
  %9 = and i8 %8, 1
  %10 = icmp ne i8 %9, 0
  %11 = load i32, ptr @tick_nohz_active, align 4
  %12 = icmp ne i32 %11, 0
  %13 = select i1 %10, i1 true, i1 %12
  br i1 %13, label %14, label %42

14:                                               ; preds = %1
  tail call void @_raw_spin_lock(ptr noundef %6) #14
  %15 = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 1, i32 7
  %16 = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 2, i32 7
  %17 = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 3, i32 7
  %18 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 3
  %19 = tail call i64 @ktime_get_update_offsets_now(ptr noundef %18, ptr noundef %15, ptr noundef %16, ptr noundef %17) #14
  %20 = load i64, ptr %15, align 8
  %21 = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 5, i32 7
  store i64 %20, ptr %21, align 8
  %22 = load i64, ptr %16, align 8
  %23 = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 6, i32 7
  store i64 %22, ptr %23, align 16
  %24 = load i64, ptr %17, align 8
  %25 = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 7, i32 7
  store i64 %24, ptr %25, align 8
  %26 = load i8, ptr %7, align 16
  %27 = and i8 %26, 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %14
  %30 = tail call fastcc i64 @hrtimer_update_next_event(ptr noundef %6) #14
  %31 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 9
  store i64 %30, ptr %31, align 32
  %32 = load i8, ptr %7, align 16
  %33 = and i8 %32, 5
  %34 = icmp eq i8 %33, 1
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = tail call i32 @tick_program_event(i64 noundef %30, i32 noundef 1) #14
  br label %39

37:                                               ; preds = %14
  %38 = tail call fastcc i64 @hrtimer_update_next_event(ptr noundef %6)
  br label %39

39:                                               ; preds = %37, %35, %29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !16
  %40 = load i16, ptr %6, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !19
  br label %42

42:                                               ; preds = %39, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_lock() local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @smp_call_function_many(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @timerfd_clock_was_set() local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clock_was_set_delayed() local_unnamed_addr #6 {
  %1 = load ptr, ptr @system_wq, align 4
  %2 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %1, ptr noundef nonnull @hrtimer_work) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hrtimers_resume_local() local_unnamed_addr #6 {
  tail call void @retrigger_next_event(ptr noundef null)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @hrtimer_forward(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) #6 {
  %4 = getelementptr inbounds %struct.timerqueue_node, ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 8
  %6 = sub i64 %1, %5
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %51, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.hrtimer, ptr %0, i32 0, i32 4
  %10 = load i8, ptr %9, align 8
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13, !prof !9

13:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1047, i32 noundef 9, ptr noundef null) #14
  br label %51

14:                                               ; preds = %8
  %15 = load i32, ptr @hrtimer_resolution, align 4
  %16 = zext i32 %15 to i64
  %17 = tail call i64 @llvm.smax.i64(i64 %16, i64 %2)
  %18 = icmp ult i64 %6, %17
  br i1 %18, label %19, label %22, !prof !9

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.hrtimer, ptr %0, i32 0, i32 1
  %21 = load i64, ptr %20, align 8
  br label %32

22:                                               ; preds = %14
  %23 = tail call fastcc i64 @ktime_divns(i64 noundef %6, i64 noundef %17)
  %24 = mul i64 %23, %17
  %25 = load i64, ptr %4, align 8
  %26 = add i64 %25, %24
  store i64 %26, ptr %4, align 8
  %27 = getelementptr inbounds %struct.hrtimer, ptr %0, i32 0, i32 1
  %28 = load i64, ptr %27, align 8
  %29 = add i64 %28, %24
  store i64 %29, ptr %27, align 8
  %30 = icmp sgt i64 %26, %1
  %31 = add i64 %23, 1
  br i1 %30, label %51, label %32

32:                                               ; preds = %22, %19
  %33 = phi i64 [ %29, %22 ], [ %21, %19 ]
  %34 = phi i64 [ %26, %22 ], [ %5, %19 ]
  %35 = phi i64 [ %31, %22 ], [ 1, %19 ]
  %36 = add i64 %34, %17
  %37 = icmp slt i64 %36, 0
  %38 = icmp slt i64 %36, %34
  %39 = or i1 %37, %38
  %40 = icmp slt i64 %36, %17
  %41 = or i1 %40, %39
  %42 = select i1 %41, i64 9223372036854775807, i64 %36
  store i64 %42, ptr %4, align 8
  %43 = getelementptr inbounds %struct.hrtimer, ptr %0, i32 0, i32 1
  %44 = add i64 %33, %17
  %45 = icmp slt i64 %44, 0
  %46 = icmp slt i64 %44, %33
  %47 = or i1 %45, %46
  %48 = icmp slt i64 %44, %17
  %49 = or i1 %48, %47
  %50 = select i1 %49, i64 9223372036854775807, i64 %44
  store i64 %50, ptr %43, align 8
  br label %51

51:                                               ; preds = %32, %22, %13, %3
  %52 = phi i64 [ 0, %13 ], [ %35, %32 ], [ %23, %22 ], [ 0, %3 ]
  ret i64 %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i64 @ktime_divns(i64 noundef %0, i64 noundef %1) unnamed_addr #1 {
  %3 = icmp slt i64 %1, 0
  br i1 %3, label %4, label %5, !prof !20

4:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/ktime.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 136, 0\0A.popsection", ""() #14, !srcloc !21
  unreachable

5:                                                ; preds = %2
  %6 = icmp ult i64 %1, 4294967296
  %7 = tail call i64 @llvm.abs.i64(i64 %0, i1 false) #14
  %8 = trunc i64 %1 to i32
  br i1 %6, label %17, label %9

9:                                                ; preds = %9, %5
  %10 = phi i64 [ %13, %9 ], [ %1, %5 ]
  %11 = phi i32 [ %12, %9 ], [ 0, %5 ]
  %12 = add i32 %11, 1
  %13 = ashr i64 %10, 1
  %14 = icmp ult i64 %10, 8589934592
  br i1 %14, label %15, label %9

15:                                               ; preds = %9
  %16 = trunc i64 %13 to i32
  br label %17

17:                                               ; preds = %15, %5
  %18 = phi i32 [ 0, %5 ], [ %12, %15 ]
  %19 = phi i32 [ %8, %5 ], [ %16, %15 ]
  %20 = zext i32 %18 to i64
  %21 = lshr i64 %7, %20
  %22 = icmp ult i64 %21, 4294967296
  br i1 %22, label %23, label %27, !prof !9

23:                                               ; preds = %17
  %24 = trunc i64 %21 to i32
  %25 = udiv i32 %24, %19
  %26 = zext i32 %25 to i64
  br label %30

27:                                               ; preds = %17
  %28 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %19, i64 %21) #15, !srcloc !10
  %29 = extractvalue { i64, i64 } %28, 1
  br label %30

30:                                               ; preds = %27, %23
  %31 = phi i64 [ %26, %23 ], [ %29, %27 ]
  %32 = icmp slt i64 %0, 0
  %33 = sub i64 0, %31
  %34 = select i1 %32, i64 %33, i64 %31
  ret i64 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hrtimer_start_range_ns(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #6 {
  %5 = lshr i32 %3, 2
  %6 = and i32 %5, 1
  %7 = getelementptr inbounds %struct.hrtimer, ptr %0, i32 0, i32 6
  %8 = load i8, ptr %7, align 2
  %9 = icmp eq i8 %8, 0
  %10 = zext i1 %9 to i32
  %11 = xor i32 %6, %10
  %12 = icmp ne i32 %11, 1
  %13 = load i1, ptr @hrtimer_start_range_ns.__already_done, align 1
  %14 = xor i1 %13, true
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %17, !prof !20

16:                                               ; preds = %4
  store i1 true, ptr @hrtimer_start_range_ns.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1292, i32 noundef 9, ptr noundef null) #14
  br label %17

17:                                               ; preds = %16, %4
  %18 = getelementptr inbounds %struct.hrtimer, ptr %0, i32 0, i32 3
  br label %19

19:                                               ; preds = %29, %17
  %20 = load volatile ptr, ptr %18, align 4
  %21 = icmp eq ptr %20, getelementptr inbounds (%struct.hrtimer_cpu_base, ptr @migration_cpu_base, i32 0, i32 13)
  br i1 %21, label %29, label %22, !prof !20

22:                                               ; preds = %19
  %23 = load ptr, ptr %20, align 8
  %24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %23) #14
  %25 = load ptr, ptr %18, align 4
  %26 = icmp eq ptr %20, %25
  %27 = load ptr, ptr %20, align 8
  br i1 %26, label %30, label %28, !prof !9

28:                                               ; preds = %22
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %27, i32 noundef %24) #14
  br label %29

29:                                               ; preds = %28, %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !22
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !23
  br label %19

30:                                               ; preds = %22
  %31 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %32 = inttoptr i32 %31 to ptr
  %33 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %32) #11, !srcloc !11
  %34 = add i32 %33, ptrtoint (ptr @hrtimer_bases to i32)
  %35 = inttoptr i32 %34 to ptr
  %36 = icmp eq ptr %27, %35
  %37 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %27, i32 0, i32 10
  %38 = load ptr, ptr %37, align 8
  %39 = icmp eq ptr %38, %0
  %40 = and i1 %39, %36
  %41 = tail call fastcc i32 @remove_hrtimer(ptr noundef %0, ptr noundef %20, i1 noundef zeroext true, i1 noundef zeroext %40) #14
  %42 = and i32 %3, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %30
  %45 = getelementptr inbounds %struct.hrtimer_clock_base, ptr %20, i32 0, i32 6
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i64 %46() #14
  %48 = add i64 %47, %1
  %49 = icmp slt i64 %48, 0
  %50 = icmp slt i64 %48, %1
  %51 = or i1 %49, %50
  %52 = icmp slt i64 %48, %47
  %53 = or i1 %52, %51
  %54 = select i1 %53, i64 9223372036854775807, i64 %48
  br label %55

55:                                               ; preds = %44, %30
  %56 = phi i64 [ %54, %44 ], [ %1, %30 ]
  %57 = getelementptr inbounds %struct.hrtimer, ptr %0, i32 0, i32 1
  store i64 %56, ptr %57, align 8
  %58 = add i64 %56, %2
  %59 = icmp slt i64 %58, 0
  %60 = icmp slt i64 %58, %56
  %61 = or i1 %59, %60
  %62 = icmp slt i64 %58, %2
  %63 = or i1 %62, %61
  %64 = select i1 %63, i64 9223372036854775807, i64 %58
  %65 = getelementptr inbounds %struct.timerqueue_node, ptr %0, i32 0, i32 1
  store i64 %64, ptr %65, align 8
  br i1 %40, label %128, label %66

66:                                               ; preds = %55
  %67 = and i32 %3, 2
  %68 = getelementptr inbounds %struct.hrtimer_clock_base, ptr %20, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %71 = inttoptr i32 %70 to ptr
  %72 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %71) #11, !srcloc !11
  %73 = add i32 %72, ptrtoint (ptr @hrtimer_bases to i32)
  %74 = inttoptr i32 %73 to ptr
  %75 = load volatile i32, ptr @timers_migration_enabled, align 4
  %76 = icmp slt i32 %75, 1
  %77 = icmp ne i32 %67, 0
  %78 = or i1 %77, %76
  br i1 %78, label %85, label %79, !prof !24

79:                                               ; preds = %66
  %80 = tail call i32 @get_nohz_timer_target() #14
  %81 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %80
  %82 = load i32, ptr %81, align 4
  %83 = add i32 %82, ptrtoint (ptr @hrtimer_bases to i32)
  %84 = inttoptr i32 %83 to ptr
  br label %85

85:                                               ; preds = %79, %66
  %86 = phi ptr [ %74, %66 ], [ %84, %79 ]
  br label %87

87:                                               ; preds = %127, %85
  %88 = phi ptr [ %86, %85 ], [ %74, %127 ]
  %89 = getelementptr %struct.hrtimer_cpu_base, ptr %88, i32 0, i32 13, i32 %69
  %90 = icmp eq ptr %89, %20
  br i1 %90, label %116, label %91

91:                                               ; preds = %87
  %92 = load ptr, ptr %18, align 4
  %93 = getelementptr inbounds %struct.hrtimer_clock_base, ptr %92, i32 0, i32 4
  %94 = load ptr, ptr %93, align 8
  %95 = icmp eq ptr %94, %0
  br i1 %95, label %128, label %96, !prof !20

96:                                               ; preds = %91
  store volatile ptr getelementptr inbounds (%struct.hrtimer_cpu_base, ptr @migration_cpu_base, i32 0, i32 13), ptr %18, align 4
  %97 = load ptr, ptr %20, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !16
  %98 = load i16, ptr %97, align 4
  %99 = add i16 %98, 1
  store i16 %99, ptr %97, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !19
  %100 = load ptr, ptr %89, align 8
  tail call void @_raw_spin_lock(ptr noundef %100) #14
  %101 = icmp eq ptr %88, %74
  br i1 %101, label %115, label %102

102:                                              ; preds = %96
  %103 = load i64, ptr %65, align 8
  %104 = getelementptr %struct.hrtimer_cpu_base, ptr %88, i32 0, i32 13, i32 %69, i32 7
  %105 = load i64, ptr %104, align 8
  %106 = sub i64 %103, %105
  %107 = load ptr, ptr %89, align 8
  %108 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %107, i32 0, i32 9
  %109 = load i64, ptr %108, align 32
  %110 = icmp slt i64 %106, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %102
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !16
  %112 = load i16, ptr %107, align 4
  %113 = add i16 %112, 1
  store i16 %113, ptr %107, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !19
  %114 = load ptr, ptr %20, align 8
  tail call void @_raw_spin_lock(ptr noundef %114) #14
  store volatile ptr %20, ptr %18, align 4
  br label %127

115:                                              ; preds = %102, %96
  store volatile ptr %89, ptr %18, align 4
  br label %128

116:                                              ; preds = %87
  %117 = icmp eq ptr %88, %74
  br i1 %117, label %128, label %118

118:                                              ; preds = %116
  %119 = load i64, ptr %65, align 8
  %120 = getelementptr %struct.hrtimer_cpu_base, ptr %88, i32 0, i32 13, i32 %69, i32 7
  %121 = load i64, ptr %120, align 8
  %122 = sub i64 %119, %121
  %123 = load ptr, ptr %20, align 8
  %124 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %123, i32 0, i32 9
  %125 = load i64, ptr %124, align 32
  %126 = icmp slt i64 %122, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %118, %111
  br label %87

128:                                              ; preds = %118, %116, %115, %91, %55
  %129 = phi ptr [ %20, %55 ], [ %89, %115 ], [ %20, %91 ], [ %20, %116 ], [ %20, %118 ]
  %130 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hrtimer_start, i32 0, i32 1), align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %145

132:                                              ; preds = %128
  %133 = tail call ptr @llvm.thread.pointer() #14
  %134 = getelementptr inbounds %struct.thread_info, ptr %133, i32 0, i32 2
  %135 = load i32, ptr %134, align 8
  %136 = lshr i32 %135, 5
  %137 = getelementptr i32, ptr @__cpu_online_mask, i32 %136
  %138 = load volatile i32, ptr %137, align 4
  %139 = and i32 %135, 31
  %140 = shl nuw i32 1, %139
  %141 = and i32 %140, %138
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %132
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !25
  %144 = tail call i32 @__traceiter_hrtimer_start(ptr noundef null, ptr noundef %0, i32 noundef %3) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !26
  br label %145

145:                                              ; preds = %143, %132, %128
  %146 = getelementptr inbounds %struct.hrtimer_clock_base, ptr %129, i32 0, i32 1
  %147 = load i32, ptr %146, align 4
  %148 = shl nuw i32 1, %147
  %149 = load ptr, ptr %129, align 8
  %150 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %149, i32 0, i32 2
  %151 = load i32, ptr %150, align 8
  %152 = or i32 %151, %148
  store i32 %152, ptr %150, align 8
  %153 = getelementptr inbounds %struct.hrtimer, ptr %0, i32 0, i32 4
  store volatile i8 1, ptr %153, align 8
  %154 = getelementptr inbounds %struct.hrtimer_clock_base, ptr %129, i32 0, i32 5
  %155 = tail call zeroext i1 @timerqueue_add(ptr noundef %154, ptr noundef %0) #14
  br i1 %40, label %156, label %169

156:                                              ; preds = %145
  %157 = load ptr, ptr %129, align 8
  %158 = tail call fastcc i64 @hrtimer_update_next_event(ptr noundef %157) #14
  %159 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %157, i32 0, i32 9
  %160 = load i64, ptr %159, align 32
  %161 = icmp eq i64 %158, %160
  br i1 %161, label %171, label %162

162:                                              ; preds = %156
  store i64 %158, ptr %159, align 32
  %163 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %157, i32 0, i32 4
  %164 = load i8, ptr %163, align 16
  %165 = and i8 %164, 5
  %166 = icmp eq i8 %165, 1
  br i1 %166, label %167, label %171

167:                                              ; preds = %162
  %168 = tail call i32 @tick_program_event(i64 noundef %158, i32 noundef 1) #14
  br label %171

169:                                              ; preds = %145
  br i1 %155, label %170, label %171

170:                                              ; preds = %169
  tail call fastcc void @hrtimer_reprogram(ptr noundef %0, i1 noundef zeroext true)
  br label %171

171:                                              ; preds = %170, %169, %167, %162, %156
  %172 = load ptr, ptr %18, align 4
  %173 = load ptr, ptr %172, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %173, i32 noundef %24) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @hrtimer_reprogram(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #6 {
  %3 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %4 = inttoptr i32 %3 to ptr
  %5 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %4) #11, !srcloc !11
  %6 = add i32 %5, ptrtoint (ptr @hrtimer_bases to i32)
  %7 = inttoptr i32 %6 to ptr
  %8 = getelementptr inbounds %struct.hrtimer, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.timerqueue_node, ptr %0, i32 0, i32 1
  %11 = load i64, ptr %10, align 8
  %12 = getelementptr inbounds %struct.hrtimer_clock_base, ptr %9, i32 0, i32 7
  %13 = load i64, ptr %12, align 8
  %14 = sub i64 %11, %13
  %15 = icmp slt i64 %11, 0
  %16 = load i1, ptr @hrtimer_reprogram.__already_done, align 1
  %17 = xor i1 %16, true
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %20, !prof !20

19:                                               ; preds = %2
  store i1 true, ptr @hrtimer_reprogram.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 814, i32 noundef 9, ptr noundef null) #14
  br label %20

20:                                               ; preds = %19, %2
  %21 = tail call i64 @llvm.smax.i64(i64 %14, i64 0)
  %22 = getelementptr inbounds %struct.hrtimer, ptr %0, i32 0, i32 6
  %23 = load i8, ptr %22, align 2
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %41, label %25

25:                                               ; preds = %20
  %26 = load ptr, ptr %9, align 8
  %27 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %26, i32 0, i32 4
  %28 = load i8, ptr %27, align 16
  %29 = and i8 %28, 8
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %59

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %26, i32 0, i32 11
  %33 = load i64, ptr %32, align 16
  %34 = icmp slt i64 %21, %33
  br i1 %34, label %35, label %59

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %26, i32 0, i32 12
  store ptr %0, ptr %36, align 8
  store i64 %21, ptr %32, align 16
  %37 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %26, i32 0, i32 9
  %38 = load i64, ptr %37, align 32
  %39 = icmp slt i64 %21, %38
  %40 = and i1 %39, %1
  br i1 %40, label %41, label %59

41:                                               ; preds = %35, %20
  %42 = load ptr, ptr %9, align 8
  %43 = icmp eq ptr %42, %7
  br i1 %43, label %44, label %59

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %7, i32 0, i32 9
  %46 = load i64, ptr %45, align 32
  %47 = icmp slt i64 %21, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %7, i32 0, i32 4
  %50 = load i8, ptr %49, align 16
  %51 = and i8 %50, 2
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %7, i32 0, i32 10
  store ptr %0, ptr %54, align 8
  store i64 %21, ptr %45, align 32
  %55 = and i8 %50, 5
  %56 = icmp eq i8 %55, 1
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = tail call i32 @tick_program_event(i64 noundef %21, i32 noundef 1) #14
  br label %59

59:                                               ; preds = %57, %53, %48, %44, %41, %35, %31, %25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hrtimer_try_to_cancel(ptr noundef %0) #6 {
  %2 = getelementptr inbounds %struct.hrtimer, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.hrtimer, ptr %0, i32 0, i32 4
  br label %4

4:                                                ; preds = %29, %1
  %5 = load volatile ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.hrtimer_clock_base, ptr %5, i32 0, i32 3
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %10, %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !27
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !28
  %11 = load volatile i32, ptr %6, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %10

14:                                               ; preds = %10, %4
  %15 = phi i32 [ %7, %4 ], [ %11, %10 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !29
  %16 = load i8, ptr %3, align 8
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %19, %14
  br label %30

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.hrtimer_clock_base, ptr %5, i32 0, i32 4
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, %0
  br i1 %22, label %18, label %23

23:                                               ; preds = %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !30
  %24 = load volatile i32, ptr %6, align 4
  %25 = icmp eq i32 %24, %15
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load volatile ptr, ptr %2, align 4
  %28 = icmp eq ptr %5, %27
  br i1 %28, label %52, label %29

29:                                               ; preds = %26, %23
  br label %4

30:                                               ; preds = %40, %18
  %31 = load volatile ptr, ptr %2, align 4
  %32 = icmp eq ptr %31, getelementptr inbounds (%struct.hrtimer_cpu_base, ptr @migration_cpu_base, i32 0, i32 13)
  br i1 %32, label %40, label %33, !prof !20

33:                                               ; preds = %30
  %34 = load ptr, ptr %31, align 8
  %35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %34) #14
  %36 = load ptr, ptr %2, align 4
  %37 = icmp eq ptr %31, %36
  br i1 %37, label %41, label %38, !prof !9

38:                                               ; preds = %33
  %39 = load ptr, ptr %31, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %39, i32 noundef %35) #14
  br label %40

40:                                               ; preds = %38, %30
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !22
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !23
  br label %30

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.hrtimer_clock_base, ptr %31, i32 0, i32 4
  %43 = load ptr, ptr %42, align 8
  %44 = icmp eq ptr %43, %0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = tail call fastcc i32 @remove_hrtimer(ptr noundef %0, ptr noundef %31, i1 noundef zeroext false, i1 noundef zeroext false)
  %47 = load ptr, ptr %2, align 4
  br label %48

48:                                               ; preds = %45, %41
  %49 = phi ptr [ %31, %41 ], [ %47, %45 ]
  %50 = phi i32 [ -1, %41 ], [ %46, %45 ]
  %51 = load ptr, ptr %49, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %51, i32 noundef %35) #14
  br label %52

52:                                               ; preds = %48, %26
  %53 = phi i32 [ %50, %48 ], [ 0, %26 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @hrtimer_active(ptr noundef %0) #6 {
  %2 = getelementptr inbounds %struct.hrtimer, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.hrtimer, ptr %0, i32 0, i32 4
  br label %4

4:                                                ; preds = %28, %1
  %5 = load volatile ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.hrtimer_clock_base, ptr %5, i32 0, i32 3
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %10, %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !27
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !28
  %11 = load volatile i32, ptr %6, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %10

14:                                               ; preds = %10, %4
  %15 = phi i32 [ %7, %4 ], [ %11, %10 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !29
  %16 = load i8, ptr %3, align 8
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.hrtimer_clock_base, ptr %5, i32 0, i32 4
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, %0
  br i1 %21, label %29, label %22

22:                                               ; preds = %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !30
  %23 = load volatile i32, ptr %6, align 4
  %24 = icmp eq i32 %23, %15
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load volatile ptr, ptr %2, align 4
  %27 = icmp eq ptr %5, %26
  br i1 %27, label %29, label %28

28:                                               ; preds = %25, %22
  br label %4

29:                                               ; preds = %25, %18, %14
  %30 = phi i1 [ true, %18 ], [ true, %14 ], [ false, %25 ]
  ret i1 %30
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @remove_hrtimer(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.hrtimer, ptr %0, i32 0, i32 4
  %6 = load i8, ptr %5, align 8
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %70, label %9

9:                                                ; preds = %4
  %10 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hrtimer_cancel, i32 0, i32 1), align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = tail call ptr @llvm.thread.pointer() #14
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = lshr i32 %15, 5
  %17 = getelementptr i32, ptr @__cpu_online_mask, i32 %16
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %15, 31
  %20 = shl nuw i32 1, %19
  %21 = and i32 %20, %18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %12
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !31
  %24 = tail call i32 @__traceiter_hrtimer_cancel(ptr noundef null, ptr noundef %0) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !32
  br label %25

25:                                               ; preds = %23, %12, %9
  %26 = load ptr, ptr %1, align 8
  %27 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %28 = inttoptr i32 %27 to ptr
  %29 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %28) #11, !srcloc !11
  %30 = add i32 %29, ptrtoint (ptr @hrtimer_bases to i32)
  %31 = inttoptr i32 %30 to ptr
  %32 = icmp eq ptr %26, %31
  br i1 %2, label %33, label %36

33:                                               ; preds = %25
  %34 = xor i1 %3, true
  %35 = and i1 %32, %34
  br label %36

36:                                               ; preds = %33, %25
  %37 = phi i1 [ %35, %33 ], [ %32, %25 ]
  %38 = phi i8 [ %6, %33 ], [ 0, %25 ]
  %39 = load i8, ptr %5, align 8
  store volatile i8 %38, ptr %5, align 8
  %40 = and i8 %39, 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %70, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.hrtimer_clock_base, ptr %1, i32 0, i32 5
  %44 = tail call zeroext i1 @timerqueue_del(ptr noundef %43, ptr noundef %0) #14
  br i1 %44, label %53, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.hrtimer_clock_base, ptr %1, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = shl nuw i32 1, %47
  %49 = xor i32 %48, -1
  %50 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %26, i32 0, i32 2
  %51 = load i32, ptr %50, align 8
  %52 = and i32 %51, %49
  store i32 %52, ptr %50, align 8
  br label %53

53:                                               ; preds = %45, %42
  br i1 %37, label %54, label %70

54:                                               ; preds = %53
  %55 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %26, i32 0, i32 10
  %56 = load ptr, ptr %55, align 8
  %57 = icmp eq ptr %56, %0
  br i1 %57, label %58, label %70

58:                                               ; preds = %54
  %59 = tail call fastcc i64 @hrtimer_update_next_event(ptr noundef %26) #14
  %60 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %26, i32 0, i32 9
  %61 = load i64, ptr %60, align 32
  %62 = icmp eq i64 %59, %61
  br i1 %62, label %70, label %63

63:                                               ; preds = %58
  store i64 %59, ptr %60, align 32
  %64 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %26, i32 0, i32 4
  %65 = load i8, ptr %64, align 16
  %66 = and i8 %65, 5
  %67 = icmp eq i8 %66, 1
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = tail call i32 @tick_program_event(i64 noundef %59, i32 noundef 1) #14
  br label %70

70:                                               ; preds = %68, %63, %58, %54, %53, %36, %4
  %71 = phi i32 [ 0, %4 ], [ 1, %36 ], [ 1, %53 ], [ 1, %54 ], [ 1, %58 ], [ 1, %63 ], [ 1, %68 ]
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hrtimer_cancel(ptr noundef %0) #6 {
  %2 = tail call i32 @hrtimer_try_to_cancel(ptr noundef %0)
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %4, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !33
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !34
  %5 = tail call i32 @hrtimer_try_to_cancel(ptr noundef %0)
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %4, label %7

7:                                                ; preds = %4, %1
  %8 = phi i32 [ %2, %1 ], [ %5, %4 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @__hrtimer_get_remaining(ptr noundef %0, i1 zeroext %1) #6 {
  %3 = getelementptr inbounds %struct.hrtimer, ptr %0, i32 0, i32 3
  br label %4

4:                                                ; preds = %14, %2
  %5 = load volatile ptr, ptr %3, align 4
  %6 = icmp eq ptr %5, getelementptr inbounds (%struct.hrtimer_cpu_base, ptr @migration_cpu_base, i32 0, i32 13)
  br i1 %6, label %14, label %7, !prof !20

7:                                                ; preds = %4
  %8 = load ptr, ptr %5, align 8
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #14
  %10 = load ptr, ptr %3, align 4
  %11 = icmp eq ptr %5, %10
  br i1 %11, label %15, label %12, !prof !9

12:                                               ; preds = %7
  %13 = load ptr, ptr %5, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %9) #14
  br label %14

14:                                               ; preds = %12, %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !22
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !23
  br label %4

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.timerqueue_node, ptr %0, i32 0, i32 1
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds %struct.hrtimer_clock_base, ptr %5, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i64 %19() #14
  %21 = sub i64 %17, %20
  %22 = load ptr, ptr %3, align 4
  %23 = load ptr, ptr %22, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %23, i32 noundef %9) #14
  ret i64 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @hrtimer_get_next_event() local_unnamed_addr #6 {
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %2 = inttoptr i32 %1 to ptr
  %3 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %2) #11, !srcloc !11
  %4 = add i32 %3, ptrtoint (ptr @hrtimer_bases to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #14
  %7 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %5, i32 0, i32 4
  %8 = load i8, ptr %7, align 16
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = tail call fastcc i64 @__hrtimer_get_next_event(ptr noundef %5, i32 noundef 255)
  br label %13

13:                                               ; preds = %11, %0
  %14 = phi i64 [ 9223372036854775807, %0 ], [ %12, %11 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #14
  ret i64 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i64 @__hrtimer_get_next_event(ptr noundef %0, i32 noundef %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %0, i32 0, i32 4
  %4 = load i8, ptr %3, align 16
  %5 = and i8 %4, 8
  %6 = icmp ne i8 %5, 0
  %7 = and i32 %1, 240
  %8 = icmp eq i32 %7, 0
  %9 = or i1 %8, %6
  br i1 %9, label %58, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %0, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 240
  %14 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %0, i32 0, i32 12
  store ptr null, ptr %14, align 8
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %54, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %0, i32 0, i32 10
  br label %18

18:                                               ; preds = %48, %16
  %19 = phi i64 [ 9223372036854775807, %16 ], [ %49, %48 ]
  %20 = phi i32 [ %13, %16 ], [ %24, %48 ]
  %21 = tail call i32 @llvm.cttz.i32(i32 %20, i1 true) #14, !range !13
  %22 = shl nuw i32 1, %21
  %23 = xor i32 %22, -1
  %24 = and i32 %20, %23
  %25 = getelementptr %struct.hrtimer_cpu_base, ptr %0, i32 0, i32 13, i32 %21
  %26 = icmp eq ptr %25, null
  br i1 %26, label %51, label %27

27:                                               ; preds = %18
  %28 = getelementptr %struct.hrtimer_cpu_base, ptr %0, i32 0, i32 13, i32 %21, i32 5, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = tail call ptr @timerqueue_iterate_next(ptr noundef null) #14
  %33 = icmp eq ptr %32, null
  br i1 %33, label %48, label %34

34:                                               ; preds = %31, %27
  %35 = phi ptr [ %29, %27 ], [ %32, %31 ]
  %36 = getelementptr inbounds %struct.timerqueue_node, ptr %35, i32 0, i32 1
  %37 = load i64, ptr %36, align 8
  %38 = getelementptr %struct.hrtimer_cpu_base, ptr %0, i32 0, i32 13, i32 %21, i32 7
  %39 = load i64, ptr %38, align 8
  %40 = sub i64 %37, %39
  %41 = icmp slt i64 %40, %19
  %42 = tail call i64 @llvm.smin.i64(i64 %40, i64 %19) #14
  br i1 %41, label %43, label %48

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.hrtimer, ptr %35, i32 0, i32 6
  %45 = load i8, ptr %44, align 2
  %46 = icmp eq i8 %45, 0
  %47 = select i1 %46, ptr %17, ptr %14
  store ptr %35, ptr %47, align 8
  br label %48

48:                                               ; preds = %43, %34, %31
  %49 = phi i64 [ %19, %31 ], [ %42, %34 ], [ %40, %43 ]
  %50 = icmp eq i32 %24, 0
  br i1 %50, label %51, label %18

51:                                               ; preds = %48, %18
  %52 = phi i64 [ %49, %48 ], [ %19, %18 ]
  %53 = load ptr, ptr %14, align 8
  br label %54

54:                                               ; preds = %51, %10
  %55 = phi ptr [ null, %10 ], [ %53, %51 ]
  %56 = phi i64 [ 9223372036854775807, %10 ], [ %52, %51 ]
  %57 = tail call i64 @llvm.smax.i64(i64 %56, i64 0) #14
  br label %58

58:                                               ; preds = %54, %2
  %59 = phi ptr [ null, %2 ], [ %55, %54 ]
  %60 = phi i64 [ 9223372036854775807, %2 ], [ %57, %54 ]
  %61 = and i32 %1, 15
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %107, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %0, i32 0, i32 2
  %65 = load i32, ptr %64, align 8
  %66 = and i32 %65, 15
  %67 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %0, i32 0, i32 10
  store ptr %59, ptr %67, align 8
  %68 = icmp eq i32 %66, 0
  br i1 %68, label %104, label %69

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %0, i32 0, i32 12
  br label %71

71:                                               ; preds = %101, %69
  %72 = phi i64 [ %60, %69 ], [ %102, %101 ]
  %73 = phi i32 [ %66, %69 ], [ %77, %101 ]
  %74 = tail call i32 @llvm.cttz.i32(i32 %73, i1 true) #14, !range !13
  %75 = shl nuw i32 1, %74
  %76 = xor i32 %75, -1
  %77 = and i32 %73, %76
  %78 = getelementptr %struct.hrtimer_cpu_base, ptr %0, i32 0, i32 13, i32 %74
  %79 = icmp eq ptr %78, null
  br i1 %79, label %104, label %80

80:                                               ; preds = %71
  %81 = getelementptr %struct.hrtimer_cpu_base, ptr %0, i32 0, i32 13, i32 %74, i32 5, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = tail call ptr @timerqueue_iterate_next(ptr noundef null) #14
  %86 = icmp eq ptr %85, null
  br i1 %86, label %101, label %87

87:                                               ; preds = %84, %80
  %88 = phi ptr [ %82, %80 ], [ %85, %84 ]
  %89 = getelementptr inbounds %struct.timerqueue_node, ptr %88, i32 0, i32 1
  %90 = load i64, ptr %89, align 8
  %91 = getelementptr %struct.hrtimer_cpu_base, ptr %0, i32 0, i32 13, i32 %74, i32 7
  %92 = load i64, ptr %91, align 8
  %93 = sub i64 %90, %92
  %94 = icmp slt i64 %93, %72
  %95 = tail call i64 @llvm.smin.i64(i64 %93, i64 %72) #14
  br i1 %94, label %96, label %101

96:                                               ; preds = %87
  %97 = getelementptr inbounds %struct.hrtimer, ptr %88, i32 0, i32 6
  %98 = load i8, ptr %97, align 2
  %99 = icmp eq i8 %98, 0
  %100 = select i1 %99, ptr %67, ptr %70
  store ptr %88, ptr %100, align 8
  br label %101

101:                                              ; preds = %96, %87, %84
  %102 = phi i64 [ %72, %84 ], [ %95, %87 ], [ %93, %96 ]
  %103 = icmp eq i32 %77, 0
  br i1 %103, label %104, label %71

104:                                              ; preds = %101, %71, %63
  %105 = phi i64 [ %60, %63 ], [ %72, %71 ], [ %102, %101 ]
  %106 = tail call i64 @llvm.smax.i64(i64 %105, i64 0) #14
  br label %107

107:                                              ; preds = %104, %58
  %108 = phi i64 [ %106, %104 ], [ %60, %58 ]
  ret i64 %108
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @hrtimer_next_event_without(ptr noundef %0) local_unnamed_addr #6 {
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #11, !srcloc !11
  %5 = add i32 %4, ptrtoint (ptr @hrtimer_bases to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #14
  %8 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 4
  %9 = load i8, ptr %8, align 16
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %108, label %12

12:                                               ; preds = %1
  %13 = and i8 %9, 8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %61

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 240
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %58, label %20

20:                                               ; preds = %15
  %21 = icmp ne ptr %0, null
  %22 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 12
  %23 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 10
  br label %24

24:                                               ; preds = %55, %20
  %25 = phi i64 [ 9223372036854775807, %20 ], [ %56, %55 ]
  %26 = phi i32 [ %18, %20 ], [ %30, %55 ]
  %27 = tail call i32 @llvm.cttz.i32(i32 %26, i1 true) #14, !range !13
  %28 = shl nuw i32 1, %27
  %29 = xor i32 %28, -1
  %30 = and i32 %26, %29
  %31 = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 %27
  %32 = icmp eq ptr %31, null
  br i1 %32, label %58, label %33

33:                                               ; preds = %24
  %34 = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 %27, i32 5, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, %0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = tail call ptr @timerqueue_iterate_next(ptr noundef %0) #14
  %39 = icmp eq ptr %38, null
  br i1 %39, label %55, label %40

40:                                               ; preds = %37, %33
  %41 = phi ptr [ %35, %33 ], [ %38, %37 ]
  %42 = getelementptr inbounds %struct.timerqueue_node, ptr %41, i32 0, i32 1
  %43 = load i64, ptr %42, align 8
  %44 = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 %27, i32 7
  %45 = load i64, ptr %44, align 8
  %46 = sub i64 %43, %45
  %47 = icmp sge i64 %46, %25
  %48 = or i1 %21, %47
  %49 = tail call i64 @llvm.smin.i64(i64 %46, i64 %25) #14
  br i1 %48, label %55, label %50

50:                                               ; preds = %40
  %51 = getelementptr inbounds %struct.hrtimer, ptr %41, i32 0, i32 6
  %52 = load i8, ptr %51, align 2
  %53 = icmp eq i8 %52, 0
  %54 = select i1 %53, ptr %23, ptr %22
  store ptr %41, ptr %54, align 8
  br label %55

55:                                               ; preds = %50, %40, %37
  %56 = phi i64 [ %25, %37 ], [ %49, %40 ], [ %46, %50 ]
  %57 = icmp eq i32 %30, 0
  br i1 %57, label %58, label %24

58:                                               ; preds = %55, %24, %15
  %59 = phi i64 [ 9223372036854775807, %15 ], [ %25, %24 ], [ %56, %55 ]
  %60 = tail call i64 @llvm.smax.i64(i64 %59, i64 0) #14
  br label %61

61:                                               ; preds = %58, %12
  %62 = phi i64 [ 9223372036854775807, %12 ], [ %60, %58 ]
  %63 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 2
  %64 = load i32, ptr %63, align 8
  %65 = and i32 %64, 15
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %105, label %67

67:                                               ; preds = %61
  %68 = icmp ne ptr %0, null
  %69 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 12
  %70 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 10
  br label %71

71:                                               ; preds = %102, %67
  %72 = phi i64 [ %62, %67 ], [ %103, %102 ]
  %73 = phi i32 [ %65, %67 ], [ %77, %102 ]
  %74 = tail call i32 @llvm.cttz.i32(i32 %73, i1 true) #14, !range !13
  %75 = shl nuw i32 1, %74
  %76 = xor i32 %75, -1
  %77 = and i32 %73, %76
  %78 = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 %74
  %79 = icmp eq ptr %78, null
  br i1 %79, label %105, label %80

80:                                               ; preds = %71
  %81 = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 %74, i32 5, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, %0
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = tail call ptr @timerqueue_iterate_next(ptr noundef %0) #14
  %86 = icmp eq ptr %85, null
  br i1 %86, label %102, label %87

87:                                               ; preds = %84, %80
  %88 = phi ptr [ %82, %80 ], [ %85, %84 ]
  %89 = getelementptr inbounds %struct.timerqueue_node, ptr %88, i32 0, i32 1
  %90 = load i64, ptr %89, align 8
  %91 = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 %74, i32 7
  %92 = load i64, ptr %91, align 8
  %93 = sub i64 %90, %92
  %94 = icmp sge i64 %93, %72
  %95 = or i1 %68, %94
  %96 = tail call i64 @llvm.smin.i64(i64 %93, i64 %72) #14
  br i1 %95, label %102, label %97

97:                                               ; preds = %87
  %98 = getelementptr inbounds %struct.hrtimer, ptr %88, i32 0, i32 6
  %99 = load i8, ptr %98, align 2
  %100 = icmp eq i8 %99, 0
  %101 = select i1 %100, ptr %70, ptr %69
  store ptr %88, ptr %101, align 8
  br label %102

102:                                              ; preds = %97, %87, %84
  %103 = phi i64 [ %72, %84 ], [ %96, %87 ], [ %93, %97 ]
  %104 = icmp eq i32 %77, 0
  br i1 %104, label %105, label %71

105:                                              ; preds = %102, %71, %61
  %106 = phi i64 [ %62, %61 ], [ %72, %71 ], [ %103, %102 ]
  %107 = tail call i64 @llvm.smax.i64(i64 %106, i64 0) #14
  br label %108

108:                                              ; preds = %105, %1
  %109 = phi i64 [ %107, %105 ], [ 9223372036854775807, %1 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #14
  ret i64 %109
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hrtimer_init(ptr noundef %0, i32 noundef %1, i32 noundef %2) #6 {
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hrtimer_init, i32 0, i32 1), align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = tail call ptr @llvm.thread.pointer() #14
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = lshr i32 %9, 5
  %11 = getelementptr i32, ptr @__cpu_online_mask, i32 %10
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %9, 31
  %14 = shl nuw i32 1, %13
  %15 = and i32 %14, %12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !35
  %18 = tail call i32 @__traceiter_hrtimer_init(ptr noundef null, ptr noundef %0, i32 noundef %1, i32 noundef %2) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !36
  br label %19

19:                                               ; preds = %17, %6, %3
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(48) %0, i8 0, i32 48, i1 false) #14
  %20 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %21 = inttoptr i32 %20 to ptr
  %22 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %21) #11, !srcloc !11
  %23 = icmp eq i32 %1, 0
  %24 = and i32 %2, 1
  %25 = select i1 %23, i32 %24, i32 %1
  %26 = icmp slt i32 %25, 16
  br i1 %26, label %27, label %34, !prof !9

27:                                               ; preds = %19
  %28 = getelementptr [16 x i32], ptr @hrtimer_clock_to_base_table, i32 0, i32 %25
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %25, 1073741823
  %31 = lshr i32 63356, %30
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27, %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1537, i32 noundef 9, ptr noundef nonnull @.str.3, i32 noundef %25) #14
  br label %35

35:                                               ; preds = %34, %27
  %36 = phi i32 [ %29, %27 ], [ 0, %34 ]
  %37 = and i32 %2, 4
  %38 = lshr exact i32 %37, 2
  %39 = trunc i32 %38 to i8
  %40 = add i32 %22, ptrtoint (ptr @hrtimer_bases to i32)
  %41 = inttoptr i32 %40 to ptr
  %42 = add i32 %36, %37
  %43 = getelementptr inbounds %struct.hrtimer, ptr %0, i32 0, i32 6
  store i8 %39, ptr %43, align 2
  %44 = trunc i32 %2 to i8
  %45 = lshr i8 %44, 3
  %46 = and i8 %45, 1
  %47 = getelementptr inbounds %struct.hrtimer, ptr %0, i32 0, i32 7
  store i8 %46, ptr %47, align 1
  %48 = getelementptr %struct.hrtimer_cpu_base, ptr %41, i32 0, i32 13, i32 %42
  %49 = getelementptr inbounds %struct.hrtimer, ptr %0, i32 0, i32 3
  store ptr %48, ptr %49, align 4
  %50 = ptrtoint ptr %0 to i32
  store i32 %50, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hrtimer_interrupt(ptr nocapture noundef writeonly %0) local_unnamed_addr #6 {
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #11, !srcloc !11
  %5 = add i32 %4, ptrtoint (ptr @hrtimer_bases to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 4
  %8 = load i8, ptr %7, align 16
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %12, !prof !20

11:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/time/hrtimer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1788, 0\0A.popsection", ""() #14, !srcloc !37
  unreachable

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 3
  store i64 9223372036854775807, ptr %16, align 16
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #14
  %18 = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 1, i32 7
  %19 = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 2, i32 7
  %20 = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 3, i32 7
  %21 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 3
  %22 = tail call i64 @ktime_get_update_offsets_now(ptr noundef %21, ptr noundef %18, ptr noundef %19, ptr noundef %20) #14
  %23 = load i64, ptr %18, align 8
  %24 = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 5, i32 7
  store i64 %23, ptr %24, align 8
  %25 = load i64, ptr %19, align 8
  %26 = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 6, i32 7
  store i64 %25, ptr %26, align 16
  %27 = load i64, ptr %20, align 8
  %28 = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 7, i32 7
  store i64 %27, ptr %28, align 8
  %29 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 9
  %30 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 11
  %31 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 6
  %32 = load i8, ptr %7, align 16
  %33 = or i8 %32, 2
  store i8 %33, ptr %7, align 16
  store i64 9223372036854775807, ptr %29, align 32
  %34 = load i64, ptr %30, align 16
  %35 = icmp slt i64 %22, %34
  br i1 %35, label %38, label %36

36:                                               ; preds = %12
  store i64 9223372036854775807, ptr %30, align 16
  %37 = or i8 %32, 10
  store i8 %37, ptr %7, align 16
  tail call void @raise_softirq_irqoff(i32 noundef 8) #14
  br label %38

38:                                               ; preds = %36, %12
  tail call fastcc void @__hrtimer_run_queues(ptr noundef %6, i64 noundef %22, i32 noundef %17, i32 noundef 15)
  %39 = tail call fastcc i64 @hrtimer_update_next_event(ptr noundef %6)
  store i64 %39, ptr %29, align 32
  %40 = load i8, ptr %7, align 16
  %41 = and i8 %40, -3
  store i8 %41, ptr %7, align 16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %17) #14
  %42 = tail call i32 @tick_program_event(i64 noundef %39, i32 noundef 0) #14
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %81, %61, %38
  %45 = load i8, ptr %7, align 16
  %46 = and i8 %45, -5
  store i8 %46, ptr %7, align 16
  br label %113

47:                                               ; preds = %38
  %48 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #14
  %49 = tail call i64 @ktime_get_update_offsets_now(ptr noundef %21, ptr noundef %18, ptr noundef %19, ptr noundef %20) #14
  %50 = load i64, ptr %18, align 8
  store i64 %50, ptr %24, align 8
  %51 = load i64, ptr %19, align 8
  store i64 %51, ptr %26, align 16
  %52 = load i64, ptr %20, align 8
  store i64 %52, ptr %28, align 8
  %53 = load i16, ptr %31, align 8
  %54 = add i16 %53, 1
  store i16 %54, ptr %31, align 8
  %55 = load i8, ptr %7, align 16
  %56 = or i8 %55, 2
  store i8 %56, ptr %7, align 16
  store i64 9223372036854775807, ptr %29, align 32
  %57 = load i64, ptr %30, align 16
  %58 = icmp slt i64 %49, %57
  br i1 %58, label %61, label %59

59:                                               ; preds = %47
  store i64 9223372036854775807, ptr %30, align 16
  %60 = or i8 %55, 10
  store i8 %60, ptr %7, align 16
  tail call void @raise_softirq_irqoff(i32 noundef 8) #14
  br label %61

61:                                               ; preds = %59, %47
  tail call fastcc void @__hrtimer_run_queues(ptr noundef %6, i64 noundef %49, i32 noundef %48, i32 noundef 15)
  %62 = tail call fastcc i64 @hrtimer_update_next_event(ptr noundef %6)
  store i64 %62, ptr %29, align 32
  %63 = load i8, ptr %7, align 16
  %64 = and i8 %63, -3
  store i8 %64, ptr %7, align 16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %48) #14
  %65 = tail call i32 @tick_program_event(i64 noundef %62, i32 noundef 0) #14
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %44, label %67

67:                                               ; preds = %61
  %68 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #14
  %69 = tail call i64 @ktime_get_update_offsets_now(ptr noundef %21, ptr noundef %18, ptr noundef %19, ptr noundef %20) #14
  %70 = load i64, ptr %18, align 8
  store i64 %70, ptr %24, align 8
  %71 = load i64, ptr %19, align 8
  store i64 %71, ptr %26, align 16
  %72 = load i64, ptr %20, align 8
  store i64 %72, ptr %28, align 8
  %73 = load i16, ptr %31, align 8
  %74 = add i16 %73, 1
  store i16 %74, ptr %31, align 8
  %75 = load i8, ptr %7, align 16
  %76 = or i8 %75, 2
  store i8 %76, ptr %7, align 16
  store i64 9223372036854775807, ptr %29, align 32
  %77 = load i64, ptr %30, align 16
  %78 = icmp slt i64 %69, %77
  br i1 %78, label %81, label %79

79:                                               ; preds = %67
  store i64 9223372036854775807, ptr %30, align 16
  %80 = or i8 %75, 10
  store i8 %80, ptr %7, align 16
  tail call void @raise_softirq_irqoff(i32 noundef 8) #14
  br label %81

81:                                               ; preds = %79, %67
  tail call fastcc void @__hrtimer_run_queues(ptr noundef %6, i64 noundef %69, i32 noundef %68, i32 noundef 15)
  %82 = tail call fastcc i64 @hrtimer_update_next_event(ptr noundef %6)
  store i64 %82, ptr %29, align 32
  %83 = load i8, ptr %7, align 16
  %84 = and i8 %83, -3
  store i8 %84, ptr %7, align 16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %68) #14
  %85 = tail call i32 @tick_program_event(i64 noundef %82, i32 noundef 0) #14
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %44, label %87

87:                                               ; preds = %81
  %88 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #14
  %89 = tail call i64 @ktime_get_update_offsets_now(ptr noundef %21, ptr noundef %18, ptr noundef %19, ptr noundef %20) #14
  %90 = load i64, ptr %18, align 8
  store i64 %90, ptr %24, align 8
  %91 = load i64, ptr %19, align 8
  store i64 %91, ptr %26, align 16
  %92 = load i64, ptr %20, align 8
  store i64 %92, ptr %28, align 8
  %93 = load i16, ptr %31, align 8
  %94 = add i16 %93, 1
  store i16 %94, ptr %31, align 8
  %95 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 7
  %96 = load i16, ptr %95, align 2
  %97 = add i16 %96, 1
  store i16 %97, ptr %95, align 2
  %98 = load i8, ptr %7, align 16
  %99 = or i8 %98, 4
  store i8 %99, ptr %7, align 16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %88) #14
  %100 = sub i64 %89, %22
  %101 = trunc i64 %100 to i32
  %102 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 8
  %103 = load i32, ptr %102, align 4
  %104 = icmp ult i32 %103, %101
  br i1 %104, label %105, label %106

105:                                              ; preds = %87
  store i32 %101, ptr %102, align 4
  br label %106

106:                                              ; preds = %105, %87
  %107 = tail call i64 @llvm.smin.i64(i64 %100, i64 100000000)
  %108 = add i64 %107, %89
  %109 = tail call i32 @tick_program_event(i64 noundef %108, i32 noundef 1) #14
  %110 = load i1, ptr @hrtimer_interrupt.__already_done, align 1
  br i1 %110, label %113, label %111, !prof !9

111:                                              ; preds = %106
  store i1 true, ptr @hrtimer_interrupt.__already_done, align 1
  %112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i64 noundef %100) #17
  br label %113

113:                                              ; preds = %111, %106, %44
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @raise_softirq_irqoff(i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__hrtimer_run_queues(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #6 {
  %5 = alloca i64, align 8
  %6 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, %3
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %155, label %10

10:                                               ; preds = %153, %4
  %11 = phi i32 [ %15, %153 ], [ %8, %4 ]
  %12 = call i32 @llvm.cttz.i32(i32 %11, i1 true) #14, !range !13
  %13 = shl nuw i32 1, %12
  %14 = xor i32 %13, -1
  %15 = and i32 %11, %14
  %16 = getelementptr %struct.hrtimer_cpu_base, ptr %0, i32 0, i32 13, i32 %12
  %17 = icmp eq ptr %16, null
  br i1 %17, label %155, label %18

18:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  %19 = getelementptr %struct.hrtimer_cpu_base, ptr %0, i32 0, i32 13, i32 %12, i32 7
  %20 = load i64, ptr %19, align 8
  %21 = add i64 %20, %1
  store i64 %21, ptr %5, align 8
  %22 = getelementptr %struct.hrtimer_cpu_base, ptr %0, i32 0, i32 13, i32 %12, i32 5
  %23 = getelementptr inbounds %struct.rb_root_cached, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %153, label %26

26:                                               ; preds = %18
  %27 = getelementptr %struct.hrtimer_cpu_base, ptr %0, i32 0, i32 13, i32 %12, i32 4
  %28 = getelementptr %struct.hrtimer_cpu_base, ptr %0, i32 0, i32 13, i32 %12, i32 3
  %29 = getelementptr %struct.hrtimer_cpu_base, ptr %0, i32 0, i32 13, i32 %12, i32 1
  %30 = getelementptr inbounds %struct.hrtimer, ptr %24, i32 0, i32 1
  %31 = load i64, ptr %30, align 8
  %32 = icmp slt i64 %21, %31
  br i1 %32, label %153, label %33

33:                                               ; preds = %148, %26
  %34 = phi ptr [ %146, %148 ], [ %24, %26 ]
  %35 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hrtimer_cancel, i32 0, i32 1), align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = tail call ptr @llvm.thread.pointer() #14
  %39 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %40 = load i32, ptr %39, align 8
  %41 = lshr i32 %40, 5
  %42 = getelementptr i32, ptr @__cpu_online_mask, i32 %41
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %40, 31
  %45 = shl nuw i32 1, %44
  %46 = and i32 %45, %43
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %37
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !31
  %49 = call i32 @__traceiter_hrtimer_cancel(ptr noundef null, ptr noundef nonnull %34) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !32
  br label %50

50:                                               ; preds = %48, %37, %33
  store ptr %34, ptr %27, align 8
  %51 = load i32, ptr %28, align 4
  %52 = add i32 %51, 1
  store i32 %52, ptr %28, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #14, !srcloc !38
  %53 = load i32, ptr %28, align 4
  %54 = add i32 %53, 1
  store i32 %54, ptr %28, align 4
  %55 = load ptr, ptr %16, align 8
  %56 = getelementptr inbounds %struct.hrtimer, ptr %34, i32 0, i32 4
  %57 = load i8, ptr %56, align 8
  store volatile i8 0, ptr %56, align 8
  %58 = and i8 %57, 1
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %50
  %61 = call zeroext i1 @timerqueue_del(ptr noundef %22, ptr noundef nonnull %34) #14
  br i1 %61, label %69, label %62

62:                                               ; preds = %60
  %63 = load i32, ptr %29, align 4
  %64 = shl nuw i32 1, %63
  %65 = xor i32 %64, -1
  %66 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %55, i32 0, i32 2
  %67 = load i32, ptr %66, align 8
  %68 = and i32 %67, %65
  store i32 %68, ptr %66, align 8
  br label %69

69:                                               ; preds = %62, %60, %50
  %70 = getelementptr inbounds %struct.hrtimer, ptr %34, i32 0, i32 2
  %71 = load ptr, ptr %70, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %2) #14
  %72 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hrtimer_expire_entry, i32 0, i32 1), align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %69
  %75 = tail call ptr @llvm.thread.pointer() #14
  %76 = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 2
  %77 = load i32, ptr %76, align 8
  %78 = lshr i32 %77, 5
  %79 = getelementptr i32, ptr @__cpu_online_mask, i32 %78
  %80 = load volatile i32, ptr %79, align 4
  %81 = and i32 %77, 31
  %82 = shl nuw i32 1, %81
  %83 = and i32 %82, %80
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %74
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !39
  %86 = call i32 @__traceiter_hrtimer_expire_entry(ptr noundef null, ptr noundef nonnull %34, ptr noundef nonnull %5) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !40
  br label %87

87:                                               ; preds = %85, %74, %69
  %88 = call i32 %71(ptr noundef nonnull %34) #14
  %89 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hrtimer_expire_exit, i32 0, i32 1), align 4
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %87
  %92 = tail call ptr @llvm.thread.pointer() #14
  %93 = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 2
  %94 = load i32, ptr %93, align 8
  %95 = lshr i32 %94, 5
  %96 = getelementptr i32, ptr @__cpu_online_mask, i32 %95
  %97 = load volatile i32, ptr %96, align 4
  %98 = and i32 %94, 31
  %99 = shl nuw i32 1, %98
  %100 = and i32 %99, %97
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %91
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !41
  %103 = call i32 @__traceiter_hrtimer_expire_exit(ptr noundef null, ptr noundef nonnull %34) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !42
  br label %104

104:                                              ; preds = %102, %91, %87
  call void @_raw_spin_lock_irq(ptr noundef %0) #14
  %105 = icmp eq i32 %88, 0
  br i1 %105, label %134, label %106

106:                                              ; preds = %104
  %107 = load i8, ptr %56, align 8
  %108 = and i8 %107, 1
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %110, label %134

110:                                              ; preds = %106
  %111 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hrtimer_start, i32 0, i32 1), align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %126

113:                                              ; preds = %110
  %114 = tail call ptr @llvm.thread.pointer() #14
  %115 = getelementptr inbounds %struct.thread_info, ptr %114, i32 0, i32 2
  %116 = load i32, ptr %115, align 8
  %117 = lshr i32 %116, 5
  %118 = getelementptr i32, ptr @__cpu_online_mask, i32 %117
  %119 = load volatile i32, ptr %118, align 4
  %120 = and i32 %116, 31
  %121 = shl nuw i32 1, %120
  %122 = and i32 %121, %119
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %113
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !25
  %125 = call i32 @__traceiter_hrtimer_start(ptr noundef null, ptr noundef nonnull %34, i32 noundef 0) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !26
  br label %126

126:                                              ; preds = %124, %113, %110
  %127 = load i32, ptr %29, align 4
  %128 = shl nuw i32 1, %127
  %129 = load ptr, ptr %16, align 8
  %130 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %129, i32 0, i32 2
  %131 = load i32, ptr %130, align 8
  %132 = or i32 %131, %128
  store i32 %132, ptr %130, align 8
  store volatile i8 1, ptr %56, align 8
  %133 = call zeroext i1 @timerqueue_add(ptr noundef %22, ptr noundef nonnull %34) #14
  br label %134

134:                                              ; preds = %126, %106, %104
  %135 = load i32, ptr %28, align 4
  %136 = add i32 %135, 1
  store i32 %136, ptr %28, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #14, !srcloc !38
  %137 = load i32, ptr %28, align 4
  %138 = add i32 %137, 1
  store i32 %138, ptr %28, align 4
  %139 = load ptr, ptr %27, align 8
  %140 = icmp ne ptr %139, %34
  %141 = load i1, ptr @__run_hrtimer.__already_done, align 1
  %142 = xor i1 %141, true
  %143 = select i1 %140, i1 %142, i1 false
  br i1 %143, label %144, label %145, !prof !20

144:                                              ; preds = %134
  store i1 true, ptr @__run_hrtimer.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1713, i32 noundef 9, ptr noundef null) #14
  br label %145

145:                                              ; preds = %144, %134
  store ptr null, ptr %27, align 8
  %146 = load ptr, ptr %23, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %153, label %148

148:                                              ; preds = %145
  %149 = load i64, ptr %5, align 8
  %150 = getelementptr inbounds %struct.hrtimer, ptr %146, i32 0, i32 1
  %151 = load i64, ptr %150, align 8
  %152 = icmp slt i64 %149, %151
  br i1 %152, label %153, label %33

153:                                              ; preds = %148, %145, %26, %18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  %154 = icmp eq i32 %15, 0
  br i1 %154, label %155, label %10

155:                                              ; preds = %153, %10, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i64 @hrtimer_update_next_event(ptr noundef %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %0, i32 0, i32 4
  %3 = load i8, ptr %2, align 16
  %4 = and i8 %3, 8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %51

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 240
  %10 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %0, i32 0, i32 12
  store ptr null, ptr %10, align 8
  %11 = icmp eq i32 %9, 0
  br i1 %11, label %47, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %0, i32 0, i32 10
  br label %14

14:                                               ; preds = %44, %12
  %15 = phi i64 [ 9223372036854775807, %12 ], [ %45, %44 ]
  %16 = phi i32 [ %9, %12 ], [ %20, %44 ]
  %17 = tail call i32 @llvm.cttz.i32(i32 %16, i1 true) #14, !range !13
  %18 = shl nuw i32 1, %17
  %19 = xor i32 %18, -1
  %20 = and i32 %16, %19
  %21 = getelementptr %struct.hrtimer_cpu_base, ptr %0, i32 0, i32 13, i32 %17
  %22 = icmp eq ptr %21, null
  br i1 %22, label %47, label %23

23:                                               ; preds = %14
  %24 = getelementptr %struct.hrtimer_cpu_base, ptr %0, i32 0, i32 13, i32 %17, i32 5, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = tail call ptr @timerqueue_iterate_next(ptr noundef null) #14
  %29 = icmp eq ptr %28, null
  br i1 %29, label %44, label %30

30:                                               ; preds = %27, %23
  %31 = phi ptr [ %25, %23 ], [ %28, %27 ]
  %32 = getelementptr inbounds %struct.timerqueue_node, ptr %31, i32 0, i32 1
  %33 = load i64, ptr %32, align 8
  %34 = getelementptr %struct.hrtimer_cpu_base, ptr %0, i32 0, i32 13, i32 %17, i32 7
  %35 = load i64, ptr %34, align 8
  %36 = sub i64 %33, %35
  %37 = icmp slt i64 %36, %15
  %38 = tail call i64 @llvm.smin.i64(i64 %36, i64 %15) #14
  br i1 %37, label %39, label %44

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.hrtimer, ptr %31, i32 0, i32 6
  %41 = load i8, ptr %40, align 2
  %42 = icmp eq i8 %41, 0
  %43 = select i1 %42, ptr %13, ptr %10
  store ptr %31, ptr %43, align 8
  br label %44

44:                                               ; preds = %39, %30, %27
  %45 = phi i64 [ %15, %27 ], [ %38, %30 ], [ %36, %39 ]
  %46 = icmp eq i32 %20, 0
  br i1 %46, label %47, label %14

47:                                               ; preds = %44, %14, %6
  %48 = phi i64 [ 9223372036854775807, %6 ], [ %15, %14 ], [ %45, %44 ]
  %49 = tail call i64 @llvm.smax.i64(i64 %48, i64 0) #14
  %50 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %0, i32 0, i32 11
  store i64 %49, ptr %50, align 16
  br label %51

51:                                               ; preds = %47, %1
  %52 = phi i64 [ 9223372036854775807, %1 ], [ %49, %47 ]
  %53 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %0, i32 0, i32 2
  %54 = load i32, ptr %53, align 8
  %55 = and i32 %54, 15
  %56 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %0, i32 0, i32 10
  store ptr null, ptr %56, align 8
  %57 = icmp eq i32 %55, 0
  br i1 %57, label %93, label %58

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %0, i32 0, i32 12
  br label %60

60:                                               ; preds = %90, %58
  %61 = phi i64 [ 9223372036854775807, %58 ], [ %91, %90 ]
  %62 = phi i32 [ %55, %58 ], [ %66, %90 ]
  %63 = tail call i32 @llvm.cttz.i32(i32 %62, i1 true) #14, !range !13
  %64 = shl nuw i32 1, %63
  %65 = xor i32 %64, -1
  %66 = and i32 %62, %65
  %67 = getelementptr %struct.hrtimer_cpu_base, ptr %0, i32 0, i32 13, i32 %63
  %68 = icmp eq ptr %67, null
  br i1 %68, label %93, label %69

69:                                               ; preds = %60
  %70 = getelementptr %struct.hrtimer_cpu_base, ptr %0, i32 0, i32 13, i32 %63, i32 5, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = tail call ptr @timerqueue_iterate_next(ptr noundef null) #14
  %75 = icmp eq ptr %74, null
  br i1 %75, label %90, label %76

76:                                               ; preds = %73, %69
  %77 = phi ptr [ %71, %69 ], [ %74, %73 ]
  %78 = getelementptr inbounds %struct.timerqueue_node, ptr %77, i32 0, i32 1
  %79 = load i64, ptr %78, align 8
  %80 = getelementptr %struct.hrtimer_cpu_base, ptr %0, i32 0, i32 13, i32 %63, i32 7
  %81 = load i64, ptr %80, align 8
  %82 = sub i64 %79, %81
  %83 = icmp slt i64 %82, %61
  %84 = tail call i64 @llvm.smin.i64(i64 %82, i64 %61) #14
  br i1 %83, label %85, label %90

85:                                               ; preds = %76
  %86 = getelementptr inbounds %struct.hrtimer, ptr %77, i32 0, i32 6
  %87 = load i8, ptr %86, align 2
  %88 = icmp eq i8 %87, 0
  %89 = select i1 %88, ptr %56, ptr %59
  store ptr %77, ptr %89, align 8
  br label %90

90:                                               ; preds = %85, %76, %73
  %91 = phi i64 [ %61, %73 ], [ %84, %76 ], [ %82, %85 ]
  %92 = icmp eq i32 %66, 0
  br i1 %92, label %93, label %60

93:                                               ; preds = %90, %60, %51
  %94 = phi i64 [ 9223372036854775807, %51 ], [ %91, %90 ], [ %61, %60 ]
  %95 = tail call i64 @llvm.smax.i64(i64 %94, i64 0) #14
  %96 = icmp ugt i64 %95, %52
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %0, i32 0, i32 12
  %99 = load ptr, ptr %98, align 8
  store ptr %99, ptr %56, align 8
  br label %100

100:                                              ; preds = %97, %93
  %101 = phi i64 [ %52, %97 ], [ %95, %93 ]
  ret i64 %101
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tick_program_event(i64 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hrtimer_run_queues() local_unnamed_addr #6 {
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %2 = inttoptr i32 %1 to ptr
  %3 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %2) #11, !srcloc !11
  %4 = add i32 %3, ptrtoint (ptr @hrtimer_bases to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %5, i32 0, i32 4
  %7 = load i8, ptr %6, align 16
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %52

10:                                               ; preds = %0
  %11 = load i8, ptr @hrtimer_hres_enabled, align 1, !range !43
  %12 = xor i8 %11, 1
  %13 = zext i8 %12 to i32
  %14 = tail call i32 @tick_check_oneshot_change(i32 noundef %13) #14
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %32, label %16

16:                                               ; preds = %10
  %17 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %18 = inttoptr i32 %17 to ptr
  %19 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %18) #11, !srcloc !11
  %20 = add i32 %19, ptrtoint (ptr @hrtimer_bases to i32)
  %21 = inttoptr i32 %20 to ptr
  %22 = tail call i32 @tick_init_highres() #14
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %21, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %26) #17
  br label %52

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %21, i32 0, i32 4
  %30 = load i8, ptr %29, align 16
  %31 = or i8 %30, 1
  store i8 %31, ptr %29, align 16
  store i32 1, ptr @hrtimer_resolution, align 4
  tail call void @tick_setup_sched_timer() #14
  tail call void @retrigger_next_event(ptr noundef null) #14
  br label %52

32:                                               ; preds = %10
  %33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #14
  %34 = getelementptr %struct.hrtimer_cpu_base, ptr %5, i32 0, i32 13, i32 1, i32 7
  %35 = getelementptr %struct.hrtimer_cpu_base, ptr %5, i32 0, i32 13, i32 2, i32 7
  %36 = getelementptr %struct.hrtimer_cpu_base, ptr %5, i32 0, i32 13, i32 3, i32 7
  %37 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %5, i32 0, i32 3
  %38 = tail call i64 @ktime_get_update_offsets_now(ptr noundef %37, ptr noundef %34, ptr noundef %35, ptr noundef %36) #14
  %39 = load i64, ptr %34, align 8
  %40 = getelementptr %struct.hrtimer_cpu_base, ptr %5, i32 0, i32 13, i32 5, i32 7
  store i64 %39, ptr %40, align 8
  %41 = load i64, ptr %35, align 8
  %42 = getelementptr %struct.hrtimer_cpu_base, ptr %5, i32 0, i32 13, i32 6, i32 7
  store i64 %41, ptr %42, align 16
  %43 = load i64, ptr %36, align 8
  %44 = getelementptr %struct.hrtimer_cpu_base, ptr %5, i32 0, i32 13, i32 7, i32 7
  store i64 %43, ptr %44, align 8
  %45 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %5, i32 0, i32 11
  %46 = load i64, ptr %45, align 16
  %47 = icmp slt i64 %38, %46
  br i1 %47, label %51, label %48

48:                                               ; preds = %32
  store i64 9223372036854775807, ptr %45, align 16
  %49 = load i8, ptr %6, align 16
  %50 = or i8 %49, 8
  store i8 %50, ptr %6, align 16
  tail call void @raise_softirq_irqoff(i32 noundef 8) #14
  br label %51

51:                                               ; preds = %48, %32
  tail call fastcc void @__hrtimer_run_queues(ptr noundef %5, i64 noundef %38, i32 noundef %33, i32 noundef 15)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %33) #14
  br label %52

52:                                               ; preds = %51, %28, %24, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tick_check_oneshot_change(i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hrtimer_sleeper_start_expires(ptr noundef %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.hrtimer, ptr %0, i32 0, i32 1
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr inbounds %struct.timerqueue_node, ptr %0, i32 0, i32 1
  %6 = load i64, ptr %5, align 8
  %7 = sub i64 %6, %4
  tail call void @hrtimer_start_range_ns(ptr noundef %0, i64 noundef %4, i64 noundef %7, i32 noundef %1) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hrtimer_init_sleeper(ptr noundef %0, i32 noundef %1, i32 noundef %2) #6 {
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hrtimer_init, i32 0, i32 1), align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = tail call ptr @llvm.thread.pointer() #14
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = lshr i32 %9, 5
  %11 = getelementptr i32, ptr @__cpu_online_mask, i32 %10
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %9, 31
  %14 = shl nuw i32 1, %13
  %15 = and i32 %14, %12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !35
  %18 = tail call i32 @__traceiter_hrtimer_init(ptr noundef null, ptr noundef %0, i32 noundef %1, i32 noundef %2) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !36
  br label %19

19:                                               ; preds = %17, %6, %3
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(48) %0, i8 0, i32 48, i1 false) #14
  %20 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %21 = inttoptr i32 %20 to ptr
  %22 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %21) #11, !srcloc !11
  %23 = icmp eq i32 %1, 0
  %24 = and i32 %2, 1
  %25 = select i1 %23, i32 %24, i32 %1
  %26 = icmp slt i32 %25, 16
  br i1 %26, label %27, label %34, !prof !9

27:                                               ; preds = %19
  %28 = getelementptr [16 x i32], ptr @hrtimer_clock_to_base_table, i32 0, i32 %25
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %25, 1073741823
  %31 = lshr i32 63356, %30
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27, %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1537, i32 noundef 9, ptr noundef nonnull @.str.3, i32 noundef %25) #14
  br label %35

35:                                               ; preds = %34, %27
  %36 = phi i32 [ %29, %27 ], [ 0, %34 ]
  %37 = and i32 %2, 4
  %38 = lshr exact i32 %37, 2
  %39 = trunc i32 %38 to i8
  %40 = add i32 %22, ptrtoint (ptr @hrtimer_bases to i32)
  %41 = inttoptr i32 %40 to ptr
  %42 = add i32 %36, %37
  %43 = getelementptr inbounds %struct.hrtimer, ptr %0, i32 0, i32 6
  store i8 %39, ptr %43, align 2
  %44 = trunc i32 %2 to i8
  %45 = lshr i8 %44, 3
  %46 = and i8 %45, 1
  %47 = getelementptr inbounds %struct.hrtimer, ptr %0, i32 0, i32 7
  store i8 %46, ptr %47, align 1
  %48 = getelementptr %struct.hrtimer_cpu_base, ptr %41, i32 0, i32 13, i32 %42
  %49 = getelementptr inbounds %struct.hrtimer, ptr %0, i32 0, i32 3
  store ptr %48, ptr %49, align 4
  %50 = ptrtoint ptr %0 to i32
  store i32 %50, ptr %0, align 8
  %51 = getelementptr inbounds %struct.hrtimer, ptr %0, i32 0, i32 2
  store ptr @hrtimer_wakeup, ptr %51, align 8
  %52 = tail call ptr @llvm.thread.pointer() #14
  %53 = getelementptr inbounds %struct.hrtimer_sleeper, ptr %0, i32 0, i32 1
  store ptr %52, ptr %53, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nanosleep_copyout(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.restart_block, ptr %0, i32 0, i32 2, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %15 [
    i32 2, label %5
    i32 1, label %10
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.restart_block, ptr %0, i32 0, i32 2, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @put_old_timespec32(ptr noundef %1, ptr noundef %7) #14
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %17

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.restart_block, ptr %0, i32 0, i32 2, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = tail call i32 @put_timespec64(ptr noundef %1, ptr noundef %12) #14
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %17

15:                                               ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/time/hrtimer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2030, 0\0A.popsection", ""() #14, !srcloc !44
  unreachable

16:                                               ; preds = %10, %5
  br label %17

17:                                               ; preds = %16, %10, %5
  %18 = phi i32 [ -516, %16 ], [ -14, %5 ], [ -14, %10 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_old_timespec32(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_timespec64(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hrtimer_nanosleep(i64 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = alloca %struct.hrtimer_sleeper, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i32 56, i1 false), !annotation !12
  %5 = tail call ptr @llvm.thread.pointer() #14
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 14
  %7 = load i32, ptr %6, align 16
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 143
  %11 = load i64, ptr %10, align 8
  %12 = icmp ugt i32 %7, 99
  br i1 %12, label %14, label %13

13:                                               ; preds = %9, %3
  br label %14

14:                                               ; preds = %13, %9
  %15 = phi i64 [ 0, %13 ], [ %11, %9 ]
  call void @hrtimer_init_sleeper(ptr noundef nonnull %4, i32 noundef %2, i32 noundef %1) #14
  %16 = getelementptr inbounds %struct.hrtimer, ptr %4, i32 0, i32 1
  store i64 %0, ptr %16, align 8
  %17 = add i64 %15, %0
  %18 = icmp slt i64 %17, 0
  %19 = icmp slt i64 %17, %0
  %20 = or i1 %18, %19
  %21 = icmp slt i64 %17, %15
  %22 = or i1 %21, %20
  %23 = select i1 %22, i64 9223372036854775807, i64 %17
  %24 = getelementptr inbounds %struct.timerqueue_node, ptr %4, i32 0, i32 1
  store i64 %23, ptr %24, align 8
  %25 = call fastcc i32 @do_nanosleep(ptr noundef nonnull %4, i32 noundef %1)
  %26 = icmp eq i32 %25, -516
  br i1 %26, label %27, label %38

27:                                               ; preds = %14
  %28 = icmp eq i32 %1, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.hrtimer, ptr %4, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.hrtimer_clock_base, ptr %31, i32 0, i32 2
  %33 = load i32, ptr %32, align 8
  %34 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 51, i32 2
  store i32 %33, ptr %34, align 8
  %35 = load i64, ptr %24, align 8
  %36 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 51, i32 2, i32 0, i32 4
  store i64 %35, ptr %36, align 8
  %37 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 51, i32 1
  store ptr @hrtimer_nanosleep_restart, ptr %37, align 4
  br label %38

38:                                               ; preds = %29, %27, %14
  %39 = phi i32 [ %25, %14 ], [ -516, %29 ], [ -514, %27 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #14
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_nanosleep(ptr noundef %0, i32 noundef %1) unnamed_addr #6 section ".sched.text" {
  %3 = alloca %struct.timespec64, align 8
  %4 = tail call ptr @llvm.thread.pointer() #14
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.hrtimer, ptr %0, i32 0, i32 1
  %7 = getelementptr inbounds %struct.timerqueue_node, ptr %0, i32 0, i32 1
  %8 = getelementptr inbounds %struct.hrtimer_sleeper, ptr %0, i32 0, i32 1
  %9 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 4
  br label %10

10:                                               ; preds = %41, %2
  %11 = phi i32 [ %1, %2 ], [ 0, %41 ]
  store volatile i32 1, ptr %5, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !45
  %12 = load i64, ptr %6, align 8
  %13 = load i64, ptr %7, align 8
  %14 = sub i64 %13, %12
  tail call void @hrtimer_start_range_ns(ptr noundef %0, i64 noundef %12, i64 noundef %14, i32 noundef %11) #14
  %15 = load ptr, ptr %8, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %17, !prof !20

17:                                               ; preds = %10
  %18 = load i32, ptr %9, align 4
  %19 = or i32 %18, 1073741824
  store i32 %19, ptr %9, align 4
  tail call void @schedule() #14
  %20 = load i32, ptr %9, align 4
  %21 = and i32 %20, -1073741825
  store i32 %21, ptr %9, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !46
  %22 = load volatile i32, ptr @system_freezing_cnt, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24, !prof !9

24:                                               ; preds = %17
  %25 = tail call zeroext i1 @freezing_slow_path(ptr noundef %4) #14
  br i1 %25, label %26, label %28, !prof !20

26:                                               ; preds = %24
  %27 = tail call zeroext i1 @__refrigerator(i1 noundef zeroext false) #14
  br label %28

28:                                               ; preds = %26, %24, %17, %10
  %29 = tail call i32 @hrtimer_try_to_cancel(ptr noundef %0) #14
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %31, %28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !33
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !34
  %32 = tail call i32 @hrtimer_try_to_cancel(ptr noundef %0) #14
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %31, label %34

34:                                               ; preds = %31, %28
  %35 = load ptr, ptr %8, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %45, label %37

37:                                               ; preds = %34
  %38 = load volatile i32, ptr %4, align 4
  %39 = and i32 %38, 256
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45, !prof !9

41:                                               ; preds = %37
  %42 = load volatile i32, ptr %4, align 4
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %10, label %45

45:                                               ; preds = %41, %37, %34
  store volatile i32 0, ptr %5, align 8
  %46 = load ptr, ptr %8, align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %77, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 51, i32 2, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %77, label %52

52:                                               ; preds = %48
  %53 = load i64, ptr %7, align 8
  %54 = getelementptr inbounds %struct.hrtimer, ptr %0, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.hrtimer_clock_base, ptr %55, i32 0, i32 6
  %57 = load ptr, ptr %56, align 4
  %58 = tail call i64 %57() #14
  %59 = sub i64 %53, %58
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !12
  %60 = icmp slt i64 %59, 1
  br i1 %60, label %75, label %61

61:                                               ; preds = %52
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %3, i64 noundef %59) #14
  %62 = load i32, ptr %49, align 4
  switch i32 %62, label %73 [
    i32 2, label %63
    i32 1, label %68
  ]

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 51, i32 2, i32 0, i32 2
  %65 = load ptr, ptr %64, align 8
  %66 = call i32 @put_old_timespec32(ptr noundef nonnull %3, ptr noundef %65) #14
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %74, label %75

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 51, i32 2, i32 0, i32 2
  %70 = load ptr, ptr %69, align 8
  %71 = call i32 @put_timespec64(ptr noundef nonnull %3, ptr noundef %70) #14
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %74, label %75

73:                                               ; preds = %61
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/time/hrtimer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2030, 0\0A.popsection", ""() #14, !srcloc !44
  unreachable

74:                                               ; preds = %68, %63
  br label %75

75:                                               ; preds = %74, %68, %63, %52
  %76 = phi i32 [ 0, %52 ], [ -516, %74 ], [ -14, %63 ], [ -14, %68 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  br label %77

77:                                               ; preds = %75, %48, %45
  %78 = phi i32 [ %76, %75 ], [ 0, %45 ], [ -516, %48 ]
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hrtimer_nanosleep_restart(ptr nocapture noundef readonly %0) #6 section ".sched.text" {
  %2 = alloca %struct.hrtimer_sleeper, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i32 56, i1 false), !annotation !12
  %3 = getelementptr inbounds %struct.restart_block, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  call void @hrtimer_init_sleeper(ptr noundef nonnull %2, i32 noundef %4, i32 noundef 0) #14
  %5 = getelementptr inbounds %struct.restart_block, ptr %0, i32 0, i32 2, i32 0, i32 4
  %6 = load i64, ptr %5, align 8
  %7 = getelementptr inbounds %struct.timerqueue_node, ptr %2, i32 0, i32 1
  store i64 %6, ptr %7, align 8
  %8 = getelementptr inbounds %struct.hrtimer, ptr %2, i32 0, i32 1
  store i64 %6, ptr %8, align 8
  %9 = call fastcc i32 @do_nanosleep(ptr noundef nonnull %2, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #14
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_nanosleep_time32(i32 noundef %0, i32 noundef %1) #6 {
  %3 = alloca %struct.hrtimer_sleeper, align 8
  %4 = alloca %struct.timespec64, align 8
  %5 = inttoptr i32 %0 to ptr
  %6 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i32 16, i1 false) #14, !annotation !12
  %7 = call i32 @get_old_timespec32(ptr noundef nonnull %4, ptr noundef %5) #14
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %61

9:                                                ; preds = %2
  %10 = load i64, ptr %4, align 8
  %11 = icmp sgt i64 %10, -1
  %12 = getelementptr inbounds %struct.timespec64, ptr %4, i32 0, i32 1
  %13 = load i32, ptr %12, align 8
  %14 = icmp ult i32 %13, 1000000000
  %15 = select i1 %11, i1 %14, i1 false
  br i1 %15, label %16, label %61

16:                                               ; preds = %9
  %17 = icmp eq i32 %1, 0
  %18 = select i1 %17, i32 0, i32 2
  %19 = tail call ptr @llvm.thread.pointer() #14
  %20 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 51, i32 2, i32 0, i32 1
  store i32 %18, ptr %20, align 4
  %21 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 51, i32 2, i32 0, i32 2
  store ptr %6, ptr %21, align 8
  %22 = icmp ugt i64 %10, 9223372035
  br i1 %22, label %28, label %23, !prof !20

23:                                               ; preds = %16
  %24 = load i64, ptr %12, align 8
  %25 = mul nuw nsw i64 %10, 1000000000
  %26 = and i64 %24, 4294967295
  %27 = add nuw i64 %26, %25
  br label %28

28:                                               ; preds = %23, %16
  %29 = phi i64 [ %27, %23 ], [ 9223372036854775807, %16 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i32 56, i1 false) #14, !annotation !12
  %30 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 14
  %31 = load i32, ptr %30, align 16
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 143
  %35 = load i64, ptr %34, align 8
  %36 = icmp ugt i32 %31, 99
  br i1 %36, label %38, label %37

37:                                               ; preds = %33, %28
  br label %38

38:                                               ; preds = %37, %33
  %39 = phi i64 [ 0, %37 ], [ %35, %33 ]
  call void @hrtimer_init_sleeper(ptr noundef nonnull %3, i32 noundef 1, i32 noundef 1) #14
  %40 = getelementptr inbounds %struct.hrtimer, ptr %3, i32 0, i32 1
  store i64 %29, ptr %40, align 8
  %41 = add i64 %39, %29
  %42 = icmp slt i64 %41, 0
  %43 = icmp slt i64 %41, %29
  %44 = or i1 %42, %43
  %45 = icmp slt i64 %41, %39
  %46 = or i1 %45, %44
  %47 = select i1 %46, i64 9223372036854775807, i64 %41
  %48 = getelementptr inbounds %struct.timerqueue_node, ptr %3, i32 0, i32 1
  store i64 %47, ptr %48, align 8
  %49 = call fastcc i32 @do_nanosleep(ptr noundef nonnull %3, i32 noundef 1) #14
  %50 = icmp eq i32 %49, -516
  br i1 %50, label %51, label %60

51:                                               ; preds = %38
  %52 = getelementptr inbounds %struct.hrtimer, ptr %3, i32 0, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.hrtimer_clock_base, ptr %53, i32 0, i32 2
  %55 = load i32, ptr %54, align 8
  %56 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 51, i32 2
  store i32 %55, ptr %56, align 8
  %57 = load i64, ptr %48, align 8
  %58 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 51, i32 2, i32 0, i32 4
  store i64 %57, ptr %58, align 8
  %59 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 51, i32 1
  store ptr @hrtimer_nanosleep_restart, ptr %59, align 4
  br label %60

60:                                               ; preds = %51, %38
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #14
  br label %61

61:                                               ; preds = %60, %9, %2
  %62 = phi i32 [ %49, %60 ], [ -14, %2 ], [ -22, %9 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  ret i32 %62
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hrtimers_prepare_cpu(i32 noundef %0) local_unnamed_addr #10 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @hrtimer_bases to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr %struct.hrtimer_cpu_base, ptr %5, i32 0, i32 13, i32 0
  store ptr %5, ptr %6, align 8
  %7 = getelementptr %struct.hrtimer_cpu_base, ptr %5, i32 0, i32 13, i32 0, i32 3
  store i32 0, ptr %7, align 4
  %8 = getelementptr %struct.hrtimer_cpu_base, ptr %5, i32 0, i32 13, i32 0, i32 5
  store ptr null, ptr %8, align 4
  %9 = getelementptr %struct.hrtimer_cpu_base, ptr %5, i32 0, i32 13, i32 0, i32 5, i32 0, i32 1
  store ptr null, ptr %9, align 4
  %10 = getelementptr %struct.hrtimer_cpu_base, ptr %5, i32 0, i32 13, i32 1
  store ptr %5, ptr %10, align 8
  %11 = getelementptr %struct.hrtimer_cpu_base, ptr %5, i32 0, i32 13, i32 1, i32 3
  store i32 0, ptr %11, align 4
  %12 = getelementptr %struct.hrtimer_cpu_base, ptr %5, i32 0, i32 13, i32 1, i32 5
  store ptr null, ptr %12, align 4
  %13 = getelementptr %struct.hrtimer_cpu_base, ptr %5, i32 0, i32 13, i32 1, i32 5, i32 0, i32 1
  store ptr null, ptr %13, align 4
  %14 = getelementptr %struct.hrtimer_cpu_base, ptr %5, i32 0, i32 13, i32 2
  store ptr %5, ptr %14, align 8
  %15 = getelementptr %struct.hrtimer_cpu_base, ptr %5, i32 0, i32 13, i32 2, i32 3
  store i32 0, ptr %15, align 4
  %16 = getelementptr %struct.hrtimer_cpu_base, ptr %5, i32 0, i32 13, i32 2, i32 5
  store ptr null, ptr %16, align 4
  %17 = getelementptr %struct.hrtimer_cpu_base, ptr %5, i32 0, i32 13, i32 2, i32 5, i32 0, i32 1
  store ptr null, ptr %17, align 4
  %18 = getelementptr %struct.hrtimer_cpu_base, ptr %5, i32 0, i32 13, i32 3
  store ptr %5, ptr %18, align 8
  %19 = getelementptr %struct.hrtimer_cpu_base, ptr %5, i32 0, i32 13, i32 3, i32 3
  store i32 0, ptr %19, align 4
  %20 = getelementptr %struct.hrtimer_cpu_base, ptr %5, i32 0, i32 13, i32 3, i32 5
  store ptr null, ptr %20, align 4
  %21 = getelementptr %struct.hrtimer_cpu_base, ptr %5, i32 0, i32 13, i32 3, i32 5, i32 0, i32 1
  store ptr null, ptr %21, align 4
  %22 = getelementptr %struct.hrtimer_cpu_base, ptr %5, i32 0, i32 13, i32 4
  store ptr %5, ptr %22, align 8
  %23 = getelementptr %struct.hrtimer_cpu_base, ptr %5, i32 0, i32 13, i32 4, i32 3
  store i32 0, ptr %23, align 4
  %24 = getelementptr %struct.hrtimer_cpu_base, ptr %5, i32 0, i32 13, i32 4, i32 5
  store ptr null, ptr %24, align 4
  %25 = getelementptr %struct.hrtimer_cpu_base, ptr %5, i32 0, i32 13, i32 4, i32 5, i32 0, i32 1
  store ptr null, ptr %25, align 4
  %26 = getelementptr %struct.hrtimer_cpu_base, ptr %5, i32 0, i32 13, i32 5
  store ptr %5, ptr %26, align 8
  %27 = getelementptr %struct.hrtimer_cpu_base, ptr %5, i32 0, i32 13, i32 5, i32 3
  store i32 0, ptr %27, align 4
  %28 = getelementptr %struct.hrtimer_cpu_base, ptr %5, i32 0, i32 13, i32 5, i32 5
  store ptr null, ptr %28, align 4
  %29 = getelementptr %struct.hrtimer_cpu_base, ptr %5, i32 0, i32 13, i32 5, i32 5, i32 0, i32 1
  store ptr null, ptr %29, align 4
  %30 = getelementptr %struct.hrtimer_cpu_base, ptr %5, i32 0, i32 13, i32 6
  store ptr %5, ptr %30, align 8
  %31 = getelementptr %struct.hrtimer_cpu_base, ptr %5, i32 0, i32 13, i32 6, i32 3
  store i32 0, ptr %31, align 4
  %32 = getelementptr %struct.hrtimer_cpu_base, ptr %5, i32 0, i32 13, i32 6, i32 5
  store ptr null, ptr %32, align 4
  %33 = getelementptr %struct.hrtimer_cpu_base, ptr %5, i32 0, i32 13, i32 6, i32 5, i32 0, i32 1
  store ptr null, ptr %33, align 4
  %34 = getelementptr %struct.hrtimer_cpu_base, ptr %5, i32 0, i32 13, i32 7
  store ptr %5, ptr %34, align 8
  %35 = getelementptr %struct.hrtimer_cpu_base, ptr %5, i32 0, i32 13, i32 7, i32 3
  store i32 0, ptr %35, align 4
  %36 = getelementptr %struct.hrtimer_cpu_base, ptr %5, i32 0, i32 13, i32 7, i32 5
  store ptr null, ptr %36, align 4
  %37 = getelementptr %struct.hrtimer_cpu_base, ptr %5, i32 0, i32 13, i32 7, i32 5, i32 0, i32 1
  store ptr null, ptr %37, align 4
  %38 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %5, i32 0, i32 1
  store i32 %0, ptr %38, align 4
  %39 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %5, i32 0, i32 2
  store i32 0, ptr %39, align 8
  %40 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %5, i32 0, i32 4
  %41 = load i8, ptr %40, align 16
  %42 = and i8 %41, -6
  store i8 %42, ptr %40, align 16
  %43 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %5, i32 0, i32 10
  store ptr null, ptr %43, align 8
  %44 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %5, i32 0, i32 12
  store ptr null, ptr %44, align 8
  %45 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %5, i32 0, i32 9
  store i64 9223372036854775807, ptr %45, align 32
  %46 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %5, i32 0, i32 11
  store i64 9223372036854775807, ptr %46, align 16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hrtimers_dead_cpu(i32 noundef %0) local_unnamed_addr #6 {
  %2 = lshr i32 %0, 5
  %3 = getelementptr i32, ptr @__cpu_online_mask, i32 %2
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %0, 31
  %6 = shl nuw i32 1, %5
  %7 = and i32 %4, %6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9, !prof !9

9:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/time/hrtimer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2222, 0\0A.popsection", ""() #14, !srcloc !47
  unreachable

10:                                               ; preds = %1
  tail call void @tick_cancel_sched_timer(i32 noundef %0) #14
  %11 = tail call ptr @llvm.thread.pointer() #14
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %13 = load volatile i32, ptr %12, align 4
  %14 = add i32 %13, 512
  store volatile i32 %14, ptr %12, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !48
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #14, !srcloc !49
  %15 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, ptrtoint (ptr @hrtimer_bases to i32)
  %18 = inttoptr i32 %17 to ptr
  %19 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %20 = inttoptr i32 %19 to ptr
  %21 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %20) #11, !srcloc !11
  %22 = add i32 %21, ptrtoint (ptr @hrtimer_bases to i32)
  %23 = inttoptr i32 %22 to ptr
  tail call void @_raw_spin_lock(ptr noundef %23) #14
  tail call void @_raw_spin_lock(ptr noundef %18) #14
  %24 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  br label %25

25:                                               ; preds = %98, %10
  %26 = phi i32 [ 0, %10 ], [ %99, %98 ]
  %27 = getelementptr %struct.hrtimer_cpu_base, ptr %18, i32 0, i32 13, i32 %26
  %28 = getelementptr %struct.hrtimer_cpu_base, ptr %23, i32 0, i32 13, i32 %26
  %29 = getelementptr %struct.hrtimer_cpu_base, ptr %18, i32 0, i32 13, i32 %26, i32 5
  %30 = getelementptr %struct.hrtimer_cpu_base, ptr %18, i32 0, i32 13, i32 %26, i32 5, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %98, label %33

33:                                               ; preds = %25
  %34 = getelementptr %struct.hrtimer_cpu_base, ptr %18, i32 0, i32 13, i32 %26, i32 1
  %35 = getelementptr %struct.hrtimer_cpu_base, ptr %23, i32 0, i32 13, i32 %26, i32 1
  %36 = getelementptr %struct.hrtimer_cpu_base, ptr %23, i32 0, i32 13, i32 %26, i32 5
  br label %37

37:                                               ; preds = %88, %33
  %38 = phi ptr [ %31, %33 ], [ %96, %88 ]
  %39 = getelementptr inbounds %struct.hrtimer, ptr %38, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.hrtimer_clock_base, ptr %40, i32 0, i32 4
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, %38
  br i1 %43, label %44, label %45, !prof !20

44:                                               ; preds = %37
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/time/hrtimer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2195, 0\0A.popsection", ""() #14, !srcloc !50
  unreachable

45:                                               ; preds = %37
  %46 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hrtimer_cancel, i32 0, i32 1), align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load i32, ptr %24, align 8
  %50 = lshr i32 %49, 5
  %51 = getelementptr i32, ptr @__cpu_online_mask, i32 %50
  %52 = load volatile i32, ptr %51, align 4
  %53 = and i32 %49, 31
  %54 = shl nuw i32 1, %53
  %55 = and i32 %54, %52
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %48
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !31
  %58 = tail call i32 @__traceiter_hrtimer_cancel(ptr noundef null, ptr noundef nonnull %38) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !32
  br label %59

59:                                               ; preds = %57, %48, %45
  %60 = load ptr, ptr %27, align 8
  %61 = getelementptr inbounds %struct.hrtimer, ptr %38, i32 0, i32 4
  %62 = load i8, ptr %61, align 8
  store volatile i8 1, ptr %61, align 8
  %63 = and i8 %62, 1
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %59
  %66 = tail call zeroext i1 @timerqueue_del(ptr noundef %29, ptr noundef nonnull %38) #14
  br i1 %66, label %74, label %67

67:                                               ; preds = %65
  %68 = load i32, ptr %34, align 4
  %69 = shl nuw i32 1, %68
  %70 = xor i32 %69, -1
  %71 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %60, i32 0, i32 2
  %72 = load i32, ptr %71, align 8
  %73 = and i32 %72, %70
  store i32 %73, ptr %71, align 8
  br label %74

74:                                               ; preds = %67, %65, %59
  store ptr %28, ptr %39, align 4
  %75 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hrtimer_start, i32 0, i32 1), align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %74
  %78 = load i32, ptr %24, align 8
  %79 = lshr i32 %78, 5
  %80 = getelementptr i32, ptr @__cpu_online_mask, i32 %79
  %81 = load volatile i32, ptr %80, align 4
  %82 = and i32 %78, 31
  %83 = shl nuw i32 1, %82
  %84 = and i32 %83, %81
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %77
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !25
  %87 = tail call i32 @__traceiter_hrtimer_start(ptr noundef null, ptr noundef nonnull %38, i32 noundef 0) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !26
  br label %88

88:                                               ; preds = %86, %77, %74
  %89 = load i32, ptr %35, align 4
  %90 = shl nuw i32 1, %89
  %91 = load ptr, ptr %28, align 8
  %92 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %91, i32 0, i32 2
  %93 = load i32, ptr %92, align 8
  %94 = or i32 %93, %90
  store i32 %94, ptr %92, align 8
  store volatile i8 1, ptr %61, align 8
  %95 = tail call zeroext i1 @timerqueue_add(ptr noundef %36, ptr noundef nonnull %38) #14
  %96 = load ptr, ptr %30, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %37

98:                                               ; preds = %88, %25
  %99 = add nuw nsw i32 %26, 1
  %100 = icmp eq i32 %99, 8
  br i1 %100, label %101, label %25

101:                                              ; preds = %98
  tail call fastcc void @hrtimer_update_softirq_timer(ptr noundef %23, i1 noundef zeroext false)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !16
  %102 = load i16, ptr %18, align 4
  %103 = add i16 %102, 1
  store i16 %103, ptr %18, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !16
  %104 = load i16, ptr %23, align 4
  %105 = add i16 %104, 1
  store i16 %105, ptr %23, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !19
  %106 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %107 = inttoptr i32 %106 to ptr
  %108 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %107) #11, !srcloc !11
  %109 = add i32 %108, ptrtoint (ptr @hrtimer_bases to i32)
  %110 = inttoptr i32 %109 to ptr
  %111 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %110, i32 0, i32 4
  %112 = load i8, ptr %111, align 16
  %113 = and i8 %112, 1
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %123, label %115

115:                                              ; preds = %101
  %116 = add i32 %108, ptrtoint (ptr @tick_cpu_device to i32)
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %115
  %119 = inttoptr i32 %116 to ptr
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %118
  tail call void @hrtimer_interrupt(ptr noundef nonnull %120) #14
  br label %123

123:                                              ; preds = %122, %118, %115, %101
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !51
  tail call fastcc void @local_bh_enable()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_cancel_sched_timer(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @hrtimer_update_softirq_timer(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %0, i32 0, i32 4
  %4 = load i8, ptr %3, align 16
  %5 = and i8 %4, 8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %54

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 240
  %11 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %0, i32 0, i32 12
  store ptr null, ptr %11, align 8
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %48, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %0, i32 0, i32 10
  br label %15

15:                                               ; preds = %45, %13
  %16 = phi i64 [ 9223372036854775807, %13 ], [ %46, %45 ]
  %17 = phi i32 [ %10, %13 ], [ %21, %45 ]
  %18 = tail call i32 @llvm.cttz.i32(i32 %17, i1 true) #14, !range !13
  %19 = shl nuw i32 1, %18
  %20 = xor i32 %19, -1
  %21 = and i32 %17, %20
  %22 = getelementptr %struct.hrtimer_cpu_base, ptr %0, i32 0, i32 13, i32 %18
  %23 = icmp eq ptr %22, null
  br i1 %23, label %48, label %24

24:                                               ; preds = %15
  %25 = getelementptr %struct.hrtimer_cpu_base, ptr %0, i32 0, i32 13, i32 %18, i32 5, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = tail call ptr @timerqueue_iterate_next(ptr noundef null) #14
  %30 = icmp eq ptr %29, null
  br i1 %30, label %45, label %31

31:                                               ; preds = %28, %24
  %32 = phi ptr [ %26, %24 ], [ %29, %28 ]
  %33 = getelementptr inbounds %struct.timerqueue_node, ptr %32, i32 0, i32 1
  %34 = load i64, ptr %33, align 8
  %35 = getelementptr %struct.hrtimer_cpu_base, ptr %0, i32 0, i32 13, i32 %18, i32 7
  %36 = load i64, ptr %35, align 8
  %37 = sub i64 %34, %36
  %38 = icmp slt i64 %37, %16
  %39 = tail call i64 @llvm.smin.i64(i64 %37, i64 %16) #14
  br i1 %38, label %40, label %45

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.hrtimer, ptr %32, i32 0, i32 6
  %42 = load i8, ptr %41, align 2
  %43 = icmp eq i8 %42, 0
  %44 = select i1 %43, ptr %14, ptr %11
  store ptr %32, ptr %44, align 8
  br label %45

45:                                               ; preds = %40, %31, %28
  %46 = phi i64 [ %16, %28 ], [ %39, %31 ], [ %37, %40 ]
  %47 = icmp eq i32 %21, 0
  br i1 %47, label %48, label %15

48:                                               ; preds = %45, %15, %7
  %49 = phi i64 [ 9223372036854775807, %7 ], [ %16, %15 ], [ %46, %45 ]
  %50 = tail call i64 @llvm.smax.i64(i64 %49, i64 0) #14
  %51 = icmp eq i64 %50, 9223372036854775807
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr %11, align 8
  tail call fastcc void @hrtimer_reprogram(ptr noundef %53, i1 noundef zeroext %1)
  br label %54

54:                                               ; preds = %52, %48, %2
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #1 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #14
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @hrtimers_init() local_unnamed_addr #5 section ".init.text" {
  %1 = tail call ptr @llvm.thread.pointer() #14
  %2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %3 = load i32, ptr %2, align 8
  %4 = tail call i32 @hrtimers_prepare_cpu(i32 noundef %3)
  tail call void @open_softirq(i32 noundef 8, ptr noundef nonnull @hrtimer_run_softirq) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @open_softirq(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hrtimer_run_softirq(ptr nocapture noundef readnone %0) #6 {
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #11, !srcloc !11
  %5 = add i32 %4, ptrtoint (ptr @hrtimer_bases to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #14
  %8 = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 1, i32 7
  %9 = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 2, i32 7
  %10 = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 3, i32 7
  %11 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 3
  %12 = tail call i64 @ktime_get_update_offsets_now(ptr noundef %11, ptr noundef %8, ptr noundef %9, ptr noundef %10) #14
  %13 = load i64, ptr %8, align 8
  %14 = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 5, i32 7
  store i64 %13, ptr %14, align 8
  %15 = load i64, ptr %9, align 8
  %16 = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 6, i32 7
  store i64 %15, ptr %16, align 16
  %17 = load i64, ptr %10, align 8
  %18 = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 7, i32 7
  store i64 %17, ptr %18, align 8
  tail call fastcc void @__hrtimer_run_queues(ptr noundef %6, i64 noundef %12, i32 noundef %7, i32 noundef 240)
  %19 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 4
  %20 = load i8, ptr %19, align 16
  %21 = and i8 %20, -9
  store i8 %21, ptr %19, align 16
  tail call fastcc void @hrtimer_update_softirq_timer(ptr noundef %6, i1 noundef zeroext true)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @schedule_hrtimeout_range_clock(ptr noundef readonly %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #6 section ".sched.text" {
  %5 = alloca %struct.hrtimer_sleeper, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i32 56, i1 false), !annotation !12
  %6 = icmp eq ptr %0, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %4
  %8 = load i64, ptr %0, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = tail call ptr @llvm.thread.pointer() #14
  %12 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 1
  store volatile i32 0, ptr %12, align 8
  br label %42

13:                                               ; preds = %4
  tail call void @schedule() #14
  br label %42

14:                                               ; preds = %7
  call void @hrtimer_init_sleeper(ptr noundef nonnull %5, i32 noundef %3, i32 noundef %2) #14
  %15 = load i64, ptr %0, align 8
  %16 = getelementptr inbounds %struct.hrtimer, ptr %5, i32 0, i32 1
  store i64 %15, ptr %16, align 8
  %17 = add i64 %15, %1
  %18 = icmp slt i64 %17, 0
  %19 = icmp slt i64 %17, %15
  %20 = or i1 %18, %19
  %21 = icmp slt i64 %17, %1
  %22 = or i1 %21, %20
  %23 = select i1 %22, i64 9223372036854775807, i64 %17
  %24 = getelementptr inbounds %struct.timerqueue_node, ptr %5, i32 0, i32 1
  store i64 %23, ptr %24, align 8
  %25 = sub i64 %23, %15
  call void @hrtimer_start_range_ns(ptr noundef nonnull %5, i64 noundef %15, i64 noundef %25, i32 noundef %2) #14
  %26 = getelementptr inbounds %struct.hrtimer_sleeper, ptr %5, i32 0, i32 1
  %27 = load ptr, ptr %26, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29, !prof !20

29:                                               ; preds = %14
  call void @schedule() #14
  br label %30

30:                                               ; preds = %29, %14
  %31 = call i32 @hrtimer_try_to_cancel(ptr noundef nonnull %5) #14
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %33, %30
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !33
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !34
  %34 = call i32 @hrtimer_try_to_cancel(ptr noundef nonnull %5) #14
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %33, label %36

36:                                               ; preds = %33, %30
  %37 = tail call ptr @llvm.thread.pointer() #14
  %38 = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 1
  store volatile i32 0, ptr %38, align 8
  %39 = load ptr, ptr %26, align 8
  %40 = icmp eq ptr %39, null
  %41 = select i1 %40, i32 0, i32 -4
  br label %42

42:                                               ; preds = %36, %13, %10
  %43 = phi i32 [ 0, %10 ], [ %41, %36 ], [ -4, %13 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #14
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @schedule_hrtimeout_range(ptr noundef %0, i64 noundef %1, i32 noundef %2) #6 section ".sched.text" {
  %4 = tail call i32 @schedule_hrtimeout_range_clock(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef 1)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @schedule_hrtimeout(ptr noundef %0, i32 noundef %1) #6 section ".sched.text" {
  %3 = tail call i32 @schedule_hrtimeout_range_clock(ptr noundef %0, i64 noundef 0, i32 noundef %1, i32 noundef 1) #14
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clock_was_set_work(ptr nocapture noundef readnone %0) #6 {
  tail call void @clock_was_set(i32 noundef 170)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_nohz_timer_target() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @timerqueue_add(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_hrtimer_start(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_hrtimer_cancel(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @timerqueue_del(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @timerqueue_iterate_next(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_hrtimer_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_update_offsets_now(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_hrtimer_expire_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_hrtimer_expire_exit(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tick_init_highres() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_setup_sched_timer() local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hrtimer_wakeup(ptr nocapture noundef %0) #6 {
  %2 = getelementptr inbounds %struct.hrtimer_sleeper, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  store ptr null, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @wake_up_process(ptr noundef nonnull %3) #14
  br label %7

7:                                                ; preds = %5, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_old_timespec32(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #12

attributes #0 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind readonly }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind readonly willreturn }
attributes #17 = { cold nounwind }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2148695817, i64 2148696097, i64 2148696431, i64 2148696765}
!11 = !{i64 686618}
!12 = !{!"auto-init"}
!13 = !{i32 0, i32 33}
!14 = !{i64 2154212165}
!15 = !{i64 2154212225}
!16 = !{i64 2149287707}
!17 = !{i64 2149283531}
!18 = !{i64 2149283606, i64 2149283633, i64 2149283680, i64 2149283702, i64 2149283730, i64 2149283750}
!19 = !{i64 2149310710}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{i64 2149476862, i64 2149477348, i64 2149476899, i64 2149476955, i64 2149476989, i64 2149477013, i64 2149477054, i64 2149477075, i64 2149477103, i64 2149477137}
!22 = !{i64 2154179185}
!23 = !{i64 2154179027}
!24 = !{!"branch_weights", i32 2002, i32 2000}
!25 = !{i64 2154040242}
!26 = !{i64 2154040406}
!27 = !{i64 2154246489}
!28 = !{i64 2154246331}
!29 = !{i64 2154246633}
!30 = !{i64 2149706770}
!31 = !{i64 2154093108}
!32 = !{i64 2154093262}
!33 = !{i64 2149734947}
!34 = !{i64 2149734789}
!35 = !{i64 2154023972}
!36 = !{i64 2154024152}
!37 = !{i64 2154260246, i64 2154260733, i64 2154260283, i64 2154260339, i64 2154260373, i64 2154260397, i64 2154260438, i64 2154260459, i64 2154260487, i64 2154260521}
!38 = !{i64 2149708603}
!39 = !{i64 2154056567}
!40 = !{i64 2154056743}
!41 = !{i64 2154072963}
!42 = !{i64 2154073127}
!43 = !{i8 0, i8 2}
!44 = !{i64 2154271544, i64 2154272031, i64 2154271581, i64 2154271637, i64 2154271671, i64 2154271695, i64 2154271736, i64 2154271757, i64 2154271785, i64 2154271819}
!45 = !{i64 2154275158}
!46 = !{i64 2153795366}
!47 = !{i64 2154295240, i64 2154295727, i64 2154295277, i64 2154295333, i64 2154295367, i64 2154295391, i64 2154295432, i64 2154295453, i64 2154295481, i64 2154295515}
!48 = !{i64 2148870975}
!49 = !{i64 679948}
!50 = !{i64 2154294202, i64 2154294689, i64 2154294239, i64 2154294295, i64 2154294329, i64 2154294353, i64 2154294394, i64 2154294415, i64 2154294443, i64 2154294477}
!51 = !{i64 679758}
