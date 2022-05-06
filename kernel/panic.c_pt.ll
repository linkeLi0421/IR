; ModuleID = '/llk/IR/kernel/panic.c_pt.bc'
source_filename = "../kernel/panic.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_panic_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22panic_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_panic_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_panic_notifier_list:\09\09\09\09\09"
module asm "\09.asciz \09\22panic_notifier_list\22\09\09\09\09\09"
module asm "__kstrtabns_panic_notifier_list:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_panic_blink:\09\09\09\09\09"
module asm "\09.asciz \09\22panic_blink\22\09\09\09\09\09"
module asm "__kstrtabns_panic_blink:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nmi_panic:\09\09\09\09\09"
module asm "\09.asciz \09\22nmi_panic\22\09\09\09\09\09"
module asm "__kstrtabns_nmi_panic:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_panic:\09\09\09\09\09"
module asm "\09.asciz \09\22panic\22\09\09\09\09\09"
module asm "__kstrtabns_panic:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_test_taint:\09\09\09\09\09"
module asm "\09.asciz \09\22test_taint\22\09\09\09\09\09"
module asm "__kstrtabns_test_taint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_add_taint:\09\09\09\09\09"
module asm "\09.asciz \09\22add_taint\22\09\09\09\09\09"
module asm "__kstrtabns_add_taint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_warn_slowpath_fmt:\09\09\09\09\09"
module asm "\09.asciz \09\22warn_slowpath_fmt\22\09\09\09\09\09"
module asm "__kstrtabns_warn_slowpath_fmt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___stack_chk_fail:\09\09\09\09\09"
module asm "\09.asciz \09\22__stack_chk_fail\22\09\09\09\09\09"
module asm "__kstrtabns___stack_chk_fail:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.taint_flag = type { i8, i8, i8 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.14 }
%union.anon.14 = type { ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__va_list = type { ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.63, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.41 }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.63 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.warn_args = type { ptr, %struct.__va_list }

@panic_on_oops = dso_local local_unnamed_addr global i32 0, align 4
@panic_on_taint_nousertaint = dso_local local_unnamed_addr global i8 0, align 1
@panic_timeout = dso_local global i32 0, align 4
@__kstrtab_panic_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_panic_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_panic_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @panic_timeout to i32), ptr @__kstrtab_panic_timeout, ptr @__kstrtabns_panic_timeout }, section "___ksymtab_gpl+panic_timeout", align 4
@panic_notifier_list = dso_local global %struct.atomic_notifier_head zeroinitializer, align 4
@__kstrtab_panic_notifier_list = external dso_local constant [0 x i8], align 1
@__kstrtabns_panic_notifier_list = external dso_local constant [0 x i8], align 1
@__ksymtab_panic_notifier_list = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @panic_notifier_list to i32), ptr @__kstrtab_panic_notifier_list, ptr @__kstrtabns_panic_notifier_list }, section "___ksymtab+panic_notifier_list", align 4
@panic_blink = dso_local global ptr null, align 4
@__kstrtab_panic_blink = external dso_local constant [0 x i8], align 1
@__kstrtabns_panic_blink = external dso_local constant [0 x i8], align 1
@__ksymtab_panic_blink = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @panic_blink to i32), ptr @__kstrtab_panic_blink, ptr @__kstrtabns_panic_blink }, section "___ksymtab+panic_blink", align 4
@crash_smp_send_stop.cpus_stopped = internal unnamed_addr global i1 false, align 4
@panic_cpu = dso_local global %struct.atomic_t { i32 -1 }, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__kstrtab_nmi_panic = external dso_local constant [0 x i8], align 1
@__kstrtabns_nmi_panic = external dso_local constant [0 x i8], align 1
@__ksymtab_nmi_panic = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nmi_panic to i32), ptr @__kstrtab_nmi_panic, ptr @__kstrtabns_nmi_panic }, section "___ksymtab+nmi_panic", align 4
@panic.buf = internal global [1024 x i8] zeroinitializer, align 1
@crash_kexec_post_notifiers = dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"\010Kernel panic - not syncing: %s\0A\00", align 1
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"\010Rebooting in %d seconds..\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@panic_reboot_mode = external dso_local local_unnamed_addr global i32, align 4
@reboot_mode = external dso_local local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"\010---[ end Kernel panic - not syncing: %s ]---\0A\00", align 1
@suppress_printk = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_panic = external dso_local constant [0 x i8], align 1
@__kstrtabns_panic = external dso_local constant [0 x i8], align 1
@__ksymtab_panic = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @panic to i32), ptr @__kstrtab_panic, ptr @__kstrtabns_panic }, section "___ksymtab+panic", align 4
@taint_flags = dso_local local_unnamed_addr constant [18 x %struct.taint_flag] [%struct.taint_flag { i8 80, i8 71, i8 1 }, %struct.taint_flag { i8 70, i8 32, i8 1 }, %struct.taint_flag { i8 83, i8 32, i8 0 }, %struct.taint_flag { i8 82, i8 32, i8 0 }, %struct.taint_flag { i8 77, i8 32, i8 0 }, %struct.taint_flag { i8 66, i8 32, i8 0 }, %struct.taint_flag { i8 85, i8 32, i8 0 }, %struct.taint_flag { i8 68, i8 32, i8 0 }, %struct.taint_flag { i8 65, i8 32, i8 0 }, %struct.taint_flag { i8 87, i8 32, i8 0 }, %struct.taint_flag { i8 67, i8 32, i8 1 }, %struct.taint_flag { i8 73, i8 32, i8 0 }, %struct.taint_flag { i8 79, i8 32, i8 1 }, %struct.taint_flag { i8 69, i8 32, i8 1 }, %struct.taint_flag { i8 76, i8 32, i8 0 }, %struct.taint_flag { i8 75, i8 32, i8 1 }, %struct.taint_flag { i8 88, i8 32, i8 1 }, %struct.taint_flag { i8 84, i8 32, i8 1 }], align 1
@print_tainted.buf = internal global [28 x i8] zeroinitializer, align 1
@tainted_mask = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"Tainted: \00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Not tainted\00", align 1
@__kstrtab_test_taint = external dso_local constant [0 x i8], align 1
@__kstrtabns_test_taint = external dso_local constant [0 x i8], align 1
@__ksymtab_test_taint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @test_taint to i32), ptr @__kstrtab_test_taint, ptr @__kstrtabns_test_taint }, section "___ksymtab+test_taint", align 4
@.str.6 = private unnamed_addr constant [48 x i8] c"\014Disabling lock debugging due to kernel taint\0A\00", align 1
@panic_on_taint = dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"panic_on_taint set ...\00", align 1
@__kstrtab_add_taint = external dso_local constant [0 x i8], align 1
@__kstrtabns_add_taint = external dso_local constant [0 x i8], align 1
@__ksymtab_add_taint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @add_taint to i32), ptr @__kstrtab_add_taint, ptr @__kstrtabns_add_taint }, section "___ksymtab+add_taint", align 4
@pause_on_oops_flag = internal unnamed_addr global i1 false, align 4
@sysctl_oops_all_cpu_backtrace = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@.str.8 = private unnamed_addr constant [41 x i8] c"\014WARNING: CPU: %d PID: %d at %s:%d %pS\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"\014WARNING: CPU: %d PID: %d at %pS\0A\00", align 1
@panic_on_warn = dso_local global i32 0, section ".data..read_mostly", align 4
@.str.10 = private unnamed_addr constant [23 x i8] c"panic_on_warn set ...\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"\014------------[ cut here ]------------\0A\00", align 1
@__kstrtab_warn_slowpath_fmt = external dso_local constant [0 x i8], align 1
@__kstrtabns_warn_slowpath_fmt = external dso_local constant [0 x i8], align 1
@__ksymtab_warn_slowpath_fmt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @warn_slowpath_fmt to i32), ptr @__kstrtab_warn_slowpath_fmt, ptr @__kstrtabns_warn_slowpath_fmt }, section "___ksymtab+warn_slowpath_fmt", align 4
@__initcall__kmod_panic__242_658_register_warn_debugfs6 = internal global ptr @register_warn_debugfs, section ".initcall6.init", align 4
@.str.12 = private unnamed_addr constant [51 x i8] c"stack-protector: Kernel stack is corrupted in: %pB\00", align 1
@__kstrtab___stack_chk_fail = external dso_local constant [0 x i8], align 1
@__kstrtabns___stack_chk_fail = external dso_local constant [0 x i8], align 1
@__ksymtab___stack_chk_fail = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__stack_chk_fail to i32), ptr @__kstrtab___stack_chk_fail, ptr @__kstrtabns___stack_chk_fail }, section "___ksymtab+__stack_chk_fail", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_panic = internal constant %struct.kernel_param { ptr @.str.17, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.14 { ptr @panic_timeout } }, section "__param", align 4
@__param_str_panic_print = internal constant [12 x i8] c"panic_print\00", align 1
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 4
@panic_print = dso_local global i32 0, align 4
@__param_panic_print = internal constant %struct.kernel_param { ptr @__param_str_panic_print, ptr null, ptr @param_ops_ulong, i16 420, i8 -1, i8 0, %union.anon.14 { ptr @panic_print } }, section "__param", align 4
@__param_str_pause_on_oops = internal constant [14 x i8] c"pause_on_oops\00", align 1
@pause_on_oops = internal global i32 0, align 4
@__param_pause_on_oops = internal constant %struct.kernel_param { ptr @__param_str_pause_on_oops, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.14 { ptr @pause_on_oops } }, section "__param", align 4
@__param_str_panic_on_warn = internal constant [14 x i8] c"panic_on_warn\00", align 1
@__param_panic_on_warn = internal constant %struct.kernel_param { ptr @__param_str_panic_on_warn, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.14 { ptr @panic_on_warn } }, section "__param", align 4
@__param_str_crash_kexec_post_notifiers = internal constant [27 x i8] c"crash_kexec_post_notifiers\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@__param_crash_kexec_post_notifiers = internal constant %struct.kernel_param { ptr @__param_str_crash_kexec_post_notifiers, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.14 { ptr @crash_kexec_post_notifiers } }, section "__param", align 4
@__setup_str_oops_setup = internal constant [5 x i8] c"oops\00", section ".init.rodata", align 1
@__setup_oops_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_oops_setup, ptr @oops_setup, i32 1 }, section ".init.setup", align 4
@__setup_str_panic_on_taint_setup = internal constant [15 x i8] c"panic_on_taint\00", section ".init.rodata", align 1
@__setup_panic_on_taint_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_panic_on_taint_setup, ptr @panic_on_taint_setup, i32 1 }, section ".init.setup", align 4
@debug_locks = external dso_local global i32, section ".data..read_mostly", align 4
@do_oops_enter_exit.spin_counter = internal unnamed_addr global i32 0, align 4
@pause_on_oops_lock = internal global %struct.spinlock zeroinitializer, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.13 = private unnamed_addr constant [31 x i8] c"\014---[ end trace %016llx ]---\0A\00", align 1
@__tracepoint_error_report_end = external dso_local global %struct.tracepoint, align 4
@.str.15 = private unnamed_addr constant [16 x i8] c"clear_warn_once\00", align 1
@clear_warn_once_fops = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @clear_warn_once_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"%lld\0A\00", align 1
@__start_once = external dso_local global [0 x i8], align 1
@__end_once = external dso_local global [0 x i8], align 1
@.str.17 = private constant [6 x i8] c"panic\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"nousertaint\00", align 1
@.str.20 = private unnamed_addr constant [58 x i8] c"\016panic_on_taint: bitmask=0x%lx nousertaint_mode=%sabled\0A\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@llvm.compiler.used = appending global [17 x ptr] [ptr @__initcall__kmod_panic__242_658_register_warn_debugfs6, ptr @__ksymtab___stack_chk_fail, ptr @__ksymtab_add_taint, ptr @__ksymtab_nmi_panic, ptr @__ksymtab_panic, ptr @__ksymtab_panic_blink, ptr @__ksymtab_panic_notifier_list, ptr @__ksymtab_panic_timeout, ptr @__ksymtab_test_taint, ptr @__ksymtab_warn_slowpath_fmt, ptr @__param_crash_kexec_post_notifiers, ptr @__param_panic, ptr @__param_panic_on_warn, ptr @__param_panic_print, ptr @__param_pause_on_oops, ptr @__setup_oops_setup, ptr @__setup_panic_on_taint_setup], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @panic_smp_self_stop() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %1, %0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !8
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !9
  br label %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @nmi_panic_self_stop(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @panic_smp_self_stop()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @crash_smp_send_stop() local_unnamed_addr #0 {
  %1 = load i1, ptr @crash_smp_send_stop.cpus_stopped, align 4
  br i1 %1, label %3, label %2

2:                                                ; preds = %0
  tail call void @smp_send_stop() #17
  store i1 true, ptr @crash_smp_send_stop.cpus_stopped, align 4
  br label %3

3:                                                ; preds = %2, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smp_send_stop() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nmi_panic(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @llvm.thread.pointer() #17
  %4 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @panic_cpu) #17, !srcloc !11
  br label %6

6:                                                ; preds = %6, %2
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) @panic_cpu, ptr nonnull @panic_cpu, i32 -1, i32 %5, ptr nonnull elementtype(i32) @panic_cpu) #17, !srcloc !12
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %6

