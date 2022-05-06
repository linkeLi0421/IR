; ModuleID = '/llk/IR/drivers/dma-buf/dma-fence.c_pt.bc'
source_filename = "../drivers/dma-buf/dma-fence.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_dma_fence_emit:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_dma_fence_emit\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_dma_fence_emit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_dma_fence_emit:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_dma_fence_emit\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_dma_fence_emit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_dma_fence_emit:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_dma_fence_emit\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_dma_fence_emit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_dma_fence_enable_signal:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_dma_fence_enable_signal\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_dma_fence_enable_signal:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_dma_fence_enable_signal:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_dma_fence_enable_signal\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_dma_fence_enable_signal:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_dma_fence_enable_signal:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_dma_fence_enable_signal\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_dma_fence_enable_signal:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_dma_fence_signaled:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_dma_fence_signaled\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_dma_fence_signaled:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_dma_fence_signaled:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_dma_fence_signaled\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_dma_fence_signaled:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_dma_fence_signaled:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_dma_fence_signaled\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_dma_fence_signaled:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_fence_get_stub:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_fence_get_stub\22\09\09\09\09\09"
module asm "__kstrtabns_dma_fence_get_stub:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_fence_allocate_private_stub:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_fence_allocate_private_stub\22\09\09\09\09\09"
module asm "__kstrtabns_dma_fence_allocate_private_stub:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_fence_context_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_fence_context_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_dma_fence_context_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_fence_signal_timestamp_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_fence_signal_timestamp_locked\22\09\09\09\09\09"
module asm "__kstrtabns_dma_fence_signal_timestamp_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_fence_signal_timestamp:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_fence_signal_timestamp\22\09\09\09\09\09"
module asm "__kstrtabns_dma_fence_signal_timestamp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_fence_signal_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_fence_signal_locked\22\09\09\09\09\09"
module asm "__kstrtabns_dma_fence_signal_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_fence_signal:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_fence_signal\22\09\09\09\09\09"
module asm "__kstrtabns_dma_fence_signal:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_fence_wait_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_fence_wait_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_dma_fence_wait_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_fence_release:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_fence_release\22\09\09\09\09\09"
module asm "__kstrtabns_dma_fence_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_fence_free:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_fence_free\22\09\09\09\09\09"
module asm "__kstrtabns_dma_fence_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_fence_enable_sw_signaling:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_fence_enable_sw_signaling\22\09\09\09\09\09"
module asm "__kstrtabns_dma_fence_enable_sw_signaling:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_fence_add_callback:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_fence_add_callback\22\09\09\09\09\09"
module asm "__kstrtabns_dma_fence_add_callback:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_fence_get_status:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_fence_get_status\22\09\09\09\09\09"
module asm "__kstrtabns_dma_fence_get_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_fence_remove_callback:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_fence_remove_callback\22\09\09\09\09\09"
module asm "__kstrtabns_dma_fence_remove_callback:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_fence_default_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_fence_default_wait\22\09\09\09\09\09"
module asm "__kstrtabns_dma_fence_default_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_fence_wait_any_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_fence_wait_any_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_dma_fence_wait_any_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_fence_describe:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_fence_describe\22\09\09\09\09\09"
module asm "__kstrtabns_dma_fence_describe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_fence_init:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_fence_init\22\09\09\09\09\09"
module asm "__kstrtabns_dma_fence_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.2 }
%union.anon.2 = type { %struct.anon }
%struct.anon = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.3, %struct.trace_event, ptr, ptr, %union.anon.4, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.3 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.4 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.dma_fence = type { ptr, ptr, %union.anon.1, i64, i64, i32, %struct.kref, i32 }
%union.anon.1 = type { i64 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.cpumask = type { [1 x i32] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_dma_fence = type { %struct.trace_entry, i32, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.default_wait_cb = type { %struct.dma_fence_cb, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.58, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.24 }
%struct.llist_node = type { ptr }
%union.anon.24 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.25 }
%union.anon.25 = type { %struct.anon.26 }
%struct.anon.26 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.58 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_dma_fence_emit = internal constant [15 x i8] c"dma_fence_emit\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dma_fence_emit = dso_local global %struct.static_call_key { ptr @__traceiter_dma_fence_emit }, align 4
@__tracepoint_dma_fence_emit = dso_local global %struct.tracepoint { ptr @__tpstrtab_dma_fence_emit, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dma_fence_emit, ptr null, ptr @__traceiter_dma_fence_emit, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dma_fence_emit = internal constant ptr @__tracepoint_dma_fence_emit, section "__tracepoints_ptrs", align 4
@__tpstrtab_dma_fence_init = internal constant [15 x i8] c"dma_fence_init\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dma_fence_init = dso_local global %struct.static_call_key { ptr @__traceiter_dma_fence_init }, align 4
@__tracepoint_dma_fence_init = dso_local global %struct.tracepoint { ptr @__tpstrtab_dma_fence_init, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dma_fence_init, ptr null, ptr @__traceiter_dma_fence_init, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dma_fence_init = internal constant ptr @__tracepoint_dma_fence_init, section "__tracepoints_ptrs", align 4
@__tpstrtab_dma_fence_destroy = internal constant [18 x i8] c"dma_fence_destroy\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dma_fence_destroy = dso_local global %struct.static_call_key { ptr @__traceiter_dma_fence_destroy }, align 4
@__tracepoint_dma_fence_destroy = dso_local global %struct.tracepoint { ptr @__tpstrtab_dma_fence_destroy, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dma_fence_destroy, ptr null, ptr @__traceiter_dma_fence_destroy, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dma_fence_destroy = internal constant ptr @__tracepoint_dma_fence_destroy, section "__tracepoints_ptrs", align 4
@__tpstrtab_dma_fence_enable_signal = internal constant [24 x i8] c"dma_fence_enable_signal\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dma_fence_enable_signal = dso_local global %struct.static_call_key { ptr @__traceiter_dma_fence_enable_signal }, align 4
@__tracepoint_dma_fence_enable_signal = dso_local global %struct.tracepoint { ptr @__tpstrtab_dma_fence_enable_signal, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dma_fence_enable_signal, ptr null, ptr @__traceiter_dma_fence_enable_signal, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dma_fence_enable_signal = internal constant ptr @__tracepoint_dma_fence_enable_signal, section "__tracepoints_ptrs", align 4
@__tpstrtab_dma_fence_signaled = internal constant [19 x i8] c"dma_fence_signaled\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dma_fence_signaled = dso_local global %struct.static_call_key { ptr @__traceiter_dma_fence_signaled }, align 4
@__tracepoint_dma_fence_signaled = dso_local global %struct.tracepoint { ptr @__tpstrtab_dma_fence_signaled, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dma_fence_signaled, ptr null, ptr @__traceiter_dma_fence_signaled, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dma_fence_signaled = internal constant ptr @__tracepoint_dma_fence_signaled, section "__tracepoints_ptrs", align 4
@__tpstrtab_dma_fence_wait_start = internal constant [21 x i8] c"dma_fence_wait_start\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dma_fence_wait_start = dso_local global %struct.static_call_key { ptr @__traceiter_dma_fence_wait_start }, align 4
@__tracepoint_dma_fence_wait_start = dso_local global %struct.tracepoint { ptr @__tpstrtab_dma_fence_wait_start, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dma_fence_wait_start, ptr null, ptr @__traceiter_dma_fence_wait_start, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dma_fence_wait_start = internal constant ptr @__tracepoint_dma_fence_wait_start, section "__tracepoints_ptrs", align 4
@__tpstrtab_dma_fence_wait_end = internal constant [19 x i8] c"dma_fence_wait_end\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dma_fence_wait_end = dso_local global %struct.static_call_key { ptr @__traceiter_dma_fence_wait_end }, align 4
@__tracepoint_dma_fence_wait_end = dso_local global %struct.tracepoint { ptr @__tpstrtab_dma_fence_wait_end, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dma_fence_wait_end, ptr null, ptr @__traceiter_dma_fence_wait_end, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dma_fence_wait_end = internal constant ptr @__tracepoint_dma_fence_wait_end, section "__tracepoints_ptrs", align 4
@str__dma_fence__trace_system_name = internal constant [10 x i8] c"dma_fence\00", align 1
@trace_event_fields_dma_fence = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.6, %union.anon.2 { %struct.anon { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.2 { %struct.anon { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.2 { %struct.anon { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.2 { %struct.anon { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_dma_fence = internal global %struct.trace_event_class { ptr @str__dma_fence__trace_system_name, ptr @trace_event_raw_event_dma_fence, ptr @perf_trace_dma_fence, ptr @trace_event_reg, ptr @trace_event_fields_dma_fence, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dma_fence, i64 24), ptr getelementptr (i8, ptr @event_class_dma_fence, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dma_fence = internal global %struct.trace_event_functions { ptr @trace_raw_output_dma_fence, ptr null, ptr null, ptr null }, align 4
@print_fmt_dma_fence = internal global [110 x i8] c"\22driver=%s timeline=%s context=%u seqno=%u\22, __get_str(driver), __get_str(timeline), REC->context, REC->seqno\00", align 1
@event_dma_fence_emit = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dma_fence, %union.anon.3 { ptr @__tracepoint_dma_fence_emit }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dma_fence }, ptr @print_fmt_dma_fence, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dma_fence_emit = internal global ptr @event_dma_fence_emit, section "_ftrace_events", align 4
@event_dma_fence_init = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dma_fence, %union.anon.3 { ptr @__tracepoint_dma_fence_init }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dma_fence }, ptr @print_fmt_dma_fence, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dma_fence_init = internal global ptr @event_dma_fence_init, section "_ftrace_events", align 4
@event_dma_fence_destroy = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dma_fence, %union.anon.3 { ptr @__tracepoint_dma_fence_destroy }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dma_fence }, ptr @print_fmt_dma_fence, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dma_fence_destroy = internal global ptr @event_dma_fence_destroy, section "_ftrace_events", align 4
@event_dma_fence_enable_signal = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dma_fence, %union.anon.3 { ptr @__tracepoint_dma_fence_enable_signal }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dma_fence }, ptr @print_fmt_dma_fence, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dma_fence_enable_signal = internal global ptr @event_dma_fence_enable_signal, section "_ftrace_events", align 4
@event_dma_fence_signaled = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dma_fence, %union.anon.3 { ptr @__tracepoint_dma_fence_signaled }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dma_fence }, ptr @print_fmt_dma_fence, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dma_fence_signaled = internal global ptr @event_dma_fence_signaled, section "_ftrace_events", align 4
@event_dma_fence_wait_start = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dma_fence, %union.anon.3 { ptr @__tracepoint_dma_fence_wait_start }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dma_fence }, ptr @print_fmt_dma_fence, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dma_fence_wait_start = internal global ptr @event_dma_fence_wait_start, section "_ftrace_events", align 4
@event_dma_fence_wait_end = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dma_fence, %union.anon.3 { ptr @__tracepoint_dma_fence_wait_end }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dma_fence }, ptr @print_fmt_dma_fence, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dma_fence_wait_end = internal global ptr @event_dma_fence_wait_end, section "_ftrace_events", align 4
@__kstrtab___tracepoint_dma_fence_emit = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_dma_fence_emit = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_dma_fence_emit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_dma_fence_emit to i32), ptr @__kstrtab___tracepoint_dma_fence_emit, ptr @__kstrtabns___tracepoint_dma_fence_emit }, section "___ksymtab+__tracepoint_dma_fence_emit", align 4
@__kstrtab___traceiter_dma_fence_emit = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_dma_fence_emit = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_dma_fence_emit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_dma_fence_emit to i32), ptr @__kstrtab___traceiter_dma_fence_emit, ptr @__kstrtabns___traceiter_dma_fence_emit }, section "___ksymtab+__traceiter_dma_fence_emit", align 4
@__kstrtab___SCK__tp_func_dma_fence_emit = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_dma_fence_emit = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_dma_fence_emit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_dma_fence_emit to i32), ptr @__kstrtab___SCK__tp_func_dma_fence_emit, ptr @__kstrtabns___SCK__tp_func_dma_fence_emit }, section "___ksymtab+__SCK__tp_func_dma_fence_emit", align 4
@__kstrtab___tracepoint_dma_fence_enable_signal = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_dma_fence_enable_signal = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_dma_fence_enable_signal = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_dma_fence_enable_signal to i32), ptr @__kstrtab___tracepoint_dma_fence_enable_signal, ptr @__kstrtabns___tracepoint_dma_fence_enable_signal }, section "___ksymtab+__tracepoint_dma_fence_enable_signal", align 4
@__kstrtab___traceiter_dma_fence_enable_signal = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_dma_fence_enable_signal = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_dma_fence_enable_signal = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_dma_fence_enable_signal to i32), ptr @__kstrtab___traceiter_dma_fence_enable_signal, ptr @__kstrtabns___traceiter_dma_fence_enable_signal }, section "___ksymtab+__traceiter_dma_fence_enable_signal", align 4
@__kstrtab___SCK__tp_func_dma_fence_enable_signal = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_dma_fence_enable_signal = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_dma_fence_enable_signal = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_dma_fence_enable_signal to i32), ptr @__kstrtab___SCK__tp_func_dma_fence_enable_signal, ptr @__kstrtabns___SCK__tp_func_dma_fence_enable_signal }, section "___ksymtab+__SCK__tp_func_dma_fence_enable_signal", align 4
@__kstrtab___tracepoint_dma_fence_signaled = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_dma_fence_signaled = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_dma_fence_signaled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_dma_fence_signaled to i32), ptr @__kstrtab___tracepoint_dma_fence_signaled, ptr @__kstrtabns___tracepoint_dma_fence_signaled }, section "___ksymtab+__tracepoint_dma_fence_signaled", align 4
@__kstrtab___traceiter_dma_fence_signaled = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_dma_fence_signaled = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_dma_fence_signaled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_dma_fence_signaled to i32), ptr @__kstrtab___traceiter_dma_fence_signaled, ptr @__kstrtabns___traceiter_dma_fence_signaled }, section "___ksymtab+__traceiter_dma_fence_signaled", align 4
@__kstrtab___SCK__tp_func_dma_fence_signaled = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_dma_fence_signaled = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_dma_fence_signaled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_dma_fence_signaled to i32), ptr @__kstrtab___SCK__tp_func_dma_fence_signaled, ptr @__kstrtabns___SCK__tp_func_dma_fence_signaled }, section "___ksymtab+__SCK__tp_func_dma_fence_signaled", align 4
@dma_fence_stub_lock = internal global %struct.spinlock zeroinitializer, align 4
@dma_fence_stub = internal global %struct.dma_fence zeroinitializer, align 8
@dma_fence_stub_ops = internal constant %struct.dma_fence_ops { i8 0, ptr @dma_fence_stub_get_name, ptr @dma_fence_stub_get_name, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_dma_fence_get_stub = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_fence_get_stub = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_fence_get_stub = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_fence_get_stub to i32), ptr @__kstrtab_dma_fence_get_stub, ptr @__kstrtabns_dma_fence_get_stub }, section "___ksymtab+dma_fence_get_stub", align 4
@__kstrtab_dma_fence_allocate_private_stub = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_fence_allocate_private_stub = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_fence_allocate_private_stub = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_fence_allocate_private_stub to i32), ptr @__kstrtab_dma_fence_allocate_private_stub, ptr @__kstrtabns_dma_fence_allocate_private_stub }, section "___ksymtab+dma_fence_allocate_private_stub", align 4
@.str = private unnamed_addr constant [28 x i8] c"drivers/dma-buf/dma-fence.c\00", align 1
@dma_fence_context_counter = internal global %struct.atomic64_t { i64 1 }, align 8
@__kstrtab_dma_fence_context_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_fence_context_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_fence_context_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_fence_context_alloc to i32), ptr @__kstrtab_dma_fence_context_alloc, ptr @__kstrtabns_dma_fence_context_alloc }, section "___ksymtab+dma_fence_context_alloc", align 4
@__kstrtab_dma_fence_signal_timestamp_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_fence_signal_timestamp_locked = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_fence_signal_timestamp_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_fence_signal_timestamp_locked to i32), ptr @__kstrtab_dma_fence_signal_timestamp_locked, ptr @__kstrtabns_dma_fence_signal_timestamp_locked }, section "___ksymtab+dma_fence_signal_timestamp_locked", align 4
@__kstrtab_dma_fence_signal_timestamp = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_fence_signal_timestamp = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_fence_signal_timestamp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_fence_signal_timestamp to i32), ptr @__kstrtab_dma_fence_signal_timestamp, ptr @__kstrtabns_dma_fence_signal_timestamp }, section "___ksymtab+dma_fence_signal_timestamp", align 4
@__kstrtab_dma_fence_signal_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_fence_signal_locked = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_fence_signal_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_fence_signal_locked to i32), ptr @__kstrtab_dma_fence_signal_locked, ptr @__kstrtabns_dma_fence_signal_locked }, section "___ksymtab+dma_fence_signal_locked", align 4
@__kstrtab_dma_fence_signal = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_fence_signal = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_fence_signal = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_fence_signal to i32), ptr @__kstrtab_dma_fence_signal, ptr @__kstrtabns_dma_fence_signal }, section "___ksymtab+dma_fence_signal", align 4
@__kstrtab_dma_fence_wait_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_fence_wait_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_fence_wait_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_fence_wait_timeout to i32), ptr @__kstrtab_dma_fence_wait_timeout, ptr @__kstrtabns_dma_fence_wait_timeout }, section "___ksymtab+dma_fence_wait_timeout", align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Fence %s:%s:%llx:%llx released with pending signals!\0A\00", align 1
@__kstrtab_dma_fence_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_fence_release = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_fence_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_fence_release to i32), ptr @__kstrtab_dma_fence_release, ptr @__kstrtabns_dma_fence_release }, section "___ksymtab+dma_fence_release", align 4
@__kstrtab_dma_fence_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_fence_free = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_fence_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_fence_free to i32), ptr @__kstrtab_dma_fence_free, ptr @__kstrtabns_dma_fence_free }, section "___ksymtab+dma_fence_free", align 4
@__kstrtab_dma_fence_enable_sw_signaling = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_fence_enable_sw_signaling = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_fence_enable_sw_signaling = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_fence_enable_sw_signaling to i32), ptr @__kstrtab_dma_fence_enable_sw_signaling, ptr @__kstrtabns_dma_fence_enable_sw_signaling }, section "___ksymtab+dma_fence_enable_sw_signaling", align 4
@__kstrtab_dma_fence_add_callback = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_fence_add_callback = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_fence_add_callback = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_fence_add_callback to i32), ptr @__kstrtab_dma_fence_add_callback, ptr @__kstrtabns_dma_fence_add_callback }, section "___ksymtab+dma_fence_add_callback", align 4
@__kstrtab_dma_fence_get_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_fence_get_status = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_fence_get_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_fence_get_status to i32), ptr @__kstrtab_dma_fence_get_status, ptr @__kstrtabns_dma_fence_get_status }, section "___ksymtab+dma_fence_get_status", align 4
@__kstrtab_dma_fence_remove_callback = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_fence_remove_callback = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_fence_remove_callback = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_fence_remove_callback to i32), ptr @__kstrtab_dma_fence_remove_callback, ptr @__kstrtabns_dma_fence_remove_callback }, section "___ksymtab+dma_fence_remove_callback", align 4
@__kstrtab_dma_fence_default_wait = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_fence_default_wait = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_fence_default_wait = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_fence_default_wait to i32), ptr @__kstrtab_dma_fence_default_wait, ptr @__kstrtabns_dma_fence_default_wait }, section "___ksymtab+dma_fence_default_wait", align 4
@__kstrtab_dma_fence_wait_any_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_fence_wait_any_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_fence_wait_any_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_fence_wait_any_timeout to i32), ptr @__kstrtab_dma_fence_wait_any_timeout, ptr @__kstrtabns_dma_fence_wait_any_timeout }, section "___ksymtab+dma_fence_wait_any_timeout", align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"%s %s seq %llu %ssignalled\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"un\00", align 1
@__kstrtab_dma_fence_describe = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_fence_describe = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_fence_describe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_fence_describe to i32), ptr @__kstrtab_dma_fence_describe, ptr @__kstrtabns_dma_fence_describe }, section "___ksymtab+dma_fence_describe", align 4
@__kstrtab_dma_fence_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_fence_init = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_fence_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_fence_init to i32), ptr @__kstrtab_dma_fence_init, ptr @__kstrtabns_dma_fence_init }, section "___ksymtab+dma_fence_init", align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"__data_loc char[]\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"driver\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"timeline\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"seqno\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"driver=%s timeline=%s context=%u seqno=%u\0A\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"stub\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@llvm.compiler.used = appending global [56 x ptr] [ptr @__event_dma_fence_destroy, ptr @__event_dma_fence_emit, ptr @__event_dma_fence_enable_signal, ptr @__event_dma_fence_init, ptr @__event_dma_fence_signaled, ptr @__event_dma_fence_wait_end, ptr @__event_dma_fence_wait_start, ptr @__ksymtab___SCK__tp_func_dma_fence_emit, ptr @__ksymtab___SCK__tp_func_dma_fence_enable_signal, ptr @__ksymtab___SCK__tp_func_dma_fence_signaled, ptr @__ksymtab___traceiter_dma_fence_emit, ptr @__ksymtab___traceiter_dma_fence_enable_signal, ptr @__ksymtab___traceiter_dma_fence_signaled, ptr @__ksymtab___tracepoint_dma_fence_emit, ptr @__ksymtab___tracepoint_dma_fence_enable_signal, ptr @__ksymtab___tracepoint_dma_fence_signaled, ptr @__ksymtab_dma_fence_add_callback, ptr @__ksymtab_dma_fence_allocate_private_stub, ptr @__ksymtab_dma_fence_context_alloc, ptr @__ksymtab_dma_fence_default_wait, ptr @__ksymtab_dma_fence_describe, ptr @__ksymtab_dma_fence_enable_sw_signaling, ptr @__ksymtab_dma_fence_free, ptr @__ksymtab_dma_fence_get_status, ptr @__ksymtab_dma_fence_get_stub, ptr @__ksymtab_dma_fence_init, ptr @__ksymtab_dma_fence_release, ptr @__ksymtab_dma_fence_remove_callback, ptr @__ksymtab_dma_fence_signal, ptr @__ksymtab_dma_fence_signal_locked, ptr @__ksymtab_dma_fence_signal_timestamp, ptr @__ksymtab_dma_fence_signal_timestamp_locked, ptr @__ksymtab_dma_fence_wait_any_timeout, ptr @__ksymtab_dma_fence_wait_timeout, ptr @__tracepoint_dma_fence_destroy, ptr @__tracepoint_dma_fence_emit, ptr @__tracepoint_dma_fence_enable_signal, ptr @__tracepoint_dma_fence_init, ptr @__tracepoint_dma_fence_signaled, ptr @__tracepoint_dma_fence_wait_end, ptr @__tracepoint_dma_fence_wait_start, ptr @__tracepoint_ptr_dma_fence_destroy, ptr @__tracepoint_ptr_dma_fence_emit, ptr @__tracepoint_ptr_dma_fence_enable_signal, ptr @__tracepoint_ptr_dma_fence_init, ptr @__tracepoint_ptr_dma_fence_signaled, ptr @__tracepoint_ptr_dma_fence_wait_end, ptr @__tracepoint_ptr_dma_fence_wait_start, ptr @event_class_dma_fence, ptr @event_dma_fence_destroy, ptr @event_dma_fence_emit, ptr @event_dma_fence_enable_signal, ptr @event_dma_fence_init, ptr @event_dma_fence_signaled, ptr @event_dma_fence_wait_end, ptr @event_dma_fence_wait_start], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dma_fence_emit(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dma_fence_emit, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #12
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
define dso_local i32 @__traceiter_dma_fence_init(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dma_fence_init, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #12
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dma_fence_destroy(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dma_fence_destroy, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #12
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dma_fence_enable_signal(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dma_fence_enable_signal, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #12
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dma_fence_signaled(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dma_fence_signaled, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #12
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dma_fence_wait_start(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dma_fence_wait_start, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #12
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dma_fence_wait_end(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dma_fence_wait_end, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #12
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dma_fence(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #12
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #12
  br i1 %12, label %92, label %13

13:                                               ; preds = %11, %8, %2
  %14 = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.dma_fence_ops, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = tail call ptr %17(ptr noundef %1) #12
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %13
  %21 = load ptr, ptr %14, align 4
  %22 = getelementptr inbounds %struct.dma_fence_ops, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = tail call ptr %23(ptr noundef %1) #12
  br label %25

25:                                               ; preds = %20, %13
  %26 = phi ptr [ %24, %20 ], [ @.str.5, %13 ]
  %27 = tail call i32 @strlen(ptr noundef %26) #12
  %28 = shl i32 %27, 16
  %29 = add i32 %28, 65536
  %30 = or i32 %29, 24
  %31 = load ptr, ptr %14, align 4
  %32 = getelementptr inbounds %struct.dma_fence_ops, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = tail call ptr %33(ptr noundef %1) #12
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %25
  %37 = load ptr, ptr %14, align 4
  %38 = getelementptr inbounds %struct.dma_fence_ops, ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = tail call ptr %39(ptr noundef %1) #12
  br label %41

41:                                               ; preds = %36, %25
  %42 = phi ptr [ %40, %36 ], [ @.str.5, %25 ]
  %43 = tail call i32 @strlen(ptr noundef %42) #12
  %44 = add i32 %43, 1
  %45 = add i32 %27, 25
  %46 = add i32 %45, %44
  %47 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef %46) #12
  %48 = icmp eq ptr %47, null
  br i1 %48, label %92, label %49

49:                                               ; preds = %41
  %50 = shl i32 %44, 16
  %51 = or i32 %50, %45
  %52 = getelementptr inbounds %struct.trace_event_raw_dma_fence, ptr %47, i32 0, i32 1
  store i32 %30, ptr %52, align 4
  %53 = getelementptr inbounds %struct.trace_event_raw_dma_fence, ptr %47, i32 0, i32 2
  store i32 %51, ptr %53, align 4
  %54 = getelementptr i8, ptr %47, i32 24
  %55 = load ptr, ptr %14, align 4
  %56 = getelementptr inbounds %struct.dma_fence_ops, ptr %55, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = call ptr %57(ptr noundef %1) #12
  %59 = icmp eq ptr %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %49
  %61 = load ptr, ptr %14, align 4
  %62 = getelementptr inbounds %struct.dma_fence_ops, ptr %61, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = call ptr %63(ptr noundef %1) #12
  br label %65

65:                                               ; preds = %60, %49
  %66 = phi ptr [ %64, %60 ], [ @.str.5, %49 ]
  %67 = call ptr @strcpy(ptr noundef %54, ptr noundef %66)
  %68 = load i32, ptr %53, align 4
  %69 = and i32 %68, 65535
  %70 = getelementptr i8, ptr %47, i32 %69
  %71 = load ptr, ptr %14, align 4
  %72 = getelementptr inbounds %struct.dma_fence_ops, ptr %71, i32 0, i32 2
  %73 = load ptr, ptr %72, align 4
  %74 = call ptr %73(ptr noundef %1) #12
  %75 = icmp eq ptr %74, null
  br i1 %75, label %81, label %76

76:                                               ; preds = %65
  %77 = load ptr, ptr %14, align 4
  %78 = getelementptr inbounds %struct.dma_fence_ops, ptr %77, i32 0, i32 2
  %79 = load ptr, ptr %78, align 4
  %80 = call ptr %79(ptr noundef %1) #12
  br label %81

81:                                               ; preds = %76, %65
  %82 = phi ptr [ %80, %76 ], [ @.str.5, %65 ]
  %83 = call ptr @strcpy(ptr noundef %70, ptr noundef %82)
  %84 = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 3
  %85 = load i64, ptr %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = getelementptr inbounds %struct.trace_event_raw_dma_fence, ptr %47, i32 0, i32 3
  store i32 %86, ptr %87, align 4
  %88 = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 4
  %89 = load i64, ptr %88, align 8
  %90 = trunc i64 %89 to i32
  %91 = getelementptr inbounds %struct.trace_event_raw_dma_fence, ptr %47, i32 0, i32 4
  store i32 %90, ptr %91, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #12
  br label %92

92:                                               ; preds = %81, %41, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_dma_fence(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dma_fence_ops, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr %8(ptr noundef %1) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr inbounds %struct.dma_fence_ops, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = tail call ptr %14(ptr noundef %1) #12
  br label %16

16:                                               ; preds = %11, %2
  %17 = phi ptr [ %15, %11 ], [ @.str.5, %2 ]
  %18 = tail call i32 @strlen(ptr noundef %17) #12
  %19 = shl i32 %18, 16
  %20 = add i32 %19, 65536
  %21 = or i32 %20, 24
  %22 = load ptr, ptr %5, align 4
  %23 = getelementptr inbounds %struct.dma_fence_ops, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = tail call ptr %24(ptr noundef %1) #12
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %16
  %28 = load ptr, ptr %5, align 4
  %29 = getelementptr inbounds %struct.dma_fence_ops, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = tail call ptr %30(ptr noundef %1) #12
  br label %32

32:                                               ; preds = %27, %16
  %33 = phi ptr [ %31, %27 ], [ @.str.5, %16 ]
  %34 = tail call i32 @strlen(ptr noundef %33) #12
  %35 = add i32 %34, 1
  %36 = add i32 %18, 25
  %37 = shl i32 %35, 16
  %38 = or i32 %37, %36
  %39 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %40 = load ptr, ptr %39, align 4
  %41 = ptrtoint ptr %40 to i32
  %42 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %43 = inttoptr i32 %42 to ptr
  %44 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %43) #6, !srcloc !12
  %45 = add i32 %44, %41
  %46 = inttoptr i32 %45 to ptr
  %47 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %48 = load volatile ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %32
  %51 = load volatile ptr, ptr %46, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %113, label %53

53:                                               ; preds = %50, %32
  %54 = add i32 %18, 36
  %55 = add i32 %54, %35
  %56 = and i32 %55, -8
  %57 = add i32 %56, -4
  %58 = call ptr @perf_trace_buf_alloc(i32 noundef %57, ptr noundef nonnull %3, ptr noundef nonnull %4) #12
  %59 = icmp eq ptr %58, null
  br i1 %59, label %113, label %60

60:                                               ; preds = %53
  %61 = load ptr, ptr %3, align 4
  %62 = call ptr @llvm.returnaddress(i32 0) #12
  %63 = ptrtoint ptr %62 to i32
  %64 = getelementptr [18 x i32], ptr %61, i32 0, i32 15
  store i32 %63, ptr %64, align 4
  %65 = call ptr @llvm.frameaddress.p0(i32 0) #12
  %66 = ptrtoint ptr %65 to i32
  %67 = getelementptr [18 x i32], ptr %61, i32 0, i32 11
  store i32 %66, ptr %67, align 4
  %68 = call i32 @llvm.read_register.i32(metadata !0) #12
  %69 = getelementptr [18 x i32], ptr %61, i32 0, i32 13
  store i32 %68, ptr %69, align 4
  %70 = getelementptr [18 x i32], ptr %61, i32 0, i32 16
  store i32 19, ptr %70, align 4
  %71 = getelementptr inbounds %struct.trace_event_raw_dma_fence, ptr %58, i32 0, i32 1
  store i32 %21, ptr %71, align 4
  %72 = getelementptr inbounds %struct.trace_event_raw_dma_fence, ptr %58, i32 0, i32 2
  store i32 %38, ptr %72, align 4
  %73 = getelementptr i8, ptr %58, i32 24
  %74 = load ptr, ptr %5, align 4
  %75 = getelementptr inbounds %struct.dma_fence_ops, ptr %74, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = call ptr %76(ptr noundef %1) #12
  %78 = icmp eq ptr %77, null
  br i1 %78, label %84, label %79

79:                                               ; preds = %60
  %80 = load ptr, ptr %5, align 4
  %81 = getelementptr inbounds %struct.dma_fence_ops, ptr %80, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = call ptr %82(ptr noundef %1) #12
  br label %84

84:                                               ; preds = %79, %60
  %85 = phi ptr [ %83, %79 ], [ @.str.5, %60 ]
  %86 = call ptr @strcpy(ptr noundef %73, ptr noundef %85)
  %87 = load i32, ptr %72, align 4
  %88 = and i32 %87, 65535
  %89 = getelementptr i8, ptr %58, i32 %88
  %90 = load ptr, ptr %5, align 4
  %91 = getelementptr inbounds %struct.dma_fence_ops, ptr %90, i32 0, i32 2
  %92 = load ptr, ptr %91, align 4
  %93 = call ptr %92(ptr noundef %1) #12
  %94 = icmp eq ptr %93, null
  br i1 %94, label %100, label %95

95:                                               ; preds = %84
  %96 = load ptr, ptr %5, align 4
  %97 = getelementptr inbounds %struct.dma_fence_ops, ptr %96, i32 0, i32 2
  %98 = load ptr, ptr %97, align 4
  %99 = call ptr %98(ptr noundef %1) #12
  br label %100

100:                                              ; preds = %95, %84
  %101 = phi ptr [ %99, %95 ], [ @.str.5, %84 ]
  %102 = call ptr @strcpy(ptr noundef %89, ptr noundef %101)
  %103 = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 3
  %104 = load i64, ptr %103, align 8
  %105 = trunc i64 %104 to i32
  %106 = getelementptr inbounds %struct.trace_event_raw_dma_fence, ptr %58, i32 0, i32 3
  store i32 %105, ptr %106, align 4
  %107 = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 4
  %108 = load i64, ptr %107, align 8
  %109 = trunc i64 %108 to i32
  %110 = getelementptr inbounds %struct.trace_event_raw_dma_fence, ptr %58, i32 0, i32 4
  store i32 %109, ptr %110, align 4
  %111 = load i32, ptr %4, align 4
  %112 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %58, i32 noundef %57, i32 noundef %111, ptr noundef %0, i64 noundef 1, ptr noundef %112, ptr noundef %46, ptr noundef null) #12
  br label %113

113:                                              ; preds = %100, %53, %50
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dma_fence_get_stub() #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @dma_fence_stub_lock) #12
  %1 = load ptr, ptr getelementptr inbounds (%struct.dma_fence, ptr @dma_fence_stub, i32 0, i32 1), align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %32

3:                                                ; preds = %0
  store volatile i32 1, ptr getelementptr inbounds (%struct.dma_fence, ptr @dma_fence_stub, i32 0, i32 6), align 4
  store ptr @dma_fence_stub_ops, ptr getelementptr inbounds (%struct.dma_fence, ptr @dma_fence_stub, i32 0, i32 1), align 4
  store volatile ptr getelementptr inbounds (%struct.dma_fence, ptr @dma_fence_stub, i32 0, i32 2), ptr getelementptr inbounds (%struct.dma_fence, ptr @dma_fence_stub, i32 0, i32 2), align 8
  store ptr getelementptr inbounds (%struct.dma_fence, ptr @dma_fence_stub, i32 0, i32 2), ptr getelementptr inbounds (%struct.list_head, ptr getelementptr inbounds (%struct.dma_fence, ptr @dma_fence_stub, i32 0, i32 2), i32 0, i32 1), align 4
  store ptr @dma_fence_stub_lock, ptr @dma_fence_stub, align 8
  store i32 0, ptr getelementptr inbounds (%struct.dma_fence, ptr @dma_fence_stub, i32 0, i32 7), align 8
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(20) getelementptr inbounds (%struct.dma_fence, ptr @dma_fence_stub, i32 0, i32 3), i8 0, i64 20, i1 false)
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dma_fence_init, i32 0, i32 1), align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %29

6:                                                ; preds = %3
  %7 = tail call ptr @llvm.thread.pointer() #12
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
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  %18 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dma_fence_init, i32 0, i32 7), align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %20, %17
  %21 = phi ptr [ %25, %20 ], [ %18, %17 ]
  %22 = load volatile ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.tracepoint_func, ptr %21, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  tail call void %22(ptr noundef %24, ptr noundef nonnull @dma_fence_stub) #12
  %25 = getelementptr %struct.tracepoint_func, ptr %21, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %20

28:                                               ; preds = %20, %17
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  br label %29

29:                                               ; preds = %28, %6, %3
  %30 = tail call i64 @ktime_get() #12
  %31 = tail call i32 @dma_fence_signal_timestamp_locked(ptr noundef nonnull @dma_fence_stub, i64 noundef %30) #12
  br label %32

32:                                               ; preds = %29, %0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !15
  %33 = load i16, ptr @dma_fence_stub_lock, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr @dma_fence_stub_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.dma_fence, ptr @dma_fence_stub, i32 0, i32 6)) #12, !srcloc !19
  %35 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.dma_fence, ptr @dma_fence_stub, i32 0, i32 6), ptr getelementptr inbounds (%struct.dma_fence, ptr @dma_fence_stub, i32 0, i32 6), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.dma_fence, ptr @dma_fence_stub, i32 0, i32 6)) #12, !srcloc !20
  %36 = extractvalue { i32, i32, i32 } %35, 0
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38, !prof !11

