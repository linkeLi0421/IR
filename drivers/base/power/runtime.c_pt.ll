; ModuleID = '/llk/IR/drivers/base/power/runtime.c_pt.bc'
source_filename = "../drivers/base/power/runtime.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_runtime_suspended_time:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_runtime_suspended_time\22\09\09\09\09\09"
module asm "__kstrtabns_pm_runtime_suspended_time:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_runtime_autosuspend_expiration:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_runtime_autosuspend_expiration\22\09\09\09\09\09"
module asm "__kstrtabns_pm_runtime_autosuspend_expiration:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_runtime_set_memalloc_noio:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_runtime_set_memalloc_noio\22\09\09\09\09\09"
module asm "__kstrtabns_pm_runtime_set_memalloc_noio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_schedule_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_schedule_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_pm_schedule_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___pm_runtime_idle:\09\09\09\09\09"
module asm "\09.asciz \09\22__pm_runtime_idle\22\09\09\09\09\09"
module asm "__kstrtabns___pm_runtime_idle:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___pm_runtime_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22__pm_runtime_suspend\22\09\09\09\09\09"
module asm "__kstrtabns___pm_runtime_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___pm_runtime_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22__pm_runtime_resume\22\09\09\09\09\09"
module asm "__kstrtabns___pm_runtime_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_runtime_get_if_active:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_runtime_get_if_active\22\09\09\09\09\09"
module asm "__kstrtabns_pm_runtime_get_if_active:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___pm_runtime_set_status:\09\09\09\09\09"
module asm "\09.asciz \09\22__pm_runtime_set_status\22\09\09\09\09\09"
module asm "__kstrtabns___pm_runtime_set_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_runtime_barrier:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_runtime_barrier\22\09\09\09\09\09"
module asm "__kstrtabns_pm_runtime_barrier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___pm_runtime_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22__pm_runtime_disable\22\09\09\09\09\09"
module asm "__kstrtabns___pm_runtime_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_runtime_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_runtime_enable\22\09\09\09\09\09"
module asm "__kstrtabns_pm_runtime_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_pm_runtime_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_pm_runtime_enable\22\09\09\09\09\09"
module asm "__kstrtabns_devm_pm_runtime_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_runtime_forbid:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_runtime_forbid\22\09\09\09\09\09"
module asm "__kstrtabns_pm_runtime_forbid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_runtime_allow:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_runtime_allow\22\09\09\09\09\09"
module asm "__kstrtabns_pm_runtime_allow:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_runtime_no_callbacks:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_runtime_no_callbacks\22\09\09\09\09\09"
module asm "__kstrtabns_pm_runtime_no_callbacks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_runtime_irq_safe:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_runtime_irq_safe\22\09\09\09\09\09"
module asm "__kstrtabns_pm_runtime_irq_safe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_runtime_set_autosuspend_delay:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_runtime_set_autosuspend_delay\22\09\09\09\09\09"
module asm "__kstrtabns_pm_runtime_set_autosuspend_delay:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___pm_runtime_use_autosuspend:\09\09\09\09\09"
module asm "\09.asciz \09\22__pm_runtime_use_autosuspend\22\09\09\09\09\09"
module asm "__kstrtabns___pm_runtime_use_autosuspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_runtime_force_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_runtime_force_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_pm_runtime_force_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_runtime_force_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_runtime_force_resume\22\09\09\09\09\09"
module asm "__kstrtabns_pm_runtime_force_resume:\09\09\09\09\09"
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
%struct.lock_class_key = type {}
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type {}
%struct.cpumask = type { [1 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_link = type { ptr, %struct.list_head, ptr, %struct.list_head, %struct.device, i32, i32, %struct.refcount_struct, %struct.kref, %struct.work_struct, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.26, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.6 }
%struct.llist_node = type { ptr }
%union.anon.6 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.7 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.26 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__kstrtab_pm_runtime_suspended_time = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_runtime_suspended_time = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_runtime_suspended_time = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_runtime_suspended_time to i32), ptr @__kstrtab_pm_runtime_suspended_time, ptr @__kstrtabns_pm_runtime_suspended_time }, section "___ksymtab_gpl+pm_runtime_suspended_time", align 4
@__kstrtab_pm_runtime_autosuspend_expiration = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_runtime_autosuspend_expiration = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_runtime_autosuspend_expiration = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_runtime_autosuspend_expiration to i32), ptr @__kstrtab_pm_runtime_autosuspend_expiration, ptr @__kstrtabns_pm_runtime_autosuspend_expiration }, section "___ksymtab_gpl+pm_runtime_autosuspend_expiration", align 4
@pm_runtime_set_memalloc_noio.dev_hotplug_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pm_runtime_set_memalloc_noio.dev_hotplug_mutex, i64 12), ptr getelementptr (i8, ptr @pm_runtime_set_memalloc_noio.dev_hotplug_mutex, i64 12) } }, align 4
@__kstrtab_pm_runtime_set_memalloc_noio = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_runtime_set_memalloc_noio = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_runtime_set_memalloc_noio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_runtime_set_memalloc_noio to i32), ptr @__kstrtab_pm_runtime_set_memalloc_noio, ptr @__kstrtabns_pm_runtime_set_memalloc_noio }, section "___ksymtab_gpl+pm_runtime_set_memalloc_noio", align 4
@__kstrtab_pm_schedule_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_schedule_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_schedule_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_schedule_suspend to i32), ptr @__kstrtab_pm_schedule_suspend, ptr @__kstrtabns_pm_schedule_suspend }, section "___ksymtab_gpl+pm_schedule_suspend", align 4
@__kstrtab___pm_runtime_idle = external dso_local constant [0 x i8], align 1
@__kstrtabns___pm_runtime_idle = external dso_local constant [0 x i8], align 1
@__ksymtab___pm_runtime_idle = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__pm_runtime_idle to i32), ptr @__kstrtab___pm_runtime_idle, ptr @__kstrtabns___pm_runtime_idle }, section "___ksymtab_gpl+__pm_runtime_idle", align 4
@__kstrtab___pm_runtime_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns___pm_runtime_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab___pm_runtime_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__pm_runtime_suspend to i32), ptr @__kstrtab___pm_runtime_suspend, ptr @__kstrtabns___pm_runtime_suspend }, section "___ksymtab_gpl+__pm_runtime_suspend", align 4
@__kstrtab___pm_runtime_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns___pm_runtime_resume = external dso_local constant [0 x i8], align 1
@__ksymtab___pm_runtime_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__pm_runtime_resume to i32), ptr @__kstrtab___pm_runtime_resume, ptr @__kstrtabns___pm_runtime_resume }, section "___ksymtab_gpl+__pm_runtime_resume", align 4
@__kstrtab_pm_runtime_get_if_active = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_runtime_get_if_active = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_runtime_get_if_active = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_runtime_get_if_active to i32), ptr @__kstrtab_pm_runtime_get_if_active, ptr @__kstrtabns_pm_runtime_get_if_active }, section "___ksymtab_gpl+pm_runtime_get_if_active", align 4
@.str = private unnamed_addr constant [77 x i8] c"runtime PM trying to activate child device %s but parent (%s) is not active\0A\00", align 1
@__kstrtab___pm_runtime_set_status = external dso_local constant [0 x i8], align 1
@__kstrtabns___pm_runtime_set_status = external dso_local constant [0 x i8], align 1
@__ksymtab___pm_runtime_set_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__pm_runtime_set_status to i32), ptr @__kstrtab___pm_runtime_set_status, ptr @__kstrtabns___pm_runtime_set_status }, section "___ksymtab_gpl+__pm_runtime_set_status", align 4
@__kstrtab_pm_runtime_barrier = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_runtime_barrier = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_runtime_barrier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_runtime_barrier to i32), ptr @__kstrtab_pm_runtime_barrier, ptr @__kstrtabns_pm_runtime_barrier }, section "___ksymtab_gpl+pm_runtime_barrier", align 4
@__kstrtab___pm_runtime_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns___pm_runtime_disable = external dso_local constant [0 x i8], align 1
@__ksymtab___pm_runtime_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__pm_runtime_disable to i32), ptr @__kstrtab___pm_runtime_disable, ptr @__kstrtabns___pm_runtime_disable }, section "___ksymtab_gpl+__pm_runtime_disable", align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Unbalanced %s!\0A\00", align 1
@__func__.pm_runtime_enable = private unnamed_addr constant [18 x i8] c"pm_runtime_enable\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"Enabling runtime PM for inactive device with active children\0A\00", align 1
@__kstrtab_pm_runtime_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_runtime_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_runtime_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_runtime_enable to i32), ptr @__kstrtab_pm_runtime_enable, ptr @__kstrtabns_pm_runtime_enable }, section "___ksymtab_gpl+pm_runtime_enable", align 4
@__kstrtab_devm_pm_runtime_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_pm_runtime_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_pm_runtime_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_pm_runtime_enable to i32), ptr @__kstrtab_devm_pm_runtime_enable, ptr @__kstrtabns_devm_pm_runtime_enable }, section "___ksymtab_gpl+devm_pm_runtime_enable", align 4
@__kstrtab_pm_runtime_forbid = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_runtime_forbid = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_runtime_forbid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_runtime_forbid to i32), ptr @__kstrtab_pm_runtime_forbid, ptr @__kstrtabns_pm_runtime_forbid }, section "___ksymtab_gpl+pm_runtime_forbid", align 4
@__kstrtab_pm_runtime_allow = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_runtime_allow = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_runtime_allow = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_runtime_allow to i32), ptr @__kstrtab_pm_runtime_allow, ptr @__kstrtabns_pm_runtime_allow }, section "___ksymtab_gpl+pm_runtime_allow", align 4
@__kstrtab_pm_runtime_no_callbacks = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_runtime_no_callbacks = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_runtime_no_callbacks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_runtime_no_callbacks to i32), ptr @__kstrtab_pm_runtime_no_callbacks, ptr @__kstrtabns_pm_runtime_no_callbacks }, section "___ksymtab_gpl+pm_runtime_no_callbacks", align 4
@__kstrtab_pm_runtime_irq_safe = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_runtime_irq_safe = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_runtime_irq_safe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_runtime_irq_safe to i32), ptr @__kstrtab_pm_runtime_irq_safe, ptr @__kstrtabns_pm_runtime_irq_safe }, section "___ksymtab_gpl+pm_runtime_irq_safe", align 4
@__kstrtab_pm_runtime_set_autosuspend_delay = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_runtime_set_autosuspend_delay = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_runtime_set_autosuspend_delay = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_runtime_set_autosuspend_delay to i32), ptr @__kstrtab_pm_runtime_set_autosuspend_delay, ptr @__kstrtabns_pm_runtime_set_autosuspend_delay }, section "___ksymtab_gpl+pm_runtime_set_autosuspend_delay", align 4
@__kstrtab___pm_runtime_use_autosuspend = external dso_local constant [0 x i8], align 1
@__kstrtabns___pm_runtime_use_autosuspend = external dso_local constant [0 x i8], align 1
@__ksymtab___pm_runtime_use_autosuspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__pm_runtime_use_autosuspend to i32), ptr @__kstrtab___pm_runtime_use_autosuspend, ptr @__kstrtabns___pm_runtime_use_autosuspend }, section "___ksymtab_gpl+__pm_runtime_use_autosuspend", align 4
@pm_runtime_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"&dev->power.wait_queue\00", align 1
@__kstrtab_pm_runtime_force_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_runtime_force_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_runtime_force_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_runtime_force_suspend to i32), ptr @__kstrtab_pm_runtime_force_suspend, ptr @__kstrtabns_pm_runtime_force_suspend }, section "___ksymtab_gpl+pm_runtime_force_suspend", align 4
@__kstrtab_pm_runtime_force_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_runtime_force_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_runtime_force_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_runtime_force_resume to i32), ptr @__kstrtab_pm_runtime_force_resume, ptr @__kstrtabns_pm_runtime_force_resume }, section "___ksymtab_gpl+pm_runtime_force_resume", align 4
@pm_wq = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_rpm_suspend = external dso_local global %struct.tracepoint, align 4
@trace_rpm_suspend_rcuidle.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"include/trace/events/rpm.h\00", align 1
@tracepoint_srcu = external dso_local global %struct.srcu_struct, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_rpm_return_int = external dso_local global %struct.tracepoint, align 4
@trace_rpm_return_int_rcuidle.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_rpm_usage = external dso_local global %struct.tracepoint, align 4
@trace_rpm_usage_rcuidle.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_rpm_idle = external dso_local global %struct.tracepoint, align 4
@trace_rpm_idle_rcuidle.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_rpm_resume = external dso_local global %struct.tracepoint, align 4
@trace_rpm_resume_rcuidle.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"drivers/base/power/runtime.c\00", align 1
@llvm.compiler.used = appending global [21 x ptr] [ptr @__ksymtab___pm_runtime_disable, ptr @__ksymtab___pm_runtime_idle, ptr @__ksymtab___pm_runtime_resume, ptr @__ksymtab___pm_runtime_set_status, ptr @__ksymtab___pm_runtime_suspend, ptr @__ksymtab___pm_runtime_use_autosuspend, ptr @__ksymtab_devm_pm_runtime_enable, ptr @__ksymtab_pm_runtime_allow, ptr @__ksymtab_pm_runtime_autosuspend_expiration, ptr @__ksymtab_pm_runtime_barrier, ptr @__ksymtab_pm_runtime_enable, ptr @__ksymtab_pm_runtime_forbid, ptr @__ksymtab_pm_runtime_force_resume, ptr @__ksymtab_pm_runtime_force_suspend, ptr @__ksymtab_pm_runtime_get_if_active, ptr @__ksymtab_pm_runtime_irq_safe, ptr @__ksymtab_pm_runtime_no_callbacks, ptr @__ksymtab_pm_runtime_set_autosuspend_delay, ptr @__ksymtab_pm_runtime_set_memalloc_noio, ptr @__ksymtab_pm_runtime_suspended_time, ptr @__ksymtab_pm_schedule_suspend], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @pm_runtime_active_time(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 3
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #6
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, 7
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 25
  %10 = load i64, ptr %9, align 8
  %11 = tail call i64 @ktime_get_mono_fast_ns() #6
  store i64 %11, ptr %9, align 8
  %12 = icmp ult i64 %11, %10
  br i1 %12, label %23, label %13

13:                                               ; preds = %8
  %14 = sub i64 %11, %10
  %15 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 2
  %18 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 24
  %19 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 23
  %20 = select i1 %17, ptr %18, ptr %19
  %21 = load i64, ptr %20, align 8
  %22 = add i64 %14, %21
  store i64 %22, ptr %20, align 8
  br label %23

23:                                               ; preds = %13, %8, %1
  %24 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 23
  %25 = load i64, ptr %24, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #6
  ret i64 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @pm_runtime_suspended_time(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 3
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #6
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, 7
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 25
  %10 = load i64, ptr %9, align 8
  %11 = tail call i64 @ktime_get_mono_fast_ns() #6
  store i64 %11, ptr %9, align 8
  %12 = icmp ult i64 %11, %10
  br i1 %12, label %23, label %13

13:                                               ; preds = %8
  %14 = sub i64 %11, %10
  %15 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 2
  %18 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 24
  %19 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 23
  %20 = select i1 %17, ptr %18, ptr %19
  %21 = load i64, ptr %20, align 8
  %22 = add i64 %14, %21
  store i64 %22, ptr %20, align 8
  br label %23

23:                                               ; preds = %13, %8, %1
  %24 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 24
  %25 = load i64, ptr %24, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #6
  ret i64 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @pm_runtime_autosuspend_expiration(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 2048
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 21
  %8 = load volatile i32, ptr %7, align 8
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 22
  %12 = load volatile i64, ptr %11, align 8
  %13 = zext i32 %8 to i64
  %14 = mul nuw nsw i64 %13, 1000000
  %15 = add i64 %12, %14
  %16 = tail call i64 @ktime_get_mono_fast_ns() #6
  %17 = icmp ugt i64 %15, %16
  %18 = select i1 %17, i64 %15, i64 0
  br label %19

19:                                               ; preds = %10, %6, %1
  %20 = phi i64 [ 0, %1 ], [ 0, %6 ], [ %18, %10 ]
  ret i64 %20
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pm_runtime_set_memalloc_noio(ptr noundef %0, i1 noundef zeroext %1) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @pm_runtime_set_memalloc_noio.dev_hotplug_mutex) #6
  %3 = select i1 %1, i16 8192, i16 0
  br label %4

4:                                                ; preds = %21, %2
  %5 = phi ptr [ %0, %2 ], [ %18, %21 ]
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 11, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %6) #6
  %7 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 11, i32 15
  %8 = load i16, ptr %7, align 8
  %9 = and i16 %8, 8192
  %10 = icmp ne i16 %9, 0
  %11 = and i16 %8, -8193
  %12 = or i16 %11, %3
  store i16 %12, ptr %7, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %13 = load i16, ptr %6, align 4
  %14 = add i16 %13, 1
  store i16 %14, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #6, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  %15 = and i1 %10, %1
  br i1 %15, label %25, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  br i1 %1, label %21, label %22

21:                                               ; preds = %22, %20
  br label %4

22:                                               ; preds = %20
  %23 = tail call i32 @device_for_each_child(ptr noundef nonnull %18, ptr noundef null, ptr noundef nonnull @dev_memalloc_noio) #6
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %21, label %25

25:                                               ; preds = %22, %16, %4
  tail call void @mutex_unlock(ptr noundef nonnull @pm_runtime_set_memalloc_noio.dev_hotplug_mutex) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @dev_memalloc_noio(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #3 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %4 = load i16, ptr %3, align 8
  %5 = lshr i16 %4, 13
  %6 = and i16 %5, 1
  %7 = zext i16 %6 to i32
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pm_runtime_release_supplier(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 11, i32 13
  %5 = getelementptr inbounds %struct.device_link, ptr %0, i32 0, i32 7
  %6 = tail call zeroext i1 @refcount_dec_not_one(ptr noundef %5) #6
  br i1 %6, label %7, label %17

7:                                                ; preds = %15, %2
  %8 = load volatile i32, ptr %4, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #6, !srcloc !14
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 0, i32 -1, ptr elementtype(i32) %4) #6, !srcloc !15
  %12 = extractvalue { i32, i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !16
  br label %15

15:                                               ; preds = %14, %10
  %16 = tail call zeroext i1 @refcount_dec_not_one(ptr noundef %5) #6
  br i1 %16, label %7, label %17

17:                                               ; preds = %15, %7, %2
  br i1 %1, label %18, label %22

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 11, i32 3
  %20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %19) #6
  %21 = tail call fastcc i32 @rpm_idle(ptr noundef %3, i32 noundef 1) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %20) #6
  br label %22

22:                                               ; preds = %18, %17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_not_one(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pm_schedule_suspend(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 3
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #6
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @rpm_suspend(ptr noundef %0, i32 noundef 1)
  br label %65

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 20
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %65

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %14 = load i16, ptr %13, align 8
  %15 = and i16 %14, 7
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %65

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  %19 = load volatile i32, ptr %18, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %65, label %21

21:                                               ; preds = %17
  %22 = and i16 %14, 256
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 14
  %26 = load volatile i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %65

28:                                               ; preds = %24, %21
  %29 = and i16 %14, 32
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 3
  br i1 %34, label %65, label %35

35:                                               ; preds = %31, %28
  %36 = and i16 %14, 16
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 17
  %40 = load i32, ptr %39, align 8
  %41 = icmp eq i32 %40, 4
  br i1 %41, label %65, label %42

42:                                               ; preds = %38, %35
  %43 = tail call i32 @__dev_pm_qos_resume_latency(ptr noundef %0) #6
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %65, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %65, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 9
  %51 = load i64, ptr %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 8
  %55 = tail call i32 @hrtimer_try_to_cancel(ptr noundef %54) #6
  store i64 0, ptr %50, align 8
  br label %56

56:                                               ; preds = %53, %49
  %57 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 17
  store i32 0, ptr %57, align 8
  %58 = tail call i64 @ktime_get_mono_fast_ns() #6
  %59 = zext i32 %1 to i64
  %60 = mul nuw nsw i64 %59, 1000000
  %61 = add i64 %58, %60
  store i64 %61, ptr %50, align 8
  %62 = load i16, ptr %13, align 8
  %63 = and i16 %62, -4097
  store i16 %63, ptr %13, align 8
  %64 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 8
  tail call void @hrtimer_start_range_ns(ptr noundef %64, i64 noundef %61, i64 noundef 0, i32 noundef 0) #6
  br label %65

65:                                               ; preds = %56, %45, %42, %38, %31, %24, %17, %12, %8, %6
  %66 = phi i32 [ 1, %45 ], [ 0, %56 ], [ %7, %6 ], [ -1, %42 ], [ -11, %31 ], [ -11, %38 ], [ -16, %24 ], [ -11, %17 ], [ -13, %12 ], [ -22, %8 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #6
  ret i32 %66
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rpm_suspend(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpm_suspend, i32 0, i32 1), align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %29

6:                                                ; preds = %2
  %7 = tail call ptr @llvm.thread.pointer() #6
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = lshr i32 %9, 5
  %11 = getelementptr i32, ptr @__cpu_online_mask, i32 %10
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %9, 31
  %14 = shl nuw i32 1, %13
  %15 = and i32 %14, %12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 15728640
  %21 = icmp ne i32 %20, 0
  %22 = load i1, ptr @trace_rpm_suspend_rcuidle.__already_done, align 1
  %23 = xor i1 %22, true
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %26, !prof !17

25:                                               ; preds = %17
  store i1 true, ptr @trace_rpm_suspend_rcuidle.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 64, i32 noundef 9, ptr noundef null) #6
  br label %26

26:                                               ; preds = %25, %17
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !18
  %27 = tail call i32 @__srcu_read_lock(ptr noundef nonnull @tracepoint_srcu) #6
  tail call void @rcu_irq_enter_irqson() #6
  %28 = tail call i32 @__traceiter_rpm_suspend(ptr noundef null, ptr noundef %0, i32 noundef %1) #6
  tail call void @rcu_irq_exit_irqson() #6
  tail call void @__srcu_read_unlock(ptr noundef nonnull @tracepoint_srcu, i32 noundef %27) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !19
  br label %29

29:                                               ; preds = %26, %6, %2
  %30 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 20
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %324

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %35 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  %36 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 14
  %37 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %38 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 17
  %39 = and i32 %1, 1
  %40 = icmp eq i32 %39, 0
  %41 = and i32 %1, 8
  %42 = icmp eq i32 %41, 0
  %43 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 21
  %44 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 22
  %45 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 9
  %46 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 8
  %47 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 25
  %48 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 24
  %49 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 23
  %50 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 12
  %51 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %52 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 31
  %53 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %54 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %55 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 11
  %56 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 1
  %57 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 2
  %58 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 3
  %59 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 3, i32 1
  %60 = and i32 %1, 3
  %61 = icmp eq i32 %60, 0
  %62 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 3
  br label %63

63:                                               ; preds = %156, %33
  %64 = load i16, ptr %34, align 8
  %65 = and i16 %64, 7
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %67, label %324

67:                                               ; preds = %63
  %68 = load volatile i32, ptr %35, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %324, label %70

70:                                               ; preds = %67
  %71 = and i16 %64, 256
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load volatile i32, ptr %36, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %324

76:                                               ; preds = %73, %70
  %77 = and i16 %64, 32
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = load i32, ptr %37, align 4
  %81 = icmp eq i32 %80, 3
  br i1 %81, label %324, label %82

82:                                               ; preds = %79, %76
  %83 = and i16 %64, 16
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = load i32, ptr %38, align 8
  %87 = icmp eq i32 %86, 4
  br i1 %87, label %324, label %88

88:                                               ; preds = %85, %82
  %89 = call i32 @__dev_pm_qos_resume_latency(ptr noundef %0) #6
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %324, label %91

91:                                               ; preds = %88
  %92 = load i32, ptr %37, align 4
  %93 = icmp eq i32 %92, 2
  %94 = zext i1 %93 to i32
  %95 = icmp eq i32 %92, 1
  %96 = and i1 %40, %95
  %97 = select i1 %96, i32 -11, i32 %94
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %324

99:                                               ; preds = %91
  %100 = icmp eq i32 %92, 3
  %101 = select i1 %42, i1 true, i1 %100
  br i1 %101, label %128, label %102

102:                                              ; preds = %99
  %103 = load i16, ptr %34, align 8
  %104 = and i16 %103, 2048
  %105 = icmp eq i16 %104, 0
  br i1 %105, label %128, label %106

106:                                              ; preds = %102
  %107 = load volatile i32, ptr %43, align 8
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %128, label %109

109:                                              ; preds = %106
  %110 = load volatile i64, ptr %44, align 8
  %111 = zext i32 %107 to i64
  %112 = mul nuw nsw i64 %111, 1000000
  %113 = add i64 %110, %112
  %114 = call i64 @ktime_get_mono_fast_ns() #6
  %115 = icmp ugt i64 %113, %114
  br i1 %115, label %116, label %128

116:                                              ; preds = %109
  store i32 0, ptr %38, align 8
  %117 = load i64, ptr %45, align 8
  %118 = icmp eq i64 %117, 0
  %119 = icmp ugt i64 %117, %113
  %120 = select i1 %118, i1 true, i1 %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %116
  %122 = load volatile i32, ptr %43, align 8
  %123 = sext i32 %122 to i64
  %124 = mul nsw i64 %123, 250000
  store i64 %113, ptr %45, align 8
  call void @hrtimer_start_range_ns(ptr noundef %46, i64 noundef %113, i64 noundef %124, i32 noundef 0) #6
  br label %125

125:                                              ; preds = %121, %116
  %126 = load i16, ptr %34, align 8
  %127 = or i16 %126, 4096
  store i16 %127, ptr %34, align 8
  br label %324

128:                                              ; preds = %109, %106, %102, %99
  %129 = load i64, ptr %45, align 8
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %128
  %132 = call i32 @hrtimer_try_to_cancel(ptr noundef %46) #6
  store i64 0, ptr %45, align 8
  br label %133

133:                                              ; preds = %131, %128
  store i32 0, ptr %38, align 8
  %134 = load i32, ptr %37, align 4
  %135 = icmp eq i32 %134, 3
  br i1 %135, label %136, label %159

136:                                              ; preds = %133
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #6
  %137 = tail call ptr @llvm.thread.pointer() #6
  store i32 0, ptr %3, align 4
  store ptr %137, ptr %56, align 4
  store ptr @autoremove_wake_function, ptr %57, align 4
  store ptr %58, ptr %58, align 4
  store ptr %58, ptr %59, align 4
  br i1 %61, label %139, label %138

138:                                              ; preds = %136
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #6
  br label %324

139:                                              ; preds = %136
  %140 = load i16, ptr %34, align 8
  %141 = and i16 %140, 1024
  %142 = icmp eq i16 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %139
  call void @prepare_to_wait(ptr noundef %55, ptr noundef nonnull %3, i32 noundef 2) #6
  %144 = load i32, ptr %37, align 4
  %145 = icmp eq i32 %144, 3
  br i1 %145, label %149, label %154

146:                                              ; preds = %139
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %147 = load i16, ptr %62, align 4
  %148 = add i16 %147, 1
  store i16 %148, ptr %62, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !20
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !21
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !22
  call void @_raw_spin_lock(ptr noundef %62) #6
  br label %155

149:                                              ; preds = %149, %143
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %150 = load i16, ptr %62, align 4
  %151 = add i16 %150, 1
  store i16 %151, ptr %62, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #6, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  call void @schedule() #6
  call void @_raw_spin_lock_irq(ptr noundef %62) #6
  call void @prepare_to_wait(ptr noundef %55, ptr noundef nonnull %3, i32 noundef 2) #6
  %152 = load i32, ptr %37, align 4
  %153 = icmp eq i32 %152, 3
  br i1 %153, label %149, label %154

154:                                              ; preds = %149, %143
  call void @finish_wait(ptr noundef %55, ptr noundef nonnull %3) #6
  br label %155

155:                                              ; preds = %154, %146
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #6
  br label %156

156:                                              ; preds = %377, %155
  %157 = load i32, ptr %30, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %63, label %324

159:                                              ; preds = %133
  %160 = load i16, ptr %34, align 8
  %161 = and i16 %160, 512
  %162 = icmp eq i16 %161, 0
  br i1 %162, label %163, label %250

163:                                              ; preds = %159
  br i1 %40, label %173, label %164

164:                                              ; preds = %163
  %165 = select i1 %42, i32 2, i32 3
  store i32 %165, ptr %38, align 8
  %166 = and i16 %160, 16
  %167 = icmp eq i16 %166, 0
  br i1 %167, label %168, label %324

168:                                              ; preds = %164
  %169 = or i16 %160, 16
  store i16 %169, ptr %34, align 8
  %170 = load ptr, ptr @pm_wq, align 4
  %171 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 10
  %172 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %170, ptr noundef %171) #6
  br label %324

173:                                              ; preds = %163
  %174 = and i16 %160, 7
  %175 = icmp eq i16 %174, 0
  br i1 %175, label %176, label %187

176:                                              ; preds = %173
  %177 = load i64, ptr %47, align 8
  %178 = call i64 @ktime_get_mono_fast_ns() #6
  store i64 %178, ptr %47, align 8
  %179 = icmp ult i64 %178, %177
  br i1 %179, label %187, label %180

180:                                              ; preds = %176
  %181 = sub i64 %178, %177
  %182 = load i32, ptr %37, align 4
  %183 = icmp eq i32 %182, 2
  %184 = select i1 %183, ptr %48, ptr %49
  %185 = load i64, ptr %184, align 8
  %186 = add i64 %181, %185
  store i64 %186, ptr %184, align 8
  br label %187

187:                                              ; preds = %180, %176, %173
  store i32 3, ptr %37, align 4
  %188 = load ptr, ptr %50, align 8
  %189 = icmp eq ptr %188, null
  br i1 %189, label %190, label %211

190:                                              ; preds = %187
  %191 = load ptr, ptr %51, align 8
  %192 = icmp eq ptr %191, null
  br i1 %192, label %197, label %193

193:                                              ; preds = %190
  %194 = getelementptr inbounds %struct.device_type, ptr %191, i32 0, i32 5
  %195 = load ptr, ptr %194, align 4
  %196 = icmp eq ptr %195, null
  br i1 %196, label %197, label %211

197:                                              ; preds = %193, %190
  %198 = load ptr, ptr %52, align 4
  %199 = icmp eq ptr %198, null
  br i1 %199, label %204, label %200

200:                                              ; preds = %197
  %201 = getelementptr inbounds %struct.class, ptr %198, i32 0, i32 13
  %202 = load ptr, ptr %201, align 4
  %203 = icmp eq ptr %202, null
  br i1 %203, label %204, label %211

204:                                              ; preds = %200, %197
  %205 = load ptr, ptr %53, align 4
  %206 = icmp eq ptr %205, null
  br i1 %206, label %216, label %207

207:                                              ; preds = %204
  %208 = getelementptr inbounds %struct.bus_type, ptr %205, i32 0, i32 18
  %209 = load ptr, ptr %208, align 4
  %210 = icmp eq ptr %209, null
  br i1 %210, label %216, label %211

211:                                              ; preds = %207, %200, %193, %187
  %212 = phi ptr [ %209, %207 ], [ %202, %200 ], [ %195, %193 ], [ %188, %187 ]
  %213 = getelementptr i8, ptr %212, i32 80
  %214 = load ptr, ptr %213, align 4
  %215 = icmp eq ptr %214, null
  br i1 %215, label %216, label %226

216:                                              ; preds = %211, %207, %204
  %217 = load ptr, ptr %54, align 8
  %218 = icmp eq ptr %217, null
  br i1 %218, label %226, label %219

219:                                              ; preds = %216
  %220 = getelementptr inbounds %struct.device_driver, ptr %217, i32 0, i32 16
  %221 = load ptr, ptr %220, align 4
  %222 = icmp eq ptr %221, null
  br i1 %222, label %226, label %223

223:                                              ; preds = %219
  %224 = getelementptr i8, ptr %221, i32 80
  %225 = load ptr, ptr %224, align 4
  br label %226

226:                                              ; preds = %223, %219, %216, %211
  %227 = phi ptr [ %214, %211 ], [ %225, %223 ], [ null, %219 ], [ null, %216 ]
  call void @dev_pm_enable_wake_irq_check(ptr noundef %0, i1 noundef zeroext true) #6
  %228 = load i16, ptr %34, align 8
  %229 = and i16 %228, 8192
  %230 = icmp eq i16 %229, 0
  br i1 %230, label %241, label %231

231:                                              ; preds = %226
  %232 = tail call ptr @llvm.thread.pointer() #6
  %233 = getelementptr inbounds %struct.task_struct, ptr %232, i32 0, i32 4
  %234 = load i32, ptr %233, align 4
  %235 = and i32 %234, 524288
  %236 = or i32 %234, 524288
  store i32 %236, ptr %233, align 4
  %237 = call fastcc i32 @__rpm_callback(ptr noundef %227, ptr noundef %0) #6
  %238 = load i32, ptr %233, align 4
  %239 = and i32 %238, -524289
  %240 = or i32 %239, %235
  store i32 %240, ptr %233, align 4
  br label %243

241:                                              ; preds = %226
  %242 = call fastcc i32 @__rpm_callback(ptr noundef %227, ptr noundef %0) #6
  br label %243

243:                                              ; preds = %241, %231
  %244 = phi i32 [ %237, %231 ], [ %242, %241 ]
  store i32 %244, ptr %30, align 4
  %245 = icmp eq i32 %244, -13
  %246 = select i1 %245, i32 -5, i32 %244
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %351

248:                                              ; preds = %243
  call void @dev_pm_enable_wake_irq_complete(ptr noundef %0) #6
  %249 = load i16, ptr %34, align 8
  br label %250

250:                                              ; preds = %248, %159
  %251 = phi i16 [ %249, %248 ], [ %160, %159 ]
  %252 = and i16 %251, 7
  %253 = icmp eq i16 %252, 0
  br i1 %253, label %254, label %265

254:                                              ; preds = %250
  %255 = load i64, ptr %47, align 8
  %256 = call i64 @ktime_get_mono_fast_ns() #6
  store i64 %256, ptr %47, align 8
  %257 = icmp ult i64 %256, %255
  br i1 %257, label %265, label %258

258:                                              ; preds = %254
  %259 = sub i64 %256, %255
  %260 = load i32, ptr %37, align 4
  %261 = icmp eq i32 %260, 2
  %262 = select i1 %261, ptr %48, ptr %49
  %263 = load i64, ptr %262, align 8
  %264 = add i64 %259, %263
  store i64 %264, ptr %262, align 8
  br label %265

265:                                              ; preds = %258, %254, %250
  store i32 2, ptr %37, align 4
  %266 = load i64, ptr %45, align 8
  %267 = icmp eq i64 %266, 0
  br i1 %267, label %270, label %268

268:                                              ; preds = %265
  %269 = call i32 @hrtimer_try_to_cancel(ptr noundef %46) #6
  store i64 0, ptr %45, align 8
  br label %270

270:                                              ; preds = %268, %265
  %271 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %272 = load ptr, ptr %271, align 4
  %273 = icmp eq ptr %272, null
  br i1 %273, label %280, label %274

274:                                              ; preds = %270
  %275 = getelementptr inbounds %struct.device, ptr %272, i32 0, i32 11, i32 14
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %275) #6, !srcloc !14
  %276 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %275, ptr %275, i32 0, i32 -1, ptr elementtype(i32) %275) #6, !srcloc !15
  %277 = extractvalue { i32, i32, i32 } %276, 0
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %280, label %279