10:                                               ; preds = %6
  %11 = extractvalue { i32, i32 } %7, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !13
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str, ptr noundef %1) #18
  unreachable

14:                                               ; preds = %10
  %15 = icmp eq i32 %11, %5
  br i1 %15, label %17, label %16

16:                                               ; preds = %14
  tail call void @nmi_panic_self_stop(ptr noundef %0)
  br label %17

17:                                               ; preds = %16, %14
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold noreturn nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @panic(ptr noundef %0, ...) #3 {
  %2 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #17
  store i32 0, ptr %2, align 4, !annotation !14
  %3 = load i8, ptr @crash_kexec_post_notifiers, align 1, !range !15
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #17, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !17
  %4 = tail call ptr @llvm.thread.pointer() #17
  %5 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @panic_cpu) #17, !srcloc !11
  br label %7

7:                                                ; preds = %7, %1
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) @panic_cpu, ptr nonnull @panic_cpu, i32 -1, i32 %6, ptr nonnull elementtype(i32) @panic_cpu) #17, !srcloc !12
  %9 = extractvalue { i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %7

11:                                               ; preds = %7
  %12 = icmp eq i8 %3, 0
  %13 = extractvalue { i32, i32 } %8, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !13
  %14 = icmp eq i32 %13, -1
  %15 = icmp eq i32 %13, %6
  %16 = or i1 %14, %15
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  tail call void @panic_smp_self_stop()
  br label %18

18:                                               ; preds = %17, %11
  tail call void @console_verbose() #17
  tail call void @bust_spinlocks(i32 noundef 1) #17
  call void @llvm.va_start(ptr nonnull %2)
  %19 = load i32, ptr %2, align 4
  %20 = insertvalue [1 x i32] poison, i32 %19, 0
  %21 = call i32 @vscnprintf(ptr noundef nonnull @panic.buf, i32 noundef 1024, ptr noundef %0, [1 x i32] %20) #17
  call void @llvm.va_end(ptr nonnull %2)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %18
  %24 = add i32 %21, -1
  %25 = getelementptr [1024 x i8], ptr @panic.buf, i32 0, i32 %24
  %26 = load i8, ptr %25, align 1
  %27 = icmp eq i8 %26, 10
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i8 0, ptr %25, align 1
  br label %29

29:                                               ; preds = %28, %23, %18
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @panic.buf) #19
  %31 = load volatile i32, ptr @tainted_mask, align 4
  %32 = and i32 %31, 128
  %33 = icmp eq i32 %32, 0
  %34 = load i32, ptr @oops_in_progress, align 4
  %35 = icmp slt i32 %34, 2
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  call void @dump_stack() #19
  br label %38