38:                                               ; preds = %32
  %39 = add i32 %36, 1
  %40 = or i32 %39, %36
  %41 = icmp sgt i32 %40, -1
  br i1 %41, label %44, label %42, !prof !10

42:                                               ; preds = %38, %32
  %43 = phi i32 [ 2, %32 ], [ 1, %38 ]
  tail call void @refcount_warn_saturate(ptr noundef getelementptr inbounds (%struct.dma_fence, ptr @dma_fence_stub, i32 0, i32 6), i32 noundef %43) #12
  br label %44

44:                                               ; preds = %42, %38
  ret ptr @dma_fence_stub
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dma_fence_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) #0 {
  %6 = icmp eq ptr %2, null
  br i1 %6, label %7, label %8, !prof !11

7:                                                ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma-buf/dma-fence.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 946, 0\0A.popsection", ""() #12, !srcloc !21
  unreachable

8:                                                ; preds = %5
  %9 = icmp eq ptr %1, null
  br i1 %9, label %18, label %10, !prof !11

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.dma_fence_ops, ptr %1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14, !prof !11

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.dma_fence_ops, ptr %1, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19, !prof !11

18:                                               ; preds = %14, %10, %8
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma-buf/dma-fence.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 947, 0\0A.popsection", ""() #12, !srcloc !22
  unreachable

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 6
  store volatile i32 1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 1
  store ptr %1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 2
  store volatile ptr %22, ptr %22, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %22, ptr %23, align 4
  store ptr %2, ptr %0, align 8
  %24 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 3
  store i64 %3, ptr %24, align 8
  %25 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 4
  store i64 %4, ptr %25, align 8
  %26 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 5
  store i32 0, ptr %26, align 8
  %27 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 7
  store i32 0, ptr %27, align 8
  %28 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dma_fence_init, i32 0, i32 1), align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %19
  %31 = tail call ptr @llvm.thread.pointer() #12
  %32 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %33 = load i32, ptr %32, align 8
  %34 = lshr i32 %33, 5
  %35 = getelementptr i32, ptr @__cpu_online_mask, i32 %34
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %33, 31
  %38 = shl nuw i32 1, %37
  %39 = and i32 %38, %36
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %30
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  %42 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dma_fence_init, i32 0, i32 7), align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %52, label %44

