; ModuleID = '/llk/IR/drivers/tty/sysrq.c_pt.bc'
source_filename = "../drivers/tty/sysrq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sysrq_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22sysrq_mask\22\09\09\09\09\09"
module asm "__kstrtabns_sysrq_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_handle_sysrq:\09\09\09\09\09"
module asm "\09.asciz \09\22handle_sysrq\22\09\09\09\09\09"
module asm "__kstrtabns_handle_sysrq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sysrq_toggle_support:\09\09\09\09\09"
module asm "\09.asciz \09\22sysrq_toggle_support\22\09\09\09\09\09"
module asm "__kstrtabns_sysrq_toggle_support:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_sysrq_key:\09\09\09\09\09"
module asm "\09.asciz \09\22register_sysrq_key\22\09\09\09\09\09"
module asm "__kstrtabns_register_sysrq_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_sysrq_key:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_sysrq_key\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_sysrq_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.sysrq_key_op = type { ptr, ptr, ptr, i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4 x %struct.wait_queue_head], %struct.atomic_t, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, i8, i32, %struct.zone_padding, %struct.lruvec, i32, [56 x i8], %struct.zone_padding, ptr, [40 x %struct.atomic_t], [28 x i8] }
%struct.zone = type { [3 x i32], i32, i32, [4 x i32], ptr, ptr, ptr, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, i32, ptr, i32, i32, [36 x i8], %struct.zone_padding, [12 x %struct.free_area], i32, %struct.spinlock, [8 x i8], %struct.zone_padding, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i8, i8, [26 x i8], %struct.zone_padding, [10 x %struct.atomic_t], [0 x %struct.atomic_t], [24 x i8] }
%struct.free_area = type { [6 x %struct.list_head], i32 }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i32, i32, %struct.atomic_t, [2 x i32], i32 }
%struct.zone_padding = type { [0 x i8] }
%struct.vc = type { ptr, %struct.work_struct }
%struct.input_handler = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, %struct.list_head, %struct.list_head }
%struct.input_device_id = type { i32, i16, i16, i16, i16, [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.oom_control = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32 }
%struct.sysrq_state = type { %struct.input_handle, %struct.work_struct, [24 x i32], i32, i32, i32, i32, i8, i8, i8, i8, i8, [24 x i32], i32, i32, i32, %struct.timer_list }
%struct.input_handle = type { ptr, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@sysrq_always_enabled = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@sysrq_enabled = internal unnamed_addr global i32 1, section ".data..read_mostly", align 4
@__kstrtab_sysrq_mask = external dso_local constant [0 x i8], align 1
@__kstrtabns_sysrq_mask = external dso_local constant [0 x i8], align 1
@__ksymtab_sysrq_mask = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sysrq_mask to i32), ptr @__kstrtab_sysrq_mask, ptr @__kstrtabns_sysrq_mask }, section "___ksymtab_gpl+sysrq_mask", align 4
@__setup_str_sysrq_always_enabled_setup = internal constant [21 x i8] c"sysrq_always_enabled\00", section ".init.rodata", align 1
@__setup_sysrq_always_enabled_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_sysrq_always_enabled_setup, ptr @sysrq_always_enabled_setup, i32 0 }, section ".init.setup", align 4
@sysrq_reboot_op = internal constant %struct.sysrq_key_op { ptr @sysrq_handle_reboot, ptr @.str.6, ptr @.str.7, i32 128 }, align 4
@__sysrq_reboot_op = dso_local local_unnamed_addr global ptr @sysrq_reboot_op, align 4
@suppress_printk = external dso_local local_unnamed_addr global i32, align 4
@console_printk = external dso_local local_unnamed_addr global [0 x i32], align 4
@.str = private unnamed_addr constant [13 x i8] c"\016sysrq: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"\016sysrq: This sysrq operation is disabled.\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"\016sysrq: HELP : \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"\01c%s \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"\01c\0A\00", align 1
@__kstrtab_handle_sysrq = external dso_local constant [0 x i8], align 1
@__kstrtabns_handle_sysrq = external dso_local constant [0 x i8], align 1
@__ksymtab_handle_sysrq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @handle_sysrq to i32), ptr @__kstrtab_handle_sysrq, ptr @__kstrtabns_handle_sysrq }, section "___ksymtab+handle_sysrq", align 4
@__param_str_reset_seq = internal constant [16 x i8] c"sysrq.reset_seq\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_reset_seq = internal constant %struct.kparam_array { i32 20, i32 2, ptr @sysrq_reset_seq_len, ptr @param_ops_sysrq_reset_seq, ptr @sysrq_reset_seq }, align 4
@__param_reset_seq = internal constant %struct.kernel_param { ptr @__param_str_reset_seq, ptr null, ptr @param_array_ops, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @__param_arr_reset_seq } }, section "__param", align 4
@__UNIQUE_ID_reset_seqtype257 = internal constant [50 x i8] c"sysrq.parmtype=reset_seq:array of sysrq_reset_seq\00", section ".modinfo", align 1
@__param_str_sysrq_downtime_ms = internal constant [24 x i8] c"sysrq.sysrq_downtime_ms\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@sysrq_reset_downtime_ms = internal global i32 0, align 4
@__param_sysrq_downtime_ms = internal constant %struct.kernel_param { ptr @__param_str_sysrq_downtime_ms, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @sysrq_reset_downtime_ms } }, section "__param", align 4
@__UNIQUE_ID_sysrq_downtime_mstype258 = internal constant [37 x i8] c"sysrq.parmtype=sysrq_downtime_ms:int\00", section ".modinfo", align 1
@__kstrtab_sysrq_toggle_support = external dso_local constant [0 x i8], align 1
@__kstrtabns_sysrq_toggle_support = external dso_local constant [0 x i8], align 1
@__ksymtab_sysrq_toggle_support = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sysrq_toggle_support to i32), ptr @__kstrtab_sysrq_toggle_support, ptr @__kstrtabns_sysrq_toggle_support }, section "___ksymtab_gpl+sysrq_toggle_support", align 4
@__kstrtab_register_sysrq_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_sysrq_key = external dso_local constant [0 x i8], align 1
@__ksymtab_register_sysrq_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_sysrq_key to i32), ptr @__kstrtab_register_sysrq_key, ptr @__kstrtabns_register_sysrq_key }, section "___ksymtab+register_sysrq_key", align 4
@__kstrtab_unregister_sysrq_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_sysrq_key = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_sysrq_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_sysrq_key to i32), ptr @__kstrtab_unregister_sysrq_key, ptr @__kstrtabns_unregister_sysrq_key }, section "___ksymtab+unregister_sysrq_key", align 4
@__initcall__kmod_sysrq__259_1195_sysrq_init6 = internal global ptr @sysrq_init, section ".initcall6.init", align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"\016sysrq: sysrq always enabled.\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"reboot(b)\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"Resetting\00", align 1
@sysrq_loglevel_op = internal constant %struct.sysrq_key_op { ptr @sysrq_handle_loglevel, ptr @.str.9, ptr @.str.10, i32 2 }, align 4
@sysrq_crash_op = internal constant %struct.sysrq_key_op { ptr @sysrq_handle_crash, ptr @.str.12, ptr @.str.13, i32 8 }, align 4
@sysrq_term_op = internal constant %struct.sysrq_key_op { ptr @sysrq_handle_term, ptr @.str.15, ptr @.str.16, i32 64 }, align 4
@sysrq_moom_op = internal constant %struct.sysrq_key_op { ptr @sysrq_handle_moom, ptr @.str.17, ptr @.str.18, i32 64 }, align 4
@sysrq_kill_op = internal constant %struct.sysrq_key_op { ptr @sysrq_handle_kill, ptr @.str.20, ptr @.str.21, i32 64 }, align 4
@sysrq_thaw_op = internal constant %struct.sysrq_key_op { ptr @sysrq_handle_thaw, ptr @.str.22, ptr @.str.23, i32 64 }, align 4
@sysrq_SAK_op = internal constant %struct.sysrq_key_op { ptr @sysrq_handle_SAK, ptr @.str.24, ptr @.str.25, i32 4 }, align 4
@sysrq_showallcpus_op = internal constant %struct.sysrq_key_op { ptr @sysrq_handle_showallcpus, ptr @.str.26, ptr @.str.27, i32 8 }, align 4
@sysrq_showmem_op = internal constant %struct.sysrq_key_op { ptr @sysrq_handle_showmem, ptr @.str.31, ptr @.str.32, i32 8 }, align 4
@sysrq_unrt_op = internal constant %struct.sysrq_key_op { ptr @sysrq_handle_unrt, ptr @.str.33, ptr @.str.34, i32 256 }, align 4
@sysrq_showregs_op = internal constant %struct.sysrq_key_op { ptr @sysrq_handle_showregs, ptr @.str.35, ptr @.str.36, i32 8 }, align 4
@sysrq_show_timers_op = internal constant %struct.sysrq_key_op { ptr @sysrq_handle_show_timers, ptr @.str.37, ptr @.str.38, i32 0 }, align 4
@sysrq_unraw_op = internal constant %struct.sysrq_key_op { ptr @sysrq_handle_unraw, ptr @.str.39, ptr @.str.40, i32 4 }, align 4
@sysrq_sync_op = internal constant %struct.sysrq_key_op { ptr @sysrq_handle_sync, ptr @.str.41, ptr @.str.42, i32 16 }, align 4
@sysrq_showstate_op = internal constant %struct.sysrq_key_op { ptr @sysrq_handle_showstate, ptr @.str.43, ptr @.str.44, i32 8 }, align 4
@sysrq_mountro_op = internal constant %struct.sysrq_key_op { ptr @sysrq_handle_mountro, ptr @.str.45, ptr @.str.46, i32 32 }, align 4
@sysrq_showstate_blocked_op = internal constant %struct.sysrq_key_op { ptr @sysrq_handle_showstate_blocked, ptr @.str.47, ptr @.str.48, i32 8 }, align 4
@sysrq_ftrace_dump_op = internal constant %struct.sysrq_key_op { ptr @sysrq_ftrace_dump, ptr @.str.49, ptr @.str.50, i32 8 }, align 4
@sysrq_key_table = internal unnamed_addr global <{ [36 x ptr], [26 x ptr] }> <{ [36 x ptr] [ptr @sysrq_loglevel_op, ptr @sysrq_loglevel_op, ptr @sysrq_loglevel_op, ptr @sysrq_loglevel_op, ptr @sysrq_loglevel_op, ptr @sysrq_loglevel_op, ptr @sysrq_loglevel_op, ptr @sysrq_loglevel_op, ptr @sysrq_loglevel_op, ptr @sysrq_loglevel_op, ptr null, ptr @sysrq_reboot_op, ptr @sysrq_crash_op, ptr null, ptr @sysrq_term_op, ptr @sysrq_moom_op, ptr null, ptr null, ptr @sysrq_kill_op, ptr @sysrq_thaw_op, ptr @sysrq_SAK_op, ptr @sysrq_showallcpus_op, ptr @sysrq_showmem_op, ptr @sysrq_unrt_op, ptr null, ptr @sysrq_showregs_op, ptr @sysrq_show_timers_op, ptr @sysrq_unraw_op, ptr @sysrq_sync_op, ptr @sysrq_showstate_op, ptr @sysrq_mountro_op, ptr null, ptr @sysrq_showstate_blocked_op, ptr null, ptr null, ptr @sysrq_ftrace_dump_op], [26 x ptr] zeroinitializer }>, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"loglevel(0-9)\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"Changing Loglevel\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"\016sysrq: Loglevel set to %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"crash(c)\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"Trigger a crash\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"sysrq triggered crash\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"terminate-all-tasks(e)\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"Terminate All Tasks\00", align 1
@tasklist_lock = external dso_local global %struct.rwlock_t, align 4
@init_task = external dso_local global %struct.task_struct, align 64
@.str.17 = private unnamed_addr constant [24 x i8] c"memory-full-oom-kill(f)\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"Manual OOM execution\00", align 1
@moom_work = internal global %struct.work_struct { %struct.atomic_t { i32 -32 }, %struct.list_head { ptr getelementptr (i8, ptr @moom_work, i64 4), ptr getelementptr (i8, ptr @moom_work, i64 4) }, ptr @moom_callback }, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@oom_lock = external dso_local global %struct.mutex, align 4
@.str.19 = private unnamed_addr constant [48 x i8] c"\016sysrq: OOM request ignored. No task eligible\0A\00", align 1
@contig_page_data = external dso_local global %struct.pglist_data, align 64
@.str.20 = private unnamed_addr constant [18 x i8] c"kill-all-tasks(i)\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"Kill All Tasks\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"thaw-filesystems(j)\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"Emergency Thaw of all frozen filesystems\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"sak(k)\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"SAK\00", align 1
@vc_cons = external dso_local global [63 x %struct.vc], align 4
@fg_console = external dso_local local_unnamed_addr global i32, align 4
@.str.26 = private unnamed_addr constant [34 x i8] c"show-backtrace-all-active-cpus(l)\00", align 1
@.str.27 = private unnamed_addr constant [34 x i8] c"Show backtrace of all active CPUs\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__irq_regs = external dso_local global ptr, section ".data..percpu", align 4
@.str.31 = private unnamed_addr constant [21 x i8] c"show-memory-usage(m)\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"Show Memory\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"nice-all-RT-tasks(n)\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"Nice All RT Tasks\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"show-registers(p)\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"Show Regs\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"show-all-timers(q)\00", align 1
@.str.38 = private unnamed_addr constant [55 x i8] c"Show clockevent devices & pending hrtimers (no others)\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"unraw(r)\00", align 1
@.str.40 = private unnamed_addr constant [36 x i8] c"Keyboard mode set to system default\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"sync(s)\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"Emergency Sync\00", align 1
@.str.43 = private unnamed_addr constant [20 x i8] c"show-task-states(t)\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"Show State\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"unmount(u)\00", align 1
@.str.46 = private unnamed_addr constant [22 x i8] c"Emergency Remount R/O\00", align 1
@.str.47 = private unnamed_addr constant [22 x i8] c"show-blocked-tasks(w)\00", align 1
@.str.48 = private unnamed_addr constant [19 x i8] c"Show Blocked State\00", align 1
@.str.49 = private unnamed_addr constant [22 x i8] c"dump-ftrace-buffer(z)\00", align 1
@.str.50 = private unnamed_addr constant [19 x i8] c"Dump ftrace buffer\00", align 1
@sysrq_reset_seq_len = internal global i32 0, align 4
@param_ops_sysrq_reset_seq = internal constant %struct.kernel_param_ops { i32 0, ptr @sysrq_reset_seq_param_set, ptr @param_get_ushort, ptr null }, align 4
@sysrq_reset_seq = internal global [20 x i16] zeroinitializer, align 2
@sysrq_reset_seq_version = internal unnamed_addr global i32 1, align 4
@sysrq_handler = internal global %struct.input_handler { ptr null, ptr null, ptr null, ptr @sysrq_filter, ptr null, ptr @sysrq_connect, ptr @sysrq_disconnect, ptr null, i8 0, i32 0, ptr @.str.55, ptr @sysrq_ids, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer }, align 4
@.str.51 = private unnamed_addr constant [52 x i8] c"\013sysrq: Failed to register input handler, error %d\00", align 1
@.str.52 = private unnamed_addr constant [30 x i8] c"/chosen/linux,sysrq-reset-seq\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"keyset\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"timeout-ms\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"sysrq\00", align 1
@sysrq_xlate = internal unnamed_addr constant [768 x i8] c"\00\1B1234567890-=\7F\09qwertyuiop[]\0D\00asdfghjkl;'`\00\\zxcvbnm,./\00*\00 \00\81\82\83\84\85\86\87\88\89\8A\00\00789-456+1230\7F\00\00\8B\8C\00\00\00\00\00\00\00\00\00\00\0D\00/\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.56 = private unnamed_addr constant [59 x i8] c"\013sysrq: Failed to register input sysrq handler, error %d\0A\00", align 1
@.str.57 = private unnamed_addr constant [48 x i8] c"\013sysrq: Failed to open input device, error %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@sysrq_ids = internal constant <{ { i32, i16, i16, i16, i16, [1 x i32], <{ i32, i32, [22 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, %struct.input_device_id }> <{ { i32, i16, i16, i16, i16, [1 x i32], <{ i32, i32, [22 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 } { i32 48, i16 0, i16 0, i16 0, i16 0, [1 x i32] [i32 2], <{ i32, i32, [22 x i32] }> <{ i32 0, i32 16777216, [22 x i32] zeroinitializer }>, [1 x i32] zeroinitializer, [2 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, i32 0 }, %struct.input_device_id zeroinitializer }>, align 4
@sysrq_key_table_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.59 = private unnamed_addr constant [14 x i8] c"sysrq-trigger\00", align 1
@sysrq_trigger_proc_ops = internal constant %struct.proc_ops { i32 0, ptr null, ptr null, ptr null, ptr @write_sysrq_trigger, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.60 = private unnamed_addr constant [44 x i8] c"\013sysrq: Failed to register proc interface\0A\00", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_reset_seqtype257, ptr @__UNIQUE_ID_sysrq_downtime_mstype258, ptr @__initcall__kmod_sysrq__259_1195_sysrq_init6, ptr @__ksymtab_handle_sysrq, ptr @__ksymtab_register_sysrq_key, ptr @__ksymtab_sysrq_mask, ptr @__ksymtab_sysrq_toggle_support, ptr @__ksymtab_unregister_sysrq_key, ptr @__param_reset_seq, ptr @__param_sysrq_downtime_ms, ptr @__setup_sysrq_always_enabled_setup], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @sysrq_mask() #0 {
  %1 = load i1, ptr @sysrq_always_enabled, align 1
  %2 = load i32, ptr @sysrq_enabled, align 4
  %3 = select i1 %1, i32 1, i32 %2
  ret i32 %3
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sysrq_always_enabled_setup(ptr nocapture noundef readnone %0) #1 section ".init.text" {
  store i1 true, ptr @sysrq_always_enabled, align 1
  %2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #13
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__handle_sysrq(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = load i32, ptr @suppress_printk, align 4
  store i32 0, ptr @suppress_printk, align 4
  tail call void @rcu_sysrq_start() #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !9
  %4 = load i32, ptr @console_printk, align 4
  store i32 7, ptr @console_printk, align 4
  %5 = add i32 %0, -48
  %6 = icmp ult i32 %5, 10
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = add i32 %0, -97
  %9 = icmp ult i32 %8, 26
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = add nsw i32 %0, -87
  br label %16

12:                                               ; preds = %7
  %13 = add i32 %0, -29
  %14 = add i32 %0, -91
  %15 = icmp ult i32 %14, -26
  br i1 %15, label %39, label %16

16:                                               ; preds = %12, %10, %2
  %17 = phi i32 [ %5, %2 ], [ %11, %10 ], [ %13, %12 ]
  %18 = getelementptr [62 x ptr], ptr @sysrq_key_table, i32 0, i32 %17
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %39, label %21

21:                                               ; preds = %16
  br i1 %1, label %22, label %32

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.sysrq_key_op, ptr %19, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = load i1, ptr @sysrq_always_enabled, align 1
  %26 = load i32, ptr @sysrq_enabled, align 4
  %27 = icmp eq i32 %26, 1
  %28 = select i1 %25, i1 true, i1 %27
  %29 = and i32 %26, %24
  %30 = icmp ne i32 %29, 0
  %31 = select i1 %28, i1 true, i1 %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %22, %21
  %33 = getelementptr inbounds %struct.sysrq_key_op, ptr %19, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %34) #13
  store i32 %4, ptr @console_printk, align 4
  %36 = load ptr, ptr %19, align 4
  tail call void %36(i32 noundef %0) #14
  br label %63

