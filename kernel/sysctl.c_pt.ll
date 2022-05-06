; ModuleID = '/llk/IR/kernel/sysctl.c_pt.bc'
source_filename = "../kernel/sysctl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_proc_dou8vec_minmax:\09\09\09\09\09"
module asm "\09.asciz \09\22proc_dou8vec_minmax\22\09\09\09\09\09"
module asm "__kstrtabns_proc_dou8vec_minmax:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_proc_dobool:\09\09\09\09\09"
module asm "\09.asciz \09\22proc_dobool\22\09\09\09\09\09"
module asm "__kstrtabns_proc_dobool:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_proc_dointvec:\09\09\09\09\09"
module asm "\09.asciz \09\22proc_dointvec\22\09\09\09\09\09"
module asm "__kstrtabns_proc_dointvec:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_proc_douintvec:\09\09\09\09\09"
module asm "\09.asciz \09\22proc_douintvec\22\09\09\09\09\09"
module asm "__kstrtabns_proc_douintvec:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_proc_dointvec_jiffies:\09\09\09\09\09"
module asm "\09.asciz \09\22proc_dointvec_jiffies\22\09\09\09\09\09"
module asm "__kstrtabns_proc_dointvec_jiffies:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_proc_dointvec_minmax:\09\09\09\09\09"
module asm "\09.asciz \09\22proc_dointvec_minmax\22\09\09\09\09\09"
module asm "__kstrtabns_proc_dointvec_minmax:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_proc_douintvec_minmax:\09\09\09\09\09"
module asm "\09.asciz \09\22proc_douintvec_minmax\22\09\09\09\09\09"
module asm "__kstrtabns_proc_douintvec_minmax:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_proc_dointvec_userhz_jiffies:\09\09\09\09\09"
module asm "\09.asciz \09\22proc_dointvec_userhz_jiffies\22\09\09\09\09\09"
module asm "__kstrtabns_proc_dointvec_userhz_jiffies:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_proc_dointvec_ms_jiffies:\09\09\09\09\09"
module asm "\09.asciz \09\22proc_dointvec_ms_jiffies\22\09\09\09\09\09"
module asm "__kstrtabns_proc_dointvec_ms_jiffies:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_proc_dostring:\09\09\09\09\09"
module asm "\09.asciz \09\22proc_dostring\22\09\09\09\09\09"
module asm "__kstrtabns_proc_dostring:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_proc_doulongvec_minmax:\09\09\09\09\09"
module asm "\09.asciz \09\22proc_doulongvec_minmax\22\09\09\09\09\09"
module asm "__kstrtabns_proc_doulongvec_minmax:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_proc_doulongvec_ms_jiffies_minmax:\09\09\09\09\09"
module asm "\09.asciz \09\22proc_doulongvec_ms_jiffies_minmax\22\09\09\09\09\09"
module asm "__kstrtabns_proc_doulongvec_ms_jiffies_minmax:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_proc_do_large_bitmap:\09\09\09\09\09"
module asm "\09.asciz \09\22proc_do_large_bitmap\22\09\09\09\09\09"
module asm "__kstrtabns_proc_do_large_bitmap:\09\09\09\09\09"
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
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.192, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.restart_block = type { i32, ptr, %union.anon.159 }
%union.anon.159 = type { %struct.anon.160 }
%struct.anon.160 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.192 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.do_proc_dointvec_minmax_conv_param = type { ptr, ptr }
%struct.do_proc_douintvec_minmax_conv_param = type { ptr, ptr }