38:                                               ; preds = %37, %29
  br i1 %12, label %39, label %41

39:                                               ; preds = %38
  call void @__crash_kexec(ptr noundef null) #17
  call void @smp_send_stop() #17
  %40 = call i32 @atomic_notifier_call_chain(ptr noundef nonnull @panic_notifier_list, i32 noundef 0, ptr noundef nonnull @panic.buf) #17
  call void @kmsg_dump(i32 noundef 1) #17
  br label %43

41:                                               ; preds = %38
  call void @crash_smp_send_stop()
  %42 = call i32 @atomic_notifier_call_chain(ptr noundef nonnull @panic_notifier_list, i32 noundef 0, ptr noundef nonnull @panic.buf) #17
  call void @kmsg_dump(i32 noundef 1) #17
  call void @__crash_kexec(ptr noundef null) #17
  br label %43

43:                                               ; preds = %41, %39
  call void @unblank_screen() #17
  call void @console_unblank() #17
  %44 = call i32 @debug_locks_off() #17
  call void @console_flush_on_panic(i32 noundef 0) #17
  %45 = load i32, ptr @panic_print, align 4
  %46 = and i32 %45, 32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  call void @console_flush_on_panic(i32 noundef 1) #17
  %49 = load i32, ptr @panic_print, align 4
  br label %50