37:                                               ; preds = %22
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #13
  store i32 %4, ptr @console_printk, align 4
  br label %63

39:                                               ; preds = %16, %12
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #13
  br label %41

41:                                               ; preds = %58, %39
  %42 = phi i32 [ 0, %39 ], [ %59, %58 ]
  %43 = getelementptr [62 x ptr], ptr @sysrq_key_table, i32 0, i32 %42
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %58, label %46

46:                                               ; preds = %46, %41
  %47 = phi i32 [ %51, %46 ], [ 0, %41 ]
  %48 = getelementptr [62 x ptr], ptr @sysrq_key_table, i32 0, i32 %47
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %44, %49
  %51 = add i32 %47, 1
  br i1 %50, label %52, label %46

52:                                               ; preds = %46
  %53 = icmp eq i32 %47, %42
  br i1 %53, label %54, label %58

54:                                               ; preds = %52
  %55 = getelementptr inbounds %struct.sysrq_key_op, ptr %44, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %56) #13
  br label %58

58:                                               ; preds = %54, %52, %41
  %59 = add nuw nsw i32 %42, 1
  %60 = icmp eq i32 %59, 62
  br i1 %60, label %61, label %41

61:                                               ; preds = %58
  %62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #13
  store i32 %4, ptr @console_printk, align 4
  br label %63

