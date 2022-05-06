; ModuleID = '/llk/IR/kernel/power/main.c_pt.bc'
source_filename = "../kernel/power/main.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lock_system_sleep:\09\09\09\09\09"
module asm "\09.asciz \09\22lock_system_sleep\22\09\09\09\09\09"
module asm "__kstrtabns_lock_system_sleep:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unlock_system_sleep:\09\09\09\09\09"
module asm "\09.asciz \09\22unlock_system_sleep\22\09\09\09\09\09"
module asm "__kstrtabns_unlock_system_sleep:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ksys_sync_helper:\09\09\09\09\09"
module asm "\09.asciz \09\22ksys_sync_helper\22\09\09\09\09\09"
module asm "__kstrtabns_ksys_sync_helper:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_pm_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22register_pm_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_register_pm_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_pm_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_pm_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_pm_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_wq:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_wq\22\09\09\09\09\09"
module asm "__kstrtabns_pm_wq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.suspend_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x [40 x i8]], i32, [2 x i32], i32, [2 x i32] }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kobj_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.85, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.66 }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.85 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.89, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.90, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.91, ptr, %struct.address_space, %struct.list_head, %union.anon.92, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.89 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%union.anon.90 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.91 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.92 = type { ptr }

@system_transition_mutex = external dso_local global %struct.mutex, align 4
@__kstrtab_lock_system_sleep = external dso_local constant [0 x i8], align 1
@__kstrtabns_lock_system_sleep = external dso_local constant [0 x i8], align 1
@__ksymtab_lock_system_sleep = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lock_system_sleep to i32), ptr @__kstrtab_lock_system_sleep, ptr @__kstrtabns_lock_system_sleep }, section "___ksymtab_gpl+lock_system_sleep", align 4
@__kstrtab_unlock_system_sleep = external dso_local constant [0 x i8], align 1
@__kstrtabns_unlock_system_sleep = external dso_local constant [0 x i8], align 1
@__ksymtab_unlock_system_sleep = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unlock_system_sleep to i32), ptr @__kstrtab_unlock_system_sleep, ptr @__kstrtabns_unlock_system_sleep }, section "___ksymtab_gpl+unlock_system_sleep", align 4
@.str = private unnamed_addr constant [39 x i8] c"\016Filesystems sync: %ld.%03ld seconds\0A\00", align 1
@__kstrtab_ksys_sync_helper = external dso_local constant [0 x i8], align 1
@__kstrtabns_ksys_sync_helper = external dso_local constant [0 x i8], align 1
@__ksymtab_ksys_sync_helper = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ksys_sync_helper to i32), ptr @__kstrtab_ksys_sync_helper, ptr @__kstrtabns_ksys_sync_helper }, section "___ksymtab_gpl+ksys_sync_helper", align 4
@pm_chain_head = internal global %struct.blocking_notifier_head { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pm_chain_head, i64 16), ptr getelementptr (i8, ptr @pm_chain_head, i64 16) } }, ptr null }, align 4
@__kstrtab_register_pm_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_pm_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_register_pm_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_pm_notifier to i32), ptr @__kstrtab_register_pm_notifier, ptr @__kstrtabns_register_pm_notifier }, section "___ksymtab_gpl+register_pm_notifier", align 4
@__kstrtab_unregister_pm_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_pm_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_pm_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_pm_notifier to i32), ptr @__kstrtab_unregister_pm_notifier, ptr @__kstrtabns_unregister_pm_notifier }, section "___ksymtab_gpl+unregister_pm_notifier", align 4
@pm_async_enabled = dso_local local_unnamed_addr global i32 1, align 4
@sync_on_suspend_enabled = dso_local local_unnamed_addr global i8 1, align 1
@__initcall__kmod_main__257_460_pm_debugfs_init7 = internal global ptr @pm_debugfs_init, section ".initcall7.init", align 4
@pm_wq = dso_local global ptr null, align 4
@__kstrtab_pm_wq = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_wq = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_wq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_wq to i32), ptr @__kstrtab_pm_wq, ptr @__kstrtabns_pm_wq }, section "___ksymtab_gpl+pm_wq", align 4
@__initcall__kmod_main__258_962_pm_init1 = internal global ptr @pm_init, section ".initcall1.init", align 4
@power_kobj = dso_local local_unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"suspend_stats\00", align 1
@suspend_stats_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @suspend_stats_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@suspend_stats = external dso_local global %struct.suspend_stats, align 4
@.str.2 = private unnamed_addr constant [71 x i8] c"%s: %d\0A%s: %d\0A%s: %d\0A%s: %d\0A%s: %d\0A%s: %d\0A%s: %d\0A%s: %d\0A%s: %d\0A%s: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"fail\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"failed_freeze\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"failed_prepare\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"failed_suspend\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"failed_suspend_late\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"failed_suspend_noirq\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"failed_resume\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"failed_resume_early\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"failed_resume_noirq\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"failures:\0A  last_failed_dev:\09%-s\0A\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"\09\09\09%-s\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"  last_failed_errno:\09%-d\0A\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"\09\09\09%-d\0A\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"  last_failed_step:\09%-s\0A\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"freeze\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"prepare\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"suspend\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"suspend_noirq\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"resume_noirq\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"resume\00", align 1
@.str.24 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"power\00", align 1
@attr_groups = internal global [3 x ptr] [ptr @attr_group, ptr @suspend_attr_group, ptr null], align 4
@.str.26 = private unnamed_addr constant [3 x i8] c"pm\00", align 1
@attr_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @g, ptr null }, align 4
@suspend_attr_group = internal constant %struct.attribute_group { ptr @.str.1, ptr null, ptr null, ptr @suspend_attrs, ptr null }, align 4
@g = internal global [7 x ptr] [ptr @state_attr, ptr @pm_async_attr, ptr @wakeup_count_attr, ptr @mem_sleep_attr, ptr @sync_on_suspend_attr, ptr @pm_freeze_timeout_attr, ptr null], align 4
@state_attr = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.27, i16 420 }, ptr @state_show, ptr @state_store }, align 4
@pm_async_attr = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.31, i16 420 }, ptr @pm_async_show, ptr @pm_async_store }, align 4
@wakeup_count_attr = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.33, i16 420 }, ptr @wakeup_count_show, ptr @wakeup_count_store }, align 4
@mem_sleep_attr = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.36, i16 420 }, ptr @mem_sleep_show, ptr @mem_sleep_store }, align 4
@sync_on_suspend_attr = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.38, i16 420 }, ptr @sync_on_suspend_show, ptr @sync_on_suspend_store }, align 4
@pm_freeze_timeout_attr = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.39, i16 420 }, ptr @pm_freeze_timeout_show, ptr @pm_freeze_timeout_store }, align 4
@.str.27 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@pm_states = external dso_local local_unnamed_addr global [0 x ptr], align 4
@.str.28 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@mem_sleep_current = external dso_local local_unnamed_addr global i32, align 4
@.str.30 = private unnamed_addr constant [5 x i8] c"disk\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"pm_async\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"wakeup_count\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"mem_sleep\00", align 1
@mem_sleep_states = external dso_local local_unnamed_addr global [0 x ptr], align 4
@.str.37 = private unnamed_addr constant [6 x i8] c"[%s] \00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"sync_on_suspend\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"pm_freeze_timeout\00", align 1
@freeze_timeout_msecs = external dso_local local_unnamed_addr global i32, align 4
@suspend_attrs = internal global [14 x ptr] [ptr @success, ptr @fail, ptr @failed_freeze, ptr @failed_prepare, ptr @failed_suspend, ptr @failed_suspend_late, ptr @failed_suspend_noirq, ptr @failed_resume, ptr @failed_resume_early, ptr @failed_resume_noirq, ptr @last_failed_dev, ptr @last_failed_errno, ptr @last_failed_step, ptr null], align 4
@success = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.3, i16 292 }, ptr @success_show, ptr null }, align 4
@fail = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.4, i16 292 }, ptr @fail_show, ptr null }, align 4
@failed_freeze = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.5, i16 292 }, ptr @failed_freeze_show, ptr null }, align 4
@failed_prepare = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.6, i16 292 }, ptr @failed_prepare_show, ptr null }, align 4
@failed_suspend = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.7, i16 292 }, ptr @failed_suspend_show, ptr null }, align 4
@failed_suspend_late = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.8, i16 292 }, ptr @failed_suspend_late_show, ptr null }, align 4
@failed_suspend_noirq = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.9, i16 292 }, ptr @failed_suspend_noirq_show, ptr null }, align 4
@failed_resume = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.10, i16 292 }, ptr @failed_resume_show, ptr null }, align 4
@failed_resume_early = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.11, i16 292 }, ptr @failed_resume_early_show, ptr null }, align 4
@failed_resume_noirq = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.12, i16 292 }, ptr @failed_resume_noirq_show, ptr null }, align 4
@last_failed_dev = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.40, i16 292 }, ptr @last_failed_dev_show, ptr null }, align 4
@last_failed_errno = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.42, i16 292 }, ptr @last_failed_errno_show, ptr null }, align 4
@last_failed_step = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.43, i16 292 }, ptr @last_failed_step_show, ptr null }, align 4
@.str.40 = private unnamed_addr constant [16 x i8] c"last_failed_dev\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"last_failed_errno\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"last_failed_step\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__initcall__kmod_main__257_460_pm_debugfs_init7, ptr @__initcall__kmod_main__258_962_pm_init1, ptr @__ksymtab_ksys_sync_helper, ptr @__ksymtab_lock_system_sleep, ptr @__ksymtab_pm_wq, ptr @__ksymtab_register_pm_notifier, ptr @__ksymtab_unlock_system_sleep, ptr @__ksymtab_unregister_pm_notifier], section "llvm.metadata"
@switch.table.last_failed_step_show = private unnamed_addr constant [8 x ptr] [ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.24, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.23], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @lock_system_sleep() #0 {
  %1 = tail call ptr @llvm.thread.pointer() #11
  %2 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = or i32 %3, 1073741824
  store i32 %4, ptr %2, align 4
  tail call void @mutex_lock(ptr noundef nonnull @system_transition_mutex) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unlock_system_sleep() #0 {
  %1 = tail call ptr @llvm.thread.pointer() #11
  %2 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, -1073741825
  store i32 %4, ptr %2, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @system_transition_mutex) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ksys_sync_helper() #0 {
  %1 = tail call i64 @ktime_get() #11
  tail call void @ksys_sync() #11
  %2 = tail call i64 @ktime_get() #11
  %3 = sub i64 %2, %1
  %4 = tail call i64 @llvm.abs.i64(i64 %3, i1 false) #11
  %5 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %4) #12, !srcloc !8
  %6 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %4, i64 %5, i32 0) #12, !srcloc !9
  %7 = extractvalue { i64, i32 } %6, 0
  %8 = icmp slt i64 %3, 0
  %9 = lshr i64 %7, 18
  %10 = sub nsw i64 0, %9
  %11 = select i1 %8, i64 %10, i64 %9
  %12 = trunc i64 %11 to i32
  %13 = freeze i32 %12
  %14 = sdiv i32 %13, 1000
  %15 = mul i32 %14, 1000
  %16 = sub i32 %13, %15
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %14, i32 noundef %16) #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ksys_sync() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @register_pm_notifier(ptr noundef %0) #0 {
  %2 = tail call i32 @blocking_notifier_chain_register(ptr noundef nonnull @pm_chain_head, ptr noundef %0) #11
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @unregister_pm_notifier(ptr noundef %0) #0 {
  %2 = tail call i32 @blocking_notifier_chain_unregister(ptr noundef nonnull @pm_chain_head, ptr noundef %0) #11
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pm_notifier_call_chain_robust(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @blocking_notifier_call_chain_robust(ptr noundef nonnull @pm_chain_head, i32 noundef %0, i32 noundef %1, ptr noundef null) #11
  %4 = and i32 %3, -32769
  %5 = icmp sgt i32 %4, 1
  %6 = sub i32 1, %4
  %7 = select i1 %5, i32 %6, i32 0
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain_robust(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pm_notifier_call_chain(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @pm_chain_head, i32 noundef %0, ptr noundef null) #11
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @pm_debugfs_init() #4 section ".init.text" {
  %1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext -32476, ptr noundef null, ptr noundef null, ptr noundef nonnull @suspend_stats_fops) #11
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @pm_init() #4 section ".init.text" {
  %1 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.26, i32 noundef 4, i32 noundef 0) #11
  store ptr %1, ptr @pm_wq, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %0
  tail call void @pm_states_init() #13
  %4 = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.25, ptr noundef null) #11
  store ptr %4, ptr @power_kobj, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @sysfs_create_groups(ptr noundef nonnull %4, ptr noundef nonnull @attr_groups) #11
  br label %8

