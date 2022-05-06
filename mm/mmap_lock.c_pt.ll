; ModuleID = '/llk/IR/mm/mmap_lock.c_pt.bc'
source_filename = "../mm/mmap_lock.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_mmap_lock_start_locking:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_mmap_lock_start_locking\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_mmap_lock_start_locking:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_mmap_lock_start_locking:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_mmap_lock_start_locking\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_mmap_lock_start_locking:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_mmap_lock_start_locking:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_mmap_lock_start_locking\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_mmap_lock_start_locking:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_mmap_lock_acquire_returned:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_mmap_lock_acquire_returned\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_mmap_lock_acquire_returned:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_mmap_lock_acquire_returned:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_mmap_lock_acquire_returned\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_mmap_lock_acquire_returned:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_mmap_lock_acquire_returned:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_mmap_lock_acquire_returned\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_mmap_lock_acquire_returned:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_mmap_lock_released:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_mmap_lock_released\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_mmap_lock_released:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_mmap_lock_released:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_mmap_lock_released\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_mmap_lock_released:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_mmap_lock_released:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_mmap_lock_released\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_mmap_lock_released:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___mmap_lock_do_trace_start_locking:\09\09\09\09\09"
module asm "\09.asciz \09\22__mmap_lock_do_trace_start_locking\22\09\09\09\09\09"
module asm "__kstrtabns___mmap_lock_do_trace_start_locking:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___mmap_lock_do_trace_acquire_returned:\09\09\09\09\09"
module asm "\09.asciz \09\22__mmap_lock_do_trace_acquire_returned\22\09\09\09\09\09"
module asm "__kstrtabns___mmap_lock_do_trace_acquire_returned:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___mmap_lock_do_trace_released:\09\09\09\09\09"
module asm "\09.asciz \09\22__mmap_lock_do_trace_released\22\09\09\09\09\09"
module asm "__kstrtabns___mmap_lock_do_trace_released:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.89 }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.91, %struct.trace_event, ptr, ptr, %union.anon.92, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.91 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.92 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_mmap_lock = type { %struct.trace_entry, ptr, i32, i8, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.trace_event_raw_mmap_lock_acquire_returned = type { %struct.trace_entry, ptr, i32, i8, i8, [0 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_mmap_lock_start_locking = internal constant [24 x i8] c"mmap_lock_start_locking\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mmap_lock_start_locking = dso_local global %struct.static_call_key { ptr @__traceiter_mmap_lock_start_locking }, align 4
@__tracepoint_mmap_lock_start_locking = dso_local global %struct.tracepoint { ptr @__tpstrtab_mmap_lock_start_locking, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mmap_lock_start_locking, ptr null, ptr @__traceiter_mmap_lock_start_locking, ptr @trace_mmap_lock_reg, ptr @trace_mmap_lock_unreg, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mmap_lock_start_locking = internal constant ptr @__tracepoint_mmap_lock_start_locking, section "__tracepoints_ptrs", align 4
@__tpstrtab_mmap_lock_released = internal constant [19 x i8] c"mmap_lock_released\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mmap_lock_released = dso_local global %struct.static_call_key { ptr @__traceiter_mmap_lock_released }, align 4
@__tracepoint_mmap_lock_released = dso_local global %struct.tracepoint { ptr @__tpstrtab_mmap_lock_released, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mmap_lock_released, ptr null, ptr @__traceiter_mmap_lock_released, ptr @trace_mmap_lock_reg, ptr @trace_mmap_lock_unreg, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mmap_lock_released = internal constant ptr @__tracepoint_mmap_lock_released, section "__tracepoints_ptrs", align 4
@__tpstrtab_mmap_lock_acquire_returned = internal constant [27 x i8] c"mmap_lock_acquire_returned\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mmap_lock_acquire_returned = dso_local global %struct.static_call_key { ptr @__traceiter_mmap_lock_acquire_returned }, align 4
@__tracepoint_mmap_lock_acquire_returned = dso_local global %struct.tracepoint { ptr @__tpstrtab_mmap_lock_acquire_returned, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mmap_lock_acquire_returned, ptr null, ptr @__traceiter_mmap_lock_acquire_returned, ptr @trace_mmap_lock_reg, ptr @trace_mmap_lock_unreg, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mmap_lock_acquire_returned = internal constant ptr @__tracepoint_mmap_lock_acquire_returned, section "__tracepoints_ptrs", align 4
@str__mmap_lock__trace_system_name = internal constant [10 x i8] c"mmap_lock\00", align 1
@trace_event_fields_mmap_lock = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.2, %union.anon.89 { %struct.anon.90 { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.89 { %struct.anon.90 { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.89 { %struct.anon.90 { ptr @.str.7, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_mmap_lock = internal global %struct.trace_event_class { ptr @str__mmap_lock__trace_system_name, ptr @trace_event_raw_event_mmap_lock, ptr @perf_trace_mmap_lock, ptr @trace_event_reg, ptr @trace_event_fields_mmap_lock, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mmap_lock, i64 24), ptr getelementptr (i8, ptr @event_class_mmap_lock, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mmap_lock = internal global %struct.trace_event_functions { ptr @trace_raw_output_mmap_lock, ptr null, ptr null, ptr null }, align 4
@print_fmt_mmap_lock = internal global [94 x i8] c"\22mm=%p memcg_path=%s write=%s\22, REC->mm, __get_str(memcg_path), REC->write ? \22true\22 : \22false\22\00", align 1
@event_mmap_lock_start_locking = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mmap_lock, %union.anon.91 { ptr @__tracepoint_mmap_lock_start_locking }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mmap_lock }, ptr @print_fmt_mmap_lock, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mmap_lock_start_locking = internal global ptr @event_mmap_lock_start_locking, section "_ftrace_events", align 4
@event_mmap_lock_released = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mmap_lock, %union.anon.91 { ptr @__tracepoint_mmap_lock_released }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mmap_lock }, ptr @print_fmt_mmap_lock, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mmap_lock_released = internal global ptr @event_mmap_lock_released, section "_ftrace_events", align 4
@trace_event_fields_mmap_lock_acquire_returned = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.2, %union.anon.89 { %struct.anon.90 { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.89 { %struct.anon.90 { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.89 { %struct.anon.90 { ptr @.str.7, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.89 { %struct.anon.90 { ptr @.str.11, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_mmap_lock_acquire_returned = internal global %struct.trace_event_class { ptr @str__mmap_lock__trace_system_name, ptr @trace_event_raw_event_mmap_lock_acquire_returned, ptr @perf_trace_mmap_lock_acquire_returned, ptr @trace_event_reg, ptr @trace_event_fields_mmap_lock_acquire_returned, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mmap_lock_acquire_returned, i64 24), ptr getelementptr (i8, ptr @event_class_mmap_lock_acquire_returned, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mmap_lock_acquire_returned = internal global %struct.trace_event_functions { ptr @trace_raw_output_mmap_lock_acquire_returned, ptr null, ptr null, ptr null }, align 4
@print_fmt_mmap_lock_acquire_returned = internal global [138 x i8] c"\22mm=%p memcg_path=%s write=%s success=%s\22, REC->mm, __get_str(memcg_path), REC->write ? \22true\22 : \22false\22, REC->success ? \22true\22 : \22false\22\00", align 1
@event_mmap_lock_acquire_returned = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mmap_lock_acquire_returned, %union.anon.91 { ptr @__tracepoint_mmap_lock_acquire_returned }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mmap_lock_acquire_returned }, ptr @print_fmt_mmap_lock_acquire_returned, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mmap_lock_acquire_returned = internal global ptr @event_mmap_lock_acquire_returned, section "_ftrace_events", align 4
@__kstrtab___tracepoint_mmap_lock_start_locking = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_mmap_lock_start_locking = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_mmap_lock_start_locking = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_mmap_lock_start_locking to i32), ptr @__kstrtab___tracepoint_mmap_lock_start_locking, ptr @__kstrtabns___tracepoint_mmap_lock_start_locking }, section "___ksymtab+__tracepoint_mmap_lock_start_locking", align 4
@__kstrtab___traceiter_mmap_lock_start_locking = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_mmap_lock_start_locking = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_mmap_lock_start_locking = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_mmap_lock_start_locking to i32), ptr @__kstrtab___traceiter_mmap_lock_start_locking, ptr @__kstrtabns___traceiter_mmap_lock_start_locking }, section "___ksymtab+__traceiter_mmap_lock_start_locking", align 4
@__kstrtab___SCK__tp_func_mmap_lock_start_locking = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_mmap_lock_start_locking = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_mmap_lock_start_locking = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_mmap_lock_start_locking to i32), ptr @__kstrtab___SCK__tp_func_mmap_lock_start_locking, ptr @__kstrtabns___SCK__tp_func_mmap_lock_start_locking }, section "___ksymtab+__SCK__tp_func_mmap_lock_start_locking", align 4
@__kstrtab___tracepoint_mmap_lock_acquire_returned = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_mmap_lock_acquire_returned = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_mmap_lock_acquire_returned = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_mmap_lock_acquire_returned to i32), ptr @__kstrtab___tracepoint_mmap_lock_acquire_returned, ptr @__kstrtabns___tracepoint_mmap_lock_acquire_returned }, section "___ksymtab+__tracepoint_mmap_lock_acquire_returned", align 4
@__kstrtab___traceiter_mmap_lock_acquire_returned = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_mmap_lock_acquire_returned = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_mmap_lock_acquire_returned = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_mmap_lock_acquire_returned to i32), ptr @__kstrtab___traceiter_mmap_lock_acquire_returned, ptr @__kstrtabns___traceiter_mmap_lock_acquire_returned }, section "___ksymtab+__traceiter_mmap_lock_acquire_returned", align 4
@__kstrtab___SCK__tp_func_mmap_lock_acquire_returned = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_mmap_lock_acquire_returned = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_mmap_lock_acquire_returned = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_mmap_lock_acquire_returned to i32), ptr @__kstrtab___SCK__tp_func_mmap_lock_acquire_returned, ptr @__kstrtabns___SCK__tp_func_mmap_lock_acquire_returned }, section "___ksymtab+__SCK__tp_func_mmap_lock_acquire_returned", align 4
@__kstrtab___tracepoint_mmap_lock_released = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_mmap_lock_released = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_mmap_lock_released = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_mmap_lock_released to i32), ptr @__kstrtab___tracepoint_mmap_lock_released, ptr @__kstrtabns___tracepoint_mmap_lock_released }, section "___ksymtab+__tracepoint_mmap_lock_released", align 4
@__kstrtab___traceiter_mmap_lock_released = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_mmap_lock_released = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_mmap_lock_released = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_mmap_lock_released to i32), ptr @__kstrtab___traceiter_mmap_lock_released, ptr @__kstrtabns___traceiter_mmap_lock_released }, section "___ksymtab+__traceiter_mmap_lock_released", align 4
@__kstrtab___SCK__tp_func_mmap_lock_released = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_mmap_lock_released = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_mmap_lock_released = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_mmap_lock_released to i32), ptr @__kstrtab___SCK__tp_func_mmap_lock_released, ptr @__kstrtabns___SCK__tp_func_mmap_lock_released }, section "___ksymtab+__SCK__tp_func_mmap_lock_released", align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__kstrtab___mmap_lock_do_trace_start_locking = external dso_local constant [0 x i8], align 1
@__kstrtabns___mmap_lock_do_trace_start_locking = external dso_local constant [0 x i8], align 1
@__ksymtab___mmap_lock_do_trace_start_locking = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__mmap_lock_do_trace_start_locking to i32), ptr @__kstrtab___mmap_lock_do_trace_start_locking, ptr @__kstrtabns___mmap_lock_do_trace_start_locking }, section "___ksymtab+__mmap_lock_do_trace_start_locking", align 4
@__kstrtab___mmap_lock_do_trace_acquire_returned = external dso_local constant [0 x i8], align 1
@__kstrtabns___mmap_lock_do_trace_acquire_returned = external dso_local constant [0 x i8], align 1
@__ksymtab___mmap_lock_do_trace_acquire_returned = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__mmap_lock_do_trace_acquire_returned to i32), ptr @__kstrtab___mmap_lock_do_trace_acquire_returned, ptr @__kstrtabns___mmap_lock_do_trace_acquire_returned }, section "___ksymtab+__mmap_lock_do_trace_acquire_returned", align 4
@__kstrtab___mmap_lock_do_trace_released = external dso_local constant [0 x i8], align 1
@__kstrtabns___mmap_lock_do_trace_released = external dso_local constant [0 x i8], align 1
@__ksymtab___mmap_lock_do_trace_released = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__mmap_lock_do_trace_released to i32), ptr @__kstrtab___mmap_lock_do_trace_released, ptr @__kstrtabns___mmap_lock_do_trace_released }, section "___ksymtab+__mmap_lock_do_trace_released", align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"struct mm_struct *\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"mm\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"__data_loc char[]\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"memcg_path\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"mm=%p memcg_path=%s write=%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"mm=%p memcg_path=%s write=%s success=%s\0A\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@llvm.compiler.used = appending global [26 x ptr] [ptr @__event_mmap_lock_acquire_returned, ptr @__event_mmap_lock_released, ptr @__event_mmap_lock_start_locking, ptr @__ksymtab___SCK__tp_func_mmap_lock_acquire_returned, ptr @__ksymtab___SCK__tp_func_mmap_lock_released, ptr @__ksymtab___SCK__tp_func_mmap_lock_start_locking, ptr @__ksymtab___mmap_lock_do_trace_acquire_returned, ptr @__ksymtab___mmap_lock_do_trace_released, ptr @__ksymtab___mmap_lock_do_trace_start_locking, ptr @__ksymtab___traceiter_mmap_lock_acquire_returned, ptr @__ksymtab___traceiter_mmap_lock_released, ptr @__ksymtab___traceiter_mmap_lock_start_locking, ptr @__ksymtab___tracepoint_mmap_lock_acquire_returned, ptr @__ksymtab___tracepoint_mmap_lock_released, ptr @__ksymtab___tracepoint_mmap_lock_start_locking, ptr @__tracepoint_mmap_lock_acquire_returned, ptr @__tracepoint_mmap_lock_released, ptr @__tracepoint_mmap_lock_start_locking, ptr @__tracepoint_ptr_mmap_lock_acquire_returned, ptr @__tracepoint_ptr_mmap_lock_released, ptr @__tracepoint_ptr_mmap_lock_start_locking, ptr @event_class_mmap_lock, ptr @event_class_mmap_lock_acquire_returned, ptr @event_mmap_lock_acquire_returned, ptr @event_mmap_lock_released, ptr @event_mmap_lock_start_locking], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mmap_lock_start_locking(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) #9
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @trace_mmap_lock_reg() #1 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @trace_mmap_lock_unreg() #1 {
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mmap_lock_released(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) #9
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mmap_lock_acquire_returned(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4) #0 {
  %6 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 7), align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %8, %5
  %9 = phi ptr [ %13, %8 ], [ %6, %5 ]
  %10 = load volatile ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tracepoint_func, ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void %10(ptr noundef %12, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4) #9
  %13 = getelementptr %struct.tracepoint_func, ptr %9, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8

