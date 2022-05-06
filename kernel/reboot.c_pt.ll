; ModuleID = '/llk/IR/kernel/reboot.c_pt.bc'
source_filename = "../kernel/reboot.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cad_pid:\09\09\09\09\09"
module asm "\09.asciz \09\22cad_pid\22\09\09\09\09\09"
module asm "__kstrtabns_cad_pid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_reboot_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22reboot_mode\22\09\09\09\09\09"
module asm "__kstrtabns_reboot_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_power_off_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_power_off_prepare\22\09\09\09\09\09"
module asm "__kstrtabns_pm_power_off_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_emergency_restart:\09\09\09\09\09"
module asm "\09.asciz \09\22emergency_restart\22\09\09\09\09\09"
module asm "__kstrtabns_emergency_restart:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_reboot_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22register_reboot_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_register_reboot_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_reboot_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_reboot_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_reboot_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_register_reboot_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_register_reboot_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_devm_register_reboot_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_restart_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22register_restart_handler\22\09\09\09\09\09"
module asm "__kstrtabns_register_restart_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_restart_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_restart_handler\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_restart_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kernel_restart:\09\09\09\09\09"
module asm "\09.asciz \09\22kernel_restart\22\09\09\09\09\09"
module asm "__kstrtabns_kernel_restart:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kernel_halt:\09\09\09\09\09"
module asm "\09.asciz \09\22kernel_halt\22\09\09\09\09\09"
module asm "__kstrtabns_kernel_halt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kernel_power_off:\09\09\09\09\09"
module asm "\09.asciz \09\22kernel_power_off\22\09\09\09\09\09"
module asm "__kstrtabns_kernel_power_off:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_orderly_poweroff:\09\09\09\09\09"
module asm "\09.asciz \09\22orderly_poweroff\22\09\09\09\09\09"
module asm "__kstrtabns_orderly_poweroff:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_orderly_reboot:\09\09\09\09\09"
module asm "\09.asciz \09\22orderly_reboot\22\09\09\09\09\09"
module asm "__kstrtabns_orderly_reboot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hw_protection_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22hw_protection_shutdown\22\09\09\09\09\09"
module asm "__kstrtabns_hw_protection_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.cpumask = type { [1 x i32] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kobj_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.88, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.69 }
%union.anon.69 = type { %struct.anon.70 }
%struct.anon.70 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.88 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }

@C_A_D = dso_local local_unnamed_addr global i32 1, align 4
@cad_pid = dso_local global ptr null, align 4
@__kstrtab_cad_pid = external dso_local constant [0 x i8], align 1
@__kstrtabns_cad_pid = external dso_local constant [0 x i8], align 1
@__ksymtab_cad_pid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cad_pid to i32), ptr @__kstrtab_cad_pid, ptr @__kstrtabns_cad_pid }, section "___ksymtab+cad_pid", align 4
@reboot_mode = dso_local global i32 2, align 4
@__kstrtab_reboot_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_reboot_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_reboot_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @reboot_mode to i32), ptr @__kstrtab_reboot_mode, ptr @__kstrtabns_reboot_mode }, section "___ksymtab_gpl+reboot_mode", align 4
@panic_reboot_mode = dso_local local_unnamed_addr global i32 -1, align 4
@reboot_default = dso_local local_unnamed_addr global i32 1, align 4
@reboot_type = dso_local local_unnamed_addr global i32 97, align 4
@pm_power_off_prepare = dso_local global ptr null, align 4
@__kstrtab_pm_power_off_prepare = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_power_off_prepare = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_power_off_prepare = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_power_off_prepare to i32), ptr @__kstrtab_pm_power_off_prepare, ptr @__kstrtabns_pm_power_off_prepare }, section "___ksymtab_gpl+pm_power_off_prepare", align 4
@__kstrtab_emergency_restart = external dso_local constant [0 x i8], align 1
@__kstrtabns_emergency_restart = external dso_local constant [0 x i8], align 1
@__ksymtab_emergency_restart = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @emergency_restart to i32), ptr @__kstrtab_emergency_restart, ptr @__kstrtabns_emergency_restart }, section "___ksymtab_gpl+emergency_restart", align 4
@reboot_notifier_list = external dso_local global %struct.blocking_notifier_head, align 4
@system_state = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_register_reboot_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_reboot_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_register_reboot_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_reboot_notifier to i32), ptr @__kstrtab_register_reboot_notifier, ptr @__kstrtabns_register_reboot_notifier }, section "___ksymtab+register_reboot_notifier", align 4
@__kstrtab_unregister_reboot_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_reboot_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_reboot_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_reboot_notifier to i32), ptr @__kstrtab_unregister_reboot_notifier, ptr @__kstrtabns_unregister_reboot_notifier }, section "___ksymtab+unregister_reboot_notifier", align 4
@.str = private unnamed_addr constant [32 x i8] c"devm_unregister_reboot_notifier\00", align 1
@__kstrtab_devm_register_reboot_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_register_reboot_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_register_reboot_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_register_reboot_notifier to i32), ptr @__kstrtab_devm_register_reboot_notifier, ptr @__kstrtabns_devm_register_reboot_notifier }, section "___ksymtab+devm_register_reboot_notifier", align 4
@restart_handler_list = internal global %struct.atomic_notifier_head zeroinitializer, align 4
@__kstrtab_register_restart_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_restart_handler = external dso_local constant [0 x i8], align 1
@__ksymtab_register_restart_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_restart_handler to i32), ptr @__kstrtab_register_restart_handler, ptr @__kstrtabns_register_restart_handler }, section "___ksymtab+register_restart_handler", align 4
@__kstrtab_unregister_restart_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_restart_handler = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_restart_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_restart_handler to i32), ptr @__kstrtab_unregister_restart_handler, ptr @__kstrtabns_unregister_restart_handler }, section "___ksymtab+unregister_restart_handler", align 4
@reboot_cpu = dso_local local_unnamed_addr global i32 0, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"\010reboot: Restarting system\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"\010reboot: Restarting system with command '%s'\0A\00", align 1
@__kstrtab_kernel_restart = external dso_local constant [0 x i8], align 1
@__kstrtabns_kernel_restart = external dso_local constant [0 x i8], align 1
@__ksymtab_kernel_restart = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kernel_restart to i32), ptr @__kstrtab_kernel_restart, ptr @__kstrtabns_kernel_restart }, section "___ksymtab_gpl+kernel_restart", align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"\010reboot: System halted\0A\00", align 1
@__kstrtab_kernel_halt = external dso_local constant [0 x i8], align 1
@__kstrtabns_kernel_halt = external dso_local constant [0 x i8], align 1
@__ksymtab_kernel_halt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kernel_halt to i32), ptr @__kstrtab_kernel_halt, ptr @__kstrtabns_kernel_halt }, section "___ksymtab_gpl+kernel_halt", align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"\010reboot: Power down\0A\00", align 1
@__kstrtab_kernel_power_off = external dso_local constant [0 x i8], align 1
@__kstrtabns_kernel_power_off = external dso_local constant [0 x i8], align 1
@__ksymtab_kernel_power_off = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kernel_power_off to i32), ptr @__kstrtab_kernel_power_off, ptr @__kstrtabns_kernel_power_off }, section "___ksymtab_gpl+kernel_power_off", align 4
@system_transition_mutex = dso_local global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @system_transition_mutex, i64 12), ptr getelementptr (i8, ptr @system_transition_mutex, i64 12) } }, align 4
@ctrl_alt_del.cad_work = internal global %struct.work_struct { %struct.atomic_t { i32 -32 }, %struct.list_head { ptr getelementptr (i8, ptr @ctrl_alt_del.cad_work, i64 4), ptr getelementptr (i8, ptr @ctrl_alt_del.cad_work, i64 4) }, ptr @deferred_cad }, align 4
@poweroff_cmd = dso_local global [256 x i8] c"/sbin/poweroff\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@poweroff_force = internal unnamed_addr global i1 false, align 1
@poweroff_work = internal global %struct.work_struct { %struct.atomic_t { i32 -32 }, %struct.list_head { ptr getelementptr (i8, ptr @poweroff_work, i64 4), ptr getelementptr (i8, ptr @poweroff_work, i64 4) }, ptr @poweroff_work_func }, align 4
@__kstrtab_orderly_poweroff = external dso_local constant [0 x i8], align 1
@__kstrtabns_orderly_poweroff = external dso_local constant [0 x i8], align 1
@__ksymtab_orderly_poweroff = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @orderly_poweroff to i32), ptr @__kstrtab_orderly_poweroff, ptr @__kstrtabns_orderly_poweroff }, section "___ksymtab_gpl+orderly_poweroff", align 4
@reboot_work = internal global %struct.work_struct { %struct.atomic_t { i32 -32 }, %struct.list_head { ptr getelementptr (i8, ptr @reboot_work, i64 4), ptr getelementptr (i8, ptr @reboot_work, i64 4) }, ptr @reboot_work_func }, align 4
@__kstrtab_orderly_reboot = external dso_local constant [0 x i8], align 1
@__kstrtabns_orderly_reboot = external dso_local constant [0 x i8], align 1
@__ksymtab_orderly_reboot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @orderly_reboot to i32), ptr @__kstrtab_orderly_reboot, ptr @__kstrtabns_orderly_reboot }, section "___ksymtab_gpl+orderly_reboot", align 4
@hw_protection_shutdown.allow_proceed = internal global %struct.atomic_t { i32 1 }, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"\010reboot: HARDWARE PROTECTION shutdown (%s)\0A\00", align 1
@__kstrtab_hw_protection_shutdown = external dso_local constant [0 x i8], align 1
@__kstrtabns_hw_protection_shutdown = external dso_local constant [0 x i8], align 1
@__ksymtab_hw_protection_shutdown = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hw_protection_shutdown to i32), ptr @__kstrtab_hw_protection_shutdown, ptr @__kstrtabns_hw_protection_shutdown }, section "___ksymtab_gpl+hw_protection_shutdown", align 4
@__setup_str_reboot_setup = internal constant [8 x i8] c"reboot=\00", section ".init.rodata", align 1
@__setup_reboot_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_reboot_setup, ptr @reboot_setup, i32 0 }, section ".init.setup", align 4
@__initcall__kmod_reboot__258_891_reboot_ksysfs_init7 = internal global ptr @reboot_ksysfs_init, section ".initcall7.init", align 4
@reboot_force = dso_local local_unnamed_addr global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"kernel/reboot.c\00", align 1
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.7 = private unnamed_addr constant [63 x i8] c"\014reboot: Failed to start orderly shutdown: forcing the issue\0A\00", align 1
@run_cmd.envp = internal global [3 x ptr] [ptr @.str.8, ptr @.str.9, ptr null], align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"HOME=/\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"PATH=/sbin:/bin:/usr/sbin:/usr/bin\00", align 1
@reboot_cmd = internal constant [13 x i8] c"/sbin/reboot\00", align 1
@.str.10 = private unnamed_addr constant [61 x i8] c"\014reboot: Failed to start orderly reboot: forcing the issue\0A\00", align 1
@hw_failure_emergency_poweroff_work = internal global %struct.delayed_work { %struct.work_struct { %struct.atomic_t { i32 -32 }, %struct.list_head { ptr getelementptr (i8, ptr @hw_failure_emergency_poweroff_work, i64 4), ptr getelementptr (i8, ptr @hw_failure_emergency_poweroff_work, i64 4) }, ptr @hw_failure_emergency_poweroff_func }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @delayed_work_timer_fn, i32 2097152 }, ptr null, i32 0 }, align 4
@.str.11 = private unnamed_addr constant [65 x i8] c"\010reboot: Hardware protection timed-out. Trying forced poweroff\0A\00", align 1
@.str.12 = private unnamed_addr constant [73 x i8] c"\010reboot: Hardware protection shutdown failed. Trying emergency restart\0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"panic_\00", align 1
@__cpu_possible_mask = external dso_local local_unnamed_addr global %struct.cpumask, align 4
@.str.14 = private unnamed_addr constant [92 x i8] c"\013reboot: Ignoring the CPU number in reboot= option. CPU %d exceeds possible cpu number %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"reboot\00", align 1
@kernel_kobj = external dso_local local_unnamed_addr global ptr, align 4
@reboot_attr_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @reboot_attrs, ptr null }, align 4
@reboot_attrs = internal global [3 x ptr] [ptr @reboot_mode_attr, ptr @reboot_cpu_attr, ptr null], align 4
@reboot_mode_attr = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.16, i16 420 }, ptr @mode_show, ptr @mode_store }, align 4
@reboot_cpu_attr = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.24, i16 420 }, ptr @cpu_show, ptr @cpu_store }, align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"cold\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"warm\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"hard\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"soft\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.compiler.used = appending global [17 x ptr] [ptr @__initcall__kmod_reboot__258_891_reboot_ksysfs_init7, ptr @__ksymtab_cad_pid, ptr @__ksymtab_devm_register_reboot_notifier, ptr @__ksymtab_emergency_restart, ptr @__ksymtab_hw_protection_shutdown, ptr @__ksymtab_kernel_halt, ptr @__ksymtab_kernel_power_off, ptr @__ksymtab_kernel_restart, ptr @__ksymtab_orderly_poweroff, ptr @__ksymtab_orderly_reboot, ptr @__ksymtab_pm_power_off_prepare, ptr @__ksymtab_reboot_mode, ptr @__ksymtab_register_reboot_notifier, ptr @__ksymtab_register_restart_handler, ptr @__ksymtab_unregister_reboot_notifier, ptr @__ksymtab_unregister_restart_handler, ptr @__setup_reboot_setup], section "llvm.metadata"
@switch.table.mode_show = private unnamed_addr constant [5 x ptr] [ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], align 4