279:                                              ; preds = %274
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !16
  br label %280

280:                                              ; preds = %279, %274, %270
  call void @__wake_up(ptr noundef %55, i32 noundef 3, i32 noundef 0, ptr noundef null) #6
  %281 = load i16, ptr %34, align 8
  %282 = and i16 %281, 32
  %283 = icmp eq i16 %282, 0
  br i1 %283, label %287, label %284

284:                                              ; preds = %280
  %285 = and i16 %281, -33
  store i16 %285, ptr %34, align 8
  %286 = call fastcc i32 @rpm_resume(ptr noundef %0, i32 noundef 0)
  br label %324

287:                                              ; preds = %280
  %288 = and i16 %281, 1024
  %289 = icmp eq i16 %288, 0
  br i1 %289, label %290, label %324

290:                                              ; preds = %287
  br i1 %273, label %303, label %291

291:                                              ; preds = %290
  %292 = getelementptr inbounds %struct.device, ptr %272, i32 0, i32 11, i32 15
  %293 = load i16, ptr %292, align 8
  %294 = and i16 %293, 256
  %295 = icmp eq i16 %294, 0
  br i1 %295, label %296, label %303

296:                                              ; preds = %291
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %297 = load i16, ptr %62, align 4
  %298 = add i16 %297, 1
  store i16 %298, ptr %62, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !20
  %299 = getelementptr inbounds %struct.device, ptr %272, i32 0, i32 11, i32 3
  call void @_raw_spin_lock(ptr noundef %299) #6
  %300 = call fastcc i32 @rpm_idle(ptr noundef nonnull %272, i32 noundef 1)
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %301 = load i16, ptr %299, align 4
  %302 = add i16 %301, 1
  store i16 %302, ptr %299, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !20
  call void @_raw_spin_lock(ptr noundef %62) #6
  br label %303