16:                                               ; preds = %8, %5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mmap_lock(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, i1 noundef zeroext %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  %6 = zext i1 %3 to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 704
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11, !prof !10

11:                                               ; preds = %4
  %12 = and i32 %8, 256
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16, !prof !11

14:                                               ; preds = %11
  %15 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #9
  br i1 %15, label %31, label %16

16:                                               ; preds = %14, %11, %4
  %17 = icmp eq ptr %2, null
  %18 = select i1 %17, ptr @.str.1, ptr %2
  %19 = tail call i32 @strlen(ptr noundef %18) #9
  %20 = add i32 %19, 21
  %21 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %20) #9
  %22 = icmp eq ptr %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %16
  %24 = shl i32 %19, 16
  %25 = add i32 %24, 65553
  %26 = getelementptr inbounds %struct.trace_event_raw_mmap_lock, ptr %21, i32 0, i32 2
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_mmap_lock, ptr %21, i32 0, i32 1
  store ptr %1, ptr %27, align 4
  %28 = getelementptr i8, ptr %21, i32 17
  %29 = call ptr @strcpy(ptr noundef %28, ptr noundef %18)
  %30 = getelementptr inbounds %struct.trace_event_raw_mmap_lock, ptr %21, i32 0, i32 3
  store i8 %6, ptr %30, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #9
  br label %31