@sys_reboot = dso_local alias i32 (i32, i32, i32, ptr), ptr @__se_sys_reboot

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @emergency_restart() #0 {
  tail call void @kmsg_dump(i32 noundef 3) #11
  tail call void @machine_restart(ptr noundef null) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmsg_dump(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kernel_restart_prepare(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @reboot_notifier_list, i32 noundef 1, ptr noundef %0) #11
  store i32 6, ptr @system_state, align 4
  %3 = tail call i32 @__usermodehelper_disable(i32 noundef 2) #11
  tail call void @device_shutdown() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_shutdown() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @register_reboot_notifier(ptr noundef %0) #0 {
  %2 = tail call i32 @blocking_notifier_chain_register(ptr noundef nonnull @reboot_notifier_list, ptr noundef %0) #11
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @unregister_reboot_notifier(ptr noundef %0) #0 {
  %2 = tail call i32 @blocking_notifier_chain_unregister(ptr noundef nonnull @reboot_notifier_list, ptr noundef %0) #11
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_register_reboot_notifier(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_unregister_reboot_notifier, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @blocking_notifier_chain_register(ptr noundef nonnull @reboot_notifier_list, ptr noundef %1) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  store ptr %1, ptr %3, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %3) #11
  br label %10

9:                                                ; preds = %5
  tail call void @devres_free(ptr noundef nonnull %3) #11
  br label %10

10:                                               ; preds = %9, %8, %2
  %11 = phi i32 [ -12, %2 ], [ %6, %9 ], [ 0, %8 ]
  ret i32 %11
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_unregister_reboot_notifier(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = tail call i32 @blocking_notifier_chain_unregister(ptr noundef nonnull @reboot_notifier_list, ptr noundef %3) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !8

6:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 114, i32 noundef 9, ptr noundef null) #11
  br label %7

7:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @register_restart_handler(ptr noundef %0) #0 {
  %2 = tail call i32 @atomic_notifier_chain_register(ptr noundef nonnull @restart_handler_list, ptr noundef %0) #11
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @unregister_restart_handler(ptr noundef %0) #0 {
  %2 = tail call i32 @atomic_notifier_chain_unregister(ptr noundef nonnull @restart_handler_list, ptr noundef %0) #11
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @do_kernel_restart(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @reboot_mode, align 4
  %3 = tail call i32 @atomic_notifier_call_chain(ptr noundef nonnull @restart_handler_list, i32 noundef %2, ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @migrate_to_reboot_cpu() local_unnamed_addr #0 {
  %1 = load i32, ptr @reboot_cpu, align 4
  tail call void @cpu_hotplug_disable() #11
  %2 = lshr i32 %1, 5
  %3 = getelementptr i32, ptr @__cpu_online_mask, i32 %2
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %1, 31
  %6 = shl nuw i32 1, %5
  %7 = and i32 %4, %6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %0
  %10 = tail call i32 @_find_first_bit_le(ptr noundef nonnull @__cpu_online_mask, i32 noundef 16) #11
  %11 = and i32 %10, 31
  %12 = lshr i32 %10, 5
  br label %13

13:                                               ; preds = %9, %0
  %14 = phi i32 [ %12, %9 ], [ %2, %0 ]
  %15 = phi i32 [ %11, %9 ], [ %5, %0 ]
  %16 = tail call ptr @llvm.thread.pointer() #11
  %17 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = or i32 %18, 67108864
  store i32 %19, ptr %17, align 4
  %20 = add nuw nsw i32 %15, 1
  %21 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %20
  %22 = sub nsw i32 0, %14
  %23 = getelementptr i32, ptr %21, i32 %22
  %24 = tail call i32 @set_cpus_allowed_ptr(ptr noundef %16, ptr noundef %23) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_hotplug_disable() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_cpus_allowed_ptr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kernel_restart(ptr noundef %0) #0 {
  %2 = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @reboot_notifier_list, i32 noundef 1, ptr noundef %0) #11
  store i32 6, ptr @system_state, align 4
  %3 = tail call i32 @__usermodehelper_disable(i32 noundef 2) #11
  tail call void @device_shutdown() #11
  %4 = load i32, ptr @reboot_cpu, align 4
  tail call void @cpu_hotplug_disable() #11
  %5 = lshr i32 %4, 5
  %6 = getelementptr i32, ptr @__cpu_online_mask, i32 %5
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %4, 31
  %9 = shl nuw i32 1, %8
  %10 = and i32 %7, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = tail call i32 @_find_first_bit_le(ptr noundef nonnull @__cpu_online_mask, i32 noundef 16) #11
  %14 = and i32 %13, 31
  %15 = lshr i32 %13, 5
  br label %16

16:                                               ; preds = %12, %1
  %17 = phi i32 [ %15, %12 ], [ %5, %1 ]
  %18 = phi i32 [ %14, %12 ], [ %8, %1 ]
  %19 = tail call ptr @llvm.thread.pointer() #11
  %20 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = or i32 %21, 67108864
  store i32 %22, ptr %20, align 4
  %23 = add nuw nsw i32 %18, 1
  %24 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %23
  %25 = sub nsw i32 0, %17
  %26 = getelementptr i32, ptr %24, i32 %25
  %27 = tail call i32 @set_cpus_allowed_ptr(ptr noundef %19, ptr noundef %26) #11
  tail call void @syscore_shutdown() #11
  %28 = icmp eq ptr %0, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %16
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #12
  br label %33

31:                                               ; preds = %16
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull %0) #12
  br label %33

33:                                               ; preds = %31, %29
  tail call void @kmsg_dump(i32 noundef 4) #11
  tail call void @machine_restart(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @syscore_shutdown() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @machine_restart(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kernel_halt() #0 {
  %1 = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @reboot_notifier_list, i32 noundef 2, ptr noundef null) #11
  store i32 4, ptr @system_state, align 4
  %2 = tail call i32 @__usermodehelper_disable(i32 noundef 2) #11
  tail call void @device_shutdown() #11
  %3 = load i32, ptr @reboot_cpu, align 4
  tail call void @cpu_hotplug_disable() #11
  %4 = lshr i32 %3, 5
  %5 = getelementptr i32, ptr @__cpu_online_mask, i32 %4
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %3, 31
  %8 = shl nuw i32 1, %7
  %9 = and i32 %6, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %0
  %12 = tail call i32 @_find_first_bit_le(ptr noundef nonnull @__cpu_online_mask, i32 noundef 16) #11
  %13 = and i32 %12, 31
  %14 = lshr i32 %12, 5
  br label %15

15:                                               ; preds = %11, %0
  %16 = phi i32 [ %14, %11 ], [ %4, %0 ]
  %17 = phi i32 [ %13, %11 ], [ %7, %0 ]
  %18 = tail call ptr @llvm.thread.pointer() #11
  %19 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = or i32 %20, 67108864
  store i32 %21, ptr %19, align 4
  %22 = add nuw nsw i32 %17, 1
  %23 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %22
  %24 = sub nsw i32 0, %16
  %25 = getelementptr i32, ptr %23, i32 %24
  %26 = tail call i32 @set_cpus_allowed_ptr(ptr noundef %18, ptr noundef %25) #11
  tail call void @syscore_shutdown() #11
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #12
  tail call void @kmsg_dump(i32 noundef 4) #11
  tail call void @machine_halt() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @machine_halt() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kernel_power_off() #0 {
  %1 = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @reboot_notifier_list, i32 noundef 3, ptr noundef null) #11
  store i32 5, ptr @system_state, align 4
  %2 = tail call i32 @__usermodehelper_disable(i32 noundef 2) #11
  tail call void @device_shutdown() #11
  %3 = load ptr, ptr @pm_power_off_prepare, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  tail call void %3() #11
  br label %6

6:                                                ; preds = %5, %0
  %7 = load i32, ptr @reboot_cpu, align 4
  tail call void @cpu_hotplug_disable() #11
  %8 = lshr i32 %7, 5
  %9 = getelementptr i32, ptr @__cpu_online_mask, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %7, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %10, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %6
  %16 = tail call i32 @_find_first_bit_le(ptr noundef nonnull @__cpu_online_mask, i32 noundef 16) #11
  %17 = and i32 %16, 31
  %18 = lshr i32 %16, 5
  br label %19

19:                                               ; preds = %15, %6
  %20 = phi i32 [ %18, %15 ], [ %8, %6 ]
  %21 = phi i32 [ %17, %15 ], [ %11, %6 ]
  %22 = tail call ptr @llvm.thread.pointer() #11
  %23 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = or i32 %24, 67108864
  store i32 %25, ptr %23, align 4
  %26 = add nuw nsw i32 %21, 1
  %27 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %26
  %28 = sub nsw i32 0, %20
  %29 = getelementptr i32, ptr %27, i32 %28
  %30 = tail call i32 @set_cpus_allowed_ptr(ptr noundef %22, ptr noundef %29) #11
  tail call void @syscore_shutdown() #11
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #12
  tail call void @kmsg_dump(i32 noundef 4) #11
  tail call void @machine_power_off() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @machine_power_off() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_reboot(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca [256 x i8], align 1
  %6 = inttoptr i32 %3 to ptr
  %7 = tail call ptr @llvm.thread.pointer() #11
  %8 = tail call ptr @task_active_pid_ns(ptr noundef %7) #11
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %5, i8 0, i32 256, i1 false) #11, !annotation !9
  %9 = getelementptr inbounds %struct.pid_namespace, ptr %8, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = tail call zeroext i1 @ns_capable(ptr noundef %10, i32 noundef 22) #11
  br i1 %11, label %12, label %35

12:                                               ; preds = %4
  %13 = icmp eq i32 %0, -18751827
  br i1 %13, label %14, label %35

14:                                               ; preds = %12
  switch i32 %1, label %35 [
    i32 672274793, label %15
    i32 537993216, label %15
    i32 369367448, label %15
    i32 85072278, label %15
  ]

15:                                               ; preds = %14, %14, %14, %14
  %16 = icmp ne i32 %2, 1126301404
  %17 = load ptr, ptr @pm_power_off, align 4
  %18 = icmp ne ptr %17, null
  %19 = select i1 %16, i1 true, i1 %18
  %20 = select i1 %19, i32 %2, i32 -839974621
  tail call void @mutex_lock(ptr noundef nonnull @system_transition_mutex) #11
  switch i32 %20, label %33 [
    i32 19088743, label %21
    i32 -1985229329, label %22
    i32 0, label %23
    i32 -839974621, label %24
    i32 1126301404, label %25
    i32 -1582119980, label %26
    i32 1163412803, label %31
  ]

21:                                               ; preds = %15
  tail call void @kernel_restart(ptr noundef null) #11
  br label %33

22:                                               ; preds = %15
  store i32 1, ptr @C_A_D, align 4
  br label %33

23:                                               ; preds = %15
  store i32 0, ptr @C_A_D, align 4
  br label %33

24:                                               ; preds = %15
  tail call void @kernel_halt() #11
  tail call void @do_exit(i32 noundef 0) #13
  unreachable

25:                                               ; preds = %15
  tail call void @kernel_power_off() #11
  tail call void @do_exit(i32 noundef 0) #13
  unreachable

26:                                               ; preds = %15
  %27 = call i32 @strncpy_from_user(ptr noundef nonnull %5, ptr noundef %6, i32 noundef 255) #11
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds [256 x i8], ptr %5, i32 0, i32 255
  store i8 0, ptr %30, align 1
  call void @kernel_restart(ptr noundef nonnull %5) #11
  br label %33

31:                                               ; preds = %15
  %32 = tail call i32 @kernel_kexec() #11
  br label %33

33:                                               ; preds = %31, %29, %26, %23, %22, %21, %15
  %34 = phi i32 [ %32, %31 ], [ %27, %29 ], [ 0, %23 ], [ 0, %22 ], [ 0, %21 ], [ -14, %26 ], [ -22, %15 ]
  call void @mutex_unlock(ptr noundef nonnull @system_transition_mutex) #11
  br label %35

35:                                               ; preds = %33, %14, %12, %4
  %36 = phi i32 [ %34, %33 ], [ -1, %4 ], [ -22, %14 ], [ -22, %12 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #11
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ctrl_alt_del() local_unnamed_addr #0 {
  %1 = load i32, ptr @C_A_D, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @system_wq, align 4
  %5 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %4, ptr noundef nonnull @ctrl_alt_del.cad_work) #11
  br label %9

6:                                                ; preds = %0
  %7 = load ptr, ptr @cad_pid, align 4
  %8 = tail call i32 @kill_pid(ptr noundef %7, i32 noundef 2, i32 noundef 1) #11
  br label %9

9:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @deferred_cad(ptr nocapture noundef readnone %0) #0 {
  tail call void @kernel_restart(ptr noundef null)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @orderly_poweroff(i1 noundef zeroext %0) #0 {
  br i1 %0, label %2, label %3

2:                                                ; preds = %1
  store i1 true, ptr @poweroff_force, align 1
  br label %3

3:                                                ; preds = %2, %1
  %4 = load ptr, ptr @system_wq, align 4
  %5 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %4, ptr noundef nonnull @poweroff_work) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @orderly_reboot() #0 {
  %1 = load ptr, ptr @system_wq, align 4
  %2 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %1, ptr noundef nonnull @reboot_work) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hw_protection_shutdown(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %0) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @hw_protection_shutdown.allow_proceed) #11, !srcloc !11
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @hw_protection_shutdown.allow_proceed, ptr nonnull @hw_protection_shutdown.allow_proceed, i32 1, ptr nonnull elementtype(i32) @hw_protection_shutdown.allow_proceed) #11, !srcloc !12
  %5 = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !13
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = icmp slt i32 %1, 1
  br i1 %8, label %13, label %9