@__kstrtab_proc_dou8vec_minmax = external dso_local constant [0 x i8], align 1
@__kstrtabns_proc_dou8vec_minmax = external dso_local constant [0 x i8], align 1
@__ksymtab_proc_dou8vec_minmax = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @proc_dou8vec_minmax to i32), ptr @__kstrtab_proc_dou8vec_minmax, ptr @__kstrtabns_proc_dou8vec_minmax }, section "___ksymtab_gpl+proc_dou8vec_minmax", align 4
@__const.proc_do_large_bitmap.tr_a = private unnamed_addr constant [3 x i8] c"-,\0A", align 1
@__const.proc_do_large_bitmap.tr_b = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@proc_do_static_key.static_key_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @proc_do_static_key.static_key_mutex, i64 12), ptr getelementptr (i8, ptr @proc_do_static_key.static_key_mutex, i64 12) } }, align 4
@sysctl_vals = external dso_local constant [0 x i32], align 4
@kernel_base_table = internal global [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.6, ptr null, i32 0, i16 365, ptr @kern_table, ptr null, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], align 4
@vm_base_table = internal global [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.51, ptr null, i32 0, i16 365, ptr @vm_table, ptr null, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], align 4
@debug_base_table = internal global [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.89, ptr null, i32 0, i16 365, ptr @debug_table, ptr null, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], align 4
@dev_base_table = internal global [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.90, ptr null, i32 0, i16 365, ptr @dev_table, ptr null, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], align 4
@__kstrtab_proc_dobool = external dso_local constant [0 x i8], align 1
@__kstrtabns_proc_dobool = external dso_local constant [0 x i8], align 1
@__ksymtab_proc_dobool = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @proc_dobool to i32), ptr @__kstrtab_proc_dobool, ptr @__kstrtabns_proc_dobool }, section "___ksymtab+proc_dobool", align 4
@__kstrtab_proc_dointvec = external dso_local constant [0 x i8], align 1
@__kstrtabns_proc_dointvec = external dso_local constant [0 x i8], align 1
@__ksymtab_proc_dointvec = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @proc_dointvec to i32), ptr @__kstrtab_proc_dointvec, ptr @__kstrtabns_proc_dointvec }, section "___ksymtab+proc_dointvec", align 4
@__kstrtab_proc_douintvec = external dso_local constant [0 x i8], align 1
@__kstrtabns_proc_douintvec = external dso_local constant [0 x i8], align 1
@__ksymtab_proc_douintvec = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @proc_douintvec to i32), ptr @__kstrtab_proc_douintvec, ptr @__kstrtabns_proc_douintvec }, section "___ksymtab+proc_douintvec", align 4
@__kstrtab_proc_dointvec_jiffies = external dso_local constant [0 x i8], align 1
@__kstrtabns_proc_dointvec_jiffies = external dso_local constant [0 x i8], align 1
@__ksymtab_proc_dointvec_jiffies = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @proc_dointvec_jiffies to i32), ptr @__kstrtab_proc_dointvec_jiffies, ptr @__kstrtabns_proc_dointvec_jiffies }, section "___ksymtab+proc_dointvec_jiffies", align 4
@__kstrtab_proc_dointvec_minmax = external dso_local constant [0 x i8], align 1
@__kstrtabns_proc_dointvec_minmax = external dso_local constant [0 x i8], align 1
@__ksymtab_proc_dointvec_minmax = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @proc_dointvec_minmax to i32), ptr @__kstrtab_proc_dointvec_minmax, ptr @__kstrtabns_proc_dointvec_minmax }, section "___ksymtab+proc_dointvec_minmax", align 4
@__kstrtab_proc_douintvec_minmax = external dso_local constant [0 x i8], align 1
@__kstrtabns_proc_douintvec_minmax = external dso_local constant [0 x i8], align 1
@__ksymtab_proc_douintvec_minmax = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @proc_douintvec_minmax to i32), ptr @__kstrtab_proc_douintvec_minmax, ptr @__kstrtabns_proc_douintvec_minmax }, section "___ksymtab_gpl+proc_douintvec_minmax", align 4
@__kstrtab_proc_dointvec_userhz_jiffies = external dso_local constant [0 x i8], align 1
@__kstrtabns_proc_dointvec_userhz_jiffies = external dso_local constant [0 x i8], align 1
@__ksymtab_proc_dointvec_userhz_jiffies = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @proc_dointvec_userhz_jiffies to i32), ptr @__kstrtab_proc_dointvec_userhz_jiffies, ptr @__kstrtabns_proc_dointvec_userhz_jiffies }, section "___ksymtab+proc_dointvec_userhz_jiffies", align 4
@__kstrtab_proc_dointvec_ms_jiffies = external dso_local constant [0 x i8], align 1
@__kstrtabns_proc_dointvec_ms_jiffies = external dso_local constant [0 x i8], align 1
@__ksymtab_proc_dointvec_ms_jiffies = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @proc_dointvec_ms_jiffies to i32), ptr @__kstrtab_proc_dointvec_ms_jiffies, ptr @__kstrtabns_proc_dointvec_ms_jiffies }, section "___ksymtab+proc_dointvec_ms_jiffies", align 4
@__kstrtab_proc_dostring = external dso_local constant [0 x i8], align 1
@__kstrtabns_proc_dostring = external dso_local constant [0 x i8], align 1
@__ksymtab_proc_dostring = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @proc_dostring to i32), ptr @__kstrtab_proc_dostring, ptr @__kstrtabns_proc_dostring }, section "___ksymtab+proc_dostring", align 4
@__kstrtab_proc_doulongvec_minmax = external dso_local constant [0 x i8], align 1
@__kstrtabns_proc_doulongvec_minmax = external dso_local constant [0 x i8], align 1
@__ksymtab_proc_doulongvec_minmax = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @proc_doulongvec_minmax to i32), ptr @__kstrtab_proc_doulongvec_minmax, ptr @__kstrtabns_proc_doulongvec_minmax }, section "___ksymtab+proc_doulongvec_minmax", align 4
@__kstrtab_proc_doulongvec_ms_jiffies_minmax = external dso_local constant [0 x i8], align 1
@__kstrtabns_proc_doulongvec_ms_jiffies_minmax = external dso_local constant [0 x i8], align 1
@__ksymtab_proc_doulongvec_ms_jiffies_minmax = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @proc_doulongvec_ms_jiffies_minmax to i32), ptr @__kstrtab_proc_doulongvec_ms_jiffies_minmax, ptr @__kstrtabns_proc_doulongvec_ms_jiffies_minmax }, section "___ksymtab+proc_doulongvec_ms_jiffies_minmax", align 4
@__kstrtab_proc_do_large_bitmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_proc_do_large_bitmap = external dso_local constant [0 x i8], align 1
@__ksymtab_proc_do_large_bitmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @proc_do_large_bitmap to i32), ptr @__kstrtab_proc_do_large_bitmap, ptr @__kstrtabns_proc_do_large_bitmap }, section "___ksymtab+proc_do_large_bitmap", align 4
@sysctl_legacy_va_layout = dso_local global i32 0, align 4
@sysctl_writes_strict = internal global i32 1, align 4
@warn_sysctl_write.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [152 x i8] c"\014%s wrote to %s when file position was not 0!\0AThis will not be supported in the future. To silence this\0Awarning, set kernel.sysctl_writes_strict = -1\0A\00", align 1
@proc_wspace_sep = internal constant [3 x i8] c" \09\0A", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s%lu\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@static_key_initialized = external dso_local local_unnamed_addr global i8, align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"include/linux/jump_label.h\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"%s(): static key '%pS' used before call to jump_label_init()\00", align 1
@__func__.static_key_enable = private unnamed_addr constant [18 x i8] c"static_key_enable\00", align 1
@static_key_enable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.static_key_disable = private unnamed_addr constant [19 x i8] c"static_key_disable\00", align 1
@static_key_disable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@kern_table = internal global [45 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.7, ptr @sysctl_sched_child_runs_first, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.8, ptr @sysctl_sched_rt_period, i32 4, i16 420, ptr null, ptr @sched_rt_handler, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.9, ptr @sysctl_sched_rt_runtime, i32 4, i16 420, ptr null, ptr @sched_rt_handler, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.10, ptr @sysctl_sched_dl_period_max, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.11, ptr @sysctl_sched_dl_period_min, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.12, ptr @sysctl_sched_rr_timeslice, i32 4, i16 420, ptr null, ptr @sched_rr_handler, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.13, ptr @panic_timeout, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.14, ptr null, i32 4, i16 420, ptr null, ptr @proc_taint, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.15, ptr @sysctl_writes_strict, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @sysctl_vals, ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.16, ptr @real_root_dev, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.17, ptr @print_fatal_signals, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.18, ptr @C_A_D, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.19, ptr @ftrace_dump_on_oops, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.20, ptr @__disable_trace_on_warning, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.21, ptr @tracepoint_printk, i32 4, i16 420, ptr null, ptr @tracepoint_printk_sysctl, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.22, ptr @kexec_load_disabled, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 8), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.23, ptr @modprobe_path, i32 256, i16 420, ptr null, ptr @proc_dostring, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.24, ptr @modules_disabled, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 8), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.25, ptr null, i32 4, i16 420, ptr null, ptr @sysrq_sysctl_handler, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.26, ptr null, i32 4, i16 384, ptr null, ptr @proc_do_cad_pid, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.27, ptr null, i32 4, i16 420, ptr null, ptr @sysctl_max_threads, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.28, ptr null, i32 0, i16 365, ptr @usermodehelper_table, ptr null, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.29, ptr @overflowuid, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 40) }, %struct.ctl_table { ptr @.str.30, ptr @overflowgid, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 40) }, %struct.ctl_table { ptr @.str.31, ptr @sysctl_oops_all_cpu_backtrace, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.32, ptr @pid_max, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @pid_max_min, ptr @pid_max_max }, %struct.ctl_table { ptr @.str.33, ptr @panic_on_oops, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.34, ptr @panic_print, i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.35, ptr @ngroups_max, i32 4, i16 292, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.36, ptr @cap_last_cap, i32 4, i16 292, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.37, ptr @randomize_va_space, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.38, ptr @max_lock_depth, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.39, ptr @poweroff_cmd, i32 256, i16 420, ptr null, ptr @proc_dostring, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.40, ptr null, i32 0, i16 365, ptr @key_sysctls, ptr null, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.41, ptr @sysctl_perf_event_paranoid, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.42, ptr @sysctl_perf_event_mlock, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.43, ptr @sysctl_perf_event_sample_rate, i32 4, i16 420, ptr null, ptr @perf_proc_update_handler, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 8), ptr null }, %struct.ctl_table { ptr @.str.44, ptr @sysctl_perf_cpu_time_max_percent, i32 4, i16 420, ptr null, ptr @perf_cpu_time_max_percent_handler, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 20) }, %struct.ctl_table { ptr @.str.45, ptr @sysctl_perf_event_max_stack, i32 4, i16 420, ptr null, ptr @perf_event_max_stack_handler, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr @six_hundred_forty_kb }, %struct.ctl_table { ptr @.str.46, ptr @sysctl_perf_event_max_contexts_per_stack, i32 4, i16 420, ptr null, ptr @perf_event_max_stack_handler, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 28) }, %struct.ctl_table { ptr @.str.47, ptr @panic_on_warn, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.48, ptr @sysctl_timer_migration, i32 4, i16 420, ptr null, ptr @timer_migration_handler, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.49, ptr @sysctl_panic_on_rcu_stall, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.50, ptr @sysctl_max_rcu_stall_to_panic, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 8), ptr getelementptr (i8, ptr @sysctl_vals, i64 36) }, %struct.ctl_table zeroinitializer], align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"sched_child_runs_first\00", align 1
@sysctl_sched_child_runs_first = external dso_local global i32, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"sched_rt_period_us\00", align 1
@sysctl_sched_rt_period = external dso_local global i32, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"sched_rt_runtime_us\00", align 1
@sysctl_sched_rt_runtime = external dso_local global i32, align 4
@.str.10 = private unnamed_addr constant [29 x i8] c"sched_deadline_period_max_us\00", align 1
@sysctl_sched_dl_period_max = external dso_local global i32, align 4
@.str.11 = private unnamed_addr constant [29 x i8] c"sched_deadline_period_min_us\00", align 1
@sysctl_sched_dl_period_min = external dso_local global i32, align 4
@.str.12 = private unnamed_addr constant [22 x i8] c"sched_rr_timeslice_ms\00", align 1
@sysctl_sched_rr_timeslice = external dso_local global i32, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"panic\00", align 1
@panic_timeout = external dso_local global i32, align 4
@.str.14 = private unnamed_addr constant [8 x i8] c"tainted\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"sysctl_writes_strict\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"real-root-dev\00", align 1
@real_root_dev = external dso_local global i32, align 4
@.str.17 = private unnamed_addr constant [20 x i8] c"print-fatal-signals\00", align 1
@print_fatal_signals = external dso_local global i32, align 4
@.str.18 = private unnamed_addr constant [13 x i8] c"ctrl-alt-del\00", align 1
@C_A_D = external dso_local global i32, align 4
@.str.19 = private unnamed_addr constant [20 x i8] c"ftrace_dump_on_oops\00", align 1
@ftrace_dump_on_oops = external dso_local global i32, align 4
@.str.20 = private unnamed_addr constant [20 x i8] c"traceoff_on_warning\00", align 1
@__disable_trace_on_warning = external dso_local global i32, align 4
@.str.21 = private unnamed_addr constant [18 x i8] c"tracepoint_printk\00", align 1
@tracepoint_printk = external dso_local global i32, align 4
@.str.22 = private unnamed_addr constant [20 x i8] c"kexec_load_disabled\00", align 1
@kexec_load_disabled = external dso_local global i32, align 4
@.str.23 = private unnamed_addr constant [9 x i8] c"modprobe\00", align 1
@modprobe_path = external dso_local global [0 x i8], align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"modules_disabled\00", align 1
@modules_disabled = external dso_local global i32, align 4
@.str.25 = private unnamed_addr constant [6 x i8] c"sysrq\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"cad_pid\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"threads-max\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"usermodehelper\00", align 1
@usermodehelper_table = external dso_local global [0 x %struct.ctl_table], align 4
@.str.29 = private unnamed_addr constant [12 x i8] c"overflowuid\00", align 1
@overflowuid = external dso_local global i32, align 4
@.str.30 = private unnamed_addr constant [12 x i8] c"overflowgid\00", align 1
@overflowgid = external dso_local global i32, align 4
@.str.31 = private unnamed_addr constant [23 x i8] c"oops_all_cpu_backtrace\00", align 1
@sysctl_oops_all_cpu_backtrace = external dso_local global i32, align 4
@.str.32 = private unnamed_addr constant [8 x i8] c"pid_max\00", align 1
@pid_max = external dso_local global i32, align 4
@pid_max_min = external dso_local global i32, align 4
@pid_max_max = external dso_local global i32, align 4
@.str.33 = private unnamed_addr constant [14 x i8] c"panic_on_oops\00", align 1
@panic_on_oops = external dso_local global i32, align 4
@.str.34 = private unnamed_addr constant [12 x i8] c"panic_print\00", align 1
@panic_print = external dso_local global i32, align 4
@.str.35 = private unnamed_addr constant [12 x i8] c"ngroups_max\00", align 1
@ngroups_max = internal constant i32 65536, align 4
@.str.36 = private unnamed_addr constant [13 x i8] c"cap_last_cap\00", align 1
@cap_last_cap = internal constant i32 40, align 4
@.str.37 = private unnamed_addr constant [19 x i8] c"randomize_va_space\00", align 1
@randomize_va_space = external dso_local global i32, align 4
@.str.38 = private unnamed_addr constant [15 x i8] c"max_lock_depth\00", align 1
@max_lock_depth = external dso_local global i32, align 4
@.str.39 = private unnamed_addr constant [13 x i8] c"poweroff_cmd\00", align 1
@poweroff_cmd = external dso_local global [256 x i8], align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"keys\00", align 1
@key_sysctls = external dso_local global [0 x %struct.ctl_table], align 4
@.str.41 = private unnamed_addr constant [20 x i8] c"perf_event_paranoid\00", align 1
@sysctl_perf_event_paranoid = external dso_local global i32, align 4
@.str.42 = private unnamed_addr constant [20 x i8] c"perf_event_mlock_kb\00", align 1
@sysctl_perf_event_mlock = external dso_local global i32, align 4
@.str.43 = private unnamed_addr constant [27 x i8] c"perf_event_max_sample_rate\00", align 1
@sysctl_perf_event_sample_rate = external dso_local global i32, align 4
@.str.44 = private unnamed_addr constant [26 x i8] c"perf_cpu_time_max_percent\00", align 1
@sysctl_perf_cpu_time_max_percent = external dso_local global i32, align 4
@.str.45 = private unnamed_addr constant [21 x i8] c"perf_event_max_stack\00", align 1
@sysctl_perf_event_max_stack = external dso_local global i32, align 4
@six_hundred_forty_kb = internal constant i32 655360, align 4
@.str.46 = private unnamed_addr constant [34 x i8] c"perf_event_max_contexts_per_stack\00", align 1
@sysctl_perf_event_max_contexts_per_stack = external dso_local global i32, align 4
@.str.47 = private unnamed_addr constant [14 x i8] c"panic_on_warn\00", align 1
@panic_on_warn = external dso_local global i32, align 4
@.str.48 = private unnamed_addr constant [16 x i8] c"timer_migration\00", align 1
@sysctl_timer_migration = external dso_local global i32, align 4
@.str.49 = private unnamed_addr constant [19 x i8] c"panic_on_rcu_stall\00", align 1
@sysctl_panic_on_rcu_stall = external dso_local global i32, align 4
@.str.50 = private unnamed_addr constant [23 x i8] c"max_rcu_stall_to_panic\00", align 1
@sysctl_max_rcu_stall_to_panic = external dso_local global i32, align 4
@panic_on_taint_nousertaint = external dso_local local_unnamed_addr global i8, align 1
@panic_on_taint = external dso_local local_unnamed_addr global i32, align 4
@cad_pid = external dso_local global ptr, align 4
@.str.51 = private unnamed_addr constant [3 x i8] c"vm\00", align 1
@vm_table = internal global [38 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.52, ptr @sysctl_overcommit_memory, i32 4, i16 420, ptr null, ptr @overcommit_policy_handler, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 12) }, %struct.ctl_table { ptr @.str.53, ptr @sysctl_panic_on_oom, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 12) }, %struct.ctl_table { ptr @.str.54, ptr @sysctl_oom_kill_allocating_task, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.55, ptr @sysctl_oom_dump_tasks, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.56, ptr @sysctl_overcommit_ratio, i32 4, i16 420, ptr null, ptr @overcommit_ratio_handler, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.57, ptr @sysctl_overcommit_kbytes, i32 4, i16 420, ptr null, ptr @overcommit_kbytes_handler, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.58, ptr @page_cluster, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr null }, %struct.ctl_table { ptr @.str.59, ptr @dirty_background_ratio, i32 4, i16 420, ptr null, ptr @dirty_background_ratio_handler, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 20) }, %struct.ctl_table { ptr @.str.60, ptr @dirty_background_bytes, i32 4, i16 420, ptr null, ptr @dirty_background_bytes_handler, ptr null, ptr getelementptr (i8, ptr @sysctl_long_vals, i64 4), ptr null }, %struct.ctl_table { ptr @.str.61, ptr @vm_dirty_ratio, i32 4, i16 420, ptr null, ptr @dirty_ratio_handler, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 20) }, %struct.ctl_table { ptr @.str.62, ptr @vm_dirty_bytes, i32 4, i16 420, ptr null, ptr @dirty_bytes_handler, ptr null, ptr @dirty_bytes_min, ptr null }, %struct.ctl_table { ptr @.str.63, ptr @dirty_writeback_interval, i32 4, i16 420, ptr null, ptr @dirty_writeback_centisecs_handler, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.64, ptr @dirty_expire_interval, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr null }, %struct.ctl_table { ptr @.str.65, ptr @dirtytime_expire_interval, i32 4, i16 420, ptr null, ptr @dirtytime_interval_handler, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr null }, %struct.ctl_table { ptr @.str.66, ptr @vm_swappiness, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 24) }, %struct.ctl_table { ptr @.str.67, ptr @sysctl_lowmem_reserve_ratio, i32 16, i16 420, ptr null, ptr @lowmem_reserve_ratio_sysctl_handler, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.68, ptr @sysctl_drop_caches, i32 4, i16 128, ptr null, ptr @drop_caches_sysctl_handler, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 8), ptr getelementptr (i8, ptr @sysctl_vals, i64 16) }, %struct.ctl_table { ptr @.str.69, ptr null, i32 4, i16 128, ptr null, ptr @sysctl_compaction_handler, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.70, ptr @sysctl_compaction_proactiveness, i32 4, i16 420, ptr null, ptr @compaction_proactiveness_sysctl_handler, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 20) }, %struct.ctl_table { ptr @.str.71, ptr @sysctl_extfrag_threshold, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr @max_extfrag_threshold }, %struct.ctl_table { ptr @.str.72, ptr @sysctl_compact_unevictable_allowed, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax_warn_RT_change, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.73, ptr @min_free_kbytes, i32 4, i16 420, ptr null, ptr @min_free_kbytes_sysctl_handler, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr null }, %struct.ctl_table { ptr @.str.74, ptr @watermark_boost_factor, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr null }, %struct.ctl_table { ptr @.str.75, ptr @watermark_scale_factor, i32 4, i16 420, ptr null, ptr @watermark_scale_factor_sysctl_handler, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 8), ptr getelementptr (i8, ptr @sysctl_vals, i64 32) }, %struct.ctl_table { ptr @.str.76, ptr @percpu_pagelist_high_fraction, i32 4, i16 420, ptr null, ptr @percpu_pagelist_high_fraction_sysctl_handler, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr null }, %struct.ctl_table { ptr @.str.77, ptr @sysctl_page_lock_unfairness, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr null }, %struct.ctl_table { ptr @.str.78, ptr @sysctl_max_map_count, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr null }, %struct.ctl_table { ptr @.str.79, ptr @laptop_mode, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.80, ptr @sysctl_vfs_cache_pressure, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr null }, %struct.ctl_table { ptr @.str.81, ptr @sysctl_legacy_va_layout, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr null }, %struct.ctl_table { ptr @.str.82, ptr @sysctl_stat_interval, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.83, ptr null, i32 0, i16 384, ptr null, ptr @vmstat_refresh, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.84, ptr @dac_mmap_min_addr, i32 4, i16 420, ptr null, ptr @mmap_min_addr_handler, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.85, ptr @vm_highmem_is_dirtyable, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.86, ptr @sysctl_user_reserve_kbytes, i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.87, ptr @sysctl_admin_reserve_kbytes, i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.88, ptr @mmap_rnd_bits, i32 4, i16 384, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @mmap_rnd_bits_min, ptr @mmap_rnd_bits_max }, %struct.ctl_table zeroinitializer], align 4
@.str.52 = private unnamed_addr constant [18 x i8] c"overcommit_memory\00", align 1
@sysctl_overcommit_memory = external dso_local global i32, align 4
@.str.53 = private unnamed_addr constant [13 x i8] c"panic_on_oom\00", align 1
@sysctl_panic_on_oom = external dso_local global i32, align 4
@.str.54 = private unnamed_addr constant [25 x i8] c"oom_kill_allocating_task\00", align 1
@sysctl_oom_kill_allocating_task = external dso_local global i32, align 4
@.str.55 = private unnamed_addr constant [15 x i8] c"oom_dump_tasks\00", align 1
@sysctl_oom_dump_tasks = external dso_local global i32, align 4
@.str.56 = private unnamed_addr constant [17 x i8] c"overcommit_ratio\00", align 1
@sysctl_overcommit_ratio = external dso_local global i32, align 4
@.str.57 = private unnamed_addr constant [18 x i8] c"overcommit_kbytes\00", align 1
@sysctl_overcommit_kbytes = external dso_local global i32, align 4
@.str.58 = private unnamed_addr constant [13 x i8] c"page-cluster\00", align 1
@page_cluster = external dso_local global i32, align 4
@.str.59 = private unnamed_addr constant [23 x i8] c"dirty_background_ratio\00", align 1
@dirty_background_ratio = external dso_local global i32, align 4
@.str.60 = private unnamed_addr constant [23 x i8] c"dirty_background_bytes\00", align 1
@dirty_background_bytes = external dso_local global i32, align 4
@sysctl_long_vals = external dso_local constant [0 x i32], align 4
@.str.61 = private unnamed_addr constant [12 x i8] c"dirty_ratio\00", align 1
@vm_dirty_ratio = external dso_local global i32, align 4
@.str.62 = private unnamed_addr constant [12 x i8] c"dirty_bytes\00", align 1
@vm_dirty_bytes = external dso_local global i32, align 4
@dirty_bytes_min = internal constant i32 8192, align 4
@.str.63 = private unnamed_addr constant [26 x i8] c"dirty_writeback_centisecs\00", align 1
@dirty_writeback_interval = external dso_local global i32, align 4
@.str.64 = private unnamed_addr constant [23 x i8] c"dirty_expire_centisecs\00", align 1
@dirty_expire_interval = external dso_local global i32, align 4
@.str.65 = private unnamed_addr constant [25 x i8] c"dirtytime_expire_seconds\00", align 1
@dirtytime_expire_interval = external dso_local global i32, align 4
@.str.66 = private unnamed_addr constant [11 x i8] c"swappiness\00", align 1
@vm_swappiness = external dso_local global i32, align 4
@.str.67 = private unnamed_addr constant [21 x i8] c"lowmem_reserve_ratio\00", align 1
@sysctl_lowmem_reserve_ratio = external dso_local global [4 x i32], align 4
@.str.68 = private unnamed_addr constant [12 x i8] c"drop_caches\00", align 1
@sysctl_drop_caches = external dso_local global i32, align 4
@.str.69 = private unnamed_addr constant [15 x i8] c"compact_memory\00", align 1
@.str.70 = private unnamed_addr constant [25 x i8] c"compaction_proactiveness\00", align 1
@sysctl_compaction_proactiveness = external dso_local global i32, align 4
@.str.71 = private unnamed_addr constant [18 x i8] c"extfrag_threshold\00", align 1
@sysctl_extfrag_threshold = external dso_local global i32, align 4
@max_extfrag_threshold = internal constant i32 1000, align 4
@.str.72 = private unnamed_addr constant [28 x i8] c"compact_unevictable_allowed\00", align 1
@sysctl_compact_unevictable_allowed = external dso_local global i32, align 4
@.str.73 = private unnamed_addr constant [16 x i8] c"min_free_kbytes\00", align 1
@min_free_kbytes = external dso_local global i32, align 4
@.str.74 = private unnamed_addr constant [23 x i8] c"watermark_boost_factor\00", align 1
@watermark_boost_factor = external dso_local global i32, align 4
@.str.75 = private unnamed_addr constant [23 x i8] c"watermark_scale_factor\00", align 1
@watermark_scale_factor = external dso_local global i32, align 4
@.str.76 = private unnamed_addr constant [30 x i8] c"percpu_pagelist_high_fraction\00", align 1
@percpu_pagelist_high_fraction = external dso_local global i32, align 4
@.str.77 = private unnamed_addr constant [21 x i8] c"page_lock_unfairness\00", align 1
@sysctl_page_lock_unfairness = external dso_local global i32, align 4
@.str.78 = private unnamed_addr constant [14 x i8] c"max_map_count\00", align 1
@sysctl_max_map_count = external dso_local global i32, align 4
@.str.79 = private unnamed_addr constant [12 x i8] c"laptop_mode\00", align 1
@laptop_mode = external dso_local global i32, align 4
@.str.80 = private unnamed_addr constant [19 x i8] c"vfs_cache_pressure\00", align 1
@sysctl_vfs_cache_pressure = external dso_local global i32, align 4
@.str.81 = private unnamed_addr constant [17 x i8] c"legacy_va_layout\00", align 1
@.str.82 = private unnamed_addr constant [14 x i8] c"stat_interval\00", align 1
@sysctl_stat_interval = external dso_local global i32, align 4
@.str.83 = private unnamed_addr constant [13 x i8] c"stat_refresh\00", align 1
@.str.84 = private unnamed_addr constant [14 x i8] c"mmap_min_addr\00", align 1
@dac_mmap_min_addr = external dso_local global i32, align 4
@.str.85 = private unnamed_addr constant [21 x i8] c"highmem_is_dirtyable\00", align 1
@vm_highmem_is_dirtyable = external dso_local global i32, align 4
@.str.86 = private unnamed_addr constant [20 x i8] c"user_reserve_kbytes\00", align 1
@sysctl_user_reserve_kbytes = external dso_local global i32, align 4
@.str.87 = private unnamed_addr constant [21 x i8] c"admin_reserve_kbytes\00", align 1
@sysctl_admin_reserve_kbytes = external dso_local global i32, align 4
@.str.88 = private unnamed_addr constant [14 x i8] c"mmap_rnd_bits\00", align 1
@mmap_rnd_bits = external dso_local global i32, section ".data..read_mostly", align 4
@mmap_rnd_bits_min = external dso_local constant i32, align 4
@mmap_rnd_bits_max = external dso_local constant i32, align 4
@.str.89 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@debug_table = internal global [1 x %struct.ctl_table] zeroinitializer, align 4
@.str.90 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@dev_table = internal global [1 x %struct.ctl_table] zeroinitializer, align 4
@llvm.compiler.used = appending global [13 x ptr] [ptr @__ksymtab_proc_do_large_bitmap, ptr @__ksymtab_proc_dobool, ptr @__ksymtab_proc_dointvec, ptr @__ksymtab_proc_dointvec_jiffies, ptr @__ksymtab_proc_dointvec_minmax, ptr @__ksymtab_proc_dointvec_ms_jiffies, ptr @__ksymtab_proc_dointvec_userhz_jiffies, ptr @__ksymtab_proc_dostring, ptr @__ksymtab_proc_dou8vec_minmax, ptr @__ksymtab_proc_douintvec, ptr @__ksymtab_proc_douintvec_minmax, ptr @__ksymtab_proc_doulongvec_minmax, ptr @__ksymtab_proc_doulongvec_ms_jiffies_minmax], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @proc_dostring(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) #0 {
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %5
  %8 = load i64, ptr %4, align 8
  %9 = icmp ne i64 %8, 0
  %10 = load i32, ptr @sysctl_writes_strict, align 4
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %20