31:                                               ; preds = %23, %16, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_mmap_lock(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, i1 noundef zeroext %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = zext i1 %3 to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !9
  %8 = icmp eq ptr %2, null
  %9 = select i1 %8, ptr @.str.1, ptr %2
  %10 = tail call i32 @strlen(ptr noundef %9) #9
  %11 = shl i32 %10, 16
  %12 = add i32 %11, 65553
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %14 = load ptr, ptr %13, align 4
  %15 = ptrtoint ptr %14 to i32
  %16 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %17 = inttoptr i32 %16 to ptr
  %18 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %17) #7, !srcloc !12
  %19 = add i32 %18, %15
  %20 = inttoptr i32 %19 to ptr
  %21 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load volatile ptr, ptr %20, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %51, label %27

27:                                               ; preds = %24, %4
  %28 = add i32 %10, 32
  %29 = and i32 %28, -8
  %30 = add i32 %29, -4
  %31 = call ptr @perf_trace_buf_alloc(i32 noundef %30, ptr noundef nonnull %5, ptr noundef nonnull %6) #9
  %32 = icmp eq ptr %31, null
  br i1 %32, label %51, label %33

33:                                               ; preds = %27
  %34 = load ptr, ptr %5, align 4
  %35 = call ptr @llvm.returnaddress(i32 0) #9
  %36 = ptrtoint ptr %35 to i32
  %37 = getelementptr [18 x i32], ptr %34, i32 0, i32 15
  store i32 %36, ptr %37, align 4
  %38 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %39 = ptrtoint ptr %38 to i32
  %40 = getelementptr [18 x i32], ptr %34, i32 0, i32 11
  store i32 %39, ptr %40, align 4
  %41 = call i32 @llvm.read_register.i32(metadata !0) #9
  %42 = getelementptr [18 x i32], ptr %34, i32 0, i32 13
  store i32 %41, ptr %42, align 4
  %43 = getelementptr [18 x i32], ptr %34, i32 0, i32 16
  store i32 19, ptr %43, align 4
  %44 = getelementptr inbounds %struct.trace_event_raw_mmap_lock, ptr %31, i32 0, i32 2
  store i32 %12, ptr %44, align 4
  %45 = getelementptr inbounds %struct.trace_event_raw_mmap_lock, ptr %31, i32 0, i32 1
  store ptr %1, ptr %45, align 4
  %46 = getelementptr i8, ptr %31, i32 17
  %47 = call ptr @strcpy(ptr noundef %46, ptr noundef %9)
  %48 = getelementptr inbounds %struct.trace_event_raw_mmap_lock, ptr %31, i32 0, i32 3
  store i8 %7, ptr %48, align 4
  %49 = load i32, ptr %6, align 4
  %50 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %31, i32 noundef %30, i32 noundef %49, ptr noundef %0, i64 noundef 1, ptr noundef %50, ptr noundef %20, ptr noundef null) #9
  br label %51