8:                                                ; preds = %6, %3, %0
  %9 = phi i32 [ -12, %0 ], [ -12, %3 ], [ %7, %6 ]
  ret i32 %9
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @suspend_stats_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @suspend_stats_show, ptr noundef %4) #11
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @suspend_stats_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 10), align 4
  %4 = add i32 %3, 1
  %5 = srem i32 %4, 2
  %6 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 12), align 4
  %7 = add i32 %6, 1
  %8 = srem i32 %7, 2
  %9 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 14), align 4
  %10 = add i32 %9, 1
  %11 = srem i32 %10, 2
  %12 = load i32, ptr @suspend_stats, align 4
  %13 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 1), align 4
  %14 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 2), align 4
  %15 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 3), align 4
  %16 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 4), align 4
  %17 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 5), align 4
  %18 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 6), align 4
  %19 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 7), align 4
  %20 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 8), align 4
  %21 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 9), align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %12, ptr noundef nonnull @.str.4, i32 noundef %13, ptr noundef nonnull @.str.5, i32 noundef %14, ptr noundef nonnull @.str.6, i32 noundef %15, ptr noundef nonnull @.str.7, i32 noundef %16, ptr noundef nonnull @.str.8, i32 noundef %17, ptr noundef nonnull @.str.9, i32 noundef %18, ptr noundef nonnull @.str.10, i32 noundef %19, ptr noundef nonnull @.str.11, i32 noundef %20, ptr noundef nonnull @.str.12, i32 noundef %21) #11
  %22 = getelementptr %struct.suspend_stats, ptr @suspend_stats, i32 0, i32 11, i32 %5
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef %22) #11
  %23 = and i32 %5, 1
  %24 = xor i32 %23, 1
  %25 = getelementptr %struct.suspend_stats, ptr @suspend_stats, i32 0, i32 11, i32 %24
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef %25) #11
  %26 = getelementptr %struct.suspend_stats, ptr @suspend_stats, i32 0, i32 13, i32 %8
  %27 = load i32, ptr %26, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef %27) #11
  %28 = and i32 %8, 1
  %29 = xor i32 %28, 1
  %30 = getelementptr %struct.suspend_stats, ptr @suspend_stats, i32 0, i32 13, i32 %29
  %31 = load i32, ptr %30, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef %31) #11
  %32 = getelementptr %struct.suspend_stats, ptr @suspend_stats, i32 0, i32 15, i32 %11
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, -1
  %35 = icmp ult i32 %34, 8
  br i1 %35, label %36, label %39

