; ModuleID = '/llk/IR/kernel/trace/trace_output.c_pt.bc'
source_filename = "../kernel/trace/trace_output.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_print_flags_seq:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_print_flags_seq\22\09\09\09\09\09"
module asm "__kstrtabns_trace_print_flags_seq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_print_symbols_seq:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_print_symbols_seq\22\09\09\09\09\09"
module asm "__kstrtabns_trace_print_symbols_seq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_print_flags_seq_u64:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_print_flags_seq_u64\22\09\09\09\09\09"
module asm "__kstrtabns_trace_print_flags_seq_u64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_print_symbols_seq_u64:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_print_symbols_seq_u64\22\09\09\09\09\09"
module asm "__kstrtabns_trace_print_symbols_seq_u64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_print_bitmask_seq:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_print_bitmask_seq\22\09\09\09\09\09"
module asm "__kstrtabns_trace_print_bitmask_seq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_print_hex_seq:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_print_hex_seq\22\09\09\09\09\09"
module asm "__kstrtabns_trace_print_hex_seq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_print_array_seq:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_print_array_seq\22\09\09\09\09\09"
module asm "__kstrtabns_trace_print_array_seq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_print_hex_dump_seq:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_print_hex_dump_seq\22\09\09\09\09\09"
module asm "__kstrtabns_trace_print_hex_dump_seq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_raw_output_prep:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_raw_output_prep\22\09\09\09\09\09"
module asm "__kstrtabns_trace_raw_output_prep:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_event_printf:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_event_printf\22\09\09\09\09\09"
module asm "__kstrtabns_trace_event_printf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_output_call:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_output_call\22\09\09\09\09\09"
module asm "__kstrtabns_trace_output_call:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_trace_event:\09\09\09\09\09"
module asm "\09.asciz \09\22register_trace_event\22\09\09\09\09\09"
module asm "__kstrtabns_register_trace_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_trace_event:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_trace_event\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_trace_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.trace_mark = type { i64, i8 }
%struct.hlist_head = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.cpumask = type { [1 x i32] }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.bputs_entry = type { %struct.trace_entry, i32, ptr }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.bprint_entry = type { %struct.trace_entry, i32, ptr, [0 x i32] }
%struct.print_entry = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_print_flags = type { i32, ptr }
%struct.trace_print_flags_u64 = type { i64, ptr }
%struct.__va_list = type { ptr }
%struct.trace_array = type { %struct.list_head, ptr, %struct.array_buffer, ptr, ptr, %struct.arch_spinlock_t, i32, i32, i32, i32, i8, i32, i32, ptr, i32, [32 x i8], i32, %struct.raw_spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, ptr, [1 x %struct.cpumask], i32, i32, i32, %struct.list_head, ptr }
%struct.array_buffer = type { ptr, ptr, ptr, i64, i32 }
%struct.ftrace_entry = type { %struct.trace_entry, i32, i32 }
%struct.ctx_switch_entry = type { %struct.trace_entry, i32, i32, i32, i8, i8, i8, i8 }
%struct.stack_entry = type { %struct.trace_entry, i32, [8 x i32] }
%struct.userstack_entry = type { %struct.trace_entry, i32, [8 x i32] }
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.1, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file = type { %union.anon.8, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.8 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.hwlat_entry = type { %struct.trace_entry, i64, i64, i64, %struct.timespec64, i32, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.osnoise_entry = type { %struct.trace_entry, i64, i64, i64, i32, i32, i32, i32, i32 }
%struct.timerlat_entry = type { %struct.trace_entry, i32, i32, i64 }
%struct.raw_data_entry = type { %struct.trace_entry, i32, [0 x i8] }
%struct.func_repeats_entry = type { %struct.trace_entry, i32, i32, i16, i16, i32 }

@trace_event_sem = dso_local global %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @trace_event_sem, i64 16), ptr getelementptr (i8, ptr @trace_event_sem, i64 16) } }, align 4
@.str = private unnamed_addr constant [28 x i8] c"kernel/trace/trace_output.c\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"0x%lx\00", align 1
@__kstrtab_trace_print_flags_seq = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_print_flags_seq = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_print_flags_seq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_print_flags_seq to i32), ptr @__kstrtab_trace_print_flags_seq, ptr @__kstrtabns_trace_print_flags_seq }, section "___ksymtab+trace_print_flags_seq", align 4
@__kstrtab_trace_print_symbols_seq = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_print_symbols_seq = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_print_symbols_seq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_print_symbols_seq to i32), ptr @__kstrtab_trace_print_symbols_seq, ptr @__kstrtabns_trace_print_symbols_seq }, section "___ksymtab+trace_print_symbols_seq", align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"0x%llx\00", align 1
@__kstrtab_trace_print_flags_seq_u64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_print_flags_seq_u64 = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_print_flags_seq_u64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_print_flags_seq_u64 to i32), ptr @__kstrtab_trace_print_flags_seq_u64, ptr @__kstrtabns_trace_print_flags_seq_u64 }, section "___ksymtab+trace_print_flags_seq_u64", align 4
@__kstrtab_trace_print_symbols_seq_u64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_print_symbols_seq_u64 = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_print_symbols_seq_u64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_print_symbols_seq_u64 to i32), ptr @__kstrtab_trace_print_symbols_seq_u64, ptr @__kstrtabns_trace_print_symbols_seq_u64 }, section "___ksymtab+trace_print_symbols_seq_u64", align 4
@__kstrtab_trace_print_bitmask_seq = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_print_bitmask_seq = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_print_bitmask_seq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_print_bitmask_seq to i32), ptr @__kstrtab_trace_print_bitmask_seq, ptr @__kstrtabns_trace_print_bitmask_seq }, section "___ksymtab_gpl+trace_print_bitmask_seq", align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"%*phN\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%*ph\00", align 1
@__kstrtab_trace_print_hex_seq = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_print_hex_seq = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_print_hex_seq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_print_hex_seq to i32), ptr @__kstrtab_trace_print_hex_seq, ptr @__kstrtabns_trace_print_hex_seq }, section "___ksymtab+trace_print_hex_seq", align 4
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"%s0x%x\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"%s0x%llx\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"BAD SIZE:%zu 0x%x\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c",\00", align 1
@__kstrtab_trace_print_array_seq = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_print_array_seq = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_print_array_seq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_print_array_seq to i32), ptr @__kstrtab_trace_print_array_seq, ptr @__kstrtabns_trace_print_array_seq }, section "___ksymtab+trace_print_array_seq", align 4
@__kstrtab_trace_print_hex_dump_seq = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_print_hex_dump_seq = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_print_hex_dump_seq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_print_hex_dump_seq to i32), ptr @__kstrtab_trace_print_hex_dump_seq, ptr @__kstrtabns_trace_print_hex_dump_seq }, section "___ksymtab+trace_print_hex_dump_seq", align 4
@trace_raw_output_prep.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@__kstrtab_trace_raw_output_prep = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_raw_output_prep = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_raw_output_prep = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_raw_output_prep to i32), ptr @__kstrtab_trace_raw_output_prep, ptr @__kstrtabns_trace_raw_output_prep }, section "___ksymtab+trace_raw_output_prep", align 4
@__kstrtab_trace_event_printf = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_event_printf = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_event_printf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_event_printf to i32), ptr @__kstrtab_trace_event_printf, ptr @__kstrtabns_trace_event_printf }, section "___ksymtab+trace_event_printf", align 4
@__kstrtab_trace_output_call = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_output_call = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_output_call = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_output_call to i32), ptr @__kstrtab_trace_output_call, ptr @__kstrtabns_trace_output_call }, section "___ksymtab_gpl+trace_output_call", align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"0x%08lx\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c" <%08lx>\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"%c%c%c\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@mark = internal unnamed_addr constant [6 x %struct.trace_mark] [%struct.trace_mark { i64 1000000000, i8 36 }, %struct.trace_mark { i64 100000000, i8 64 }, %struct.trace_mark { i64 10000000, i8 42 }, %struct.trace_mark { i64 1000000, i8 35 }, %struct.trace_mark { i64 100000, i8 33 }, %struct.trace_mark { i64 10000, i8 43 }], align 8
@.str.15 = private unnamed_addr constant [11 x i8] c"%16s-%-7d \00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"(-------) \00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"(%7d) \00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"[%03d] \00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"%16s %7d %3d %d %08x %08lx \00", align 1
@event_hash = internal global [128 x %struct.hlist_head] zeroinitializer, section ".data..read_mostly", align 4
@next_event_type = internal unnamed_addr global i32 20, align 4
@ftrace_event_list = internal global %struct.list_head { ptr @ftrace_event_list, ptr @ftrace_event_list }, align 4
@.str.21 = private unnamed_addr constant [31 x i8] c"\014Need to add type to trace.h\0A\00", align 1
@__kstrtab_register_trace_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_trace_event = external dso_local constant [0 x i8], align 1
@__ksymtab_register_trace_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_trace_event to i32), ptr @__kstrtab_register_trace_event, ptr @__kstrtabns_register_trace_event }, section "___ksymtab_gpl+register_trace_event", align 4
@__kstrtab_unregister_trace_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_trace_event = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_trace_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_trace_event to i32), ptr @__kstrtab_unregister_trace_event, ptr @__kstrtabns_unregister_trace_event }, section "___ksymtab_gpl+unregister_trace_event", align 4
@.str.22 = private unnamed_addr constant [10 x i8] c"type: %d\0A\00", align 1
@__initcall__kmod_trace_output__257_1585_init_eventsearly = internal global ptr @init_events, section ".initcallearly.init", align 4
@.str.24 = private unnamed_addr constant [12 x i8] c" %5lu.%06lu\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c" %12llu\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"%8.8s-%-7d %3d\00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c"[%08llx] %ld.%03ldms (+%ld.%03ldms): \00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"[%016llx] %lld (+%lld): \00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c" %4lldus%c: \00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c" %4lld: \00", align 1
@events = internal unnamed_addr constant [14 x ptr] [ptr @trace_fn_event, ptr @trace_ctx_event, ptr @trace_wake_event, ptr @trace_stack_event, ptr @trace_user_stack_event, ptr @trace_bputs_event, ptr @trace_bprint_event, ptr @trace_print_event, ptr @trace_hwlat_event, ptr @trace_osnoise_event, ptr @trace_timerlat_event, ptr @trace_raw_data_event, ptr @trace_func_repeats_event, ptr null], section ".init.data", align 4
@.str.31 = private unnamed_addr constant [31 x i8] c"\014event %d failed to register\0A\00", align 1
@init_events.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@trace_fn_event = internal global %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 1, ptr @trace_fn_funcs }, align 4
@trace_ctx_event = internal global %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 2, ptr @trace_ctx_funcs }, align 4
@trace_wake_event = internal global %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 3, ptr @trace_wake_funcs }, align 4
@trace_stack_event = internal global %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 4, ptr @trace_stack_funcs }, align 4
@trace_user_stack_event = internal global %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 12, ptr @trace_user_stack_funcs }, align 4
@trace_bputs_event = internal global %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 14, ptr @trace_bputs_funcs }, align 4
@trace_bprint_event = internal global %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 6, ptr @trace_bprint_funcs }, align 4
@trace_print_event = internal global %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 5, ptr @trace_print_funcs }, align 4
@trace_hwlat_event = internal global %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 15, ptr @trace_hwlat_funcs }, align 4
@trace_osnoise_event = internal global %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 16, ptr @trace_osnoise_funcs }, align 4
@trace_timerlat_event = internal global %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 17, ptr @trace_timerlat_funcs }, align 4
@trace_raw_data_event = internal global %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 18, ptr @trace_raw_data_funcs }, align 4
@trace_func_repeats_event = internal global %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 19, ptr @trace_func_repeats_funcs }, align 4
@trace_fn_funcs = internal global %struct.trace_event_functions { ptr @trace_fn_trace, ptr @trace_fn_raw, ptr @trace_fn_hex, ptr @trace_fn_bin }, align 4
@.str.32 = private unnamed_addr constant [4 x i8] c" <-\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"%lx %lx\0A\00", align 1
@trace_ctx_funcs = internal global %struct.trace_event_functions { ptr @trace_ctx_print, ptr @trace_ctx_raw, ptr @trace_ctx_hex, ptr @trace_ctxwake_bin }, align 4
@.str.34 = private unnamed_addr constant [4 x i8] c"==>\00", align 1
@.str.35 = private unnamed_addr constant [37 x i8] c" %7d:%3d:%c %s [%03d] %7d:%3d:%c %s\0A\00", align 1
@task_index_to_char.state_char = internal unnamed_addr constant [10 x i8] c"RSDTtXZPI\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"%d %d %c %d %d %d %c\0A\00", align 1
@trace_wake_funcs = internal global %struct.trace_event_functions { ptr @trace_wake_print, ptr @trace_wake_raw, ptr @trace_wake_hex, ptr @trace_ctxwake_bin }, align 4
@.str.37 = private unnamed_addr constant [4 x i8] c"  +\00", align 1
@trace_stack_funcs = internal global %struct.trace_event_functions { ptr @trace_stack_print, ptr null, ptr null, ptr null }, align 4
@.str.38 = private unnamed_addr constant [15 x i8] c"<stack trace>\0A\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c" => \00", align 1
@trace_user_stack_funcs = internal global %struct.trace_event_functions { ptr @trace_user_stack_print, ptr null, ptr null, ptr null }, align 4
@.str.40 = private unnamed_addr constant [20 x i8] c"<user stack trace>\0A\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"[+0x%lx]\00", align 1
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@trace_bputs_funcs = internal global %struct.trace_event_functions { ptr @trace_bputs_print, ptr @trace_bputs_raw, ptr null, ptr null }, align 4
@.str.42 = private unnamed_addr constant [9 x i8] c": %lx : \00", align 1
@trace_bprint_funcs = internal global %struct.trace_event_functions { ptr @trace_bprint_print, ptr @trace_bprint_raw, ptr null, ptr null }, align 4
@trace_print_funcs = internal global %struct.trace_event_functions { ptr @trace_print_print, ptr @trace_print_raw, ptr null, ptr null }, align 4
@.str.43 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"# %lx %s\00", align 1
@trace_hwlat_funcs = internal global %struct.trace_event_functions { ptr @trace_hwlat_print, ptr @trace_hwlat_raw, ptr null, ptr null }, align 4
@.str.45 = private unnamed_addr constant [59 x i8] c"#%-5u inner/outer(us): %4llu/%-5llu ts:%lld.%09ld count:%d\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c" nmi-count:%u\00", align 1
@.str.47 = private unnamed_addr constant [25 x i8] c"%llu %lld %lld %09ld %u\0A\00", align 1
@trace_osnoise_funcs = internal global %struct.trace_event_functions { ptr @trace_osnoise_print, ptr @trace_osnoise_raw, ptr null, ptr null }, align 4
@.str.48 = private unnamed_addr constant [31 x i8] c"%llu %10llu %3llu.%05llu %7llu\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c" %6u\00", align 1
@.str.50 = private unnamed_addr constant [31 x i8] c"%lld %llu %llu %u %u %u %u %u\0A\00", align 1
@trace_timerlat_funcs = internal global %struct.trace_event_functions { ptr @trace_timerlat_print, ptr @trace_timerlat_raw, ptr null, ptr null }, align 4
@.str.51 = private unnamed_addr constant [42 x i8] c"#%-5u context %6s timer_latency %9llu ns\0A\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"thread\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"%u %d %llu\0A\00", align 1
@trace_raw_data_funcs = internal global %struct.trace_event_functions { ptr @trace_raw_data, ptr @trace_raw_data, ptr null, ptr null }, align 4
@.str.55 = private unnamed_addr constant [10 x i8] c"# %x buf:\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@trace_func_repeats_funcs = internal global %struct.trace_event_functions { ptr @trace_func_repeats_print, ptr @trace_func_repeats_raw, ptr null, ptr null }, align 4
@.str.57 = private unnamed_addr constant [24 x i8] c" (repeats: %u, last_ts:\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.59 = private unnamed_addr constant [17 x i8] c"%lu %lu %u %llu\0A\00", align 1
@llvm.compiler.used = appending global [14 x ptr] [ptr @__initcall__kmod_trace_output__257_1585_init_eventsearly, ptr @__ksymtab_register_trace_event, ptr @__ksymtab_trace_event_printf, ptr @__ksymtab_trace_output_call, ptr @__ksymtab_trace_print_array_seq, ptr @__ksymtab_trace_print_bitmask_seq, ptr @__ksymtab_trace_print_flags_seq, ptr @__ksymtab_trace_print_flags_seq_u64, ptr @__ksymtab_trace_print_hex_dump_seq, ptr @__ksymtab_trace_print_hex_seq, ptr @__ksymtab_trace_print_symbols_seq, ptr @__ksymtab_trace_print_symbols_seq_u64, ptr @__ksymtab_trace_raw_output_prep, ptr @__ksymtab_unregister_trace_event], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trace_print_bputs_msg_only(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 8
  %4 = load i16, ptr %3, align 4
  %5 = icmp eq i16 %4, 14
  br i1 %5, label %7, label %6, !prof !8

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 32, i32 noundef 9, ptr noundef null) #11
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %9 = getelementptr inbounds %struct.bputs_entry, ptr %3, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  tail call void @trace_seq_puts(ptr noundef %8, ptr noundef %10) #11
  %11 = tail call i32 @trace_handle_return(ptr noundef %8) #11
  ret i32 %11
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trace_print_bprintk_msg_only(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 8
  %4 = load i16, ptr %3, align 4
  %5 = icmp eq i16 %4, 6
  br i1 %5, label %7, label %6, !prof !8

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 45, i32 noundef 9, ptr noundef null) #11
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %9 = getelementptr inbounds %struct.bprint_entry, ptr %3, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.bprint_entry, ptr %3, i32 0, i32 3
  tail call void @trace_seq_bprintf(ptr noundef %8, ptr noundef %10, ptr noundef %11) #11
  %12 = tail call i32 @trace_handle_return(ptr noundef %8) #11
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_bprintf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trace_print_printk_msg_only(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 8
  %4 = load i16, ptr %3, align 4
  %5 = icmp eq i16 %4, 5
  br i1 %5, label %7, label %6, !prof !8

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 58, i32 noundef 9, ptr noundef null) #11
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %9 = getelementptr inbounds %struct.print_entry, ptr %3, i32 0, i32 2
  tail call void @trace_seq_puts(ptr noundef %8, ptr noundef %9) #11
  %10 = tail call i32 @trace_handle_return(ptr noundef %8) #11
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @trace_print_flags_seq(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr %struct.trace_print_flags, ptr %3, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp ne ptr %10, null
  %12 = icmp ne i32 %2, 0
  %13 = and i1 %11, %12
  br i1 %13, label %14, label %41

14:                                               ; preds = %4
  %15 = icmp ne ptr %1, null
  br label %16

16:                                               ; preds = %32, %14
  %17 = phi ptr [ %10, %14 ], [ %37, %32 ]
  %18 = phi i32 [ 1, %14 ], [ %34, %32 ]
  %19 = phi i32 [ 0, %14 ], [ %35, %32 ]
  %20 = phi i32 [ %2, %14 ], [ %33, %32 ]
  %21 = getelementptr %struct.trace_print_flags, ptr %3, i32 %19
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, %20
  %24 = icmp eq i32 %23, %22
  br i1 %24, label %25, label %32

25:                                               ; preds = %16
  %26 = xor i32 %22, -1
  %27 = and i32 %20, %26
  %28 = icmp eq i32 %18, 0
  %29 = and i1 %15, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  tail call void @trace_seq_puts(ptr noundef %0, ptr noundef nonnull %1) #11
  br label %31

31:                                               ; preds = %30, %25
  tail call void @trace_seq_puts(ptr noundef %0, ptr noundef nonnull %17) #11
  br label %32

32:                                               ; preds = %31, %16
  %33 = phi i32 [ %20, %16 ], [ %27, %31 ]
  %34 = phi i32 [ %18, %16 ], [ 0, %31 ]
  %35 = add i32 %19, 1
  %36 = getelementptr %struct.trace_print_flags, ptr %3, i32 %35, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp ne ptr %37, null
  %39 = icmp ne i32 %33, 0
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %16, label %41

41:                                               ; preds = %32, %4
  %42 = phi i32 [ %2, %4 ], [ %33, %32 ]
  %43 = phi i32 [ 1, %4 ], [ %34, %32 ]
  %44 = phi i1 [ %12, %4 ], [ %39, %32 ]
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = icmp eq i32 %43, 0
  %47 = icmp ne ptr %1, null
  %48 = and i1 %47, %46
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  tail call void @trace_seq_puts(ptr noundef %0, ptr noundef nonnull %1) #11
  br label %50

50:                                               ; preds = %49, %45
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %42) #11
  br label %51