51:                                               ; preds = %33, %27, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mmap_lock_acquire_returned(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, i1 noundef zeroext %3, i1 noundef zeroext %4) #0 {
  %6 = alloca %struct.trace_event_buffer, align 4
  %7 = zext i1 %3 to i8
  %8 = zext i1 %4 to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 24, i1 false), !annotation !9
  %9 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 704
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13, !prof !10

13:                                               ; preds = %5
  %14 = and i32 %10, 256
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18, !prof !11

16:                                               ; preds = %13
  %17 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #9
  br i1 %17, label %34, label %18

18:                                               ; preds = %16, %13, %5
  %19 = icmp eq ptr %2, null
  %20 = select i1 %19, ptr @.str.1, ptr %2
  %21 = tail call i32 @strlen(ptr noundef %20) #9
  %22 = add i32 %21, 21
  %23 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %6, ptr noundef %0, i32 noundef %22) #9
  %24 = icmp eq ptr %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %18
  %26 = shl i32 %21, 16
  %27 = add i32 %26, 65554
  %28 = getelementptr inbounds %struct.trace_event_raw_mmap_lock_acquire_returned, ptr %23, i32 0, i32 2
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.trace_event_raw_mmap_lock_acquire_returned, ptr %23, i32 0, i32 1
  store ptr %1, ptr %29, align 4
  %30 = getelementptr i8, ptr %23, i32 18
  %31 = call ptr @strcpy(ptr noundef %30, ptr noundef %20)
  %32 = getelementptr inbounds %struct.trace_event_raw_mmap_lock_acquire_returned, ptr %23, i32 0, i32 3
  store i8 %7, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_mmap_lock_acquire_returned, ptr %23, i32 0, i32 4
  store i8 %8, ptr %33, align 1
  call void @trace_event_buffer_commit(ptr noundef nonnull %6) #9
  br label %34