303:                                              ; preds = %296, %291, %290
  %304 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 16
  %305 = load i32, ptr %304, align 4
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %324, label %307

307:                                              ; preds = %303
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %308 = load i16, ptr %62, align 4
  %309 = add i16 %308, 1
  store i16 %309, ptr %62, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #6, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  %310 = call i32 @device_links_read_lock() #6
  %311 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10
  %312 = load volatile ptr, ptr %311, align 8
  %313 = icmp eq ptr %312, %311
  br i1 %313, label %323, label %314

314:                                              ; preds = %314, %307
  %315 = phi ptr [ %321, %314 ], [ %312, %307 ]
  %316 = getelementptr i8, ptr %315, i32 -16
  %317 = load ptr, ptr %316, align 8
  %318 = getelementptr inbounds %struct.device, ptr %317, i32 0, i32 11, i32 3
  %319 = call i32 @_raw_spin_lock_irqsave(ptr noundef %318) #6
  %320 = call fastcc i32 @rpm_idle(ptr noundef %317, i32 noundef 1) #6
  call void @_raw_spin_unlock_irqrestore(ptr noundef %318, i32 noundef %319) #6
  %321 = load volatile ptr, ptr %315, align 8
  %322 = icmp eq ptr %321, %311
  br i1 %322, label %323, label %314

323:                                              ; preds = %314, %307
  call void @device_links_read_unlock(i32 noundef %310) #6
  call void @_raw_spin_lock_irq(ptr noundef %62) #6
  br label %324

324:                                              ; preds = %389, %377, %374, %370, %369, %323, %303, %287, %284, %168, %164, %156, %138, %125, %91, %88, %85, %79, %73, %67, %63, %29
  %325 = phi i32 [ 0, %125 ], [ -11, %284 ], [ 0, %287 ], [ 0, %323 ], [ 0, %303 ], [ 0, %164 ], [ 0, %168 ], [ %246, %389 ], [ -115, %138 ], [ -22, %29 ], [ %244, %377 ], [ %244, %374 ], [ %244, %370 ], [ -1, %88 ], [ -11, %79 ], [ -11, %85 ], [ -16, %73 ], [ -11, %67 ], [ -13, %63 ], [ -22, %156 ], [ %97, %91 ], [ %244, %369 ]
  %326 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpm_return_int, i32 0, i32 1), align 4
  %327 = icmp sgt i32 %326, 0
  br i1 %327, label %328, label %390

328:                                              ; preds = %324
  %329 = tail call ptr @llvm.thread.pointer() #6
  %330 = getelementptr inbounds %struct.thread_info, ptr %329, i32 0, i32 2
  %331 = load i32, ptr %330, align 8
  %332 = lshr i32 %331, 5
  %333 = getelementptr i32, ptr @__cpu_online_mask, i32 %332
  %334 = load volatile i32, ptr %333, align 4
  %335 = and i32 %331, 31
  %336 = shl nuw i32 1, %335
  %337 = and i32 %336, %334
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %390, label %339

339:                                              ; preds = %328
  %340 = getelementptr inbounds %struct.thread_info, ptr %329, i32 0, i32 1
  %341 = load volatile i32, ptr %340, align 4
  %342 = and i32 %341, 15728640
  %343 = icmp ne i32 %342, 0
  %344 = load i1, ptr @trace_rpm_return_int_rcuidle.__already_done, align 1
  %345 = xor i1 %344, true
  %346 = select i1 %343, i1 %345, i1 false
  br i1 %346, label %347, label %348, !prof !17

347:                                              ; preds = %339
  store i1 true, ptr @trace_rpm_return_int_rcuidle.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 102, i32 noundef 9, ptr noundef null) #6
  br label %348

348:                                              ; preds = %347, %339
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !23
  %349 = call i32 @__srcu_read_lock(ptr noundef nonnull @tracepoint_srcu) #6
  call void @rcu_irq_enter_irqson() #6
  %350 = call i32 @__traceiter_rpm_return_int(ptr noundef null, ptr noundef %0, i32 noundef ptrtoint (ptr blockaddress(@rpm_suspend, %324) to i32), i32 noundef %325) #6
  call void @rcu_irq_exit_irqson() #6
  call void @__srcu_read_unlock(ptr noundef nonnull @tracepoint_srcu, i32 noundef %349) #6
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !24
  br label %390

351:                                              ; preds = %243
  call void @dev_pm_disable_wake_irq_check(ptr noundef %0, i1 noundef zeroext true) #6
  %352 = load i16, ptr %34, align 8
  %353 = and i16 %352, 7
  %354 = icmp eq i16 %353, 0
  br i1 %354, label %355, label %366

355:                                              ; preds = %351
  %356 = load i64, ptr %47, align 8
  %357 = call i64 @ktime_get_mono_fast_ns() #6
  store i64 %357, ptr %47, align 8
  %358 = icmp ult i64 %357, %356
  br i1 %358, label %366, label %359

359:                                              ; preds = %355
  %360 = sub i64 %357, %356
  %361 = load i32, ptr %37, align 4
  %362 = icmp eq i32 %361, 2
  %363 = select i1 %362, ptr %48, ptr %49
  %364 = load i64, ptr %363, align 8
  %365 = add i64 %360, %364
  store i64 %365, ptr %363, align 8
  br label %366

366:                                              ; preds = %359, %355, %351
  store i32 0, ptr %37, align 4
  %367 = load i16, ptr %34, align 8
  %368 = and i16 %367, -33
  store i16 %368, ptr %34, align 8
  call void @__wake_up(ptr noundef %55, i32 noundef 3, i32 noundef 0, ptr noundef null) #6
  switch i32 %246, label %384 [
    i32 -11, label %369
    i32 -16, label %369
  ]

369:                                              ; preds = %366, %366
  store i32 0, ptr %30, align 4
  br i1 %42, label %324, label %370

370:                                              ; preds = %369
  %371 = load i16, ptr %34, align 8
  %372 = and i16 %371, 2048
  %373 = icmp eq i16 %372, 0
  br i1 %373, label %324, label %374

374:                                              ; preds = %370
  %375 = load volatile i32, ptr %43, align 8
  %376 = icmp slt i32 %375, 0
  br i1 %376, label %324, label %377

377:                                              ; preds = %374
  %378 = load volatile i64, ptr %44, align 8
  %379 = zext i32 %375 to i64
  %380 = mul nuw nsw i64 %379, 1000000
  %381 = add i64 %378, %380
  %382 = call i64 @ktime_get_mono_fast_ns() #6
  %383 = icmp ugt i64 %381, %382
  br i1 %383, label %156, label %324

384:                                              ; preds = %366
  %385 = load i64, ptr %45, align 8
  %386 = icmp eq i64 %385, 0
  br i1 %386, label %389, label %387

387:                                              ; preds = %384
  %388 = call i32 @hrtimer_try_to_cancel(ptr noundef %46) #6
  store i64 0, ptr %45, align 8
  br label %389

389:                                              ; preds = %387, %384
  store i32 0, ptr %38, align 8
  br label %324

390:                                              ; preds = %348, %328, %324
  ret i32 %325
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef %1) #0 {
  %3 = and i32 %1, 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %36, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #6, !srcloc !14
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #6, !srcloc !26
  %8 = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !27
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %36, label %10

10:                                               ; preds = %5
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpm_usage, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %40

13:                                               ; preds = %10
  %14 = tail call ptr @llvm.thread.pointer() #6
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 5
  %18 = getelementptr i32, ptr @__cpu_online_mask, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %16, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %40, label %24

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %26, 15728640
  %28 = icmp ne i32 %27, 0
  %29 = load i1, ptr @trace_rpm_usage_rcuidle.__already_done, align 1
  %30 = xor i1 %29, true
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %32, label %33, !prof !17

32:                                               ; preds = %24
  store i1 true, ptr @trace_rpm_usage_rcuidle.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 82, i32 noundef 9, ptr noundef null) #6
  br label %33

33:                                               ; preds = %32, %24
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !28
  %34 = tail call i32 @__srcu_read_lock(ptr noundef nonnull @tracepoint_srcu) #6
  tail call void @rcu_irq_enter_irqson() #6
  %35 = tail call i32 @__traceiter_rpm_usage(ptr noundef null, ptr noundef %0, i32 noundef %1) #6
  tail call void @rcu_irq_exit_irqson() #6
  tail call void @__srcu_read_unlock(ptr noundef nonnull @tracepoint_srcu, i32 noundef %34) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !29
  br label %40

36:                                               ; preds = %5, %2
  %37 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 3
  %38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %37) #6
  %39 = tail call fastcc i32 @rpm_idle(ptr noundef %0, i32 noundef %1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %37, i32 noundef %38) #6
  br label %40

40:                                               ; preds = %36, %33, %13, %10
  %41 = phi i32 [ %39, %36 ], [ 0, %10 ], [ 0, %13 ], [ 0, %33 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rpm_idle(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpm_idle, i32 0, i32 1), align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %28

5:                                                ; preds = %2
  %6 = tail call ptr @llvm.thread.pointer() #6
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = lshr i32 %8, 5
  %10 = getelementptr i32, ptr @__cpu_online_mask, i32 %9
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %8, 31
  %13 = shl nuw i32 1, %12
  %14 = and i32 %13, %11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 15728640
  %20 = icmp ne i32 %19, 0
  %21 = load i1, ptr @trace_rpm_idle_rcuidle.__already_done, align 1
  %22 = xor i1 %21, true
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %25, !prof !17

24:                                               ; preds = %16
  store i1 true, ptr @trace_rpm_idle_rcuidle.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 76, i32 noundef 9, ptr noundef null) #6
  br label %25

25:                                               ; preds = %24, %16
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !30
  %26 = tail call i32 @__srcu_read_lock(ptr noundef nonnull @tracepoint_srcu) #6
  tail call void @rcu_irq_enter_irqson() #6
  %27 = tail call i32 @__traceiter_rpm_idle(ptr noundef null, ptr noundef %0, i32 noundef %1) #6
  tail call void @rcu_irq_exit_irqson() #6
  tail call void @__srcu_read_unlock(ptr noundef nonnull @tracepoint_srcu, i32 noundef %26) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !31
  br label %28

28:                                               ; preds = %25, %5, %2
  %29 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 20
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %174

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %34 = load i16, ptr %33, align 8
  %35 = and i16 %34, 7
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %37, label %174

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  %39 = load volatile i32, ptr %38, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %174, label %41

41:                                               ; preds = %37
  %42 = and i16 %34, 256
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 14
  %46 = load volatile i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %174

48:                                               ; preds = %44, %41
  %49 = and i16 %34, 32
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 3
  br i1 %54, label %174, label %55

55:                                               ; preds = %51, %48
  %56 = and i16 %34, 16
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 17
  %60 = load i32, ptr %59, align 8
  %61 = icmp eq i32 %60, 4
  br i1 %61, label %174, label %62

62:                                               ; preds = %58, %55
  %63 = tail call i32 @__dev_pm_qos_resume_latency(ptr noundef %0) #6
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %174, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 2
  %69 = icmp eq i32 %67, 0
  br i1 %69, label %70, label %174

70:                                               ; preds = %65
  %71 = load i16, ptr %33, align 8
  %72 = and i16 %71, 16
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 17
  %76 = load i32, ptr %75, align 8
  %77 = icmp ugt i32 %76, 1
  br i1 %77, label %174, label %78

78:                                               ; preds = %74, %70
  %79 = and i16 %71, 8
  %80 = icmp ne i16 %79, 0
  %81 = select i1 %80, i1 true, i1 %68
  %82 = select i1 %80, i32 -115, i32 1
  br i1 %81, label %174, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 17
  store i32 0, ptr %84, align 8
  %85 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 12
  %86 = load ptr, ptr %85, align 8
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %112

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %90 = load ptr, ptr %89, align 8
  %91 = icmp eq ptr %90, null
  br i1 %91, label %96, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.device_type, ptr %90, i32 0, i32 5
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %112