51:                                               ; preds = %50, %41
  %52 = tail call i32 @llvm.umin.i32(i32 %6, i32 %8) #11
  %53 = getelementptr i8, ptr %0, i32 %52
  tail call void @trace_seq_putc(ptr noundef %0, i8 noundef zeroext 0) #11
  ret ptr %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @trace_print_symbols_seq(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @llvm.umin.i32(i32 %5, i32 %7) #11
  %9 = getelementptr i8, ptr %0, i32 %8
  %10 = getelementptr %struct.trace_print_flags, ptr %2, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %31, label %13

13:                                               ; preds = %3
  %14 = load i32, ptr %2, align 4
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %26, label %16

16:                                               ; preds = %22, %13
  %17 = phi i32 [ %18, %22 ], [ 0, %13 ]
  %18 = add i32 %17, 1
  %19 = getelementptr %struct.trace_print_flags, ptr %2, i32 %18, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %16
  %23 = getelementptr %struct.trace_print_flags, ptr %2, i32 %18
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, %1
  br i1 %25, label %26, label %16

26:                                               ; preds = %22, %13
  %27 = phi ptr [ %11, %13 ], [ %20, %22 ]
  tail call void @trace_seq_puts(ptr noundef %0, ptr noundef nonnull %27) #11
  %28 = load i32, ptr %4, align 8
  %29 = load i32, ptr %6, align 4
  %30 = tail call i32 @llvm.umin.i32(i32 %28, i32 %29) #11
  br label %31

31:                                               ; preds = %26, %16, %3
  %32 = phi i32 [ %8, %3 ], [ %30, %26 ], [ %8, %16 ]
  %33 = getelementptr i8, ptr %0, i32 %32
  %34 = icmp eq ptr %9, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %1) #11
  br label %36

36:                                               ; preds = %35, %31
  tail call void @trace_seq_putc(ptr noundef %0, i8 noundef zeroext 0) #11
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @trace_print_flags_seq_u64(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr %struct.trace_print_flags_u64, ptr %3, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = icmp ne ptr %10, null
  %12 = icmp ne i64 %2, 0
  %13 = and i1 %11, %12
  br i1 %13, label %14, label %41

14:                                               ; preds = %4
  %15 = icmp ne ptr %1, null
  br label %16

16:                                               ; preds = %32, %14
  %17 = phi ptr [ %10, %14 ], [ %37, %32 ]
  %18 = phi i32 [ 1, %14 ], [ %34, %32 ]
  %19 = phi i32 [ 0, %14 ], [ %35, %32 ]
  %20 = phi i64 [ %2, %14 ], [ %33, %32 ]
  %21 = getelementptr %struct.trace_print_flags_u64, ptr %3, i32 %19
  %22 = load i64, ptr %21, align 8
  %23 = and i64 %22, %20
  %24 = icmp eq i64 %23, %22
  br i1 %24, label %25, label %32

25:                                               ; preds = %16
  %26 = xor i64 %22, -1
  %27 = and i64 %20, %26
  %28 = icmp eq i32 %18, 0
  %29 = and i1 %15, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  tail call void @trace_seq_puts(ptr noundef %0, ptr noundef nonnull %1) #11
  br label %31

31:                                               ; preds = %30, %25
  tail call void @trace_seq_puts(ptr noundef %0, ptr noundef nonnull %17) #11
  br label %32

32:                                               ; preds = %31, %16
  %33 = phi i64 [ %20, %16 ], [ %27, %31 ]
  %34 = phi i32 [ %18, %16 ], [ 0, %31 ]
  %35 = add i32 %19, 1
  %36 = getelementptr %struct.trace_print_flags_u64, ptr %3, i32 %35, i32 1
  %37 = load ptr, ptr %36, align 8
  %38 = icmp ne ptr %37, null
  %39 = icmp ne i64 %33, 0
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %16, label %41

41:                                               ; preds = %32, %4
  %42 = phi i64 [ %2, %4 ], [ %33, %32 ]
  %43 = phi i32 [ 1, %4 ], [ %34, %32 ]
  %44 = phi i1 [ %12, %4 ], [ %39, %32 ]
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = icmp eq i32 %43, 0
  %47 = icmp ne ptr %1, null
  %48 = and i1 %47, %46
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  tail call void @trace_seq_puts(ptr noundef %0, ptr noundef nonnull %1) #11
  br label %50

50:                                               ; preds = %49, %45
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.2, i64 noundef %42) #11
  br label %51