9:                                                ; preds = %7
  %10 = tail call i32 @__msecs_to_jiffies(i32 noundef %1) #11
  %11 = load ptr, ptr @system_wq, align 4
  %12 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %11, ptr noundef nonnull @hw_failure_emergency_poweroff_work, i32 noundef %10) #11
  br label %13

13:                                               ; preds = %9, %7
  store i1 true, ptr @poweroff_force, align 1
  %14 = load ptr, ptr @system_wq, align 4
  %15 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %14, ptr noundef nonnull @poweroff_work) #11
  br label %16

16:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @reboot_setup(ptr noundef %0) #4 section ".init.text" {
  br label %2

2:                                                ; preds = %48, %1
  %3 = phi ptr [ %0, %1 ], [ %52, %48 ]
  store i32 0, ptr @reboot_default, align 4
  %4 = tail call i32 @strncmp(ptr noundef %3, ptr noundef nonnull dereferenceable(7) @.str.13, i32 noundef 6)
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, ptr @panic_reboot_mode, ptr @reboot_mode
  %7 = select i1 %5, i32 6, i32 0
  %8 = getelementptr i8, ptr %3, i32 %7
  %9 = load i8, ptr %8, align 1
  switch i8 %9, label %48 [
    i8 119, label %10
    i8 99, label %11
    i8 104, label %12
    i8 115, label %13
    i8 103, label %44
    i8 98, label %45
    i8 97, label %45
    i8 107, label %45
    i8 116, label %45
    i8 101, label %45
    i8 112, label %45
    i8 102, label %47
  ]