96:                                               ; preds = %92, %88
  %97 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 31
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.class, ptr %98, i32 0, i32 13
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %112

104:                                              ; preds = %100, %96
  %105 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %117, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.bus_type, ptr %106, i32 0, i32 18
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %117, label %112

112:                                              ; preds = %108, %100, %92, %83
  %113 = phi ptr [ %110, %108 ], [ %102, %100 ], [ %94, %92 ], [ %86, %83 ]
  %114 = getelementptr i8, ptr %113, i32 88
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %129

117:                                              ; preds = %112, %108, %104
  %118 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %119 = load ptr, ptr %118, align 8
  %120 = icmp eq ptr %119, null
  br i1 %120, label %174, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.device_driver, ptr %119, i32 0, i32 16
  %123 = load ptr, ptr %122, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %174, label %125

125:                                              ; preds = %121
  %126 = getelementptr i8, ptr %123, i32 88
  %127 = load ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %174, label %129

129:                                              ; preds = %125, %112
  %130 = phi ptr [ %127, %125 ], [ %115, %112 ]
  %131 = and i16 %71, 512
  %132 = icmp eq i16 %131, 0
  br i1 %132, label %133, label %174

133:                                              ; preds = %129
  %134 = and i32 %1, 1
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %168, label %136

136:                                              ; preds = %133
  store i32 1, ptr %84, align 8
  br i1 %73, label %137, label %142

137:                                              ; preds = %136
  %138 = or i16 %71, 16
  store i16 %138, ptr %33, align 8
  %139 = load ptr, ptr @pm_wq, align 4
  %140 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 10
  %141 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %139, ptr noundef %140) #6
  br label %142

142:                                              ; preds = %137, %136
  %143 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpm_return_int, i32 0, i32 1), align 4
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %145, label %206

145:                                              ; preds = %142
  %146 = tail call ptr @llvm.thread.pointer() #6
  %147 = getelementptr inbounds %struct.thread_info, ptr %146, i32 0, i32 2
  %148 = load i32, ptr %147, align 8
  %149 = lshr i32 %148, 5
  %150 = getelementptr i32, ptr @__cpu_online_mask, i32 %149
  %151 = load volatile i32, ptr %150, align 4
  %152 = and i32 %148, 31
  %153 = shl nuw i32 1, %152
  %154 = and i32 %153, %151
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %206, label %156

156:                                              ; preds = %145
  %157 = getelementptr inbounds %struct.thread_info, ptr %146, i32 0, i32 1
  %158 = load volatile i32, ptr %157, align 4
  %159 = and i32 %158, 15728640
  %160 = icmp ne i32 %159, 0
  %161 = load i1, ptr @trace_rpm_return_int_rcuidle.__already_done, align 1
  %162 = xor i1 %161, true
  %163 = select i1 %160, i1 %162, i1 false
  br i1 %163, label %164, label %165, !prof !17

164:                                              ; preds = %156
  store i1 true, ptr @trace_rpm_return_int_rcuidle.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 102, i32 noundef 9, ptr noundef null) #6
  br label %165

165:                                              ; preds = %164, %156
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !23
  %166 = tail call i32 @__srcu_read_lock(ptr noundef nonnull @tracepoint_srcu) #6
  tail call void @rcu_irq_enter_irqson() #6
  %167 = tail call i32 @__traceiter_rpm_return_int(ptr noundef null, ptr noundef %0, i32 noundef ptrtoint (ptr blockaddress(@rpm_idle, %142) to i32), i32 noundef 0) #6
  tail call void @rcu_irq_exit_irqson() #6
  tail call void @__srcu_read_unlock(ptr noundef nonnull @tracepoint_srcu, i32 noundef %166) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !24
  br label %206

168:                                              ; preds = %133
  %169 = or i16 %71, 8
  store i16 %169, ptr %33, align 8
  %170 = tail call fastcc i32 @__rpm_callback(ptr noundef nonnull %130, ptr noundef %0)
  %171 = load i16, ptr %33, align 8
  %172 = and i16 %171, -9
  store i16 %172, ptr %33, align 8
  %173 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 11
  tail call void @__wake_up(ptr noundef %173, i32 noundef 3, i32 noundef 0, ptr noundef null) #6
  br label %174

174:                                              ; preds = %168, %129, %125, %121, %117, %78, %74, %65, %62, %58, %51, %44, %37, %32, %28
  %175 = phi i32 [ 0, %129 ], [ %170, %168 ], [ 0, %125 ], [ %82, %78 ], [ -11, %74 ], [ -11, %65 ], [ -1, %62 ], [ -11, %51 ], [ -11, %58 ], [ -16, %44 ], [ -11, %37 ], [ -13, %32 ], [ -22, %28 ], [ 0, %121 ], [ 0, %117 ]
  %176 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpm_return_int, i32 0, i32 1), align 4
  %177 = icmp sgt i32 %176, 0
  br i1 %177, label %178, label %201

178:                                              ; preds = %174
  %179 = tail call ptr @llvm.thread.pointer() #6
  %180 = getelementptr inbounds %struct.thread_info, ptr %179, i32 0, i32 2
  %181 = load i32, ptr %180, align 8
  %182 = lshr i32 %181, 5
  %183 = getelementptr i32, ptr @__cpu_online_mask, i32 %182
  %184 = load volatile i32, ptr %183, align 4
  %185 = and i32 %181, 31
  %186 = shl nuw i32 1, %185
  %187 = and i32 %186, %184
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %201, label %189

189:                                              ; preds = %178
  %190 = getelementptr inbounds %struct.thread_info, ptr %179, i32 0, i32 1
  %191 = load volatile i32, ptr %190, align 4
  %192 = and i32 %191, 15728640
  %193 = icmp ne i32 %192, 0
  %194 = load i1, ptr @trace_rpm_return_int_rcuidle.__already_done, align 1
  %195 = xor i1 %194, true
  %196 = select i1 %193, i1 %195, i1 false
  br i1 %196, label %197, label %198, !prof !17

197:                                              ; preds = %189
  store i1 true, ptr @trace_rpm_return_int_rcuidle.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 102, i32 noundef 9, ptr noundef null) #6
  br label %198

198:                                              ; preds = %197, %189
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !23
  %199 = tail call i32 @__srcu_read_lock(ptr noundef nonnull @tracepoint_srcu) #6
  tail call void @rcu_irq_enter_irqson() #6
  %200 = tail call i32 @__traceiter_rpm_return_int(ptr noundef null, ptr noundef %0, i32 noundef ptrtoint (ptr blockaddress(@rpm_idle, %174) to i32), i32 noundef %175) #6
  tail call void @rcu_irq_exit_irqson() #6
  tail call void @__srcu_read_unlock(ptr noundef nonnull @tracepoint_srcu, i32 noundef %199) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !24
  br label %201

201:                                              ; preds = %198, %178, %174
  %202 = icmp eq i32 %175, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %201
  %204 = or i32 %1, 8
  %205 = tail call fastcc i32 @rpm_suspend(ptr noundef %0, i32 noundef %204)
  br label %206

206:                                              ; preds = %203, %201, %165, %145, %142
  %207 = phi i32 [ %205, %203 ], [ %175, %201 ], [ 0, %142 ], [ 0, %145 ], [ 0, %165 ]
  ret i32 %207
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__pm_runtime_suspend(ptr noundef %0, i32 noundef %1) #0 {
  %3 = and i32 %1, 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %36, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #6, !srcloc !14
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #6, !srcloc !26
  %8 = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !27
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %36, label %10

10:                                               ; preds = %5
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpm_usage, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %40

13:                                               ; preds = %10
  %14 = tail call ptr @llvm.thread.pointer() #6
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 5
  %18 = getelementptr i32, ptr @__cpu_online_mask, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %16, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %40, label %24

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %26, 15728640
  %28 = icmp ne i32 %27, 0
  %29 = load i1, ptr @trace_rpm_usage_rcuidle.__already_done, align 1
  %30 = xor i1 %29, true
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %32, label %33, !prof !17

32:                                               ; preds = %24
  store i1 true, ptr @trace_rpm_usage_rcuidle.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 82, i32 noundef 9, ptr noundef null) #6
  br label %33

33:                                               ; preds = %32, %24
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !28
  %34 = tail call i32 @__srcu_read_lock(ptr noundef nonnull @tracepoint_srcu) #6
  tail call void @rcu_irq_enter_irqson() #6
  %35 = tail call i32 @__traceiter_rpm_usage(ptr noundef null, ptr noundef %0, i32 noundef %1) #6
  tail call void @rcu_irq_exit_irqson() #6
  tail call void @__srcu_read_unlock(ptr noundef nonnull @tracepoint_srcu, i32 noundef %34) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !29
  br label %40

36:                                               ; preds = %5, %2
  %37 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 3
  %38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %37) #6
  %39 = tail call fastcc i32 @rpm_suspend(ptr noundef %0, i32 noundef %1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %37, i32 noundef %38) #6
  br label %40

40:                                               ; preds = %36, %33, %13, %10
  %41 = phi i32 [ %39, %36 ], [ 0, %10 ], [ 0, %13 ], [ 0, %33 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef %1) #0 {
  %3 = and i32 %1, 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #6, !srcloc !14
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #6, !srcloc !32
  br label %8

8:                                                ; preds = %5, %2
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 3
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #6
  %11 = tail call fastcc i32 @rpm_resume(ptr noundef %0, i32 noundef %1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #6
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rpm_resume(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpm_resume, i32 0, i32 1), align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %29

6:                                                ; preds = %2
  %7 = tail call ptr @llvm.thread.pointer() #6
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = lshr i32 %9, 5
  %11 = getelementptr i32, ptr @__cpu_online_mask, i32 %10
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %9, 31
  %14 = shl nuw i32 1, %13
  %15 = and i32 %14, %12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 15728640
  %21 = icmp ne i32 %20, 0
  %22 = load i1, ptr @trace_rpm_resume_rcuidle.__already_done, align 1
  %23 = xor i1 %22, true
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %26, !prof !17

25:                                               ; preds = %17
  store i1 true, ptr @trace_rpm_resume_rcuidle.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 70, i32 noundef 9, ptr noundef null) #6
  br label %26

26:                                               ; preds = %25, %17
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !33
  %27 = tail call i32 @__srcu_read_lock(ptr noundef nonnull @tracepoint_srcu) #6
  tail call void @rcu_irq_enter_irqson() #6
  %28 = tail call i32 @__traceiter_rpm_resume(ptr noundef null, ptr noundef %0, i32 noundef %1) #6
  tail call void @rcu_irq_exit_irqson() #6
  tail call void @__srcu_read_unlock(ptr noundef nonnull @tracepoint_srcu, i32 noundef %27) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !34
  br label %29

29:                                               ; preds = %26, %6, %2
  %30 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 20
  %31 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %32 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 17
  %33 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 9
  %34 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 8
  %35 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %36 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 1
  %37 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 2
  %38 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 3
  %39 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 3, i32 1
  %40 = and i32 %1, 3
  %41 = icmp eq i32 %40, 0
  %42 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 3
  %43 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 11
  %44 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %45 = and i32 %1, 1
  %46 = icmp eq i32 %45, 0
  br label %47

47:                                               ; preds = %163, %29
  %48 = phi ptr [ %141, %163 ], [ null, %29 ]
  %49 = load i32, ptr %30, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %313

51:                                               ; preds = %95, %47
  %52 = load i16, ptr %31, align 8
  %53 = and i16 %52, 7
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %51
  %56 = load i32, ptr %35, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 19
  %60 = load i32, ptr %59, align 8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %313, label %62

62:                                               ; preds = %58, %55
  br label %313

63:                                               ; preds = %51
  store i32 0, ptr %32, align 8
  %64 = and i16 %52, 4096
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load i64, ptr %33, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %66
  %70 = call i32 @hrtimer_try_to_cancel(ptr noundef %34) #6
  store i64 0, ptr %33, align 8
  br label %71

71:                                               ; preds = %69, %66, %63
  %72 = load i32, ptr %35, align 4
  switch i32 %72, label %98 [
    i32 0, label %313
    i32 1, label %73
    i32 3, label %73
  ]

73:                                               ; preds = %71, %71
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #6
  %74 = tail call ptr @llvm.thread.pointer() #6
  store i32 0, ptr %3, align 4
  store ptr %74, ptr %36, align 4
  store ptr @autoremove_wake_function, ptr %37, align 4
  store ptr %38, ptr %38, align 4
  store ptr %38, ptr %39, align 4
  br i1 %41, label %80, label %75

75:                                               ; preds = %73
  %76 = icmp eq i32 %72, 3
  br i1 %76, label %77, label %93

77:                                               ; preds = %75
  %78 = load i16, ptr %31, align 8
  %79 = or i16 %78, 32
  store i16 %79, ptr %31, align 8
  br label %93

80:                                               ; preds = %73
  %81 = load i16, ptr %31, align 8
  %82 = and i16 %81, 1024
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %80
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %85 = load i16, ptr %42, align 4
  %86 = add i16 %85, 1
  store i16 %86, ptr %42, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !20
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !35
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !36
  call void @_raw_spin_lock(ptr noundef %42) #6
  br label %95

87:                                               ; preds = %89, %80
  call void @prepare_to_wait(ptr noundef %43, ptr noundef nonnull %3, i32 noundef 2) #6
  %88 = load i32, ptr %35, align 4
  switch i32 %88, label %92 [
    i32 1, label %89
    i32 3, label %89
  ]

89:                                               ; preds = %87, %87
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %90 = load i16, ptr %42, align 4
  %91 = add i16 %90, 1
  store i16 %91, ptr %42, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #6, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  call void @schedule() #6
  call void @_raw_spin_lock_irq(ptr noundef %42) #6
  br label %87

92:                                               ; preds = %87
  call void @finish_wait(ptr noundef %43, ptr noundef nonnull %3) #6
  br label %95

93:                                               ; preds = %77, %75
  %94 = phi i32 [ -115, %75 ], [ 0, %77 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #6
  br label %313

95:                                               ; preds = %92, %84
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #6
  %96 = load i32, ptr %30, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %51, label %313

98:                                               ; preds = %71
  %99 = load i16, ptr %31, align 8
  %100 = and i16 %99, 512
  %101 = icmp eq i16 %100, 0
  %102 = icmp ne ptr %48, null
  %103 = select i1 %101, i1 true, i1 %102
  br i1 %103, label %129, label %104

104:                                              ; preds = %98
  %105 = load ptr, ptr %44, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %129, label %107

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.device, ptr %105, i32 0, i32 11, i32 3
  call void @_raw_spin_lock(ptr noundef %108) #6
  %109 = load ptr, ptr %44, align 4
  %110 = getelementptr inbounds %struct.device, ptr %109, i32 0, i32 11, i32 15
  %111 = load i16, ptr %110, align 8
  %112 = and i16 %111, 263
  %113 = icmp eq i16 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %107
  %115 = getelementptr inbounds %struct.device, ptr %109, i32 0, i32 11, i32 18
  %116 = load i32, ptr %115, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %114, %107
  %119 = getelementptr inbounds %struct.device, ptr %109, i32 0, i32 11, i32 14
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %119) #6, !srcloc !14
  %120 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %119, ptr %119, i32 1, ptr elementtype(i32) %119) #6, !srcloc !32
  %121 = load ptr, ptr %44, align 4
  %122 = getelementptr inbounds %struct.device, ptr %121, i32 0, i32 11, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %123 = load i16, ptr %122, align 4
  %124 = add i16 %123, 1
  store i16 %124, ptr %122, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !20
  br label %279

125:                                              ; preds = %114
  %126 = getelementptr inbounds %struct.device, ptr %109, i32 0, i32 11, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %127 = load i16, ptr %126, align 4
  %128 = add i16 %127, 1
  store i16 %128, ptr %126, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !20
  br label %129

129:                                              ; preds = %125, %104, %98
  br i1 %46, label %139, label %130

130:                                              ; preds = %129
  store i32 4, ptr %32, align 8
  %131 = load i16, ptr %31, align 8
  %132 = and i16 %131, 16
  %133 = icmp eq i16 %132, 0
  br i1 %133, label %134, label %327

134:                                              ; preds = %130
  %135 = or i16 %131, 16
  store i16 %135, ptr %31, align 8
  %136 = load ptr, ptr @pm_wq, align 4
  %137 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 10
  %138 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %136, ptr noundef %137) #6
  br label %327

139:                                              ; preds = %129
  br i1 %102, label %168, label %140

140:                                              ; preds = %139
  %141 = load ptr, ptr %44, align 4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %168, label %143