13:                                               ; preds = %7
  %14 = load i1, ptr @warn_sysctl_write.__already_done, align 1
  br i1 %14, label %20, label %15, !prof !8

15:                                               ; preds = %13
  store i1 true, ptr @warn_sysctl_write.__already_done, align 1
  %16 = tail call ptr @llvm.thread.pointer() #13
  %17 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 85
  %18 = load ptr, ptr %0, align 4
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %17, ptr noundef %18) #14
  br label %20

20:                                               ; preds = %15, %13, %7, %5
  %21 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = icmp ne ptr %22, null
  %26 = icmp ne i32 %24, 0
  %27 = and i1 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i32, ptr %3, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %20
  store i32 0, ptr %3, align 4
  br label %102

32:                                               ; preds = %28
  br i1 %6, label %76, label %33

33:                                               ; preds = %32
  %34 = load i32, ptr @sysctl_writes_strict, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i64, ptr %4, align 8
  %38 = add i32 %24, -1
  br label %48

39:                                               ; preds = %33
  %40 = tail call i32 @strlen(ptr noundef nonnull %22) #13
  %41 = add i32 %24, -1
  %42 = tail call i32 @llvm.umin.i32(i32 %40, i32 %41) #13
  %43 = load i64, ptr %4, align 8
  %44 = zext i32 %42 to i64
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %102, label %46

46:                                               ; preds = %39
  %47 = trunc i64 %43 to i32
  br label %48

48:                                               ; preds = %46, %36
  %49 = phi i32 [ %38, %36 ], [ %41, %46 ]
  %50 = phi i64 [ %37, %36 ], [ %43, %46 ]
  %51 = phi i32 [ 0, %36 ], [ %47, %46 ]
  %52 = zext i32 %29 to i64
  %53 = add i64 %50, %52
  store i64 %53, ptr %4, align 8
  %54 = ptrtoint ptr %2 to i32
  %55 = load i32, ptr %3, align 4
  %56 = icmp ne i32 %55, 0
  %57 = icmp ult i32 %51, %49
  %58 = select i1 %56, i1 %57, i1 false
  br i1 %58, label %59, label %73

59:                                               ; preds = %63, %48
  %60 = phi ptr [ %64, %63 ], [ %2, %48 ]
  %61 = phi i32 [ %65, %63 ], [ %51, %48 ]
  %62 = load i8, ptr %60, align 1
  switch i8 %62, label %63 [
    i8 10, label %73
    i8 0, label %73
  ]

63:                                               ; preds = %59
  %64 = getelementptr i8, ptr %60, i32 1
  %65 = add nuw i32 %61, 1
  %66 = getelementptr i8, ptr %22, i32 %61
  store i8 %62, ptr %66, align 1
  %67 = ptrtoint ptr %64 to i32
  %68 = sub i32 %67, %54
  %69 = load i32, ptr %3, align 4
  %70 = icmp ult i32 %68, %69
  %71 = icmp ult i32 %65, %49
  %72 = select i1 %70, i1 %71, i1 false
  br i1 %72, label %59, label %73

73:                                               ; preds = %63, %59, %59, %48
  %74 = phi i32 [ %51, %48 ], [ %65, %63 ], [ %61, %59 ], [ %61, %59 ]
  %75 = getelementptr i8, ptr %22, i32 %74
  store i8 0, ptr %75, align 1
  br label %102

76:                                               ; preds = %32
  %77 = tail call i32 @strlen(ptr noundef nonnull %22) #13
  %78 = tail call i32 @llvm.umin.i32(i32 %77, i32 %24) #13
  %79 = load i64, ptr %4, align 8
  %80 = zext i32 %78 to i64
  %81 = icmp sgt i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  store i32 0, ptr %3, align 4
  br label %102

83:                                               ; preds = %76
  %84 = trunc i64 %79 to i32
  %85 = sub i32 %78, %84
  %86 = tail call i32 @llvm.umin.i32(i32 %85, i32 %29) #13
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %83
  %89 = getelementptr i8, ptr %22, i32 %84
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %2, ptr align 1 %89, i32 %86, i1 false) #13
  %90 = load i32, ptr %3, align 4
  br label %91

91:                                               ; preds = %88, %83
  %92 = phi i32 [ %90, %88 ], [ %29, %83 ]
  %93 = icmp ult i32 %86, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = getelementptr i8, ptr %2, i32 %86
  store i8 10, ptr %95, align 1
  %96 = add nuw i32 %86, 1
  br label %97

97:                                               ; preds = %94, %91
  %98 = phi i32 [ %96, %94 ], [ %86, %91 ]
  store i32 %98, ptr %3, align 4
  %99 = zext i32 %98 to i64
  %100 = load i64, ptr %4, align 8
  %101 = add i64 %100, %99
  store i64 %101, ptr %4, align 8
  br label %102