36:                                               ; preds = %2
  %37 = getelementptr inbounds [8 x ptr], ptr @switch.table.last_failed_step_show, i32 0, i32 %34
  %38 = load ptr, ptr %37, align 4
  br label %39

39:                                               ; preds = %36, %2
  %40 = phi ptr [ %38, %36 ], [ @.str.24, %2 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.17, ptr noundef nonnull %40) #11
  %41 = and i32 %11, 1
  %42 = xor i32 %41, 1
  %43 = getelementptr %struct.suspend_stats, ptr @suspend_stats, i32 0, i32 15, i32 %42
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, -1
  %46 = icmp ult i32 %45, 8
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = getelementptr inbounds [8 x ptr], ptr @switch.table.last_failed_step_show, i32 0, i32 %45
  %49 = load ptr, ptr %48, align 4
  br label %50

50:                                               ; preds = %47, %39
  %51 = phi ptr [ %49, %47 ], [ @.str.24, %39 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef nonnull %51) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @pm_states_init() local_unnamed_addr #3 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_groups(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @state_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2) #6 {
  %4 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @pm_states, i32 0, i32 1), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.28, ptr noundef nonnull %4)
  %8 = getelementptr i8, ptr %2, i32 %7
  br label %9

9:                                                ; preds = %6, %3
  %10 = phi ptr [ %8, %6 ], [ %2, %3 ]
  %11 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @pm_states, i32 0, i32 2), align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %10, ptr noundef nonnull @.str.28, ptr noundef nonnull %11)
  %15 = getelementptr i8, ptr %10, i32 %14
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi ptr [ %15, %13 ], [ %10, %9 ]
  %18 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @pm_states, i32 0, i32 3), align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %17, ptr noundef nonnull @.str.28, ptr noundef nonnull %18)
  %22 = getelementptr i8, ptr %17, i32 %21
  br label %23