143:                                              ; preds = %140
  %144 = load i16, ptr %31, align 8
  %145 = and i16 %144, 1024
  %146 = icmp eq i16 %145, 0
  br i1 %146, label %147, label %168

147:                                              ; preds = %143
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %148 = load i16, ptr %42, align 4
  %149 = add i16 %148, 1
  store i16 %149, ptr %42, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !20
  %150 = getelementptr inbounds %struct.device, ptr %141, i32 0, i32 11, i32 13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %150) #6, !srcloc !14
  %151 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %150, ptr %150, i32 1, ptr elementtype(i32) %150) #6, !srcloc !32
  %152 = getelementptr inbounds %struct.device, ptr %141, i32 0, i32 11, i32 3
  call void @_raw_spin_lock(ptr noundef %152) #6
  %153 = getelementptr inbounds %struct.device, ptr %141, i32 0, i32 11, i32 15
  %154 = load i16, ptr %153, align 8
  %155 = and i16 %154, 263
  %156 = icmp eq i16 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %147
  %158 = call fastcc i32 @rpm_resume(ptr noundef nonnull %141, i32 noundef 0)
  %159 = getelementptr inbounds %struct.device, ptr %141, i32 0, i32 11, i32 18
  %160 = load i32, ptr %159, align 4
  %161 = icmp eq i32 %160, 0
  %162 = select i1 %161, i32 0, i32 -16
  br label %163

163:                                              ; preds = %157, %147
  %164 = phi i1 [ true, %147 ], [ %161, %157 ]
  %165 = phi i32 [ 0, %147 ], [ %162, %157 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %166 = load i16, ptr %152, align 4
  %167 = add i16 %166, 1
  store i16 %167, ptr %152, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !20
  call void @_raw_spin_lock(ptr noundef %42) #6
  br i1 %164, label %47, label %317

168:                                              ; preds = %143, %140, %139
  %169 = phi ptr [ %48, %139 ], [ %141, %143 ], [ null, %140 ]
  %170 = load i16, ptr %31, align 8
  %171 = and i16 %170, 512
  %172 = icmp eq i16 %171, 0
  br i1 %172, label %173, label %279

173:                                              ; preds = %168
  %174 = and i16 %170, 7
  %175 = icmp eq i16 %174, 0
  br i1 %175, label %176, label %190

176:                                              ; preds = %173
  %177 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 25
  %178 = load i64, ptr %177, align 8
  %179 = call i64 @ktime_get_mono_fast_ns() #6
  store i64 %179, ptr %177, align 8
  %180 = icmp ult i64 %179, %178
  br i1 %180, label %190, label %181

181:                                              ; preds = %176
  %182 = sub i64 %179, %178
  %183 = load i32, ptr %35, align 4
  %184 = icmp eq i32 %183, 2
  %185 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 24
  %186 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 23
  %187 = select i1 %184, ptr %185, ptr %186
  %188 = load i64, ptr %187, align 8
  %189 = add i64 %182, %188
  store i64 %189, ptr %187, align 8
  br label %190

190:                                              ; preds = %181, %176, %173
  store i32 1, ptr %35, align 4
  %191 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 12
  %192 = load ptr, ptr %191, align 8
  %193 = icmp eq ptr %192, null
  br i1 %193, label %194, label %218

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %196 = load ptr, ptr %195, align 8
  %197 = icmp eq ptr %196, null
  br i1 %197, label %202, label %198

198:                                              ; preds = %194
  %199 = getelementptr inbounds %struct.device_type, ptr %196, i32 0, i32 5
  %200 = load ptr, ptr %199, align 4
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %218

202:                                              ; preds = %198, %194
  %203 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 31
  %204 = load ptr, ptr %203, align 4
  %205 = icmp eq ptr %204, null
  br i1 %205, label %210, label %206

206:                                              ; preds = %202
  %207 = getelementptr inbounds %struct.class, ptr %204, i32 0, i32 13
  %208 = load ptr, ptr %207, align 4
  %209 = icmp eq ptr %208, null
  br i1 %209, label %210, label %218

210:                                              ; preds = %206, %202
  %211 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %212 = load ptr, ptr %211, align 4
  %213 = icmp eq ptr %212, null
  br i1 %213, label %223, label %214

214:                                              ; preds = %210
  %215 = getelementptr inbounds %struct.bus_type, ptr %212, i32 0, i32 18
  %216 = load ptr, ptr %215, align 4
  %217 = icmp eq ptr %216, null
  br i1 %217, label %223, label %218

218:                                              ; preds = %214, %206, %198, %190
  %219 = phi ptr [ %216, %214 ], [ %208, %206 ], [ %200, %198 ], [ %192, %190 ]
  %220 = getelementptr i8, ptr %219, i32 84
  %221 = load ptr, ptr %220, align 4
  %222 = icmp eq ptr %221, null
  br i1 %222, label %223, label %234

223:                                              ; preds = %218, %214, %210
  %224 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %225 = load ptr, ptr %224, align 8
  %226 = icmp eq ptr %225, null
  br i1 %226, label %234, label %227

227:                                              ; preds = %223
  %228 = getelementptr inbounds %struct.device_driver, ptr %225, i32 0, i32 16
  %229 = load ptr, ptr %228, align 4
  %230 = icmp eq ptr %229, null
  br i1 %230, label %234, label %231

231:                                              ; preds = %227
  %232 = getelementptr i8, ptr %229, i32 84
  %233 = load ptr, ptr %232, align 4
  br label %234

234:                                              ; preds = %231, %227, %223, %218
  %235 = phi ptr [ %221, %218 ], [ %233, %231 ], [ null, %227 ], [ null, %223 ]
  call void @dev_pm_disable_wake_irq_check(ptr noundef %0, i1 noundef zeroext false) #6
  %236 = load i16, ptr %31, align 8
  %237 = and i16 %236, 8192
  %238 = icmp eq i16 %237, 0
  br i1 %238, label %249, label %239

239:                                              ; preds = %234
  %240 = tail call ptr @llvm.thread.pointer() #6
  %241 = getelementptr inbounds %struct.task_struct, ptr %240, i32 0, i32 4
  %242 = load i32, ptr %241, align 4
  %243 = and i32 %242, 524288
  %244 = or i32 %242, 524288
  store i32 %244, ptr %241, align 4
  %245 = call fastcc i32 @__rpm_callback(ptr noundef %235, ptr noundef %0) #6
  %246 = load i32, ptr %241, align 4
  %247 = and i32 %246, -524289
  %248 = or i32 %247, %243
  store i32 %248, ptr %241, align 4
  br label %251

249:                                              ; preds = %234
  %250 = call fastcc i32 @__rpm_callback(ptr noundef %235, ptr noundef %0) #6
  br label %251

251:                                              ; preds = %249, %239
  %252 = phi i32 [ %245, %239 ], [ %250, %249 ]
  store i32 %252, ptr %30, align 4
  %253 = icmp eq i32 %252, -13
  %254 = select i1 %253, i32 -5, i32 %252
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %279, label %256

256:                                              ; preds = %251
  %257 = load i16, ptr %31, align 8
  %258 = and i16 %257, 7
  %259 = icmp eq i16 %258, 0
  br i1 %259, label %260, label %274

260:                                              ; preds = %256
  %261 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 25
  %262 = load i64, ptr %261, align 8
  %263 = call i64 @ktime_get_mono_fast_ns() #6
  store i64 %263, ptr %261, align 8
  %264 = icmp ult i64 %263, %262
  br i1 %264, label %274, label %265

265:                                              ; preds = %260
  %266 = sub i64 %263, %262
  %267 = load i32, ptr %35, align 4
  %268 = icmp eq i32 %267, 2
  %269 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 24
  %270 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 23
  %271 = select i1 %268, ptr %269, ptr %270
  %272 = load i64, ptr %271, align 8
  %273 = add i64 %266, %272
  store i64 %273, ptr %271, align 8
  br label %274

274:                                              ; preds = %265, %260, %256
  store i32 2, ptr %35, align 4
  %275 = load i64, ptr %33, align 8
  %276 = icmp eq i64 %275, 0
  br i1 %276, label %307, label %277

277:                                              ; preds = %274
  %278 = call i32 @hrtimer_try_to_cancel(ptr noundef %34) #6
  store i64 0, ptr %33, align 8
  br label %307

279:                                              ; preds = %251, %168, %118
  %280 = phi ptr [ %169, %168 ], [ %169, %251 ], [ null, %118 ]
  %281 = phi i32 [ 0, %168 ], [ 0, %251 ], [ 1, %118 ]
  %282 = load i16, ptr %31, align 8
  %283 = and i16 %282, 7
  %284 = icmp eq i16 %283, 0
  br i1 %284, label %285, label %299

285:                                              ; preds = %279
  %286 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 25
  %287 = load i64, ptr %286, align 8
  %288 = call i64 @ktime_get_mono_fast_ns() #6
  store i64 %288, ptr %286, align 8
  %289 = icmp ult i64 %288, %287
  br i1 %289, label %299, label %290

290:                                              ; preds = %285
  %291 = sub i64 %288, %287
  %292 = load i32, ptr %35, align 4
  %293 = icmp eq i32 %292, 2
  %294 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 24
  %295 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 23
  %296 = select i1 %293, ptr %294, ptr %295
  %297 = load i64, ptr %296, align 8
  %298 = add i64 %291, %297
  store i64 %298, ptr %296, align 8
  br label %299

299:                                              ; preds = %290, %285, %279
  store i32 0, ptr %35, align 4
  %300 = call i64 @ktime_get_mono_fast_ns() #6
  %301 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 22
  store volatile i64 %300, ptr %301, align 8
  %302 = icmp eq ptr %280, null
  br i1 %302, label %306, label %303

303:                                              ; preds = %299
  %304 = getelementptr inbounds %struct.device, ptr %280, i32 0, i32 11, i32 14
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %304) #6, !srcloc !14
  %305 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %304, ptr %304, i32 1, ptr elementtype(i32) %304) #6, !srcloc !32
  br label %306

306:                                              ; preds = %303, %299
  call void @__wake_up(ptr noundef %43, i32 noundef 3, i32 noundef 0, ptr noundef null) #6
  br label %309

307:                                              ; preds = %277, %274
  store i32 0, ptr %32, align 8
  call void @dev_pm_enable_wake_irq_check(ptr noundef %0, i1 noundef zeroext false) #6
  call void @__wake_up(ptr noundef %43, i32 noundef 3, i32 noundef 0, ptr noundef null) #6
  %308 = icmp sgt i32 %254, -1
  br i1 %308, label %309, label %313

309:                                              ; preds = %307, %306
  %310 = phi i32 [ %281, %306 ], [ %252, %307 ]
  %311 = phi ptr [ %280, %306 ], [ %169, %307 ]
  %312 = call fastcc i32 @rpm_idle(ptr noundef %0, i32 noundef 1)
  br label %313

313:                                              ; preds = %309, %307, %95, %93, %71, %62, %58, %47
  %314 = phi ptr [ %311, %309 ], [ %169, %307 ], [ %48, %93 ], [ %48, %62 ], [ %48, %58 ], [ %48, %95 ], [ %48, %71 ], [ %48, %47 ]
  %315 = phi i32 [ %310, %309 ], [ %254, %307 ], [ %94, %93 ], [ -13, %62 ], [ 1, %58 ], [ 1, %71 ], [ -22, %95 ], [ -22, %47 ]
  %316 = icmp eq ptr %314, null
  br i1 %316, label %327, label %317

317:                                              ; preds = %313, %163
  %318 = phi i32 [ %315, %313 ], [ %165, %163 ]
  %319 = phi ptr [ %314, %313 ], [ %141, %163 ]
  %320 = load i16, ptr %31, align 8
  %321 = and i16 %320, 1024
  %322 = icmp eq i16 %321, 0
  br i1 %322, label %323, label %327

323:                                              ; preds = %317
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %324 = load i16, ptr %42, align 4
  %325 = add i16 %324, 1
  store i16 %325, ptr %42, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #6, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  %326 = call i32 @__pm_runtime_idle(ptr noundef nonnull %319, i32 noundef 5) #6
  call void @_raw_spin_lock_irq(ptr noundef %42) #6
  br label %327

327:                                              ; preds = %323, %317, %313, %134, %130
  %328 = phi i32 [ %315, %313 ], [ %318, %317 ], [ %318, %323 ], [ 0, %134 ], [ 0, %130 ]
  %329 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpm_return_int, i32 0, i32 1), align 4
  %330 = icmp sgt i32 %329, 0
  br i1 %330, label %331, label %354

331:                                              ; preds = %327
  %332 = tail call ptr @llvm.thread.pointer() #6
  %333 = getelementptr inbounds %struct.thread_info, ptr %332, i32 0, i32 2
  %334 = load i32, ptr %333, align 8
  %335 = lshr i32 %334, 5
  %336 = getelementptr i32, ptr @__cpu_online_mask, i32 %335
  %337 = load volatile i32, ptr %336, align 4
  %338 = and i32 %334, 31
  %339 = shl nuw i32 1, %338
  %340 = and i32 %339, %337
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %354, label %342

342:                                              ; preds = %331
  %343 = getelementptr inbounds %struct.thread_info, ptr %332, i32 0, i32 1
  %344 = load volatile i32, ptr %343, align 4
  %345 = and i32 %344, 15728640
  %346 = icmp ne i32 %345, 0
  %347 = load i1, ptr @trace_rpm_return_int_rcuidle.__already_done, align 1
  %348 = xor i1 %347, true
  %349 = select i1 %346, i1 %348, i1 false
  br i1 %349, label %350, label %351, !prof !17

350:                                              ; preds = %342
  store i1 true, ptr @trace_rpm_return_int_rcuidle.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 102, i32 noundef 9, ptr noundef null) #6
  br label %351

351:                                              ; preds = %350, %342
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !23
  %352 = call i32 @__srcu_read_lock(ptr noundef nonnull @tracepoint_srcu) #6
  call void @rcu_irq_enter_irqson() #6
  %353 = call i32 @__traceiter_rpm_return_int(ptr noundef null, ptr noundef %0, i32 noundef ptrtoint (ptr blockaddress(@rpm_resume, %327) to i32), i32 noundef %328) #6
  call void @rcu_irq_exit_irqson() #6
  call void @__srcu_read_unlock(ptr noundef nonnull @tracepoint_srcu, i32 noundef %352) #6
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !24
  br label %354

354:                                              ; preds = %351, %331, %327
  ret i32 %328
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pm_runtime_get_if_active(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 3
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #6
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %6 = load i16, ptr %5, align 8
  %7 = and i16 %6, 7
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  br i1 %1, label %15, label %17

15:                                               ; preds = %13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #6, !srcloc !14
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #6, !srcloc !32
  br label %25

17:                                               ; preds = %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #6, !srcloc !14
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 0, i32 1, ptr elementtype(i32) %14) #6, !srcloc !15
  %19 = extractvalue { i32, i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !16
  br label %22

22:                                               ; preds = %21, %17
  %23 = icmp ne i32 %19, 0
  %24 = zext i1 %23 to i32
  br label %25

25:                                               ; preds = %22, %15, %9, %2
  %26 = phi i32 [ 1, %15 ], [ %24, %22 ], [ -22, %2 ], [ 0, %9 ]
  %27 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpm_usage, i32 0, i32 1), align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %25
  %30 = tail call ptr @llvm.thread.pointer() #6
  %31 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %32 = load i32, ptr %31, align 8
  %33 = lshr i32 %32, 5
  %34 = getelementptr i32, ptr @__cpu_online_mask, i32 %33
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %32, 31
  %37 = shl nuw i32 1, %36
  %38 = and i32 %37, %35
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %29
  %41 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %42 = load volatile i32, ptr %41, align 4
  %43 = and i32 %42, 15728640
  %44 = icmp ne i32 %43, 0
  %45 = load i1, ptr @trace_rpm_usage_rcuidle.__already_done, align 1
  %46 = xor i1 %45, true
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %48, label %49, !prof !17

48:                                               ; preds = %40
  store i1 true, ptr @trace_rpm_usage_rcuidle.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 82, i32 noundef 9, ptr noundef null) #6
  br label %49

49:                                               ; preds = %48, %40
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !28
  %50 = tail call i32 @__srcu_read_lock(ptr noundef nonnull @tracepoint_srcu) #6
  tail call void @rcu_irq_enter_irqson() #6
  %51 = tail call i32 @__traceiter_rpm_usage(ptr noundef null, ptr noundef %0, i32 noundef 0) #6
  tail call void @rcu_irq_exit_irqson() #6
  tail call void @__srcu_read_unlock(ptr noundef nonnull @tracepoint_srcu, i32 noundef %50) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !29
  br label %52