102:                                              ; preds = %97, %82, %73, %39, %31
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @do_proc_douintvec(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr noundef readonly %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca [22 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca ptr, align 4
  %14 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = load i32, ptr %3, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = load i64, ptr %4, align 8
  %26 = icmp eq i64 %25, 0
  %27 = icmp ne i32 %1, 0
  %28 = or i1 %27, %26
  br i1 %28, label %30, label %29

29:                                               ; preds = %24, %21, %17, %7
  store i32 0, ptr %3, align 4
  br label %96

30:                                               ; preds = %24
  %31 = and i32 %19, -4
  %32 = icmp eq i32 %31, 4
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  store i32 0, ptr %3, align 4
  br label %96

34:                                               ; preds = %30
  %35 = icmp eq ptr %5, null
  %36 = select i1 %35, ptr @do_proc_douintvec_conv, ptr %5
  br i1 %27, label %37, label %75

37:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #13
  store i32 0, ptr %10, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #13
  store i8 0, ptr %12, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #13
  br i1 %26, label %47, label %38

38:                                               ; preds = %37
  %39 = load i32, ptr @sysctl_writes_strict, align 4
  switch i32 %39, label %47 [
    i32 1, label %70
    i32 0, label %40
  ]

40:                                               ; preds = %38
  %41 = load i1, ptr @warn_sysctl_write.__already_done, align 1
  br i1 %41, label %47, label %42, !prof !8

42:                                               ; preds = %40
  store i1 true, ptr @warn_sysctl_write.__already_done, align 1
  %43 = tail call ptr @llvm.thread.pointer() #13
  %44 = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 85
  %45 = load ptr, ptr %0, align 4
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %44, ptr noundef %45) #14
  br label %47

47:                                               ; preds = %42, %40, %38, %37
  %48 = tail call i32 @llvm.umin.i32(i32 %22, i32 4095) #13
  %49 = tail call ptr @skip_spaces(ptr noundef %2) #13
  %50 = ptrtoint ptr %49 to i32
  %51 = ptrtoint ptr %2 to i32
  %52 = sub i32 %50, %51
  store ptr %49, ptr %13, align 4
  %53 = sub i32 %48, %52
  store i32 %53, ptr %11, align 4
  %54 = icmp eq i32 %48, %52
  br i1 %54, label %73, label %55

55:                                               ; preds = %47
  %56 = call fastcc i32 @proc_get_long(ptr noundef nonnull %13, ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %12, ptr noundef nonnull @proc_wspace_sep, ptr noundef null) #13
  %57 = icmp eq i32 %56, 0
  %58 = load i8, ptr %12, align 1
  %59 = icmp eq i8 %58, 0
  %60 = select i1 %57, i1 %59, i1 false
  br i1 %60, label %61, label %73

61:                                               ; preds = %55
  %62 = call i32 %36(ptr noundef nonnull %10, ptr noundef nonnull %15, i32 noundef 1, ptr noundef %6) #13
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = load i32, ptr %11, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %64
  %68 = load ptr, ptr %13, align 4
  %69 = call ptr @skip_spaces(ptr noundef %68) #13
  br label %73

70:                                               ; preds = %38
  %71 = zext i32 %22 to i64
  %72 = add i64 %25, %71
  store i64 %72, ptr %4, align 8
  br label %73

73:                                               ; preds = %70, %67, %64, %61, %55, %47
  %74 = phi i32 [ 0, %70 ], [ 0, %67 ], [ 0, %64 ], [ -22, %47 ], [ -22, %55 ], [ -22, %61 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #13
  br label %96

75:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  store i32 0, ptr %9, align 4, !annotation !9
  %76 = call i32 %36(ptr noundef nonnull %9, ptr noundef nonnull %15, i32 noundef 0, ptr noundef %6) #13
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %75
  %79 = load i32, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %8) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(22) %8, i8 0, i32 22, i1 false) #13, !annotation !9
  %80 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %8, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3, i32 noundef %79) #13
  %81 = call i32 @strlen(ptr noundef nonnull %8) #13
  %82 = call i32 @llvm.umin.i32(i32 %81, i32 %22) #13
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %2, ptr nonnull align 1 %8, i32 %82, i1 false) #13
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %8) #13
  %83 = icmp ugt i32 %22, %81
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = getelementptr i8, ptr %2, i32 %82
  store i8 10, ptr %85, align 1
  %86 = xor i32 %82, -1
  %87 = add i32 %22, %86
  br label %88

88:                                               ; preds = %84, %78, %75
  %89 = phi i32 [ 0, %78 ], [ %87, %84 ], [ %22, %75 ]
  %90 = phi i32 [ 0, %78 ], [ 0, %84 ], [ -22, %75 ]
  %91 = load i32, ptr %3, align 4
  %92 = sub i32 %91, %89
  store i32 %92, ptr %3, align 4
  %93 = zext i32 %92 to i64
  %94 = load i64, ptr %4, align 8
  %95 = add i64 %94, %93
  store i64 %95, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  br label %96

96:                                               ; preds = %88, %73, %33, %29
  %97 = phi i32 [ -22, %33 ], [ %74, %73 ], [ %90, %88 ], [ 0, %29 ]
  ret i32 %97
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @proc_dobool(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) #0 {
  %6 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call fastcc i32 @__do_proc_dointvec(ptr noundef %7, ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull @do_proc_dobool_conv, ptr noundef null) #13
  ret i32 %8
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @do_proc_dobool_conv(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3, ptr nocapture noundef readnone %4) #1 {
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %5
  %8 = load i32, ptr %1, align 4
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, ptr %2, align 1
  br label %14

11:                                               ; preds = %5
  %12 = load i8, ptr %2, align 1, !range !10
  %13 = zext i8 %12 to i32
  store i32 %13, ptr %1, align 4
  store i8 0, ptr %0, align 1
  br label %14

14:                                               ; preds = %11, %7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @proc_dointvec(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) #0 {
  %6 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call fastcc i32 @__do_proc_dointvec(ptr noundef %7, ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef null, ptr noundef null) #13
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @proc_douintvec(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) #0 {
  %6 = tail call i32 @do_proc_douintvec(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull @do_proc_douintvec_conv, ptr noundef null)
  ret i32 %6
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @do_proc_douintvec_conv(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #1 {
  %5 = icmp eq i32 %2, 0
  %6 = select i1 %5, ptr %1, ptr %0
  %7 = select i1 %5, ptr %0, ptr %1
  %8 = load i32, ptr %6, align 4
  store i32 %8, ptr %7, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @proc_dointvec_minmax(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) #0 {
  %6 = alloca %struct.do_proc_dointvec_minmax_conv_param, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  %7 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  store ptr %8, ptr %6, align 8
  %9 = getelementptr inbounds %struct.do_proc_dointvec_minmax_conv_param, ptr %6, i32 0, i32 1
  %10 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  store ptr %11, ptr %9, align 4
  %12 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = call fastcc i32 @__do_proc_dointvec(ptr noundef %13, ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull @do_proc_dointvec_minmax_conv, ptr noundef nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  ret i32 %14
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @do_proc_dointvec_minmax_conv(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) #4 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6)
  store i32 0, ptr %6, align 4
  %7 = icmp eq i32 %3, 0
  %8 = select i1 %7, ptr %2, ptr %6
  br i1 %7, label %19, label %9

9:                                                ; preds = %5
  %10 = load i8, ptr %0, align 1, !range !10
  %11 = icmp eq i8 %10, 0
  %12 = load i32, ptr %1, align 4
  br i1 %11, label %17, label %13

13:                                               ; preds = %9
  %14 = icmp ugt i32 %12, -2147483648
  br i1 %14, label %47, label %15

15:                                               ; preds = %13
  %16 = sub i32 0, %12
  br label %27

17:                                               ; preds = %9
  %18 = icmp slt i32 %12, 0
  br i1 %18, label %47, label %27

19:                                               ; preds = %5
  %20 = load i32, ptr %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  store i8 1, ptr %0, align 1
  %23 = sub i32 0, %20
  br label %25

24:                                               ; preds = %19
  store i8 0, ptr %0, align 1
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %20, %24 ], [ %23, %22 ]
  store i32 %26, ptr %1, align 4
  br label %47

27:                                               ; preds = %17, %15
  %28 = phi i32 [ %16, %15 ], [ %12, %17 ]
  store i32 %28, ptr %8, align 4
  %29 = load ptr, ptr %4, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i32, ptr %29, align 4
  %33 = load i32, ptr %6, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %47, label %35

35:                                               ; preds = %31, %27
  %36 = getelementptr inbounds %struct.do_proc_dointvec_minmax_conv_param, ptr %4, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, ptr %6, align 4
  br label %45

41:                                               ; preds = %35
  %42 = load i32, ptr %37, align 4
  %43 = load i32, ptr %6, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %47, label %45

45:                                               ; preds = %41, %39
  %46 = phi i32 [ %40, %39 ], [ %43, %41 ]
  store i32 %46, ptr %2, align 4
  br label %47

47:                                               ; preds = %45, %41, %31, %25, %17, %13
  %48 = phi i32 [ -22, %41 ], [ -22, %31 ], [ 0, %45 ], [ -22, %13 ], [ -22, %17 ], [ 0, %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6)
  ret i32 %48
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @proc_douintvec_minmax(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) #0 {
  %6 = alloca %struct.do_proc_douintvec_minmax_conv_param, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  %7 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  store ptr %8, ptr %6, align 8
  %9 = getelementptr inbounds %struct.do_proc_douintvec_minmax_conv_param, ptr %6, i32 0, i32 1
  %10 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  store ptr %11, ptr %9, align 4
  %12 = call i32 @do_proc_douintvec(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull @do_proc_douintvec_minmax_conv, ptr noundef nonnull %6)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  ret i32 %12
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @do_proc_douintvec_minmax_conv(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #4 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  store i32 0, ptr %5, align 4
  %6 = icmp eq i32 %2, 0
  %7 = select i1 %6, ptr %1, ptr %0
  %8 = select i1 %6, ptr %0, ptr %5
  %9 = load i32, ptr %7, align 4
  store i32 %9, ptr %8, align 4
  br i1 %6, label %29, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr %3, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = load i32, ptr %11, align 4
  %15 = load i32, ptr %5, align 4
  %16 = icmp ugt i32 %14, %15
  br i1 %16, label %29, label %17

17:                                               ; preds = %13, %10
  %18 = getelementptr inbounds %struct.do_proc_douintvec_minmax_conv_param, ptr %3, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, ptr %5, align 4
  br label %27

23:                                               ; preds = %17
  %24 = load i32, ptr %19, align 4
  %25 = load i32, ptr %5, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %29, label %27

27:                                               ; preds = %23, %21
  %28 = phi i32 [ %22, %21 ], [ %25, %23 ]
  store i32 %28, ptr %1, align 4
  br label %29

29:                                               ; preds = %27, %23, %13, %4
  %30 = phi i32 [ -34, %23 ], [ -34, %13 ], [ 0, %27 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @proc_dou8vec_minmax(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) #0 {
  %6 = alloca %struct.ctl_table, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.do_proc_douintvec_minmax_conv_param, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store i32 0, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  store i32 255, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  %11 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #13
  store ptr %7, ptr %10, align 8
  %13 = getelementptr inbounds %struct.do_proc_douintvec_minmax_conv_param, ptr %10, i32 0, i32 1
  store ptr %8, ptr %13, align 4
  %14 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %43

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load i32, ptr %19, align 4
  store i32 %22, ptr %7, align 4
  %23 = icmp ugt i32 %22, 255
  br i1 %23, label %43, label %24

24:                                               ; preds = %21, %17
  %25 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 8
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load i32, ptr %26, align 4
  store i32 %29, ptr %8, align 4
  %30 = icmp ugt i32 %29, 255
  br i1 %30, label %43, label %31

31:                                               ; preds = %28, %24
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %6, ptr noundef align 4 dereferenceable(36) %0, i32 36, i1 false)
  %32 = getelementptr inbounds %struct.ctl_table, ptr %6, i32 0, i32 2
  store i32 4, ptr %32, align 4
  %33 = getelementptr inbounds %struct.ctl_table, ptr %6, i32 0, i32 1
  store ptr %9, ptr %33, align 4
  %34 = load i8, ptr %12, align 1
  %35 = zext i8 %34 to i32
  store i32 %35, ptr %9, align 4
  %36 = call i32 @do_proc_douintvec(ptr noundef nonnull %6, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull @do_proc_douintvec_minmax_conv, ptr noundef nonnull %10)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = icmp eq i32 %1, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %38
  %41 = load i32, ptr %9, align 4
  %42 = trunc i32 %41 to i8
  store i8 %42, ptr %12, align 1
  br label %43

43:                                               ; preds = %40, %38, %31, %28, %21, %5
  %44 = phi i32 [ -22, %5 ], [ -22, %21 ], [ -22, %28 ], [ %36, %31 ], [ 0, %40 ], [ 0, %38 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #13
  ret i32 %44
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @proc_doulongvec_minmax(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) #0 {
  %6 = tail call fastcc i32 @do_proc_doulongvec_minmax(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef 1, i32 noundef 1)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_proc_doulongvec_minmax(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
  %8 = alloca [22 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #13
  store ptr null, ptr %10, align 4, !annotation !9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = load i32, ptr %3, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = load i64, ptr %4, align 8
  %25 = icmp eq i64 %24, 0
  %26 = icmp ne i32 %1, 0
  %27 = or i1 %26, %25
  br i1 %27, label %29, label %28

28:                                               ; preds = %23, %20, %16, %7
  store i32 0, ptr %3, align 4
  br label %156

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 7
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 8
  %33 = load ptr, ptr %32, align 4
  %34 = lshr i32 %18, 2
  store i32 %21, ptr %9, align 4
  br i1 %26, label %35, label %50

35:                                               ; preds = %29
  br i1 %25, label %45, label %36

36:                                               ; preds = %35
  %37 = load i32, ptr @sysctl_writes_strict, align 4
  switch i32 %37, label %45 [
    i32 1, label %150
    i32 0, label %38
  ]

38:                                               ; preds = %36
  %39 = load i1, ptr @warn_sysctl_write.__already_done, align 1
  br i1 %39, label %45, label %40, !prof !8

40:                                               ; preds = %38
  store i1 true, ptr @warn_sysctl_write.__already_done, align 1
  %41 = tail call ptr @llvm.thread.pointer() #13
  %42 = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 85
  %43 = load ptr, ptr %0, align 4
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %42, ptr noundef %43) #14
  br label %45

45:                                               ; preds = %40, %38, %36, %35
  %46 = icmp ugt i32 %21, 4095
  br i1 %46, label %47, label %48

47:                                               ; preds = %45
  store i32 4095, ptr %9, align 4
  br label %48

48:                                               ; preds = %47, %45
  %49 = phi i32 [ 4095, %47 ], [ %21, %45 ]
  store ptr %2, ptr %10, align 4
  br label %50

50:                                               ; preds = %48, %29
  %51 = phi i32 [ %49, %48 ], [ %21, %29 ]
  %52 = icmp eq ptr %31, null
  %53 = icmp eq ptr %33, null
  br label %54

54:                                               ; preds = %113, %50
  %55 = phi i32 [ %51, %50 ], [ %114, %113 ]
  %56 = phi i1 [ false, %50 ], [ true, %113 ]
  %57 = phi i1 [ true, %50 ], [ false, %113 ]
  %58 = phi i32 [ %34, %50 ], [ %61, %113 ]
  %59 = phi ptr [ %14, %50 ], [ %116, %113 ]
  %60 = phi ptr [ %2, %50 ], [ %115, %113 ]
  %61 = add nsw i32 %58, -1
  %62 = icmp eq i32 %58, 0
  br i1 %62, label %118, label %63

63:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #13
  store i32 0, ptr %11, align 4, !annotation !9
  br i1 %26, label %64, label %91

64:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #13
  store i8 0, ptr %12, align 1, !annotation !9
  %65 = load ptr, ptr %10, align 4
  %66 = tail call ptr @skip_spaces(ptr noundef %65) #13
  %67 = ptrtoint ptr %66 to i32
  %68 = ptrtoint ptr %65 to i32
  %69 = sub i32 %67, %68
  store ptr %66, ptr %10, align 4
  %70 = sub i32 %55, %69
  store i32 %70, ptr %9, align 4
  %71 = icmp eq i32 %55, %69
  br i1 %71, label %110, label %72

72:                                               ; preds = %64
  %73 = call fastcc i32 @proc_get_long(ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull @proc_wspace_sep, ptr noundef null) #13
  %74 = icmp eq i32 %73, 0
  %75 = load i8, ptr %12, align 1
  %76 = icmp eq i8 %75, 0
  %77 = select i1 %74, i1 %76, i1 false
  br i1 %77, label %78, label %110

78:                                               ; preds = %72
  %79 = load i32, ptr %11, align 4
  %80 = mul i32 %79, %5
  %81 = udiv i32 %80, %6
  br i1 %52, label %85, label %82

82:                                               ; preds = %78
  %83 = load i32, ptr %31, align 4
  %84 = icmp ult i32 %81, %83
  br i1 %84, label %110, label %85

85:                                               ; preds = %82, %78
  br i1 %53, label %89, label %86

86:                                               ; preds = %85
  %87 = load i32, ptr %33, align 4
  %88 = icmp ugt i32 %81, %87
  br i1 %88, label %110, label %89

89:                                               ; preds = %86, %85
  store i32 %81, ptr %59, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #13
  %90 = load i32, ptr %9, align 4
  br label %113

91:                                               ; preds = %63
  %92 = load i32, ptr %59, align 4
  %93 = mul i32 %92, %6
  %94 = udiv i32 %93, %5
  store i32 %94, ptr %11, align 4
  br i1 %56, label %95, label %100

95:                                               ; preds = %91
  store i8 9, ptr %60, align 1
  %96 = load i32, ptr %9, align 4
  %97 = add i32 %96, -1
  store i32 %97, ptr %9, align 4
  %98 = getelementptr i8, ptr %60, i32 1
  %99 = load i32, ptr %11, align 4
  br label %100

100:                                              ; preds = %95, %91
  %101 = phi i32 [ %97, %95 ], [ %55, %91 ]
  %102 = phi i32 [ %99, %95 ], [ %94, %91 ]
  %103 = phi ptr [ %98, %95 ], [ %60, %91 ]
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %8) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(22) %8, i8 0, i32 22, i1 false) #13, !annotation !9
  %104 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %8, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3, i32 noundef %102) #13
  %105 = call i32 @strlen(ptr noundef nonnull %8) #13
  %106 = tail call i32 @llvm.umin.i32(i32 %105, i32 %101) #13
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %103, ptr nonnull align 1 %8, i32 %106, i1 false) #13
  %107 = load i32, ptr %9, align 4
  %108 = sub i32 %107, %106
  store i32 %108, ptr %9, align 4
  %109 = getelementptr i8, ptr %103, i32 %106
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %8) #13
  br label %113