51:                                               ; preds = %50, %41
  %52 = tail call i32 @llvm.umin.i32(i32 %6, i32 %8) #11
  %53 = getelementptr i8, ptr %0, i32 %52
  tail call void @trace_seq_putc(ptr noundef %0, i8 noundef zeroext 0) #11
  ret ptr %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @trace_print_symbols_seq_u64(ptr noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @llvm.umin.i32(i32 %5, i32 %7) #11
  %9 = getelementptr i8, ptr %0, i32 %8
  %10 = getelementptr %struct.trace_print_flags_u64, ptr %2, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %31, label %13

13:                                               ; preds = %3
  %14 = load i64, ptr %2, align 8
  %15 = icmp eq i64 %14, %1
  br i1 %15, label %26, label %16

16:                                               ; preds = %22, %13
  %17 = phi i32 [ %18, %22 ], [ 0, %13 ]
  %18 = add i32 %17, 1
  %19 = getelementptr %struct.trace_print_flags_u64, ptr %2, i32 %18, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %16
  %23 = getelementptr %struct.trace_print_flags_u64, ptr %2, i32 %18
  %24 = load i64, ptr %23, align 8
  %25 = icmp eq i64 %24, %1
  br i1 %25, label %26, label %16

26:                                               ; preds = %22, %13
  %27 = phi ptr [ %11, %13 ], [ %20, %22 ]
  tail call void @trace_seq_puts(ptr noundef %0, ptr noundef nonnull %27) #11
  %28 = load i32, ptr %4, align 8
  %29 = load i32, ptr %6, align 4
  %30 = tail call i32 @llvm.umin.i32(i32 %28, i32 %29) #11
  br label %31

31:                                               ; preds = %26, %16, %3
  %32 = phi i32 [ %8, %3 ], [ %30, %26 ], [ %8, %16 ]
  %33 = getelementptr i8, ptr %0, i32 %32
  %34 = icmp eq ptr %9, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.2, i64 noundef %1) #11
  br label %36

36:                                               ; preds = %35, %31
  tail call void @trace_seq_putc(ptr noundef %0, i8 noundef zeroext 0) #11
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @trace_print_bitmask_seq(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @llvm.umin.i32(i32 %5, i32 %7) #11
  %9 = getelementptr i8, ptr %0, i32 %8
  %10 = shl i32 %2, 3
  tail call void @trace_seq_bitmask(ptr noundef %0, ptr noundef %1, i32 noundef %10) #11
  tail call void @trace_seq_putc(ptr noundef %0, i8 noundef zeroext 0) #11
  ret ptr %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_bitmask(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @trace_print_hex_seq(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = select i1 %3, ptr @.str.3, ptr @.str.4
  %10 = icmp sgt i32 %2, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %11, %4
  %12 = phi i32 [ %16, %11 ], [ 0, %4 ]
  %13 = sub i32 %2, %12
  %14 = tail call i32 @llvm.smin.i32(i32 %13, i32 16)
  %15 = getelementptr i8, ptr %1, i32 %12
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull %9, i32 noundef %14, ptr noundef %15) #11
  %16 = add i32 %12, 16
  %17 = icmp slt i32 %16, %2
  br i1 %17, label %11, label %18

18:                                               ; preds = %11, %4
  %19 = tail call i32 @llvm.umin.i32(i32 %6, i32 %8) #11
  %20 = getelementptr i8, ptr %0, i32 %19
  tail call void @trace_seq_putc(ptr noundef %0, i8 noundef zeroext 0) #11
  ret ptr %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @trace_print_array_seq(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = mul i32 %3, %2
  tail call void @trace_seq_putc(ptr noundef %0, i8 noundef zeroext 123) #11
  %10 = getelementptr i8, ptr %1, i32 %9
  %11 = icmp ugt ptr %10, %1
  br i1 %11, label %12, label %50

12:                                               ; preds = %4
  switch i32 %3, label %23 [
    i32 1, label %20
    i32 2, label %17
    i32 4, label %15
    i32 8, label %13
  ]

13:                                               ; preds = %12
  %14 = load i64, ptr %1, align 8
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i64 noundef %14) #11
  br label %26

15:                                               ; preds = %12
  %16 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef %16) #11
  br label %26

17:                                               ; preds = %12
  %18 = load i16, ptr %1, align 2
  %19 = zext i16 %18 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef %19) #11
  br label %26

20:                                               ; preds = %12
  %21 = load i8, ptr %1, align 1
  %22 = zext i8 %21 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef %22) #11
  br label %26

23:                                               ; preds = %12
  %24 = load i8, ptr %1, align 1
  %25 = zext i8 %24 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %3, i32 noundef %25) #11
  br label %26

26:                                               ; preds = %23, %20, %17, %15, %13
  %27 = phi i32 [ 1, %23 ], [ 8, %13 ], [ 4, %15 ], [ 2, %17 ], [ 1, %20 ]
  %28 = getelementptr i8, ptr %1, i32 %27
  %29 = icmp ult ptr %28, %10
  br i1 %29, label %30, label %50

30:                                               ; preds = %46, %26
  %31 = phi ptr [ %48, %46 ], [ %28, %26 ]
  %32 = phi i32 [ %47, %46 ], [ %27, %26 ]
  switch i32 %32, label %43 [
    i32 1, label %33
    i32 2, label %36
    i32 4, label %39
    i32 8, label %41
  ]

33:                                               ; preds = %30
  %34 = load i8, ptr %31, align 1
  %35 = zext i8 %34 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.9, i32 noundef %35) #11
  br label %46

36:                                               ; preds = %30
  %37 = load i16, ptr %31, align 2
  %38 = zext i16 %37 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.9, i32 noundef %38) #11
  br label %46

39:                                               ; preds = %30
  %40 = load i32, ptr %31, align 4
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.9, i32 noundef %40) #11
  br label %46

41:                                               ; preds = %30
  %42 = load i64, ptr %31, align 8
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.9, i64 noundef %42) #11
  br label %46

43:                                               ; preds = %30
  %44 = load i8, ptr %31, align 1
  %45 = zext i8 %44 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %32, i32 noundef %45) #11
  br label %46

46:                                               ; preds = %43, %41, %39, %36, %33
  %47 = phi i32 [ 1, %43 ], [ 8, %41 ], [ 4, %39 ], [ 2, %36 ], [ 1, %33 ]
  %48 = getelementptr i8, ptr %31, i32 %47
  %49 = icmp ult ptr %48, %10
  br i1 %49, label %30, label %50, !llvm.loop !9

50:                                               ; preds = %46, %26, %4
  %51 = tail call i32 @llvm.umin.i32(i32 %6, i32 %8) #11
  %52 = getelementptr i8, ptr %0, i32 %51
  tail call void @trace_seq_putc(ptr noundef %0, i8 noundef zeroext 125) #11
  tail call void @trace_seq_putc(ptr noundef %0, i8 noundef zeroext 0) #11
  ret ptr %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @trace_print_hex_dump_seq(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i1 noundef zeroext %7) #0 {
  %9 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @llvm.umin.i32(i32 %10, i32 %12) #11
  %14 = getelementptr i8, ptr %0, i32 %13
  tail call void @trace_seq_putc(ptr noundef %0, i8 noundef zeroext 10) #11
  %15 = tail call i32 @trace_seq_hex_dump(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i1 noundef zeroext %7) #11
  tail call void @trace_seq_putc(ptr noundef %0, i8 noundef zeroext 0) #11
  ret ptr %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_seq_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trace_raw_output_prep(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 8
  %5 = load i16, ptr %4, align 4
  %6 = zext i16 %5 to i32
  %7 = getelementptr inbounds %struct.trace_event, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, %6
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i1, ptr @trace_raw_output_prep.__already_done, align 1
  br i1 %11, label %34, label %12, !prof !8

12:                                               ; preds = %10
  store i1 true, ptr @trace_raw_output_prep.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 305, i32 noundef 9, ptr noundef null) #11
  br label %34

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %15 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %16 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12, i32 1
  store ptr %14, ptr %16, align 8
  %17 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12, i32 1, i32 1
  store i32 4096, ptr %17, align 4
  %18 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12, i32 1, i32 2
  store i32 0, ptr %18, align 8
  %19 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12, i32 1, i32 3
  store i64 0, ptr %19, align 8
  %20 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12, i32 2
  store i32 0, ptr %20, align 8
  %21 = getelementptr i8, ptr %1, i32 40
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 16
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr i8, ptr %1, i32 -4
  %26 = load ptr, ptr %25, align 4
  br i1 %24, label %31, label %27

27:                                               ; preds = %13
  %28 = icmp eq ptr %26, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %27
  %30 = load ptr, ptr %26, align 4
  br label %31

31:                                               ; preds = %29, %27, %13
  %32 = phi ptr [ %30, %29 ], [ null, %27 ], [ %26, %13 ]
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %15, ptr noundef nonnull @.str.10, ptr noundef %32) #11
  %33 = tail call i32 @trace_handle_return(ptr noundef %15) #11
  br label %34