44:                                               ; preds = %44, %41
  %45 = phi ptr [ %49, %44 ], [ %42, %41 ]
  %46 = load volatile ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.tracepoint_func, ptr %45, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  tail call void %46(ptr noundef %48, ptr noundef %0) #12
  %49 = getelementptr %struct.tracepoint_func, ptr %45, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %44

52:                                               ; preds = %44, %41
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  br label %53

53:                                               ; preds = %52, %30, %19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dma_fence_signal_locked(ptr noundef %0) #0 {
  %2 = tail call i64 @ktime_get() #12
  %3 = tail call i32 @dma_fence_signal_timestamp_locked(ptr noundef %0, i64 noundef %2)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dma_fence_allocate_private_stub() #0 {
  %1 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 48) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %43, label %4

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.dma_fence, ptr %2, i32 0, i32 6
  store volatile i32 1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.dma_fence, ptr %2, i32 0, i32 1
  store ptr @dma_fence_stub_ops, ptr %6, align 4
  %7 = getelementptr inbounds %struct.dma_fence, ptr %2, i32 0, i32 2
  store volatile ptr %7, ptr %7, align 8
  %8 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %7, ptr %8, align 4
  store ptr @dma_fence_stub_lock, ptr %2, align 8
  %9 = getelementptr inbounds %struct.dma_fence, ptr %2, i32 0, i32 3
  %10 = getelementptr inbounds %struct.dma_fence, ptr %2, i32 0, i32 7
  store i32 0, ptr %10, align 8
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(20) %9, i8 0, i64 20, i1 false)
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dma_fence_init, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %37