52:                                               ; preds = %49, %29, %25
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #6
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__pm_runtime_set_status(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = and i32 %1, -3
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %199

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %8) #6
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 20
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %13 = load i16, ptr %12, align 8
  %14 = and i16 %13, 7
  %15 = icmp eq i16 %14, 0
  %16 = select i1 %11, i1 %15, i1 false
  br i1 %16, label %23, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %19 = add i16 %13, 1
  %20 = and i16 %19, 7
  %21 = and i16 %13, -8
  %22 = or i16 %20, %21
  store i16 %22, ptr %18, align 8
  br label %23

23:                                               ; preds = %17, %7
  %24 = phi i32 [ 0, %17 ], [ -11, %7 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %25 = load i16, ptr %8, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #6, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  br i1 %16, label %199, label %27

27:                                               ; preds = %23
  %28 = icmp eq i32 %1, 0
  br i1 %28, label %29, label %76

29:                                               ; preds = %27
  %30 = tail call i32 @device_links_read_lock() #6
  %31 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10
  %32 = load volatile ptr, ptr %31, align 8
  %33 = icmp eq ptr %32, %31
  br i1 %33, label %73, label %34

34:                                               ; preds = %70, %29
  %35 = phi ptr [ %71, %70 ], [ %32, %29 ]
  %36 = getelementptr i8, ptr %35, i32 484
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %70, label %40

40:                                               ; preds = %34
  %41 = getelementptr i8, ptr %35, i32 -16
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.device, ptr %42, i32 0, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %43) #6, !srcloc !14
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %43, ptr %43, i32 1, ptr elementtype(i32) %43) #6, !srcloc !32
  %45 = getelementptr inbounds %struct.device, ptr %42, i32 0, i32 11, i32 3
  %46 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %45) #6
  %47 = tail call fastcc i32 @rpm_resume(ptr noundef %42, i32 noundef 4) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %45, i32 noundef %46) #6
  %48 = icmp slt i32 %47, 0
  %49 = icmp ne i32 %47, -13
  %50 = and i1 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %40
  %52 = getelementptr i8, ptr %35, i32 -16
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %struct.device, ptr %53, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %54) #6, !srcloc !14
  %55 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %54, ptr %54, i32 0, i32 -1, ptr elementtype(i32) %54) #6, !srcloc !15
  %56 = extractvalue { i32, i32, i32 } %55, 0
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %73, label %58

58:                                               ; preds = %51
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !16
  br label %73

59:                                               ; preds = %40
  %60 = getelementptr i8, ptr %35, i32 488
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %60) #6, !srcloc !14
  %61 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %60, ptr %60, i32 1, ptr elementtype(i32) %60) #6, !srcloc !37
  %62 = extractvalue { i32, i32, i32 } %61, 0
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %68, label %64, !prof !17

64:                                               ; preds = %59
  %65 = add i32 %62, 1
  %66 = or i32 %65, %62
  %67 = icmp sgt i32 %66, -1
  br i1 %67, label %70, label %68, !prof !38

68:                                               ; preds = %64, %59
  %69 = phi i32 [ 2, %59 ], [ 1, %64 ]
  tail call void @refcount_warn_saturate(ptr noundef %60, i32 noundef %69) #6
  br label %70

70:                                               ; preds = %68, %64, %34
  %71 = load volatile ptr, ptr %35, align 8
  %72 = icmp eq ptr %71, %31
  br i1 %72, label %73, label %34

73:                                               ; preds = %70, %58, %51, %29
  %74 = phi i32 [ %47, %51 ], [ %47, %58 ], [ 0, %29 ], [ 0, %70 ]
  %75 = phi i32 [ 2, %51 ], [ 2, %58 ], [ 0, %29 ], [ 0, %70 ]
  tail call void @device_links_read_unlock(i32 noundef %30) #6
  br label %76

76:                                               ; preds = %73, %27
  %77 = phi i32 [ %75, %73 ], [ %1, %27 ]
  %78 = phi i32 [ %74, %73 ], [ 0, %27 ]
  tail call void @_raw_spin_lock_irq(ptr noundef %8) #6
  %79 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %80 = load i32, ptr %79, align 4
  %81 = icmp ne i32 %80, %77
  %82 = icmp ne ptr %4, null
  %83 = select i1 %81, i1 %82, i1 false
  br i1 %83, label %84, label %133

84:                                               ; preds = %76
  %85 = icmp eq i32 %77, 2
  br i1 %85, label %86, label %97

86:                                               ; preds = %84
  %87 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 11, i32 14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %87) #6, !srcloc !14
  %88 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %87, ptr %87, i32 0, i32 -1, ptr elementtype(i32) %87) #6, !srcloc !15
  %89 = extractvalue { i32, i32, i32 } %88, 0
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %86
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !16
  br label %92

92:                                               ; preds = %91, %86
  %93 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 11, i32 15
  %94 = load i16, ptr %93, align 8
  %95 = and i16 %94, 256
  %96 = icmp eq i16 %95, 0
  br label %133

97:                                               ; preds = %84
  %98 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 11, i32 3
  tail call void @_raw_spin_lock(ptr noundef %98) #6
  %99 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 11, i32 15
  %100 = load i16, ptr %99, align 8
  %101 = and i16 %100, 263
  %102 = icmp eq i16 %101, 0
  br i1 %102, label %103, label %122

103:                                              ; preds = %97
  %104 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 11, i32 18
  %105 = load i32, ptr %104, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %122, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = load ptr, ptr %0, align 4
  br label %113

113:                                              ; preds = %111, %107
  %114 = phi ptr [ %112, %111 ], [ %109, %107 ]
  %115 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 3
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %120

118:                                              ; preds = %113
  %119 = load ptr, ptr %4, align 4
  br label %120

120:                                              ; preds = %118, %113
  %121 = phi ptr [ %119, %118 ], [ %116, %113 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef %114, ptr noundef %121) #7
  br label %128

122:                                              ; preds = %103, %97
  %123 = load i32, ptr %79, align 4
  %124 = icmp eq i32 %123, 2
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 11, i32 14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %126) #6, !srcloc !14
  %127 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %126, ptr %126, i32 1, ptr elementtype(i32) %126) #6, !srcloc !32
  br label %128

128:                                              ; preds = %125, %122, %120
  %129 = phi i32 [ %78, %125 ], [ %78, %122 ], [ -16, %120 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %130 = load i16, ptr %98, align 4
  %131 = add i16 %130, 1
  store i16 %131, ptr %98, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !20
  %132 = icmp eq i32 %129, 0
  br i1 %132, label %133, label %157

133:                                              ; preds = %128, %92, %76
  %134 = phi i1 [ %96, %92 ], [ false, %128 ], [ false, %76 ]
  %135 = phi i32 [ %78, %92 ], [ 0, %128 ], [ %78, %76 ]
  %136 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %137 = load i16, ptr %136, align 8
  %138 = and i16 %137, 7
  %139 = icmp eq i16 %138, 0
  br i1 %139, label %140, label %154

140:                                              ; preds = %133
  %141 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 25
  %142 = load i64, ptr %141, align 8
  %143 = tail call i64 @ktime_get_mono_fast_ns() #6
  store i64 %143, ptr %141, align 8
  %144 = icmp ult i64 %143, %142
  br i1 %144, label %154, label %145

145:                                              ; preds = %140
  %146 = sub i64 %143, %142
  %147 = load i32, ptr %79, align 4
  %148 = icmp eq i32 %147, 2
  %149 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 24
  %150 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 23
  %151 = select i1 %148, ptr %149, ptr %150
  %152 = load i64, ptr %151, align 8
  %153 = add i64 %146, %152
  store i64 %153, ptr %151, align 8
  br label %154

154:                                              ; preds = %145, %140, %133
  store i32 %77, ptr %79, align 4
  %155 = icmp eq i32 %135, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %154
  store i32 0, ptr %9, align 4
  br label %157

157:                                              ; preds = %156, %154, %128
  %158 = phi i32 [ %77, %154 ], [ %77, %156 ], [ 2, %128 ]
  %159 = phi i1 [ %134, %154 ], [ %134, %156 ], [ false, %128 ]
  %160 = phi i32 [ %135, %154 ], [ 0, %156 ], [ %129, %128 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %161 = load i16, ptr %8, align 4
  %162 = add i16 %161, 1
  store i16 %162, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #6, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  br i1 %159, label %163, label %167

163:                                              ; preds = %157
  %164 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 11, i32 3
  %165 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %164) #6
  %166 = tail call fastcc i32 @rpm_idle(ptr noundef %4, i32 noundef 1) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %164, i32 noundef %165) #6
  br label %167

167:                                              ; preds = %163, %157
  %168 = icmp eq i32 %158, 2
  br i1 %168, label %169, label %198

169:                                              ; preds = %167
  %170 = tail call i32 @device_links_read_lock() #6
  %171 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10
  %172 = load volatile ptr, ptr %171, align 8
  %173 = icmp eq ptr %172, %171
  br i1 %173, label %197, label %174

174:                                              ; preds = %191, %169
  %175 = phi ptr [ %195, %191 ], [ %172, %169 ]
  %176 = getelementptr i8, ptr %175, i32 -16
  %177 = load ptr, ptr %176, align 8
  %178 = getelementptr inbounds %struct.device, ptr %177, i32 0, i32 11, i32 13
  %179 = getelementptr i8, ptr %175, i32 488
  %180 = tail call zeroext i1 @refcount_dec_not_one(ptr noundef %179) #6
  br i1 %180, label %181, label %191

181:                                              ; preds = %189, %174
  %182 = load volatile i32, ptr %178, align 4
  %183 = icmp sgt i32 %182, 0
  br i1 %183, label %184, label %191

184:                                              ; preds = %181
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %178) #6, !srcloc !14
  %185 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %178, ptr %178, i32 0, i32 -1, ptr elementtype(i32) %178) #6, !srcloc !15
  %186 = extractvalue { i32, i32, i32 } %185, 0
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %189, label %188

188:                                              ; preds = %184
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !16
  br label %189

189:                                              ; preds = %188, %184
  %190 = tail call zeroext i1 @refcount_dec_not_one(ptr noundef %179) #6
  br i1 %190, label %181, label %191

191:                                              ; preds = %189, %181, %174
  %192 = getelementptr inbounds %struct.device, ptr %177, i32 0, i32 11, i32 3
  %193 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %192) #6
  %194 = tail call fastcc i32 @rpm_idle(ptr noundef %177, i32 noundef 1) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %192, i32 noundef %193) #6
  %195 = load volatile ptr, ptr %175, align 8
  %196 = icmp eq ptr %195, %171
  br i1 %196, label %197, label %174

197:                                              ; preds = %191, %169
  tail call void @device_links_read_unlock(i32 noundef %170) #6
  br label %198

198:                                              ; preds = %197, %167
  tail call void @pm_runtime_enable(ptr noundef %0)
  br label %199

199:                                              ; preds = %198, %23, %2
  %200 = phi i32 [ %160, %198 ], [ -22, %2 ], [ %24, %23 ]
  ret i32 %200
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_links_read_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_links_read_unlock(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pm_runtime_enable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 3
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #6
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, 7
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.pm_runtime_enable) #7
  br label %31

9:                                                ; preds = %1
  %10 = add i16 %5, 7
  %11 = and i16 %10, 7
  %12 = and i16 %5, -8
  %13 = or i16 %11, %12
  store i16 %13, ptr %4, align 8
  %14 = icmp eq i16 %11, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 19
  store i32 -1, ptr %16, align 8
  %17 = tail call i64 @ktime_get_mono_fast_ns() #6
  %18 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 25
  store i64 %17, ptr %18, align 8
  %19 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %31

22:                                               ; preds = %15
  %23 = load i16, ptr %4, align 8
  %24 = and i16 %23, 256
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 14
  %28 = load volatile i32, ptr %27, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.2) #7
  br label %31

31:                                               ; preds = %30, %26, %22, %15, %9, %8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pm_runtime_barrier(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #6, !srcloc !14
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #6, !srcloc !32
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %4) #6
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %6 = load i16, ptr %5, align 8
  %7 = and i16 %6, 16
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 17
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @rpm_resume(ptr noundef %0, i32 noundef 0)
  br label %15

15:                                               ; preds = %13, %9, %1
  %16 = phi i32 [ 1, %13 ], [ 0, %9 ], [ 0, %1 ]
  tail call fastcc void @__pm_runtime_barrier(ptr noundef %0)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %17 = load i16, ptr %4, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #6, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #6, !srcloc !14
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 0, i32 -1, ptr elementtype(i32) %2) #6, !srcloc !15
  %20 = extractvalue { i32, i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !16
  br label %23

23:                                               ; preds = %22, %15
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__pm_runtime_barrier(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 9
  %4 = load i64, ptr %3, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 8
  %8 = tail call i32 @hrtimer_try_to_cancel(ptr noundef %7) #6
  store i64 0, ptr %3, align 8
  br label %9

9:                                                ; preds = %6, %1
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %11 = load i16, ptr %10, align 8
  %12 = and i16 %11, 16
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 17
  store i32 0, ptr %15, align 8
  %16 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %17 = load i16, ptr %16, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %16, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #6, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  %19 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 10
  %20 = tail call zeroext i1 @cancel_work_sync(ptr noundef %19) #6
  tail call void @_raw_spin_lock_irq(ptr noundef %16) #6
  %21 = load i16, ptr %10, align 8
  %22 = and i16 %21, -17
  store i16 %22, ptr %10, align 8
  br label %23

23:                                               ; preds = %14, %9
  %24 = phi i16 [ %22, %14 ], [ %11, %9 ]
  %25 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %26 = load i32, ptr %25, align 4
  switch i32 %26, label %27 [
    i32 3, label %30
    i32 1, label %30
  ]

27:                                               ; preds = %23
  %28 = and i16 %24, 8
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %48, label %30

30:                                               ; preds = %27, %23, %23
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #6
  %31 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 1
  %32 = tail call ptr @llvm.thread.pointer() #6
  store i32 0, ptr %2, align 4
  store ptr %32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 2
  store ptr @autoremove_wake_function, ptr %33, align 4
  %34 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 3
  store ptr %34, ptr %34, align 4
  %35 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 3, i32 1
  store ptr %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 11
  %37 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 3
  br label %38

38:                                               ; preds = %44, %30
  call void @prepare_to_wait(ptr noundef %36, ptr noundef nonnull %2, i32 noundef 2) #6
  %39 = load i32, ptr %25, align 4
  switch i32 %39, label %40 [
    i32 3, label %44
    i32 1, label %44
  ]

40:                                               ; preds = %38
  %41 = load i16, ptr %10, align 8
  %42 = and i16 %41, 8
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %40, %38, %38
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %45 = load i16, ptr %37, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr %37, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #6, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  call void @schedule() #6
  call void @_raw_spin_lock_irq(ptr noundef %37) #6
  br label %38

47:                                               ; preds = %40
  call void @finish_wait(ptr noundef %36, ptr noundef nonnull %2) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #6
  br label %48

48:                                               ; preds = %47, %27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__pm_runtime_disable(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #6
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, 7
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = add i16 %5, 1
  %10 = and i16 %9, 7
  %11 = and i16 %5, -8
  %12 = or i16 %10, %11
  store i16 %12, ptr %4, align 8
  br label %61

13:                                               ; preds = %2
  %14 = xor i1 %1, true
  %15 = and i16 %5, 16
  %16 = icmp eq i16 %15, 0
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %30, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 17
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, 4
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %23) #6, !srcloc !14
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %23, ptr %23, i32 1, ptr elementtype(i32) %23) #6, !srcloc !32
  %25 = tail call fastcc i32 @rpm_resume(ptr noundef %0, i32 noundef 0)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %23) #6, !srcloc !14
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %23, ptr %23, i32 0, i32 -1, ptr elementtype(i32) %23) #6, !srcloc !15
  %27 = extractvalue { i32, i32, i32 } %26, 0
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !16
  br label %30

30:                                               ; preds = %29, %22, %18, %13
  %31 = load i16, ptr %4, align 8
  %32 = and i16 %31, 7
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 25
  %36 = load i64, ptr %35, align 8
  %37 = tail call i64 @ktime_get_mono_fast_ns() #6
  store i64 %37, ptr %35, align 8
  %38 = icmp ult i64 %37, %36
  br i1 %38, label %49, label %39