34:                                               ; preds = %31, %12, %10
  %35 = phi i32 [ %33, %31 ], [ 2, %12 ], [ 2, %10 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @trace_event_printf(ptr noundef %0, ptr noundef %1, ...) #0 {
  %3 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !11
  call void @llvm.va_start(ptr nonnull %3)
  %4 = call ptr @trace_event_format(ptr noundef %0, ptr noundef %1) #11
  %5 = load i32, ptr %3, align 4
  %6 = insertvalue [1 x i32] poison, i32 %5, 0
  call void @trace_check_vprintf(ptr noundef %0, ptr noundef %4, [1 x i32] %6) #11
  call void @llvm.va_end(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_check_vprintf(ptr noundef, ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_format(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trace_output_call(ptr noundef %0, ptr noundef %1, ptr noundef %2, ...) #0 {
  %4 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !11
  call void @llvm.va_start(ptr nonnull %4)
  %5 = load i32, ptr %4, align 4
  %6 = insertvalue [1 x i32] poison, i32 %5, 0
  %7 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %7, ptr noundef nonnull @.str.10, ptr noundef %1) #11
  %8 = call ptr @trace_event_format(ptr noundef %0, ptr noundef %2) #11
  call void @trace_seq_vprintf(ptr noundef %7, ptr noundef %8, [1 x i32] %6) #11
  %9 = call i32 @trace_handle_return(ptr noundef %7) #11
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @trace_seq_print_sym(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca [266 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 266, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(266) %4, i8 0, i32 266, i1 false), !annotation !11
  br i1 %2, label %5, label %7

5:                                                ; preds = %3
  %6 = call i32 @sprint_symbol(ptr noundef nonnull %4, i32 noundef %1) #11
  br label %9

7:                                                ; preds = %3
  %8 = call ptr @kallsyms_lookup(i32 noundef %1, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %4) #11
  br label %9

9:                                                ; preds = %7, %5
  %10 = load i8, ptr %4, align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  call void @trace_seq_puts(ptr noundef %0, ptr noundef nonnull %4) #11
  br label %14

13:                                               ; preds = %9
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %1) #11
  br label %14

14:                                               ; preds = %13, %12
  call void @llvm.lifetime.end.p0(i64 266, ptr nonnull %4) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprint_symbol(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kallsyms_lookup(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @seq_print_ip_sym(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [266 x i8], align 1
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @trace_seq_putc(ptr noundef %0, i8 noundef zeroext 48) #11
  br label %23

7:                                                ; preds = %3
  %8 = and i32 %2, 2
  %9 = icmp eq i32 %8, 0
  call void @llvm.lifetime.start.p0(i64 266, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(266) %4, i8 0, i32 266, i1 false) #11, !annotation !11
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = call i32 @sprint_symbol(ptr noundef nonnull %4, i32 noundef %1) #11
  br label %14

12:                                               ; preds = %7
  %13 = call ptr @kallsyms_lookup(i32 noundef %1, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %4) #11
  br label %14

14:                                               ; preds = %12, %10
  %15 = load i8, ptr %4, align 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  call void @trace_seq_puts(ptr noundef %0, ptr noundef nonnull %4) #11
  br label %19

18:                                               ; preds = %14
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %1) #11
  br label %19

19:                                               ; preds = %18, %17
  call void @llvm.lifetime.end.p0(i64 266, ptr nonnull %4) #11
  %20 = and i32 %2, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %1) #11
  br label %23

23:                                               ; preds = %22, %19, %6
  %24 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 2
  %25 = load i32, ptr %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %29 = load i32, ptr %28, align 8
  %30 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = icmp ule i32 %29, %31
  %33 = zext i1 %32 to i32
  br label %34

34:                                               ; preds = %27, %23
  %35 = phi i32 [ 0, %23 ], [ %33, %27 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trace_print_lat_fmt(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.trace_entry, ptr %1, i32 0, i32 1
  %4 = load i8, ptr %3, align 2
  %5 = zext i8 %4 to i32
  %6 = and i32 %5, 64
  %7 = and i32 %5, 8
  %8 = and i32 %5, 16
  %9 = and i32 %5, 129
  %10 = icmp eq i32 %9, 129
  br i1 %10, label %20, label %11

11:                                               ; preds = %2
  %12 = and i32 %5, 1
  %13 = icmp eq i32 %12, 0
  %14 = icmp eq i32 %9, 0
  %15 = select i1 %13, i32 98, i32 100
  br i1 %14, label %16, label %20

16:                                               ; preds = %11
  %17 = and i32 %5, 2
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 46, i32 88
  br label %20

20:                                               ; preds = %16, %11, %2
  %21 = phi i32 [ 68, %2 ], [ %15, %11 ], [ %19, %16 ]
  %22 = and i8 %4, 36
  %23 = zext i8 %22 to i32
  switch i32 %23, label %26 [
    i32 36, label %27
    i32 4, label %24
    i32 32, label %25
  ]

24:                                               ; preds = %20
  br label %27

25:                                               ; preds = %20
  br label %27

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26, %25, %24, %20
  %28 = phi i32 [ 46, %26 ], [ 112, %25 ], [ 110, %24 ], [ 78, %20 ]
  %29 = icmp eq i32 %7, 0
  %30 = and i32 %5, 72
  %31 = icmp eq i32 %30, 72
  br i1 %31, label %41, label %32

32:                                               ; preds = %27
  %33 = icmp eq i32 %6, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %32
  %35 = and i32 %5, 24
  %36 = icmp eq i32 %35, 24
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = icmp eq i32 %8, 0
  %39 = select i1 %38, i32 46, i32 115
  %40 = select i1 %29, i32 %39, i32 104
  br label %41

41:                                               ; preds = %37, %34, %32, %27
  %42 = phi i32 [ 90, %27 ], [ 122, %32 ], [ 72, %34 ], [ %40, %37 ]
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %21, i32 noundef %28, i32 noundef %42) #11
  %43 = getelementptr inbounds %struct.trace_entry, ptr %1, i32 0, i32 2
  %44 = load i8, ptr %43, align 1
  %45 = and i8 %44, 15
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %41
  %48 = zext i8 %45 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %48) #11
  br label %50

49:                                               ; preds = %41
  tail call void @trace_seq_putc(ptr noundef %0, i8 noundef zeroext 46) #11
  br label %50

50:                                               ; preds = %49, %47
  %51 = load i8, ptr %43, align 1
  %52 = zext i8 %51 to i32
  %53 = and i32 %52, 240
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %50
  %56 = lshr i32 %52, 4
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %56) #11
  br label %58

57:                                               ; preds = %50
  tail call void @trace_seq_putc(ptr noundef %0, i8 noundef zeroext 46) #11
  br label %58

58:                                               ; preds = %57, %55
  %59 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 2
  %60 = load i32, ptr %59, align 8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %64 = load i32, ptr %63, align 8
  %65 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = icmp ule i32 %64, %66
  %68 = zext i1 %67 to i32
  br label %69

69:                                               ; preds = %62, %58
  %70 = phi i32 [ 0, %58 ], [ %68, %62 ]
  ret i32 %70
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync)
define dso_local zeroext i8 @trace_find_mark(i64 noundef %0) local_unnamed_addr #5 {
  %2 = icmp ugt i64 %0, 1000000000
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = icmp ugt i64 %0, 100000000
  br i1 %4, label %13, label %5

5:                                                ; preds = %3
  %6 = icmp ugt i64 %0, 10000000
  br i1 %6, label %13, label %7

7:                                                ; preds = %5
  %8 = icmp ugt i64 %0, 1000000
  br i1 %8, label %13, label %9

9:                                                ; preds = %7
  %10 = icmp ugt i64 %0, 100000
  br i1 %10, label %13, label %11

11:                                               ; preds = %9
  %12 = icmp ugt i64 %0, 10000
  br i1 %12, label %13, label %17

13:                                               ; preds = %11, %9, %7, %5, %3, %1
  %14 = phi i32 [ 0, %1 ], [ 1, %3 ], [ 2, %5 ], [ 3, %7 ], [ 4, %9 ], [ 5, %11 ]
  %15 = getelementptr [6 x %struct.trace_mark], ptr @mark, i32 0, i32 %14, i32 1
  %16 = load i8, ptr %15, align 8
  br label %17

17:                                               ; preds = %13, %11
  %18 = phi i8 [ %16, %13 ], [ 32, %11 ]
  ret i8 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trace_print_context(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [16 x i8], align 1
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %5 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !11
  %7 = getelementptr inbounds %struct.trace_entry, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  call void @trace_find_cmdline(i32 noundef %8, ptr noundef nonnull %2) #11
  %9 = load i32, ptr %7, align 4
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %4, ptr noundef nonnull @.str.15, ptr noundef nonnull %2, i32 noundef %9) #11
  %10 = getelementptr inbounds %struct.trace_array, ptr %3, i32 0, i32 14
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65536
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load i32, ptr %7, align 4
  %16 = call i32 @trace_find_tgid(i32 noundef %15) #11
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %4, ptr noundef nonnull @.str.16) #11
  br label %20

19:                                               ; preds = %14
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %4, ptr noundef nonnull @.str.17, i32 noundef %16) #11
  br label %20

20:                                               ; preds = %19, %18, %1
  %21 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 20
  %22 = load i32, ptr %21, align 8
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %4, ptr noundef nonnull @.str.18, i32 noundef %22) #11
  %23 = load i32, ptr %10, align 4
  %24 = and i32 %23, 524288
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = call i32 @trace_print_lat_fmt(ptr noundef %4, ptr noundef %6)
  br label %28

28:                                               ; preds = %26, %20
  %29 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 21
  %30 = load i64, ptr %29, align 8
  %31 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 7
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %28
  %36 = call i64 @ns2usecs(i64 noundef %30) #11
  %37 = trunc i64 %36 to i32
  %38 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %36) #12, !srcloc !12
  %39 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %36, i64 %38, i32 0) #12, !srcloc !13
  %40 = extractvalue { i64, i32 } %39, 0
  %41 = lshr i64 %40, 18
  %42 = trunc i64 %41 to i32
  %43 = mul i32 %42, -1000000
  %44 = add i32 %43, %37
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %4, ptr noundef nonnull @.str.24, i32 noundef %42, i32 noundef %44) #11
  br label %46

45:                                               ; preds = %28
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %4, ptr noundef nonnull @.str.25, i64 noundef %30) #11
  br label %46

46:                                               ; preds = %45, %35
  call void @trace_seq_puts(ptr noundef %4, ptr noundef nonnull @.str.19) #11
  %47 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15, i32 2
  %48 = load i32, ptr %47, align 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15, i32 1, i32 2
  %52 = load i32, ptr %51, align 8
  %53 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15, i32 1, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = icmp ule i32 %52, %54
  %56 = zext i1 %55 to i32
  br label %57

57:                                               ; preds = %50, %46
  %58 = phi i32 [ 0, %46 ], [ %56, %50 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_find_cmdline(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_find_tgid(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trace_print_lat_context(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [16 x i8], align 1
  %3 = alloca i64, align 8
  %4 = alloca [16 x i8], align 1
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %7 = getelementptr inbounds %struct.trace_array, ptr %5, i32 0, i32 14
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store i64 0, ptr %3, align 8, !annotation !11
  %10 = call ptr @trace_find_next_entry(ptr noundef %0, ptr noundef null, ptr noundef nonnull %3) #11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 21
  %14 = load i64, ptr %13, align 8
  store i64 %14, ptr %3, align 8
  br label %15

15:                                               ; preds = %12, %1
  %16 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq i32 %9, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !11
  %20 = getelementptr inbounds %struct.trace_entry, ptr %17, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  call void @trace_find_cmdline(i32 noundef %21, ptr noundef nonnull %4) #11
  %22 = load i32, ptr %20, align 4
  %23 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 20
  %24 = load i32, ptr %23, align 8
  %25 = getelementptr inbounds %struct.trace_entry, ptr %17, i32 0, i32 1
  %26 = load i8, ptr %25, align 2
  %27 = zext i8 %26 to i32
  %28 = getelementptr inbounds %struct.trace_entry, ptr %17, i32 0, i32 2
  %29 = load i8, ptr %28, align 1
  %30 = and i8 %29, 15
  %31 = zext i8 %30 to i32
  %32 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 23
  %33 = load i32, ptr %32, align 8
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %6, ptr noundef nonnull @.str.20, ptr noundef nonnull %4, i32 noundef %22, i32 noundef %24, i32 noundef %27, i32 noundef %31, i32 noundef %33) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  br label %41

34:                                               ; preds = %15
  %35 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 20
  %36 = load i32, ptr %35, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %2, i8 0, i32 16, i1 false) #11, !annotation !11
  %37 = getelementptr inbounds %struct.trace_entry, ptr %17, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  call void @trace_find_cmdline(i32 noundef %38, ptr noundef nonnull %2) #11
  %39 = load i32, ptr %37, align 4
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %6, ptr noundef nonnull @.str.26, ptr noundef nonnull %2, i32 noundef %39, i32 noundef %36) #11
  %40 = call i32 @trace_print_lat_fmt(ptr noundef %6, ptr noundef %17) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  br label %41

41:                                               ; preds = %34, %19
  %42 = load i64, ptr %3, align 8
  %43 = load ptr, ptr %0, align 8
  %44 = getelementptr inbounds %struct.trace_array, ptr %43, i32 0, i32 14
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 8
  %47 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 7
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 4
  %50 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 21
  %51 = load i64, ptr %50, align 8
  %52 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 2
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %struct.array_buffer, ptr %53, i32 0, i32 3
  %55 = load i64, ptr %54, align 8
  %56 = sub i64 %51, %55
  %57 = sub i64 %42, %51
  %58 = icmp eq i32 %49, 0
  br i1 %58, label %86, label %59

59:                                               ; preds = %41
  %60 = call i64 @ns2usecs(i64 noundef %56) #11
  %61 = call i64 @ns2usecs(i64 noundef %57) #11
  %62 = icmp eq i32 %46, 0
  br i1 %62, label %89, label %63

63:                                               ; preds = %59
  %64 = trunc i64 %60 to i32
  %65 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %60, i32 0) #12, !srcloc !14
  %66 = extractvalue { i64, i32 } %65, 0
  %67 = extractvalue { i64, i32 } %65, 1
  %68 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %60, i64 %66, i32 %67) #12, !srcloc !13
  %69 = extractvalue { i64, i32 } %68, 0
  %70 = lshr i64 %69, 9
  %71 = trunc i64 %70 to i32
  %72 = mul i32 %71, -1000
  %73 = add i32 %72, %64
  %74 = trunc i64 %61 to i32
  %75 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %61, i32 0) #12, !srcloc !14
  %76 = extractvalue { i64, i32 } %75, 0
  %77 = extractvalue { i64, i32 } %75, 1
  %78 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %61, i64 %76, i32 %77) #12, !srcloc !13
  %79 = extractvalue { i64, i32 } %78, 0
  %80 = lshr i64 %79, 9
  %81 = trunc i64 %80 to i32
  %82 = mul i32 %81, -1000
  %83 = add i32 %82, %74
  %84 = load i64, ptr %50, align 8
  %85 = call i64 @ns2usecs(i64 noundef %84) #11
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %6, ptr noundef nonnull @.str.27, i64 noundef %85, i32 noundef %71, i32 noundef %73, i32 noundef %81, i32 noundef %83) #11
  br label %110