110:                                              ; preds = %86, %82, %72, %64
  %111 = phi i32 [ -22, %82 ], [ -22, %86 ], [ -22, %72 ], [ 0, %64 ]
  %112 = xor i1 %71, true
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #13
  br label %123

113:                                              ; preds = %100, %89
  %114 = phi i32 [ %108, %100 ], [ %90, %89 ]
  %115 = phi ptr [ %109, %100 ], [ %60, %89 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #13
  %116 = getelementptr i32, ptr %59, i32 1
  %117 = icmp eq i32 %114, 0
  br i1 %117, label %123, label %54

118:                                              ; preds = %54
  %119 = or i1 %26, %57
  br i1 %119, label %123, label %120

120:                                              ; preds = %118
  store i8 10, ptr %60, align 1
  %121 = load i32, ptr %9, align 4
  %122 = add i32 %121, -1
  store i32 %122, ptr %9, align 4
  br label %144

123:                                              ; preds = %118, %113, %110
  %124 = phi i1 [ %57, %110 ], [ %57, %118 ], [ false, %113 ]
  %125 = phi i1 [ %112, %110 ], [ false, %118 ], [ false, %113 ]
  %126 = phi i32 [ %111, %110 ], [ 0, %118 ], [ 0, %113 ]
  %127 = icmp eq i32 %1, 0
  %128 = or i1 %127, %125
  br i1 %128, label %137, label %129

129:                                              ; preds = %123
  %130 = load ptr, ptr %10, align 4
  %131 = tail call ptr @skip_spaces(ptr noundef %130) #13
  %132 = ptrtoint ptr %131 to i32
  %133 = ptrtoint ptr %130 to i32
  %134 = sub i32 %133, %132
  %135 = load i32, ptr %9, align 4
  %136 = add i32 %134, %135
  store i32 %136, ptr %9, align 4
  br label %137

137:                                              ; preds = %129, %123
  %138 = phi i1 [ false, %129 ], [ %125, %123 ]
  %139 = and i1 %26, %124
  br i1 %139, label %142, label %140

140:                                              ; preds = %137
  %141 = load i32, ptr %9, align 4
  br label %144

142:                                              ; preds = %137
  %143 = select i1 %138, i32 %126, i32 -22
  br label %156

144:                                              ; preds = %140, %120
  %145 = phi i32 [ %122, %120 ], [ %141, %140 ]
  %146 = phi i32 [ 0, %120 ], [ %126, %140 ]
  %147 = load i32, ptr %3, align 4
  %148 = sub i32 %147, %145
  store i32 %148, ptr %3, align 4
  %149 = load i64, ptr %4, align 8
  br label %150

150:                                              ; preds = %144, %36
  %151 = phi i64 [ %149, %144 ], [ %24, %36 ]
  %152 = phi i32 [ %148, %144 ], [ %21, %36 ]
  %153 = phi i32 [ %146, %144 ], [ 0, %36 ]
  %154 = zext i32 %152 to i64
  %155 = add i64 %151, %154
  store i64 %155, ptr %4, align 8
  br label %156

156:                                              ; preds = %150, %142, %28
  %157 = phi i32 [ %153, %150 ], [ %143, %142 ], [ 0, %28 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  ret i32 %157
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @proc_doulongvec_ms_jiffies_minmax(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) #0 {
  %6 = tail call fastcc i32 @do_proc_doulongvec_minmax(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef 100, i32 noundef 1000)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @proc_dointvec_jiffies(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) #0 {
  %6 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call fastcc i32 @__do_proc_dointvec(ptr noundef %7, ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull @do_proc_dointvec_jiffies_conv, ptr noundef null) #13
  ret i32 %8
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @do_proc_dointvec_jiffies_conv(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3, ptr nocapture noundef readnone %4) #1 {
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %5
  %8 = load i32, ptr %1, align 4
  %9 = icmp ugt i32 %8, 21474836
  br i1 %9, label %24, label %10

10:                                               ; preds = %7
  %11 = load i8, ptr %0, align 1, !range !10
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %12, i32 100, i32 -100
  %14 = mul nsw i32 %13, %8
  store i32 %14, ptr %2, align 4
  br label %24

15:                                               ; preds = %5
  %16 = load i32, ptr %2, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  store i8 1, ptr %0, align 1
  %19 = sub i32 0, %16
  br label %21

20:                                               ; preds = %15
  store i8 0, ptr %0, align 1
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i32 [ %19, %18 ], [ %16, %20 ]
  %23 = udiv i32 %22, 100
  store i32 %23, ptr %1, align 4
  br label %24

24:                                               ; preds = %21, %10, %7
  %25 = phi i32 [ 1, %7 ], [ 0, %21 ], [ 0, %10 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @proc_dointvec_userhz_jiffies(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) #0 {
  %6 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call fastcc i32 @__do_proc_dointvec(ptr noundef %7, ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull @do_proc_dointvec_userhz_jiffies_conv, ptr noundef null) #13
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @do_proc_dointvec_userhz_jiffies_conv(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3, ptr nocapture noundef readnone %4) #0 {
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %5
  %8 = load i8, ptr %0, align 1, !range !10
  %9 = icmp eq i8 %8, 0
  %10 = load i32, ptr %1, align 4
  %11 = sub i32 0, %10
  %12 = select i1 %9, i32 %10, i32 %11
  %13 = tail call i32 @clock_t_to_jiffies(i32 noundef %12) #13
  store i32 %13, ptr %2, align 4
  br label %23

14:                                               ; preds = %5
  %15 = load i32, ptr %2, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  store i8 1, ptr %0, align 1
  %18 = sub i32 0, %15
  br label %20

19:                                               ; preds = %14
  store i8 0, ptr %0, align 1
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i32 [ %18, %17 ], [ %15, %19 ]
  %22 = tail call i32 @jiffies_to_clock_t(i32 noundef %21) #13
  store i32 %22, ptr %1, align 4
  br label %23

23:                                               ; preds = %20, %7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @proc_dointvec_ms_jiffies(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) #0 {
  %6 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call fastcc i32 @__do_proc_dointvec(ptr noundef %7, ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull @do_proc_dointvec_ms_jiffies_conv, ptr noundef null) #13
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @do_proc_dointvec_ms_jiffies_conv(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3, ptr nocapture noundef readnone %4) #0 {
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %5
  %8 = load i8, ptr %0, align 1, !range !10
  %9 = icmp eq i8 %8, 0
  %10 = load i32, ptr %1, align 4
  %11 = sub i32 0, %10
  %12 = select i1 %9, i32 %10, i32 %11
  %13 = tail call i32 @__msecs_to_jiffies(i32 noundef %12) #13
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %7
  store i32 %13, ptr %2, align 4
  br label %25

16:                                               ; preds = %5
  %17 = load i32, ptr %2, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  store i8 1, ptr %0, align 1
  %20 = sub i32 0, %17
  br label %22

21:                                               ; preds = %16
  store i8 0, ptr %0, align 1
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi i32 [ %20, %19 ], [ %17, %21 ]
  %24 = tail call i32 @jiffies_to_msecs(i32 noundef %23) #13
  store i32 %24, ptr %1, align 4
  br label %25

25:                                               ; preds = %22, %15, %7
  %26 = phi i32 [ 1, %7 ], [ 0, %15 ], [ 0, %22 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @proc_do_large_bitmap(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) #0 {
  %6 = alloca [22 x i8], align 1
  %7 = alloca [22 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca [3 x i8], align 1
  %10 = alloca [3 x i8], align 1
  %11 = alloca i8, align 1
  %12 = alloca ptr, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  %16 = load i32, ptr %3, align 4
  store i32 %16, ptr %8, align 4
  %17 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %20, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %9) #13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %9, ptr noundef nonnull align 1 dereferenceable(3) @__const.proc_do_large_bitmap.tr_a, i32 3, i1 false)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %10) #13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %10, ptr noundef nonnull align 1 dereferenceable(3) @__const.proc_do_large_bitmap.tr_b, i32 3, i1 false)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #13
  store i8 0, ptr %11, align 1, !annotation !9
  %22 = icmp ne ptr %21, null
  %23 = icmp ne i32 %18, 0
  %24 = select i1 %22, i1 %23, i1 false
  %25 = icmp ne i32 %16, 0
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %27, label %32

27:                                               ; preds = %5
  %28 = load i64, ptr %4, align 8
  %29 = icmp eq i64 %28, 0
  %30 = icmp ne i32 %1, 0
  %31 = or i1 %30, %29
  br i1 %31, label %33, label %32

32:                                               ; preds = %27, %5
  store i32 0, ptr %3, align 4
  br label %199

33:                                               ; preds = %27
  br i1 %30, label %34, label %123

34:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #13
  %35 = icmp ugt i32 %16, 4095
  br i1 %35, label %36, label %38

36:                                               ; preds = %34
  store i32 4095, ptr %8, align 4
  %37 = add i32 %16, -4095
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ 4095, %36 ], [ %16, %34 ]
  %40 = phi i32 [ %37, %36 ], [ 0, %34 ]
  %41 = tail call ptr @bitmap_zalloc(i32 noundef %18, i32 noundef 3264) #13
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #13
  br label %199

44:                                               ; preds = %49, %38
  %45 = phi ptr [ %51, %49 ], [ %2, %38 ]
  %46 = phi i32 [ %50, %49 ], [ %39, %38 ]
  %47 = load i8, ptr %45, align 1
  %48 = icmp eq i8 %47, 10
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = add i32 %46, -1
  store i32 %50, ptr %8, align 4
  %51 = getelementptr i8, ptr %45, i32 1
  %52 = icmp eq i32 %50, 0
  br i1 %52, label %169, label %44

53:                                               ; preds = %44
  store ptr %45, ptr %12, align 4
  %54 = icmp ne i32 %40, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #13
  store i32 0, ptr %13, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #13
  store i8 0, ptr %15, align 1, !annotation !9
  %55 = call fastcc i32 @proc_get_long(ptr noundef nonnull %12, ptr noundef nonnull %8, ptr noundef nonnull %13, ptr noundef nonnull %15, ptr noundef nonnull %9, ptr noundef nonnull %11)
  %56 = load i32, ptr %8, align 4
  %57 = icmp ult i32 %56, 2
  %58 = select i1 %57, i1 %54, i1 false
  br i1 %58, label %174, label %59

59:                                               ; preds = %118, %53
  %60 = phi i32 [ %120, %118 ], [ %56, %53 ]
  %61 = phi i32 [ %119, %118 ], [ %55, %53 ]
  %62 = phi i32 [ %110, %118 ], [ %46, %53 ]
  %63 = icmp eq i32 %61, 0
  br i1 %63, label %64, label %170

64:                                               ; preds = %59
  %65 = load i32, ptr %13, align 4
  %66 = icmp ult i32 %65, %18
  %67 = load i8, ptr %15, align 1
  %68 = icmp eq i8 %67, 0
  %69 = select i1 %66, i1 %68, i1 false
  br i1 %69, label %70, label %170

70:                                               ; preds = %64
  store i32 %65, ptr %14, align 4
  %71 = icmp eq i32 %60, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %70
  %73 = load ptr, ptr %12, align 4
  %74 = getelementptr i8, ptr %73, i32 1
  store ptr %74, ptr %12, align 4
  %75 = add i32 %60, -1
  store i32 %75, ptr %8, align 4
  br label %76

76:                                               ; preds = %72, %70
  %77 = load i8, ptr %11, align 1
  %78 = icmp eq i8 %77, 45
  br i1 %78, label %79, label %99

79:                                               ; preds = %76
  %80 = call fastcc i32 @proc_get_long(ptr noundef nonnull %12, ptr noundef nonnull %8, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %10, ptr noundef nonnull %11)
  %81 = load i32, ptr %8, align 4
  %82 = icmp eq i32 %81, 0
  %83 = select i1 %82, i1 %54, i1 false
  br i1 %83, label %174, label %84

84:                                               ; preds = %79
  %85 = icmp eq i32 %80, 0
  br i1 %85, label %86, label %170

86:                                               ; preds = %84
  %87 = load i32, ptr %14, align 4
  %88 = icmp uge i32 %87, %18
  %89 = load i8, ptr %15, align 1
  %90 = icmp ne i8 %89, 0
  %91 = select i1 %88, i1 true, i1 %90
  %92 = icmp ugt i32 %65, %87
  %93 = select i1 %91, i1 true, i1 %92
  br i1 %93, label %170, label %94

94:                                               ; preds = %86
  br i1 %82, label %99, label %95

95:                                               ; preds = %94
  %96 = load ptr, ptr %12, align 4
  %97 = getelementptr i8, ptr %96, i32 1
  store ptr %97, ptr %12, align 4
  %98 = add i32 %81, -1
  store i32 %98, ptr %8, align 4
  br label %99

99:                                               ; preds = %95, %94, %76
  %100 = phi i32 [ %87, %94 ], [ %87, %95 ], [ %65, %76 ]
  %101 = sub i32 %100, %65
  %102 = add i32 %101, 1
  call void @__bitmap_set(ptr noundef nonnull %41, i32 noundef %65, i32 noundef %102) #13
  %103 = load i32, ptr %8, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #13
  br label %169

106:                                              ; preds = %99
  %107 = load ptr, ptr %12, align 4
  br label %108

108:                                              ; preds = %113, %106
  %109 = phi ptr [ %115, %113 ], [ %107, %106 ]
  %110 = phi i32 [ %114, %113 ], [ %103, %106 ]
  %111 = load i8, ptr %109, align 1
  %112 = icmp eq i8 %111, 10
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = add i32 %110, -1
  store i32 %114, ptr %8, align 4
  %115 = getelementptr i8, ptr %109, i32 1
  %116 = icmp eq i32 %114, 0
  br i1 %116, label %117, label %108

117:                                              ; preds = %113
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #13
  br label %169

118:                                              ; preds = %108
  store ptr %109, ptr %12, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #13
  store i32 0, ptr %13, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #13
  store i8 0, ptr %15, align 1, !annotation !9
  %119 = call fastcc i32 @proc_get_long(ptr noundef nonnull %12, ptr noundef nonnull %8, ptr noundef nonnull %13, ptr noundef nonnull %15, ptr noundef nonnull %9, ptr noundef nonnull %11)
  %120 = load i32, ptr %8, align 4
  %121 = icmp ult i32 %120, 2
  %122 = select i1 %121, i1 %54, i1 false
  br i1 %122, label %174, label %59

123:                                              ; preds = %162, %33
  %124 = phi i1 [ false, %162 ], [ true, %33 ]
  %125 = phi i32 [ %131, %162 ], [ 0, %33 ]
  %126 = phi ptr [ %164, %162 ], [ %2, %33 ]
  %127 = tail call i32 @_find_next_bit_le(ptr noundef nonnull %21, i32 noundef %18, i32 noundef %125) #13
  %128 = icmp ult i32 %127, %18
  br i1 %128, label %129, label %166

129:                                              ; preds = %123
  %130 = add nuw i32 %127, 1
  %131 = tail call i32 @_find_next_zero_bit_le(ptr noundef nonnull %21, i32 noundef %18, i32 noundef %130) #13
  %132 = add i32 %131, -1
  br i1 %124, label %137, label %133

133:                                              ; preds = %129
  store i8 44, ptr %126, align 1
  %134 = load i32, ptr %8, align 4
  %135 = add i32 %134, -1
  store i32 %135, ptr %8, align 4
  %136 = getelementptr i8, ptr %126, i32 1
  br label %137

137:                                              ; preds = %133, %129
  %138 = phi ptr [ %126, %129 ], [ %136, %133 ]
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %7) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(22) %7, i8 0, i32 22, i1 false) #13, !annotation !9
  %139 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %7, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3, i32 noundef %127) #13
  %140 = call i32 @strlen(ptr noundef nonnull %7) #13
  %141 = load i32, ptr %8, align 4
  %142 = tail call i32 @llvm.umin.i32(i32 %140, i32 %141) #13
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %138, ptr nonnull align 1 %7, i32 %142, i1 false) #13
  %143 = load i32, ptr %8, align 4
  %144 = sub i32 %143, %142
  store i32 %144, ptr %8, align 4
  %145 = getelementptr i8, ptr %138, i32 %142
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %7) #13
  %146 = icmp eq i32 %127, %132
  br i1 %146, label %162, label %147