23:                                               ; preds = %20, %16
  %24 = phi ptr [ %22, %20 ], [ %17, %16 ]
  %25 = icmp eq ptr %24, %2
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = getelementptr i8, ptr %24, i32 -1
  store i8 10, ptr %27, align 1
  br label %28

28:                                               ; preds = %26, %23
  %29 = ptrtoint ptr %24 to i32
  %30 = ptrtoint ptr %2 to i32
  %31 = sub i32 %29, %30
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @state_store(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = tail call ptr @memchr(ptr noundef %2, i32 noundef 10, i32 noundef %3) #11
  %6 = icmp eq ptr %5, null
  %7 = ptrtoint ptr %5 to i32
  %8 = ptrtoint ptr %2 to i32
  %9 = sub i32 %7, %8
  %10 = select i1 %6, i32 %3, i32 %9
  %11 = icmp eq i32 %10, 4
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = tail call i32 @strncmp(ptr noundef %2, ptr noundef nonnull dereferenceable(5) @.str.30, i32 noundef 4) #11
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %49, label %15

15:                                               ; preds = %12, %4
  %16 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @pm_states, i32 0, i32 1), align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = tail call i32 @strlen(ptr noundef nonnull %16) #11
  %20 = icmp eq i32 %10, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = tail call i32 @strncmp(ptr noundef %2, ptr noundef nonnull %16, i32 noundef %10) #11
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %44, label %24