39:                                               ; preds = %34
  %40 = sub i64 %37, %36
  %41 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 2
  %44 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 24
  %45 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 23
  %46 = select i1 %43, ptr %44, ptr %45
  %47 = load i64, ptr %46, align 8
  %48 = add i64 %40, %47
  store i64 %48, ptr %46, align 8
  br label %49

49:                                               ; preds = %39, %34, %30
  %50 = load i16, ptr %4, align 8
  %51 = and i16 %50, 7
  %52 = add i16 %50, 1
  %53 = and i16 %52, 7
  %54 = and i16 %50, -8
  %55 = or i16 %53, %54
  store i16 %55, ptr %4, align 8
  %56 = icmp eq i16 %51, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %49
  tail call fastcc void @__pm_runtime_barrier(ptr noundef %0)
  %58 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 19
  store i32 %59, ptr %60, align 8
  br label %61

61:                                               ; preds = %57, %49, %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %62 = load i16, ptr %3, align 4
  %63 = add i16 %62, 1
  store i16 %63, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #6, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_pm_runtime_enable(ptr noundef %0) #0 {
  tail call void @pm_runtime_enable(ptr noundef %0)
  %2 = tail call i32 @devm_add_action(ptr noundef %0, ptr noundef nonnull @pm_runtime_disable_action, ptr noundef %0) #6
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @__pm_runtime_disable(ptr noundef %0, i1 noundef zeroext true) #6
  br label %5

5:                                                ; preds = %4, %1
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pm_runtime_disable_action(ptr noundef %0) #0 {
  tail call void @__pm_runtime_disable(ptr noundef %0, i1 noundef zeroext true) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pm_runtime_forbid(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %2) #6
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, 128
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = and i16 %4, -129
  store i16 %8, ptr %3, align 8
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #6, !srcloc !14
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #6, !srcloc !32
  %11 = tail call fastcc i32 @rpm_resume(ptr noundef %0, i32 noundef 0)
  br label %12

12:                                               ; preds = %7, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %13 = load i16, ptr %2, align 4
  %14 = add i16 %13, 1
  store i16 %14, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #6, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pm_runtime_allow(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %2) #6
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, 128
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %41

7:                                                ; preds = %1
  %8 = or i16 %4, 128
  store i16 %8, ptr %3, align 8
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #6, !srcloc !14
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #6, !srcloc !26
  %11 = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !27
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = tail call fastcc i32 @rpm_idle(ptr noundef %0, i32 noundef 9)
  br label %41

15:                                               ; preds = %7
  %16 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpm_usage, i32 0, i32 1), align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %15
  %19 = tail call ptr @llvm.thread.pointer() #6
  %20 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %21 = load i32, ptr %20, align 8
  %22 = lshr i32 %21, 5
  %23 = getelementptr i32, ptr @__cpu_online_mask, i32 %22
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %21, 31
  %26 = shl nuw i32 1, %25
  %27 = and i32 %26, %24
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %31, 15728640
  %33 = icmp ne i32 %32, 0
  %34 = load i1, ptr @trace_rpm_usage_rcuidle.__already_done, align 1
  %35 = xor i1 %34, true
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %37, label %38, !prof !17

37:                                               ; preds = %29
  store i1 true, ptr @trace_rpm_usage_rcuidle.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 82, i32 noundef 9, ptr noundef null) #6
  br label %38

38:                                               ; preds = %37, %29
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !28
  %39 = tail call i32 @__srcu_read_lock(ptr noundef nonnull @tracepoint_srcu) #6
  tail call void @rcu_irq_enter_irqson() #6
  %40 = tail call i32 @__traceiter_rpm_usage(ptr noundef null, ptr noundef %0, i32 noundef 9) #6
  tail call void @rcu_irq_exit_irqson() #6
  tail call void @__srcu_read_unlock(ptr noundef nonnull @tracepoint_srcu, i32 noundef %39) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !29
  br label %41

41:                                               ; preds = %38, %18, %15, %13, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %42 = load i16, ptr %2, align 4
  %43 = add i16 %42, 1
  store i16 %43, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #6, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pm_runtime_no_callbacks(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %2) #6
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %4 = load i16, ptr %3, align 8
  %5 = or i16 %4, 512
  store i16 %5, ptr %3, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %6 = load i16, ptr %2, align 4
  %7 = add i16 %6, 1
  store i16 %7, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #6, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  %8 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 7
  %9 = load i8, ptr %8, align 8
  %10 = and i8 %9, 2
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  tail call void @rpm_sysfs_remove(ptr noundef %0) #6
  br label %13

13:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpm_sysfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pm_runtime_irq_safe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #6, !srcloc !14
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #6, !srcloc !32
  %8 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 11, i32 3
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #6
  %10 = tail call fastcc i32 @rpm_resume(ptr noundef nonnull %3, i32 noundef 4) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #6
  br label %11

11:                                               ; preds = %5, %1
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %12) #6
  %13 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %14 = load i16, ptr %13, align 8
  %15 = or i16 %14, 1024
  store i16 %15, ptr %13, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %16 = load i16, ptr %12, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #6, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #6
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 21
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %7 = load i16, ptr %6, align 8
  %8 = lshr i16 %7, 11
  %9 = and i16 %8, 1
  %10 = zext i16 %9 to i32
  store i32 %1, ptr %4, align 8
  tail call fastcc void @update_autosuspend(ptr noundef %0, i32 noundef %5, i32 noundef %10)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %11 = load i16, ptr %3, align 4
  %12 = add i16 %11, 1
  store i16 %12, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #6, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @update_autosuspend(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 21
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %7 = load i16, ptr %6, align 8
  %8 = and i16 %7, 2048
  %9 = icmp ne i16 %8, 0
  %10 = icmp slt i32 %5, 0
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %46

12:                                               ; preds = %3
  %13 = icmp eq i32 %2, 0
  %14 = icmp sgt i32 %1, -1
  %15 = or i1 %14, %13
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #6, !srcloc !14
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #6, !srcloc !32
  %19 = tail call fastcc i32 @rpm_resume(ptr noundef %0, i32 noundef 0)
  br label %55

20:                                               ; preds = %12
  %21 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpm_usage, i32 0, i32 1), align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %55

23:                                               ; preds = %20
  %24 = tail call ptr @llvm.thread.pointer() #6
  %25 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %26 = load i32, ptr %25, align 8
  %27 = lshr i32 %26, 5
  %28 = getelementptr i32, ptr @__cpu_online_mask, i32 %27
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %26, 31
  %31 = shl nuw i32 1, %30
  %32 = and i32 %31, %29
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %55, label %34

34:                                               ; preds = %23
  %35 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %36, 15728640
  %38 = icmp ne i32 %37, 0
  %39 = load i1, ptr @trace_rpm_usage_rcuidle.__already_done, align 1
  %40 = xor i1 %39, true
  %41 = select i1 %38, i1 %40, i1 false
  br i1 %41, label %42, label %43, !prof !17

42:                                               ; preds = %34
  store i1 true, ptr @trace_rpm_usage_rcuidle.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 82, i32 noundef 9, ptr noundef null) #6
  br label %43

43:                                               ; preds = %42, %34
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !28
  %44 = tail call i32 @__srcu_read_lock(ptr noundef nonnull @tracepoint_srcu) #6
  tail call void @rcu_irq_enter_irqson() #6
  %45 = tail call i32 @__traceiter_rpm_usage(ptr noundef null, ptr noundef %0, i32 noundef 0) #6
  tail call void @rcu_irq_exit_irqson() #6
  tail call void @__srcu_read_unlock(ptr noundef nonnull @tracepoint_srcu, i32 noundef %44) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !29
  br label %55

46:                                               ; preds = %3
  %47 = icmp ne i32 %2, 0
  %48 = icmp slt i32 %1, 0
  %49 = and i1 %48, %47
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %51) #6, !srcloc !14
  %52 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %51, ptr %51, i32 1, ptr elementtype(i32) %51) #6, !srcloc !39
  br label %53

53:                                               ; preds = %50, %46
  %54 = tail call fastcc i32 @rpm_idle(ptr noundef %0, i32 noundef 8)
  br label %55

55:                                               ; preds = %53, %43, %23, %20, %16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__pm_runtime_use_autosuspend(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #6
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 21
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %7 = load i16, ptr %6, align 8
  %8 = lshr i16 %7, 11
  %9 = and i16 %8, 1
  %10 = zext i16 %9 to i32
  %11 = select i1 %1, i16 2048, i16 0
  %12 = and i16 %7, -2049
  %13 = or i16 %12, %11
  store i16 %13, ptr %6, align 8
  tail call fastcc void @update_autosuspend(ptr noundef %0, i32 noundef %5, i32 noundef %10)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %14 = load i16, ptr %3, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #6, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pm_runtime_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  store i32 2, ptr %2, align 4
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 19
  store i32 -1, ptr %3, align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %5 = load i16, ptr %4, align 8
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  store volatile i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 20
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 14
  store volatile i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 17
  store i32 0, ptr %9, align 8
  %10 = and i16 %5, -512
  %11 = or i16 %10, 129
  store i16 %11, ptr %4, align 8
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 10
  store i32 -32, ptr %12, align 8
  %13 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 10, i32 1
  store volatile ptr %13, ptr %13, align 4
  %14 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 10, i32 1, i32 1
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 10, i32 2
  store ptr @pm_runtime_work, ptr %15, align 4
  %16 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 9
  store i64 0, ptr %16, align 8
  %17 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 8
  tail call void @hrtimer_init(ptr noundef %17, i32 noundef 1, i32 noundef 0) #6
  %18 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 8, i32 2
  store ptr @pm_suspend_timer_fn, ptr %18, align 8
  %19 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 11
  tail call void @__init_waitqueue_head(ptr noundef %19, ptr noundef nonnull @.str.3, ptr noundef nonnull @pm_runtime_init.__key) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pm_runtime_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -224
  %3 = getelementptr i8, ptr %0, i32 -92
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #6
  %4 = getelementptr i8, ptr %0, i32 40
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, 16
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 48
  %10 = load i32, ptr %9, align 8
  store i32 0, ptr %9, align 8
  %11 = and i16 %5, -17
  store i16 %11, ptr %4, align 8
  switch i32 %10, label %20 [
    i32 4, label %18
    i32 1, label %12
    i32 2, label %14
    i32 3, label %16
  ]

12:                                               ; preds = %8
  %13 = tail call fastcc i32 @rpm_idle(ptr noundef %2, i32 noundef 2)
  br label %20

14:                                               ; preds = %8
  %15 = tail call fastcc i32 @rpm_suspend(ptr noundef %2, i32 noundef 2)
  br label %20

16:                                               ; preds = %8
  %17 = tail call fastcc i32 @rpm_suspend(ptr noundef %2, i32 noundef 10)
  br label %20

18:                                               ; preds = %8
  %19 = tail call fastcc i32 @rpm_resume(ptr noundef %2, i32 noundef 2)
  br label %20

20:                                               ; preds = %18, %16, %14, %12, %8, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %21 = load i16, ptr %3, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #6, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pm_suspend_timer_fn(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -168
  %3 = getelementptr i8, ptr %0, i32 -36
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #6
  %5 = getelementptr i8, ptr %0, i32 48
  %6 = load i64, ptr %5, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %1
  %9 = tail call i64 @ktime_get_mono_fast_ns() #6
  %10 = icmp ult i64 %6, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  store i64 0, ptr %5, align 8
  %12 = getelementptr i8, ptr %0, i32 96
  %13 = load i16, ptr %12, align 8
  %14 = and i16 %13, 4096
  %15 = icmp eq i16 %14, 0
  %16 = select i1 %15, i32 1, i32 9
  %17 = tail call fastcc i32 @rpm_suspend(ptr noundef %2, i32 noundef %16)
  br label %18

18:                                               ; preds = %11, %8, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pm_runtime_reinit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 7
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %28, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = tail call i32 @__pm_runtime_set_status(ptr noundef %0, i32 noundef 2) #6
  %12 = load i16, ptr %2, align 8
  br label %13

13:                                               ; preds = %10, %6
  %14 = phi i16 [ %12, %10 ], [ %3, %6 ]
  %15 = and i16 %14, 1024
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %18) #6
  %19 = load i16, ptr %2, align 8
  %20 = and i16 %19, -1025
  store i16 %20, ptr %2, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %21 = load i16, ptr %18, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr %18, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #6, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  %23 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %17
  %27 = tail call i32 @__pm_runtime_idle(ptr noundef nonnull %24, i32 noundef 5) #6
  br label %28

28:                                               ; preds = %26, %17, %13, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pm_runtime_remove(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @__pm_runtime_disable(ptr noundef %0, i1 noundef zeroext false)
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 7
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %28, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = tail call i32 @__pm_runtime_set_status(ptr noundef %0, i32 noundef 2) #6
  %12 = load i16, ptr %2, align 8
  br label %13

13:                                               ; preds = %10, %6
  %14 = phi i16 [ %12, %10 ], [ %3, %6 ]
  %15 = and i16 %14, 1024
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %18) #6
  %19 = load i16, ptr %2, align 8
  %20 = and i16 %19, -1025
  store i16 %20, ptr %2, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %21 = load i16, ptr %18, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr %18, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #6, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  %23 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %17
  %27 = tail call i32 @__pm_runtime_idle(ptr noundef nonnull %24, i32 noundef 5) #6
  br label %28

28:                                               ; preds = %26, %17, %13, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pm_runtime_get_suppliers(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @device_links_read_lock() #6
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10
  %4 = load volatile ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %34, label %6

6:                                                ; preds = %31, %1
  %7 = phi ptr [ %32, %31 ], [ %4, %1 ]
  %8 = getelementptr i8, ptr %7, i32 484
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %31, label %12

12:                                               ; preds = %6
  %13 = getelementptr i8, ptr %7, i32 -16
  %14 = getelementptr i8, ptr %7, i32 512
  store i8 1, ptr %14, align 8
  %15 = load ptr, ptr %13, align 8
  %16 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #6, !srcloc !14
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #6, !srcloc !32
  %18 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 11, i32 3
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %18) #6
  %20 = tail call fastcc i32 @rpm_resume(ptr noundef %15, i32 noundef 4) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %19) #6
  %21 = getelementptr i8, ptr %7, i32 488
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #6, !srcloc !14
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %21, ptr %21, i32 1, ptr elementtype(i32) %21) #6, !srcloc !37
  %23 = extractvalue { i32, i32, i32 } %22, 0
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25, !prof !17

25:                                               ; preds = %12
  %26 = add i32 %23, 1
  %27 = or i32 %26, %23
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %31, label %29, !prof !38

29:                                               ; preds = %25, %12
  %30 = phi i32 [ 2, %12 ], [ 1, %25 ]
  tail call void @refcount_warn_saturate(ptr noundef %21, i32 noundef %30) #6
  br label %31

31:                                               ; preds = %29, %25, %6
  %32 = load volatile ptr, ptr %7, align 8
  %33 = icmp eq ptr %32, %3
  br i1 %33, label %34, label %6