10:                                               ; preds = %2
  store i32 1, ptr %6, align 4
  br label %48

11:                                               ; preds = %2
  store i32 0, ptr %6, align 4
  br label %48

12:                                               ; preds = %2
  store i32 2, ptr %6, align 4
  br label %48

13:                                               ; preds = %2
  %14 = getelementptr i8, ptr %8, i32 1
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 109
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %8, i32 2
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, 112
  %21 = select i1 %20, i32 3, i32 1
  %22 = getelementptr i8, ptr %8, i32 %21
  %23 = load i8, ptr %22, align 1
  br label %24

24:                                               ; preds = %17, %13
  %25 = phi i8 [ %15, %13 ], [ %23, %17 ]
  %26 = phi i32 [ 1, %13 ], [ %21, %17 ]
  %27 = getelementptr i8, ptr %8, i32 %26
  %28 = zext i8 %25 to i32
  %29 = add nsw i32 %28, -58
  %30 = icmp ult i32 %29, -10
  br i1 %30, label %43, label %31

31:                                               ; preds = %24
  %32 = tail call i32 @simple_strtoul(ptr noundef %27, ptr noundef null, i32 noundef 0) #11
  %33 = load i32, ptr @__cpu_possible_mask, align 4
  %34 = and i32 %33, 65535
  %35 = tail call i32 @__sw_hweight32(i32 noundef %34) #11
  %36 = icmp ult i32 %32, %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %31
  %38 = load i32, ptr @__cpu_possible_mask, align 4
  %39 = and i32 %38, 65535
  %40 = tail call i32 @__sw_hweight32(i32 noundef %39) #11
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %32, i32 noundef %40) #12
  br label %48