147:                                              ; preds = %137
  %148 = icmp eq i32 %143, %142
  br i1 %148, label %153, label %149

149:                                              ; preds = %147
  store i8 45, ptr %145, align 1
  %150 = load i32, ptr %8, align 4
  %151 = add i32 %150, -1
  store i32 %151, ptr %8, align 4
  %152 = getelementptr i8, ptr %145, i32 1
  br label %153

153:                                              ; preds = %149, %147
  %154 = phi ptr [ %145, %147 ], [ %152, %149 ]
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(22) %6, i8 0, i32 22, i1 false) #13, !annotation !9
  %155 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %6, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3, i32 noundef %132) #13
  %156 = call i32 @strlen(ptr noundef nonnull %6) #13
  %157 = load i32, ptr %8, align 4
  %158 = tail call i32 @llvm.umin.i32(i32 %156, i32 %157) #13
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %154, ptr nonnull align 1 %6, i32 %158, i1 false) #13
  %159 = load i32, ptr %8, align 4
  %160 = sub i32 %159, %158
  store i32 %160, ptr %8, align 4
  %161 = getelementptr i8, ptr %154, i32 %158
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %6) #13
  br label %162

162:                                              ; preds = %153, %137
  %163 = phi i32 [ %144, %137 ], [ %160, %153 ]
  %164 = phi ptr [ %145, %137 ], [ %161, %153 ]
  %165 = icmp eq i32 %163, 0
  br i1 %165, label %179, label %123

166:                                              ; preds = %123
  store i8 10, ptr %126, align 1
  %167 = load i32, ptr %8, align 4
  %168 = add i32 %167, -1
  store i32 %168, ptr %8, align 4
  br label %179

169:                                              ; preds = %117, %105, %49
  store i32 %40, ptr %8, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #13
  br label %179