86:                                               ; preds = %41
  %87 = icmp eq i32 %46, 0
  br i1 %87, label %109, label %88

88:                                               ; preds = %86
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %6, ptr noundef nonnull @.str.28, i64 noundef %51, i64 noundef %56, i64 noundef %57) #11
  br label %110

89:                                               ; preds = %59
  %90 = mul i64 %61, 1000
  %91 = icmp ugt i64 %90, 1000000000
  br i1 %91, label %102, label %92

92:                                               ; preds = %89
  %93 = icmp ugt i64 %90, 100000000
  br i1 %93, label %102, label %94

94:                                               ; preds = %92
  %95 = icmp ugt i64 %90, 10000000
  br i1 %95, label %102, label %96

96:                                               ; preds = %94
  %97 = icmp ugt i64 %90, 1000000
  br i1 %97, label %102, label %98

98:                                               ; preds = %96
  %99 = icmp ugt i64 %90, 100000
  br i1 %99, label %102, label %100

100:                                              ; preds = %98
  %101 = icmp ugt i64 %90, 10000
  br i1 %101, label %102, label %107

102:                                              ; preds = %100, %98, %96, %94, %92, %89
  %103 = phi i32 [ 0, %89 ], [ 1, %92 ], [ 2, %94 ], [ 3, %96 ], [ 4, %98 ], [ 5, %100 ]
  %104 = getelementptr [6 x %struct.trace_mark], ptr @mark, i32 0, i32 %103, i32 1
  %105 = load i8, ptr %104, align 8
  %106 = zext i8 %105 to i32
  br label %107

107:                                              ; preds = %102, %100
  %108 = phi i32 [ %106, %102 ], [ 32, %100 ]
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %6, ptr noundef nonnull @.str.29, i64 noundef %60, i32 noundef %108) #11
  br label %110

109:                                              ; preds = %86
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %6, ptr noundef nonnull @.str.30, i64 noundef %56) #11
  br label %110

110:                                              ; preds = %109, %107, %88, %63
  %111 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15, i32 2
  %112 = load i32, ptr %111, align 8
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15, i32 1, i32 2
  %116 = load i32, ptr %115, align 8
  %117 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15, i32 1, i32 1
  %118 = load i32, ptr %117, align 4
  %119 = icmp ule i32 %116, %118
  %120 = zext i1 %119 to i32
  br label %121

121:                                              ; preds = %114, %110
  %122 = phi i32 [ 0, %110 ], [ %120, %114 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret i32 %122
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_find_next_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @ftrace_find_event(i32 noundef %0) local_unnamed_addr #6 {
  %2 = and i32 %0, 127
  %3 = getelementptr [128 x %struct.hlist_head], ptr @event_hash, i32 0, i32 %2
  br label %4

4:                                                ; preds = %8, %1
  %5 = phi ptr [ %3, %1 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.trace_event, ptr %6, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, %0
  br i1 %11, label %12, label %4

12:                                               ; preds = %8, %4
  ret ptr %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @trace_event_read_lock() local_unnamed_addr #0 {
  tail call void @down_read(ptr noundef nonnull @trace_event_sem) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @trace_event_read_unlock() local_unnamed_addr #0 {
  tail call void @up_read(ptr noundef nonnull @trace_event_sem) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @register_trace_event(ptr noundef %0) #0 {
  tail call void @down_write(ptr noundef nonnull @trace_event_sem) #11
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !15

3:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 753, i32 noundef 9, ptr noundef null) #11
  br label %112

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.trace_event, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !15

8:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 756, i32 noundef 9, ptr noundef null) #11
  br label %112

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.trace_event, ptr %0, i32 0, i32 1
  store volatile ptr %10, ptr %10, align 4
  %11 = getelementptr inbounds %struct.trace_event, ptr %0, i32 0, i32 1, i32 1
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.trace_event, ptr %0, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %60

15:                                               ; preds = %9
  %16 = load i32, ptr @next_event_type, align 4
  %17 = icmp sgt i32 %16, 65535
  br i1 %17, label %18, label %38

18:                                               ; preds = %15
  %19 = load volatile ptr, ptr @ftrace_event_list, align 4
  %20 = icmp eq ptr %19, @ftrace_event_list
  br i1 %20, label %40, label %21

21:                                               ; preds = %27, %18
  %22 = phi i32 [ %28, %27 ], [ 20, %18 ]
  %23 = phi ptr [ %29, %27 ], [ %19, %18 ]
  %24 = getelementptr i8, ptr %23, i32 8
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, %22
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = add i32 %22, 1
  %29 = load ptr, ptr %23, align 4
  %30 = icmp eq ptr %29, @ftrace_event_list
  br i1 %30, label %31, label %21

31:                                               ; preds = %27, %21
  %32 = phi ptr [ %23, %21 ], [ @ftrace_event_list, %27 ]
  %33 = phi i32 [ %22, %21 ], [ %28, %27 ]
  %34 = icmp sgt i32 %33, 65535
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 0, ptr %12, align 4
  br label %112

36:                                               ; preds = %31
  store i32 %33, ptr %12, align 4
  %37 = icmp eq i32 %33, 0
  br i1 %37, label %112, label %42

38:                                               ; preds = %15
  %39 = add nsw i32 %16, 1
  store i32 %39, ptr @next_event_type, align 4
  br label %40

40:                                               ; preds = %38, %18
  %41 = phi i32 [ %16, %38 ], [ 20, %18 ]
  store i32 %41, ptr %12, align 4
  br label %42

42:                                               ; preds = %40, %36
  %43 = phi i32 [ %33, %36 ], [ %41, %40 ]
  %44 = phi ptr [ %32, %36 ], [ @ftrace_event_list, %40 ]
  %45 = and i32 %43, 127
  %46 = getelementptr [128 x %struct.hlist_head], ptr @event_hash, i32 0, i32 %45
  br label %47

47:                                               ; preds = %51, %42
  %48 = phi ptr [ %46, %42 ], [ %49, %51 ]
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.trace_event, ptr %49, i32 0, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, %43
  br i1 %54, label %55, label %47

55:                                               ; preds = %51
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 776, i32 noundef 9, ptr noundef null) #11
  br label %112

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  store ptr %10, ptr %57, align 4
  store ptr %44, ptr %10, align 4
  store ptr %58, ptr %11, align 4
  store volatile ptr %10, ptr %58, align 4
  %59 = load ptr, ptr %5, align 4
  br label %75

60:                                               ; preds = %9
  %61 = icmp sgt i32 %13, 20
  br i1 %61, label %62, label %64

62:                                               ; preds = %60
  %63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 783, i32 noundef 9, ptr noundef null) #11
  br label %112

64:                                               ; preds = %60
  %65 = and i32 %13, 127
  %66 = getelementptr [128 x %struct.hlist_head], ptr @event_hash, i32 0, i32 %65
  br label %67

67:                                               ; preds = %71, %64
  %68 = phi ptr [ %66, %64 ], [ %69, %71 ]
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.trace_event, ptr %69, i32 0, i32 2
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %73, %13
  br i1 %74, label %112, label %67

75:                                               ; preds = %67, %56
  %76 = phi ptr [ %59, %56 ], [ %6, %67 ]
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  store ptr @trace_nop_print, ptr %76, align 4
  %80 = load ptr, ptr %5, align 4
  br label %81

81:                                               ; preds = %79, %75
  %82 = phi ptr [ %80, %79 ], [ %76, %75 ]
  %83 = getelementptr inbounds %struct.trace_event_functions, ptr %82, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  store ptr @trace_nop_print, ptr %83, align 4
  %87 = load ptr, ptr %5, align 4
  br label %88

88:                                               ; preds = %86, %81
  %89 = phi ptr [ %87, %86 ], [ %82, %81 ]
  %90 = getelementptr inbounds %struct.trace_event_functions, ptr %89, i32 0, i32 2
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  store ptr @trace_nop_print, ptr %90, align 4
  %94 = load ptr, ptr %5, align 4
  br label %95

95:                                               ; preds = %93, %88
  %96 = phi ptr [ %94, %93 ], [ %89, %88 ]
  %97 = getelementptr inbounds %struct.trace_event_functions, ptr %96, i32 0, i32 3
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  store ptr @trace_nop_print, ptr %97, align 4
  br label %101

101:                                              ; preds = %100, %95
  %102 = load i32, ptr %12, align 4
  %103 = and i32 %102, 127
  %104 = getelementptr [128 x %struct.hlist_head], ptr @event_hash, i32 0, i32 %103
  %105 = load ptr, ptr %104, align 4
  store volatile ptr %105, ptr %0, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %109, label %107

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.hlist_node, ptr %105, i32 0, i32 1
  store volatile ptr %0, ptr %108, align 4
  br label %109

109:                                              ; preds = %107, %101
  store volatile ptr %0, ptr %104, align 4
  %110 = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 1
  store volatile ptr %104, ptr %110, align 4
  %111 = load i32, ptr %12, align 4
  br label %112

112:                                              ; preds = %109, %71, %62, %55, %36, %35, %8, %3
  %113 = phi i32 [ 0, %62 ], [ %111, %109 ], [ 0, %3 ], [ 0, %8 ], [ 0, %55 ], [ 0, %36 ], [ 0, %35 ], [ 0, %71 ]
  tail call void @up_write(ptr noundef nonnull @trace_event_sem) #11
  ret i32 %113
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trace_nop_print(ptr noundef %0, i32 %1, ptr nocapture readnone %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %5 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 8
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %4, ptr noundef nonnull @.str.22, i32 noundef %8) #11
  %9 = tail call i32 @trace_handle_return(ptr noundef %4) #11
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__unregister_trace_event(ptr nocapture noundef %0) local_unnamed_addr #8 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  store volatile ptr %2, ptr %4, align 4
  %5 = icmp eq ptr %2, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.hlist_node, ptr %2, i32 0, i32 1
  store volatile ptr %4, ptr %7, align 4
  br label %8

8:                                                ; preds = %6, %1
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %3, align 4
  %9 = getelementptr inbounds %struct.trace_event, ptr %0, i32 0, i32 1
  %10 = getelementptr inbounds %struct.trace_event, ptr %0, i32 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %11, ptr %13, align 4
  store volatile ptr %12, ptr %11, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %9, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %10, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @unregister_trace_event(ptr nocapture noundef %0) #0 {
  tail call void @down_write(ptr noundef nonnull @trace_event_sem) #11
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  store volatile ptr %2, ptr %4, align 4
  %5 = icmp eq ptr %2, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.hlist_node, ptr %2, i32 0, i32 1
  store volatile ptr %4, ptr %7, align 4
  br label %8

8:                                                ; preds = %6, %1
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %3, align 4
  %9 = getelementptr inbounds %struct.trace_event, ptr %0, i32 0, i32 1
  %10 = getelementptr inbounds %struct.trace_event, ptr %0, i32 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %11, ptr %13, align 4
  store volatile ptr %12, ptr %11, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %9, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %10, align 4
  tail call void @up_write(ptr noundef nonnull @trace_event_sem) #11
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @init_events() #9 section ".init.text" {
  br label %1

1:                                                ; preds = %12, %0
  %2 = phi ptr [ @trace_fn_event, %0 ], [ %15, %12 ]
  %3 = phi i32 [ 0, %0 ], [ %13, %12 ]
  %4 = tail call i32 @register_trace_event(ptr noundef %2)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.trace_event, ptr %2, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %8) #13
  %10 = load i1, ptr @init_events.__already_done, align 1
  br i1 %10, label %12, label %11, !prof !8

11:                                               ; preds = %6
  store i1 true, ptr @init_events.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1579, i32 noundef 9, ptr noundef null) #11
  br label %12