13:                                               ; preds = %4
  %14 = tail call ptr @llvm.thread.pointer() #12
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 5
  %18 = getelementptr i32, ptr @__cpu_online_mask, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %16, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %37, label %24

24:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  %25 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dma_fence_init, i32 0, i32 7), align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %27, %24
  %28 = phi ptr [ %32, %27 ], [ %25, %24 ]
  %29 = load volatile ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.tracepoint_func, ptr %28, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  tail call void %29(ptr noundef %31, ptr noundef nonnull %2) #12
  %32 = getelementptr %struct.tracepoint_func, ptr %28, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %27

35:                                               ; preds = %27, %24
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  %36 = load ptr, ptr %2, align 8
  br label %37

37:                                               ; preds = %35, %13, %4
  %38 = phi ptr [ @dma_fence_stub_lock, %4 ], [ @dma_fence_stub_lock, %13 ], [ %36, %35 ]
  %39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %38) #12
  %40 = tail call i64 @ktime_get() #12
  %41 = tail call i32 @dma_fence_signal_timestamp_locked(ptr noundef nonnull %2, i64 noundef %40) #12
  %42 = load ptr, ptr %2, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %42, i32 noundef %39) #12
  br label %43

43:                                               ; preds = %37, %0
  %44 = phi ptr [ %2, %37 ], [ inttoptr (i32 -12 to ptr), %0 ]
  ret ptr %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dma_fence_signal(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #12
  %6 = tail call i64 @ktime_get() #12
  %7 = tail call i32 @dma_fence_signal_timestamp_locked(ptr noundef nonnull %0, i64 noundef %6)
  %8 = load ptr, ptr %0, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %5) #12
  br label %9