170:                                              ; preds = %86, %84, %64, %59
  %171 = phi i32 [ %60, %59 ], [ %60, %64 ], [ %81, %84 ], [ %81, %86 ]
  %172 = phi i32 [ %61, %59 ], [ -22, %64 ], [ %80, %84 ], [ -22, %86 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #13
  %173 = add i32 %171, %40
  store i32 %173, ptr %8, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #13
  br label %196

174:                                              ; preds = %118, %79, %53
  %175 = phi i32 [ %46, %53 ], [ %110, %118 ], [ %62, %79 ]
  %176 = phi i32 [ %55, %53 ], [ %119, %118 ], [ %80, %79 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #13
  %177 = add i32 %175, %40
  store i32 %177, ptr %8, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #13
  %178 = icmp eq i32 %176, 0
  br i1 %178, label %179, label %196

179:                                              ; preds = %174, %169, %166, %162
  %180 = phi ptr [ %41, %174 ], [ null, %166 ], [ %41, %169 ], [ null, %162 ]
  br i1 %30, label %181, label %189

181:                                              ; preds = %179
  %182 = load i64, ptr %4, align 8
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %181
  call void @__bitmap_or(ptr noundef nonnull %21, ptr noundef nonnull %21, ptr noundef %180, i32 noundef %18) #13
  br label %189

185:                                              ; preds = %181
  %186 = add i32 %18, 31
  %187 = lshr i32 %186, 3
  %188 = and i32 %187, 536870908
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %21, ptr align 4 %180, i32 %188, i1 false) #13
  br label %189

189:                                              ; preds = %185, %184, %179
  %190 = load i32, ptr %8, align 4
  %191 = load i32, ptr %3, align 4
  %192 = sub i32 %191, %190
  store i32 %192, ptr %3, align 4
  %193 = zext i32 %192 to i64
  %194 = load i64, ptr %4, align 8
  %195 = add i64 %194, %193
  store i64 %195, ptr %4, align 8
  br label %196

196:                                              ; preds = %189, %174, %170
  %197 = phi ptr [ %180, %189 ], [ %41, %174 ], [ %41, %170 ]
  %198 = phi i32 [ 0, %189 ], [ %176, %174 ], [ %172, %170 ]
  call void @bitmap_free(ptr noundef %197) #13
  br label %199

199:                                              ; preds = %196, %43, %32
  %200 = phi i32 [ %198, %196 ], [ 0, %32 ], [ -12, %43 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  ret i32 %200
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @proc_get_long(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr noundef readonly %4, ptr noundef writeonly %5) unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca [22 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %9) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(22) %9, i8 0, i32 22, i1 false), !annotation !9
  %10 = load i32, ptr %1, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %62, label %12

12:                                               ; preds = %6
  %13 = tail call i32 @llvm.smin.i32(i32 %10, i32 21)
  %14 = load ptr, ptr %0, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %9, ptr align 1 %14, i32 %13, i1 false)
  %15 = getelementptr [22 x i8], ptr %9, i32 0, i32 %13
  store i8 0, ptr %15, align 1
  %16 = load i8, ptr %9, align 1
  %17 = icmp eq i8 %16, 45
  %18 = icmp ne i32 %10, 1
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  store i8 1, ptr %3, align 1
  %21 = getelementptr inbounds i8, ptr %9, i32 1
  %22 = load i8, ptr %21, align 1
  br label %24

23:                                               ; preds = %12
  store i8 0, ptr %3, align 1
  br label %24

24:                                               ; preds = %23, %20
  %25 = phi i8 [ %22, %20 ], [ %16, %23 ]
  %26 = phi ptr [ %21, %20 ], [ %9, %23 ]
  %27 = zext i8 %25 to i32
  %28 = add nsw i32 %27, -58
  %29 = icmp ult i32 %28, -10
  br i1 %29, label %62, label %30

30:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7)
  store i32 0, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #13
  store i64 0, ptr %8, align 8, !annotation !9
  %31 = call ptr @_parse_integer_fixup_radix(ptr noundef %26, ptr noundef nonnull %7) #13
  %32 = load i32, ptr %7, align 4
  %33 = call i32 @_parse_integer(ptr noundef %31, i32 noundef %32, ptr noundef nonnull %8) #13
  %34 = icmp sgt i32 %33, -1
  %35 = load i64, ptr %8, align 8
  %36 = icmp ult i64 %35, 4294967296
  %37 = select i1 %34, i1 %36, i1 false
  br i1 %37, label %39, label %38

38:                                               ; preds = %30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7)
  br label %62

39:                                               ; preds = %30
  %40 = getelementptr i8, ptr %31, i32 %33
  %41 = trunc i64 %35 to i32
  store i32 %41, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7)
  %42 = ptrtoint ptr %40 to i32
  %43 = ptrtoint ptr %9 to i32
  %44 = sub i32 %42, %43
  %45 = icmp eq i32 %44, 21
  br i1 %45, label %62, label %46

46:                                               ; preds = %39
  %47 = load i32, ptr %1, align 4
  %48 = icmp ult i32 %44, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load i8, ptr %40, align 1
  %51 = zext i8 %50 to i32
  %52 = call ptr @memchr(ptr noundef %4, i32 noundef %51, i32 noundef 3)
  %53 = icmp eq ptr %52, null
  br i1 %53, label %62, label %54

54:                                               ; preds = %49
  %55 = icmp eq ptr %5, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %54
  store i8 %50, ptr %5, align 1
  br label %57

57:                                               ; preds = %56, %54, %46
  %58 = load ptr, ptr %0, align 4
  %59 = getelementptr i8, ptr %58, i32 %44
  store ptr %59, ptr %0, align 4
  %60 = load i32, ptr %1, align 4
  %61 = sub i32 %60, %44
  store i32 %61, ptr %1, align 4
  br label %62

62:                                               ; preds = %57, %49, %39, %38, %24, %6
  %63 = phi i32 [ 0, %57 ], [ -22, %6 ], [ -22, %24 ], [ -22, %38 ], [ -22, %39 ], [ -22, %49 ]
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %9) #13
  ret i32 %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @proc_do_static_key(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.do_proc_dointvec_minmax_conv_param, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ctl_table, align 4
  %9 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store i32 0, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #13
  %11 = getelementptr inbounds %struct.ctl_table, ptr %8, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  store ptr %7, ptr %11, align 4
  %12 = getelementptr inbounds %struct.ctl_table, ptr %8, i32 0, i32 2
  store i32 4, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ctl_table, ptr %8, i32 0, i32 3
  %14 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 3
  %15 = load i16, ptr %14, align 4
  store i16 %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct.ctl_table, ptr %8, i32 0, i32 4
  store ptr null, ptr %16, align 4
  %17 = getelementptr inbounds %struct.ctl_table, ptr %8, i32 0, i32 5
  store ptr null, ptr %17, align 4
  %18 = getelementptr inbounds %struct.ctl_table, ptr %8, i32 0, i32 6
  store ptr null, ptr %18, align 4
  %19 = getelementptr inbounds %struct.ctl_table, ptr %8, i32 0, i32 7
  store ptr getelementptr inbounds ([0 x i32], ptr @sysctl_vals, i32 0, i32 1), ptr %19, align 4
  %20 = getelementptr inbounds %struct.ctl_table, ptr %8, i32 0, i32 8
  store ptr getelementptr inbounds ([0 x i32], ptr @sysctl_vals, i32 0, i32 2), ptr %20, align 4
  %21 = icmp eq i32 %1, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %5
  %23 = call zeroext i1 @capable(i32 noundef 21) #13
  br i1 %23, label %24, label %64

24:                                               ; preds = %22, %5
  call void @mutex_lock(ptr noundef nonnull @proc_do_static_key.static_key_mutex) #13
  %25 = load volatile i32, ptr %10, align 4
  %26 = icmp sgt i32 %25, 0
  %27 = zext i1 %26 to i32
  store i32 %27, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  store ptr getelementptr inbounds ([0 x i32], ptr @sysctl_vals, i32 0, i32 1), ptr %6, align 8
  %28 = getelementptr inbounds %struct.do_proc_dointvec_minmax_conv_param, ptr %6, i32 0, i32 1
  store ptr getelementptr inbounds ([0 x i32], ptr @sysctl_vals, i32 0, i32 2), ptr %28, align 4
  %29 = call fastcc i32 @__do_proc_dointvec(ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull @do_proc_dointvec_minmax_conv, ptr noundef nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  %30 = icmp ne i32 %29, 0
  %31 = select i1 %21, i1 true, i1 %30
  br i1 %31, label %63, label %32

32:                                               ; preds = %24
  %33 = load i32, ptr %7, align 4
  %34 = icmp eq i32 %33, 0
  %35 = load i8, ptr @static_key_initialized, align 1, !range !10
  %36 = icmp eq i8 %35, 0
  br i1 %34, label %50, label %37

37:                                               ; preds = %32
  br i1 %36, label %38, label %39, !prof !11

38:                                               ; preds = %37
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 318, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.static_key_enable, ptr noundef %10) #13
  br label %39

39:                                               ; preds = %38, %37
  %40 = load volatile i32, ptr %10, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %39
  %43 = load volatile i32, ptr %10, align 4
  %44 = icmp ne i32 %43, 1
  %45 = load i1, ptr @static_key_enable.__already_done, align 1
  %46 = xor i1 %45, true
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %48, label %63, !prof !11

48:                                               ; preds = %42
  store i1 true, ptr @static_key_enable.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 321, i32 noundef 9, ptr noundef null) #13
  br label %63

49:                                               ; preds = %39
  store volatile i32 1, ptr %10, align 4
  br label %63

50:                                               ; preds = %32
  br i1 %36, label %51, label %52, !prof !11

51:                                               ; preds = %50
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 329, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.static_key_disable, ptr noundef %10) #13
  br label %52

52:                                               ; preds = %51, %50
  %53 = load volatile i32, ptr %10, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %62, label %55

55:                                               ; preds = %52
  %56 = load volatile i32, ptr %10, align 4
  %57 = icmp ne i32 %56, 0
  %58 = load i1, ptr @static_key_disable.__already_done, align 1
  %59 = xor i1 %58, true
  %60 = select i1 %57, i1 %59, i1 false
  br i1 %60, label %61, label %63, !prof !11

61:                                               ; preds = %55
  store i1 true, ptr @static_key_disable.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 332, i32 noundef 9, ptr noundef null) #13
  br label %63

62:                                               ; preds = %52
  store volatile i32 0, ptr %10, align 4
  br label %63

63:                                               ; preds = %62, %61, %55, %49, %48, %42, %24
  call void @mutex_unlock(ptr noundef nonnull @proc_do_static_key.static_key_mutex) #13
  br label %64

64:                                               ; preds = %63, %22
  %65 = phi i32 [ %29, %63 ], [ -1, %22 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  ret i32 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @sysctl_init_bases() local_unnamed_addr #7 section ".init.text" {
  %1 = tail call i32 @__register_sysctl_base(ptr noundef nonnull @kernel_base_table) #13
  %2 = tail call i32 @__register_sysctl_base(ptr noundef nonnull @vm_base_table) #13
  %3 = tail call i32 @__register_sysctl_base(ptr noundef nonnull @debug_base_table) #13
  %4 = tail call i32 @__register_sysctl_base(ptr noundef nonnull @dev_base_table) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_sysctl_base(ptr noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skip_spaces(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__do_proc_dointvec(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5, ptr noundef readonly %6, ptr noundef %7) unnamed_addr #0 {
  %9 = alloca [22 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #13
  store ptr null, ptr %11, align 4, !annotation !9
  %14 = icmp eq ptr %0, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.ctl_table, ptr %1, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %15
  %20 = load i32, ptr %4, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = load i64, ptr %5, align 8
  %24 = icmp eq i64 %23, 0
  %25 = icmp ne i32 %2, 0
  %26 = or i1 %25, %24
  br i1 %26, label %28, label %27

27:                                               ; preds = %22, %19, %15, %8
  store i32 0, ptr %4, align 4
  br label %149

28:                                               ; preds = %22
  %29 = lshr i32 %17, 2
  store i32 %20, ptr %10, align 4
  %30 = icmp eq ptr %6, null
  %31 = select i1 %30, ptr @do_proc_dointvec_conv, ptr %6
  br i1 %25, label %32, label %47

32:                                               ; preds = %28
  br i1 %24, label %42, label %33

33:                                               ; preds = %32
  %34 = load i32, ptr @sysctl_writes_strict, align 4
  switch i32 %34, label %42 [
    i32 1, label %143
    i32 0, label %35
  ]

35:                                               ; preds = %33
  %36 = load i1, ptr @warn_sysctl_write.__already_done, align 1
  br i1 %36, label %42, label %37, !prof !8

37:                                               ; preds = %35
  store i1 true, ptr @warn_sysctl_write.__already_done, align 1
  %38 = tail call ptr @llvm.thread.pointer() #13
  %39 = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 85
  %40 = load ptr, ptr %1, align 4
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %39, ptr noundef %40) #14
  br label %42

42:                                               ; preds = %37, %35, %33, %32
  %43 = icmp ugt i32 %20, 4095
  br i1 %43, label %44, label %45

44:                                               ; preds = %42
  store i32 4095, ptr %10, align 4
  br label %45

45:                                               ; preds = %44, %42
  %46 = phi i32 [ 4095, %44 ], [ %20, %42 ]
  store ptr %3, ptr %11, align 4
  br label %47

47:                                               ; preds = %45, %28
  %48 = phi i32 [ %46, %45 ], [ %20, %28 ]
  %49 = icmp ult i32 %17, 4
  br i1 %49, label %104, label %53

50:                                               ; preds = %100
  %51 = getelementptr i32, ptr %56, i32 1
  %52 = icmp eq i32 %58, 0
  br i1 %52, label %104, label %53

53:                                               ; preds = %50, %47
  %54 = phi i32 [ %58, %50 ], [ %29, %47 ]
  %55 = phi ptr [ %102, %50 ], [ %3, %47 ]
  %56 = phi ptr [ %51, %50 ], [ %0, %47 ]
  %57 = phi i1 [ false, %50 ], [ true, %47 ]
  %58 = add nsw i32 %54, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #13
  store i32 0, ptr %12, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #13
  store i8 0, ptr %13, align 1, !annotation !9
  br i1 %25, label %59, label %76

59:                                               ; preds = %53
  %60 = load ptr, ptr %11, align 4
  %61 = call ptr @skip_spaces(ptr noundef %60) #13
  %62 = ptrtoint ptr %61 to i32
  %63 = ptrtoint ptr %60 to i32
  %64 = sub i32 %62, %63
  store ptr %61, ptr %11, align 4
  %65 = load i32, ptr %10, align 4
  %66 = sub i32 %65, %64
  store i32 %66, ptr %10, align 4
  %67 = icmp eq i32 %65, %64
  br i1 %67, label %97, label %68

68:                                               ; preds = %59
  %69 = call fastcc i32 @proc_get_long(ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull @proc_wspace_sep, ptr noundef null)
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %97

71:                                               ; preds = %68
  %72 = call i32 %31(ptr noundef nonnull %13, ptr noundef nonnull %12, ptr noundef %56, i32 noundef 1, ptr noundef %7) #13
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %97

74:                                               ; preds = %71
  %75 = load i32, ptr %10, align 4
  br label %100

76:                                               ; preds = %53
  %77 = call i32 %31(ptr noundef nonnull %13, ptr noundef nonnull %12, ptr noundef %56, i32 noundef 0, ptr noundef %7) #13
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %97

79:                                               ; preds = %76
  br i1 %57, label %84, label %80

80:                                               ; preds = %79
  store i8 9, ptr %55, align 1
  %81 = load i32, ptr %10, align 4
  %82 = add i32 %81, -1
  store i32 %82, ptr %10, align 4
  %83 = getelementptr i8, ptr %55, i32 1
  br label %84

84:                                               ; preds = %80, %79
  %85 = phi ptr [ %55, %79 ], [ %83, %80 ]
  %86 = load i32, ptr %12, align 4
  %87 = load i8, ptr %13, align 1, !range !10
  %88 = icmp eq i8 %87, 0
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %9) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(22) %9, i8 0, i32 22, i1 false) #13, !annotation !9
  %89 = select i1 %88, ptr @.str.3, ptr @.str.2
  %90 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %9, ptr noundef nonnull @.str.1, ptr noundef nonnull %89, i32 noundef %86) #13
  %91 = call i32 @strlen(ptr noundef nonnull %9) #13
  %92 = load i32, ptr %10, align 4
  %93 = call i32 @llvm.umin.i32(i32 %91, i32 %92) #13
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %85, ptr nonnull align 1 %9, i32 %93, i1 false) #13
  %94 = load i32, ptr %10, align 4
  %95 = sub i32 %94, %93
  store i32 %95, ptr %10, align 4
  %96 = getelementptr i8, ptr %85, i32 %93
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %9) #13
  br label %100