12:                                               ; preds = %11, %6, %1
  %13 = add nuw nsw i32 %3, 1
  %14 = getelementptr [14 x ptr], ptr @events, i32 0, i32 %13
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq i32 %13, 13
  br i1 %16, label %17, label %1

17:                                               ; preds = %12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_vprintf(ptr noundef, ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ns2usecs(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_fn_trace(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = load i16, ptr %5, align 4
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %9, label %8, !prof !8

8:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 866, i32 noundef 9, ptr noundef null) #11
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.ftrace_entry, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ftrace_entry, ptr %5, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @seq_print_ip_sym(ptr noundef %10, i32 noundef %12, i32 noundef %1) #11
  %16 = and i32 %1, 1
  %17 = icmp ne i32 %16, 0
  %18 = icmp ne i32 %14, 0
  %19 = and i1 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %9
  tail call void @trace_seq_puts(ptr noundef %10, ptr noundef nonnull @.str.32) #11
  %21 = tail call i32 @seq_print_ip_sym(ptr noundef %10, i32 noundef %14, i32 noundef %1) #11
  br label %22

22:                                               ; preds = %20, %9
  tail call void @trace_seq_putc(ptr noundef %10, i8 noundef zeroext 10) #11
  %23 = tail call i32 @trace_handle_return(ptr noundef %10) #11
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_fn_raw(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = load i16, ptr %5, align 4
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %9, label %8, !prof !8

8:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 879, i32 noundef 9, ptr noundef null) #11
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.ftrace_entry, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ftrace_entry, ptr %5, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %10, ptr noundef nonnull @.str.33, i32 noundef %12, i32 noundef %14) #11
  %15 = tail call i32 @trace_handle_return(ptr noundef %10) #11
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_fn_hex(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = load i16, ptr %5, align 4
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %9, label %8, !prof !8

8:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 894, i32 noundef 9, ptr noundef null) #11
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.ftrace_entry, ptr %5, i32 0, i32 1
  tail call void @trace_seq_putmem_hex(ptr noundef %10, ptr noundef %11, i32 noundef 4) #11
  %12 = getelementptr inbounds %struct.ftrace_entry, ptr %5, i32 0, i32 2
  tail call void @trace_seq_putmem_hex(ptr noundef %10, ptr noundef %12, i32 noundef 4) #11
  %13 = tail call i32 @trace_handle_return(ptr noundef %10) #11
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_fn_bin(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = load i16, ptr %5, align 4
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %9, label %8, !prof !8

8:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 908, i32 noundef 9, ptr noundef null) #11
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.ftrace_entry, ptr %5, i32 0, i32 1
  tail call void @trace_seq_putmem(ptr noundef %10, ptr noundef %11, i32 noundef 4) #11
  %12 = getelementptr inbounds %struct.ftrace_entry, ptr %5, i32 0, i32 2
  tail call void @trace_seq_putmem(ptr noundef %10, ptr noundef %12, i32 noundef 4) #11
  %13 = tail call i32 @trace_handle_return(ptr noundef %10) #11
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_putmem_hex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_putmem(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_ctx_print(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = alloca [16 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %4, i8 0, i32 16, i1 false) #11, !annotation !11
  %5 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ctx_switch_entry, ptr %6, i32 0, i32 7
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = getelementptr [10 x i8], ptr @task_index_to_char.state_char, i32 0, i32 %9
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = getelementptr inbounds %struct.ctx_switch_entry, ptr %6, i32 0, i32 5
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = getelementptr [10 x i8], ptr @task_index_to_char.state_char, i32 0, i32 %15
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = getelementptr inbounds %struct.ctx_switch_entry, ptr %6, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  call void @trace_find_cmdline(i32 noundef %20, ptr noundef nonnull %4) #11
  %21 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %22 = getelementptr inbounds %struct.ctx_switch_entry, ptr %6, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.ctx_switch_entry, ptr %6, i32 0, i32 4
  %25 = load i8, ptr %24, align 4
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds %struct.ctx_switch_entry, ptr %6, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = load i32, ptr %19, align 4
  %30 = getelementptr inbounds %struct.ctx_switch_entry, ptr %6, i32 0, i32 6
  %31 = load i8, ptr %30, align 2
  %32 = zext i8 %31 to i32
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %21, ptr noundef nonnull @.str.35, i32 noundef %23, i32 noundef %26, i32 noundef %18, ptr noundef nonnull @.str.34, i32 noundef %28, i32 noundef %29, i32 noundef %32, i32 noundef %12, ptr noundef nonnull %4) #11
  %33 = call i32 @trace_handle_return(ptr noundef %21) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_ctx_raw(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ctx_switch_entry, ptr %5, i32 0, i32 5
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = getelementptr [10 x i8], ptr @task_index_to_char.state_char, i32 0, i32 %8
  %10 = load i8, ptr %9, align 1
  %11 = getelementptr inbounds %struct.ctx_switch_entry, ptr %5, i32 0, i32 7
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = getelementptr [10 x i8], ptr @task_index_to_char.state_char, i32 0, i32 %13
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %18 = getelementptr inbounds %struct.ctx_switch_entry, ptr %5, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.ctx_switch_entry, ptr %5, i32 0, i32 4
  %21 = load i8, ptr %20, align 4
  %22 = zext i8 %21 to i32
  %23 = zext i8 %10 to i32
  %24 = getelementptr inbounds %struct.ctx_switch_entry, ptr %5, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.ctx_switch_entry, ptr %5, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.ctx_switch_entry, ptr %5, i32 0, i32 6
  %29 = load i8, ptr %28, align 2
  %30 = zext i8 %29 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %17, ptr noundef nonnull @.str.36, i32 noundef %19, i32 noundef %22, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %30, i32 noundef %16) #11
  %31 = tail call i32 @trace_handle_return(ptr noundef %17) #11
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_ctx_hex(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = tail call fastcc i32 @trace_ctxwake_hex(ptr noundef %0, i8 noundef zeroext 0)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_ctxwake_bin(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %7 = getelementptr inbounds %struct.ctx_switch_entry, ptr %5, i32 0, i32 1
  tail call void @trace_seq_putmem(ptr noundef %6, ptr noundef %7, i32 noundef 4) #11
  %8 = getelementptr inbounds %struct.ctx_switch_entry, ptr %5, i32 0, i32 4
  tail call void @trace_seq_putmem(ptr noundef %6, ptr noundef %8, i32 noundef 1) #11
  %9 = getelementptr inbounds %struct.ctx_switch_entry, ptr %5, i32 0, i32 5
  tail call void @trace_seq_putmem(ptr noundef %6, ptr noundef %9, i32 noundef 1) #11
  %10 = getelementptr inbounds %struct.ctx_switch_entry, ptr %5, i32 0, i32 3
  tail call void @trace_seq_putmem(ptr noundef %6, ptr noundef %10, i32 noundef 4) #11
  %11 = getelementptr inbounds %struct.ctx_switch_entry, ptr %5, i32 0, i32 2
  tail call void @trace_seq_putmem(ptr noundef %6, ptr noundef %11, i32 noundef 4) #11
  %12 = getelementptr inbounds %struct.ctx_switch_entry, ptr %5, i32 0, i32 6
  tail call void @trace_seq_putmem(ptr noundef %6, ptr noundef %12, i32 noundef 1) #11
  %13 = getelementptr inbounds %struct.ctx_switch_entry, ptr %5, i32 0, i32 7
  tail call void @trace_seq_putmem(ptr noundef %6, ptr noundef %13, i32 noundef 1) #11
  %14 = tail call i32 @trace_handle_return(ptr noundef %6) #11
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @trace_ctxwake_hex(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %1, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  %5 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq i8 %1, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ctx_switch_entry, ptr %6, i32 0, i32 5
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = getelementptr [10 x i8], ptr @task_index_to_char.state_char, i32 0, i32 %11
  %13 = load i8, ptr %12, align 1
  store i8 %13, ptr %3, align 1
  br label %14

14:                                               ; preds = %8, %2
  %15 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %16 = getelementptr inbounds %struct.ctx_switch_entry, ptr %6, i32 0, i32 7
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = getelementptr [10 x i8], ptr @task_index_to_char.state_char, i32 0, i32 %18
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  store i32 %21, ptr %4, align 4
  %22 = getelementptr inbounds %struct.ctx_switch_entry, ptr %6, i32 0, i32 1
  tail call void @trace_seq_putmem_hex(ptr noundef %15, ptr noundef %22, i32 noundef 4) #11
  %23 = getelementptr inbounds %struct.ctx_switch_entry, ptr %6, i32 0, i32 4
  tail call void @trace_seq_putmem_hex(ptr noundef %15, ptr noundef %23, i32 noundef 1) #11
  call void @trace_seq_putmem_hex(ptr noundef %15, ptr noundef nonnull %3, i32 noundef 1) #11
  %24 = getelementptr inbounds %struct.ctx_switch_entry, ptr %6, i32 0, i32 3
  call void @trace_seq_putmem_hex(ptr noundef %15, ptr noundef %24, i32 noundef 4) #11
  %25 = getelementptr inbounds %struct.ctx_switch_entry, ptr %6, i32 0, i32 2
  call void @trace_seq_putmem_hex(ptr noundef %15, ptr noundef %25, i32 noundef 4) #11
  %26 = getelementptr inbounds %struct.ctx_switch_entry, ptr %6, i32 0, i32 6
  call void @trace_seq_putmem_hex(ptr noundef %15, ptr noundef %26, i32 noundef 1) #11
  call void @trace_seq_putmem_hex(ptr noundef %15, ptr noundef nonnull %4, i32 noundef 4) #11
  %27 = call i32 @trace_handle_return(ptr noundef %15) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_wake_print(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = alloca [16 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %4, i8 0, i32 16, i1 false) #11, !annotation !11
  %5 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ctx_switch_entry, ptr %6, i32 0, i32 7
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = getelementptr [10 x i8], ptr @task_index_to_char.state_char, i32 0, i32 %9
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = getelementptr inbounds %struct.ctx_switch_entry, ptr %6, i32 0, i32 5
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = getelementptr [10 x i8], ptr @task_index_to_char.state_char, i32 0, i32 %15
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = getelementptr inbounds %struct.ctx_switch_entry, ptr %6, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  call void @trace_find_cmdline(i32 noundef %20, ptr noundef nonnull %4) #11
  %21 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %22 = getelementptr inbounds %struct.ctx_switch_entry, ptr %6, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.ctx_switch_entry, ptr %6, i32 0, i32 4
  %25 = load i8, ptr %24, align 4
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds %struct.ctx_switch_entry, ptr %6, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = load i32, ptr %19, align 4
  %30 = getelementptr inbounds %struct.ctx_switch_entry, ptr %6, i32 0, i32 6
  %31 = load i8, ptr %30, align 2
  %32 = zext i8 %31 to i32
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %21, ptr noundef nonnull @.str.35, i32 noundef %23, i32 noundef %26, i32 noundef %18, ptr noundef nonnull @.str.37, i32 noundef %28, i32 noundef %29, i32 noundef %32, i32 noundef %12, ptr noundef nonnull %4) #11
  %33 = call i32 @trace_handle_return(ptr noundef %21) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_wake_raw(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ctx_switch_entry, ptr %5, i32 0, i32 7
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = getelementptr [10 x i8], ptr @task_index_to_char.state_char, i32 0, i32 %8
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %13 = getelementptr inbounds %struct.ctx_switch_entry, ptr %5, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ctx_switch_entry, ptr %5, i32 0, i32 4
  %16 = load i8, ptr %15, align 4
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds %struct.ctx_switch_entry, ptr %5, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.ctx_switch_entry, ptr %5, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.ctx_switch_entry, ptr %5, i32 0, i32 6
  %23 = load i8, ptr %22, align 2
  %24 = zext i8 %23 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %12, ptr noundef nonnull @.str.36, i32 noundef %14, i32 noundef %17, i32 noundef 43, i32 noundef %19, i32 noundef %21, i32 noundef %24, i32 noundef %11) #11
  %25 = tail call i32 @trace_handle_return(ptr noundef %12) #11
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_wake_hex(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = tail call fastcc i32 @trace_ctxwake_hex(ptr noundef %0, i8 noundef zeroext 43)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_stack_print(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %5 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 8
  %7 = load i16, ptr %6, align 4
  %8 = icmp eq i16 %7, 4
  br i1 %8, label %11, label %9, !prof !8

9:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1090, i32 noundef 9, ptr noundef null) #11
  %10 = load ptr, ptr %5, align 8
  br label %11

11:                                               ; preds = %9, %3
  %12 = phi ptr [ %10, %9 ], [ %6, %3 ]
  %13 = ptrtoint ptr %12 to i32
  %14 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 19
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, %13
  %17 = inttoptr i32 %16 to ptr
  tail call void @trace_seq_puts(ptr noundef %4, ptr noundef nonnull @.str.38) #11
  %18 = getelementptr inbounds %struct.stack_entry, ptr %6, i32 0, i32 2
  %19 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15, i32 2
  %20 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15, i32 1, i32 2
  %21 = icmp ne ptr %18, null
  %22 = icmp ult ptr %18, %17
  %23 = select i1 %21, i1 %22, i1 false
  br i1 %23, label %24, label %44

24:                                               ; preds = %11
  %25 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15, i32 1, i32 1
  br label %26

26:                                               ; preds = %37, %24
  %27 = phi ptr [ %18, %24 ], [ %40, %37 ]
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %44, label %30

30:                                               ; preds = %26
  %31 = load i32, ptr %19, align 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = load i32, ptr %20, align 8
  %35 = load i32, ptr %25, align 4
  %36 = icmp ugt i32 %34, %35
  br i1 %36, label %44, label %37

37:                                               ; preds = %33
  tail call void @trace_seq_puts(ptr noundef %4, ptr noundef nonnull @.str.39) #11
  %38 = load i32, ptr %27, align 4
  %39 = tail call i32 @seq_print_ip_sym(ptr noundef %4, i32 noundef %38, i32 noundef %1)
  tail call void @trace_seq_putc(ptr noundef %4, i8 noundef zeroext 10) #11
  %40 = getelementptr i32, ptr %27, i32 1
  %41 = icmp ne ptr %40, null
  %42 = icmp ult ptr %40, %17
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %26, label %44

44:                                               ; preds = %37, %33, %30, %26, %11
  %45 = tail call i32 @trace_handle_return(ptr noundef %4) #11
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_user_stack_print(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %6 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 8
  %8 = load i16, ptr %7, align 4
  %9 = icmp eq i16 %8, 12
  br i1 %9, label %11, label %10, !prof !8

10:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1127, i32 noundef 9, ptr noundef null) #11
  br label %11

11:                                               ; preds = %10, %3
  tail call void @trace_seq_puts(ptr noundef %5, ptr noundef nonnull @.str.40) #11
  %12 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 14
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 2048
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !16
  %17 = getelementptr inbounds %struct.userstack_entry, ptr %7, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = tail call ptr @find_task_by_vpid(i32 noundef %18) #11
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = tail call ptr @get_task_mm(ptr noundef nonnull %19) #11
  br label %23

23:                                               ; preds = %21, %16
  %24 = phi ptr [ %22, %21 ], [ null, %16 ]
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !17
  br label %25

25:                                               ; preds = %23, %11
  %26 = phi ptr [ %24, %23 ], [ null, %11 ]
  %27 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15, i32 2
  %28 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15, i32 1, i32 2
  %29 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15, i32 1, i32 1
  %30 = icmp eq ptr %26, null
  %31 = getelementptr inbounds %struct.anon, ptr %26, i32 0, i32 15
  %32 = and i32 %1, 4
  %33 = icmp eq i32 %32, 0
  br label %34

34:                                               ; preds = %83, %25
  %35 = phi i32 [ 0, %25 ], [ %84, %83 ]
  %36 = getelementptr %struct.userstack_entry, ptr %7, i32 0, i32 2, i32 %35
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %86, label %39

39:                                               ; preds = %34
  %40 = load i32, ptr %27, align 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %86

42:                                               ; preds = %39
  %43 = load i32, ptr %28, align 8
  %44 = load i32, ptr %29, align 4
  %45 = icmp ugt i32 %43, %44
  br i1 %45, label %86, label %46

46:                                               ; preds = %42
  tail call void @trace_seq_puts(ptr noundef %5, ptr noundef nonnull @.str.39) #11
  %47 = load i32, ptr %27, align 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %83

49:                                               ; preds = %46
  br i1 %30, label %82, label %50

50:                                               ; preds = %49
  %51 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef nonnull %26, i1 noundef zeroext false) #11
  br label %54

54:                                               ; preds = %53, %50
  tail call void @down_read(ptr noundef %31) #11
  %55 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef nonnull %26, i1 noundef zeroext false, i1 noundef zeroext true) #11
  br label %58

58:                                               ; preds = %57, %54
  %59 = tail call ptr @find_vma(ptr noundef nonnull %26, i32 noundef %37) #11
  %60 = icmp eq ptr %59, null
  br i1 %60, label %72, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.vm_area_struct, ptr %59, i32 0, i32 14
  %63 = load ptr, ptr %62, align 4
  %64 = load i32, ptr %59, align 4
  %65 = icmp eq ptr %63, null
  br i1 %65, label %72, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.file, ptr %63, i32 0, i32 1
  %68 = tail call i32 @trace_seq_path(ptr noundef %5, ptr noundef %67) #11
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %66
  %71 = sub i32 %37, %64
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %5, ptr noundef nonnull @.str.41, i32 noundef %71) #11
  br label %72

72:                                               ; preds = %70, %66, %61, %58
  %73 = phi ptr [ %63, %70 ], [ %63, %66 ], [ null, %61 ], [ null, %58 ]
  %74 = phi i1 [ false, %70 ], [ true, %66 ], [ false, %61 ], [ false, %58 ]
  %75 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  tail call void @__mmap_lock_do_trace_released(ptr noundef nonnull %26, i1 noundef zeroext false) #11
  br label %78

78:                                               ; preds = %77, %72
  tail call void @up_read(ptr noundef %31) #11
  %79 = icmp ne ptr %73, null
  %80 = select i1 %33, i1 %79, i1 false
  %81 = select i1 %74, i1 true, i1 %80
  br i1 %81, label %83, label %82

82:                                               ; preds = %78, %49
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %5, ptr noundef nonnull @.str.12, i32 noundef %37) #11
  br label %83

83:                                               ; preds = %82, %78, %46
  tail call void @trace_seq_putc(ptr noundef %5, i8 noundef zeroext 10) #11
  %84 = add nuw nsw i32 %35, 1
  %85 = icmp eq i32 %84, 8
  br i1 %85, label %86, label %34

86:                                               ; preds = %83, %42, %39, %34
  br i1 %30, label %88, label %87

87:                                               ; preds = %86
  tail call void @mmput(ptr noundef nonnull %26) #11
  br label %88

88:                                               ; preds = %87, %86
  %89 = tail call i32 @trace_handle_return(ptr noundef %5) #11
  ret i32 %89
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_task_by_vpid(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_task_mm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_seq_path(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_bputs_print(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = load i16, ptr %5, align 4
  %7 = icmp eq i16 %6, 14
  br i1 %7, label %9, label %8, !prof !8

8:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1359, i32 noundef 9, ptr noundef null) #11
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.bputs_entry, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @seq_print_ip_sym(ptr noundef %10, i32 noundef %12, i32 noundef %1)
  tail call void @trace_seq_puts(ptr noundef %10, ptr noundef nonnull @.str.19) #11
  %14 = getelementptr inbounds %struct.bputs_entry, ptr %5, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  tail call void @trace_seq_puts(ptr noundef %10, ptr noundef %15) #11
  %16 = tail call i32 @trace_handle_return(ptr noundef %10) #11
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_bputs_raw(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = load i16, ptr %5, align 4
  %7 = icmp eq i16 %6, 14
  br i1 %7, label %9, label %8, !prof !8

8:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1376, i32 noundef 9, ptr noundef null) #11
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.bputs_entry, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %10, ptr noundef nonnull @.str.42, i32 noundef %12) #11
  %13 = getelementptr inbounds %struct.bputs_entry, ptr %5, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  tail call void @trace_seq_puts(ptr noundef %10, ptr noundef %14) #11
  %15 = tail call i32 @trace_handle_return(ptr noundef %10) #11
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_bprint_print(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = load i16, ptr %5, align 4
  %7 = icmp eq i16 %6, 6
  br i1 %7, label %9, label %8, !prof !8

8:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1403, i32 noundef 9, ptr noundef null) #11
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.bprint_entry, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @seq_print_ip_sym(ptr noundef %10, i32 noundef %12, i32 noundef %1)
  tail call void @trace_seq_puts(ptr noundef %10, ptr noundef nonnull @.str.19) #11
  %14 = getelementptr inbounds %struct.bprint_entry, ptr %5, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.bprint_entry, ptr %5, i32 0, i32 3
  tail call void @trace_seq_bprintf(ptr noundef %10, ptr noundef %15, ptr noundef %16) #11
  %17 = tail call i32 @trace_handle_return(ptr noundef %10) #11
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_bprint_raw(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = load i16, ptr %5, align 4
  %7 = icmp eq i16 %6, 6
  br i1 %7, label %9, label %8, !prof !8

8:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1420, i32 noundef 9, ptr noundef null) #11
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.bprint_entry, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %10, ptr noundef nonnull @.str.42, i32 noundef %12) #11
  %13 = getelementptr inbounds %struct.bprint_entry, ptr %5, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.bprint_entry, ptr %5, i32 0, i32 3
  tail call void @trace_seq_bprintf(ptr noundef %10, ptr noundef %14, ptr noundef %15) #11
  %16 = tail call i32 @trace_handle_return(ptr noundef %10) #11
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_print_print(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = load i16, ptr %5, align 4
  %7 = icmp eq i16 %6, 5
  br i1 %7, label %9, label %8, !prof !8

8:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1445, i32 noundef 9, ptr noundef null) #11
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.print_entry, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @seq_print_ip_sym(ptr noundef %10, i32 noundef %12, i32 noundef %1)
  %14 = getelementptr inbounds %struct.print_entry, ptr %5, i32 0, i32 2
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %10, ptr noundef nonnull @.str.43, ptr noundef %14) #11
  %15 = tail call i32 @trace_handle_return(ptr noundef %10) #11
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_print_raw(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = load i16, ptr %5, align 4
  %7 = icmp eq i16 %6, 5
  br i1 %7, label %9, label %8, !prof !8

8:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1458, i32 noundef 9, ptr noundef null) #11
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.print_entry, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.print_entry, ptr %5, i32 0, i32 2
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %10, ptr noundef nonnull @.str.44, i32 noundef %12, ptr noundef %13) #11
  %14 = tail call i32 @trace_handle_return(ptr noundef %10) #11
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_hwlat_print(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %7 = load i16, ptr %5, align 4
  %8 = icmp eq i16 %7, 15
  br i1 %8, label %10, label %9, !prof !8

9:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1179, i32 noundef 9, ptr noundef null) #11
  br label %10