42:                                               ; preds = %31
  store i32 %32, ptr @reboot_cpu, align 4
  br label %48

43:                                               ; preds = %24
  store i32 3, ptr %6, align 4
  br label %48

44:                                               ; preds = %2
  store i32 4, ptr %6, align 4
  br label %48

45:                                               ; preds = %2, %2, %2, %2, %2, %2
  %46 = zext i8 %9 to i32
  store i32 %46, ptr @reboot_type, align 4
  br label %48

47:                                               ; preds = %2
  store i32 1, ptr @reboot_force, align 4
  br label %48

48:                                               ; preds = %47, %45, %44, %43, %42, %37, %12, %11, %10, %2
  %49 = phi ptr [ %8, %2 ], [ %8, %47 ], [ %8, %45 ], [ %8, %44 ], [ %27, %43 ], [ %8, %12 ], [ %8, %11 ], [ %8, %10 ], [ %27, %42 ], [ %27, %37 ]
  %50 = tail call ptr @strchr(ptr noundef %49, i32 noundef 44)
  %51 = icmp eq ptr %50, null
  %52 = getelementptr i8, ptr %50, i32 1
  br i1 %51, label %53, label %2

53:                                               ; preds = %48
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @reboot_ksysfs_init() #4 section ".init.text" {
  %1 = load ptr, ptr @kernel_kobj, align 4
  %2 = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.15, ptr noundef %1) #11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %0
  %5 = tail call i32 @sysfs_create_group(ptr noundef nonnull %2, ptr noundef nonnull @reboot_attr_group) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @kobject_put(ptr noundef nonnull %2) #11
  br label %8