9:                                                ; preds = %3, %1
  %10 = phi i32 [ %7, %3 ], [ -22, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @dma_fence_context_alloc(i32 noundef %0) #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %3, label %4, !prof !11

3:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 180, i32 noundef 9, ptr noundef null) #12
  br label %4

4:                                                ; preds = %3, %1
  %5 = zext i32 %0 to i64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @dma_fence_context_counter) #12, !srcloc !19
  %6 = tail call { i64, i64, i32 } asm sideeffect "@ atomic64_fetch_add\0A1:\09ldrexd\09$0, ${0:H}, [$4]\0A\09adds ${1:Q}, ${0:Q}, ${5:Q}\0A\09adc ${1:R}, ${0:R}, ${5:R}\0A\09strexd\09$2, $1, ${1:H}, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr nonnull elementtype(i64) @dma_fence_context_counter, ptr nonnull @dma_fence_context_counter, i64 %5, ptr nonnull elementtype(i64) @dma_fence_context_counter) #12, !srcloc !24
  %7 = extractvalue { i64, i64, i32 } %6, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !25
  ret i64 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dma_fence_signal_timestamp_locked(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  %4 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 5
  %5 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %4) #12
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %49, !prof !10

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  store ptr %9, ptr %3, align 8
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %3, ptr %10, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %12, ptr %13, align 4
  store ptr %3, ptr %12, align 4
  store i64 %1, ptr %8, align 8
  call void @_set_bit(i32 noundef 1, ptr noundef %4) #12
  %14 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dma_fence_signaled, i32 0, i32 1), align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %7
  %17 = tail call ptr @llvm.thread.pointer() #12
  %18 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %19 = load i32, ptr %18, align 8
  %20 = lshr i32 %19, 5
  %21 = getelementptr i32, ptr @__cpu_online_mask, i32 %20
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %19, 31
  %24 = shl nuw i32 1, %23
  %25 = and i32 %24, %22
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %16
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !26
  %28 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dma_fence_signaled, i32 0, i32 7), align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %30, %27
  %31 = phi ptr [ %35, %30 ], [ %28, %27 ]
  %32 = load volatile ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.tracepoint_func, ptr %31, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  call void %32(ptr noundef %34, ptr noundef %0) #12
  %35 = getelementptr %struct.tracepoint_func, ptr %31, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %30

38:                                               ; preds = %30, %27
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !27
  br label %39

39:                                               ; preds = %38, %16, %7
  %40 = load ptr, ptr %3, align 8
  %41 = icmp eq ptr %40, %3
  br i1 %41, label %49, label %42

42:                                               ; preds = %42, %39
  %43 = phi ptr [ %44, %42 ], [ %40, %39 ]
  %44 = load ptr, ptr %43, align 4
  store volatile ptr %43, ptr %43, align 4
  %45 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  store ptr %43, ptr %45, align 4
  %46 = getelementptr inbounds %struct.dma_fence_cb, ptr %43, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  call void %47(ptr noundef %0, ptr noundef %43) #12
  %48 = icmp eq ptr %44, %3
  br i1 %48, label %49, label %42

49:                                               ; preds = %42, %39, %2
  %50 = phi i32 [ -22, %2 ], [ 0, %39 ], [ 0, %42 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  ret i32 %50
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dma_fence_signal_timestamp(ptr noundef %0, i64 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #12
  %7 = tail call i32 @dma_fence_signal_timestamp_locked(ptr noundef nonnull %0, i64 noundef %1)
  %8 = load ptr, ptr %0, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %6) #12
  br label %9

9:                                                ; preds = %4, %2
  %10 = phi i32 [ %7, %4 ], [ -22, %2 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dma_fence_wait_timeout(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2) #0 {
  %4 = icmp slt i32 %2, 0
  br i1 %4, label %5, label %6, !prof !11

5:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 496, i32 noundef 9, ptr noundef null) #12
  br label %69

6:                                                ; preds = %3
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dma_fence_wait_start, i32 0, i32 1), align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %32