24:                                               ; preds = %21, %18, %15
  %25 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @pm_states, i32 0, i32 2), align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = tail call i32 @strlen(ptr noundef nonnull %25) #11
  %29 = icmp eq i32 %10, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = tail call i32 @strncmp(ptr noundef %2, ptr noundef nonnull %25, i32 noundef %10) #11
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %30, %27, %24
  %34 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @pm_states, i32 0, i32 3), align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %44, label %36

36:                                               ; preds = %33
  %37 = tail call i32 @strlen(ptr noundef nonnull %34) #11
  %38 = icmp eq i32 %10, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = tail call i32 @strncmp(ptr noundef %2, ptr noundef nonnull %34, i32 noundef %10) #11
  %41 = icmp eq i32 %40, 0
  %42 = load i32, ptr @mem_sleep_current, align 4
  %43 = select i1 %41, i32 %42, i32 0
  br label %44

44:                                               ; preds = %39, %36, %33, %30, %21
  %45 = phi i32 [ 1, %21 ], [ 2, %30 ], [ 0, %36 ], [ 0, %33 ], [ %43, %39 ]
  %46 = tail call i32 @pm_suspend(i32 noundef %45) #11
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %47, i32 %3, i32 %46
  br label %49

49:                                               ; preds = %44, %12
  %50 = phi i32 [ -38, %12 ], [ %48, %44 ]
  ret i32 %50
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_suspend(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pm_async_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = load i32, ptr @pm_async_enabled, align 4
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.32, i32 noundef %4)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pm_async_store(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !10
  %6 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = load i32, ptr %5, align 4
  %10 = icmp ugt i32 %9, 1
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  store i32 %9, ptr @pm_async_enabled, align 4
  br label %12

12:                                               ; preds = %11, %8, %4
  %13 = phi i32 [ %3, %11 ], [ -22, %4 ], [ -22, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wakeup_count_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !10
  %5 = call zeroext i1 @pm_get_wakeup_count(ptr noundef nonnull %4, i1 noundef zeroext true) #11
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 4
  %8 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.34, i32 noundef %7)
  br label %9

9:                                                ; preds = %6, %3
  %10 = phi i32 [ %8, %6 ], [ -4, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wakeup_count_store(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !10
  %6 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %2, ptr noundef nonnull @.str.35, ptr noundef nonnull %5)
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = load i32, ptr %5, align 4
  %10 = call zeroext i1 @pm_save_wakeup_count(i32 noundef %9) #11
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  call void @pm_print_active_wakeup_sources() #11
  br label %12

12:                                               ; preds = %11, %8, %4
  %13 = phi i32 [ -22, %11 ], [ -22, %4 ], [ %3, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pm_get_wakeup_count(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pm_save_wakeup_count(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_print_active_wakeup_sources() local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mem_sleep_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2) #6 {
  %4 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @mem_sleep_states, i32 0, i32 1), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr @mem_sleep_current, align 4
  %8 = icmp eq i32 %7, 1
  %9 = select i1 %8, ptr @.str.37, ptr @.str.28
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull %9, ptr noundef nonnull %4)
  %11 = getelementptr i8, ptr %2, i32 %10
  br label %12

12:                                               ; preds = %6, %3
  %13 = phi ptr [ %11, %6 ], [ %2, %3 ]
  %14 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @mem_sleep_states, i32 0, i32 2), align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = load i32, ptr @mem_sleep_current, align 4
  %18 = icmp eq i32 %17, 2
  %19 = select i1 %18, ptr @.str.37, ptr @.str.28
  %20 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %13, ptr noundef nonnull %19, ptr noundef nonnull %14)
  %21 = getelementptr i8, ptr %13, i32 %20
  br label %22