50:                                               ; preds = %48, %43
  %51 = phi i32 [ %49, %48 ], [ %45, %43 ]
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  call void @show_state_filter(i32 noundef 0) #17
  %55 = load i32, ptr @panic_print, align 4
  br label %56

56:                                               ; preds = %54, %50
  %57 = phi i32 [ %55, %54 ], [ %51, %50 ]
  %58 = and i32 %57, 2
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  call void @show_mem(i32 noundef 0, ptr noundef null) #17
  %61 = load i32, ptr @panic_print, align 4
  br label %62

62:                                               ; preds = %60, %56
  %63 = phi i32 [ %61, %60 ], [ %57, %56 ]
  %64 = and i32 %63, 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  call void @sysrq_timer_list_show() #17
  %67 = load i32, ptr @panic_print, align 4
  br label %68

68:                                               ; preds = %66, %62
  %69 = phi i32 [ %67, %66 ], [ %63, %62 ]
  %70 = and i32 %69, 16
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  call void @ftrace_dump(i32 noundef 1) #17
  br label %73

73:                                               ; preds = %72, %68
  %74 = load ptr, ptr @panic_blink, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store ptr @no_blink, ptr @panic_blink, align 4
  br label %77

77:                                               ; preds = %76, %73
  %78 = load i32, ptr @panic_timeout, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %110