10:                                               ; preds = %9, %3
  %11 = getelementptr inbounds %struct.hwlat_entry, ptr %5, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.hwlat_entry, ptr %5, i32 0, i32 1
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr inbounds %struct.hwlat_entry, ptr %5, i32 0, i32 2
  %16 = load i64, ptr %15, align 8
  %17 = getelementptr inbounds %struct.hwlat_entry, ptr %5, i32 0, i32 4
  %18 = load i64, ptr %17, align 8
  %19 = getelementptr inbounds %struct.hwlat_entry, ptr %5, i32 0, i32 4, i32 1
  %20 = load i32, ptr %19, align 8
  %21 = getelementptr inbounds %struct.hwlat_entry, ptr %5, i32 0, i32 7
  %22 = load i32, ptr %21, align 8
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %6, ptr noundef nonnull @.str.45, i32 noundef %12, i64 noundef %14, i64 noundef %16, i64 noundef %18, i32 noundef %20, i32 noundef %22) #11
  %23 = getelementptr inbounds %struct.hwlat_entry, ptr %5, i32 0, i32 5
  %24 = load i32, ptr %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %6, ptr noundef nonnull @.str.46, i32 noundef %24) #11
  br label %27

27:                                               ; preds = %26, %10
  tail call void @trace_seq_putc(ptr noundef %6, i8 noundef zeroext 10) #11
  %28 = tail call i32 @trace_handle_return(ptr noundef %6) #11
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_hwlat_raw(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = load i16, ptr %5, align 4
  %7 = icmp eq i16 %6, 15
  br i1 %7, label %9, label %8, !prof !8

8:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1212, i32 noundef 9, ptr noundef null) #11
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.hwlat_entry, ptr %5, i32 0, i32 1
  %12 = load i64, ptr %11, align 8
  %13 = getelementptr inbounds %struct.hwlat_entry, ptr %5, i32 0, i32 2
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr inbounds %struct.hwlat_entry, ptr %5, i32 0, i32 4
  %16 = load i64, ptr %15, align 8
  %17 = getelementptr inbounds %struct.hwlat_entry, ptr %5, i32 0, i32 4, i32 1
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr inbounds %struct.hwlat_entry, ptr %5, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %10, ptr noundef nonnull @.str.47, i64 noundef %12, i64 noundef %14, i64 noundef %16, i32 noundef %18, i32 noundef %20) #11
  %21 = tail call i32 @trace_handle_return(ptr noundef %10) #11
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_osnoise_print(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = load i16, ptr %5, align 4
  %7 = icmp eq i16 %6, 16
  br i1 %7, label %9, label %8, !prof !8

8:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1245, i32 noundef 9, ptr noundef null) #11
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds %struct.osnoise_entry, ptr %5, i32 0, i32 2
  %11 = load i64, ptr %10, align 8
  %12 = getelementptr inbounds %struct.osnoise_entry, ptr %5, i32 0, i32 1
  %13 = load i64, ptr %12, align 8
  %14 = sub i64 %11, %13
  %15 = mul i64 %14, 10000000
  %16 = trunc i64 %11 to i32
  %17 = icmp ult i64 %15, 4294967296
  br i1 %17, label %18, label %22, !prof !8

