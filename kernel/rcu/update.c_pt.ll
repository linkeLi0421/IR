; ModuleID = '/llk/IR/kernel/rcu/update.c_pt.bc'
source_filename = "../kernel/rcu/update.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rcu_gp_is_normal:\09\09\09\09\09"
module asm "\09.asciz \09\22rcu_gp_is_normal\22\09\09\09\09\09"
module asm "__kstrtabns_rcu_gp_is_normal:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rcu_gp_is_expedited:\09\09\09\09\09"
module asm "\09.asciz \09\22rcu_gp_is_expedited\22\09\09\09\09\09"
module asm "__kstrtabns_rcu_gp_is_expedited:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rcu_expedite_gp:\09\09\09\09\09"
module asm "\09.asciz \09\22rcu_expedite_gp\22\09\09\09\09\09"
module asm "__kstrtabns_rcu_expedite_gp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rcu_unexpedite_gp:\09\09\09\09\09"
module asm "\09.asciz \09\22rcu_unexpedite_gp\22\09\09\09\09\09"
module asm "__kstrtabns_rcu_unexpedite_gp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rcu_inkernel_boot_has_ended:\09\09\09\09\09"
module asm "\09.asciz \09\22rcu_inkernel_boot_has_ended\22\09\09\09\09\09"
module asm "__kstrtabns_rcu_inkernel_boot_has_ended:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wakeme_after_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22wakeme_after_rcu\22\09\09\09\09\09"
module asm "__kstrtabns_wakeme_after_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___wait_rcu_gp:\09\09\09\09\09"
module asm "\09.asciz \09\22__wait_rcu_gp\22\09\09\09\09\09"
module asm "__kstrtabns___wait_rcu_gp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_do_trace_rcu_torture_read:\09\09\09\09\09"
module asm "\09.asciz \09\22do_trace_rcu_torture_read\22\09\09\09\09\09"
module asm "__kstrtabns_do_trace_rcu_torture_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rcu_cpu_stall_suppress:\09\09\09\09\09"
module asm "\09.asciz \09\22rcu_cpu_stall_suppress\22\09\09\09\09\09"
module asm "__kstrtabns_rcu_cpu_stall_suppress:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rcu_cpu_stall_suppress_at_boot:\09\09\09\09\09"
module asm "\09.asciz \09\22rcu_cpu_stall_suppress_at_boot\22\09\09\09\09\09"
module asm "__kstrtabns_rcu_cpu_stall_suppress_at_boot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.0, %struct.trace_event, ptr, ptr, %union.anon.2, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.0 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.2 = type { ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.cpumask = type { [1 x i32] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_rcu_utilization = type { %struct.trace_entry, ptr, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.trace_event_raw_rcu_grace_period = type { %struct.trace_entry, ptr, i32, ptr, [0 x i8] }
%struct.trace_event_raw_rcu_future_grace_period = type { %struct.trace_entry, ptr, i32, i32, i8, i32, i32, ptr, [0 x i8] }
%struct.trace_event_raw_rcu_grace_period_init = type { %struct.trace_entry, ptr, i32, i8, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_rcu_exp_grace_period = type { %struct.trace_entry, ptr, i32, ptr, [0 x i8] }
%struct.trace_event_raw_rcu_exp_funnel_lock = type { %struct.trace_entry, ptr, i8, i32, i32, ptr, [0 x i8] }
%struct.trace_event_raw_rcu_preempt_task = type { %struct.trace_entry, ptr, i32, i32, [0 x i8] }
%struct.trace_event_raw_rcu_unlock_preempted_task = type { %struct.trace_entry, ptr, i32, i32, [0 x i8] }
%struct.trace_event_raw_rcu_quiescent_state_report = type { %struct.trace_entry, ptr, i32, i32, i32, i8, i32, i32, i8, [0 x i8] }
%struct.trace_event_raw_rcu_fqs = type { %struct.trace_entry, ptr, i32, i32, ptr, [0 x i8] }
%struct.trace_event_raw_rcu_stall_warning = type { %struct.trace_entry, ptr, ptr, [0 x i8] }
%struct.trace_event_raw_rcu_dyntick = type { %struct.trace_entry, ptr, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_rcu_callback = type { %struct.trace_entry, ptr, ptr, ptr, i32, [0 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.trace_event_raw_rcu_segcb_stats = type { %struct.trace_entry, ptr, [4 x i32], [4 x i32], [0 x i8] }
%struct.rcu_segcblist = type { ptr, [4 x ptr], [4 x i32], i32, [4 x i32], i8 }
%struct.trace_event_raw_rcu_kvfree_callback = type { %struct.trace_entry, ptr, ptr, i32, i32, [0 x i8] }
%struct.trace_event_raw_rcu_batch_start = type { %struct.trace_entry, ptr, i32, i32, [0 x i8] }
%struct.trace_event_raw_rcu_invoke_callback = type { %struct.trace_entry, ptr, ptr, ptr, [0 x i8] }
%struct.trace_event_raw_rcu_invoke_kvfree_callback = type { %struct.trace_entry, ptr, ptr, i32, [0 x i8] }
%struct.trace_event_raw_rcu_invoke_kfree_bulk_callback = type { %struct.trace_entry, ptr, i32, ptr, [0 x i8] }
%struct.trace_event_raw_rcu_batch_end = type { %struct.trace_entry, ptr, i32, i8, i8, i8, i8, [0 x i8] }
%struct.trace_event_raw_rcu_torture_read = type { %struct.trace_entry, [8 x i8], ptr, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_rcu_barrier = type { %struct.trace_entry, ptr, ptr, i32, i32, i32, [0 x i8] }
%struct.rcu_synchronize = type { %struct.callback_head, %struct.completion }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_rcu_utilization = internal constant [16 x i8] c"rcu_utilization\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rcu_utilization = dso_local global %struct.static_call_key { ptr @__traceiter_rcu_utilization }, align 4
@__tracepoint_rcu_utilization = dso_local global %struct.tracepoint { ptr @__tpstrtab_rcu_utilization, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rcu_utilization, ptr null, ptr @__traceiter_rcu_utilization, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rcu_utilization = internal constant ptr @__tracepoint_rcu_utilization, section "__tracepoints_ptrs", align 4
@__tpstrtab_rcu_grace_period = internal constant [17 x i8] c"rcu_grace_period\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rcu_grace_period = dso_local global %struct.static_call_key { ptr @__traceiter_rcu_grace_period }, align 4
@__tracepoint_rcu_grace_period = dso_local global %struct.tracepoint { ptr @__tpstrtab_rcu_grace_period, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rcu_grace_period, ptr null, ptr @__traceiter_rcu_grace_period, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rcu_grace_period = internal constant ptr @__tracepoint_rcu_grace_period, section "__tracepoints_ptrs", align 4
@__tpstrtab_rcu_future_grace_period = internal constant [24 x i8] c"rcu_future_grace_period\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rcu_future_grace_period = dso_local global %struct.static_call_key { ptr @__traceiter_rcu_future_grace_period }, align 4
@__tracepoint_rcu_future_grace_period = dso_local global %struct.tracepoint { ptr @__tpstrtab_rcu_future_grace_period, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rcu_future_grace_period, ptr null, ptr @__traceiter_rcu_future_grace_period, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rcu_future_grace_period = internal constant ptr @__tracepoint_rcu_future_grace_period, section "__tracepoints_ptrs", align 4
@__tpstrtab_rcu_grace_period_init = internal constant [22 x i8] c"rcu_grace_period_init\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rcu_grace_period_init = dso_local global %struct.static_call_key { ptr @__traceiter_rcu_grace_period_init }, align 4
@__tracepoint_rcu_grace_period_init = dso_local global %struct.tracepoint { ptr @__tpstrtab_rcu_grace_period_init, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rcu_grace_period_init, ptr null, ptr @__traceiter_rcu_grace_period_init, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rcu_grace_period_init = internal constant ptr @__tracepoint_rcu_grace_period_init, section "__tracepoints_ptrs", align 4
@__tpstrtab_rcu_exp_grace_period = internal constant [21 x i8] c"rcu_exp_grace_period\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rcu_exp_grace_period = dso_local global %struct.static_call_key { ptr @__traceiter_rcu_exp_grace_period }, align 4
@__tracepoint_rcu_exp_grace_period = dso_local global %struct.tracepoint { ptr @__tpstrtab_rcu_exp_grace_period, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rcu_exp_grace_period, ptr null, ptr @__traceiter_rcu_exp_grace_period, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rcu_exp_grace_period = internal constant ptr @__tracepoint_rcu_exp_grace_period, section "__tracepoints_ptrs", align 4
@__tpstrtab_rcu_exp_funnel_lock = internal constant [20 x i8] c"rcu_exp_funnel_lock\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rcu_exp_funnel_lock = dso_local global %struct.static_call_key { ptr @__traceiter_rcu_exp_funnel_lock }, align 4
@__tracepoint_rcu_exp_funnel_lock = dso_local global %struct.tracepoint { ptr @__tpstrtab_rcu_exp_funnel_lock, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rcu_exp_funnel_lock, ptr null, ptr @__traceiter_rcu_exp_funnel_lock, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rcu_exp_funnel_lock = internal constant ptr @__tracepoint_rcu_exp_funnel_lock, section "__tracepoints_ptrs", align 4
@__tpstrtab_rcu_preempt_task = internal constant [17 x i8] c"rcu_preempt_task\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rcu_preempt_task = dso_local global %struct.static_call_key { ptr @__traceiter_rcu_preempt_task }, align 4
@__tracepoint_rcu_preempt_task = dso_local global %struct.tracepoint { ptr @__tpstrtab_rcu_preempt_task, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rcu_preempt_task, ptr null, ptr @__traceiter_rcu_preempt_task, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rcu_preempt_task = internal constant ptr @__tracepoint_rcu_preempt_task, section "__tracepoints_ptrs", align 4
@__tpstrtab_rcu_unlock_preempted_task = internal constant [26 x i8] c"rcu_unlock_preempted_task\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rcu_unlock_preempted_task = dso_local global %struct.static_call_key { ptr @__traceiter_rcu_unlock_preempted_task }, align 4
@__tracepoint_rcu_unlock_preempted_task = dso_local global %struct.tracepoint { ptr @__tpstrtab_rcu_unlock_preempted_task, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rcu_unlock_preempted_task, ptr null, ptr @__traceiter_rcu_unlock_preempted_task, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rcu_unlock_preempted_task = internal constant ptr @__tracepoint_rcu_unlock_preempted_task, section "__tracepoints_ptrs", align 4
@__tpstrtab_rcu_quiescent_state_report = internal constant [27 x i8] c"rcu_quiescent_state_report\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rcu_quiescent_state_report = dso_local global %struct.static_call_key { ptr @__traceiter_rcu_quiescent_state_report }, align 4
@__tracepoint_rcu_quiescent_state_report = dso_local global %struct.tracepoint { ptr @__tpstrtab_rcu_quiescent_state_report, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rcu_quiescent_state_report, ptr null, ptr @__traceiter_rcu_quiescent_state_report, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rcu_quiescent_state_report = internal constant ptr @__tracepoint_rcu_quiescent_state_report, section "__tracepoints_ptrs", align 4
@__tpstrtab_rcu_fqs = internal constant [8 x i8] c"rcu_fqs\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rcu_fqs = dso_local global %struct.static_call_key { ptr @__traceiter_rcu_fqs }, align 4
@__tracepoint_rcu_fqs = dso_local global %struct.tracepoint { ptr @__tpstrtab_rcu_fqs, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rcu_fqs, ptr null, ptr @__traceiter_rcu_fqs, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rcu_fqs = internal constant ptr @__tracepoint_rcu_fqs, section "__tracepoints_ptrs", align 4
@__tpstrtab_rcu_stall_warning = internal constant [18 x i8] c"rcu_stall_warning\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rcu_stall_warning = dso_local global %struct.static_call_key { ptr @__traceiter_rcu_stall_warning }, align 4
@__tracepoint_rcu_stall_warning = dso_local global %struct.tracepoint { ptr @__tpstrtab_rcu_stall_warning, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rcu_stall_warning, ptr null, ptr @__traceiter_rcu_stall_warning, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rcu_stall_warning = internal constant ptr @__tracepoint_rcu_stall_warning, section "__tracepoints_ptrs", align 4
@__tpstrtab_rcu_dyntick = internal constant [12 x i8] c"rcu_dyntick\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rcu_dyntick = dso_local global %struct.static_call_key { ptr @__traceiter_rcu_dyntick }, align 4
@__tracepoint_rcu_dyntick = dso_local global %struct.tracepoint { ptr @__tpstrtab_rcu_dyntick, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rcu_dyntick, ptr null, ptr @__traceiter_rcu_dyntick, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rcu_dyntick = internal constant ptr @__tracepoint_rcu_dyntick, section "__tracepoints_ptrs", align 4
@__tpstrtab_rcu_callback = internal constant [13 x i8] c"rcu_callback\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rcu_callback = dso_local global %struct.static_call_key { ptr @__traceiter_rcu_callback }, align 4
@__tracepoint_rcu_callback = dso_local global %struct.tracepoint { ptr @__tpstrtab_rcu_callback, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rcu_callback, ptr null, ptr @__traceiter_rcu_callback, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rcu_callback = internal constant ptr @__tracepoint_rcu_callback, section "__tracepoints_ptrs", align 4
@__tpstrtab_rcu_segcb_stats = internal constant [16 x i8] c"rcu_segcb_stats\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rcu_segcb_stats = dso_local global %struct.static_call_key { ptr @__traceiter_rcu_segcb_stats }, align 4
@__tracepoint_rcu_segcb_stats = dso_local global %struct.tracepoint { ptr @__tpstrtab_rcu_segcb_stats, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rcu_segcb_stats, ptr null, ptr @__traceiter_rcu_segcb_stats, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rcu_segcb_stats = internal constant ptr @__tracepoint_rcu_segcb_stats, section "__tracepoints_ptrs", align 4
@__tpstrtab_rcu_kvfree_callback = internal constant [20 x i8] c"rcu_kvfree_callback\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rcu_kvfree_callback = dso_local global %struct.static_call_key { ptr @__traceiter_rcu_kvfree_callback }, align 4
@__tracepoint_rcu_kvfree_callback = dso_local global %struct.tracepoint { ptr @__tpstrtab_rcu_kvfree_callback, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rcu_kvfree_callback, ptr null, ptr @__traceiter_rcu_kvfree_callback, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rcu_kvfree_callback = internal constant ptr @__tracepoint_rcu_kvfree_callback, section "__tracepoints_ptrs", align 4
@__tpstrtab_rcu_batch_start = internal constant [16 x i8] c"rcu_batch_start\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rcu_batch_start = dso_local global %struct.static_call_key { ptr @__traceiter_rcu_batch_start }, align 4
@__tracepoint_rcu_batch_start = dso_local global %struct.tracepoint { ptr @__tpstrtab_rcu_batch_start, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rcu_batch_start, ptr null, ptr @__traceiter_rcu_batch_start, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rcu_batch_start = internal constant ptr @__tracepoint_rcu_batch_start, section "__tracepoints_ptrs", align 4
@__tpstrtab_rcu_invoke_callback = internal constant [20 x i8] c"rcu_invoke_callback\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rcu_invoke_callback = dso_local global %struct.static_call_key { ptr @__traceiter_rcu_invoke_callback }, align 4
@__tracepoint_rcu_invoke_callback = dso_local global %struct.tracepoint { ptr @__tpstrtab_rcu_invoke_callback, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rcu_invoke_callback, ptr null, ptr @__traceiter_rcu_invoke_callback, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rcu_invoke_callback = internal constant ptr @__tracepoint_rcu_invoke_callback, section "__tracepoints_ptrs", align 4
@__tpstrtab_rcu_invoke_kvfree_callback = internal constant [27 x i8] c"rcu_invoke_kvfree_callback\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rcu_invoke_kvfree_callback = dso_local global %struct.static_call_key { ptr @__traceiter_rcu_invoke_kvfree_callback }, align 4
@__tracepoint_rcu_invoke_kvfree_callback = dso_local global %struct.tracepoint { ptr @__tpstrtab_rcu_invoke_kvfree_callback, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rcu_invoke_kvfree_callback, ptr null, ptr @__traceiter_rcu_invoke_kvfree_callback, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rcu_invoke_kvfree_callback = internal constant ptr @__tracepoint_rcu_invoke_kvfree_callback, section "__tracepoints_ptrs", align 4
@__tpstrtab_rcu_invoke_kfree_bulk_callback = internal constant [31 x i8] c"rcu_invoke_kfree_bulk_callback\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rcu_invoke_kfree_bulk_callback = dso_local global %struct.static_call_key { ptr @__traceiter_rcu_invoke_kfree_bulk_callback }, align 4
@__tracepoint_rcu_invoke_kfree_bulk_callback = dso_local global %struct.tracepoint { ptr @__tpstrtab_rcu_invoke_kfree_bulk_callback, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rcu_invoke_kfree_bulk_callback, ptr null, ptr @__traceiter_rcu_invoke_kfree_bulk_callback, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rcu_invoke_kfree_bulk_callback = internal constant ptr @__tracepoint_rcu_invoke_kfree_bulk_callback, section "__tracepoints_ptrs", align 4
@__tpstrtab_rcu_batch_end = internal constant [14 x i8] c"rcu_batch_end\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rcu_batch_end = dso_local global %struct.static_call_key { ptr @__traceiter_rcu_batch_end }, align 4
@__tracepoint_rcu_batch_end = dso_local global %struct.tracepoint { ptr @__tpstrtab_rcu_batch_end, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rcu_batch_end, ptr null, ptr @__traceiter_rcu_batch_end, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rcu_batch_end = internal constant ptr @__tracepoint_rcu_batch_end, section "__tracepoints_ptrs", align 4
@__tpstrtab_rcu_torture_read = internal constant [17 x i8] c"rcu_torture_read\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rcu_torture_read = dso_local global %struct.static_call_key { ptr @__traceiter_rcu_torture_read }, align 4
@__tracepoint_rcu_torture_read = dso_local global %struct.tracepoint { ptr @__tpstrtab_rcu_torture_read, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rcu_torture_read, ptr null, ptr @__traceiter_rcu_torture_read, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rcu_torture_read = internal constant ptr @__tracepoint_rcu_torture_read, section "__tracepoints_ptrs", align 4
@__tpstrtab_rcu_barrier = internal constant [12 x i8] c"rcu_barrier\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rcu_barrier = dso_local global %struct.static_call_key { ptr @__traceiter_rcu_barrier }, align 4
@__tracepoint_rcu_barrier = dso_local global %struct.tracepoint { ptr @__tpstrtab_rcu_barrier, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rcu_barrier, ptr null, ptr @__traceiter_rcu_barrier, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rcu_barrier = internal constant ptr @__tracepoint_rcu_barrier, section "__tracepoints_ptrs", align 4
@str__rcu__trace_system_name = internal constant [4 x i8] c"rcu\00", align 1
@trace_event_fields_rcu_utilization = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_rcu_utilization = internal global %struct.trace_event_class { ptr @str__rcu__trace_system_name, ptr @trace_event_raw_event_rcu_utilization, ptr @perf_trace_rcu_utilization, ptr @trace_event_reg, ptr @trace_event_fields_rcu_utilization, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rcu_utilization, i64 24), ptr getelementptr (i8, ptr @event_class_rcu_utilization, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rcu_utilization = internal global %struct.trace_event_functions { ptr @trace_raw_output_rcu_utilization, ptr null, ptr null, ptr null }, align 4
@print_fmt_rcu_utilization = internal global [13 x i8] c"\22%s\22, REC->s\00", align 1
@event_rcu_utilization = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rcu_utilization, %union.anon.0 { ptr @__tracepoint_rcu_utilization }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rcu_utilization }, ptr @print_fmt_rcu_utilization, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rcu_utilization = internal global ptr @event_rcu_utilization, section "_ftrace_events", align 4
@trace_event_fields_rcu_grace_period = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon { %struct.anon { ptr @.str.10, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_rcu_grace_period = internal global %struct.trace_event_class { ptr @str__rcu__trace_system_name, ptr @trace_event_raw_event_rcu_grace_period, ptr @perf_trace_rcu_grace_period, ptr @trace_event_reg, ptr @trace_event_fields_rcu_grace_period, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rcu_grace_period, i64 24), ptr getelementptr (i8, ptr @event_class_rcu_grace_period, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rcu_grace_period = internal global %struct.trace_event_functions { ptr @trace_raw_output_rcu_grace_period, ptr null, ptr null, ptr null }, align 4
@print_fmt_rcu_grace_period = internal global [53 x i8] c"\22%s %ld %s\22, REC->rcuname, REC->gp_seq, REC->gpevent\00", align 1
@event_rcu_grace_period = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rcu_grace_period, %union.anon.0 { ptr @__tracepoint_rcu_grace_period }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rcu_grace_period }, ptr @print_fmt_rcu_grace_period, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rcu_grace_period = internal global ptr @event_rcu_grace_period, section "_ftrace_events", align 4
@trace_event_fields_rcu_future_grace_period = internal global [8 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon { %struct.anon { ptr @.str.10, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon { %struct.anon { ptr @.str.13, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon { %struct.anon { ptr @.str.15, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon { %struct.anon { ptr @.str.17, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon { %struct.anon { ptr @.str.18, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_rcu_future_grace_period = internal global %struct.trace_event_class { ptr @str__rcu__trace_system_name, ptr @trace_event_raw_event_rcu_future_grace_period, ptr @perf_trace_rcu_future_grace_period, ptr @trace_event_reg, ptr @trace_event_fields_rcu_future_grace_period, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rcu_future_grace_period, i64 24), ptr getelementptr (i8, ptr @event_class_rcu_future_grace_period, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rcu_future_grace_period = internal global %struct.trace_event_functions { ptr @trace_raw_output_rcu_future_grace_period, ptr null, ptr null, ptr null }, align 4
@print_fmt_rcu_future_grace_period = internal global [131 x i8] c"\22%s %ld %ld %u %d %d %s\22, REC->rcuname, (long)REC->gp_seq, (long)REC->gp_seq_req, REC->level, REC->grplo, REC->grphi, REC->gpevent\00", align 1
@event_rcu_future_grace_period = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rcu_future_grace_period, %union.anon.0 { ptr @__tracepoint_rcu_future_grace_period }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rcu_future_grace_period }, ptr @print_fmt_rcu_future_grace_period, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rcu_future_grace_period = internal global ptr @event_rcu_future_grace_period, section "_ftrace_events", align 4
@trace_event_fields_rcu_grace_period_init = internal global [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon { %struct.anon { ptr @.str.10, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon { %struct.anon { ptr @.str.15, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon { %struct.anon { ptr @.str.17, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon { %struct.anon { ptr @.str.18, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.20, %union.anon { %struct.anon { ptr @.str.21, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_rcu_grace_period_init = internal global %struct.trace_event_class { ptr @str__rcu__trace_system_name, ptr @trace_event_raw_event_rcu_grace_period_init, ptr @perf_trace_rcu_grace_period_init, ptr @trace_event_reg, ptr @trace_event_fields_rcu_grace_period_init, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rcu_grace_period_init, i64 24), ptr getelementptr (i8, ptr @event_class_rcu_grace_period_init, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rcu_grace_period_init = internal global %struct.trace_event_functions { ptr @trace_raw_output_rcu_grace_period_init, ptr null, ptr null, ptr null }, align 4
@print_fmt_rcu_grace_period_init = internal global [98 x i8] c"\22%s %ld %u %d %d %lx\22, REC->rcuname, REC->gp_seq, REC->level, REC->grplo, REC->grphi, REC->qsmask\00", align 1
@event_rcu_grace_period_init = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rcu_grace_period_init, %union.anon.0 { ptr @__tracepoint_rcu_grace_period_init }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rcu_grace_period_init }, ptr @print_fmt_rcu_grace_period_init, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rcu_grace_period_init = internal global ptr @event_rcu_grace_period_init, section "_ftrace_events", align 4
@trace_event_fields_rcu_exp_grace_period = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon { %struct.anon { ptr @.str.23, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_rcu_exp_grace_period = internal global %struct.trace_event_class { ptr @str__rcu__trace_system_name, ptr @trace_event_raw_event_rcu_exp_grace_period, ptr @perf_trace_rcu_exp_grace_period, ptr @trace_event_reg, ptr @trace_event_fields_rcu_exp_grace_period, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rcu_exp_grace_period, i64 24), ptr getelementptr (i8, ptr @event_class_rcu_exp_grace_period, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rcu_exp_grace_period = internal global %struct.trace_event_functions { ptr @trace_raw_output_rcu_exp_grace_period, ptr null, ptr null, ptr null }, align 4
@print_fmt_rcu_exp_grace_period = internal global [52 x i8] c"\22%s %ld %s\22, REC->rcuname, REC->gpseq, REC->gpevent\00", align 1
@event_rcu_exp_grace_period = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rcu_exp_grace_period, %union.anon.0 { ptr @__tracepoint_rcu_exp_grace_period }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rcu_exp_grace_period }, ptr @print_fmt_rcu_exp_grace_period, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rcu_exp_grace_period = internal global ptr @event_rcu_exp_grace_period, section "_ftrace_events", align 4
@trace_event_fields_rcu_exp_funnel_lock = internal global [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon { %struct.anon { ptr @.str.15, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon { %struct.anon { ptr @.str.17, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon { %struct.anon { ptr @.str.18, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_rcu_exp_funnel_lock = internal global %struct.trace_event_class { ptr @str__rcu__trace_system_name, ptr @trace_event_raw_event_rcu_exp_funnel_lock, ptr @perf_trace_rcu_exp_funnel_lock, ptr @trace_event_reg, ptr @trace_event_fields_rcu_exp_funnel_lock, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rcu_exp_funnel_lock, i64 24), ptr getelementptr (i8, ptr @event_class_rcu_exp_funnel_lock, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rcu_exp_funnel_lock = internal global %struct.trace_event_functions { ptr @trace_raw_output_rcu_exp_funnel_lock, ptr null, ptr null, ptr null }, align 4
@print_fmt_rcu_exp_funnel_lock = internal global [81 x i8] c"\22%s %d %d %d %s\22, REC->rcuname, REC->level, REC->grplo, REC->grphi, REC->gpevent\00", align 1
@event_rcu_exp_funnel_lock = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rcu_exp_funnel_lock, %union.anon.0 { ptr @__tracepoint_rcu_exp_funnel_lock }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rcu_exp_funnel_lock }, ptr @print_fmt_rcu_exp_funnel_lock, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rcu_exp_funnel_lock = internal global ptr @event_rcu_exp_funnel_lock, section "_ftrace_events", align 4
@trace_event_fields_rcu_preempt_task = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon { %struct.anon { ptr @.str.10, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon { %struct.anon { ptr @.str.25, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_rcu_preempt_task = internal global %struct.trace_event_class { ptr @str__rcu__trace_system_name, ptr @trace_event_raw_event_rcu_preempt_task, ptr @perf_trace_rcu_preempt_task, ptr @trace_event_reg, ptr @trace_event_fields_rcu_preempt_task, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rcu_preempt_task, i64 24), ptr getelementptr (i8, ptr @event_class_rcu_preempt_task, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rcu_preempt_task = internal global %struct.trace_event_functions { ptr @trace_raw_output_rcu_preempt_task, ptr null, ptr null, ptr null }, align 4
@print_fmt_rcu_preempt_task = internal global [49 x i8] c"\22%s %ld %d\22, REC->rcuname, REC->gp_seq, REC->pid\00", align 1
@event_rcu_preempt_task = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rcu_preempt_task, %union.anon.0 { ptr @__tracepoint_rcu_preempt_task }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rcu_preempt_task }, ptr @print_fmt_rcu_preempt_task, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rcu_preempt_task = internal global ptr @event_rcu_preempt_task, section "_ftrace_events", align 4
@trace_event_fields_rcu_unlock_preempted_task = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon { %struct.anon { ptr @.str.10, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon { %struct.anon { ptr @.str.25, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_rcu_unlock_preempted_task = internal global %struct.trace_event_class { ptr @str__rcu__trace_system_name, ptr @trace_event_raw_event_rcu_unlock_preempted_task, ptr @perf_trace_rcu_unlock_preempted_task, ptr @trace_event_reg, ptr @trace_event_fields_rcu_unlock_preempted_task, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rcu_unlock_preempted_task, i64 24), ptr getelementptr (i8, ptr @event_class_rcu_unlock_preempted_task, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rcu_unlock_preempted_task = internal global %struct.trace_event_functions { ptr @trace_raw_output_rcu_unlock_preempted_task, ptr null, ptr null, ptr null }, align 4
@print_fmt_rcu_unlock_preempted_task = internal global [49 x i8] c"\22%s %ld %d\22, REC->rcuname, REC->gp_seq, REC->pid\00", align 1
@event_rcu_unlock_preempted_task = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rcu_unlock_preempted_task, %union.anon.0 { ptr @__tracepoint_rcu_unlock_preempted_task }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rcu_unlock_preempted_task }, ptr @print_fmt_rcu_unlock_preempted_task, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rcu_unlock_preempted_task = internal global ptr @event_rcu_unlock_preempted_task, section "_ftrace_events", align 4
@trace_event_fields_rcu_quiescent_state_report = internal global [9 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon { %struct.anon { ptr @.str.10, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.20, %union.anon { %struct.anon { ptr @.str.27, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.20, %union.anon { %struct.anon { ptr @.str.21, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon { %struct.anon { ptr @.str.15, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon { %struct.anon { ptr @.str.17, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon { %struct.anon { ptr @.str.18, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon { %struct.anon { ptr @.str.28, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_rcu_quiescent_state_report = internal global %struct.trace_event_class { ptr @str__rcu__trace_system_name, ptr @trace_event_raw_event_rcu_quiescent_state_report, ptr @perf_trace_rcu_quiescent_state_report, ptr @trace_event_reg, ptr @trace_event_fields_rcu_quiescent_state_report, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rcu_quiescent_state_report, i64 24), ptr getelementptr (i8, ptr @event_class_rcu_quiescent_state_report, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rcu_quiescent_state_report = internal global %struct.trace_event_functions { ptr @trace_raw_output_rcu_quiescent_state_report, ptr null, ptr null, ptr null }, align 4
@print_fmt_rcu_quiescent_state_report = internal global [131 x i8] c"\22%s %ld %lx>%lx %u %d %d %u\22, REC->rcuname, REC->gp_seq, REC->mask, REC->qsmask, REC->level, REC->grplo, REC->grphi, REC->gp_tasks\00", align 1
@event_rcu_quiescent_state_report = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rcu_quiescent_state_report, %union.anon.0 { ptr @__tracepoint_rcu_quiescent_state_report }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rcu_quiescent_state_report }, ptr @print_fmt_rcu_quiescent_state_report, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rcu_quiescent_state_report = internal global ptr @event_rcu_quiescent_state_report, section "_ftrace_events", align 4
@trace_event_fields_rcu_fqs = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon { %struct.anon { ptr @.str.10, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon { %struct.anon { ptr @.str.30, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.31, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_rcu_fqs = internal global %struct.trace_event_class { ptr @str__rcu__trace_system_name, ptr @trace_event_raw_event_rcu_fqs, ptr @perf_trace_rcu_fqs, ptr @trace_event_reg, ptr @trace_event_fields_rcu_fqs, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rcu_fqs, i64 24), ptr getelementptr (i8, ptr @event_class_rcu_fqs, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rcu_fqs = internal global %struct.trace_event_functions { ptr @trace_raw_output_rcu_fqs, ptr null, ptr null, ptr null }, align 4
@print_fmt_rcu_fqs = internal global [66 x i8] c"\22%s %ld %d %s\22, REC->rcuname, REC->gp_seq, REC->cpu, REC->qsevent\00", align 1
@event_rcu_fqs = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rcu_fqs, %union.anon.0 { ptr @__tracepoint_rcu_fqs }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rcu_fqs }, ptr @print_fmt_rcu_fqs, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rcu_fqs = internal global ptr @event_rcu_fqs, section "_ftrace_events", align 4
@trace_event_fields_rcu_stall_warning = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.33, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_rcu_stall_warning = internal global %struct.trace_event_class { ptr @str__rcu__trace_system_name, ptr @trace_event_raw_event_rcu_stall_warning, ptr @perf_trace_rcu_stall_warning, ptr @trace_event_reg, ptr @trace_event_fields_rcu_stall_warning, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rcu_stall_warning, i64 24), ptr getelementptr (i8, ptr @event_class_rcu_stall_warning, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rcu_stall_warning = internal global %struct.trace_event_functions { ptr @trace_raw_output_rcu_stall_warning, ptr null, ptr null, ptr null }, align 4
@print_fmt_rcu_stall_warning = internal global [32 x i8] c"\22%s %s\22, REC->rcuname, REC->msg\00", align 1
@event_rcu_stall_warning = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rcu_stall_warning, %union.anon.0 { ptr @__tracepoint_rcu_stall_warning }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rcu_stall_warning }, ptr @print_fmt_rcu_stall_warning, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rcu_stall_warning = internal global ptr @event_rcu_stall_warning, section "_ftrace_events", align 4
@trace_event_fields_rcu_dyntick = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.35, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon { %struct.anon { ptr @.str.36, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon { %struct.anon { ptr @.str.37, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon { %struct.anon { ptr @.str.38, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_rcu_dyntick = internal global %struct.trace_event_class { ptr @str__rcu__trace_system_name, ptr @trace_event_raw_event_rcu_dyntick, ptr @perf_trace_rcu_dyntick, ptr @trace_event_reg, ptr @trace_event_fields_rcu_dyntick, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rcu_dyntick, i64 24), ptr getelementptr (i8, ptr @event_class_rcu_dyntick, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rcu_dyntick = internal global %struct.trace_event_functions { ptr @trace_raw_output_rcu_dyntick, ptr null, ptr null, ptr null }, align 4
@print_fmt_rcu_dyntick = internal global [90 x i8] c"\22%s %lx %lx %#3x\22, REC->polarity, REC->oldnesting, REC->newnesting, REC->dynticks & 0xfff\00", align 1
@event_rcu_dyntick = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rcu_dyntick, %union.anon.0 { ptr @__tracepoint_rcu_dyntick }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rcu_dyntick }, ptr @print_fmt_rcu_dyntick, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rcu_dyntick = internal global ptr @event_rcu_dyntick, section "_ftrace_events", align 4
@trace_event_fields_rcu_callback = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.40, %union.anon { %struct.anon { ptr @.str.41, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.40, %union.anon { %struct.anon { ptr @.str.42, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon { %struct.anon { ptr @.str.43, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_rcu_callback = internal global %struct.trace_event_class { ptr @str__rcu__trace_system_name, ptr @trace_event_raw_event_rcu_callback, ptr @perf_trace_rcu_callback, ptr @trace_event_reg, ptr @trace_event_fields_rcu_callback, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rcu_callback, i64 24), ptr getelementptr (i8, ptr @event_class_rcu_callback, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rcu_callback = internal global %struct.trace_event_functions { ptr @trace_raw_output_rcu_callback, ptr null, ptr null, ptr null }, align 4
@print_fmt_rcu_callback = internal global [71 x i8] c"\22%s rhp=%p func=%ps %ld\22, REC->rcuname, REC->rhp, REC->func, REC->qlen\00", align 1
@event_rcu_callback = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rcu_callback, %union.anon.0 { ptr @__tracepoint_rcu_callback }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rcu_callback }, ptr @print_fmt_rcu_callback, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rcu_callback = internal global ptr @event_rcu_callback, section "_ftrace_events", align 4
@trace_event_fields_rcu_segcb_stats = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.45, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.46, %union.anon { %struct.anon { ptr @.str.10, i32 16, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.47, %union.anon { %struct.anon { ptr @.str.48, i32 16, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_rcu_segcb_stats = internal global %struct.trace_event_class { ptr @str__rcu__trace_system_name, ptr @trace_event_raw_event_rcu_segcb_stats, ptr @perf_trace_rcu_segcb_stats, ptr @trace_event_reg, ptr @trace_event_fields_rcu_segcb_stats, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rcu_segcb_stats, i64 24), ptr getelementptr (i8, ptr @event_class_rcu_segcb_stats, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rcu_segcb_stats = internal global %struct.trace_event_functions { ptr @trace_raw_output_rcu_segcb_stats, ptr null, ptr null, ptr null }, align 4
@print_fmt_rcu_segcb_stats = internal global [253 x i8] c"\22%s seglen: (DONE=%ld, WAIT=%ld, NEXT_READY=%ld, NEXT=%ld) gp_seq: (DONE=%lu, WAIT=%lu, NEXT_READY=%lu, NEXT=%lu)\22, REC->ctx, REC->seglen[0], REC->seglen[1], REC->seglen[2], REC->seglen[3], REC->gp_seq[0], REC->gp_seq[1], REC->gp_seq[2], REC->gp_seq[3]\00", align 1
@event_rcu_segcb_stats = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rcu_segcb_stats, %union.anon.0 { ptr @__tracepoint_rcu_segcb_stats }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rcu_segcb_stats }, ptr @print_fmt_rcu_segcb_stats, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rcu_segcb_stats = internal global ptr @event_rcu_segcb_stats, section "_ftrace_events", align 4
@trace_event_fields_rcu_kvfree_callback = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.40, %union.anon { %struct.anon { ptr @.str.41, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.20, %union.anon { %struct.anon { ptr @.str.50, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon { %struct.anon { ptr @.str.43, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_rcu_kvfree_callback = internal global %struct.trace_event_class { ptr @str__rcu__trace_system_name, ptr @trace_event_raw_event_rcu_kvfree_callback, ptr @perf_trace_rcu_kvfree_callback, ptr @trace_event_reg, ptr @trace_event_fields_rcu_kvfree_callback, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rcu_kvfree_callback, i64 24), ptr getelementptr (i8, ptr @event_class_rcu_kvfree_callback, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rcu_kvfree_callback = internal global %struct.trace_event_functions { ptr @trace_raw_output_rcu_kvfree_callback, ptr null, ptr null, ptr null }, align 4
@print_fmt_rcu_kvfree_callback = internal global [73 x i8] c"\22%s rhp=%p func=%ld %ld\22, REC->rcuname, REC->rhp, REC->offset, REC->qlen\00", align 1
@event_rcu_kvfree_callback = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rcu_kvfree_callback, %union.anon.0 { ptr @__tracepoint_rcu_kvfree_callback }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rcu_kvfree_callback }, ptr @print_fmt_rcu_kvfree_callback, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rcu_kvfree_callback = internal global ptr @event_rcu_kvfree_callback, section "_ftrace_events", align 4
@trace_event_fields_rcu_batch_start = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon { %struct.anon { ptr @.str.43, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon { %struct.anon { ptr @.str.52, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_rcu_batch_start = internal global %struct.trace_event_class { ptr @str__rcu__trace_system_name, ptr @trace_event_raw_event_rcu_batch_start, ptr @perf_trace_rcu_batch_start, ptr @trace_event_reg, ptr @trace_event_fields_rcu_batch_start, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rcu_batch_start, i64 24), ptr getelementptr (i8, ptr @event_class_rcu_batch_start, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rcu_batch_start = internal global %struct.trace_event_functions { ptr @trace_raw_output_rcu_batch_start, ptr null, ptr null, ptr null }, align 4
@print_fmt_rcu_batch_start = internal global [58 x i8] c"\22%s CBs=%ld bl=%ld\22, REC->rcuname, REC->qlen, REC->blimit\00", align 1
@event_rcu_batch_start = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rcu_batch_start, %union.anon.0 { ptr @__tracepoint_rcu_batch_start }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rcu_batch_start }, ptr @print_fmt_rcu_batch_start, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rcu_batch_start = internal global ptr @event_rcu_batch_start, section "_ftrace_events", align 4
@trace_event_fields_rcu_invoke_callback = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.40, %union.anon { %struct.anon { ptr @.str.41, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.40, %union.anon { %struct.anon { ptr @.str.42, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_rcu_invoke_callback = internal global %struct.trace_event_class { ptr @str__rcu__trace_system_name, ptr @trace_event_raw_event_rcu_invoke_callback, ptr @perf_trace_rcu_invoke_callback, ptr @trace_event_reg, ptr @trace_event_fields_rcu_invoke_callback, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rcu_invoke_callback, i64 24), ptr getelementptr (i8, ptr @event_class_rcu_invoke_callback, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rcu_invoke_callback = internal global %struct.trace_event_functions { ptr @trace_raw_output_rcu_invoke_callback, ptr null, ptr null, ptr null }, align 4
@print_fmt_rcu_invoke_callback = internal global [56 x i8] c"\22%s rhp=%p func=%ps\22, REC->rcuname, REC->rhp, REC->func\00", align 1
@event_rcu_invoke_callback = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rcu_invoke_callback, %union.anon.0 { ptr @__tracepoint_rcu_invoke_callback }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rcu_invoke_callback }, ptr @print_fmt_rcu_invoke_callback, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rcu_invoke_callback = internal global ptr @event_rcu_invoke_callback, section "_ftrace_events", align 4
@trace_event_fields_rcu_invoke_kvfree_callback = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.40, %union.anon { %struct.anon { ptr @.str.41, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.20, %union.anon { %struct.anon { ptr @.str.50, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_rcu_invoke_kvfree_callback = internal global %struct.trace_event_class { ptr @str__rcu__trace_system_name, ptr @trace_event_raw_event_rcu_invoke_kvfree_callback, ptr @perf_trace_rcu_invoke_kvfree_callback, ptr @trace_event_reg, ptr @trace_event_fields_rcu_invoke_kvfree_callback, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rcu_invoke_kvfree_callback, i64 24), ptr getelementptr (i8, ptr @event_class_rcu_invoke_kvfree_callback, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rcu_invoke_kvfree_callback = internal global %struct.trace_event_functions { ptr @trace_raw_output_rcu_invoke_kvfree_callback, ptr null, ptr null, ptr null }, align 4
@print_fmt_rcu_invoke_kvfree_callback = internal global [58 x i8] c"\22%s rhp=%p func=%ld\22, REC->rcuname, REC->rhp, REC->offset\00", align 1
@event_rcu_invoke_kvfree_callback = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rcu_invoke_kvfree_callback, %union.anon.0 { ptr @__tracepoint_rcu_invoke_kvfree_callback }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rcu_invoke_kvfree_callback }, ptr @print_fmt_rcu_invoke_kvfree_callback, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rcu_invoke_kvfree_callback = internal global ptr @event_rcu_invoke_kvfree_callback, section "_ftrace_events", align 4
@trace_event_fields_rcu_invoke_kfree_bulk_callback = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.20, %union.anon { %struct.anon { ptr @.str.56, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.57, %union.anon { %struct.anon { ptr @.str.58, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_rcu_invoke_kfree_bulk_callback = internal global %struct.trace_event_class { ptr @str__rcu__trace_system_name, ptr @trace_event_raw_event_rcu_invoke_kfree_bulk_callback, ptr @perf_trace_rcu_invoke_kfree_bulk_callback, ptr @trace_event_reg, ptr @trace_event_fields_rcu_invoke_kfree_bulk_callback, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rcu_invoke_kfree_bulk_callback, i64 24), ptr getelementptr (i8, ptr @event_class_rcu_invoke_kfree_bulk_callback, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rcu_invoke_kfree_bulk_callback = internal global %struct.trace_event_functions { ptr @trace_raw_output_rcu_invoke_kfree_bulk_callback, ptr null, ptr null, ptr null }, align 4
@print_fmt_rcu_invoke_kfree_bulk_callback = internal global [69 x i8] c"\22%s bulk=0x%p nr_records=%lu\22, REC->rcuname, REC->p, REC->nr_records\00", align 1
@event_rcu_invoke_kfree_bulk_callback = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rcu_invoke_kfree_bulk_callback, %union.anon.0 { ptr @__tracepoint_rcu_invoke_kfree_bulk_callback }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rcu_invoke_kfree_bulk_callback }, ptr @print_fmt_rcu_invoke_kfree_bulk_callback, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rcu_invoke_kfree_bulk_callback = internal global ptr @event_rcu_invoke_kfree_bulk_callback, section "_ftrace_events", align 4
@trace_event_fields_rcu_batch_end = internal global [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon { %struct.anon { ptr @.str.60, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.61, %union.anon { %struct.anon { ptr @.str.62, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.61, %union.anon { %struct.anon { ptr @.str.63, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.61, %union.anon { %struct.anon { ptr @.str.64, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.61, %union.anon { %struct.anon { ptr @.str.65, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_rcu_batch_end = internal global %struct.trace_event_class { ptr @str__rcu__trace_system_name, ptr @trace_event_raw_event_rcu_batch_end, ptr @perf_trace_rcu_batch_end, ptr @trace_event_reg, ptr @trace_event_fields_rcu_batch_end, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rcu_batch_end, i64 24), ptr getelementptr (i8, ptr @event_class_rcu_batch_end, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rcu_batch_end = internal global %struct.trace_event_functions { ptr @trace_raw_output_rcu_batch_end, ptr null, ptr null, ptr null }, align 4
@print_fmt_rcu_batch_end = internal global [159 x i8] c"\22%s CBs-invoked=%d idle=%c%c%c%c\22, REC->rcuname, REC->callbacks_invoked, REC->cb ? 'C' : '.', REC->nr ? 'S' : '.', REC->iit ? 'I' : '.', REC->risk ? 'R' : '.'\00", align 1
@event_rcu_batch_end = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rcu_batch_end, %union.anon.0 { ptr @__tracepoint_rcu_batch_end }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rcu_batch_end }, ptr @print_fmt_rcu_batch_end, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rcu_batch_end = internal global ptr @event_rcu_batch_end, section "_ftrace_events", align 4
@trace_event_fields_rcu_torture_read = internal global [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.61, %union.anon { %struct.anon { ptr @.str.67, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.68, %union.anon { %struct.anon { ptr @.str.41, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.20, %union.anon { %struct.anon { ptr @.str.69, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.20, %union.anon { %struct.anon { ptr @.str.70, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.20, %union.anon { %struct.anon { ptr @.str.71, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_rcu_torture_read = internal global %struct.trace_event_class { ptr @str__rcu__trace_system_name, ptr @trace_event_raw_event_rcu_torture_read, ptr @perf_trace_rcu_torture_read, ptr @trace_event_reg, ptr @trace_event_fields_rcu_torture_read, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rcu_torture_read, i64 24), ptr getelementptr (i8, ptr @event_class_rcu_torture_read, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rcu_torture_read = internal global %struct.trace_event_functions { ptr @trace_raw_output_rcu_torture_read, ptr null, ptr null, ptr null }, align 4
@print_fmt_rcu_torture_read = internal global [100 x i8] c"\22%s torture read %p %luus c: %lu %lu\22, REC->rcutorturename, REC->rhp, REC->secs, REC->c_old, REC->c\00", align 1
@event_rcu_torture_read = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rcu_torture_read, %union.anon.0 { ptr @__tracepoint_rcu_torture_read }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rcu_torture_read }, ptr @print_fmt_rcu_torture_read, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rcu_torture_read = internal global ptr @event_rcu_torture_read, section "_ftrace_events", align 4
@trace_event_fields_rcu_barrier = internal global [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon { %struct.anon { ptr @.str.30, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon { %struct.anon { ptr @.str.73, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.20, %union.anon { %struct.anon { ptr @.str.74, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_rcu_barrier = internal global %struct.trace_event_class { ptr @str__rcu__trace_system_name, ptr @trace_event_raw_event_rcu_barrier, ptr @perf_trace_rcu_barrier, ptr @trace_event_reg, ptr @trace_event_fields_rcu_barrier, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rcu_barrier, i64 24), ptr getelementptr (i8, ptr @event_class_rcu_barrier, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rcu_barrier = internal global %struct.trace_event_functions { ptr @trace_raw_output_rcu_barrier, ptr null, ptr null, ptr null }, align 4
@print_fmt_rcu_barrier = internal global [87 x i8] c"\22%s %s cpu %d remaining %d # %lu\22, REC->rcuname, REC->s, REC->cpu, REC->cnt, REC->done\00", align 1
@event_rcu_barrier = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rcu_barrier, %union.anon.0 { ptr @__tracepoint_rcu_barrier }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rcu_barrier }, ptr @print_fmt_rcu_barrier, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rcu_barrier = internal global ptr @event_rcu_barrier, section "_ftrace_events", align 4
@__param_str_rcu_expedited = internal constant [23 x i8] c"rcupdate.rcu_expedited\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@rcu_expedited = external dso_local global i32, align 4
@__param_rcu_expedited = internal constant %struct.kernel_param { ptr @__param_str_rcu_expedited, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.68 { ptr @rcu_expedited } }, section "__param", align 4
@__UNIQUE_ID_rcu_expeditedtype363 = internal constant [34 x i8] c"update.parmtype=rcu_expedited:int\00", section ".modinfo", align 1
@__param_str_rcu_normal = internal constant [20 x i8] c"rcupdate.rcu_normal\00", align 1
@rcu_normal = external dso_local global i32, align 4
@__param_rcu_normal = internal constant %struct.kernel_param { ptr @__param_str_rcu_normal, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.68 { ptr @rcu_normal } }, section "__param", align 4
@__UNIQUE_ID_rcu_normaltype364 = internal constant [31 x i8] c"update.parmtype=rcu_normal:int\00", section ".modinfo", align 1
@__param_str_rcu_normal_after_boot = internal constant [31 x i8] c"rcupdate.rcu_normal_after_boot\00", align 1
@rcu_normal_after_boot = internal global i32 0, align 4
@__param_rcu_normal_after_boot = internal constant %struct.kernel_param { ptr @__param_str_rcu_normal_after_boot, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.68 { ptr @rcu_normal_after_boot } }, section "__param", align 4
@__UNIQUE_ID_rcu_normal_after_boottype365 = internal constant [42 x i8] c"update.parmtype=rcu_normal_after_boot:int\00", section ".modinfo", align 1
@rcu_scheduler_active = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@__kstrtab_rcu_gp_is_normal = external dso_local constant [0 x i8], align 1
@__kstrtabns_rcu_gp_is_normal = external dso_local constant [0 x i8], align 1
@__ksymtab_rcu_gp_is_normal = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rcu_gp_is_normal to i32), ptr @__kstrtab_rcu_gp_is_normal, ptr @__kstrtabns_rcu_gp_is_normal }, section "___ksymtab_gpl+rcu_gp_is_normal", align 4
@rcu_expedited_nesting = internal global %struct.atomic_t { i32 1 }, align 4
@__kstrtab_rcu_gp_is_expedited = external dso_local constant [0 x i8], align 1
@__kstrtabns_rcu_gp_is_expedited = external dso_local constant [0 x i8], align 1
@__ksymtab_rcu_gp_is_expedited = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rcu_gp_is_expedited to i32), ptr @__kstrtab_rcu_gp_is_expedited, ptr @__kstrtabns_rcu_gp_is_expedited }, section "___ksymtab_gpl+rcu_gp_is_expedited", align 4
@__kstrtab_rcu_expedite_gp = external dso_local constant [0 x i8], align 1
@__kstrtabns_rcu_expedite_gp = external dso_local constant [0 x i8], align 1
@__ksymtab_rcu_expedite_gp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rcu_expedite_gp to i32), ptr @__kstrtab_rcu_expedite_gp, ptr @__kstrtabns_rcu_expedite_gp }, section "___ksymtab_gpl+rcu_expedite_gp", align 4
@__kstrtab_rcu_unexpedite_gp = external dso_local constant [0 x i8], align 1
@__kstrtabns_rcu_unexpedite_gp = external dso_local constant [0 x i8], align 1
@__ksymtab_rcu_unexpedite_gp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rcu_unexpedite_gp to i32), ptr @__kstrtab_rcu_unexpedite_gp, ptr @__kstrtabns_rcu_unexpedite_gp }, section "___ksymtab_gpl+rcu_unexpedite_gp", align 4
@rcu_boot_ended = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@__kstrtab_rcu_inkernel_boot_has_ended = external dso_local constant [0 x i8], align 1
@__kstrtabns_rcu_inkernel_boot_has_ended = external dso_local constant [0 x i8], align 1
@__ksymtab_rcu_inkernel_boot_has_ended = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rcu_inkernel_boot_has_ended to i32), ptr @__kstrtab_rcu_inkernel_boot_has_ended, ptr @__kstrtabns_rcu_inkernel_boot_has_ended }, section "___ksymtab_gpl+rcu_inkernel_boot_has_ended", align 4
@__initcall__kmod_update__368_240_rcu_set_runtime_mode1 = internal global ptr @rcu_set_runtime_mode, section ".initcall1.init", align 4
@__kstrtab_wakeme_after_rcu = external dso_local constant [0 x i8], align 1
@__kstrtabns_wakeme_after_rcu = external dso_local constant [0 x i8], align 1
@__ksymtab_wakeme_after_rcu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wakeme_after_rcu to i32), ptr @__kstrtab_wakeme_after_rcu, ptr @__kstrtabns_wakeme_after_rcu }, section "___ksymtab_gpl+wakeme_after_rcu", align 4
@__kstrtab___wait_rcu_gp = external dso_local constant [0 x i8], align 1
@__kstrtabns___wait_rcu_gp = external dso_local constant [0 x i8], align 1
@__ksymtab___wait_rcu_gp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__wait_rcu_gp to i32), ptr @__kstrtab___wait_rcu_gp, ptr @__kstrtabns___wait_rcu_gp }, section "___ksymtab_gpl+__wait_rcu_gp", align 4
@__kstrtab_do_trace_rcu_torture_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_do_trace_rcu_torture_read = external dso_local constant [0 x i8], align 1
@__ksymtab_do_trace_rcu_torture_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @do_trace_rcu_torture_read to i32), ptr @__kstrtab_do_trace_rcu_torture_read, ptr @__kstrtabns_do_trace_rcu_torture_read }, section "___ksymtab_gpl+do_trace_rcu_torture_read", align 4
@__param_str_rcu_cpu_stall_ftrace_dump = internal constant [35 x i8] c"rcupdate.rcu_cpu_stall_ftrace_dump\00", align 1
@rcu_cpu_stall_ftrace_dump = dso_local global i32 0, section ".data..read_mostly", align 4
@__param_rcu_cpu_stall_ftrace_dump = internal constant %struct.kernel_param { ptr @__param_str_rcu_cpu_stall_ftrace_dump, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @rcu_cpu_stall_ftrace_dump } }, section "__param", align 4
@__UNIQUE_ID_rcu_cpu_stall_ftrace_dumptype369 = internal constant [46 x i8] c"update.parmtype=rcu_cpu_stall_ftrace_dump:int\00", section ".modinfo", align 1
@rcu_cpu_stall_suppress = dso_local global i32 0, section ".data..read_mostly", align 4
@__kstrtab_rcu_cpu_stall_suppress = external dso_local constant [0 x i8], align 1
@__kstrtabns_rcu_cpu_stall_suppress = external dso_local constant [0 x i8], align 1
@__ksymtab_rcu_cpu_stall_suppress = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rcu_cpu_stall_suppress to i32), ptr @__kstrtab_rcu_cpu_stall_suppress, ptr @__kstrtabns_rcu_cpu_stall_suppress }, section "___ksymtab_gpl+rcu_cpu_stall_suppress", align 4
@__param_str_rcu_cpu_stall_suppress = internal constant [32 x i8] c"rcupdate.rcu_cpu_stall_suppress\00", align 1
@__param_rcu_cpu_stall_suppress = internal constant %struct.kernel_param { ptr @__param_str_rcu_cpu_stall_suppress, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @rcu_cpu_stall_suppress } }, section "__param", align 4
@__UNIQUE_ID_rcu_cpu_stall_suppresstype370 = internal constant [43 x i8] c"update.parmtype=rcu_cpu_stall_suppress:int\00", section ".modinfo", align 1
@rcu_cpu_stall_timeout = dso_local global i32 21, section ".data..read_mostly", align 4
@__param_str_rcu_cpu_stall_timeout = internal constant [31 x i8] c"rcupdate.rcu_cpu_stall_timeout\00", align 1
@__param_rcu_cpu_stall_timeout = internal constant %struct.kernel_param { ptr @__param_str_rcu_cpu_stall_timeout, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @rcu_cpu_stall_timeout } }, section "__param", align 4
@__UNIQUE_ID_rcu_cpu_stall_timeouttype371 = internal constant [42 x i8] c"update.parmtype=rcu_cpu_stall_timeout:int\00", section ".modinfo", align 1
@rcu_cpu_stall_suppress_at_boot = dso_local global i32 0, section ".data..read_mostly", align 4
@__kstrtab_rcu_cpu_stall_suppress_at_boot = external dso_local constant [0 x i8], align 1
@__kstrtabns_rcu_cpu_stall_suppress_at_boot = external dso_local constant [0 x i8], align 1
@__ksymtab_rcu_cpu_stall_suppress_at_boot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rcu_cpu_stall_suppress_at_boot to i32), ptr @__kstrtab_rcu_cpu_stall_suppress_at_boot, ptr @__kstrtabns_rcu_cpu_stall_suppress_at_boot }, section "___ksymtab_gpl+rcu_cpu_stall_suppress_at_boot", align 4
@__param_str_rcu_cpu_stall_suppress_at_boot = internal constant [40 x i8] c"rcupdate.rcu_cpu_stall_suppress_at_boot\00", align 1
@__param_rcu_cpu_stall_suppress_at_boot = internal constant %struct.kernel_param { ptr @__param_str_rcu_cpu_stall_suppress_at_boot, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.68 { ptr @rcu_cpu_stall_suppress_at_boot } }, section "__param", align 4
@__UNIQUE_ID_rcu_cpu_stall_suppress_at_boottype372 = internal constant [51 x i8] c"update.parmtype=rcu_cpu_stall_suppress_at_boot:int\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [44 x i8] c"\016\09No expedited grace period (rcu_normal).\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"\016\09No expedited grace period (rcu_normal_after_boot).\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"\016\09All grace periods are expedited (rcu_expedited).\0A\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"\016\09RCU CPU stall warnings suppressed (rcu_cpu_stall_suppress).\0A\00", align 1
@.str.4 = private unnamed_addr constant [70 x i8] c"\016\09RCU CPU stall warnings timeout set to %d (rcu_cpu_stall_timeout).\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"const char *\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"rcuname\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"gp_seq\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"gpevent\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"%s %ld %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"gp_seq_req\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"u8\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"grplo\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"grphi\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"%s %ld %ld %u %d %d %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"qsmask\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"%s %ld %u %d %d %lx\0A\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"gpseq\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"%s %d %d %d %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"%s %ld %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"gp_tasks\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"%s %ld %lx>%lx %u %d %d %u\0A\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"qsevent\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"%s %ld %d %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"msg\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"polarity\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"oldnesting\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"newnesting\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"dynticks\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"%s %lx %lx %#3x\0A\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"void *\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"rhp\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"func\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"qlen\00", align 1
@.str.44 = private unnamed_addr constant [24 x i8] c"%s rhp=%p func=%ps %ld\0A\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"ctx\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"unsigned long[4]\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"long[4]\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"seglen\00", align 1
@.str.49 = private unnamed_addr constant [114 x i8] c"%s seglen: (DONE=%ld, WAIT=%ld, NEXT_READY=%ld, NEXT=%ld) gp_seq: (DONE=%lu, WAIT=%lu, NEXT_READY=%lu, NEXT=%lu)\0A\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.51 = private unnamed_addr constant [24 x i8] c"%s rhp=%p func=%ld %ld\0A\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"blimit\00", align 1
@.str.53 = private unnamed_addr constant [19 x i8] c"%s CBs=%ld bl=%ld\0A\00", align 1
@.str.54 = private unnamed_addr constant [20 x i8] c"%s rhp=%p func=%ps\0A\00", align 1
@.str.55 = private unnamed_addr constant [20 x i8] c"%s rhp=%p func=%ld\0A\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"nr_records\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"void **\00", align 1
@.str.58 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.59 = private unnamed_addr constant [29 x i8] c"%s bulk=0x%p nr_records=%lu\0A\00", align 1
@.str.60 = private unnamed_addr constant [18 x i8] c"callbacks_invoked\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"cb\00", align 1
@.str.63 = private unnamed_addr constant [3 x i8] c"nr\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"iit\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"risk\00", align 1
@.str.66 = private unnamed_addr constant [33 x i8] c"%s CBs-invoked=%d idle=%c%c%c%c\0A\00", align 1
@.str.67 = private unnamed_addr constant [18 x i8] c"rcutorturename[8]\00", align 1
@.str.68 = private unnamed_addr constant [23 x i8] c"struct callback_head *\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"secs\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"c_old\00", align 1
@.str.71 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.72 = private unnamed_addr constant [37 x i8] c"%s torture read %p %luus c: %lu %lu\0A\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"cnt\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"done\00", align 1
@.str.75 = private unnamed_addr constant [33 x i8] c"%s %s cpu %d remaining %d # %lu\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@llvm.compiler.used = appending global [135 x ptr] [ptr @__UNIQUE_ID_rcu_cpu_stall_ftrace_dumptype369, ptr @__UNIQUE_ID_rcu_cpu_stall_suppress_at_boottype372, ptr @__UNIQUE_ID_rcu_cpu_stall_suppresstype370, ptr @__UNIQUE_ID_rcu_cpu_stall_timeouttype371, ptr @__UNIQUE_ID_rcu_expeditedtype363, ptr @__UNIQUE_ID_rcu_normal_after_boottype365, ptr @__UNIQUE_ID_rcu_normaltype364, ptr @__event_rcu_barrier, ptr @__event_rcu_batch_end, ptr @__event_rcu_batch_start, ptr @__event_rcu_callback, ptr @__event_rcu_dyntick, ptr @__event_rcu_exp_funnel_lock, ptr @__event_rcu_exp_grace_period, ptr @__event_rcu_fqs, ptr @__event_rcu_future_grace_period, ptr @__event_rcu_grace_period, ptr @__event_rcu_grace_period_init, ptr @__event_rcu_invoke_callback, ptr @__event_rcu_invoke_kfree_bulk_callback, ptr @__event_rcu_invoke_kvfree_callback, ptr @__event_rcu_kvfree_callback, ptr @__event_rcu_preempt_task, ptr @__event_rcu_quiescent_state_report, ptr @__event_rcu_segcb_stats, ptr @__event_rcu_stall_warning, ptr @__event_rcu_torture_read, ptr @__event_rcu_unlock_preempted_task, ptr @__event_rcu_utilization, ptr @__initcall__kmod_update__368_240_rcu_set_runtime_mode1, ptr @__ksymtab___wait_rcu_gp, ptr @__ksymtab_do_trace_rcu_torture_read, ptr @__ksymtab_rcu_cpu_stall_suppress, ptr @__ksymtab_rcu_cpu_stall_suppress_at_boot, ptr @__ksymtab_rcu_expedite_gp, ptr @__ksymtab_rcu_gp_is_expedited, ptr @__ksymtab_rcu_gp_is_normal, ptr @__ksymtab_rcu_inkernel_boot_has_ended, ptr @__ksymtab_rcu_unexpedite_gp, ptr @__ksymtab_wakeme_after_rcu, ptr @__param_rcu_cpu_stall_ftrace_dump, ptr @__param_rcu_cpu_stall_suppress, ptr @__param_rcu_cpu_stall_suppress_at_boot, ptr @__param_rcu_cpu_stall_timeout, ptr @__param_rcu_expedited, ptr @__param_rcu_normal, ptr @__param_rcu_normal_after_boot, ptr @__tracepoint_ptr_rcu_barrier, ptr @__tracepoint_ptr_rcu_batch_end, ptr @__tracepoint_ptr_rcu_batch_start, ptr @__tracepoint_ptr_rcu_callback, ptr @__tracepoint_ptr_rcu_dyntick, ptr @__tracepoint_ptr_rcu_exp_funnel_lock, ptr @__tracepoint_ptr_rcu_exp_grace_period, ptr @__tracepoint_ptr_rcu_fqs, ptr @__tracepoint_ptr_rcu_future_grace_period, ptr @__tracepoint_ptr_rcu_grace_period, ptr @__tracepoint_ptr_rcu_grace_period_init, ptr @__tracepoint_ptr_rcu_invoke_callback, ptr @__tracepoint_ptr_rcu_invoke_kfree_bulk_callback, ptr @__tracepoint_ptr_rcu_invoke_kvfree_callback, ptr @__tracepoint_ptr_rcu_kvfree_callback, ptr @__tracepoint_ptr_rcu_preempt_task, ptr @__tracepoint_ptr_rcu_quiescent_state_report, ptr @__tracepoint_ptr_rcu_segcb_stats, ptr @__tracepoint_ptr_rcu_stall_warning, ptr @__tracepoint_ptr_rcu_torture_read, ptr @__tracepoint_ptr_rcu_unlock_preempted_task, ptr @__tracepoint_ptr_rcu_utilization, ptr @__tracepoint_rcu_barrier, ptr @__tracepoint_rcu_batch_end, ptr @__tracepoint_rcu_batch_start, ptr @__tracepoint_rcu_callback, ptr @__tracepoint_rcu_dyntick, ptr @__tracepoint_rcu_exp_funnel_lock, ptr @__tracepoint_rcu_exp_grace_period, ptr @__tracepoint_rcu_fqs, ptr @__tracepoint_rcu_future_grace_period, ptr @__tracepoint_rcu_grace_period, ptr @__tracepoint_rcu_grace_period_init, ptr @__tracepoint_rcu_invoke_callback, ptr @__tracepoint_rcu_invoke_kfree_bulk_callback, ptr @__tracepoint_rcu_invoke_kvfree_callback, ptr @__tracepoint_rcu_kvfree_callback, ptr @__tracepoint_rcu_preempt_task, ptr @__tracepoint_rcu_quiescent_state_report, ptr @__tracepoint_rcu_segcb_stats, ptr @__tracepoint_rcu_stall_warning, ptr @__tracepoint_rcu_torture_read, ptr @__tracepoint_rcu_unlock_preempted_task, ptr @__tracepoint_rcu_utilization, ptr @event_class_rcu_barrier, ptr @event_class_rcu_batch_end, ptr @event_class_rcu_batch_start, ptr @event_class_rcu_callback, ptr @event_class_rcu_dyntick, ptr @event_class_rcu_exp_funnel_lock, ptr @event_class_rcu_exp_grace_period, ptr @event_class_rcu_fqs, ptr @event_class_rcu_future_grace_period, ptr @event_class_rcu_grace_period, ptr @event_class_rcu_grace_period_init, ptr @event_class_rcu_invoke_callback, ptr @event_class_rcu_invoke_kfree_bulk_callback, ptr @event_class_rcu_invoke_kvfree_callback, ptr @event_class_rcu_kvfree_callback, ptr @event_class_rcu_preempt_task, ptr @event_class_rcu_quiescent_state_report, ptr @event_class_rcu_segcb_stats, ptr @event_class_rcu_stall_warning, ptr @event_class_rcu_torture_read, ptr @event_class_rcu_unlock_preempted_task, ptr @event_class_rcu_utilization, ptr @event_rcu_barrier, ptr @event_rcu_batch_end, ptr @event_rcu_batch_start, ptr @event_rcu_callback, ptr @event_rcu_dyntick, ptr @event_rcu_exp_funnel_lock, ptr @event_rcu_exp_grace_period, ptr @event_rcu_fqs, ptr @event_rcu_future_grace_period, ptr @event_rcu_grace_period, ptr @event_rcu_grace_period_init, ptr @event_rcu_invoke_callback, ptr @event_rcu_invoke_kfree_bulk_callback, ptr @event_rcu_invoke_kvfree_callback, ptr @event_rcu_kvfree_callback, ptr @event_rcu_preempt_task, ptr @event_rcu_quiescent_state_report, ptr @event_rcu_segcb_stats, ptr @event_rcu_stall_warning, ptr @event_rcu_torture_read, ptr @event_rcu_unlock_preempted_task, ptr @event_rcu_utilization], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rcu_utilization(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_utilization, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #13
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rcu_grace_period(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_grace_period, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, ptr noundef %3) #13
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rcu_future_grace_period(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) #0 {
  %9 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_future_grace_period, i32 0, i32 7), align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %11, %8
  %12 = phi ptr [ %16, %11 ], [ %9, %8 ]
  %13 = load volatile ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.tracepoint_func, ptr %12, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void %13(ptr noundef %15, ptr noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) #13
  %16 = getelementptr %struct.tracepoint_func, ptr %12, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %11

19:                                               ; preds = %11, %8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rcu_grace_period_init(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_grace_period_init, i32 0, i32 7), align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %10, %7
  %11 = phi ptr [ %15, %10 ], [ %8, %7 ]
  %12 = load volatile ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.tracepoint_func, ptr %11, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  tail call void %12(ptr noundef %14, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #13
  %15 = getelementptr %struct.tracepoint_func, ptr %11, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %10

18:                                               ; preds = %10, %7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rcu_exp_grace_period(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_exp_grace_period, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, ptr noundef %3) #13
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rcu_exp_funnel_lock(ptr nocapture readnone %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #0 {
  %7 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_exp_funnel_lock, i32 0, i32 7), align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %9, %6
  %10 = phi ptr [ %14, %9 ], [ %7, %6 ]
  %11 = load volatile ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tracepoint_func, ptr %10, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void %11(ptr noundef %13, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #13
  %14 = getelementptr %struct.tracepoint_func, ptr %10, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %9

17:                                               ; preds = %9, %6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rcu_preempt_task(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_preempt_task, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #13
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rcu_unlock_preempted_task(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_unlock_preempted_task, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #13
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rcu_quiescent_state_report(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i8 noundef zeroext %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #0 {
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_quiescent_state_report, i32 0, i32 7), align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %12, %9
  %13 = phi ptr [ %17, %12 ], [ %10, %9 ]
  %14 = load volatile ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.tracepoint_func, ptr %13, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  tail call void %14(ptr noundef %16, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i8 noundef zeroext %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #13
  %17 = getelementptr %struct.tracepoint_func, ptr %13, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %12

20:                                               ; preds = %12, %9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rcu_fqs(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_fqs, i32 0, i32 7), align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %8, %5
  %9 = phi ptr [ %13, %8 ], [ %6, %5 ]
  %10 = load volatile ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tracepoint_func, ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void %10(ptr noundef %12, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #13
  %13 = getelementptr %struct.tracepoint_func, ptr %9, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8

16:                                               ; preds = %8, %5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rcu_stall_warning(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_stall_warning, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #13
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rcu_dyntick(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_dyntick, i32 0, i32 7), align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %8, %5
  %9 = phi ptr [ %13, %8 ], [ %6, %5 ]
  %10 = load volatile ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tracepoint_func, ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void %10(ptr noundef %12, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #13
  %13 = getelementptr %struct.tracepoint_func, ptr %9, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8

16:                                               ; preds = %8, %5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rcu_callback(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_callback, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, ptr noundef %2, i32 noundef %3) #13
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rcu_segcb_stats(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_segcb_stats, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #13
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rcu_kvfree_callback(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_kvfree_callback, i32 0, i32 7), align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %8, %5
  %9 = phi ptr [ %13, %8 ], [ %6, %5 ]
  %10 = load volatile ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tracepoint_func, ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void %10(ptr noundef %12, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #13
  %13 = getelementptr %struct.tracepoint_func, ptr %9, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8

16:                                               ; preds = %8, %5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rcu_batch_start(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_batch_start, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #13
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rcu_invoke_callback(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_invoke_callback, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #13
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rcu_invoke_kvfree_callback(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_invoke_kvfree_callback, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, ptr noundef %2, i32 noundef %3) #13
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rcu_invoke_kfree_bulk_callback(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_invoke_kfree_bulk_callback, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, ptr noundef %3) #13
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rcu_batch_end(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6) #0 {
  %8 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_batch_end, i32 0, i32 7), align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %10, %7
  %11 = phi ptr [ %15, %10 ], [ %8, %7 ]
  %12 = load volatile ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.tracepoint_func, ptr %11, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  tail call void %12(ptr noundef %14, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6) #13
  %15 = getelementptr %struct.tracepoint_func, ptr %11, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %10

18:                                               ; preds = %10, %7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rcu_torture_read(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_torture_read, i32 0, i32 7), align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %9, %6
  %10 = phi ptr [ %14, %9 ], [ %7, %6 ]
  %11 = load volatile ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tracepoint_func, ptr %10, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void %11(ptr noundef %13, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #13
  %14 = getelementptr %struct.tracepoint_func, ptr %10, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %9

17:                                               ; preds = %9, %6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rcu_barrier(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_barrier, i32 0, i32 7), align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %9, %6
  %10 = phi ptr [ %14, %9 ], [ %7, %6 ]
  %11 = load volatile ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tracepoint_func, ptr %10, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void %11(ptr noundef %13, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #13
  %14 = getelementptr %struct.tracepoint_func, ptr %10, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %9

17:                                               ; preds = %9, %6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rcu_utilization(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !9
  %4 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 704
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !10

8:                                                ; preds = %2
  %9 = and i32 %5, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !11

11:                                               ; preds = %8
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #13
  br i1 %12, label %18, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 12) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_rcu_utilization, ptr %14, i32 0, i32 1
  store ptr %1, ptr %17, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #13
  br label %18

18:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_rcu_utilization(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #11, !srcloc !12
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %3, ptr noundef nonnull %4) #13
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #13
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #13
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #13
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_rcu_utilization, ptr %20, i32 0, i32 1
  store ptr %1, ptr %33, align 4
  %34 = load i32, ptr %4, align 4
  %35 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 12, i32 noundef %34, ptr noundef %0, i64 noundef 1, ptr noundef %35, ptr noundef %12, ptr noundef null) #13
  br label %36

36:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rcu_grace_period(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !10

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #13
  br i1 %14, label %22, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 20) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_event_raw_rcu_grace_period, ptr %16, i32 0, i32 1
  store ptr %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_rcu_grace_period, ptr %16, i32 0, i32 2
  store i32 %2, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_rcu_grace_period, ptr %16, i32 0, i32 3
  store ptr %3, ptr %21, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #13
  br label %22

22:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_rcu_grace_period(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #11, !srcloc !12
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %40, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #13
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #13
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #13
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_rcu_grace_period, ptr %22, i32 0, i32 1
  store ptr %1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_rcu_grace_period, ptr %22, i32 0, i32 2
  store i32 %2, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_rcu_grace_period, ptr %22, i32 0, i32 3
  store ptr %3, ptr %37, align 4
  %38 = load i32, ptr %6, align 4
  %39 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 20, i32 noundef %38, ptr noundef %0, i64 noundef 1, ptr noundef %39, ptr noundef %14, ptr noundef null) #13
  br label %40

40:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rcu_future_grace_period(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) #0 {
  %9 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %9, i8 0, i32 24, i1 false), !annotation !9
  %10 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 704
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14, !prof !10

14:                                               ; preds = %8
  %15 = and i32 %11, 256
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19, !prof !11

17:                                               ; preds = %14
  %18 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #13
  br i1 %18, label %30, label %19

19:                                               ; preds = %17, %14, %8
  %20 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %9, ptr noundef %0, i32 noundef 36) #13
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.trace_event_raw_rcu_future_grace_period, ptr %20, i32 0, i32 1
  store ptr %1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_rcu_future_grace_period, ptr %20, i32 0, i32 2
  store i32 %2, ptr %24, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_rcu_future_grace_period, ptr %20, i32 0, i32 3
  store i32 %3, ptr %25, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_rcu_future_grace_period, ptr %20, i32 0, i32 4
  store i8 %4, ptr %26, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_rcu_future_grace_period, ptr %20, i32 0, i32 5
  store i32 %5, ptr %27, align 4
  %28 = getelementptr inbounds %struct.trace_event_raw_rcu_future_grace_period, ptr %20, i32 0, i32 6
  store i32 %6, ptr %28, align 4
  %29 = getelementptr inbounds %struct.trace_event_raw_rcu_future_grace_period, ptr %20, i32 0, i32 7
  store ptr %7, ptr %29, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %9) #13
  br label %30

30:                                               ; preds = %22, %19, %17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_rcu_future_grace_period(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) #0 {
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  store ptr null, ptr %9, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #13
  store i32 0, ptr %10, align 4, !annotation !9
  %11 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %15) #11, !srcloc !12
  %17 = add i32 %16, %13
  %18 = inttoptr i32 %17 to ptr
  %19 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %8
  %23 = load volatile ptr, ptr %18, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %48, label %25

25:                                               ; preds = %22, %8
  %26 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %9, ptr noundef nonnull %10) #13
  %27 = icmp eq ptr %26, null
  br i1 %27, label %48, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %9, align 4
  %30 = call ptr @llvm.returnaddress(i32 0) #13
  %31 = ptrtoint ptr %30 to i32
  %32 = getelementptr [18 x i32], ptr %29, i32 0, i32 15
  store i32 %31, ptr %32, align 4
  %33 = call ptr @llvm.frameaddress.p0(i32 0) #13
  %34 = ptrtoint ptr %33 to i32
  %35 = getelementptr [18 x i32], ptr %29, i32 0, i32 11
  store i32 %34, ptr %35, align 4
  %36 = call i32 @llvm.read_register.i32(metadata !0) #13
  %37 = getelementptr [18 x i32], ptr %29, i32 0, i32 13
  store i32 %36, ptr %37, align 4
  %38 = getelementptr [18 x i32], ptr %29, i32 0, i32 16
  store i32 19, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_rcu_future_grace_period, ptr %26, i32 0, i32 1
  store ptr %1, ptr %39, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_rcu_future_grace_period, ptr %26, i32 0, i32 2
  store i32 %2, ptr %40, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_rcu_future_grace_period, ptr %26, i32 0, i32 3
  store i32 %3, ptr %41, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_rcu_future_grace_period, ptr %26, i32 0, i32 4
  store i8 %4, ptr %42, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_rcu_future_grace_period, ptr %26, i32 0, i32 5
  store i32 %5, ptr %43, align 4
  %44 = getelementptr inbounds %struct.trace_event_raw_rcu_future_grace_period, ptr %26, i32 0, i32 6
  store i32 %6, ptr %44, align 4
  %45 = getelementptr inbounds %struct.trace_event_raw_rcu_future_grace_period, ptr %26, i32 0, i32 7
  store ptr %7, ptr %45, align 4
  %46 = load i32, ptr %10, align 4
  %47 = load ptr, ptr %9, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %26, i32 noundef 36, i32 noundef %46, ptr noundef %0, i64 noundef 1, ptr noundef %47, ptr noundef %18, ptr noundef null) #13
  br label %48

48:                                               ; preds = %28, %25, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rcu_grace_period_init(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 24, i1 false), !annotation !9
  %9 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 704
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13, !prof !10

13:                                               ; preds = %7
  %14 = and i32 %10, 256
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18, !prof !11

16:                                               ; preds = %13
  %17 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #13
  br i1 %17, label %28, label %18

18:                                               ; preds = %16, %13, %7
  %19 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %8, ptr noundef %0, i32 noundef 32) #13
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.trace_event_raw_rcu_grace_period_init, ptr %19, i32 0, i32 1
  store ptr %1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_rcu_grace_period_init, ptr %19, i32 0, i32 2
  store i32 %2, ptr %23, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_rcu_grace_period_init, ptr %19, i32 0, i32 3
  store i8 %3, ptr %24, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_rcu_grace_period_init, ptr %19, i32 0, i32 4
  store i32 %4, ptr %25, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_rcu_grace_period_init, ptr %19, i32 0, i32 5
  store i32 %5, ptr %26, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_rcu_grace_period_init, ptr %19, i32 0, i32 6
  store i32 %6, ptr %27, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %8) #13
  br label %28

28:                                               ; preds = %21, %18, %16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_rcu_grace_period_init(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  store ptr null, ptr %8, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  store i32 0, ptr %9, align 4, !annotation !9
  %10 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %14 = inttoptr i32 %13 to ptr
  %15 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %14) #11, !srcloc !12
  %16 = add i32 %15, %12
  %17 = inttoptr i32 %16 to ptr
  %18 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %7
  %22 = load volatile ptr, ptr %17, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %46, label %24

24:                                               ; preds = %21, %7
  %25 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %8, ptr noundef nonnull %9) #13
  %26 = icmp eq ptr %25, null
  br i1 %26, label %46, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %8, align 4
  %29 = call ptr @llvm.returnaddress(i32 0) #13
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %28, i32 0, i32 15
  store i32 %30, ptr %31, align 4
  %32 = call ptr @llvm.frameaddress.p0(i32 0) #13
  %33 = ptrtoint ptr %32 to i32
  %34 = getelementptr [18 x i32], ptr %28, i32 0, i32 11
  store i32 %33, ptr %34, align 4
  %35 = call i32 @llvm.read_register.i32(metadata !0) #13
  %36 = getelementptr [18 x i32], ptr %28, i32 0, i32 13
  store i32 %35, ptr %36, align 4
  %37 = getelementptr [18 x i32], ptr %28, i32 0, i32 16
  store i32 19, ptr %37, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_rcu_grace_period_init, ptr %25, i32 0, i32 1
  store ptr %1, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_rcu_grace_period_init, ptr %25, i32 0, i32 2
  store i32 %2, ptr %39, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_rcu_grace_period_init, ptr %25, i32 0, i32 3
  store i8 %3, ptr %40, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_rcu_grace_period_init, ptr %25, i32 0, i32 4
  store i32 %4, ptr %41, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_rcu_grace_period_init, ptr %25, i32 0, i32 5
  store i32 %5, ptr %42, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_rcu_grace_period_init, ptr %25, i32 0, i32 6
  store i32 %6, ptr %43, align 4
  %44 = load i32, ptr %9, align 4
  %45 = load ptr, ptr %8, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %25, i32 noundef 36, i32 noundef %44, ptr noundef %0, i64 noundef 1, ptr noundef %45, ptr noundef %17, ptr noundef null) #13
  br label %46

46:                                               ; preds = %27, %24, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rcu_exp_grace_period(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !10

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #13
  br i1 %14, label %22, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 20) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_event_raw_rcu_exp_grace_period, ptr %16, i32 0, i32 1
  store ptr %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_rcu_exp_grace_period, ptr %16, i32 0, i32 2
  store i32 %2, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_rcu_exp_grace_period, ptr %16, i32 0, i32 3
  store ptr %3, ptr %21, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #13
  br label %22

22:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_rcu_exp_grace_period(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #11, !srcloc !12
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %40, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #13
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #13
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #13
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_rcu_exp_grace_period, ptr %22, i32 0, i32 1
  store ptr %1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_rcu_exp_grace_period, ptr %22, i32 0, i32 2
  store i32 %2, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_rcu_exp_grace_period, ptr %22, i32 0, i32 3
  store ptr %3, ptr %37, align 4
  %38 = load i32, ptr %6, align 4
  %39 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 20, i32 noundef %38, ptr noundef %0, i64 noundef 1, ptr noundef %39, ptr noundef %14, ptr noundef null) #13
  br label %40

40:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rcu_exp_funnel_lock(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #0 {
  %7 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 24, i1 false), !annotation !9
  %8 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 704
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12, !prof !10

12:                                               ; preds = %6
  %13 = and i32 %9, 256
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17, !prof !11

15:                                               ; preds = %12
  %16 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #13
  br i1 %16, label %26, label %17

17:                                               ; preds = %15, %12, %6
  %18 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %7, ptr noundef %0, i32 noundef 28) #13
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.trace_event_raw_rcu_exp_funnel_lock, ptr %18, i32 0, i32 1
  store ptr %1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_rcu_exp_funnel_lock, ptr %18, i32 0, i32 2
  store i8 %2, ptr %22, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_rcu_exp_funnel_lock, ptr %18, i32 0, i32 3
  store i32 %3, ptr %23, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_rcu_exp_funnel_lock, ptr %18, i32 0, i32 4
  store i32 %4, ptr %24, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_rcu_exp_funnel_lock, ptr %18, i32 0, i32 5
  store ptr %5, ptr %25, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %7) #13
  br label %26

26:                                               ; preds = %20, %17, %15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_rcu_exp_funnel_lock(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store ptr null, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  store i32 0, ptr %8, align 4, !annotation !9
  %9 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #11, !srcloc !12
  %15 = add i32 %14, %11
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load volatile ptr, ptr %16, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %44, label %23

23:                                               ; preds = %20, %6
  %24 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %7, ptr noundef nonnull %8) #13
  %25 = icmp eq ptr %24, null
  br i1 %25, label %44, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %7, align 4
  %28 = call ptr @llvm.returnaddress(i32 0) #13
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %27, i32 0, i32 15
  store i32 %29, ptr %30, align 4
  %31 = call ptr @llvm.frameaddress.p0(i32 0) #13
  %32 = ptrtoint ptr %31 to i32
  %33 = getelementptr [18 x i32], ptr %27, i32 0, i32 11
  store i32 %32, ptr %33, align 4
  %34 = call i32 @llvm.read_register.i32(metadata !0) #13
  %35 = getelementptr [18 x i32], ptr %27, i32 0, i32 13
  store i32 %34, ptr %35, align 4
  %36 = getelementptr [18 x i32], ptr %27, i32 0, i32 16
  store i32 19, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_rcu_exp_funnel_lock, ptr %24, i32 0, i32 1
  store ptr %1, ptr %37, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_rcu_exp_funnel_lock, ptr %24, i32 0, i32 2
  store i8 %2, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_rcu_exp_funnel_lock, ptr %24, i32 0, i32 3
  store i32 %3, ptr %39, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_rcu_exp_funnel_lock, ptr %24, i32 0, i32 4
  store i32 %4, ptr %40, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_rcu_exp_funnel_lock, ptr %24, i32 0, i32 5
  store ptr %5, ptr %41, align 4
  %42 = load i32, ptr %8, align 4
  %43 = load ptr, ptr %7, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %24, i32 noundef 28, i32 noundef %42, ptr noundef %0, i64 noundef 1, ptr noundef %43, ptr noundef %16, ptr noundef null) #13
  br label %44

44:                                               ; preds = %26, %23, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rcu_preempt_task(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !10

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #13
  br i1 %14, label %22, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 20) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_event_raw_rcu_preempt_task, ptr %16, i32 0, i32 1
  store ptr %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_rcu_preempt_task, ptr %16, i32 0, i32 2
  store i32 %3, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_rcu_preempt_task, ptr %16, i32 0, i32 3
  store i32 %2, ptr %21, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #13
  br label %22

22:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_rcu_preempt_task(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #11, !srcloc !12
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %40, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #13
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #13
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #13
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_rcu_preempt_task, ptr %22, i32 0, i32 1
  store ptr %1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_rcu_preempt_task, ptr %22, i32 0, i32 2
  store i32 %3, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_rcu_preempt_task, ptr %22, i32 0, i32 3
  store i32 %2, ptr %37, align 4
  %38 = load i32, ptr %6, align 4
  %39 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 20, i32 noundef %38, ptr noundef %0, i64 noundef 1, ptr noundef %39, ptr noundef %14, ptr noundef null) #13
  br label %40

40:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rcu_unlock_preempted_task(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !10

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #13
  br i1 %14, label %22, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 20) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_event_raw_rcu_unlock_preempted_task, ptr %16, i32 0, i32 1
  store ptr %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_rcu_unlock_preempted_task, ptr %16, i32 0, i32 2
  store i32 %2, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_rcu_unlock_preempted_task, ptr %16, i32 0, i32 3
  store i32 %3, ptr %21, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #13
  br label %22

22:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_rcu_unlock_preempted_task(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #11, !srcloc !12
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %40, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #13
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #13
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #13
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_rcu_unlock_preempted_task, ptr %22, i32 0, i32 1
  store ptr %1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_rcu_unlock_preempted_task, ptr %22, i32 0, i32 2
  store i32 %2, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_rcu_unlock_preempted_task, ptr %22, i32 0, i32 3
  store i32 %3, ptr %37, align 4
  %38 = load i32, ptr %6, align 4
  %39 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 20, i32 noundef %38, ptr noundef %0, i64 noundef 1, ptr noundef %39, ptr noundef %14, ptr noundef null) #13
  br label %40

40:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rcu_quiescent_state_report(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i8 noundef zeroext %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #0 {
  %10 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %10, i8 0, i32 24, i1 false), !annotation !9
  %11 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 704
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15, !prof !10

15:                                               ; preds = %9
  %16 = and i32 %12, 256
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20, !prof !11

18:                                               ; preds = %15
  %19 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #13
  br i1 %19, label %33, label %20

20:                                               ; preds = %18, %15, %9
  %21 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %10, ptr noundef %0, i32 noundef 40) #13
  %22 = icmp eq ptr %21, null
  br i1 %22, label %33, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.trace_event_raw_rcu_quiescent_state_report, ptr %21, i32 0, i32 1
  store ptr %1, ptr %24, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_rcu_quiescent_state_report, ptr %21, i32 0, i32 2
  store i32 %2, ptr %25, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_rcu_quiescent_state_report, ptr %21, i32 0, i32 3
  store i32 %3, ptr %26, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_rcu_quiescent_state_report, ptr %21, i32 0, i32 4
  store i32 %4, ptr %27, align 4
  %28 = getelementptr inbounds %struct.trace_event_raw_rcu_quiescent_state_report, ptr %21, i32 0, i32 5
  store i8 %5, ptr %28, align 4
  %29 = getelementptr inbounds %struct.trace_event_raw_rcu_quiescent_state_report, ptr %21, i32 0, i32 6
  store i32 %6, ptr %29, align 4
  %30 = getelementptr inbounds %struct.trace_event_raw_rcu_quiescent_state_report, ptr %21, i32 0, i32 7
  store i32 %7, ptr %30, align 4
  %31 = trunc i32 %8 to i8
  %32 = getelementptr inbounds %struct.trace_event_raw_rcu_quiescent_state_report, ptr %21, i32 0, i32 8
  store i8 %31, ptr %32, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %10) #13
  br label %33

33:                                               ; preds = %23, %20, %18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_rcu_quiescent_state_report(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i8 noundef zeroext %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #0 {
  %10 = alloca ptr, align 4
  %11 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #13
  store ptr null, ptr %10, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #13
  store i32 0, ptr %11, align 4, !annotation !9
  %12 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %16 = inttoptr i32 %15 to ptr
  %17 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %16) #11, !srcloc !12
  %18 = add i32 %17, %14
  %19 = inttoptr i32 %18 to ptr
  %20 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %9
  %24 = load volatile ptr, ptr %19, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %51, label %26

26:                                               ; preds = %23, %9
  %27 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %10, ptr noundef nonnull %11) #13
  %28 = icmp eq ptr %27, null
  br i1 %28, label %51, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %10, align 4
  %31 = call ptr @llvm.returnaddress(i32 0) #13
  %32 = ptrtoint ptr %31 to i32
  %33 = getelementptr [18 x i32], ptr %30, i32 0, i32 15
  store i32 %32, ptr %33, align 4
  %34 = call ptr @llvm.frameaddress.p0(i32 0) #13
  %35 = ptrtoint ptr %34 to i32
  %36 = getelementptr [18 x i32], ptr %30, i32 0, i32 11
  store i32 %35, ptr %36, align 4
  %37 = call i32 @llvm.read_register.i32(metadata !0) #13
  %38 = getelementptr [18 x i32], ptr %30, i32 0, i32 13
  store i32 %37, ptr %38, align 4
  %39 = getelementptr [18 x i32], ptr %30, i32 0, i32 16
  store i32 19, ptr %39, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_rcu_quiescent_state_report, ptr %27, i32 0, i32 1
  store ptr %1, ptr %40, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_rcu_quiescent_state_report, ptr %27, i32 0, i32 2
  store i32 %2, ptr %41, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_rcu_quiescent_state_report, ptr %27, i32 0, i32 3
  store i32 %3, ptr %42, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_rcu_quiescent_state_report, ptr %27, i32 0, i32 4
  store i32 %4, ptr %43, align 4
  %44 = getelementptr inbounds %struct.trace_event_raw_rcu_quiescent_state_report, ptr %27, i32 0, i32 5
  store i8 %5, ptr %44, align 4
  %45 = getelementptr inbounds %struct.trace_event_raw_rcu_quiescent_state_report, ptr %27, i32 0, i32 6
  store i32 %6, ptr %45, align 4
  %46 = getelementptr inbounds %struct.trace_event_raw_rcu_quiescent_state_report, ptr %27, i32 0, i32 7
  store i32 %7, ptr %46, align 4
  %47 = trunc i32 %8 to i8
  %48 = getelementptr inbounds %struct.trace_event_raw_rcu_quiescent_state_report, ptr %27, i32 0, i32 8
  store i8 %47, ptr %48, align 4
  %49 = load i32, ptr %11, align 4
  %50 = load ptr, ptr %10, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %27, i32 noundef 44, i32 noundef %49, ptr noundef %0, i64 noundef 1, ptr noundef %50, ptr noundef %19, ptr noundef null) #13
  br label %51

51:                                               ; preds = %29, %26, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rcu_fqs(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 24, i1 false), !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 704
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11, !prof !10

11:                                               ; preds = %5
  %12 = and i32 %8, 256
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16, !prof !11

14:                                               ; preds = %11
  %15 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #13
  br i1 %15, label %24, label %16

16:                                               ; preds = %14, %11, %5
  %17 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %6, ptr noundef %0, i32 noundef 24) #13
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.trace_event_raw_rcu_fqs, ptr %17, i32 0, i32 1
  store ptr %1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_rcu_fqs, ptr %17, i32 0, i32 2
  store i32 %2, ptr %21, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_rcu_fqs, ptr %17, i32 0, i32 3
  store i32 %3, ptr %22, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_rcu_fqs, ptr %17, i32 0, i32 4
  store ptr %4, ptr %23, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %6) #13
  br label %24

24:                                               ; preds = %19, %16, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_rcu_fqs(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store ptr null, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store i32 0, ptr %7, align 4, !annotation !9
  %8 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %12) #11, !srcloc !12
  %14 = add i32 %13, %10
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load volatile ptr, ptr %15, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %42, label %22

22:                                               ; preds = %19, %5
  %23 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %6, ptr noundef nonnull %7) #13
  %24 = icmp eq ptr %23, null
  br i1 %24, label %42, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %6, align 4
  %27 = call ptr @llvm.returnaddress(i32 0) #13
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %26, i32 0, i32 15
  store i32 %28, ptr %29, align 4
  %30 = call ptr @llvm.frameaddress.p0(i32 0) #13
  %31 = ptrtoint ptr %30 to i32
  %32 = getelementptr [18 x i32], ptr %26, i32 0, i32 11
  store i32 %31, ptr %32, align 4
  %33 = call i32 @llvm.read_register.i32(metadata !0) #13
  %34 = getelementptr [18 x i32], ptr %26, i32 0, i32 13
  store i32 %33, ptr %34, align 4
  %35 = getelementptr [18 x i32], ptr %26, i32 0, i32 16
  store i32 19, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_rcu_fqs, ptr %23, i32 0, i32 1
  store ptr %1, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_rcu_fqs, ptr %23, i32 0, i32 2
  store i32 %2, ptr %37, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_rcu_fqs, ptr %23, i32 0, i32 3
  store i32 %3, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_rcu_fqs, ptr %23, i32 0, i32 4
  store ptr %4, ptr %39, align 4
  %40 = load i32, ptr %7, align 4
  %41 = load ptr, ptr %6, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %23, i32 noundef 28, i32 noundef %40, ptr noundef %0, i64 noundef 1, ptr noundef %41, ptr noundef %15, ptr noundef null) #13
  br label %42

42:                                               ; preds = %25, %22, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rcu_stall_warning(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
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
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #13
  br i1 %13, label %20, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 16) #13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_rcu_stall_warning, ptr %15, i32 0, i32 1
  store ptr %1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_rcu_stall_warning, ptr %15, i32 0, i32 2
  store ptr %2, ptr %19, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #13
  br label %20

20:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_rcu_stall_warning(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #11, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %38, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #13
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #13
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #13
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_rcu_stall_warning, ptr %21, i32 0, i32 1
  store ptr %1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_rcu_stall_warning, ptr %21, i32 0, i32 2
  store ptr %2, ptr %35, align 4
  %36 = load i32, ptr %5, align 4
  %37 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 20, i32 noundef %36, ptr noundef %0, i64 noundef 1, ptr noundef %37, ptr noundef %13, ptr noundef null) #13
  br label %38

38:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rcu_dyntick(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 24, i1 false), !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 704
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11, !prof !10

11:                                               ; preds = %5
  %12 = and i32 %8, 256
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16, !prof !11

14:                                               ; preds = %11
  %15 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #13
  br i1 %15, label %24, label %16

16:                                               ; preds = %14, %11, %5
  %17 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %6, ptr noundef %0, i32 noundef 24) #13
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.trace_event_raw_rcu_dyntick, ptr %17, i32 0, i32 1
  store ptr %1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_rcu_dyntick, ptr %17, i32 0, i32 2
  store i32 %2, ptr %21, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_rcu_dyntick, ptr %17, i32 0, i32 3
  store i32 %3, ptr %22, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_rcu_dyntick, ptr %17, i32 0, i32 4
  store i32 %4, ptr %23, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %6) #13
  br label %24

24:                                               ; preds = %19, %16, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_rcu_dyntick(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store ptr null, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store i32 0, ptr %7, align 4, !annotation !9
  %8 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %12) #11, !srcloc !12
  %14 = add i32 %13, %10
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load volatile ptr, ptr %15, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %42, label %22

22:                                               ; preds = %19, %5
  %23 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %6, ptr noundef nonnull %7) #13
  %24 = icmp eq ptr %23, null
  br i1 %24, label %42, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %6, align 4
  %27 = call ptr @llvm.returnaddress(i32 0) #13
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %26, i32 0, i32 15
  store i32 %28, ptr %29, align 4
  %30 = call ptr @llvm.frameaddress.p0(i32 0) #13
  %31 = ptrtoint ptr %30 to i32
  %32 = getelementptr [18 x i32], ptr %26, i32 0, i32 11
  store i32 %31, ptr %32, align 4
  %33 = call i32 @llvm.read_register.i32(metadata !0) #13
  %34 = getelementptr [18 x i32], ptr %26, i32 0, i32 13
  store i32 %33, ptr %34, align 4
  %35 = getelementptr [18 x i32], ptr %26, i32 0, i32 16
  store i32 19, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_rcu_dyntick, ptr %23, i32 0, i32 1
  store ptr %1, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_rcu_dyntick, ptr %23, i32 0, i32 2
  store i32 %2, ptr %37, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_rcu_dyntick, ptr %23, i32 0, i32 3
  store i32 %3, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_rcu_dyntick, ptr %23, i32 0, i32 4
  store i32 %4, ptr %39, align 4
  %40 = load i32, ptr %7, align 4
  %41 = load ptr, ptr %6, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %23, i32 noundef 28, i32 noundef %40, ptr noundef %0, i64 noundef 1, ptr noundef %41, ptr noundef %15, ptr noundef null) #13
  br label %42

42:                                               ; preds = %25, %22, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rcu_callback(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !10

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #13
  br i1 %14, label %25, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 24) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_event_raw_rcu_callback, ptr %16, i32 0, i32 1
  store ptr %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_rcu_callback, ptr %16, i32 0, i32 2
  store ptr %2, ptr %20, align 4
  %21 = getelementptr inbounds %struct.callback_head, ptr %2, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_rcu_callback, ptr %16, i32 0, i32 3
  store ptr %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_rcu_callback, ptr %16, i32 0, i32 4
  store i32 %3, ptr %24, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #13
  br label %25

25:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_rcu_callback(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #11, !srcloc !12
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %43, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  %23 = icmp eq ptr %22, null
  br i1 %23, label %43, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #13
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #13
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #13
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_rcu_callback, ptr %22, i32 0, i32 1
  store ptr %1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_rcu_callback, ptr %22, i32 0, i32 2
  store ptr %2, ptr %36, align 4
  %37 = getelementptr inbounds %struct.callback_head, ptr %2, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_rcu_callback, ptr %22, i32 0, i32 3
  store ptr %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_rcu_callback, ptr %22, i32 0, i32 4
  store i32 %3, ptr %40, align 4
  %41 = load i32, ptr %6, align 4
  %42 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 28, i32 noundef %41, ptr noundef %0, i64 noundef 1, ptr noundef %42, ptr noundef %14, ptr noundef null) #13
  br label %43

43:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rcu_segcb_stats(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
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
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #13
  br i1 %13, label %23, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 44) #13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_rcu_segcb_stats, ptr %15, i32 0, i32 1
  store ptr %2, ptr %18, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_rcu_segcb_stats, ptr %15, i32 0, i32 3
  %20 = getelementptr inbounds %struct.rcu_segcblist, ptr %1, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %19, ptr noundef align 4 dereferenceable(16) %20, i32 16, i1 false)
  %21 = getelementptr inbounds %struct.trace_event_raw_rcu_segcb_stats, ptr %15, i32 0, i32 2
  %22 = getelementptr inbounds %struct.rcu_segcblist, ptr %1, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %21, ptr noundef align 4 dereferenceable(16) %22, i32 16, i1 false)
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #13
  br label %23

23:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_rcu_segcb_stats(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #11, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %41, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  %22 = icmp eq ptr %21, null
  br i1 %22, label %41, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #13
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #13
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #13
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_rcu_segcb_stats, ptr %21, i32 0, i32 1
  store ptr %2, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_rcu_segcb_stats, ptr %21, i32 0, i32 3
  %36 = getelementptr inbounds %struct.rcu_segcblist, ptr %1, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %35, ptr noundef align 4 dereferenceable(16) %36, i32 16, i1 false)
  %37 = getelementptr inbounds %struct.trace_event_raw_rcu_segcb_stats, ptr %21, i32 0, i32 2
  %38 = getelementptr inbounds %struct.rcu_segcblist, ptr %1, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %37, ptr noundef align 4 dereferenceable(16) %38, i32 16, i1 false)
  %39 = load i32, ptr %5, align 4
  %40 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 44, i32 noundef %39, ptr noundef %0, i64 noundef 1, ptr noundef %40, ptr noundef %13, ptr noundef null) #13
  br label %41

41:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rcu_kvfree_callback(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 24, i1 false), !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 704
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11, !prof !10

11:                                               ; preds = %5
  %12 = and i32 %8, 256
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16, !prof !11

14:                                               ; preds = %11
  %15 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #13
  br i1 %15, label %24, label %16

16:                                               ; preds = %14, %11, %5
  %17 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %6, ptr noundef %0, i32 noundef 24) #13
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.trace_event_raw_rcu_kvfree_callback, ptr %17, i32 0, i32 1
  store ptr %1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_rcu_kvfree_callback, ptr %17, i32 0, i32 2
  store ptr %2, ptr %21, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_rcu_kvfree_callback, ptr %17, i32 0, i32 3
  store i32 %3, ptr %22, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_rcu_kvfree_callback, ptr %17, i32 0, i32 4
  store i32 %4, ptr %23, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %6) #13
  br label %24

24:                                               ; preds = %19, %16, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_rcu_kvfree_callback(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store ptr null, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store i32 0, ptr %7, align 4, !annotation !9
  %8 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %12) #11, !srcloc !12
  %14 = add i32 %13, %10
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load volatile ptr, ptr %15, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %42, label %22

22:                                               ; preds = %19, %5
  %23 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %6, ptr noundef nonnull %7) #13
  %24 = icmp eq ptr %23, null
  br i1 %24, label %42, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %6, align 4
  %27 = call ptr @llvm.returnaddress(i32 0) #13
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %26, i32 0, i32 15
  store i32 %28, ptr %29, align 4
  %30 = call ptr @llvm.frameaddress.p0(i32 0) #13
  %31 = ptrtoint ptr %30 to i32
  %32 = getelementptr [18 x i32], ptr %26, i32 0, i32 11
  store i32 %31, ptr %32, align 4
  %33 = call i32 @llvm.read_register.i32(metadata !0) #13
  %34 = getelementptr [18 x i32], ptr %26, i32 0, i32 13
  store i32 %33, ptr %34, align 4
  %35 = getelementptr [18 x i32], ptr %26, i32 0, i32 16
  store i32 19, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_rcu_kvfree_callback, ptr %23, i32 0, i32 1
  store ptr %1, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_rcu_kvfree_callback, ptr %23, i32 0, i32 2
  store ptr %2, ptr %37, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_rcu_kvfree_callback, ptr %23, i32 0, i32 3
  store i32 %3, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_rcu_kvfree_callback, ptr %23, i32 0, i32 4
  store i32 %4, ptr %39, align 4
  %40 = load i32, ptr %7, align 4
  %41 = load ptr, ptr %6, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %23, i32 noundef 28, i32 noundef %40, ptr noundef %0, i64 noundef 1, ptr noundef %41, ptr noundef %15, ptr noundef null) #13
  br label %42

42:                                               ; preds = %25, %22, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rcu_batch_start(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !10

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #13
  br i1 %14, label %22, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 20) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_event_raw_rcu_batch_start, ptr %16, i32 0, i32 1
  store ptr %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_rcu_batch_start, ptr %16, i32 0, i32 2
  store i32 %2, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_rcu_batch_start, ptr %16, i32 0, i32 3
  store i32 %3, ptr %21, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #13
  br label %22

22:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_rcu_batch_start(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #11, !srcloc !12
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %40, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #13
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #13
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #13
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_rcu_batch_start, ptr %22, i32 0, i32 1
  store ptr %1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_rcu_batch_start, ptr %22, i32 0, i32 2
  store i32 %2, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_rcu_batch_start, ptr %22, i32 0, i32 3
  store i32 %3, ptr %37, align 4
  %38 = load i32, ptr %6, align 4
  %39 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 20, i32 noundef %38, ptr noundef %0, i64 noundef 1, ptr noundef %39, ptr noundef %14, ptr noundef null) #13
  br label %40

40:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rcu_invoke_callback(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
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
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #13
  br i1 %13, label %23, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 20) #13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_rcu_invoke_callback, ptr %15, i32 0, i32 1
  store ptr %1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_rcu_invoke_callback, ptr %15, i32 0, i32 2
  store ptr %2, ptr %19, align 4
  %20 = getelementptr inbounds %struct.callback_head, ptr %2, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_rcu_invoke_callback, ptr %15, i32 0, i32 3
  store ptr %21, ptr %22, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #13
  br label %23

23:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_rcu_invoke_callback(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #11, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %41, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  %22 = icmp eq ptr %21, null
  br i1 %22, label %41, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #13
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #13
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #13
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_rcu_invoke_callback, ptr %21, i32 0, i32 1
  store ptr %1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_rcu_invoke_callback, ptr %21, i32 0, i32 2
  store ptr %2, ptr %35, align 4
  %36 = getelementptr inbounds %struct.callback_head, ptr %2, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_rcu_invoke_callback, ptr %21, i32 0, i32 3
  store ptr %37, ptr %38, align 4
  %39 = load i32, ptr %5, align 4
  %40 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 20, i32 noundef %39, ptr noundef %0, i64 noundef 1, ptr noundef %40, ptr noundef %13, ptr noundef null) #13
  br label %41

41:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rcu_invoke_kvfree_callback(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !10

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #13
  br i1 %14, label %22, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 20) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_event_raw_rcu_invoke_kvfree_callback, ptr %16, i32 0, i32 1
  store ptr %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_rcu_invoke_kvfree_callback, ptr %16, i32 0, i32 2
  store ptr %2, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_rcu_invoke_kvfree_callback, ptr %16, i32 0, i32 3
  store i32 %3, ptr %21, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #13
  br label %22

22:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_rcu_invoke_kvfree_callback(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #11, !srcloc !12
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %40, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #13
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #13
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #13
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_rcu_invoke_kvfree_callback, ptr %22, i32 0, i32 1
  store ptr %1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_rcu_invoke_kvfree_callback, ptr %22, i32 0, i32 2
  store ptr %2, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_rcu_invoke_kvfree_callback, ptr %22, i32 0, i32 3
  store i32 %3, ptr %37, align 4
  %38 = load i32, ptr %6, align 4
  %39 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 20, i32 noundef %38, ptr noundef %0, i64 noundef 1, ptr noundef %39, ptr noundef %14, ptr noundef null) #13
  br label %40

40:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rcu_invoke_kfree_bulk_callback(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !10

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #13
  br i1 %14, label %22, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 20) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_event_raw_rcu_invoke_kfree_bulk_callback, ptr %16, i32 0, i32 1
  store ptr %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_rcu_invoke_kfree_bulk_callback, ptr %16, i32 0, i32 2
  store i32 %2, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_rcu_invoke_kfree_bulk_callback, ptr %16, i32 0, i32 3
  store ptr %3, ptr %21, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #13
  br label %22

22:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_rcu_invoke_kfree_bulk_callback(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #11, !srcloc !12
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %40, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #13
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #13
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #13
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_rcu_invoke_kfree_bulk_callback, ptr %22, i32 0, i32 1
  store ptr %1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_rcu_invoke_kfree_bulk_callback, ptr %22, i32 0, i32 2
  store i32 %2, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_rcu_invoke_kfree_bulk_callback, ptr %22, i32 0, i32 3
  store ptr %3, ptr %37, align 4
  %38 = load i32, ptr %6, align 4
  %39 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 20, i32 noundef %38, ptr noundef %0, i64 noundef 1, ptr noundef %39, ptr noundef %14, ptr noundef null) #13
  br label %40

40:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rcu_batch_end(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6) #0 {
  %8 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 24, i1 false), !annotation !9
  %9 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 704
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13, !prof !10

13:                                               ; preds = %7
  %14 = and i32 %10, 256
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18, !prof !11

16:                                               ; preds = %13
  %17 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #13
  br i1 %17, label %28, label %18

18:                                               ; preds = %16, %13, %7
  %19 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %8, ptr noundef %0, i32 noundef 20) #13
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.trace_event_raw_rcu_batch_end, ptr %19, i32 0, i32 1
  store ptr %1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_rcu_batch_end, ptr %19, i32 0, i32 2
  store i32 %2, ptr %23, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_rcu_batch_end, ptr %19, i32 0, i32 3
  store i8 %3, ptr %24, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_rcu_batch_end, ptr %19, i32 0, i32 4
  store i8 %4, ptr %25, align 1
  %26 = getelementptr inbounds %struct.trace_event_raw_rcu_batch_end, ptr %19, i32 0, i32 5
  store i8 %5, ptr %26, align 2
  %27 = getelementptr inbounds %struct.trace_event_raw_rcu_batch_end, ptr %19, i32 0, i32 6
  store i8 %6, ptr %27, align 1
  call void @trace_event_buffer_commit(ptr noundef nonnull %8) #13
  br label %28

28:                                               ; preds = %21, %18, %16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_rcu_batch_end(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6) #0 {
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  store ptr null, ptr %8, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  store i32 0, ptr %9, align 4, !annotation !9
  %10 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %14 = inttoptr i32 %13 to ptr
  %15 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %14) #11, !srcloc !12
  %16 = add i32 %15, %12
  %17 = inttoptr i32 %16 to ptr
  %18 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %7
  %22 = load volatile ptr, ptr %17, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %46, label %24

24:                                               ; preds = %21, %7
  %25 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %8, ptr noundef nonnull %9) #13
  %26 = icmp eq ptr %25, null
  br i1 %26, label %46, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %8, align 4
  %29 = call ptr @llvm.returnaddress(i32 0) #13
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %28, i32 0, i32 15
  store i32 %30, ptr %31, align 4
  %32 = call ptr @llvm.frameaddress.p0(i32 0) #13
  %33 = ptrtoint ptr %32 to i32
  %34 = getelementptr [18 x i32], ptr %28, i32 0, i32 11
  store i32 %33, ptr %34, align 4
  %35 = call i32 @llvm.read_register.i32(metadata !0) #13
  %36 = getelementptr [18 x i32], ptr %28, i32 0, i32 13
  store i32 %35, ptr %36, align 4
  %37 = getelementptr [18 x i32], ptr %28, i32 0, i32 16
  store i32 19, ptr %37, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_rcu_batch_end, ptr %25, i32 0, i32 1
  store ptr %1, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_rcu_batch_end, ptr %25, i32 0, i32 2
  store i32 %2, ptr %39, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_rcu_batch_end, ptr %25, i32 0, i32 3
  store i8 %3, ptr %40, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_rcu_batch_end, ptr %25, i32 0, i32 4
  store i8 %4, ptr %41, align 1
  %42 = getelementptr inbounds %struct.trace_event_raw_rcu_batch_end, ptr %25, i32 0, i32 5
  store i8 %5, ptr %42, align 2
  %43 = getelementptr inbounds %struct.trace_event_raw_rcu_batch_end, ptr %25, i32 0, i32 6
  store i8 %6, ptr %43, align 1
  %44 = load i32, ptr %9, align 4
  %45 = load ptr, ptr %8, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %25, i32 noundef 20, i32 noundef %44, ptr noundef %0, i64 noundef 1, ptr noundef %45, ptr noundef %17, ptr noundef null) #13
  br label %46

46:                                               ; preds = %27, %24, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rcu_torture_read(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 24, i1 false), !annotation !9
  %8 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 704
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12, !prof !10

12:                                               ; preds = %6
  %13 = and i32 %9, 256
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17, !prof !11

15:                                               ; preds = %12
  %16 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #13
  br i1 %16, label %28, label %17

17:                                               ; preds = %15, %12, %6
  %18 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %7, ptr noundef %0, i32 noundef 32) #13
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.trace_event_raw_rcu_torture_read, ptr %18, i32 0, i32 1
  %22 = call ptr @strncpy(ptr noundef %21, ptr noundef %1, i32 noundef 8)
  %23 = getelementptr %struct.trace_event_raw_rcu_torture_read, ptr %18, i32 0, i32 1, i32 7
  store i8 0, ptr %23, align 1
  %24 = getelementptr inbounds %struct.trace_event_raw_rcu_torture_read, ptr %18, i32 0, i32 2
  store ptr %2, ptr %24, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_rcu_torture_read, ptr %18, i32 0, i32 3
  store i32 %3, ptr %25, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_rcu_torture_read, ptr %18, i32 0, i32 4
  store i32 %4, ptr %26, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_rcu_torture_read, ptr %18, i32 0, i32 5
  store i32 %5, ptr %27, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %7) #13
  br label %28

28:                                               ; preds = %20, %17, %15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_rcu_torture_read(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store ptr null, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  store i32 0, ptr %8, align 4, !annotation !9
  %9 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #11, !srcloc !12
  %15 = add i32 %14, %11
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load volatile ptr, ptr %16, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %46, label %23

23:                                               ; preds = %20, %6
  %24 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %7, ptr noundef nonnull %8) #13
  %25 = icmp eq ptr %24, null
  br i1 %25, label %46, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %7, align 4
  %28 = call ptr @llvm.returnaddress(i32 0) #13
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %27, i32 0, i32 15
  store i32 %29, ptr %30, align 4
  %31 = call ptr @llvm.frameaddress.p0(i32 0) #13
  %32 = ptrtoint ptr %31 to i32
  %33 = getelementptr [18 x i32], ptr %27, i32 0, i32 11
  store i32 %32, ptr %33, align 4
  %34 = call i32 @llvm.read_register.i32(metadata !0) #13
  %35 = getelementptr [18 x i32], ptr %27, i32 0, i32 13
  store i32 %34, ptr %35, align 4
  %36 = getelementptr [18 x i32], ptr %27, i32 0, i32 16
  store i32 19, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_rcu_torture_read, ptr %24, i32 0, i32 1
  %38 = call ptr @strncpy(ptr noundef %37, ptr noundef %1, i32 noundef 8)
  %39 = getelementptr %struct.trace_event_raw_rcu_torture_read, ptr %24, i32 0, i32 1, i32 7
  store i8 0, ptr %39, align 1
  %40 = getelementptr inbounds %struct.trace_event_raw_rcu_torture_read, ptr %24, i32 0, i32 2
  store ptr %2, ptr %40, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_rcu_torture_read, ptr %24, i32 0, i32 3
  store i32 %3, ptr %41, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_rcu_torture_read, ptr %24, i32 0, i32 4
  store i32 %4, ptr %42, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_rcu_torture_read, ptr %24, i32 0, i32 5
  store i32 %5, ptr %43, align 4
  %44 = load i32, ptr %8, align 4
  %45 = load ptr, ptr %7, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %24, i32 noundef 36, i32 noundef %44, ptr noundef %0, i64 noundef 1, ptr noundef %45, ptr noundef %16, ptr noundef null) #13
  br label %46

46:                                               ; preds = %26, %23, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rcu_barrier(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 24, i1 false), !annotation !9
  %8 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 704
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12, !prof !10

12:                                               ; preds = %6
  %13 = and i32 %9, 256
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17, !prof !11

15:                                               ; preds = %12
  %16 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #13
  br i1 %16, label %26, label %17

17:                                               ; preds = %15, %12, %6
  %18 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %7, ptr noundef %0, i32 noundef 28) #13
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.trace_event_raw_rcu_barrier, ptr %18, i32 0, i32 1
  store ptr %1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_rcu_barrier, ptr %18, i32 0, i32 2
  store ptr %2, ptr %22, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_rcu_barrier, ptr %18, i32 0, i32 3
  store i32 %3, ptr %23, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_rcu_barrier, ptr %18, i32 0, i32 4
  store i32 %4, ptr %24, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_rcu_barrier, ptr %18, i32 0, i32 5
  store i32 %5, ptr %25, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %7) #13
  br label %26

26:                                               ; preds = %20, %17, %15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_rcu_barrier(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store ptr null, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  store i32 0, ptr %8, align 4, !annotation !9
  %9 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #11, !srcloc !12
  %15 = add i32 %14, %11
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load volatile ptr, ptr %16, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %44, label %23

23:                                               ; preds = %20, %6
  %24 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %7, ptr noundef nonnull %8) #13
  %25 = icmp eq ptr %24, null
  br i1 %25, label %44, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %7, align 4
  %28 = call ptr @llvm.returnaddress(i32 0) #13
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %27, i32 0, i32 15
  store i32 %29, ptr %30, align 4
  %31 = call ptr @llvm.frameaddress.p0(i32 0) #13
  %32 = ptrtoint ptr %31 to i32
  %33 = getelementptr [18 x i32], ptr %27, i32 0, i32 11
  store i32 %32, ptr %33, align 4
  %34 = call i32 @llvm.read_register.i32(metadata !0) #13
  %35 = getelementptr [18 x i32], ptr %27, i32 0, i32 13
  store i32 %34, ptr %35, align 4
  %36 = getelementptr [18 x i32], ptr %27, i32 0, i32 16
  store i32 19, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_rcu_barrier, ptr %24, i32 0, i32 1
  store ptr %1, ptr %37, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_rcu_barrier, ptr %24, i32 0, i32 2
  store ptr %2, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_rcu_barrier, ptr %24, i32 0, i32 3
  store i32 %3, ptr %39, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_rcu_barrier, ptr %24, i32 0, i32 4
  store i32 %4, ptr %40, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_rcu_barrier, ptr %24, i32 0, i32 5
  store i32 %5, ptr %41, align 4
  %42 = load i32, ptr %8, align 4
  %43 = load ptr, ptr %7, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %24, i32 noundef 28, i32 noundef %42, ptr noundef %0, i64 noundef 1, ptr noundef %43, ptr noundef %16, ptr noundef null) #13
  br label %44

44:                                               ; preds = %26, %23, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @rcu_gp_is_normal() #3 {
  %1 = load volatile i32, ptr @rcu_normal, align 4
  %2 = icmp ne i32 %1, 0
  %3 = load i32, ptr @rcu_scheduler_active, align 4
  %4 = icmp ne i32 %3, 1
  %5 = select i1 %2, i1 %4, i1 false
  ret i1 %5
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @rcu_gp_is_expedited() #3 {
  %1 = load i32, ptr @rcu_expedited, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load volatile i32, ptr @rcu_expedited_nesting, align 4
  %5 = icmp ne i32 %4, 0
  br label %6

6:                                                ; preds = %3, %0
  %7 = phi i1 [ true, %0 ], [ %5, %3 ]
  ret i1 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcu_expedite_gp() #0 {
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @rcu_expedited_nesting) #13, !srcloc !13
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @rcu_expedited_nesting, ptr nonnull @rcu_expedited_nesting, i32 1, ptr nonnull elementtype(i32) @rcu_expedited_nesting) #13, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcu_unexpedite_gp() #0 {
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @rcu_expedited_nesting) #13, !srcloc !13
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @rcu_expedited_nesting, ptr nonnull @rcu_expedited_nesting, i32 1, ptr nonnull elementtype(i32) @rcu_expedited_nesting) #13, !srcloc !15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcu_end_inkernel_boot() local_unnamed_addr #0 {
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @rcu_expedited_nesting) #13, !srcloc !13
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @rcu_expedited_nesting, ptr nonnull @rcu_expedited_nesting, i32 1, ptr nonnull elementtype(i32) @rcu_expedited_nesting) #13, !srcloc !15
  %2 = load i32, ptr @rcu_normal_after_boot, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  store volatile i32 1, ptr @rcu_normal, align 4
  br label %5

5:                                                ; preds = %4, %0
  store i1 true, ptr @rcu_boot_ended, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @rcu_inkernel_boot_has_ended() #4 {
  %1 = load i1, ptr @rcu_boot_ended, align 1
  ret i1 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @rcu_test_sync_prims() local_unnamed_addr #5 {
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @rcu_set_runtime_mode() #6 section ".init.text" {
  store i32 2, ptr @rcu_scheduler_active, align 4
  tail call void @kfree_rcu_scheduler_running() #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wakeme_after_rcu(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rcu_synchronize, ptr %0, i32 0, i32 1
  tail call void @complete(ptr noundef %2) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__wait_rcu_gp(i1 noundef zeroext %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %7, label %65

6:                                                ; preds = %35
  br i1 %5, label %38, label %65

7:                                                ; preds = %35, %4
  %8 = phi i32 [ %36, %35 ], [ 0, %4 ]
  br i1 %0, label %9, label %13

9:                                                ; preds = %7
  %10 = getelementptr ptr, ptr %2, i32 %8
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, @call_rcu
  br i1 %12, label %35, label %13

13:                                               ; preds = %9, %7
  %14 = icmp eq i32 %8, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %13
  %16 = getelementptr ptr, ptr %2, i32 %8
  %17 = load ptr, ptr %16, align 4
  br label %18

18:                                               ; preds = %23, %15
  %19 = phi i32 [ 0, %15 ], [ %24, %23 ]
  %20 = getelementptr ptr, ptr %2, i32 %19
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %17
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = add nuw nsw i32 %19, 1
  %25 = icmp eq i32 %24, %8
  br i1 %25, label %29, label %18

26:                                               ; preds = %18, %13
  %27 = phi i32 [ 0, %13 ], [ %19, %18 ]
  %28 = icmp eq i32 %27, %8
  br i1 %28, label %29, label %35

29:                                               ; preds = %26, %23
  %30 = getelementptr %struct.rcu_synchronize, ptr %3, i32 %8
  %31 = getelementptr %struct.rcu_synchronize, ptr %3, i32 %8, i32 1
  store i32 0, ptr %31, align 4
  %32 = getelementptr %struct.rcu_synchronize, ptr %3, i32 %8, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %32, ptr noundef nonnull @.str.76, ptr noundef nonnull @init_completion.__key) #13
  %33 = getelementptr ptr, ptr %2, i32 %8
  %34 = load ptr, ptr %33, align 4
  tail call void %34(ptr noundef %30, ptr noundef nonnull @wakeme_after_rcu) #13
  br label %35

35:                                               ; preds = %29, %26, %9
  %36 = add nuw nsw i32 %8, 1
  %37 = icmp eq i32 %36, %1
  br i1 %37, label %6, label %7

38:                                               ; preds = %62, %6
  %39 = phi i32 [ %63, %62 ], [ 0, %6 ]
  br i1 %0, label %40, label %44

40:                                               ; preds = %38
  %41 = getelementptr ptr, ptr %2, i32 %39
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, @call_rcu
  br i1 %43, label %62, label %44

44:                                               ; preds = %40, %38
  %45 = icmp eq i32 %39, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %44
  %47 = getelementptr ptr, ptr %2, i32 %39
  %48 = load ptr, ptr %47, align 4
  br label %49

49:                                               ; preds = %54, %46
  %50 = phi i32 [ 0, %46 ], [ %55, %54 ]
  %51 = getelementptr ptr, ptr %2, i32 %50
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, %48
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = add nuw nsw i32 %50, 1
  %56 = icmp eq i32 %55, %39
  br i1 %56, label %60, label %49

57:                                               ; preds = %49, %44
  %58 = phi i32 [ 0, %44 ], [ %50, %49 ]
  %59 = icmp eq i32 %58, %39
  br i1 %59, label %60, label %62

60:                                               ; preds = %57, %54
  %61 = getelementptr %struct.rcu_synchronize, ptr %3, i32 %39, i32 1
  tail call void @wait_for_completion(ptr noundef %61) #13
  br label %62

62:                                               ; preds = %60, %57, %40
  %63 = add nuw nsw i32 %39, 1
  %64 = icmp eq i32 %63, %1
  br i1 %64, label %65, label %38

65:                                               ; preds = %62, %6, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @do_trace_rcu_torture_read(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_torture_read, i32 0, i32 1), align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %31

8:                                                ; preds = %5
  %9 = tail call ptr @llvm.thread.pointer() #13
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 5
  %13 = getelementptr i32, ptr @__cpu_online_mask, i32 %12
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %11, 31
  %16 = shl nuw i32 1, %15
  %17 = and i32 %16, %14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !16
  %20 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_torture_read, i32 0, i32 7), align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %22, %19
  %23 = phi ptr [ %27, %22 ], [ %20, %19 ]
  %24 = load volatile ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.tracepoint_func, ptr %23, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  tail call void %24(ptr noundef %26, ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #13
  %27 = getelementptr %struct.tracepoint_func, ptr %23, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %22

30:                                               ; preds = %22, %19
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !17
  br label %31

31:                                               ; preds = %30, %8, %5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @rcu_early_boot_tests() local_unnamed_addr #5 {
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @rcupdate_announce_bootup_oddness() local_unnamed_addr #6 section ".init.text" {
  %1 = load i32, ptr @rcu_normal, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %9

3:                                                ; preds = %0
  %4 = load i32, ptr @rcu_normal_after_boot, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = load i32, ptr @rcu_expedited, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %6, %3, %0
  %10 = phi ptr [ @.str, %0 ], [ @.str.1, %3 ], [ @.str.2, %6 ]
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %10) #14
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i32, ptr @rcu_cpu_stall_suppress, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #14
  br label %17

17:                                               ; preds = %15, %12
  %18 = load i32, ptr @rcu_cpu_stall_timeout, align 4
  %19 = icmp eq i32 %18, 21
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %18) #14
  br label %22

22:                                               ; preds = %20, %17
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rcu_utilization(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_rcu_utilization, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef %11) #13
  %12 = tail call i32 @trace_handle_return(ptr noundef %9) #13
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ %12, %8 ], [ %6, %3 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rcu_grace_period(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_rcu_grace_period, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_rcu_grace_period, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_rcu_grace_period, ptr %5, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef %11, i32 noundef %13, ptr noundef %15) #13
  %16 = tail call i32 @trace_handle_return(ptr noundef %9) #13
  br label %17

17:                                               ; preds = %8, %3
  %18 = phi i32 [ %16, %8 ], [ %6, %3 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rcu_future_grace_period(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %26

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_rcu_future_grace_period, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_rcu_future_grace_period, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_rcu_future_grace_period, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_rcu_future_grace_period, ptr %5, i32 0, i32 4
  %17 = load i8, ptr %16, align 4
  %18 = zext i8 %17 to i32
  %19 = getelementptr inbounds %struct.trace_event_raw_rcu_future_grace_period, ptr %5, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_rcu_future_grace_period, ptr %5, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_rcu_future_grace_period, ptr %5, i32 0, i32 7
  %24 = load ptr, ptr %23, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %18, i32 noundef %20, i32 noundef %22, ptr noundef %24) #13
  %25 = tail call i32 @trace_handle_return(ptr noundef %9) #13
  br label %26

26:                                               ; preds = %8, %3
  %27 = phi i32 [ %25, %8 ], [ %6, %3 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rcu_grace_period_init(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %24

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_rcu_grace_period_init, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_rcu_grace_period_init, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_rcu_grace_period_init, ptr %5, i32 0, i32 3
  %15 = load i8, ptr %14, align 4
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds %struct.trace_event_raw_rcu_grace_period_init, ptr %5, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_rcu_grace_period_init, ptr %5, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_rcu_grace_period_init, ptr %5, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef %11, i32 noundef %13, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22) #13
  %23 = tail call i32 @trace_handle_return(ptr noundef %9) #13
  br label %24

24:                                               ; preds = %8, %3
  %25 = phi i32 [ %23, %8 ], [ %6, %3 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rcu_exp_grace_period(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_rcu_exp_grace_period, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_rcu_exp_grace_period, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_rcu_exp_grace_period, ptr %5, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef %11, i32 noundef %13, ptr noundef %15) #13
  %16 = tail call i32 @trace_handle_return(ptr noundef %9) #13
  br label %17

17:                                               ; preds = %8, %3
  %18 = phi i32 [ %16, %8 ], [ %6, %3 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rcu_exp_funnel_lock(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %22

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_rcu_exp_funnel_lock, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_rcu_exp_funnel_lock, ptr %5, i32 0, i32 2
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds %struct.trace_event_raw_rcu_exp_funnel_lock, ptr %5, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.trace_event_raw_rcu_exp_funnel_lock, ptr %5, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_rcu_exp_funnel_lock, ptr %5, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.24, ptr noundef %11, i32 noundef %14, i32 noundef %16, i32 noundef %18, ptr noundef %20) #13
  %21 = tail call i32 @trace_handle_return(ptr noundef %9) #13
  br label %22

22:                                               ; preds = %8, %3
  %23 = phi i32 [ %21, %8 ], [ %6, %3 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rcu_preempt_task(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_rcu_preempt_task, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_rcu_preempt_task, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_rcu_preempt_task, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef %11, i32 noundef %13, i32 noundef %15) #13
  %16 = tail call i32 @trace_handle_return(ptr noundef %9) #13
  br label %17

17:                                               ; preds = %8, %3
  %18 = phi i32 [ %16, %8 ], [ %6, %3 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rcu_unlock_preempted_task(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_rcu_unlock_preempted_task, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_rcu_unlock_preempted_task, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_rcu_unlock_preempted_task, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef %11, i32 noundef %13, i32 noundef %15) #13
  %16 = tail call i32 @trace_handle_return(ptr noundef %9) #13
  br label %17

17:                                               ; preds = %8, %3
  %18 = phi i32 [ %16, %8 ], [ %6, %3 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rcu_quiescent_state_report(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %29

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_rcu_quiescent_state_report, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_rcu_quiescent_state_report, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_rcu_quiescent_state_report, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_rcu_quiescent_state_report, ptr %5, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_rcu_quiescent_state_report, ptr %5, i32 0, i32 5
  %19 = load i8, ptr %18, align 4
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds %struct.trace_event_raw_rcu_quiescent_state_report, ptr %5, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_rcu_quiescent_state_report, ptr %5, i32 0, i32 7
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_rcu_quiescent_state_report, ptr %5, i32 0, i32 8
  %26 = load i8, ptr %25, align 4
  %27 = zext i8 %26 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.29, ptr noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef %27) #13
  %28 = tail call i32 @trace_handle_return(ptr noundef %9) #13
  br label %29

29:                                               ; preds = %8, %3
  %30 = phi i32 [ %28, %8 ], [ %6, %3 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rcu_fqs(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_rcu_fqs, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_rcu_fqs, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_rcu_fqs, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_rcu_fqs, ptr %5, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.32, ptr noundef %11, i32 noundef %13, i32 noundef %15, ptr noundef %17) #13
  %18 = tail call i32 @trace_handle_return(ptr noundef %9) #13
  br label %19

19:                                               ; preds = %8, %3
  %20 = phi i32 [ %18, %8 ], [ %6, %3 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rcu_stall_warning(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_rcu_stall_warning, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_rcu_stall_warning, ptr %5, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.34, ptr noundef %11, ptr noundef %13) #13
  %14 = tail call i32 @trace_handle_return(ptr noundef %9) #13
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ %14, %8 ], [ %6, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rcu_dyntick(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %20

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_rcu_dyntick, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_rcu_dyntick, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_rcu_dyntick, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_rcu_dyntick, ptr %5, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 4095
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.39, ptr noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %18) #13
  %19 = tail call i32 @trace_handle_return(ptr noundef %9) #13
  br label %20

20:                                               ; preds = %8, %3
  %21 = phi i32 [ %19, %8 ], [ %6, %3 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rcu_callback(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_rcu_callback, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_rcu_callback, ptr %5, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_rcu_callback, ptr %5, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_rcu_callback, ptr %5, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.44, ptr noundef %11, ptr noundef %13, ptr noundef %15, i32 noundef %17) #13
  %18 = tail call i32 @trace_handle_return(ptr noundef %9) #13
  br label %19

19:                                               ; preds = %8, %3
  %20 = phi i32 [ %18, %8 ], [ %6, %3 ]
  ret i32 %20
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rcu_segcb_stats(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %29

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_rcu_segcb_stats, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_rcu_segcb_stats, ptr %5, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr %struct.trace_event_raw_rcu_segcb_stats, ptr %5, i32 0, i32 3, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr %struct.trace_event_raw_rcu_segcb_stats, ptr %5, i32 0, i32 3, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr %struct.trace_event_raw_rcu_segcb_stats, ptr %5, i32 0, i32 3, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_rcu_segcb_stats, ptr %5, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr %struct.trace_event_raw_rcu_segcb_stats, ptr %5, i32 0, i32 2, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr %struct.trace_event_raw_rcu_segcb_stats, ptr %5, i32 0, i32 2, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr %struct.trace_event_raw_rcu_segcb_stats, ptr %5, i32 0, i32 2, i32 3
  %27 = load i32, ptr %26, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.49, ptr noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27) #13
  %28 = tail call i32 @trace_handle_return(ptr noundef %9) #13
  br label %29

29:                                               ; preds = %8, %3
  %30 = phi i32 [ %28, %8 ], [ %6, %3 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rcu_kvfree_callback(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_rcu_kvfree_callback, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_rcu_kvfree_callback, ptr %5, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_rcu_kvfree_callback, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_rcu_kvfree_callback, ptr %5, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.51, ptr noundef %11, ptr noundef %13, i32 noundef %15, i32 noundef %17) #13
  %18 = tail call i32 @trace_handle_return(ptr noundef %9) #13
  br label %19

19:                                               ; preds = %8, %3
  %20 = phi i32 [ %18, %8 ], [ %6, %3 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rcu_batch_start(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_rcu_batch_start, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_rcu_batch_start, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_rcu_batch_start, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.53, ptr noundef %11, i32 noundef %13, i32 noundef %15) #13
  %16 = tail call i32 @trace_handle_return(ptr noundef %9) #13
  br label %17

17:                                               ; preds = %8, %3
  %18 = phi i32 [ %16, %8 ], [ %6, %3 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rcu_invoke_callback(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_rcu_invoke_callback, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_rcu_invoke_callback, ptr %5, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_rcu_invoke_callback, ptr %5, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.54, ptr noundef %11, ptr noundef %13, ptr noundef %15) #13
  %16 = tail call i32 @trace_handle_return(ptr noundef %9) #13
  br label %17

17:                                               ; preds = %8, %3
  %18 = phi i32 [ %16, %8 ], [ %6, %3 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rcu_invoke_kvfree_callback(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_rcu_invoke_kvfree_callback, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_rcu_invoke_kvfree_callback, ptr %5, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_rcu_invoke_kvfree_callback, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.55, ptr noundef %11, ptr noundef %13, i32 noundef %15) #13
  %16 = tail call i32 @trace_handle_return(ptr noundef %9) #13
  br label %17

17:                                               ; preds = %8, %3
  %18 = phi i32 [ %16, %8 ], [ %6, %3 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rcu_invoke_kfree_bulk_callback(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_rcu_invoke_kfree_bulk_callback, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_rcu_invoke_kfree_bulk_callback, ptr %5, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_rcu_invoke_kfree_bulk_callback, ptr %5, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.59, ptr noundef %11, ptr noundef %13, i32 noundef %15) #13
  %16 = tail call i32 @trace_handle_return(ptr noundef %9) #13
  br label %17

17:                                               ; preds = %8, %3
  %18 = phi i32 [ %16, %8 ], [ %6, %3 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rcu_batch_end(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %31

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_rcu_batch_end, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_rcu_batch_end, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_rcu_batch_end, ptr %5, i32 0, i32 3
  %15 = load i8, ptr %14, align 4
  %16 = icmp eq i8 %15, 0
  %17 = select i1 %16, i32 46, i32 67
  %18 = getelementptr inbounds %struct.trace_event_raw_rcu_batch_end, ptr %5, i32 0, i32 4
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, 0
  %21 = select i1 %20, i32 46, i32 83
  %22 = getelementptr inbounds %struct.trace_event_raw_rcu_batch_end, ptr %5, i32 0, i32 5
  %23 = load i8, ptr %22, align 2
  %24 = icmp eq i8 %23, 0
  %25 = select i1 %24, i32 46, i32 73
  %26 = getelementptr inbounds %struct.trace_event_raw_rcu_batch_end, ptr %5, i32 0, i32 6
  %27 = load i8, ptr %26, align 1
  %28 = icmp eq i8 %27, 0
  %29 = select i1 %28, i32 46, i32 82
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.66, ptr noundef %11, i32 noundef %13, i32 noundef %17, i32 noundef %21, i32 noundef %25, i32 noundef %29) #13
  %30 = tail call i32 @trace_handle_return(ptr noundef %9) #13
  br label %31

31:                                               ; preds = %8, %3
  %32 = phi i32 [ %30, %8 ], [ %6, %3 ]
  ret i32 %32
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rcu_torture_read(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %20

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_rcu_torture_read, ptr %5, i32 0, i32 1
  %11 = getelementptr inbounds %struct.trace_event_raw_rcu_torture_read, ptr %5, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_rcu_torture_read, ptr %5, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.trace_event_raw_rcu_torture_read, ptr %5, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.trace_event_raw_rcu_torture_read, ptr %5, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.72, ptr noundef %10, ptr noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18) #13
  %19 = tail call i32 @trace_handle_return(ptr noundef %9) #13
  br label %20

20:                                               ; preds = %8, %3
  %21 = phi i32 [ %19, %8 ], [ %6, %3 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rcu_barrier(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_rcu_barrier, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_rcu_barrier, ptr %5, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_rcu_barrier, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_rcu_barrier, ptr %5, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_rcu_barrier, ptr %5, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.75, ptr noundef %11, ptr noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19) #13
  %20 = tail call i32 @trace_handle_return(ptr noundef %9) #13
  br label %21

21:                                               ; preds = %8, %3
  %22 = phi i32 [ %20, %8 ], [ %6, %3 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_rcu_scheduler_running() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #12

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind readonly }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }

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
!12 = !{i64 340695}
!13 = !{i64 426756, i64 2147916727, i64 2147916753, i64 2147916800, i64 2147916822, i64 2147916850, i64 2147916870}
!14 = !{i64 2147928939, i64 2147928965, i64 2147928994, i64 2147929028, i64 2147929059, i64 2147929082}
!15 = !{i64 2147931296, i64 2147931322, i64 2147931351, i64 2147931385, i64 2147931416, i64 2147931439}
!16 = !{i64 2153600645}
!17 = !{i64 2153600859}