80:                                               ; preds = %77
  %81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %78) #19
  %82 = load i32, ptr @panic_timeout, align 4
  %83 = mul i32 %82, 1000
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %110

85:                                               ; preds = %105, %80
  %86 = phi i32 [ %106, %105 ], [ 0, %80 ]
  %87 = phi i32 [ %98, %105 ], [ 0, %80 ]
  %88 = phi i32 [ %97, %105 ], [ 0, %80 ]
  %89 = icmp slt i32 %86, %87
  br i1 %89, label %96, label %90

90:                                               ; preds = %85
  %91 = load ptr, ptr @panic_blink, align 4
  %92 = xor i32 %88, 1
  %93 = call i32 %91(i32 noundef %92) #17
  %94 = add i32 %93, %86
  %95 = add i32 %94, 200
  br label %96

96:                                               ; preds = %90, %85
  %97 = phi i32 [ %92, %90 ], [ %88, %85 ]
  %98 = phi i32 [ %95, %90 ], [ %87, %85 ]
  %99 = phi i32 [ %94, %90 ], [ %86, %85 ]
  br label %100

100:                                              ; preds = %100, %96
  %101 = phi i32 [ 100, %96 ], [ %102, %100 ]
  %102 = add nsw i32 %101, -1
  %103 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %103(i32 noundef 214748000) #17
  %104 = icmp eq i32 %102, 0
  br i1 %104, label %105, label %100

105:                                              ; preds = %100
  %106 = add i32 %99, 100
  %107 = load i32, ptr @panic_timeout, align 4
  %108 = mul i32 %107, 1000
  %109 = icmp slt i32 %106, %108
  br i1 %109, label %85, label %110

110:                                              ; preds = %105, %80, %77
  %111 = phi i32 [ %78, %77 ], [ %82, %80 ], [ %107, %105 ]
  %112 = phi i32 [ 0, %77 ], [ 0, %80 ], [ %97, %105 ]
  %113 = phi i32 [ 0, %77 ], [ 0, %80 ], [ %98, %105 ]
  %114 = icmp eq i32 %111, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %110
  %116 = load i32, ptr @panic_reboot_mode, align 4
  %117 = icmp eq i32 %116, -1
  br i1 %117, label %119, label %118

118:                                              ; preds = %115
  store i32 %116, ptr @reboot_mode, align 4
  br label %119

119:                                              ; preds = %118, %115
  call void @emergency_restart() #17
  br label %120

120:                                              ; preds = %119, %110
  %121 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @panic.buf) #19
  store i32 1, ptr @suppress_printk, align 4
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !18
  br label %122

122:                                              ; preds = %142, %120
  %123 = phi i32 [ %112, %120 ], [ %134, %142 ]
  %124 = phi i32 [ %113, %120 ], [ %135, %142 ]
  %125 = phi i32 [ 0, %120 ], [ %143, %142 ]
  %126 = icmp slt i32 %125, %124
  br i1 %126, label %133, label %127

127:                                              ; preds = %122
  %128 = load ptr, ptr @panic_blink, align 4
  %129 = xor i32 %123, 1
  %130 = call i32 %128(i32 noundef %129) #17
  %131 = add i32 %130, %125
  %132 = add i32 %131, 200
  br label %133

133:                                              ; preds = %127, %122
  %134 = phi i32 [ %129, %127 ], [ %123, %122 ]
  %135 = phi i32 [ %132, %127 ], [ %124, %122 ]
  %136 = phi i32 [ %131, %127 ], [ %125, %122 ]
  br label %137

137:                                              ; preds = %137, %133
  %138 = phi i32 [ 100, %133 ], [ %139, %137 ]
  %139 = add nsw i32 %138, -1
  %140 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %140(i32 noundef 214748000) #17
  %141 = icmp eq i32 %139, 0
  br i1 %141, label %142, label %137