8:                                                ; preds = %7, %4, %0
  %9 = phi i32 [ %5, %7 ], [ -12, %0 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usermodehelper_disable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_active_pid_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @do_exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncpy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_kexec() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kill_pid(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @poweroff_work_func(ptr nocapture noundef readnone %0) #0 {
  %2 = load i1, ptr @poweroff_force, align 1
  %3 = tail call ptr @argv_split(i32 noundef 3264, ptr noundef nonnull @poweroff_cmd, ptr noundef null) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 4
  %7 = tail call i32 @call_usermodehelper(ptr noundef %6, ptr noundef nonnull %3, ptr noundef nonnull @run_cmd.envp, i32 noundef 1) #11
  tail call void @argv_free(ptr noundef nonnull %3) #11
  %8 = icmp eq i32 %7, 0
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i1 [ %8, %5 ], [ false, %1 ]
  %11 = xor i1 %2, true
  %12 = or i1 %10, %11
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #12
  tail call void @emergency_sync() #11
  tail call void @kernel_power_off() #11
  br label %15

15:                                               ; preds = %13, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @emergency_sync() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @argv_split(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_usermodehelper(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @argv_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @reboot_work_func(ptr nocapture noundef readnone %0) #0 {
  %2 = tail call ptr @argv_split(i32 noundef 3264, ptr noundef nonnull @reboot_cmd, ptr noundef null) #11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 4
  %6 = tail call i32 @call_usermodehelper(ptr noundef %5, ptr noundef nonnull %2, ptr noundef nonnull @run_cmd.envp, i32 noundef 1) #11
  tail call void @argv_free(ptr noundef nonnull %2) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %4, %1
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #12
  tail call void @emergency_sync() #11
  tail call void @kernel_restart(ptr noundef null) #11
  br label %10

10:                                               ; preds = %8, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hw_failure_emergency_poweroff_func(ptr nocapture noundef readnone %0) #0 {
  %2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #12
  tail call void @kernel_power_off()
  %3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #12
  tail call void @kmsg_dump(i32 noundef 3) #11
  tail call void @machine_restart(ptr noundef null) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mode_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = load i32, ptr @reboot_mode, align 4
  %5 = icmp ult i32 %4, 5
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = getelementptr inbounds [5 x ptr], ptr @switch.table.mode_show, i32 0, i32 %4
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %3
  %10 = phi ptr [ %8, %6 ], [ @.str.22, %3 ]
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.23, ptr noundef nonnull %10)
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mode_store(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = tail call zeroext i1 @capable(i32 noundef 22) #11
  br i1 %5, label %6, label %23

6:                                                ; preds = %4
  %7 = tail call i32 @strncmp(ptr noundef %2, ptr noundef nonnull dereferenceable(5) @.str.17, i32 noundef 4)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @strncmp(ptr noundef %2, ptr noundef nonnull dereferenceable(5) @.str.18, i32 noundef 4)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %9
  %13 = tail call i32 @strncmp(ptr noundef %2, ptr noundef nonnull dereferenceable(5) @.str.19, i32 noundef 4)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @strncmp(ptr noundef %2, ptr noundef nonnull dereferenceable(5) @.str.20, i32 noundef 4)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = tail call i32 @strncmp(ptr noundef %2, ptr noundef nonnull dereferenceable(5) @.str.21, i32 noundef 4)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18, %15, %12, %9, %6
  %22 = phi i32 [ 0, %6 ], [ 1, %9 ], [ 2, %12 ], [ 3, %15 ], [ 4, %18 ]
  store i32 %22, ptr @reboot_mode, align 4
  store i32 0, ptr @reboot_default, align 4
  br label %23

23:                                               ; preds = %21, %18, %4
  %24 = phi i32 [ %3, %21 ], [ -1, %4 ], [ -22, %18 ]
  ret i32 %24
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpu_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = load i32, ptr @reboot_cpu, align 4
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.25, i32 noundef %4)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpu_store(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = tail call zeroext i1 @capable(i32 noundef 22) #11
  br i1 %6, label %7, label %18

7:                                                ; preds = %4
  %8 = call i32 @kstrtouint(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  %11 = load i32, ptr %5, align 4
  %12 = load i32, ptr @__cpu_possible_mask, align 4
  %13 = and i32 %12, 65535
  %14 = call i32 @__sw_hweight32(i32 noundef %13) #11
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  store i32 0, ptr @reboot_default, align 4
  %17 = load i32, ptr %5, align 4
  store i32 %17, ptr @reboot_cpu, align 4
  br label %18

18:                                               ; preds = %16, %10, %7, %4
  %19 = phi i32 [ %3, %16 ], [ -1, %4 ], [ %8, %7 ], [ -34, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { noreturn nounwind }

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
!10 = !{i64 2147942671}
!11 = !{i64 266749, i64 2147768315, i64 2147768341, i64 2147768388, i64 2147768410, i64 2147768438, i64 2147768458}
!12 = !{i64 2147845057, i64 2147845089, i64 2147845118, i64 2147845152, i64 2147845183, i64 2147845206}
!13 = !{i64 2147942874}
