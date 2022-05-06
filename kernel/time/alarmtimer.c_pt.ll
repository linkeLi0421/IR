; ModuleID = '/llk/IR/kernel/time/alarmtimer.c_pt.bc'
source_filename = "../kernel/time/alarmtimer.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_alarmtimer_get_rtcdev:\09\09\09\09\09"
module asm "\09.asciz \09\22alarmtimer_get_rtcdev\22\09\09\09\09\09"
module asm "__kstrtabns_alarmtimer_get_rtcdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_alarm_expires_remaining:\09\09\09\09\09"
module asm "\09.asciz \09\22alarm_expires_remaining\22\09\09\09\09\09"
module asm "__kstrtabns_alarm_expires_remaining:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_alarm_init:\09\09\09\09\09"
module asm "\09.asciz \09\22alarm_init\22\09\09\09\09\09"
module asm "__kstrtabns_alarm_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_alarm_start:\09\09\09\09\09"
module asm "\09.asciz \09\22alarm_start\22\09\09\09\09\09"
module asm "__kstrtabns_alarm_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_alarm_start_relative:\09\09\09\09\09"
module asm "\09.asciz \09\22alarm_start_relative\22\09\09\09\09\09"
module asm "__kstrtabns_alarm_start_relative:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_alarm_restart:\09\09\09\09\09"
module asm "\09.asciz \09\22alarm_restart\22\09\09\09\09\09"
module asm "__kstrtabns_alarm_restart:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_alarm_try_to_cancel:\09\09\09\09\09"
module asm "\09.asciz \09\22alarm_try_to_cancel\22\09\09\09\09\09"
module asm "__kstrtabns_alarm_try_to_cancel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_alarm_cancel:\09\09\09\09\09"
module asm "\09.asciz \09\22alarm_cancel\22\09\09\09\09\09"
module asm "__kstrtabns_alarm_cancel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_alarm_forward:\09\09\09\09\09"
module asm "\09.asciz \09\22alarm_forward\22\09\09\09\09\09"
module asm "__kstrtabns_alarm_forward:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_alarm_forward_now:\09\09\09\09\09"
module asm "\09.asciz \09\22alarm_forward_now\22\09\09\09\09\09"
module asm "__kstrtabns_alarm_forward_now:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.trace_eval_map = type { ptr, ptr, i32 }
%struct.trace_event_fields = type { ptr, %union.anon.0 }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.1, %struct.trace_event, ptr, ptr, %union.anon.2, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.1 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.2 = type { ptr }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.alarm_base = type { %struct.spinlock, %struct.timerqueue_head, ptr, ptr, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.k_clock = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.trace_print_flags = type { i32, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.class_interface = type { %struct.list_head, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_alarmtimer_suspend = type { %struct.trace_entry, i64, i8, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.trace_event_raw_alarm_class = type { %struct.trace_entry, ptr, i8, i64, i64, [0 x i8] }
%struct.alarm = type { %struct.timerqueue_node, %struct.hrtimer, ptr, i32, i32, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.k_itimer = type { %struct.list_head, %struct.hlist_node, %struct.spinlock, ptr, i32, i32, i32, i64, i64, i32, i32, i64, ptr, %union.anon.97, ptr, %union.anon.98, %struct.callback_head }
%union.anon.97 = type { ptr }
%union.anon.98 = type { %struct.anon.100 }
%struct.anon.100 = type { %struct.alarm }
%struct.callback_head = type { ptr, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.23 }
%struct.llist_node = type { ptr }
%union.anon.23 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.24 }
%union.anon.24 = type { %struct.anon.25 }
%struct.anon.25 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8 }
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
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__tpstrtab_alarmtimer_suspend = internal constant [19 x i8] c"alarmtimer_suspend\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_alarmtimer_suspend = dso_local global %struct.static_call_key { ptr @__traceiter_alarmtimer_suspend }, align 4
@__tracepoint_alarmtimer_suspend = dso_local global %struct.tracepoint { ptr @__tpstrtab_alarmtimer_suspend, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_alarmtimer_suspend, ptr null, ptr @__traceiter_alarmtimer_suspend, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_alarmtimer_suspend = internal constant ptr @__tracepoint_alarmtimer_suspend, section "__tracepoints_ptrs", align 4
@__tpstrtab_alarmtimer_fired = internal constant [17 x i8] c"alarmtimer_fired\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_alarmtimer_fired = dso_local global %struct.static_call_key { ptr @__traceiter_alarmtimer_fired }, align 4
@__tracepoint_alarmtimer_fired = dso_local global %struct.tracepoint { ptr @__tpstrtab_alarmtimer_fired, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_alarmtimer_fired, ptr null, ptr @__traceiter_alarmtimer_fired, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_alarmtimer_fired = internal constant ptr @__tracepoint_alarmtimer_fired, section "__tracepoints_ptrs", align 4
@__tpstrtab_alarmtimer_start = internal constant [17 x i8] c"alarmtimer_start\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_alarmtimer_start = dso_local global %struct.static_call_key { ptr @__traceiter_alarmtimer_start }, align 4
@__tracepoint_alarmtimer_start = dso_local global %struct.tracepoint { ptr @__tpstrtab_alarmtimer_start, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_alarmtimer_start, ptr null, ptr @__traceiter_alarmtimer_start, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_alarmtimer_start = internal constant ptr @__tracepoint_alarmtimer_start, section "__tracepoints_ptrs", align 4
@__tpstrtab_alarmtimer_cancel = internal constant [18 x i8] c"alarmtimer_cancel\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_alarmtimer_cancel = dso_local global %struct.static_call_key { ptr @__traceiter_alarmtimer_cancel }, align 4
@__tracepoint_alarmtimer_cancel = dso_local global %struct.tracepoint { ptr @__tpstrtab_alarmtimer_cancel, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_alarmtimer_cancel, ptr null, ptr @__traceiter_alarmtimer_cancel, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_alarmtimer_cancel = internal constant ptr @__tracepoint_alarmtimer_cancel, section "__tracepoints_ptrs", align 4
@.str = private unnamed_addr constant [15 x i8] c"ALARM_REALTIME\00", align 1
@__TRACE_SYSTEM_ALARM_REALTIME = internal global %struct.trace_eval_map { ptr @.str.21, ptr @.str, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_ALARM_REALTIME = internal global ptr @__TRACE_SYSTEM_ALARM_REALTIME, section "_ftrace_eval_map", align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"ALARM_BOOTTIME\00", align 1
@__TRACE_SYSTEM_ALARM_BOOTTIME = internal global %struct.trace_eval_map { ptr @.str.21, ptr @.str.1, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_ALARM_BOOTTIME = internal global ptr @__TRACE_SYSTEM_ALARM_BOOTTIME, section "_ftrace_eval_map", align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"ALARM_REALTIME_FREEZER\00", align 1
@__TRACE_SYSTEM_ALARM_REALTIME_FREEZER = internal global %struct.trace_eval_map { ptr @.str.21, ptr @.str.2, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_ALARM_REALTIME_FREEZER = internal global ptr @__TRACE_SYSTEM_ALARM_REALTIME_FREEZER, section "_ftrace_eval_map", align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"ALARM_BOOTTIME_FREEZER\00", align 1
@__TRACE_SYSTEM_ALARM_BOOTTIME_FREEZER = internal global %struct.trace_eval_map { ptr @.str.21, ptr @.str.3, i32 4 }, section ".init.data", align 4
@TRACE_SYSTEM_ALARM_BOOTTIME_FREEZER = internal global ptr @__TRACE_SYSTEM_ALARM_BOOTTIME_FREEZER, section "_ftrace_eval_map", align 4
@trace_event_fields_alarmtimer_suspend = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.4, %union.anon.0 { %struct.anon { ptr @.str.5, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.0 { %struct.anon { ptr @.str.7, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_alarmtimer_suspend = internal global %struct.trace_event_class { ptr @.str.21, ptr @trace_event_raw_event_alarmtimer_suspend, ptr @perf_trace_alarmtimer_suspend, ptr @trace_event_reg, ptr @trace_event_fields_alarmtimer_suspend, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_alarmtimer_suspend, i64 24), ptr getelementptr (i8, ptr @event_class_alarmtimer_suspend, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_alarmtimer_suspend = internal global %struct.trace_event_functions { ptr @trace_raw_output_alarmtimer_suspend, ptr null, ptr null, ptr null }, align 4
@print_fmt_alarmtimer_suspend = internal global [274 x i8] c"\22alarmtimer type:%s expires:%llu\22, __print_flags((1 << REC->alarm_type), \22 | \22, { 1 << ALARM_REALTIME, \22REALTIME\22 }, { 1 << ALARM_BOOTTIME, \22BOOTTIME\22 }, { 1 << ALARM_REALTIME_FREEZER, \22REALTIME Freezer\22 }, { 1 << ALARM_BOOTTIME_FREEZER, \22BOOTTIME Freezer\22 }), REC->expires\00", align 1
@event_alarmtimer_suspend = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_alarmtimer_suspend, %union.anon.1 { ptr @__tracepoint_alarmtimer_suspend }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_alarmtimer_suspend }, ptr @print_fmt_alarmtimer_suspend, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_alarmtimer_suspend = internal global ptr @event_alarmtimer_suspend, section "_ftrace_events", align 4
@trace_event_fields_alarm_class = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.14, %union.anon.0 { %struct.anon { ptr @.str.15, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.0 { %struct.anon { ptr @.str.7, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.0 { %struct.anon { ptr @.str.5, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.0 { %struct.anon { ptr @.str.16, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_alarm_class = internal global %struct.trace_event_class { ptr @.str.21, ptr @trace_event_raw_event_alarm_class, ptr @perf_trace_alarm_class, ptr @trace_event_reg, ptr @trace_event_fields_alarm_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_alarm_class, i64 24), ptr getelementptr (i8, ptr @event_class_alarm_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_alarm_class = internal global %struct.trace_event_functions { ptr @trace_raw_output_alarm_class, ptr null, ptr null, ptr null }, align 4
@print_fmt_alarm_class = internal global [308 x i8] c"\22alarmtimer:%p type:%s expires:%llu now:%llu\22, REC->alarm, __print_flags((1 << REC->alarm_type), \22 | \22, { 1 << ALARM_REALTIME, \22REALTIME\22 }, { 1 << ALARM_BOOTTIME, \22BOOTTIME\22 }, { 1 << ALARM_REALTIME_FREEZER, \22REALTIME Freezer\22 }, { 1 << ALARM_BOOTTIME_FREEZER, \22BOOTTIME Freezer\22 }), REC->expires, REC->now\00", align 1
@event_alarmtimer_fired = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_alarm_class, %union.anon.1 { ptr @__tracepoint_alarmtimer_fired }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_alarm_class }, ptr @print_fmt_alarm_class, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_alarmtimer_fired = internal global ptr @event_alarmtimer_fired, section "_ftrace_events", align 4
@event_alarmtimer_start = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_alarm_class, %union.anon.1 { ptr @__tracepoint_alarmtimer_start }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_alarm_class }, ptr @print_fmt_alarm_class, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_alarmtimer_start = internal global ptr @event_alarmtimer_start, section "_ftrace_events", align 4
@event_alarmtimer_cancel = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_alarm_class, %union.anon.1 { ptr @__tracepoint_alarmtimer_cancel }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_alarm_class }, ptr @print_fmt_alarm_class, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_alarmtimer_cancel = internal global ptr @event_alarmtimer_cancel, section "_ftrace_events", align 4
@rtcdev_lock = internal global %struct.spinlock zeroinitializer, align 4
@rtcdev = internal unnamed_addr global ptr null, align 4
@__kstrtab_alarmtimer_get_rtcdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_alarmtimer_get_rtcdev = external dso_local constant [0 x i8], align 1
@__ksymtab_alarmtimer_get_rtcdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @alarmtimer_get_rtcdev to i32), ptr @__kstrtab_alarmtimer_get_rtcdev, ptr @__kstrtabns_alarmtimer_get_rtcdev }, section "___ksymtab_gpl+alarmtimer_get_rtcdev", align 4
@alarm_bases = internal global [2 x %struct.alarm_base] zeroinitializer, align 4
@__kstrtab_alarm_expires_remaining = external dso_local constant [0 x i8], align 1
@__kstrtabns_alarm_expires_remaining = external dso_local constant [0 x i8], align 1
@__ksymtab_alarm_expires_remaining = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @alarm_expires_remaining to i32), ptr @__kstrtab_alarm_expires_remaining, ptr @__kstrtabns_alarm_expires_remaining }, section "___ksymtab_gpl+alarm_expires_remaining", align 4
@__kstrtab_alarm_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_alarm_init = external dso_local constant [0 x i8], align 1
@__ksymtab_alarm_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @alarm_init to i32), ptr @__kstrtab_alarm_init, ptr @__kstrtabns_alarm_init }, section "___ksymtab_gpl+alarm_init", align 4
@__kstrtab_alarm_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_alarm_start = external dso_local constant [0 x i8], align 1
@__ksymtab_alarm_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @alarm_start to i32), ptr @__kstrtab_alarm_start, ptr @__kstrtabns_alarm_start }, section "___ksymtab_gpl+alarm_start", align 4
@__kstrtab_alarm_start_relative = external dso_local constant [0 x i8], align 1
@__kstrtabns_alarm_start_relative = external dso_local constant [0 x i8], align 1
@__ksymtab_alarm_start_relative = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @alarm_start_relative to i32), ptr @__kstrtab_alarm_start_relative, ptr @__kstrtabns_alarm_start_relative }, section "___ksymtab_gpl+alarm_start_relative", align 4
@__kstrtab_alarm_restart = external dso_local constant [0 x i8], align 1
@__kstrtabns_alarm_restart = external dso_local constant [0 x i8], align 1
@__ksymtab_alarm_restart = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @alarm_restart to i32), ptr @__kstrtab_alarm_restart, ptr @__kstrtabns_alarm_restart }, section "___ksymtab_gpl+alarm_restart", align 4
@__kstrtab_alarm_try_to_cancel = external dso_local constant [0 x i8], align 1
@__kstrtabns_alarm_try_to_cancel = external dso_local constant [0 x i8], align 1
@__ksymtab_alarm_try_to_cancel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @alarm_try_to_cancel to i32), ptr @__kstrtab_alarm_try_to_cancel, ptr @__kstrtabns_alarm_try_to_cancel }, section "___ksymtab_gpl+alarm_try_to_cancel", align 4
@__kstrtab_alarm_cancel = external dso_local constant [0 x i8], align 1
@__kstrtabns_alarm_cancel = external dso_local constant [0 x i8], align 1
@__ksymtab_alarm_cancel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @alarm_cancel to i32), ptr @__kstrtab_alarm_cancel, ptr @__kstrtabns_alarm_cancel }, section "___ksymtab_gpl+alarm_cancel", align 4
@__kstrtab_alarm_forward = external dso_local constant [0 x i8], align 1
@__kstrtabns_alarm_forward = external dso_local constant [0 x i8], align 1
@__ksymtab_alarm_forward = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @alarm_forward to i32), ptr @__kstrtab_alarm_forward, ptr @__kstrtabns_alarm_forward }, section "___ksymtab_gpl+alarm_forward", align 4
@__kstrtab_alarm_forward_now = external dso_local constant [0 x i8], align 1
@__kstrtabns_alarm_forward_now = external dso_local constant [0 x i8], align 1
@__ksymtab_alarm_forward_now = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @alarm_forward_now to i32), ptr @__kstrtab_alarm_forward_now, ptr @__kstrtabns_alarm_forward_now }, section "___ksymtab_gpl+alarm_forward_now", align 4
@alarm_clock = dso_local local_unnamed_addr constant %struct.k_clock { ptr @alarm_clock_getres, ptr null, ptr @alarm_clock_get_timespec, ptr @alarm_clock_get_ktime, ptr null, ptr @alarm_timer_create, ptr @alarm_timer_nsleep, ptr @common_timer_set, ptr @common_timer_del, ptr @common_timer_get, ptr @alarm_timer_rearm, ptr @alarm_timer_forward, ptr @alarm_timer_remaining, ptr @alarm_timer_try_to_cancel, ptr @alarm_timer_arm, ptr @alarm_timer_wait_running }, align 4
@__initcall__kmod_alarmtimer__263_939_alarmtimer_init6 = internal global ptr @alarmtimer_init, section ".initcall6.init", align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"s64\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"expires\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"unsigned char\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"alarm_type\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"alarmtimer type:%s expires:%llu\0A\00", align 1
@trace_raw_output_alarmtimer_suspend.__flags = internal constant [5 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 1, ptr @.str.9 }, %struct.trace_print_flags { i32 2, ptr @.str.10 }, %struct.trace_print_flags { i32 8, ptr @.str.11 }, %struct.trace_print_flags { i32 16, ptr @.str.12 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"REALTIME\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"BOOTTIME\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"REALTIME Freezer\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"BOOTTIME Freezer\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c" | \00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"void *\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"alarm\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"now\00", align 1
@.str.17 = private unnamed_addr constant [45 x i8] c"alarmtimer:%p type:%s expires:%llu now:%llu\0A\00", align 1
@trace_raw_output_alarm_class.__flags = internal constant [5 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 1, ptr @.str.9 }, %struct.trace_print_flags { i32 2, ptr @.str.10 }, %struct.trace_print_flags { i32 8, ptr @.str.11 }, %struct.trace_print_flags { i32 16, ptr @.str.12 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@hrtimer_resolution = external dso_local local_unnamed_addr global i32, align 4
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@alarmtimer_freezerset.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"kernel/time/alarmtimer.c\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"Invalid alarm type: %d\0A\00", align 1
@freezer_delta_lock = internal global %struct.spinlock zeroinitializer, align 4
@freezer_delta = internal unnamed_addr global i64 0, align 8
@freezer_expires = internal unnamed_addr global i64 0, align 8
@freezer_alarmtype = internal unnamed_addr global i32 0, align 4
@alarmtimer_driver = internal global %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.21, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @alarmtimer_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@rtctimer = internal global %struct.rtc_timer zeroinitializer, align 8
@rtc_class = external dso_local local_unnamed_addr global ptr, align 4
@alarmtimer_rtc_interface = internal global %struct.class_interface { %struct.list_head zeroinitializer, ptr null, ptr @alarmtimer_rtc_add_device, ptr null }, align 4
@.str.21 = private constant [11 x i8] c"alarmtimer\00", align 1
@alarmtimer_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @alarmtimer_suspend, ptr @alarmtimer_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@llvm.compiler.used = appending global [37 x ptr] [ptr @TRACE_SYSTEM_ALARM_BOOTTIME, ptr @TRACE_SYSTEM_ALARM_BOOTTIME_FREEZER, ptr @TRACE_SYSTEM_ALARM_REALTIME, ptr @TRACE_SYSTEM_ALARM_REALTIME_FREEZER, ptr @__TRACE_SYSTEM_ALARM_BOOTTIME, ptr @__TRACE_SYSTEM_ALARM_BOOTTIME_FREEZER, ptr @__TRACE_SYSTEM_ALARM_REALTIME, ptr @__TRACE_SYSTEM_ALARM_REALTIME_FREEZER, ptr @__event_alarmtimer_cancel, ptr @__event_alarmtimer_fired, ptr @__event_alarmtimer_start, ptr @__event_alarmtimer_suspend, ptr @__initcall__kmod_alarmtimer__263_939_alarmtimer_init6, ptr @__ksymtab_alarm_cancel, ptr @__ksymtab_alarm_expires_remaining, ptr @__ksymtab_alarm_forward, ptr @__ksymtab_alarm_forward_now, ptr @__ksymtab_alarm_init, ptr @__ksymtab_alarm_restart, ptr @__ksymtab_alarm_start, ptr @__ksymtab_alarm_start_relative, ptr @__ksymtab_alarm_try_to_cancel, ptr @__ksymtab_alarmtimer_get_rtcdev, ptr @__tracepoint_alarmtimer_cancel, ptr @__tracepoint_alarmtimer_fired, ptr @__tracepoint_alarmtimer_start, ptr @__tracepoint_alarmtimer_suspend, ptr @__tracepoint_ptr_alarmtimer_cancel, ptr @__tracepoint_ptr_alarmtimer_fired, ptr @__tracepoint_ptr_alarmtimer_start, ptr @__tracepoint_ptr_alarmtimer_suspend, ptr @event_alarmtimer_cancel, ptr @event_alarmtimer_fired, ptr @event_alarmtimer_start, ptr @event_alarmtimer_suspend, ptr @event_class_alarm_class, ptr @event_class_alarmtimer_suspend], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_alarmtimer_suspend(ptr nocapture readnone %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_alarmtimer_suspend, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i64 noundef %1, i32 noundef %2) #10
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_alarmtimer_fired(ptr nocapture readnone %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_alarmtimer_fired, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i64 noundef %2) #10
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_alarmtimer_start(ptr nocapture readnone %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_alarmtimer_start, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i64 noundef %2) #10
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_alarmtimer_cancel(ptr nocapture readnone %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_alarmtimer_cancel, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i64 noundef %2) #10
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_alarmtimer_suspend(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !10

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !11

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #10
  br i1 %13, label %21, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 24) #10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_alarmtimer_suspend, ptr %15, i32 0, i32 1
  store i64 %1, ptr %18, align 8
  %19 = trunc i32 %2 to i8
  %20 = getelementptr inbounds %struct.trace_event_raw_alarmtimer_suspend, ptr %15, i32 0, i32 2
  store i8 %19, ptr %20, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #10
  br label %21

21:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_alarmtimer_suspend(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #6, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %39, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %39, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #10
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #10
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_alarmtimer_suspend, ptr %21, i32 0, i32 1
  store i64 %1, ptr %34, align 8
  %35 = trunc i32 %2 to i8
  %36 = getelementptr inbounds %struct.trace_event_raw_alarmtimer_suspend, ptr %21, i32 0, i32 2
  store i8 %35, ptr %36, align 8
  %37 = load i32, ptr %5, align 4
  %38 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 28, i32 noundef %37, ptr noundef %0, i64 noundef 1, ptr noundef %38, ptr noundef %13, ptr noundef null) #10
  br label %39

39:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_alarm_class(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !10

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !11

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #10
  br i1 %13, label %27, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 32) #10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %27, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_alarm_class, ptr %15, i32 0, i32 1
  store ptr %1, ptr %18, align 8
  %19 = getelementptr inbounds %struct.alarm, ptr %1, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.trace_event_raw_alarm_class, ptr %15, i32 0, i32 2
  store i8 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.timerqueue_node, ptr %1, i32 0, i32 1
  %24 = load i64, ptr %23, align 8
  %25 = getelementptr inbounds %struct.trace_event_raw_alarm_class, ptr %15, i32 0, i32 3
  store i64 %24, ptr %25, align 8
  %26 = getelementptr inbounds %struct.trace_event_raw_alarm_class, ptr %15, i32 0, i32 4
  store i64 %2, ptr %26, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #10
  br label %27

27:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_alarm_class(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #6, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %45, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %45, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #10
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #10
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_alarm_class, ptr %21, i32 0, i32 1
  store ptr %1, ptr %34, align 8
  %35 = getelementptr inbounds %struct.alarm, ptr %1, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds %struct.trace_event_raw_alarm_class, ptr %21, i32 0, i32 2
  store i8 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.timerqueue_node, ptr %1, i32 0, i32 1
  %40 = load i64, ptr %39, align 8
  %41 = getelementptr inbounds %struct.trace_event_raw_alarm_class, ptr %21, i32 0, i32 3
  store i64 %40, ptr %41, align 8
  %42 = getelementptr inbounds %struct.trace_event_raw_alarm_class, ptr %21, i32 0, i32 4
  store i64 %2, ptr %42, align 8
  %43 = load i32, ptr %5, align 4
  %44 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 36, i32 noundef %43, ptr noundef %0, i64 noundef 1, ptr noundef %44, ptr noundef %13, ptr noundef null) #10
  br label %45

45:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @alarmtimer_get_rtcdev() #0 {
  %1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @rtcdev_lock) #10
  %2 = load ptr, ptr @rtcdev, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @rtcdev_lock, i32 noundef %1) #10
  ret ptr %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @alarm_expires_remaining(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.alarm, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.timerqueue_node, ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 8
  %6 = getelementptr [2 x %struct.alarm_base], ptr @alarm_bases, i32 0, i32 %3, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i64 %7() #10
  %9 = sub i64 %5, %8
  ret i64 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @alarm_init(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.alarm, ptr %0, i32 0, i32 1
  %5 = getelementptr [2 x %struct.alarm_base], ptr @alarm_bases, i32 0, i32 %1, i32 4
  %6 = load i32, ptr %5, align 4
  tail call void @hrtimer_init(ptr noundef %4, i32 noundef %6, i32 noundef 0) #10
  %7 = ptrtoint ptr %0 to i32
  store i32 %7, ptr %0, align 8
  %8 = getelementptr inbounds %struct.alarm, ptr %0, i32 0, i32 1, i32 2
  store ptr @alarmtimer_fired, ptr %8, align 8
  %9 = getelementptr inbounds %struct.alarm, ptr %0, i32 0, i32 2
  store ptr %2, ptr %9, align 8
  %10 = getelementptr inbounds %struct.alarm, ptr %0, i32 0, i32 3
  store i32 %1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.alarm, ptr %0, i32 0, i32 4
  store i32 0, ptr %11, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @alarm_start(ptr noundef %0, i64 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.alarm, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr [2 x %struct.alarm_base], ptr @alarm_bases, i32 0, i32 %4
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #10
  %7 = getelementptr inbounds %struct.timerqueue_node, ptr %0, i32 0, i32 1
  store i64 %1, ptr %7, align 8
  %8 = getelementptr inbounds %struct.alarm, ptr %0, i32 0, i32 4
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = getelementptr [2 x %struct.alarm_base], ptr @alarm_bases, i32 0, i32 %4, i32 1
  %14 = tail call zeroext i1 @timerqueue_del(ptr noundef %13, ptr noundef %0) #10
  br label %15

15:                                               ; preds = %12, %2
  %16 = getelementptr [2 x %struct.alarm_base], ptr @alarm_bases, i32 0, i32 %4, i32 1
  %17 = tail call zeroext i1 @timerqueue_add(ptr noundef %16, ptr noundef %0) #10
  %18 = load i32, ptr %8, align 8
  %19 = or i32 %18, 1
  store i32 %19, ptr %8, align 8
  %20 = getelementptr inbounds %struct.alarm, ptr %0, i32 0, i32 1
  %21 = load i64, ptr %7, align 8
  tail call void @hrtimer_start_range_ns(ptr noundef %20, i64 noundef %21, i64 noundef 0, i32 noundef 0) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #10
  %22 = getelementptr [2 x %struct.alarm_base], ptr @alarm_bases, i32 0, i32 %4, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i64 %23() #10
  %25 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_alarmtimer_start, i32 0, i32 1), align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %15
  %28 = tail call ptr @llvm.thread.pointer() #10
  %29 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %30 = load i32, ptr %29, align 8
  %31 = lshr i32 %30, 5
  %32 = getelementptr i32, ptr @__cpu_online_mask, i32 %31
  %33 = load volatile i32, ptr %32, align 4
  %34 = and i32 %30, 31
  %35 = shl nuw i32 1, %34
  %36 = and i32 %35, %33
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %50, label %38

38:                                               ; preds = %27
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  %39 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_alarmtimer_start, i32 0, i32 7), align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %49, label %41

41:                                               ; preds = %41, %38
  %42 = phi ptr [ %46, %41 ], [ %39, %38 ]
  %43 = load volatile ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.tracepoint_func, ptr %42, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  tail call void %43(ptr noundef %45, ptr noundef %0, i64 noundef %24) #10
  %46 = getelementptr %struct.tracepoint_func, ptr %42, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %41

49:                                               ; preds = %41, %38
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  br label %50

50:                                               ; preds = %49, %27, %15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @alarm_start_relative(ptr noundef %0, i64 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.alarm, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr [2 x %struct.alarm_base], ptr @alarm_bases, i32 0, i32 %4, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i64 %6() #10
  %8 = tail call i64 @ktime_add_safe(i64 noundef %1, i64 noundef %7) #10
  tail call void @alarm_start(ptr noundef %0, i64 noundef %8)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_add_safe(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @alarm_restart(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.alarm, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr [2 x %struct.alarm_base], ptr @alarm_bases, i32 0, i32 %3
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #10
  %6 = getelementptr inbounds %struct.alarm, ptr %0, i32 0, i32 1
  %7 = getelementptr inbounds %struct.timerqueue_node, ptr %0, i32 0, i32 1
  %8 = load i64, ptr %7, align 8
  %9 = getelementptr inbounds %struct.alarm, ptr %0, i32 0, i32 1, i32 0, i32 1
  store i64 %8, ptr %9, align 8
  %10 = getelementptr inbounds %struct.alarm, ptr %0, i32 0, i32 1, i32 1
  store i64 %8, ptr %10, align 8
  tail call void @hrtimer_start_range_ns(ptr noundef %6, i64 noundef %8, i64 noundef 0, i32 noundef 0) #10
  %11 = getelementptr inbounds %struct.alarm, ptr %0, i32 0, i32 4
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = getelementptr [2 x %struct.alarm_base], ptr @alarm_bases, i32 0, i32 %3, i32 1
  %17 = tail call zeroext i1 @timerqueue_del(ptr noundef %16, ptr noundef %0) #10
  br label %18

18:                                               ; preds = %15, %1
  %19 = getelementptr [2 x %struct.alarm_base], ptr @alarm_bases, i32 0, i32 %3, i32 1
  %20 = tail call zeroext i1 @timerqueue_add(ptr noundef %19, ptr noundef %0) #10
  %21 = load i32, ptr %11, align 8
  %22 = or i32 %21, 1
  store i32 %22, ptr %11, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @alarm_try_to_cancel(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.alarm, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr [2 x %struct.alarm_base], ptr @alarm_bases, i32 0, i32 %3
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #10
  %6 = getelementptr inbounds %struct.alarm, ptr %0, i32 0, i32 1
  %7 = tail call i32 @hrtimer_try_to_cancel(ptr noundef %6) #10
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.alarm, ptr %0, i32 0, i32 4
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %9
  %15 = getelementptr [2 x %struct.alarm_base], ptr @alarm_bases, i32 0, i32 %3, i32 1
  %16 = tail call zeroext i1 @timerqueue_del(ptr noundef %15, ptr noundef %0) #10
  %17 = load i32, ptr %10, align 8
  %18 = and i32 %17, -2
  store i32 %18, ptr %10, align 8
  br label %19

19:                                               ; preds = %14, %9, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #10
  %20 = getelementptr [2 x %struct.alarm_base], ptr @alarm_bases, i32 0, i32 %3, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i64 %21() #10
  %23 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_alarmtimer_cancel, i32 0, i32 1), align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %48

25:                                               ; preds = %19
  %26 = tail call ptr @llvm.thread.pointer() #10
  %27 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %28 = load i32, ptr %27, align 8
  %29 = lshr i32 %28, 5
  %30 = getelementptr i32, ptr @__cpu_online_mask, i32 %29
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %28, 31
  %33 = shl nuw i32 1, %32
  %34 = and i32 %33, %31
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %25
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  %37 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_alarmtimer_cancel, i32 0, i32 7), align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %47, label %39

39:                                               ; preds = %39, %36
  %40 = phi ptr [ %44, %39 ], [ %37, %36 ]
  %41 = load volatile ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.tracepoint_func, ptr %40, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  tail call void %41(ptr noundef %43, ptr noundef %0, i64 noundef %22) #10
  %44 = getelementptr %struct.tracepoint_func, ptr %40, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %39

47:                                               ; preds = %39, %36
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  br label %48

48:                                               ; preds = %47, %25, %19
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_try_to_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @alarm_cancel(ptr noundef %0) #0 {
  %2 = tail call i32 @alarm_try_to_cancel(ptr noundef %0)
  %3 = icmp sgt i32 %2, -1
  br i1 %3, label %7, label %4

4:                                                ; preds = %4, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !17
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !18
  %5 = tail call i32 @alarm_try_to_cancel(ptr noundef %0)
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %4

7:                                                ; preds = %4, %1
  %8 = phi i32 [ %2, %1 ], [ %5, %4 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @alarm_forward(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.timerqueue_node, ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 8
  %6 = sub i64 %1, %5
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %3
  %9 = icmp slt i64 %6, %2
  br i1 %9, label %20, label %10, !prof !10

10:                                               ; preds = %8
  %11 = icmp slt i64 %2, 0
  br i1 %11, label %12, label %13, !prof !11

12:                                               ; preds = %10
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/ktime.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 136, 0\0A.popsection", ""() #10, !srcloc !19
  unreachable

13:                                               ; preds = %10
  %14 = tail call i64 @__ktime_divns(i64 noundef %6, i64 noundef %2) #10
  %15 = load i64, ptr %4, align 8
  %16 = mul i64 %14, %2
  %17 = add i64 %15, %16
  store i64 %17, ptr %4, align 8
  %18 = icmp sgt i64 %17, %1
  %19 = add i64 %14, 1
  br i1 %18, label %24, label %20

20:                                               ; preds = %13, %8
  %21 = phi i64 [ %17, %13 ], [ %5, %8 ]
  %22 = phi i64 [ %19, %13 ], [ 1, %8 ]
  %23 = tail call i64 @ktime_add_safe(i64 noundef %21, i64 noundef %2) #10
  store i64 %23, ptr %4, align 8
  br label %24

24:                                               ; preds = %20, %13, %3
  %25 = phi i64 [ %22, %20 ], [ %14, %13 ], [ 0, %3 ]
  ret i64 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @alarm_forward_now(ptr nocapture noundef %0, i64 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.alarm, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr [2 x %struct.alarm_base], ptr @alarm_bases, i32 0, i32 %4, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i64 %6() #10
  %8 = getelementptr inbounds %struct.timerqueue_node, ptr %0, i32 0, i32 1
  %9 = load i64, ptr %8, align 8
  %10 = sub i64 %7, %9
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %2
  %13 = icmp slt i64 %10, %1
  br i1 %13, label %24, label %14, !prof !10

14:                                               ; preds = %12
  %15 = icmp slt i64 %1, 0
  br i1 %15, label %16, label %17, !prof !11

16:                                               ; preds = %14
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/ktime.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 136, 0\0A.popsection", ""() #10, !srcloc !19
  unreachable

17:                                               ; preds = %14
  %18 = tail call i64 @__ktime_divns(i64 noundef %10, i64 noundef %1) #10
  %19 = load i64, ptr %8, align 8
  %20 = mul i64 %18, %1
  %21 = add i64 %20, %19
  store i64 %21, ptr %8, align 8
  %22 = icmp sgt i64 %21, %7
  %23 = add i64 %18, 1
  br i1 %22, label %28, label %24

24:                                               ; preds = %17, %12
  %25 = phi i64 [ %21, %17 ], [ %9, %12 ]
  %26 = phi i64 [ %23, %17 ], [ 1, %12 ]
  %27 = tail call i64 @ktime_add_safe(i64 noundef %25, i64 noundef %1) #10
  store i64 %27, ptr %8, align 8
  br label %28

28:                                               ; preds = %24, %17, %2
  %29 = phi i64 [ %26, %24 ], [ %18, %17 ], [ 0, %2 ]
  ret i64 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @alarm_clock_getres(i32 noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @rtcdev_lock) #10
  %4 = load ptr, ptr @rtcdev, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @rtcdev_lock, i32 noundef %3) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  store i64 0, ptr %1, align 8
  %7 = load i32, ptr @hrtimer_resolution, align 4
  %8 = getelementptr inbounds %struct.timespec64, ptr %1, i32 0, i32 1
  store i32 %7, ptr %8, align 8
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi i32 [ 0, %6 ], [ -22, %2 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @alarm_clock_get_timespec(i32 noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @rtcdev_lock) #10
  %4 = load ptr, ptr @rtcdev, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @rtcdev_lock, i32 noundef %3) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = icmp eq i32 %0, 8
  %8 = icmp eq i32 %0, 9
  %9 = select i1 %8, i32 1, i32 -1
  %10 = select i1 %7, i32 0, i32 %9
  %11 = getelementptr [2 x %struct.alarm_base], ptr @alarm_bases, i32 0, i32 %10, i32 3
  %12 = load ptr, ptr %11, align 4
  tail call void %12(ptr noundef %1) #10
  br label %13

13:                                               ; preds = %6, %2
  %14 = phi i32 [ 0, %6 ], [ -22, %2 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @alarm_clock_get_ktime(i32 noundef %0) #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @rtcdev_lock) #10
  %3 = load ptr, ptr @rtcdev, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @rtcdev_lock, i32 noundef %2) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = icmp eq i32 %0, 8
  %7 = icmp eq i32 %0, 9
  %8 = select i1 %7, i32 1, i32 -1
  %9 = select i1 %6, i32 0, i32 %8
  %10 = getelementptr [2 x %struct.alarm_base], ptr @alarm_bases, i32 0, i32 %9, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i64 %11() #10
  br label %13

13:                                               ; preds = %5, %1
  %14 = phi i64 [ %12, %5 ], [ -22, %1 ]
  ret i64 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @alarm_timer_create(ptr noundef %0) #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @rtcdev_lock) #10
  %3 = load ptr, ptr @rtcdev, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @rtcdev_lock, i32 noundef %2) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = tail call zeroext i1 @capable(i32 noundef 35) #10
  br i1 %6, label %7, label %23

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 4
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 9
  %11 = select i1 %10, i32 1, i32 -1
  %12 = icmp eq i32 %9, 8
  %13 = select i1 %12, i32 0, i32 %11
  %14 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 15
  %15 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 15, i32 0, i32 0, i32 1
  %16 = getelementptr [2 x %struct.alarm_base], ptr @alarm_bases, i32 0, i32 %13, i32 4
  %17 = load i32, ptr %16, align 4
  tail call void @hrtimer_init(ptr noundef %15, i32 noundef %17, i32 noundef 0) #10
  %18 = ptrtoint ptr %14 to i32
  store i32 %18, ptr %14, align 8
  %19 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 15, i32 0, i32 0, i32 1, i32 2
  store ptr @alarmtimer_fired, ptr %19, align 8
  %20 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 15, i32 0, i32 0, i32 2
  store ptr @alarm_handle_timer, ptr %20, align 8
  %21 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 15, i32 0, i32 0, i32 3
  store i32 %13, ptr %21, align 4
  %22 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 15, i32 0, i32 0, i32 4
  store i32 0, ptr %22, align 8
  br label %23

23:                                               ; preds = %7, %5, %1
  %24 = phi i32 [ 0, %7 ], [ -95, %1 ], [ -1, %5 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @alarm_timer_nsleep(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.alarm, align 8
  %5 = icmp eq i32 %0, 9
  %6 = select i1 %5, i32 1, i32 -1
  %7 = icmp eq i32 %0, 8
  %8 = select i1 %7, i32 0, i32 %6
  %9 = tail call ptr @llvm.thread.pointer() #10
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %4, i8 0, i32 88, i1 false), !annotation !9
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @rtcdev_lock) #10
  %11 = load ptr, ptr @rtcdev, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @rtcdev_lock, i32 noundef %10) #10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %52, label %13

13:                                               ; preds = %3
  %14 = icmp ult i32 %1, 2
  br i1 %14, label %15, label %52

15:                                               ; preds = %13
  %16 = tail call zeroext i1 @capable(i32 noundef 35) #10
  br i1 %16, label %17, label %52

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.alarm, ptr %4, i32 0, i32 1
  %19 = getelementptr [2 x %struct.alarm_base], ptr @alarm_bases, i32 0, i32 %8, i32 4
  %20 = load i32, ptr %19, align 4
  call void @hrtimer_init(ptr noundef %18, i32 noundef %20, i32 noundef 0) #10
  %21 = ptrtoint ptr %4 to i32
  store i32 %21, ptr %4, align 8
  %22 = getelementptr inbounds %struct.alarm, ptr %4, i32 0, i32 1, i32 2
  store ptr @alarmtimer_fired, ptr %22, align 8
  %23 = getelementptr inbounds %struct.alarm, ptr %4, i32 0, i32 2
  store ptr @alarmtimer_nsleep_wakeup, ptr %23, align 8
  %24 = getelementptr inbounds %struct.alarm, ptr %4, i32 0, i32 3
  store i32 %8, ptr %24, align 4
  %25 = getelementptr inbounds %struct.alarm, ptr %4, i32 0, i32 4
  store i32 0, ptr %25, align 8
  %26 = load i64, ptr %2, align 8
  %27 = icmp sgt i64 %26, 9223372035
  br i1 %27, label %34, label %28, !prof !11

28:                                               ; preds = %17
  %29 = getelementptr inbounds [2 x i64], ptr %2, i32 0, i32 1
  %30 = load i64, ptr %29, align 8
  %31 = mul i64 %26, 1000000000
  %32 = and i64 %30, 4294967295
  %33 = add i64 %32, %31
  br label %34

34:                                               ; preds = %28, %17
  %35 = phi i64 [ %33, %28 ], [ 9223372036854775807, %17 ]
  %36 = icmp eq i32 %1, 1
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = call fastcc i32 @alarmtimer_do_nsleep(ptr noundef nonnull %4, i64 noundef %35, i32 noundef %8)
  %39 = icmp eq i32 %38, -516
  %40 = select i1 %39, i32 -514, i32 %38
  br label %52

41:                                               ; preds = %34
  %42 = getelementptr [2 x %struct.alarm_base], ptr @alarm_bases, i32 0, i32 %8, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = call i64 %43() #10
  %45 = call i64 @ktime_add_safe(i64 noundef %44, i64 noundef %35) #10
  %46 = call fastcc i32 @alarmtimer_do_nsleep(ptr noundef nonnull %4, i64 noundef %45, i32 noundef %8)
  %47 = icmp eq i32 %46, -516
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 51, i32 2
  store i32 %8, ptr %49, align 8
  %50 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 51, i32 2, i32 0, i32 4
  store i64 %45, ptr %50, align 8
  %51 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 51, i32 1
  store ptr @alarm_timer_nsleep_restart, ptr %51, align 4
  br label %52

52:                                               ; preds = %48, %41, %37, %15, %13, %3
  %53 = phi i32 [ -516, %48 ], [ -95, %3 ], [ -22, %13 ], [ -1, %15 ], [ %46, %41 ], [ %40, %37 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #10
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @common_timer_set(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @common_timer_del(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @common_timer_get(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alarm_timer_rearm(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 11
  %3 = load i64, ptr %2, align 8
  %4 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 15, i32 0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr [2 x %struct.alarm_base], ptr @alarm_bases, i32 0, i32 %5, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i64 %7() #10
  %9 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 15, i32 0, i32 0, i32 0, i32 1
  %10 = load i64, ptr %9, align 8
  %11 = sub i64 %8, %10
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %29, label %13

13:                                               ; preds = %1
  %14 = icmp slt i64 %11, %3
  br i1 %14, label %25, label %15, !prof !10

15:                                               ; preds = %13
  %16 = icmp slt i64 %3, 0
  br i1 %16, label %17, label %18, !prof !11

17:                                               ; preds = %15
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/ktime.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 136, 0\0A.popsection", ""() #10, !srcloc !19
  unreachable

18:                                               ; preds = %15
  %19 = tail call i64 @__ktime_divns(i64 noundef %11, i64 noundef %3) #10
  %20 = load i64, ptr %9, align 8
  %21 = mul i64 %19, %3
  %22 = add i64 %21, %20
  store i64 %22, ptr %9, align 8
  %23 = icmp sgt i64 %22, %8
  %24 = add i64 %19, 1
  br i1 %23, label %29, label %25

25:                                               ; preds = %18, %13
  %26 = phi i64 [ %22, %18 ], [ %10, %13 ]
  %27 = phi i64 [ %24, %18 ], [ 1, %13 ]
  %28 = tail call i64 @ktime_add_safe(i64 noundef %26, i64 noundef %3) #10
  store i64 %28, ptr %9, align 8
  br label %29

29:                                               ; preds = %25, %18, %1
  %30 = phi i64 [ %28, %25 ], [ %22, %18 ], [ %10, %1 ]
  %31 = phi i64 [ %27, %25 ], [ %19, %18 ], [ 0, %1 ]
  %32 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 15
  %33 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 7
  %34 = load i64, ptr %33, align 8
  %35 = add i64 %34, %31
  store i64 %35, ptr %33, align 8
  tail call void @alarm_start(ptr noundef %32, i64 noundef %30)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @alarm_timer_forward(ptr nocapture noundef %0, i64 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 11
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 15, i32 0, i32 0, i32 0, i32 1
  %6 = load i64, ptr %5, align 8
  %7 = sub i64 %4, %6
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %2
  %10 = icmp slt i64 %7, %1
  br i1 %10, label %21, label %11, !prof !10

11:                                               ; preds = %9
  %12 = icmp slt i64 %1, 0
  br i1 %12, label %13, label %14, !prof !11

13:                                               ; preds = %11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/ktime.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 136, 0\0A.popsection", ""() #10, !srcloc !19
  unreachable

14:                                               ; preds = %11
  %15 = tail call i64 @__ktime_divns(i64 noundef %7, i64 noundef %1) #10
  %16 = load i64, ptr %5, align 8
  %17 = mul i64 %15, %1
  %18 = add i64 %17, %16
  store i64 %18, ptr %5, align 8
  %19 = icmp sgt i64 %18, %4
  %20 = add i64 %15, 1
  br i1 %19, label %25, label %21

21:                                               ; preds = %14, %9
  %22 = phi i64 [ %18, %14 ], [ %6, %9 ]
  %23 = phi i64 [ %20, %14 ], [ 1, %9 ]
  %24 = tail call i64 @ktime_add_safe(i64 noundef %22, i64 noundef %1) #10
  store i64 %24, ptr %5, align 8
  br label %25

25:                                               ; preds = %21, %14, %2
  %26 = phi i64 [ %23, %21 ], [ %15, %14 ], [ 0, %2 ]
  ret i64 %26
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i64 @alarm_timer_remaining(ptr nocapture noundef readonly %0, i64 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 15, i32 0, i32 0, i32 0, i32 1
  %4 = load i64, ptr %3, align 8
  %5 = sub i64 %4, %1
  ret i64 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @alarm_timer_try_to_cancel(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 15
  %3 = tail call i32 @alarm_try_to_cancel(ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alarm_timer_arm(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 15
  br i1 %2, label %13, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 15, i32 0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr [2 x %struct.alarm_base], ptr @alarm_bases, i32 0, i32 %8, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i64 %10() #10
  %12 = tail call i64 @ktime_add_safe(i64 noundef %1, i64 noundef %11) #10
  br label %13

13:                                               ; preds = %6, %4
  %14 = phi i64 [ %1, %4 ], [ %12, %6 ]
  br i1 %3, label %15, label %17

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 15, i32 0, i32 0, i32 0, i32 1
  store i64 %14, ptr %16, align 8
  br label %18

17:                                               ; preds = %13
  tail call void @alarm_start(ptr noundef %5, i64 noundef %14)
  br label %18

18:                                               ; preds = %17, %15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alarm_timer_wait_running(ptr nocapture noundef readnone %0) #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !17
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !18
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @alarmtimer_init() #4 section ".init.text" {
  tail call void @rtc_timer_init(ptr noundef nonnull @rtctimer, ptr noundef null, ptr noundef null) #10
  store i32 0, ptr getelementptr inbounds ([2 x %struct.alarm_base], ptr @alarm_bases, i32 0, i32 0, i32 4), align 4
  store ptr @ktime_get_real, ptr getelementptr inbounds ([2 x %struct.alarm_base], ptr @alarm_bases, i32 0, i32 0, i32 2), align 4
  store ptr @ktime_get_real_ts64, ptr getelementptr inbounds ([2 x %struct.alarm_base], ptr @alarm_bases, i32 0, i32 0, i32 3), align 4
  store i32 7, ptr getelementptr inbounds ([2 x %struct.alarm_base], ptr @alarm_bases, i32 0, i32 1, i32 4), align 4
  store ptr @ktime_get_boottime, ptr getelementptr inbounds ([2 x %struct.alarm_base], ptr @alarm_bases, i32 0, i32 1, i32 2), align 4
  store ptr @get_boottime_timespec, ptr getelementptr inbounds ([2 x %struct.alarm_base], ptr @alarm_bases, i32 0, i32 1, i32 3), align 4
  store ptr null, ptr getelementptr inbounds ([2 x %struct.alarm_base], ptr @alarm_bases, i32 0, i32 0, i32 1), align 4
  store ptr null, ptr getelementptr inbounds ([2 x %struct.alarm_base], ptr @alarm_bases, i32 0, i32 0, i32 1, i32 0, i32 1), align 4
  store i32 0, ptr @alarm_bases, align 4
  store ptr null, ptr getelementptr inbounds ([2 x %struct.alarm_base], ptr @alarm_bases, i32 0, i32 1, i32 1), align 4
  store ptr null, ptr getelementptr inbounds ([2 x %struct.alarm_base], ptr @alarm_bases, i32 0, i32 1, i32 1, i32 0, i32 1), align 4
  store i32 0, ptr getelementptr inbounds ([2 x %struct.alarm_base], ptr @alarm_bases, i32 0, i32 1), align 4
  %1 = load ptr, ptr @rtc_class, align 4
  store ptr %1, ptr getelementptr inbounds (%struct.class_interface, ptr @alarmtimer_rtc_interface, i32 0, i32 1), align 4
  %2 = tail call i32 @class_interface_register(ptr noundef nonnull @alarmtimer_rtc_interface) #10
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = tail call i32 @__platform_driver_register(ptr noundef nonnull @alarmtimer_driver, ptr noundef null) #10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @class_interface_unregister(ptr noundef nonnull @alarmtimer_rtc_interface) #10
  br label %8

8:                                                ; preds = %7, %4, %0
  %9 = phi i32 [ %5, %7 ], [ %2, %0 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_alarmtimer_suspend(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #10
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_alarmtimer_suspend, ptr %5, i32 0, i32 2
  %12 = load i8, ptr %11, align 8
  %13 = zext i8 %12 to i32
  %14 = shl nuw i32 1, %13
  %15 = tail call ptr @trace_print_flags_seq(ptr noundef %9, ptr noundef nonnull @.str.13, i32 noundef %14, ptr noundef nonnull @trace_raw_output_alarmtimer_suspend.__flags) #10
  %16 = getelementptr inbounds %struct.trace_event_raw_alarmtimer_suspend, ptr %5, i32 0, i32 1
  %17 = load i64, ptr %16, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef %15, i64 noundef %17) #10
  %18 = tail call i32 @trace_handle_return(ptr noundef %10) #10
  br label %19

19:                                               ; preds = %8, %3
  %20 = phi i32 [ %18, %8 ], [ %6, %3 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_flags_seq(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_alarm_class(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #10
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %23

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_alarm_class, ptr %5, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.trace_event_raw_alarm_class, ptr %5, i32 0, i32 2
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i32
  %16 = shl nuw i32 1, %15
  %17 = tail call ptr @trace_print_flags_seq(ptr noundef %9, ptr noundef nonnull @.str.13, i32 noundef %16, ptr noundef nonnull @trace_raw_output_alarm_class.__flags) #10
  %18 = getelementptr inbounds %struct.trace_event_raw_alarm_class, ptr %5, i32 0, i32 3
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr inbounds %struct.trace_event_raw_alarm_class, ptr %5, i32 0, i32 4
  %21 = load i64, ptr %20, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.17, ptr noundef %12, ptr noundef %17, i64 noundef %19, i64 noundef %21) #10
  %22 = tail call i32 @trace_handle_return(ptr noundef %10) #10
  br label %23

23:                                               ; preds = %8, %3
  %24 = phi i32 [ %22, %8 ], [ %6, %3 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @alarmtimer_fired(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -24
  %3 = getelementptr i8, ptr %0, i32 52
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr [2 x %struct.alarm_base], ptr @alarm_bases, i32 0, i32 %4
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #10
  %7 = getelementptr i8, ptr %0, i32 56
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = getelementptr [2 x %struct.alarm_base], ptr @alarm_bases, i32 0, i32 %4, i32 1
  %13 = tail call zeroext i1 @timerqueue_del(ptr noundef %12, ptr noundef %2) #10
  %14 = load i32, ptr %7, align 8
  %15 = and i32 %14, -2
  store i32 %15, ptr %7, align 8
  br label %16

16:                                               ; preds = %11, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #10
  %17 = getelementptr i8, ptr %0, i32 48
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #10
  br label %45

22:                                               ; preds = %16
  %23 = getelementptr [2 x %struct.alarm_base], ptr @alarm_bases, i32 0, i32 %4, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i64 %24() #10
  %26 = tail call i32 %18(ptr noundef %2, i64 noundef %25) #10
  %27 = icmp eq i32 %26, 0
  %28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #10
  br i1 %27, label %45, label %29

29:                                               ; preds = %22
  %30 = getelementptr i8, ptr %0, i32 -8
  %31 = load i64, ptr %30, align 8
  %32 = getelementptr inbounds %struct.timerqueue_node, ptr %0, i32 0, i32 1
  store i64 %31, ptr %32, align 8
  %33 = getelementptr inbounds %struct.hrtimer, ptr %0, i32 0, i32 1
  store i64 %31, ptr %33, align 8
  %34 = load i32, ptr %7, align 8
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %29
  %38 = getelementptr [2 x %struct.alarm_base], ptr @alarm_bases, i32 0, i32 %4, i32 1
  %39 = tail call zeroext i1 @timerqueue_del(ptr noundef %38, ptr noundef %2) #10
  br label %40

40:                                               ; preds = %37, %29
  %41 = getelementptr [2 x %struct.alarm_base], ptr @alarm_bases, i32 0, i32 %4, i32 1
  %42 = tail call zeroext i1 @timerqueue_add(ptr noundef %41, ptr noundef %2) #10
  %43 = load i32, ptr %7, align 8
  %44 = or i32 %43, 1
  store i32 %44, ptr %7, align 8
  br label %45

45:                                               ; preds = %40, %22, %20
  %46 = phi i32 [ %28, %40 ], [ %28, %22 ], [ %21, %20 ]
  %47 = phi i32 [ 1, %40 ], [ 0, %22 ], [ 0, %20 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %46) #10
  %48 = getelementptr [2 x %struct.alarm_base], ptr @alarm_bases, i32 0, i32 %4, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = tail call i64 %49() #10
  %51 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_alarmtimer_fired, i32 0, i32 1), align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %76

53:                                               ; preds = %45
  %54 = tail call ptr @llvm.thread.pointer() #10
  %55 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 2
  %56 = load i32, ptr %55, align 8
  %57 = lshr i32 %56, 5
  %58 = getelementptr i32, ptr @__cpu_online_mask, i32 %57
  %59 = load volatile i32, ptr %58, align 4
  %60 = and i32 %56, 31
  %61 = shl nuw i32 1, %60
  %62 = and i32 %61, %59
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %76, label %64

64:                                               ; preds = %53
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !20
  %65 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_alarmtimer_fired, i32 0, i32 7), align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %75, label %67

67:                                               ; preds = %67, %64
  %68 = phi ptr [ %72, %67 ], [ %65, %64 ]
  %69 = load volatile ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.tracepoint_func, ptr %68, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  tail call void %69(ptr noundef %71, ptr noundef %2, i64 noundef %50) #10
  %72 = getelementptr %struct.tracepoint_func, ptr %68, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %67

75:                                               ; preds = %67, %64
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !21
  br label %76

76:                                               ; preds = %75, %53, %45
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @timerqueue_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @timerqueue_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__ktime_divns(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @alarm_handle_timer(ptr noundef %0, i64 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -88
  %4 = getelementptr i8, ptr %0, i32 -72
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #10
  %6 = getelementptr i8, ptr %0, i32 -56
  store i32 0, ptr %6, align 8
  %7 = getelementptr i8, ptr %0, i32 -24
  %8 = load i64, ptr %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = getelementptr i8, ptr %0, i32 -32
  %12 = load i32, ptr %11, align 8
  %13 = add i32 %12, 1
  store i32 %13, ptr %11, align 8
  br label %14

14:                                               ; preds = %10, %2
  %15 = phi i32 [ %13, %10 ], [ 0, %2 ]
  %16 = tail call i32 @posix_timer_event(ptr noundef %3, i32 noundef %15) #10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %55, label %18

18:                                               ; preds = %14
  %19 = load i64, ptr %7, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %55, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.alarm, ptr %0, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr [2 x %struct.alarm_base], ptr @alarm_bases, i32 0, i32 %23, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i64 %25() #10
  %27 = getelementptr inbounds %struct.timerqueue_node, ptr %0, i32 0, i32 1
  %28 = load i64, ptr %27, align 8
  %29 = sub i64 %26, %28
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %47, label %31

31:                                               ; preds = %21
  %32 = icmp slt i64 %29, %19
  br i1 %32, label %43, label %33, !prof !10

33:                                               ; preds = %31
  %34 = icmp slt i64 %19, 0
  br i1 %34, label %35, label %36, !prof !11

35:                                               ; preds = %33
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/ktime.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 136, 0\0A.popsection", ""() #10, !srcloc !19
  unreachable

36:                                               ; preds = %33
  %37 = tail call i64 @__ktime_divns(i64 noundef %29, i64 noundef %19) #10
  %38 = load i64, ptr %27, align 8
  %39 = mul i64 %37, %19
  %40 = add i64 %39, %38
  store i64 %40, ptr %27, align 8
  %41 = icmp sgt i64 %40, %26
  %42 = add i64 %37, 1
  br i1 %41, label %47, label %43

43:                                               ; preds = %36, %31
  %44 = phi i64 [ %40, %36 ], [ %28, %31 ]
  %45 = phi i64 [ %42, %36 ], [ 1, %31 ]
  %46 = tail call i64 @ktime_add_safe(i64 noundef %44, i64 noundef %19) #10
  store i64 %46, ptr %27, align 8
  br label %47

47:                                               ; preds = %43, %36, %21
  %48 = phi i64 [ %45, %43 ], [ %37, %36 ], [ 0, %21 ]
  %49 = getelementptr i8, ptr %0, i32 -48
  %50 = load i64, ptr %49, align 8
  %51 = add i64 %50, %48
  store i64 %51, ptr %49, align 8
  %52 = getelementptr i8, ptr %0, i32 -32
  %53 = load i32, ptr %52, align 8
  %54 = add i32 %53, 1
  store i32 %54, ptr %52, align 8
  store i32 1, ptr %6, align 8
  br label %55

55:                                               ; preds = %47, %18, %14
  %56 = phi i32 [ 1, %47 ], [ 0, %18 ], [ 0, %14 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #10
  ret i32 %56
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_timer_event(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @alarmtimer_nsleep_wakeup(ptr nocapture noundef %0, i64 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.alarm, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  store ptr null, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @wake_up_process(ptr noundef nonnull %4) #10
  br label %8

8:                                                ; preds = %6, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @alarmtimer_do_nsleep(ptr noundef %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.timespec64, align 8
  %5 = tail call ptr @llvm.thread.pointer() #10
  %6 = getelementptr inbounds %struct.alarm, ptr %0, i32 0, i32 5
  store ptr %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 1
  br label %8

8:                                                ; preds = %25, %3
  store volatile i32 1, ptr %7, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !22
  tail call void @alarm_start(ptr noundef %0, i64 noundef %1)
  %9 = load ptr, ptr %6, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11, !prof !11

11:                                               ; preds = %8
  tail call void @schedule() #10
  br label %12

12:                                               ; preds = %11, %8
  %13 = tail call i32 @alarm_try_to_cancel(ptr noundef %0) #10
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %18, label %15

15:                                               ; preds = %15, %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !17
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !18
  %16 = tail call i32 @alarm_try_to_cancel(ptr noundef %0) #10
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %18, label %15

18:                                               ; preds = %15, %12
  %19 = load ptr, ptr %6, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %18
  %22 = load volatile i32, ptr %5, align 4
  %23 = and i32 %22, 256
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29, !prof !10

25:                                               ; preds = %21
  %26 = load volatile i32, ptr %5, align 4
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %8, label %29

29:                                               ; preds = %25, %21, %18
  store volatile i32 0, ptr %7, align 8
  %30 = load ptr, ptr %6, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %71, label %32

32:                                               ; preds = %29
  %33 = load volatile i32, ptr @system_freezing_cnt, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %56, label %35, !prof !10

35:                                               ; preds = %32
  %36 = tail call zeroext i1 @freezing_slow_path(ptr noundef %5) #10
  br i1 %36, label %37, label %56

37:                                               ; preds = %35
  switch i32 %2, label %39 [
    i32 0, label %42
    i32 1, label %38
  ]

38:                                               ; preds = %37
  br label %42

39:                                               ; preds = %37
  %40 = load i1, ptr @alarmtimer_freezerset.__already_done, align 1
  br i1 %40, label %56, label %41, !prof !10

41:                                               ; preds = %39
  store i1 true, ptr @alarmtimer_freezerset.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 499, i32 noundef 9, ptr noundef nonnull @.str.20, i32 noundef %2) #10
  br label %56

42:                                               ; preds = %38, %37
  %43 = phi ptr [ getelementptr inbounds ([2 x %struct.alarm_base], ptr @alarm_bases, i32 0, i32 1), %38 ], [ @alarm_bases, %37 ]
  %44 = phi i32 [ 4, %38 ], [ 3, %37 ]
  %45 = getelementptr inbounds %struct.alarm_base, ptr %43, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i64 %46() #10
  %48 = sub i64 %1, %47
  %49 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @freezer_delta_lock) #10
  %50 = load i64, ptr @freezer_delta, align 8
  %51 = icmp eq i64 %50, 0
  %52 = icmp slt i64 %48, %50
  %53 = select i1 %51, i1 true, i1 %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  store i64 %48, ptr @freezer_delta, align 8
  store i64 %1, ptr @freezer_expires, align 8
  store i32 %44, ptr @freezer_alarmtype, align 4
  br label %55

55:                                               ; preds = %54, %42
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @freezer_delta_lock, i32 noundef %49) #10
  br label %56

56:                                               ; preds = %55, %41, %39, %35, %32
  %57 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 51
  %58 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 51, i32 2, i32 0, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !9
  %62 = getelementptr [2 x %struct.alarm_base], ptr @alarm_bases, i32 0, i32 %2, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = tail call i64 %63() #10
  %65 = sub i64 %1, %64
  %66 = icmp slt i64 %65, 1
  br i1 %66, label %69, label %67

67:                                               ; preds = %61
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %4, i64 noundef %65) #10
  %68 = call i32 @nanosleep_copyout(ptr noundef %57, ptr noundef nonnull %4) #10
  br label %69

69:                                               ; preds = %67, %61
  %70 = phi i32 [ %68, %67 ], [ 0, %61 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  br label %71

71:                                               ; preds = %69, %56, %29
  %72 = phi i32 [ %70, %69 ], [ 0, %29 ], [ -516, %56 ]
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @alarm_timer_nsleep_restart(ptr nocapture noundef readonly %0) #0 section ".sched.text" {
  %2 = alloca %struct.alarm, align 8
  %3 = getelementptr inbounds %struct.restart_block, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.restart_block, ptr %0, i32 0, i32 2, i32 0, i32 4
  %6 = load i64, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %2, i8 0, i32 88, i1 false), !annotation !9
  %7 = getelementptr inbounds %struct.alarm, ptr %2, i32 0, i32 1
  %8 = getelementptr [2 x %struct.alarm_base], ptr @alarm_bases, i32 0, i32 %4, i32 4
  %9 = load i32, ptr %8, align 4
  call void @hrtimer_init(ptr noundef %7, i32 noundef %9, i32 noundef 0) #10
  %10 = ptrtoint ptr %2 to i32
  store i32 %10, ptr %2, align 8
  %11 = getelementptr inbounds %struct.alarm, ptr %2, i32 0, i32 1, i32 2
  store ptr @alarmtimer_fired, ptr %11, align 8
  %12 = getelementptr inbounds %struct.alarm, ptr %2, i32 0, i32 2
  store ptr @alarmtimer_nsleep_wakeup, ptr %12, align 8
  %13 = getelementptr inbounds %struct.alarm, ptr %2, i32 0, i32 3
  store i32 %4, ptr %13, align 4
  %14 = getelementptr inbounds %struct.alarm, ptr %2, i32 0, i32 4
  store i32 0, ptr %14, align 8
  %15 = call fastcc i32 @alarmtimer_do_nsleep(ptr noundef nonnull %2, i64 noundef %6, i32 noundef %4)
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %2) #10
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nanosleep_copyout(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @ktime_get_real() #9 {
  %1 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #10
  ret i64 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @ktime_get_boottime() #9 {
  %1 = tail call i64 @ktime_get_with_offset(i32 noundef 1) #10
  ret i64 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @get_boottime_timespec(ptr nocapture noundef writeonly %0) #0 {
  %2 = alloca %struct.timespec64, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #10
  %3 = tail call i64 @ktime_get_with_offset(i32 noundef 1) #10
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %2, i64 noundef %3) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 16, i1 false) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_timer_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @class_interface_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @alarmtimer_rtc_add_device(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca %struct.platform_device_info, align 8
  %4 = load ptr, ptr @rtcdev, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %47

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 21
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %47, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 11, i32 1
  %15 = load i16, ptr %14, align 4
  %16 = and i16 %15, 1
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %47, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 11, i32 6
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %47, label %22

22:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #10
  %23 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %23, i8 0, i32 48, i1 false) #10, !annotation !9
  store ptr %0, ptr %3, align 8
  %24 = getelementptr inbounds %struct.platform_device_info, ptr %3, i32 0, i32 1
  store ptr null, ptr %24, align 4
  %25 = getelementptr inbounds %struct.platform_device_info, ptr %3, i32 0, i32 3
  store ptr @.str.21, ptr %25, align 4
  %26 = getelementptr inbounds %struct.platform_device_info, ptr %3, i32 0, i32 4
  store i32 -2, ptr %26, align 8
  %27 = getelementptr inbounds %struct.platform_device_info, ptr %3, i32 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %27, i8 0, i64 16, i1 false) #10
  %28 = call ptr @platform_device_register_full(ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #10
  %29 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %33, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.platform_device, ptr %28, i32 0, i32 3
  %32 = call i32 @device_init_wakeup(ptr noundef %31, i1 noundef zeroext true) #10
  br label %33

33:                                               ; preds = %30, %22
  %34 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @rtcdev_lock) #10
  %35 = load ptr, ptr @rtcdev, align 4
  %36 = icmp ne ptr %35, null
  %37 = select i1 %29, i1 true, i1 %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8
  %41 = call zeroext i1 @try_module_get(ptr noundef %40) #10
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  store ptr %0, ptr @rtcdev, align 4
  %43 = call ptr @get_device(ptr noundef %0) #10
  br label %44

44:                                               ; preds = %42, %38, %33
  %45 = phi ptr [ null, %42 ], [ %28, %38 ], [ %28, %33 ]
  %46 = phi i32 [ 0, %42 ], [ -1, %38 ], [ -1, %33 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @rtcdev_lock, i32 noundef %34) #10
  call void @platform_device_unregister(ptr noundef %45) #10
  br label %47

47:                                               ; preds = %44, %18, %11, %6, %2
  %48 = phi i32 [ %46, %44 ], [ -16, %2 ], [ -1, %6 ], [ -1, %18 ], [ -1, %11 ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @alarmtimer_suspend(ptr noundef %0) #0 {
  %2 = alloca %struct.rtc_time, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i32 36, i1 false), !annotation !9
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @freezer_delta_lock) #10
  %4 = load i64, ptr @freezer_delta, align 8
  %5 = load i64, ptr @freezer_expires, align 8
  %6 = load i32, ptr @freezer_alarmtype, align 4
  store i64 0, ptr @freezer_delta, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @freezer_delta_lock, i32 noundef %3) #10
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @rtcdev_lock) #10
  %8 = load ptr, ptr @rtcdev, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @rtcdev_lock, i32 noundef %7) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %113, label %10

10:                                               ; preds = %1
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @alarm_bases) #10
  %12 = load ptr, ptr getelementptr inbounds ([2 x %struct.alarm_base], ptr @alarm_bases, i32 0, i32 0, i32 1, i32 0, i32 1), align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @alarm_bases, i32 noundef %11) #10
  %13 = icmp eq ptr %12, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.timerqueue_node, ptr %12, i32 0, i32 1
  %16 = load i64, ptr %15, align 8
  %17 = load ptr, ptr getelementptr inbounds ([2 x %struct.alarm_base], ptr @alarm_bases, i32 0, i32 0, i32 2), align 4
  %18 = tail call i64 %17() #10
  %19 = sub i64 %16, %18
  %20 = icmp eq i64 %4, 0
  %21 = icmp slt i64 %19, %4
  %22 = select i1 %20, i1 true, i1 %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i64, ptr %15, align 8
  br label %25

25:                                               ; preds = %23, %14, %10
  %26 = phi i64 [ %5, %10 ], [ %24, %23 ], [ %5, %14 ]
  %27 = phi i32 [ %6, %10 ], [ 0, %23 ], [ %6, %14 ]
  %28 = phi i64 [ %4, %10 ], [ %19, %23 ], [ %4, %14 ]
  %29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds ([2 x %struct.alarm_base], ptr @alarm_bases, i32 0, i32 1)) #10
  %30 = load ptr, ptr getelementptr inbounds ([2 x %struct.alarm_base], ptr @alarm_bases, i32 0, i32 1, i32 1, i32 0, i32 1), align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds ([2 x %struct.alarm_base], ptr @alarm_bases, i32 0, i32 1), i32 noundef %29) #10
  %31 = icmp eq ptr %30, null
  br i1 %31, label %43, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.timerqueue_node, ptr %30, i32 0, i32 1
  %34 = load i64, ptr %33, align 8
  %35 = load ptr, ptr getelementptr inbounds ([2 x %struct.alarm_base], ptr @alarm_bases, i32 0, i32 1, i32 2), align 4
  %36 = tail call i64 %35() #10
  %37 = sub i64 %34, %36
  %38 = icmp eq i64 %28, 0
  %39 = icmp slt i64 %37, %28
  %40 = select i1 %38, i1 true, i1 %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %32
  %42 = load i64, ptr %33, align 8
  br label %43

43:                                               ; preds = %41, %25
  %44 = phi i64 [ %26, %25 ], [ %42, %41 ]
  %45 = phi i32 [ %27, %25 ], [ 1, %41 ]
  %46 = phi i64 [ %28, %25 ], [ %37, %41 ]
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %113, label %48

48:                                               ; preds = %43, %32
  %49 = phi i64 [ %46, %43 ], [ %28, %32 ]
  %50 = phi i32 [ %45, %43 ], [ %27, %32 ]
  %51 = phi i64 [ %44, %43 ], [ %26, %32 ]
  %52 = icmp slt i64 %49, 2000000000
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  tail call void @pm_wakeup_dev_event(ptr noundef %0, i32 noundef 2000, i1 noundef zeroext false) #10
  br label %113

54:                                               ; preds = %48
  %55 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_alarmtimer_suspend, i32 0, i32 1), align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %80

57:                                               ; preds = %54
  %58 = tail call ptr @llvm.thread.pointer() #10
  %59 = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 2
  %60 = load i32, ptr %59, align 8
  %61 = lshr i32 %60, 5
  %62 = getelementptr i32, ptr @__cpu_online_mask, i32 %61
  %63 = load volatile i32, ptr %62, align 4
  %64 = and i32 %60, 31
  %65 = shl nuw i32 1, %64
  %66 = and i32 %65, %63
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %80, label %68

68:                                               ; preds = %57
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  %69 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_alarmtimer_suspend, i32 0, i32 7), align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %79, label %71

71:                                               ; preds = %71, %68
  %72 = phi ptr [ %76, %71 ], [ %69, %68 ]
  %73 = load volatile ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.tracepoint_func, ptr %72, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  tail call void %73(ptr noundef %75, i64 noundef %51, i32 noundef %50) #10
  %76 = getelementptr %struct.tracepoint_func, ptr %72, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %71

79:                                               ; preds = %71, %68
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !24
  br label %80

80:                                               ; preds = %79, %57, %54
  tail call void @rtc_timer_cancel(ptr noundef nonnull %8, ptr noundef nonnull @rtctimer) #10
  %81 = call i32 @rtc_read_time(ptr noundef nonnull %8, ptr noundef nonnull %2) #10
  %82 = load i32, ptr %2, align 4
  %83 = insertvalue [9 x i32] poison, i32 %82, 0
  %84 = getelementptr inbounds [9 x i32], ptr %2, i32 0, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = insertvalue [9 x i32] %83, i32 %85, 1
  %87 = getelementptr inbounds [9 x i32], ptr %2, i32 0, i32 2
  %88 = load i32, ptr %87, align 4
  %89 = insertvalue [9 x i32] %86, i32 %88, 2
  %90 = getelementptr inbounds [9 x i32], ptr %2, i32 0, i32 3
  %91 = load i32, ptr %90, align 4
  %92 = insertvalue [9 x i32] %89, i32 %91, 3
  %93 = getelementptr inbounds [9 x i32], ptr %2, i32 0, i32 4
  %94 = load i32, ptr %93, align 4
  %95 = insertvalue [9 x i32] %92, i32 %94, 4
  %96 = getelementptr inbounds [9 x i32], ptr %2, i32 0, i32 5
  %97 = load i32, ptr %96, align 4
  %98 = insertvalue [9 x i32] %95, i32 %97, 5
  %99 = getelementptr inbounds [9 x i32], ptr %2, i32 0, i32 6
  %100 = load i32, ptr %99, align 4
  %101 = insertvalue [9 x i32] %98, i32 %100, 6
  %102 = getelementptr inbounds [9 x i32], ptr %2, i32 0, i32 7
  %103 = load i32, ptr %102, align 4
  %104 = insertvalue [9 x i32] %101, i32 %103, 7
  %105 = getelementptr inbounds [9 x i32], ptr %2, i32 0, i32 8
  %106 = load i32, ptr %105, align 4
  %107 = insertvalue [9 x i32] %104, i32 %106, 8
  %108 = call i64 @rtc_tm_to_ktime([9 x i32] %107) #10
  %109 = add i64 %108, %49
  %110 = call i32 @rtc_timer_start(ptr noundef nonnull %8, ptr noundef nonnull @rtctimer, i64 noundef %109, i64 noundef 0) #10
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %80
  call void @pm_wakeup_dev_event(ptr noundef %0, i32 noundef 1000, i1 noundef zeroext false) #10
  br label %113

113:                                              ; preds = %112, %80, %53, %43, %1
  %114 = phi i32 [ -16, %53 ], [ 0, %1 ], [ 0, %43 ], [ %110, %112 ], [ %110, %80 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #10
  ret i32 %114
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @alarmtimer_resume(ptr nocapture noundef readnone %0) #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @rtcdev_lock) #10
  %3 = load ptr, ptr @rtcdev, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @rtcdev_lock, i32 noundef %2) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @rtc_timer_cancel(ptr noundef nonnull %3, ptr noundef nonnull @rtctimer) #10
  br label %6

6:                                                ; preds = %5, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_timer_cancel(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_read_time(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_ktime([9 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_timer_start(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_interface_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }

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
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 337636}
!13 = !{i64 2152571748}
!14 = !{i64 2152571912}
!15 = !{i64 2152587987}
!16 = !{i64 2152588153}
!17 = !{i64 2149245925}
!18 = !{i64 2149245767}
!19 = !{i64 2148505030, i64 2148505516, i64 2148505067, i64 2148505123, i64 2148505157, i64 2148505181, i64 2148505222, i64 2148505243, i64 2148505271, i64 2148505305}
!20 = !{i64 2152555547}
!21 = !{i64 2152555711}
!22 = !{i64 2154172786}
!23 = !{i64 2152535167}
!24 = !{i64 2152535341}