97:                                               ; preds = %76, %71, %68, %59
  %98 = phi i32 [ -22, %76 ], [ -22, %71 ], [ %69, %68 ], [ 0, %59 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #13
  %99 = load i32, ptr %10, align 4
  br label %104

100:                                              ; preds = %84, %74
  %101 = phi i32 [ %75, %74 ], [ %95, %84 ]
  %102 = phi ptr [ %55, %74 ], [ %96, %84 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #13
  %103 = icmp eq i32 %101, 0
  br i1 %103, label %137, label %50

104:                                              ; preds = %97, %50, %47
  %105 = phi i1 [ %57, %97 ], [ %49, %47 ], [ %49, %50 ]
  %106 = phi ptr [ %55, %97 ], [ %3, %47 ], [ %102, %50 ]
  %107 = phi i32 [ %99, %97 ], [ %48, %47 ], [ %101, %50 ]
  %108 = phi i32 [ %98, %97 ], [ 0, %47 ], [ 0, %50 ]
  %109 = or i1 %25, %105
  %110 = icmp eq i32 %107, 0
  %111 = select i1 %109, i1 true, i1 %110
  %112 = icmp ne i32 %108, 0
  %113 = select i1 %111, i1 true, i1 %112
  br i1 %113, label %117, label %114

114:                                              ; preds = %104
  store i8 10, ptr %106, align 1
  %115 = load i32, ptr %10, align 4
  %116 = add i32 %115, -1
  br label %131

117:                                              ; preds = %104
  %118 = icmp eq i32 %2, 0
  %119 = select i1 %118, i1 true, i1 %112
  %120 = xor i1 %119, true
  %121 = icmp ne i32 %107, 0
  %122 = select i1 %120, i1 %121, i1 false
  br i1 %122, label %123, label %131

123:                                              ; preds = %117
  %124 = load ptr, ptr %11, align 4
  %125 = call ptr @skip_spaces(ptr noundef %124) #13
  %126 = ptrtoint ptr %125 to i32
  %127 = ptrtoint ptr %124 to i32
  %128 = sub i32 %127, %126
  %129 = load i32, ptr %10, align 4
  %130 = add i32 %128, %129
  br label %131

131:                                              ; preds = %123, %117, %114
  %132 = phi i32 [ 0, %114 ], [ %108, %123 ], [ %108, %117 ]
  %133 = phi i32 [ %116, %114 ], [ %130, %123 ], [ %107, %117 ]
  %134 = and i1 %25, %105
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  %136 = select i1 %112, i32 %132, i32 -22
  br label %149

137:                                              ; preds = %131, %100
  %138 = phi i32 [ %133, %131 ], [ 0, %100 ]
  %139 = phi i32 [ %132, %131 ], [ 0, %100 ]
  %140 = load i32, ptr %4, align 4
  %141 = sub i32 %140, %138
  store i32 %141, ptr %4, align 4
  %142 = load i64, ptr %5, align 8
  br label %143

143:                                              ; preds = %137, %33
  %144 = phi i64 [ %142, %137 ], [ %23, %33 ]
  %145 = phi i32 [ %141, %137 ], [ %20, %33 ]
  %146 = phi i32 [ %139, %137 ], [ 0, %33 ]
  %147 = zext i32 %145 to i64
  %148 = add i64 %144, %147
  store i64 %148, ptr %5, align 8
  br label %149

149:                                              ; preds = %143, %135, %27
  %150 = phi i32 [ %146, %143 ], [ %136, %135 ], [ 0, %27 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #13
  ret i32 %150
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @do_proc_dointvec_conv(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3, ptr nocapture noundef readnone %4) unnamed_addr #1 {
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %5
  %8 = load i8, ptr %0, align 1, !range !10
  %9 = icmp eq i8 %8, 0
  %10 = load i32, ptr %1, align 4
  br i1 %9, label %15, label %11

11:                                               ; preds = %7
  %12 = icmp ugt i32 %10, -2147483648
  br i1 %12, label %26, label %13

13:                                               ; preds = %11
  %14 = sub i32 0, %10
  store i32 %14, ptr %2, align 4
  br label %26

15:                                               ; preds = %7
  %16 = icmp slt i32 %10, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %15
  store i32 %10, ptr %2, align 4
  br label %26

18:                                               ; preds = %5
  %19 = load i32, ptr %2, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  store i8 1, ptr %0, align 1
  %22 = sub i32 0, %19
  br label %24

23:                                               ; preds = %18
  store i8 0, ptr %0, align 1
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i32 [ %19, %23 ], [ %22, %21 ]
  store i32 %25, ptr %1, align 4
  br label %26

26:                                               ; preds = %24, %17, %15, %13, %11
  %27 = phi i32 [ -22, %11 ], [ -22, %15 ], [ 0, %13 ], [ 0, %17 ], [ 0, %24 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clock_t_to_jiffies(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_clock_t(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_parse_integer_fixup_radix(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_parse_integer(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_or(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sched_rt_handler(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sched_rr_handler(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_taint(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) #0 {
  %6 = alloca %struct.ctl_table, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  %8 = tail call i32 @get_taint() #13
  store i32 %8, ptr %7, align 4
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = tail call zeroext i1 @capable(i32 noundef 21) #13
  br i1 %11, label %12, label %36

12:                                               ; preds = %10, %5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %6, ptr noundef align 4 dereferenceable(36) %0, i32 36, i1 false)
  %13 = getelementptr inbounds %struct.ctl_table, ptr %6, i32 0, i32 1
  store ptr %7, ptr %13, align 4
  %14 = call fastcc i32 @do_proc_doulongvec_minmax(ptr noundef nonnull %6, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef 1, i32 noundef 1) #13
  %15 = icmp slt i32 %14, 0
  %16 = or i1 %9, %15
  br i1 %16, label %36, label %17

17:                                               ; preds = %12
  %18 = load i8, ptr @panic_on_taint_nousertaint, align 1, !range !10
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = load i32, ptr %7, align 4
  %22 = load i32, ptr @panic_on_taint, align 4
  %23 = and i32 %22, %21
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %20, %17
  br label %26

26:                                               ; preds = %33, %25
  %27 = phi i32 [ %34, %33 ], [ 0, %25 ]
  %28 = shl nuw nsw i32 1, %27
  %29 = load i32, ptr %7, align 4
  %30 = and i32 %29, %28
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  call void @add_taint(i32 noundef %27, i32 noundef 0) #13
  br label %33

33:                                               ; preds = %32, %26
  %34 = add nuw nsw i32 %27, 1
  %35 = icmp eq i32 %34, 18
  br i1 %35, label %36, label %26

36:                                               ; preds = %33, %20, %12, %10
  %37 = phi i32 [ -1, %10 ], [ %14, %12 ], [ -22, %20 ], [ %14, %33 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #13
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracepoint_printk_sysctl(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sysrq_sysctl_handler(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) #0 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  %7 = tail call i32 @sysrq_mask() #13
  store i32 %7, ptr %6, align 4
  %8 = call fastcc i32 @__do_proc_dointvec(ptr noundef nonnull %6, ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef null, ptr noundef null)
  %9 = icmp eq i32 %8, 0
  %10 = icmp ne i32 %1, 0
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %15

12:                                               ; preds = %5
  %13 = load i32, ptr %6, align 4
  %14 = call i32 @sysrq_toggle_support(i32 noundef %13) #13
  br label %15

15:                                               ; preds = %12, %5
  %16 = phi i32 [ 0, %12 ], [ %8, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_do_cad_pid(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) #0 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  %7 = load ptr, ptr @cad_pid, align 4
  %8 = tail call i32 @pid_vnr(ptr noundef %7) #13
  store i32 %8, ptr %6, align 4
  %9 = call fastcc i32 @__do_proc_dointvec(ptr noundef nonnull %6, ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef null, ptr noundef null)
  %10 = icmp eq i32 %9, 0
  %11 = icmp ne i32 %1, 0
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %22

13:                                               ; preds = %5
  %14 = load i32, ptr %6, align 4
  %15 = call ptr @find_get_pid(i32 noundef %14) #13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !12
  %18 = ptrtoint ptr %15 to i32
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @cad_pid) #13, !srcloc !13
  %19 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %18, ptr nonnull @cad_pid) #13, !srcloc !14
  %20 = extractvalue { i32, i32 } %19, 0
  %21 = inttoptr i32 %20 to ptr
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !15
  call void @put_pid(ptr noundef %21) #13
  br label %22

22:                                               ; preds = %17, %13, %5
  %23 = phi i32 [ 0, %17 ], [ %9, %5 ], [ -3, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysctl_max_threads(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @perf_proc_update_handler(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @perf_cpu_time_max_percent_handler(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @perf_event_max_stack_handler(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @timer_migration_handler(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_taint() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_taint(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysrq_mask() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysrq_toggle_support(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_vnr(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_get_pid(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @overcommit_policy_handler(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @overcommit_ratio_handler(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @overcommit_kbytes_handler(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dirty_background_ratio_handler(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dirty_background_bytes_handler(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dirty_ratio_handler(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dirty_bytes_handler(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dirty_writeback_centisecs_handler(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dirtytime_interval_handler(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lowmem_reserve_ratio_sysctl_handler(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drop_caches_sysctl_handler(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysctl_compaction_handler(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @compaction_proactiveness_sysctl_handler(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_dointvec_minmax_warn_RT_change(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) #0 {
  %6 = alloca %struct.do_proc_dointvec_minmax_conv_param, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  %7 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  store ptr %8, ptr %6, align 8
  %9 = getelementptr inbounds %struct.do_proc_dointvec_minmax_conv_param, ptr %6, i32 0, i32 1
  %10 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  store ptr %11, ptr %9, align 4
  %12 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = call fastcc i32 @__do_proc_dointvec(ptr noundef %13, ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull @do_proc_dointvec_minmax_conv, ptr noundef nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @min_free_kbytes_sysctl_handler(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watermark_scale_factor_sysctl_handler(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @percpu_pagelist_high_fraction_sysctl_handler(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vmstat_refresh(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmap_min_addr_handler(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }

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
!9 = !{!"auto-init"}
!10 = !{i8 0, i8 2}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2158126394}
!13 = !{i64 609205, i64 2148099176, i64 2148099202, i64 2148099249, i64 2148099271, i64 2148099299, i64 2148099319}
!14 = !{i64 617855, i64 617872, i64 617896, i64 617922, i64 617940}
!15 = !{i64 2158126717}