9:                                                ; preds = %6
  %10 = tail call ptr @llvm.thread.pointer() #12
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 5
  %14 = getelementptr i32, ptr @__cpu_online_mask, i32 %13
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %12, 31
  %17 = shl nuw i32 1, %16
  %18 = and i32 %17, %15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %9
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !28
  %21 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dma_fence_wait_start, i32 0, i32 7), align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %23, %20
  %24 = phi ptr [ %28, %23 ], [ %21, %20 ]
  %25 = load volatile ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.tracepoint_func, ptr %24, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  tail call void %25(ptr noundef %27, ptr noundef %0) #12
  %28 = getelementptr %struct.tracepoint_func, ptr %24, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %23

31:                                               ; preds = %23, %20
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !29
  br label %32

32:                                               ; preds = %31, %9, %6
  %33 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.dma_fence_ops, ptr %34, i32 0, i32 5
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %32
  %39 = tail call i32 %36(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2) #12
  br label %42

40:                                               ; preds = %32
  %41 = tail call i32 @dma_fence_default_wait(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2)
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dma_fence_wait_end, i32 0, i32 1), align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %69

46:                                               ; preds = %42
  %47 = tail call ptr @llvm.thread.pointer() #12
  %48 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %49 = load i32, ptr %48, align 8
  %50 = lshr i32 %49, 5
  %51 = getelementptr i32, ptr @__cpu_online_mask, i32 %50
  %52 = load volatile i32, ptr %51, align 4
  %53 = and i32 %49, 31
  %54 = shl nuw i32 1, %53
  %55 = and i32 %54, %52
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %69, label %57

57:                                               ; preds = %46
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !30
  %58 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dma_fence_wait_end, i32 0, i32 7), align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %68, label %60

60:                                               ; preds = %60, %57
  %61 = phi ptr [ %65, %60 ], [ %58, %57 ]
  %62 = load volatile ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.tracepoint_func, ptr %61, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  tail call void %62(ptr noundef %64, ptr noundef %0) #12
  %65 = getelementptr %struct.tracepoint_func, ptr %61, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %60

68:                                               ; preds = %60, %57
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !31
  br label %69

69:                                               ; preds = %68, %46, %42, %5
  %70 = phi i32 [ -22, %5 ], [ %43, %42 ], [ %43, %46 ], [ %43, %68 ]
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dma_fence_default_wait(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2) #0 {
  %4 = alloca %struct.default_wait_cb, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !9
  %5 = icmp eq i32 %2, 0
  %6 = select i1 %5, i32 1, i32 %2
  %7 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 5
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %85

11:                                               ; preds = %3
  %12 = load ptr, ptr %0, align 8
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #12
  br i1 %1, label %14, label %23

14:                                               ; preds = %11
  %15 = tail call ptr @llvm.thread.pointer() #12
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 256
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %81, !prof !10

19:                                               ; preds = %14
  %20 = load volatile i32, ptr %15, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %81

23:                                               ; preds = %19, %11
  %24 = tail call fastcc zeroext i1 @__dma_fence_enable_signaling(ptr noundef %0)
  %25 = xor i1 %24, true
  %26 = or i1 %5, %25
  %27 = select i1 %24, i32 0, i32 %6
  br i1 %26, label %81, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.dma_fence_cb, ptr %4, i32 0, i32 1
  store ptr @dma_fence_default_wait_cb, ptr %29, align 4
  %30 = tail call ptr @llvm.thread.pointer() #12
  %31 = getelementptr inbounds %struct.default_wait_cb, ptr %4, i32 0, i32 1
  store ptr %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  store ptr %4, ptr %34, align 4
  store ptr %33, ptr %4, align 4
  %35 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %32, ptr %35, align 4
  store volatile ptr %4, ptr %32, align 4
  %36 = load volatile i32, ptr %7, align 4
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  %39 = icmp sgt i32 %6, 0
  %40 = and i1 %38, %39
  br i1 %40, label %41, label %71

41:                                               ; preds = %28
  %42 = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 1
  %43 = select i1 %1, i32 1, i32 2
  br label %44

44:                                               ; preds = %64, %41
  %45 = phi i32 [ %13, %41 ], [ %50, %64 ]
  %46 = phi i32 [ %6, %41 ], [ %65, %64 ]
  store volatile i32 %43, ptr %42, align 8
  %47 = load ptr, ptr %0, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %47, i32 noundef %45) #12
  %48 = call i32 @schedule_timeout(i32 noundef %46) #12
  %49 = load ptr, ptr %0, align 8
  %50 = call i32 @_raw_spin_lock_irqsave(ptr noundef %49) #12
  %51 = icmp sgt i32 %48, 0
  %52 = and i1 %51, %1
  br i1 %52, label %53, label %64

53:                                               ; preds = %44
  %54 = load volatile i32, ptr %30, align 4
  %55 = and i32 %54, 256
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57, !prof !10

57:                                               ; preds = %53
  %58 = load volatile i32, ptr %7, align 4
  br label %71

59:                                               ; preds = %53
  %60 = load volatile i32, ptr %30, align 4
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  %63 = select i1 %62, i32 %48, i32 -512
  br label %64

64:                                               ; preds = %59, %44
  %65 = phi i32 [ %48, %44 ], [ %63, %59 ]
  %66 = load volatile i32, ptr %7, align 4
  %67 = and i32 %66, 1
  %68 = icmp eq i32 %67, 0
  %69 = icmp sgt i32 %65, 0
  %70 = select i1 %68, i1 %69, i1 false
  br i1 %70, label %44, label %71

71:                                               ; preds = %64, %57, %28
  %72 = phi i32 [ %6, %28 ], [ -512, %57 ], [ %65, %64 ]
  %73 = phi i32 [ %13, %28 ], [ %50, %57 ], [ %50, %64 ]
  %74 = load volatile ptr, ptr %4, align 4
  %75 = icmp eq ptr %74, %4
  br i1 %75, label %79, label %76

76:                                               ; preds = %71
  %77 = load ptr, ptr %35, align 4
  %78 = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  store ptr %77, ptr %78, align 4
  store volatile ptr %74, ptr %77, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %35, align 4
  br label %79

79:                                               ; preds = %76, %71
  %80 = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 1
  store volatile i32 0, ptr %80, align 8
  br label %81

81:                                               ; preds = %79, %23, %19, %14
  %82 = phi i32 [ %72, %79 ], [ %27, %23 ], [ -512, %19 ], [ -512, %14 ]
  %83 = phi i32 [ %73, %79 ], [ %13, %23 ], [ %13, %19 ], [ %13, %14 ]
  %84 = load ptr, ptr %0, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %84, i32 noundef %83) #12
  br label %85

85:                                               ; preds = %81, %3
  %86 = phi i32 [ %82, %81 ], [ %6, %3 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  ret i32 %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dma_fence_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -36
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dma_fence_destroy, i32 0, i32 1), align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %28

5:                                                ; preds = %1
  %6 = tail call ptr @llvm.thread.pointer() #12
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
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !32
  %17 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dma_fence_destroy, i32 0, i32 7), align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %19, %16
  %20 = phi ptr [ %24, %19 ], [ %17, %16 ]
  %21 = load volatile ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.tracepoint_func, ptr %20, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  tail call void %21(ptr noundef %23, ptr noundef %2) #12
  %24 = getelementptr %struct.tracepoint_func, ptr %20, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %19

27:                                               ; preds = %19, %16
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !33
  br label %28

28:                                               ; preds = %27, %5, %1
  %29 = getelementptr i8, ptr %0, i32 -28
  %30 = load volatile ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %29
  br i1 %31, label %57, label %32

32:                                               ; preds = %28
  %33 = getelementptr i8, ptr %0, i32 -4
  %34 = load volatile i32, ptr %33, align 4
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %57, !prof !11

37:                                               ; preds = %32
  %38 = getelementptr i8, ptr %0, i32 -32
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.dma_fence_ops, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = tail call ptr %41(ptr noundef %2) #12
  %43 = load ptr, ptr %38, align 4
  %44 = getelementptr inbounds %struct.dma_fence_ops, ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = tail call ptr %45(ptr noundef %2) #12
  %47 = getelementptr i8, ptr %0, i32 -20
  %48 = load i64, ptr %47, align 8
  %49 = getelementptr i8, ptr %0, i32 -12
  %50 = load i64, ptr %49, align 8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 532, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %42, ptr noundef %46, i64 noundef %48, i64 noundef %50) #12
  %51 = load ptr, ptr %2, align 8
  %52 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %51) #12
  %53 = getelementptr i8, ptr %0, i32 4
  store i32 -35, ptr %53, align 8
  %54 = tail call i64 @ktime_get() #12
  %55 = tail call i32 @dma_fence_signal_timestamp_locked(ptr noundef %2, i64 noundef %54) #12
  %56 = load ptr, ptr %2, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %56, i32 noundef %52) #12
  br label %57

57:                                               ; preds = %37, %32, %28
  %58 = getelementptr i8, ptr %0, i32 -32
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.dma_fence_ops, ptr %59, i32 0, i32 6
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %57
  tail call void %61(ptr noundef %2) #12
  br label %67

64:                                               ; preds = %57
  %65 = icmp eq ptr %2, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %64
  tail call void @kvfree_call_rcu(ptr noundef %29, ptr noundef nonnull inttoptr (i32 8 to ptr)) #12
  br label %67