142:                                              ; preds = %137
  %143 = add i32 %136, 100
  br label %122
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_verbose() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bust_spinlocks(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vscnprintf(ptr noundef, i32 noundef, ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @test_taint(i32 noundef %0) #7 {
  %2 = lshr i32 %0, 5
  %3 = getelementptr i32, ptr @tainted_mask, i32 %2
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %0, 31
  %6 = lshr i32 %4, %5
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__crash_kexec(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmsg_dump(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unblank_screen() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unblank() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_flush_on_panic(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @no_blink(i32 noundef %0) #8 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @emergency_restart() local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local nonnull ptr @print_tainted() local_unnamed_addr #9 {
  %1 = load i32, ptr @tainted_mask, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %21, label %3

3:                                                ; preds = %0
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) @print_tainted.buf, ptr noundef nonnull align 1 dereferenceable(10) @.str.4, i32 10, i1 false)
  br label %4

4:                                                ; preds = %4, %3
  %5 = phi i32 [ 0, %3 ], [ %18, %4 ]
  %6 = phi ptr [ getelementptr inbounds ([28 x i8], ptr @print_tainted.buf, i32 0, i32 9), %3 ], [ %17, %4 ]
  %7 = lshr i32 %5, 5
  %8 = getelementptr i32, ptr @tainted_mask, i32 %7
  %9 = load volatile i32, ptr %8, align 4
  %10 = shl nuw i32 1, %5
  %11 = and i32 %9, %10
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr [18 x %struct.taint_flag], ptr @taint_flags, i32 0, i32 %5
  %14 = getelementptr [18 x %struct.taint_flag], ptr @taint_flags, i32 0, i32 %5, i32 1
  %15 = select i1 %12, ptr %14, ptr %13
  %16 = load i8, ptr %15, align 1
  %17 = getelementptr i8, ptr %6, i32 1
  store i8 %16, ptr %6, align 1
  %18 = add nuw nsw i32 %5, 1
  %19 = icmp eq i32 %18, 18
  br i1 %19, label %20, label %4

20:                                               ; preds = %4
  store i8 0, ptr %17, align 1
  br label %22

21:                                               ; preds = %0
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(12) @print_tainted.buf, ptr noundef nonnull align 1 dereferenceable(12) @.str.5, i32 12, i1 false)
  br label %22

22:                                               ; preds = %21, %20
  ret ptr @print_tainted.buf
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @get_taint() local_unnamed_addr #10 {
  %1 = load i32, ptr @tainted_mask, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @add_taint(i32 noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 1
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @debug_locks) #17, !srcloc !11
  %5 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr nonnull @debug_locks) #17, !srcloc !20
  %6 = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !21
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #19
  br label %10

10:                                               ; preds = %8, %4, %2
  tail call void @_set_bit(i32 noundef %0, ptr noundef nonnull @tainted_mask) #17
  %11 = load i32, ptr @tainted_mask, align 4
  %12 = load i32, ptr @panic_on_taint, align 4
  %13 = and i32 %12, %11
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  store i32 0, ptr @panic_on_taint, align 4
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.7) #18
  unreachable

16:                                               ; preds = %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @oops_may_print() local_unnamed_addr #10 {
  %1 = load i1, ptr @pause_on_oops_flag, align 4
  %2 = xor i1 %1, true
  ret i1 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @oops_enter() local_unnamed_addr #0 {
  tail call void @tracing_off() #17
  %1 = tail call i32 @debug_locks_off() #17
  tail call fastcc void @do_oops_enter_exit()
  %2 = load i32, ptr @sysctl_oops_all_cpu_backtrace, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  tail call void @arch_trigger_cpumask_backtrace(ptr noundef nonnull @__cpu_online_mask, i1 noundef zeroext false) #17
  br label %5

5:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tracing_off() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @do_oops_enter_exit() unnamed_addr #0 {
  %1 = load i32, ptr @pause_on_oops, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %32, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pause_on_oops_lock) #17
  %5 = load i1, ptr @pause_on_oops_flag, align 4
  br i1 %5, label %6, label %29

6:                                                ; preds = %3
  %7 = load i32, ptr @do_oops_enter_exit.spin_counter, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %6
  %10 = load i32, ptr @pause_on_oops, align 4
  store i32 %10, ptr @do_oops_enter_exit.spin_counter, align 4
  br label %11

11:                                               ; preds = %19, %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %12 = load i16, ptr @pause_on_oops_lock, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr @pause_on_oops_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !25
  br label %14

14:                                               ; preds = %14, %11
  %15 = phi i32 [ %17, %14 ], [ 0, %11 ]
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #17
  %17 = add nuw nsw i32 %15, 1
  %18 = icmp eq i32 %17, 1000
  br i1 %18, label %19, label %14