34:                                               ; preds = %25, %18, %16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_mmap_lock_acquire_returned(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, i1 noundef zeroext %3, i1 noundef zeroext %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = zext i1 %3 to i8
  %9 = zext i1 %4 to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store ptr null, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store i32 0, ptr %7, align 4, !annotation !9
  %10 = icmp eq ptr %2, null
  %11 = select i1 %10, ptr @.str.1, ptr %2
  %12 = tail call i32 @strlen(ptr noundef %11) #9
  %13 = shl i32 %12, 16
  %14 = add i32 %13, 65554
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %16 = load ptr, ptr %15, align 4
  %17 = ptrtoint ptr %16 to i32
  %18 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %19 = inttoptr i32 %18 to ptr
  %20 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %19) #7, !srcloc !12
  %21 = add i32 %20, %17
  %22 = inttoptr i32 %21 to ptr
  %23 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %24 = load volatile ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %5
  %27 = load volatile ptr, ptr %22, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %54, label %29

29:                                               ; preds = %26, %5
  %30 = add i32 %12, 32
  %31 = and i32 %30, -8
  %32 = add i32 %31, -4
  %33 = call ptr @perf_trace_buf_alloc(i32 noundef %32, ptr noundef nonnull %6, ptr noundef nonnull %7) #9
  %34 = icmp eq ptr %33, null
  br i1 %34, label %54, label %35