67:                                               ; preds = %66, %64, %63
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dma_fence_free(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 2
  tail call void @kvfree_call_rcu(ptr noundef %4, ptr noundef nonnull inttoptr (i32 8 to ptr)) #12
  br label %5

5:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dma_fence_enable_sw_signaling(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 5
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #12
  %9 = tail call fastcc zeroext i1 @__dma_fence_enable_signaling(ptr noundef %0)
  %10 = load ptr, ptr %0, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %8) #12
  br label %11

11:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @__dma_fence_enable_signaling(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 5
  %3 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %2) #12
  %4 = load volatile i32, ptr %2, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %50

7:                                                ; preds = %1
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %9, label %50

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.dma_fence_ops, ptr %11, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %50, label %15

15:                                               ; preds = %9
  %16 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dma_fence_enable_signal, i32 0, i32 1), align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %15
  %19 = tail call ptr @llvm.thread.pointer() #12
  %20 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %21 = load i32, ptr %20, align 8
  %22 = lshr i32 %21, 5
  %23 = getelementptr i32, ptr @__cpu_online_mask, i32 %22
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %21, 31
  %26 = shl nuw i32 1, %25
  %27 = and i32 %26, %24
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %18
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !34
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dma_fence_enable_signal, i32 0, i32 7), align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %32, %29
  %33 = phi ptr [ %37, %32 ], [ %30, %29 ]
  %34 = load volatile ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.tracepoint_func, ptr %33, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  tail call void %34(ptr noundef %36, ptr noundef %0) #12
  %37 = getelementptr %struct.tracepoint_func, ptr %33, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %32

40:                                               ; preds = %32, %29
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !35
  %41 = load ptr, ptr %10, align 4
  %42 = getelementptr inbounds %struct.dma_fence_ops, ptr %41, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  br label %44

44:                                               ; preds = %40, %18, %15
  %45 = phi ptr [ %13, %15 ], [ %13, %18 ], [ %43, %40 ]
  %46 = tail call zeroext i1 %45(ptr noundef %0) #12
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = tail call i64 @ktime_get() #12
  %49 = tail call i32 @dma_fence_signal_timestamp_locked(ptr noundef %0, i64 noundef %48) #12
  br label %50

50:                                               ; preds = %47, %44, %9, %7, %1
  %51 = phi i1 [ false, %47 ], [ false, %1 ], [ true, %44 ], [ true, %9 ], [ true, %7 ]
  ret i1 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dma_fence_add_callback(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %2, null
  %6 = or i1 %4, %5
  br i1 %6, label %7, label %8, !prof !11

7:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 641, i32 noundef 9, ptr noundef null) #12
  br label %30

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 5
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  store volatile ptr %1, ptr %1, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  store ptr %1, ptr %14, align 4
  br label %30

15:                                               ; preds = %8
  %16 = load ptr, ptr %0, align 8
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %16) #12
  %18 = tail call fastcc zeroext i1 @__dma_fence_enable_signaling(ptr noundef nonnull %0)
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.dma_fence_cb, ptr %1, i32 0, i32 1
  store ptr %2, ptr %20, align 4
  %21 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 2
  %22 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  store ptr %1, ptr %22, align 4
  store ptr %21, ptr %1, align 4
  %24 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  store ptr %23, ptr %24, align 4
  store volatile ptr %1, ptr %23, align 4
  br label %27

25:                                               ; preds = %15
  store volatile ptr %1, ptr %1, align 4
  %26 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  store ptr %1, ptr %26, align 4
  br label %27

27:                                               ; preds = %25, %19
  %28 = phi i32 [ 0, %19 ], [ -2, %25 ]
  %29 = load ptr, ptr %0, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %29, i32 noundef %17) #12
  br label %30

30:                                               ; preds = %27, %13, %7
  %31 = phi i32 [ -22, %7 ], [ -2, %13 ], [ %28, %27 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dma_fence_get_status(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #12
  %4 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 5
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dma_fence_ops, ptr %10, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %8
  %15 = tail call zeroext i1 %12(ptr noundef %0) #12
  br i1 %15, label %16, label %24

16:                                               ; preds = %14
  %17 = tail call i64 @ktime_get() #12
  %18 = tail call i32 @dma_fence_signal_timestamp_locked(ptr noundef %0, i64 noundef %17) #12
  br label %19

19:                                               ; preds = %16, %1
  %20 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 7
  %21 = load i32, ptr %20, align 8
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i32 1, i32 %21
  br label %24

24:                                               ; preds = %19, %14, %8
  %25 = phi i32 [ %23, %19 ], [ 0, %8 ], [ 0, %14 ]
  %26 = load ptr, ptr %0, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %3) #12
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @dma_fence_remove_callback(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #12
  %5 = load volatile ptr, ptr %1, align 4
  %6 = icmp ne ptr %5, %1
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  store volatile ptr %5, ptr %9, align 4
  store volatile ptr %1, ptr %1, align 4
  store ptr %1, ptr %8, align 4
  br label %11

11:                                               ; preds = %7, %2
  %12 = load ptr, ptr %0, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %4) #12
  ret i1 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dma_fence_default_wait_cb(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.default_wait_cb, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @wake_up_state(ptr noundef %4, i32 noundef 3) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dma_fence_wait_any_timeout(ptr noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2, i32 noundef %3, ptr noundef writeonly %4) #0 {
  %6 = icmp eq ptr %0, null
  %7 = icmp eq i32 %1, 0
  %8 = icmp slt i32 %3, 0
  %9 = or i1 %6, %7
  %10 = or i1 %9, %8
  br i1 %10, label %11, label %12, !prof !11

11:                                               ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 850, i32 noundef 9, ptr noundef null) #12
  br label %163

12:                                               ; preds = %5
  %13 = icmp eq i32 %3, 0
  br i1 %13, label %14, label %44

14:                                               ; preds = %41, %12
  %15 = phi i32 [ %42, %41 ], [ 0, %12 ]
  %16 = getelementptr ptr, ptr %0, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.dma_fence, ptr %17, i32 0, i32 5
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.dma_fence, ptr %17, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.dma_fence_ops, ptr %24, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %41, label %28

28:                                               ; preds = %22
  %29 = tail call zeroext i1 %26(ptr noundef %17) #12
  br i1 %29, label %30, label %41

30:                                               ; preds = %28
  %31 = icmp eq ptr %17, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %30
  %33 = load ptr, ptr %17, align 8
  %34 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %33) #12
  %35 = tail call i64 @ktime_get() #12
  %36 = tail call i32 @dma_fence_signal_timestamp_locked(ptr noundef nonnull %17, i64 noundef %35) #12
  %37 = load ptr, ptr %17, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %37, i32 noundef %34) #12
  br label %38

38:                                               ; preds = %32, %30, %14
  %39 = icmp eq ptr %4, null
  br i1 %39, label %163, label %40

40:                                               ; preds = %38
  store i32 %15, ptr %4, align 4
  br label %163

41:                                               ; preds = %28, %22
  %42 = add nuw i32 %15, 1
  %43 = icmp eq i32 %42, %1
  br i1 %43, label %163, label %14

44:                                               ; preds = %12
  %45 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 16) #12
  %46 = extractvalue { i32, i1 } %45, 1
  br i1 %46, label %160, label %47, !prof !11

47:                                               ; preds = %44
  %48 = extractvalue { i32, i1 } %45, 0
  %49 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %48, i32 noundef 3520) #14
  %50 = icmp eq ptr %49, null
  br i1 %50, label %160, label %51

51:                                               ; preds = %47
  %52 = tail call ptr @llvm.thread.pointer() #12
  br label %59

53:                                               ; preds = %84
  %54 = icmp sgt i32 %3, 0
  br i1 %54, label %55, label %135

55:                                               ; preds = %53
  %56 = icmp eq ptr %4, null
  %57 = tail call ptr @llvm.thread.pointer() #12
  %58 = getelementptr inbounds %struct.task_struct, ptr %57, i32 0, i32 1
  br label %93

59:                                               ; preds = %84, %51
  %60 = phi i32 [ 0, %51 ], [ %91, %84 ]
  %61 = getelementptr ptr, ptr %0, i32 %60
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr %struct.default_wait_cb, ptr %49, i32 %60
  %64 = getelementptr %struct.default_wait_cb, ptr %49, i32 %60, i32 1
  store ptr %52, ptr %64, align 4
  %65 = icmp eq ptr %62, null
  br i1 %65, label %66, label %67, !prof !11

66:                                               ; preds = %59
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 641, i32 noundef 9, ptr noundef null) #12
  br label %81

67:                                               ; preds = %59
  %68 = getelementptr inbounds %struct.dma_fence, ptr %62, i32 0, i32 5
  %69 = load volatile i32, ptr %68, align 4
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %67
  store volatile ptr %63, ptr %63, align 16
  %73 = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  store ptr %63, ptr %73, align 4
  br label %81

74:                                               ; preds = %67
  %75 = load ptr, ptr %62, align 8
  %76 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %75) #12
  %77 = tail call fastcc zeroext i1 @__dma_fence_enable_signaling(ptr noundef nonnull %62) #12
  br i1 %77, label %84, label %78

78:                                               ; preds = %74
  store volatile ptr %63, ptr %63, align 16
  %79 = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  store ptr %63, ptr %79, align 4
  %80 = load ptr, ptr %62, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %80, i32 noundef %76) #12
  br label %81

81:                                               ; preds = %78, %72, %66
  %82 = icmp eq ptr %4, null
  br i1 %82, label %139, label %83

83:                                               ; preds = %81
  store i32 %60, ptr %4, align 4
  br label %139