63:                                               ; preds = %61, %37, %32
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  tail call void @rcu_sysrq_end() #14
  store i32 %3, ptr @suppress_printk, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_sysrq_start() local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_sysrq_end() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @handle_sysrq(i32 noundef %0) #2 {
  %2 = load i32, ptr @sysrq_enabled, align 4
  %3 = icmp ne i32 %2, 0
  %4 = load i1, ptr @sysrq_always_enabled, align 1
  %5 = select i1 %3, i1 true, i1 %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @__handle_sysrq(i32 noundef %0, i1 noundef zeroext true)
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sysrq_toggle_support(i32 noundef %0) #2 {
  %2 = load i32, ptr @sysrq_enabled, align 4
  %3 = icmp ne i32 %2, 0
  %4 = load i1, ptr @sysrq_always_enabled, align 1
  %5 = select i1 %3, i1 true, i1 %4
  store i32 %0, ptr @sysrq_enabled, align 4
  %6 = icmp ne i32 %0, 0
  %7 = select i1 %6, i1 true, i1 %4
  %8 = xor i1 %5, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  br i1 %7, label %10, label %11

10:                                               ; preds = %9
  tail call fastcc void @sysrq_register_handler()
  br label %12

11:                                               ; preds = %9
  tail call void @input_unregister_handler(ptr noundef nonnull @sysrq_handler) #14
  br label %12