35:                                               ; preds = %29
  %36 = load ptr, ptr %6, align 4
  %37 = call ptr @llvm.returnaddress(i32 0) #9
  %38 = ptrtoint ptr %37 to i32
  %39 = getelementptr [18 x i32], ptr %36, i32 0, i32 15
  store i32 %38, ptr %39, align 4
  %40 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %41 = ptrtoint ptr %40 to i32
  %42 = getelementptr [18 x i32], ptr %36, i32 0, i32 11
  store i32 %41, ptr %42, align 4
  %43 = call i32 @llvm.read_register.i32(metadata !0) #9
  %44 = getelementptr [18 x i32], ptr %36, i32 0, i32 13
  store i32 %43, ptr %44, align 4
  %45 = getelementptr [18 x i32], ptr %36, i32 0, i32 16
  store i32 19, ptr %45, align 4
  %46 = getelementptr inbounds %struct.trace_event_raw_mmap_lock_acquire_returned, ptr %33, i32 0, i32 2
  store i32 %14, ptr %46, align 4
  %47 = getelementptr inbounds %struct.trace_event_raw_mmap_lock_acquire_returned, ptr %33, i32 0, i32 1
  store ptr %1, ptr %47, align 4
  %48 = getelementptr i8, ptr %33, i32 18
  %49 = call ptr @strcpy(ptr noundef %48, ptr noundef %11)
  %50 = getelementptr inbounds %struct.trace_event_raw_mmap_lock_acquire_returned, ptr %33, i32 0, i32 3
  store i8 %8, ptr %50, align 4
  %51 = getelementptr inbounds %struct.trace_event_raw_mmap_lock_acquire_returned, ptr %33, i32 0, i32 4
  store i8 %9, ptr %51, align 1
  %52 = load i32, ptr %7, align 4
  %53 = load ptr, ptr %6, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %33, i32 noundef %32, i32 noundef %52, ptr noundef %0, i64 noundef 1, ptr noundef %53, ptr noundef %22, ptr noundef null) #9
  br label %54

54:                                               ; preds = %35, %29, %26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %28