22:                                               ; preds = %16, %12
  %23 = phi ptr [ %21, %16 ], [ %13, %12 ]
  %24 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @mem_sleep_states, i32 0, i32 3), align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = load i32, ptr @mem_sleep_current, align 4
  %28 = icmp eq i32 %27, 3
  %29 = select i1 %28, ptr @.str.37, ptr @.str.28
  %30 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %23, ptr noundef nonnull %29, ptr noundef nonnull %24)
  %31 = getelementptr i8, ptr %23, i32 %30
  br label %32

32:                                               ; preds = %26, %22
  %33 = phi ptr [ %31, %26 ], [ %23, %22 ]
  %34 = icmp eq ptr %33, %2
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = getelementptr i8, ptr %33, i32 -1
  store i8 10, ptr %36, align 1
  br label %37

37:                                               ; preds = %35, %32
  %38 = ptrtoint ptr %33 to i32
  %39 = ptrtoint ptr %2 to i32
  %40 = sub i32 %38, %39
  ret i32 %40
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @mem_sleep_store(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #9 {
  %5 = tail call ptr @memchr(ptr noundef %2, i32 noundef 10, i32 noundef %3) #11
  %6 = icmp eq ptr %5, null
  %7 = ptrtoint ptr %5 to i32
  %8 = ptrtoint ptr %2 to i32
  %9 = sub i32 %7, %8
  %10 = select i1 %6, i32 %3, i32 %9
  %11 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @mem_sleep_states, i32 0, i32 1), align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %4
  %14 = tail call i32 @strlen(ptr noundef nonnull %11) #11
  %15 = icmp eq i32 %10, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = tail call i32 @strncmp(ptr noundef %2, ptr noundef nonnull %11, i32 noundef %10) #11
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %37, label %19

19:                                               ; preds = %16, %13, %4
  %20 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @mem_sleep_states, i32 0, i32 2), align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = tail call i32 @strlen(ptr noundef nonnull %20) #11
  %24 = icmp eq i32 %10, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = tail call i32 @strncmp(ptr noundef %2, ptr noundef nonnull %20, i32 noundef %10) #11
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %25, %22, %19
  %29 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @mem_sleep_states, i32 0, i32 3), align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %28
  %32 = tail call i32 @strlen(ptr noundef nonnull %29) #11
  %33 = icmp eq i32 %10, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = tail call i32 @strncmp(ptr noundef %2, ptr noundef nonnull %29, i32 noundef %10) #11
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34, %25, %16
  %38 = phi i32 [ 3, %34 ], [ 2, %25 ], [ 1, %16 ]
  store i32 %38, ptr @mem_sleep_current, align 4
  br label %39