12:                                               ; preds = %11, %10, %1
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sysrq_register_handler() unnamed_addr #6 {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #14
  store i32 0, ptr %1, align 4, !annotation !11
  %2 = tail call ptr @of_find_node_opts_by_path(ptr noundef nonnull @.str.52, ptr noundef null) #14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %24, label %4

4:                                                ; preds = %0
  store i32 0, ptr @sysrq_reset_seq_len, align 4
  %5 = tail call ptr @of_find_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.53, ptr noundef null) #14
  %6 = call ptr @of_prop_next_u32(ptr noundef %5, ptr noundef null, ptr noundef nonnull %1) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %16, %4
  %9 = phi ptr [ %20, %16 ], [ %6, %4 ]
  %10 = load i32, ptr %1, align 4
  %11 = add i32 %10, -768
  %12 = icmp ult i32 %11, -767
  %13 = load i32, ptr @sysrq_reset_seq_len, align 4
  %14 = icmp eq i32 %13, 20
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %8
  %17 = trunc i32 %10 to i16
  %18 = add i32 %13, 1
  store i32 %18, ptr @sysrq_reset_seq_len, align 4
  %19 = getelementptr [20 x i16], ptr @sysrq_reset_seq, i32 0, i32 %13
  store i16 %17, ptr %19, align 2
  %20 = call ptr @of_prop_next_u32(ptr noundef %5, ptr noundef nonnull %9, ptr noundef nonnull %1) #14
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %8

22:                                               ; preds = %16, %8, %4
  %23 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %2, ptr noundef nonnull @.str.54, ptr noundef nonnull @sysrq_reset_downtime_ms, i32 noundef 1, i32 noundef 0) #14
  call void @of_node_put(ptr noundef nonnull %2) #14
  br label %24

24:                                               ; preds = %22, %0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #14
  %25 = call i32 @input_register_handler(ptr noundef nonnull @sysrq_handler) #14
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %25) #13
  br label %29

29:                                               ; preds = %27, %24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @register_sysrq_key(i32 noundef %0, ptr noundef %1) #2 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysrq_key_table_lock) #14
  %3 = add i32 %0, -48
  %4 = icmp ult i32 %3, 10
  br i1 %4, label %21, label %5

5:                                                ; preds = %2
  %6 = add i32 %0, -97
  %7 = icmp ult i32 %6, 26
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = add i32 %0, -91
  %10 = icmp ult i32 %9, -26
  br i1 %10, label %28, label %16

11:                                               ; preds = %5
  %12 = add nsw i32 %0, -87
  %13 = getelementptr [62 x ptr], ptr @sysrq_key_table, i32 0, i32 %12
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %28

16:                                               ; preds = %8
  %17 = add nsw i32 %0, -29
  %18 = getelementptr [62 x ptr], ptr @sysrq_key_table, i32 0, i32 %17
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %28

21:                                               ; preds = %2
  %22 = getelementptr [62 x ptr], ptr @sysrq_key_table, i32 0, i32 %3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %21, %16, %11
  %26 = phi i32 [ %3, %21 ], [ %12, %11 ], [ %17, %16 ]
  %27 = getelementptr [62 x ptr], ptr @sysrq_key_table, i32 0, i32 %26
  store ptr %1, ptr %27, align 4
  br label %28

28:                                               ; preds = %25, %21, %16, %11, %8
  %29 = phi i32 [ -1, %11 ], [ 0, %25 ], [ -1, %21 ], [ -1, %16 ], [ 0, %8 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !12
  %30 = load i16, ptr @sysrq_key_table_lock, align 4
  %31 = add i16 %30, 1
  store i16 %31, ptr @sysrq_key_table_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  tail call void @synchronize_rcu() #14
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @unregister_sysrq_key(i32 noundef %0, ptr noundef readnone %1) #2 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysrq_key_table_lock) #14
  %3 = add i32 %0, -48
  %4 = icmp ult i32 %3, 10
  br i1 %4, label %21, label %5

5:                                                ; preds = %2
  %6 = add i32 %0, -97
  %7 = icmp ult i32 %6, 26
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = add i32 %0, -91
  %10 = icmp ult i32 %9, -26
  br i1 %10, label %25, label %16

11:                                               ; preds = %5
  %12 = add nsw i32 %0, -87
  %13 = getelementptr [62 x ptr], ptr @sysrq_key_table, i32 0, i32 %12
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %28, label %31

16:                                               ; preds = %8
  %17 = add nsw i32 %0, -29
  %18 = getelementptr [62 x ptr], ptr @sysrq_key_table, i32 0, i32 %17
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %1
  br i1 %20, label %28, label %31

21:                                               ; preds = %2
  %22 = getelementptr [62 x ptr], ptr @sysrq_key_table, i32 0, i32 %3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %1
  br i1 %24, label %28, label %31

25:                                               ; preds = %8
  %26 = icmp ne ptr %1, null
  %27 = sext i1 %26 to i32
  br label %31

28:                                               ; preds = %21, %16, %11
  %29 = phi i32 [ %3, %21 ], [ %12, %11 ], [ %17, %16 ]
  %30 = getelementptr [62 x ptr], ptr @sysrq_key_table, i32 0, i32 %29
  store ptr null, ptr %30, align 4
  br label %31

31:                                               ; preds = %28, %25, %21, %16, %11
  %32 = phi i32 [ -1, %11 ], [ 0, %28 ], [ -1, %21 ], [ -1, %16 ], [ %27, %25 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !12
  %33 = load i16, ptr @sysrq_key_table_lock, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr @sysrq_key_table_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  tail call void @synchronize_rcu() #14
  ret i32 %32
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sysrq_init() #1 section ".init.text" {
  %1 = tail call ptr @proc_create(ptr noundef nonnull @.str.59, i16 noundef zeroext 128, ptr noundef null, ptr noundef nonnull @sysrq_trigger_proc_ops) #14
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60) #13
  br label %5

5:                                                ; preds = %3, %0
  %6 = load i32, ptr @sysrq_enabled, align 4
  %7 = icmp ne i32 %6, 0
  %8 = load i1, ptr @sysrq_always_enabled, align 1
  %9 = select i1 %7, i1 true, i1 %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  tail call fastcc void @sysrq_register_handler()
  br label %11

11:                                               ; preds = %10, %5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sysrq_handle_reboot(i32 noundef %0) #2 {
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !16
  tail call void @emergency_restart() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @emergency_restart() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sysrq_handle_loglevel(i32 noundef %0) #2 {
  %2 = add i32 %0, -48
  store i32 7, ptr @console_printk, align 4
  %3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %2) #13
  store i32 %2, ptr @console_printk, align 4
  ret void
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sysrq_handle_crash(i32 noundef %0) #7 {
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.14) #15
  unreachable
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sysrq_handle_term(i32 noundef %0) #2 {
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #14
  %2 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 34), align 4
  %3 = getelementptr i8, ptr %2, i32 -1116
  %4 = icmp eq ptr %3, @init_task
  br i1 %4, label %23, label %5