84:                                               ; preds = %74
  %85 = getelementptr inbounds %struct.dma_fence_cb, ptr %63, i32 0, i32 1
  store ptr @dma_fence_default_wait_cb, ptr %85, align 8
  %86 = getelementptr inbounds %struct.dma_fence, ptr %62, i32 0, i32 2
  %87 = getelementptr inbounds %struct.list_head, ptr %86, i32 0, i32 1
  %88 = load ptr, ptr %87, align 4
  store ptr %63, ptr %87, align 4
  store ptr %86, ptr %63, align 16
  %89 = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  store ptr %88, ptr %89, align 4
  store volatile ptr %63, ptr %88, align 4
  %90 = load ptr, ptr %62, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %90, i32 noundef %76) #12
  %91 = add nuw i32 %60, 1
  %92 = icmp eq i32 %91, %1
  br i1 %92, label %53, label %59

93:                                               ; preds = %133, %55
  %94 = phi i32 [ %3, %55 ], [ %121, %133 ]
  br i1 %2, label %95, label %96

95:                                               ; preds = %93
  store volatile i32 1, ptr %58, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !36
  br label %97

96:                                               ; preds = %93
  store volatile i32 2, ptr %58, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !37
  br label %97

97:                                               ; preds = %96, %95
  %98 = load ptr, ptr %0, align 4
  %99 = getelementptr inbounds %struct.dma_fence, ptr %98, i32 0, i32 5
  %100 = load volatile i32, ptr %99, align 4
  %101 = and i32 %100, 1
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %115, label %112

103:                                              ; preds = %115
  %104 = getelementptr ptr, ptr %0, i32 %117
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.dma_fence, ptr %105, i32 0, i32 5
  %107 = load volatile i32, ptr %106, align 4
  %108 = and i32 %107, 1
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %115, label %110

110:                                              ; preds = %103
  %111 = icmp ult i32 %117, %1
  br i1 %56, label %119, label %114

112:                                              ; preds = %97
  br i1 %56, label %135, label %113

113:                                              ; preds = %112
  store i32 0, ptr %4, align 4
  br label %135

114:                                              ; preds = %110
  store i32 %117, ptr %4, align 4
  br i1 %111, label %135, label %120

115:                                              ; preds = %103, %97
  %116 = phi i32 [ %117, %103 ], [ 0, %97 ]
  %117 = add nuw i32 %116, 1
  %118 = icmp eq i32 %117, %1
  br i1 %118, label %120, label %103

119:                                              ; preds = %110
  br i1 %111, label %135, label %120

120:                                              ; preds = %119, %115, %114
  %121 = tail call i32 @schedule_timeout(i32 noundef %94) #12
  %122 = icmp sgt i32 %121, 0
  %123 = and i1 %122, %2
  br i1 %123, label %124, label %133

124:                                              ; preds = %120
  %125 = tail call ptr @llvm.thread.pointer() #12
  %126 = load volatile i32, ptr %125, align 4
  %127 = and i32 %126, 256
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %135, !prof !10

129:                                              ; preds = %124
  %130 = load volatile i32, ptr %125, align 4
  %131 = and i32 %130, 1
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %129, %120
  %134 = icmp sgt i32 %121, 0
  br i1 %134, label %93, label %135

135:                                              ; preds = %133, %129, %124, %119, %114, %113, %112, %53
  %136 = phi i32 [ %3, %53 ], [ %94, %113 ], [ %94, %112 ], [ -512, %129 ], [ -512, %124 ], [ %94, %114 ], [ %121, %133 ], [ %94, %119 ]
  %137 = tail call ptr @llvm.thread.pointer() #12
  %138 = getelementptr inbounds %struct.task_struct, ptr %137, i32 0, i32 1
  store volatile i32 0, ptr %138, align 8
  br label %139

139:                                              ; preds = %135, %83, %81
  %140 = phi i32 [ %1, %135 ], [ %60, %83 ], [ %60, %81 ]
  %141 = phi i32 [ %136, %135 ], [ %3, %83 ], [ %3, %81 ]
  %142 = icmp eq i32 %140, 0
  br i1 %142, label %160, label %143

143:                                              ; preds = %157, %139
  %144 = phi i32 [ %145, %157 ], [ %140, %139 ]
  %145 = add i32 %144, -1
  %146 = getelementptr ptr, ptr %0, i32 %145
  %147 = load ptr, ptr %146, align 4
  %148 = getelementptr %struct.default_wait_cb, ptr %49, i32 %145
  %149 = load ptr, ptr %147, align 8
  %150 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %149) #12
  %151 = load volatile ptr, ptr %148, align 16
  %152 = icmp eq ptr %151, %148
  br i1 %152, label %157, label %153

153:                                              ; preds = %143
  %154 = getelementptr inbounds %struct.list_head, ptr %148, i32 0, i32 1
  %155 = load ptr, ptr %154, align 4
  %156 = getelementptr inbounds %struct.list_head, ptr %151, i32 0, i32 1
  store ptr %155, ptr %156, align 4
  store volatile ptr %151, ptr %155, align 4
  store volatile ptr %148, ptr %148, align 16
  store ptr %148, ptr %154, align 4
  br label %157

157:                                              ; preds = %153, %143
  %158 = load ptr, ptr %147, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %158, i32 noundef %150) #12
  %159 = icmp eq i32 %145, 0
  br i1 %159, label %160, label %143

160:                                              ; preds = %157, %139, %47, %44
  %161 = phi ptr [ null, %47 ], [ null, %44 ], [ %49, %139 ], [ %49, %157 ]
  %162 = phi i32 [ -12, %47 ], [ -12, %44 ], [ %141, %139 ], [ %141, %157 ]
  tail call void @kfree(ptr noundef %161) #12
  br label %163

163:                                              ; preds = %160, %41, %40, %38, %11
  %164 = phi i32 [ -22, %11 ], [ %162, %160 ], [ 1, %40 ], [ 1, %38 ], [ 0, %41 ]
  ret i32 %164
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dma_fence_describe(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dma_fence_ops, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr %6(ptr noundef %0) #12
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr inbounds %struct.dma_fence_ops, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call ptr %10(ptr noundef %0) #12
  %12 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 4
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 5
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %2
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr inbounds %struct.dma_fence_ops, ptr %19, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %33, label %23

23:                                               ; preds = %18
  %24 = tail call zeroext i1 %21(ptr noundef %0) #12
  br i1 %24, label %25, label %33

25:                                               ; preds = %23
  %26 = icmp eq ptr %0, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %25
  %28 = load ptr, ptr %0, align 8
  %29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %28) #12
  %30 = tail call i64 @ktime_get() #12
  %31 = tail call i32 @dma_fence_signal_timestamp_locked(ptr noundef nonnull %0, i64 noundef %30) #12
  %32 = load ptr, ptr %0, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %32, i32 noundef %29) #12
  br label %33

33:                                               ; preds = %27, %25, %23, %18, %2
  %34 = phi ptr [ @.str.4, %18 ], [ @.str.4, %23 ], [ @.str.3, %2 ], [ @.str.3, %25 ], [ @.str.3, %27 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef %7, ptr noundef %11, i64 noundef %13, ptr noundef nonnull %34) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dma_fence(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #12
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %23

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_dma_fence, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_dma_fence, ptr %5, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 65535
  %17 = getelementptr i8, ptr %5, i32 %16
  %18 = getelementptr inbounds %struct.trace_event_raw_dma_fence, ptr %5, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_dma_fence, ptr %5, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef %13, ptr noundef %17, i32 noundef %19, i32 noundef %21) #12
  %22 = tail call i32 @trace_handle_return(ptr noundef %9) #12
  br label %23

23:                                               ; preds = %8, %3
  %24 = phi i32 [ %22, %8 ], [ %6, %3 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

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
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal nonnull ptr @dma_fence_stub_get_name(ptr nocapture noundef readnone %0) #8 {
  ret ptr @.str.13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

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
!12 = !{i64 708364}
!13 = !{i64 2152073533}
!14 = !{i64 2152073683}
!15 = !{i64 2148952590}
!16 = !{i64 2148948414}
!17 = !{i64 2148948489, i64 2148948516, i64 2148948563, i64 2148948585, i64 2148948613, i64 2148948633}
!18 = !{i64 2148975593}
!19 = !{i64 783986, i64 2148273957, i64 2148273983, i64 2148274030, i64 2148274052, i64 2148274080, i64 2148274100}
!20 = !{i64 2148286830, i64 2148286862, i64 2148286891, i64 2148286925, i64 2148286956, i64 2148286979}
!21 = !{i64 2154138208, i64 2154138700, i64 2154138245, i64 2154138301, i64 2154138335, i64 2154138359, i64 2154138400, i64 2154138421, i64 2154138449, i64 2154138483}
!22 = !{i64 2154139336, i64 2154139828, i64 2154139373, i64 2154139429, i64 2154139463, i64 2154139487, i64 2154139528, i64 2154139549, i64 2154139577, i64 2154139611}
!23 = !{i64 2148424112}
!24 = !{i64 2148298165, i64 2148298198, i64 2148298232, i64 2148298266, i64 2148298300, i64 2148298336, i64 2148298359}
!25 = !{i64 2148424316}
!26 = !{i64 2152126208}
!27 = !{i64 2152126366}
!28 = !{i64 2152142438}
!29 = !{i64 2152142600}
!30 = !{i64 2152158700}
!31 = !{i64 2152158858}
!32 = !{i64 2152089433}
!33 = !{i64 2152089589}
!34 = !{i64 2152109784}
!35 = !{i64 2152109952}
!36 = !{i64 2154129787}
!37 = !{i64 2154132611}