5:                                                ; preds = %2
  %6 = tail call ptr @llvm.thread.pointer() #9
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %17 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 7), align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %19, %16
  %20 = phi ptr [ %24, %19 ], [ %17, %16 ]
  %21 = load volatile ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.tracepoint_func, ptr %20, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  tail call void %21(ptr noundef %23, ptr noundef %0, ptr noundef nonnull @.str, i1 noundef zeroext %1) #9
  %24 = getelementptr %struct.tracepoint_func, ptr %20, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %19

27:                                               ; preds = %19, %16
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %28

28:                                               ; preds = %27, %5, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) #0 {
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %29

6:                                                ; preds = %3
  %7 = tail call ptr @llvm.thread.pointer() #9
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %18 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 7), align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %20, %17
  %21 = phi ptr [ %25, %20 ], [ %18, %17 ]
  %22 = load volatile ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.tracepoint_func, ptr %21, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  tail call void %22(ptr noundef %24, ptr noundef %0, ptr noundef nonnull @.str, i1 noundef zeroext %1, i1 noundef zeroext %2) #9
  %25 = getelementptr %struct.tracepoint_func, ptr %21, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %20

28:                                               ; preds = %20, %17
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %29

29:                                               ; preds = %28, %6, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__mmap_lock_do_trace_released(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %28

5:                                                ; preds = %2
  %6 = tail call ptr @llvm.thread.pointer() #9
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !17
  %17 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 7), align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %19, %16
  %20 = phi ptr [ %24, %19 ], [ %17, %16 ]
  %21 = load volatile ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.tracepoint_func, ptr %20, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  tail call void %21(ptr noundef %23, ptr noundef %0, ptr noundef nonnull @.str, i1 noundef zeroext %1) #9
  %24 = getelementptr %struct.tracepoint_func, ptr %20, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %19

27:                                               ; preds = %19, %16
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !18
  br label %28

28:                                               ; preds = %27, %5, %2
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mmap_lock(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #9
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_mmap_lock, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_mmap_lock, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 65535
  %15 = getelementptr i8, ptr %5, i32 %14
  %16 = getelementptr inbounds %struct.trace_event_raw_mmap_lock, ptr %5, i32 0, i32 3
  %17 = load i8, ptr %16, align 4, !range !19
  %18 = icmp eq i8 %17, 0
  %19 = select i1 %18, ptr @.str.10, ptr @.str.9
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef %11, ptr noundef %15, ptr noundef nonnull %19) #9
  %20 = tail call i32 @trace_handle_return(ptr noundef %9) #9
  br label %21

21:                                               ; preds = %8, %3
  %22 = phi i32 [ %20, %8 ], [ %6, %3 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mmap_lock_acquire_returned(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #9
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %25

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_mmap_lock_acquire_returned, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_mmap_lock_acquire_returned, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 65535
  %15 = getelementptr i8, ptr %5, i32 %14
  %16 = getelementptr inbounds %struct.trace_event_raw_mmap_lock_acquire_returned, ptr %5, i32 0, i32 3
  %17 = load i8, ptr %16, align 4, !range !19
  %18 = icmp eq i8 %17, 0
  %19 = select i1 %18, ptr @.str.10, ptr @.str.9
  %20 = getelementptr inbounds %struct.trace_event_raw_mmap_lock_acquire_returned, ptr %5, i32 0, i32 4
  %21 = load i8, ptr %20, align 1, !range !19
  %22 = icmp eq i8 %21, 0
  %23 = select i1 %22, ptr @.str.10, ptr @.str.9
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef %11, ptr noundef %15, ptr noundef nonnull %19, ptr noundef nonnull %23) #9
  %24 = tail call i32 @trace_handle_return(ptr noundef %9) #9
  br label %25

25:                                               ; preds = %8, %3
  %26 = phi i32 [ %24, %8 ], [ %6, %3 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nounwind }

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
!12 = !{i64 493049}
!13 = !{i64 2151163066}
!14 = !{i64 2151163266}
!15 = !{i64 2151202326}
!16 = !{i64 2151202550}
!17 = !{i64 2151180690}
!18 = !{i64 2151180880}
!19 = !{i8 0, i8 2}