5:                                                ; preds = %18, %1
  %6 = phi ptr [ %21, %18 ], [ %3, %1 ]
  %7 = phi ptr [ %20, %18 ], [ %2, %1 ]
  %8 = getelementptr i8, ptr %7, i32 -568
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 2097152
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %5
  %13 = getelementptr i8, ptr %7, i32 176
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @do_send_sig_info(i32 noundef 15, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef %6, i32 noundef 4) #14
  br label %18

18:                                               ; preds = %16, %12, %5
  %19 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 34
  %20 = load volatile ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 -1116
  %22 = icmp eq ptr %21, @init_task
  br i1 %22, label %23, label %5

23:                                               ; preds = %18, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @tasklist_lock) #14, !srcloc !18
  %24 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @tasklist_lock) #14, !srcloc !19
  %25 = extractvalue { i32, i32 } %24, 0
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !14
  br label %28

28:                                               ; preds = %27, %23
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !20
  store i32 10, ptr @console_printk, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_send_sig_info(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sysrq_handle_moom(i32 noundef %0) #2 {
  %2 = load ptr, ptr @system_wq, align 4
  %3 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %2, ptr noundef nonnull @moom_work) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @moom_callback(ptr nocapture noundef readnone %0) #2 {
  %2 = alloca %struct.oom_control, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #14
  store ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 1), ptr %2, align 4
  %3 = getelementptr inbounds %struct.oom_control, ptr %2, i32 0, i32 1
  store ptr null, ptr %3, align 4
  %4 = getelementptr inbounds %struct.oom_control, ptr %2, i32 0, i32 2
  store ptr null, ptr %4, align 4
  %5 = getelementptr inbounds %struct.oom_control, ptr %2, i32 0, i32 3
  store i32 3264, ptr %5, align 4
  %6 = getelementptr inbounds %struct.oom_control, ptr %2, i32 0, i32 4
  store i32 -1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.oom_control, ptr %2, i32 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  tail call void @mutex_lock(ptr noundef nonnull @oom_lock) #14
  %8 = call zeroext i1 @out_of_memory(ptr noundef nonnull %2) #14
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #13
  br label %11

11:                                               ; preds = %9, %1
  call void @mutex_unlock(ptr noundef nonnull @oom_lock) #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @out_of_memory(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sysrq_handle_kill(i32 noundef %0) #2 {
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #14
  %2 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 34), align 4
  %3 = getelementptr i8, ptr %2, i32 -1116
  %4 = icmp eq ptr %3, @init_task
  br i1 %4, label %23, label %5

5:                                                ; preds = %18, %1
  %6 = phi ptr [ %21, %18 ], [ %3, %1 ]
  %7 = phi ptr [ %20, %18 ], [ %2, %1 ]
  %8 = getelementptr i8, ptr %7, i32 -568
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 2097152
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %5
  %13 = getelementptr i8, ptr %7, i32 176
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @do_send_sig_info(i32 noundef 9, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef %6, i32 noundef 4) #14
  br label %18

18:                                               ; preds = %16, %12, %5
  %19 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 34
  %20 = load volatile ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 -1116
  %22 = icmp eq ptr %21, @init_task
  br i1 %22, label %23, label %5

23:                                               ; preds = %18, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @tasklist_lock) #14, !srcloc !18
  %24 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @tasklist_lock) #14, !srcloc !19
  %25 = extractvalue { i32, i32 } %24, 0
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !14
  br label %28