19:                                               ; preds = %14
  tail call void @_raw_spin_lock(ptr noundef nonnull @pause_on_oops_lock) #17
  %20 = load i32, ptr @do_oops_enter_exit.spin_counter, align 4
  %21 = add i32 %20, -1
  store i32 %21, ptr @do_oops_enter_exit.spin_counter, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %11

23:                                               ; preds = %23, %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %24 = load i16, ptr @pause_on_oops_lock, align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr @pause_on_oops_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !25
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #17
  tail call void @_raw_spin_lock(ptr noundef nonnull @pause_on_oops_lock) #17
  %27 = load i32, ptr @do_oops_enter_exit.spin_counter, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %23

29:                                               ; preds = %19, %3
  %30 = xor i1 %5, true
  store i1 %30, ptr @pause_on_oops_flag, align 4
  br label %31

31:                                               ; preds = %29, %23
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pause_on_oops_lock, i32 noundef %4) #17
  br label %32

32:                                               ; preds = %31, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @oops_exit() local_unnamed_addr #0 {
  tail call fastcc void @do_oops_enter_exit()
  %1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i64 noundef 0) #19
  tail call void @kmsg_dump(i32 noundef 2) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__warn(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef readonly %5) local_unnamed_addr #0 {
  tail call void @disable_trace_on_warning() #17
  %7 = icmp eq ptr %0, null
  %8 = tail call ptr @llvm.thread.pointer() #17
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 52
  %12 = load i32, ptr %11, align 8
  br i1 %7, label %15, label %13

13:                                               ; preds = %6
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2) #19
  br label %17

15:                                               ; preds = %6
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %10, i32 noundef %12, ptr noundef %2) #19
  br label %17

17:                                               ; preds = %15, %13
  %18 = icmp eq ptr %5, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr %5, align 4
  %21 = getelementptr inbounds %struct.warn_args, ptr %5, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = insertvalue [1 x i32] undef, i32 %22, 0
  %24 = tail call i32 @vprintk(ptr noundef %20, [1 x i32] %23) #17
  br label %25

25:                                               ; preds = %19, %17
  tail call void @print_modules() #17
  %26 = icmp eq ptr %4, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %25
  %28 = load i32, ptr @panic_on_warn, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %33

30:                                               ; preds = %25
  tail call void @show_regs(ptr noundef nonnull %4) #17
  %31 = load i32, ptr @panic_on_warn, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30, %27
  store i32 0, ptr @panic_on_warn, align 4
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.10) #18
  unreachable

34:                                               ; preds = %27
  tail call void @dump_stack() #19
  br label %35

35:                                               ; preds = %34, %30
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i64 noundef 0) #19
  %37 = ptrtoint ptr %2 to i32
  %38 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_error_report_end, i32 0, i32 1), align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %35
  %41 = tail call ptr @llvm.thread.pointer() #17
  %42 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %43 = load i32, ptr %42, align 8
  %44 = lshr i32 %43, 5
  %45 = getelementptr i32, ptr @__cpu_online_mask, i32 %44
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %43, 31
  %48 = shl nuw i32 1, %47
  %49 = and i32 %48, %46
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %40
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !26
  %52 = tail call i32 @__traceiter_error_report_end(ptr noundef null, i32 noundef 2, i32 noundef %37) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !27
  br label %53

53:                                               ; preds = %51, %40, %35
  tail call void @_set_bit(i32 noundef %3, ptr noundef nonnull @tainted_mask) #17
  %54 = load i32, ptr @tainted_mask, align 4
  %55 = load i32, ptr @panic_on_taint, align 4
  %56 = and i32 %55, %54
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  store i32 0, ptr @panic_on_taint, align 4
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.7) #20
  unreachable

59:                                               ; preds = %53
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_trace_on_warning() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vprintk(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_modules() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_regs(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @warn_slowpath_fmt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ...) #0 {
  %5 = alloca %struct.warn_args, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  store i64 0, ptr %5, align 8, !annotation !14
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #19
  %7 = icmp eq ptr %3, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = tail call ptr @llvm.returnaddress(i32 0)
  tail call void @__warn(ptr noundef %0, i32 noundef %1, ptr noundef %9, i32 noundef %2, ptr noundef null, ptr noundef null)
  br label %13

10:                                               ; preds = %4
  store ptr %3, ptr %5, align 8
  %11 = getelementptr inbounds %struct.warn_args, ptr %5, i32 0, i32 1
  call void @llvm.va_start(ptr %11)
  %12 = call ptr @llvm.returnaddress(i32 0)
  call void @__warn(ptr noundef %0, i32 noundef %1, ptr noundef %12, i32 noundef %2, ptr noundef null, ptr noundef nonnull %5)
  call void @llvm.va_end(ptr %11)
  br label %13

13:                                               ; preds = %10, %8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @register_warn_debugfs() #12 section ".init.text" {
  %1 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.15, i16 noundef zeroext 128, ptr noundef null, ptr noundef null, ptr noundef nonnull @clear_warn_once_fops) #17
  ret i32 0
}