39:                                               ; preds = %37, %34, %31, %28
  %40 = phi i32 [ %3, %37 ], [ -22, %28 ], [ -22, %31 ], [ -22, %34 ]
  ret i32 %40
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sync_on_suspend_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = load i8, ptr @sync_on_suspend_enabled, align 1, !range !11
  %5 = zext i8 %4 to i32
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.32, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sync_on_suspend_store(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !10
  %6 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = load i32, ptr %5, align 4
  %10 = icmp ugt i32 %9, 1
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = icmp ne i32 %9, 0
  %13 = zext i1 %12 to i8
  store i8 %13, ptr @sync_on_suspend_enabled, align 1
  br label %14

14:                                               ; preds = %11, %8, %4
  %15 = phi i32 [ %3, %11 ], [ -22, %4 ], [ -22, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret i32 %15
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pm_freeze_timeout_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = load i32, ptr @freeze_timeout_msecs, align 4
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.34, i32 noundef %4)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pm_freeze_timeout_store(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !10
  %6 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = load i32, ptr %5, align 4
  store i32 %9, ptr @freeze_timeout_msecs, align 4
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi i32 [ %3, %8 ], [ -22, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret i32 %11
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @success_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = load i32, ptr @suspend_stats, align 4
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.32, i32 noundef %4)
  ret i32 %5
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fail_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 1), align 4
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.32, i32 noundef %4)
  ret i32 %5
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @failed_freeze_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 2), align 4
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.32, i32 noundef %4)
  ret i32 %5
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @failed_prepare_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 3), align 4
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.32, i32 noundef %4)
  ret i32 %5
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @failed_suspend_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 4), align 4
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.32, i32 noundef %4)
  ret i32 %5
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @failed_suspend_late_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 5), align 4
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.32, i32 noundef %4)
  ret i32 %5
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @failed_suspend_noirq_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 6), align 4
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.32, i32 noundef %4)
  ret i32 %5
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @failed_resume_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 7), align 4
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.32, i32 noundef %4)
  ret i32 %5
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @failed_resume_early_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 8), align 4
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.32, i32 noundef %4)
  ret i32 %5
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @failed_resume_noirq_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 9), align 4
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.32, i32 noundef %4)
  ret i32 %5
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @last_failed_dev_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 10), align 4
  %5 = add i32 %4, 1
  %6 = srem i32 %5, 2
  %7 = getelementptr %struct.suspend_stats, ptr @suspend_stats, i32 0, i32 11, i32 %6
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.41, ptr noundef %7)
  ret i32 %8
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @last_failed_errno_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 12), align 4
  %5 = add i32 %4, 1
  %6 = srem i32 %5, 2
  %7 = getelementptr %struct.suspend_stats, ptr @suspend_stats, i32 0, i32 13, i32 %6
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.32, i32 noundef %8)
  ret i32 %9
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @last_failed_step_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 14), align 4
  %5 = add i32 %4, 1
  %6 = srem i32 %5, 2
  %7 = getelementptr %struct.suspend_stats, ptr @suspend_stats, i32 0, i32 15, i32 %6
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, -1
  %10 = icmp ult i32 %9, 8
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = getelementptr inbounds [8 x ptr], ptr @switch.table.last_failed_step_show, i32 0, i32 %9
  %13 = load ptr, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %3
  %15 = phi ptr [ %13, %11 ], [ @.str.24, %3 ]
  %16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.41, ptr noundef nonnull %15)
  ret i32 %16
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind readnone }
attributes #13 = { cold nounwind }

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
!8 = !{i64 1083233, i64 1083260}
!9 = !{i64 1083928, i64 1083955, i64 1083988, i64 1084009, i64 1084036, i64 1084062}
!10 = !{!"auto-init"}
!11 = !{i8 0, i8 2}