28:                                               ; preds = %27, %23
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !20
  store i32 10, ptr @console_printk, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sysrq_handle_thaw(i32 noundef %0) #2 {
  tail call void @emergency_thaw_all() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @emergency_thaw_all() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sysrq_handle_SAK(i32 noundef %0) #2 {
  %2 = load i32, ptr @fg_console, align 4
  %3 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %2, i32 1
  %4 = load ptr, ptr @system_wq, align 4
  %5 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %4, ptr noundef %3) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sysrq_handle_showallcpus(i32 noundef %0) #2 {
  tail call void @arch_trigger_cpumask_backtrace(ptr noundef nonnull @__cpu_online_mask, i1 noundef zeroext false) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_regs(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_trigger_cpumask_backtrace(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sysrq_handle_showmem(i32 noundef %0) #2 {
  tail call void @show_mem(i32 noundef 0, ptr noundef null) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_mem(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sysrq_handle_unrt(i32 noundef %0) #2 {
  tail call void @normalize_rt_tasks() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @normalize_rt_tasks() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sysrq_handle_showregs(i32 noundef %0) #2 {
  %2 = tail call ptr @llvm.thread.pointer() #14
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 983040
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #9, !srcloc !21
  %11 = add i32 %10, ptrtoint (ptr @__irq_regs to i32)
  %12 = inttoptr i32 %11 to ptr
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %7
  tail call void @show_regs(ptr noundef nonnull %13) #14
  br label %16

16:                                               ; preds = %15, %7, %1
  tail call void @perf_event_print_debug() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_event_print_debug() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sysrq_handle_show_timers(i32 noundef %0) #2 {
  tail call void @sysrq_timer_list_show() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysrq_timer_list_show() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sysrq_handle_unraw(i32 noundef %0) #2 {
  %2 = load i32, ptr @fg_console, align 4
  tail call void @vt_reset_unicode(i32 noundef %2) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vt_reset_unicode(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sysrq_handle_sync(i32 noundef %0) #2 {
  tail call void @emergency_sync() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @emergency_sync() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sysrq_handle_showstate(i32 noundef %0) #2 {
  tail call void @show_state_filter(i32 noundef 0) #14
  tail call void @show_all_workqueues() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_all_workqueues() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_state_filter(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sysrq_handle_mountro(i32 noundef %0) #2 {
  tail call void @emergency_remount() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @emergency_remount() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sysrq_handle_showstate_blocked(i32 noundef %0) #2 {
  tail call void @show_state_filter(i32 noundef 2) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sysrq_ftrace_dump(i32 noundef %0) #2 {
  tail call void @ftrace_dump(i32 noundef 1) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ftrace_dump(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sysrq_reset_seq_param_set(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !11
  %4 = call i32 @_kstrtoul(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3) #14
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr %3, align 4
  %8 = icmp ugt i32 %7, 767
  br i1 %8, label %15, label %9

9:                                                ; preds = %6
  %10 = trunc i32 %7 to i16
  %11 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  store i16 %10, ptr %12, align 2
  %13 = load i32, ptr @sysrq_reset_seq_version, align 4
  %14 = add i32 %13, 1
  store i32 %14, ptr @sysrq_reset_seq_version, align 4
  br label %15

15:                                               ; preds = %9, %6, %2
  %16 = phi i32 [ 0, %9 ], [ %4, %2 ], [ -22, %6 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_ushort(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_handler(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_u32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_opts_by_path(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @sysrq_filter(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.sysrq_state, ptr %5, i32 0, i32 9
  %7 = load i8, ptr %6, align 2, !range !22
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %206

9:                                                ; preds = %4
  switch i32 %1, label %202 [
    i32 0, label %206
    i32 1, label %10
  ]

10:                                               ; preds = %9
  %11 = getelementptr inbounds %struct.sysrq_state, ptr %5, i32 0, i32 7
  %12 = load i8, ptr %11, align 4, !range !22
  %13 = icmp ne i8 %12, 0
  switch i32 %2, label %54 [
    i32 56, label %14
    i32 100, label %14
    i32 42, label %25
    i32 54, label %25
    i32 99, label %36
  ]

14:                                               ; preds = %10, %10
  switch i32 %3, label %22 [
    i32 0, label %15
    i32 2, label %81
  ]

15:                                               ; preds = %14
  %16 = icmp eq i8 %12, 0
  br i1 %16, label %83, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.sysrq_state, ptr %5, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, %2
  br i1 %20, label %21, label %79

21:                                               ; preds = %17
  store i8 0, ptr %11, align 4
  br label %83

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.sysrq_state, ptr %5, i32 0, i32 3
  store i32 %2, ptr %23, align 4
  %24 = getelementptr inbounds %struct.sysrq_state, ptr %5, i32 0, i32 8
  store i8 0, ptr %24, align 1
  br label %76

25:                                               ; preds = %10, %10
  switch i32 %3, label %26 [
    i32 0, label %27
    i32 2, label %30
  ]

26:                                               ; preds = %25
  br label %27

27:                                               ; preds = %26, %25
  %28 = phi i32 [ %2, %26 ], [ %3, %25 ]
  %29 = getelementptr inbounds %struct.sysrq_state, ptr %5, i32 0, i32 5
  store i32 %28, ptr %29, align 4
  br label %30

30:                                               ; preds = %27, %25
  %31 = icmp eq i8 %12, 0
  br i1 %31, label %76, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.sysrq_state, ptr %5, i32 0, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.sysrq_state, ptr %5, i32 0, i32 6
  store i32 %34, ptr %35, align 4
  br label %76

36:                                               ; preds = %10
  %37 = icmp eq i32 %3, 1
  br i1 %37, label %38, label %48

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.sysrq_state, ptr %5, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %38
  store i8 1, ptr %11, align 4
  %43 = getelementptr inbounds %struct.sysrq_state, ptr %5, i32 0, i32 4
  store i32 %40, ptr %43, align 4
  %44 = getelementptr inbounds %struct.sysrq_state, ptr %5, i32 0, i32 5
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.sysrq_state, ptr %5, i32 0, i32 6
  store i32 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.sysrq_state, ptr %5, i32 0, i32 8
  store i8 1, ptr %47, align 1
  br label %50

48:                                               ; preds = %38, %36
  %49 = icmp eq i8 %12, 0
  br i1 %49, label %76, label %50

50:                                               ; preds = %48, %42
  %51 = getelementptr inbounds %struct.input_handle, ptr %5, i32 0, i32 3
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.input_dev, ptr %52, i32 0, i32 27
  tail call void @_clear_bit(i32 noundef 99, ptr noundef %53) #14
  br label %76

54:                                               ; preds = %10
  %55 = and i32 %3, -3
  %56 = icmp ne i32 %55, 0
  %57 = and i1 %56, %13
  br i1 %57, label %58, label %76

58:                                               ; preds = %54
  %59 = getelementptr [768 x i8], ptr @sysrq_xlate, i32 0, i32 %2
  %60 = load i8, ptr %59, align 1
  %61 = getelementptr inbounds %struct.sysrq_state, ptr %5, i32 0, i32 8
  store i8 0, ptr %61, align 1
  %62 = getelementptr inbounds %struct.sysrq_state, ptr %5, i32 0, i32 6
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %58
  %66 = zext i8 %60 to i32
  %67 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %66
  %68 = load i8, ptr %67, align 1
  %69 = and i8 %68, 2
  %70 = icmp eq i8 %69, 0
  %71 = add i8 %60, -32
  %72 = select i1 %70, i8 %60, i8 %71
  br label %73

73:                                               ; preds = %65, %58
  %74 = phi i8 [ %72, %65 ], [ %60, %58 ]
  %75 = zext i8 %74 to i32
  tail call void @__handle_sysrq(i32 noundef %75, i1 noundef zeroext true) #14
  br label %76

76:                                               ; preds = %73, %54, %50, %48, %32, %30, %22
  %77 = load i8, ptr %11, align 4, !range !22
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %85, label %196

79:                                               ; preds = %17
  %80 = getelementptr inbounds %struct.sysrq_state, ptr %5, i32 0, i32 3
  store i32 0, ptr %80, align 4
  br label %198

81:                                               ; preds = %14
  %82 = icmp eq i8 %12, 0
  br i1 %82, label %85, label %206

83:                                               ; preds = %21, %15
  %84 = getelementptr inbounds %struct.sysrq_state, ptr %5, i32 0, i32 3
  store i32 0, ptr %84, align 4
  br label %85

85:                                               ; preds = %83, %81, %76
  %86 = getelementptr inbounds %struct.sysrq_state, ptr %5, i32 0, i32 15
  %87 = load i32, ptr %86, align 4
  %88 = load i32, ptr @sysrq_reset_seq_version, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %132, label %90

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.sysrq_state, ptr %5, i32 0, i32 14
  store i32 0, ptr %91, align 4
  %92 = load i32, ptr @sysrq_reset_seq_len, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %128, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.sysrq_state, ptr %5, i32 0, i32 12
  %96 = getelementptr inbounds %struct.sysrq_state, ptr %5, i32 0, i32 13
  %97 = getelementptr inbounds %struct.sysrq_state, ptr %5, i32 0, i32 2
  br label %98

98:                                               ; preds = %121, %94
  %99 = phi i32 [ 0, %94 ], [ %122, %121 ]
  %100 = getelementptr [20 x i16], ptr @sysrq_reset_seq, i32 0, i32 %99
  %101 = load i16, ptr %100, align 2
  %102 = add i16 %101, -768
  %103 = icmp ult i16 %102, -767
  br i1 %103, label %125, label %104

104:                                              ; preds = %98
  %105 = zext i16 %101 to i32
  %106 = and i32 %105, 31
  %107 = shl nuw i32 1, %106
  %108 = lshr i32 %105, 5
  %109 = getelementptr i32, ptr %95, i32 %108
  %110 = load i32, ptr %109, align 4
  %111 = or i32 %110, %107
  store i32 %111, ptr %109, align 4
  %112 = load i32, ptr %96, align 4
  %113 = add i32 %112, 1
  store i32 %113, ptr %96, align 4
  %114 = getelementptr i32, ptr %97, i32 %108
  %115 = load volatile i32, ptr %114, align 4
  %116 = and i32 %115, %107
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %104
  %119 = load i32, ptr %91, align 4
  %120 = add i32 %119, 1
  store i32 %120, ptr %91, align 4
  br label %121

121:                                              ; preds = %118, %104
  %122 = add nuw i32 %99, 1
  %123 = load i32, ptr @sysrq_reset_seq_len, align 4
  %124 = icmp ult i32 %122, %123
  br i1 %124, label %98, label %125

125:                                              ; preds = %121, %98
  %126 = load i32, ptr %91, align 4
  %127 = icmp ne i32 %126, 0
  br label %128

128:                                              ; preds = %125, %90
  %129 = phi i1 [ %127, %125 ], [ false, %90 ]
  %130 = getelementptr inbounds %struct.sysrq_state, ptr %5, i32 0, i32 10
  %131 = zext i1 %129 to i8
  store i8 %131, ptr %130, align 1
  store i32 %88, ptr %86, align 4
  br label %132

132:                                              ; preds = %128, %85
  %133 = icmp eq i32 %3, 0
  %134 = getelementptr inbounds %struct.sysrq_state, ptr %5, i32 0, i32 2
  br i1 %133, label %136, label %135

135:                                              ; preds = %132
  tail call void @_set_bit(i32 noundef %2, ptr noundef %134) #14
  br label %137

136:                                              ; preds = %132
  tail call void @_clear_bit(i32 noundef %2, ptr noundef %134) #14
  br label %137

137:                                              ; preds = %136, %135
  br i1 %13, label %138, label %142

138:                                              ; preds = %137
  %139 = getelementptr inbounds %struct.sysrq_state, ptr %5, i32 0, i32 1
  %140 = load ptr, ptr @system_wq, align 4
  %141 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %140, ptr noundef %139) #14
  br label %142

142:                                              ; preds = %138, %137
  %143 = getelementptr inbounds %struct.sysrq_state, ptr %5, i32 0, i32 12
  %144 = lshr i32 %2, 5
  %145 = getelementptr i32, ptr %143, i32 %144
  %146 = load volatile i32, ptr %145, align 4
  %147 = and i32 %2, 31
  %148 = shl nuw i32 1, %147
  %149 = and i32 %146, %148
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %142
  br i1 %133, label %206, label %152

152:                                              ; preds = %151
  %153 = getelementptr inbounds %struct.sysrq_state, ptr %5, i32 0, i32 14
  %154 = load i32, ptr %153, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %206, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.sysrq_state, ptr %5, i32 0, i32 10
  store i8 1, ptr %157, align 1
  %158 = getelementptr inbounds %struct.sysrq_state, ptr %5, i32 0, i32 16
  %159 = tail call i32 @del_timer(ptr noundef %158) #14
  br label %206

160:                                              ; preds = %142
  switch i32 %3, label %206 [
    i32 0, label %161
    i32 1, label %170
  ]

161:                                              ; preds = %160
  %162 = getelementptr inbounds %struct.sysrq_state, ptr %5, i32 0, i32 16
  %163 = tail call i32 @del_timer(ptr noundef %162) #14
  %164 = getelementptr inbounds %struct.sysrq_state, ptr %5, i32 0, i32 14
  %165 = load i32, ptr %164, align 4
  %166 = add i32 %165, -1
  store i32 %166, ptr %164, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %206

168:                                              ; preds = %161
  %169 = getelementptr inbounds %struct.sysrq_state, ptr %5, i32 0, i32 10
  store i8 0, ptr %169, align 1
  br label %206

170:                                              ; preds = %160
  %171 = getelementptr inbounds %struct.sysrq_state, ptr %5, i32 0, i32 14
  %172 = load i32, ptr %171, align 4
  %173 = add i32 %172, 1
  store i32 %173, ptr %171, align 4
  %174 = getelementptr inbounds %struct.sysrq_state, ptr %5, i32 0, i32 13
  %175 = load i32, ptr %174, align 4
  %176 = icmp eq i32 %173, %175
  br i1 %176, label %177, label %206

177:                                              ; preds = %170
  %178 = getelementptr inbounds %struct.sysrq_state, ptr %5, i32 0, i32 10
  %179 = load i8, ptr %178, align 1, !range !22
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %181, label %206

181:                                              ; preds = %177
  %182 = getelementptr %struct.sysrq_state, ptr %5, i32 0, i32 11
  %183 = load i8, ptr %182, align 4, !range !22
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %181
  tail call void @__handle_sysrq(i32 noundef 98, i1 noundef zeroext false) #14
  br label %186

186:                                              ; preds = %185, %181
  %187 = load i32, ptr @sysrq_reset_downtime_ms, align 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %195, label %189

189:                                              ; preds = %186
  %190 = getelementptr inbounds %struct.sysrq_state, ptr %5, i32 0, i32 16
  %191 = load volatile i32, ptr @jiffies, align 64
  %192 = tail call i32 @__msecs_to_jiffies(i32 noundef %187) #14
  %193 = add i32 %192, %191
  %194 = tail call i32 @mod_timer(ptr noundef %190, i32 noundef %193) #14
  br label %206

195:                                              ; preds = %186
  store i8 1, ptr %182, align 4
  tail call void @orderly_reboot() #14
  br label %206

196:                                              ; preds = %76
  %197 = icmp eq i32 %3, 0
  br i1 %197, label %198, label %206

198:                                              ; preds = %196, %79
  %199 = getelementptr inbounds %struct.sysrq_state, ptr %5, i32 0, i32 2
  %200 = tail call i32 @_test_and_clear_bit(i32 noundef %2, ptr noundef %199) #14
  %201 = icmp eq i32 %200, 0
  br label %206

202:                                              ; preds = %9
  %203 = getelementptr inbounds %struct.sysrq_state, ptr %5, i32 0, i32 7
  %204 = load i8, ptr %203, align 4, !range !22
  %205 = icmp ne i8 %204, 0
  br label %206

206:                                              ; preds = %202, %198, %196, %195, %189, %177, %170, %168, %161, %160, %156, %152, %151, %81, %9, %4
  %207 = phi i1 [ false, %4 ], [ %205, %202 ], [ false, %9 ], [ true, %196 ], [ %201, %198 ], [ true, %81 ], [ false, %151 ], [ false, %152 ], [ false, %156 ], [ false, %160 ], [ false, %161 ], [ false, %168 ], [ false, %170 ], [ false, %177 ], [ false, %189 ], [ false, %195 ]
  ret i1 %207
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sysrq_connect(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #2 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 300) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.sysrq_state, ptr %5, i32 0, i32 1
  store i32 -32, ptr %8, align 4
  %9 = getelementptr inbounds %struct.sysrq_state, ptr %5, i32 0, i32 1, i32 1
  store volatile ptr %9, ptr %9, align 8
  %10 = getelementptr inbounds %struct.sysrq_state, ptr %5, i32 0, i32 1, i32 1, i32 1
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.sysrq_state, ptr %5, i32 0, i32 1, i32 2
  store ptr @sysrq_reinject_alt_sysrq, ptr %11, align 8
  %12 = getelementptr inbounds %struct.input_handle, ptr %5, i32 0, i32 3
  store ptr %1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.input_handle, ptr %5, i32 0, i32 4
  store ptr %0, ptr %13, align 8
  %14 = getelementptr inbounds %struct.input_handle, ptr %5, i32 0, i32 2
  store ptr @.str.55, ptr %14, align 8
  store ptr %5, ptr %5, align 8
  %15 = getelementptr inbounds %struct.sysrq_state, ptr %5, i32 0, i32 16
  tail call void @init_timer_key(ptr noundef %15, ptr noundef nonnull @sysrq_do_reset, i32 noundef 0, ptr noundef null, ptr noundef null) #14
  %16 = tail call i32 @input_register_handle(ptr noundef nonnull %5) #14
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %7
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %16) #13
  br label %25

20:                                               ; preds = %7
  %21 = tail call i32 @input_open_device(ptr noundef nonnull %5) #14
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %21) #13
  tail call void @input_unregister_handle(ptr noundef nonnull %5) #14
  br label %25

25:                                               ; preds = %23, %18
  %26 = phi i32 [ %16, %18 ], [ %21, %23 ]
  tail call void @kfree(ptr noundef nonnull %5) #14
  br label %27

27:                                               ; preds = %25, %20, %3
  %28 = phi i32 [ %26, %25 ], [ -12, %3 ], [ 0, %20 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sysrq_disconnect(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 4
  tail call void @input_close_device(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.sysrq_state, ptr %2, i32 0, i32 1
  %4 = tail call zeroext i1 @cancel_work_sync(ptr noundef %3) #14
  %5 = getelementptr inbounds %struct.sysrq_state, ptr %2, i32 0, i32 16
  %6 = tail call i32 @del_timer_sync(ptr noundef %5) #14
  tail call void @input_unregister_handle(ptr noundef %0) #14
  tail call void @kfree(ptr noundef %2) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sysrq_do_reset(ptr nocapture noundef writeonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -112
  store i8 1, ptr %2, align 4
  tail call void @orderly_reboot() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @orderly_reboot() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sysrq_reinject_alt_sysrq(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 129
  %3 = load i8, ptr %2, align 1, !range !22
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 -36
  %7 = getelementptr i8, ptr %0, i32 116
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr i8, ptr %0, i32 130
  store i8 1, ptr %9, align 2
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !23
  tail call void @arm_heavy_mb() #14
  tail call void @input_inject_event(ptr noundef %6, i32 noundef 1, i32 noundef %8, i32 noundef 1) #14
  tail call void @input_inject_event(ptr noundef %6, i32 noundef 1, i32 noundef 99, i32 noundef 1) #14
  tail call void @input_inject_event(ptr noundef %6, i32 noundef 0, i32 noundef 0, i32 noundef 1) #14
  tail call void @input_inject_event(ptr noundef %6, i32 noundef 1, i32 noundef 99, i32 noundef 0) #14
  tail call void @input_inject_event(ptr noundef %6, i32 noundef 1, i32 noundef %8, i32 noundef 0) #14
  tail call void @input_inject_event(ptr noundef %6, i32 noundef 0, i32 noundef 0, i32 noundef 1) #14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !24
  tail call void @arm_heavy_mb() #14
  store i8 0, ptr %9, align 2
  br label %10

10:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_handle(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_open_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_handle(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_inject_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_close_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_handler(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @write_sysrq_trigger(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #2 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %4
  %7 = tail call ptr @llvm.thread.pointer() #14
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %8) #9, !srcloc !25
  %10 = and i32 %9, -13
  %11 = or i32 %10, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #14, !srcloc !26
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !27
  %12 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %1, i32 -1090519041) #14, !srcloc !28
  %13 = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #14, !srcloc !26
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !27
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %6
  %16 = extractvalue { i32, i32 } %12, 1
  %17 = and i32 %16, 255
  tail call void @__handle_sysrq(i32 noundef %17, i1 noundef zeroext false)
  br label %18

18:                                               ; preds = %15, %6, %4
  %19 = phi i32 [ %2, %15 ], [ 0, %4 ], [ -14, %6 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind willreturn writeonly }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind }
attributes #15 = { cold noreturn nounwind }
attributes #16 = { nounwind allocsize(2) }

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
!9 = !{i64 2148906124}
!10 = !{i64 2148906341}
!11 = !{!"auto-init"}
!12 = !{i64 2149258734}
!13 = !{i64 2149254558}
!14 = !{i64 2149254633, i64 2149254660, i64 2149254707, i64 2149254729, i64 2149254757, i64 2149254777}
!15 = !{i64 2149281737}
!16 = !{i64 510794}
!17 = !{i64 2149266616}
!18 = !{i64 481802, i64 2147983368, i64 2147983394, i64 2147983441, i64 2147983463, i64 2147983491, i64 2147983511}
!19 = !{i64 1770040, i64 1770063, i64 1770083, i64 1770107, i64 1770123}
!20 = !{i64 2149304219}
!21 = !{i64 517654}
!22 = !{i8 0, i8 2}
!23 = !{i64 2154466155}
!24 = !{i64 2154466309}
!25 = !{i64 2481463}
!26 = !{i64 2481660}
!27 = !{i64 2149966939}
!28 = !{i64 2154488781, i64 2154489061, i64 2154489395, i64 2154489729}