18:                                               ; preds = %9
  %19 = trunc i64 %15 to i32
  %20 = udiv i32 %19, %16
  %21 = zext i32 %20 to i64
  br label %25

22:                                               ; preds = %9
  %23 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %16, i64 %15) #12, !srcloc !18
  %24 = extractvalue { i64, i64 } %23, 1
  br label %25

25:                                               ; preds = %22, %18
  %26 = phi i64 [ %21, %18 ], [ %24, %22 ]
  %27 = trunc i64 %26 to i32
  %28 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6357485877563259869, i64 %26, i32 0) #12, !srcloc !14
  %29 = extractvalue { i64, i32 } %28, 0
  %30 = extractvalue { i64, i32 } %28, 1
  %31 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6357485877563259869, i64 %26, i64 %29, i32 %30) #12, !srcloc !13
  %32 = extractvalue { i64, i32 } %31, 0
  %33 = lshr i64 %32, 16
  %34 = trunc i64 %33 to i32
  %35 = mul i32 %34, -100000
  %36 = add i32 %35, %27
  %37 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %38 = zext i32 %36 to i64
  %39 = getelementptr inbounds %struct.osnoise_entry, ptr %5, i32 0, i32 3
  %40 = load i64, ptr %39, align 8
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %37, ptr noundef nonnull @.str.48, i64 noundef %11, i64 noundef %13, i64 noundef %33, i64 noundef %38, i64 noundef %40) #11
  %41 = getelementptr inbounds %struct.osnoise_entry, ptr %5, i32 0, i32 4
  %42 = load i32, ptr %41, align 8
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %37, ptr noundef nonnull @.str.49, i32 noundef %42) #11
  %43 = getelementptr inbounds %struct.osnoise_entry, ptr %5, i32 0, i32 5
  %44 = load i32, ptr %43, align 4
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %37, ptr noundef nonnull @.str.49, i32 noundef %44) #11
  %45 = getelementptr inbounds %struct.osnoise_entry, ptr %5, i32 0, i32 6
  %46 = load i32, ptr %45, align 8
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %37, ptr noundef nonnull @.str.49, i32 noundef %46) #11
  %47 = getelementptr inbounds %struct.osnoise_entry, ptr %5, i32 0, i32 7
  %48 = load i32, ptr %47, align 4
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %37, ptr noundef nonnull @.str.49, i32 noundef %48) #11
  %49 = getelementptr inbounds %struct.osnoise_entry, ptr %5, i32 0, i32 8
  %50 = load i32, ptr %49, align 8
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %37, ptr noundef nonnull @.str.49, i32 noundef %50) #11
  tail call void @trace_seq_putc(ptr noundef %37, i8 noundef zeroext 10) #11
  %51 = tail call i32 @trace_handle_return(ptr noundef %37) #11
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_osnoise_raw(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = load i16, ptr %5, align 4
  %7 = icmp eq i16 %6, 16
  br i1 %7, label %9, label %8, !prof !8

8:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1279, i32 noundef 9, ptr noundef null) #11
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.osnoise_entry, ptr %5, i32 0, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = getelementptr inbounds %struct.osnoise_entry, ptr %5, i32 0, i32 1
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr inbounds %struct.osnoise_entry, ptr %5, i32 0, i32 3
  %16 = load i64, ptr %15, align 8
  %17 = getelementptr inbounds %struct.osnoise_entry, ptr %5, i32 0, i32 4
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr inbounds %struct.osnoise_entry, ptr %5, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.osnoise_entry, ptr %5, i32 0, i32 6
  %22 = load i32, ptr %21, align 8
  %23 = getelementptr inbounds %struct.osnoise_entry, ptr %5, i32 0, i32 7
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.osnoise_entry, ptr %5, i32 0, i32 8
  %26 = load i32, ptr %25, align 8
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %10, ptr noundef nonnull @.str.50, i64 noundef %12, i64 noundef %14, i64 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef %26) #11
  %27 = tail call i32 @trace_handle_return(ptr noundef %10) #11
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_timerlat_print(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = load i16, ptr %5, align 4
  %7 = icmp eq i16 %6, 17
  br i1 %7, label %9, label %8, !prof !8

8:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1313, i32 noundef 9, ptr noundef null) #11
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.timerlat_entry, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.timerlat_entry, ptr %5, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, ptr @.str.53, ptr @.str.52
  %17 = getelementptr inbounds %struct.timerlat_entry, ptr %5, i32 0, i32 3
  %18 = load i64, ptr %17, align 8
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %10, ptr noundef nonnull @.str.51, i32 noundef %12, ptr noundef nonnull %16, i64 noundef %18) #11
  %19 = tail call i32 @trace_handle_return(ptr noundef %10) #11
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_timerlat_raw(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = load i16, ptr %5, align 4
  %7 = icmp eq i16 %6, 17
  br i1 %7, label %9, label %8, !prof !8

8:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1330, i32 noundef 9, ptr noundef null) #11
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.timerlat_entry, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.timerlat_entry, ptr %5, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.timerlat_entry, ptr %5, i32 0, i32 3
  %16 = load i64, ptr %15, align 8
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %10, ptr noundef nonnull @.str.54, i32 noundef %12, i32 noundef %14, i64 noundef %16) #11
  %17 = tail call i32 @trace_handle_return(ptr noundef %10) #11
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_data(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = load i16, ptr %5, align 4
  %7 = icmp eq i16 %6, 18
  br i1 %7, label %9, label %8, !prof !8

8:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1481, i32 noundef 9, ptr noundef null) #11
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.raw_data_entry, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %10, ptr noundef nonnull @.str.55, i32 noundef %12) #11
  %13 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 19
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 12
  br i1 %15, label %25, label %16

16:                                               ; preds = %16, %9
  %17 = phi i32 [ %21, %16 ], [ 0, %9 ]
  %18 = getelementptr %struct.raw_data_entry, ptr %5, i32 0, i32 2, i32 %17
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %10, ptr noundef nonnull @.str.56, i32 noundef %20) #11
  %21 = add nuw i32 %17, 1
  %22 = load i32, ptr %13, align 4
  %23 = add i32 %22, -12
  %24 = icmp ult i32 %21, %23
  br i1 %24, label %16, label %25

25:                                               ; preds = %16, %9
  tail call void @trace_seq_putc(ptr noundef %10, i8 noundef zeroext 10) #11
  %26 = tail call i32 @trace_handle_return(ptr noundef %10) #11
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_func_repeats_print(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = load i16, ptr %5, align 4
  %7 = icmp eq i16 %6, 19
  br i1 %7, label %9, label %8, !prof !8

8:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1529, i32 noundef 9, ptr noundef null) #11
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.func_repeats_entry, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.func_repeats_entry, ptr %5, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @seq_print_ip_sym(ptr noundef %10, i32 noundef %12, i32 noundef %1) #11
  %16 = and i32 %1, 1
  %17 = icmp ne i32 %16, 0
  %18 = icmp ne i32 %14, 0
  %19 = and i1 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %9
  tail call void @trace_seq_puts(ptr noundef %10, ptr noundef nonnull @.str.32) #11
  %21 = tail call i32 @seq_print_ip_sym(ptr noundef %10, i32 noundef %14, i32 noundef %1) #11
  br label %22

22:                                               ; preds = %20, %9
  %23 = getelementptr inbounds %struct.func_repeats_entry, ptr %5, i32 0, i32 3
  %24 = load i16, ptr %23, align 4
  %25 = zext i16 %24 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %10, ptr noundef nonnull @.str.57, i32 noundef %25) #11
  %26 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 21
  %27 = load i64, ptr %26, align 8
  %28 = getelementptr inbounds %struct.func_repeats_entry, ptr %5, i32 0, i32 4
  %29 = load i16, ptr %28, align 2
  %30 = zext i16 %29 to i64
  %31 = shl nuw nsw i64 %30, 32
  %32 = getelementptr inbounds %struct.func_repeats_entry, ptr %5, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = zext i32 %33 to i64
  %35 = or i64 %31, %34
  %36 = sub i64 %27, %35
  %37 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 7
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %22
  %42 = tail call i64 @ns2usecs(i64 noundef %36) #11
  %43 = trunc i64 %42 to i32
  %44 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %42) #12, !srcloc !12
  %45 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %42, i64 %44, i32 0) #12, !srcloc !13
  %46 = extractvalue { i64, i32 } %45, 0
  %47 = lshr i64 %46, 18
  %48 = trunc i64 %47 to i32
  %49 = mul i32 %48, -1000000
  %50 = add i32 %49, %43
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %10, ptr noundef nonnull @.str.24, i32 noundef %48, i32 noundef %50) #11
  br label %52

51:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %10, ptr noundef nonnull @.str.25, i64 noundef %36) #11
  br label %52

52:                                               ; preds = %51, %41
  tail call void @trace_seq_puts(ptr noundef %10, ptr noundef nonnull @.str.58) #11
  %53 = tail call i32 @trace_handle_return(ptr noundef %10) #11
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_func_repeats_raw(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = load i16, ptr %5, align 4
  %7 = icmp eq i16 %6, 19
  br i1 %7, label %9, label %8, !prof !8

8:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1511, i32 noundef 9, ptr noundef null) #11
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.func_repeats_entry, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.func_repeats_entry, ptr %5, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.func_repeats_entry, ptr %5, i32 0, i32 3
  %16 = load i16, ptr %15, align 4
  %17 = zext i16 %16 to i32
  %18 = getelementptr inbounds %struct.func_repeats_entry, ptr %5, i32 0, i32 4
  %19 = load i16, ptr %18, align 2
  %20 = zext i16 %19 to i64
  %21 = shl nuw nsw i64 %20, 32
  %22 = getelementptr inbounds %struct.func_repeats_entry, ptr %5, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = zext i32 %23 to i64
  %25 = or i64 %21, %24
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %10, ptr noundef nonnull @.str.59, i32 noundef %12, i32 noundef %14, i32 noundef %17, i64 noundef %25) #11
  %26 = tail call i32 @trace_handle_return(ptr noundef %10) #11
  ret i32 %26
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.peeled.count", i32 1}
!11 = !{!"auto-init"}
!12 = !{i64 438497, i64 438524}
!13 = !{i64 439192, i64 439219, i64 439252, i64 439273, i64 439300, i64 439326}
!14 = !{i64 438784, i64 438811, i64 438833, i64 438861}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i64 2149078806}
!17 = !{i64 2149079023}
!18 = !{i64 2147924328, i64 2147924608, i64 2147924942, i64 2147925276}
