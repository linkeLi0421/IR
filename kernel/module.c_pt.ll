; ModuleID = '/llk/IR/kernel/module.c_pt.bc'
source_filename = "../kernel/module.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_is_module_sig_enforced:\09\09\09\09\09"
module asm "\09.asciz \09\22is_module_sig_enforced\22\09\09\09\09\09"
module asm "__kstrtabns_is_module_sig_enforced:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_module_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22register_module_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_register_module_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_module_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_module_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_module_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___module_put_and_kthread_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22__module_put_and_kthread_exit\22\09\09\09\09\09"
module asm "__kstrtabns___module_put_and_kthread_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_module_get:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_module_get\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_module_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_module_get:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_module_get\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_module_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_module_get:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_module_get\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_module_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_module_refcount:\09\09\09\09\09"
module asm "\09.asciz \09\22module_refcount\22\09\09\09\09\09"
module asm "__kstrtabns_module_refcount:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___symbol_put:\09\09\09\09\09"
module asm "\09.asciz \09\22__symbol_put\22\09\09\09\09\09"
module asm "__kstrtabns___symbol_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_symbol_put_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22symbol_put_addr\22\09\09\09\09\09"
module asm "__kstrtabns_symbol_put_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___module_get:\09\09\09\09\09"
module asm "\09.asciz \09\22__module_get\22\09\09\09\09\09"
module asm "__kstrtabns___module_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_try_module_get:\09\09\09\09\09"
module asm "\09.asciz \09\22try_module_get\22\09\09\09\09\09"
module asm "__kstrtabns_try_module_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_module_put:\09\09\09\09\09"
module asm "\09.asciz \09\22module_put\22\09\09\09\09\09"
module asm "__kstrtabns_module_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___symbol_get:\09\09\09\09\09"
module asm "\09.asciz \09\22__symbol_get\22\09\09\09\09\09"
module asm "__kstrtabns___symbol_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.66 }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.68, %struct.trace_event, ptr, ptr, %union.anon.69, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.69 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.mod_tree_root = type { %struct.latch_tree_root, i32, i32 }
%struct.latch_tree_root = type { %struct.seqcount_latch_t, [2 x %struct.rb_root] }
%struct.seqcount_latch_t = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.rb_root = type { ptr }
%struct.trace_print_flags = type { i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.symsearch = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type {}
%struct.taint_flag = type { i8, i8, i8 }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.trace_event_raw_module_load = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.trace_event_raw_module_free = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_module_refcnt = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_module_request = type { %struct.trace_entry, i32, i8, i32, [0 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.find_symbol_arg = type { ptr, i8, i8, ptr, ptr, ptr, i32 }
%struct.load_info = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, i8, i32, %struct.anon.93 }
%struct.anon.93 = type { i32, i32, i32, i32, i32, i32 }
%struct.elf32_sym = type { i32, i32, i32, i8, i8, i16 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.module_notes_attrs = type { ptr, i32, [0 x %struct.bin_attribute] }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.module_sect_attrs = type { %struct.attribute_group, i32, [0 x %struct.module_sect_attr] }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.module_sect_attr = type { %struct.bin_attribute, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.elf32_hdr = type { [16 x i8], i16, i16, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.elf32_shdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.exception_table_entry = type { i32, i32 }
%struct.mod_initfree = type { %struct.llist_node, ptr }
%struct.llist_node = type { ptr }
%struct.module_use = type { %struct.list_head, %struct.list_head, ptr, ptr }
%struct.vm_struct = type { ptr, ptr, i32, i32, ptr, i32, i32, ptr }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__tpstrtab_module_load = internal constant [12 x i8] c"module_load\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_module_load = dso_local global %struct.static_call_key { ptr @__traceiter_module_load }, align 4
@__tracepoint_module_load = dso_local global %struct.tracepoint { ptr @__tpstrtab_module_load, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_module_load, ptr null, ptr @__traceiter_module_load, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_module_load = internal constant ptr @__tracepoint_module_load, section "__tracepoints_ptrs", align 4
@__tpstrtab_module_free = internal constant [12 x i8] c"module_free\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_module_free = dso_local global %struct.static_call_key { ptr @__traceiter_module_free }, align 4
@__tracepoint_module_free = dso_local global %struct.tracepoint { ptr @__tpstrtab_module_free, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_module_free, ptr null, ptr @__traceiter_module_free, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_module_free = internal constant ptr @__tracepoint_module_free, section "__tracepoints_ptrs", align 4
@__tpstrtab_module_get = internal constant [11 x i8] c"module_get\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_module_get = dso_local global %struct.static_call_key { ptr @__traceiter_module_get }, align 4
@__tracepoint_module_get = dso_local global %struct.tracepoint { ptr @__tpstrtab_module_get, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_module_get, ptr null, ptr @__traceiter_module_get, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_module_get = internal constant ptr @__tracepoint_module_get, section "__tracepoints_ptrs", align 4
@__tpstrtab_module_put = internal constant [11 x i8] c"module_put\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_module_put = dso_local global %struct.static_call_key { ptr @__traceiter_module_put }, align 4
@__tracepoint_module_put = dso_local global %struct.tracepoint { ptr @__tpstrtab_module_put, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_module_put, ptr null, ptr @__traceiter_module_put, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_module_put = internal constant ptr @__tracepoint_module_put, section "__tracepoints_ptrs", align 4
@__tpstrtab_module_request = internal constant [15 x i8] c"module_request\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_module_request = dso_local global %struct.static_call_key { ptr @__traceiter_module_request }, align 4
@__tracepoint_module_request = dso_local global %struct.tracepoint { ptr @__tpstrtab_module_request, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_module_request, ptr null, ptr @__traceiter_module_request, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_module_request = internal constant ptr @__tracepoint_module_request, section "__tracepoints_ptrs", align 4
@str__module__trace_system_name = internal constant [7 x i8] c"module\00", align 1
@trace_event_fields_module_load = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.9, %union.anon.66 { %struct.anon.67 { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.66 { %struct.anon.67 { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_module_load = internal global %struct.trace_event_class { ptr @str__module__trace_system_name, ptr @trace_event_raw_event_module_load, ptr @perf_trace_module_load, ptr @trace_event_reg, ptr @trace_event_fields_module_load, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_module_load, i64 24), ptr getelementptr (i8, ptr @event_class_module_load, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_module_load = internal global %struct.trace_event_functions { ptr @trace_raw_output_module_load, ptr null, ptr null, ptr null }, align 4
@print_fmt_module_load = internal global [165 x i8] c"\22%s %s\22, __get_str(name), __print_flags(REC->taints, \22\22, { (1UL << 0), \22P\22 }, { (1UL << 12), \22O\22 }, { (1UL << 1), \22F\22 }, { (1UL << 10), \22C\22 }, { (1UL << 13), \22E\22 })\00", align 1
@event_module_load = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_module_load, %union.anon.68 { ptr @__tracepoint_module_load }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_module_load }, ptr @print_fmt_module_load, ptr null, %union.anon.69 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_module_load = internal global ptr @event_module_load, section "_ftrace_events", align 4
@trace_event_fields_module_free = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.11, %union.anon.66 { %struct.anon.67 { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_module_free = internal global %struct.trace_event_class { ptr @str__module__trace_system_name, ptr @trace_event_raw_event_module_free, ptr @perf_trace_module_free, ptr @trace_event_reg, ptr @trace_event_fields_module_free, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_module_free, i64 24), ptr getelementptr (i8, ptr @event_class_module_free, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_module_free = internal global %struct.trace_event_functions { ptr @trace_raw_output_module_free, ptr null, ptr null, ptr null }, align 4
@print_fmt_module_free = internal global [22 x i8] c"\22%s\22, __get_str(name)\00", align 1
@event_module_free = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_module_free, %union.anon.68 { ptr @__tracepoint_module_free }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_module_free }, ptr @print_fmt_module_free, ptr null, %union.anon.69 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_module_free = internal global ptr @event_module_free, section "_ftrace_events", align 4
@trace_event_fields_module_refcnt = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.21, %union.anon.66 { %struct.anon.67 { ptr @.str.22, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.23, %union.anon.66 { %struct.anon.67 { ptr @.str.24, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.66 { %struct.anon.67 { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_module_refcnt = internal global %struct.trace_event_class { ptr @str__module__trace_system_name, ptr @trace_event_raw_event_module_refcnt, ptr @perf_trace_module_refcnt, ptr @trace_event_reg, ptr @trace_event_fields_module_refcnt, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_module_refcnt, i64 24), ptr getelementptr (i8, ptr @event_class_module_refcnt, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_module_refcnt = internal global %struct.trace_event_functions { ptr @trace_raw_output_module_refcnt, ptr null, ptr null, ptr null }, align 4
@print_fmt_module_refcnt = internal global [76 x i8] c"\22%s call_site=%ps refcnt=%d\22, __get_str(name), (void *)REC->ip, REC->refcnt\00", align 1
@event_module_get = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_module_refcnt, %union.anon.68 { ptr @__tracepoint_module_get }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_module_refcnt }, ptr @print_fmt_module_refcnt, ptr null, %union.anon.69 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_module_get = internal global ptr @event_module_get, section "_ftrace_events", align 4
@event_module_put = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_module_refcnt, %union.anon.68 { ptr @__tracepoint_module_put }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_module_refcnt }, ptr @print_fmt_module_refcnt, ptr null, %union.anon.69 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_module_put = internal global ptr @event_module_put, section "_ftrace_events", align 4
@trace_event_fields_module_request = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.21, %union.anon.66 { %struct.anon.67 { ptr @.str.22, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.26, %union.anon.66 { %struct.anon.67 { ptr @.str.27, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.66 { %struct.anon.67 { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_module_request = internal global %struct.trace_event_class { ptr @str__module__trace_system_name, ptr @trace_event_raw_event_module_request, ptr @perf_trace_module_request, ptr @trace_event_reg, ptr @trace_event_fields_module_request, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_module_request, i64 24), ptr getelementptr (i8, ptr @event_class_module_request, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_module_request = internal global %struct.trace_event_functions { ptr @trace_raw_output_module_request, ptr null, ptr null, ptr null }, align 4
@print_fmt_module_request = internal global [77 x i8] c"\22%s wait=%d call_site=%ps\22, __get_str(name), (int)REC->wait, (void *)REC->ip\00", align 1
@event_module_request = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_module_request, %union.anon.68 { ptr @__tracepoint_module_request }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_module_request }, ptr @print_fmt_module_request, ptr null, %union.anon.69 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_module_request = internal global ptr @event_module_request, section "_ftrace_events", align 4
@__kstrtab_is_module_sig_enforced = external dso_local constant [0 x i8], align 1
@__kstrtabns_is_module_sig_enforced = external dso_local constant [0 x i8], align 1
@__ksymtab_is_module_sig_enforced = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @is_module_sig_enforced to i32), ptr @__kstrtab_is_module_sig_enforced, ptr @__kstrtabns_is_module_sig_enforced }, section "___ksymtab+is_module_sig_enforced", align 4
@modules_disabled = dso_local global i32 0, align 4
@__param_str_nomodule = internal constant [9 x i8] c"nomodule\00", align 1
@param_ops_bint = external dso_local constant %struct.kernel_param_ops, align 4
@__param_nomodule = internal constant %struct.kernel_param { ptr @__param_str_nomodule, ptr null, ptr @param_ops_bint, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @modules_disabled } }, section "__param", align 4
@module_notify_list = internal global %struct.blocking_notifier_head { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @module_notify_list, i64 16), ptr getelementptr (i8, ptr @module_notify_list, i64 16) } }, ptr null }, align 4
@__kstrtab_register_module_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_module_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_register_module_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_module_notifier to i32), ptr @__kstrtab_register_module_notifier, ptr @__kstrtabns_register_module_notifier }, section "___ksymtab+register_module_notifier", align 4
@__kstrtab_unregister_module_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_module_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_module_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_module_notifier to i32), ptr @__kstrtab_unregister_module_notifier, ptr @__kstrtabns_unregister_module_notifier }, section "___ksymtab+unregister_module_notifier", align 4
@__kstrtab___module_put_and_kthread_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns___module_put_and_kthread_exit = external dso_local constant [0 x i8], align 1
@__ksymtab___module_put_and_kthread_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__module_put_and_kthread_exit to i32), ptr @__kstrtab___module_put_and_kthread_exit, ptr @__kstrtabns___module_put_and_kthread_exit }, section "___ksymtab+__module_put_and_kthread_exit", align 4
@modules = internal global %struct.list_head { ptr @modules, ptr @modules }, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@__kstrtab___tracepoint_module_get = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_module_get = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_module_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_module_get to i32), ptr @__kstrtab___tracepoint_module_get, ptr @__kstrtabns___tracepoint_module_get }, section "___ksymtab+__tracepoint_module_get", align 4
@__kstrtab___traceiter_module_get = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_module_get = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_module_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_module_get to i32), ptr @__kstrtab___traceiter_module_get, ptr @__kstrtabns___traceiter_module_get }, section "___ksymtab+__traceiter_module_get", align 4
@__kstrtab___SCK__tp_func_module_get = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_module_get = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_module_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_module_get to i32), ptr @__kstrtab___SCK__tp_func_module_get, ptr @__kstrtabns___SCK__tp_func_module_get }, section "___ksymtab+__SCK__tp_func_module_get", align 4
@__kstrtab_module_refcount = external dso_local constant [0 x i8], align 1
@__kstrtabns_module_refcount = external dso_local constant [0 x i8], align 1
@__ksymtab_module_refcount = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @module_refcount to i32), ptr @__kstrtab_module_refcount, ptr @__kstrtabns_module_refcount }, section "___ksymtab+module_refcount", align 4
@__kstrtab___symbol_put = external dso_local constant [0 x i8], align 1
@__kstrtabns___symbol_put = external dso_local constant [0 x i8], align 1
@__ksymtab___symbol_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__symbol_put to i32), ptr @__kstrtab___symbol_put, ptr @__kstrtabns___symbol_put }, section "___ksymtab+__symbol_put", align 4
@__kstrtab_symbol_put_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_symbol_put_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_symbol_put_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @symbol_put_addr to i32), ptr @__kstrtab_symbol_put_addr, ptr @__kstrtabns_symbol_put_addr }, section "___ksymtab_gpl+symbol_put_addr", align 4
@__kstrtab___module_get = external dso_local constant [0 x i8], align 1
@__kstrtabns___module_get = external dso_local constant [0 x i8], align 1
@__ksymtab___module_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__module_get to i32), ptr @__kstrtab___module_get, ptr @__kstrtabns___module_get }, section "___ksymtab+__module_get", align 4
@__kstrtab_try_module_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_try_module_get = external dso_local constant [0 x i8], align 1
@__ksymtab_try_module_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @try_module_get to i32), ptr @__kstrtab_try_module_get, ptr @__kstrtabns_try_module_get }, section "___ksymtab+try_module_get", align 4
@.str = private unnamed_addr constant [16 x i8] c"kernel/module.c\00", align 1
@__kstrtab_module_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_module_put = external dso_local constant [0 x i8], align 1
@__ksymtab_module_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @module_put to i32), ptr @__kstrtab_module_put, ptr @__kstrtabns_module_put }, section "___ksymtab+module_put", align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"uevent\00", align 1
@module_uevent = dso_local global %struct.module_attribute { %struct.attribute { ptr @.str.1, i16 128 }, ptr null, ptr @store_uevent, ptr null, ptr null, ptr null }, align 4
@__kstrtab___symbol_get = external dso_local constant [0 x i8], align 1
@__kstrtabns___symbol_get = external dso_local constant [0 x i8], align 1
@__ksymtab___symbol_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__symbol_get to i32), ptr @__kstrtab___symbol_get, ptr @__kstrtabns___symbol_get }, section "___ksymtab_gpl+__symbol_get", align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c".init\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c".exit\00", align 1
@__param_str_module_blacklist = internal constant [17 x i8] c"module_blacklist\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@module_blacklist = internal global ptr null, align 4
@__param_module_blacklist = internal constant %struct.kernel_param { ptr @__param_str_module_blacklist, ptr null, ptr @param_ops_charp, i16 256, i8 -1, i8 0, %union.anon.65 { ptr @module_blacklist } }, section "__param", align 4
@__initcall__kmod_module__291_4666_proc_modules_init6 = internal global ptr @proc_modules_init, section ".initcall6.init", align 4
@mod_tree = internal global %struct.mod_tree_root { %struct.latch_tree_root zeroinitializer, i32 -1, i32 0 }, section ".data..cacheline_aligned", align 64
@.str.4 = private unnamed_addr constant [19 x i8] c"Modules linked in:\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"\01c %s%s\00", align 1
@last_unloaded_module = internal global [61 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"\01c [last unloaded: %s]\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"\01c\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"taints\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"__data_loc char[]\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@trace_raw_output_module_load.__flags = internal constant [6 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 1, ptr @.str.14 }, %struct.trace_print_flags { i32 4096, ptr @.str.15 }, %struct.trace_print_flags { i32 2, ptr @.str.16 }, %struct.trace_print_flags { i32 1024, ptr @.str.17 }, %struct.trace_print_flags { i32 8192, ptr @.str.18 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.14 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"ip\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"refcnt\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"%s call_site=%ps refcnt=%d\0A\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"wait\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"%s wait=%d call_site=%ps\0A\00", align 1
@__boot_cpu_id = external dso_local local_unnamed_addr global i32, align 4
@module_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @module_mutex, i64 12), ptr getelementptr (i8, ptr @module_mutex, i64 12) } }, align 4
@module_wq = internal global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @module_wq, i64 4), ptr getelementptr (i8, ptr @module_wq, i64 4) } }, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@find_symbol.arr = internal unnamed_addr constant [2 x %struct.symsearch] [%struct.symsearch { ptr @__start___ksymtab, ptr @__stop___ksymtab, ptr @__start___kcrctab, i32 0 }, %struct.symsearch { ptr @__start___ksymtab_gpl, ptr @__stop___ksymtab_gpl, ptr @__start___kcrctab_gpl, i32 1 }], align 4
@__start___ksymtab = external dso_local constant [0 x %struct.kernel_symbol], align 4
@__stop___ksymtab = external dso_local constant [0 x %struct.kernel_symbol], align 4
@__start___kcrctab = external dso_local constant [0 x i32], align 4
@__start___ksymtab_gpl = external dso_local constant [0 x %struct.kernel_symbol], align 4
@__stop___ksymtab_gpl = external dso_local constant [0 x %struct.kernel_symbol], align 4
@__start___kcrctab_gpl = external dso_local constant [0 x i32], align 4
@.str.33 = private unnamed_addr constant [28 x i8] c"\013Module %s is blacklisted\0A\00", align 1
@.str.34 = private unnamed_addr constant [42 x i8] c"\014%s: parameters '%s' after `--' ignored\0A\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"\013Invalid ELF header len %lu\0A\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"\7FELF\00", align 1
@.str.37 = private unnamed_addr constant [35 x i8] c"\013Invalid ELF header magic: != %s\0A\00", align 1
@.str.38 = private unnamed_addr constant [37 x i8] c"\013Invalid ELF header type: %u != %u\0A\00", align 1
@.str.39 = private unnamed_addr constant [42 x i8] c"\013Invalid architecture in ELF header: %u\0A\00", align 1
@.str.40 = private unnamed_addr constant [35 x i8] c"\013Invalid ELF section header size\0A\00", align 1
@.str.41 = private unnamed_addr constant [39 x i8] c"\013Invalid ELF section header overflow\0A\00", align 1
@.str.42 = private unnamed_addr constant [73 x i8] c"\013Invalid ELF section name index: %d || e_shstrndx (%d) >= e_shnum (%d)\0A\00", align 1
@.str.43 = private unnamed_addr constant [36 x i8] c"\013Invalid ELF section hdr(type %u)\0A\00", align 1
@.str.44 = private unnamed_addr constant [64 x i8] c"\013ELF Spec violation: section name table isn't null terminated\0A\00", align 1
@.str.45 = private unnamed_addr constant [75 x i8] c"\013ELF Spec violation: section 0 type(%d)!=SH_NULL or non-zero len or addr\0A\00", align 1
@.str.46 = private unnamed_addr constant [74 x i8] c"\013Invalid ELF sh_link!=SHN_UNDEF(%d) or (sh_link(%d) >= hdr->e_shnum(%d)\0A\00", align 1
@.str.47 = private unnamed_addr constant [54 x i8] c"\013Invalid ELF section in module (section %u type %u)\0A\00", align 1
@.str.48 = private unnamed_addr constant [59 x i8] c"\013Invalid ELF section name in module (section %u type %u)\0A\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c".modinfo\00", align 1
@.str.50 = private unnamed_addr constant [41 x i8] c"\014%s: module has no symbols (stripped?)\0A\00", align 1
@.str.51 = private unnamed_addr constant [41 x i8] c"(missing .modinfo section or name field)\00", align 1
@.str.52 = private unnamed_addr constant [26 x i8] c".gnu.linkonce.this_module\00", align 1
@.str.53 = private unnamed_addr constant [33 x i8] c"\014%s: No module found in object\0A\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"__versions\00", align 1
@.str.55 = private unnamed_addr constant [14 x i8] c".data..percpu\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.57 = private unnamed_addr constant [21 x i8] c".data..ro_after_init\00", align 1
@.str.58 = private unnamed_addr constant [13 x i8] c"__jump_table\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"vermagic\00", align 1
@vermagic = internal constant [34 x i8] c"5.17.0 SMP mod_unload ARMv7 p2v8 \00", align 1
@.str.61 = private unnamed_addr constant [41 x i8] c"\013%s: version magic '%s' should be '%s'\0A\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"intree\00", align 1
@.str.63 = private unnamed_addr constant [49 x i8] c"\014%s: loading out-of-tree module taints kernel.\0A\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"staging\00", align 1
@.str.65 = private unnamed_addr constant [91 x i8] c"\014%s: module is from the staging directory, the quality is unknown, you have been warned.\0A\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"license\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"retpoline\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"livepatch\00", align 1
@.str.70 = private unnamed_addr constant [78 x i8] c"\013%s: module is marked as livepatch module, but livepatch support is disabled\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"unspecified\00", align 1
@.str.72 = private unnamed_addr constant [42 x i8] c"\014%s: module license '%s' taints kernel.\0A\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"GPL\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"GPL v2\00", align 1
@.str.75 = private unnamed_addr constant [26 x i8] c"GPL and additional rights\00", align 1
@.str.76 = private unnamed_addr constant [13 x i8] c"Dual BSD/GPL\00", align 1
@.str.77 = private unnamed_addr constant [13 x i8] c"Dual MIT/GPL\00", align 1
@.str.78 = private unnamed_addr constant [13 x i8] c"Dual MPL/GPL\00", align 1
@.str.79 = private unnamed_addr constant [58 x i8] c"\013%s: section %s (index %d) has invalid WRITE|EXEC flags\0A\00", align 1
@layout_sections.masks = internal unnamed_addr constant [5 x [2 x i32]] [[2 x i32] [i32 6, i32 0], [2 x i32] [i32 2, i32 1], [2 x i32] [i32 2097154, i32 0], [2 x i32] [i32 3, i32 0], [2 x i32] [i32 2, i32 0]], align 4
@.str.80 = private unnamed_addr constant [35 x i8] c"\014%s: per-cpu alignment %li > %li\0A\00", align 1
@.str.81 = private unnamed_addr constant [48 x i8] c"\014%s: Could not allocate %lu bytes percpu data\0A\00", align 1
@init_param_lock.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.82 = private unnamed_addr constant [17 x i8] c"&mod->param_lock\00", align 1
@.str.83 = private unnamed_addr constant [8 x i8] c"__param\00", align 1
@.str.84 = private unnamed_addr constant [10 x i8] c"__ksymtab\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"__kcrctab\00", align 1
@.str.86 = private unnamed_addr constant [14 x i8] c"__ksymtab_gpl\00", align 1
@.str.87 = private unnamed_addr constant [14 x i8] c"__kcrctab_gpl\00", align 1
@.str.88 = private unnamed_addr constant [14 x i8] c".noinstr.text\00", align 1
@.str.89 = private unnamed_addr constant [19 x i8] c"__tracepoints_ptrs\00", align 1
@.str.90 = private unnamed_addr constant [20 x i8] c"___srcu_struct_ptrs\00", align 1
@.str.91 = private unnamed_addr constant [15 x i8] c"_ftrace_events\00", align 1
@.str.92 = private unnamed_addr constant [17 x i8] c"_ftrace_eval_map\00", align 1
@.str.93 = private unnamed_addr constant [19 x i8] c"__trace_printk_fmt\00", align 1
@.str.94 = private unnamed_addr constant [11 x i8] c"__ex_table\00", align 1
@.str.95 = private unnamed_addr constant [10 x i8] c"__obsparm\00", align 1
@.str.96 = private unnamed_addr constant [36 x i8] c"\014%s: Ignoring obsolete parameters\0A\00", align 1
@.str.97 = private unnamed_addr constant [9 x i8] c"__dyndbg\00", align 1
@.str.98 = private unnamed_addr constant [12 x i8] c"ndiswrapper\00", align 1
@.str.99 = private unnamed_addr constant [13 x i8] c"driverloader\00", align 1
@.str.100 = private unnamed_addr constant [4 x i8] c"lve\00", align 1
@.str.101 = private unnamed_addr constant [37 x i8] c"\014%s: module license taints kernel.\0A\00", align 1
@modinfo_attrs = internal unnamed_addr constant [9 x ptr] [ptr @module_uevent, ptr @modinfo_version, ptr @modinfo_srcversion, ptr @modinfo_initstate, ptr @modinfo_coresize, ptr @modinfo_initsize, ptr @modinfo_taint, ptr @modinfo_refcnt, ptr null], align 4
@modinfo_version = internal global %struct.module_attribute { %struct.attribute { ptr @.str.102, i16 292 }, ptr @show_modinfo_version, ptr null, ptr @setup_modinfo_version, ptr @modinfo_version_exists, ptr @free_modinfo_version }, align 4
@modinfo_srcversion = internal global %struct.module_attribute { %struct.attribute { ptr @.str.103, i16 292 }, ptr @show_modinfo_srcversion, ptr null, ptr @setup_modinfo_srcversion, ptr @modinfo_srcversion_exists, ptr @free_modinfo_srcversion }, align 4
@modinfo_initstate = internal global %struct.module_attribute { %struct.attribute { ptr @.str.104, i16 292 }, ptr @show_initstate, ptr null, ptr null, ptr null, ptr null }, align 4
@modinfo_coresize = internal global %struct.module_attribute { %struct.attribute { ptr @.str.109, i16 292 }, ptr @show_coresize, ptr null, ptr null, ptr null, ptr null }, align 4
@modinfo_initsize = internal global %struct.module_attribute { %struct.attribute { ptr @.str.111, i16 292 }, ptr @show_initsize, ptr null, ptr null, ptr null, ptr null }, align 4
@modinfo_taint = internal global %struct.module_attribute { %struct.attribute { ptr @.str.112, i16 292 }, ptr @show_taint, ptr null, ptr null, ptr null, ptr null }, align 4
@modinfo_refcnt = internal global %struct.module_attribute { %struct.attribute { ptr @.str.24, i16 292 }, ptr @show_refcnt, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.102 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.103 = private unnamed_addr constant [11 x i8] c"srcversion\00", align 1
@.str.104 = private unnamed_addr constant [10 x i8] c"initstate\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c"live\00", align 1
@.str.107 = private unnamed_addr constant [7 x i8] c"coming\00", align 1
@.str.108 = private unnamed_addr constant [6 x i8] c"going\00", align 1
@.str.109 = private unnamed_addr constant [9 x i8] c"coresize\00", align 1
@.str.110 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.111 = private unnamed_addr constant [9 x i8] c"initsize\00", align 1
@.str.112 = private unnamed_addr constant [6 x i8] c"taint\00", align 1
@taint_flags = external dso_local local_unnamed_addr constant [18 x %struct.taint_flag], align 1
@.str.113 = private unnamed_addr constant [4 x i8] c"%i\0A\00", align 1
@.str.114 = private unnamed_addr constant [10 x i8] c"__gnu_lto\00", align 1
@.str.115 = private unnamed_addr constant [39 x i8] c"\014%s: please compile with -fno-common\0A\00", align 1
@.str.116 = private unnamed_addr constant [34 x i8] c"\014%s: Unknown symbol %s (err %d)\0A\00", align 1
@.str.117 = private unnamed_addr constant [46 x i8] c"\014%s: gave up waiting for init of module %s.\0A\00", align 1
@.str.118 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@.str.119 = private unnamed_addr constant [78 x i8] c"\013%s: module using GPL-only symbols uses symbols from proprietary module %s.\0A\00", align 1
@.str.120 = private unnamed_addr constant [73 x i8] c"\014%s: module uses symbols from proprietary module %s, inheriting taint.\0A\00", align 1
@.str.121 = private unnamed_addr constant [10 x i8] c"import_ns\00", align 1
@.str.122 = private unnamed_addr constant [74 x i8] c"\013%s: module uses symbol (%s) from namespace %s, but does not import it.\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.123 = private unnamed_addr constant [22 x i8] c"_GLOBAL_OFFSET_TABLE_\00", align 1
@.str.124 = private unnamed_addr constant [41 x i8] c"\013module %s: REL relocation unsupported\0A\00", align 1
@.str.125 = private unnamed_addr constant [7 x i8] c".debug\00", align 1
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@.str.126 = private unnamed_addr constant [49 x i8] c"\013%s: exports duplicate symbol %s (owned by %s)\0A\00", align 1
@rodata_enabled = external dso_local local_unnamed_addr global i8, align 1
@.str.127 = private unnamed_addr constant [12 x i8] c"async_probe\00", align 1
@.str.128 = private unnamed_addr constant [38 x i8] c"\014%s: unknown parameter '%s' ignored\0A\00", align 1
@.str.129 = private unnamed_addr constant [7 x i8] c"dyndbg\00", align 1
@.str.130 = private unnamed_addr constant [65 x i8] c"\014dyndbg param is supported only in CONFIG_DYNAMIC_DEBUG builds\0A\00", align 1
@.str.131 = private unnamed_addr constant [8 x i8] c"holders\00", align 1
@module_sysfs_initialized = external dso_local local_unnamed_addr global i32, align 4
@.str.132 = private unnamed_addr constant [36 x i8] c"\013%s: module sysfs not initialized\0A\00", align 1
@module_kset = external dso_local local_unnamed_addr global ptr, align 4
@.str.133 = private unnamed_addr constant [32 x i8] c"\013%s: module is already loaded\0A\00", align 1
@module_ktype = external dso_local global %struct.kobj_type, align 4
@.str.134 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.135 = private unnamed_addr constant [9 x i8] c"sections\00", align 1
@.str.136 = private unnamed_addr constant [7 x i8] c"0x%px\0A\00", align 1
@.str.137 = private unnamed_addr constant [6 x i8] c"notes\00", align 1
@.str.138 = private unnamed_addr constant [106 x i8] c"\014%s: '%s'->init suspiciously returned %d, it should follow 0/-E convention\0A%s: loading module anyway...\0A\00", align 1
@__func__.do_init_module = private unnamed_addr constant [15 x i8] c"do_init_module\00", align 1
@init_free_list = internal global %struct.llist_head zeroinitializer, align 4
@init_free_wq = internal global %struct.work_struct { %struct.atomic_t { i32 -32 }, %struct.list_head { ptr getelementptr (i8, ptr @init_free_wq, i64 4), ptr getelementptr (i8, ptr @init_free_wq, i64 4) }, ptr @do_free_init }, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.139 = private unnamed_addr constant [5 x i8] c"axtd\00", align 1
@.str.140 = private unnamed_addr constant [8 x i8] c"modules\00", align 1
@modules_proc_ops = internal constant %struct.proc_ops { i32 1, ptr @modules_open, ptr @seq_read, ptr null, ptr null, ptr @seq_lseek, ptr @seq_release, ptr null, ptr null, ptr null, ptr null }, align 4
@modules_op = internal constant %struct.seq_operations { ptr @m_start, ptr @m_stop, ptr @m_next, ptr @m_show }, align 4
@.str.141 = private unnamed_addr constant [6 x i8] c"%s %u\00", align 1
@.str.142 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.143 = private unnamed_addr constant [10 x i8] c"Unloading\00", align 1
@.str.144 = private unnamed_addr constant [8 x i8] c"Loading\00", align 1
@.str.145 = private unnamed_addr constant [5 x i8] c"Live\00", align 1
@.str.146 = private unnamed_addr constant [7 x i8] c" 0x%px\00", align 1
@.str.147 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.148 = private unnamed_addr constant [5 x i8] c" %i \00", align 1
@.str.149 = private unnamed_addr constant [4 x i8] c"%s,\00", align 1
@.str.150 = private unnamed_addr constant [13 x i8] c"[permanent],\00", align 1
@.str.151 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@llvm.compiler.used = appending global [41 x ptr] [ptr @__event_module_free, ptr @__event_module_get, ptr @__event_module_load, ptr @__event_module_put, ptr @__event_module_request, ptr @__initcall__kmod_module__291_4666_proc_modules_init6, ptr @__ksymtab___SCK__tp_func_module_get, ptr @__ksymtab___module_get, ptr @__ksymtab___module_put_and_kthread_exit, ptr @__ksymtab___symbol_get, ptr @__ksymtab___symbol_put, ptr @__ksymtab___traceiter_module_get, ptr @__ksymtab___tracepoint_module_get, ptr @__ksymtab_is_module_sig_enforced, ptr @__ksymtab_module_put, ptr @__ksymtab_module_refcount, ptr @__ksymtab_register_module_notifier, ptr @__ksymtab_symbol_put_addr, ptr @__ksymtab_try_module_get, ptr @__ksymtab_unregister_module_notifier, ptr @__param_module_blacklist, ptr @__param_nomodule, ptr @__tracepoint_module_free, ptr @__tracepoint_module_get, ptr @__tracepoint_module_load, ptr @__tracepoint_module_put, ptr @__tracepoint_module_request, ptr @__tracepoint_ptr_module_free, ptr @__tracepoint_ptr_module_get, ptr @__tracepoint_ptr_module_load, ptr @__tracepoint_ptr_module_put, ptr @__tracepoint_ptr_module_request, ptr @event_class_module_free, ptr @event_class_module_load, ptr @event_class_module_refcnt, ptr @event_class_module_request, ptr @event_module_free, ptr @event_module_get, ptr @event_module_load, ptr @event_module_put, ptr @event_module_request], section "llvm.metadata"
@switch.table.show_initstate = private unnamed_addr constant [3 x ptr] [ptr @.str.106, ptr @.str.107, ptr @.str.108], align 4

@sys_delete_module = dso_local alias i32 (ptr, i32), ptr @__se_sys_delete_module
@sys_init_module = dso_local alias i32 (ptr, i32, ptr), ptr @__se_sys_init_module
@sys_finit_module = dso_local alias i32 (i32, ptr, i32), ptr @__se_sys_finit_module

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_module_load(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_module_load, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #29
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
define dso_local i32 @__traceiter_module_free(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_module_free, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #29
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_module_get(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_module_get, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #29
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_module_put(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_module_put, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #29
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_module_request(ptr nocapture readnone %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_module_request, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3) #29
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_module_load(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #29
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #29
  br i1 %12, label %30, label %13

13:                                               ; preds = %11, %8, %2
  %14 = getelementptr inbounds %struct.module, ptr %1, i32 0, i32 2
  %15 = tail call i32 @strlen(ptr noundef %14) #29
  %16 = add i32 %15, 17
  %17 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef %16) #29
  %18 = icmp eq ptr %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %13
  %20 = shl i32 %15, 16
  %21 = add i32 %20, 65552
  %22 = getelementptr inbounds %struct.trace_event_raw_module_load, ptr %17, i32 0, i32 2
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.module, ptr %1, i32 0, i32 26
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_module_load, ptr %17, i32 0, i32 1
  store i32 %24, ptr %25, align 4
  %26 = getelementptr i8, ptr %17, i32 16
  %27 = icmp eq ptr %14, null
  %28 = select i1 %27, ptr @.str.8, ptr %14
  %29 = call ptr @strcpy(ptr noundef %26, ptr noundef %28)
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #29
  br label %30

30:                                               ; preds = %19, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #29
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_module_load(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #29
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #29
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.module, ptr %1, i32 0, i32 2
  %6 = tail call i32 @strlen(ptr noundef %5) #29
  %7 = shl i32 %6, 16
  %8 = add i32 %7, 65552
  %9 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #29
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #17, !srcloc !12
  %15 = add i32 %14, %11
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load volatile ptr, ptr %16, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %50, label %23

23:                                               ; preds = %20, %2
  %24 = add i32 %6, 28
  %25 = and i32 %24, -8
  %26 = add i32 %25, -4
  %27 = call ptr @perf_trace_buf_alloc(i32 noundef %26, ptr noundef nonnull %3, ptr noundef nonnull %4) #29
  %28 = icmp eq ptr %27, null
  br i1 %28, label %50, label %29

29:                                               ; preds = %23
  %30 = load ptr, ptr %3, align 4
  %31 = call ptr @llvm.returnaddress(i32 0) #29
  %32 = ptrtoint ptr %31 to i32
  %33 = getelementptr [18 x i32], ptr %30, i32 0, i32 15
  store i32 %32, ptr %33, align 4
  %34 = call ptr @llvm.frameaddress.p0(i32 0) #29
  %35 = ptrtoint ptr %34 to i32
  %36 = getelementptr [18 x i32], ptr %30, i32 0, i32 11
  store i32 %35, ptr %36, align 4
  %37 = call i32 @llvm.read_register.i32(metadata !0) #29
  %38 = getelementptr [18 x i32], ptr %30, i32 0, i32 13
  store i32 %37, ptr %38, align 4
  %39 = getelementptr [18 x i32], ptr %30, i32 0, i32 16
  store i32 19, ptr %39, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_module_load, ptr %27, i32 0, i32 2
  store i32 %8, ptr %40, align 4
  %41 = getelementptr inbounds %struct.module, ptr %1, i32 0, i32 26
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_module_load, ptr %27, i32 0, i32 1
  store i32 %42, ptr %43, align 4
  %44 = getelementptr i8, ptr %27, i32 16
  %45 = icmp eq ptr %5, null
  %46 = select i1 %45, ptr @.str.8, ptr %5
  %47 = call ptr @strcpy(ptr noundef %44, ptr noundef %46)
  %48 = load i32, ptr %4, align 4
  %49 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %27, i32 noundef %26, i32 noundef %48, ptr noundef %0, i64 noundef 1, ptr noundef %49, ptr noundef %16, ptr noundef null) #29
  br label %50

50:                                               ; preds = %29, %23, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #29
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_module_free(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #29
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #29
  br i1 %12, label %27, label %13

13:                                               ; preds = %11, %8, %2
  %14 = getelementptr inbounds %struct.module, ptr %1, i32 0, i32 2
  %15 = tail call i32 @strlen(ptr noundef %14) #29
  %16 = add i32 %15, 13
  %17 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef %16) #29
  %18 = icmp eq ptr %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %13
  %20 = shl i32 %15, 16
  %21 = add i32 %20, 65548
  %22 = getelementptr inbounds %struct.trace_event_raw_module_free, ptr %17, i32 0, i32 1
  store i32 %21, ptr %22, align 4
  %23 = getelementptr i8, ptr %17, i32 12
  %24 = icmp eq ptr %14, null
  %25 = select i1 %24, ptr @.str.8, ptr %14
  %26 = call ptr @strcpy(ptr noundef %23, ptr noundef %25)
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #29
  br label %27

27:                                               ; preds = %19, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #29
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_module_free(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #29
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #29
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.module, ptr %1, i32 0, i32 2
  %6 = tail call i32 @strlen(ptr noundef %5) #29
  %7 = shl i32 %6, 16
  %8 = add i32 %7, 65548
  %9 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #29
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #17, !srcloc !12
  %15 = add i32 %14, %11
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load volatile ptr, ptr %16, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %47, label %23

23:                                               ; preds = %20, %2
  %24 = add i32 %6, 24
  %25 = and i32 %24, -8
  %26 = add i32 %25, -4
  %27 = call ptr @perf_trace_buf_alloc(i32 noundef %26, ptr noundef nonnull %3, ptr noundef nonnull %4) #29
  %28 = icmp eq ptr %27, null
  br i1 %28, label %47, label %29

29:                                               ; preds = %23
  %30 = load ptr, ptr %3, align 4
  %31 = call ptr @llvm.returnaddress(i32 0) #29
  %32 = ptrtoint ptr %31 to i32
  %33 = getelementptr [18 x i32], ptr %30, i32 0, i32 15
  store i32 %32, ptr %33, align 4
  %34 = call ptr @llvm.frameaddress.p0(i32 0) #29
  %35 = ptrtoint ptr %34 to i32
  %36 = getelementptr [18 x i32], ptr %30, i32 0, i32 11
  store i32 %35, ptr %36, align 4
  %37 = call i32 @llvm.read_register.i32(metadata !0) #29
  %38 = getelementptr [18 x i32], ptr %30, i32 0, i32 13
  store i32 %37, ptr %38, align 4
  %39 = getelementptr [18 x i32], ptr %30, i32 0, i32 16
  store i32 19, ptr %39, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_module_free, ptr %27, i32 0, i32 1
  store i32 %8, ptr %40, align 4
  %41 = getelementptr i8, ptr %27, i32 12
  %42 = icmp eq ptr %5, null
  %43 = select i1 %42, ptr @.str.8, ptr %5
  %44 = call ptr @strcpy(ptr noundef %41, ptr noundef %43)
  %45 = load i32, ptr %4, align 4
  %46 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %27, i32 noundef %26, i32 noundef %45, ptr noundef %0, i64 noundef 1, ptr noundef %46, ptr noundef %16, ptr noundef null) #29
  br label %47

47:                                               ; preds = %29, %23, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #29
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_module_refcnt(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #29
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
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #29
  br i1 %13, label %32, label %14

14:                                               ; preds = %12, %9, %3
  %15 = getelementptr inbounds %struct.module, ptr %1, i32 0, i32 2
  %16 = tail call i32 @strlen(ptr noundef %15) #29
  %17 = add i32 %16, 21
  %18 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef %17) #29
  %19 = icmp eq ptr %18, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %14
  %21 = shl i32 %16, 16
  %22 = add i32 %21, 65556
  %23 = getelementptr inbounds %struct.trace_event_raw_module_refcnt, ptr %18, i32 0, i32 3
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_module_refcnt, ptr %18, i32 0, i32 1
  store i32 %2, ptr %24, align 4
  %25 = getelementptr inbounds %struct.module, ptr %1, i32 0, i32 52
  %26 = load volatile i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_module_refcnt, ptr %18, i32 0, i32 2
  store i32 %26, ptr %27, align 4
  %28 = getelementptr i8, ptr %18, i32 20
  %29 = icmp eq ptr %15, null
  %30 = select i1 %29, ptr @.str.8, ptr %15
  %31 = call ptr @strcpy(ptr noundef %28, ptr noundef %30)
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #29
  br label %32

32:                                               ; preds = %20, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #29
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_module_refcnt(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #29
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #29
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.module, ptr %1, i32 0, i32 2
  %7 = tail call i32 @strlen(ptr noundef %6) #29
  %8 = shl i32 %7, 16
  %9 = add i32 %8, 65556
  %10 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !0) #29
  %14 = inttoptr i32 %13 to ptr
  %15 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %14) #17, !srcloc !12
  %16 = add i32 %15, %12
  %17 = inttoptr i32 %16 to ptr
  %18 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load volatile ptr, ptr %17, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %52, label %24

24:                                               ; preds = %21, %3
  %25 = add i32 %7, 32
  %26 = and i32 %25, -8
  %27 = add i32 %26, -4
  %28 = call ptr @perf_trace_buf_alloc(i32 noundef %27, ptr noundef nonnull %4, ptr noundef nonnull %5) #29
  %29 = icmp eq ptr %28, null
  br i1 %29, label %52, label %30

30:                                               ; preds = %24
  %31 = load ptr, ptr %4, align 4
  %32 = call ptr @llvm.returnaddress(i32 0) #29
  %33 = ptrtoint ptr %32 to i32
  %34 = getelementptr [18 x i32], ptr %31, i32 0, i32 15
  store i32 %33, ptr %34, align 4
  %35 = call ptr @llvm.frameaddress.p0(i32 0) #29
  %36 = ptrtoint ptr %35 to i32
  %37 = getelementptr [18 x i32], ptr %31, i32 0, i32 11
  store i32 %36, ptr %37, align 4
  %38 = call i32 @llvm.read_register.i32(metadata !0) #29
  %39 = getelementptr [18 x i32], ptr %31, i32 0, i32 13
  store i32 %38, ptr %39, align 4
  %40 = getelementptr [18 x i32], ptr %31, i32 0, i32 16
  store i32 19, ptr %40, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_module_refcnt, ptr %28, i32 0, i32 3
  store i32 %9, ptr %41, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_module_refcnt, ptr %28, i32 0, i32 1
  store i32 %2, ptr %42, align 4
  %43 = getelementptr inbounds %struct.module, ptr %1, i32 0, i32 52
  %44 = load volatile i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.trace_event_raw_module_refcnt, ptr %28, i32 0, i32 2
  store i32 %44, ptr %45, align 4
  %46 = getelementptr i8, ptr %28, i32 20
  %47 = icmp eq ptr %6, null
  %48 = select i1 %47, ptr @.str.8, ptr %6
  %49 = call ptr @strcpy(ptr noundef %46, ptr noundef %48)
  %50 = load i32, ptr %5, align 4
  %51 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %28, i32 noundef %27, i32 noundef %50, ptr noundef %0, i64 noundef 1, ptr noundef %51, ptr noundef %17, ptr noundef null) #29
  br label %52

52:                                               ; preds = %30, %24, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #29
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_module_request(ptr noundef %0, ptr noundef readonly %1, i1 noundef zeroext %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  %6 = zext i1 %2 to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #29
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
  %15 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #29
  br i1 %15, label %31, label %16

16:                                               ; preds = %14, %11, %4
  %17 = icmp eq ptr %1, null
  %18 = select i1 %17, ptr @.str.8, ptr %1
  %19 = tail call i32 @strlen(ptr noundef %18) #29
  %20 = add i32 %19, 21
  %21 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %20) #29
  %22 = icmp eq ptr %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %16
  %24 = shl i32 %19, 16
  %25 = add i32 %24, 65556
  %26 = getelementptr inbounds %struct.trace_event_raw_module_request, ptr %21, i32 0, i32 3
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_module_request, ptr %21, i32 0, i32 1
  store i32 %3, ptr %27, align 4
  %28 = getelementptr inbounds %struct.trace_event_raw_module_request, ptr %21, i32 0, i32 2
  store i8 %6, ptr %28, align 4
  %29 = getelementptr i8, ptr %21, i32 20
  %30 = call ptr @strcpy(ptr noundef %29, ptr noundef %18)
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #29
  br label %31

31:                                               ; preds = %23, %16, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #29
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_module_request(ptr noundef %0, ptr noundef readonly %1, i1 noundef zeroext %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = zext i1 %2 to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #29
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #29
  store i32 0, ptr %6, align 4, !annotation !9
  %8 = icmp eq ptr %1, null
  %9 = select i1 %8, ptr @.str.8, ptr %1
  %10 = tail call i32 @strlen(ptr noundef %9) #29
  %11 = shl i32 %10, 16
  %12 = add i32 %11, 65556
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %14 = load ptr, ptr %13, align 4
  %15 = ptrtoint ptr %14 to i32
  %16 = tail call i32 @llvm.read_register.i32(metadata !0) #29
  %17 = inttoptr i32 %16 to ptr
  %18 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %17) #17, !srcloc !12
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
  %31 = call ptr @perf_trace_buf_alloc(i32 noundef %30, ptr noundef nonnull %5, ptr noundef nonnull %6) #29
  %32 = icmp eq ptr %31, null
  br i1 %32, label %51, label %33

33:                                               ; preds = %27
  %34 = load ptr, ptr %5, align 4
  %35 = call ptr @llvm.returnaddress(i32 0) #29
  %36 = ptrtoint ptr %35 to i32
  %37 = getelementptr [18 x i32], ptr %34, i32 0, i32 15
  store i32 %36, ptr %37, align 4
  %38 = call ptr @llvm.frameaddress.p0(i32 0) #29
  %39 = ptrtoint ptr %38 to i32
  %40 = getelementptr [18 x i32], ptr %34, i32 0, i32 11
  store i32 %39, ptr %40, align 4
  %41 = call i32 @llvm.read_register.i32(metadata !0) #29
  %42 = getelementptr [18 x i32], ptr %34, i32 0, i32 13
  store i32 %41, ptr %42, align 4
  %43 = getelementptr [18 x i32], ptr %34, i32 0, i32 16
  store i32 19, ptr %43, align 4
  %44 = getelementptr inbounds %struct.trace_event_raw_module_request, ptr %31, i32 0, i32 3
  store i32 %12, ptr %44, align 4
  %45 = getelementptr inbounds %struct.trace_event_raw_module_request, ptr %31, i32 0, i32 1
  store i32 %3, ptr %45, align 4
  %46 = getelementptr inbounds %struct.trace_event_raw_module_request, ptr %31, i32 0, i32 2
  store i8 %7, ptr %46, align 4
  %47 = getelementptr i8, ptr %31, i32 20
  %48 = call ptr @strcpy(ptr noundef %47, ptr noundef %9)
  %49 = load i32, ptr %6, align 4
  %50 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %31, i32 noundef %30, i32 noundef %49, ptr noundef %0, i64 noundef 1, ptr noundef %50, ptr noundef %20, ptr noundef null) #29
  br label %51

51:                                               ; preds = %33, %27, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #29
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @is_module_sig_enforced() #3 {
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @register_module_notifier(ptr noundef %0) #0 {
  %2 = tail call i32 @blocking_notifier_chain_register(ptr noundef nonnull @module_notify_list, ptr noundef %0) #29
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @unregister_module_notifier(ptr noundef %0) #0 {
  %2 = tail call i32 @blocking_notifier_chain_unregister(ptr noundef nonnull @module_notify_list, ptr noundef %0) #29
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__module_put_and_kthread_exit(ptr noundef %0, i32 noundef %1) #4 {
  tail call void @module_put(ptr noundef %0)
  tail call void @kthread_exit(i32 noundef %1) #30
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @module_put(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %48, label %3

3:                                                ; preds = %1
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !13
  %4 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 52
  %5 = load volatile i32, ptr %4, align 4
  br label %6

6:                                                ; preds = %15, %3
  %7 = phi i32 [ %5, %3 ], [ %16, %15 ]
  %8 = add i32 %7, -1
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %18, label %10, !prof !11

10:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #29, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #29, !srcloc !15
  br label %11

11:                                               ; preds = %11, %10
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 %7, i32 %8, ptr elementtype(i32) %4) #29, !srcloc !16
  %13 = extractvalue { i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %11

15:                                               ; preds = %11
  %16 = extractvalue { i32, i32 } %12, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #29, !srcloc !17
  %17 = icmp eq i32 %16, %7
  br i1 %17, label %19, label %6, !prof !10

18:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1094, i32 noundef 9, ptr noundef null) #29
  br label %19

19:                                               ; preds = %18, %15
  %20 = tail call ptr @llvm.returnaddress(i32 0)
  %21 = ptrtoint ptr %20 to i32
  %22 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_module_put, i32 0, i32 1), align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %19
  %25 = tail call ptr @llvm.thread.pointer() #29
  %26 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %27 = load i32, ptr %26, align 8
  %28 = lshr i32 %27, 5
  %29 = getelementptr i32, ptr @__cpu_online_mask, i32 %28
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %27, 31
  %32 = shl nuw i32 1, %31
  %33 = and i32 %32, %30
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %24
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !18
  %36 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_module_put, i32 0, i32 7), align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %46, label %38

38:                                               ; preds = %38, %35
  %39 = phi ptr [ %43, %38 ], [ %36, %35 ]
  %40 = load volatile ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.tracepoint_func, ptr %39, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  tail call void %40(ptr noundef %42, ptr noundef nonnull %0, i32 noundef %21) #29
  %43 = getelementptr %struct.tracepoint_func, ptr %39, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %38

46:                                               ; preds = %38, %35
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !19
  br label %47

47:                                               ; preds = %46, %24, %19
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !20
  br label %48

48:                                               ; preds = %47, %1
  ret void
}

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @kthread_exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @find_module(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = tail call i32 @strlen(ptr noundef %0)
  %3 = load volatile ptr, ptr @modules, align 4
  %4 = icmp eq ptr %3, @modules
  br i1 %4, label %22, label %5

5:                                                ; preds = %17, %1
  %6 = phi ptr [ %18, %17 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -4
  %8 = load i32, ptr %7, align 64
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %17, label %10

10:                                               ; preds = %5
  %11 = getelementptr i8, ptr %6, i32 8
  %12 = tail call i32 @strlen(ptr noundef %11) #29
  %13 = icmp eq i32 %12, %2
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = tail call i32 @bcmp(ptr %11, ptr %0, i32 %2) #29
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14, %10, %5
  %18 = load volatile ptr, ptr %6, align 4
  %19 = icmp eq ptr %18, @modules
  br i1 %19, label %22, label %5

20:                                               ; preds = %14
  %21 = getelementptr i8, ptr %6, i32 -4
  br label %22

22:                                               ; preds = %20, %17, %1
  %23 = phi ptr [ null, %1 ], [ %21, %20 ], [ null, %17 ]
  ret ptr %23
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @__is_module_percpu_address(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !21
  %3 = load volatile ptr, ptr @modules, align 4
  %4 = icmp eq ptr %3, @modules
  br i1 %4, label %49, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %7 = inttoptr i32 %0 to ptr
  br label %8

8:                                                ; preds = %46, %5
  %9 = phi ptr [ %3, %5 ], [ %47, %46 ]
  %10 = getelementptr i8, ptr %9, i32 -4
  %11 = load i32, ptr %10, align 64
  %12 = icmp eq i32 %11, 3
  br i1 %12, label %46, label %13

13:                                               ; preds = %8
  %14 = getelementptr i8, ptr %9, i32 456
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %46, label %17

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %9, i32 452
  br label %19

19:                                               ; preds = %23, %17
  %20 = phi i32 [ %21, %23 ], [ -1, %17 ]
  %21 = tail call i32 @cpumask_next(i32 noundef %20, ptr noundef nonnull @__cpu_possible_mask) #31
  %22 = icmp ult i32 %21, %6
  br i1 %22, label %23, label %46

23:                                               ; preds = %19
  %24 = load ptr, ptr %18, align 8
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %21
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, %25
  %29 = inttoptr i32 %28 to ptr
  %30 = icmp uge ptr %7, %29
  %31 = getelementptr i8, ptr %29, i32 %15
  %32 = icmp ugt ptr %31, %7
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %34, label %19

34:                                               ; preds = %23
  %35 = icmp eq ptr %1, null
  br i1 %35, label %45, label %36

36:                                               ; preds = %34
  %37 = sub i32 %0, %28
  store i32 %37, ptr %1, align 4
  %38 = load ptr, ptr %18, align 8
  %39 = ptrtoint ptr %38 to i32
  %40 = load i32, ptr @__boot_cpu_id, align 4
  %41 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %40
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %37, %39
  %44 = add i32 %43, %42
  store i32 %44, ptr %1, align 4
  br label %45

45:                                               ; preds = %36, %34
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !22
  br label %50

46:                                               ; preds = %19, %13, %8
  %47 = load volatile ptr, ptr %9, align 4
  %48 = icmp eq ptr %47, @modules
  br i1 %48, label %49, label %8

49:                                               ; preds = %46, %2
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !23
  br label %50

50:                                               ; preds = %49, %45
  %51 = phi i1 [ true, %45 ], [ false, %49 ]
  ret i1 %51
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @is_module_percpu_address(i32 noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !21
  %2 = load volatile ptr, ptr @modules, align 4
  %3 = icmp eq ptr %2, @modules
  br i1 %3, label %37, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr @nr_cpu_ids, align 4
  %6 = inttoptr i32 %0 to ptr
  br label %7

7:                                                ; preds = %34, %4
  %8 = phi ptr [ %2, %4 ], [ %35, %34 ]
  %9 = getelementptr i8, ptr %8, i32 -4
  %10 = load i32, ptr %9, align 64
  %11 = icmp eq i32 %10, 3
  br i1 %11, label %34, label %12

12:                                               ; preds = %7
  %13 = getelementptr i8, ptr %8, i32 456
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %34, label %16

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %8, i32 452
  br label %18

18:                                               ; preds = %22, %16
  %19 = phi i32 [ %20, %22 ], [ -1, %16 ]
  %20 = tail call i32 @cpumask_next(i32 noundef %19, ptr noundef nonnull @__cpu_possible_mask) #31
  %21 = icmp ult i32 %20, %5
  br i1 %21, label %22, label %34

22:                                               ; preds = %18
  %23 = load ptr, ptr %17, align 8
  %24 = ptrtoint ptr %23 to i32
  %25 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %20
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, %24
  %28 = inttoptr i32 %27 to ptr
  %29 = icmp uge ptr %6, %28
  %30 = getelementptr i8, ptr %28, i32 %14
  %31 = icmp ugt ptr %30, %6
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %33, label %18

33:                                               ; preds = %22
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !22
  br label %38

34:                                               ; preds = %18, %12, %7
  %35 = load volatile ptr, ptr %8, align 4
  %36 = icmp eq ptr %35, @modules
  br i1 %36, label %37, label %7

37:                                               ; preds = %34, %1
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !23
  br label %38

38:                                               ; preds = %37, %33
  %39 = phi i1 [ true, %33 ], [ false, %37 ]
  ret i1 %39
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @module_refcount(ptr noundef %0) #9 {
  %2 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 52
  %3 = load volatile i32, ptr %2, align 4
  %4 = add i32 %3, -1
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_delete_module(i32 noundef %0, i32 %1) #0 {
  %3 = alloca [60 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %3) #29
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(60) %3, i8 0, i32 60, i1 false) #29, !annotation !9
  %4 = tail call zeroext i1 @capable(i32 noundef 16) #29
  %5 = xor i1 %4, true
  %6 = load i32, ptr @modules_disabled, align 4
  %7 = icmp ne i32 %6, 0
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %76, label %9

9:                                                ; preds = %2
  %10 = inttoptr i32 %0 to ptr
  %11 = call i32 @strncpy_from_user(ptr noundef nonnull %3, ptr noundef %10, i32 noundef 59) #29
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %76, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds [60 x i8], ptr %3, i32 0, i32 59
  store i8 0, ptr %14, align 1
  %15 = call i32 @mutex_lock_interruptible(ptr noundef nonnull @module_mutex) #29
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %76

17:                                               ; preds = %13
  %18 = call i32 @strlen(ptr noundef nonnull %3) #29
  %19 = load volatile ptr, ptr @modules, align 4
  %20 = icmp eq ptr %19, @modules
  br i1 %20, label %74, label %21

21:                                               ; preds = %33, %17
  %22 = phi ptr [ %34, %33 ], [ %19, %17 ]
  %23 = getelementptr i8, ptr %22, i32 -4
  %24 = load i32, ptr %23, align 64
  %25 = icmp eq i32 %24, 3
  br i1 %25, label %33, label %26

26:                                               ; preds = %21
  %27 = getelementptr i8, ptr %22, i32 8
  %28 = call i32 @strlen(ptr noundef %27) #29
  %29 = icmp eq i32 %28, %18
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = call i32 @bcmp(ptr %27, ptr nonnull %3, i32 %18) #29
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30, %26, %21
  %34 = load volatile ptr, ptr %22, align 4
  %35 = icmp eq ptr %34, @modules
  br i1 %35, label %74, label %21

36:                                               ; preds = %30
  %37 = getelementptr i8, ptr %22, i32 -4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %74, label %39

39:                                               ; preds = %36
  %40 = getelementptr i8, ptr %22, i32 508
  %41 = load volatile ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, %40
  br i1 %42, label %43, label %74

43:                                               ; preds = %39
  %44 = icmp eq i32 %24, 0
  br i1 %44, label %45, label %74

45:                                               ; preds = %43
  %46 = getelementptr i8, ptr %22, i32 200
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = getelementptr i8, ptr %22, i32 524
  %51 = load ptr, ptr %50, align 16
  %52 = icmp eq ptr %51, null
  br i1 %52, label %74, label %53

53:                                               ; preds = %49, %45
  %54 = getelementptr i8, ptr %22, i32 528
  call void asm sideeffect "dmb ish", "~{memory}"() #29, !srcloc !24
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %54) #29, !srcloc !15
  %55 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %54, ptr %54, i32 1, ptr elementtype(i32) %54) #29, !srcloc !25
  %56 = extractvalue { i32, i32 } %55, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #29, !srcloc !26
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59, !prof !11

58:                                               ; preds = %53
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/module.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 872, 0\0A.popsection", ""() #29, !srcloc !27
  unreachable

59:                                               ; preds = %53
  %60 = icmp eq i32 %56, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %59
  call void asm sideeffect "dmb ish", "~{memory}"() #29, !srcloc !28
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %54) #29, !srcloc !15
  %62 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %54, ptr %54, i32 0, i32 1, ptr elementtype(i32) %54) #29, !srcloc !29
  %63 = extractvalue { i32, i32, i32 } %62, 0
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  call void asm sideeffect "dmb ish", "~{memory}"() #29, !srcloc !30
  br label %74

66:                                               ; preds = %61, %59
  store i32 2, ptr %37, align 64
  call void @mutex_unlock(ptr noundef nonnull @module_mutex) #29
  %67 = getelementptr i8, ptr %22, i32 524
  %68 = load ptr, ptr %67, align 16
  %69 = icmp eq ptr %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  call void %68() #29
  br label %71

71:                                               ; preds = %70, %66
  %72 = call i32 @blocking_notifier_call_chain(ptr noundef nonnull @module_notify_list, i32 noundef 2, ptr noundef nonnull %37) #29
  call void @async_synchronize_full() #29
  %73 = call i32 @strlcpy(ptr noundef nonnull @last_unloaded_module, ptr noundef %27, i32 noundef 61) #29
  call fastcc void @free_module(ptr noundef nonnull %37) #29
  call void @__wake_up(ptr noundef nonnull @module_wq, i32 noundef 3, i32 noundef 0, ptr noundef null) #29
  br label %76

74:                                               ; preds = %65, %49, %43, %39, %36, %33, %17
  %75 = phi i32 [ -11, %65 ], [ -2, %36 ], [ -11, %39 ], [ -16, %43 ], [ -2, %17 ], [ -16, %49 ], [ -2, %33 ]
  call void @mutex_unlock(ptr noundef nonnull @module_mutex) #29
  br label %76

76:                                               ; preds = %74, %71, %13, %9, %2
  %77 = phi i32 [ %75, %74 ], [ 0, %71 ], [ -1, %2 ], [ -14, %9 ], [ -4, %13 ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %3) #29
  ret i32 %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__symbol_put(ptr noundef %0) #0 {
  %2 = alloca %struct.find_symbol_arg, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #29
  %3 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %3, i8 0, i64 20, i1 false)
  store ptr %0, ptr %2, align 4
  %4 = getelementptr inbounds %struct.find_symbol_arg, ptr %2, i32 0, i32 1
  store i8 1, ptr %4, align 4
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !31
  %5 = call fastcc zeroext i1 @find_symbol(ptr noundef nonnull %2)
  br i1 %5, label %7, label %6, !prof !10

6:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/module.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1021, 0\0A.popsection", ""() #29, !srcloc !32
  unreachable

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.find_symbol_arg, ptr %2, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  tail call void @module_put(ptr noundef %9)
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !33
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #29
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #10

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @find_symbol(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca [2 x %struct.symsearch], align 4
  %3 = getelementptr inbounds %struct.find_symbol_arg, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %0, align 4
  %5 = tail call ptr @bsearch(ptr noundef %4, ptr noundef nonnull @__start___ksymtab, i32 noundef sdiv (i32 sub (i32 ptrtoint (ptr @__stop___ksymtab to i32), i32 ptrtoint (ptr @__start___ksymtab to i32)), i32 12), i32 noundef 12, ptr noundef nonnull @cmp_name) #29
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %15

7:                                                ; preds = %37
  %8 = getelementptr inbounds %struct.symsearch, ptr %2, i32 0, i32 1
  %9 = getelementptr inbounds %struct.symsearch, ptr %2, i32 0, i32 2
  %10 = getelementptr inbounds %struct.symsearch, ptr %2, i32 0, i32 3
  %11 = getelementptr inbounds %struct.symsearch, ptr %2, i32 1
  %12 = getelementptr inbounds %struct.symsearch, ptr %2, i32 1, i32 1
  %13 = getelementptr inbounds %struct.symsearch, ptr %2, i32 1, i32 2
  %14 = getelementptr inbounds %struct.symsearch, ptr %2, i32 1, i32 3
  br label %40

15:                                               ; preds = %34, %1
  %16 = phi i32 [ 1, %34 ], [ 0, %1 ]
  %17 = phi ptr [ @__start___ksymtab_gpl, %34 ], [ @__start___ksymtab, %1 ]
  %18 = phi ptr [ %32, %34 ], [ %5, %1 ]
  %19 = ptrtoint ptr %17 to i32
  %20 = ptrtoint ptr %18 to i32
  %21 = sub i32 %20, %19
  %22 = sdiv exact i32 %21, 12
  %23 = getelementptr inbounds %struct.find_symbol_arg, ptr %0, i32 0, i32 3
  store ptr null, ptr %23, align 4
  %24 = getelementptr inbounds %struct.find_symbol_arg, ptr %0, i32 0, i32 4
  store ptr null, ptr %24, align 4
  %25 = getelementptr %struct.kernel_symbol, ptr %17, i32 %22
  %26 = getelementptr inbounds %struct.find_symbol_arg, ptr %0, i32 0, i32 5
  store ptr %25, ptr %26, align 4
  %27 = getelementptr [2 x %struct.symsearch], ptr @find_symbol.arr, i32 0, i32 %16, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.find_symbol_arg, ptr %0, i32 0, i32 6
  store i32 %28, ptr %29, align 4
  br label %93

30:                                               ; preds = %1
  %31 = load ptr, ptr %0, align 4
  %32 = tail call ptr @bsearch(ptr noundef %31, ptr noundef nonnull @__start___ksymtab_gpl, i32 noundef sdiv (i32 sub (i32 ptrtoint (ptr @__stop___ksymtab_gpl to i32), i32 ptrtoint (ptr @__start___ksymtab_gpl to i32)), i32 12), i32 noundef 12, ptr noundef nonnull @cmp_name) #29
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i8, ptr %3, align 4, !range !34
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %15

37:                                               ; preds = %34, %30
  %38 = load volatile ptr, ptr @modules, align 4
  %39 = icmp eq ptr %38, @modules
  br i1 %39, label %93, label %7

40:                                               ; preds = %90, %7
  %41 = phi ptr [ %38, %7 ], [ %91, %90 ]
  %42 = getelementptr i8, ptr %41, i32 -4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #29
  %43 = getelementptr i8, ptr %41, i32 136
  %44 = load ptr, ptr %43, align 4
  store ptr %44, ptr %2, align 4
  %45 = getelementptr i8, ptr %41, i32 144
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr %struct.kernel_symbol, ptr %44, i32 %46
  store ptr %47, ptr %8, align 4
  %48 = getelementptr i8, ptr %41, i32 140
  %49 = load ptr, ptr %48, align 16
  store ptr %49, ptr %9, align 4
  store i32 0, ptr %10, align 4
  %50 = getelementptr i8, ptr %41, i32 180
  %51 = load ptr, ptr %50, align 8
  store ptr %51, ptr %11, align 4
  %52 = getelementptr i8, ptr %41, i32 176
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr %struct.kernel_symbol, ptr %51, i32 %53
  store ptr %54, ptr %12, align 4
  %55 = getelementptr i8, ptr %41, i32 184
  %56 = load ptr, ptr %55, align 4
  store ptr %56, ptr %13, align 4
  store i32 1, ptr %14, align 4
  %57 = load i32, ptr %42, align 64
  %58 = icmp eq i32 %57, 3
  br i1 %58, label %90, label %59

59:                                               ; preds = %40
  %60 = load ptr, ptr %0, align 4
  %61 = mul i32 %46, 12
  %62 = sdiv exact i32 %61, 12
  %63 = tail call ptr @bsearch(ptr noundef %60, ptr noundef %44, i32 noundef %62, i32 noundef 12, ptr noundef nonnull @cmp_name) #29
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %74

65:                                               ; preds = %59
  %66 = load ptr, ptr %0, align 4
  %67 = mul i32 %53, 12
  %68 = sdiv exact i32 %67, 12
  %69 = tail call ptr @bsearch(ptr noundef %66, ptr noundef %51, i32 noundef %68, i32 noundef 12, ptr noundef nonnull @cmp_name) #29
  %70 = icmp eq ptr %69, null
  br i1 %70, label %90, label %71

71:                                               ; preds = %65
  %72 = load i8, ptr %3, align 4, !range !34
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %90, label %74

74:                                               ; preds = %71, %59
  %75 = phi i32 [ 0, %59 ], [ 1, %71 ]
  %76 = phi ptr [ %44, %59 ], [ %51, %71 ]
  %77 = phi ptr [ %63, %59 ], [ %69, %71 ]
  %78 = getelementptr i8, ptr %41, i32 -4
  %79 = ptrtoint ptr %76 to i32
  %80 = ptrtoint ptr %77 to i32
  %81 = sub i32 %80, %79
  %82 = sdiv exact i32 %81, 12
  %83 = getelementptr inbounds %struct.find_symbol_arg, ptr %0, i32 0, i32 3
  store ptr %78, ptr %83, align 4
  %84 = getelementptr inbounds %struct.find_symbol_arg, ptr %0, i32 0, i32 4
  store ptr null, ptr %84, align 4
  %85 = getelementptr %struct.kernel_symbol, ptr %76, i32 %82
  %86 = getelementptr inbounds %struct.find_symbol_arg, ptr %0, i32 0, i32 5
  store ptr %85, ptr %86, align 4
  %87 = getelementptr [2 x %struct.symsearch], ptr %2, i32 0, i32 %75, i32 3
  %88 = load i32, ptr %87, align 4
  %89 = getelementptr inbounds %struct.find_symbol_arg, ptr %0, i32 0, i32 6
  store i32 %88, ptr %89, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #29
  br label %93

90:                                               ; preds = %71, %65, %40
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #29
  %91 = load volatile ptr, ptr %41, align 4
  %92 = icmp eq ptr %91, @modules
  br i1 %92, label %93, label %40

93:                                               ; preds = %90, %74, %37, %15
  %94 = phi i1 [ true, %74 ], [ true, %15 ], [ false, %37 ], [ false, %90 ]
  ret i1 %94
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @symbol_put_addr(ptr noundef %0) #0 {
  %2 = ptrtoint ptr %0 to i32
  %3 = tail call i32 @core_kernel_text(i32 noundef %2) #29
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !35
  %6 = tail call ptr @__module_text_address(i32 noundef %2)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !11

8:                                                ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/module.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1042, 0\0A.popsection", ""() #29, !srcloc !36
  unreachable

9:                                                ; preds = %5
  tail call void @module_put(ptr noundef nonnull %6)
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !37
  br label %10

10:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @core_kernel_text(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__module_text_address(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr getelementptr inbounds (%struct.mod_tree_root, ptr @mod_tree, i32 0, i32 1), align 4
  %3 = icmp ugt i32 %2, %0
  %4 = load i32, ptr getelementptr inbounds (%struct.mod_tree_root, ptr @mod_tree, i32 0, i32 2), align 16
  %5 = icmp ult i32 %4, %0
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %88, label %7

7:                                                ; preds = %1
  %8 = inttoptr i32 %0 to ptr
  br label %9

9:                                                ; preds = %37, %7
  %10 = load volatile i32, ptr @mod_tree, align 64
  %11 = and i32 %10, 1
  %12 = getelementptr %struct.mod_tree_root, ptr @mod_tree, i32 0, i32 0, i32 1, i32 %11
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %37, label %15

15:                                               ; preds = %9
  %16 = mul nuw nsw i32 %11, -12
  br label %17

17:                                               ; preds = %33, %15
  %18 = phi ptr [ %13, %15 ], [ %35, %33 ]
  %19 = getelementptr i8, ptr %18, i32 %16
  %20 = getelementptr i8, ptr %19, i32 -24
  %21 = load ptr, ptr %20, align 4
  %22 = icmp ugt ptr %21, %8
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = ptrtoint ptr %21 to i32
  %25 = getelementptr i8, ptr %19, i32 -20
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, %24
  %28 = icmp ugt i32 %27, %0
  br i1 %28, label %37, label %31

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.rb_node, ptr %18, i32 0, i32 2
  br label %33

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.rb_node, ptr %18, i32 0, i32 1
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi ptr [ %30, %29 ], [ %32, %31 ]
  %35 = load volatile ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %17

37:                                               ; preds = %33, %23, %9
  %38 = phi ptr [ null, %9 ], [ null, %33 ], [ %19, %23 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #29, !srcloc !38
  %39 = load volatile i32, ptr @mod_tree, align 64
  %40 = icmp eq i32 %39, %10
  br i1 %40, label %41, label %9

41:                                               ; preds = %37
  %42 = icmp eq ptr %38, null
  br i1 %42, label %88, label %43

43:                                               ; preds = %41
  %44 = getelementptr i8, ptr %38, i32 -4
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %88, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.module, ptr %45, i32 0, i32 24
  %49 = load ptr, ptr %48, align 16
  %50 = ptrtoint ptr %49 to i32
  %51 = icmp ugt i32 %50, %0
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.module, ptr %45, i32 0, i32 24, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, %50
  %56 = icmp ugt i32 %55, %0
  br i1 %56, label %68, label %57

57:                                               ; preds = %52, %47
  %58 = getelementptr inbounds %struct.module, ptr %45, i32 0, i32 23
  %59 = load ptr, ptr %58, align 64
  %60 = ptrtoint ptr %59 to i32
  %61 = icmp ugt i32 %60, %0
  br i1 %61, label %67, label %62, !prof !39

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.module, ptr %45, i32 0, i32 23, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = add i32 %64, %60
  %66 = icmp ugt i32 %65, %0
  br i1 %66, label %68, label %67, !prof !10

67:                                               ; preds = %62, %57
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/module.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4732, 0\0A.popsection", ""() #29, !srcloc !40
  unreachable

68:                                               ; preds = %62, %52
  %69 = load i32, ptr %45, align 64
  %70 = icmp eq i32 %69, 3
  br i1 %70, label %88, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.module, ptr %45, i32 0, i32 24, i32 2
  %73 = load i32, ptr %72, align 8
  %74 = icmp ugt ptr %49, %8
  %75 = getelementptr i8, ptr %49, i32 %73
  %76 = icmp ule ptr %75, %8
  %77 = or i1 %74, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.module, ptr %45, i32 0, i32 23
  %80 = load ptr, ptr %79, align 64
  %81 = getelementptr inbounds %struct.module, ptr %45, i32 0, i32 23, i32 2
  %82 = load i32, ptr %81, align 8
  %83 = icmp ugt ptr %80, %8
  %84 = getelementptr i8, ptr %80, i32 %82
  %85 = icmp ule ptr %84, %8
  %86 = or i1 %83, %85
  %87 = select i1 %86, ptr null, ptr %45
  br label %88

88:                                               ; preds = %78, %71, %68, %43, %41, %1
  %89 = phi ptr [ %45, %71 ], [ %87, %78 ], [ null, %1 ], [ null, %43 ], [ null, %41 ], [ null, %68 ]
  ret ptr %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__module_get(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %34, label %3

3:                                                ; preds = %1
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !41
  %4 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 52
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #29, !srcloc !15
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #29, !srcloc !42
  %6 = tail call ptr @llvm.returnaddress(i32 0)
  %7 = ptrtoint ptr %6 to i32
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_module_get, i32 0, i32 1), align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %3
  %11 = tail call ptr @llvm.thread.pointer() #29
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = lshr i32 %13, 5
  %15 = getelementptr i32, ptr @__cpu_online_mask, i32 %14
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %13, 31
  %18 = shl nuw i32 1, %17
  %19 = and i32 %18, %16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %10
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !43
  %22 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_module_get, i32 0, i32 7), align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %24, %21
  %25 = phi ptr [ %29, %24 ], [ %22, %21 ]
  %26 = load volatile ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.tracepoint_func, ptr %25, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  tail call void %26(ptr noundef %28, ptr noundef nonnull %0, i32 noundef %7) #29
  %29 = getelementptr %struct.tracepoint_func, ptr %25, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %24

32:                                               ; preds = %24, %21
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !44
  br label %33

33:                                               ; preds = %32, %10, %3
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !45
  br label %34

34:                                               ; preds = %33, %1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @try_module_get(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %41, label %3

3:                                                ; preds = %1
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !46
  %4 = load i32, ptr %0, align 64
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %39, label %6, !prof !11

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 52
  tail call void asm sideeffect "dmb ish", "~{memory}"() #29, !srcloc !28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #29, !srcloc !15
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 0, i32 1, ptr elementtype(i32) %7) #29, !srcloc !29
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %39, label %11

11:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #29, !srcloc !30
  %12 = tail call ptr @llvm.returnaddress(i32 0)
  %13 = ptrtoint ptr %12 to i32
  %14 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_module_get, i32 0, i32 1), align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %11
  %17 = tail call ptr @llvm.thread.pointer() #29
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
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !43
  %28 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_module_get, i32 0, i32 7), align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %30, %27
  %31 = phi ptr [ %35, %30 ], [ %28, %27 ]
  %32 = load volatile ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.tracepoint_func, ptr %31, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  tail call void %32(ptr noundef %34, ptr noundef nonnull %0, i32 noundef %13) #29
  %35 = getelementptr %struct.tracepoint_func, ptr %31, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %30

38:                                               ; preds = %30, %27
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !44
  br label %39

39:                                               ; preds = %38, %16, %11, %6, %3
  %40 = phi i1 [ false, %6 ], [ true, %11 ], [ true, %16 ], [ true, %38 ], [ false, %3 ]
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !47
  br label %41

41:                                               ; preds = %39, %1
  %42 = phi i1 [ %40, %39 ], [ true, %1 ]
  ret i1 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @store_uevent(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = tail call i32 @kobject_synth_uevent(ptr noundef %1, ptr noundef %2, i32 noundef %3) #29
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i32 %3, i32 %5
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @module_memfree(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @llvm.thread.pointer() #29
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 15728640
  %6 = load volatile i32, ptr %3, align 4
  %7 = and i32 %6, 983040
  %8 = or i32 %7, %5
  %9 = load volatile i32, ptr %3, align 4
  %10 = and i32 %9, 65280
  %11 = or i32 %8, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13, !prof !10

13:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2142, i32 noundef 9, ptr noundef null) #29
  br label %14

14:                                               ; preds = %13, %1
  tail call void @vfree(ptr noundef %0) #29
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @module_arch_cleanup(ptr noundef %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @module_arch_freeing_init(ptr noundef %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__symbol_get(ptr noundef %0) #0 {
  %2 = alloca %struct.find_symbol_arg, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #29
  %3 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %3, i8 0, i64 20, i1 false)
  store ptr %0, ptr %2, align 4
  %4 = getelementptr inbounds %struct.find_symbol_arg, ptr %2, i32 0, i32 1
  store i8 1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.find_symbol_arg, ptr %2, i32 0, i32 2
  store i8 1, ptr %5, align 1
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !48
  %6 = call fastcc zeroext i1 @find_symbol(ptr noundef nonnull %2)
  br i1 %6, label %7, label %52

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.find_symbol_arg, ptr %2, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %53, label %11

11:                                               ; preds = %7
  %12 = load i32, ptr %9, align 64
  switch i32 %12, label %14 [
    i32 3, label %13
    i32 1, label %52
  ], !prof !49

13:                                               ; preds = %11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/module.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 320, 0\0A.popsection", ""() #29, !srcloc !50
  unreachable

14:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !46
  %15 = load i32, ptr %9, align 64
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %51, label %17, !prof !11

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.module, ptr %9, i32 0, i32 52
  tail call void asm sideeffect "dmb ish", "~{memory}"() #29, !srcloc !28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #29, !srcloc !15
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 0, i32 1, ptr elementtype(i32) %18) #29, !srcloc !29
  %20 = extractvalue { i32, i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %51, label %22

22:                                               ; preds = %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #29, !srcloc !30
  %23 = tail call ptr @llvm.returnaddress(i32 0) #29
  %24 = ptrtoint ptr %23 to i32
  %25 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_module_get, i32 0, i32 1), align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %22
  %28 = tail call ptr @llvm.thread.pointer() #29
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
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !43
  %39 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_module_get, i32 0, i32 7), align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %49, label %41

41:                                               ; preds = %41, %38
  %42 = phi ptr [ %46, %41 ], [ %39, %38 ]
  %43 = load volatile ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.tracepoint_func, ptr %42, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  tail call void %43(ptr noundef %45, ptr noundef nonnull %9, i32 noundef %24) #29
  %46 = getelementptr %struct.tracepoint_func, ptr %42, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %41

49:                                               ; preds = %41, %38
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !44
  br label %50

50:                                               ; preds = %49, %27, %22
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !47
  br label %53

51:                                               ; preds = %17, %14
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !47
  br label %52

52:                                               ; preds = %51, %11, %1
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !51
  br label %58

53:                                               ; preds = %50, %7
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !52
  %54 = getelementptr inbounds %struct.find_symbol_arg, ptr %2, i32 0, i32 5
  %55 = load ptr, ptr %54, align 4
  %56 = load i32, ptr %55, align 4
  %57 = inttoptr i32 %56 to ptr
  br label %58

58:                                               ; preds = %53, %52
  %59 = phi ptr [ null, %52 ], [ %57, %53 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #29
  ret ptr %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @arch_mod_section_prepend(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local ptr @module_alloc(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @high_memory, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = add i32 %3, 8388608
  %5 = and i32 %4, -8388608
  %6 = load i32, ptr @pgprot_kernel, align 4
  %7 = tail call ptr @llvm.returnaddress(i32 0)
  %8 = tail call noalias ptr @__vmalloc_node_range(i32 noundef %0, i32 noundef 1, i32 noundef %5, i32 noundef -8388608, i32 noundef 3264, i32 noundef %6, i32 noundef 256, i32 noundef -1, ptr noundef %7) #32
  ret ptr %8
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__vmalloc_node_range(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local zeroext i1 @module_init_section(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @strncmp(ptr noundef %0, ptr noundef nonnull dereferenceable(6) @.str.2, i32 noundef 5) #29
  %3 = icmp eq i32 %2, 0
  ret i1 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local zeroext i1 @module_exit_section(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @strncmp(ptr noundef %0, ptr noundef nonnull dereferenceable(6) @.str.3, i32 noundef 5) #29
  %3 = icmp eq i32 %2, 0
  ret i1 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @module_frob_arch_sections(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @module_finalize(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_init_module(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.load_info, align 4
  %5 = inttoptr i32 %0 to ptr
  %6 = inttoptr i32 %2 to ptr
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %4) #29
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(84) %4, i8 0, i32 84, i1 false) #29
  %7 = tail call zeroext i1 @capable(i32 noundef 16) #29
  %8 = load i32, ptr @modules_disabled, align 4
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %46

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.load_info, ptr %4, i32 0, i32 3
  store i32 %1, ptr %12, align 4
  %13 = icmp ult i32 %1, 52
  br i1 %13, label %46, label %14

14:                                               ; preds = %11
  %15 = tail call noalias ptr @__vmalloc(i32 noundef %1, i32 noundef 11456) #32
  %16 = getelementptr inbounds %struct.load_info, ptr %4, i32 0, i32 2
  store ptr %15, ptr %16, align 4
  %17 = icmp eq ptr %15, null
  br i1 %17, label %46, label %18

18:                                               ; preds = %38, %14
  %19 = phi i32 [ %42, %38 ], [ %1, %14 ]
  %20 = phi ptr [ %41, %38 ], [ %5, %14 ]
  %21 = phi ptr [ %40, %38 ], [ %15, %14 ]
  %22 = tail call i32 @llvm.umin.i32(i32 %19, i32 65536) #29
  %23 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %20, i32 %22, i32 -1090519040) #33, !srcloc !53
  %24 = extractvalue { i32, i32 } %23, 0
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %34, !prof !10

26:                                               ; preds = %18
  %27 = tail call ptr @llvm.thread.pointer() #29
  %28 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 3
  %29 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %28) #17, !srcloc !54
  %30 = and i32 %29, -13
  %31 = or i32 %30, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #29, !srcloc !55
  tail call void asm sideeffect "isb ", "~{memory}"() #29, !srcloc !56
  %32 = tail call i32 @arm_copy_from_user(ptr noundef %21, ptr noundef %20, i32 noundef %22) #29
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #29, !srcloc !55
  tail call void asm sideeffect "isb ", "~{memory}"() #29, !srcloc !56
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34, !prof !10

34:                                               ; preds = %26, %18
  %35 = phi i32 [ %32, %26 ], [ %22, %18 ]
  %36 = sub i32 %22, %35
  %37 = getelementptr i8, ptr %21, i32 %36
  tail call void @llvm.memset.p0.i32(ptr align 1 %37, i8 0, i32 %35, i1 false) #29
  tail call void @vfree(ptr noundef nonnull %15) #29
  br label %46

38:                                               ; preds = %26
  %39 = tail call i32 @__cond_resched() #29
  %40 = getelementptr i8, ptr %21, i32 %22
  %41 = getelementptr i8, ptr %20, i32 %22
  %42 = sub i32 %19, %22
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %18

44:                                               ; preds = %38
  %45 = call fastcc i32 @load_module(ptr noundef nonnull %4, ptr noundef %6, i32 noundef 0) #29
  br label %46

46:                                               ; preds = %44, %34, %14, %11, %3
  %47 = phi i32 [ %45, %44 ], [ -1, %3 ], [ -14, %34 ], [ -12, %14 ], [ -8, %11 ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %4) #29
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_finit_module(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.load_info, align 4
  %5 = alloca ptr, align 4
  %6 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %4) #29
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(84) %4, i8 0, i32 84, i1 false) #29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #29
  store ptr null, ptr %5, align 4
  %7 = tail call zeroext i1 @capable(i32 noundef 16) #29
  %8 = load i32, ptr @modules_disabled, align 4
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %25

11:                                               ; preds = %3
  %12 = icmp ult i32 %2, 8
  br i1 %12, label %13, label %25

13:                                               ; preds = %11
  %14 = call i32 @kernel_read_file_from_fd(i32 noundef %0, i64 noundef 0, ptr noundef nonnull %5, i32 noundef 2147483647, ptr noundef null, i32 noundef 2) #29
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %13
  %17 = and i32 %2, 4
  %18 = icmp eq i32 %17, 0
  %19 = load ptr, ptr %5, align 4
  br i1 %18, label %21, label %20

20:                                               ; preds = %16
  call void @vfree(ptr noundef %19) #29
  br label %25

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.load_info, ptr %4, i32 0, i32 2
  store ptr %19, ptr %22, align 4
  %23 = getelementptr inbounds %struct.load_info, ptr %4, i32 0, i32 3
  store i32 %14, ptr %23, align 4
  %24 = call fastcc i32 @load_module(ptr noundef nonnull %4, ptr noundef %6, i32 noundef %2) #29
  br label %25

25:                                               ; preds = %21, %20, %13, %11, %3
  %26 = phi i32 [ -95, %20 ], [ %24, %21 ], [ -1, %3 ], [ -22, %11 ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %4) #29
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local ptr @dereference_module_function_descriptor(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @module_address_lookup(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef writeonly %3, ptr noundef writeonly %4, ptr noundef %5) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !57
  %7 = load i32, ptr getelementptr inbounds (%struct.mod_tree_root, ptr @mod_tree, i32 0, i32 1), align 4
  %8 = icmp ugt i32 %7, %0
  %9 = load i32, ptr getelementptr inbounds (%struct.mod_tree_root, ptr @mod_tree, i32 0, i32 2), align 16
  %10 = icmp ult i32 %9, %0
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %88, label %12

12:                                               ; preds = %6
  %13 = inttoptr i32 %0 to ptr
  br label %14

14:                                               ; preds = %42, %12
  %15 = load volatile i32, ptr @mod_tree, align 64
  %16 = and i32 %15, 1
  %17 = getelementptr %struct.mod_tree_root, ptr @mod_tree, i32 0, i32 0, i32 1, i32 %16
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %42, label %20

20:                                               ; preds = %14
  %21 = mul nuw nsw i32 %16, -12
  br label %22

22:                                               ; preds = %38, %20
  %23 = phi ptr [ %18, %20 ], [ %40, %38 ]
  %24 = getelementptr i8, ptr %23, i32 %21
  %25 = getelementptr i8, ptr %24, i32 -24
  %26 = load ptr, ptr %25, align 4
  %27 = icmp ugt ptr %26, %13
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = ptrtoint ptr %26 to i32
  %30 = getelementptr i8, ptr %24, i32 -20
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, %29
  %33 = icmp ugt i32 %32, %0
  br i1 %33, label %42, label %36

34:                                               ; preds = %22
  %35 = getelementptr inbounds %struct.rb_node, ptr %23, i32 0, i32 2
  br label %38

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.rb_node, ptr %23, i32 0, i32 1
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi ptr [ %35, %34 ], [ %37, %36 ]
  %40 = load volatile ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %22

42:                                               ; preds = %38, %28, %14
  %43 = phi ptr [ null, %14 ], [ null, %38 ], [ %24, %28 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #29, !srcloc !38
  %44 = load volatile i32, ptr @mod_tree, align 64
  %45 = icmp eq i32 %44, %15
  br i1 %45, label %46, label %14

46:                                               ; preds = %42
  %47 = icmp eq ptr %43, null
  br i1 %47, label %88, label %48

48:                                               ; preds = %46
  %49 = getelementptr i8, ptr %43, i32 -4
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %88, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.module, ptr %50, i32 0, i32 24
  %54 = load ptr, ptr %53, align 16
  %55 = ptrtoint ptr %54 to i32
  %56 = icmp ugt i32 %55, %0
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.module, ptr %50, i32 0, i32 24, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %59, %55
  %61 = icmp ugt i32 %60, %0
  br i1 %61, label %73, label %62

62:                                               ; preds = %57, %52
  %63 = getelementptr inbounds %struct.module, ptr %50, i32 0, i32 23
  %64 = load ptr, ptr %63, align 64
  %65 = ptrtoint ptr %64 to i32
  %66 = icmp ugt i32 %65, %0
  br i1 %66, label %72, label %67, !prof !39

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.module, ptr %50, i32 0, i32 23, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = add i32 %69, %65
  %71 = icmp ugt i32 %70, %0
  br i1 %71, label %73, label %72, !prof !10

72:                                               ; preds = %67, %62
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/module.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4732, 0\0A.popsection", ""() #29, !srcloc !40
  unreachable

73:                                               ; preds = %67, %57
  %74 = load i32, ptr %50, align 64
  %75 = icmp eq i32 %74, 3
  br i1 %75, label %88, label %76

76:                                               ; preds = %73
  %77 = icmp eq ptr %3, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.module, ptr %50, i32 0, i32 2
  store ptr %79, ptr %3, align 4
  br label %80

80:                                               ; preds = %78, %76
  %81 = icmp eq ptr %4, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %80
  store ptr null, ptr %4, align 4
  br label %83

83:                                               ; preds = %82, %80
  %84 = tail call fastcc ptr @find_kallsyms_symbol(ptr noundef nonnull %50, i32 noundef %0, ptr noundef %1, ptr noundef %2)
  %85 = icmp eq ptr %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %83
  %87 = tail call ptr @strncpy(ptr noundef %5, ptr noundef nonnull %84, i32 noundef 127)
  br label %88

88:                                               ; preds = %86, %83, %73, %48, %46, %6
  %89 = phi ptr [ %5, %86 ], [ null, %83 ], [ null, %73 ], [ null, %46 ], [ null, %48 ], [ null, %6 ]
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !58
  ret ptr %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__module_address(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr getelementptr inbounds (%struct.mod_tree_root, ptr @mod_tree, i32 0, i32 1), align 4
  %3 = icmp ugt i32 %2, %0
  %4 = load i32, ptr getelementptr inbounds (%struct.mod_tree_root, ptr @mod_tree, i32 0, i32 2), align 16
  %5 = icmp ult i32 %4, %0
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %72, label %7

7:                                                ; preds = %1
  %8 = inttoptr i32 %0 to ptr
  br label %9

9:                                                ; preds = %37, %7
  %10 = load volatile i32, ptr @mod_tree, align 64
  %11 = and i32 %10, 1
  %12 = getelementptr %struct.mod_tree_root, ptr @mod_tree, i32 0, i32 0, i32 1, i32 %11
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %37, label %15

15:                                               ; preds = %9
  %16 = mul nuw nsw i32 %11, -12
  br label %17

17:                                               ; preds = %33, %15
  %18 = phi ptr [ %13, %15 ], [ %35, %33 ]
  %19 = getelementptr i8, ptr %18, i32 %16
  %20 = getelementptr i8, ptr %19, i32 -24
  %21 = load ptr, ptr %20, align 4
  %22 = icmp ugt ptr %21, %8
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = ptrtoint ptr %21 to i32
  %25 = getelementptr i8, ptr %19, i32 -20
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, %24
  %28 = icmp ugt i32 %27, %0
  br i1 %28, label %37, label %31

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.rb_node, ptr %18, i32 0, i32 2
  br label %33

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.rb_node, ptr %18, i32 0, i32 1
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi ptr [ %30, %29 ], [ %32, %31 ]
  %35 = load volatile ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %17

37:                                               ; preds = %33, %23, %9
  %38 = phi ptr [ null, %9 ], [ %19, %23 ], [ null, %33 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #29, !srcloc !38
  %39 = load volatile i32, ptr @mod_tree, align 64
  %40 = icmp eq i32 %39, %10
  br i1 %40, label %41, label %9

41:                                               ; preds = %37
  %42 = icmp eq ptr %38, null
  br i1 %42, label %72, label %43

43:                                               ; preds = %41
  %44 = getelementptr i8, ptr %38, i32 -4
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %72, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.module, ptr %45, i32 0, i32 24
  %49 = load ptr, ptr %48, align 16
  %50 = ptrtoint ptr %49 to i32
  %51 = icmp ugt i32 %50, %0
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.module, ptr %45, i32 0, i32 24, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, %50
  %56 = icmp ugt i32 %55, %0
  br i1 %56, label %68, label %57

57:                                               ; preds = %52, %47
  %58 = getelementptr inbounds %struct.module, ptr %45, i32 0, i32 23
  %59 = load ptr, ptr %58, align 64
  %60 = ptrtoint ptr %59 to i32
  %61 = icmp ugt i32 %60, %0
  br i1 %61, label %67, label %62, !prof !39

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.module, ptr %45, i32 0, i32 23, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = add i32 %64, %60
  %66 = icmp ugt i32 %65, %0
  br i1 %66, label %68, label %67, !prof !10

67:                                               ; preds = %62, %57
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/module.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4732, 0\0A.popsection", ""() #29, !srcloc !40
  unreachable

68:                                               ; preds = %62, %52
  %69 = load i32, ptr %45, align 64
  %70 = icmp eq i32 %69, 3
  %71 = select i1 %70, ptr null, ptr %45
  br label %72

72:                                               ; preds = %68, %43, %41, %1
  %73 = phi ptr [ null, %1 ], [ %71, %68 ], [ null, %43 ], [ null, %41 ]
  ret ptr %73
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @find_kallsyms_symbol(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2, ptr noundef writeonly %3) unnamed_addr #6 {
  %5 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 30
  %6 = load volatile ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 24
  %8 = load ptr, ptr %7, align 16
  %9 = ptrtoint ptr %8 to i32
  %10 = icmp ugt i32 %9, %1
  br i1 %10, label %18, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 24, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, %9
  %15 = icmp ugt i32 %14, %1
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 24, i32 2
  br label %23

18:                                               ; preds = %11, %4
  %19 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 23
  %20 = load ptr, ptr %19, align 64
  %21 = ptrtoint ptr %20 to i32
  %22 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 23, i32 2
  br label %23

23:                                               ; preds = %18, %16
  %24 = phi ptr [ %22, %18 ], [ %17, %16 ]
  %25 = phi i32 [ %21, %18 ], [ %9, %16 ]
  %26 = load ptr, ptr %6, align 4
  %27 = getelementptr inbounds %struct.mod_kallsyms, ptr %6, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp ugt i32 %28, 1
  br i1 %29, label %30, label %98

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.elf32_sym, ptr %26, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = load i32, ptr %24, align 8
  %34 = add i32 %33, %25
  %35 = getelementptr inbounds %struct.mod_kallsyms, ptr %6, i32 0, i32 2
  br label %36

36:                                               ; preds = %75, %30
  %37 = phi i32 [ 1, %30 ], [ %79, %75 ]
  %38 = phi i32 [ 0, %30 ], [ %78, %75 ]
  %39 = phi i32 [ %34, %30 ], [ %77, %75 ]
  %40 = phi i32 [ %32, %30 ], [ %76, %75 ]
  %41 = getelementptr %struct.elf32_sym, ptr %26, i32 %37, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr %struct.elf32_sym, ptr %26, i32 %37, i32 5
  %44 = load i16, ptr %43, align 2
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %75, label %46

46:                                               ; preds = %36
  %47 = getelementptr %struct.elf32_sym, ptr %26, i32 %37
  %48 = load ptr, ptr %35, align 4
  %49 = load i32, ptr %47, align 4
  %50 = getelementptr i8, ptr %48, i32 %49
  %51 = load i8, ptr %50, align 1
  switch i8 %51, label %65 [
    i8 0, label %75
    i8 46, label %52
    i8 36, label %56
  ]

52:                                               ; preds = %46
  %53 = getelementptr i8, ptr %50, i32 1
  %54 = load i8, ptr %53, align 1
  %55 = icmp eq i8 %54, 76
  br i1 %55, label %75, label %65

56:                                               ; preds = %46
  %57 = getelementptr i8, ptr %50, i32 1
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  %60 = tail call ptr @memchr(ptr noundef nonnull @.str.139, i32 %59, i32 5) #29
  %61 = icmp eq ptr %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %56
  %63 = getelementptr i8, ptr %50, i32 2
  %64 = load i8, ptr %63, align 1
  switch i8 %64, label %65 [
    i8 46, label %75
    i8 0, label %75
  ]

65:                                               ; preds = %62, %56, %52, %46
  %66 = icmp ule i32 %42, %1
  %67 = icmp ugt i32 %42, %40
  %68 = select i1 %66, i1 %67, i1 false
  %69 = select i1 %68, i32 %42, i32 %40
  %70 = select i1 %68, i32 %37, i32 %38
  %71 = icmp ugt i32 %42, %1
  %72 = icmp ult i32 %42, %39
  %73 = select i1 %71, i1 %72, i1 false
  %74 = select i1 %73, i32 %42, i32 %39
  br label %75

75:                                               ; preds = %65, %62, %62, %52, %46, %36
  %76 = phi i32 [ %69, %65 ], [ %40, %36 ], [ %40, %62 ], [ %40, %46 ], [ %40, %52 ], [ %40, %62 ]
  %77 = phi i32 [ %74, %65 ], [ %39, %36 ], [ %39, %62 ], [ %39, %46 ], [ %39, %52 ], [ %39, %62 ]
  %78 = phi i32 [ %70, %65 ], [ %38, %36 ], [ %38, %62 ], [ %38, %46 ], [ %38, %52 ], [ %38, %62 ]
  %79 = add nuw i32 %37, 1
  %80 = icmp eq i32 %79, %28
  br i1 %80, label %81, label %36

81:                                               ; preds = %75
  %82 = icmp eq i32 %78, 0
  br i1 %82, label %98, label %83

83:                                               ; preds = %81
  %84 = icmp eq ptr %2, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %83
  %86 = sub i32 %77, %76
  store i32 %86, ptr %2, align 4
  br label %87

87:                                               ; preds = %85, %83
  %88 = icmp eq ptr %3, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %87
  %90 = sub i32 %1, %76
  store i32 %90, ptr %3, align 4
  br label %91

91:                                               ; preds = %89, %87
  %92 = getelementptr inbounds %struct.mod_kallsyms, ptr %6, i32 0, i32 2
  %93 = load ptr, ptr %92, align 4
  %94 = load ptr, ptr %6, align 4
  %95 = getelementptr %struct.elf32_sym, ptr %94, i32 %78
  %96 = load i32, ptr %95, align 4
  %97 = getelementptr i8, ptr %93, i32 %96
  br label %98

98:                                               ; preds = %91, %81, %23
  %99 = phi ptr [ %97, %91 ], [ null, %81 ], [ null, %23 ]
  ret ptr %99
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @lookup_module_symbol_name(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !59
  %3 = load volatile ptr, ptr @modules, align 4
  %4 = icmp eq ptr %3, @modules
  br i1 %4, label %39, label %5

5:                                                ; preds = %36, %2
  %6 = phi ptr [ %37, %36 ], [ %3, %2 ]
  %7 = getelementptr i8, ptr %6, i32 -4
  %8 = load i32, ptr %7, align 64
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %36, label %10

10:                                               ; preds = %5
  %11 = getelementptr i8, ptr %6, i32 300
  %12 = load ptr, ptr %11, align 16
  %13 = ptrtoint ptr %12 to i32
  %14 = icmp ugt i32 %13, %0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = getelementptr i8, ptr %6, i32 304
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, %13
  %19 = icmp ugt i32 %18, %0
  br i1 %19, label %30, label %20

20:                                               ; preds = %15, %10
  %21 = getelementptr i8, ptr %6, i32 252
  %22 = load ptr, ptr %21, align 64
  %23 = ptrtoint ptr %22 to i32
  %24 = icmp ugt i32 %23, %0
  br i1 %24, label %36, label %25

25:                                               ; preds = %20
  %26 = getelementptr i8, ptr %6, i32 256
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, %23
  %29 = icmp ugt i32 %28, %0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25, %15
  %31 = getelementptr i8, ptr %6, i32 -4
  %32 = tail call fastcc ptr @find_kallsyms_symbol(ptr noundef %31, i32 noundef %0, ptr noundef null, ptr noundef null)
  %33 = icmp eq ptr %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = tail call i32 @strlcpy(ptr noundef %1, ptr noundef nonnull %32, i32 noundef 128) #29
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !60
  br label %40

36:                                               ; preds = %25, %20, %5
  %37 = load volatile ptr, ptr %6, align 4
  %38 = icmp eq ptr %37, @modules
  br i1 %38, label %39, label %5

39:                                               ; preds = %36, %30, %2
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !61
  br label %40

40:                                               ; preds = %39, %34
  %41 = phi i32 [ -34, %39 ], [ 0, %34 ]
  ret i32 %41
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @lookup_module_symbol_attrs(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !62
  %6 = load volatile ptr, ptr @modules, align 4
  %7 = icmp eq ptr %6, @modules
  br i1 %7, label %50, label %8

8:                                                ; preds = %47, %5
  %9 = phi ptr [ %48, %47 ], [ %6, %5 ]
  %10 = getelementptr i8, ptr %9, i32 -4
  %11 = load i32, ptr %10, align 64
  %12 = icmp eq i32 %11, 3
  br i1 %12, label %47, label %13

13:                                               ; preds = %8
  %14 = getelementptr i8, ptr %9, i32 300
  %15 = load ptr, ptr %14, align 16
  %16 = ptrtoint ptr %15 to i32
  %17 = icmp ugt i32 %16, %0
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = getelementptr i8, ptr %9, i32 304
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, %16
  %22 = icmp ugt i32 %21, %0
  br i1 %22, label %33, label %23

23:                                               ; preds = %18, %13
  %24 = getelementptr i8, ptr %9, i32 252
  %25 = load ptr, ptr %24, align 64
  %26 = ptrtoint ptr %25 to i32
  %27 = icmp ugt i32 %26, %0
  br i1 %27, label %47, label %28

28:                                               ; preds = %23
  %29 = getelementptr i8, ptr %9, i32 256
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, %26
  %32 = icmp ugt i32 %31, %0
  br i1 %32, label %33, label %47

33:                                               ; preds = %28, %18
  %34 = getelementptr i8, ptr %9, i32 -4
  %35 = tail call fastcc ptr @find_kallsyms_symbol(ptr noundef %34, i32 noundef %0, ptr noundef %1, ptr noundef %2)
  %36 = icmp eq ptr %35, null
  br i1 %36, label %50, label %37

37:                                               ; preds = %33
  %38 = icmp eq ptr %3, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %37
  %40 = getelementptr i8, ptr %9, i32 8
  %41 = tail call i32 @strlcpy(ptr noundef nonnull %3, ptr noundef %40, i32 noundef 60) #29
  br label %42

42:                                               ; preds = %39, %37
  %43 = icmp eq ptr %4, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %42
  %45 = tail call i32 @strlcpy(ptr noundef nonnull %4, ptr noundef nonnull %35, i32 noundef 128) #29
  br label %46

46:                                               ; preds = %44, %42
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !63
  br label %51

47:                                               ; preds = %28, %23, %8
  %48 = load volatile ptr, ptr %9, align 4
  %49 = icmp eq ptr %48, @modules
  br i1 %49, label %50, label %8

50:                                               ; preds = %47, %33, %5
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !64
  br label %51

51:                                               ; preds = %50, %46
  %52 = phi i32 [ -34, %50 ], [ 0, %46 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @module_get_kallsym(i32 noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !65
  %7 = load volatile ptr, ptr @modules, align 4
  %8 = icmp eq ptr %7, @modules
  br i1 %8, label %66, label %9

9:                                                ; preds = %62, %6
  %10 = phi ptr [ %64, %62 ], [ %7, %6 ]
  %11 = phi i32 [ %63, %62 ], [ %0, %6 ]
  %12 = getelementptr i8, ptr %10, i32 -4
  %13 = load i32, ptr %12, align 64
  %14 = icmp eq i32 %13, 3
  br i1 %14, label %62, label %15

15:                                               ; preds = %9
  %16 = getelementptr i8, ptr %10, i32 420
  %17 = load volatile ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.mod_kallsyms, ptr %17, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp ult i32 %11, %19
  br i1 %20, label %21, label %58

21:                                               ; preds = %15
  %22 = getelementptr i8, ptr %10, i32 -4
  %23 = load ptr, ptr %17, align 4
  %24 = getelementptr %struct.elf32_sym, ptr %23, i32 %11, i32 1
  %25 = load i32, ptr %24, align 4
  store i32 %25, ptr %1, align 4
  %26 = getelementptr inbounds %struct.mod_kallsyms, ptr %17, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 %11
  %29 = load i8, ptr %28, align 1
  store i8 %29, ptr %2, align 1
  %30 = getelementptr inbounds %struct.mod_kallsyms, ptr %17, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %17, align 4
  %33 = getelementptr %struct.elf32_sym, ptr %32, i32 %11
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr i8, ptr %31, i32 %34
  %36 = tail call i32 @strlcpy(ptr noundef %3, ptr noundef %35, i32 noundef 128) #29
  %37 = getelementptr i8, ptr %10, i32 8
  %38 = tail call i32 @strlcpy(ptr noundef %4, ptr noundef %37, i32 noundef 60) #29
  %39 = load i32, ptr %1, align 4
  %40 = icmp eq ptr %22, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %21
  %42 = tail call ptr @bsearch(ptr noundef %3, ptr noundef nonnull @__start___ksymtab, i32 noundef sdiv (i32 sub (i32 ptrtoint (ptr @__stop___ksymtab to i32), i32 ptrtoint (ptr @__start___ksymtab to i32)), i32 12), i32 noundef 12, ptr noundef nonnull @cmp_name) #29
  br label %51

43:                                               ; preds = %21
  %44 = getelementptr i8, ptr %10, i32 136
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr i8, ptr %10, i32 144
  %47 = load i32, ptr %46, align 4
  %48 = mul i32 %47, 12
  %49 = sdiv exact i32 %48, 12
  %50 = tail call ptr @bsearch(ptr noundef %3, ptr noundef %45, i32 noundef %49, i32 noundef 12, ptr noundef nonnull @cmp_name) #29
  br label %51

51:                                               ; preds = %43, %41
  %52 = phi ptr [ %50, %43 ], [ %42, %41 ]
  %53 = icmp eq ptr %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %51
  %55 = load i32, ptr %52, align 4
  %56 = icmp eq i32 %55, %39
  %57 = zext i1 %56 to i32
  br label %60

58:                                               ; preds = %15
  %59 = sub i32 %11, %19
  br label %62

60:                                               ; preds = %54, %51
  %61 = phi i32 [ 0, %51 ], [ %57, %54 ]
  store i32 %61, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !66
  br label %67

62:                                               ; preds = %58, %9
  %63 = phi i32 [ %11, %9 ], [ %59, %58 ]
  %64 = load volatile ptr, ptr %10, align 4
  %65 = icmp eq ptr %64, @modules
  br i1 %65, label %66, label %9

66:                                               ; preds = %62, %6
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !67
  br label %67

67:                                               ; preds = %66, %60
  %68 = phi i32 [ 0, %60 ], [ -34, %66 ]
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @module_kallsyms_lookup_name(ptr noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !68
  %2 = tail call ptr @strnchr(ptr noundef %0, i32 noundef 60, i32 noundef 58) #29
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = load volatile ptr, ptr @modules, align 4
  %6 = icmp eq ptr %5, @modules
  br i1 %6, label %95, label %59

7:                                                ; preds = %1
  %8 = ptrtoint ptr %2 to i32
  %9 = ptrtoint ptr %0 to i32
  %10 = sub i32 %8, %9
  %11 = load volatile ptr, ptr @modules, align 4
  %12 = icmp eq ptr %11, @modules
  br i1 %12, label %95, label %13

13:                                               ; preds = %25, %7
  %14 = phi ptr [ %26, %25 ], [ %11, %7 ]
  %15 = getelementptr i8, ptr %14, i32 -4
  %16 = load i32, ptr %15, align 64
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %25, label %18

18:                                               ; preds = %13
  %19 = getelementptr i8, ptr %14, i32 8
  %20 = tail call i32 @strlen(ptr noundef %19) #29
  %21 = icmp eq i32 %20, %10
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = tail call i32 @bcmp(ptr %19, ptr %0, i32 %10) #29
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22, %18, %13
  %26 = load volatile ptr, ptr %14, align 4
  %27 = icmp eq ptr %26, @modules
  br i1 %27, label %95, label %13

28:                                               ; preds = %22
  %29 = getelementptr i8, ptr %14, i32 -4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %95, label %31

31:                                               ; preds = %28
  %32 = getelementptr i8, ptr %2, i32 1
  %33 = getelementptr i8, ptr %14, i32 420
  %34 = load volatile ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.mod_kallsyms, ptr %34, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %95, label %38

38:                                               ; preds = %31
  %39 = load ptr, ptr %34, align 4
  %40 = getelementptr inbounds %struct.mod_kallsyms, ptr %34, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  br label %42

42:                                               ; preds = %56, %38
  %43 = phi i32 [ 0, %38 ], [ %57, %56 ]
  %44 = getelementptr %struct.elf32_sym, ptr %39, i32 %43
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr i8, ptr %41, i32 %45
  %47 = tail call i32 @strcmp(ptr noundef %32, ptr noundef %46) #29
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %42
  %50 = getelementptr %struct.elf32_sym, ptr %39, i32 %43, i32 5
  %51 = load i16, ptr %50, align 2
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = getelementptr %struct.elf32_sym, ptr %39, i32 %43, i32 1
  %55 = load i32, ptr %54, align 4
  br label %95

56:                                               ; preds = %49, %42
  %57 = add nuw i32 %43, 1
  %58 = icmp eq i32 %57, %36
  br i1 %58, label %95, label %42

59:                                               ; preds = %92, %4
  %60 = phi ptr [ %93, %92 ], [ %5, %4 ]
  %61 = getelementptr i8, ptr %60, i32 -4
  %62 = load i32, ptr %61, align 64
  %63 = icmp eq i32 %62, 3
  br i1 %63, label %92, label %64

64:                                               ; preds = %59
  %65 = getelementptr i8, ptr %60, i32 420
  %66 = load volatile ptr, ptr %65, align 8
  %67 = getelementptr inbounds %struct.mod_kallsyms, ptr %66, i32 0, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %92, label %70

70:                                               ; preds = %64
  %71 = load ptr, ptr %66, align 4
  %72 = getelementptr inbounds %struct.mod_kallsyms, ptr %66, i32 0, i32 2
  %73 = load ptr, ptr %72, align 4
  br label %74

74:                                               ; preds = %85, %70
  %75 = phi i32 [ 0, %70 ], [ %86, %85 ]
  %76 = getelementptr %struct.elf32_sym, ptr %71, i32 %75
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr i8, ptr %73, i32 %77
  %79 = tail call i32 @strcmp(ptr noundef %0, ptr noundef %78) #29
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %74
  %82 = getelementptr %struct.elf32_sym, ptr %71, i32 %75, i32 5
  %83 = load i16, ptr %82, align 2
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %81, %74
  %86 = add nuw i32 %75, 1
  %87 = icmp eq i32 %86, %68
  br i1 %87, label %92, label %74

88:                                               ; preds = %81
  %89 = getelementptr %struct.elf32_sym, ptr %71, i32 %75, i32 1
  %90 = load i32, ptr %89, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %88, %85, %64, %59
  %93 = load volatile ptr, ptr %60, align 4
  %94 = icmp eq ptr %93, @modules
  br i1 %94, label %95, label %59

95:                                               ; preds = %92, %88, %56, %53, %31, %28, %25, %7, %4
  %96 = phi i32 [ 0, %28 ], [ %55, %53 ], [ 0, %31 ], [ 0, %7 ], [ 0, %4 ], [ %90, %88 ], [ 0, %92 ], [ 0, %56 ], [ 0, %25 ]
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !69
  ret i32 %96
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strnchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @proc_modules_init() #15 section ".init.text" {
  %1 = tail call ptr @proc_create(ptr noundef nonnull @.str.140, i16 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @modules_proc_ops) #29
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @search_module_extables(i32 noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !70
  %2 = load i32, ptr getelementptr inbounds (%struct.mod_tree_root, ptr @mod_tree, i32 0, i32 1), align 4
  %3 = icmp ugt i32 %2, %0
  %4 = load i32, ptr getelementptr inbounds (%struct.mod_tree_root, ptr @mod_tree, i32 0, i32 2), align 16
  %5 = icmp ult i32 %4, %0
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %79, label %7

7:                                                ; preds = %1
  %8 = inttoptr i32 %0 to ptr
  br label %9

9:                                                ; preds = %37, %7
  %10 = load volatile i32, ptr @mod_tree, align 64
  %11 = and i32 %10, 1
  %12 = getelementptr %struct.mod_tree_root, ptr @mod_tree, i32 0, i32 0, i32 1, i32 %11
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %37, label %15

15:                                               ; preds = %9
  %16 = mul nuw nsw i32 %11, -12
  br label %17

17:                                               ; preds = %33, %15
  %18 = phi ptr [ %13, %15 ], [ %35, %33 ]
  %19 = getelementptr i8, ptr %18, i32 %16
  %20 = getelementptr i8, ptr %19, i32 -24
  %21 = load ptr, ptr %20, align 4
  %22 = icmp ugt ptr %21, %8
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = ptrtoint ptr %21 to i32
  %25 = getelementptr i8, ptr %19, i32 -20
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, %24
  %28 = icmp ugt i32 %27, %0
  br i1 %28, label %37, label %31

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.rb_node, ptr %18, i32 0, i32 2
  br label %33

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.rb_node, ptr %18, i32 0, i32 1
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi ptr [ %30, %29 ], [ %32, %31 ]
  %35 = load volatile ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %17

37:                                               ; preds = %33, %23, %9
  %38 = phi ptr [ null, %9 ], [ null, %33 ], [ %19, %23 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #29, !srcloc !38
  %39 = load volatile i32, ptr @mod_tree, align 64
  %40 = icmp eq i32 %39, %10
  br i1 %40, label %41, label %9

41:                                               ; preds = %37
  %42 = icmp eq ptr %38, null
  br i1 %42, label %79, label %43

43:                                               ; preds = %41
  %44 = getelementptr i8, ptr %38, i32 -4
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %79, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.module, ptr %45, i32 0, i32 24
  %49 = load ptr, ptr %48, align 16
  %50 = ptrtoint ptr %49 to i32
  %51 = icmp ugt i32 %50, %0
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.module, ptr %45, i32 0, i32 24, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, %50
  %56 = icmp ugt i32 %55, %0
  br i1 %56, label %68, label %57

57:                                               ; preds = %52, %47
  %58 = getelementptr inbounds %struct.module, ptr %45, i32 0, i32 23
  %59 = load ptr, ptr %58, align 64
  %60 = ptrtoint ptr %59 to i32
  %61 = icmp ugt i32 %60, %0
  br i1 %61, label %67, label %62, !prof !39

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.module, ptr %45, i32 0, i32 23, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = add i32 %64, %60
  %66 = icmp ugt i32 %65, %0
  br i1 %66, label %68, label %67, !prof !10

67:                                               ; preds = %62, %57
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/module.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4732, 0\0A.popsection", ""() #29, !srcloc !40
  unreachable

68:                                               ; preds = %62, %52
  %69 = load i32, ptr %45, align 64
  %70 = icmp eq i32 %69, 3
  br i1 %70, label %79, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.module, ptr %45, i32 0, i32 19
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.module, ptr %45, i32 0, i32 20
  %77 = load ptr, ptr %76, align 8
  %78 = tail call ptr @search_extable(ptr noundef %77, i32 noundef %73, i32 noundef %0) #29
  br label %79

79:                                               ; preds = %75, %71, %68, %43, %41, %1
  %80 = phi ptr [ %78, %75 ], [ null, %71 ], [ null, %1 ], [ null, %43 ], [ null, %41 ], [ null, %68 ]
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !71
  ret ptr %80
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @search_extable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @is_module_address(i32 noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !72
  %2 = load i32, ptr getelementptr inbounds (%struct.mod_tree_root, ptr @mod_tree, i32 0, i32 1), align 4
  %3 = icmp ugt i32 %2, %0
  %4 = load i32, ptr getelementptr inbounds (%struct.mod_tree_root, ptr @mod_tree, i32 0, i32 2), align 16
  %5 = icmp ult i32 %4, %0
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %71, label %7

7:                                                ; preds = %1
  %8 = inttoptr i32 %0 to ptr
  br label %9

9:                                                ; preds = %37, %7
  %10 = load volatile i32, ptr @mod_tree, align 64
  %11 = and i32 %10, 1
  %12 = getelementptr %struct.mod_tree_root, ptr @mod_tree, i32 0, i32 0, i32 1, i32 %11
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %37, label %15

15:                                               ; preds = %9
  %16 = mul nuw nsw i32 %11, -12
  br label %17

17:                                               ; preds = %33, %15
  %18 = phi ptr [ %13, %15 ], [ %35, %33 ]
  %19 = getelementptr i8, ptr %18, i32 %16
  %20 = getelementptr i8, ptr %19, i32 -24
  %21 = load ptr, ptr %20, align 4
  %22 = icmp ugt ptr %21, %8
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = ptrtoint ptr %21 to i32
  %25 = getelementptr i8, ptr %19, i32 -20
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, %24
  %28 = icmp ugt i32 %27, %0
  br i1 %28, label %37, label %31

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.rb_node, ptr %18, i32 0, i32 2
  br label %33

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.rb_node, ptr %18, i32 0, i32 1
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi ptr [ %30, %29 ], [ %32, %31 ]
  %35 = load volatile ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %17

37:                                               ; preds = %33, %23, %9
  %38 = phi ptr [ null, %9 ], [ null, %33 ], [ %19, %23 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #29, !srcloc !38
  %39 = load volatile i32, ptr @mod_tree, align 64
  %40 = icmp eq i32 %39, %10
  br i1 %40, label %41, label %9

41:                                               ; preds = %37
  %42 = icmp eq ptr %38, null
  br i1 %42, label %71, label %43

43:                                               ; preds = %41
  %44 = getelementptr i8, ptr %38, i32 -4
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %71, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.module, ptr %45, i32 0, i32 24
  %49 = load ptr, ptr %48, align 16
  %50 = ptrtoint ptr %49 to i32
  %51 = icmp ugt i32 %50, %0
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.module, ptr %45, i32 0, i32 24, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, %50
  %56 = icmp ugt i32 %55, %0
  br i1 %56, label %68, label %57

57:                                               ; preds = %52, %47
  %58 = getelementptr inbounds %struct.module, ptr %45, i32 0, i32 23
  %59 = load ptr, ptr %58, align 64
  %60 = ptrtoint ptr %59 to i32
  %61 = icmp ugt i32 %60, %0
  br i1 %61, label %67, label %62, !prof !39

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.module, ptr %45, i32 0, i32 23, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = add i32 %64, %60
  %66 = icmp ugt i32 %65, %0
  br i1 %66, label %68, label %67, !prof !10

67:                                               ; preds = %62, %57
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/module.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4732, 0\0A.popsection", ""() #29, !srcloc !40
  unreachable

68:                                               ; preds = %62, %52
  %69 = load i32, ptr %45, align 64
  %70 = icmp ne i32 %69, 3
  br label %71

71:                                               ; preds = %68, %43, %41, %1
  %72 = phi i1 [ false, %1 ], [ %70, %68 ], [ false, %43 ], [ false, %41 ]
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !73
  ret i1 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @is_module_text_address(i32 noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !74
  %2 = tail call ptr @__module_text_address(i32 noundef %0)
  %3 = icmp ne ptr %2, null
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !75
  ret i1 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @print_modules() local_unnamed_addr #0 {
  %1 = alloca [22 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %1) #29
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(22) %1, i8 0, i32 22, i1 false), !annotation !9
  %2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #34
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !76
  %3 = load volatile ptr, ptr @modules, align 4
  %4 = icmp eq ptr %3, @modules
  br i1 %4, label %70, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds i8, ptr %1, i32 1
  br label %7

7:                                                ; preds = %67, %5
  %8 = phi ptr [ %3, %5 ], [ %68, %67 ]
  %9 = getelementptr i8, ptr %8, i32 -4
  %10 = load i32, ptr %9, align 64
  %11 = icmp eq i32 %10, 3
  br i1 %11, label %67, label %12

12:                                               ; preds = %7
  %13 = getelementptr i8, ptr %8, i32 8
  %14 = getelementptr i8, ptr %8, i32 400
  %15 = load i32, ptr %14, align 4
  %16 = freeze i32 %15
  %17 = icmp ne i32 %16, 0
  %18 = add i32 %10, -1
  %19 = icmp ult i32 %18, 2
  %20 = select i1 %17, i1 true, i1 %19
  br i1 %20, label %21, label %63

21:                                               ; preds = %12
  store i8 40, ptr %1, align 1
  br label %22

22:                                               ; preds = %40, %21
  %23 = phi i32 [ 0, %21 ], [ %42, %40 ]
  %24 = phi i32 [ 0, %21 ], [ %41, %40 ]
  %25 = getelementptr [18 x %struct.taint_flag], ptr @taint_flags, i32 0, i32 %23
  %26 = getelementptr [18 x %struct.taint_flag], ptr @taint_flags, i32 0, i32 %23, i32 2
  %27 = load i8, ptr %26, align 1, !range !34
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %22
  %30 = lshr i32 %23, 5
  %31 = getelementptr i32, ptr %14, i32 %30
  %32 = load volatile i32, ptr %31, align 4
  %33 = shl nuw i32 1, %23
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %29
  %37 = load i8, ptr %25, align 1
  %38 = add i32 %24, 1
  %39 = getelementptr i8, ptr %6, i32 %24
  store i8 %37, ptr %39, align 1
  br label %40

40:                                               ; preds = %36, %29, %22
  %41 = phi i32 [ %38, %36 ], [ %24, %29 ], [ %24, %22 ]
  %42 = add nuw nsw i32 %23, 1
  %43 = icmp eq i32 %42, 18
  br i1 %43, label %44, label %22

44:                                               ; preds = %40
  %45 = add i32 %41, 1
  %46 = load i32, ptr %9, align 64
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = add i32 %41, 2
  %50 = getelementptr i8, ptr %1, i32 %45
  store i8 45, ptr %50, align 1
  %51 = load i32, ptr %9, align 64
  br label %52

52:                                               ; preds = %48, %44
  %53 = phi i32 [ %51, %48 ], [ %46, %44 ]
  %54 = phi i32 [ %49, %48 ], [ %45, %44 ]
  %55 = icmp eq i32 %53, 1
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = add i32 %54, 1
  %58 = getelementptr i8, ptr %1, i32 %54
  store i8 43, ptr %58, align 1
  br label %59

59:                                               ; preds = %56, %52
  %60 = phi i32 [ %57, %56 ], [ %54, %52 ]
  %61 = add i32 %60, 1
  %62 = getelementptr i8, ptr %1, i32 %60
  store i8 41, ptr %62, align 1
  br label %63

63:                                               ; preds = %59, %12
  %64 = phi i32 [ %61, %59 ], [ 0, %12 ]
  %65 = getelementptr i8, ptr %1, i32 %64
  store i8 0, ptr %65, align 1
  %66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %13, ptr noundef nonnull %1) #34
  br label %67

67:                                               ; preds = %63, %7
  %68 = load volatile ptr, ptr %8, align 4
  %69 = icmp eq ptr %68, @modules
  br i1 %69, label %70, label %7

70:                                               ; preds = %67, %0
  call void asm sideeffect "", "~{memory}"() #29, !srcloc !77
  %71 = load i8, ptr @last_unloaded_module, align 1
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  %74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @last_unloaded_module) #34
  br label %75

75:                                               ; preds = %73, %70
  %76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #34
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %1) #29
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_module_load(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #29
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_module_load, ptr %5, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 65535
  %14 = getelementptr i8, ptr %5, i32 %13
  %15 = getelementptr inbounds %struct.trace_event_raw_module_load, ptr %5, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = tail call ptr @trace_print_flags_seq(ptr noundef %9, ptr noundef nonnull @.str.19, i32 noundef %16, ptr noundef nonnull @trace_raw_output_module_load.__flags) #29
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef %14, ptr noundef %17) #29
  %18 = tail call i32 @trace_handle_return(ptr noundef %10) #29
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
define internal i32 @trace_raw_output_module_free(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #29
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_module_free, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef %13) #29
  %14 = tail call i32 @trace_handle_return(ptr noundef %9) #29
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ %14, %8 ], [ %6, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_module_refcnt(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #29
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %20

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_module_refcnt, ptr %5, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_module_refcnt, ptr %5, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr inbounds %struct.trace_event_raw_module_refcnt, ptr %5, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef %13, ptr noundef %16, i32 noundef %18) #29
  %19 = tail call i32 @trace_handle_return(ptr noundef %9) #29
  br label %20

20:                                               ; preds = %8, %3
  %21 = phi i32 [ %19, %8 ], [ %6, %3 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_module_request(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #29
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_module_request, ptr %5, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_module_request, ptr %5, i32 0, i32 2
  %15 = load i8, ptr %14, align 4, !range !34
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds %struct.trace_event_raw_module_request, ptr %5, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = inttoptr i32 %18 to ptr
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.28, ptr noundef %13, i32 noundef %16, ptr noundef %19) #29
  %20 = tail call i32 @trace_handle_return(ptr noundef %9) #29
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
declare i32 @llvm.read_register.i32(metadata) #17

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncpy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @async_synchronize_full() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @free_module(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.completion, align 8
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_module_free, i32 0, i32 1), align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %28

5:                                                ; preds = %1
  %6 = tail call ptr @llvm.thread.pointer() #29
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
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !78
  %17 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_module_free, i32 0, i32 7), align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %19, %16
  %20 = phi ptr [ %24, %19 ], [ %17, %16 ]
  %21 = load volatile ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.tracepoint_func, ptr %20, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  tail call void %21(ptr noundef %23, ptr noundef %0) #29
  %24 = getelementptr %struct.tracepoint_func, ptr %20, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %19

27:                                               ; preds = %19, %16
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !79
  br label %28

28:                                               ; preds = %27, %5, %1
  tail call void @mutex_lock(ptr noundef nonnull @module_mutex) #29
  %29 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 50
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %29
  br i1 %31, label %42, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 2
  br label %34

34:                                               ; preds = %34, %32
  %35 = phi ptr [ %30, %32 ], [ %40, %34 ]
  %36 = getelementptr i8, ptr %35, i32 12
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.module, ptr %37, i32 0, i32 7
  %39 = load ptr, ptr %38, align 8
  tail call void @sysfs_remove_link(ptr noundef %39, ptr noundef %33) #29
  %40 = load ptr, ptr %35, align 4
  %41 = icmp eq ptr %40, %29
  br i1 %41, label %42, label %34

42:                                               ; preds = %34, %28
  tail call void @mutex_unlock(ptr noundef nonnull @module_mutex) #29
  %43 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 4
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %64, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 3
  br label %48

48:                                               ; preds = %59, %46
  %49 = phi ptr [ %44, %46 ], [ %62, %59 ]
  %50 = phi ptr [ %44, %46 ], [ %61, %59 ]
  %51 = phi i32 [ 0, %46 ], [ %60, %59 ]
  %52 = load ptr, ptr %49, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %64, label %54

54:                                               ; preds = %48
  tail call void @sysfs_remove_file_ns(ptr noundef %47, ptr noundef nonnull %49, ptr noundef null) #29
  %55 = getelementptr %struct.module_attribute, ptr %50, i32 %51, i32 5
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  tail call void %56(ptr noundef %0) #29
  br label %59

59:                                               ; preds = %58, %54
  %60 = add i32 %51, 1
  %61 = load ptr, ptr %43, align 4
  %62 = getelementptr %struct.module_attribute, ptr %61, i32 %60
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %48

64:                                               ; preds = %59, %48, %42
  %65 = phi ptr [ null, %42 ], [ %50, %48 ], [ %61, %59 ]
  tail call void @kfree(ptr noundef %65) #29
  tail call void @module_param_sysfs_remove(ptr noundef %0) #29
  %66 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 3, i32 2
  %67 = load ptr, ptr %66, align 8
  tail call void @kobject_put(ptr noundef %67) #29
  %68 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 7
  %69 = load ptr, ptr %68, align 8
  tail call void @kobject_put(ptr noundef %69) #29
  %70 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 33
  %71 = load ptr, ptr %70, align 64
  %72 = icmp eq ptr %71, null
  br i1 %72, label %90, label %73

73:                                               ; preds = %64
  %74 = load ptr, ptr %71, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %89, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.module_notes_attrs, ptr %71, i32 0, i32 1
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %80, %76
  %81 = phi ptr [ %86, %80 ], [ %74, %76 ]
  %82 = phi i32 [ %83, %80 ], [ %78, %76 ]
  %83 = add i32 %82, -1
  %84 = getelementptr %struct.module_notes_attrs, ptr %71, i32 0, i32 2, i32 %83
  tail call void @sysfs_remove_bin_file(ptr noundef %81, ptr noundef %84) #29
  %85 = icmp eq i32 %83, 0
  %86 = load ptr, ptr %71, align 4
  br i1 %85, label %87, label %80

87:                                               ; preds = %80, %76
  %88 = phi ptr [ %74, %76 ], [ %86, %80 ]
  tail call void @kobject_put(ptr noundef %88) #29
  br label %89

89:                                               ; preds = %87, %73
  tail call void @kfree(ptr noundef nonnull %71) #29
  br label %90

90:                                               ; preds = %89, %64
  %91 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 32
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %108, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 3
  tail call void @sysfs_remove_group(ptr noundef %95, ptr noundef nonnull %92) #29
  %96 = load ptr, ptr %91, align 4
  %97 = getelementptr inbounds %struct.module_sect_attrs, ptr %96, i32 0, i32 1
  %98 = load i32, ptr %97, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %100, %94
  %101 = phi i32 [ %104, %100 ], [ 0, %94 ]
  %102 = getelementptr %struct.module_sect_attrs, ptr %96, i32 0, i32 2, i32 %101
  %103 = load ptr, ptr %102, align 4
  tail call void @kfree(ptr noundef %103) #29
  %104 = add nuw i32 %101, 1
  %105 = load i32, ptr %97, align 4
  %106 = icmp ult i32 %104, %105
  br i1 %106, label %100, label %107

107:                                              ; preds = %100, %94
  tail call void @kfree(ptr noundef %96) #29
  store ptr null, ptr %91, align 4
  br label %108

108:                                              ; preds = %107, %90
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #29
  %109 = getelementptr inbounds %struct.completion, ptr %2, i32 0, i32 1, i32 1
  store i64 0, ptr %2, align 8
  store ptr %109, ptr %109, align 8
  %110 = getelementptr inbounds %struct.completion, ptr %2, i32 0, i32 1, i32 1, i32 1
  store ptr %109, ptr %110, align 4
  %111 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 3
  %112 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 3, i32 4
  store ptr %2, ptr %112, align 8
  call void @kobject_put(ptr noundef %111) #29
  call void @wait_for_completion(ptr noundef nonnull %2) #29
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #29
  call void @mutex_lock(ptr noundef nonnull @module_mutex) #29
  store i32 3, ptr %0, align 64
  call void @mutex_unlock(ptr noundef nonnull @module_mutex) #29
  call void @module_arch_cleanup(ptr noundef %0)
  call void @mutex_lock(ptr noundef nonnull @module_mutex) #29
  %113 = load ptr, ptr %29, align 8
  %114 = icmp eq ptr %113, %29
  br i1 %114, label %130, label %115

115:                                              ; preds = %115, %108
  %116 = phi ptr [ %118, %115 ], [ %113, %108 ]
  %117 = getelementptr i8, ptr %116, i32 -8
  %118 = load ptr, ptr %116, align 4
  %119 = getelementptr i8, ptr %116, i32 12
  %120 = load ptr, ptr %119, align 4
  call void @module_put(ptr noundef %120) #29
  %121 = getelementptr i8, ptr %116, i32 -4
  %122 = load ptr, ptr %121, align 4
  %123 = load ptr, ptr %117, align 4
  %124 = getelementptr inbounds %struct.list_head, ptr %123, i32 0, i32 1
  store ptr %122, ptr %124, align 4
  store volatile ptr %123, ptr %122, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %117, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %121, align 4
  %125 = getelementptr inbounds %struct.list_head, ptr %116, i32 0, i32 1
  %126 = load ptr, ptr %125, align 4
  %127 = load ptr, ptr %116, align 4
  %128 = getelementptr inbounds %struct.list_head, ptr %127, i32 0, i32 1
  store ptr %126, ptr %128, align 4
  store volatile ptr %127, ptr %126, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %116, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %125, align 4
  call void @kfree(ptr noundef %117) #29
  %129 = icmp eq ptr %118, %29
  br i1 %129, label %130, label %115

130:                                              ; preds = %115, %108
  call void @mutex_unlock(ptr noundef nonnull @module_mutex) #29
  %131 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 12
  %132 = load ptr, ptr %131, align 4
  %133 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 13
  %134 = load i32, ptr %133, align 16
  call void @destroy_params(ptr noundef %132, i32 noundef %134) #29
  call void @mutex_lock(ptr noundef nonnull @module_mutex) #29
  %135 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 1
  %136 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 1, i32 1
  %137 = load ptr, ptr %136, align 4
  %138 = load ptr, ptr %135, align 4
  %139 = getelementptr inbounds %struct.list_head, ptr %138, i32 0, i32 1
  store ptr %137, ptr %139, align 4
  store volatile ptr %138, ptr %137, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %136, align 4
  call fastcc void @mod_tree_remove(ptr noundef %0)
  call void @module_bug_cleanup(ptr noundef %0) #29
  call void @synchronize_rcu() #29
  call void @mutex_unlock(ptr noundef nonnull @module_mutex) #29
  call void @module_arch_freeing_init(ptr noundef %0)
  %140 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 24
  %141 = load ptr, ptr %140, align 16
  call void @module_memfree(ptr noundef %141)
  %142 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 34
  %143 = load ptr, ptr %142, align 4
  call void @kfree(ptr noundef %143) #29
  %144 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 35
  %145 = load ptr, ptr %144, align 8
  call void @free_percpu(ptr noundef %145) #29
  %146 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 23
  %147 = load ptr, ptr %146, align 64
  call void @module_memfree(ptr noundef %147)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @module_unload_free(ptr noundef readonly %0) unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @module_mutex) #29
  %2 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 50
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %20, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -8
  %8 = load ptr, ptr %6, align 4
  %9 = getelementptr i8, ptr %6, i32 12
  %10 = load ptr, ptr %9, align 4
  tail call void @module_put(ptr noundef %10)
  %11 = getelementptr i8, ptr %6, i32 -4
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %7, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %12, ptr %14, align 4
  store volatile ptr %13, ptr %12, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %11, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %6, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  store ptr %16, ptr %18, align 4
  store volatile ptr %17, ptr %16, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %15, align 4
  tail call void @kfree(ptr noundef %7) #29
  %19 = icmp eq ptr %8, %2
  br i1 %19, label %20, label %5

20:                                               ; preds = %5, %1
  tail call void @mutex_unlock(ptr noundef nonnull @module_mutex) #29
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_params(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mod_tree_remove(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 23, i32 5, i32 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #29, !srcloc !80
  %3 = load i32, ptr @mod_tree, align 64
  %4 = add i32 %3, 1
  store i32 %4, ptr @mod_tree, align 64
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #29, !srcloc !81
  tail call void @rb_erase(ptr noundef %2, ptr noundef getelementptr inbounds (%struct.mod_tree_root, ptr @mod_tree, i32 0, i32 0, i32 1, i32 0)) #29
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #29, !srcloc !80
  %5 = load i32, ptr @mod_tree, align 64
  %6 = add i32 %5, 1
  store i32 %6, ptr @mod_tree, align 64
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #29, !srcloc !81
  %7 = getelementptr %struct.module, ptr %0, i32 0, i32 23, i32 5, i32 1, i32 0, i32 1
  tail call void @rb_erase(ptr noundef %7, ptr noundef getelementptr inbounds (%struct.mod_tree_root, ptr @mod_tree, i32 0, i32 0, i32 1, i32 1)) #29
  %8 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 24, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 24, i32 5, i32 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #29, !srcloc !80
  %13 = load i32, ptr @mod_tree, align 64
  %14 = add i32 %13, 1
  store i32 %14, ptr @mod_tree, align 64
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #29, !srcloc !81
  tail call void @rb_erase(ptr noundef %12, ptr noundef getelementptr inbounds (%struct.mod_tree_root, ptr @mod_tree, i32 0, i32 0, i32 1, i32 0)) #29
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #29, !srcloc !80
  %15 = load i32, ptr @mod_tree, align 64
  %16 = add i32 %15, 1
  store i32 %16, ptr @mod_tree, align 64
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #29, !srcloc !81
  %17 = getelementptr %struct.module, ptr %0, i32 0, i32 24, i32 5, i32 1, i32 0, i32 1
  tail call void @rb_erase(ptr noundef %17, ptr noundef getelementptr inbounds (%struct.mod_tree_root, ptr @mod_tree, i32 0, i32 0, i32 1, i32 1)) #29
  br label %18

18:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_bug_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_param_sysfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bsearch(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @cmp_name(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 {
  %3 = getelementptr inbounds %struct.kernel_symbol, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @strcmp(ptr noundef %0, ptr noundef %4)
  ret i32 %5
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_synth_uevent(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @load_module(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.wait_queue_entry, align 4
  %5 = getelementptr inbounds %struct.load_info, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp ult i32 %6, 52
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %6) #34
  br label %1388

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.load_info, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %12, ptr noundef nonnull dereferenceable(4) @.str.36, i32 4) #29
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.36) #34
  br label %1388

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.elf32_hdr, ptr %12, i32 0, i32 1
  %19 = load i16, ptr %18, align 4
  %20 = icmp eq i16 %19, 1
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = zext i16 %19 to i32
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %22, i32 noundef 1) #34
  br label %1388

24:                                               ; preds = %17
  %25 = tail call i32 @elf_check_arch(ptr noundef %12) #29
  %26 = icmp eq i32 %25, 0
  %27 = load ptr, ptr %11, align 4
  br i1 %26, label %28, label %33

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.elf32_hdr, ptr %27, i32 0, i32 2
  %30 = load i16, ptr %29, align 2
  %31 = zext i16 %30 to i32
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %31) #34
  br label %1388

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.elf32_hdr, ptr %27, i32 0, i32 11
  %35 = load i16, ptr %34, align 2
  %36 = icmp eq i16 %35, 40
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #34
  br label %1388

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.elf32_hdr, ptr %27, i32 0, i32 6
  %41 = load i32, ptr %40, align 4
  %42 = load i32, ptr %5, align 4
  %43 = icmp ugt i32 %42, %41
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.elf32_hdr, ptr %27, i32 0, i32 12
  %46 = load i16, ptr %45, align 4
  %47 = zext i16 %46 to i32
  %48 = mul nuw nsw i32 %47, 40
  %49 = sub i32 %42, %41
  %50 = icmp ugt i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %44, %39
  %52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #34
  br label %1388

53:                                               ; preds = %44
  %54 = getelementptr i8, ptr %27, i32 %41
  %55 = getelementptr inbounds %struct.load_info, ptr %0, i32 0, i32 4
  store ptr %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.elf32_hdr, ptr %27, i32 0, i32 13
  %57 = load i16, ptr %56, align 2
  %58 = zext i16 %57 to i32
  %59 = icmp ne i16 %57, 0
  %60 = load i16, ptr %45, align 4
  %61 = icmp ult i16 %57, %60
  %62 = select i1 %59, i1 %61, i1 false
  br i1 %62, label %66, label %63

63:                                               ; preds = %53
  %64 = zext i16 %60 to i32
  %65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %58, i32 noundef %58, i32 noundef %64) #34
  br label %1388

66:                                               ; preds = %53
  %67 = getelementptr %struct.elf32_shdr, ptr %54, i32 %58
  %68 = getelementptr inbounds %struct.elf32_shdr, ptr %67, i32 0, i32 4
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.elf32_shdr, ptr %67, i32 0, i32 5
  %71 = load i32, ptr %70, align 4
  %72 = add i32 %71, %69
  %73 = icmp ult i32 %72, %69
  %74 = icmp ugt i32 %72, %42
  %75 = select i1 %73, i1 true, i1 %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %66
  %77 = getelementptr inbounds %struct.elf32_shdr, ptr %67, i32 0, i32 1
  %78 = load i32, ptr %77, align 4
  %79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %78) #34
  br label %1388

80:                                               ; preds = %66
  %81 = getelementptr i8, ptr %27, i32 %69
  %82 = getelementptr inbounds %struct.load_info, ptr %0, i32 0, i32 5
  store ptr %81, ptr %82, align 4
  %83 = load i32, ptr %70, align 4
  %84 = add i32 %83, -1
  %85 = getelementptr i8, ptr %81, i32 %84
  %86 = load i8, ptr %85, align 1
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %80
  %89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #34
  br label %1388

90:                                               ; preds = %80
  %91 = getelementptr inbounds %struct.elf32_shdr, ptr %54, i32 0, i32 1
  %92 = load i32, ptr %91, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.elf32_shdr, ptr %54, i32 0, i32 5
  %96 = load i32, ptr %95, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.elf32_shdr, ptr %54, i32 0, i32 3
  %100 = load i32, ptr %99, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = load i16, ptr %45, align 4
  %104 = zext i16 %103 to i32
  %105 = icmp ugt i16 %103, 1
  br i1 %105, label %108, label %161

106:                                              ; preds = %98, %94, %90
  %107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %92) #34
  br label %1388

108:                                              ; preds = %142, %102
  %109 = phi i32 [ %143, %142 ], [ 1, %102 ]
  %110 = getelementptr %struct.elf32_shdr, ptr %54, i32 %109
  %111 = getelementptr %struct.elf32_shdr, ptr %54, i32 %109, i32 1
  %112 = load i32, ptr %111, align 4
  switch i32 %112, label %121 [
    i32 0, label %142
    i32 8, label %142
    i32 2, label %113
  ]

113:                                              ; preds = %108
  %114 = getelementptr %struct.elf32_shdr, ptr %54, i32 %109, i32 6
  %115 = load i32, ptr %114, align 4
  %116 = icmp ne i32 %115, 0
  %117 = icmp ult i32 %115, %104
  %118 = select i1 %116, i1 %117, i1 false
  br i1 %118, label %121, label %119

119:                                              ; preds = %113
  %120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %115, i32 noundef %115, i32 noundef %104) #34
  br label %1388

121:                                              ; preds = %113, %108
  %122 = getelementptr inbounds %struct.elf32_shdr, ptr %110, i32 0, i32 4
  %123 = load i32, ptr %122, align 4
  %124 = getelementptr inbounds %struct.elf32_shdr, ptr %110, i32 0, i32 5
  %125 = load i32, ptr %124, align 4
  %126 = add i32 %125, %123
  %127 = icmp ult i32 %126, %123
  %128 = icmp ugt i32 %126, %42
  %129 = select i1 %127, i1 true, i1 %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %121
  %131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %109, i32 noundef %112) #34
  br label %1388

132:                                              ; preds = %121
  %133 = getelementptr %struct.elf32_shdr, ptr %54, i32 %109, i32 2
  %134 = load i32, ptr %133, align 4
  %135 = and i32 %134, 2
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %142, label %137

137:                                              ; preds = %132
  %138 = load i32, ptr %110, align 4
  %139 = icmp ult i32 %138, %83
  br i1 %139, label %142, label %140

140:                                              ; preds = %137
  %141 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %109, i32 noundef %112) #34
  br label %1388

142:                                              ; preds = %137, %132, %108, %108
  %143 = add nuw nsw i32 %109, 1
  %144 = icmp eq i32 %143, %104
  br i1 %144, label %145, label %108

145:                                              ; preds = %142
  br i1 %105, label %146, label %161

146:                                              ; preds = %158, %145
  %147 = phi i32 [ %159, %158 ], [ 1, %145 ]
  %148 = getelementptr %struct.elf32_shdr, ptr %54, i32 %147, i32 2
  %149 = load i32, ptr %148, align 4
  %150 = and i32 %149, 2
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %158, label %152

152:                                              ; preds = %146
  %153 = getelementptr %struct.elf32_shdr, ptr %54, i32 %147
  %154 = load i32, ptr %153, align 4
  %155 = getelementptr i8, ptr %81, i32 %154
  %156 = tail call i32 @strcmp(ptr noundef %155, ptr noundef nonnull dereferenceable(9) @.str.49) #29
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %163, label %158

158:                                              ; preds = %152, %146
  %159 = add nuw nsw i32 %147, 1
  %160 = icmp eq i32 %159, %104
  br i1 %160, label %161, label %146

161:                                              ; preds = %158, %145, %102
  %162 = getelementptr inbounds %struct.load_info, ptr %0, i32 0, i32 15, i32 4
  store i32 0, ptr %162, align 4
  br label %206

163:                                              ; preds = %152
  %164 = getelementptr inbounds %struct.load_info, ptr %0, i32 0, i32 15, i32 4
  store i32 %147, ptr %164, align 4
  %165 = getelementptr %struct.elf32_shdr, ptr %54, i32 %147, i32 4
  %166 = load i32, ptr %165, align 4
  %167 = getelementptr i8, ptr %27, i32 %166
  %168 = icmp eq ptr %167, null
  br i1 %168, label %204, label %169

169:                                              ; preds = %163
  %170 = getelementptr %struct.elf32_shdr, ptr %54, i32 %147, i32 5
  %171 = load i32, ptr %170, align 4
  br label %172

172:                                              ; preds = %202, %169
  %173 = phi ptr [ %195, %202 ], [ %167, %169 ]
  %174 = phi i32 [ %194, %202 ], [ %171, %169 ]
  %175 = tail call i32 @strncmp(ptr noundef nonnull %173, ptr noundef nonnull dereferenceable(5) @.str.12, i32 noundef 4) #29
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %178, %172
  br label %184

178:                                              ; preds = %172
  %179 = getelementptr i8, ptr %173, i32 4
  %180 = load i8, ptr %179, align 1
  %181 = icmp eq i8 %180, 61
  br i1 %181, label %182, label %177

182:                                              ; preds = %178
  %183 = getelementptr i8, ptr %173, i32 5
  br label %204

184:                                              ; preds = %189, %177
  %185 = phi i32 [ %191, %189 ], [ %174, %177 ]
  %186 = phi ptr [ %190, %189 ], [ %173, %177 ]
  %187 = load i8, ptr %186, align 1
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %198, label %189

189:                                              ; preds = %184
  %190 = getelementptr i8, ptr %186, i32 1
  %191 = add i32 %185, -1
  %192 = icmp ult i32 %185, 2
  br i1 %192, label %204, label %184

193:                                              ; preds = %198
  %194 = add i32 %199, -1
  %195 = getelementptr i8, ptr %200, i32 1
  %196 = load i8, ptr %195, align 1
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %193, %184
  %199 = phi i32 [ %194, %193 ], [ %185, %184 ]
  %200 = phi ptr [ %195, %193 ], [ %186, %184 ]
  %201 = icmp ult i32 %199, 2
  br i1 %201, label %204, label %193

202:                                              ; preds = %193
  %203 = icmp eq ptr %195, null
  br i1 %203, label %204, label %172

204:                                              ; preds = %202, %198, %189, %182, %163
  %205 = phi ptr [ %183, %182 ], [ null, %163 ], [ null, %198 ], [ null, %189 ], [ null, %202 ]
  store ptr %205, ptr %0, align 4
  br label %206

206:                                              ; preds = %204, %161
  %207 = getelementptr inbounds %struct.load_info, ptr %0, i32 0, i32 15
  %208 = load i16, ptr %45, align 4
  %209 = zext i16 %208 to i32
  %210 = icmp ugt i16 %208, 1
  br i1 %210, label %211, label %227

211:                                              ; preds = %224, %206
  %212 = phi i32 [ %225, %224 ], [ 1, %206 ]
  %213 = getelementptr %struct.elf32_shdr, ptr %54, i32 %212, i32 1
  %214 = load i32, ptr %213, align 4
  %215 = icmp eq i32 %214, 2
  br i1 %215, label %216, label %224

216:                                              ; preds = %211
  store i32 %212, ptr %207, align 4
  %217 = getelementptr %struct.elf32_shdr, ptr %54, i32 %212, i32 6
  %218 = load i32, ptr %217, align 4
  %219 = getelementptr inbounds %struct.load_info, ptr %0, i32 0, i32 15, i32 1
  store i32 %218, ptr %219, align 4
  %220 = getelementptr %struct.elf32_shdr, ptr %54, i32 %218, i32 4
  %221 = load i32, ptr %220, align 4
  %222 = getelementptr i8, ptr %27, i32 %221
  %223 = getelementptr inbounds %struct.load_info, ptr %0, i32 0, i32 6
  store ptr %222, ptr %223, align 4
  br label %227

224:                                              ; preds = %211
  %225 = add nuw nsw i32 %212, 1
  %226 = icmp eq i32 %225, %209
  br i1 %226, label %227, label %211

227:                                              ; preds = %224, %216, %206
  %228 = load i32, ptr %207, align 4
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %235

230:                                              ; preds = %227
  %231 = load ptr, ptr %0, align 4
  %232 = icmp eq ptr %231, null
  %233 = select i1 %232, ptr @.str.51, ptr %231
  %234 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %233) #34
  br label %1388

235:                                              ; preds = %227
  %236 = load i16, ptr %45, align 4
  %237 = zext i16 %236 to i32
  %238 = icmp ugt i16 %236, 1
  br i1 %238, label %239, label %254

239:                                              ; preds = %251, %235
  %240 = phi i32 [ %252, %251 ], [ 1, %235 ]
  %241 = getelementptr %struct.elf32_shdr, ptr %54, i32 %240, i32 2
  %242 = load i32, ptr %241, align 4
  %243 = and i32 %242, 2
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %251, label %245

245:                                              ; preds = %239
  %246 = getelementptr %struct.elf32_shdr, ptr %54, i32 %240
  %247 = load i32, ptr %246, align 4
  %248 = getelementptr i8, ptr %81, i32 %247
  %249 = tail call i32 @strcmp(ptr noundef %248, ptr noundef nonnull dereferenceable(26) @.str.52) #29
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %260, label %251

251:                                              ; preds = %245, %239
  %252 = add nuw nsw i32 %240, 1
  %253 = icmp eq i32 %252, %237
  br i1 %253, label %254, label %239

254:                                              ; preds = %251, %235
  %255 = getelementptr inbounds %struct.load_info, ptr %0, i32 0, i32 15, i32 2
  store i32 0, ptr %255, align 4
  %256 = load ptr, ptr %0, align 4
  %257 = icmp eq ptr %256, null
  %258 = select i1 %257, ptr @.str.51, ptr %256
  %259 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %258) #34
  br label %1388

260:                                              ; preds = %245
  %261 = getelementptr inbounds %struct.load_info, ptr %0, i32 0, i32 15, i32 2
  store i32 %240, ptr %261, align 4
  %262 = getelementptr %struct.elf32_shdr, ptr %54, i32 %240, i32 4
  %263 = load i32, ptr %262, align 4
  %264 = getelementptr i8, ptr %27, i32 %263
  %265 = getelementptr inbounds %struct.load_info, ptr %0, i32 0, i32 1
  store ptr %264, ptr %265, align 4
  %266 = load ptr, ptr %0, align 4
  %267 = icmp eq ptr %266, null
  br i1 %267, label %268, label %270

268:                                              ; preds = %260
  %269 = getelementptr inbounds %struct.module, ptr %264, i32 0, i32 2
  store ptr %269, ptr %0, align 4
  br label %270

270:                                              ; preds = %268, %260
  %271 = phi ptr [ %269, %268 ], [ %266, %260 ]
  %272 = and i32 %2, 1
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %293

274:                                              ; preds = %270
  %275 = load i16, ptr %45, align 4
  %276 = zext i16 %275 to i32
  %277 = icmp ugt i16 %275, 1
  br i1 %277, label %278, label %293

278:                                              ; preds = %290, %274
  %279 = phi i32 [ %291, %290 ], [ 1, %274 ]
  %280 = getelementptr %struct.elf32_shdr, ptr %54, i32 %279, i32 2
  %281 = load i32, ptr %280, align 4
  %282 = and i32 %281, 2
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %290, label %284

284:                                              ; preds = %278
  %285 = getelementptr %struct.elf32_shdr, ptr %54, i32 %279
  %286 = load i32, ptr %285, align 4
  %287 = getelementptr i8, ptr %81, i32 %286
  %288 = tail call i32 @strcmp(ptr noundef %287, ptr noundef nonnull dereferenceable(11) @.str.54) #29
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %293, label %290

290:                                              ; preds = %284, %278
  %291 = add nuw nsw i32 %279, 1
  %292 = icmp eq i32 %291, %276
  br i1 %292, label %293, label %278

293:                                              ; preds = %290, %284, %274, %270
  %294 = phi i32 [ 0, %270 ], [ 0, %274 ], [ %279, %284 ], [ 0, %290 ]
  %295 = getelementptr inbounds %struct.load_info, ptr %0, i32 0, i32 15, i32 3
  store i32 %294, ptr %295, align 4
  %296 = load i16, ptr %45, align 4
  %297 = zext i16 %296 to i32
  %298 = icmp ugt i16 %296, 1
  br i1 %298, label %299, label %314

299:                                              ; preds = %311, %293
  %300 = phi i32 [ %312, %311 ], [ 1, %293 ]
  %301 = getelementptr %struct.elf32_shdr, ptr %54, i32 %300, i32 2
  %302 = load i32, ptr %301, align 4
  %303 = and i32 %302, 2
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %311, label %305

305:                                              ; preds = %299
  %306 = getelementptr %struct.elf32_shdr, ptr %54, i32 %300
  %307 = load i32, ptr %306, align 4
  %308 = getelementptr i8, ptr %81, i32 %307
  %309 = tail call i32 @strcmp(ptr noundef %308, ptr noundef nonnull dereferenceable(14) @.str.55) #29
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %314, label %311

311:                                              ; preds = %305, %299
  %312 = add nuw nsw i32 %300, 1
  %313 = icmp eq i32 %312, %297
  br i1 %313, label %314, label %299

314:                                              ; preds = %311, %305, %293
  %315 = phi i32 [ 0, %293 ], [ 0, %311 ], [ %300, %305 ]
  %316 = getelementptr inbounds %struct.load_info, ptr %0, i32 0, i32 15, i32 5
  store i32 %315, ptr %316, align 4
  %317 = load ptr, ptr @module_blacklist, align 4
  %318 = icmp eq ptr %317, null
  br i1 %318, label %342, label %319

319:                                              ; preds = %314
  %320 = load i8, ptr %317, align 1
  %321 = icmp eq i8 %320, 0
  br i1 %321, label %342, label %322

322:                                              ; preds = %319
  %323 = tail call i32 @strlen(ptr noundef %271) #29
  br label %324

324:                                              ; preds = %331, %322
  %325 = phi ptr [ %317, %322 ], [ %337, %331 ]
  %326 = tail call i32 @strcspn(ptr noundef %325, ptr noundef nonnull @.str.56) #29
  %327 = icmp eq i32 %323, %326
  br i1 %327, label %328, label %331

328:                                              ; preds = %324
  %329 = tail call i32 @bcmp(ptr %271, ptr %325, i32 %323) #29
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %340, label %331

331:                                              ; preds = %328, %324
  %332 = getelementptr i8, ptr %325, i32 %326
  %333 = load i8, ptr %332, align 1
  %334 = icmp eq i8 %333, 44
  %335 = zext i1 %334 to i32
  %336 = add i32 %326, %335
  %337 = getelementptr i8, ptr %325, i32 %336
  %338 = load i8, ptr %337, align 1
  %339 = icmp eq i8 %338, 0
  br i1 %339, label %342, label %324

340:                                              ; preds = %328
  %341 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %271) #34
  br label %1388

342:                                              ; preds = %331, %319, %314
  store i32 0, ptr %99, align 4
  %343 = load ptr, ptr %11, align 4
  %344 = getelementptr inbounds %struct.elf32_hdr, ptr %343, i32 0, i32 12
  %345 = load i16, ptr %344, align 4
  %346 = icmp ugt i16 %345, 1
  br i1 %346, label %347, label %362

347:                                              ; preds = %347, %342
  %348 = phi ptr [ %357, %347 ], [ %343, %342 ]
  %349 = phi i32 [ %356, %347 ], [ 1, %342 ]
  %350 = load ptr, ptr %55, align 4
  %351 = ptrtoint ptr %348 to i32
  %352 = getelementptr %struct.elf32_shdr, ptr %350, i32 %349, i32 4
  %353 = load i32, ptr %352, align 4
  %354 = add i32 %353, %351
  %355 = getelementptr %struct.elf32_shdr, ptr %350, i32 %349, i32 3
  store i32 %354, ptr %355, align 4
  %356 = add nuw nsw i32 %349, 1
  %357 = load ptr, ptr %11, align 4
  %358 = getelementptr inbounds %struct.elf32_hdr, ptr %357, i32 0, i32 12
  %359 = load i16, ptr %358, align 4
  %360 = zext i16 %359 to i32
  %361 = icmp ult i32 %356, %360
  br i1 %361, label %347, label %362

362:                                              ; preds = %347, %342
  %363 = load ptr, ptr %55, align 4
  %364 = load i32, ptr %295, align 4
  %365 = getelementptr %struct.elf32_shdr, ptr %363, i32 %364, i32 2
  %366 = load i32, ptr %365, align 4
  %367 = and i32 %366, -3
  store i32 %367, ptr %365, align 4
  %368 = load ptr, ptr %55, align 4
  %369 = getelementptr inbounds %struct.load_info, ptr %0, i32 0, i32 15, i32 4
  %370 = load i32, ptr %369, align 4
  %371 = getelementptr %struct.elf32_shdr, ptr %368, i32 %370, i32 2
  %372 = load i32, ptr %371, align 4
  %373 = and i32 %372, -3
  store i32 %373, ptr %371, align 4
  %374 = load ptr, ptr %265, align 4
  %375 = load ptr, ptr %55, align 4
  %376 = load i32, ptr %369, align 4
  %377 = load ptr, ptr %11, align 4
  %378 = getelementptr %struct.elf32_shdr, ptr %375, i32 %376, i32 4
  %379 = load i32, ptr %378, align 4
  %380 = getelementptr i8, ptr %377, i32 %379
  %381 = icmp eq ptr %380, null
  br i1 %381, label %1152, label %382

382:                                              ; preds = %362
  %383 = getelementptr %struct.elf32_shdr, ptr %375, i32 %376, i32 5
  %384 = load i32, ptr %383, align 4
  br label %385

385:                                              ; preds = %413, %382
  %386 = phi ptr [ %406, %413 ], [ %380, %382 ]
  %387 = phi i32 [ %405, %413 ], [ %384, %382 ]
  %388 = tail call i32 @strncmp(ptr noundef nonnull %386, ptr noundef nonnull dereferenceable(9) @.str.59, i32 noundef 8) #29
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %390, label %394

390:                                              ; preds = %385
  %391 = getelementptr i8, ptr %386, i32 8
  %392 = load i8, ptr %391, align 1
  %393 = icmp eq i8 %392, 61
  br i1 %393, label %415, label %394

394:                                              ; preds = %390, %385
  br label %395

395:                                              ; preds = %400, %394
  %396 = phi i32 [ %402, %400 ], [ %387, %394 ]
  %397 = phi ptr [ %401, %400 ], [ %386, %394 ]
  %398 = load i8, ptr %397, align 1
  %399 = icmp eq i8 %398, 0
  br i1 %399, label %409, label %400

400:                                              ; preds = %395
  %401 = getelementptr i8, ptr %397, i32 1
  %402 = add i32 %396, -1
  %403 = icmp ult i32 %396, 2
  br i1 %403, label %1152, label %395

404:                                              ; preds = %409
  %405 = add i32 %410, -1
  %406 = getelementptr i8, ptr %411, i32 1
  %407 = load i8, ptr %406, align 1
  %408 = icmp eq i8 %407, 0
  br i1 %408, label %409, label %413

409:                                              ; preds = %404, %395
  %410 = phi i32 [ %405, %404 ], [ %396, %395 ]
  %411 = phi ptr [ %406, %404 ], [ %397, %395 ]
  %412 = icmp ult i32 %410, 2
  br i1 %412, label %1152, label %404

413:                                              ; preds = %404
  %414 = icmp eq ptr %406, null
  br i1 %414, label %1152, label %385

415:                                              ; preds = %390
  %416 = getelementptr i8, ptr %386, i32 9
  %417 = and i32 %2, 2
  %418 = icmp ne i32 %417, 0
  %419 = icmp eq ptr %416, null
  %420 = or i1 %418, %419
  br i1 %420, label %1152, label %421

421:                                              ; preds = %415
  %422 = tail call i32 @strcmp(ptr noundef nonnull %416, ptr noundef nonnull dereferenceable(34) @vermagic) #29
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %427, label %424

424:                                              ; preds = %421
  %425 = load ptr, ptr %0, align 4
  %426 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %425, ptr noundef nonnull %416, ptr noundef nonnull @vermagic) #34
  br label %1152

427:                                              ; preds = %455, %421
  %428 = phi ptr [ %448, %455 ], [ %380, %421 ]
  %429 = phi i32 [ %447, %455 ], [ %384, %421 ]
  %430 = tail call i32 @strncmp(ptr noundef nonnull %428, ptr noundef nonnull dereferenceable(7) @.str.62, i32 noundef 6) #29
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %432, label %436

432:                                              ; preds = %427
  %433 = getelementptr i8, ptr %428, i32 6
  %434 = load i8, ptr %433, align 1
  %435 = icmp eq i8 %434, 61
  br i1 %435, label %457, label %436

436:                                              ; preds = %432, %427
  br label %437

437:                                              ; preds = %442, %436
  %438 = phi i32 [ %444, %442 ], [ %429, %436 ]
  %439 = phi ptr [ %443, %442 ], [ %428, %436 ]
  %440 = load i8, ptr %439, align 1
  %441 = icmp eq i8 %440, 0
  br i1 %441, label %451, label %442

442:                                              ; preds = %437
  %443 = getelementptr i8, ptr %439, i32 1
  %444 = add i32 %438, -1
  %445 = icmp ult i32 %438, 2
  br i1 %445, label %460, label %437

446:                                              ; preds = %451
  %447 = add i32 %452, -1
  %448 = getelementptr i8, ptr %453, i32 1
  %449 = load i8, ptr %448, align 1
  %450 = icmp eq i8 %449, 0
  br i1 %450, label %451, label %455

451:                                              ; preds = %446, %437
  %452 = phi i32 [ %447, %446 ], [ %438, %437 ]
  %453 = phi ptr [ %448, %446 ], [ %439, %437 ]
  %454 = icmp ult i32 %452, 2
  br i1 %454, label %460, label %446

455:                                              ; preds = %446
  %456 = icmp eq ptr %448, null
  br i1 %456, label %460, label %427

457:                                              ; preds = %432
  %458 = getelementptr i8, ptr %428, i32 7
  %459 = icmp eq ptr %458, null
  br i1 %459, label %460, label %473

460:                                              ; preds = %457, %455, %451, %442
  %461 = tail call i32 @test_taint(i32 noundef 12) #29
  %462 = icmp eq i32 %461, 0
  br i1 %462, label %463, label %466

463:                                              ; preds = %460
  %464 = getelementptr inbounds %struct.module, ptr %374, i32 0, i32 2
  %465 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %464) #34
  br label %466

466:                                              ; preds = %463, %460
  tail call void @add_taint(i32 noundef 12, i32 noundef 0) #29
  %467 = getelementptr inbounds %struct.module, ptr %374, i32 0, i32 26
  tail call void @_set_bit(i32 noundef 12, ptr noundef %467) #29
  %468 = load ptr, ptr %55, align 4
  %469 = load i32, ptr %369, align 4
  %470 = load ptr, ptr %11, align 4
  %471 = getelementptr %struct.elf32_shdr, ptr %468, i32 %469, i32 4
  %472 = load i32, ptr %471, align 4
  br label %473

473:                                              ; preds = %466, %457
  %474 = phi i32 [ %472, %466 ], [ %379, %457 ]
  %475 = phi ptr [ %470, %466 ], [ %377, %457 ]
  %476 = phi i32 [ %469, %466 ], [ %376, %457 ]
  %477 = phi ptr [ %468, %466 ], [ %375, %457 ]
  %478 = getelementptr i8, ptr %475, i32 %474
  %479 = icmp eq ptr %478, null
  br i1 %479, label %556, label %480

480:                                              ; preds = %473
  %481 = getelementptr %struct.elf32_shdr, ptr %477, i32 %476, i32 5
  %482 = load i32, ptr %481, align 4
  br label %483

483:                                              ; preds = %511, %480
  %484 = phi ptr [ %504, %511 ], [ %478, %480 ]
  %485 = phi i32 [ %503, %511 ], [ %482, %480 ]
  %486 = tail call i32 @strncmp(ptr noundef nonnull %484, ptr noundef nonnull dereferenceable(10) @.str.67, i32 noundef 9) #29
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %488, label %492

488:                                              ; preds = %483
  %489 = getelementptr i8, ptr %484, i32 9
  %490 = load i8, ptr %489, align 1
  %491 = icmp eq i8 %490, 61
  br i1 %491, label %513, label %492

492:                                              ; preds = %488, %483
  br label %493

493:                                              ; preds = %498, %492
  %494 = phi i32 [ %500, %498 ], [ %485, %492 ]
  %495 = phi ptr [ %499, %498 ], [ %484, %492 ]
  %496 = load i8, ptr %495, align 1
  %497 = icmp eq i8 %496, 0
  br i1 %497, label %507, label %498

498:                                              ; preds = %493
  %499 = getelementptr i8, ptr %495, i32 1
  %500 = add i32 %494, -1
  %501 = icmp ult i32 %494, 2
  br i1 %501, label %513, label %493

502:                                              ; preds = %507
  %503 = add i32 %508, -1
  %504 = getelementptr i8, ptr %509, i32 1
  %505 = load i8, ptr %504, align 1
  %506 = icmp eq i8 %505, 0
  br i1 %506, label %507, label %511

507:                                              ; preds = %502, %493
  %508 = phi i32 [ %503, %502 ], [ %494, %493 ]
  %509 = phi ptr [ %504, %502 ], [ %495, %493 ]
  %510 = icmp ult i32 %508, 2
  br i1 %510, label %513, label %502

511:                                              ; preds = %502
  %512 = icmp eq ptr %504, null
  br i1 %512, label %513, label %483

513:                                              ; preds = %511, %507, %498, %488
  br label %514

514:                                              ; preds = %542, %513
  %515 = phi ptr [ %535, %542 ], [ %478, %513 ]
  %516 = phi i32 [ %534, %542 ], [ %482, %513 ]
  %517 = tail call i32 @strncmp(ptr noundef nonnull %515, ptr noundef nonnull dereferenceable(8) @.str.64, i32 noundef 7) #29
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %519, label %523

519:                                              ; preds = %514
  %520 = getelementptr i8, ptr %515, i32 7
  %521 = load i8, ptr %520, align 1
  %522 = icmp eq i8 %521, 61
  br i1 %522, label %544, label %523

523:                                              ; preds = %519, %514
  br label %524

524:                                              ; preds = %529, %523
  %525 = phi i32 [ %531, %529 ], [ %516, %523 ]
  %526 = phi ptr [ %530, %529 ], [ %515, %523 ]
  %527 = load i8, ptr %526, align 1
  %528 = icmp eq i8 %527, 0
  br i1 %528, label %538, label %529

529:                                              ; preds = %524
  %530 = getelementptr i8, ptr %526, i32 1
  %531 = add i32 %525, -1
  %532 = icmp ult i32 %525, 2
  br i1 %532, label %556, label %524

533:                                              ; preds = %538
  %534 = add i32 %539, -1
  %535 = getelementptr i8, ptr %540, i32 1
  %536 = load i8, ptr %535, align 1
  %537 = icmp eq i8 %536, 0
  br i1 %537, label %538, label %542

538:                                              ; preds = %533, %524
  %539 = phi i32 [ %534, %533 ], [ %525, %524 ]
  %540 = phi ptr [ %535, %533 ], [ %526, %524 ]
  %541 = icmp ult i32 %539, 2
  br i1 %541, label %556, label %533

542:                                              ; preds = %533
  %543 = icmp eq ptr %535, null
  br i1 %543, label %556, label %514

544:                                              ; preds = %519
  %545 = getelementptr i8, ptr %515, i32 8
  %546 = icmp eq ptr %545, null
  br i1 %546, label %556, label %547

547:                                              ; preds = %544
  tail call void @add_taint(i32 noundef 10, i32 noundef 0) #29
  %548 = getelementptr inbounds %struct.module, ptr %374, i32 0, i32 26
  tail call void @_set_bit(i32 noundef 10, ptr noundef %548) #29
  %549 = getelementptr inbounds %struct.module, ptr %374, i32 0, i32 2
  %550 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %549) #34
  %551 = load ptr, ptr %55, align 4
  %552 = load i32, ptr %369, align 4
  %553 = load ptr, ptr %11, align 4
  %554 = getelementptr %struct.elf32_shdr, ptr %551, i32 %552, i32 4
  %555 = load i32, ptr %554, align 4
  br label %556

556:                                              ; preds = %547, %544, %542, %538, %529, %473
  %557 = phi i32 [ %474, %473 ], [ %555, %547 ], [ %474, %544 ], [ %474, %538 ], [ %474, %529 ], [ %474, %542 ]
  %558 = phi ptr [ %475, %473 ], [ %553, %547 ], [ %475, %544 ], [ %475, %538 ], [ %475, %529 ], [ %475, %542 ]
  %559 = phi i32 [ %476, %473 ], [ %552, %547 ], [ %476, %544 ], [ %476, %538 ], [ %476, %529 ], [ %476, %542 ]
  %560 = phi ptr [ %477, %473 ], [ %551, %547 ], [ %477, %544 ], [ %477, %538 ], [ %477, %529 ], [ %477, %542 ]
  %561 = getelementptr i8, ptr %558, i32 %557
  %562 = icmp eq ptr %561, null
  br i1 %562, label %635, label %563

563:                                              ; preds = %556
  %564 = getelementptr %struct.elf32_shdr, ptr %560, i32 %559, i32 5
  %565 = load i32, ptr %564, align 4
  br label %566

566:                                              ; preds = %594, %563
  %567 = phi ptr [ %587, %594 ], [ %561, %563 ]
  %568 = phi i32 [ %586, %594 ], [ %565, %563 ]
  %569 = tail call i32 @strncmp(ptr noundef nonnull %567, ptr noundef nonnull dereferenceable(10) @.str.69, i32 noundef 9) #29
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %571, label %575

571:                                              ; preds = %566
  %572 = getelementptr i8, ptr %567, i32 9
  %573 = load i8, ptr %572, align 1
  %574 = icmp eq i8 %573, 61
  br i1 %574, label %596, label %575

575:                                              ; preds = %571, %566
  br label %576

576:                                              ; preds = %581, %575
  %577 = phi i32 [ %583, %581 ], [ %568, %575 ]
  %578 = phi ptr [ %582, %581 ], [ %567, %575 ]
  %579 = load i8, ptr %578, align 1
  %580 = icmp eq i8 %579, 0
  br i1 %580, label %590, label %581

581:                                              ; preds = %576
  %582 = getelementptr i8, ptr %578, i32 1
  %583 = add i32 %577, -1
  %584 = icmp ult i32 %577, 2
  br i1 %584, label %599, label %576

585:                                              ; preds = %590
  %586 = add i32 %591, -1
  %587 = getelementptr i8, ptr %592, i32 1
  %588 = load i8, ptr %587, align 1
  %589 = icmp eq i8 %588, 0
  br i1 %589, label %590, label %594

590:                                              ; preds = %585, %576
  %591 = phi i32 [ %586, %585 ], [ %577, %576 ]
  %592 = phi ptr [ %587, %585 ], [ %578, %576 ]
  %593 = icmp ult i32 %591, 2
  br i1 %593, label %599, label %585

594:                                              ; preds = %585
  %595 = icmp eq ptr %587, null
  br i1 %595, label %599, label %566

596:                                              ; preds = %571
  %597 = getelementptr i8, ptr %567, i32 10
  %598 = icmp eq ptr %597, null
  br i1 %598, label %599, label %600

599:                                              ; preds = %596, %594, %590, %581
  br label %603

600:                                              ; preds = %596
  %601 = getelementptr inbounds %struct.module, ptr %374, i32 0, i32 2
  %602 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %601) #34
  br label %1152

603:                                              ; preds = %633, %599
  %604 = phi ptr [ %626, %633 ], [ %561, %599 ]
  %605 = phi i32 [ %625, %633 ], [ %565, %599 ]
  %606 = tail call i32 @strncmp(ptr noundef nonnull %604, ptr noundef nonnull dereferenceable(8) @.str.66, i32 noundef 7) #29
  %607 = icmp eq i32 %606, 0
  br i1 %607, label %609, label %608

608:                                              ; preds = %609, %603
  br label %615

609:                                              ; preds = %603
  %610 = getelementptr i8, ptr %604, i32 7
  %611 = load i8, ptr %610, align 1
  %612 = icmp eq i8 %611, 61
  br i1 %612, label %613, label %608

613:                                              ; preds = %609
  %614 = getelementptr i8, ptr %604, i32 8
  br label %635

615:                                              ; preds = %620, %608
  %616 = phi i32 [ %622, %620 ], [ %605, %608 ]
  %617 = phi ptr [ %621, %620 ], [ %604, %608 ]
  %618 = load i8, ptr %617, align 1
  %619 = icmp eq i8 %618, 0
  br i1 %619, label %629, label %620

620:                                              ; preds = %615
  %621 = getelementptr i8, ptr %617, i32 1
  %622 = add i32 %616, -1
  %623 = icmp ult i32 %616, 2
  br i1 %623, label %635, label %615

624:                                              ; preds = %629
  %625 = add i32 %630, -1
  %626 = getelementptr i8, ptr %631, i32 1
  %627 = load i8, ptr %626, align 1
  %628 = icmp eq i8 %627, 0
  br i1 %628, label %629, label %633

629:                                              ; preds = %624, %615
  %630 = phi i32 [ %625, %624 ], [ %616, %615 ]
  %631 = phi ptr [ %626, %624 ], [ %617, %615 ]
  %632 = icmp ult i32 %630, 2
  br i1 %632, label %635, label %624

633:                                              ; preds = %624
  %634 = icmp eq ptr %626, null
  br i1 %634, label %635, label %603

635:                                              ; preds = %633, %629, %620, %613, %556
  %636 = phi ptr [ %614, %613 ], [ null, %556 ], [ null, %629 ], [ null, %620 ], [ null, %633 ]
  %637 = icmp eq ptr %636, null
  %638 = select i1 %637, ptr @.str.71, ptr %636
  %639 = tail call i32 @strcmp(ptr noundef %638, ptr noundef nonnull dereferenceable(4) @.str.73) #29
  %640 = icmp eq i32 %639, 0
  br i1 %640, label %666, label %641

641:                                              ; preds = %635
  %642 = tail call i32 @strcmp(ptr noundef %638, ptr noundef nonnull dereferenceable(7) @.str.74) #29
  %643 = icmp eq i32 %642, 0
  br i1 %643, label %666, label %644

644:                                              ; preds = %641
  %645 = tail call i32 @strcmp(ptr noundef %638, ptr noundef nonnull dereferenceable(26) @.str.75) #29
  %646 = icmp eq i32 %645, 0
  br i1 %646, label %666, label %647

647:                                              ; preds = %644
  %648 = tail call i32 @strcmp(ptr noundef %638, ptr noundef nonnull dereferenceable(13) @.str.76) #29
  %649 = icmp eq i32 %648, 0
  br i1 %649, label %666, label %650

650:                                              ; preds = %647
  %651 = tail call i32 @strcmp(ptr noundef %638, ptr noundef nonnull dereferenceable(13) @.str.77) #29
  %652 = icmp eq i32 %651, 0
  br i1 %652, label %666, label %653

653:                                              ; preds = %650
  %654 = tail call i32 @strcmp(ptr noundef %638, ptr noundef nonnull dereferenceable(13) @.str.78) #29
  %655 = icmp eq i32 %654, 0
  br i1 %655, label %666, label %656

656:                                              ; preds = %653
  %657 = tail call i32 @test_taint(i32 noundef 0) #29
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %659, label %662

659:                                              ; preds = %656
  %660 = getelementptr inbounds %struct.module, ptr %374, i32 0, i32 2
  %661 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %660, ptr noundef %638) #34
  br label %662

662:                                              ; preds = %659, %656
  tail call void @add_taint(i32 noundef 0, i32 noundef 1) #29
  %663 = getelementptr inbounds %struct.module, ptr %374, i32 0, i32 26
  tail call void @_set_bit(i32 noundef 0, ptr noundef %663) #29
  %664 = load ptr, ptr %11, align 4
  %665 = load ptr, ptr %55, align 4
  br label %666

666:                                              ; preds = %662, %653, %650, %647, %644, %641, %635
  %667 = phi ptr [ %560, %635 ], [ %560, %641 ], [ %560, %644 ], [ %560, %647 ], [ %560, %650 ], [ %560, %653 ], [ %665, %662 ]
  %668 = phi ptr [ %558, %635 ], [ %558, %641 ], [ %558, %644 ], [ %558, %647 ], [ %558, %650 ], [ %558, %653 ], [ %664, %662 ]
  %669 = load ptr, ptr %82, align 4
  %670 = load ptr, ptr %265, align 4
  %671 = tail call i32 @module_frob_arch_sections(ptr noundef %668, ptr noundef %667, ptr noundef %669, ptr noundef %670) #29
  %672 = icmp slt i32 %671, 0
  br i1 %672, label %1148, label %673

673:                                              ; preds = %666
  %674 = load ptr, ptr %11, align 4
  %675 = load ptr, ptr %55, align 4
  %676 = load ptr, ptr %82, align 4
  %677 = load ptr, ptr %265, align 4
  %678 = getelementptr inbounds %struct.elf32_hdr, ptr %674, i32 0, i32 12
  %679 = load i16, ptr %678, align 4
  %680 = zext i16 %679 to i32
  %681 = icmp eq i16 %679, 0
  br i1 %681, label %697, label %682

682:                                              ; preds = %688, %673
  %683 = phi i32 [ %689, %688 ], [ 0, %673 ]
  %684 = getelementptr %struct.elf32_shdr, ptr %675, i32 %683, i32 2
  %685 = load i32, ptr %684, align 4
  %686 = and i32 %685, 5
  %687 = icmp eq i32 %686, 5
  br i1 %687, label %691, label %688

688:                                              ; preds = %682
  %689 = add nuw nsw i32 %683, 1
  %690 = icmp eq i32 %689, %680
  br i1 %690, label %697, label %682

691:                                              ; preds = %682
  %692 = getelementptr %struct.elf32_shdr, ptr %675, i32 %683
  %693 = getelementptr inbounds %struct.module, ptr %677, i32 0, i32 2
  %694 = load i32, ptr %692, align 4
  %695 = getelementptr i8, ptr %676, i32 %694
  %696 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %693, ptr noundef %695, i32 noundef %683) #34
  br label %1152

697:                                              ; preds = %688, %673
  %698 = load i32, ptr %316, align 4
  %699 = getelementptr %struct.elf32_shdr, ptr %675, i32 %698, i32 2
  %700 = load i32, ptr %699, align 4
  %701 = and i32 %700, -3
  store i32 %701, ptr %699, align 4
  %702 = load ptr, ptr %11, align 4
  %703 = getelementptr inbounds %struct.elf32_hdr, ptr %702, i32 0, i32 12
  %704 = load i16, ptr %703, align 4
  %705 = zext i16 %704 to i32
  %706 = icmp ugt i16 %704, 1
  br i1 %706, label %707, label %761

707:                                              ; preds = %697
  %708 = load ptr, ptr %55, align 4
  br label %709

709:                                              ; preds = %722, %707
  %710 = phi i32 [ 1, %707 ], [ %723, %722 ]
  %711 = getelementptr %struct.elf32_shdr, ptr %708, i32 %710, i32 2
  %712 = load i32, ptr %711, align 4
  %713 = and i32 %712, 2
  %714 = icmp eq i32 %713, 0
  br i1 %714, label %722, label %715

715:                                              ; preds = %709
  %716 = getelementptr %struct.elf32_shdr, ptr %708, i32 %710
  %717 = load ptr, ptr %82, align 4
  %718 = load i32, ptr %716, align 4
  %719 = getelementptr i8, ptr %717, i32 %718
  %720 = tail call i32 @strcmp(ptr noundef %719, ptr noundef nonnull dereferenceable(21) @.str.57) #29
  %721 = icmp eq i32 %720, 0
  br i1 %721, label %725, label %722

722:                                              ; preds = %715, %709
  %723 = add nuw nsw i32 %710, 1
  %724 = icmp eq i32 %723, %705
  br i1 %724, label %731, label %709

725:                                              ; preds = %715
  %726 = or i32 %712, 2097152
  store i32 %726, ptr %711, align 4
  %727 = load ptr, ptr %11, align 4
  %728 = getelementptr inbounds %struct.elf32_hdr, ptr %727, i32 0, i32 12
  %729 = load i16, ptr %728, align 4
  %730 = zext i16 %729 to i32
  br label %731

731:                                              ; preds = %725, %722
  %732 = phi i32 [ %730, %725 ], [ %705, %722 ]
  %733 = phi i16 [ %729, %725 ], [ %704, %722 ]
  %734 = phi ptr [ %727, %725 ], [ %702, %722 ]
  %735 = icmp ugt i16 %733, 1
  br i1 %735, label %736, label %761

736:                                              ; preds = %731
  %737 = load ptr, ptr %55, align 4
  br label %738

738:                                              ; preds = %751, %736
  %739 = phi i32 [ 1, %736 ], [ %752, %751 ]
  %740 = getelementptr %struct.elf32_shdr, ptr %737, i32 %739, i32 2
  %741 = load i32, ptr %740, align 4
  %742 = and i32 %741, 2
  %743 = icmp eq i32 %742, 0
  br i1 %743, label %751, label %744

744:                                              ; preds = %738
  %745 = getelementptr %struct.elf32_shdr, ptr %737, i32 %739
  %746 = load ptr, ptr %82, align 4
  %747 = load i32, ptr %745, align 4
  %748 = getelementptr i8, ptr %746, i32 %747
  %749 = tail call i32 @strcmp(ptr noundef %748, ptr noundef nonnull dereferenceable(13) @.str.58) #29
  %750 = icmp eq i32 %749, 0
  br i1 %750, label %756, label %751

751:                                              ; preds = %744, %738
  %752 = add nuw nsw i32 %739, 1
  %753 = icmp eq i32 %752, %732
  br i1 %753, label %754, label %738

754:                                              ; preds = %751
  %755 = load ptr, ptr %265, align 4
  br label %766

756:                                              ; preds = %744
  %757 = or i32 %741, 2097152
  store i32 %757, ptr %740, align 4
  %758 = load ptr, ptr %11, align 4
  %759 = getelementptr inbounds %struct.elf32_hdr, ptr %758, i32 0, i32 12
  %760 = load i16, ptr %759, align 4
  br label %761

761:                                              ; preds = %756, %731, %697
  %762 = phi i16 [ %733, %731 ], [ %760, %756 ], [ %704, %697 ]
  %763 = phi ptr [ %734, %731 ], [ %758, %756 ], [ %702, %697 ]
  %764 = load ptr, ptr %265, align 4
  %765 = icmp eq i16 %762, 0
  br i1 %765, label %768, label %766

766:                                              ; preds = %761, %754
  %767 = phi ptr [ %755, %754 ], [ %764, %761 ]
  br label %775

768:                                              ; preds = %775, %761
  %769 = phi ptr [ %764, %761 ], [ %767, %775 ]
  %770 = phi ptr [ %763, %761 ], [ %780, %775 ]
  %771 = getelementptr inbounds %struct.module, ptr %769, i32 0, i32 23, i32 1
  %772 = getelementptr inbounds %struct.module, ptr %769, i32 0, i32 23, i32 4
  %773 = getelementptr inbounds %struct.module, ptr %769, i32 0, i32 23, i32 3
  %774 = getelementptr inbounds %struct.module, ptr %769, i32 0, i32 23, i32 2
  br label %785

775:                                              ; preds = %775, %766
  %776 = phi i32 [ %779, %775 ], [ 0, %766 ]
  %777 = load ptr, ptr %55, align 4
  %778 = getelementptr %struct.elf32_shdr, ptr %777, i32 %776, i32 9
  store i32 -1, ptr %778, align 4
  %779 = add nuw nsw i32 %776, 1
  %780 = load ptr, ptr %11, align 4
  %781 = getelementptr inbounds %struct.elf32_hdr, ptr %780, i32 0, i32 12
  %782 = load i16, ptr %781, align 4
  %783 = zext i16 %782 to i32
  %784 = icmp ult i32 %779, %783
  br i1 %784, label %775, label %768

785:                                              ; preds = %867, %768
  %786 = phi ptr [ %770, %768 ], [ %868, %867 ]
  %787 = phi i32 [ 0, %768 ], [ %869, %867 ]
  %788 = getelementptr inbounds %struct.elf32_hdr, ptr %786, i32 0, i32 12
  %789 = load i16, ptr %788, align 4
  %790 = icmp eq i16 %789, 0
  br i1 %790, label %843, label %791

791:                                              ; preds = %785
  %792 = getelementptr [5 x [2 x i32]], ptr @layout_sections.masks, i32 0, i32 %787
  %793 = load i32, ptr %792, align 4
  %794 = getelementptr [5 x [2 x i32]], ptr @layout_sections.masks, i32 0, i32 %787, i32 1
  br label %800

795:                                              ; preds = %864, %857
  %796 = getelementptr inbounds %struct.module, ptr %769, i32 0, i32 24, i32 1
  %797 = getelementptr inbounds %struct.module, ptr %769, i32 0, i32 24, i32 3
  %798 = getelementptr inbounds %struct.module, ptr %769, i32 0, i32 24, i32 4
  %799 = getelementptr inbounds %struct.module, ptr %769, i32 0, i32 24, i32 2
  br label %870

800:                                              ; preds = %836, %791
  %801 = phi i32 [ 0, %791 ], [ %837, %836 ]
  %802 = load ptr, ptr %55, align 4
  %803 = getelementptr %struct.elf32_shdr, ptr %802, i32 %801
  %804 = load ptr, ptr %82, align 4
  %805 = load i32, ptr %803, align 4
  %806 = getelementptr i8, ptr %804, i32 %805
  %807 = getelementptr %struct.elf32_shdr, ptr %802, i32 %801, i32 2
  %808 = load i32, ptr %807, align 4
  %809 = and i32 %808, %793
  %810 = icmp eq i32 %809, %793
  br i1 %810, label %811, label %836

811:                                              ; preds = %800
  %812 = load i32, ptr %794, align 4
  %813 = and i32 %812, %808
  %814 = icmp eq i32 %813, 0
  br i1 %814, label %815, label %836

815:                                              ; preds = %811
  %816 = getelementptr %struct.elf32_shdr, ptr %802, i32 %801, i32 9
  %817 = load i32, ptr %816, align 4
  %818 = icmp eq i32 %817, -1
  br i1 %818, label %819, label %836

819:                                              ; preds = %815
  %820 = tail call zeroext i1 @module_init_section(ptr noundef %806) #29
  br i1 %820, label %836, label %821

821:                                              ; preds = %819
  %822 = tail call i32 @arch_mod_section_prepend(ptr noundef %769, i32 noundef %801) #29
  %823 = load i32, ptr %771, align 4
  %824 = add i32 %823, %822
  store i32 %824, ptr %771, align 4
  %825 = getelementptr %struct.elf32_shdr, ptr %802, i32 %801, i32 8
  %826 = load i32, ptr %825, align 4
  %827 = icmp eq i32 %826, 0
  %828 = add i32 %826, -1
  %829 = select i1 %827, i32 0, i32 %828
  %830 = add i32 %829, %824
  %831 = xor i32 %829, -1
  %832 = and i32 %830, %831
  %833 = getelementptr %struct.elf32_shdr, ptr %802, i32 %801, i32 5
  %834 = load i32, ptr %833, align 4
  %835 = add i32 %832, %834
  store i32 %835, ptr %771, align 4
  store i32 %832, ptr %816, align 4
  br label %836

836:                                              ; preds = %821, %819, %815, %811, %800
  %837 = add nuw nsw i32 %801, 1
  %838 = load ptr, ptr %11, align 4
  %839 = getelementptr inbounds %struct.elf32_hdr, ptr %838, i32 0, i32 12
  %840 = load i16, ptr %839, align 4
  %841 = zext i16 %840 to i32
  %842 = icmp ult i32 %837, %841
  br i1 %842, label %800, label %843

843:                                              ; preds = %836, %785
  %844 = phi ptr [ %786, %785 ], [ %838, %836 ]
  switch i32 %787, label %864 [
    i32 0, label %845
    i32 1, label %849
    i32 2, label %853
    i32 4, label %857
  ]

845:                                              ; preds = %843
  %846 = load i32, ptr %771, align 4
  %847 = add i32 %846, 4095
  %848 = and i32 %847, -4096
  store i32 %848, ptr %771, align 4
  store i32 %848, ptr %774, align 8
  br label %861

849:                                              ; preds = %843
  %850 = load i32, ptr %771, align 4
  %851 = add i32 %850, 4095
  %852 = and i32 %851, -4096
  store i32 %852, ptr %771, align 4
  store i32 %852, ptr %773, align 4
  br label %861

853:                                              ; preds = %843
  %854 = load i32, ptr %771, align 4
  %855 = add i32 %854, 4095
  %856 = and i32 %855, -4096
  store i32 %856, ptr %771, align 4
  store i32 %856, ptr %772, align 16
  br label %861

857:                                              ; preds = %843
  %858 = load i32, ptr %771, align 4
  %859 = add i32 %858, 4095
  %860 = and i32 %859, -4096
  store i32 %860, ptr %771, align 4
  br label %795

861:                                              ; preds = %853, %849, %845
  %862 = add nuw nsw i32 %787, 1
  %863 = load ptr, ptr %11, align 4
  br label %867

864:                                              ; preds = %843
  %865 = add nuw nsw i32 %787, 1
  %866 = icmp eq i32 %865, 5
  br i1 %866, label %795, label %867

867:                                              ; preds = %864, %861
  %868 = phi ptr [ %863, %861 ], [ %844, %864 ]
  %869 = phi i32 [ %862, %861 ], [ %865, %864 ]
  br label %785

870:                                              ; preds = %939, %795
  %871 = phi i32 [ 0, %795 ], [ %940, %939 ]
  %872 = load ptr, ptr %11, align 4
  %873 = getelementptr inbounds %struct.elf32_hdr, ptr %872, i32 0, i32 12
  %874 = load i16, ptr %873, align 4
  %875 = icmp eq i16 %874, 0
  br i1 %875, label %924, label %876

876:                                              ; preds = %870
  %877 = getelementptr [5 x [2 x i32]], ptr @layout_sections.masks, i32 0, i32 %871
  %878 = load i32, ptr %877, align 4
  %879 = getelementptr [5 x [2 x i32]], ptr @layout_sections.masks, i32 0, i32 %871, i32 1
  br label %880

880:                                              ; preds = %917, %876
  %881 = phi i32 [ 0, %876 ], [ %918, %917 ]
  %882 = load ptr, ptr %55, align 4
  %883 = getelementptr %struct.elf32_shdr, ptr %882, i32 %881
  %884 = load ptr, ptr %82, align 4
  %885 = load i32, ptr %883, align 4
  %886 = getelementptr i8, ptr %884, i32 %885
  %887 = getelementptr %struct.elf32_shdr, ptr %882, i32 %881, i32 2
  %888 = load i32, ptr %887, align 4
  %889 = and i32 %888, %878
  %890 = icmp eq i32 %889, %878
  br i1 %890, label %891, label %917

891:                                              ; preds = %880
  %892 = load i32, ptr %879, align 4
  %893 = and i32 %892, %888
  %894 = icmp eq i32 %893, 0
  br i1 %894, label %895, label %917

895:                                              ; preds = %891
  %896 = getelementptr %struct.elf32_shdr, ptr %882, i32 %881, i32 9
  %897 = load i32, ptr %896, align 4
  %898 = icmp eq i32 %897, -1
  br i1 %898, label %899, label %917

899:                                              ; preds = %895
  %900 = tail call zeroext i1 @module_init_section(ptr noundef %886) #29
  br i1 %900, label %901, label %917

901:                                              ; preds = %899
  %902 = tail call i32 @arch_mod_section_prepend(ptr noundef %769, i32 noundef %881) #29
  %903 = load i32, ptr %796, align 4
  %904 = add i32 %903, %902
  store i32 %904, ptr %796, align 4
  %905 = getelementptr %struct.elf32_shdr, ptr %882, i32 %881, i32 8
  %906 = load i32, ptr %905, align 4
  %907 = icmp eq i32 %906, 0
  %908 = add i32 %906, -1
  %909 = select i1 %907, i32 0, i32 %908
  %910 = add i32 %909, %904
  %911 = xor i32 %909, -1
  %912 = and i32 %910, %911
  %913 = getelementptr %struct.elf32_shdr, ptr %882, i32 %881, i32 5
  %914 = load i32, ptr %913, align 4
  %915 = add i32 %912, %914
  store i32 %915, ptr %796, align 4
  %916 = or i32 %912, -2147483648
  store i32 %916, ptr %896, align 4
  br label %917

917:                                              ; preds = %901, %899, %895, %891, %880
  %918 = add nuw nsw i32 %881, 1
  %919 = load ptr, ptr %11, align 4
  %920 = getelementptr inbounds %struct.elf32_hdr, ptr %919, i32 0, i32 12
  %921 = load i16, ptr %920, align 4
  %922 = zext i16 %921 to i32
  %923 = icmp ult i32 %918, %922
  br i1 %923, label %880, label %924

924:                                              ; preds = %917, %870
  switch i32 %871, label %939 [
    i32 0, label %925
    i32 1, label %929
    i32 2, label %933
    i32 4, label %935
  ]

925:                                              ; preds = %924
  %926 = load i32, ptr %796, align 4
  %927 = add i32 %926, 4095
  %928 = and i32 %927, -4096
  store i32 %928, ptr %796, align 4
  store i32 %928, ptr %799, align 8
  br label %939

929:                                              ; preds = %924
  %930 = load i32, ptr %796, align 4
  %931 = add i32 %930, 4095
  %932 = and i32 %931, -4096
  store i32 %932, ptr %796, align 4
  store i32 %932, ptr %797, align 4
  br label %939

933:                                              ; preds = %924
  %934 = load i32, ptr %797, align 4
  store i32 %934, ptr %798, align 16
  br label %939

935:                                              ; preds = %924
  %936 = load i32, ptr %796, align 4
  %937 = add i32 %936, 4095
  %938 = and i32 %937, -4096
  store i32 %938, ptr %796, align 4
  br label %942

939:                                              ; preds = %933, %929, %925, %924
  %940 = add nuw nsw i32 %871, 1
  %941 = icmp eq i32 %940, 5
  br i1 %941, label %942, label %870

942:                                              ; preds = %939, %935
  %943 = load ptr, ptr %265, align 4
  %944 = load ptr, ptr %55, align 4
  %945 = load i32, ptr %207, align 4
  %946 = getelementptr inbounds %struct.load_info, ptr %0, i32 0, i32 15, i32 1
  %947 = load i32, ptr %946, align 4
  %948 = getelementptr %struct.elf32_shdr, ptr %944, i32 %945, i32 2
  %949 = load i32, ptr %948, align 4
  %950 = or i32 %949, 2
  store i32 %950, ptr %948, align 4
  %951 = getelementptr inbounds %struct.module, ptr %943, i32 0, i32 24, i32 1
  %952 = load i32, ptr %207, align 4
  %953 = tail call i32 @arch_mod_section_prepend(ptr noundef %943, i32 noundef %952) #29
  %954 = load i32, ptr %951, align 4
  %955 = add i32 %954, %953
  store i32 %955, ptr %951, align 4
  %956 = getelementptr %struct.elf32_shdr, ptr %944, i32 %945, i32 8
  %957 = load i32, ptr %956, align 4
  %958 = icmp eq i32 %957, 0
  %959 = add i32 %957, -1
  %960 = select i1 %958, i32 0, i32 %959
  %961 = add i32 %960, %955
  %962 = xor i32 %960, -1
  %963 = and i32 %961, %962
  %964 = getelementptr %struct.elf32_shdr, ptr %944, i32 %945, i32 5
  %965 = load i32, ptr %964, align 4
  %966 = add i32 %963, %965
  store i32 %966, ptr %951, align 4
  %967 = or i32 %963, -2147483648
  %968 = getelementptr %struct.elf32_shdr, ptr %944, i32 %945, i32 9
  store i32 %967, ptr %968, align 4
  %969 = load ptr, ptr %11, align 4
  %970 = getelementptr %struct.elf32_shdr, ptr %944, i32 %945, i32 4
  %971 = load i32, ptr %970, align 4
  %972 = getelementptr i8, ptr %969, i32 %971
  %973 = load i32, ptr %964, align 4
  %974 = lshr i32 %973, 4
  %975 = icmp ult i32 %973, 16
  br i1 %975, label %1023, label %976

976:                                              ; preds = %942
  %977 = getelementptr inbounds %struct.load_info, ptr %0, i32 0, i32 6
  %978 = tail call i32 @llvm.umax.i32(i32 %974, i32 1) #29
  %979 = load i32, ptr %972, align 4
  %980 = load ptr, ptr %977, align 4
  %981 = getelementptr i8, ptr %980, i32 %979
  %982 = tail call i32 @strlen(ptr noundef %981) #29
  %983 = add i32 %982, 1
  %984 = icmp ult i32 %973, 32
  br i1 %984, label %1023, label %985

985:                                              ; preds = %976
  %986 = getelementptr inbounds %struct.elf32_hdr, ptr %969, i32 0, i32 12
  %987 = load ptr, ptr %55, align 4
  %988 = load i16, ptr %986, align 4
  br label %989

989:                                              ; preds = %1018, %985
  %990 = phi i32 [ %983, %985 ], [ %1020, %1018 ]
  %991 = phi i32 [ 1, %985 ], [ %1019, %1018 ]
  %992 = phi i32 [ 1, %985 ], [ %1021, %1018 ]
  %993 = getelementptr %struct.elf32_sym, ptr %972, i32 %992
  %994 = getelementptr inbounds %struct.elf32_sym, ptr %993, i32 0, i32 5
  %995 = load i16, ptr %994, align 2
  %996 = zext i16 %995 to i32
  %997 = icmp ne i16 %995, 0
  %998 = icmp ult i16 %995, %988
  %999 = and i1 %997, %998
  br i1 %999, label %1000, label %1018

1000:                                             ; preds = %989
  %1001 = load i32, ptr %993, align 4
  %1002 = icmp eq i32 %1001, 0
  br i1 %1002, label %1018, label %1003

1003:                                             ; preds = %1000
  %1004 = getelementptr %struct.elf32_shdr, ptr %987, i32 %996, i32 2
  %1005 = load i32, ptr %1004, align 4
  %1006 = and i32 %1005, 6
  %1007 = icmp eq i32 %1006, 6
  br i1 %1007, label %1008, label %1018

1008:                                             ; preds = %1003
  %1009 = getelementptr %struct.elf32_shdr, ptr %987, i32 %996, i32 9
  %1010 = load i32, ptr %1009, align 4
  %1011 = icmp sgt i32 %1010, -1
  br i1 %1011, label %1012, label %1018

1012:                                             ; preds = %1008
  %1013 = getelementptr i8, ptr %980, i32 %1001
  %1014 = tail call i32 @strlen(ptr noundef %1013) #29
  %1015 = add i32 %990, 1
  %1016 = add i32 %1015, %1014
  %1017 = add i32 %991, 1
  br label %1018

1018:                                             ; preds = %1012, %1008, %1003, %1000, %989
  %1019 = phi i32 [ %1017, %1012 ], [ %991, %1008 ], [ %991, %1000 ], [ %991, %989 ], [ %991, %1003 ]
  %1020 = phi i32 [ %1016, %1012 ], [ %990, %1008 ], [ %990, %1000 ], [ %990, %989 ], [ %990, %1003 ]
  %1021 = add nuw nsw i32 %992, 1
  %1022 = icmp eq i32 %1021, %978
  br i1 %1022, label %1023, label %989, !llvm.loop !82

1023:                                             ; preds = %1018, %976, %942
  %1024 = phi i32 [ 0, %942 ], [ 1, %976 ], [ %1019, %1018 ]
  %1025 = phi i32 [ 0, %942 ], [ %983, %976 ], [ %1020, %1018 ]
  %1026 = getelementptr inbounds %struct.module, ptr %943, i32 0, i32 23, i32 1
  %1027 = load i32, ptr %1026, align 4
  %1028 = load i32, ptr %956, align 4
  %1029 = icmp eq i32 %1028, 0
  %1030 = add i32 %1028, -1
  %1031 = select i1 %1029, i32 0, i32 %1030
  %1032 = add i32 %1031, %1027
  %1033 = xor i32 %1031, -1
  %1034 = and i32 %1032, %1033
  %1035 = getelementptr inbounds %struct.load_info, ptr %0, i32 0, i32 7
  store i32 %1034, ptr %1035, align 4
  %1036 = shl i32 %1024, 4
  %1037 = add i32 %1034, %1036
  store i32 %1037, ptr %1026, align 4
  %1038 = getelementptr inbounds %struct.load_info, ptr %0, i32 0, i32 8
  store i32 %1037, ptr %1038, align 4
  %1039 = load i32, ptr %1026, align 4
  %1040 = add i32 %1039, %1025
  store i32 %1040, ptr %1026, align 4
  %1041 = getelementptr inbounds %struct.load_info, ptr %0, i32 0, i32 10
  store i32 %1040, ptr %1041, align 4
  %1042 = load i32, ptr %1026, align 4
  %1043 = add i32 %1024, 4095
  %1044 = add i32 %1043, %1042
  %1045 = and i32 %1044, -4096
  store i32 %1045, ptr %1026, align 4
  %1046 = getelementptr %struct.elf32_shdr, ptr %944, i32 %947, i32 2
  %1047 = load i32, ptr %1046, align 4
  %1048 = or i32 %1047, 2
  store i32 %1048, ptr %1046, align 4
  %1049 = load i32, ptr %946, align 4
  %1050 = tail call i32 @arch_mod_section_prepend(ptr noundef %943, i32 noundef %1049) #29
  %1051 = load i32, ptr %951, align 4
  %1052 = add i32 %1051, %1050
  store i32 %1052, ptr %951, align 4
  %1053 = getelementptr %struct.elf32_shdr, ptr %944, i32 %947, i32 8
  %1054 = load i32, ptr %1053, align 4
  %1055 = icmp eq i32 %1054, 0
  %1056 = add i32 %1054, -1
  %1057 = select i1 %1055, i32 0, i32 %1056
  %1058 = add i32 %1057, %1052
  %1059 = xor i32 %1057, -1
  %1060 = and i32 %1058, %1059
  %1061 = getelementptr %struct.elf32_shdr, ptr %944, i32 %947, i32 5
  %1062 = load i32, ptr %1061, align 4
  %1063 = add i32 %1060, %1062
  store i32 %1063, ptr %951, align 4
  %1064 = or i32 %1060, -2147483648
  %1065 = getelementptr %struct.elf32_shdr, ptr %944, i32 %947, i32 9
  store i32 %1064, ptr %1065, align 4
  %1066 = load i32, ptr %951, align 4
  %1067 = add i32 %1066, 3
  %1068 = and i32 %1067, -4
  store i32 %1068, ptr %951, align 4
  %1069 = getelementptr inbounds %struct.load_info, ptr %0, i32 0, i32 14
  store i32 %1068, ptr %1069, align 4
  %1070 = load i32, ptr %951, align 4
  %1071 = add i32 %1070, 16
  store i32 %1071, ptr %951, align 4
  %1072 = getelementptr inbounds %struct.load_info, ptr %0, i32 0, i32 9
  store i32 %1071, ptr %1072, align 4
  %1073 = load i32, ptr %951, align 4
  %1074 = add nuw nsw i32 %974, 4095
  %1075 = add i32 %1074, %1073
  %1076 = and i32 %1075, -4096
  store i32 %1076, ptr %951, align 4
  %1077 = load ptr, ptr %265, align 4
  %1078 = getelementptr inbounds %struct.module, ptr %1077, i32 0, i32 23
  %1079 = getelementptr inbounds %struct.module, ptr %1077, i32 0, i32 23, i32 1
  %1080 = load i32, ptr %1079, align 4
  %1081 = tail call ptr @module_alloc(i32 noundef %1080) #29
  %1082 = icmp eq ptr %1081, null
  br i1 %1082, label %1152, label %1083

1083:                                             ; preds = %1023
  %1084 = load i32, ptr %1079, align 4
  tail call void @llvm.memset.p0.i32(ptr nonnull align 1 %1081, i8 0, i32 %1084, i1 false) #29
  store ptr %1081, ptr %1078, align 64
  %1085 = getelementptr inbounds %struct.module, ptr %1077, i32 0, i32 24
  %1086 = getelementptr inbounds %struct.module, ptr %1077, i32 0, i32 24, i32 1
  %1087 = load i32, ptr %1086, align 4
  %1088 = icmp eq i32 %1087, 0
  br i1 %1088, label %1096, label %1089

1089:                                             ; preds = %1083
  %1090 = tail call ptr @module_alloc(i32 noundef %1087) #29
  %1091 = icmp eq ptr %1090, null
  br i1 %1091, label %1092, label %1094

1092:                                             ; preds = %1089
  %1093 = load ptr, ptr %1078, align 64
  tail call void @module_memfree(ptr noundef %1093) #29
  br label %1152

1094:                                             ; preds = %1089
  %1095 = load i32, ptr %1086, align 4
  tail call void @llvm.memset.p0.i32(ptr nonnull align 1 %1090, i8 0, i32 %1095, i1 false) #29
  br label %1096

1096:                                             ; preds = %1094, %1083
  %1097 = phi ptr [ %1090, %1094 ], [ null, %1083 ]
  store ptr %1097, ptr %1085, align 16
  %1098 = load ptr, ptr %11, align 4
  %1099 = getelementptr inbounds %struct.elf32_hdr, ptr %1098, i32 0, i32 12
  %1100 = load i16, ptr %1099, align 4
  %1101 = icmp eq i16 %1100, 0
  br i1 %1101, label %1143, label %1102

1102:                                             ; preds = %1136, %1096
  %1103 = phi ptr [ %1137, %1136 ], [ %1098, %1096 ]
  %1104 = phi i32 [ %1138, %1136 ], [ 0, %1096 ]
  %1105 = load ptr, ptr %55, align 4
  %1106 = getelementptr %struct.elf32_shdr, ptr %1105, i32 %1104, i32 2
  %1107 = load i32, ptr %1106, align 4
  %1108 = and i32 %1107, 2
  %1109 = icmp eq i32 %1108, 0
  br i1 %1109, label %1136, label %1110

1110:                                             ; preds = %1102
  %1111 = getelementptr %struct.elf32_shdr, ptr %1105, i32 %1104, i32 9
  %1112 = load i32, ptr %1111, align 4
  %1113 = icmp sgt i32 %1112, -1
  br i1 %1113, label %1118, label %1114

1114:                                             ; preds = %1110
  %1115 = load ptr, ptr %1085, align 16
  %1116 = and i32 %1112, 2147483647
  %1117 = getelementptr i8, ptr %1115, i32 %1116
  br label %1121

1118:                                             ; preds = %1110
  %1119 = load ptr, ptr %1078, align 64
  %1120 = getelementptr i8, ptr %1119, i32 %1112
  br label %1121

1121:                                             ; preds = %1118, %1114
  %1122 = phi ptr [ %1117, %1114 ], [ %1120, %1118 ]
  %1123 = getelementptr %struct.elf32_shdr, ptr %1105, i32 %1104, i32 1
  %1124 = load i32, ptr %1123, align 4
  %1125 = icmp eq i32 %1124, 8
  br i1 %1125, label %1132, label %1126

1126:                                             ; preds = %1121
  %1127 = getelementptr %struct.elf32_shdr, ptr %1105, i32 %1104, i32 3
  %1128 = load i32, ptr %1127, align 4
  %1129 = inttoptr i32 %1128 to ptr
  %1130 = getelementptr %struct.elf32_shdr, ptr %1105, i32 %1104, i32 5
  %1131 = load i32, ptr %1130, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1122, ptr align 1 %1129, i32 %1131, i1 false) #29
  br label %1132

1132:                                             ; preds = %1126, %1121
  %1133 = ptrtoint ptr %1122 to i32
  %1134 = getelementptr %struct.elf32_shdr, ptr %1105, i32 %1104, i32 3
  store i32 %1133, ptr %1134, align 4
  %1135 = load ptr, ptr %11, align 4
  br label %1136

1136:                                             ; preds = %1132, %1102
  %1137 = phi ptr [ %1103, %1102 ], [ %1135, %1132 ]
  %1138 = add nuw nsw i32 %1104, 1
  %1139 = getelementptr inbounds %struct.elf32_hdr, ptr %1137, i32 0, i32 12
  %1140 = load i16, ptr %1139, align 4
  %1141 = zext i16 %1140 to i32
  %1142 = icmp ult i32 %1138, %1141
  br i1 %1142, label %1102, label %1143

1143:                                             ; preds = %1136, %1096
  %1144 = load ptr, ptr %55, align 4
  %1145 = load i32, ptr %261, align 4
  %1146 = getelementptr %struct.elf32_shdr, ptr %1144, i32 %1145, i32 3
  %1147 = load i32, ptr %1146, align 4
  br label %1148

1148:                                             ; preds = %1143, %666
  %1149 = phi i32 [ %1147, %1143 ], [ %671, %666 ]
  %1150 = inttoptr i32 %1149 to ptr
  %1151 = icmp ugt ptr %1150, inttoptr (i32 -4096 to ptr)
  br i1 %1151, label %1152, label %1155

1152:                                             ; preds = %1148, %1092, %1023, %691, %600, %424, %415, %413, %409, %400, %362
  %1153 = phi ptr [ %1150, %1148 ], [ inttoptr (i32 -12 to ptr), %1023 ], [ inttoptr (i32 -12 to ptr), %1092 ], [ inttoptr (i32 -8 to ptr), %362 ], [ inttoptr (i32 -8 to ptr), %415 ], [ inttoptr (i32 -8 to ptr), %424 ], [ inttoptr (i32 -8 to ptr), %600 ], [ inttoptr (i32 -8 to ptr), %691 ], [ inttoptr (i32 -8 to ptr), %409 ], [ inttoptr (i32 -8 to ptr), %400 ], [ inttoptr (i32 -8 to ptr), %413 ]
  %1154 = ptrtoint ptr %1153 to i32
  br label %1388

1155:                                             ; preds = %1148
  %1156 = getelementptr inbounds %struct.module, ptr %1150, i32 0, i32 2
  store i32 3, ptr %1150, align 64
  br label %1157

1157:                                             ; preds = %1237, %1155
  call void @mutex_lock(ptr noundef nonnull @module_mutex) #29
  %1158 = call i32 @strlen(ptr noundef %1156) #29
  %1159 = load volatile ptr, ptr @modules, align 4
  %1160 = icmp eq ptr %1159, @modules
  br i1 %1160, label %1240, label %1161

1161:                                             ; preds = %1169, %1157
  %1162 = phi ptr [ %1170, %1169 ], [ %1159, %1157 ]
  %1163 = getelementptr i8, ptr %1162, i32 8
  %1164 = call i32 @strlen(ptr noundef %1163) #29
  %1165 = icmp eq i32 %1164, %1158
  br i1 %1165, label %1166, label %1169

1166:                                             ; preds = %1161
  %1167 = call i32 @bcmp(ptr %1163, ptr %1156, i32 %1158) #29
  %1168 = icmp eq i32 %1167, 0
  br i1 %1168, label %1172, label %1169

1169:                                             ; preds = %1166, %1161
  %1170 = load volatile ptr, ptr %1162, align 4
  %1171 = icmp eq ptr %1170, @modules
  br i1 %1171, label %1240, label %1161

1172:                                             ; preds = %1166
  %1173 = getelementptr i8, ptr %1162, i32 -4
  %1174 = icmp eq ptr %1173, null
  br i1 %1174, label %1240, label %1175

1175:                                             ; preds = %1172
  %1176 = load i32, ptr %1173, align 64
  %1177 = icmp eq i32 %1176, 0
  call void @mutex_unlock(ptr noundef nonnull @module_mutex) #29
  br i1 %1177, label %1380, label %1178

1178:                                             ; preds = %1175
  call void @mutex_lock(ptr noundef nonnull @module_mutex) #29
  %1179 = call i32 @strlen(ptr noundef %1156) #29
  %1180 = load volatile ptr, ptr @modules, align 4
  %1181 = icmp eq ptr %1180, @modules
  br i1 %1181, label %1196, label %1182

1182:                                             ; preds = %1190, %1178
  %1183 = phi ptr [ %1191, %1190 ], [ %1180, %1178 ]
  %1184 = getelementptr i8, ptr %1183, i32 8
  %1185 = call i32 @strlen(ptr noundef %1184) #29
  %1186 = icmp eq i32 %1185, %1179
  br i1 %1186, label %1187, label %1190

1187:                                             ; preds = %1182
  %1188 = call i32 @bcmp(ptr %1184, ptr %1156, i32 %1179) #29
  %1189 = icmp eq i32 %1188, 0
  br i1 %1189, label %1193, label %1190

1190:                                             ; preds = %1187, %1182
  %1191 = load volatile ptr, ptr %1183, align 4
  %1192 = icmp eq ptr %1191, @modules
  br i1 %1192, label %1196, label %1182

1193:                                             ; preds = %1187
  %1194 = getelementptr i8, ptr %1183, i32 -4
  %1195 = icmp eq ptr %1194, null
  br i1 %1195, label %1196, label %1197

1196:                                             ; preds = %1193, %1190, %1178
  call void @mutex_unlock(ptr noundef nonnull @module_mutex) #29
  br label %1237

1197:                                             ; preds = %1193
  %1198 = load i32, ptr %1194, align 64
  %1199 = icmp eq i32 %1198, 0
  call void @mutex_unlock(ptr noundef nonnull @module_mutex) #29
  br i1 %1199, label %1237, label %1200

1200:                                             ; preds = %1197
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #29
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false) #29, !annotation !9
  call void @init_wait_entry(ptr noundef nonnull %4, i32 noundef 0) #29
  %1201 = call i32 @prepare_to_wait_event(ptr noundef nonnull @module_wq, ptr noundef nonnull %4, i32 noundef 1) #29
  call void @mutex_lock(ptr noundef nonnull @module_mutex) #29
  %1202 = call i32 @strlen(ptr noundef %1156) #29
  %1203 = load volatile ptr, ptr @modules, align 4
  %1204 = icmp eq ptr %1203, @modules
  br i1 %1204, label %1223, label %1205

1205:                                             ; preds = %1229, %1200
  %1206 = phi ptr [ %1232, %1229 ], [ %1203, %1200 ]
  %1207 = phi i32 [ %1231, %1229 ], [ %1202, %1200 ]
  %1208 = phi i32 [ %1230, %1229 ], [ %1201, %1200 ]
  br label %1209

1209:                                             ; preds = %1217, %1205
  %1210 = phi ptr [ %1218, %1217 ], [ %1206, %1205 ]
  %1211 = getelementptr i8, ptr %1210, i32 8
  %1212 = call i32 @strlen(ptr noundef %1211) #29
  %1213 = icmp eq i32 %1212, %1207
  br i1 %1213, label %1214, label %1217

1214:                                             ; preds = %1209
  %1215 = call i32 @bcmp(ptr %1211, ptr %1156, i32 %1207) #29
  %1216 = icmp eq i32 %1215, 0
  br i1 %1216, label %1220, label %1217

1217:                                             ; preds = %1214, %1209
  %1218 = load volatile ptr, ptr %1210, align 4
  %1219 = icmp eq ptr %1218, @modules
  br i1 %1219, label %1223, label %1209

1220:                                             ; preds = %1214
  %1221 = getelementptr i8, ptr %1210, i32 -4
  %1222 = icmp eq ptr %1221, null
  br i1 %1222, label %1223, label %1224

1223:                                             ; preds = %1229, %1220, %1217, %1200
  call void @mutex_unlock(ptr noundef nonnull @module_mutex) #29
  br label %1234

1224:                                             ; preds = %1220
  %1225 = load i32, ptr %1221, align 64
  %1226 = icmp eq i32 %1225, 0
  call void @mutex_unlock(ptr noundef nonnull @module_mutex) #29
  br i1 %1226, label %1234, label %1227

1227:                                             ; preds = %1224
  %1228 = icmp eq i32 %1208, 0
  br i1 %1228, label %1229, label %1235

1229:                                             ; preds = %1227
  call void @schedule() #29
  %1230 = call i32 @prepare_to_wait_event(ptr noundef nonnull @module_wq, ptr noundef nonnull %4, i32 noundef 1) #29
  call void @mutex_lock(ptr noundef nonnull @module_mutex) #29
  %1231 = call i32 @strlen(ptr noundef %1156) #29
  %1232 = load volatile ptr, ptr @modules, align 4
  %1233 = icmp eq ptr %1232, @modules
  br i1 %1233, label %1223, label %1205

1234:                                             ; preds = %1224, %1223
  call void @finish_wait(ptr noundef nonnull @module_wq, ptr noundef nonnull %4) #29
  br label %1235

1235:                                             ; preds = %1234, %1227
  %1236 = phi i32 [ 0, %1234 ], [ %1208, %1227 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #29
  br label %1237

1237:                                             ; preds = %1235, %1197, %1196
  %1238 = phi i32 [ 0, %1197 ], [ %1236, %1235 ], [ 0, %1196 ]
  %1239 = icmp eq i32 %1238, 0
  br i1 %1239, label %1157, label %1380

1240:                                             ; preds = %1172, %1169, %1157
  %1241 = getelementptr inbounds %struct.module, ptr %1150, i32 0, i32 23
  %1242 = load ptr, ptr %1241, align 64
  %1243 = getelementptr inbounds %struct.module, ptr %1150, i32 0, i32 23, i32 1
  %1244 = load i32, ptr %1243, align 4
  %1245 = ptrtoint ptr %1242 to i32
  %1246 = add i32 %1244, %1245
  %1247 = load i32, ptr getelementptr inbounds (%struct.mod_tree_root, ptr @mod_tree, i32 0, i32 1), align 4
  %1248 = icmp ugt i32 %1247, %1245
  br i1 %1248, label %1249, label %1250

1249:                                             ; preds = %1240
  store i32 %1245, ptr getelementptr inbounds (%struct.mod_tree_root, ptr @mod_tree, i32 0, i32 1), align 4
  br label %1250

1250:                                             ; preds = %1249, %1240
  %1251 = phi i32 [ %1245, %1249 ], [ %1247, %1240 ]
  %1252 = load i32, ptr getelementptr inbounds (%struct.mod_tree_root, ptr @mod_tree, i32 0, i32 2), align 16
  %1253 = icmp ugt i32 %1246, %1252
  br i1 %1253, label %1254, label %1255

1254:                                             ; preds = %1250
  store i32 %1246, ptr getelementptr inbounds (%struct.mod_tree_root, ptr @mod_tree, i32 0, i32 2), align 16
  br label %1255

1255:                                             ; preds = %1254, %1250
  %1256 = phi i32 [ %1252, %1250 ], [ %1246, %1254 ]
  %1257 = getelementptr inbounds %struct.module, ptr %1150, i32 0, i32 24, i32 1
  %1258 = load i32, ptr %1257, align 4
  %1259 = icmp eq i32 %1258, 0
  br i1 %1259, label %1270, label %1260

1260:                                             ; preds = %1255
  %1261 = getelementptr inbounds %struct.module, ptr %1150, i32 0, i32 24
  %1262 = load ptr, ptr %1261, align 16
  %1263 = ptrtoint ptr %1262 to i32
  %1264 = add i32 %1258, %1263
  %1265 = icmp ugt i32 %1251, %1263
  br i1 %1265, label %1266, label %1267

1266:                                             ; preds = %1260
  store i32 %1263, ptr getelementptr inbounds (%struct.mod_tree_root, ptr @mod_tree, i32 0, i32 1), align 4
  br label %1267

1267:                                             ; preds = %1266, %1260
  %1268 = icmp ugt i32 %1264, %1256
  br i1 %1268, label %1269, label %1270

1269:                                             ; preds = %1267
  store i32 %1264, ptr getelementptr inbounds (%struct.mod_tree_root, ptr @mod_tree, i32 0, i32 2), align 16
  br label %1270

1270:                                             ; preds = %1269, %1267, %1255
  %1271 = getelementptr inbounds %struct.module, ptr %1150, i32 0, i32 1
  store ptr %1159, ptr %1271, align 4
  %1272 = getelementptr inbounds %struct.module, ptr %1150, i32 0, i32 1, i32 1
  store ptr @modules, ptr %1272, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #29, !srcloc !84
  store volatile ptr %1271, ptr @modules, align 4
  %1273 = getelementptr inbounds %struct.list_head, ptr %1159, i32 0, i32 1
  store ptr %1271, ptr %1273, align 4
  %1274 = getelementptr inbounds %struct.module, ptr %1150, i32 0, i32 23, i32 5
  store ptr %1150, ptr %1274, align 4
  %1275 = getelementptr inbounds %struct.module, ptr %1150, i32 0, i32 24, i32 5
  store ptr %1150, ptr %1275, align 4
  call fastcc void @__mod_tree_insert(ptr noundef %1274) #29
  %1276 = load i32, ptr %1257, align 4
  %1277 = icmp eq i32 %1276, 0
  br i1 %1277, label %1279, label %1278

1278:                                             ; preds = %1270
  call fastcc void @__mod_tree_insert(ptr noundef %1275) #29
  br label %1279

1279:                                             ; preds = %1278, %1270
  call void @mutex_unlock(ptr noundef nonnull @module_mutex) #29
  %1280 = load ptr, ptr %55, align 4
  %1281 = load i32, ptr %316, align 4
  %1282 = getelementptr %struct.elf32_shdr, ptr %1280, i32 %1281, i32 8
  %1283 = load i32, ptr %1282, align 4
  %1284 = getelementptr %struct.elf32_shdr, ptr %1280, i32 %1281, i32 5
  %1285 = load i32, ptr %1284, align 4
  %1286 = icmp eq i32 %1285, 0
  br i1 %1286, label %1303, label %1287

1287:                                             ; preds = %1279
  %1288 = icmp ugt i32 %1283, 4096
  br i1 %1288, label %1289, label %1292

1289:                                             ; preds = %1287
  %1290 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %1156, i32 noundef %1283, i32 noundef 4096) #34
  %1291 = load i32, ptr %1284, align 4
  br label %1292

1292:                                             ; preds = %1289, %1287
  %1293 = phi i32 [ %1291, %1289 ], [ %1285, %1287 ]
  %1294 = phi i32 [ 4096, %1289 ], [ %1283, %1287 ]
  %1295 = call noalias ptr @__alloc_reserved_percpu(i32 noundef %1293, i32 noundef %1294) #32
  %1296 = getelementptr inbounds %struct.module, ptr %1150, i32 0, i32 35
  store ptr %1295, ptr %1296, align 8
  %1297 = icmp eq ptr %1295, null
  %1298 = load i32, ptr %1284, align 4
  br i1 %1297, label %1301, label %1299

1299:                                             ; preds = %1292
  %1300 = getelementptr inbounds %struct.module, ptr %1150, i32 0, i32 36
  store i32 %1298, ptr %1300, align 4
  br label %1303

1301:                                             ; preds = %1292
  %1302 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef %1156, i32 noundef %1298) #34
  br label %1375

1303:                                             ; preds = %1299, %1279
  %1304 = getelementptr inbounds %struct.module, ptr %1150, i32 0, i32 52
  store volatile i32 1, ptr %1304, align 4
  %1305 = getelementptr inbounds %struct.module, ptr %1150, i32 0, i32 49
  store volatile ptr %1305, ptr %1305, align 4
  %1306 = getelementptr inbounds %struct.module, ptr %1150, i32 0, i32 49, i32 1
  store ptr %1305, ptr %1306, align 4
  %1307 = getelementptr inbounds %struct.module, ptr %1150, i32 0, i32 50
  store volatile ptr %1307, ptr %1307, align 4
  %1308 = getelementptr inbounds %struct.module, ptr %1150, i32 0, i32 50, i32 1
  store ptr %1307, ptr %1308, align 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %1304) #29, !srcloc !15
  %1309 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1304, ptr %1304, i32 1, ptr elementtype(i32) %1304) #29, !srcloc !42
  %1310 = getelementptr inbounds %struct.module, ptr %1150, i32 0, i32 11
  call void @__mutex_init(ptr noundef %1310, ptr noundef nonnull @.str.82, ptr noundef nonnull @init_param_lock.__key) #29
  call fastcc void @find_module_sections(ptr noundef %1150, ptr noundef %0)
  call fastcc void @check_module_license_and_versions(ptr noundef %1150)
  call fastcc void @setup_modinfo(ptr noundef %1150, ptr noundef %0)
  %1311 = call fastcc i32 @simplify_symbols(ptr noundef %1150, ptr noundef %0)
  %1312 = icmp slt i32 %1311, 0
  br i1 %1312, label %1373, label %1313

1313:                                             ; preds = %1303
  %1314 = call fastcc i32 @apply_relocations(ptr noundef %1150, ptr noundef %0)
  %1315 = icmp slt i32 %1314, 0
  br i1 %1315, label %1373, label %1316

1316:                                             ; preds = %1313
  %1317 = call fastcc i32 @post_relocation(ptr noundef %1150, ptr noundef %0)
  %1318 = icmp slt i32 %1317, 0
  br i1 %1318, label %1373, label %1319

1319:                                             ; preds = %1316
  call fastcc void @flush_module_icache(ptr noundef %1150)
  %1320 = call ptr @strndup_user(ptr noundef %1, i32 noundef 2147483647) #29
  %1321 = getelementptr inbounds %struct.module, ptr %1150, i32 0, i32 34
  store ptr %1320, ptr %1321, align 4
  %1322 = icmp ugt ptr %1320, inttoptr (i32 -4096 to ptr)
  br i1 %1322, label %1323, label %1325

1323:                                             ; preds = %1319
  %1324 = ptrtoint ptr %1320 to i32
  br label %1371

1325:                                             ; preds = %1319
  %1326 = call fastcc i32 @complete_formation(ptr noundef %1150, ptr noundef %0)
  %1327 = icmp eq i32 %1326, 0
  br i1 %1327, label %1328, label %1368

1328:                                             ; preds = %1325
  %1329 = call i32 @blocking_notifier_call_chain_robust(ptr noundef nonnull @module_notify_list, i32 noundef 1, i32 noundef 2, ptr noundef %1150) #29
  %1330 = and i32 %1329, -32769
  %1331 = icmp sgt i32 %1330, 1
  %1332 = sub i32 1, %1330
  %1333 = select i1 %1331, i32 %1332, i32 0
  %1334 = icmp eq i32 %1333, 0
  br i1 %1334, label %1335, label %1366

1335:                                             ; preds = %1328
  %1336 = load ptr, ptr %1321, align 4
  %1337 = getelementptr inbounds %struct.module, ptr %1150, i32 0, i32 12
  %1338 = load ptr, ptr %1337, align 4
  %1339 = getelementptr inbounds %struct.module, ptr %1150, i32 0, i32 13
  %1340 = load i32, ptr %1339, align 16
  %1341 = call ptr @parse_args(ptr noundef %1156, ptr noundef %1336, ptr noundef %1338, i32 noundef %1340, i16 noundef signext -32768, i16 noundef signext 32767, ptr noundef %1150, ptr noundef nonnull @unknown_module_param_cb) #29
  %1342 = icmp ugt ptr %1341, inttoptr (i32 -4096 to ptr)
  br i1 %1342, label %1343, label %1345

1343:                                             ; preds = %1335
  %1344 = ptrtoint ptr %1341 to i32
  br label %1361

1345:                                             ; preds = %1335
  %1346 = icmp eq ptr %1341, null
  br i1 %1346, label %1349, label %1347

1347:                                             ; preds = %1345
  %1348 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %1156, ptr noundef nonnull %1341) #34
  br label %1349

1349:                                             ; preds = %1347, %1345
  %1350 = load ptr, ptr %1337, align 4
  %1351 = load i32, ptr %1339, align 16
  %1352 = call fastcc i32 @mod_sysfs_setup(ptr noundef %1150, ptr noundef %0, ptr noundef %1350, i32 noundef %1351)
  %1353 = icmp slt i32 %1352, 0
  br i1 %1353, label %1361, label %1354

1354:                                             ; preds = %1349
  %1355 = and i32 %2, 4
  %1356 = icmp eq i32 %1355, 0
  br i1 %1356, label %1357, label %1359

1357:                                             ; preds = %1354
  %1358 = load ptr, ptr %11, align 4
  call void @vfree(ptr noundef %1358) #29
  br label %1359

1359:                                             ; preds = %1357, %1354
  call fastcc void @trace_module_load(ptr noundef %1150)
  %1360 = call fastcc i32 @do_init_module(ptr noundef %1150)
  br label %1395

1361:                                             ; preds = %1349, %1343
  %1362 = phi i32 [ %1344, %1343 ], [ %1352, %1349 ]
  store i32 2, ptr %1150, align 64
  %1363 = load ptr, ptr %1337, align 4
  %1364 = load i32, ptr %1339, align 16
  call void @destroy_params(ptr noundef %1363, i32 noundef %1364) #29
  %1365 = call i32 @blocking_notifier_call_chain(ptr noundef nonnull @module_notify_list, i32 noundef 2, ptr noundef %1150) #29
  br label %1366

1366:                                             ; preds = %1361, %1328
  %1367 = phi i32 [ %1333, %1328 ], [ %1362, %1361 ]
  store i32 2, ptr %1150, align 64
  call void @mutex_lock(ptr noundef nonnull @module_mutex) #29
  call void @module_bug_cleanup(ptr noundef %1150) #29
  call void @mutex_unlock(ptr noundef nonnull @module_mutex) #29
  br label %1368

1368:                                             ; preds = %1366, %1325
  %1369 = phi i32 [ %1326, %1325 ], [ %1367, %1366 ]
  call void @synchronize_rcu() #29
  %1370 = load ptr, ptr %1321, align 4
  call void @kfree(ptr noundef %1370) #29
  br label %1371

1371:                                             ; preds = %1368, %1323
  %1372 = phi i32 [ %1324, %1323 ], [ %1369, %1368 ]
  call void @module_arch_cleanup(ptr noundef %1150)
  br label %1373

1373:                                             ; preds = %1371, %1316, %1313, %1303
  %1374 = phi i32 [ %1311, %1303 ], [ %1314, %1313 ], [ %1317, %1316 ], [ %1372, %1371 ]
  call fastcc void @free_modinfo(ptr noundef %1150)
  call fastcc void @module_unload_free(ptr noundef %1150)
  br label %1375

1375:                                             ; preds = %1373, %1301
  %1376 = phi i32 [ -12, %1301 ], [ %1374, %1373 ]
  call void @mutex_lock(ptr noundef nonnull @module_mutex) #29
  %1377 = load ptr, ptr %1272, align 4
  %1378 = load ptr, ptr %1271, align 4
  %1379 = getelementptr inbounds %struct.list_head, ptr %1378, i32 0, i32 1
  store ptr %1377, ptr %1379, align 4
  store volatile ptr %1378, ptr %1377, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %1272, align 4
  call fastcc void @mod_tree_remove(ptr noundef %1150)
  call void @__wake_up(ptr noundef nonnull @module_wq, i32 noundef 3, i32 noundef 0, ptr noundef null) #29
  call void @synchronize_rcu() #29
  call void @mutex_unlock(ptr noundef nonnull @module_mutex) #29
  br label %1380

1380:                                             ; preds = %1375, %1237, %1175
  %1381 = phi i32 [ %1376, %1375 ], [ -17, %1175 ], [ %1238, %1237 ]
  %1382 = getelementptr inbounds %struct.module, ptr %1150, i32 0, i32 35
  %1383 = load ptr, ptr %1382, align 8
  call void @free_percpu(ptr noundef %1383) #29
  call void @module_arch_freeing_init(ptr noundef %1150) #29
  %1384 = getelementptr inbounds %struct.module, ptr %1150, i32 0, i32 24
  %1385 = load ptr, ptr %1384, align 16
  call void @module_memfree(ptr noundef %1385) #29
  %1386 = getelementptr inbounds %struct.module, ptr %1150, i32 0, i32 23
  %1387 = load ptr, ptr %1386, align 64
  call void @module_memfree(ptr noundef %1387) #29
  br label %1388

1388:                                             ; preds = %1380, %1152, %340, %254, %230, %140, %130, %119, %106, %88, %76, %63, %51, %37, %28, %21, %15, %8
  %1389 = phi i32 [ -1, %340 ], [ %1154, %1152 ], [ %1381, %1380 ], [ -8, %76 ], [ -8, %130 ], [ -8, %140 ], [ -8, %119 ], [ -8, %106 ], [ -8, %88 ], [ -8, %63 ], [ -8, %51 ], [ -8, %37 ], [ -8, %28 ], [ -8, %21 ], [ -8, %15 ], [ -8, %8 ], [ -8, %230 ], [ -8, %254 ]
  %1390 = and i32 %2, 4
  %1391 = icmp eq i32 %1390, 0
  br i1 %1391, label %1392, label %1395

1392:                                             ; preds = %1388
  %1393 = getelementptr inbounds %struct.load_info, ptr %0, i32 0, i32 2
  %1394 = load ptr, ptr %1393, align 4
  call void @vfree(ptr noundef %1394) #29
  br label %1395

1395:                                             ; preds = %1392, %1388, %1359
  %1396 = phi i32 [ %1360, %1359 ], [ %1389, %1388 ], [ %1389, %1392 ]
  ret i32 %1396
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__vmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @find_module_sections(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 13
  %4 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.elf32_hdr, ptr %5, i32 0, i32 12
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = icmp ugt i16 %7, 1
  %10 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  br i1 %9, label %12, label %30

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 5
  br label %14

14:                                               ; preds = %27, %12
  %15 = phi i32 [ 1, %12 ], [ %28, %27 ]
  %16 = getelementptr %struct.elf32_shdr, ptr %11, i32 %15, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %14
  %21 = getelementptr %struct.elf32_shdr, ptr %11, i32 %15
  %22 = load ptr, ptr %13, align 4
  %23 = load i32, ptr %21, align 4
  %24 = getelementptr i8, ptr %22, i32 %23
  %25 = tail call i32 @strcmp(ptr noundef %24, ptr noundef nonnull dereferenceable(8) @.str.83) #29
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %20, %14
  %28 = add nuw nsw i32 %15, 1
  %29 = icmp eq i32 %28, %8
  br i1 %29, label %30, label %14

30:                                               ; preds = %27, %20, %2
  %31 = phi i32 [ 0, %2 ], [ %15, %20 ], [ 0, %27 ]
  %32 = getelementptr %struct.elf32_shdr, ptr %11, i32 %31, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = udiv i32 %33, 20
  store i32 %34, ptr %3, align 4
  %35 = load ptr, ptr %10, align 4
  %36 = getelementptr %struct.elf32_shdr, ptr %35, i32 %31, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = inttoptr i32 %37 to ptr
  %39 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 12
  store ptr %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 10
  %41 = load ptr, ptr %4, align 4
  %42 = getelementptr inbounds %struct.elf32_hdr, ptr %41, i32 0, i32 12
  %43 = load i16, ptr %42, align 4
  %44 = zext i16 %43 to i32
  %45 = icmp ugt i16 %43, 1
  %46 = load ptr, ptr %10, align 4
  br i1 %45, label %47, label %65

47:                                               ; preds = %30
  %48 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 5
  br label %49

49:                                               ; preds = %62, %47
  %50 = phi i32 [ 1, %47 ], [ %63, %62 ]
  %51 = getelementptr %struct.elf32_shdr, ptr %46, i32 %50, i32 2
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 2
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %49
  %56 = getelementptr %struct.elf32_shdr, ptr %46, i32 %50
  %57 = load ptr, ptr %48, align 4
  %58 = load i32, ptr %56, align 4
  %59 = getelementptr i8, ptr %57, i32 %58
  %60 = tail call i32 @strcmp(ptr noundef %59, ptr noundef nonnull dereferenceable(10) @.str.84) #29
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %55, %49
  %63 = add nuw nsw i32 %50, 1
  %64 = icmp eq i32 %63, %44
  br i1 %64, label %65, label %49

65:                                               ; preds = %62, %55, %30
  %66 = phi i32 [ 0, %30 ], [ %50, %55 ], [ 0, %62 ]
  %67 = getelementptr %struct.elf32_shdr, ptr %46, i32 %66, i32 5
  %68 = load i32, ptr %67, align 4
  %69 = udiv i32 %68, 12
  store i32 %69, ptr %40, align 4
  %70 = load ptr, ptr %10, align 4
  %71 = getelementptr %struct.elf32_shdr, ptr %70, i32 %66, i32 3
  %72 = load i32, ptr %71, align 4
  %73 = inttoptr i32 %72 to ptr
  %74 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 8
  store ptr %73, ptr %74, align 4
  %75 = load ptr, ptr %10, align 4
  %76 = load ptr, ptr %4, align 4
  %77 = getelementptr inbounds %struct.elf32_hdr, ptr %76, i32 0, i32 12
  %78 = load i16, ptr %77, align 4
  %79 = zext i16 %78 to i32
  %80 = icmp ugt i16 %78, 1
  br i1 %80, label %81, label %99

81:                                               ; preds = %65
  %82 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 5
  br label %83

83:                                               ; preds = %96, %81
  %84 = phi i32 [ 1, %81 ], [ %97, %96 ]
  %85 = getelementptr %struct.elf32_shdr, ptr %75, i32 %84, i32 2
  %86 = load i32, ptr %85, align 4
  %87 = and i32 %86, 2
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %96, label %89

89:                                               ; preds = %83
  %90 = getelementptr %struct.elf32_shdr, ptr %75, i32 %84
  %91 = load ptr, ptr %82, align 4
  %92 = load i32, ptr %90, align 4
  %93 = getelementptr i8, ptr %91, i32 %92
  %94 = tail call i32 @strcmp(ptr noundef %93, ptr noundef nonnull dereferenceable(10) @.str.85) #29
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %89, %83
  %97 = add nuw nsw i32 %84, 1
  %98 = icmp eq i32 %97, %79
  br i1 %98, label %99, label %83

99:                                               ; preds = %96, %89, %65
  %100 = phi i32 [ 0, %65 ], [ %84, %89 ], [ 0, %96 ]
  %101 = getelementptr %struct.elf32_shdr, ptr %75, i32 %100, i32 3
  %102 = load i32, ptr %101, align 4
  %103 = inttoptr i32 %102 to ptr
  %104 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 9
  store ptr %103, ptr %104, align 16
  %105 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 14
  %106 = load ptr, ptr %4, align 4
  %107 = getelementptr inbounds %struct.elf32_hdr, ptr %106, i32 0, i32 12
  %108 = load i16, ptr %107, align 4
  %109 = zext i16 %108 to i32
  %110 = icmp ugt i16 %108, 1
  %111 = load ptr, ptr %10, align 4
  br i1 %110, label %112, label %130

112:                                              ; preds = %99
  %113 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 5
  br label %114

114:                                              ; preds = %127, %112
  %115 = phi i32 [ 1, %112 ], [ %128, %127 ]
  %116 = getelementptr %struct.elf32_shdr, ptr %111, i32 %115, i32 2
  %117 = load i32, ptr %116, align 4
  %118 = and i32 %117, 2
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %127, label %120

120:                                              ; preds = %114
  %121 = getelementptr %struct.elf32_shdr, ptr %111, i32 %115
  %122 = load ptr, ptr %113, align 4
  %123 = load i32, ptr %121, align 4
  %124 = getelementptr i8, ptr %122, i32 %123
  %125 = tail call i32 @strcmp(ptr noundef %124, ptr noundef nonnull dereferenceable(14) @.str.86) #29
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %120, %114
  %128 = add nuw nsw i32 %115, 1
  %129 = icmp eq i32 %128, %109
  br i1 %129, label %130, label %114

130:                                              ; preds = %127, %120, %99
  %131 = phi i32 [ 0, %99 ], [ %115, %120 ], [ 0, %127 ]
  %132 = getelementptr %struct.elf32_shdr, ptr %111, i32 %131, i32 5
  %133 = load i32, ptr %132, align 4
  %134 = udiv i32 %133, 12
  store i32 %134, ptr %105, align 4
  %135 = load ptr, ptr %10, align 4
  %136 = getelementptr %struct.elf32_shdr, ptr %135, i32 %131, i32 3
  %137 = load i32, ptr %136, align 4
  %138 = inttoptr i32 %137 to ptr
  %139 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 15
  store ptr %138, ptr %139, align 8
  %140 = load ptr, ptr %10, align 4
  %141 = load ptr, ptr %4, align 4
  %142 = getelementptr inbounds %struct.elf32_hdr, ptr %141, i32 0, i32 12
  %143 = load i16, ptr %142, align 4
  %144 = zext i16 %143 to i32
  %145 = icmp ugt i16 %143, 1
  br i1 %145, label %146, label %164

146:                                              ; preds = %130
  %147 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 5
  br label %148

148:                                              ; preds = %161, %146
  %149 = phi i32 [ 1, %146 ], [ %162, %161 ]
  %150 = getelementptr %struct.elf32_shdr, ptr %140, i32 %149, i32 2
  %151 = load i32, ptr %150, align 4
  %152 = and i32 %151, 2
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %161, label %154

154:                                              ; preds = %148
  %155 = getelementptr %struct.elf32_shdr, ptr %140, i32 %149
  %156 = load ptr, ptr %147, align 4
  %157 = load i32, ptr %155, align 4
  %158 = getelementptr i8, ptr %156, i32 %157
  %159 = tail call i32 @strcmp(ptr noundef %158, ptr noundef nonnull dereferenceable(14) @.str.87) #29
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %154, %148
  %162 = add nuw nsw i32 %149, 1
  %163 = icmp eq i32 %162, %144
  br i1 %163, label %164, label %148

164:                                              ; preds = %161, %154, %130
  %165 = phi i32 [ 0, %130 ], [ %149, %154 ], [ 0, %161 ]
  %166 = getelementptr %struct.elf32_shdr, ptr %140, i32 %165, i32 3
  %167 = load i32, ptr %166, align 4
  %168 = inttoptr i32 %167 to ptr
  %169 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 16
  store ptr %168, ptr %169, align 4
  %170 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 38
  %171 = load ptr, ptr %4, align 4
  %172 = getelementptr inbounds %struct.elf32_hdr, ptr %171, i32 0, i32 12
  %173 = load i16, ptr %172, align 4
  %174 = zext i16 %173 to i32
  %175 = icmp ugt i16 %173, 1
  %176 = load ptr, ptr %10, align 4
  br i1 %175, label %177, label %195

177:                                              ; preds = %164
  %178 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 5
  br label %179

179:                                              ; preds = %192, %177
  %180 = phi i32 [ 1, %177 ], [ %193, %192 ]
  %181 = getelementptr %struct.elf32_shdr, ptr %176, i32 %180, i32 2
  %182 = load i32, ptr %181, align 4
  %183 = and i32 %182, 2
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %192, label %185

185:                                              ; preds = %179
  %186 = getelementptr %struct.elf32_shdr, ptr %176, i32 %180
  %187 = load ptr, ptr %178, align 4
  %188 = load i32, ptr %186, align 4
  %189 = getelementptr i8, ptr %187, i32 %188
  %190 = tail call i32 @strcmp(ptr noundef %189, ptr noundef nonnull dereferenceable(14) @.str.88) #29
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %195, label %192

192:                                              ; preds = %185, %179
  %193 = add nuw nsw i32 %180, 1
  %194 = icmp eq i32 %193, %174
  br i1 %194, label %195, label %179

195:                                              ; preds = %192, %185, %164
  %196 = phi i32 [ 0, %164 ], [ %180, %185 ], [ 0, %192 ]
  %197 = getelementptr %struct.elf32_shdr, ptr %176, i32 %196, i32 5
  %198 = load i32, ptr %197, align 4
  store i32 %198, ptr %170, align 4
  %199 = load ptr, ptr %10, align 4
  %200 = getelementptr %struct.elf32_shdr, ptr %199, i32 %196, i32 3
  %201 = load i32, ptr %200, align 4
  %202 = inttoptr i32 %201 to ptr
  %203 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 37
  store ptr %202, ptr %203, align 16
  %204 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 39
  %205 = load ptr, ptr %4, align 4
  %206 = getelementptr inbounds %struct.elf32_hdr, ptr %205, i32 0, i32 12
  %207 = load i16, ptr %206, align 4
  %208 = zext i16 %207 to i32
  %209 = icmp ugt i16 %207, 1
  %210 = load ptr, ptr %10, align 4
  br i1 %209, label %211, label %229

211:                                              ; preds = %195
  %212 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 5
  br label %213

213:                                              ; preds = %226, %211
  %214 = phi i32 [ 1, %211 ], [ %227, %226 ]
  %215 = getelementptr %struct.elf32_shdr, ptr %210, i32 %214, i32 2
  %216 = load i32, ptr %215, align 4
  %217 = and i32 %216, 2
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %226, label %219

219:                                              ; preds = %213
  %220 = getelementptr %struct.elf32_shdr, ptr %210, i32 %214
  %221 = load ptr, ptr %212, align 4
  %222 = load i32, ptr %220, align 4
  %223 = getelementptr i8, ptr %221, i32 %222
  %224 = tail call i32 @strcmp(ptr noundef %223, ptr noundef nonnull dereferenceable(19) @.str.89) #29
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %229, label %226

226:                                              ; preds = %219, %213
  %227 = add nuw nsw i32 %214, 1
  %228 = icmp eq i32 %227, %208
  br i1 %228, label %229, label %213

229:                                              ; preds = %226, %219, %195
  %230 = phi i32 [ 0, %195 ], [ %214, %219 ], [ 0, %226 ]
  %231 = getelementptr %struct.elf32_shdr, ptr %210, i32 %230, i32 5
  %232 = load i32, ptr %231, align 4
  %233 = lshr i32 %232, 2
  store i32 %233, ptr %204, align 4
  %234 = load ptr, ptr %10, align 4
  %235 = getelementptr %struct.elf32_shdr, ptr %234, i32 %230, i32 3
  %236 = load i32, ptr %235, align 4
  %237 = inttoptr i32 %236 to ptr
  %238 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 40
  store ptr %237, ptr %238, align 4
  %239 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 41
  %240 = load ptr, ptr %4, align 4
  %241 = getelementptr inbounds %struct.elf32_hdr, ptr %240, i32 0, i32 12
  %242 = load i16, ptr %241, align 4
  %243 = zext i16 %242 to i32
  %244 = icmp ugt i16 %242, 1
  %245 = load ptr, ptr %10, align 4
  br i1 %244, label %246, label %264

246:                                              ; preds = %229
  %247 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 5
  br label %248

248:                                              ; preds = %261, %246
  %249 = phi i32 [ 1, %246 ], [ %262, %261 ]
  %250 = getelementptr %struct.elf32_shdr, ptr %245, i32 %249, i32 2
  %251 = load i32, ptr %250, align 4
  %252 = and i32 %251, 2
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %261, label %254

254:                                              ; preds = %248
  %255 = getelementptr %struct.elf32_shdr, ptr %245, i32 %249
  %256 = load ptr, ptr %247, align 4
  %257 = load i32, ptr %255, align 4
  %258 = getelementptr i8, ptr %256, i32 %257
  %259 = tail call i32 @strcmp(ptr noundef %258, ptr noundef nonnull dereferenceable(20) @.str.90) #29
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %264, label %261

261:                                              ; preds = %254, %248
  %262 = add nuw nsw i32 %249, 1
  %263 = icmp eq i32 %262, %243
  br i1 %263, label %264, label %248

264:                                              ; preds = %261, %254, %229
  %265 = phi i32 [ 0, %229 ], [ %249, %254 ], [ 0, %261 ]
  %266 = getelementptr %struct.elf32_shdr, ptr %245, i32 %265, i32 5
  %267 = load i32, ptr %266, align 4
  %268 = lshr i32 %267, 2
  store i32 %268, ptr %239, align 4
  %269 = load ptr, ptr %10, align 4
  %270 = getelementptr %struct.elf32_shdr, ptr %269, i32 %265, i32 3
  %271 = load i32, ptr %270, align 4
  %272 = inttoptr i32 %271 to ptr
  %273 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 42
  store ptr %272, ptr %273, align 4
  %274 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 46
  %275 = load ptr, ptr %4, align 4
  %276 = getelementptr inbounds %struct.elf32_hdr, ptr %275, i32 0, i32 12
  %277 = load i16, ptr %276, align 4
  %278 = zext i16 %277 to i32
  %279 = icmp ugt i16 %277, 1
  %280 = load ptr, ptr %10, align 4
  br i1 %279, label %281, label %299

281:                                              ; preds = %264
  %282 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 5
  br label %283

283:                                              ; preds = %296, %281
  %284 = phi i32 [ 1, %281 ], [ %297, %296 ]
  %285 = getelementptr %struct.elf32_shdr, ptr %280, i32 %284, i32 2
  %286 = load i32, ptr %285, align 4
  %287 = and i32 %286, 2
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %296, label %289

289:                                              ; preds = %283
  %290 = getelementptr %struct.elf32_shdr, ptr %280, i32 %284
  %291 = load ptr, ptr %282, align 4
  %292 = load i32, ptr %290, align 4
  %293 = getelementptr i8, ptr %291, i32 %292
  %294 = tail call i32 @strcmp(ptr noundef %293, ptr noundef nonnull dereferenceable(15) @.str.91) #29
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %299, label %296

296:                                              ; preds = %289, %283
  %297 = add nuw nsw i32 %284, 1
  %298 = icmp eq i32 %297, %278
  br i1 %298, label %299, label %283

299:                                              ; preds = %296, %289, %264
  %300 = phi i32 [ 0, %264 ], [ %284, %289 ], [ 0, %296 ]
  %301 = getelementptr %struct.elf32_shdr, ptr %280, i32 %300, i32 5
  %302 = load i32, ptr %301, align 4
  %303 = lshr i32 %302, 2
  store i32 %303, ptr %274, align 4
  %304 = load ptr, ptr %10, align 4
  %305 = getelementptr %struct.elf32_shdr, ptr %304, i32 %300, i32 3
  %306 = load i32, ptr %305, align 4
  %307 = inttoptr i32 %306 to ptr
  %308 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 45
  store ptr %307, ptr %308, align 16
  %309 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 48
  %310 = load ptr, ptr %4, align 4
  %311 = getelementptr inbounds %struct.elf32_hdr, ptr %310, i32 0, i32 12
  %312 = load i16, ptr %311, align 4
  %313 = zext i16 %312 to i32
  %314 = icmp ugt i16 %312, 1
  %315 = load ptr, ptr %10, align 4
  br i1 %314, label %316, label %334

316:                                              ; preds = %299
  %317 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 5
  br label %318

318:                                              ; preds = %331, %316
  %319 = phi i32 [ 1, %316 ], [ %332, %331 ]
  %320 = getelementptr %struct.elf32_shdr, ptr %315, i32 %319, i32 2
  %321 = load i32, ptr %320, align 4
  %322 = and i32 %321, 2
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %331, label %324

324:                                              ; preds = %318
  %325 = getelementptr %struct.elf32_shdr, ptr %315, i32 %319
  %326 = load ptr, ptr %317, align 4
  %327 = load i32, ptr %325, align 4
  %328 = getelementptr i8, ptr %326, i32 %327
  %329 = tail call i32 @strcmp(ptr noundef %328, ptr noundef nonnull dereferenceable(17) @.str.92) #29
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %334, label %331

331:                                              ; preds = %324, %318
  %332 = add nuw nsw i32 %319, 1
  %333 = icmp eq i32 %332, %313
  br i1 %333, label %334, label %318

334:                                              ; preds = %331, %324, %299
  %335 = phi i32 [ 0, %299 ], [ %319, %324 ], [ 0, %331 ]
  %336 = getelementptr %struct.elf32_shdr, ptr %315, i32 %335, i32 5
  %337 = load i32, ptr %336, align 4
  %338 = lshr i32 %337, 2
  store i32 %338, ptr %309, align 4
  %339 = load ptr, ptr %10, align 4
  %340 = getelementptr %struct.elf32_shdr, ptr %339, i32 %335, i32 3
  %341 = load i32, ptr %340, align 4
  %342 = inttoptr i32 %341 to ptr
  %343 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 47
  store ptr %342, ptr %343, align 8
  %344 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 43
  %345 = load ptr, ptr %4, align 4
  %346 = getelementptr inbounds %struct.elf32_hdr, ptr %345, i32 0, i32 12
  %347 = load i16, ptr %346, align 4
  %348 = zext i16 %347 to i32
  %349 = icmp ugt i16 %347, 1
  %350 = load ptr, ptr %10, align 4
  br i1 %349, label %351, label %369

351:                                              ; preds = %334
  %352 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 5
  br label %353

353:                                              ; preds = %366, %351
  %354 = phi i32 [ 1, %351 ], [ %367, %366 ]
  %355 = getelementptr %struct.elf32_shdr, ptr %350, i32 %354, i32 2
  %356 = load i32, ptr %355, align 4
  %357 = and i32 %356, 2
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %366, label %359

359:                                              ; preds = %353
  %360 = getelementptr %struct.elf32_shdr, ptr %350, i32 %354
  %361 = load ptr, ptr %352, align 4
  %362 = load i32, ptr %360, align 4
  %363 = getelementptr i8, ptr %361, i32 %362
  %364 = tail call i32 @strcmp(ptr noundef %363, ptr noundef nonnull dereferenceable(19) @.str.93) #29
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %369, label %366

366:                                              ; preds = %359, %353
  %367 = add nuw nsw i32 %354, 1
  %368 = icmp eq i32 %367, %348
  br i1 %368, label %369, label %353

369:                                              ; preds = %366, %359, %334
  %370 = phi i32 [ 0, %334 ], [ %354, %359 ], [ 0, %366 ]
  %371 = getelementptr %struct.elf32_shdr, ptr %350, i32 %370, i32 5
  %372 = load i32, ptr %371, align 4
  %373 = lshr i32 %372, 2
  store i32 %373, ptr %344, align 4
  %374 = load ptr, ptr %10, align 4
  %375 = getelementptr %struct.elf32_shdr, ptr %374, i32 %370, i32 3
  %376 = load i32, ptr %375, align 4
  %377 = inttoptr i32 %376 to ptr
  %378 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 44
  store ptr %377, ptr %378, align 4
  %379 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 19
  %380 = load ptr, ptr %4, align 4
  %381 = getelementptr inbounds %struct.elf32_hdr, ptr %380, i32 0, i32 12
  %382 = load i16, ptr %381, align 4
  %383 = zext i16 %382 to i32
  %384 = icmp ugt i16 %382, 1
  %385 = load ptr, ptr %10, align 4
  br i1 %384, label %386, label %404

386:                                              ; preds = %369
  %387 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 5
  br label %388

388:                                              ; preds = %401, %386
  %389 = phi i32 [ 1, %386 ], [ %402, %401 ]
  %390 = getelementptr %struct.elf32_shdr, ptr %385, i32 %389, i32 2
  %391 = load i32, ptr %390, align 4
  %392 = and i32 %391, 2
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %401, label %394

394:                                              ; preds = %388
  %395 = getelementptr %struct.elf32_shdr, ptr %385, i32 %389
  %396 = load ptr, ptr %387, align 4
  %397 = load i32, ptr %395, align 4
  %398 = getelementptr i8, ptr %396, i32 %397
  %399 = tail call i32 @strcmp(ptr noundef %398, ptr noundef nonnull dereferenceable(11) @.str.94) #29
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %404, label %401

401:                                              ; preds = %394, %388
  %402 = add nuw nsw i32 %389, 1
  %403 = icmp eq i32 %402, %383
  br i1 %403, label %404, label %388

404:                                              ; preds = %401, %394, %369
  %405 = phi i32 [ 0, %369 ], [ %389, %394 ], [ 0, %401 ]
  %406 = getelementptr %struct.elf32_shdr, ptr %385, i32 %405, i32 5
  %407 = load i32, ptr %406, align 4
  %408 = lshr i32 %407, 3
  store i32 %408, ptr %379, align 4
  %409 = load ptr, ptr %10, align 4
  %410 = getelementptr %struct.elf32_shdr, ptr %409, i32 %405, i32 3
  %411 = load i32, ptr %410, align 4
  %412 = inttoptr i32 %411 to ptr
  %413 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 20
  store ptr %412, ptr %413, align 8
  %414 = load ptr, ptr %10, align 4
  %415 = load ptr, ptr %4, align 4
  %416 = getelementptr inbounds %struct.elf32_hdr, ptr %415, i32 0, i32 12
  %417 = load i16, ptr %416, align 4
  %418 = zext i16 %417 to i32
  %419 = icmp ugt i16 %417, 1
  br i1 %419, label %420, label %438

420:                                              ; preds = %404
  %421 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 5
  br label %422

422:                                              ; preds = %435, %420
  %423 = phi i32 [ 1, %420 ], [ %436, %435 ]
  %424 = getelementptr %struct.elf32_shdr, ptr %414, i32 %423, i32 2
  %425 = load i32, ptr %424, align 4
  %426 = and i32 %425, 2
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %435, label %428

428:                                              ; preds = %422
  %429 = getelementptr %struct.elf32_shdr, ptr %414, i32 %423
  %430 = load ptr, ptr %421, align 4
  %431 = load i32, ptr %429, align 4
  %432 = getelementptr i8, ptr %430, i32 %431
  %433 = tail call i32 @strcmp(ptr noundef %432, ptr noundef nonnull dereferenceable(10) @.str.95) #29
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %438, label %435

435:                                              ; preds = %428, %422
  %436 = add nuw nsw i32 %423, 1
  %437 = icmp eq i32 %436, %418
  br i1 %437, label %438, label %422

438:                                              ; preds = %435, %428, %404
  %439 = phi i32 [ 0, %404 ], [ %423, %428 ], [ 0, %435 ]
  %440 = getelementptr %struct.elf32_shdr, ptr %414, i32 %439, i32 3
  %441 = load i32, ptr %440, align 4
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %451, label %443

443:                                              ; preds = %438
  %444 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 2
  %445 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %444) #34
  %446 = load ptr, ptr %4, align 4
  %447 = getelementptr inbounds %struct.elf32_hdr, ptr %446, i32 0, i32 12
  %448 = load i16, ptr %447, align 4
  %449 = load ptr, ptr %10, align 4
  %450 = zext i16 %448 to i32
  br label %451

451:                                              ; preds = %443, %438
  %452 = phi i32 [ %450, %443 ], [ %418, %438 ]
  %453 = phi ptr [ %449, %443 ], [ %414, %438 ]
  %454 = phi i16 [ %448, %443 ], [ %417, %438 ]
  %455 = icmp ugt i16 %454, 1
  br i1 %455, label %456, label %474

456:                                              ; preds = %451
  %457 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 5
  br label %458

458:                                              ; preds = %471, %456
  %459 = phi i32 [ 1, %456 ], [ %472, %471 ]
  %460 = getelementptr %struct.elf32_shdr, ptr %453, i32 %459, i32 2
  %461 = load i32, ptr %460, align 4
  %462 = and i32 %461, 2
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %471, label %464

464:                                              ; preds = %458
  %465 = getelementptr %struct.elf32_shdr, ptr %453, i32 %459
  %466 = load ptr, ptr %457, align 4
  %467 = load i32, ptr %465, align 4
  %468 = getelementptr i8, ptr %466, i32 %467
  %469 = tail call i32 @strcmp(ptr noundef %468, ptr noundef nonnull dereferenceable(9) @.str.97) #29
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %474, label %471

471:                                              ; preds = %464, %458
  %472 = add nuw nsw i32 %459, 1
  %473 = icmp eq i32 %472, %452
  br i1 %473, label %474, label %458

474:                                              ; preds = %471, %464, %451
  %475 = phi i32 [ 0, %451 ], [ %459, %464 ], [ 0, %471 ]
  %476 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 12
  %477 = getelementptr %struct.elf32_shdr, ptr %453, i32 %475, i32 5
  %478 = load i32, ptr %477, align 4
  %479 = udiv i32 %478, 24
  store i32 %479, ptr %476, align 4
  %480 = getelementptr %struct.elf32_shdr, ptr %453, i32 %475, i32 3
  %481 = load i32, ptr %480, align 4
  %482 = inttoptr i32 %481 to ptr
  %483 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 11
  store ptr %482, ptr %483, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @check_module_license_and_versions(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i32 @test_taint(i32 noundef 0) #29
  %3 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 2
  %4 = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(12) @.str.98)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @add_taint(i32 noundef 0, i32 noundef 1) #29
  br label %7

7:                                                ; preds = %6, %1
  %8 = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(13) @.str.99)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  tail call void @add_taint(i32 noundef 0, i32 noundef 1) #29
  %11 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 26
  tail call void @_set_bit(i32 noundef 0, ptr noundef %11) #29
  br label %12

12:                                               ; preds = %10, %7
  %13 = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(4) @.str.100)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  tail call void @add_taint(i32 noundef 0, i32 noundef 1) #29
  %16 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 26
  tail call void @_set_bit(i32 noundef 0, ptr noundef %16) #29
  br label %17

17:                                               ; preds = %15, %12
  %18 = icmp eq i32 %2, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %17
  %20 = tail call i32 @test_taint(i32 noundef 0) #29
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef %3) #34
  br label %24

24:                                               ; preds = %22, %19, %17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @setup_modinfo(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 4
  %4 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 15, i32 4
  %5 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 2
  br label %6

6:                                                ; preds = %60, %2
  %7 = phi ptr [ @module_uevent, %2 ], [ %63, %60 ]
  %8 = phi i32 [ 0, %2 ], [ %61, %60 ]
  %9 = getelementptr inbounds %struct.module_attribute, ptr %7, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %60, label %12

12:                                               ; preds = %6
  %13 = load ptr, ptr %7, align 4
  %14 = tail call i32 @strlen(ptr noundef %13) #29
  %15 = load ptr, ptr %3, align 4
  %16 = load i32, ptr %4, align 4
  %17 = load ptr, ptr %5, align 4
  %18 = getelementptr %struct.elf32_shdr, ptr %15, i32 %16, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr i8, ptr %17, i32 %19
  %21 = icmp eq ptr %20, null
  br i1 %21, label %58, label %22

22:                                               ; preds = %12
  %23 = getelementptr %struct.elf32_shdr, ptr %15, i32 %16, i32 5
  %24 = load i32, ptr %23, align 4
  br label %25

25:                                               ; preds = %56, %22
  %26 = phi ptr [ %49, %56 ], [ %20, %22 ]
  %27 = phi i32 [ %48, %56 ], [ %24, %22 ]
  %28 = tail call i32 @strncmp(ptr noundef nonnull %26, ptr noundef %13, i32 noundef %14) #29
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %31, %25
  br label %38

31:                                               ; preds = %25
  %32 = getelementptr i8, ptr %26, i32 %14
  %33 = load i8, ptr %32, align 1
  %34 = icmp eq i8 %33, 61
  br i1 %34, label %35, label %30

35:                                               ; preds = %31
  %36 = getelementptr i8, ptr %26, i32 1
  %37 = getelementptr i8, ptr %36, i32 %14
  br label %58

38:                                               ; preds = %43, %30
  %39 = phi i32 [ %45, %43 ], [ %27, %30 ]
  %40 = phi ptr [ %44, %43 ], [ %26, %30 ]
  %41 = load i8, ptr %40, align 1
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %38
  %44 = getelementptr i8, ptr %40, i32 1
  %45 = add i32 %39, -1
  %46 = icmp ult i32 %39, 2
  br i1 %46, label %58, label %38

47:                                               ; preds = %52
  %48 = add i32 %53, -1
  %49 = getelementptr i8, ptr %54, i32 1
  %50 = load i8, ptr %49, align 1
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47, %38
  %53 = phi i32 [ %48, %47 ], [ %39, %38 ]
  %54 = phi ptr [ %49, %47 ], [ %40, %38 ]
  %55 = icmp ult i32 %53, 2
  br i1 %55, label %58, label %47

56:                                               ; preds = %47
  %57 = icmp eq ptr %49, null
  br i1 %57, label %58, label %25

58:                                               ; preds = %56, %52, %43, %35, %12
  %59 = phi ptr [ %37, %35 ], [ null, %12 ], [ null, %52 ], [ null, %43 ], [ null, %56 ]
  tail call void %10(ptr noundef %0, ptr noundef %59) #29
  br label %60

60:                                               ; preds = %58, %6
  %61 = add nuw nsw i32 %8, 1
  %62 = getelementptr [9 x ptr], ptr @modinfo_attrs, i32 0, i32 %61
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq i32 %61, 8
  br i1 %64, label %65, label %6

65:                                               ; preds = %60
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @simplify_symbols(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [60 x i8], align 1
  %4 = alloca %struct.wait_queue_entry, align 4
  %5 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 15
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr %struct.elf32_shdr, ptr %6, i32 %8, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = inttoptr i32 %10 to ptr
  %12 = getelementptr %struct.elf32_shdr, ptr %6, i32 %8, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %13, 31
  br i1 %14, label %15, label %118

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 6
  %17 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 2
  %18 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 2
  %19 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 15, i32 5
  %20 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 35
  br label %21

21:                                               ; preds = %112, %15
  %22 = phi i32 [ 1, %15 ], [ %114, %112 ]
  %23 = phi i32 [ 0, %15 ], [ %113, %112 ]
  %24 = load ptr, ptr %16, align 4
  %25 = getelementptr %struct.elf32_sym, ptr %11, i32 %22
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr i8, ptr %24, i32 %26
  %28 = getelementptr %struct.elf32_sym, ptr %11, i32 %22, i32 5
  %29 = load i16, ptr %28, align 2
  %30 = zext i16 %29 to i32
  switch i16 %29, label %97 [
    i16 -14, label %31
    i16 -15, label %112
    i16 -224, label %112
    i16 0, label %36
  ]

31:                                               ; preds = %21
  %32 = call i32 @strncmp(ptr noundef %27, ptr noundef nonnull dereferenceable(10) @.str.114, i32 noundef 9)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %112, label %34

34:                                               ; preds = %31
  %35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef %17) #34
  br label %112

36:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %3) #29
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(60) %3, i8 0, i32 60, i1 false) #29, !annotation !9
  %37 = call fastcc ptr @resolve_symbol(ptr noundef %0, ptr noundef %1, ptr noundef %27, ptr noundef nonnull %3) #29
  %38 = icmp eq ptr %37, inttoptr (i32 -16 to ptr)
  br i1 %38, label %39, label %73

39:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #29
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false) #29, !annotation !9
  call void @init_wait_entry(ptr noundef nonnull %4, i32 noundef 0) #29
  %40 = call i32 @prepare_to_wait_event(ptr noundef nonnull @module_wq, ptr noundef nonnull %4, i32 noundef 1) #29
  %41 = call fastcc ptr @resolve_symbol(ptr noundef %0, ptr noundef %1, ptr noundef %27, ptr noundef nonnull %3) #29
  %42 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %46, label %64

43:                                               ; preds = %59
  %44 = icmp eq i32 %60, 0
  %45 = select i1 %44, i32 1, i32 %60
  br label %64

46:                                               ; preds = %59, %39
  %47 = phi ptr [ %62, %59 ], [ %41, %39 ]
  %48 = phi i32 [ %61, %59 ], [ %40, %39 ]
  %49 = phi i32 [ %60, %59 ], [ 3000, %39 ]
  %50 = icmp ne ptr %47, inttoptr (i32 -16 to ptr)
  %51 = xor i1 %50, true
  %52 = icmp ne i32 %49, 0
  %53 = select i1 %51, i1 true, i1 %52
  %54 = select i1 %53, i32 %49, i32 1
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %50, i1 true, i1 %55
  br i1 %56, label %64, label %57

57:                                               ; preds = %46
  %58 = icmp eq i32 %48, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %57
  %60 = call i32 @schedule_timeout(i32 noundef %54) #29
  %61 = call i32 @prepare_to_wait_event(ptr noundef nonnull @module_wq, ptr noundef nonnull %4, i32 noundef 1) #29
  %62 = call fastcc ptr @resolve_symbol(ptr noundef %0, ptr noundef %1, ptr noundef %27, ptr noundef nonnull %3) #29
  %63 = icmp ugt ptr %62, inttoptr (i32 -4096 to ptr)
  br i1 %63, label %46, label %43

64:                                               ; preds = %46, %43, %39
  %65 = phi ptr [ %41, %39 ], [ %62, %43 ], [ %47, %46 ]
  %66 = phi i32 [ 3000, %39 ], [ %45, %43 ], [ %54, %46 ]
  call void @finish_wait(ptr noundef nonnull @module_wq, ptr noundef nonnull %4) #29
  br label %67

67:                                               ; preds = %64, %57
  %68 = phi ptr [ %65, %64 ], [ inttoptr (i32 -16 to ptr), %57 ]
  %69 = phi i32 [ %66, %64 ], [ %48, %57 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #29
  %70 = icmp slt i32 %69, 1
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef %17, ptr noundef nonnull %3) #34
  br label %73

73:                                               ; preds = %71, %67, %36
  %74 = phi ptr [ %68, %71 ], [ %68, %67 ], [ %37, %36 ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %3) #29
  %75 = icmp eq ptr %74, null
  br i1 %75, label %81, label %76

76:                                               ; preds = %73
  %77 = icmp ugt ptr %74, inttoptr (i32 -4096 to ptr)
  br i1 %77, label %93, label %78

78:                                               ; preds = %76
  %79 = load i32, ptr %74, align 4
  %80 = getelementptr %struct.elf32_sym, ptr %11, i32 %22, i32 1
  store i32 %79, ptr %80, align 4
  br label %112

81:                                               ; preds = %73
  %82 = getelementptr %struct.elf32_sym, ptr %11, i32 %22, i32 3
  %83 = load i8, ptr %82, align 4
  %84 = and i8 %83, -16
  %85 = icmp eq i8 %84, 32
  br i1 %85, label %112, label %86

86:                                               ; preds = %81
  %87 = load ptr, ptr %18, align 4
  %88 = getelementptr inbounds %struct.elf32_hdr, ptr %87, i32 0, i32 2
  %89 = load i16, ptr %88, align 2
  switch i16 %89, label %93 [
    i16 62, label %90
    i16 3, label %90
  ]

90:                                               ; preds = %86, %86
  %91 = call i32 @strcmp(ptr noundef %27, ptr noundef nonnull dereferenceable(22) @.str.123) #29
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %112, label %93

93:                                               ; preds = %90, %86, %76
  %94 = ptrtoint ptr %74 to i32
  %95 = select i1 %75, i32 -2, i32 %94
  %96 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef %17, ptr noundef %27, i32 noundef %95) #34
  br label %112

97:                                               ; preds = %21
  %98 = load i32, ptr %19, align 4
  %99 = icmp eq i32 %98, %30
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load ptr, ptr %20, align 8
  %102 = ptrtoint ptr %101 to i32
  br label %107

103:                                              ; preds = %97
  %104 = load ptr, ptr %5, align 4
  %105 = getelementptr %struct.elf32_shdr, ptr %104, i32 %30, i32 3
  %106 = load i32, ptr %105, align 4
  br label %107

107:                                              ; preds = %103, %100
  %108 = phi i32 [ %102, %100 ], [ %106, %103 ]
  %109 = getelementptr %struct.elf32_sym, ptr %11, i32 %22, i32 1
  %110 = load i32, ptr %109, align 4
  %111 = add i32 %110, %108
  store i32 %111, ptr %109, align 4
  br label %112

112:                                              ; preds = %107, %93, %90, %81, %78, %34, %31, %21, %21
  %113 = phi i32 [ %23, %107 ], [ %95, %93 ], [ %23, %81 ], [ %23, %90 ], [ %23, %78 ], [ %23, %21 ], [ -8, %34 ], [ %23, %31 ], [ %23, %21 ]
  %114 = add nuw nsw i32 %22, 1
  %115 = load i32, ptr %12, align 4
  %116 = lshr i32 %115, 4
  %117 = icmp ult i32 %114, %116
  br i1 %117, label %21, label %118

118:                                              ; preds = %112, %2
  %119 = phi i32 [ 0, %2 ], [ %113, %112 ]
  ret i32 %119
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @apply_relocations(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.elf32_hdr, ptr %4, i32 0, i32 12
  %6 = load i16, ptr %5, align 4
  %7 = icmp ugt i16 %6, 1
  br i1 %7, label %8, label %57

8:                                                ; preds = %2
  %9 = zext i16 %6 to i32
  %10 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 4
  %11 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 6
  %12 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 15
  br label %13

13:                                               ; preds = %49, %8
  %14 = phi ptr [ %4, %8 ], [ %50, %49 ]
  %15 = phi i32 [ %9, %8 ], [ %55, %49 ]
  %16 = phi i32 [ 0, %8 ], [ %51, %49 ]
  %17 = phi i32 [ 1, %8 ], [ %52, %49 ]
  %18 = load ptr, ptr %10, align 4
  %19 = getelementptr %struct.elf32_shdr, ptr %18, i32 %17, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = icmp ult i32 %20, %15
  br i1 %21, label %22, label %49

22:                                               ; preds = %13
  %23 = getelementptr %struct.elf32_shdr, ptr %18, i32 %20, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %49, label %27

27:                                               ; preds = %22
  %28 = getelementptr %struct.elf32_shdr, ptr %18, i32 %17, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 1048576
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %27
  %33 = getelementptr %struct.elf32_shdr, ptr %18, i32 %17, i32 1
  %34 = load i32, ptr %33, align 4
  switch i32 %34, label %44 [
    i32 9, label %35
    i32 4, label %39
  ]

35:                                               ; preds = %32
  %36 = load ptr, ptr %11, align 4
  %37 = load i32, ptr %12, align 4
  %38 = tail call i32 @apply_relocate(ptr noundef %18, ptr noundef %36, i32 noundef %37, i32 noundef %17, ptr noundef %0) #29
  br label %44

39:                                               ; preds = %32
  %40 = icmp eq ptr %0, null
  %41 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 2
  %42 = select i1 %40, ptr @.str.118, ptr %41
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef %42) #34
  br label %57

44:                                               ; preds = %35, %32
  %45 = phi i32 [ %38, %35 ], [ %16, %32 ]
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr %3, align 4
  br label %49

49:                                               ; preds = %47, %27, %22, %13
  %50 = phi ptr [ %48, %47 ], [ %14, %22 ], [ %14, %13 ], [ %14, %27 ]
  %51 = phi i32 [ %45, %47 ], [ %16, %22 ], [ %16, %13 ], [ 0, %27 ]
  %52 = add nuw nsw i32 %17, 1
  %53 = getelementptr inbounds %struct.elf32_hdr, ptr %50, i32 0, i32 12
  %54 = load i16, ptr %53, align 4
  %55 = zext i16 %54 to i32
  %56 = icmp ult i32 %52, %55
  br i1 %56, label %13, label %57

57:                                               ; preds = %49, %44, %39, %2
  %58 = phi i32 [ -8, %39 ], [ 0, %2 ], [ %51, %49 ], [ %45, %44 ]
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @post_relocation(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 20
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 19
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.exception_table_entry, ptr %4, i32 %6
  tail call void @sort_extable(ptr noundef %4, ptr noundef %7) #29
  %8 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 15, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr %struct.elf32_shdr, ptr %9, i32 %11, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr %struct.elf32_shdr, ptr %9, i32 %11, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #31
  %18 = load i32, ptr @nr_cpu_ids, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 35
  br label %22

22:                                               ; preds = %22, %20
  %23 = phi i32 [ %17, %20 ], [ %30, %22 ]
  %24 = load ptr, ptr %21, align 8
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, %25
  %29 = inttoptr i32 %28 to ptr
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %29, ptr align 1 %14, i32 %16, i1 false) #29
  %30 = tail call i32 @cpumask_next(i32 noundef %23, ptr noundef nonnull @__cpu_possible_mask) #31
  %31 = load i32, ptr @nr_cpu_ids, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %22, label %33

33:                                               ; preds = %22
  %34 = load ptr, ptr %8, align 4
  br label %35

35:                                               ; preds = %33, %2
  %36 = phi ptr [ %34, %33 ], [ %9, %2 ]
  %37 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 15
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 24
  %40 = load ptr, ptr %39, align 16
  %41 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 14
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr i8, ptr %40, i32 %42
  %44 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 30
  store ptr %43, ptr %44, align 8
  %45 = getelementptr %struct.elf32_shdr, ptr %36, i32 %38, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = inttoptr i32 %46 to ptr
  store ptr %47, ptr %43, align 4
  %48 = getelementptr %struct.elf32_shdr, ptr %36, i32 %38, i32 5
  %49 = load i32, ptr %48, align 4
  %50 = lshr i32 %49, 4
  %51 = load ptr, ptr %44, align 8
  %52 = getelementptr inbounds %struct.mod_kallsyms, ptr %51, i32 0, i32 1
  store i32 %50, ptr %52, align 4
  %53 = load ptr, ptr %8, align 4
  %54 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 15, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr %struct.elf32_shdr, ptr %53, i32 %55, i32 3
  %57 = load i32, ptr %56, align 4
  %58 = inttoptr i32 %57 to ptr
  %59 = load ptr, ptr %44, align 8
  %60 = getelementptr inbounds %struct.mod_kallsyms, ptr %59, i32 0, i32 2
  store ptr %58, ptr %60, align 4
  %61 = load ptr, ptr %39, align 16
  %62 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 9
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr i8, ptr %61, i32 %63
  %65 = load ptr, ptr %44, align 8
  %66 = getelementptr inbounds %struct.mod_kallsyms, ptr %65, i32 0, i32 3
  store ptr %64, ptr %66, align 4
  %67 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 23
  %68 = load ptr, ptr %67, align 64
  %69 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 7
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr i8, ptr %68, i32 %70
  %72 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 31
  store ptr %71, ptr %72, align 4
  %73 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 8
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr i8, ptr %68, i32 %74
  %76 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 31, i32 2
  store ptr %75, ptr %76, align 4
  %77 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 10
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr i8, ptr %68, i32 %78
  %80 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 31, i32 3
  store ptr %79, ptr %80, align 4
  %81 = load ptr, ptr %44, align 8
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.mod_kallsyms, ptr %81, i32 0, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %199, label %86

86:                                               ; preds = %35
  %87 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 5
  %88 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 2
  br label %89

89:                                               ; preds = %191, %86
  %90 = phi ptr [ %81, %86 ], [ %195, %191 ]
  %91 = phi i32 [ 0, %86 ], [ %194, %191 ]
  %92 = phi ptr [ %75, %86 ], [ %193, %191 ]
  %93 = phi i32 [ 0, %86 ], [ %192, %191 ]
  %94 = getelementptr %struct.elf32_sym, ptr %82, i32 %91
  %95 = load ptr, ptr %8, align 4
  %96 = getelementptr %struct.elf32_sym, ptr %82, i32 %91, i32 3
  %97 = load i8, ptr %96, align 4
  %98 = zext i8 %97 to i32
  %99 = and i32 %98, 240
  %100 = icmp eq i32 %99, 32
  br i1 %100, label %101, label %105

101:                                              ; preds = %89
  %102 = and i32 %98, 15
  %103 = icmp eq i32 %102, 1
  %104 = select i1 %103, i8 118, i8 119
  br label %140

105:                                              ; preds = %89
  %106 = getelementptr %struct.elf32_sym, ptr %82, i32 %91, i32 5
  %107 = load i16, ptr %106, align 2
  %108 = zext i16 %107 to i32
  switch i16 %107, label %109 [
    i16 0, label %140
    i16 -15, label %112
  ]

109:                                              ; preds = %105
  %110 = load i32, ptr %10, align 4
  %111 = icmp eq i32 %110, %108
  br i1 %111, label %112, label %113

112:                                              ; preds = %109, %105
  br label %140

113:                                              ; preds = %109
  %114 = icmp ugt i16 %107, -257
  br i1 %114, label %140, label %115

115:                                              ; preds = %113
  %116 = getelementptr %struct.elf32_shdr, ptr %95, i32 %108, i32 2
  %117 = load i32, ptr %116, align 4
  %118 = and i32 %117, 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %140

120:                                              ; preds = %115
  %121 = and i32 %117, 2
  %122 = icmp eq i32 %121, 0
  %123 = getelementptr %struct.elf32_shdr, ptr %95, i32 %108, i32 1
  %124 = load i32, ptr %123, align 4
  %125 = icmp eq i32 %124, 8
  br i1 %122, label %131, label %126

126:                                              ; preds = %120
  br i1 %125, label %140, label %127

127:                                              ; preds = %126
  %128 = and i32 %117, 1
  %129 = icmp eq i32 %128, 0
  %130 = select i1 %129, i8 114, i8 100
  br label %140

131:                                              ; preds = %120
  br i1 %125, label %140, label %132

132:                                              ; preds = %131
  %133 = getelementptr %struct.elf32_shdr, ptr %95, i32 %108
  %134 = load ptr, ptr %87, align 4
  %135 = load i32, ptr %133, align 4
  %136 = getelementptr i8, ptr %134, i32 %135
  %137 = tail call i32 @strncmp(ptr noundef %136, ptr noundef nonnull dereferenceable(7) @.str.125, i32 noundef 6) #29
  %138 = icmp eq i32 %137, 0
  %139 = select i1 %138, i8 110, i8 63
  br label %140

140:                                              ; preds = %132, %131, %127, %126, %115, %113, %112, %105, %101
  %141 = phi i8 [ 97, %112 ], [ %104, %101 ], [ 85, %105 ], [ 63, %113 ], [ 116, %115 ], [ 98, %131 ], [ %139, %132 ], [ %130, %127 ], [ 98, %126 ]
  %142 = getelementptr inbounds %struct.mod_kallsyms, ptr %90, i32 0, i32 3
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr i8, ptr %143, i32 %91
  store i8 %141, ptr %144, align 1
  %145 = icmp eq i32 %91, 0
  br i1 %145, label %169, label %146

146:                                              ; preds = %140
  %147 = load ptr, ptr %8, align 4
  %148 = load ptr, ptr %88, align 4
  %149 = getelementptr inbounds %struct.elf32_hdr, ptr %148, i32 0, i32 12
  %150 = load i16, ptr %149, align 4
  %151 = getelementptr %struct.elf32_sym, ptr %82, i32 %91, i32 5
  %152 = load i16, ptr %151, align 2
  %153 = zext i16 %152 to i32
  %154 = icmp ne i16 %152, 0
  %155 = icmp ult i16 %152, %150
  %156 = and i1 %154, %155
  br i1 %156, label %157, label %191

157:                                              ; preds = %146
  %158 = load i32, ptr %94, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %191, label %160

160:                                              ; preds = %157
  %161 = getelementptr %struct.elf32_shdr, ptr %147, i32 %153, i32 2
  %162 = load i32, ptr %161, align 4
  %163 = and i32 %162, 6
  %164 = icmp eq i32 %163, 6
  br i1 %164, label %165, label %191

165:                                              ; preds = %160
  %166 = getelementptr %struct.elf32_shdr, ptr %147, i32 %153, i32 9
  %167 = load i32, ptr %166, align 4
  %168 = icmp sgt i32 %167, -1
  br i1 %168, label %169, label %191

169:                                              ; preds = %165, %140
  %170 = load ptr, ptr %44, align 8
  %171 = getelementptr inbounds %struct.mod_kallsyms, ptr %170, i32 0, i32 3
  %172 = load ptr, ptr %171, align 4
  %173 = getelementptr i8, ptr %172, i32 %91
  %174 = load i8, ptr %173, align 1
  %175 = load ptr, ptr %80, align 4
  %176 = getelementptr i8, ptr %175, i32 %93
  store i8 %174, ptr %176, align 1
  %177 = getelementptr %struct.elf32_sym, ptr %71, i32 %93
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %177, ptr noundef align 4 dereferenceable(16) %94, i32 16, i1 false) #29
  %178 = load ptr, ptr %76, align 4
  %179 = ptrtoint ptr %92 to i32
  %180 = ptrtoint ptr %178 to i32
  %181 = sub i32 %179, %180
  %182 = add i32 %93, 1
  store i32 %181, ptr %177, align 4
  %183 = load ptr, ptr %44, align 8
  %184 = getelementptr inbounds %struct.mod_kallsyms, ptr %183, i32 0, i32 2
  %185 = load ptr, ptr %184, align 4
  %186 = load i32, ptr %94, align 4
  %187 = getelementptr i8, ptr %185, i32 %186
  %188 = tail call i32 @strlcpy(ptr noundef %92, ptr noundef %187, i32 noundef 128) #29
  %189 = add i32 %188, 1
  %190 = getelementptr i8, ptr %92, i32 %189
  br label %191

191:                                              ; preds = %169, %165, %160, %157, %146
  %192 = phi i32 [ %182, %169 ], [ %93, %165 ], [ %93, %157 ], [ %93, %146 ], [ %93, %160 ]
  %193 = phi ptr [ %190, %169 ], [ %92, %165 ], [ %92, %157 ], [ %92, %146 ], [ %92, %160 ]
  %194 = add nuw i32 %91, 1
  %195 = load ptr, ptr %44, align 8
  %196 = getelementptr inbounds %struct.mod_kallsyms, ptr %195, i32 0, i32 1
  %197 = load i32, ptr %196, align 4
  %198 = icmp ult i32 %194, %197
  br i1 %198, label %89, label %199

199:                                              ; preds = %191, %35
  %200 = phi i32 [ 0, %35 ], [ %192, %191 ]
  %201 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 31, i32 1
  store i32 %200, ptr %201, align 4
  %202 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 2
  %203 = load ptr, ptr %202, align 4
  %204 = load ptr, ptr %8, align 4
  %205 = tail call i32 @module_finalize(ptr noundef %203, ptr noundef %204, ptr noundef %0)
  ret i32 %205
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @flush_module_icache(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 24
  %3 = load ptr, ptr %2, align 16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5), align 4
  %7 = ptrtoint ptr %3 to i32
  %8 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 24, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, %7
  tail call void %6(i32 noundef %7, i32 noundef %10) #29
  br label %11

11:                                               ; preds = %5, %1
  %12 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5), align 4
  %13 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 23
  %14 = load ptr, ptr %13, align 64
  %15 = ptrtoint ptr %14 to i32
  %16 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 23, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, %15
  tail call void %12(i32 noundef %15, i32 noundef %18) #29
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strndup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @complete_formation(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.find_symbol_arg, align 4
  tail call void @mutex_lock(ptr noundef nonnull @module_mutex) #29
  %4 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 15
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 14
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.find_symbol_arg, ptr %3, i32 0, i32 1
  %13 = getelementptr %struct.kernel_symbol, ptr %5, i32 %7
  %14 = icmp ult ptr %5, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %20, %2
  %16 = phi ptr [ %21, %20 ], [ %5, %2 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #29
  %17 = getelementptr inbounds %struct.kernel_symbol, ptr %16, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %12, i8 0, i64 20, i1 false) #29
  %18 = load ptr, ptr %17, align 4
  store ptr %18, ptr %3, align 4
  store i8 1, ptr %12, align 4
  %19 = call fastcc zeroext i1 @find_symbol(ptr noundef nonnull %3) #29
  br i1 %19, label %175, label %20

20:                                               ; preds = %15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #29
  %21 = getelementptr %struct.kernel_symbol, ptr %16, i32 1
  %22 = icmp ult ptr %21, %13
  br i1 %22, label %15, label %23

23:                                               ; preds = %20, %2
  %24 = getelementptr %struct.kernel_symbol, ptr %9, i32 %11
  %25 = icmp ult ptr %9, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %31, %23
  %27 = phi ptr [ %32, %31 ], [ %9, %23 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #29
  %28 = getelementptr inbounds %struct.kernel_symbol, ptr %27, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %12, i8 0, i64 20, i1 false) #29
  %29 = load ptr, ptr %28, align 4
  store ptr %29, ptr %3, align 4
  store i8 1, ptr %12, align 4
  %30 = call fastcc zeroext i1 @find_symbol(ptr noundef nonnull %3) #29
  br i1 %30, label %175, label %31

31:                                               ; preds = %26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #29
  %32 = getelementptr %struct.kernel_symbol, ptr %27, i32 1
  %33 = icmp ult ptr %32, %24
  br i1 %33, label %26, label %34

34:                                               ; preds = %31, %23
  %35 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  tail call void @module_bug_finalize(ptr noundef %36, ptr noundef %38, ptr noundef %0) #29
  tail call fastcc void @module_enable_ro(ptr noundef %0, i1 noundef zeroext false)
  %39 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 23
  %40 = load ptr, ptr %39, align 4
  %41 = ptrtoint ptr %40 to i32
  %42 = and i32 %41, 4095
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44, !prof !10

44:                                               ; preds = %34
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/module.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1981, 0\0A.popsection", ""() #29, !srcloc !85
  unreachable

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 23, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, 4095
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50, !prof !10

50:                                               ; preds = %45
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/module.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1982, 0\0A.popsection", ""() #29, !srcloc !86
  unreachable

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 23, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, 4095
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56, !prof !10

56:                                               ; preds = %51
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/module.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1983, 0\0A.popsection", ""() #29, !srcloc !87
  unreachable

57:                                               ; preds = %51
  %58 = add i32 %47, %41
  %59 = sub i32 %53, %47
  %60 = lshr i32 %59, 12
  %61 = tail call i32 @set_memory_nx(i32 noundef %58, i32 noundef %60) #29, !callees !88
  %62 = load ptr, ptr %39, align 4
  %63 = ptrtoint ptr %62 to i32
  %64 = and i32 %63, 4095
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %67, label %66, !prof !10

66:                                               ; preds = %57
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/module.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1991, 0\0A.popsection", ""() #29, !srcloc !89
  unreachable

67:                                               ; preds = %57
  %68 = load i32, ptr %52, align 4
  %69 = and i32 %68, 4095
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %72, label %71, !prof !10

71:                                               ; preds = %67
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/module.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1992, 0\0A.popsection", ""() #29, !srcloc !90
  unreachable

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 23, i32 4
  %74 = load i32, ptr %73, align 4
  %75 = and i32 %74, 4095
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %78, label %77, !prof !10

77:                                               ; preds = %72
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/module.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1993, 0\0A.popsection", ""() #29, !srcloc !91
  unreachable

78:                                               ; preds = %72
  %79 = add i32 %68, %63
  %80 = sub i32 %74, %68
  %81 = lshr i32 %80, 12
  %82 = tail call i32 @set_memory_nx(i32 noundef %79, i32 noundef %81) #29, !callees !88
  %83 = load ptr, ptr %39, align 4
  %84 = ptrtoint ptr %83 to i32
  %85 = and i32 %84, 4095
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %88, label %87, !prof !10

87:                                               ; preds = %78
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/module.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2001, 0\0A.popsection", ""() #29, !srcloc !92
  unreachable

88:                                               ; preds = %78
  %89 = load i32, ptr %73, align 4
  %90 = and i32 %89, 4095
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %93, label %92, !prof !10

92:                                               ; preds = %88
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/module.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2002, 0\0A.popsection", ""() #29, !srcloc !93
  unreachable

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 23, i32 1
  %95 = load i32, ptr %94, align 4
  %96 = and i32 %95, 4095
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %99, label %98, !prof !10

98:                                               ; preds = %93
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/module.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2003, 0\0A.popsection", ""() #29, !srcloc !94
  unreachable

99:                                               ; preds = %93
  %100 = add i32 %89, %84
  %101 = sub i32 %95, %89
  %102 = lshr i32 %101, 12
  %103 = tail call i32 @set_memory_nx(i32 noundef %100, i32 noundef %102) #29
  %104 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 24
  %105 = load ptr, ptr %104, align 4
  %106 = ptrtoint ptr %105 to i32
  %107 = and i32 %106, 4095
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %110, label %109, !prof !10

109:                                              ; preds = %99
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/module.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1981, 0\0A.popsection", ""() #29, !srcloc !85
  unreachable

110:                                              ; preds = %99
  %111 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 24, i32 2
  %112 = load i32, ptr %111, align 4
  %113 = and i32 %112, 4095
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %116, label %115, !prof !10

115:                                              ; preds = %110
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/module.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1982, 0\0A.popsection", ""() #29, !srcloc !86
  unreachable

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 24, i32 3
  %118 = load i32, ptr %117, align 4
  %119 = and i32 %118, 4095
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %122, label %121, !prof !10

121:                                              ; preds = %116
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/module.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1983, 0\0A.popsection", ""() #29, !srcloc !87
  unreachable

122:                                              ; preds = %116
  %123 = add i32 %112, %106
  %124 = sub i32 %118, %112
  %125 = lshr i32 %124, 12
  %126 = tail call i32 @set_memory_nx(i32 noundef %123, i32 noundef %125) #29, !callees !88
  %127 = load ptr, ptr %104, align 4
  %128 = ptrtoint ptr %127 to i32
  %129 = and i32 %128, 4095
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %132, label %131, !prof !10

131:                                              ; preds = %122
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/module.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2001, 0\0A.popsection", ""() #29, !srcloc !92
  unreachable

132:                                              ; preds = %122
  %133 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 24, i32 4
  %134 = load i32, ptr %133, align 4
  %135 = and i32 %134, 4095
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %138, label %137, !prof !10

137:                                              ; preds = %132
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/module.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2002, 0\0A.popsection", ""() #29, !srcloc !93
  unreachable

138:                                              ; preds = %132
  %139 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 24, i32 1
  %140 = load i32, ptr %139, align 4
  %141 = and i32 %140, 4095
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %144, label %143, !prof !10

143:                                              ; preds = %138
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/module.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2003, 0\0A.popsection", ""() #29, !srcloc !94
  unreachable

144:                                              ; preds = %138
  %145 = add i32 %134, %128
  %146 = sub i32 %140, %134
  %147 = lshr i32 %146, 12
  %148 = tail call i32 @set_memory_nx(i32 noundef %145, i32 noundef %147) #29
  %149 = load ptr, ptr %39, align 4
  %150 = ptrtoint ptr %149 to i32
  %151 = and i32 %150, 4095
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %154, label %153, !prof !10

153:                                              ; preds = %144
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/module.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1962, 0\0A.popsection", ""() #29, !srcloc !95
  unreachable

154:                                              ; preds = %144
  %155 = load i32, ptr %46, align 4
  %156 = and i32 %155, 4095
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %159, label %158, !prof !10

158:                                              ; preds = %154
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/module.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1963, 0\0A.popsection", ""() #29, !srcloc !96
  unreachable

159:                                              ; preds = %154
  %160 = lshr i32 %155, 12
  %161 = tail call i32 @set_memory_x(i32 noundef %150, i32 noundef %160) #29, !callees !97
  %162 = load ptr, ptr %104, align 4
  %163 = ptrtoint ptr %162 to i32
  %164 = and i32 %163, 4095
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %167, label %166, !prof !10

166:                                              ; preds = %159
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/module.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1962, 0\0A.popsection", ""() #29, !srcloc !95
  unreachable

167:                                              ; preds = %159
  %168 = load i32, ptr %111, align 4
  %169 = and i32 %168, 4095
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %172, label %171, !prof !10

171:                                              ; preds = %167
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/module.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1963, 0\0A.popsection", ""() #29, !srcloc !96
  unreachable

172:                                              ; preds = %167
  %173 = lshr i32 %168, 12
  %174 = tail call i32 @set_memory_x(i32 noundef %163, i32 noundef %173) #29, !callees !97
  store i32 1, ptr %0, align 64
  br label %186

175:                                              ; preds = %26, %15
  %176 = phi ptr [ %27, %26 ], [ %16, %15 ]
  %177 = getelementptr inbounds %struct.kernel_symbol, ptr %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 2
  %179 = load ptr, ptr %177, align 4
  %180 = getelementptr inbounds %struct.find_symbol_arg, ptr %3, i32 0, i32 3
  %181 = load ptr, ptr %180, align 4
  %182 = icmp eq ptr %181, null
  %183 = getelementptr inbounds %struct.module, ptr %181, i32 0, i32 2
  %184 = select i1 %182, ptr @.str.118, ptr %183
  %185 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef %178, ptr noundef %179, ptr noundef %184) #34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #29
  br label %186

186:                                              ; preds = %175, %172
  %187 = phi i32 [ -8, %175 ], [ 0, %172 ]
  tail call void @mutex_unlock(ptr noundef nonnull @module_mutex) #29
  ret i32 %187
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @parse_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @unknown_module_param_cb(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = tail call i32 @strcmp(ptr noundef %0, ptr noundef nonnull dereferenceable(12) @.str.127)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.module, ptr %3, i32 0, i32 18
  store i8 1, ptr %8, align 1
  br label %16

9:                                                ; preds = %4
  %10 = tail call ptr @strstr(ptr noundef %0, ptr noundef nonnull @.str.129) #29
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130) #34
  br label %16

14:                                               ; preds = %9
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef %2, ptr noundef %0) #34
  br label %16

16:                                               ; preds = %14, %12, %7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mod_sysfs_setup(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.completion, align 8
  %6 = alloca %struct.completion, align 8
  %7 = load i32, ptr @module_sysfs_initialized, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 2
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef %10) #34
  br label %143

12:                                               ; preds = %4
  %13 = load ptr, ptr @module_kset, align 4
  %14 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 2
  %15 = tail call ptr @kset_find_obj(ptr noundef %13, ptr noundef %14) #29
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef %14) #34
  tail call void @kobject_put(ptr noundef nonnull %15) #29
  br label %143

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 3
  %21 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 3, i32 1
  store ptr %0, ptr %21, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(36) %20, i8 0, i32 36, i1 false) #29
  %22 = load ptr, ptr @module_kset, align 4
  %23 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 3, i32 0, i32 3
  store ptr %22, ptr %23, align 8
  %24 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %20, ptr noundef nonnull @module_ktype, ptr noundef null, ptr noundef nonnull @.str.134, ptr noundef %14) #29
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #29
  %27 = getelementptr inbounds %struct.completion, ptr %6, i32 0, i32 1, i32 1
  store i64 0, ptr %6, align 8
  store ptr %27, ptr %27, align 8
  %28 = getelementptr inbounds %struct.completion, ptr %6, i32 0, i32 1, i32 1, i32 1
  store ptr %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 3, i32 4
  store ptr %6, ptr %29, align 8
  call void @kobject_put(ptr noundef %20) #29
  call void @wait_for_completion(ptr noundef nonnull %6) #29
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #29
  br label %143

30:                                               ; preds = %19
  %31 = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.131, ptr noundef %20) #29
  %32 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 7
  store ptr %31, ptr %32, align 8
  %33 = icmp eq ptr %31, null
  br i1 %33, label %138, label %34

34:                                               ; preds = %30
  %35 = tail call i32 @module_param_sysfs_setup(ptr noundef %0, ptr noundef %2, i32 noundef %3) #29
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %135

37:                                               ; preds = %34
  %38 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %39 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 3520, i32 noundef 280) #35
  %40 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 4
  store ptr %39, ptr %40, align 4
  %41 = icmp eq ptr %39, null
  br i1 %41, label %133, label %42

42:                                               ; preds = %57, %37
  %43 = phi ptr [ %61, %57 ], [ @module_uevent, %37 ]
  %44 = phi i32 [ %59, %57 ], [ 0, %37 ]
  %45 = phi ptr [ %58, %57 ], [ %39, %37 ]
  %46 = getelementptr inbounds %struct.module_attribute, ptr %43, i32 0, i32 4
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %42
  %50 = tail call i32 %47(ptr noundef %0) #29
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %49, %42
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %45, ptr noundef align 4 dereferenceable(28) %43, i32 28, i1 false) #29
  %53 = tail call i32 @sysfs_create_file_ns(ptr noundef %20, ptr noundef %45, ptr noundef null) #29
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %52
  %56 = getelementptr %struct.module_attribute, ptr %45, i32 1
  br label %57

57:                                               ; preds = %55, %49
  %58 = phi ptr [ %56, %55 ], [ %45, %49 ]
  %59 = add nuw nsw i32 %44, 1
  %60 = getelementptr [9 x ptr], ptr @modinfo_attrs, i32 0, i32 %59
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq i32 %59, 8
  br i1 %62, label %86, label %42

63:                                               ; preds = %52
  %64 = icmp eq i32 %44, 0
  %65 = load ptr, ptr %40, align 4
  br i1 %64, label %130, label %66

66:                                               ; preds = %63
  %67 = icmp eq ptr %65, null
  br i1 %67, label %130, label %68

68:                                               ; preds = %81, %66
  %69 = phi ptr [ %84, %81 ], [ %65, %66 ]
  %70 = phi ptr [ %83, %81 ], [ %65, %66 ]
  %71 = phi i32 [ %82, %81 ], [ 0, %66 ]
  %72 = icmp eq i32 %71, %44
  br i1 %72, label %130, label %73

73:                                               ; preds = %68
  %74 = load ptr, ptr %69, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %130, label %76

76:                                               ; preds = %73
  tail call void @sysfs_remove_file_ns(ptr noundef %20, ptr noundef nonnull %69, ptr noundef null) #29
  %77 = getelementptr %struct.module_attribute, ptr %70, i32 %71, i32 5
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  tail call void %78(ptr noundef %0) #29
  br label %81

81:                                               ; preds = %80, %76
  %82 = add nuw nsw i32 %71, 1
  %83 = load ptr, ptr %40, align 4
  %84 = getelementptr %struct.module_attribute, ptr %83, i32 %82
  %85 = icmp eq ptr %84, null
  br i1 %85, label %130, label %68

86:                                               ; preds = %57
  tail call void @mutex_lock(ptr noundef nonnull @module_mutex) #29
  %87 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 50
  br label %88

88:                                               ; preds = %93, %86
  %89 = phi ptr [ %87, %86 ], [ %90, %93 ]
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, %87
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  tail call void @mutex_unlock(ptr noundef nonnull @module_mutex) #29
  tail call fastcc void @add_sect_attrs(ptr noundef %0, ptr noundef %1)
  tail call fastcc void @add_notes_attrs(ptr noundef %0, ptr noundef %1)
  br label %143

93:                                               ; preds = %88
  %94 = getelementptr i8, ptr %90, i32 12
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.module, ptr %95, i32 0, i32 7
  %97 = load ptr, ptr %96, align 8
  %98 = tail call i32 @sysfs_create_link(ptr noundef %97, ptr noundef %20, ptr noundef %14) #29
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %88, label %100

100:                                              ; preds = %93
  tail call void @mutex_unlock(ptr noundef nonnull @module_mutex) #29
  tail call void @mutex_lock(ptr noundef nonnull @module_mutex) #29
  %101 = load ptr, ptr %87, align 4
  %102 = icmp eq ptr %101, %87
  br i1 %102, label %111, label %103

103:                                              ; preds = %103, %100
  %104 = phi ptr [ %109, %103 ], [ %101, %100 ]
  %105 = getelementptr i8, ptr %104, i32 12
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.module, ptr %106, i32 0, i32 7
  %108 = load ptr, ptr %107, align 8
  tail call void @sysfs_remove_link(ptr noundef %108, ptr noundef %14) #29
  %109 = load ptr, ptr %104, align 4
  %110 = icmp eq ptr %109, %87
  br i1 %110, label %111, label %103

111:                                              ; preds = %103, %100
  tail call void @mutex_unlock(ptr noundef nonnull @module_mutex) #29
  %112 = load ptr, ptr %40, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %130, label %114

114:                                              ; preds = %125, %111
  %115 = phi ptr [ %128, %125 ], [ %112, %111 ]
  %116 = phi ptr [ %127, %125 ], [ %112, %111 ]
  %117 = phi i32 [ %126, %125 ], [ 0, %111 ]
  %118 = load ptr, ptr %115, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %130, label %120

120:                                              ; preds = %114
  tail call void @sysfs_remove_file_ns(ptr noundef %20, ptr noundef nonnull %115, ptr noundef null) #29
  %121 = getelementptr %struct.module_attribute, ptr %116, i32 %117, i32 5
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %120
  tail call void %122(ptr noundef %0) #29
  br label %125

125:                                              ; preds = %124, %120
  %126 = add i32 %117, 1
  %127 = load ptr, ptr %40, align 4
  %128 = getelementptr %struct.module_attribute, ptr %127, i32 %126
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %114

130:                                              ; preds = %125, %114, %111, %81, %73, %68, %66, %63
  %131 = phi ptr [ %65, %63 ], [ null, %66 ], [ null, %111 ], [ %127, %125 ], [ %116, %114 ], [ %83, %81 ], [ %70, %73 ], [ %70, %68 ]
  %132 = phi i32 [ %53, %63 ], [ %53, %66 ], [ %98, %111 ], [ %98, %114 ], [ %98, %125 ], [ %53, %68 ], [ %53, %73 ], [ %53, %81 ]
  tail call void @kfree(ptr noundef %131) #29
  br label %133

133:                                              ; preds = %130, %37
  %134 = phi i32 [ -12, %37 ], [ %132, %130 ]
  tail call void @module_param_sysfs_remove(ptr noundef %0) #29
  br label %135

135:                                              ; preds = %133, %34
  %136 = phi i32 [ %35, %34 ], [ %134, %133 ]
  %137 = load ptr, ptr %32, align 8
  tail call void @kobject_put(ptr noundef %137) #29
  br label %138

138:                                              ; preds = %135, %30
  %139 = phi i32 [ %136, %135 ], [ -12, %30 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #29
  %140 = getelementptr inbounds %struct.completion, ptr %5, i32 0, i32 1, i32 1
  store i64 0, ptr %5, align 8
  store ptr %140, ptr %140, align 8
  %141 = getelementptr inbounds %struct.completion, ptr %5, i32 0, i32 1, i32 1, i32 1
  store ptr %140, ptr %141, align 4
  %142 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 3, i32 4
  store ptr %5, ptr %142, align 8
  call void @kobject_put(ptr noundef %20) #29
  call void @wait_for_completion(ptr noundef nonnull %5) #29
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #29
  br label %143

143:                                              ; preds = %138, %92, %26, %17, %9
  %144 = phi i32 [ 0, %92 ], [ %139, %138 ], [ -22, %9 ], [ %24, %26 ], [ -22, %17 ]
  ret i32 %144
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_module_load(ptr noundef %0) unnamed_addr #19 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_module_load, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %27

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #29
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 5
  %9 = getelementptr i32, ptr @__cpu_online_mask, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %7, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %12, %10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !98
  %16 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_module_load, i32 0, i32 7), align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %18, %15
  %19 = phi ptr [ %23, %18 ], [ %16, %15 ]
  %20 = load volatile ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.tracepoint_func, ptr %19, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  tail call void %20(ptr noundef %22, ptr noundef %0) #29
  %23 = getelementptr %struct.tracepoint_func, ptr %19, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %18

26:                                               ; preds = %18, %15
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !99
  br label %27

27:                                               ; preds = %26, %4, %1
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_init_module(ptr noundef %0) unnamed_addr #20 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 8) #35
  %4 = icmp eq ptr %3, null
  br i1 %4, label %48, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 24
  %7 = load ptr, ptr %6, align 16
  %8 = getelementptr inbounds %struct.mod_initfree, ptr %3, i32 0, i32 1
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 21
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %5
  %13 = tail call i32 @do_one_initcall(ptr noundef nonnull %10) #29
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %47, label %15

15:                                               ; preds = %12
  %16 = icmp eq i32 %13, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 2
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, ptr noundef nonnull @__func__.do_init_module, ptr noundef %18, i32 noundef %13, ptr noundef nonnull @__func__.do_init_module) #34
  tail call void @dump_stack() #34
  br label %20

20:                                               ; preds = %17, %15, %5
  store i32 0, ptr %0, align 64
  %21 = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @module_notify_list, i32 noundef 0, ptr noundef %0) #29
  %22 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 3
  %23 = tail call i32 @kobject_uevent(ptr noundef %22, i32 noundef 0) #29
  %24 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 18
  %25 = load i8, ptr %24, align 1, !range !34
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  tail call void @async_synchronize_full() #29
  br label %28

28:                                               ; preds = %27, %20
  %29 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 24, i32 1
  tail call void @mutex_lock(ptr noundef nonnull @module_mutex) #29
  tail call void @module_put(ptr noundef %0)
  tail call void @trim_init_extable(ptr noundef %0) #29
  %30 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #29, !srcloc !100
  %31 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 30
  store volatile ptr %30, ptr %31, align 8
  tail call fastcc void @module_enable_ro(ptr noundef %0, i1 noundef zeroext true)
  %32 = load i32, ptr %29, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 24, i32 5, i32 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #29, !srcloc !80
  %36 = load i32, ptr @mod_tree, align 64
  %37 = add i32 %36, 1
  store i32 %37, ptr @mod_tree, align 64
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #29, !srcloc !81
  tail call void @rb_erase(ptr noundef %35, ptr noundef getelementptr inbounds (%struct.mod_tree_root, ptr @mod_tree, i32 0, i32 0, i32 1, i32 0)) #29
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #29, !srcloc !80
  %38 = load i32, ptr @mod_tree, align 64
  %39 = add i32 %38, 1
  store i32 %39, ptr @mod_tree, align 64
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #29, !srcloc !81
  %40 = getelementptr %struct.module, ptr %0, i32 0, i32 24, i32 5, i32 1, i32 0, i32 1
  tail call void @rb_erase(ptr noundef %40, ptr noundef getelementptr inbounds (%struct.mod_tree_root, ptr @mod_tree, i32 0, i32 0, i32 1, i32 1)) #29
  br label %41

41:                                               ; preds = %34, %28
  tail call void @module_arch_freeing_init(ptr noundef %0)
  call void @llvm.memset.p0.i64(ptr noundef align 16 dereferenceable(20) %6, i8 0, i64 20, i1 false)
  %42 = tail call zeroext i1 @llist_add_batch(ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef nonnull @init_free_list) #29
  br i1 %42, label %43, label %46

43:                                               ; preds = %41
  %44 = load ptr, ptr @system_wq, align 4
  %45 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %44, ptr noundef nonnull @init_free_wq) #29
  br label %46

46:                                               ; preds = %43, %41
  tail call void @mutex_unlock(ptr noundef nonnull @module_mutex) #29
  br label %51

47:                                               ; preds = %12
  tail call void @kfree(ptr noundef nonnull %3) #29
  br label %48

48:                                               ; preds = %47, %1
  %49 = phi i32 [ %13, %47 ], [ -12, %1 ]
  store i32 2, ptr %0, align 64
  tail call void @synchronize_rcu() #29
  tail call void @module_put(ptr noundef %0)
  %50 = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @module_notify_list, i32 noundef 2, ptr noundef %0) #29
  tail call fastcc void @free_module(ptr noundef %0)
  br label %51

51:                                               ; preds = %48, %46
  %52 = phi i32 [ %49, %48 ], [ 0, %46 ]
  tail call void @__wake_up(ptr noundef nonnull @module_wq, i32 noundef 3, i32 noundef 0, ptr noundef null) #29
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @free_modinfo(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.module_attribute, ptr @module_uevent, i32 0, i32 5), align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void %2(ptr noundef %0) #29
  br label %5

5:                                                ; preds = %4, %1
  %6 = load ptr, ptr getelementptr inbounds (%struct.module_attribute, ptr @modinfo_version, i32 0, i32 5), align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call void %6(ptr noundef %0) #29
  br label %9

9:                                                ; preds = %8, %5
  %10 = load ptr, ptr getelementptr inbounds (%struct.module_attribute, ptr @modinfo_srcversion, i32 0, i32 5), align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void %10(ptr noundef %0) #29
  br label %13

13:                                               ; preds = %12, %9
  %14 = load ptr, ptr getelementptr inbounds (%struct.module_attribute, ptr @modinfo_initstate, i32 0, i32 5), align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call void %14(ptr noundef %0) #29
  br label %17

17:                                               ; preds = %16, %13
  %18 = load ptr, ptr getelementptr inbounds (%struct.module_attribute, ptr @modinfo_coresize, i32 0, i32 5), align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call void %18(ptr noundef %0) #29
  br label %21

21:                                               ; preds = %20, %17
  %22 = load ptr, ptr getelementptr inbounds (%struct.module_attribute, ptr @modinfo_initsize, i32 0, i32 5), align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void %22(ptr noundef %0) #29
  br label %25

25:                                               ; preds = %24, %21
  %26 = load ptr, ptr getelementptr inbounds (%struct.module_attribute, ptr @modinfo_taint, i32 0, i32 5), align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void %26(ptr noundef %0) #29
  br label %29

29:                                               ; preds = %28, %25
  %30 = load ptr, ptr getelementptr inbounds (%struct.module_attribute, ptr @modinfo_refcnt, i32 0, i32 5), align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  tail call void %30(ptr noundef %0) #29
  br label %33

33:                                               ; preds = %32, %29
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @elf_check_arch(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @test_taint(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_taint(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #21

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__mod_tree_insert(ptr noundef %0) unnamed_addr #20 {
  %2 = getelementptr inbounds %struct.mod_tree_node, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #29, !srcloc !80
  %3 = load i32, ptr @mod_tree, align 64
  %4 = add i32 %3, 1
  store i32 %4, ptr @mod_tree, align 64
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #29, !srcloc !81
  %5 = load ptr, ptr getelementptr inbounds (%struct.mod_tree_root, ptr @mod_tree, i32 0, i32 0, i32 1, i32 0), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %1
  %8 = getelementptr %struct.mod_tree_node, ptr %0, i32 -1, i32 1, i32 0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %10, %7
  %11 = phi ptr [ %5, %7 ], [ %18, %10 ]
  %12 = getelementptr i8, ptr %11, i32 -24
  %13 = load ptr, ptr %12, align 4
  %14 = icmp ult ptr %9, %13
  %15 = getelementptr inbounds %struct.rb_node, ptr %11, i32 0, i32 2
  %16 = getelementptr inbounds %struct.rb_node, ptr %11, i32 0, i32 1
  %17 = select i1 %14, ptr %15, ptr %16
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %10

20:                                               ; preds = %10
  %21 = ptrtoint ptr %11 to i32
  br label %22

22:                                               ; preds = %20, %1
  %23 = phi ptr [ %17, %20 ], [ getelementptr inbounds (%struct.mod_tree_root, ptr @mod_tree, i32 0, i32 0, i32 1, i32 0), %1 ]
  %24 = phi i32 [ %21, %20 ], [ 0, %1 ]
  store i32 %24, ptr %2, align 4
  %25 = getelementptr %struct.mod_tree_node, ptr %0, i32 0, i32 1, i32 0, i32 0, i32 1
  store ptr null, ptr %25, align 4
  %26 = getelementptr %struct.mod_tree_node, ptr %0, i32 0, i32 1, i32 0, i32 0, i32 2
  store ptr null, ptr %26, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #29, !srcloc !101
  store volatile ptr %2, ptr %23, align 4
  tail call void @rb_insert_color(ptr noundef %2, ptr noundef getelementptr inbounds (%struct.mod_tree_root, ptr @mod_tree, i32 0, i32 0, i32 1, i32 0)) #29
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #29, !srcloc !80
  %27 = load i32, ptr @mod_tree, align 64
  %28 = add i32 %27, 1
  store i32 %28, ptr @mod_tree, align 64
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #29, !srcloc !81
  %29 = load ptr, ptr getelementptr inbounds (%struct.mod_tree_root, ptr @mod_tree, i32 0, i32 0, i32 1, i32 1), align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %46, label %31

31:                                               ; preds = %22
  %32 = getelementptr %struct.mod_tree_node, ptr %0, i32 -1, i32 1, i32 0, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  br label %34

34:                                               ; preds = %34, %31
  %35 = phi ptr [ %29, %31 ], [ %42, %34 ]
  %36 = getelementptr i8, ptr %35, i32 -36
  %37 = load ptr, ptr %36, align 4
  %38 = icmp ult ptr %33, %37
  %39 = getelementptr inbounds %struct.rb_node, ptr %35, i32 0, i32 2
  %40 = getelementptr inbounds %struct.rb_node, ptr %35, i32 0, i32 1
  %41 = select i1 %38, ptr %39, ptr %40
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %34

44:                                               ; preds = %34
  %45 = ptrtoint ptr %35 to i32
  br label %46

46:                                               ; preds = %44, %22
  %47 = phi ptr [ %41, %44 ], [ getelementptr inbounds (%struct.mod_tree_root, ptr @mod_tree, i32 0, i32 0, i32 1, i32 1), %22 ]
  %48 = phi i32 [ %45, %44 ], [ 0, %22 ]
  %49 = getelementptr %struct.mod_tree_node, ptr %0, i32 0, i32 1, i32 0, i32 1
  store i32 %48, ptr %49, align 4
  %50 = getelementptr %struct.mod_tree_node, ptr %0, i32 0, i32 1, i32 0, i32 1, i32 1
  store ptr null, ptr %50, align 4
  %51 = getelementptr %struct.mod_tree_node, ptr %0, i32 0, i32 1, i32 0, i32 1, i32 2
  store ptr null, ptr %51, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #29, !srcloc !101
  store volatile ptr %49, ptr %47, align 4
  tail call void @rb_insert_color(ptr noundef %49, ptr noundef getelementptr inbounds (%struct.mod_tree_root, ptr @mod_tree, i32 0, i32 0, i32 1, i32 1)) #29
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_reserved_percpu(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_modinfo_version(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.module_kobject, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.module, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 64
  %8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.20, ptr noundef %7) #29
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @setup_modinfo_version(ptr nocapture noundef writeonly %0, ptr noundef %1) #0 {
  %3 = tail call noalias ptr @kstrdup(ptr noundef %1, i32 noundef 3264) #29
  %4 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 5
  store ptr %3, ptr %4, align 64
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @modinfo_version_exists(ptr nocapture noundef readonly %0) #22 {
  %2 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 64
  %4 = icmp ne ptr %3, null
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @free_modinfo_version(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 64
  tail call void @kfree(ptr noundef %3) #29
  store ptr null, ptr %2, align 64
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_modinfo_srcversion(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.module_kobject, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.module, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.20, ptr noundef %7) #29
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @setup_modinfo_srcversion(ptr nocapture noundef writeonly %0, ptr noundef %1) #0 {
  %3 = tail call noalias ptr @kstrdup(ptr noundef %1, i32 noundef 3264) #29
  %4 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 6
  store ptr %3, ptr %4, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @modinfo_srcversion_exists(ptr nocapture noundef readonly %0) #22 {
  %2 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = icmp ne ptr %3, null
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @free_modinfo_srcversion(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #29
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_initstate(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.module_kobject, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 64
  %7 = icmp ult i32 %6, 3
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/module.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1152, 0\0A.popsection", ""() #29, !srcloc !102
  unreachable

9:                                                ; preds = %3
  %10 = getelementptr inbounds [3 x ptr], ptr @switch.table.show_initstate, i32 0, i32 %6
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.20, ptr noundef nonnull %11)
  ret i32 %12
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #23

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_coresize(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = getelementptr inbounds %struct.module_kobject, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.module, ptr %5, i32 0, i32 23, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.110, i32 noundef %7)
  ret i32 %8
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_initsize(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = getelementptr inbounds %struct.module_kobject, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.module, ptr %5, i32 0, i32 24, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.110, i32 noundef %7)
  ret i32 %8
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_taint(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #24 {
  %4 = getelementptr inbounds %struct.module_kobject, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.module, ptr %5, i32 0, i32 26
  br label %7

7:                                                ; preds = %25, %3
  %8 = phi i32 [ 0, %3 ], [ %27, %25 ]
  %9 = phi i32 [ 0, %3 ], [ %26, %25 ]
  %10 = getelementptr [18 x %struct.taint_flag], ptr @taint_flags, i32 0, i32 %8
  %11 = getelementptr [18 x %struct.taint_flag], ptr @taint_flags, i32 0, i32 %8, i32 2
  %12 = load i8, ptr %11, align 1, !range !34
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %7
  %15 = lshr i32 %8, 5
  %16 = getelementptr i32, ptr %6, i32 %15
  %17 = load volatile i32, ptr %16, align 4
  %18 = shl nuw i32 1, %8
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %14
  %22 = load i8, ptr %10, align 1
  %23 = add i32 %9, 1
  %24 = getelementptr i8, ptr %2, i32 %9
  store i8 %22, ptr %24, align 1
  br label %25

25:                                               ; preds = %21, %14, %7
  %26 = phi i32 [ %23, %21 ], [ %9, %14 ], [ %9, %7 ]
  %27 = add nuw nsw i32 %8, 1
  %28 = icmp eq i32 %27, 18
  br i1 %28, label %29, label %7

29:                                               ; preds = %25
  %30 = add i32 %26, 1
  %31 = getelementptr i8, ptr %2, i32 %26
  store i8 10, ptr %31, align 1
  ret i32 %30
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_refcnt(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = getelementptr inbounds %struct.module_kobject, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.module, ptr %5, i32 0, i32 52
  %7 = load volatile i32, ptr %6, align 4
  %8 = add i32 %7, -1
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.113, i32 noundef %8)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @resolve_symbol(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.find_symbol_arg, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #29
  %6 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %6, i8 0, i64 20, i1 false)
  store ptr %2, ptr %5, align 4
  %7 = getelementptr inbounds %struct.find_symbol_arg, ptr %5, i32 0, i32 1
  %8 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 26
  %9 = load i32, ptr %8, align 4
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  store i8 %12, ptr %7, align 4
  %13 = getelementptr inbounds %struct.find_symbol_arg, ptr %5, i32 0, i32 2
  store i8 1, ptr %13, align 1
  tail call void @mutex_lock(ptr noundef nonnull @module_mutex) #29
  %14 = call fastcc zeroext i1 @find_symbol(ptr noundef nonnull %5)
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.find_symbol_arg, ptr %5, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  br label %248

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.find_symbol_arg, ptr %5, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 17
  store i8 1, ptr %23, align 64
  br label %24

24:                                               ; preds = %22, %18
  %25 = getelementptr inbounds %struct.find_symbol_arg, ptr %5, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %50, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.module, ptr %26, i32 0, i32 26
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %50, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 17
  %35 = load i8, ptr %34, align 64, !range !34
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load volatile i32, ptr %8, align 4
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 2
  %43 = getelementptr inbounds %struct.module, ptr %26, i32 0, i32 2
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef %42, ptr noundef %43) #34
  tail call void @_set_bit(i32 noundef 0, ptr noundef %8) #29
  br label %50

45:                                               ; preds = %33
  %46 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 2
  %47 = getelementptr inbounds %struct.module, ptr %26, i32 0, i32 2
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef %46, ptr noundef %47) #34
  %49 = getelementptr inbounds %struct.find_symbol_arg, ptr %5, i32 0, i32 5
  store ptr null, ptr %49, align 4
  br label %243

50:                                               ; preds = %41, %37, %28, %24
  %51 = getelementptr inbounds %struct.find_symbol_arg, ptr %5, i32 0, i32 5
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.kernel_symbol, ptr %52, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %174, label %56

56:                                               ; preds = %50
  %57 = load i8, ptr %54, align 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %174, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 4
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 15, i32 4
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 2
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr %struct.elf32_shdr, ptr %61, i32 %63, i32 4
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr i8, ptr %65, i32 %67
  %69 = icmp eq ptr %68, null
  br i1 %69, label %169, label %70

70:                                               ; preds = %59
  %71 = getelementptr %struct.elf32_shdr, ptr %61, i32 %63, i32 5
  %72 = load i32, ptr %71, align 4
  br label %73

73:                                               ; preds = %101, %70
  %74 = phi ptr [ %94, %101 ], [ %68, %70 ]
  %75 = phi i32 [ %93, %101 ], [ %72, %70 ]
  %76 = tail call i32 @strncmp(ptr noundef nonnull %74, ptr noundef nonnull dereferenceable(10) @.str.121, i32 noundef 9) #29
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = getelementptr i8, ptr %74, i32 9
  %80 = load i8, ptr %79, align 1
  %81 = icmp eq i8 %80, 61
  br i1 %81, label %103, label %82

82:                                               ; preds = %78, %73
  br label %83

83:                                               ; preds = %88, %82
  %84 = phi i32 [ %90, %88 ], [ %75, %82 ]
  %85 = phi ptr [ %89, %88 ], [ %74, %82 ]
  %86 = load i8, ptr %85, align 1
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %83
  %89 = getelementptr i8, ptr %85, i32 1
  %90 = add i32 %84, -1
  %91 = icmp ult i32 %84, 2
  br i1 %91, label %169, label %83

92:                                               ; preds = %97
  %93 = add i32 %98, -1
  %94 = getelementptr i8, ptr %99, i32 1
  %95 = load i8, ptr %94, align 1
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92, %83
  %98 = phi i32 [ %93, %92 ], [ %84, %83 ]
  %99 = phi ptr [ %94, %92 ], [ %85, %83 ]
  %100 = icmp ult i32 %98, 2
  br i1 %100, label %169, label %92

101:                                              ; preds = %92
  %102 = icmp eq ptr %94, null
  br i1 %102, label %169, label %73

103:                                              ; preds = %78
  %104 = getelementptr i8, ptr %74, i32 10
  %105 = icmp eq ptr %104, null
  br i1 %105, label %169, label %106

106:                                              ; preds = %103
  %107 = ptrtoint ptr %68 to i32
  %108 = add i32 %72, %107
  br label %109

109:                                              ; preds = %166, %106
  %110 = phi ptr [ %104, %106 ], [ %167, %166 ]
  %111 = tail call i32 @strcmp(ptr noundef nonnull %54, ptr noundef nonnull %110) #29
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %174, label %113

113:                                              ; preds = %109
  %114 = ptrtoint ptr %110 to i32
  %115 = sub i32 %108, %114
  br label %116

116:                                              ; preds = %121, %113
  %117 = phi i32 [ %115, %113 ], [ %123, %121 ]
  %118 = phi ptr [ %110, %113 ], [ %122, %121 ]
  %119 = load i8, ptr %118, align 1
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %130, label %121

121:                                              ; preds = %116
  %122 = getelementptr i8, ptr %118, i32 1
  %123 = add i32 %117, -1
  %124 = icmp ult i32 %117, 2
  br i1 %124, label %169, label %116

125:                                              ; preds = %130
  %126 = add i32 %131, -1
  %127 = getelementptr i8, ptr %132, i32 1
  %128 = load i8, ptr %127, align 1
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %125, %116
  %131 = phi i32 [ %126, %125 ], [ %117, %116 ]
  %132 = phi ptr [ %127, %125 ], [ %118, %116 ]
  %133 = icmp ult i32 %131, 2
  br i1 %133, label %169, label %125

134:                                              ; preds = %125
  %135 = icmp eq ptr %127, null
  br i1 %135, label %169, label %136

136:                                              ; preds = %164, %134
  %137 = phi ptr [ %157, %164 ], [ %127, %134 ]
  %138 = phi i32 [ %156, %164 ], [ %126, %134 ]
  %139 = tail call i32 @strncmp(ptr noundef nonnull %137, ptr noundef nonnull dereferenceable(10) @.str.121, i32 noundef 9) #29
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %136
  %142 = getelementptr i8, ptr %137, i32 9
  %143 = load i8, ptr %142, align 1
  %144 = icmp eq i8 %143, 61
  br i1 %144, label %166, label %145

145:                                              ; preds = %141, %136
  br label %146

146:                                              ; preds = %150, %145
  %147 = phi ptr [ %152, %150 ], [ %137, %145 ]
  %148 = phi i32 [ %151, %150 ], [ %138, %145 ]
  %149 = icmp ult i32 %148, 2
  br i1 %149, label %169, label %150

150:                                              ; preds = %146
  %151 = add i32 %148, -1
  %152 = getelementptr i8, ptr %147, i32 1
  %153 = load i8, ptr %152, align 1
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %160, label %146

155:                                              ; preds = %160
  %156 = add i32 %161, -1
  %157 = getelementptr i8, ptr %162, i32 1
  %158 = load i8, ptr %157, align 1
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %155, %150
  %161 = phi i32 [ %156, %155 ], [ %151, %150 ]
  %162 = phi ptr [ %157, %155 ], [ %152, %150 ]
  %163 = icmp ult i32 %161, 2
  br i1 %163, label %169, label %155

164:                                              ; preds = %155
  %165 = icmp eq ptr %157, null
  br i1 %165, label %169, label %136

166:                                              ; preds = %141
  %167 = getelementptr i8, ptr %137, i32 10
  %168 = icmp eq ptr %167, null
  br i1 %168, label %169, label %109

169:                                              ; preds = %166, %164, %160, %146, %134, %130, %121, %103, %101, %97, %88, %59
  %170 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 2
  %171 = getelementptr inbounds %struct.kernel_symbol, ptr %52, i32 0, i32 1
  %172 = load ptr, ptr %171, align 4
  %173 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef %170, ptr noundef %172, ptr noundef nonnull %54) #34
  store ptr inttoptr (i32 -22 to ptr), ptr %51, align 4
  br label %243

174:                                              ; preds = %109, %56, %50
  br i1 %27, label %243, label %175

175:                                              ; preds = %174
  %176 = getelementptr inbounds %struct.module, ptr %26, i32 0, i32 49
  br label %177

177:                                              ; preds = %181, %175
  %178 = phi ptr [ %176, %175 ], [ %179, %181 ]
  %179 = load ptr, ptr %178, align 4
  %180 = icmp eq ptr %179, %176
  br i1 %180, label %185, label %181

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.module_use, ptr %179, i32 0, i32 2
  %183 = load ptr, ptr %182, align 4
  %184 = icmp eq ptr %183, %0
  br i1 %184, label %243, label %177

185:                                              ; preds = %177
  %186 = load i32, ptr %26, align 64
  switch i32 %186, label %188 [
    i32 3, label %187
    i32 1, label %241
  ], !prof !49

187:                                              ; preds = %185
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/module.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 320, 0\0A.popsection", ""() #29, !srcloc !50
  unreachable

188:                                              ; preds = %185
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !46
  %189 = load i32, ptr %26, align 64
  %190 = icmp eq i32 %189, 2
  br i1 %190, label %224, label %191, !prof !11

191:                                              ; preds = %188
  %192 = getelementptr inbounds %struct.module, ptr %26, i32 0, i32 52
  tail call void asm sideeffect "dmb ish", "~{memory}"() #29, !srcloc !28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %192) #29, !srcloc !15
  %193 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %192, ptr %192, i32 0, i32 1, ptr elementtype(i32) %192) #29, !srcloc !29
  %194 = extractvalue { i32, i32, i32 } %193, 0
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %224, label %196

196:                                              ; preds = %191
  tail call void asm sideeffect "dmb ish", "~{memory}"() #29, !srcloc !30
  %197 = tail call ptr @llvm.returnaddress(i32 0) #29
  %198 = ptrtoint ptr %197 to i32
  %199 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_module_get, i32 0, i32 1), align 4
  %200 = icmp sgt i32 %199, 0
  br i1 %200, label %201, label %225

201:                                              ; preds = %196
  %202 = tail call ptr @llvm.thread.pointer() #29
  %203 = getelementptr inbounds %struct.thread_info, ptr %202, i32 0, i32 2
  %204 = load i32, ptr %203, align 8
  %205 = lshr i32 %204, 5
  %206 = getelementptr i32, ptr @__cpu_online_mask, i32 %205
  %207 = load volatile i32, ptr %206, align 4
  %208 = and i32 %204, 31
  %209 = shl nuw i32 1, %208
  %210 = and i32 %209, %207
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %225, label %212

212:                                              ; preds = %201
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !43
  %213 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_module_get, i32 0, i32 7), align 4
  %214 = icmp eq ptr %213, null
  br i1 %214, label %223, label %215

215:                                              ; preds = %215, %212
  %216 = phi ptr [ %220, %215 ], [ %213, %212 ]
  %217 = load volatile ptr, ptr %216, align 4
  %218 = getelementptr inbounds %struct.tracepoint_func, ptr %216, i32 0, i32 1
  %219 = load ptr, ptr %218, align 4
  tail call void %217(ptr noundef %219, ptr noundef nonnull %26, i32 noundef %198) #29
  %220 = getelementptr %struct.tracepoint_func, ptr %216, i32 1
  %221 = load ptr, ptr %220, align 4
  %222 = icmp eq ptr %221, null
  br i1 %222, label %223, label %215

223:                                              ; preds = %215, %212
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !44
  br label %225

224:                                              ; preds = %191, %188
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !47
  br label %241

225:                                              ; preds = %223, %201, %196
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !47
  %226 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %227 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %226, i32 noundef 2592, i32 noundef 24) #35
  %228 = icmp eq ptr %227, null
  br i1 %228, label %240, label %229

229:                                              ; preds = %225
  %230 = getelementptr inbounds %struct.module_use, ptr %227, i32 0, i32 2
  store ptr %0, ptr %230, align 8
  %231 = getelementptr inbounds %struct.module_use, ptr %227, i32 0, i32 3
  store ptr %26, ptr %231, align 4
  %232 = load ptr, ptr %176, align 4
  %233 = getelementptr inbounds %struct.list_head, ptr %232, i32 0, i32 1
  store ptr %227, ptr %233, align 4
  store ptr %232, ptr %227, align 8
  %234 = getelementptr inbounds %struct.list_head, ptr %227, i32 0, i32 1
  store ptr %176, ptr %234, align 4
  store volatile ptr %227, ptr %176, align 4
  %235 = getelementptr inbounds %struct.module_use, ptr %227, i32 0, i32 1
  %236 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 50
  %237 = load ptr, ptr %236, align 4
  %238 = getelementptr inbounds %struct.list_head, ptr %237, i32 0, i32 1
  store ptr %235, ptr %238, align 4
  store ptr %237, ptr %235, align 8
  %239 = getelementptr inbounds %struct.module_use, ptr %227, i32 0, i32 1, i32 1
  store ptr %236, ptr %239, align 4
  store volatile ptr %235, ptr %236, align 4
  br label %243

240:                                              ; preds = %225
  tail call void @module_put(ptr noundef nonnull %26) #29
  br label %241

241:                                              ; preds = %240, %224, %185
  %242 = phi ptr [ inttoptr (i32 -12 to ptr), %240 ], [ inttoptr (i32 -16 to ptr), %185 ], [ inttoptr (i32 -2 to ptr), %224 ]
  store ptr %242, ptr %51, align 4
  br label %243

243:                                              ; preds = %241, %229, %181, %174, %169, %45
  %244 = phi ptr [ %52, %229 ], [ %52, %174 ], [ %242, %241 ], [ inttoptr (i32 -22 to ptr), %169 ], [ null, %45 ], [ %52, %181 ]
  %245 = getelementptr inbounds %struct.module, ptr %26, i32 0, i32 2
  %246 = select i1 %27, ptr @.str.118, ptr %245
  %247 = tail call ptr @strncpy(ptr noundef %3, ptr noundef %246, i32 noundef 60)
  br label %248

248:                                              ; preds = %243, %15
  %249 = phi ptr [ %17, %15 ], [ %244, %243 ]
  tail call void @mutex_unlock(ptr noundef nonnull @module_mutex) #29
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #29
  ret ptr %249
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #25

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @apply_relocate(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort_extable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_bug_finalize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @module_enable_ro(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = load i8, ptr @rodata_enabled, align 1, !range !34
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %116, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 23
  %7 = load ptr, ptr %6, align 64
  %8 = tail call ptr @find_vm_area(ptr noundef %7) #29
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.vm_struct, ptr %8, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %12, 256
  store i32 %13, ptr %11, align 4
  br label %14

14:                                               ; preds = %10, %5
  %15 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 24
  %16 = load ptr, ptr %15, align 16
  %17 = tail call ptr @find_vm_area(ptr noundef %16) #29
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.vm_struct, ptr %17, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = or i32 %21, 256
  store i32 %22, ptr %20, align 4
  br label %23

23:                                               ; preds = %19, %14
  %24 = load ptr, ptr %6, align 4
  %25 = ptrtoint ptr %24 to i32
  %26 = and i32 %25, 4095
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28, !prof !10

28:                                               ; preds = %23
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/module.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1962, 0\0A.popsection", ""() #29, !srcloc !95
  unreachable

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 23, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 4095
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34, !prof !10

34:                                               ; preds = %29
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/module.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1963, 0\0A.popsection", ""() #29, !srcloc !96
  unreachable

35:                                               ; preds = %29
  %36 = lshr i32 %31, 12
  %37 = tail call i32 @set_memory_ro(i32 noundef %25, i32 noundef %36) #29, !callees !97
  %38 = load ptr, ptr %6, align 4
  %39 = ptrtoint ptr %38 to i32
  %40 = and i32 %39, 4095
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42, !prof !10

42:                                               ; preds = %35
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/module.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1981, 0\0A.popsection", ""() #29, !srcloc !85
  unreachable

43:                                               ; preds = %35
  %44 = load i32, ptr %30, align 4
  %45 = and i32 %44, 4095
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47, !prof !10

47:                                               ; preds = %43
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/module.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1982, 0\0A.popsection", ""() #29, !srcloc !86
  unreachable

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 23, i32 3
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %50, 4095
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53, !prof !10

53:                                               ; preds = %48
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/module.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1983, 0\0A.popsection", ""() #29, !srcloc !87
  unreachable

54:                                               ; preds = %48
  %55 = add i32 %44, %39
  %56 = sub i32 %50, %44
  %57 = lshr i32 %56, 12
  %58 = tail call i32 @set_memory_ro(i32 noundef %55, i32 noundef %57) #29, !callees !88
  %59 = load ptr, ptr %15, align 4
  %60 = ptrtoint ptr %59 to i32
  %61 = and i32 %60, 4095
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %64, label %63, !prof !10

63:                                               ; preds = %54
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/module.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1962, 0\0A.popsection", ""() #29, !srcloc !95
  unreachable

64:                                               ; preds = %54
  %65 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 24, i32 2
  %66 = load i32, ptr %65, align 4
  %67 = and i32 %66, 4095
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69, !prof !10

69:                                               ; preds = %64
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/module.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1963, 0\0A.popsection", ""() #29, !srcloc !96
  unreachable

70:                                               ; preds = %64
  %71 = lshr i32 %66, 12
  %72 = tail call i32 @set_memory_ro(i32 noundef %60, i32 noundef %71) #29, !callees !97
  %73 = load ptr, ptr %15, align 4
  %74 = ptrtoint ptr %73 to i32
  %75 = and i32 %74, 4095
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %78, label %77, !prof !10

77:                                               ; preds = %70
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/module.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1981, 0\0A.popsection", ""() #29, !srcloc !85
  unreachable

78:                                               ; preds = %70
  %79 = load i32, ptr %65, align 4
  %80 = and i32 %79, 4095
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %83, label %82, !prof !10

82:                                               ; preds = %78
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/module.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1982, 0\0A.popsection", ""() #29, !srcloc !86
  unreachable

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 24, i32 3
  %85 = load i32, ptr %84, align 4
  %86 = and i32 %85, 4095
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %89, label %88, !prof !10

88:                                               ; preds = %83
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/module.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1983, 0\0A.popsection", ""() #29, !srcloc !87
  unreachable

89:                                               ; preds = %83
  %90 = add i32 %79, %74
  %91 = sub i32 %85, %79
  %92 = lshr i32 %91, 12
  %93 = tail call i32 @set_memory_ro(i32 noundef %90, i32 noundef %92) #29, !callees !88
  br i1 %1, label %94, label %116

94:                                               ; preds = %89
  %95 = load ptr, ptr %6, align 4
  %96 = ptrtoint ptr %95 to i32
  %97 = and i32 %96, 4095
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %100, label %99, !prof !10

99:                                               ; preds = %94
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/module.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1991, 0\0A.popsection", ""() #29, !srcloc !89
  unreachable

100:                                              ; preds = %94
  %101 = load i32, ptr %49, align 4
  %102 = and i32 %101, 4095
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %105, label %104, !prof !10

104:                                              ; preds = %100
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/module.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1992, 0\0A.popsection", ""() #29, !srcloc !90
  unreachable

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 23, i32 4
  %107 = load i32, ptr %106, align 4
  %108 = and i32 %107, 4095
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %111, label %110, !prof !10

110:                                              ; preds = %105
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/module.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1993, 0\0A.popsection", ""() #29, !srcloc !91
  unreachable

111:                                              ; preds = %105
  %112 = add i32 %101, %96
  %113 = sub i32 %107, %101
  %114 = lshr i32 %113, 12
  %115 = tail call i32 @set_memory_ro(i32 noundef %112, i32 noundef %114) #29, !callees !88
  br label %116

116:                                              ; preds = %111, %89, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_memory_ro(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_memory_nx(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_memory_x(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain_robust(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @module_param_sysfs_setup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @add_sect_attrs(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.elf32_hdr, ptr %4, i32 0, i32 12
  %6 = load i16, ptr %5, align 4
  %7 = zext i16 %6 to i32
  %8 = icmp eq i16 %6, 0
  br i1 %8, label %29, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %25, %9
  %13 = phi i32 [ 0, %9 ], [ %27, %25 ]
  %14 = phi i32 [ 0, %9 ], [ %26, %25 ]
  %15 = getelementptr %struct.elf32_shdr, ptr %11, i32 %13, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %12
  %20 = getelementptr %struct.elf32_shdr, ptr %11, i32 %13, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  %23 = add i32 %14, 1
  br i1 %22, label %24, label %25

24:                                               ; preds = %19, %12
  br label %25

25:                                               ; preds = %24, %19
  %26 = phi i32 [ %14, %24 ], [ %23, %19 ]
  %27 = add nuw nsw i32 %13, 1
  %28 = icmp eq i32 %27, %7
  br i1 %28, label %29, label %12

29:                                               ; preds = %25, %2
  %30 = phi i32 [ 0, %2 ], [ %26, %25 ]
  %31 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %30, i32 36) #29
  %32 = extractvalue { i32, i1 } %31, 1
  %33 = extractvalue { i32, i1 } %31, 0
  %34 = tail call i32 @llvm.uadd.sat.i32(i32 %33, i32 24) #29
  %35 = add i32 %34, 3
  %36 = and i32 %35, -4
  %37 = select i1 %32, i32 0, i32 %36
  %38 = shl i32 %30, 2
  %39 = add i32 %38, 4
  %40 = add i32 %39, %37
  %41 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %40, i32 noundef 3520) #32
  %42 = icmp eq ptr %41, null
  br i1 %42, label %115, label %43

43:                                               ; preds = %29
  store ptr @.str.135, ptr %41, align 64
  %44 = getelementptr i8, ptr %41, i32 %37
  %45 = getelementptr inbounds %struct.attribute_group, ptr %41, i32 0, i32 4
  store ptr %44, ptr %45, align 16
  %46 = getelementptr inbounds %struct.module_sect_attrs, ptr %41, i32 0, i32 1
  store i32 0, ptr %46, align 4
  %47 = load ptr, ptr %3, align 4
  %48 = getelementptr inbounds %struct.elf32_hdr, ptr %47, i32 0, i32 12
  %49 = load i16, ptr %48, align 4
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %97, label %51

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.module_sect_attrs, ptr %41, i32 0, i32 2
  %53 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 4
  %54 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 5
  br label %55

55:                                               ; preds = %88, %51
  %56 = phi ptr [ %47, %51 ], [ %89, %88 ]
  %57 = phi ptr [ %44, %51 ], [ %91, %88 ]
  %58 = phi ptr [ %52, %51 ], [ %90, %88 ]
  %59 = phi i32 [ 0, %51 ], [ %92, %88 ]
  %60 = load ptr, ptr %53, align 4
  %61 = getelementptr %struct.elf32_shdr, ptr %60, i32 %59
  %62 = getelementptr %struct.elf32_shdr, ptr %60, i32 %59, i32 2
  %63 = load i32, ptr %62, align 4
  %64 = and i32 %63, 2
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %88, label %66

66:                                               ; preds = %55
  %67 = getelementptr %struct.elf32_shdr, ptr %60, i32 %59, i32 5
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %88, label %70

70:                                               ; preds = %66
  %71 = getelementptr %struct.elf32_shdr, ptr %60, i32 %59, i32 3
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr inbounds %struct.module_sect_attr, ptr %58, i32 0, i32 1
  store i32 %72, ptr %73, align 4
  %74 = load ptr, ptr %54, align 4
  %75 = load i32, ptr %61, align 4
  %76 = getelementptr i8, ptr %74, i32 %75
  %77 = tail call noalias ptr @kstrdup(ptr noundef %76, i32 noundef 3264) #29
  store ptr %77, ptr %58, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %104, label %79

79:                                               ; preds = %70
  %80 = load i32, ptr %46, align 4
  %81 = add i32 %80, 1
  store i32 %81, ptr %46, align 4
  %82 = getelementptr inbounds %struct.bin_attribute, ptr %58, i32 0, i32 4
  store ptr @module_sect_read, ptr %82, align 4
  %83 = getelementptr inbounds %struct.bin_attribute, ptr %58, i32 0, i32 1
  store i32 11, ptr %83, align 4
  %84 = getelementptr inbounds %struct.attribute, ptr %58, i32 0, i32 1
  store i16 256, ptr %84, align 4
  %85 = getelementptr %struct.module_sect_attr, ptr %58, i32 1
  %86 = getelementptr ptr, ptr %57, i32 1
  store ptr %58, ptr %57, align 4
  %87 = load ptr, ptr %3, align 4
  br label %88

88:                                               ; preds = %79, %66, %55
  %89 = phi ptr [ %56, %66 ], [ %87, %79 ], [ %56, %55 ]
  %90 = phi ptr [ %58, %66 ], [ %85, %79 ], [ %58, %55 ]
  %91 = phi ptr [ %57, %66 ], [ %86, %79 ], [ %57, %55 ]
  %92 = add nuw nsw i32 %59, 1
  %93 = getelementptr inbounds %struct.elf32_hdr, ptr %89, i32 0, i32 12
  %94 = load i16, ptr %93, align 4
  %95 = zext i16 %94 to i32
  %96 = icmp ult i32 %92, %95
  br i1 %96, label %55, label %97

97:                                               ; preds = %88, %43
  %98 = phi ptr [ %44, %43 ], [ %91, %88 ]
  store ptr null, ptr %98, align 4
  %99 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 3
  %100 = tail call i32 @sysfs_create_group(ptr noundef %99, ptr noundef nonnull %41) #29
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 32
  store ptr %41, ptr %103, align 4
  br label %115

104:                                              ; preds = %97, %70
  %105 = load i32, ptr %46, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %114, label %107

107:                                              ; preds = %107, %104
  %108 = phi i32 [ %111, %107 ], [ 0, %104 ]
  %109 = getelementptr %struct.module_sect_attrs, ptr %41, i32 0, i32 2, i32 %108
  %110 = load ptr, ptr %109, align 4
  tail call void @kfree(ptr noundef %110) #29
  %111 = add nuw i32 %108, 1
  %112 = load i32, ptr %46, align 4
  %113 = icmp ult i32 %111, %112
  br i1 %113, label %107, label %114

114:                                              ; preds = %107, %104
  tail call void @kfree(ptr noundef nonnull %41) #29
  br label %115

115:                                              ; preds = %114, %102, %29
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @add_notes_attrs(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 32
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %142, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.elf32_hdr, ptr %8, i32 0, i32 12
  %10 = load i16, ptr %9, align 4
  %11 = zext i16 %10 to i32
  %12 = icmp eq i16 %10, 0
  br i1 %12, label %142, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %33, %13
  %17 = phi i32 [ 0, %13 ], [ %35, %33 ]
  %18 = phi i32 [ 0, %13 ], [ %34, %33 ]
  %19 = getelementptr %struct.elf32_shdr, ptr %15, i32 %17, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %16
  %24 = getelementptr %struct.elf32_shdr, ptr %15, i32 %17, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = getelementptr %struct.elf32_shdr, ptr %15, i32 %17, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 7
  %31 = zext i1 %30 to i32
  %32 = add i32 %18, %31
  br label %33

33:                                               ; preds = %27, %23, %16
  %34 = phi i32 [ %18, %23 ], [ %32, %27 ], [ %18, %16 ]
  %35 = add nuw nsw i32 %17, 1
  %36 = icmp eq i32 %35, %11
  br i1 %36, label %37, label %16

37:                                               ; preds = %33
  %38 = icmp eq i32 %34, 0
  br i1 %38, label %142, label %39

39:                                               ; preds = %37
  %40 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %34, i32 32) #29
  %41 = extractvalue { i32, i1 } %40, 1
  %42 = extractvalue { i32, i1 } %40, 0
  %43 = or i32 %42, 8
  %44 = select i1 %41, i32 -1, i32 %43
  %45 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %44, i32 noundef 3520) #32
  %46 = icmp eq ptr %45, null
  br i1 %46, label %142, label %47

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.module_notes_attrs, ptr %45, i32 0, i32 1
  store i32 %34, ptr %48, align 4
  %49 = load ptr, ptr %7, align 4
  %50 = getelementptr inbounds %struct.elf32_hdr, ptr %49, i32 0, i32 12
  %51 = load i16, ptr %50, align 4
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %106, label %53

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.module_notes_attrs, ptr %45, i32 0, i32 2
  %55 = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 4
  br label %56

56:                                               ; preds = %96, %53
  %57 = phi ptr [ %49, %53 ], [ %97, %96 ]
  %58 = phi ptr [ %49, %53 ], [ %98, %96 ]
  %59 = phi ptr [ %54, %53 ], [ %100, %96 ]
  %60 = phi i32 [ 0, %53 ], [ %101, %96 ]
  %61 = phi i32 [ 0, %53 ], [ %99, %96 ]
  %62 = load ptr, ptr %55, align 4
  %63 = getelementptr %struct.elf32_shdr, ptr %62, i32 %60, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = and i32 %64, 2
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %96, label %67

67:                                               ; preds = %56
  %68 = getelementptr %struct.elf32_shdr, ptr %62, i32 %60, i32 5
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %96, label %71

71:                                               ; preds = %67
  %72 = getelementptr %struct.elf32_shdr, ptr %62, i32 %60, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %73, 7
  br i1 %74, label %75, label %92

75:                                               ; preds = %71
  %76 = load ptr, ptr %3, align 4
  %77 = getelementptr %struct.module_sect_attrs, ptr %76, i32 0, i32 2, i32 %61
  %78 = load ptr, ptr %77, align 4
  store ptr %78, ptr %59, align 4
  %79 = getelementptr inbounds %struct.attribute, ptr %59, i32 0, i32 1
  store i16 292, ptr %79, align 4
  %80 = load ptr, ptr %55, align 4
  %81 = getelementptr %struct.elf32_shdr, ptr %80, i32 %60, i32 5
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr inbounds %struct.bin_attribute, ptr %59, i32 0, i32 1
  store i32 %82, ptr %83, align 4
  %84 = load ptr, ptr %55, align 4
  %85 = getelementptr %struct.elf32_shdr, ptr %84, i32 %60, i32 3
  %86 = load i32, ptr %85, align 4
  %87 = inttoptr i32 %86 to ptr
  %88 = getelementptr inbounds %struct.bin_attribute, ptr %59, i32 0, i32 2
  store ptr %87, ptr %88, align 4
  %89 = getelementptr inbounds %struct.bin_attribute, ptr %59, i32 0, i32 4
  store ptr @module_notes_read, ptr %89, align 4
  %90 = getelementptr %struct.bin_attribute, ptr %59, i32 1
  %91 = load ptr, ptr %7, align 4
  br label %92

92:                                               ; preds = %75, %71
  %93 = phi ptr [ %91, %75 ], [ %57, %71 ]
  %94 = phi ptr [ %90, %75 ], [ %59, %71 ]
  %95 = add i32 %61, 1
  br label %96

96:                                               ; preds = %92, %67, %56
  %97 = phi ptr [ %57, %67 ], [ %93, %92 ], [ %57, %56 ]
  %98 = phi ptr [ %58, %67 ], [ %93, %92 ], [ %58, %56 ]
  %99 = phi i32 [ %61, %67 ], [ %95, %92 ], [ %61, %56 ]
  %100 = phi ptr [ %59, %67 ], [ %94, %92 ], [ %59, %56 ]
  %101 = add nuw nsw i32 %60, 1
  %102 = getelementptr inbounds %struct.elf32_hdr, ptr %98, i32 0, i32 12
  %103 = load i16, ptr %102, align 4
  %104 = zext i16 %103 to i32
  %105 = icmp ult i32 %101, %104
  br i1 %105, label %56, label %106

106:                                              ; preds = %96, %47
  %107 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 3
  %108 = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.137, ptr noundef %107) #29
  store ptr %108, ptr %45, align 64
  %109 = icmp eq ptr %108, null
  br i1 %109, label %141, label %110

110:                                              ; preds = %106
  %111 = call i32 @llvm.umax.i32(i32 %34, i32 1)
  %112 = getelementptr %struct.module_notes_attrs, ptr %45, i32 0, i32 2, i32 0
  %113 = tail call i32 @sysfs_create_bin_file(ptr noundef nonnull %108, ptr noundef %112) #29
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %119, %110
  %116 = phi i32 [ %117, %119 ], [ 0, %110 ]
  %117 = add nuw i32 %116, 1
  %118 = icmp eq i32 %117, %111
  br i1 %118, label %124, label %119

119:                                              ; preds = %115
  %120 = load ptr, ptr %45, align 64
  %121 = getelementptr %struct.module_notes_attrs, ptr %45, i32 0, i32 2, i32 %117
  %122 = tail call i32 @sysfs_create_bin_file(ptr noundef %120, ptr noundef %121) #29
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %115, label %126

124:                                              ; preds = %115
  %125 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 33
  store ptr %45, ptr %125, align 64
  br label %142

126:                                              ; preds = %119, %110
  %127 = phi i32 [ 0, %110 ], [ %117, %119 ]
  %128 = load ptr, ptr %45, align 64
  %129 = icmp eq ptr %128, null
  br i1 %129, label %141, label %130

130:                                              ; preds = %126
  %131 = icmp eq i32 %127, 0
  br i1 %131, label %139, label %132

132:                                              ; preds = %132, %130
  %133 = phi ptr [ %138, %132 ], [ %128, %130 ]
  %134 = phi i32 [ %135, %132 ], [ %127, %130 ]
  %135 = add i32 %134, -1
  %136 = getelementptr %struct.module_notes_attrs, ptr %45, i32 0, i32 2, i32 %135
  tail call void @sysfs_remove_bin_file(ptr noundef %133, ptr noundef %136) #29
  %137 = icmp eq i32 %135, 0
  %138 = load ptr, ptr %45, align 64
  br i1 %137, label %139, label %132

139:                                              ; preds = %132, %130
  %140 = phi ptr [ %128, %130 ], [ %138, %132 ]
  tail call void @kobject_put(ptr noundef %140) #29
  br label %141

141:                                              ; preds = %139, %126, %106
  tail call void @kfree(ptr noundef nonnull %45) #29
  br label %142

142:                                              ; preds = %141, %124, %39, %37, %6, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kset_find_obj(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @module_sect_read(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3, i64 noundef %4, i32 noundef %5) #0 {
  %7 = alloca [12 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #29
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(12) %7, i8 0, i32 12, i1 false), !annotation !9
  %8 = icmp eq i64 %4, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 12
  %11 = load ptr, ptr %10, align 8
  %12 = tail call zeroext i1 @kallsyms_show_value(ptr noundef %11) #29
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.module_sect_attr, ptr %2, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = inttoptr i32 %15 to ptr
  br label %17

17:                                               ; preds = %13, %9
  %18 = phi ptr [ %16, %13 ], [ null, %9 ]
  %19 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %7, i32 noundef 12, ptr noundef nonnull @.str.136, ptr noundef %18) #29
  %20 = call i32 @llvm.umin.i32(i32 %19, i32 %5)
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %3, ptr nonnull align 1 %7, i32 %20, i1 false)
  br label %21

21:                                               ; preds = %17, %6
  %22 = phi i32 [ %20, %17 ], [ -22, %6 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #29
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #26

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kallsyms_show_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @module_notes_read(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3, i64 noundef %4, i32 noundef returned %5) #27 {
  %7 = getelementptr inbounds %struct.bin_attribute, ptr %2, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = trunc i64 %4 to i32
  %10 = getelementptr i8, ptr %8, i32 %9
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %3, ptr align 1 %10, i32 %5, i1 false)
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_one_initcall(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trim_init_extable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @llist_add_batch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @do_free_init(ptr nocapture noundef readnone %0) #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #29, !srcloc !103
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @init_free_list) #29, !srcloc !15
  %2 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr nonnull @init_free_list) #29, !srcloc !104
  %3 = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #29, !srcloc !105
  tail call void @synchronize_rcu() #29
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = inttoptr i32 %3 to ptr
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi ptr [ %9, %7 ], [ %6, %5 ]
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.mod_initfree, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void @module_memfree(ptr noundef %11)
  tail call void @kfree(ptr noundef nonnull %8) #29
  %12 = icmp eq ptr %9, null
  br i1 %12, label %13, label %7

13:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_read_file_from_fd(i32 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @modules_open(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @seq_open(ptr noundef %1, ptr noundef nonnull @modules_op) #29
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 12
  %9 = load ptr, ptr %8, align 8
  %10 = tail call zeroext i1 @kallsyms_show_value(ptr noundef %9) #29
  %11 = select i1 %10, ptr null, ptr inttoptr (i32 8 to ptr)
  %12 = getelementptr inbounds %struct.seq_file, ptr %7, i32 0, i32 11
  store ptr %11, ptr %12, align 8
  br label %13

13:                                               ; preds = %5, %2
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @m_start(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @module_mutex) #29
  %3 = load i64, ptr %1, align 8
  %4 = tail call ptr @seq_list_start(ptr noundef nonnull @modules, i64 noundef %3) #29
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @m_stop(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #0 {
  tail call void @mutex_unlock(ptr noundef nonnull @module_mutex) #29
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @m_next(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @seq_list_next(ptr noundef %1, ptr noundef nonnull @modules, ptr noundef %2) #29
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m_show(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [22 x i8], align 1
  %4 = getelementptr i8, ptr %1, i32 -4
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %3) #29
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(22) %3, i8 0, i32 22, i1 false), !annotation !9
  %5 = load i32, ptr %4, align 64
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %104, label %7

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %1, i32 8
  %9 = getelementptr i8, ptr %1, i32 304
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr i8, ptr %1, i32 252
  %12 = getelementptr i8, ptr %1, i32 256
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, %10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.141, ptr noundef %8, i32 noundef %14) #29
  %15 = getelementptr i8, ptr %1, i32 528
  %16 = load volatile i32, ptr %15, align 4
  %17 = add i32 %16, -1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.148, i32 noundef %17) #29
  %18 = getelementptr i8, ptr %1, i32 508
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %32, label %21

21:                                               ; preds = %21, %7
  %22 = phi ptr [ %26, %21 ], [ %19, %7 ]
  %23 = getelementptr inbounds %struct.module_use, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.module, ptr %24, i32 0, i32 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.149, ptr noundef %25) #29
  %26 = load ptr, ptr %22, align 4
  %27 = icmp eq ptr %26, %18
  br i1 %27, label %28, label %21

28:                                               ; preds = %21
  %29 = getelementptr i8, ptr %1, i32 200
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %47, label %41

32:                                               ; preds = %7
  %33 = getelementptr i8, ptr %1, i32 200
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %45, label %36

36:                                               ; preds = %32
  %37 = getelementptr i8, ptr %1, i32 524
  %38 = load ptr, ptr %37, align 16
  %39 = icmp eq ptr %38, null
  %40 = select i1 %39, ptr @.str.150, ptr @.str.151
  br label %45

41:                                               ; preds = %28
  %42 = getelementptr i8, ptr %1, i32 524
  %43 = load ptr, ptr %42, align 16
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %41, %36, %32
  %46 = phi ptr [ @.str.150, %41 ], [ @.str.151, %32 ], [ %40, %36 ]
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %46) #29
  br label %47

47:                                               ; preds = %45, %41, %28
  %48 = load i32, ptr %4, align 64
  %49 = icmp eq i32 %48, 2
  %50 = icmp eq i32 %48, 1
  %51 = select i1 %50, ptr @.str.144, ptr @.str.145
  %52 = select i1 %49, ptr @.str.143, ptr %51
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.142, ptr noundef nonnull %52) #29
  %53 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %54 = load ptr, ptr %53, align 8
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load ptr, ptr %11, align 64
  br label %58

58:                                               ; preds = %56, %47
  %59 = phi ptr [ %57, %56 ], [ null, %47 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.146, ptr noundef %59) #29
  %60 = getelementptr i8, ptr %1, i32 400
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %103, label %63

63:                                               ; preds = %58
  %64 = load i32, ptr %4, align 64
  %65 = icmp eq i32 %64, 3
  br i1 %65, label %66, label %67, !prof !11

66:                                               ; preds = %63
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/module.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4553, 0\0A.popsection", ""() #29, !srcloc !106
  unreachable

67:                                               ; preds = %63
  store i8 40, ptr %3, align 1
  %68 = getelementptr inbounds i8, ptr %3, i32 1
  br label %69

69:                                               ; preds = %87, %67
  %70 = phi i32 [ 0, %67 ], [ %89, %87 ]
  %71 = phi i32 [ 0, %67 ], [ %88, %87 ]
  %72 = getelementptr [18 x %struct.taint_flag], ptr @taint_flags, i32 0, i32 %70
  %73 = getelementptr [18 x %struct.taint_flag], ptr @taint_flags, i32 0, i32 %70, i32 2
  %74 = load i8, ptr %73, align 1, !range !34
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %87, label %76

76:                                               ; preds = %69
  %77 = lshr i32 %70, 5
  %78 = getelementptr i32, ptr %60, i32 %77
  %79 = load volatile i32, ptr %78, align 4
  %80 = shl nuw i32 1, %70
  %81 = and i32 %79, %80
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %76
  %84 = load i8, ptr %72, align 1
  %85 = add i32 %71, 1
  %86 = getelementptr i8, ptr %68, i32 %71
  store i8 %84, ptr %86, align 1
  br label %87

87:                                               ; preds = %83, %76, %69
  %88 = phi i32 [ %85, %83 ], [ %71, %76 ], [ %71, %69 ]
  %89 = add nuw nsw i32 %70, 1
  %90 = icmp eq i32 %89, 18
  br i1 %90, label %91, label %69

91:                                               ; preds = %87
  %92 = add i32 %88, 1
  switch i32 %64, label %98 [
    i32 2, label %94
    i32 1, label %93
  ]

93:                                               ; preds = %91
  br label %94

94:                                               ; preds = %93, %91
  %95 = phi i8 [ 43, %93 ], [ 45, %91 ]
  %96 = add i32 %88, 2
  %97 = getelementptr i8, ptr %3, i32 %92
  store i8 %95, ptr %97, align 1
  br label %98

98:                                               ; preds = %94, %91
  %99 = phi i32 [ %92, %91 ], [ %96, %94 ]
  %100 = add i32 %99, 1
  %101 = getelementptr i8, ptr %3, i32 %99
  store i8 41, ptr %101, align 1
  %102 = getelementptr i8, ptr %3, i32 %100
  store i8 0, ptr %102, align 1
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.142, ptr noundef nonnull %3) #29
  br label %103

103:                                              ; preds = %98, %58
  call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.147) #29
  br label %104

104:                                              ; preds = %103, %2
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %3) #29
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_start(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #28

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #26

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare ptr @memchr(ptr, i32, i32) local_unnamed_addr #28

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #26

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #26

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { nounwind readonly }
attributes #18 = { mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #19 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #20 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #21 = { argmemonly nofree nounwind willreturn }
attributes #22 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #23 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #24 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #25 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #26 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #27 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #28 = { argmemonly nofree nounwind readonly willreturn }
attributes #29 = { nounwind }
attributes #30 = { noreturn nounwind }
attributes #31 = { nounwind readonly willreturn }
attributes #32 = { nounwind allocsize(0) }
attributes #33 = { nounwind readnone }
attributes #34 = { cold nounwind }
attributes #35 = { nounwind allocsize(2) }

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
!12 = !{i64 598149}
!13 = !{i64 2154622953}
!14 = !{i64 2148288583}
!15 = !{i64 673771, i64 2148163742, i64 2148163768, i64 2148163815, i64 2148163837, i64 2148163865, i64 2148163885}
!16 = !{i64 659834, i64 659858, i64 659879, i64 659896, i64 659913}
!17 = !{i64 2148288783}
!18 = !{i64 2153990907}
!19 = !{i64 2153991053}
!20 = !{i64 2154623531}
!21 = !{i64 2154538790}
!22 = !{i64 2154575326}
!23 = !{i64 2154575374}
!24 = !{i64 2148275836}
!25 = !{i64 2148178198, i64 2148178230, i64 2148178259, i64 2148178293, i64 2148178324, i64 2148178347}
!26 = !{i64 2148276039}
!27 = !{i64 2154600256, i64 2154600736, i64 2154600293, i64 2154600349, i64 2154600383, i64 2154600407, i64 2154600448, i64 2154600469, i64 2154600497, i64 2154600531}
!28 = !{i64 2148174664}
!29 = !{i64 660340, i64 660365, i64 660387, i64 660403, i64 660415, i64 660435, i64 660459, i64 660475, i64 660487}
!30 = !{i64 2148174790}
!31 = !{i64 2154614458}
!32 = !{i64 2154614754, i64 2154615235, i64 2154614791, i64 2154614847, i64 2154614881, i64 2154614905, i64 2154614946, i64 2154614967, i64 2154614995, i64 2154615029}
!33 = !{i64 2154615525}
!34 = !{i8 0, i8 2}
!35 = !{i64 2154616727}
!36 = !{i64 2154617003, i64 2154617484, i64 2154617040, i64 2154617096, i64 2154617130, i64 2154617154, i64 2154617195, i64 2154617216, i64 2154617244, i64 2154617278}
!37 = !{i64 2154617774}
!38 = !{i64 2149508502}
!39 = !{!"branch_weights", i32 1073205, i32 2146410443}
!40 = !{i64 2154905277, i64 2154905758, i64 2154905314, i64 2154905370, i64 2154905404, i64 2154905428, i64 2154905469, i64 2154905490, i64 2154905518, i64 2154905552}
!41 = !{i64 2154620260}
!42 = !{i64 2148175157, i64 2148175183, i64 2148175212, i64 2148175246, i64 2148175277, i64 2148175300}
!43 = !{i64 2153975252}
!44 = !{i64 2153975398}
!45 = !{i64 2154620351}
!46 = !{i64 2154621534}
!47 = !{i64 2154621726}
!48 = !{i64 2154672695}
!49 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!50 = !{i64 2154462839, i64 2154463319, i64 2154462876, i64 2154462932, i64 2154462966, i64 2154462990, i64 2154463031, i64 2154463052, i64 2154463080, i64 2154463114}
!51 = !{i64 2154672743}
!52 = !{i64 2154672803}
!53 = !{i64 2151908151, i64 2151908176}
!54 = !{i64 4400202}
!55 = !{i64 4400399}
!56 = !{i64 2151885678}
!57 = !{i64 2154747433}
!58 = !{i64 2154748388}
!59 = !{i64 2154748436}
!60 = !{i64 2154783261}
!61 = !{i64 2154783309}
!62 = !{i64 2154783360}
!63 = !{i64 2154818211}
!64 = !{i64 2154818259}
!65 = !{i64 2154818310}
!66 = !{i64 2154856983}
!67 = !{i64 2154857031}
!68 = !{i64 2154860906}
!69 = !{i64 2154895777}
!70 = !{i64 2154904763}
!71 = !{i64 2154904811}
!72 = !{i64 2154904859}
!73 = !{i64 2154904919}
!74 = !{i64 2154906060}
!75 = !{i64 2154906120}
!76 = !{i64 2154906451}
!77 = !{i64 2154941641}
!78 = !{i64 2153959612}
!79 = !{i64 2153959752}
!80 = !{i64 2149519614}
!81 = !{i64 2149519746}
!82 = distinct !{!82, !83}
!83 = !{!"llvm.loop.peeled.count", i32 1}
!84 = !{i64 2150881283}
!85 = !{i64 2154660575, i64 2154661056, i64 2154660612, i64 2154660668, i64 2154660702, i64 2154660726, i64 2154660767, i64 2154660788, i64 2154660816, i64 2154660850}
!86 = !{i64 2154661734, i64 2154662215, i64 2154661771, i64 2154661827, i64 2154661861, i64 2154661885, i64 2154661926, i64 2154661947, i64 2154661975, i64 2154662009}
!87 = !{i64 2154662889, i64 2154663370, i64 2154662926, i64 2154662982, i64 2154663016, i64 2154663040, i64 2154663081, i64 2154663102, i64 2154663130, i64 2154663164}
!88 = !{ptr @set_memory_nx, ptr @set_memory_ro}
!89 = !{i64 2154664041, i64 2154664522, i64 2154664078, i64 2154664134, i64 2154664168, i64 2154664192, i64 2154664233, i64 2154664254, i64 2154664282, i64 2154664316}
!90 = !{i64 2154665196, i64 2154665677, i64 2154665233, i64 2154665289, i64 2154665323, i64 2154665347, i64 2154665388, i64 2154665409, i64 2154665437, i64 2154665471}
!91 = !{i64 2154666373, i64 2154666854, i64 2154666410, i64 2154666466, i64 2154666500, i64 2154666524, i64 2154666565, i64 2154666586, i64 2154666614, i64 2154666648}
!92 = !{i64 2154667525, i64 2154668006, i64 2154667562, i64 2154667618, i64 2154667652, i64 2154667676, i64 2154667717, i64 2154667738, i64 2154667766, i64 2154667800}
!93 = !{i64 2154668702, i64 2154669183, i64 2154668739, i64 2154668795, i64 2154668829, i64 2154668853, i64 2154668894, i64 2154668915, i64 2154668943, i64 2154668977}
!94 = !{i64 2154669851, i64 2154670332, i64 2154669888, i64 2154669944, i64 2154669978, i64 2154670002, i64 2154670043, i64 2154670064, i64 2154670092, i64 2154670126}
!95 = !{i64 2154658264, i64 2154658745, i64 2154658301, i64 2154658357, i64 2154658391, i64 2154658415, i64 2154658456, i64 2154658477, i64 2154658505, i64 2154658539}
!96 = !{i64 2154659423, i64 2154659904, i64 2154659460, i64 2154659516, i64 2154659550, i64 2154659574, i64 2154659615, i64 2154659636, i64 2154659664, i64 2154659698}
!97 = !{ptr @set_memory_ro, ptr @set_memory_x}
!98 = !{i64 2153940161}
!99 = !{i64 2153940301}
!100 = !{i64 2154716621}
!101 = !{i64 2149190041}
!102 = !{i64 2154624821, i64 2154625302, i64 2154624858, i64 2154624914, i64 2154624948, i64 2154624972, i64 2154625013, i64 2154625034, i64 2154625062, i64 2154625096}
!103 = !{i64 2149030771}
!104 = !{i64 682421, i64 682438, i64 682462, i64 682488, i64 682506}
!105 = !{i64 2149031098}
!106 = !{i64 2154896107, i64 2154896588, i64 2154896144, i64 2154896200, i64 2154896234, i64 2154896258, i64 2154896299, i64 2154896320, i64 2154896348, i64 2154896382}