34:                                               ; preds = %31, %1
  tail call void @device_links_read_unlock(i32 noundef %2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pm_runtime_put_suppliers(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @device_links_read_lock() #6
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10
  %4 = load volatile ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %32, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 3
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  br label %9

9:                                                ; preds = %29, %6
  %10 = phi ptr [ %4, %6 ], [ %30, %29 ]
  %11 = getelementptr i8, ptr %10, i32 -16
  %12 = getelementptr i8, ptr %10, i32 512
  %13 = load i8, ptr %12, align 8, !range !40
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %9
  store i8 0, ptr %12, align 8
  tail call void @_raw_spin_lock_irq(ptr noundef %7) #6
  %16 = load i32, ptr %8, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = getelementptr i8, ptr %10, i32 488
  %20 = tail call zeroext i1 @refcount_dec_not_one(ptr noundef %19) #6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %21 = load i16, ptr %7, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #6, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  br i1 %20, label %23, label %29

23:                                               ; preds = %18
  %24 = load ptr, ptr %11, align 8
  %25 = tail call i32 @__pm_runtime_idle(ptr noundef %24, i32 noundef 5) #6
  br label %29

26:                                               ; preds = %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %27 = load i16, ptr %7, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #6, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  br label %29

29:                                               ; preds = %26, %23, %18, %9
  %30 = load volatile ptr, ptr %10, align 8
  %31 = icmp eq ptr %30, %3
  br i1 %31, label %32, label %9

32:                                               ; preds = %29, %1
  tail call void @device_links_read_unlock(i32 noundef %2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pm_runtime_new_link(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %2) #6
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 16
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 1
  store i32 %5, ptr %3, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %6 = load i16, ptr %2, align 4
  %7 = add i16 %6, 1
  store i16 %7, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #6, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pm_runtime_drop_link(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.device_link, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.device_link, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 11, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %9) #6
  %10 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 11, i32 16
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !17

13:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1786, i32 noundef 9, ptr noundef null) #6
  %14 = load i32, ptr %10, align 4
  br label %15

15:                                               ; preds = %13, %6
  %16 = phi i32 [ %14, %13 ], [ %11, %6 ]
  %17 = add i32 %16, -1
  store i32 %17, ptr %10, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %18 = load i16, ptr %9, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #6, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  tail call void @pm_runtime_release_supplier(ptr noundef %0, i1 noundef zeroext true)
  br label %20

20:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pm_runtime_force_suspend(ptr noundef %0) #0 {
  tail call void @__pm_runtime_disable(ptr noundef %0, i1 noundef zeroext true) #6
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %95, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 12
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %33

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.device_type, ptr %11, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %33

17:                                               ; preds = %13, %9
  %18 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 31
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.class, ptr %19, i32 0, i32 13
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %21, %17
  %26 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.bus_type, ptr %27, i32 0, i32 18
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %29, %21, %13, %5
  %34 = phi ptr [ %31, %29 ], [ %23, %21 ], [ %15, %13 ], [ %7, %5 ]
  %35 = getelementptr i8, ptr %34, i32 80
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %50

38:                                               ; preds = %33, %29, %25
  %39 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %40 = load ptr, ptr %39, align 8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %54, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.device_driver, ptr %40, i32 0, i32 16
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %54, label %46

46:                                               ; preds = %42
  %47 = getelementptr i8, ptr %44, i32 80
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %46, %33
  %51 = phi ptr [ %48, %46 ], [ %36, %33 ]
  %52 = tail call i32 %51(ptr noundef %0) #6
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %94

54:                                               ; preds = %50, %46, %42, %38
  %55 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  %56 = load volatile i32, ptr %55, align 4
  %57 = icmp slt i32 %56, 2
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %60 = load i16, ptr %59, align 8
  br label %72

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 14
  %63 = load volatile i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %67 = load i16, ptr %66, align 8
  %68 = and i16 %67, 256
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %65, %61
  %71 = tail call i32 @__pm_runtime_set_status(ptr noundef %0, i32 noundef 2) #6
  br label %95

72:                                               ; preds = %65, %58
  %73 = phi i16 [ %60, %58 ], [ %67, %65 ]
  %74 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %75 = and i16 %73, 7
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 25
  %79 = load i64, ptr %78, align 8
  %80 = tail call i64 @ktime_get_mono_fast_ns() #6
  store i64 %80, ptr %78, align 8
  %81 = icmp ult i64 %80, %79
  br i1 %81, label %91, label %82

82:                                               ; preds = %77
  %83 = sub i64 %80, %79
  %84 = load i32, ptr %2, align 4
  %85 = icmp eq i32 %84, 2
  %86 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 24
  %87 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 23
  %88 = select i1 %85, ptr %86, ptr %87
  %89 = load i64, ptr %88, align 8
  %90 = add i64 %83, %89
  store i64 %90, ptr %88, align 8
  br label %91

91:                                               ; preds = %82, %77, %72
  store i32 2, ptr %2, align 4
  %92 = load i16, ptr %74, align 8
  %93 = or i16 %92, 64
  store i16 %93, ptr %74, align 8
  br label %95

94:                                               ; preds = %50
  tail call void @pm_runtime_enable(ptr noundef %0)
  br label %95

95:                                               ; preds = %94, %91, %70, %1
  %96 = phi i32 [ %52, %94 ], [ 0, %1 ], [ 0, %91 ], [ 0, %70 ]
  ret i32 %96
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pm_runtime_force_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %5, label %81

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %7 = load i16, ptr %6, align 8
  %8 = and i16 %7, 64
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %81, label %10

10:                                               ; preds = %5
  %11 = and i16 %7, 7
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 25
  %15 = load i64, ptr %14, align 8
  %16 = tail call i64 @ktime_get_mono_fast_ns() #6
  store i64 %16, ptr %14, align 8
  %17 = icmp ult i64 %16, %15
  br i1 %17, label %27, label %18

18:                                               ; preds = %13
  %19 = sub i64 %16, %15
  %20 = load i32, ptr %2, align 4
  %21 = icmp eq i32 %20, 2
  %22 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 24
  %23 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 23
  %24 = select i1 %21, ptr %22, ptr %23
  %25 = load i64, ptr %24, align 8
  %26 = add i64 %19, %25
  store i64 %26, ptr %24, align 8
  br label %27

27:                                               ; preds = %18, %13, %10
  store i32 0, ptr %2, align 4
  %28 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 12
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %55

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.device_type, ptr %33, i32 0, i32 5
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %55

39:                                               ; preds = %35, %31
  %40 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 31
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.class, ptr %41, i32 0, i32 13
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %43, %39
  %48 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %60, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.bus_type, ptr %49, i32 0, i32 18
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %51, %43, %35, %27
  %56 = phi ptr [ %53, %51 ], [ %45, %43 ], [ %37, %35 ], [ %29, %27 ]
  %57 = getelementptr i8, ptr %56, i32 84
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %72

60:                                               ; preds = %55, %51, %47
  %61 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %62 = load ptr, ptr %61, align 8
  %63 = icmp eq ptr %62, null
  br i1 %63, label %78, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.device_driver, ptr %62, i32 0, i32 16
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %78, label %68

68:                                               ; preds = %64
  %69 = getelementptr i8, ptr %66, i32 84
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %78, label %72

72:                                               ; preds = %68, %55
  %73 = phi ptr [ %70, %68 ], [ %58, %55 ]
  %74 = tail call i32 %73(ptr noundef %0) #6
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %72
  %77 = tail call i32 @__pm_runtime_set_status(ptr noundef %0, i32 noundef 2) #6
  br label %81

78:                                               ; preds = %72, %68, %64, %60
  %79 = tail call i64 @ktime_get_mono_fast_ns() #6
  %80 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 22
  store volatile i64 %79, ptr %80, align 8
  br label %81

81:                                               ; preds = %78, %76, %5, %1
  %82 = phi i32 [ %74, %76 ], [ 0, %78 ], [ 0, %5 ], [ 0, %1 ]
  %83 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %84 = load i16, ptr %83, align 8
  %85 = and i16 %84, -65
  store i16 %85, ptr %83, align 8
  tail call void @pm_runtime_enable(ptr noundef %0)
  ret i32 %82
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_enable_wake_irq_check(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_enable_wake_irq_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_disable_wake_irq_check(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_irq_enter_irqson() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpm_suspend(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_irq_exit_irqson() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__srcu_read_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__srcu_read_unlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__rpm_callback(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 11, i32 16
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 11, i32 15
  %7 = load i16, ptr %6, align 8
  %8 = and i16 %7, 1024
  %9 = icmp eq i16 %8, 0
  %10 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 11, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6
  %11 = load i16, ptr %10, align 4
  %12 = add i16 %11, 1
  store i16 %12, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6
  br i1 %9, label %14, label %13

13:                                               ; preds = %2
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !20
  br label %90

14:                                               ; preds = %2
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #6, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  br i1 %5, label %90, label %15

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 11, i32 18
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %90

19:                                               ; preds = %15
  %20 = tail call i32 @device_links_read_lock() #6
  %21 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 10
  %22 = load volatile ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, %21
  br i1 %23, label %89, label %24

24:                                               ; preds = %60, %19
  %25 = phi ptr [ %61, %60 ], [ %22, %19 ]
  %26 = getelementptr i8, ptr %25, i32 484
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %60, label %30

30:                                               ; preds = %24
  %31 = getelementptr i8, ptr %25, i32 -16
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %33) #6, !srcloc !14
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %33, ptr %33, i32 1, ptr elementtype(i32) %33) #6, !srcloc !32
  %35 = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 11, i32 3
  %36 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %35) #6
  %37 = tail call fastcc i32 @rpm_resume(ptr noundef %32, i32 noundef 4) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %35, i32 noundef %36) #6
  %38 = icmp slt i32 %37, 0
  %39 = icmp ne i32 %37, -13
  %40 = and i1 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %30
  %42 = getelementptr i8, ptr %25, i32 -16
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.device, ptr %43, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %44) #6, !srcloc !14
  %45 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %44, ptr %44, i32 0, i32 -1, ptr elementtype(i32) %44) #6, !srcloc !15
  %46 = extractvalue { i32, i32, i32 } %45, 0
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %63, label %48

48:                                               ; preds = %41
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !16
  br label %63

49:                                               ; preds = %30
  %50 = getelementptr i8, ptr %25, i32 488
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %50) #6, !srcloc !14
  %51 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %50, ptr %50, i32 1, ptr elementtype(i32) %50) #6, !srcloc !37
  %52 = extractvalue { i32, i32, i32 } %51, 0
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54, !prof !17

54:                                               ; preds = %49
  %55 = add i32 %52, 1
  %56 = or i32 %55, %52
  %57 = icmp sgt i32 %56, -1
  br i1 %57, label %60, label %58, !prof !38

58:                                               ; preds = %54, %49
  %59 = phi i32 [ 2, %49 ], [ 1, %54 ]
  tail call void @refcount_warn_saturate(ptr noundef %50, i32 noundef %59) #6
  br label %60

60:                                               ; preds = %58, %54, %24
  %61 = load volatile ptr, ptr %25, align 8
  %62 = icmp eq ptr %61, %21
  br i1 %62, label %89, label %24

63:                                               ; preds = %48, %41
  %64 = load volatile ptr, ptr %21, align 8
  %65 = icmp eq ptr %64, %21
  br i1 %65, label %136, label %66

66:                                               ; preds = %83, %63
  %67 = phi ptr [ %87, %83 ], [ %64, %63 ]
  %68 = getelementptr i8, ptr %67, i32 -16
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds %struct.device, ptr %69, i32 0, i32 11, i32 13
  %71 = getelementptr i8, ptr %67, i32 488
  %72 = tail call zeroext i1 @refcount_dec_not_one(ptr noundef %71) #6
  br i1 %72, label %73, label %83

73:                                               ; preds = %81, %66
  %74 = load volatile i32, ptr %70, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %70) #6, !srcloc !14
  %77 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %70, ptr %70, i32 0, i32 -1, ptr elementtype(i32) %70) #6, !srcloc !15
  %78 = extractvalue { i32, i32, i32 } %77, 0
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !16
  br label %81

81:                                               ; preds = %80, %76
  %82 = tail call zeroext i1 @refcount_dec_not_one(ptr noundef %71) #6
  br i1 %82, label %73, label %83

83:                                               ; preds = %81, %73, %66
  %84 = getelementptr inbounds %struct.device, ptr %69, i32 0, i32 11, i32 3
  %85 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %84) #6
  %86 = tail call fastcc i32 @rpm_idle(ptr noundef %69, i32 noundef 1) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %84, i32 noundef %85) #6
  %87 = load volatile ptr, ptr %67, align 8
  %88 = icmp eq ptr %87, %21
  br i1 %88, label %136, label %66

89:                                               ; preds = %60, %19
  tail call void @device_links_read_unlock(i32 noundef %20) #6
  br label %90

90:                                               ; preds = %89, %15, %14, %13
  %91 = icmp eq ptr %0, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %90
  %93 = tail call i32 %0(ptr noundef %1) #6
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i32 [ %93, %92 ], [ 0, %90 ]
  %96 = load i16, ptr %6, align 8
  %97 = and i16 %96, 1024
  %98 = icmp eq i16 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %94
  tail call void @_raw_spin_lock(ptr noundef %10) #6
  br label %141

100:                                              ; preds = %94
  br i1 %5, label %139, label %101

101:                                              ; preds = %100
  %102 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 11, i32 18
  %103 = load i32, ptr %102, align 4
  %104 = icmp ne i32 %103, 3
  %105 = icmp ne i32 %95, 0
  %106 = select i1 %104, i1 true, i1 %105
  %107 = xor i1 %106, true
  %108 = icmp eq i32 %103, 1
  %109 = select i1 %108, i1 %105, i1 false
  %110 = select i1 %107, i1 true, i1 %109
  br i1 %110, label %111, label %139

111:                                              ; preds = %101
  %112 = tail call i32 @device_links_read_lock() #6
  %113 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 10
  %114 = load volatile ptr, ptr %113, align 8
  %115 = icmp eq ptr %114, %113
  br i1 %115, label %136, label %116

116:                                              ; preds = %133, %111
  %117 = phi ptr [ %134, %133 ], [ %114, %111 ]
  %118 = getelementptr i8, ptr %117, i32 -16
  %119 = load ptr, ptr %118, align 8
  %120 = getelementptr inbounds %struct.device, ptr %119, i32 0, i32 11, i32 13
  %121 = getelementptr i8, ptr %117, i32 488
  %122 = tail call zeroext i1 @refcount_dec_not_one(ptr noundef %121) #6
  br i1 %122, label %123, label %133

123:                                              ; preds = %131, %116
  %124 = load volatile i32, ptr %120, align 4
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %123
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %120) #6, !srcloc !14
  %127 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %120, ptr %120, i32 0, i32 -1, ptr elementtype(i32) %120) #6, !srcloc !15
  %128 = extractvalue { i32, i32, i32 } %127, 0
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %126
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !16
  br label %131

131:                                              ; preds = %130, %126
  %132 = tail call zeroext i1 @refcount_dec_not_one(ptr noundef %121) #6
  br i1 %132, label %123, label %133

133:                                              ; preds = %131, %123, %116
  %134 = load volatile ptr, ptr %117, align 8
  %135 = icmp eq ptr %134, %113
  br i1 %135, label %136, label %116

136:                                              ; preds = %133, %111, %83, %63
  %137 = phi i32 [ %95, %111 ], [ %37, %63 ], [ %95, %133 ], [ %37, %83 ]
  %138 = phi i32 [ %112, %111 ], [ %20, %63 ], [ %112, %133 ], [ %20, %83 ]
  tail call void @device_links_read_unlock(i32 noundef %138) #6
  br label %139

139:                                              ; preds = %136, %101, %100
  %140 = phi i32 [ %137, %136 ], [ %95, %100 ], [ %95, %101 ]
  tail call void @_raw_spin_lock_irq(ptr noundef %10) #6
  br label %141

141:                                              ; preds = %139, %99
  %142 = phi i32 [ %95, %99 ], [ %140, %139 ]
  ret i32 %142
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_try_to_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpm_return_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__dev_pm_qos_resume_latency(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpm_usage(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpm_idle(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpm_resume(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind "function-inline-cost-multiplier"="2" }

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
!8 = !{i64 2149229276}
!9 = !{i64 2149225100}
!10 = !{i64 2149225175, i64 2149225202, i64 2149225249, i64 2149225271, i64 2149225299, i64 2149225319}
!11 = !{i64 370140}
!12 = !{i64 2149253420}
!13 = !{i64 2147976346}
!14 = !{i64 474656, i64 2147964627, i64 2147964653, i64 2147964700, i64 2147964722, i64 2147964750, i64 2147964770}
!15 = !{i64 461225, i64 461250, i64 461272, i64 461288, i64 461300, i64 461320, i64 461344, i64 461360, i64 461372}
!16 = !{i64 2147976472}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i64 2151275365}
!19 = !{i64 2151275519}
!20 = !{i64 2149252279}
!21 = !{i64 2151505199}
!22 = !{i64 2151505041}
!23 = !{i64 2151342121}
!24 = !{i64 2151342285}
!25 = !{i64 2148077494}
!26 = !{i64 2147979880, i64 2147979912, i64 2147979941, i64 2147979975, i64 2147980006, i64 2147980029}
!27 = !{i64 2148077697}
!28 = !{i64 2151325933}
!29 = !{i64 2151326083}
!30 = !{i64 2151310449}
!31 = !{i64 2151310597}
!32 = !{i64 2147976839, i64 2147976865, i64 2147976894, i64 2147976928, i64 2147976959, i64 2147976982}
!33 = !{i64 2151290963}
!34 = !{i64 2151291115}
!35 = !{i64 2151506336}
!36 = !{i64 2151506178}
!37 = !{i64 2147978297, i64 2147978329, i64 2147978358, i64 2147978392, i64 2147978423, i64 2147978446}
!38 = !{!"branch_weights", i32 2000, i32 1}
!39 = !{i64 2147979196, i64 2147979222, i64 2147979251, i64 2147979285, i64 2147979316, i64 2147979339}
!40 = !{i8 0, i8 2}