; Function Attrs: noinline noprofile noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__stack_chk_fail() #13 section ".noinstr.text" {
  %1 = tail call ptr @llvm.returnaddress(i32 0)
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.12, ptr noundef %1) #18
  unreachable
}

; Function Attrs: cold mustprogress nofree nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal i32 @oops_setup(ptr noundef readonly %0) #14 section ".init.text" {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef nonnull dereferenceable(6) @.str.17)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  store i32 1, ptr @panic_on_oops, align 4
  br label %7

7:                                                ; preds = %6, %3, %1
  %8 = phi i32 [ -22, %1 ], [ 0, %6 ], [ 0, %3 ]
  ret i32 %8
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @panic_on_taint_setup(ptr noundef %0) #12 section ".init.text" {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %24, label %4

4:                                                ; preds = %1
  %5 = call ptr @strsep(ptr noundef nonnull %2, ptr noundef nonnull @.str.18) #17
  %6 = call i32 @_kstrtoul(ptr noundef %5, i32 noundef 16, ptr noundef nonnull @panic_on_taint) #17
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %4
  %9 = load i32, ptr @panic_on_taint, align 4
  %10 = and i32 %9, 262143
  store i32 %10, ptr @panic_on_taint, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %2, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = call i32 @strcmp(ptr noundef nonnull %13, ptr noundef nonnull dereferenceable(12) @.str.19)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i8 1, ptr @panic_on_taint_nousertaint, align 1
  br label %19

19:                                               ; preds = %18, %15, %12
  %20 = load i8, ptr @panic_on_taint_nousertaint, align 1, !range !15
  %21 = icmp eq i8 %20, 0
  %22 = select i1 %21, ptr @.str.22, ptr @.str.21
  %23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %10, ptr noundef nonnull %22) #19
  br label %24

24:                                               ; preds = %19, %8, %4, %1
  %25 = phi i32 [ 0, %19 ], [ -22, %1 ], [ -22, %4 ], [ -22, %8 ]
  ret i32 %25
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_mem(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysrq_timer_list_show() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ftrace_dump(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_state_filter(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_trigger_cpumask_backtrace(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_error_report_end(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file_unsafe(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clear_warn_once_fops_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull @clear_warn_once_set, ptr noundef nonnull @.str.16) #17
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clear_warn_once_set(ptr nocapture noundef readnone %0, i64 noundef %1) #0 {
  tail call void @generic_bug_clear_once() #17
  tail call void @llvm.memset.p0.i32(ptr nonnull align 1 @__start_once, i8 0, i32 sub (i32 ptrtoint (ptr @__end_once to i32), i32 ptrtoint (ptr @__start_once to i32)), i1 false)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_bug_clear_once() local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #16

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold noreturn nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { noinline noprofile noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { cold mustprogress nofree nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { argmemonly nofree nounwind willreturn }
attributes #17 = { nounwind }
attributes #18 = { cold noreturn }
attributes #19 = { cold nounwind }
attributes #20 = { cold noreturn nounwind }

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
!8 = !{i64 2153491037}
!9 = !{i64 2153490879}
!10 = !{i64 2147953499}
!11 = !{i64 264830, i64 2147766396, i64 2147766422, i64 2147766469, i64 2147766491, i64 2147766519, i64 2147766539}
!12 = !{i64 213982, i64 214006, i64 214027, i64 214044, i64 214061}
!13 = !{i64 2147953699}
!14 = !{!"auto-init"}
!15 = !{i8 0, i8 2}
!16 = !{i64 294012}
!17 = !{i64 2153492489}
!18 = !{i64 293822}
!19 = !{i64 2148180491}
!20 = !{i64 347361, i64 347378, i64 347402, i64 347428, i64 347446}
!21 = !{i64 2148180808}
!22 = !{i64 2149253889}
!23 = !{i64 2149249713}
!24 = !{i64 2149249788, i64 2149249815, i64 2149249862, i64 2149249884, i64 2149249912, i64 2149249932}
!25 = !{i64 2149276892}
!26 = !{i64 2153471243}
!27 = !{i64 2153471423}
